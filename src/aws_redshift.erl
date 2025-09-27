%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Redshift
%%
%% Overview
%%
%% This is an interface reference for Amazon Redshift.
%%
%% It contains documentation for one of
%% the programming or command line interfaces you can use to manage Amazon
%% Redshift clusters.
%% Note that Amazon Redshift is asynchronous, which means that some
%% interfaces may require
%% techniques, such as polling or asynchronous callback handlers, to
%% determine when a
%% command has been applied. In this reference, the parameter descriptions
%% indicate whether
%% a change is applied immediately, on the next instance reboot, or during
%% the next
%% maintenance window. For a summary of the Amazon Redshift cluster
%% management interfaces, go to
%% Using the
%% Amazon Redshift Management Interfaces:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/using-aws-sdk.html.
%%
%% Amazon Redshift manages all the work of setting up, operating, and scaling
%% a data
%% warehouse: provisioning capacity, monitoring and backing up the cluster,
%% and applying
%% patches and upgrades to the Amazon Redshift engine. You can focus on using
%% your data to
%% acquire new insights for your business and customers.
%%
%% If you are a first-time user of Amazon Redshift, we recommend that you
%% begin by reading
%% the Amazon Redshift Getting Started Guide:
%% https://docs.aws.amazon.com/redshift/latest/gsg/getting-started.html.
%%
%% If you are a database developer, the Amazon Redshift Database Developer
%% Guide: https://docs.aws.amazon.com/redshift/latest/dg/welcome.html
%% explains how to design,
%% build, query, and maintain the databases that make up your data warehouse.
-module(aws_redshift).

-export([accept_reserved_node_exchange/2,
         accept_reserved_node_exchange/3,
         add_partner/2,
         add_partner/3,
         associate_data_share_consumer/2,
         associate_data_share_consumer/3,
         authorize_cluster_security_group_ingress/2,
         authorize_cluster_security_group_ingress/3,
         authorize_data_share/2,
         authorize_data_share/3,
         authorize_endpoint_access/2,
         authorize_endpoint_access/3,
         authorize_snapshot_access/2,
         authorize_snapshot_access/3,
         batch_delete_cluster_snapshots/2,
         batch_delete_cluster_snapshots/3,
         batch_modify_cluster_snapshots/2,
         batch_modify_cluster_snapshots/3,
         cancel_resize/2,
         cancel_resize/3,
         copy_cluster_snapshot/2,
         copy_cluster_snapshot/3,
         create_authentication_profile/2,
         create_authentication_profile/3,
         create_cluster/2,
         create_cluster/3,
         create_cluster_parameter_group/2,
         create_cluster_parameter_group/3,
         create_cluster_security_group/2,
         create_cluster_security_group/3,
         create_cluster_snapshot/2,
         create_cluster_snapshot/3,
         create_cluster_subnet_group/2,
         create_cluster_subnet_group/3,
         create_custom_domain_association/2,
         create_custom_domain_association/3,
         create_endpoint_access/2,
         create_endpoint_access/3,
         create_event_subscription/2,
         create_event_subscription/3,
         create_hsm_client_certificate/2,
         create_hsm_client_certificate/3,
         create_hsm_configuration/2,
         create_hsm_configuration/3,
         create_integration/2,
         create_integration/3,
         create_redshift_idc_application/2,
         create_redshift_idc_application/3,
         create_scheduled_action/2,
         create_scheduled_action/3,
         create_snapshot_copy_grant/2,
         create_snapshot_copy_grant/3,
         create_snapshot_schedule/2,
         create_snapshot_schedule/3,
         create_tags/2,
         create_tags/3,
         create_usage_limit/2,
         create_usage_limit/3,
         deauthorize_data_share/2,
         deauthorize_data_share/3,
         delete_authentication_profile/2,
         delete_authentication_profile/3,
         delete_cluster/2,
         delete_cluster/3,
         delete_cluster_parameter_group/2,
         delete_cluster_parameter_group/3,
         delete_cluster_security_group/2,
         delete_cluster_security_group/3,
         delete_cluster_snapshot/2,
         delete_cluster_snapshot/3,
         delete_cluster_subnet_group/2,
         delete_cluster_subnet_group/3,
         delete_custom_domain_association/2,
         delete_custom_domain_association/3,
         delete_endpoint_access/2,
         delete_endpoint_access/3,
         delete_event_subscription/2,
         delete_event_subscription/3,
         delete_hsm_client_certificate/2,
         delete_hsm_client_certificate/3,
         delete_hsm_configuration/2,
         delete_hsm_configuration/3,
         delete_integration/2,
         delete_integration/3,
         delete_partner/2,
         delete_partner/3,
         delete_redshift_idc_application/2,
         delete_redshift_idc_application/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         delete_scheduled_action/2,
         delete_scheduled_action/3,
         delete_snapshot_copy_grant/2,
         delete_snapshot_copy_grant/3,
         delete_snapshot_schedule/2,
         delete_snapshot_schedule/3,
         delete_tags/2,
         delete_tags/3,
         delete_usage_limit/2,
         delete_usage_limit/3,
         deregister_namespace/2,
         deregister_namespace/3,
         describe_account_attributes/2,
         describe_account_attributes/3,
         describe_authentication_profiles/2,
         describe_authentication_profiles/3,
         describe_cluster_db_revisions/2,
         describe_cluster_db_revisions/3,
         describe_cluster_parameter_groups/2,
         describe_cluster_parameter_groups/3,
         describe_cluster_parameters/2,
         describe_cluster_parameters/3,
         describe_cluster_security_groups/2,
         describe_cluster_security_groups/3,
         describe_cluster_snapshots/2,
         describe_cluster_snapshots/3,
         describe_cluster_subnet_groups/2,
         describe_cluster_subnet_groups/3,
         describe_cluster_tracks/2,
         describe_cluster_tracks/3,
         describe_cluster_versions/2,
         describe_cluster_versions/3,
         describe_clusters/2,
         describe_clusters/3,
         describe_custom_domain_associations/2,
         describe_custom_domain_associations/3,
         describe_data_shares/2,
         describe_data_shares/3,
         describe_data_shares_for_consumer/2,
         describe_data_shares_for_consumer/3,
         describe_data_shares_for_producer/2,
         describe_data_shares_for_producer/3,
         describe_default_cluster_parameters/2,
         describe_default_cluster_parameters/3,
         describe_endpoint_access/2,
         describe_endpoint_access/3,
         describe_endpoint_authorization/2,
         describe_endpoint_authorization/3,
         describe_event_categories/2,
         describe_event_categories/3,
         describe_event_subscriptions/2,
         describe_event_subscriptions/3,
         describe_events/2,
         describe_events/3,
         describe_hsm_client_certificates/2,
         describe_hsm_client_certificates/3,
         describe_hsm_configurations/2,
         describe_hsm_configurations/3,
         describe_inbound_integrations/2,
         describe_inbound_integrations/3,
         describe_integrations/2,
         describe_integrations/3,
         describe_logging_status/2,
         describe_logging_status/3,
         describe_node_configuration_options/2,
         describe_node_configuration_options/3,
         describe_orderable_cluster_options/2,
         describe_orderable_cluster_options/3,
         describe_partners/2,
         describe_partners/3,
         describe_redshift_idc_applications/2,
         describe_redshift_idc_applications/3,
         describe_reserved_node_exchange_status/2,
         describe_reserved_node_exchange_status/3,
         describe_reserved_node_offerings/2,
         describe_reserved_node_offerings/3,
         describe_reserved_nodes/2,
         describe_reserved_nodes/3,
         describe_resize/2,
         describe_resize/3,
         describe_scheduled_actions/2,
         describe_scheduled_actions/3,
         describe_snapshot_copy_grants/2,
         describe_snapshot_copy_grants/3,
         describe_snapshot_schedules/2,
         describe_snapshot_schedules/3,
         describe_storage/2,
         describe_storage/3,
         describe_table_restore_status/2,
         describe_table_restore_status/3,
         describe_tags/2,
         describe_tags/3,
         describe_usage_limits/2,
         describe_usage_limits/3,
         disable_logging/2,
         disable_logging/3,
         disable_snapshot_copy/2,
         disable_snapshot_copy/3,
         disassociate_data_share_consumer/2,
         disassociate_data_share_consumer/3,
         enable_logging/2,
         enable_logging/3,
         enable_snapshot_copy/2,
         enable_snapshot_copy/3,
         failover_primary_compute/2,
         failover_primary_compute/3,
         get_cluster_credentials/2,
         get_cluster_credentials/3,
         get_cluster_credentials_with_iam/2,
         get_cluster_credentials_with_iam/3,
         get_reserved_node_exchange_configuration_options/2,
         get_reserved_node_exchange_configuration_options/3,
         get_reserved_node_exchange_offerings/2,
         get_reserved_node_exchange_offerings/3,
         get_resource_policy/2,
         get_resource_policy/3,
         list_recommendations/2,
         list_recommendations/3,
         modify_aqua_configuration/2,
         modify_aqua_configuration/3,
         modify_authentication_profile/2,
         modify_authentication_profile/3,
         modify_cluster/2,
         modify_cluster/3,
         modify_cluster_db_revision/2,
         modify_cluster_db_revision/3,
         modify_cluster_iam_roles/2,
         modify_cluster_iam_roles/3,
         modify_cluster_maintenance/2,
         modify_cluster_maintenance/3,
         modify_cluster_parameter_group/2,
         modify_cluster_parameter_group/3,
         modify_cluster_snapshot/2,
         modify_cluster_snapshot/3,
         modify_cluster_snapshot_schedule/2,
         modify_cluster_snapshot_schedule/3,
         modify_cluster_subnet_group/2,
         modify_cluster_subnet_group/3,
         modify_custom_domain_association/2,
         modify_custom_domain_association/3,
         modify_endpoint_access/2,
         modify_endpoint_access/3,
         modify_event_subscription/2,
         modify_event_subscription/3,
         modify_integration/2,
         modify_integration/3,
         modify_redshift_idc_application/2,
         modify_redshift_idc_application/3,
         modify_scheduled_action/2,
         modify_scheduled_action/3,
         modify_snapshot_copy_retention_period/2,
         modify_snapshot_copy_retention_period/3,
         modify_snapshot_schedule/2,
         modify_snapshot_schedule/3,
         modify_usage_limit/2,
         modify_usage_limit/3,
         pause_cluster/2,
         pause_cluster/3,
         purchase_reserved_node_offering/2,
         purchase_reserved_node_offering/3,
         put_resource_policy/2,
         put_resource_policy/3,
         reboot_cluster/2,
         reboot_cluster/3,
         register_namespace/2,
         register_namespace/3,
         reject_data_share/2,
         reject_data_share/3,
         reset_cluster_parameter_group/2,
         reset_cluster_parameter_group/3,
         resize_cluster/2,
         resize_cluster/3,
         restore_from_cluster_snapshot/2,
         restore_from_cluster_snapshot/3,
         restore_table_from_cluster_snapshot/2,
         restore_table_from_cluster_snapshot/3,
         resume_cluster/2,
         resume_cluster/3,
         revoke_cluster_security_group_ingress/2,
         revoke_cluster_security_group_ingress/3,
         revoke_endpoint_access/2,
         revoke_endpoint_access/3,
         revoke_snapshot_access/2,
         revoke_snapshot_access/3,
         rotate_encryption_key/2,
         rotate_encryption_key/3,
         update_partner_status/2,
         update_partner_status/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% endpoint_authorization_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type endpoint_authorization_not_found_fault() :: #{binary() => any()}.

%% Example:
%% integration_source_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type integration_source_not_found_fault() :: #{binary() => any()}.

%% Example:
%% describe_scheduled_actions_message() :: #{
%%   <<"Active">> => boolean(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"Filters">> => list(scheduled_action_filter()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ScheduledActionName">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TargetActionType">> => list(any())
%% }
-type describe_scheduled_actions_message() :: #{binary() => any()}.

%% Example:
%% delete_cluster_result() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type delete_cluster_result() :: #{binary() => any()}.

%% Example:
%% event_subscriptions_message() :: #{
%%   <<"EventSubscriptionsList">> => list(event_subscription()),
%%   <<"Marker">> => string()
%% }
-type event_subscriptions_message() :: #{binary() => any()}.

%% Example:
%% invalid_cluster_subnet_group_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_cluster_subnet_group_state_fault() :: #{binary() => any()}.

%% Example:
%% resource_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_fault() :: #{binary() => any()}.

%% Example:
%% table_restore_status() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"Message">> => string(),
%%   <<"NewTableName">> => string(),
%%   <<"ProgressInMegaBytes">> => float(),
%%   <<"RequestTime">> => non_neg_integer(),
%%   <<"SnapshotIdentifier">> => string(),
%%   <<"SourceDatabaseName">> => string(),
%%   <<"SourceSchemaName">> => string(),
%%   <<"SourceTableName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TableRestoreRequestId">> => string(),
%%   <<"TargetDatabaseName">> => string(),
%%   <<"TargetSchemaName">> => string(),
%%   <<"TotalDataInMegaBytes">> => float()
%% }
-type table_restore_status() :: #{binary() => any()}.

%% Example:
%% describe_data_shares_for_producer_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ProducerArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type describe_data_shares_for_producer_message() :: #{binary() => any()}.

%% Example:
%% integration_target_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type integration_target_not_found_fault() :: #{binary() => any()}.

%% Example:
%% recommended_action() :: #{
%%   <<"Command">> => string(),
%%   <<"Database">> => string(),
%%   <<"Text">> => string(),
%%   <<"Type">> => list(any())
%% }
-type recommended_action() :: #{binary() => any()}.

%% Example:
%% cluster_on_latest_revision_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_on_latest_revision_fault() :: #{binary() => any()}.

%% Example:
%% schedule_definition_type_unsupported_fault() :: #{
%%   <<"message">> => string()
%% }
-type schedule_definition_type_unsupported_fault() :: #{binary() => any()}.

%% Example:
%% invalid_snapshot_copy_grant_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_snapshot_copy_grant_state_fault() :: #{binary() => any()}.

%% Example:
%% endpoint_access_list() :: #{
%%   <<"EndpointAccessList">> => list(endpoint_access()),
%%   <<"Marker">> => string()
%% }
-type endpoint_access_list() :: #{binary() => any()}.

%% Example:
%% subnet_already_in_use() :: #{
%%   <<"message">> => string()
%% }
-type subnet_already_in_use() :: #{binary() => any()}.

%% Example:
%% modify_cluster_db_revision_message() :: #{
%%   <<"ClusterIdentifier">> := string(),
%%   <<"RevisionTarget">> := string()
%% }
-type modify_cluster_db_revision_message() :: #{binary() => any()}.

%% Example:
%% cluster_associated_to_schedule() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"ScheduleAssociationState">> => list(any())
%% }
-type cluster_associated_to_schedule() :: #{binary() => any()}.

%% Example:
%% reserved_node_configuration_option() :: #{
%%   <<"SourceReservedNode">> => reserved_node(),
%%   <<"TargetReservedNodeCount">> => integer(),
%%   <<"TargetReservedNodeOffering">> => reserved_node_offering()
%% }
-type reserved_node_configuration_option() :: #{binary() => any()}.

%% Example:
%% list_recommendations_result() :: #{
%%   <<"Marker">> => string(),
%%   <<"Recommendations">> => list(recommendation())
%% }
-type list_recommendations_result() :: #{binary() => any()}.

%% Example:
%% event_categories_map() :: #{
%%   <<"Events">> => list(event_info_map()),
%%   <<"SourceType">> => string()
%% }
-type event_categories_map() :: #{binary() => any()}.

%% Example:
%% describe_snapshot_schedules_message() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ScheduleIdentifier">> => string(),
%%   <<"TagKeys">> => list(string()),
%%   <<"TagValues">> => list(string())
%% }
-type describe_snapshot_schedules_message() :: #{binary() => any()}.

%% Example:
%% authorize_data_share_message() :: #{
%%   <<"AllowWrites">> => boolean(),
%%   <<"ConsumerIdentifier">> := string(),
%%   <<"DataShareArn">> := string()
%% }
-type authorize_data_share_message() :: #{binary() => any()}.

%% Example:
%% describe_resize_message() :: #{
%%   <<"ClusterIdentifier">> := string()
%% }
-type describe_resize_message() :: #{binary() => any()}.

%% Example:
%% snapshot_schedule_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type snapshot_schedule_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% disable_snapshot_copy_result() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type disable_snapshot_copy_result() :: #{binary() => any()}.

%% Example:
%% describe_cluster_parameter_groups_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ParameterGroupName">> => string(),
%%   <<"TagKeys">> => list(string()),
%%   <<"TagValues">> => list(string())
%% }
-type describe_cluster_parameter_groups_message() :: #{binary() => any()}.

%% Example:
%% modify_cluster_snapshot_result() :: #{
%%   <<"Snapshot">> => snapshot()
%% }
-type modify_cluster_snapshot_result() :: #{binary() => any()}.

%% Example:
%% create_cluster_snapshot_message() :: #{
%%   <<"ClusterIdentifier">> := string(),
%%   <<"ManualSnapshotRetentionPeriod">> => integer(),
%%   <<"SnapshotIdentifier">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_cluster_snapshot_message() :: #{binary() => any()}.

%% Example:
%% subscription_severity_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type subscription_severity_not_found_fault() :: #{binary() => any()}.

%% Example:
%% get_reserved_node_exchange_offerings_output_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"ReservedNodeOfferings">> => list(reserved_node_offering())
%% }
-type get_reserved_node_exchange_offerings_output_message() :: #{binary() => any()}.

%% Example:
%% delete_snapshot_copy_grant_message() :: #{
%%   <<"SnapshotCopyGrantName">> := string()
%% }
-type delete_snapshot_copy_grant_message() :: #{binary() => any()}.

%% Example:
%% modify_cluster_maintenance_result() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type modify_cluster_maintenance_result() :: #{binary() => any()}.

%% Example:
%% inbound_integration() :: #{
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"Errors">> => list(integration_error()),
%%   <<"IntegrationArn">> => string(),
%%   <<"SourceArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TargetArn">> => string()
%% }
-type inbound_integration() :: #{binary() => any()}.

%% Example:
%% integration_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type integration_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% availability_zone() :: #{
%%   <<"Name">> => string(),
%%   <<"SupportedPlatforms">> => list(supported_platform())
%% }
-type availability_zone() :: #{binary() => any()}.

%% Example:
%% invalid_policy_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_policy_fault() :: #{binary() => any()}.

%% Example:
%% usage_limit_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type usage_limit_not_found_fault() :: #{binary() => any()}.

%% Example:
%% cluster_security_group_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_security_group_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% cluster_subnet_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_subnet_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% delete_cluster_parameter_group_message() :: #{
%%   <<"ParameterGroupName">> := string()
%% }
-type delete_cluster_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% describe_cluster_security_groups_message() :: #{
%%   <<"ClusterSecurityGroupName">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"TagKeys">> => list(string()),
%%   <<"TagValues">> => list(string())
%% }
-type describe_cluster_security_groups_message() :: #{binary() => any()}.

%% Example:
%% describe_snapshot_copy_grants_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"SnapshotCopyGrantName">> => string(),
%%   <<"TagKeys">> => list(string()),
%%   <<"TagValues">> => list(string())
%% }
-type describe_snapshot_copy_grants_message() :: #{binary() => any()}.

%% Example:
%% create_snapshot_schedule_message() :: #{
%%   <<"DryRun">> => boolean(),
%%   <<"NextInvocations">> => integer(),
%%   <<"ScheduleDefinitions">> => list(string()),
%%   <<"ScheduleDescription">> => string(),
%%   <<"ScheduleIdentifier">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_snapshot_schedule_message() :: #{binary() => any()}.

%% Example:
%% create_authentication_profile_result() :: #{
%%   <<"AuthenticationProfileContent">> => string(),
%%   <<"AuthenticationProfileName">> => string()
%% }
-type create_authentication_profile_result() :: #{binary() => any()}.

%% Example:
%% modify_authentication_profile_result() :: #{
%%   <<"AuthenticationProfileContent">> => string(),
%%   <<"AuthenticationProfileName">> => string()
%% }
-type modify_authentication_profile_result() :: #{binary() => any()}.

%% Example:
%% attribute_value_target() :: #{
%%   <<"AttributeValue">> => string()
%% }
-type attribute_value_target() :: #{binary() => any()}.

%% Example:
%% describe_cluster_db_revisions_message() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_cluster_db_revisions_message() :: #{binary() => any()}.

%% Example:
%% integration() :: #{
%%   <<"AdditionalEncryptionContext">> => map(),
%%   <<"CreateTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Errors">> => list(integration_error()),
%%   <<"IntegrationArn">> => string(),
%%   <<"IntegrationName">> => string(),
%%   <<"KMSKeyId">> => string(),
%%   <<"SourceArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => list(tag()),
%%   <<"TargetArn">> => string()
%% }
-type integration() :: #{binary() => any()}.

%% Example:
%% create_tags_message() :: #{
%%   <<"ResourceName">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type create_tags_message() :: #{binary() => any()}.

%% Example:
%% describe_integrations_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Values">> => list(string())
%% }
-type describe_integrations_filter() :: #{binary() => any()}.

%% Example:
%% modify_event_subscription_message() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"EventCategories">> => list(string()),
%%   <<"Severity">> => string(),
%%   <<"SnsTopicArn">> => string(),
%%   <<"SourceIds">> => list(string()),
%%   <<"SourceType">> => string(),
%%   <<"SubscriptionName">> := string()
%% }
-type modify_event_subscription_message() :: #{binary() => any()}.

%% Example:
%% describe_default_cluster_parameters_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ParameterGroupFamily">> := string()
%% }
-type describe_default_cluster_parameters_message() :: #{binary() => any()}.

%% Example:
%% hsm_configuration() :: #{
%%   <<"Description">> => string(),
%%   <<"HsmConfigurationIdentifier">> => string(),
%%   <<"HsmIpAddress">> => string(),
%%   <<"HsmPartitionName">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type hsm_configuration() :: #{binary() => any()}.

%% Example:
%% pause_cluster_message() :: #{
%%   <<"ClusterIdentifier">> => string()
%% }
-type pause_cluster_message() :: #{binary() => any()}.

%% Example:
%% scheduled_action_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Values">> => list(string())
%% }
-type scheduled_action_filter() :: #{binary() => any()}.

%% Example:
%% invalid_s3_bucket_name_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_s3_bucket_name_fault() :: #{binary() => any()}.

%% Example:
%% cluster_subnet_group_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_subnet_group_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% modify_redshift_idc_application_message() :: #{
%%   <<"AuthorizedTokenIssuerList">> => list(authorized_token_issuer()),
%%   <<"IamRoleArn">> => string(),
%%   <<"IdcDisplayName">> => string(),
%%   <<"IdentityNamespace">> => string(),
%%   <<"RedshiftIdcApplicationArn">> := string(),
%%   <<"ServiceIntegrations">> => list(list())
%% }
-type modify_redshift_idc_application_message() :: #{binary() => any()}.

%% Example:
%% purchase_reserved_node_offering_result() :: #{
%%   <<"ReservedNode">> => reserved_node()
%% }
-type purchase_reserved_node_offering_result() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_result() :: #{
%%   <<"ResourcePolicy">> => resource_policy()
%% }
-type put_resource_policy_result() :: #{binary() => any()}.

%% Example:
%% reject_data_share_message() :: #{
%%   <<"DataShareArn">> := string()
%% }
-type reject_data_share_message() :: #{binary() => any()}.

%% Example:
%% snapshot_copy_grant_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type snapshot_copy_grant_not_found_fault() :: #{binary() => any()}.

%% Example:
%% reserved_node_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type reserved_node_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% delete_usage_limit_message() :: #{
%%   <<"UsageLimitId">> := string()
%% }
-type delete_usage_limit_message() :: #{binary() => any()}.

%% Example:
%% cluster_subnet_group() :: #{
%%   <<"ClusterSubnetGroupName">> => string(),
%%   <<"Description">> => string(),
%%   <<"SubnetGroupStatus">> => string(),
%%   <<"Subnets">> => list(subnet()),
%%   <<"SupportedClusterIpAddressTypes">> => list(string()),
%%   <<"Tags">> => list(tag()),
%%   <<"VpcId">> => string()
%% }
-type cluster_subnet_group() :: #{binary() => any()}.

%% Example:
%% create_snapshot_copy_grant_result() :: #{
%%   <<"SnapshotCopyGrant">> => snapshot_copy_grant()
%% }
-type create_snapshot_copy_grant_result() :: #{binary() => any()}.

%% Example:
%% event_subscription() :: #{
%%   <<"CustSubscriptionId">> => string(),
%%   <<"CustomerAwsId">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"EventCategoriesList">> => list(string()),
%%   <<"Severity">> => string(),
%%   <<"SnsTopicArn">> => string(),
%%   <<"SourceIdsList">> => list(string()),
%%   <<"SourceType">> => string(),
%%   <<"Status">> => string(),
%%   <<"SubscriptionCreationTime">> => non_neg_integer(),
%%   <<"Tags">> => list(tag())
%% }
-type event_subscription() :: #{binary() => any()}.

%% Example:
%% ec2_security_group() :: #{
%%   <<"EC2SecurityGroupName">> => string(),
%%   <<"EC2SecurityGroupOwnerId">> => string(),
%%   <<"Status">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type ec2_security_group() :: #{binary() => any()}.

%% Example:
%% authorize_snapshot_access_message() :: #{
%%   <<"AccountWithRestoreAccess">> := string(),
%%   <<"SnapshotArn">> => string(),
%%   <<"SnapshotClusterIdentifier">> => string(),
%%   <<"SnapshotIdentifier">> => string()
%% }
-type authorize_snapshot_access_message() :: #{binary() => any()}.

%% Example:
%% resize_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type resize_not_found_fault() :: #{binary() => any()}.

%% Example:
%% recurring_charge() :: #{
%%   <<"RecurringChargeAmount">> => float(),
%%   <<"RecurringChargeFrequency">> => string()
%% }
-type recurring_charge() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% invalid_restore_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_restore_fault() :: #{binary() => any()}.

%% Example:
%% modify_scheduled_action_message() :: #{
%%   <<"Enable">> => boolean(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"IamRole">> => string(),
%%   <<"Schedule">> => string(),
%%   <<"ScheduledActionDescription">> => string(),
%%   <<"ScheduledActionName">> := string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TargetAction">> => scheduled_action_type()
%% }
-type modify_scheduled_action_message() :: #{binary() => any()}.

%% Example:
%% modify_endpoint_access_message() :: #{
%%   <<"EndpointName">> := string(),
%%   <<"VpcSecurityGroupIds">> => list(string())
%% }
-type modify_endpoint_access_message() :: #{binary() => any()}.

%% Example:
%% batch_modify_cluster_snapshots_limit_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type batch_modify_cluster_snapshots_limit_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% authorize_cluster_security_group_ingress_message() :: #{
%%   <<"CIDRIP">> => string(),
%%   <<"ClusterSecurityGroupName">> := string(),
%%   <<"EC2SecurityGroupName">> => string(),
%%   <<"EC2SecurityGroupOwnerId">> => string()
%% }
-type authorize_cluster_security_group_ingress_message() :: #{binary() => any()}.

%% Example:
%% cluster_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_not_found_fault() :: #{binary() => any()}.

%% Example:
%% network_interface() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"Ipv6Address">> => string(),
%%   <<"NetworkInterfaceId">> => string(),
%%   <<"PrivateIpAddress">> => string(),
%%   <<"SubnetId">> => string()
%% }
-type network_interface() :: #{binary() => any()}.

%% Example:
%% modify_snapshot_copy_retention_period_message() :: #{
%%   <<"ClusterIdentifier">> := string(),
%%   <<"Manual">> => boolean(),
%%   <<"RetentionPeriod">> := integer()
%% }
-type modify_snapshot_copy_retention_period_message() :: #{binary() => any()}.

%% Example:
%% integration_error() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string()
%% }
-type integration_error() :: #{binary() => any()}.

%% Example:
%% delete_tags_message() :: #{
%%   <<"ResourceName">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type delete_tags_message() :: #{binary() => any()}.

%% Example:
%% subnet() :: #{
%%   <<"SubnetAvailabilityZone">> => availability_zone(),
%%   <<"SubnetIdentifier">> => string(),
%%   <<"SubnetStatus">> => string()
%% }
-type subnet() :: #{binary() => any()}.

%% Example:
%% redshift_idc_application_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type redshift_idc_application_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% invalid_subnet() :: #{
%%   <<"message">> => string()
%% }
-type invalid_subnet() :: #{binary() => any()}.

%% Example:
%% failover_primary_compute_result() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type failover_primary_compute_result() :: #{binary() => any()}.

%% Example:
%% modify_cluster_iam_roles_result() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type modify_cluster_iam_roles_result() :: #{binary() => any()}.

%% Example:
%% modify_cluster_iam_roles_message() :: #{
%%   <<"AddIamRoles">> => list(string()),
%%   <<"ClusterIdentifier">> := string(),
%%   <<"DefaultIamRoleArn">> => string(),
%%   <<"RemoveIamRoles">> => list(string())
%% }
-type modify_cluster_iam_roles_message() :: #{binary() => any()}.

%% Example:
%% describe_reserved_nodes_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ReservedNodeId">> => string()
%% }
-type describe_reserved_nodes_message() :: #{binary() => any()}.

%% Example:
%% invalid_data_share_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_data_share_fault() :: #{binary() => any()}.

%% Example:
%% node_configuration_option() :: #{
%%   <<"EstimatedDiskUtilizationPercent">> => float(),
%%   <<"Mode">> => list(any()),
%%   <<"NodeType">> => string(),
%%   <<"NumberOfNodes">> => integer()
%% }
-type node_configuration_option() :: #{binary() => any()}.

%% Example:
%% describe_inbound_integrations_message() :: #{
%%   <<"IntegrationArn">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"TargetArn">> => string()
%% }
-type describe_inbound_integrations_message() :: #{binary() => any()}.

%% Example:
%% snapshot_copy_already_disabled_fault() :: #{
%%   <<"message">> => string()
%% }
-type snapshot_copy_already_disabled_fault() :: #{binary() => any()}.

%% Example:
%% dependent_service_request_throttling_fault() :: #{
%%   <<"message">> => string()
%% }
-type dependent_service_request_throttling_fault() :: #{binary() => any()}.

%% Example:
%% modify_cluster_snapshot_message() :: #{
%%   <<"Force">> => boolean(),
%%   <<"ManualSnapshotRetentionPeriod">> => integer(),
%%   <<"SnapshotIdentifier">> := string()
%% }
-type modify_cluster_snapshot_message() :: #{binary() => any()}.

%% Example:
%% create_cluster_parameter_group_message() :: #{
%%   <<"Description">> := string(),
%%   <<"ParameterGroupFamily">> := string(),
%%   <<"ParameterGroupName">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_cluster_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% unsupported_operation_fault() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_operation_fault() :: #{binary() => any()}.

%% Example:
%% cluster_parameter_group_name_message() :: #{
%%   <<"ParameterGroupName">> => string(),
%%   <<"ParameterGroupStatus">> => string()
%% }
-type cluster_parameter_group_name_message() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_message() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type get_resource_policy_message() :: #{binary() => any()}.

%% Example:
%% describe_data_shares_for_consumer_result() :: #{
%%   <<"DataShares">> => list(data_share()),
%%   <<"Marker">> => string()
%% }
-type describe_data_shares_for_consumer_result() :: #{binary() => any()}.

%% Example:
%% authentication_profile() :: #{
%%   <<"AuthenticationProfileContent">> => string(),
%%   <<"AuthenticationProfileName">> => string()
%% }
-type authentication_profile() :: #{binary() => any()}.

%% Example:
%% cluster_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% subscription_already_exist_fault() :: #{
%%   <<"message">> => string()
%% }
-type subscription_already_exist_fault() :: #{binary() => any()}.

%% Example:
%% cluster_snapshot_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_snapshot_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% hsm_configuration_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type hsm_configuration_not_found_fault() :: #{binary() => any()}.

%% Example:
%% describe_data_shares_result() :: #{
%%   <<"DataShares">> => list(data_share()),
%%   <<"Marker">> => string()
%% }
-type describe_data_shares_result() :: #{binary() => any()}.

%% Example:
%% pause_cluster_result() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type pause_cluster_result() :: #{binary() => any()}.

%% Example:
%% endpoint_authorization() :: #{
%%   <<"AllowedAllVPCs">> => boolean(),
%%   <<"AllowedVPCs">> => list(string()),
%%   <<"AuthorizeTime">> => non_neg_integer(),
%%   <<"ClusterIdentifier">> => string(),
%%   <<"ClusterStatus">> => string(),
%%   <<"EndpointCount">> => integer(),
%%   <<"Grantee">> => string(),
%%   <<"Grantor">> => string(),
%%   <<"Status">> => list(any())
%% }
-type endpoint_authorization() :: #{binary() => any()}.

%% Example:
%% invalid_cluster_track_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_cluster_track_fault() :: #{binary() => any()}.

%% Example:
%% create_cluster_parameter_group_result() :: #{
%%   <<"ClusterParameterGroup">> => cluster_parameter_group()
%% }
-type create_cluster_parameter_group_result() :: #{binary() => any()}.

%% Example:
%% reboot_cluster_message() :: #{
%%   <<"ClusterIdentifier">> := string()
%% }
-type reboot_cluster_message() :: #{binary() => any()}.

%% Example:
%% hsm_client_certificate_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type hsm_client_certificate_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% data_transfer_progress() :: #{
%%   <<"CurrentRateInMegaBytesPerSecond">> => float(),
%%   <<"DataTransferredInMegaBytes">> => float(),
%%   <<"ElapsedTimeInSeconds">> => float(),
%%   <<"EstimatedTimeToCompletionInSeconds">> => float(),
%%   <<"Status">> => string(),
%%   <<"TotalDataInMegaBytes">> => float()
%% }
-type data_transfer_progress() :: #{binary() => any()}.

%% Example:
%% subscription_event_id_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type subscription_event_id_not_found_fault() :: #{binary() => any()}.

%% Example:
%% partner_integration_input_message() :: #{
%%   <<"AccountId">> := string(),
%%   <<"ClusterIdentifier">> := string(),
%%   <<"DatabaseName">> := string(),
%%   <<"PartnerName">> := string()
%% }
-type partner_integration_input_message() :: #{binary() => any()}.

%% Example:
%% invalid_cluster_parameter_group_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_cluster_parameter_group_state_fault() :: #{binary() => any()}.

%% Example:
%% certificate_association() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"CustomDomainName">> => string()
%% }
-type certificate_association() :: #{binary() => any()}.

%% Example:
%% create_cluster_security_group_message() :: #{
%%   <<"ClusterSecurityGroupName">> := string(),
%%   <<"Description">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_cluster_security_group_message() :: #{binary() => any()}.

%% Example:
%% snapshot_copy_grant_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type snapshot_copy_grant_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% describe_hsm_configurations_message() :: #{
%%   <<"HsmConfigurationIdentifier">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"TagKeys">> => list(string()),
%%   <<"TagValues">> => list(string())
%% }
-type describe_hsm_configurations_message() :: #{binary() => any()}.

%% Example:
%% invalid_namespace_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_namespace_fault() :: #{binary() => any()}.

%% Example:
%% delete_custom_domain_association_message() :: #{
%%   <<"ClusterIdentifier">> := string(),
%%   <<"CustomDomainName">> := string()
%% }
-type delete_custom_domain_association_message() :: #{binary() => any()}.

%% Example:
%% accept_reserved_node_exchange_input_message() :: #{
%%   <<"ReservedNodeId">> := string(),
%%   <<"TargetReservedNodeOfferingId">> := string()
%% }
-type accept_reserved_node_exchange_input_message() :: #{binary() => any()}.

%% Example:
%% cluster_version() :: #{
%%   <<"ClusterParameterGroupFamily">> => string(),
%%   <<"ClusterVersion">> => string(),
%%   <<"Description">> => string()
%% }
-type cluster_version() :: #{binary() => any()}.

%% Example:
%% get_reserved_node_exchange_offerings_input_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ReservedNodeId">> := string()
%% }
-type get_reserved_node_exchange_offerings_input_message() :: #{binary() => any()}.

%% Example:
%% scheduled_action_type_unsupported_fault() :: #{
%%   <<"message">> => string()
%% }
-type scheduled_action_type_unsupported_fault() :: #{binary() => any()}.

%% Example:
%% disable_snapshot_copy_message() :: #{
%%   <<"ClusterIdentifier">> := string()
%% }
-type disable_snapshot_copy_message() :: #{binary() => any()}.

%% Example:
%% endpoints_per_authorization_limit_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type endpoints_per_authorization_limit_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% reserved_nodes_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"ReservedNodes">> => list(reserved_node())
%% }
-type reserved_nodes_message() :: #{binary() => any()}.

%% Example:
%% cluster_credentials() :: #{
%%   <<"DbPassword">> => string(),
%%   <<"DbUser">> => string(),
%%   <<"Expiration">> => non_neg_integer()
%% }
-type cluster_credentials() :: #{binary() => any()}.

%% Example:
%% invalid_cluster_snapshot_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_cluster_snapshot_state_fault() :: #{binary() => any()}.

%% Example:
%% describe_cluster_subnet_groups_message() :: #{
%%   <<"ClusterSubnetGroupName">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"TagKeys">> => list(string()),
%%   <<"TagValues">> => list(string())
%% }
-type describe_cluster_subnet_groups_message() :: #{binary() => any()}.

%% Example:
%% reserved_node_offering() :: #{
%%   <<"CurrencyCode">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"FixedPrice">> => float(),
%%   <<"NodeType">> => string(),
%%   <<"OfferingType">> => string(),
%%   <<"RecurringCharges">> => list(recurring_charge()),
%%   <<"ReservedNodeOfferingId">> => string(),
%%   <<"ReservedNodeOfferingType">> => list(any()),
%%   <<"UsagePrice">> => float()
%% }
-type reserved_node_offering() :: #{binary() => any()}.

%% Example:
%% reserved_node_already_migrated_fault() :: #{
%%   <<"message">> => string()
%% }
-type reserved_node_already_migrated_fault() :: #{binary() => any()}.

%% Example:
%% modify_snapshot_schedule_message() :: #{
%%   <<"ScheduleDefinitions">> := list(string()),
%%   <<"ScheduleIdentifier">> := string()
%% }
-type modify_snapshot_schedule_message() :: #{binary() => any()}.

%% Example:
%% serverless_identifier() :: #{
%%   <<"NamespaceIdentifier">> => string(),
%%   <<"WorkgroupIdentifier">> => string()
%% }
-type serverless_identifier() :: #{binary() => any()}.

%% Example:
%% deregister_namespace_output_message() :: #{
%%   <<"Status">> => list(any())
%% }
-type deregister_namespace_output_message() :: #{binary() => any()}.

%% Example:
%% authorize_endpoint_access_message() :: #{
%%   <<"Account">> := string(),
%%   <<"ClusterIdentifier">> => string(),
%%   <<"VpcIds">> => list(string())
%% }
-type authorize_endpoint_access_message() :: #{binary() => any()}.

%% Example:
%% describe_account_attributes_message() :: #{
%%   <<"AttributeNames">> => list(string())
%% }
-type describe_account_attributes_message() :: #{binary() => any()}.

%% Example:
%% authentication_profile_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type authentication_profile_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% restore_table_from_cluster_snapshot_message() :: #{
%%   <<"ClusterIdentifier">> := string(),
%%   <<"EnableCaseSensitiveIdentifier">> => boolean(),
%%   <<"NewTableName">> := string(),
%%   <<"SnapshotIdentifier">> := string(),
%%   <<"SourceDatabaseName">> := string(),
%%   <<"SourceSchemaName">> => string(),
%%   <<"SourceTableName">> := string(),
%%   <<"TargetDatabaseName">> => string(),
%%   <<"TargetSchemaName">> => string()
%% }
-type restore_table_from_cluster_snapshot_message() :: #{binary() => any()}.

%% Example:
%% invalid_authentication_profile_request_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_authentication_profile_request_fault() :: #{binary() => any()}.

%% Example:
%% unauthorized_operation() :: #{
%%   <<"message">> => string()
%% }
-type unauthorized_operation() :: #{binary() => any()}.

%% Example:
%% delete_scheduled_action_message() :: #{
%%   <<"ScheduledActionName">> := string()
%% }
-type delete_scheduled_action_message() :: #{binary() => any()}.

%% Example:
%% invalid_vpc_network_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_vpc_network_state_fault() :: #{binary() => any()}.

%% Example:
%% create_redshift_idc_application_result() :: #{
%%   <<"RedshiftIdcApplication">> => redshift_idc_application()
%% }
-type create_redshift_idc_application_result() :: #{binary() => any()}.

%% Example:
%% describe_table_restore_status_message() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"TableRestoreRequestId">> => string()
%% }
-type describe_table_restore_status_message() :: #{binary() => any()}.

%% Example:
%% cluster_security_group_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_security_group_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% snapshot_schedule_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type snapshot_schedule_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% invalid_elastic_ip_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_elastic_ip_fault() :: #{binary() => any()}.

%% Example:
%% invalid_tag_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_tag_fault() :: #{binary() => any()}.

%% Example:
%% create_event_subscription_message() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"EventCategories">> => list(string()),
%%   <<"Severity">> => string(),
%%   <<"SnsTopicArn">> := string(),
%%   <<"SourceIds">> => list(string()),
%%   <<"SourceType">> => string(),
%%   <<"SubscriptionName">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_event_subscription_message() :: #{binary() => any()}.

%% Example:
%% scheduled_action_type() :: #{
%%   <<"PauseCluster">> => pause_cluster_message(),
%%   <<"ResizeCluster">> => resize_cluster_message(),
%%   <<"ResumeCluster">> => resume_cluster_message()
%% }
-type scheduled_action_type() :: #{binary() => any()}.

%% Example:
%% create_snapshot_copy_grant_message() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"SnapshotCopyGrantName">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_snapshot_copy_grant_message() :: #{binary() => any()}.

%% Example:
%% get_cluster_credentials_with_iam_message() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"CustomDomainName">> => string(),
%%   <<"DbName">> => string(),
%%   <<"DurationSeconds">> => integer()
%% }
-type get_cluster_credentials_with_iam_message() :: #{binary() => any()}.

%% Example:
%% endpoint_authorization_list() :: #{
%%   <<"EndpointAuthorizationList">> => list(endpoint_authorization()),
%%   <<"Marker">> => string()
%% }
-type endpoint_authorization_list() :: #{binary() => any()}.

%% Example:
%% bucket_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type bucket_not_found_fault() :: #{binary() => any()}.

%% Example:
%% integration_conflict_operation_fault() :: #{
%%   <<"message">> => string()
%% }
-type integration_conflict_operation_fault() :: #{binary() => any()}.

%% Example:
%% modify_cluster_result() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type modify_cluster_result() :: #{binary() => any()}.

%% Example:
%% orderable_cluster_options_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"OrderableClusterOptions">> => list(orderable_cluster_option())
%% }
-type orderable_cluster_options_message() :: #{binary() => any()}.

%% Example:
%% describe_event_subscriptions_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"SubscriptionName">> => string(),
%%   <<"TagKeys">> => list(string()),
%%   <<"TagValues">> => list(string())
%% }
-type describe_event_subscriptions_message() :: #{binary() => any()}.

%% Example:
%% cluster_parameter_group_status() :: #{
%%   <<"ClusterParameterStatusList">> => list(cluster_parameter_status()),
%%   <<"ParameterApplyStatus">> => string(),
%%   <<"ParameterGroupName">> => string()
%% }
-type cluster_parameter_group_status() :: #{binary() => any()}.

%% Example:
%% in_progress_table_restore_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type in_progress_table_restore_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% delete_hsm_configuration_message() :: #{
%%   <<"HsmConfigurationIdentifier">> := string()
%% }
-type delete_hsm_configuration_message() :: #{binary() => any()}.

%% Example:
%% register_namespace_input_message() :: #{
%%   <<"ConsumerIdentifiers">> := list(string()),
%%   <<"NamespaceIdentifier">> := list()
%% }
-type register_namespace_input_message() :: #{binary() => any()}.

%% Example:
%% delete_integration_message() :: #{
%%   <<"IntegrationArn">> := string()
%% }
-type delete_integration_message() :: #{binary() => any()}.

%% Example:
%% list_recommendations_message() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"NamespaceArn">> => string()
%% }
-type list_recommendations_message() :: #{binary() => any()}.

%% Example:
%% endpoint_authorizations_per_cluster_limit_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type endpoint_authorizations_per_cluster_limit_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% snapshot_copy_grant_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"SnapshotCopyGrants">> => list(snapshot_copy_grant())
%% }
-type snapshot_copy_grant_message() :: #{binary() => any()}.

%% Example:
%% pending_modified_values() :: #{
%%   <<"AutomatedSnapshotRetentionPeriod">> => integer(),
%%   <<"ClusterIdentifier">> => string(),
%%   <<"ClusterType">> => string(),
%%   <<"ClusterVersion">> => string(),
%%   <<"EncryptionType">> => string(),
%%   <<"EnhancedVpcRouting">> => boolean(),
%%   <<"MaintenanceTrackName">> => string(),
%%   <<"MasterUserPassword">> => string(),
%%   <<"NodeType">> => string(),
%%   <<"NumberOfNodes">> => integer(),
%%   <<"PubliclyAccessible">> => boolean()
%% }
-type pending_modified_values() :: #{binary() => any()}.

%% Example:
%% cancel_resize_message() :: #{
%%   <<"ClusterIdentifier">> := string()
%% }
-type cancel_resize_message() :: #{binary() => any()}.

%% Example:
%% describe_tags_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ResourceName">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"TagKeys">> => list(string()),
%%   <<"TagValues">> => list(string())
%% }
-type describe_tags_message() :: #{binary() => any()}.

%% Example:
%% cluster_parameter_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_parameter_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% authorization_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type authorization_not_found_fault() :: #{binary() => any()}.

%% Example:
%% integration_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type integration_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% snapshot_copy_already_enabled_fault() :: #{
%%   <<"message">> => string()
%% }
-type snapshot_copy_already_enabled_fault() :: #{binary() => any()}.

%% Example:
%% copy_cluster_snapshot_message() :: #{
%%   <<"ManualSnapshotRetentionPeriod">> => integer(),
%%   <<"SourceSnapshotClusterIdentifier">> => string(),
%%   <<"SourceSnapshotIdentifier">> := string(),
%%   <<"TargetSnapshotIdentifier">> := string()
%% }
-type copy_cluster_snapshot_message() :: #{binary() => any()}.

%% Example:
%% dependent_service_access_denied_fault() :: #{
%%   <<"message">> => string()
%% }
-type dependent_service_access_denied_fault() :: #{binary() => any()}.

%% Example:
%% orderable_cluster_option() :: #{
%%   <<"AvailabilityZones">> => list(availability_zone()),
%%   <<"ClusterType">> => string(),
%%   <<"ClusterVersion">> => string(),
%%   <<"NodeType">> => string()
%% }
-type orderable_cluster_option() :: #{binary() => any()}.

%% Example:
%% invalid_hsm_configuration_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_hsm_configuration_state_fault() :: #{binary() => any()}.

%% Example:
%% event_info_map() :: #{
%%   <<"EventCategories">> => list(string()),
%%   <<"EventDescription">> => string(),
%%   <<"EventId">> => string(),
%%   <<"Severity">> => string()
%% }
-type event_info_map() :: #{binary() => any()}.

%% Example:
%% batch_modify_cluster_snapshots_output_message() :: #{
%%   <<"Errors">> => list(snapshot_error_message()),
%%   <<"Resources">> => list(string())
%% }
-type batch_modify_cluster_snapshots_output_message() :: #{binary() => any()}.

%% Example:
%% cluster_db_revisions_message() :: #{
%%   <<"ClusterDbRevisions">> => list(cluster_db_revision()),
%%   <<"Marker">> => string()
%% }
-type cluster_db_revisions_message() :: #{binary() => any()}.

%% Example:
%% associate_data_share_consumer_message() :: #{
%%   <<"AllowWrites">> => boolean(),
%%   <<"AssociateEntireAccount">> => boolean(),
%%   <<"ConsumerArn">> => string(),
%%   <<"ConsumerRegion">> => string(),
%%   <<"DataShareArn">> := string()
%% }
-type associate_data_share_consumer_message() :: #{binary() => any()}.

%% Example:
%% cluster_node() :: #{
%%   <<"NodeRole">> => string(),
%%   <<"PrivateIPAddress">> => string(),
%%   <<"PublicIPAddress">> => string()
%% }
-type cluster_node() :: #{binary() => any()}.

%% Example:
%% modify_cluster_subnet_group_message() :: #{
%%   <<"ClusterSubnetGroupName">> := string(),
%%   <<"Description">> => string(),
%%   <<"SubnetIds">> := list(string())
%% }
-type modify_cluster_subnet_group_message() :: #{binary() => any()}.

%% Example:
%% create_cluster_subnet_group_result() :: #{
%%   <<"ClusterSubnetGroup">> => cluster_subnet_group()
%% }
-type create_cluster_subnet_group_result() :: #{binary() => any()}.

%% Example:
%% invalid_usage_limit_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_usage_limit_fault() :: #{binary() => any()}.

%% Example:
%% delete_redshift_idc_application_message() :: #{
%%   <<"RedshiftIdcApplicationArn">> := string()
%% }
-type delete_redshift_idc_application_message() :: #{binary() => any()}.

%% Example:
%% deferred_maintenance_window() :: #{
%%   <<"DeferMaintenanceEndTime">> => non_neg_integer(),
%%   <<"DeferMaintenanceIdentifier">> => string(),
%%   <<"DeferMaintenanceStartTime">> => non_neg_integer()
%% }
-type deferred_maintenance_window() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% purchase_reserved_node_offering_message() :: #{
%%   <<"NodeCount">> => integer(),
%%   <<"ReservedNodeOfferingId">> := string()
%% }
-type purchase_reserved_node_offering_message() :: #{binary() => any()}.

%% Example:
%% cluster_parameter_groups_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"ParameterGroups">> => list(cluster_parameter_group())
%% }
-type cluster_parameter_groups_message() :: #{binary() => any()}.

%% Example:
%% authorization_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type authorization_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% modify_cluster_parameter_group_message() :: #{
%%   <<"ParameterGroupName">> := string(),
%%   <<"Parameters">> := list(parameter())
%% }
-type modify_cluster_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% create_cluster_result() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type create_cluster_result() :: #{binary() => any()}.

%% Example:
%% cluster() :: #{
%%   <<"Encrypted">> => boolean(),
%%   <<"ClusterAvailabilityStatus">> => string(),
%%   <<"IamRoles">> => list(cluster_iam_role()),
%%   <<"HsmStatus">> => hsm_status(),
%%   <<"ClusterCreateTime">> => non_neg_integer(),
%%   <<"ClusterStatus">> => string(),
%%   <<"ClusterSubnetGroupName">> => string(),
%%   <<"ClusterVersion">> => string(),
%%   <<"MasterPasswordSecretArn">> => string(),
%%   <<"AvailabilityZoneRelocationStatus">> => string(),
%%   <<"SnapshotScheduleState">> => list(any()),
%%   <<"MultiAZSecondary">> => secondary_cluster_info(),
%%   <<"AutomatedSnapshotRetentionPeriod">> => integer(),
%%   <<"ResizeInfo">> => resize_info(),
%%   <<"TotalStorageCapacityInMegaBytes">> => float(),
%%   <<"CustomDomainName">> => string(),
%%   <<"CustomDomainCertificateExpiryDate">> => non_neg_integer(),
%%   <<"ExpectedNextSnapshotScheduleTime">> => non_neg_integer(),
%%   <<"SnapshotScheduleIdentifier">> => string(),
%%   <<"RestoreStatus">> => restore_status(),
%%   <<"PendingModifiedValues">> => pending_modified_values(),
%%   <<"DataTransferProgress">> => data_transfer_progress(),
%%   <<"ClusterNodes">> => list(cluster_node()),
%%   <<"IpAddressType">> => string(),
%%   <<"MasterPasswordSecretKmsKeyId">> => string(),
%%   <<"ElasticIpStatus">> => elastic_ip_status(),
%%   <<"ExpectedNextSnapshotScheduleTimeStatus">> => string(),
%%   <<"AquaConfiguration">> => aqua_configuration(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"MasterUsername">> => string(),
%%   <<"ClusterSecurityGroups">> => list(cluster_security_group_membership()),
%%   <<"ClusterRevisionNumber">> => string(),
%%   <<"NodeType">> => string(),
%%   <<"ElasticResizeNumberOfNodeOptions">> => string(),
%%   <<"DBName">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"ClusterParameterGroups">> => list(cluster_parameter_group_status()),
%%   <<"EnhancedVpcRouting">> => boolean(),
%%   <<"ClusterSnapshotCopyStatus">> => cluster_snapshot_copy_status(),
%%   <<"MaintenanceTrackName">> => string(),
%%   <<"PendingActions">> => list(string()),
%%   <<"DefaultIamRoleArn">> => string(),
%%   <<"ClusterNamespaceArn">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"VpcId">> => string(),
%%   <<"ClusterPublicKey">> => string(),
%%   <<"NumberOfNodes">> => integer(),
%%   <<"KmsKeyId">> => string(),
%%   <<"ManualSnapshotRetentionPeriod">> => integer(),
%%   <<"Endpoint">> => endpoint(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"ReservedNodeExchangeStatus">> => reserved_node_exchange_status(),
%%   <<"NextMaintenanceWindowStartTime">> => non_neg_integer(),
%%   <<"VpcSecurityGroups">> => list(vpc_security_group_membership()),
%%   <<"ModifyStatus">> => string(),
%%   <<"DeferredMaintenanceWindows">> => list(deferred_maintenance_window()),
%%   <<"CustomDomainCertificateArn">> => string(),
%%   <<"AllowVersionUpgrade">> => boolean(),
%%   <<"ClusterIdentifier">> => string(),
%%   <<"MultiAZ">> => string()
%% }
-type cluster() :: #{binary() => any()}.

%% Example:
%% reset_cluster_parameter_group_message() :: #{
%%   <<"ParameterGroupName">> := string(),
%%   <<"Parameters">> => list(parameter()),
%%   <<"ResetAllParameters">> => boolean()
%% }
-type reset_cluster_parameter_group_message() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_message() :: #{
%%   <<"Policy">> := string(),
%%   <<"ResourceArn">> := string()
%% }
-type put_resource_policy_message() :: #{binary() => any()}.

%% Example:
%% inbound_integrations_message() :: #{
%%   <<"InboundIntegrations">> => list(inbound_integration()),
%%   <<"Marker">> => string()
%% }
-type inbound_integrations_message() :: #{binary() => any()}.

%% Example:
%% endpoints_per_cluster_limit_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type endpoints_per_cluster_limit_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% accept_reserved_node_exchange_output_message() :: #{
%%   <<"ExchangedReservedNode">> => reserved_node()
%% }
-type accept_reserved_node_exchange_output_message() :: #{binary() => any()}.

%% Example:
%% recommendation() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"ImpactRanking">> => list(any()),
%%   <<"NamespaceArn">> => string(),
%%   <<"Observation">> => string(),
%%   <<"RecommendationText">> => string(),
%%   <<"RecommendationType">> => string(),
%%   <<"RecommendedActions">> => list(recommended_action()),
%%   <<"ReferenceLinks">> => list(reference_link()),
%%   <<"Title">> => string()
%% }
-type recommendation() :: #{binary() => any()}.

%% Example:
%% create_authentication_profile_message() :: #{
%%   <<"AuthenticationProfileContent">> := string(),
%%   <<"AuthenticationProfileName">> := string()
%% }
-type create_authentication_profile_message() :: #{binary() => any()}.

%% Example:
%% snapshot_sorting_entity() :: #{
%%   <<"Attribute">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type snapshot_sorting_entity() :: #{binary() => any()}.

%% Example:
%% delete_authentication_profile_message() :: #{
%%   <<"AuthenticationProfileName">> := string()
%% }
-type delete_authentication_profile_message() :: #{binary() => any()}.

%% Example:
%% resume_cluster_message() :: #{
%%   <<"ClusterIdentifier">> => string()
%% }
-type resume_cluster_message() :: #{binary() => any()}.

%% Example:
%% cluster_security_group_membership() :: #{
%%   <<"ClusterSecurityGroupName">> => string(),
%%   <<"Status">> => string()
%% }
-type cluster_security_group_membership() :: #{binary() => any()}.

%% Example:
%% ip_range() :: #{
%%   <<"CIDRIP">> => string(),
%%   <<"Status">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type ip_range() :: #{binary() => any()}.

%% Example:
%% scheduled_action() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"IamRole">> => string(),
%%   <<"NextInvocations">> => list(non_neg_integer()),
%%   <<"Schedule">> => string(),
%%   <<"ScheduledActionDescription">> => string(),
%%   <<"ScheduledActionName">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"TargetAction">> => scheduled_action_type()
%% }
-type scheduled_action() :: #{binary() => any()}.

%% Example:
%% describe_authentication_profiles_result() :: #{
%%   <<"AuthenticationProfiles">> => list(authentication_profile())
%% }
-type describe_authentication_profiles_result() :: #{binary() => any()}.

%% Example:
%% describe_endpoint_authorization_message() :: #{
%%   <<"Account">> => string(),
%%   <<"ClusterIdentifier">> => string(),
%%   <<"Grantee">> => boolean(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_endpoint_authorization_message() :: #{binary() => any()}.

%% Example:
%% source_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type source_not_found_fault() :: #{binary() => any()}.

%% Example:
%% insufficient_s3_bucket_policy_fault() :: #{
%%   <<"message">> => string()
%% }
-type insufficient_s3_bucket_policy_fault() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_result() :: #{
%%   <<"ResourcePolicy">> => resource_policy()
%% }
-type get_resource_policy_result() :: #{binary() => any()}.

%% Example:
%% node_configuration_options_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Operator">> => list(any()),
%%   <<"Values">> => list(string())
%% }
-type node_configuration_options_filter() :: #{binary() => any()}.

%% Example:
%% redshift_idc_application_not_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type redshift_idc_application_not_exists_fault() :: #{binary() => any()}.

%% Example:
%% invalid_hsm_client_certificate_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_hsm_client_certificate_state_fault() :: #{binary() => any()}.

%% Example:
%% parameter() :: #{
%%   <<"AllowedValues">> => string(),
%%   <<"ApplyType">> => list(any()),
%%   <<"DataType">> => string(),
%%   <<"Description">> => string(),
%%   <<"IsModifiable">> => boolean(),
%%   <<"MinimumEngineVersion">> => string(),
%%   <<"ParameterName">> => string(),
%%   <<"ParameterValue">> => string(),
%%   <<"Source">> => string()
%% }
-type parameter() :: #{binary() => any()}.

%% Example:
%% redshift_idc_application() :: #{
%%   <<"AuthorizedTokenIssuerList">> => list(authorized_token_issuer()),
%%   <<"IamRoleArn">> => string(),
%%   <<"IdcDisplayName">> => string(),
%%   <<"IdcInstanceArn">> => string(),
%%   <<"IdcManagedApplicationArn">> => string(),
%%   <<"IdcOnboardStatus">> => string(),
%%   <<"IdentityNamespace">> => string(),
%%   <<"RedshiftIdcApplicationArn">> => string(),
%%   <<"RedshiftIdcApplicationName">> => string(),
%%   <<"ServiceIntegrations">> => list(list()),
%%   <<"SsoTagKeys">> => list(string()),
%%   <<"Tags">> => list(tag())
%% }
-type redshift_idc_application() :: #{binary() => any()}.

%% Example:
%% association() :: #{
%%   <<"CertificateAssociations">> => list(certificate_association()),
%%   <<"CustomDomainCertificateArn">> => string(),
%%   <<"CustomDomainCertificateExpiryDate">> => non_neg_integer()
%% }
-type association() :: #{binary() => any()}.

%% Example:
%% cluster_extended_credentials() :: #{
%%   <<"DbPassword">> => string(),
%%   <<"DbUser">> => string(),
%%   <<"Expiration">> => non_neg_integer(),
%%   <<"NextRefreshTime">> => non_neg_integer()
%% }
-type cluster_extended_credentials() :: #{binary() => any()}.

%% Example:
%% modify_custom_domain_association_result() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"CustomDomainCertExpiryTime">> => string(),
%%   <<"CustomDomainCertificateArn">> => string(),
%%   <<"CustomDomainName">> => string()
%% }
-type modify_custom_domain_association_result() :: #{binary() => any()}.

%% Example:
%% scheduled_actions_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"ScheduledActions">> => list(scheduled_action())
%% }
-type scheduled_actions_message() :: #{binary() => any()}.

%% Example:
%% read_write_access() :: #{
%%   <<"Authorization">> => list(any())
%% }
-type read_write_access() :: #{binary() => any()}.

%% Example:
%% modify_usage_limit_message() :: #{
%%   <<"Amount">> => float(),
%%   <<"BreachAction">> => list(any()),
%%   <<"UsageLimitId">> := string()
%% }
-type modify_usage_limit_message() :: #{binary() => any()}.

%% Example:
%% invalid_reserved_node_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_reserved_node_state_fault() :: #{binary() => any()}.

%% Example:
%% hsm_client_certificate() :: #{
%%   <<"HsmClientCertificateIdentifier">> => string(),
%%   <<"HsmClientCertificatePublicKey">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type hsm_client_certificate() :: #{binary() => any()}.

%% Example:
%% batch_delete_cluster_snapshots_request() :: #{
%%   <<"Identifiers">> := list(delete_cluster_snapshot_message())
%% }
-type batch_delete_cluster_snapshots_request() :: #{binary() => any()}.

%% Example:
%% authentication_profile_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type authentication_profile_not_found_fault() :: #{binary() => any()}.

%% Example:
%% cluster_snapshot_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_snapshot_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% reserved_node() :: #{
%%   <<"CurrencyCode">> => string(),
%%   <<"Duration">> => integer(),
%%   <<"FixedPrice">> => float(),
%%   <<"NodeCount">> => integer(),
%%   <<"NodeType">> => string(),
%%   <<"OfferingType">> => string(),
%%   <<"RecurringCharges">> => list(recurring_charge()),
%%   <<"ReservedNodeId">> => string(),
%%   <<"ReservedNodeOfferingId">> => string(),
%%   <<"ReservedNodeOfferingType">> => list(any()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"State">> => string(),
%%   <<"UsagePrice">> => float()
%% }
-type reserved_node() :: #{binary() => any()}.

%% Example:
%% incompatible_orderable_options() :: #{
%%   <<"message">> => string()
%% }
-type incompatible_orderable_options() :: #{binary() => any()}.

%% Example:
%% snapshot_copy_grant() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"SnapshotCopyGrantName">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type snapshot_copy_grant() :: #{binary() => any()}.

%% Example:
%% resize_cluster_message() :: #{
%%   <<"Classic">> => boolean(),
%%   <<"ClusterIdentifier">> => string(),
%%   <<"ClusterType">> => string(),
%%   <<"NodeType">> => string(),
%%   <<"NumberOfNodes">> => integer(),
%%   <<"ReservedNodeId">> => string(),
%%   <<"TargetReservedNodeOfferingId">> => string()
%% }
-type resize_cluster_message() :: #{binary() => any()}.

%% Example:
%% hsm_client_certificate_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type hsm_client_certificate_not_found_fault() :: #{binary() => any()}.

%% Example:
%% hsm_configuration_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type hsm_configuration_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% data_share() :: #{
%%   <<"AllowPubliclyAccessibleConsumers">> => boolean(),
%%   <<"DataShareArn">> => string(),
%%   <<"DataShareAssociations">> => list(data_share_association()),
%%   <<"DataShareType">> => list(any()),
%%   <<"ManagedBy">> => string(),
%%   <<"ProducerArn">> => string()
%% }
-type data_share() :: #{binary() => any()}.

%% Example:
%% revoke_endpoint_access_message() :: #{
%%   <<"Account">> => string(),
%%   <<"ClusterIdentifier">> => string(),
%%   <<"Force">> => boolean(),
%%   <<"VpcIds">> => list(string())
%% }
-type revoke_endpoint_access_message() :: #{binary() => any()}.

%% Example:
%% hsm_configuration_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type hsm_configuration_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% cluster_parameter_status() :: #{
%%   <<"ParameterApplyErrorDescription">> => string(),
%%   <<"ParameterApplyStatus">> => string(),
%%   <<"ParameterName">> => string()
%% }
-type cluster_parameter_status() :: #{binary() => any()}.

%% Example:
%% number_of_nodes_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type number_of_nodes_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% vpc_endpoint() :: #{
%%   <<"NetworkInterfaces">> => list(network_interface()),
%%   <<"VpcEndpointId">> => string(),
%%   <<"VpcId">> => string()
%% }
-type vpc_endpoint() :: #{binary() => any()}.

%% Example:
%% cluster_parameter_group_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_parameter_group_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% invalid_s3_key_prefix_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_s3_key_prefix_fault() :: #{binary() => any()}.

%% Example:
%% create_hsm_client_certificate_result() :: #{
%%   <<"HsmClientCertificate">> => hsm_client_certificate()
%% }
-type create_hsm_client_certificate_result() :: #{binary() => any()}.

%% Example:
%% deregister_namespace_input_message() :: #{
%%   <<"ConsumerIdentifiers">> := list(string()),
%%   <<"NamespaceIdentifier">> := list()
%% }
-type deregister_namespace_input_message() :: #{binary() => any()}.

%% Example:
%% reserved_node_offerings_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"ReservedNodeOfferings">> => list(reserved_node_offering())
%% }
-type reserved_node_offerings_message() :: #{binary() => any()}.

%% Example:
%% subscription_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type subscription_not_found_fault() :: #{binary() => any()}.

%% Example:
%% redshift_idc_application_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type redshift_idc_application_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% describe_data_shares_message() :: #{
%%   <<"DataShareArn">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_data_shares_message() :: #{binary() => any()}.

%% Example:
%% resize_cluster_result() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type resize_cluster_result() :: #{binary() => any()}.

%% Example:
%% table_limit_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type table_limit_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% describe_cluster_parameters_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ParameterGroupName">> := string(),
%%   <<"Source">> => string()
%% }
-type describe_cluster_parameters_message() :: #{binary() => any()}.

%% Example:
%% get_reserved_node_exchange_configuration_options_input_message() :: #{
%%   <<"ActionType">> := list(any()),
%%   <<"ClusterIdentifier">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"SnapshotIdentifier">> => string()
%% }
-type get_reserved_node_exchange_configuration_options_input_message() :: #{binary() => any()}.

%% Example:
%% elastic_ip_status() :: #{
%%   <<"ElasticIp">> => string(),
%%   <<"Status">> => string()
%% }
-type elastic_ip_status() :: #{binary() => any()}.

%% Example:
%% reboot_cluster_result() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type reboot_cluster_result() :: #{binary() => any()}.

%% Example:
%% describe_redshift_idc_applications_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"RedshiftIdcApplicationArn">> => string()
%% }
-type describe_redshift_idc_applications_message() :: #{binary() => any()}.

%% Example:
%% usage_limit_list() :: #{
%%   <<"Marker">> => string(),
%%   <<"UsageLimits">> => list(usage_limit())
%% }
-type usage_limit_list() :: #{binary() => any()}.

%% Example:
%% delete_hsm_client_certificate_message() :: #{
%%   <<"HsmClientCertificateIdentifier">> := string()
%% }
-type delete_hsm_client_certificate_message() :: #{binary() => any()}.

%% Example:
%% cluster_parameter_group_details() :: #{
%%   <<"Marker">> => string(),
%%   <<"Parameters">> => list(parameter())
%% }
-type cluster_parameter_group_details() :: #{binary() => any()}.

%% Example:
%% logging_status() :: #{
%%   <<"BucketName">> => string(),
%%   <<"LastFailureMessage">> => string(),
%%   <<"LastFailureTime">> => non_neg_integer(),
%%   <<"LastSuccessfulDeliveryTime">> => non_neg_integer(),
%%   <<"LogDestinationType">> => list(any()),
%%   <<"LogExports">> => list(string()),
%%   <<"LoggingEnabled">> => boolean(),
%%   <<"S3KeyPrefix">> => string()
%% }
-type logging_status() :: #{binary() => any()}.

%% Example:
%% account_attribute_list() :: #{
%%   <<"AccountAttributes">> => list(account_attribute())
%% }
-type account_attribute_list() :: #{binary() => any()}.

%% Example:
%% delete_cluster_subnet_group_message() :: #{
%%   <<"ClusterSubnetGroupName">> := string()
%% }
-type delete_cluster_subnet_group_message() :: #{binary() => any()}.

%% Example:
%% cluster_versions_message() :: #{
%%   <<"ClusterVersions">> => list(cluster_version()),
%%   <<"Marker">> => string()
%% }
-type cluster_versions_message() :: #{binary() => any()}.

%% Example:
%% integration_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type integration_not_found_fault() :: #{binary() => any()}.

%% Example:
%% invalid_cluster_snapshot_schedule_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_cluster_snapshot_schedule_state_fault() :: #{binary() => any()}.

%% Example:
%% cluster_subnet_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_subnet_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% snapshot_copy_disabled_fault() :: #{
%%   <<"message">> => string()
%% }
-type snapshot_copy_disabled_fault() :: #{binary() => any()}.

%% Example:
%% custom_cname_association_fault() :: #{
%%   <<"message">> => string()
%% }
-type custom_cname_association_fault() :: #{binary() => any()}.

%% Example:
%% endpoint() :: #{
%%   <<"Address">> => string(),
%%   <<"Port">> => integer(),
%%   <<"VpcEndpoints">> => list(vpc_endpoint())
%% }
-type endpoint() :: #{binary() => any()}.

%% Example:
%% modify_integration_message() :: #{
%%   <<"Description">> => string(),
%%   <<"IntegrationArn">> := string(),
%%   <<"IntegrationName">> => string()
%% }
-type modify_integration_message() :: #{binary() => any()}.

%% Example:
%% events_message() :: #{
%%   <<"Events">> => list(event()),
%%   <<"Marker">> => string()
%% }
-type events_message() :: #{binary() => any()}.

%% Example:
%% tagged_resource_list_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"TaggedResources">> => list(tagged_resource())
%% }
-type tagged_resource_list_message() :: #{binary() => any()}.

%% Example:
%% cluster_subnet_group_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_subnet_group_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% snapshot_error_message() :: #{
%%   <<"FailureCode">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"SnapshotClusterIdentifier">> => string(),
%%   <<"SnapshotIdentifier">> => string()
%% }
-type snapshot_error_message() :: #{binary() => any()}.

%% Example:
%% cluster_iam_role() :: #{
%%   <<"ApplyStatus">> => string(),
%%   <<"IamRoleArn">> => string()
%% }
-type cluster_iam_role() :: #{binary() => any()}.

%% Example:
%% delete_event_subscription_message() :: #{
%%   <<"SubscriptionName">> := string()
%% }
-type delete_event_subscription_message() :: #{binary() => any()}.

%% Example:
%% create_cluster_security_group_result() :: #{
%%   <<"ClusterSecurityGroup">> => cluster_security_group()
%% }
-type create_cluster_security_group_result() :: #{binary() => any()}.

%% Example:
%% scheduled_action_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type scheduled_action_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% enable_snapshot_copy_message() :: #{
%%   <<"ClusterIdentifier">> := string(),
%%   <<"DestinationRegion">> := string(),
%%   <<"ManualSnapshotRetentionPeriod">> => integer(),
%%   <<"RetentionPeriod">> => integer(),
%%   <<"SnapshotCopyGrantName">> => string()
%% }
-type enable_snapshot_copy_message() :: #{binary() => any()}.

%% Example:
%% resource_policy() :: #{
%%   <<"Policy">> => string(),
%%   <<"ResourceArn">> => string()
%% }
-type resource_policy() :: #{binary() => any()}.

%% Example:
%% describe_cluster_tracks_message() :: #{
%%   <<"MaintenanceTrackName">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_cluster_tracks_message() :: #{binary() => any()}.

%% Example:
%% resize_info() :: #{
%%   <<"AllowCancelResize">> => boolean(),
%%   <<"ResizeType">> => string()
%% }
-type resize_info() :: #{binary() => any()}.

%% Example:
%% reserved_node_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type reserved_node_not_found_fault() :: #{binary() => any()}.

%% Example:
%% snapshot_copy_grant_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type snapshot_copy_grant_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% custom_domain_association_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type custom_domain_association_not_found_fault() :: #{binary() => any()}.

%% Example:
%% subscription_category_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type subscription_category_not_found_fault() :: #{binary() => any()}.

%% Example:
%% create_redshift_idc_application_message() :: #{
%%   <<"AuthorizedTokenIssuerList">> => list(authorized_token_issuer()),
%%   <<"IamRoleArn">> := string(),
%%   <<"IdcDisplayName">> := string(),
%%   <<"IdcInstanceArn">> := string(),
%%   <<"IdentityNamespace">> => string(),
%%   <<"RedshiftIdcApplicationName">> := string(),
%%   <<"ServiceIntegrations">> => list(list()),
%%   <<"SsoTagKeys">> => list(string()),
%%   <<"Tags">> => list(tag())
%% }
-type create_redshift_idc_application_message() :: #{binary() => any()}.

%% Example:
%% s_n_s_invalid_topic_fault() :: #{
%%   <<"message">> => string()
%% }
-type s_n_s_invalid_topic_fault() :: #{binary() => any()}.

%% Example:
%% create_integration_message() :: #{
%%   <<"AdditionalEncryptionContext">> => map(),
%%   <<"Description">> => string(),
%%   <<"IntegrationName">> := string(),
%%   <<"KMSKeyId">> => string(),
%%   <<"SourceArn">> := string(),
%%   <<"TagList">> => list(tag()),
%%   <<"TargetArn">> := string()
%% }
-type create_integration_message() :: #{binary() => any()}.

%% Example:
%% update_partner_status_input_message() :: #{
%%   <<"AccountId">> := string(),
%%   <<"ClusterIdentifier">> := string(),
%%   <<"DatabaseName">> := string(),
%%   <<"PartnerName">> := string(),
%%   <<"Status">> := list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type update_partner_status_input_message() :: #{binary() => any()}.

%% Example:
%% describe_reserved_node_offerings_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ReservedNodeOfferingId">> => string()
%% }
-type describe_reserved_node_offerings_message() :: #{binary() => any()}.

%% Example:
%% event() :: #{
%%   <<"Date">> => non_neg_integer(),
%%   <<"EventCategories">> => list(string()),
%%   <<"EventId">> => string(),
%%   <<"Message">> => string(),
%%   <<"Severity">> => string(),
%%   <<"SourceIdentifier">> => string(),
%%   <<"SourceType">> => list(any())
%% }
-type event() :: #{binary() => any()}.

%% Example:
%% create_event_subscription_result() :: #{
%%   <<"EventSubscription">> => event_subscription()
%% }
-type create_event_subscription_result() :: #{binary() => any()}.

%% Example:
%% clusters_message() :: #{
%%   <<"Clusters">> => list(cluster()),
%%   <<"Marker">> => string()
%% }
-type clusters_message() :: #{binary() => any()}.

%% Example:
%% enable_snapshot_copy_result() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type enable_snapshot_copy_result() :: #{binary() => any()}.

%% Example:
%% deauthorize_data_share_message() :: #{
%%   <<"ConsumerIdentifier">> := string(),
%%   <<"DataShareArn">> := string()
%% }
-type deauthorize_data_share_message() :: #{binary() => any()}.

%% Example:
%% data_share_association() :: #{
%%   <<"ConsumerAcceptedWrites">> => boolean(),
%%   <<"ConsumerIdentifier">> => string(),
%%   <<"ConsumerRegion">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"ProducerAllowedWrites">> => boolean(),
%%   <<"Status">> => list(any()),
%%   <<"StatusChangeDate">> => non_neg_integer()
%% }
-type data_share_association() :: #{binary() => any()}.

%% Example:
%% revoke_snapshot_access_result() :: #{
%%   <<"Snapshot">> => snapshot()
%% }
-type revoke_snapshot_access_result() :: #{binary() => any()}.

%% Example:
%% snapshot() :: #{
%%   <<"ManualSnapshotRemainingDays">> => integer(),
%%   <<"Encrypted">> => boolean(),
%%   <<"Port">> => integer(),
%%   <<"EngineFullVersion">> => string(),
%%   <<"SourceRegion">> => string(),
%%   <<"SnapshotRetentionStartTime">> => non_neg_integer(),
%%   <<"ClusterCreateTime">> => non_neg_integer(),
%%   <<"ClusterVersion">> => string(),
%%   <<"EstimatedSecondsToCompletion">> => float(),
%%   <<"MasterPasswordSecretArn">> => string(),
%%   <<"RestorableNodeTypes">> => list(string()),
%%   <<"OwnerAccount">> => string(),
%%   <<"SnapshotType">> => string(),
%%   <<"TotalBackupSizeInMegaBytes">> => float(),
%%   <<"ActualIncrementalBackupSizeInMegaBytes">> => float(),
%%   <<"AccountsWithRestoreAccess">> => list(account_with_restore_access()),
%%   <<"MasterPasswordSecretKmsKeyId">> => string(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"MasterUsername">> => string(),
%%   <<"NodeType">> => string(),
%%   <<"DBName">> => string(),
%%   <<"BackupProgressInMegaBytes">> => float(),
%%   <<"EnhancedVpcRouting">> => boolean(),
%%   <<"SnapshotCreateTime">> => non_neg_integer(),
%%   <<"SnapshotArn">> => string(),
%%   <<"MaintenanceTrackName">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"VpcId">> => string(),
%%   <<"SnapshotIdentifier">> => string(),
%%   <<"NumberOfNodes">> => integer(),
%%   <<"KmsKeyId">> => string(),
%%   <<"ManualSnapshotRetentionPeriod">> => integer(),
%%   <<"EncryptedWithHSM">> => boolean(),
%%   <<"CurrentBackupRateInMegaBytesPerSecond">> => float(),
%%   <<"Status">> => string(),
%%   <<"ClusterIdentifier">> => string(),
%%   <<"ElapsedTimeInSeconds">> => float()
%% }
-type snapshot() :: #{binary() => any()}.

%% Example:
%% restore_status() :: #{
%%   <<"CurrentRestoreRateInMegaBytesPerSecond">> => float(),
%%   <<"ElapsedTimeInSeconds">> => float(),
%%   <<"EstimatedTimeToCompletionInSeconds">> => float(),
%%   <<"ProgressInMegaBytes">> => float(),
%%   <<"SnapshotSizeInMegaBytes">> => float(),
%%   <<"Status">> => string()
%% }
-type restore_status() :: #{binary() => any()}.

%% Example:
%% unauthorized_partner_integration_fault() :: #{
%%   <<"message">> => string()
%% }
-type unauthorized_partner_integration_fault() :: #{binary() => any()}.

%% Example:
%% describe_orderable_cluster_options_message() :: #{
%%   <<"ClusterVersion">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"NodeType">> => string()
%% }
-type describe_orderable_cluster_options_message() :: #{binary() => any()}.

%% Example:
%% snapshot_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"Snapshots">> => list(snapshot())
%% }
-type snapshot_message() :: #{binary() => any()}.

%% Example:
%% scheduled_action_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type scheduled_action_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% modify_cluster_subnet_group_result() :: #{
%%   <<"ClusterSubnetGroup">> => cluster_subnet_group()
%% }
-type modify_cluster_subnet_group_result() :: #{binary() => any()}.

%% Example:
%% s_n_s_topic_arn_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type s_n_s_topic_arn_not_found_fault() :: #{binary() => any()}.

%% Example:
%% resume_cluster_result() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type resume_cluster_result() :: #{binary() => any()}.

%% Example:
%% cluster_parameter_group_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_parameter_group_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% invalid_subscription_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_subscription_state_fault() :: #{binary() => any()}.

%% Example:
%% create_hsm_configuration_result() :: #{
%%   <<"HsmConfiguration">> => hsm_configuration()
%% }
-type create_hsm_configuration_result() :: #{binary() => any()}.

%% Example:
%% describe_logging_status_message() :: #{
%%   <<"ClusterIdentifier">> := string()
%% }
-type describe_logging_status_message() :: #{binary() => any()}.

%% Example:
%% hsm_client_certificate_message() :: #{
%%   <<"HsmClientCertificates">> => list(hsm_client_certificate()),
%%   <<"Marker">> => string()
%% }
-type hsm_client_certificate_message() :: #{binary() => any()}.

%% Example:
%% customer_storage_message() :: #{
%%   <<"TotalBackupSizeInMegaBytes">> => float(),
%%   <<"TotalProvisionedStorageInMegaBytes">> => float()
%% }
-type customer_storage_message() :: #{binary() => any()}.

%% Example:
%% ipv6_cidr_block_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type ipv6_cidr_block_not_found_fault() :: #{binary() => any()}.

%% Example:
%% cluster_db_revision() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"CurrentDatabaseRevision">> => string(),
%%   <<"DatabaseRevisionReleaseDate">> => non_neg_integer(),
%%   <<"RevisionTargets">> => list(revision_target())
%% }
-type cluster_db_revision() :: #{binary() => any()}.

%% Example:
%% disable_logging_message() :: #{
%%   <<"ClusterIdentifier">> := string()
%% }
-type disable_logging_message() :: #{binary() => any()}.

%% Example:
%% describe_custom_domain_associations_message() :: #{
%%   <<"CustomDomainCertificateArn">> => string(),
%%   <<"CustomDomainName">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_custom_domain_associations_message() :: #{binary() => any()}.

%% Example:
%% reference_link() :: #{
%%   <<"Link">> => string(),
%%   <<"Text">> => string()
%% }
-type reference_link() :: #{binary() => any()}.

%% Example:
%% modify_cluster_db_revision_result() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type modify_cluster_db_revision_result() :: #{binary() => any()}.

%% Example:
%% batch_modify_cluster_snapshots_message() :: #{
%%   <<"Force">> => boolean(),
%%   <<"ManualSnapshotRetentionPeriod">> => integer(),
%%   <<"SnapshotIdentifierList">> := list(string())
%% }
-type batch_modify_cluster_snapshots_message() :: #{binary() => any()}.

%% Example:
%% modify_custom_domain_association_message() :: #{
%%   <<"ClusterIdentifier">> := string(),
%%   <<"CustomDomainCertificateArn">> := string(),
%%   <<"CustomDomainName">> := string()
%% }
-type modify_custom_domain_association_message() :: #{binary() => any()}.

%% Example:
%% describe_endpoint_access_message() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"EndpointName">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ResourceOwner">> => string(),
%%   <<"VpcId">> => string()
%% }
-type describe_endpoint_access_message() :: #{binary() => any()}.

%% Example:
%% event_categories_message() :: #{
%%   <<"EventCategoriesMapList">> => list(event_categories_map())
%% }
-type event_categories_message() :: #{binary() => any()}.

%% Example:
%% supported_operation() :: #{
%%   <<"OperationName">> => string()
%% }
-type supported_operation() :: #{binary() => any()}.

%% Example:
%% revoke_cluster_security_group_ingress_message() :: #{
%%   <<"CIDRIP">> => string(),
%%   <<"ClusterSecurityGroupName">> := string(),
%%   <<"EC2SecurityGroupName">> => string(),
%%   <<"EC2SecurityGroupOwnerId">> => string()
%% }
-type revoke_cluster_security_group_ingress_message() :: #{binary() => any()}.

%% Example:
%% restore_from_cluster_snapshot_result() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type restore_from_cluster_snapshot_result() :: #{binary() => any()}.

%% Example:
%% describe_default_cluster_parameters_result() :: #{
%%   <<"DefaultClusterParameters">> => default_cluster_parameters()
%% }
-type describe_default_cluster_parameters_result() :: #{binary() => any()}.

%% Example:
%% tagged_resource() :: #{
%%   <<"ResourceName">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"Tag">> => tag()
%% }
-type tagged_resource() :: #{binary() => any()}.

%% Example:
%% failover_primary_compute_input_message() :: #{
%%   <<"ClusterIdentifier">> := string()
%% }
-type failover_primary_compute_input_message() :: #{binary() => any()}.

%% Example:
%% describe_events_message() :: #{
%%   <<"Duration">> => integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"SourceIdentifier">> => string(),
%%   <<"SourceType">> => list(any()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type describe_events_message() :: #{binary() => any()}.

%% Example:
%% account_with_restore_access() :: #{
%%   <<"AccountAlias">> => string(),
%%   <<"AccountId">> => string()
%% }
-type account_with_restore_access() :: #{binary() => any()}.

%% Example:
%% invalid_cluster_security_group_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_cluster_security_group_state_fault() :: #{binary() => any()}.

%% Example:
%% describe_cluster_snapshots_message() :: #{
%%   <<"ClusterExists">> => boolean(),
%%   <<"ClusterIdentifier">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"OwnerAccount">> => string(),
%%   <<"SnapshotArn">> => string(),
%%   <<"SnapshotIdentifier">> => string(),
%%   <<"SnapshotType">> => string(),
%%   <<"SortingEntities">> => list(snapshot_sorting_entity()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TagKeys">> => list(string()),
%%   <<"TagValues">> => list(string())
%% }
-type describe_cluster_snapshots_message() :: #{binary() => any()}.

%% Example:
%% endpoint_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type endpoint_not_found_fault() :: #{binary() => any()}.

%% Example:
%% cluster_subnet_group_message() :: #{
%%   <<"ClusterSubnetGroups">> => list(cluster_subnet_group()),
%%   <<"Marker">> => string()
%% }
-type cluster_subnet_group_message() :: #{binary() => any()}.

%% Example:
%% create_cluster_message() :: #{
%%   <<"Encrypted">> => boolean(),
%%   <<"Port">> => integer(),
%%   <<"IamRoles">> => list(string()),
%%   <<"RedshiftIdcApplicationArn">> => string(),
%%   <<"ElasticIp">> => string(),
%%   <<"ClusterSubnetGroupName">> => string(),
%%   <<"ClusterVersion">> => string(),
%%   <<"AutomatedSnapshotRetentionPeriod">> => integer(),
%%   <<"SnapshotScheduleIdentifier">> => string(),
%%   <<"ManageMasterPassword">> => boolean(),
%%   <<"HsmClientCertificateIdentifier">> => string(),
%%   <<"AquaConfigurationStatus">> => list(any()),
%%   <<"IpAddressType">> => string(),
%%   <<"AvailabilityZoneRelocation">> => boolean(),
%%   <<"MasterPasswordSecretKmsKeyId">> => string(),
%%   <<"AdditionalInfo">> => string(),
%%   <<"MasterUsername">> := string(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"ClusterSecurityGroups">> => list(string()),
%%   <<"DBName">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"EnhancedVpcRouting">> => boolean(),
%%   <<"NodeType">> := string(),
%%   <<"VpcSecurityGroupIds">> => list(string()),
%%   <<"ClusterParameterGroupName">> => string(),
%%   <<"ClusterType">> => string(),
%%   <<"MaintenanceTrackName">> => string(),
%%   <<"HsmConfigurationIdentifier">> => string(),
%%   <<"DefaultIamRoleArn">> => string(),
%%   <<"MasterUserPassword">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"NumberOfNodes">> => integer(),
%%   <<"ClusterIdentifier">> := string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"ManualSnapshotRetentionPeriod">> => integer(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"LoadSampleData">> => string(),
%%   <<"AllowVersionUpgrade">> => boolean(),
%%   <<"MultiAZ">> => boolean()
%% }
-type create_cluster_message() :: #{binary() => any()}.

%% Example:
%% delete_authentication_profile_result() :: #{
%%   <<"AuthenticationProfileName">> => string()
%% }
-type delete_authentication_profile_result() :: #{binary() => any()}.

%% Example:
%% cluster_snapshot_copy_status() :: #{
%%   <<"DestinationRegion">> => string(),
%%   <<"ManualSnapshotRetentionPeriod">> => integer(),
%%   <<"RetentionPeriod">> => float(),
%%   <<"SnapshotCopyGrantName">> => string()
%% }
-type cluster_snapshot_copy_status() :: #{binary() => any()}.

%% Example:
%% usage_limit() :: #{
%%   <<"Amount">> => float(),
%%   <<"BreachAction">> => list(any()),
%%   <<"ClusterIdentifier">> => string(),
%%   <<"FeatureType">> => list(any()),
%%   <<"LimitType">> => list(any()),
%%   <<"Period">> => list(any()),
%%   <<"Tags">> => list(tag()),
%%   <<"UsageLimitId">> => string()
%% }
-type usage_limit() :: #{binary() => any()}.

%% Example:
%% snapshot_schedule_update_in_progress_fault() :: #{
%%   <<"message">> => string()
%% }
-type snapshot_schedule_update_in_progress_fault() :: #{binary() => any()}.

%% Example:
%% scheduled_action_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type scheduled_action_not_found_fault() :: #{binary() => any()}.

%% Example:
%% invalid_cluster_subnet_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_cluster_subnet_state_fault() :: #{binary() => any()}.

%% Example:
%% enable_logging_message() :: #{
%%   <<"BucketName">> => string(),
%%   <<"ClusterIdentifier">> := string(),
%%   <<"LogDestinationType">> => list(any()),
%%   <<"LogExports">> => list(string()),
%%   <<"S3KeyPrefix">> => string()
%% }
-type enable_logging_message() :: #{binary() => any()}.

%% Example:
%% reserved_node_exchange_status() :: #{
%%   <<"RequestTime">> => non_neg_integer(),
%%   <<"ReservedNodeExchangeRequestId">> => string(),
%%   <<"SourceReservedNodeCount">> => integer(),
%%   <<"SourceReservedNodeId">> => string(),
%%   <<"SourceReservedNodeType">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TargetReservedNodeCount">> => integer(),
%%   <<"TargetReservedNodeOfferingId">> => string(),
%%   <<"TargetReservedNodeType">> => string()
%% }
-type reserved_node_exchange_status() :: #{binary() => any()}.

%% Example:
%% describe_redshift_idc_applications_result() :: #{
%%   <<"Marker">> => string(),
%%   <<"RedshiftIdcApplications">> => list(redshift_idc_application())
%% }
-type describe_redshift_idc_applications_result() :: #{binary() => any()}.

%% Example:
%% modify_event_subscription_result() :: #{
%%   <<"EventSubscription">> => event_subscription()
%% }
-type modify_event_subscription_result() :: #{binary() => any()}.

%% Example:
%% batch_delete_request_size_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type batch_delete_request_size_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% create_endpoint_access_message() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"EndpointName">> := string(),
%%   <<"ResourceOwner">> => string(),
%%   <<"SubnetGroupName">> := string(),
%%   <<"VpcSecurityGroupIds">> => list(string())
%% }
-type create_endpoint_access_message() :: #{binary() => any()}.

%% Example:
%% describe_data_shares_for_consumer_message() :: #{
%%   <<"ConsumerArn">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"Status">> => list(any())
%% }
-type describe_data_shares_for_consumer_message() :: #{binary() => any()}.

%% Example:
%% invalid_endpoint_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_endpoint_state_fault() :: #{binary() => any()}.

%% Example:
%% describe_snapshot_schedules_output_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"SnapshotSchedules">> => list(snapshot_schedule())
%% }
-type describe_snapshot_schedules_output_message() :: #{binary() => any()}.

%% Example:
%% reserved_node_exchange_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type reserved_node_exchange_not_found_fault() :: #{binary() => any()}.

%% Example:
%% update_target() :: #{
%%   <<"DatabaseVersion">> => string(),
%%   <<"MaintenanceTrackName">> => string(),
%%   <<"SupportedOperations">> => list(supported_operation())
%% }
-type update_target() :: #{binary() => any()}.

%% Example:
%% create_usage_limit_message() :: #{
%%   <<"Amount">> := float(),
%%   <<"BreachAction">> => list(any()),
%%   <<"ClusterIdentifier">> := string(),
%%   <<"FeatureType">> := list(any()),
%%   <<"LimitType">> := list(any()),
%%   <<"Period">> => list(any()),
%%   <<"Tags">> => list(tag())
%% }
-type create_usage_limit_message() :: #{binary() => any()}.

%% Example:
%% rotate_encryption_key_result() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type rotate_encryption_key_result() :: #{binary() => any()}.

%% Example:
%% modify_authentication_profile_message() :: #{
%%   <<"AuthenticationProfileContent">> := string(),
%%   <<"AuthenticationProfileName">> := string()
%% }
-type modify_authentication_profile_message() :: #{binary() => any()}.

%% Example:
%% describe_clusters_message() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"TagKeys">> => list(string()),
%%   <<"TagValues">> => list(string())
%% }
-type describe_clusters_message() :: #{binary() => any()}.

%% Example:
%% provisioned_identifier() :: #{
%%   <<"ClusterIdentifier">> => string()
%% }
-type provisioned_identifier() :: #{binary() => any()}.

%% Example:
%% snapshot_schedule_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type snapshot_schedule_not_found_fault() :: #{binary() => any()}.

%% Example:
%% resize_progress_message() :: #{
%%   <<"AvgResizeRateInMegaBytesPerSecond">> => float(),
%%   <<"DataTransferProgressPercent">> => float(),
%%   <<"ElapsedTimeInSeconds">> => float(),
%%   <<"EstimatedTimeToCompletionInSeconds">> => float(),
%%   <<"ImportTablesCompleted">> => list(string()),
%%   <<"ImportTablesInProgress">> => list(string()),
%%   <<"ImportTablesNotStarted">> => list(string()),
%%   <<"Message">> => string(),
%%   <<"ProgressInMegaBytes">> => float(),
%%   <<"ResizeType">> => string(),
%%   <<"Status">> => string(),
%%   <<"TargetClusterType">> => string(),
%%   <<"TargetEncryptionType">> => string(),
%%   <<"TargetNodeType">> => string(),
%%   <<"TargetNumberOfNodes">> => integer(),
%%   <<"TotalResizeDataInMegaBytes">> => float()
%% }
-type resize_progress_message() :: #{binary() => any()}.

%% Example:
%% create_hsm_client_certificate_message() :: #{
%%   <<"HsmClientCertificateIdentifier">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_hsm_client_certificate_message() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_message() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type delete_resource_policy_message() :: #{binary() => any()}.

%% Example:
%% account_attribute() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"AttributeValues">> => list(attribute_value_target())
%% }
-type account_attribute() :: #{binary() => any()}.

%% Example:
%% access_to_snapshot_denied_fault() :: #{
%%   <<"message">> => string()
%% }
-type access_to_snapshot_denied_fault() :: #{binary() => any()}.

%% Example:
%% describe_reserved_node_exchange_status_input_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"ReservedNodeExchangeRequestId">> => string(),
%%   <<"ReservedNodeId">> => string()
%% }
-type describe_reserved_node_exchange_status_input_message() :: #{binary() => any()}.

%% Example:
%% supported_platform() :: #{
%%   <<"Name">> => string()
%% }
-type supported_platform() :: #{binary() => any()}.

%% Example:
%% invalid_cluster_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_cluster_state_fault() :: #{binary() => any()}.

%% Example:
%% unknown_snapshot_copy_region_fault() :: #{
%%   <<"message">> => string()
%% }
-type unknown_snapshot_copy_region_fault() :: #{binary() => any()}.

%% Example:
%% partner_integration_info() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DatabaseName">> => string(),
%%   <<"PartnerName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type partner_integration_info() :: #{binary() => any()}.

%% Example:
%% integrations_message() :: #{
%%   <<"Integrations">> => list(integration()),
%%   <<"Marker">> => string()
%% }
-type integrations_message() :: #{binary() => any()}.

%% Example:
%% copy_to_region_disabled_fault() :: #{
%%   <<"message">> => string()
%% }
-type copy_to_region_disabled_fault() :: #{binary() => any()}.

%% Example:
%% cluster_security_group_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_security_group_not_found_fault() :: #{binary() => any()}.

%% Example:
%% create_hsm_configuration_message() :: #{
%%   <<"Description">> := string(),
%%   <<"HsmConfigurationIdentifier">> := string(),
%%   <<"HsmIpAddress">> := string(),
%%   <<"HsmPartitionName">> := string(),
%%   <<"HsmPartitionPassword">> := string(),
%%   <<"HsmServerPublicCertificate">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_hsm_configuration_message() :: #{binary() => any()}.

%% Example:
%% cluster_snapshot_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_snapshot_not_found_fault() :: #{binary() => any()}.

%% Example:
%% rotate_encryption_key_message() :: #{
%%   <<"ClusterIdentifier">> := string()
%% }
-type rotate_encryption_key_message() :: #{binary() => any()}.

%% Example:
%% get_cluster_credentials_message() :: #{
%%   <<"AutoCreate">> => boolean(),
%%   <<"ClusterIdentifier">> => string(),
%%   <<"CustomDomainName">> => string(),
%%   <<"DbGroups">> => list(string()),
%%   <<"DbName">> => string(),
%%   <<"DbUser">> := string(),
%%   <<"DurationSeconds">> => integer()
%% }
-type get_cluster_credentials_message() :: #{binary() => any()}.

%% Example:
%% describe_hsm_client_certificates_message() :: #{
%%   <<"HsmClientCertificateIdentifier">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"TagKeys">> => list(string()),
%%   <<"TagValues">> => list(string())
%% }
-type describe_hsm_client_certificates_message() :: #{binary() => any()}.

%% Example:
%% delete_cluster_security_group_message() :: #{
%%   <<"ClusterSecurityGroupName">> := string()
%% }
-type delete_cluster_security_group_message() :: #{binary() => any()}.

%% Example:
%% describe_integrations_message() :: #{
%%   <<"Filters">> => list(describe_integrations_filter()),
%%   <<"IntegrationArn">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_integrations_message() :: #{binary() => any()}.

%% Example:
%% unsupported_option_fault() :: #{
%%   <<"message">> => string()
%% }
-type unsupported_option_fault() :: #{binary() => any()}.

%% Example:
%% usage_limit_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type usage_limit_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% cluster_security_group_message() :: #{
%%   <<"ClusterSecurityGroups">> => list(cluster_security_group()),
%%   <<"Marker">> => string()
%% }
-type cluster_security_group_message() :: #{binary() => any()}.

%% Example:
%% access_to_cluster_denied_fault() :: #{
%%   <<"message">> => string()
%% }
-type access_to_cluster_denied_fault() :: #{binary() => any()}.

%% Example:
%% partner_integration_output_message() :: #{
%%   <<"DatabaseName">> => string(),
%%   <<"PartnerName">> => string()
%% }
-type partner_integration_output_message() :: #{binary() => any()}.

%% Example:
%% number_of_nodes_per_cluster_limit_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type number_of_nodes_per_cluster_limit_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% endpoint_authorization_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type endpoint_authorization_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% invalid_scheduled_action_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_scheduled_action_fault() :: #{binary() => any()}.

%% Example:
%% reserved_node_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type reserved_node_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% describe_data_shares_for_producer_result() :: #{
%%   <<"DataShares">> => list(data_share()),
%%   <<"Marker">> => string()
%% }
-type describe_data_shares_for_producer_result() :: #{binary() => any()}.

%% Example:
%% endpoint_access() :: #{
%%   <<"Address">> => string(),
%%   <<"ClusterIdentifier">> => string(),
%%   <<"EndpointCreateTime">> => non_neg_integer(),
%%   <<"EndpointName">> => string(),
%%   <<"EndpointStatus">> => string(),
%%   <<"Port">> => integer(),
%%   <<"ResourceOwner">> => string(),
%%   <<"SubnetGroupName">> => string(),
%%   <<"VpcEndpoint">> => vpc_endpoint(),
%%   <<"VpcSecurityGroups">> => list(vpc_security_group_membership())
%% }
-type endpoint_access() :: #{binary() => any()}.

%% Example:
%% conflict_policy_update_fault() :: #{
%%   <<"message">> => string()
%% }
-type conflict_policy_update_fault() :: #{binary() => any()}.

%% Example:
%% delete_cluster_message() :: #{
%%   <<"ClusterIdentifier">> := string(),
%%   <<"FinalClusterSnapshotIdentifier">> => string(),
%%   <<"FinalClusterSnapshotRetentionPeriod">> => integer(),
%%   <<"SkipFinalClusterSnapshot">> => boolean()
%% }
-type delete_cluster_message() :: #{binary() => any()}.

%% Example:
%% restore_table_from_cluster_snapshot_result() :: #{
%%   <<"TableRestoreStatus">> => table_restore_status()
%% }
-type restore_table_from_cluster_snapshot_result() :: #{binary() => any()}.

%% Example:
%% custom_domain_associations_message() :: #{
%%   <<"Associations">> => list(association()),
%%   <<"Marker">> => string()
%% }
-type custom_domain_associations_message() :: #{binary() => any()}.

%% Example:
%% endpoint_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type endpoint_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% authentication_profile_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type authentication_profile_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% modify_cluster_message() :: #{
%%   <<"AllowVersionUpgrade">> => boolean(),
%%   <<"AutomatedSnapshotRetentionPeriod">> => integer(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"AvailabilityZoneRelocation">> => boolean(),
%%   <<"ClusterIdentifier">> := string(),
%%   <<"ClusterParameterGroupName">> => string(),
%%   <<"ClusterSecurityGroups">> => list(string()),
%%   <<"ClusterType">> => string(),
%%   <<"ClusterVersion">> => string(),
%%   <<"ElasticIp">> => string(),
%%   <<"Encrypted">> => boolean(),
%%   <<"EnhancedVpcRouting">> => boolean(),
%%   <<"HsmClientCertificateIdentifier">> => string(),
%%   <<"HsmConfigurationIdentifier">> => string(),
%%   <<"IpAddressType">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"MaintenanceTrackName">> => string(),
%%   <<"ManageMasterPassword">> => boolean(),
%%   <<"ManualSnapshotRetentionPeriod">> => integer(),
%%   <<"MasterPasswordSecretKmsKeyId">> => string(),
%%   <<"MasterUserPassword">> => string(),
%%   <<"MultiAZ">> => boolean(),
%%   <<"NewClusterIdentifier">> => string(),
%%   <<"NodeType">> => string(),
%%   <<"NumberOfNodes">> => integer(),
%%   <<"Port">> => integer(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"VpcSecurityGroupIds">> => list(string())
%% }
-type modify_cluster_message() :: #{binary() => any()}.

%% Example:
%% authorization_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type authorization_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% reserved_node_offering_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type reserved_node_offering_not_found_fault() :: #{binary() => any()}.

%% Example:
%% event_subscription_quota_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type event_subscription_quota_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% cluster_security_group() :: #{
%%   <<"ClusterSecurityGroupName">> => string(),
%%   <<"Description">> => string(),
%%   <<"EC2SecurityGroups">> => list(ec2_security_group()),
%%   <<"IPRanges">> => list(ip_range()),
%%   <<"Tags">> => list(tag())
%% }
-type cluster_security_group() :: #{binary() => any()}.

%% Example:
%% modify_cluster_snapshot_schedule_message() :: #{
%%   <<"ClusterIdentifier">> := string(),
%%   <<"DisassociateSchedule">> => boolean(),
%%   <<"ScheduleIdentifier">> => string()
%% }
-type modify_cluster_snapshot_schedule_message() :: #{binary() => any()}.

%% Example:
%% describe_event_categories_message() :: #{
%%   <<"SourceType">> => string()
%% }
-type describe_event_categories_message() :: #{binary() => any()}.

%% Example:
%% modify_redshift_idc_application_result() :: #{
%%   <<"RedshiftIdcApplication">> => redshift_idc_application()
%% }
-type modify_redshift_idc_application_result() :: #{binary() => any()}.

%% Example:
%% insufficient_cluster_capacity_fault() :: #{
%%   <<"message">> => string()
%% }
-type insufficient_cluster_capacity_fault() :: #{binary() => any()}.

%% Example:
%% invalid_schedule_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_schedule_fault() :: #{binary() => any()}.

%% Example:
%% lake_formation_query() :: #{
%%   <<"Authorization">> => list(any())
%% }
-type lake_formation_query() :: #{binary() => any()}.

%% Example:
%% delete_cluster_snapshot_result() :: #{
%%   <<"Snapshot">> => snapshot()
%% }
-type delete_cluster_snapshot_result() :: #{binary() => any()}.

%% Example:
%% invalid_table_restore_argument_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_table_restore_argument_fault() :: #{binary() => any()}.

%% Example:
%% integration_conflict_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type integration_conflict_state_fault() :: #{binary() => any()}.

%% Example:
%% cluster_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type cluster_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% table_restore_status_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"TableRestoreStatusDetails">> => list(table_restore_status())
%% }
-type table_restore_status_message() :: #{binary() => any()}.

%% Example:
%% revision_target() :: #{
%%   <<"DatabaseRevision">> => string(),
%%   <<"DatabaseRevisionReleaseDate">> => non_neg_integer(),
%%   <<"Description">> => string()
%% }
-type revision_target() :: #{binary() => any()}.

%% Example:
%% describe_partners_input_message() :: #{
%%   <<"AccountId">> := string(),
%%   <<"ClusterIdentifier">> := string(),
%%   <<"DatabaseName">> => string(),
%%   <<"PartnerName">> => string()
%% }
-type describe_partners_input_message() :: #{binary() => any()}.

%% Example:
%% batch_delete_cluster_snapshots_result() :: #{
%%   <<"Errors">> => list(snapshot_error_message()),
%%   <<"Resources">> => list(string())
%% }
-type batch_delete_cluster_snapshots_result() :: #{binary() => any()}.

%% Example:
%% describe_partners_output_message() :: #{
%%   <<"PartnerIntegrationInfoList">> => list(partner_integration_info())
%% }
-type describe_partners_output_message() :: #{binary() => any()}.

%% Example:
%% restore_from_cluster_snapshot_message() :: #{
%%   <<"Encrypted">> => boolean(),
%%   <<"SnapshotClusterIdentifier">> => string(),
%%   <<"Port">> => integer(),
%%   <<"IamRoles">> => list(string()),
%%   <<"ElasticIp">> => string(),
%%   <<"ClusterSubnetGroupName">> => string(),
%%   <<"OwnerAccount">> => string(),
%%   <<"AutomatedSnapshotRetentionPeriod">> => integer(),
%%   <<"SnapshotScheduleIdentifier">> => string(),
%%   <<"ManageMasterPassword">> => boolean(),
%%   <<"HsmClientCertificateIdentifier">> => string(),
%%   <<"AquaConfigurationStatus">> => list(any()),
%%   <<"IpAddressType">> => string(),
%%   <<"AvailabilityZoneRelocation">> => boolean(),
%%   <<"MasterPasswordSecretKmsKeyId">> => string(),
%%   <<"AdditionalInfo">> => string(),
%%   <<"TargetReservedNodeOfferingId">> => string(),
%%   <<"AvailabilityZone">> => string(),
%%   <<"ClusterSecurityGroups">> => list(string()),
%%   <<"NodeType">> => string(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"EnhancedVpcRouting">> => boolean(),
%%   <<"VpcSecurityGroupIds">> => list(string()),
%%   <<"ClusterParameterGroupName">> => string(),
%%   <<"SnapshotArn">> => string(),
%%   <<"MaintenanceTrackName">> => string(),
%%   <<"HsmConfigurationIdentifier">> => string(),
%%   <<"DefaultIamRoleArn">> => string(),
%%   <<"SnapshotIdentifier">> => string(),
%%   <<"NumberOfNodes">> => integer(),
%%   <<"ReservedNodeId">> => string(),
%%   <<"ClusterIdentifier">> := string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"ManualSnapshotRetentionPeriod">> => integer(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"AllowVersionUpgrade">> => boolean(),
%%   <<"MultiAZ">> => boolean()
%% }
-type restore_from_cluster_snapshot_message() :: #{binary() => any()}.

%% Example:
%% s_n_s_no_authorization_fault() :: #{
%%   <<"message">> => string()
%% }
-type s_n_s_no_authorization_fault() :: #{binary() => any()}.

%% Example:
%% invalid_authorization_state_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_authorization_state_fault() :: #{binary() => any()}.

%% Example:
%% default_cluster_parameters() :: #{
%%   <<"Marker">> => string(),
%%   <<"ParameterGroupFamily">> => string(),
%%   <<"Parameters">> => list(parameter())
%% }
-type default_cluster_parameters() :: #{binary() => any()}.

%% Example:
%% hsm_configuration_message() :: #{
%%   <<"HsmConfigurations">> => list(hsm_configuration()),
%%   <<"Marker">> => string()
%% }
-type hsm_configuration_message() :: #{binary() => any()}.

%% Example:
%% revoke_cluster_security_group_ingress_result() :: #{
%%   <<"ClusterSecurityGroup">> => cluster_security_group()
%% }
-type revoke_cluster_security_group_ingress_result() :: #{binary() => any()}.

%% Example:
%% cluster_parameter_group() :: #{
%%   <<"Description">> => string(),
%%   <<"ParameterGroupFamily">> => string(),
%%   <<"ParameterGroupName">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type cluster_parameter_group() :: #{binary() => any()}.

%% Example:
%% table_restore_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type table_restore_not_found_fault() :: #{binary() => any()}.

%% Example:
%% delete_snapshot_schedule_message() :: #{
%%   <<"ScheduleIdentifier">> := string()
%% }
-type delete_snapshot_schedule_message() :: #{binary() => any()}.

%% Example:
%% modify_aqua_output_message() :: #{
%%   <<"AquaConfiguration">> => aqua_configuration()
%% }
-type modify_aqua_output_message() :: #{binary() => any()}.

%% Example:
%% vpc_security_group_membership() :: #{
%%   <<"Status">> => string(),
%%   <<"VpcSecurityGroupId">> => string()
%% }
-type vpc_security_group_membership() :: #{binary() => any()}.

%% Example:
%% describe_cluster_versions_message() :: #{
%%   <<"ClusterParameterGroupFamily">> => string(),
%%   <<"ClusterVersion">> => string(),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer()
%% }
-type describe_cluster_versions_message() :: #{binary() => any()}.

%% Example:
%% aqua_configuration() :: #{
%%   <<"AquaConfigurationStatus">> => list(any()),
%%   <<"AquaStatus">> => list(any())
%% }
-type aqua_configuration() :: #{binary() => any()}.

%% Example:
%% describe_node_configuration_options_message() :: #{
%%   <<"ActionType">> := list(any()),
%%   <<"ClusterIdentifier">> => string(),
%%   <<"Filters">> => list(node_configuration_options_filter()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"OwnerAccount">> => string(),
%%   <<"SnapshotArn">> => string(),
%%   <<"SnapshotIdentifier">> => string()
%% }
-type describe_node_configuration_options_message() :: #{binary() => any()}.

%% Example:
%% create_custom_domain_association_result() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"CustomDomainCertExpiryTime">> => string(),
%%   <<"CustomDomainCertificateArn">> => string(),
%%   <<"CustomDomainName">> => string()
%% }
-type create_custom_domain_association_result() :: #{binary() => any()}.

%% Example:
%% modify_aqua_input_message() :: #{
%%   <<"AquaConfigurationStatus">> => list(any()),
%%   <<"ClusterIdentifier">> := string()
%% }
-type modify_aqua_input_message() :: #{binary() => any()}.

%% Example:
%% authorize_snapshot_access_result() :: #{
%%   <<"Snapshot">> => snapshot()
%% }
-type authorize_snapshot_access_result() :: #{binary() => any()}.

%% Example:
%% invalid_retention_period_fault() :: #{
%%   <<"message">> => string()
%% }
-type invalid_retention_period_fault() :: #{binary() => any()}.

%% Example:
%% node_configuration_options_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"NodeConfigurationOptionList">> => list(node_configuration_option())
%% }
-type node_configuration_options_message() :: #{binary() => any()}.

%% Example:
%% disassociate_data_share_consumer_message() :: #{
%%   <<"ConsumerArn">> => string(),
%%   <<"ConsumerRegion">> => string(),
%%   <<"DataShareArn">> := string(),
%%   <<"DisassociateEntireAccount">> => boolean()
%% }
-type disassociate_data_share_consumer_message() :: #{binary() => any()}.

%% Example:
%% register_namespace_output_message() :: #{
%%   <<"Status">> => list(any())
%% }
-type register_namespace_output_message() :: #{binary() => any()}.

%% Example:
%% authorized_token_issuer() :: #{
%%   <<"AuthorizedAudiencesList">> => list(string()),
%%   <<"TrustedTokenIssuerArn">> => string()
%% }
-type authorized_token_issuer() :: #{binary() => any()}.

%% Example:
%% revoke_snapshot_access_message() :: #{
%%   <<"AccountWithRestoreAccess">> := string(),
%%   <<"SnapshotArn">> => string(),
%%   <<"SnapshotClusterIdentifier">> => string(),
%%   <<"SnapshotIdentifier">> => string()
%% }
-type revoke_snapshot_access_message() :: #{binary() => any()}.

%% Example:
%% copy_cluster_snapshot_result() :: #{
%%   <<"Snapshot">> => snapshot()
%% }
-type copy_cluster_snapshot_result() :: #{binary() => any()}.

%% Example:
%% tag_limit_exceeded_fault() :: #{
%%   <<"message">> => string()
%% }
-type tag_limit_exceeded_fault() :: #{binary() => any()}.

%% Example:
%% secondary_cluster_info() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"ClusterNodes">> => list(cluster_node())
%% }
-type secondary_cluster_info() :: #{binary() => any()}.

%% Example:
%% partner_not_found_fault() :: #{
%%   <<"message">> => string()
%% }
-type partner_not_found_fault() :: #{binary() => any()}.

%% Example:
%% describe_usage_limits_message() :: #{
%%   <<"ClusterIdentifier">> => string(),
%%   <<"FeatureType">> => list(any()),
%%   <<"Marker">> => string(),
%%   <<"MaxRecords">> => integer(),
%%   <<"TagKeys">> => list(string()),
%%   <<"TagValues">> => list(string()),
%%   <<"UsageLimitId">> => string()
%% }
-type describe_usage_limits_message() :: #{binary() => any()}.

%% Example:
%% create_cluster_subnet_group_message() :: #{
%%   <<"ClusterSubnetGroupName">> := string(),
%%   <<"Description">> := string(),
%%   <<"SubnetIds">> := list(string()),
%%   <<"Tags">> => list(tag())
%% }
-type create_cluster_subnet_group_message() :: #{binary() => any()}.

%% Example:
%% create_cluster_snapshot_result() :: #{
%%   <<"Snapshot">> => snapshot()
%% }
-type create_cluster_snapshot_result() :: #{binary() => any()}.

%% Example:
%% modify_cluster_maintenance_message() :: #{
%%   <<"ClusterIdentifier">> := string(),
%%   <<"DeferMaintenance">> => boolean(),
%%   <<"DeferMaintenanceDuration">> => integer(),
%%   <<"DeferMaintenanceEndTime">> => non_neg_integer(),
%%   <<"DeferMaintenanceIdentifier">> => string(),
%%   <<"DeferMaintenanceStartTime">> => non_neg_integer()
%% }
-type modify_cluster_maintenance_message() :: #{binary() => any()}.

%% Example:
%% create_custom_domain_association_message() :: #{
%%   <<"ClusterIdentifier">> := string(),
%%   <<"CustomDomainCertificateArn">> := string(),
%%   <<"CustomDomainName">> := string()
%% }
-type create_custom_domain_association_message() :: #{binary() => any()}.

%% Example:
%% hsm_client_certificate_already_exists_fault() :: #{
%%   <<"message">> => string()
%% }
-type hsm_client_certificate_already_exists_fault() :: #{binary() => any()}.

%% Example:
%% maintenance_track() :: #{
%%   <<"DatabaseVersion">> => string(),
%%   <<"MaintenanceTrackName">> => string(),
%%   <<"UpdateTargets">> => list(update_target())
%% }
-type maintenance_track() :: #{binary() => any()}.

%% Example:
%% dependent_service_unavailable_fault() :: #{
%%   <<"message">> => string()
%% }
-type dependent_service_unavailable_fault() :: #{binary() => any()}.

%% Example:
%% get_reserved_node_exchange_configuration_options_output_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"ReservedNodeConfigurationOptionList">> => list(reserved_node_configuration_option())
%% }
-type get_reserved_node_exchange_configuration_options_output_message() :: #{binary() => any()}.

%% Example:
%% create_scheduled_action_message() :: #{
%%   <<"Enable">> => boolean(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"IamRole">> := string(),
%%   <<"Schedule">> := string(),
%%   <<"ScheduledActionDescription">> => string(),
%%   <<"ScheduledActionName">> := string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TargetAction">> := scheduled_action_type()
%% }
-type create_scheduled_action_message() :: #{binary() => any()}.

%% Example:
%% describe_reserved_node_exchange_status_output_message() :: #{
%%   <<"Marker">> => string(),
%%   <<"ReservedNodeExchangeStatusDetails">> => list(reserved_node_exchange_status())
%% }
-type describe_reserved_node_exchange_status_output_message() :: #{binary() => any()}.

%% Example:
%% snapshot_schedule() :: #{
%%   <<"AssociatedClusterCount">> => integer(),
%%   <<"AssociatedClusters">> => list(cluster_associated_to_schedule()),
%%   <<"NextInvocations">> => list(non_neg_integer()),
%%   <<"ScheduleDefinitions">> => list(string()),
%%   <<"ScheduleDescription">> => string(),
%%   <<"ScheduleIdentifier">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type snapshot_schedule() :: #{binary() => any()}.

%% Example:
%% track_list_message() :: #{
%%   <<"MaintenanceTracks">> => list(maintenance_track()),
%%   <<"Marker">> => string()
%% }
-type track_list_message() :: #{binary() => any()}.

%% Example:
%% describe_authentication_profiles_message() :: #{
%%   <<"AuthenticationProfileName">> => string()
%% }
-type describe_authentication_profiles_message() :: #{binary() => any()}.

%% Example:
%% modify_snapshot_copy_retention_period_result() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type modify_snapshot_copy_retention_period_result() :: #{binary() => any()}.

%% Example:
%% authorize_cluster_security_group_ingress_result() :: #{
%%   <<"ClusterSecurityGroup">> => cluster_security_group()
%% }
-type authorize_cluster_security_group_ingress_result() :: #{binary() => any()}.

%% Example:
%% hsm_status() :: #{
%%   <<"HsmClientCertificateIdentifier">> => string(),
%%   <<"HsmConfigurationIdentifier">> => string(),
%%   <<"Status">> => string()
%% }
-type hsm_status() :: #{binary() => any()}.

%% Example:
%% delete_cluster_snapshot_message() :: #{
%%   <<"SnapshotClusterIdentifier">> => string(),
%%   <<"SnapshotIdentifier">> => string()
%% }
-type delete_cluster_snapshot_message() :: #{binary() => any()}.

%% Example:
%% delete_endpoint_access_message() :: #{
%%   <<"EndpointName">> := string()
%% }
-type delete_endpoint_access_message() :: #{binary() => any()}.

-type accept_reserved_node_exchange_errors() ::
    dependent_service_unavailable_fault() | 
    reserved_node_offering_not_found_fault() | 
    reserved_node_not_found_fault() | 
    invalid_reserved_node_state_fault() | 
    reserved_node_already_migrated_fault() | 
    unsupported_operation_fault() | 
    reserved_node_already_exists_fault().

-type add_partner_errors() ::
    partner_not_found_fault() | 
    unauthorized_partner_integration_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type associate_data_share_consumer_errors() ::
    invalid_namespace_fault() | 
    invalid_data_share_fault().

-type authorize_cluster_security_group_ingress_errors() ::
    authorization_quota_exceeded_fault() | 
    cluster_security_group_not_found_fault() | 
    invalid_cluster_security_group_state_fault() | 
    authorization_already_exists_fault().

-type authorize_data_share_errors() ::
    invalid_data_share_fault().

-type authorize_endpoint_access_errors() ::
    invalid_authorization_state_fault() | 
    endpoint_authorization_already_exists_fault() | 
    invalid_cluster_state_fault() | 
    endpoint_authorizations_per_cluster_limit_exceeded_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type authorize_snapshot_access_errors() ::
    authorization_quota_exceeded_fault() | 
    cluster_snapshot_not_found_fault() | 
    authorization_already_exists_fault() | 
    invalid_cluster_snapshot_state_fault() | 
    unsupported_operation_fault() | 
    dependent_service_request_throttling_fault() | 
    limit_exceeded_fault().

-type batch_delete_cluster_snapshots_errors() ::
    batch_delete_request_size_exceeded_fault().

-type batch_modify_cluster_snapshots_errors() ::
    invalid_retention_period_fault() | 
    batch_modify_cluster_snapshots_limit_exceeded_fault().

-type cancel_resize_errors() ::
    invalid_cluster_state_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault() | 
    resize_not_found_fault().

-type copy_cluster_snapshot_errors() ::
    invalid_retention_period_fault() | 
    cluster_snapshot_not_found_fault() | 
    cluster_snapshot_already_exists_fault() | 
    invalid_cluster_snapshot_state_fault() | 
    cluster_snapshot_quota_exceeded_fault() | 
    cluster_not_found_fault().

-type create_authentication_profile_errors() ::
    authentication_profile_quota_exceeded_fault() | 
    invalid_authentication_profile_request_fault() | 
    authentication_profile_already_exists_fault().

-type create_cluster_errors() ::
    tag_limit_exceeded_fault() | 
    invalid_retention_period_fault() | 
    cluster_already_exists_fault() | 
    insufficient_cluster_capacity_fault() | 
    number_of_nodes_per_cluster_limit_exceeded_fault() | 
    cluster_security_group_not_found_fault() | 
    snapshot_schedule_not_found_fault() | 
    ipv6_cidr_block_not_found_fault() | 
    number_of_nodes_quota_exceeded_fault() | 
    hsm_client_certificate_not_found_fault() | 
    redshift_idc_application_not_exists_fault() | 
    cluster_parameter_group_not_found_fault() | 
    invalid_tag_fault() | 
    invalid_elastic_ip_fault() | 
    invalid_vpc_network_state_fault() | 
    unauthorized_operation() | 
    invalid_cluster_track_fault() | 
    hsm_configuration_not_found_fault() | 
    cluster_quota_exceeded_fault() | 
    unsupported_operation_fault() | 
    dependent_service_request_throttling_fault() | 
    invalid_subnet() | 
    limit_exceeded_fault() | 
    cluster_subnet_group_not_found_fault() | 
    invalid_cluster_subnet_group_state_fault().

-type create_cluster_parameter_group_errors() ::
    tag_limit_exceeded_fault() | 
    cluster_parameter_group_already_exists_fault() | 
    cluster_parameter_group_quota_exceeded_fault() | 
    invalid_tag_fault().

-type create_cluster_security_group_errors() ::
    tag_limit_exceeded_fault() | 
    invalid_tag_fault() | 
    cluster_security_group_already_exists_fault() | 
    cluster_security_group_quota_exceeded_fault().

-type create_cluster_snapshot_errors() ::
    tag_limit_exceeded_fault() | 
    invalid_retention_period_fault() | 
    invalid_cluster_state_fault() | 
    cluster_snapshot_already_exists_fault() | 
    invalid_tag_fault() | 
    cluster_snapshot_quota_exceeded_fault() | 
    cluster_not_found_fault().

-type create_cluster_subnet_group_errors() ::
    tag_limit_exceeded_fault() | 
    cluster_subnet_group_already_exists_fault() | 
    cluster_subnet_quota_exceeded_fault() | 
    invalid_tag_fault() | 
    unauthorized_operation() | 
    dependent_service_request_throttling_fault() | 
    invalid_subnet() | 
    cluster_subnet_group_quota_exceeded_fault().

-type create_custom_domain_association_errors() ::
    custom_cname_association_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type create_endpoint_access_errors() ::
    endpoint_already_exists_fault() | 
    access_to_cluster_denied_fault() | 
    invalid_cluster_state_fault() | 
    invalid_cluster_security_group_state_fault() | 
    endpoints_per_cluster_limit_exceeded_fault() | 
    unauthorized_operation() | 
    endpoints_per_authorization_limit_exceeded_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault() | 
    cluster_subnet_group_not_found_fault().

-type create_event_subscription_errors() ::
    tag_limit_exceeded_fault() | 
    s_n_s_no_authorization_fault() | 
    event_subscription_quota_exceeded_fault() | 
    s_n_s_topic_arn_not_found_fault() | 
    s_n_s_invalid_topic_fault() | 
    subscription_category_not_found_fault() | 
    source_not_found_fault() | 
    invalid_tag_fault() | 
    subscription_event_id_not_found_fault() | 
    subscription_already_exist_fault() | 
    subscription_severity_not_found_fault().

-type create_hsm_client_certificate_errors() ::
    hsm_client_certificate_already_exists_fault() | 
    tag_limit_exceeded_fault() | 
    invalid_tag_fault() | 
    hsm_client_certificate_quota_exceeded_fault().

-type create_hsm_configuration_errors() ::
    tag_limit_exceeded_fault() | 
    hsm_configuration_already_exists_fault() | 
    hsm_configuration_quota_exceeded_fault() | 
    invalid_tag_fault().

-type create_integration_errors() ::
    tag_limit_exceeded_fault() | 
    invalid_cluster_state_fault() | 
    integration_quota_exceeded_fault() | 
    integration_conflict_operation_fault() | 
    invalid_tag_fault() | 
    unsupported_operation_fault() | 
    integration_already_exists_fault() | 
    integration_target_not_found_fault() | 
    integration_source_not_found_fault().

-type create_redshift_idc_application_errors() ::
    dependent_service_unavailable_fault() | 
    tag_limit_exceeded_fault() | 
    redshift_idc_application_quota_exceeded_fault() | 
    dependent_service_access_denied_fault() | 
    invalid_tag_fault() | 
    unsupported_operation_fault() | 
    redshift_idc_application_already_exists_fault().

-type create_scheduled_action_errors() ::
    invalid_schedule_fault() | 
    invalid_scheduled_action_fault() | 
    scheduled_action_already_exists_fault() | 
    scheduled_action_quota_exceeded_fault() | 
    unauthorized_operation() | 
    scheduled_action_type_unsupported_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type create_snapshot_copy_grant_errors() ::
    tag_limit_exceeded_fault() | 
    snapshot_copy_grant_quota_exceeded_fault() | 
    invalid_tag_fault() | 
    snapshot_copy_grant_already_exists_fault() | 
    dependent_service_request_throttling_fault() | 
    limit_exceeded_fault().

-type create_snapshot_schedule_errors() ::
    tag_limit_exceeded_fault() | 
    invalid_schedule_fault() | 
    invalid_tag_fault() | 
    snapshot_schedule_quota_exceeded_fault() | 
    snapshot_schedule_already_exists_fault() | 
    schedule_definition_type_unsupported_fault().

-type create_tags_errors() ::
    tag_limit_exceeded_fault() | 
    invalid_cluster_state_fault() | 
    invalid_tag_fault() | 
    resource_not_found_fault().

-type create_usage_limit_errors() ::
    tag_limit_exceeded_fault() | 
    usage_limit_already_exists_fault() | 
    invalid_cluster_state_fault() | 
    invalid_usage_limit_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault() | 
    limit_exceeded_fault().

-type deauthorize_data_share_errors() ::
    invalid_data_share_fault().

-type delete_authentication_profile_errors() ::
    authentication_profile_not_found_fault() | 
    invalid_authentication_profile_request_fault().

-type delete_cluster_errors() ::
    invalid_retention_period_fault() | 
    invalid_cluster_state_fault() | 
    cluster_snapshot_already_exists_fault() | 
    cluster_snapshot_quota_exceeded_fault() | 
    cluster_not_found_fault().

-type delete_cluster_parameter_group_errors() ::
    cluster_parameter_group_not_found_fault() | 
    invalid_cluster_parameter_group_state_fault().

-type delete_cluster_security_group_errors() ::
    cluster_security_group_not_found_fault() | 
    invalid_cluster_security_group_state_fault().

-type delete_cluster_snapshot_errors() ::
    cluster_snapshot_not_found_fault() | 
    invalid_cluster_snapshot_state_fault().

-type delete_cluster_subnet_group_errors() ::
    invalid_cluster_subnet_state_fault() | 
    cluster_subnet_group_not_found_fault() | 
    invalid_cluster_subnet_group_state_fault().

-type delete_custom_domain_association_errors() ::
    custom_domain_association_not_found_fault() | 
    custom_cname_association_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type delete_endpoint_access_errors() ::
    invalid_cluster_state_fault() | 
    invalid_endpoint_state_fault() | 
    endpoint_not_found_fault() | 
    invalid_cluster_security_group_state_fault() | 
    cluster_not_found_fault().

-type delete_event_subscription_errors() ::
    invalid_subscription_state_fault() | 
    subscription_not_found_fault().

-type delete_hsm_client_certificate_errors() ::
    hsm_client_certificate_not_found_fault() | 
    invalid_hsm_client_certificate_state_fault().

-type delete_hsm_configuration_errors() ::
    invalid_hsm_configuration_state_fault() | 
    hsm_configuration_not_found_fault().

-type delete_integration_errors() ::
    integration_conflict_state_fault() | 
    integration_not_found_fault() | 
    integration_conflict_operation_fault() | 
    unsupported_operation_fault().

-type delete_partner_errors() ::
    partner_not_found_fault() | 
    unauthorized_partner_integration_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type delete_redshift_idc_application_errors() ::
    dependent_service_unavailable_fault() | 
    redshift_idc_application_not_exists_fault() | 
    dependent_service_access_denied_fault() | 
    unsupported_operation_fault().

-type delete_resource_policy_errors() ::
    unsupported_operation_fault() | 
    resource_not_found_fault().

-type delete_scheduled_action_errors() ::
    scheduled_action_not_found_fault() | 
    unauthorized_operation().

-type delete_snapshot_copy_grant_errors() ::
    snapshot_copy_grant_not_found_fault() | 
    invalid_snapshot_copy_grant_state_fault().

-type delete_snapshot_schedule_errors() ::
    snapshot_schedule_not_found_fault() | 
    invalid_cluster_snapshot_schedule_state_fault().

-type delete_tags_errors() ::
    invalid_tag_fault() | 
    resource_not_found_fault().

-type delete_usage_limit_errors() ::
    unsupported_operation_fault() | 
    usage_limit_not_found_fault().

-type deregister_namespace_errors() ::
    invalid_cluster_state_fault() | 
    invalid_namespace_fault() | 
    cluster_not_found_fault().

-type describe_authentication_profiles_errors() ::
    authentication_profile_not_found_fault() | 
    invalid_authentication_profile_request_fault().

-type describe_cluster_db_revisions_errors() ::
    invalid_cluster_state_fault() | 
    cluster_not_found_fault().

-type describe_cluster_parameter_groups_errors() ::
    cluster_parameter_group_not_found_fault() | 
    invalid_tag_fault().

-type describe_cluster_parameters_errors() ::
    cluster_parameter_group_not_found_fault().

-type describe_cluster_security_groups_errors() ::
    cluster_security_group_not_found_fault() | 
    invalid_tag_fault().

-type describe_cluster_snapshots_errors() ::
    cluster_snapshot_not_found_fault() | 
    invalid_tag_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type describe_cluster_subnet_groups_errors() ::
    invalid_tag_fault() | 
    cluster_subnet_group_not_found_fault().

-type describe_cluster_tracks_errors() ::
    unauthorized_operation() | 
    invalid_cluster_track_fault().

-type describe_clusters_errors() ::
    invalid_tag_fault() | 
    cluster_not_found_fault().

-type describe_custom_domain_associations_errors() ::
    custom_domain_association_not_found_fault() | 
    unsupported_operation_fault().

-type describe_data_shares_errors() ::
    invalid_data_share_fault().

-type describe_data_shares_for_consumer_errors() ::
    invalid_namespace_fault().

-type describe_data_shares_for_producer_errors() ::
    invalid_namespace_fault().

-type describe_endpoint_access_errors() ::
    invalid_cluster_state_fault() | 
    endpoint_not_found_fault() | 
    cluster_not_found_fault().

-type describe_endpoint_authorization_errors() ::
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type describe_event_subscriptions_errors() ::
    subscription_not_found_fault() | 
    invalid_tag_fault().

-type describe_hsm_client_certificates_errors() ::
    hsm_client_certificate_not_found_fault() | 
    invalid_tag_fault().

-type describe_hsm_configurations_errors() ::
    invalid_tag_fault() | 
    hsm_configuration_not_found_fault().

-type describe_inbound_integrations_errors() ::
    integration_not_found_fault() | 
    invalid_namespace_fault() | 
    unsupported_operation_fault().

-type describe_integrations_errors() ::
    integration_not_found_fault() | 
    unsupported_operation_fault().

-type describe_logging_status_errors() ::
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type describe_node_configuration_options_errors() ::
    cluster_snapshot_not_found_fault() | 
    access_to_snapshot_denied_fault() | 
    invalid_cluster_snapshot_state_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type describe_partners_errors() ::
    unauthorized_partner_integration_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type describe_redshift_idc_applications_errors() ::
    dependent_service_unavailable_fault() | 
    redshift_idc_application_not_exists_fault() | 
    dependent_service_access_denied_fault() | 
    unsupported_operation_fault().

-type describe_reserved_node_exchange_status_errors() ::
    reserved_node_exchange_not_found_fault() | 
    reserved_node_not_found_fault() | 
    unsupported_operation_fault().

-type describe_reserved_node_offerings_errors() ::
    dependent_service_unavailable_fault() | 
    reserved_node_offering_not_found_fault() | 
    unsupported_operation_fault().

-type describe_reserved_nodes_errors() ::
    dependent_service_unavailable_fault() | 
    reserved_node_not_found_fault().

-type describe_resize_errors() ::
    unsupported_operation_fault() | 
    cluster_not_found_fault() | 
    resize_not_found_fault().

-type describe_scheduled_actions_errors() ::
    scheduled_action_not_found_fault() | 
    unauthorized_operation().

-type describe_snapshot_copy_grants_errors() ::
    invalid_tag_fault() | 
    snapshot_copy_grant_not_found_fault().

-type describe_table_restore_status_errors() ::
    table_restore_not_found_fault() | 
    cluster_not_found_fault().

-type describe_tags_errors() ::
    invalid_tag_fault() | 
    resource_not_found_fault().

-type describe_usage_limits_errors() ::
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type disable_logging_errors() ::
    invalid_cluster_state_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type disable_snapshot_copy_errors() ::
    invalid_cluster_state_fault() | 
    unauthorized_operation() | 
    unsupported_operation_fault() | 
    snapshot_copy_already_disabled_fault() | 
    cluster_not_found_fault().

-type disassociate_data_share_consumer_errors() ::
    invalid_namespace_fault() | 
    invalid_data_share_fault().

-type enable_logging_errors() ::
    invalid_cluster_state_fault() | 
    invalid_s3_key_prefix_fault() | 
    insufficient_s3_bucket_policy_fault() | 
    bucket_not_found_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault() | 
    invalid_s3_bucket_name_fault().

-type enable_snapshot_copy_errors() ::
    invalid_retention_period_fault() | 
    copy_to_region_disabled_fault() | 
    unknown_snapshot_copy_region_fault() | 
    invalid_cluster_state_fault() | 
    incompatible_orderable_options() | 
    snapshot_copy_already_enabled_fault() | 
    unauthorized_operation() | 
    dependent_service_request_throttling_fault() | 
    cluster_not_found_fault() | 
    limit_exceeded_fault() | 
    snapshot_copy_grant_not_found_fault().

-type failover_primary_compute_errors() ::
    invalid_cluster_state_fault() | 
    unauthorized_operation() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type get_cluster_credentials_errors() ::
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type get_cluster_credentials_with_iam_errors() ::
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type get_reserved_node_exchange_configuration_options_errors() ::
    dependent_service_unavailable_fault() | 
    reserved_node_offering_not_found_fault() | 
    cluster_snapshot_not_found_fault() | 
    reserved_node_not_found_fault() | 
    invalid_reserved_node_state_fault() | 
    reserved_node_already_migrated_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type get_reserved_node_exchange_offerings_errors() ::
    dependent_service_unavailable_fault() | 
    reserved_node_offering_not_found_fault() | 
    reserved_node_not_found_fault() | 
    invalid_reserved_node_state_fault() | 
    reserved_node_already_migrated_fault() | 
    unsupported_operation_fault().

-type get_resource_policy_errors() ::
    unsupported_operation_fault() | 
    invalid_policy_fault() | 
    resource_not_found_fault().

-type list_recommendations_errors() ::
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type modify_aqua_configuration_errors() ::
    invalid_cluster_state_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type modify_authentication_profile_errors() ::
    authentication_profile_quota_exceeded_fault() | 
    authentication_profile_not_found_fault() | 
    invalid_authentication_profile_request_fault().

-type modify_cluster_errors() ::
    invalid_retention_period_fault() | 
    cluster_already_exists_fault() | 
    insufficient_cluster_capacity_fault() | 
    number_of_nodes_per_cluster_limit_exceeded_fault() | 
    unsupported_option_fault() | 
    cluster_security_group_not_found_fault() | 
    invalid_cluster_state_fault() | 
    invalid_cluster_security_group_state_fault() | 
    ipv6_cidr_block_not_found_fault() | 
    custom_cname_association_fault() | 
    table_limit_exceeded_fault() | 
    number_of_nodes_quota_exceeded_fault() | 
    hsm_client_certificate_not_found_fault() | 
    cluster_parameter_group_not_found_fault() | 
    invalid_elastic_ip_fault() | 
    unauthorized_operation() | 
    invalid_cluster_track_fault() | 
    hsm_configuration_not_found_fault() | 
    unsupported_operation_fault() | 
    dependent_service_request_throttling_fault() | 
    cluster_not_found_fault() | 
    limit_exceeded_fault().

-type modify_cluster_db_revision_errors() ::
    invalid_cluster_state_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault() | 
    cluster_on_latest_revision_fault().

-type modify_cluster_iam_roles_errors() ::
    invalid_cluster_state_fault() | 
    cluster_not_found_fault().

-type modify_cluster_maintenance_errors() ::
    invalid_cluster_state_fault() | 
    cluster_not_found_fault().

-type modify_cluster_parameter_group_errors() ::
    cluster_parameter_group_not_found_fault() | 
    invalid_cluster_parameter_group_state_fault().

-type modify_cluster_snapshot_errors() ::
    invalid_retention_period_fault() | 
    cluster_snapshot_not_found_fault() | 
    invalid_cluster_snapshot_state_fault().

-type modify_cluster_snapshot_schedule_errors() ::
    snapshot_schedule_not_found_fault() | 
    invalid_cluster_snapshot_schedule_state_fault() | 
    cluster_not_found_fault().

-type modify_cluster_subnet_group_errors() ::
    cluster_subnet_quota_exceeded_fault() | 
    unauthorized_operation() | 
    dependent_service_request_throttling_fault() | 
    invalid_subnet() | 
    cluster_subnet_group_not_found_fault() | 
    subnet_already_in_use().

-type modify_custom_domain_association_errors() ::
    custom_domain_association_not_found_fault() | 
    custom_cname_association_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type modify_endpoint_access_errors() ::
    invalid_cluster_state_fault() | 
    invalid_endpoint_state_fault() | 
    endpoint_not_found_fault() | 
    invalid_cluster_security_group_state_fault() | 
    unauthorized_operation() | 
    cluster_not_found_fault().

-type modify_event_subscription_errors() ::
    s_n_s_no_authorization_fault() | 
    invalid_subscription_state_fault() | 
    s_n_s_topic_arn_not_found_fault() | 
    s_n_s_invalid_topic_fault() | 
    subscription_category_not_found_fault() | 
    subscription_not_found_fault() | 
    source_not_found_fault() | 
    subscription_event_id_not_found_fault() | 
    subscription_severity_not_found_fault().

-type modify_integration_errors() ::
    integration_conflict_state_fault() | 
    integration_not_found_fault() | 
    integration_conflict_operation_fault() | 
    unsupported_operation_fault() | 
    integration_already_exists_fault().

-type modify_redshift_idc_application_errors() ::
    dependent_service_unavailable_fault() | 
    redshift_idc_application_not_exists_fault() | 
    dependent_service_access_denied_fault() | 
    unsupported_operation_fault().

-type modify_scheduled_action_errors() ::
    invalid_schedule_fault() | 
    invalid_scheduled_action_fault() | 
    scheduled_action_not_found_fault() | 
    unauthorized_operation() | 
    scheduled_action_type_unsupported_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type modify_snapshot_copy_retention_period_errors() ::
    invalid_retention_period_fault() | 
    invalid_cluster_state_fault() | 
    snapshot_copy_disabled_fault() | 
    unauthorized_operation() | 
    cluster_not_found_fault().

-type modify_snapshot_schedule_errors() ::
    invalid_schedule_fault() | 
    snapshot_schedule_not_found_fault() | 
    snapshot_schedule_update_in_progress_fault().

-type modify_usage_limit_errors() ::
    invalid_usage_limit_fault() | 
    unsupported_operation_fault() | 
    usage_limit_not_found_fault().

-type pause_cluster_errors() ::
    invalid_cluster_state_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type purchase_reserved_node_offering_errors() ::
    reserved_node_offering_not_found_fault() | 
    reserved_node_quota_exceeded_fault() | 
    unsupported_operation_fault() | 
    reserved_node_already_exists_fault().

-type put_resource_policy_errors() ::
    conflict_policy_update_fault() | 
    unsupported_operation_fault() | 
    invalid_policy_fault() | 
    resource_not_found_fault().

-type reboot_cluster_errors() ::
    invalid_cluster_state_fault() | 
    cluster_not_found_fault().

-type register_namespace_errors() ::
    invalid_cluster_state_fault() | 
    invalid_namespace_fault() | 
    cluster_not_found_fault().

-type reject_data_share_errors() ::
    invalid_data_share_fault().

-type reset_cluster_parameter_group_errors() ::
    cluster_parameter_group_not_found_fault() | 
    invalid_cluster_parameter_group_state_fault().

-type resize_cluster_errors() ::
    dependent_service_unavailable_fault() | 
    insufficient_cluster_capacity_fault() | 
    reserved_node_offering_not_found_fault() | 
    number_of_nodes_per_cluster_limit_exceeded_fault() | 
    unsupported_option_fault() | 
    invalid_cluster_state_fault() | 
    reserved_node_not_found_fault() | 
    number_of_nodes_quota_exceeded_fault() | 
    invalid_reserved_node_state_fault() | 
    unauthorized_operation() | 
    reserved_node_already_migrated_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault() | 
    limit_exceeded_fault() | 
    reserved_node_already_exists_fault().

-type restore_from_cluster_snapshot_errors() ::
    dependent_service_unavailable_fault() | 
    tag_limit_exceeded_fault() | 
    cluster_already_exists_fault() | 
    insufficient_cluster_capacity_fault() | 
    reserved_node_offering_not_found_fault() | 
    number_of_nodes_per_cluster_limit_exceeded_fault() | 
    cluster_snapshot_not_found_fault() | 
    cluster_security_group_not_found_fault() | 
    access_to_snapshot_denied_fault() | 
    snapshot_schedule_not_found_fault() | 
    ipv6_cidr_block_not_found_fault() | 
    reserved_node_not_found_fault() | 
    number_of_nodes_quota_exceeded_fault() | 
    hsm_client_certificate_not_found_fault() | 
    invalid_reserved_node_state_fault() | 
    cluster_parameter_group_not_found_fault() | 
    invalid_tag_fault() | 
    invalid_elastic_ip_fault() | 
    invalid_vpc_network_state_fault() | 
    unauthorized_operation() | 
    reserved_node_already_migrated_fault() | 
    invalid_cluster_snapshot_state_fault() | 
    invalid_cluster_track_fault() | 
    hsm_configuration_not_found_fault() | 
    cluster_quota_exceeded_fault() | 
    unsupported_operation_fault() | 
    dependent_service_request_throttling_fault() | 
    invalid_subnet() | 
    invalid_restore_fault() | 
    limit_exceeded_fault() | 
    reserved_node_already_exists_fault() | 
    cluster_subnet_group_not_found_fault() | 
    invalid_cluster_subnet_group_state_fault().

-type restore_table_from_cluster_snapshot_errors() ::
    invalid_table_restore_argument_fault() | 
    cluster_snapshot_not_found_fault() | 
    invalid_cluster_state_fault() | 
    in_progress_table_restore_quota_exceeded_fault() | 
    invalid_cluster_snapshot_state_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type resume_cluster_errors() ::
    insufficient_cluster_capacity_fault() | 
    invalid_cluster_state_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault().

-type revoke_cluster_security_group_ingress_errors() ::
    cluster_security_group_not_found_fault() | 
    invalid_cluster_security_group_state_fault() | 
    authorization_not_found_fault().

-type revoke_endpoint_access_errors() ::
    invalid_authorization_state_fault() | 
    invalid_cluster_state_fault() | 
    invalid_endpoint_state_fault() | 
    endpoint_not_found_fault() | 
    invalid_cluster_security_group_state_fault() | 
    cluster_not_found_fault() | 
    endpoint_authorization_not_found_fault().

-type revoke_snapshot_access_errors() ::
    cluster_snapshot_not_found_fault() | 
    access_to_snapshot_denied_fault() | 
    authorization_not_found_fault() | 
    unsupported_operation_fault().

-type rotate_encryption_key_errors() ::
    invalid_cluster_state_fault() | 
    unsupported_operation_fault() | 
    dependent_service_request_throttling_fault() | 
    cluster_not_found_fault().

-type update_partner_status_errors() ::
    partner_not_found_fault() | 
    unauthorized_partner_integration_fault() | 
    unsupported_operation_fault() | 
    cluster_not_found_fault().

%%====================================================================
%% API
%%====================================================================

%% @doc Exchanges a DC1 Reserved Node for a DC2 Reserved Node with no changes
%% to the
%% configuration (term, payment type, or number of nodes) and no additional
%% costs.
-spec accept_reserved_node_exchange(aws_client:aws_client(), accept_reserved_node_exchange_input_message()) ->
    {ok, accept_reserved_node_exchange_output_message(), tuple()} |
    {error, any()} |
    {error, accept_reserved_node_exchange_errors(), tuple()}.
accept_reserved_node_exchange(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_reserved_node_exchange(Client, Input, []).

-spec accept_reserved_node_exchange(aws_client:aws_client(), accept_reserved_node_exchange_input_message(), proplists:proplist()) ->
    {ok, accept_reserved_node_exchange_output_message(), tuple()} |
    {error, any()} |
    {error, accept_reserved_node_exchange_errors(), tuple()}.
accept_reserved_node_exchange(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptReservedNodeExchange">>, Input, Options).

%% @doc Adds a partner integration to a cluster.
%%
%% This operation authorizes a partner to push status updates for the
%% specified database.
%% To complete the integration, you also set up the integration on the
%% partner website.
-spec add_partner(aws_client:aws_client(), partner_integration_input_message()) ->
    {ok, partner_integration_output_message(), tuple()} |
    {error, any()} |
    {error, add_partner_errors(), tuple()}.
add_partner(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_partner(Client, Input, []).

-spec add_partner(aws_client:aws_client(), partner_integration_input_message(), proplists:proplist()) ->
    {ok, partner_integration_output_message(), tuple()} |
    {error, any()} |
    {error, add_partner_errors(), tuple()}.
add_partner(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddPartner">>, Input, Options).

%% @doc From a datashare consumer account, associates a datashare with the
%% account (AssociateEntireAccount) or the specified namespace (ConsumerArn).
%%
%% If you make this association, the consumer
%% can consume the datashare.
-spec associate_data_share_consumer(aws_client:aws_client(), associate_data_share_consumer_message()) ->
    {ok, data_share(), tuple()} |
    {error, any()} |
    {error, associate_data_share_consumer_errors(), tuple()}.
associate_data_share_consumer(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_data_share_consumer(Client, Input, []).

-spec associate_data_share_consumer(aws_client:aws_client(), associate_data_share_consumer_message(), proplists:proplist()) ->
    {ok, data_share(), tuple()} |
    {error, any()} |
    {error, associate_data_share_consumer_errors(), tuple()}.
associate_data_share_consumer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateDataShareConsumer">>, Input, Options).

%% @doc Adds an inbound (ingress) rule to an Amazon Redshift security group.
%%
%% Depending on whether
%% the application accessing your cluster is running on the Internet or an
%% Amazon EC2
%% instance, you can authorize inbound access to either a Classless
%% Interdomain Routing
%% (CIDR)/Internet Protocol (IP) range or to an Amazon EC2 security group.
%% You can add as
%% many as 20 ingress rules to an Amazon Redshift security group.
%%
%% If you authorize access to an Amazon EC2 security group, specify
%% EC2SecurityGroupName and
%% EC2SecurityGroupOwnerId. The Amazon EC2 security group and
%% Amazon Redshift cluster must be in the same Amazon Web Services Region.
%%
%% If you authorize access to a CIDR/IP address range, specify
%% CIDRIP. For an overview of CIDR blocks, see the Wikipedia
%% article on Classless Inter-Domain Routing:
%% http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing.
%%
%% You must also associate the security group with a cluster so that clients
%% running
%% on these IP addresses or the EC2 instance are authorized to connect to the
%% cluster. For
%% information about managing security groups, go to Working with Security
%% Groups:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html
%% in the Amazon Redshift Cluster Management Guide.
-spec authorize_cluster_security_group_ingress(aws_client:aws_client(), authorize_cluster_security_group_ingress_message()) ->
    {ok, authorize_cluster_security_group_ingress_result(), tuple()} |
    {error, any()} |
    {error, authorize_cluster_security_group_ingress_errors(), tuple()}.
authorize_cluster_security_group_ingress(Client, Input)
  when is_map(Client), is_map(Input) ->
    authorize_cluster_security_group_ingress(Client, Input, []).

-spec authorize_cluster_security_group_ingress(aws_client:aws_client(), authorize_cluster_security_group_ingress_message(), proplists:proplist()) ->
    {ok, authorize_cluster_security_group_ingress_result(), tuple()} |
    {error, any()} |
    {error, authorize_cluster_security_group_ingress_errors(), tuple()}.
authorize_cluster_security_group_ingress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AuthorizeClusterSecurityGroupIngress">>, Input, Options).

%% @doc From a data producer account, authorizes the sharing of a datashare
%% with one or more
%% consumer accounts or managing entities.
%%
%% To authorize a datashare for a data consumer,
%% the producer account must have the correct access permissions.
-spec authorize_data_share(aws_client:aws_client(), authorize_data_share_message()) ->
    {ok, data_share(), tuple()} |
    {error, any()} |
    {error, authorize_data_share_errors(), tuple()}.
authorize_data_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    authorize_data_share(Client, Input, []).

-spec authorize_data_share(aws_client:aws_client(), authorize_data_share_message(), proplists:proplist()) ->
    {ok, data_share(), tuple()} |
    {error, any()} |
    {error, authorize_data_share_errors(), tuple()}.
authorize_data_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AuthorizeDataShare">>, Input, Options).

%% @doc Grants access to a cluster.
-spec authorize_endpoint_access(aws_client:aws_client(), authorize_endpoint_access_message()) ->
    {ok, endpoint_authorization(), tuple()} |
    {error, any()} |
    {error, authorize_endpoint_access_errors(), tuple()}.
authorize_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    authorize_endpoint_access(Client, Input, []).

-spec authorize_endpoint_access(aws_client:aws_client(), authorize_endpoint_access_message(), proplists:proplist()) ->
    {ok, endpoint_authorization(), tuple()} |
    {error, any()} |
    {error, authorize_endpoint_access_errors(), tuple()}.
authorize_endpoint_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AuthorizeEndpointAccess">>, Input, Options).

%% @doc Authorizes the specified Amazon Web Services account to restore the
%% specified
%% snapshot.
%%
%% For more information about working with snapshots, go to
%% Amazon Redshift Snapshots:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html
%% in the Amazon Redshift Cluster Management Guide.
-spec authorize_snapshot_access(aws_client:aws_client(), authorize_snapshot_access_message()) ->
    {ok, authorize_snapshot_access_result(), tuple()} |
    {error, any()} |
    {error, authorize_snapshot_access_errors(), tuple()}.
authorize_snapshot_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    authorize_snapshot_access(Client, Input, []).

-spec authorize_snapshot_access(aws_client:aws_client(), authorize_snapshot_access_message(), proplists:proplist()) ->
    {ok, authorize_snapshot_access_result(), tuple()} |
    {error, any()} |
    {error, authorize_snapshot_access_errors(), tuple()}.
authorize_snapshot_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AuthorizeSnapshotAccess">>, Input, Options).

%% @doc Deletes a set of cluster snapshots.
-spec batch_delete_cluster_snapshots(aws_client:aws_client(), batch_delete_cluster_snapshots_request()) ->
    {ok, batch_delete_cluster_snapshots_result(), tuple()} |
    {error, any()} |
    {error, batch_delete_cluster_snapshots_errors(), tuple()}.
batch_delete_cluster_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_cluster_snapshots(Client, Input, []).

-spec batch_delete_cluster_snapshots(aws_client:aws_client(), batch_delete_cluster_snapshots_request(), proplists:proplist()) ->
    {ok, batch_delete_cluster_snapshots_result(), tuple()} |
    {error, any()} |
    {error, batch_delete_cluster_snapshots_errors(), tuple()}.
batch_delete_cluster_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteClusterSnapshots">>, Input, Options).

%% @doc Modifies the settings for a set of cluster snapshots.
-spec batch_modify_cluster_snapshots(aws_client:aws_client(), batch_modify_cluster_snapshots_message()) ->
    {ok, batch_modify_cluster_snapshots_output_message(), tuple()} |
    {error, any()} |
    {error, batch_modify_cluster_snapshots_errors(), tuple()}.
batch_modify_cluster_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_modify_cluster_snapshots(Client, Input, []).

-spec batch_modify_cluster_snapshots(aws_client:aws_client(), batch_modify_cluster_snapshots_message(), proplists:proplist()) ->
    {ok, batch_modify_cluster_snapshots_output_message(), tuple()} |
    {error, any()} |
    {error, batch_modify_cluster_snapshots_errors(), tuple()}.
batch_modify_cluster_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchModifyClusterSnapshots">>, Input, Options).

%% @doc Cancels a resize operation for a cluster.
-spec cancel_resize(aws_client:aws_client(), cancel_resize_message()) ->
    {ok, resize_progress_message(), tuple()} |
    {error, any()} |
    {error, cancel_resize_errors(), tuple()}.
cancel_resize(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_resize(Client, Input, []).

-spec cancel_resize(aws_client:aws_client(), cancel_resize_message(), proplists:proplist()) ->
    {ok, resize_progress_message(), tuple()} |
    {error, any()} |
    {error, cancel_resize_errors(), tuple()}.
cancel_resize(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelResize">>, Input, Options).

%% @doc Copies the specified automated cluster snapshot to a new manual
%% cluster snapshot.
%%
%% The source must be an automated snapshot and it must be in the available
%% state.
%%
%% When you delete a cluster, Amazon Redshift deletes any automated snapshots
%% of the
%% cluster. Also, when the retention period of the snapshot expires, Amazon
%% Redshift
%% automatically deletes it. If you want to keep an automated snapshot for a
%% longer period,
%% you can make a manual copy of the snapshot. Manual snapshots are retained
%% until you
%% delete them.
%%
%% For more information about working with snapshots, go to
%% Amazon Redshift Snapshots:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html
%% in the Amazon Redshift Cluster Management Guide.
-spec copy_cluster_snapshot(aws_client:aws_client(), copy_cluster_snapshot_message()) ->
    {ok, copy_cluster_snapshot_result(), tuple()} |
    {error, any()} |
    {error, copy_cluster_snapshot_errors(), tuple()}.
copy_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_cluster_snapshot(Client, Input, []).

-spec copy_cluster_snapshot(aws_client:aws_client(), copy_cluster_snapshot_message(), proplists:proplist()) ->
    {ok, copy_cluster_snapshot_result(), tuple()} |
    {error, any()} |
    {error, copy_cluster_snapshot_errors(), tuple()}.
copy_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyClusterSnapshot">>, Input, Options).

%% @doc Creates an authentication profile with the specified parameters.
-spec create_authentication_profile(aws_client:aws_client(), create_authentication_profile_message()) ->
    {ok, create_authentication_profile_result(), tuple()} |
    {error, any()} |
    {error, create_authentication_profile_errors(), tuple()}.
create_authentication_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_authentication_profile(Client, Input, []).

-spec create_authentication_profile(aws_client:aws_client(), create_authentication_profile_message(), proplists:proplist()) ->
    {ok, create_authentication_profile_result(), tuple()} |
    {error, any()} |
    {error, create_authentication_profile_errors(), tuple()}.
create_authentication_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAuthenticationProfile">>, Input, Options).

%% @doc Creates a new cluster with the specified parameters.
%%
%% To create a cluster in Virtual Private Cloud (VPC), you must provide a
%% cluster
%% subnet group name. The cluster subnet group identifies the subnets of your
%% VPC that
%% Amazon Redshift uses when creating the cluster.
%% For more information about managing clusters, go to
%% Amazon Redshift Clusters:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html
%% in the Amazon Redshift Cluster Management Guide.
%%
%% VPC Block Public Access (BPA) enables you to block resources in VPCs and
%% subnets that
%% you own in a Region from reaching or being reached from the internet
%% through internet
%% gateways and egress-only internet gateways. If a subnet group for a
%% provisioned cluster is in an account with VPC BPA turned on, the following
%% capabilities
%% are blocked:
%%
%% Creating a public cluster
%%
%% Restoring a public cluster
%%
%% Modifying a private cluster to be public
%%
%% Adding a subnet with VPC BPA turned on to the subnet group when
%% there's at
%% least one public cluster within the group
%%
%% For more information about VPC BPA, see Block public access to VPCs and
%% subnets:
%% https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html in
%% the Amazon VPC User Guide.
-spec create_cluster(aws_client:aws_client(), create_cluster_message()) ->
    {ok, create_cluster_result(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster(Client, Input, []).

-spec create_cluster(aws_client:aws_client(), create_cluster_message(), proplists:proplist()) ->
    {ok, create_cluster_result(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCluster">>, Input, Options).

%% @doc Creates an Amazon Redshift parameter group.
%%
%% Creating parameter groups is independent of creating clusters. You can
%% associate a
%% cluster with a parameter group when you create the cluster. You can also
%% associate an
%% existing cluster with a parameter group after the cluster is created by
%% using `ModifyCluster'.
%%
%% Parameters in the parameter group define specific behavior that applies to
%% the
%% databases you create on the cluster.
%% For more information about parameters and parameter groups, go to
%% Amazon Redshift Parameter Groups:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html
%% in the Amazon Redshift Cluster Management Guide.
-spec create_cluster_parameter_group(aws_client:aws_client(), create_cluster_parameter_group_message()) ->
    {ok, create_cluster_parameter_group_result(), tuple()} |
    {error, any()} |
    {error, create_cluster_parameter_group_errors(), tuple()}.
create_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster_parameter_group(Client, Input, []).

-spec create_cluster_parameter_group(aws_client:aws_client(), create_cluster_parameter_group_message(), proplists:proplist()) ->
    {ok, create_cluster_parameter_group_result(), tuple()} |
    {error, any()} |
    {error, create_cluster_parameter_group_errors(), tuple()}.
create_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateClusterParameterGroup">>, Input, Options).

%% @doc Creates a new Amazon Redshift security group.
%%
%% You use security groups to control access
%% to non-VPC clusters.
%%
%% For information about managing security groups, go to
%% Amazon Redshift Cluster Security Groups:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html
%% in the
%% Amazon Redshift Cluster Management Guide.
-spec create_cluster_security_group(aws_client:aws_client(), create_cluster_security_group_message()) ->
    {ok, create_cluster_security_group_result(), tuple()} |
    {error, any()} |
    {error, create_cluster_security_group_errors(), tuple()}.
create_cluster_security_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster_security_group(Client, Input, []).

-spec create_cluster_security_group(aws_client:aws_client(), create_cluster_security_group_message(), proplists:proplist()) ->
    {ok, create_cluster_security_group_result(), tuple()} |
    {error, any()} |
    {error, create_cluster_security_group_errors(), tuple()}.
create_cluster_security_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateClusterSecurityGroup">>, Input, Options).

%% @doc Creates a manual snapshot of the specified cluster.
%%
%% The cluster must be in the
%% `available' state.
%%
%% For more information about working with snapshots, go to
%% Amazon Redshift Snapshots:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html
%% in the Amazon Redshift Cluster Management Guide.
-spec create_cluster_snapshot(aws_client:aws_client(), create_cluster_snapshot_message()) ->
    {ok, create_cluster_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_cluster_snapshot_errors(), tuple()}.
create_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster_snapshot(Client, Input, []).

-spec create_cluster_snapshot(aws_client:aws_client(), create_cluster_snapshot_message(), proplists:proplist()) ->
    {ok, create_cluster_snapshot_result(), tuple()} |
    {error, any()} |
    {error, create_cluster_snapshot_errors(), tuple()}.
create_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateClusterSnapshot">>, Input, Options).

%% @doc Creates a new Amazon Redshift subnet group.
%%
%% You must provide a list of one or more
%% subnets in your existing Amazon Virtual Private Cloud (Amazon VPC) when
%% creating
%% Amazon Redshift subnet group.
%%
%% For information about subnet groups, go to
%% Amazon Redshift Cluster Subnet Groups:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-cluster-subnet-groups.html
%% in the
%% Amazon Redshift Cluster Management Guide.
-spec create_cluster_subnet_group(aws_client:aws_client(), create_cluster_subnet_group_message()) ->
    {ok, create_cluster_subnet_group_result(), tuple()} |
    {error, any()} |
    {error, create_cluster_subnet_group_errors(), tuple()}.
create_cluster_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster_subnet_group(Client, Input, []).

-spec create_cluster_subnet_group(aws_client:aws_client(), create_cluster_subnet_group_message(), proplists:proplist()) ->
    {ok, create_cluster_subnet_group_result(), tuple()} |
    {error, any()} |
    {error, create_cluster_subnet_group_errors(), tuple()}.
create_cluster_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateClusterSubnetGroup">>, Input, Options).

%% @doc Used to create a custom domain name for a cluster.
%%
%% Properties include the custom domain name, the
%% cluster the custom domain is associated with, and the certificate Amazon
%% Resource Name (ARN).
-spec create_custom_domain_association(aws_client:aws_client(), create_custom_domain_association_message()) ->
    {ok, create_custom_domain_association_result(), tuple()} |
    {error, any()} |
    {error, create_custom_domain_association_errors(), tuple()}.
create_custom_domain_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_custom_domain_association(Client, Input, []).

-spec create_custom_domain_association(aws_client:aws_client(), create_custom_domain_association_message(), proplists:proplist()) ->
    {ok, create_custom_domain_association_result(), tuple()} |
    {error, any()} |
    {error, create_custom_domain_association_errors(), tuple()}.
create_custom_domain_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCustomDomainAssociation">>, Input, Options).

%% @doc Creates a Redshift-managed VPC endpoint.
-spec create_endpoint_access(aws_client:aws_client(), create_endpoint_access_message()) ->
    {ok, endpoint_access(), tuple()} |
    {error, any()} |
    {error, create_endpoint_access_errors(), tuple()}.
create_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_endpoint_access(Client, Input, []).

-spec create_endpoint_access(aws_client:aws_client(), create_endpoint_access_message(), proplists:proplist()) ->
    {ok, endpoint_access(), tuple()} |
    {error, any()} |
    {error, create_endpoint_access_errors(), tuple()}.
create_endpoint_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEndpointAccess">>, Input, Options).

%% @doc Creates an Amazon Redshift event notification subscription.
%%
%% This action requires an ARN
%% (Amazon Resource Name) of an Amazon SNS topic created by either the Amazon
%% Redshift console,
%% the Amazon SNS console, or the Amazon SNS API. To obtain an ARN with
%% Amazon SNS, you
%% must create a topic in Amazon SNS and subscribe to the topic. The ARN is
%% displayed in
%% the SNS console.
%%
%% You can specify the source type, and lists of Amazon Redshift source IDs,
%% event
%% categories, and event severities. Notifications will be sent for all
%% events you want
%% that match those criteria. For example, you can specify source type =
%% cluster, source ID
%% = my-cluster-1 and mycluster2, event categories = Availability, Backup,
%% and severity =
%% ERROR. The subscription will only send notifications for those ERROR
%% events in the
%% Availability and Backup categories for the specified clusters.
%%
%% If you specify both the source type and source IDs, such as source type =
%% cluster
%% and source identifier = my-cluster-1, notifications will be sent for all
%% the cluster
%% events for my-cluster-1. If you specify a source type but do not specify a
%% source
%% identifier, you will receive notice of the events for the objects of that
%% type in your
%% Amazon Web Services account. If you do not specify either the SourceType
%% nor the SourceIdentifier, you
%% will be notified of events generated from all Amazon Redshift sources
%% belonging to your Amazon Web Services account. You must specify a source
%% type if you specify a source ID.
-spec create_event_subscription(aws_client:aws_client(), create_event_subscription_message()) ->
    {ok, create_event_subscription_result(), tuple()} |
    {error, any()} |
    {error, create_event_subscription_errors(), tuple()}.
create_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_event_subscription(Client, Input, []).

-spec create_event_subscription(aws_client:aws_client(), create_event_subscription_message(), proplists:proplist()) ->
    {ok, create_event_subscription_result(), tuple()} |
    {error, any()} |
    {error, create_event_subscription_errors(), tuple()}.
create_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEventSubscription">>, Input, Options).

%% @doc Creates an HSM client certificate that an Amazon Redshift cluster
%% will use to connect to
%% the client's HSM in order to store and retrieve the keys used to
%% encrypt the cluster
%% databases.
%%
%% The command returns a public key, which you must store in the HSM. In
%% addition to
%% creating the HSM certificate, you must create an Amazon Redshift HSM
%% configuration that
%% provides a cluster the information needed to store and use encryption keys
%% in the HSM.
%% For more information, go to Hardware Security Modules:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html#working-with-HSM
%% in the Amazon Redshift Cluster Management Guide.
-spec create_hsm_client_certificate(aws_client:aws_client(), create_hsm_client_certificate_message()) ->
    {ok, create_hsm_client_certificate_result(), tuple()} |
    {error, any()} |
    {error, create_hsm_client_certificate_errors(), tuple()}.
create_hsm_client_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hsm_client_certificate(Client, Input, []).

-spec create_hsm_client_certificate(aws_client:aws_client(), create_hsm_client_certificate_message(), proplists:proplist()) ->
    {ok, create_hsm_client_certificate_result(), tuple()} |
    {error, any()} |
    {error, create_hsm_client_certificate_errors(), tuple()}.
create_hsm_client_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHsmClientCertificate">>, Input, Options).

%% @doc Creates an HSM configuration that contains the information required
%% by an Amazon Redshift
%% cluster to store and use database encryption keys in a Hardware Security
%% Module (HSM).
%%
%% After creating the HSM configuration, you can specify it as a parameter
%% when creating a
%% cluster. The cluster will then store its encryption keys in the HSM.
%%
%% In addition to creating an HSM configuration, you must also create an HSM
%% client
%% certificate. For more information, go to Hardware Security Modules:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-HSM.html
%% in the Amazon Redshift Cluster Management Guide.
-spec create_hsm_configuration(aws_client:aws_client(), create_hsm_configuration_message()) ->
    {ok, create_hsm_configuration_result(), tuple()} |
    {error, any()} |
    {error, create_hsm_configuration_errors(), tuple()}.
create_hsm_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hsm_configuration(Client, Input, []).

-spec create_hsm_configuration(aws_client:aws_client(), create_hsm_configuration_message(), proplists:proplist()) ->
    {ok, create_hsm_configuration_result(), tuple()} |
    {error, any()} |
    {error, create_hsm_configuration_errors(), tuple()}.
create_hsm_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHsmConfiguration">>, Input, Options).

%% @doc Creates a zero-ETL integration or S3 event integration with Amazon
%% Redshift.
-spec create_integration(aws_client:aws_client(), create_integration_message()) ->
    {ok, integration(), tuple()} |
    {error, any()} |
    {error, create_integration_errors(), tuple()}.
create_integration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_integration(Client, Input, []).

-spec create_integration(aws_client:aws_client(), create_integration_message(), proplists:proplist()) ->
    {ok, integration(), tuple()} |
    {error, any()} |
    {error, create_integration_errors(), tuple()}.
create_integration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIntegration">>, Input, Options).

%% @doc Creates an Amazon Redshift application for use with IAM Identity
%% Center.
-spec create_redshift_idc_application(aws_client:aws_client(), create_redshift_idc_application_message()) ->
    {ok, create_redshift_idc_application_result(), tuple()} |
    {error, any()} |
    {error, create_redshift_idc_application_errors(), tuple()}.
create_redshift_idc_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_redshift_idc_application(Client, Input, []).

-spec create_redshift_idc_application(aws_client:aws_client(), create_redshift_idc_application_message(), proplists:proplist()) ->
    {ok, create_redshift_idc_application_result(), tuple()} |
    {error, any()} |
    {error, create_redshift_idc_application_errors(), tuple()}.
create_redshift_idc_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRedshiftIdcApplication">>, Input, Options).

%% @doc Creates a scheduled action.
%%
%% A scheduled action contains a schedule and an Amazon Redshift API action.
%% For example, you can create a schedule of when to run the
%% `ResizeCluster' API operation.
-spec create_scheduled_action(aws_client:aws_client(), create_scheduled_action_message()) ->
    {ok, scheduled_action(), tuple()} |
    {error, any()} |
    {error, create_scheduled_action_errors(), tuple()}.
create_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_scheduled_action(Client, Input, []).

-spec create_scheduled_action(aws_client:aws_client(), create_scheduled_action_message(), proplists:proplist()) ->
    {ok, scheduled_action(), tuple()} |
    {error, any()} |
    {error, create_scheduled_action_errors(), tuple()}.
create_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateScheduledAction">>, Input, Options).

%% @doc Creates a snapshot copy grant that permits Amazon Redshift to use an
%% encrypted symmetric key
%% from Key Management Service (KMS) to encrypt copied snapshots in a
%% destination region.
%%
%% For more information about managing snapshot copy grants, go to
%% Amazon Redshift Database Encryption:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html
%% in the Amazon Redshift Cluster Management Guide.
-spec create_snapshot_copy_grant(aws_client:aws_client(), create_snapshot_copy_grant_message()) ->
    {ok, create_snapshot_copy_grant_result(), tuple()} |
    {error, any()} |
    {error, create_snapshot_copy_grant_errors(), tuple()}.
create_snapshot_copy_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshot_copy_grant(Client, Input, []).

-spec create_snapshot_copy_grant(aws_client:aws_client(), create_snapshot_copy_grant_message(), proplists:proplist()) ->
    {ok, create_snapshot_copy_grant_result(), tuple()} |
    {error, any()} |
    {error, create_snapshot_copy_grant_errors(), tuple()}.
create_snapshot_copy_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshotCopyGrant">>, Input, Options).

%% @doc Create a snapshot schedule that can be associated to a cluster and
%% which overrides the default system backup schedule.
-spec create_snapshot_schedule(aws_client:aws_client(), create_snapshot_schedule_message()) ->
    {ok, snapshot_schedule(), tuple()} |
    {error, any()} |
    {error, create_snapshot_schedule_errors(), tuple()}.
create_snapshot_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshot_schedule(Client, Input, []).

-spec create_snapshot_schedule(aws_client:aws_client(), create_snapshot_schedule_message(), proplists:proplist()) ->
    {ok, snapshot_schedule(), tuple()} |
    {error, any()} |
    {error, create_snapshot_schedule_errors(), tuple()}.
create_snapshot_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshotSchedule">>, Input, Options).

%% @doc Adds tags to a cluster.
%%
%% A resource can have up to 50 tags. If you try to create more than 50 tags
%% for a
%% resource, you will receive an error and the attempt will fail.
%%
%% If you specify a key that already exists for the resource, the value for
%% that key
%% will be updated with the new value.
-spec create_tags(aws_client:aws_client(), create_tags_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_tags_errors(), tuple()}.
create_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_tags(Client, Input, []).

-spec create_tags(aws_client:aws_client(), create_tags_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_tags_errors(), tuple()}.
create_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTags">>, Input, Options).

%% @doc Creates a usage limit for a specified Amazon Redshift feature on a
%% cluster.
%%
%% The usage limit is identified by the returned usage limit identifier.
-spec create_usage_limit(aws_client:aws_client(), create_usage_limit_message()) ->
    {ok, usage_limit(), tuple()} |
    {error, any()} |
    {error, create_usage_limit_errors(), tuple()}.
create_usage_limit(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_usage_limit(Client, Input, []).

-spec create_usage_limit(aws_client:aws_client(), create_usage_limit_message(), proplists:proplist()) ->
    {ok, usage_limit(), tuple()} |
    {error, any()} |
    {error, create_usage_limit_errors(), tuple()}.
create_usage_limit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUsageLimit">>, Input, Options).

%% @doc From a datashare producer account, removes authorization from the
%% specified datashare.
-spec deauthorize_data_share(aws_client:aws_client(), deauthorize_data_share_message()) ->
    {ok, data_share(), tuple()} |
    {error, any()} |
    {error, deauthorize_data_share_errors(), tuple()}.
deauthorize_data_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    deauthorize_data_share(Client, Input, []).

-spec deauthorize_data_share(aws_client:aws_client(), deauthorize_data_share_message(), proplists:proplist()) ->
    {ok, data_share(), tuple()} |
    {error, any()} |
    {error, deauthorize_data_share_errors(), tuple()}.
deauthorize_data_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeauthorizeDataShare">>, Input, Options).

%% @doc Deletes an authentication profile.
-spec delete_authentication_profile(aws_client:aws_client(), delete_authentication_profile_message()) ->
    {ok, delete_authentication_profile_result(), tuple()} |
    {error, any()} |
    {error, delete_authentication_profile_errors(), tuple()}.
delete_authentication_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_authentication_profile(Client, Input, []).

-spec delete_authentication_profile(aws_client:aws_client(), delete_authentication_profile_message(), proplists:proplist()) ->
    {ok, delete_authentication_profile_result(), tuple()} |
    {error, any()} |
    {error, delete_authentication_profile_errors(), tuple()}.
delete_authentication_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAuthenticationProfile">>, Input, Options).

%% @doc Deletes a previously provisioned cluster without its final snapshot
%% being created.
%%
%% A successful response from the web
%% service indicates that the request was received correctly. Use
%% `DescribeClusters' to monitor the status of the deletion. The delete
%% operation cannot be canceled or reverted once submitted.
%% For more information about managing clusters, go to
%% Amazon Redshift Clusters:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html
%% in the Amazon Redshift Cluster Management Guide.
%%
%% If you want to shut down the cluster and retain it for future use, set
%% SkipFinalClusterSnapshot to `false' and specify a
%% name for FinalClusterSnapshotIdentifier. You can later restore this
%% snapshot to resume using the cluster. If a final cluster snapshot is
%% requested, the
%% status of the cluster will be &quot;final-snapshot&quot; while the
%% snapshot is being taken, then
%% it's &quot;deleting&quot; once Amazon Redshift begins deleting the
%% cluster.
%%
%% For more information about managing clusters, go to
%% Amazon Redshift Clusters:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html
%% in the Amazon Redshift Cluster Management Guide.
-spec delete_cluster(aws_client:aws_client(), delete_cluster_message()) ->
    {ok, delete_cluster_result(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cluster(Client, Input, []).

-spec delete_cluster(aws_client:aws_client(), delete_cluster_message(), proplists:proplist()) ->
    {ok, delete_cluster_result(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCluster">>, Input, Options).

%% @doc Deletes a specified Amazon Redshift parameter group.
%%
%% You cannot delete a parameter group if it is associated with a
%% cluster.
-spec delete_cluster_parameter_group(aws_client:aws_client(), delete_cluster_parameter_group_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cluster_parameter_group_errors(), tuple()}.
delete_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cluster_parameter_group(Client, Input, []).

-spec delete_cluster_parameter_group(aws_client:aws_client(), delete_cluster_parameter_group_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cluster_parameter_group_errors(), tuple()}.
delete_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteClusterParameterGroup">>, Input, Options).

%% @doc Deletes an Amazon Redshift security group.
%%
%% You cannot delete a security group that is associated with any clusters.
%% You
%% cannot delete the default security group.
%%
%% For information about managing security groups, go to
%% Amazon Redshift Cluster Security Groups:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html
%% in the
%% Amazon Redshift Cluster Management Guide.
-spec delete_cluster_security_group(aws_client:aws_client(), delete_cluster_security_group_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cluster_security_group_errors(), tuple()}.
delete_cluster_security_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cluster_security_group(Client, Input, []).

-spec delete_cluster_security_group(aws_client:aws_client(), delete_cluster_security_group_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cluster_security_group_errors(), tuple()}.
delete_cluster_security_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteClusterSecurityGroup">>, Input, Options).

%% @doc Deletes the specified manual snapshot.
%%
%% The snapshot must be in the
%% `available' state, with no other users authorized to access the
%% snapshot.
%%
%% Unlike automated snapshots, manual snapshots are retained even after you
%% delete
%% your cluster. Amazon Redshift does not delete your manual snapshots. You
%% must delete manual
%% snapshot explicitly to avoid getting charged. If other accounts are
%% authorized to access
%% the snapshot, you must revoke all of the authorizations before you can
%% delete the
%% snapshot.
-spec delete_cluster_snapshot(aws_client:aws_client(), delete_cluster_snapshot_message()) ->
    {ok, delete_cluster_snapshot_result(), tuple()} |
    {error, any()} |
    {error, delete_cluster_snapshot_errors(), tuple()}.
delete_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cluster_snapshot(Client, Input, []).

-spec delete_cluster_snapshot(aws_client:aws_client(), delete_cluster_snapshot_message(), proplists:proplist()) ->
    {ok, delete_cluster_snapshot_result(), tuple()} |
    {error, any()} |
    {error, delete_cluster_snapshot_errors(), tuple()}.
delete_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteClusterSnapshot">>, Input, Options).

%% @doc Deletes the specified cluster subnet group.
-spec delete_cluster_subnet_group(aws_client:aws_client(), delete_cluster_subnet_group_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cluster_subnet_group_errors(), tuple()}.
delete_cluster_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cluster_subnet_group(Client, Input, []).

-spec delete_cluster_subnet_group(aws_client:aws_client(), delete_cluster_subnet_group_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cluster_subnet_group_errors(), tuple()}.
delete_cluster_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteClusterSubnetGroup">>, Input, Options).

%% @doc Contains information about deleting a custom domain association for a
%% cluster.
-spec delete_custom_domain_association(aws_client:aws_client(), delete_custom_domain_association_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_custom_domain_association_errors(), tuple()}.
delete_custom_domain_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_custom_domain_association(Client, Input, []).

-spec delete_custom_domain_association(aws_client:aws_client(), delete_custom_domain_association_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_custom_domain_association_errors(), tuple()}.
delete_custom_domain_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCustomDomainAssociation">>, Input, Options).

%% @doc Deletes a Redshift-managed VPC endpoint.
-spec delete_endpoint_access(aws_client:aws_client(), delete_endpoint_access_message()) ->
    {ok, endpoint_access(), tuple()} |
    {error, any()} |
    {error, delete_endpoint_access_errors(), tuple()}.
delete_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_endpoint_access(Client, Input, []).

-spec delete_endpoint_access(aws_client:aws_client(), delete_endpoint_access_message(), proplists:proplist()) ->
    {ok, endpoint_access(), tuple()} |
    {error, any()} |
    {error, delete_endpoint_access_errors(), tuple()}.
delete_endpoint_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEndpointAccess">>, Input, Options).

%% @doc Deletes an Amazon Redshift event notification subscription.
-spec delete_event_subscription(aws_client:aws_client(), delete_event_subscription_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_event_subscription_errors(), tuple()}.
delete_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event_subscription(Client, Input, []).

-spec delete_event_subscription(aws_client:aws_client(), delete_event_subscription_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_event_subscription_errors(), tuple()}.
delete_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventSubscription">>, Input, Options).

%% @doc Deletes the specified HSM client certificate.
-spec delete_hsm_client_certificate(aws_client:aws_client(), delete_hsm_client_certificate_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_hsm_client_certificate_errors(), tuple()}.
delete_hsm_client_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_hsm_client_certificate(Client, Input, []).

-spec delete_hsm_client_certificate(aws_client:aws_client(), delete_hsm_client_certificate_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_hsm_client_certificate_errors(), tuple()}.
delete_hsm_client_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHsmClientCertificate">>, Input, Options).

%% @doc Deletes the specified Amazon Redshift HSM configuration.
-spec delete_hsm_configuration(aws_client:aws_client(), delete_hsm_configuration_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_hsm_configuration_errors(), tuple()}.
delete_hsm_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_hsm_configuration(Client, Input, []).

-spec delete_hsm_configuration(aws_client:aws_client(), delete_hsm_configuration_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_hsm_configuration_errors(), tuple()}.
delete_hsm_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHsmConfiguration">>, Input, Options).

%% @doc Deletes a zero-ETL integration or S3 event integration with Amazon
%% Redshift.
-spec delete_integration(aws_client:aws_client(), delete_integration_message()) ->
    {ok, integration(), tuple()} |
    {error, any()} |
    {error, delete_integration_errors(), tuple()}.
delete_integration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_integration(Client, Input, []).

-spec delete_integration(aws_client:aws_client(), delete_integration_message(), proplists:proplist()) ->
    {ok, integration(), tuple()} |
    {error, any()} |
    {error, delete_integration_errors(), tuple()}.
delete_integration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIntegration">>, Input, Options).

%% @doc Deletes a partner integration from a cluster.
%%
%% Data can still flow to the cluster until the integration is deleted at the
%% partner's website.
-spec delete_partner(aws_client:aws_client(), partner_integration_input_message()) ->
    {ok, partner_integration_output_message(), tuple()} |
    {error, any()} |
    {error, delete_partner_errors(), tuple()}.
delete_partner(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_partner(Client, Input, []).

-spec delete_partner(aws_client:aws_client(), partner_integration_input_message(), proplists:proplist()) ->
    {ok, partner_integration_output_message(), tuple()} |
    {error, any()} |
    {error, delete_partner_errors(), tuple()}.
delete_partner(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePartner">>, Input, Options).

%% @doc Deletes an Amazon Redshift IAM Identity Center application.
-spec delete_redshift_idc_application(aws_client:aws_client(), delete_redshift_idc_application_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_redshift_idc_application_errors(), tuple()}.
delete_redshift_idc_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_redshift_idc_application(Client, Input, []).

-spec delete_redshift_idc_application(aws_client:aws_client(), delete_redshift_idc_application_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_redshift_idc_application_errors(), tuple()}.
delete_redshift_idc_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRedshiftIdcApplication">>, Input, Options).

%% @doc Deletes the resource policy for a specified resource.
-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Deletes a scheduled action.
-spec delete_scheduled_action(aws_client:aws_client(), delete_scheduled_action_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_scheduled_action_errors(), tuple()}.
delete_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_scheduled_action(Client, Input, []).

-spec delete_scheduled_action(aws_client:aws_client(), delete_scheduled_action_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_scheduled_action_errors(), tuple()}.
delete_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteScheduledAction">>, Input, Options).

%% @doc Deletes the specified snapshot copy grant.
-spec delete_snapshot_copy_grant(aws_client:aws_client(), delete_snapshot_copy_grant_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_snapshot_copy_grant_errors(), tuple()}.
delete_snapshot_copy_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_snapshot_copy_grant(Client, Input, []).

-spec delete_snapshot_copy_grant(aws_client:aws_client(), delete_snapshot_copy_grant_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_snapshot_copy_grant_errors(), tuple()}.
delete_snapshot_copy_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSnapshotCopyGrant">>, Input, Options).

%% @doc Deletes a snapshot schedule.
-spec delete_snapshot_schedule(aws_client:aws_client(), delete_snapshot_schedule_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_snapshot_schedule_errors(), tuple()}.
delete_snapshot_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_snapshot_schedule(Client, Input, []).

-spec delete_snapshot_schedule(aws_client:aws_client(), delete_snapshot_schedule_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_snapshot_schedule_errors(), tuple()}.
delete_snapshot_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSnapshotSchedule">>, Input, Options).

%% @doc Deletes tags from a resource.
%%
%% You must provide the ARN of the resource
%% from which you want to delete the tag or tags.
-spec delete_tags(aws_client:aws_client(), delete_tags_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_tags_errors(), tuple()}.
delete_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tags(Client, Input, []).

-spec delete_tags(aws_client:aws_client(), delete_tags_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_tags_errors(), tuple()}.
delete_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTags">>, Input, Options).

%% @doc Deletes a usage limit from a cluster.
-spec delete_usage_limit(aws_client:aws_client(), delete_usage_limit_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_usage_limit_errors(), tuple()}.
delete_usage_limit(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_usage_limit(Client, Input, []).

-spec delete_usage_limit(aws_client:aws_client(), delete_usage_limit_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_usage_limit_errors(), tuple()}.
delete_usage_limit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUsageLimit">>, Input, Options).

%% @doc Deregisters a cluster or serverless namespace from the Amazon Web
%% Services Glue Data Catalog.
-spec deregister_namespace(aws_client:aws_client(), deregister_namespace_input_message()) ->
    {ok, deregister_namespace_output_message(), tuple()} |
    {error, any()} |
    {error, deregister_namespace_errors(), tuple()}.
deregister_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_namespace(Client, Input, []).

-spec deregister_namespace(aws_client:aws_client(), deregister_namespace_input_message(), proplists:proplist()) ->
    {ok, deregister_namespace_output_message(), tuple()} |
    {error, any()} |
    {error, deregister_namespace_errors(), tuple()}.
deregister_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterNamespace">>, Input, Options).

%% @doc Returns a list of attributes attached to an account
-spec describe_account_attributes(aws_client:aws_client(), describe_account_attributes_message()) ->
    {ok, account_attribute_list(), tuple()} |
    {error, any()}.
describe_account_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_attributes(Client, Input, []).

-spec describe_account_attributes(aws_client:aws_client(), describe_account_attributes_message(), proplists:proplist()) ->
    {ok, account_attribute_list(), tuple()} |
    {error, any()}.
describe_account_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountAttributes">>, Input, Options).

%% @doc Describes an authentication profile.
-spec describe_authentication_profiles(aws_client:aws_client(), describe_authentication_profiles_message()) ->
    {ok, describe_authentication_profiles_result(), tuple()} |
    {error, any()} |
    {error, describe_authentication_profiles_errors(), tuple()}.
describe_authentication_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_authentication_profiles(Client, Input, []).

-spec describe_authentication_profiles(aws_client:aws_client(), describe_authentication_profiles_message(), proplists:proplist()) ->
    {ok, describe_authentication_profiles_result(), tuple()} |
    {error, any()} |
    {error, describe_authentication_profiles_errors(), tuple()}.
describe_authentication_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAuthenticationProfiles">>, Input, Options).

%% @doc Returns an array of `ClusterDbRevision' objects.
-spec describe_cluster_db_revisions(aws_client:aws_client(), describe_cluster_db_revisions_message()) ->
    {ok, cluster_db_revisions_message(), tuple()} |
    {error, any()} |
    {error, describe_cluster_db_revisions_errors(), tuple()}.
describe_cluster_db_revisions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster_db_revisions(Client, Input, []).

-spec describe_cluster_db_revisions(aws_client:aws_client(), describe_cluster_db_revisions_message(), proplists:proplist()) ->
    {ok, cluster_db_revisions_message(), tuple()} |
    {error, any()} |
    {error, describe_cluster_db_revisions_errors(), tuple()}.
describe_cluster_db_revisions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusterDbRevisions">>, Input, Options).

%% @doc Returns a list of Amazon Redshift parameter groups, including
%% parameter groups you
%% created and the default parameter group.
%%
%% For each parameter group, the response includes
%% the parameter group name, description, and parameter group family name.
%% You can
%% optionally specify a name to retrieve the description of a specific
%% parameter
%% group.
%%
%% For more information about parameters and parameter groups, go to
%% Amazon Redshift Parameter Groups:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html
%% in the Amazon Redshift Cluster Management Guide.
%%
%% If you specify both tag keys and tag values in the same request, Amazon
%% Redshift returns
%% all parameter groups that match any combination of the specified keys and
%% values. For
%% example, if you have `owner' and `environment' for tag keys, and
%% `admin' and `test' for tag values, all parameter groups that
%% have any combination of those values are returned.
%%
%% If both tag keys and values are omitted from the request, parameter groups
%% are
%% returned regardless of whether they have tag keys or values associated
%% with
%% them.
-spec describe_cluster_parameter_groups(aws_client:aws_client(), describe_cluster_parameter_groups_message()) ->
    {ok, cluster_parameter_groups_message(), tuple()} |
    {error, any()} |
    {error, describe_cluster_parameter_groups_errors(), tuple()}.
describe_cluster_parameter_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster_parameter_groups(Client, Input, []).

-spec describe_cluster_parameter_groups(aws_client:aws_client(), describe_cluster_parameter_groups_message(), proplists:proplist()) ->
    {ok, cluster_parameter_groups_message(), tuple()} |
    {error, any()} |
    {error, describe_cluster_parameter_groups_errors(), tuple()}.
describe_cluster_parameter_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusterParameterGroups">>, Input, Options).

%% @doc Returns a detailed list of parameters contained within the specified
%% Amazon Redshift
%% parameter group.
%%
%% For each parameter the response includes information such as parameter
%% name, description, data type, value, whether the parameter value is
%% modifiable, and so
%% on.
%%
%% You can specify source filter to retrieve parameters of only
%% specific type. For example, to retrieve parameters that were modified by a
%% user action
%% such as from `ModifyClusterParameterGroup', you can specify
%% source equal to user.
%%
%% For more information about parameters and parameter groups, go to
%% Amazon Redshift Parameter Groups:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html
%% in the Amazon Redshift Cluster Management Guide.
-spec describe_cluster_parameters(aws_client:aws_client(), describe_cluster_parameters_message()) ->
    {ok, cluster_parameter_group_details(), tuple()} |
    {error, any()} |
    {error, describe_cluster_parameters_errors(), tuple()}.
describe_cluster_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster_parameters(Client, Input, []).

-spec describe_cluster_parameters(aws_client:aws_client(), describe_cluster_parameters_message(), proplists:proplist()) ->
    {ok, cluster_parameter_group_details(), tuple()} |
    {error, any()} |
    {error, describe_cluster_parameters_errors(), tuple()}.
describe_cluster_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusterParameters">>, Input, Options).

%% @doc Returns information about Amazon Redshift security groups.
%%
%% If the name of a security
%% group is specified, the response will contain only information about only
%% that security
%% group.
%%
%% For information about managing security groups, go to
%% Amazon Redshift Cluster Security Groups:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html
%% in the
%% Amazon Redshift Cluster Management Guide.
%%
%% If you specify both tag keys and tag values in the same request, Amazon
%% Redshift returns
%% all security groups that match any combination of the specified keys and
%% values. For
%% example, if you have `owner' and `environment' for tag keys, and
%% `admin' and `test' for tag values, all security groups that
%% have any combination of those values are returned.
%%
%% If both tag keys and values are omitted from the request, security groups
%% are
%% returned regardless of whether they have tag keys or values associated
%% with
%% them.
-spec describe_cluster_security_groups(aws_client:aws_client(), describe_cluster_security_groups_message()) ->
    {ok, cluster_security_group_message(), tuple()} |
    {error, any()} |
    {error, describe_cluster_security_groups_errors(), tuple()}.
describe_cluster_security_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster_security_groups(Client, Input, []).

-spec describe_cluster_security_groups(aws_client:aws_client(), describe_cluster_security_groups_message(), proplists:proplist()) ->
    {ok, cluster_security_group_message(), tuple()} |
    {error, any()} |
    {error, describe_cluster_security_groups_errors(), tuple()}.
describe_cluster_security_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusterSecurityGroups">>, Input, Options).

%% @doc Returns one or more snapshot objects, which contain metadata about
%% your cluster
%% snapshots.
%%
%% By default, this operation returns information about all snapshots of all
%% clusters that are owned by your Amazon Web Services account. No
%% information is returned for
%% snapshots owned by inactive Amazon Web Services accounts.
%%
%% If you specify both tag keys and tag values in the same request, Amazon
%% Redshift returns
%% all snapshots that match any combination of the specified keys and values.
%% For example,
%% if you have `owner' and `environment' for tag keys, and
%% `admin' and `test' for tag values, all snapshots that have any
%% combination of those values are returned. Only snapshots that you own are
%% returned in
%% the response; shared snapshots are not returned with the tag key and tag
%% value request
%% parameters.
%%
%% If both tag keys and values are omitted from the request, snapshots are
%% returned
%% regardless of whether they have tag keys or values associated with them.
-spec describe_cluster_snapshots(aws_client:aws_client(), describe_cluster_snapshots_message()) ->
    {ok, snapshot_message(), tuple()} |
    {error, any()} |
    {error, describe_cluster_snapshots_errors(), tuple()}.
describe_cluster_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster_snapshots(Client, Input, []).

-spec describe_cluster_snapshots(aws_client:aws_client(), describe_cluster_snapshots_message(), proplists:proplist()) ->
    {ok, snapshot_message(), tuple()} |
    {error, any()} |
    {error, describe_cluster_snapshots_errors(), tuple()}.
describe_cluster_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusterSnapshots">>, Input, Options).

%% @doc Returns one or more cluster subnet group objects, which contain
%% metadata about your
%% cluster subnet groups.
%%
%% By default, this operation returns information about all cluster
%% subnet groups that are defined in your Amazon Web Services account.
%%
%% If you specify both tag keys and tag values in the same request, Amazon
%% Redshift returns
%% all subnet groups that match any combination of the specified keys and
%% values. For
%% example, if you have `owner' and `environment' for tag keys, and
%% `admin' and `test' for tag values, all subnet groups that have
%% any combination of those values are returned.
%%
%% If both tag keys and values are omitted from the request, subnet groups
%% are
%% returned regardless of whether they have tag keys or values associated
%% with
%% them.
-spec describe_cluster_subnet_groups(aws_client:aws_client(), describe_cluster_subnet_groups_message()) ->
    {ok, cluster_subnet_group_message(), tuple()} |
    {error, any()} |
    {error, describe_cluster_subnet_groups_errors(), tuple()}.
describe_cluster_subnet_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster_subnet_groups(Client, Input, []).

-spec describe_cluster_subnet_groups(aws_client:aws_client(), describe_cluster_subnet_groups_message(), proplists:proplist()) ->
    {ok, cluster_subnet_group_message(), tuple()} |
    {error, any()} |
    {error, describe_cluster_subnet_groups_errors(), tuple()}.
describe_cluster_subnet_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusterSubnetGroups">>, Input, Options).

%% @doc Returns a list of all the available maintenance tracks.
-spec describe_cluster_tracks(aws_client:aws_client(), describe_cluster_tracks_message()) ->
    {ok, track_list_message(), tuple()} |
    {error, any()} |
    {error, describe_cluster_tracks_errors(), tuple()}.
describe_cluster_tracks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster_tracks(Client, Input, []).

-spec describe_cluster_tracks(aws_client:aws_client(), describe_cluster_tracks_message(), proplists:proplist()) ->
    {ok, track_list_message(), tuple()} |
    {error, any()} |
    {error, describe_cluster_tracks_errors(), tuple()}.
describe_cluster_tracks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusterTracks">>, Input, Options).

%% @doc Returns descriptions of the available Amazon Redshift cluster
%% versions.
%%
%% You can call this
%% operation even before creating any clusters to learn more about the Amazon
%% Redshift versions.
%%
%% For more information about managing clusters, go to
%% Amazon Redshift Clusters:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html
%% in the Amazon Redshift Cluster Management Guide.
-spec describe_cluster_versions(aws_client:aws_client(), describe_cluster_versions_message()) ->
    {ok, cluster_versions_message(), tuple()} |
    {error, any()}.
describe_cluster_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster_versions(Client, Input, []).

-spec describe_cluster_versions(aws_client:aws_client(), describe_cluster_versions_message(), proplists:proplist()) ->
    {ok, cluster_versions_message(), tuple()} |
    {error, any()}.
describe_cluster_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusterVersions">>, Input, Options).

%% @doc Returns properties of provisioned clusters including general cluster
%% properties,
%% cluster database properties, maintenance and backup properties, and
%% security and access
%% properties.
%%
%% This operation supports pagination.
%% For more information about managing clusters, go to
%% Amazon Redshift Clusters:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html
%% in the Amazon Redshift Cluster Management Guide.
%%
%% If you specify both tag keys and tag values in the same request, Amazon
%% Redshift returns
%% all clusters that match any combination of the specified keys and values.
%% For example,
%% if you have `owner' and `environment' for tag keys, and
%% `admin' and `test' for tag values, all clusters that have any
%% combination of those values are returned.
%%
%% If both tag keys and values are omitted from the request, clusters are
%% returned
%% regardless of whether they have tag keys or values associated with them.
-spec describe_clusters(aws_client:aws_client(), describe_clusters_message()) ->
    {ok, clusters_message(), tuple()} |
    {error, any()} |
    {error, describe_clusters_errors(), tuple()}.
describe_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_clusters(Client, Input, []).

-spec describe_clusters(aws_client:aws_client(), describe_clusters_message(), proplists:proplist()) ->
    {ok, clusters_message(), tuple()} |
    {error, any()} |
    {error, describe_clusters_errors(), tuple()}.
describe_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusters">>, Input, Options).

%% @doc Contains information about custom domain associations for a cluster.
-spec describe_custom_domain_associations(aws_client:aws_client(), describe_custom_domain_associations_message()) ->
    {ok, custom_domain_associations_message(), tuple()} |
    {error, any()} |
    {error, describe_custom_domain_associations_errors(), tuple()}.
describe_custom_domain_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_custom_domain_associations(Client, Input, []).

-spec describe_custom_domain_associations(aws_client:aws_client(), describe_custom_domain_associations_message(), proplists:proplist()) ->
    {ok, custom_domain_associations_message(), tuple()} |
    {error, any()} |
    {error, describe_custom_domain_associations_errors(), tuple()}.
describe_custom_domain_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCustomDomainAssociations">>, Input, Options).

%% @doc Shows the status of any inbound or outbound datashares available in
%% the specified
%% account.
-spec describe_data_shares(aws_client:aws_client(), describe_data_shares_message()) ->
    {ok, describe_data_shares_result(), tuple()} |
    {error, any()} |
    {error, describe_data_shares_errors(), tuple()}.
describe_data_shares(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_shares(Client, Input, []).

-spec describe_data_shares(aws_client:aws_client(), describe_data_shares_message(), proplists:proplist()) ->
    {ok, describe_data_shares_result(), tuple()} |
    {error, any()} |
    {error, describe_data_shares_errors(), tuple()}.
describe_data_shares(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataShares">>, Input, Options).

%% @doc Returns a list of datashares where the account identifier being
%% called is a consumer account identifier.
-spec describe_data_shares_for_consumer(aws_client:aws_client(), describe_data_shares_for_consumer_message()) ->
    {ok, describe_data_shares_for_consumer_result(), tuple()} |
    {error, any()} |
    {error, describe_data_shares_for_consumer_errors(), tuple()}.
describe_data_shares_for_consumer(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_shares_for_consumer(Client, Input, []).

-spec describe_data_shares_for_consumer(aws_client:aws_client(), describe_data_shares_for_consumer_message(), proplists:proplist()) ->
    {ok, describe_data_shares_for_consumer_result(), tuple()} |
    {error, any()} |
    {error, describe_data_shares_for_consumer_errors(), tuple()}.
describe_data_shares_for_consumer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataSharesForConsumer">>, Input, Options).

%% @doc Returns a list of datashares when the account identifier being called
%% is a producer account identifier.
-spec describe_data_shares_for_producer(aws_client:aws_client(), describe_data_shares_for_producer_message()) ->
    {ok, describe_data_shares_for_producer_result(), tuple()} |
    {error, any()} |
    {error, describe_data_shares_for_producer_errors(), tuple()}.
describe_data_shares_for_producer(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_shares_for_producer(Client, Input, []).

-spec describe_data_shares_for_producer(aws_client:aws_client(), describe_data_shares_for_producer_message(), proplists:proplist()) ->
    {ok, describe_data_shares_for_producer_result(), tuple()} |
    {error, any()} |
    {error, describe_data_shares_for_producer_errors(), tuple()}.
describe_data_shares_for_producer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataSharesForProducer">>, Input, Options).

%% @doc Returns a list of parameter settings for the specified parameter
%% group
%% family.
%%
%% For more information about parameters and parameter groups, go to
%% Amazon Redshift Parameter Groups:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html
%% in the Amazon Redshift Cluster Management Guide.
-spec describe_default_cluster_parameters(aws_client:aws_client(), describe_default_cluster_parameters_message()) ->
    {ok, describe_default_cluster_parameters_result(), tuple()} |
    {error, any()}.
describe_default_cluster_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_default_cluster_parameters(Client, Input, []).

-spec describe_default_cluster_parameters(aws_client:aws_client(), describe_default_cluster_parameters_message(), proplists:proplist()) ->
    {ok, describe_default_cluster_parameters_result(), tuple()} |
    {error, any()}.
describe_default_cluster_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDefaultClusterParameters">>, Input, Options).

%% @doc Describes a Redshift-managed VPC endpoint.
-spec describe_endpoint_access(aws_client:aws_client(), describe_endpoint_access_message()) ->
    {ok, endpoint_access_list(), tuple()} |
    {error, any()} |
    {error, describe_endpoint_access_errors(), tuple()}.
describe_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoint_access(Client, Input, []).

-spec describe_endpoint_access(aws_client:aws_client(), describe_endpoint_access_message(), proplists:proplist()) ->
    {ok, endpoint_access_list(), tuple()} |
    {error, any()} |
    {error, describe_endpoint_access_errors(), tuple()}.
describe_endpoint_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpointAccess">>, Input, Options).

%% @doc Describes an endpoint authorization.
-spec describe_endpoint_authorization(aws_client:aws_client(), describe_endpoint_authorization_message()) ->
    {ok, endpoint_authorization_list(), tuple()} |
    {error, any()} |
    {error, describe_endpoint_authorization_errors(), tuple()}.
describe_endpoint_authorization(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoint_authorization(Client, Input, []).

-spec describe_endpoint_authorization(aws_client:aws_client(), describe_endpoint_authorization_message(), proplists:proplist()) ->
    {ok, endpoint_authorization_list(), tuple()} |
    {error, any()} |
    {error, describe_endpoint_authorization_errors(), tuple()}.
describe_endpoint_authorization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpointAuthorization">>, Input, Options).

%% @doc Displays a list of event categories for all event source types, or
%% for a specified
%% source type.
%%
%% For a list of the event categories and source types, go to Amazon Redshift
%% Event
%% Notifications:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-event-notifications.html.
-spec describe_event_categories(aws_client:aws_client(), describe_event_categories_message()) ->
    {ok, event_categories_message(), tuple()} |
    {error, any()}.
describe_event_categories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_categories(Client, Input, []).

-spec describe_event_categories(aws_client:aws_client(), describe_event_categories_message(), proplists:proplist()) ->
    {ok, event_categories_message(), tuple()} |
    {error, any()}.
describe_event_categories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventCategories">>, Input, Options).

%% @doc Lists descriptions of all the Amazon Redshift event notification
%% subscriptions for a
%% customer account.
%%
%% If you specify a subscription name, lists the description for that
%% subscription.
%%
%% If you specify both tag keys and tag values in the same request, Amazon
%% Redshift returns
%% all event notification subscriptions that match any combination of the
%% specified keys
%% and values. For example, if you have `owner' and `environment' for
%% tag keys, and `admin' and `test' for tag values, all subscriptions
%% that have any combination of those values are returned.
%%
%% If both tag keys and values are omitted from the request, subscriptions
%% are
%% returned regardless of whether they have tag keys or values associated
%% with
%% them.
-spec describe_event_subscriptions(aws_client:aws_client(), describe_event_subscriptions_message()) ->
    {ok, event_subscriptions_message(), tuple()} |
    {error, any()} |
    {error, describe_event_subscriptions_errors(), tuple()}.
describe_event_subscriptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_subscriptions(Client, Input, []).

-spec describe_event_subscriptions(aws_client:aws_client(), describe_event_subscriptions_message(), proplists:proplist()) ->
    {ok, event_subscriptions_message(), tuple()} |
    {error, any()} |
    {error, describe_event_subscriptions_errors(), tuple()}.
describe_event_subscriptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventSubscriptions">>, Input, Options).

%% @doc Returns events related to clusters, security groups, snapshots, and
%% parameter
%% groups for the past 14 days.
%%
%% Events specific to a particular cluster, security group,
%% snapshot or parameter group can be obtained by providing the name as a
%% parameter. By
%% default, the past hour of events are returned.
-spec describe_events(aws_client:aws_client(), describe_events_message()) ->
    {ok, events_message(), tuple()} |
    {error, any()}.
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).

-spec describe_events(aws_client:aws_client(), describe_events_message(), proplists:proplist()) ->
    {ok, events_message(), tuple()} |
    {error, any()}.
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

%% @doc Returns information about the specified HSM client certificate.
%%
%% If no certificate
%% ID is specified, returns information about all the HSM certificates owned
%% by your Amazon Web Services account.
%%
%% If you specify both tag keys and tag values in the same request, Amazon
%% Redshift returns
%% all HSM client certificates that match any combination of the specified
%% keys and values.
%% For example, if you have `owner' and `environment' for tag keys,
%% and `admin' and `test' for tag values, all HSM client certificates
%% that have any combination of those values are returned.
%%
%% If both tag keys and values are omitted from the request, HSM client
%% certificates
%% are returned regardless of whether they have tag keys or values associated
%% with
%% them.
-spec describe_hsm_client_certificates(aws_client:aws_client(), describe_hsm_client_certificates_message()) ->
    {ok, hsm_client_certificate_message(), tuple()} |
    {error, any()} |
    {error, describe_hsm_client_certificates_errors(), tuple()}.
describe_hsm_client_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_hsm_client_certificates(Client, Input, []).

-spec describe_hsm_client_certificates(aws_client:aws_client(), describe_hsm_client_certificates_message(), proplists:proplist()) ->
    {ok, hsm_client_certificate_message(), tuple()} |
    {error, any()} |
    {error, describe_hsm_client_certificates_errors(), tuple()}.
describe_hsm_client_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHsmClientCertificates">>, Input, Options).

%% @doc Returns information about the specified Amazon Redshift HSM
%% configuration.
%%
%% If no
%% configuration ID is specified, returns information about all the HSM
%% configurations
%% owned by your Amazon Web Services account.
%%
%% If you specify both tag keys and tag values in the same request, Amazon
%% Redshift returns
%% all HSM connections that match any combination of the specified keys and
%% values. For
%% example, if you have `owner' and `environment' for tag keys, and
%% `admin' and `test' for tag values, all HSM connections that
%% have any combination of those values are returned.
%%
%% If both tag keys and values are omitted from the request, HSM connections
%% are
%% returned regardless of whether they have tag keys or values associated
%% with
%% them.
-spec describe_hsm_configurations(aws_client:aws_client(), describe_hsm_configurations_message()) ->
    {ok, hsm_configuration_message(), tuple()} |
    {error, any()} |
    {error, describe_hsm_configurations_errors(), tuple()}.
describe_hsm_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_hsm_configurations(Client, Input, []).

-spec describe_hsm_configurations(aws_client:aws_client(), describe_hsm_configurations_message(), proplists:proplist()) ->
    {ok, hsm_configuration_message(), tuple()} |
    {error, any()} |
    {error, describe_hsm_configurations_errors(), tuple()}.
describe_hsm_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHsmConfigurations">>, Input, Options).

%% @doc Returns a list of inbound integrations.
-spec describe_inbound_integrations(aws_client:aws_client(), describe_inbound_integrations_message()) ->
    {ok, inbound_integrations_message(), tuple()} |
    {error, any()} |
    {error, describe_inbound_integrations_errors(), tuple()}.
describe_inbound_integrations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_inbound_integrations(Client, Input, []).

-spec describe_inbound_integrations(aws_client:aws_client(), describe_inbound_integrations_message(), proplists:proplist()) ->
    {ok, inbound_integrations_message(), tuple()} |
    {error, any()} |
    {error, describe_inbound_integrations_errors(), tuple()}.
describe_inbound_integrations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInboundIntegrations">>, Input, Options).

%% @doc Describes one or more zero-ETL or S3 event integrations with Amazon
%% Redshift.
-spec describe_integrations(aws_client:aws_client(), describe_integrations_message()) ->
    {ok, integrations_message(), tuple()} |
    {error, any()} |
    {error, describe_integrations_errors(), tuple()}.
describe_integrations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_integrations(Client, Input, []).

-spec describe_integrations(aws_client:aws_client(), describe_integrations_message(), proplists:proplist()) ->
    {ok, integrations_message(), tuple()} |
    {error, any()} |
    {error, describe_integrations_errors(), tuple()}.
describe_integrations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIntegrations">>, Input, Options).

%% @doc Describes whether information, such as queries and connection
%% attempts, is being
%% logged for the specified Amazon Redshift cluster.
-spec describe_logging_status(aws_client:aws_client(), describe_logging_status_message()) ->
    {ok, logging_status(), tuple()} |
    {error, any()} |
    {error, describe_logging_status_errors(), tuple()}.
describe_logging_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_logging_status(Client, Input, []).

-spec describe_logging_status(aws_client:aws_client(), describe_logging_status_message(), proplists:proplist()) ->
    {ok, logging_status(), tuple()} |
    {error, any()} |
    {error, describe_logging_status_errors(), tuple()}.
describe_logging_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoggingStatus">>, Input, Options).

%% @doc Returns properties of possible node configurations such as node type,
%% number of nodes, and
%% disk usage for the specified action type.
-spec describe_node_configuration_options(aws_client:aws_client(), describe_node_configuration_options_message()) ->
    {ok, node_configuration_options_message(), tuple()} |
    {error, any()} |
    {error, describe_node_configuration_options_errors(), tuple()}.
describe_node_configuration_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_node_configuration_options(Client, Input, []).

-spec describe_node_configuration_options(aws_client:aws_client(), describe_node_configuration_options_message(), proplists:proplist()) ->
    {ok, node_configuration_options_message(), tuple()} |
    {error, any()} |
    {error, describe_node_configuration_options_errors(), tuple()}.
describe_node_configuration_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNodeConfigurationOptions">>, Input, Options).

%% @doc Returns a list of orderable cluster options.
%%
%% Before you create a new cluster you
%% can use this operation to find what options are available, such as the EC2
%% Availability
%% Zones (AZ) in the specific Amazon Web Services Region that you can
%% specify, and the node types you can
%% request. The node types differ by available storage, memory, CPU and
%% price. With the
%% cost involved you might want to obtain a list of cluster options in the
%% specific region
%% and specify values when creating a cluster.
%% For more information about managing clusters, go to
%% Amazon Redshift Clusters:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html
%% in the Amazon Redshift Cluster Management Guide.
-spec describe_orderable_cluster_options(aws_client:aws_client(), describe_orderable_cluster_options_message()) ->
    {ok, orderable_cluster_options_message(), tuple()} |
    {error, any()}.
describe_orderable_cluster_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_orderable_cluster_options(Client, Input, []).

-spec describe_orderable_cluster_options(aws_client:aws_client(), describe_orderable_cluster_options_message(), proplists:proplist()) ->
    {ok, orderable_cluster_options_message(), tuple()} |
    {error, any()}.
describe_orderable_cluster_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrderableClusterOptions">>, Input, Options).

%% @doc Returns information about the partner integrations defined for a
%% cluster.
-spec describe_partners(aws_client:aws_client(), describe_partners_input_message()) ->
    {ok, describe_partners_output_message(), tuple()} |
    {error, any()} |
    {error, describe_partners_errors(), tuple()}.
describe_partners(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_partners(Client, Input, []).

-spec describe_partners(aws_client:aws_client(), describe_partners_input_message(), proplists:proplist()) ->
    {ok, describe_partners_output_message(), tuple()} |
    {error, any()} |
    {error, describe_partners_errors(), tuple()}.
describe_partners(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePartners">>, Input, Options).

%% @doc Lists the Amazon Redshift IAM Identity Center applications.
-spec describe_redshift_idc_applications(aws_client:aws_client(), describe_redshift_idc_applications_message()) ->
    {ok, describe_redshift_idc_applications_result(), tuple()} |
    {error, any()} |
    {error, describe_redshift_idc_applications_errors(), tuple()}.
describe_redshift_idc_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_redshift_idc_applications(Client, Input, []).

-spec describe_redshift_idc_applications(aws_client:aws_client(), describe_redshift_idc_applications_message(), proplists:proplist()) ->
    {ok, describe_redshift_idc_applications_result(), tuple()} |
    {error, any()} |
    {error, describe_redshift_idc_applications_errors(), tuple()}.
describe_redshift_idc_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRedshiftIdcApplications">>, Input, Options).

%% @doc Returns exchange status details and associated metadata for a
%% reserved-node
%% exchange.
%%
%% Statuses include such values as in progress and requested.
-spec describe_reserved_node_exchange_status(aws_client:aws_client(), describe_reserved_node_exchange_status_input_message()) ->
    {ok, describe_reserved_node_exchange_status_output_message(), tuple()} |
    {error, any()} |
    {error, describe_reserved_node_exchange_status_errors(), tuple()}.
describe_reserved_node_exchange_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_node_exchange_status(Client, Input, []).

-spec describe_reserved_node_exchange_status(aws_client:aws_client(), describe_reserved_node_exchange_status_input_message(), proplists:proplist()) ->
    {ok, describe_reserved_node_exchange_status_output_message(), tuple()} |
    {error, any()} |
    {error, describe_reserved_node_exchange_status_errors(), tuple()}.
describe_reserved_node_exchange_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedNodeExchangeStatus">>, Input, Options).

%% @doc Returns a list of the available reserved node offerings by Amazon
%% Redshift with their
%% descriptions including the node type, the fixed and recurring costs of
%% reserving the
%% node and duration the node will be reserved for you.
%%
%% These descriptions help you
%% determine which reserve node offering you want to purchase. You then use
%% the unique
%% offering ID in you call to `PurchaseReservedNodeOffering' to reserve
%% one
%% or more nodes for your Amazon Redshift cluster.
%%
%% For more information about reserved node offerings, go to
%% Purchasing Reserved Nodes:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html
%% in the Amazon Redshift Cluster Management Guide.
-spec describe_reserved_node_offerings(aws_client:aws_client(), describe_reserved_node_offerings_message()) ->
    {ok, reserved_node_offerings_message(), tuple()} |
    {error, any()} |
    {error, describe_reserved_node_offerings_errors(), tuple()}.
describe_reserved_node_offerings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_node_offerings(Client, Input, []).

-spec describe_reserved_node_offerings(aws_client:aws_client(), describe_reserved_node_offerings_message(), proplists:proplist()) ->
    {ok, reserved_node_offerings_message(), tuple()} |
    {error, any()} |
    {error, describe_reserved_node_offerings_errors(), tuple()}.
describe_reserved_node_offerings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedNodeOfferings">>, Input, Options).

%% @doc Returns the descriptions of the reserved nodes.
-spec describe_reserved_nodes(aws_client:aws_client(), describe_reserved_nodes_message()) ->
    {ok, reserved_nodes_message(), tuple()} |
    {error, any()} |
    {error, describe_reserved_nodes_errors(), tuple()}.
describe_reserved_nodes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_nodes(Client, Input, []).

-spec describe_reserved_nodes(aws_client:aws_client(), describe_reserved_nodes_message(), proplists:proplist()) ->
    {ok, reserved_nodes_message(), tuple()} |
    {error, any()} |
    {error, describe_reserved_nodes_errors(), tuple()}.
describe_reserved_nodes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedNodes">>, Input, Options).

%% @doc Returns information about the last resize operation for the specified
%% cluster.
%%
%% If
%% no resize operation has ever been initiated for the specified cluster, a
%% ```
%% HTTP 404''' error is returned. If a resize operation was
%% initiated and completed, the
%% status of the resize remains as `SUCCEEDED' until the next resize.
%%
%% A resize operation can be requested using `ModifyCluster' and
%% specifying a different number or type of nodes for the cluster.
-spec describe_resize(aws_client:aws_client(), describe_resize_message()) ->
    {ok, resize_progress_message(), tuple()} |
    {error, any()} |
    {error, describe_resize_errors(), tuple()}.
describe_resize(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_resize(Client, Input, []).

-spec describe_resize(aws_client:aws_client(), describe_resize_message(), proplists:proplist()) ->
    {ok, resize_progress_message(), tuple()} |
    {error, any()} |
    {error, describe_resize_errors(), tuple()}.
describe_resize(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeResize">>, Input, Options).

%% @doc Describes properties of scheduled actions.
-spec describe_scheduled_actions(aws_client:aws_client(), describe_scheduled_actions_message()) ->
    {ok, scheduled_actions_message(), tuple()} |
    {error, any()} |
    {error, describe_scheduled_actions_errors(), tuple()}.
describe_scheduled_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scheduled_actions(Client, Input, []).

-spec describe_scheduled_actions(aws_client:aws_client(), describe_scheduled_actions_message(), proplists:proplist()) ->
    {ok, scheduled_actions_message(), tuple()} |
    {error, any()} |
    {error, describe_scheduled_actions_errors(), tuple()}.
describe_scheduled_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScheduledActions">>, Input, Options).

%% @doc Returns a list of snapshot copy grants owned by the Amazon Web
%% Services account in the destination
%% region.
%%
%% For more information about managing snapshot copy grants, go to
%% Amazon Redshift Database Encryption:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html
%% in the Amazon Redshift Cluster Management Guide.
-spec describe_snapshot_copy_grants(aws_client:aws_client(), describe_snapshot_copy_grants_message()) ->
    {ok, snapshot_copy_grant_message(), tuple()} |
    {error, any()} |
    {error, describe_snapshot_copy_grants_errors(), tuple()}.
describe_snapshot_copy_grants(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_snapshot_copy_grants(Client, Input, []).

-spec describe_snapshot_copy_grants(aws_client:aws_client(), describe_snapshot_copy_grants_message(), proplists:proplist()) ->
    {ok, snapshot_copy_grant_message(), tuple()} |
    {error, any()} |
    {error, describe_snapshot_copy_grants_errors(), tuple()}.
describe_snapshot_copy_grants(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSnapshotCopyGrants">>, Input, Options).

%% @doc Returns a list of snapshot schedules.
-spec describe_snapshot_schedules(aws_client:aws_client(), describe_snapshot_schedules_message()) ->
    {ok, describe_snapshot_schedules_output_message(), tuple()} |
    {error, any()}.
describe_snapshot_schedules(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_snapshot_schedules(Client, Input, []).

-spec describe_snapshot_schedules(aws_client:aws_client(), describe_snapshot_schedules_message(), proplists:proplist()) ->
    {ok, describe_snapshot_schedules_output_message(), tuple()} |
    {error, any()}.
describe_snapshot_schedules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSnapshotSchedules">>, Input, Options).

%% @doc Returns account level backups storage size and provisional storage.
-spec describe_storage(aws_client:aws_client(), #{}) ->
    {ok, customer_storage_message(), tuple()} |
    {error, any()}.
describe_storage(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_storage(Client, Input, []).

-spec describe_storage(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, customer_storage_message(), tuple()} |
    {error, any()}.
describe_storage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStorage">>, Input, Options).

%% @doc Lists the status of one or more table restore requests made using the
%% `RestoreTableFromClusterSnapshot' API action.
%%
%% If you don't specify a value
%% for the `TableRestoreRequestId' parameter, then
%% `DescribeTableRestoreStatus' returns the status of all table restore
%% requests ordered by the date and time of the request in ascending order.
%% Otherwise
%% `DescribeTableRestoreStatus' returns the status of the table specified
%% by
%% `TableRestoreRequestId'.
-spec describe_table_restore_status(aws_client:aws_client(), describe_table_restore_status_message()) ->
    {ok, table_restore_status_message(), tuple()} |
    {error, any()} |
    {error, describe_table_restore_status_errors(), tuple()}.
describe_table_restore_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_table_restore_status(Client, Input, []).

-spec describe_table_restore_status(aws_client:aws_client(), describe_table_restore_status_message(), proplists:proplist()) ->
    {ok, table_restore_status_message(), tuple()} |
    {error, any()} |
    {error, describe_table_restore_status_errors(), tuple()}.
describe_table_restore_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTableRestoreStatus">>, Input, Options).

%% @doc Returns a list of tags.
%%
%% You can return tags from a specific resource by specifying
%% an ARN, or you can return all tags for a given type of resource, such as
%% clusters,
%% snapshots, and so on.
%%
%% The following are limitations for `DescribeTags':
%%
%% You cannot specify an ARN and a resource-type value together in the same
%% request.
%%
%% You cannot use the `MaxRecords' and `Marker'
%% parameters together with the ARN parameter.
%%
%% The `MaxRecords' parameter can be a range from 10 to 50 results
%% to return in a request.
%%
%% If you specify both tag keys and tag values in the same request, Amazon
%% Redshift returns
%% all resources that match any combination of the specified keys and values.
%% For example,
%% if you have `owner' and `environment' for tag keys, and
%% `admin' and `test' for tag values, all resources that have any
%% combination of those values are returned.
%%
%% If both tag keys and values are omitted from the request, resources are
%% returned
%% regardless of whether they have tag keys or values associated with them.
-spec describe_tags(aws_client:aws_client(), describe_tags_message()) ->
    {ok, tagged_resource_list_message(), tuple()} |
    {error, any()} |
    {error, describe_tags_errors(), tuple()}.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).

-spec describe_tags(aws_client:aws_client(), describe_tags_message(), proplists:proplist()) ->
    {ok, tagged_resource_list_message(), tuple()} |
    {error, any()} |
    {error, describe_tags_errors(), tuple()}.
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc Shows usage limits on a cluster.
%%
%% Results are filtered based on the combination of input usage limit
%% identifier, cluster identifier, and feature type parameters:
%%
%% If usage limit identifier, cluster identifier, and feature type are not
%% provided,
%% then all usage limit objects for the current account in the current region
%% are returned.
%%
%% If usage limit identifier is provided,
%% then the corresponding usage limit object is returned.
%%
%% If cluster identifier is provided,
%% then all usage limit objects for the specified cluster are returned.
%%
%% If cluster identifier and feature type are provided,
%% then all usage limit objects for the combination of cluster and feature
%% are returned.
-spec describe_usage_limits(aws_client:aws_client(), describe_usage_limits_message()) ->
    {ok, usage_limit_list(), tuple()} |
    {error, any()} |
    {error, describe_usage_limits_errors(), tuple()}.
describe_usage_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_usage_limits(Client, Input, []).

-spec describe_usage_limits(aws_client:aws_client(), describe_usage_limits_message(), proplists:proplist()) ->
    {ok, usage_limit_list(), tuple()} |
    {error, any()} |
    {error, describe_usage_limits_errors(), tuple()}.
describe_usage_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUsageLimits">>, Input, Options).

%% @doc Stops logging information, such as queries and connection attempts,
%% for the
%% specified Amazon Redshift cluster.
-spec disable_logging(aws_client:aws_client(), disable_logging_message()) ->
    {ok, logging_status(), tuple()} |
    {error, any()} |
    {error, disable_logging_errors(), tuple()}.
disable_logging(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_logging(Client, Input, []).

-spec disable_logging(aws_client:aws_client(), disable_logging_message(), proplists:proplist()) ->
    {ok, logging_status(), tuple()} |
    {error, any()} |
    {error, disable_logging_errors(), tuple()}.
disable_logging(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableLogging">>, Input, Options).

%% @doc Disables the automatic copying of snapshots from one region to
%% another region for a
%% specified cluster.
%%
%% If your cluster and its snapshots are encrypted using an encrypted
%% symmetric key
%% from Key Management Service, use `DeleteSnapshotCopyGrant' to delete
%% the grant that
%% grants Amazon Redshift permission to the key in the destination region.
-spec disable_snapshot_copy(aws_client:aws_client(), disable_snapshot_copy_message()) ->
    {ok, disable_snapshot_copy_result(), tuple()} |
    {error, any()} |
    {error, disable_snapshot_copy_errors(), tuple()}.
disable_snapshot_copy(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_snapshot_copy(Client, Input, []).

-spec disable_snapshot_copy(aws_client:aws_client(), disable_snapshot_copy_message(), proplists:proplist()) ->
    {ok, disable_snapshot_copy_result(), tuple()} |
    {error, any()} |
    {error, disable_snapshot_copy_errors(), tuple()}.
disable_snapshot_copy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableSnapshotCopy">>, Input, Options).

%% @doc From a datashare consumer account, remove association for the
%% specified datashare.
-spec disassociate_data_share_consumer(aws_client:aws_client(), disassociate_data_share_consumer_message()) ->
    {ok, data_share(), tuple()} |
    {error, any()} |
    {error, disassociate_data_share_consumer_errors(), tuple()}.
disassociate_data_share_consumer(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_data_share_consumer(Client, Input, []).

-spec disassociate_data_share_consumer(aws_client:aws_client(), disassociate_data_share_consumer_message(), proplists:proplist()) ->
    {ok, data_share(), tuple()} |
    {error, any()} |
    {error, disassociate_data_share_consumer_errors(), tuple()}.
disassociate_data_share_consumer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateDataShareConsumer">>, Input, Options).

%% @doc Starts logging information, such as queries and connection attempts,
%% for the
%% specified Amazon Redshift cluster.
-spec enable_logging(aws_client:aws_client(), enable_logging_message()) ->
    {ok, logging_status(), tuple()} |
    {error, any()} |
    {error, enable_logging_errors(), tuple()}.
enable_logging(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_logging(Client, Input, []).

-spec enable_logging(aws_client:aws_client(), enable_logging_message(), proplists:proplist()) ->
    {ok, logging_status(), tuple()} |
    {error, any()} |
    {error, enable_logging_errors(), tuple()}.
enable_logging(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableLogging">>, Input, Options).

%% @doc Enables the automatic copy of snapshots from one region to another
%% region for a
%% specified cluster.
-spec enable_snapshot_copy(aws_client:aws_client(), enable_snapshot_copy_message()) ->
    {ok, enable_snapshot_copy_result(), tuple()} |
    {error, any()} |
    {error, enable_snapshot_copy_errors(), tuple()}.
enable_snapshot_copy(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_snapshot_copy(Client, Input, []).

-spec enable_snapshot_copy(aws_client:aws_client(), enable_snapshot_copy_message(), proplists:proplist()) ->
    {ok, enable_snapshot_copy_result(), tuple()} |
    {error, any()} |
    {error, enable_snapshot_copy_errors(), tuple()}.
enable_snapshot_copy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableSnapshotCopy">>, Input, Options).

%% @doc Fails over the primary compute unit of the specified Multi-AZ cluster
%% to another Availability Zone.
-spec failover_primary_compute(aws_client:aws_client(), failover_primary_compute_input_message()) ->
    {ok, failover_primary_compute_result(), tuple()} |
    {error, any()} |
    {error, failover_primary_compute_errors(), tuple()}.
failover_primary_compute(Client, Input)
  when is_map(Client), is_map(Input) ->
    failover_primary_compute(Client, Input, []).

-spec failover_primary_compute(aws_client:aws_client(), failover_primary_compute_input_message(), proplists:proplist()) ->
    {ok, failover_primary_compute_result(), tuple()} |
    {error, any()} |
    {error, failover_primary_compute_errors(), tuple()}.
failover_primary_compute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"FailoverPrimaryCompute">>, Input, Options).

%% @doc Returns a database user name and temporary password with temporary
%% authorization to
%% log on to an Amazon Redshift database.
%%
%% The action returns the database user name
%% prefixed with `IAM:' if `AutoCreate' is `False' or
%% `IAMA:' if `AutoCreate' is `True'. You can
%% optionally specify one or more database user groups that the user will
%% join at log on.
%% By default, the temporary credentials expire in 900 seconds. You can
%% optionally specify
%% a duration between 900 seconds (15 minutes) and 3600 seconds (60 minutes).
%% For more
%% information, see Using IAM Authentication
%% to Generate Database User Credentials:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/generating-user-credentials.html
%% in the Amazon Redshift Cluster Management Guide.
%%
%% The Identity and Access Management (IAM) user or role that runs
%% GetClusterCredentials must have an IAM policy attached that allows access
%% to all
%% necessary actions and resources. For more information about permissions,
%% see Resource Policies for GetClusterCredentials:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html#redshift-policy-resources.getclustercredentials-resources
%% in the
%% Amazon Redshift Cluster Management Guide.
%%
%% If the `DbGroups' parameter is specified, the IAM policy must allow
%% the
%% `redshift:JoinGroup' action with access to the listed
%% `dbgroups'.
%%
%% In addition, if the `AutoCreate' parameter is set to `True',
%% then the policy must include the `redshift:CreateClusterUser'
%% permission.
%%
%% If the `DbName' parameter is specified, the IAM policy must allow
%% access
%% to the resource `dbname' for the specified database name.
-spec get_cluster_credentials(aws_client:aws_client(), get_cluster_credentials_message()) ->
    {ok, cluster_credentials(), tuple()} |
    {error, any()} |
    {error, get_cluster_credentials_errors(), tuple()}.
get_cluster_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cluster_credentials(Client, Input, []).

-spec get_cluster_credentials(aws_client:aws_client(), get_cluster_credentials_message(), proplists:proplist()) ->
    {ok, cluster_credentials(), tuple()} |
    {error, any()} |
    {error, get_cluster_credentials_errors(), tuple()}.
get_cluster_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetClusterCredentials">>, Input, Options).

%% @doc Returns a database user name and temporary password with temporary
%% authorization to
%% log in to an Amazon Redshift database.
%%
%% The database user is mapped 1:1 to the source Identity and Access
%% Management (IAM) identity.
%% For more information about IAM identities, see IAM Identities (users, user
%% groups, and roles):
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id.html in the
%% Amazon Web Services Identity and Access Management User Guide.
%%
%% The Identity and Access Management (IAM) identity that runs
%% this operation must have an IAM policy attached that allows access to all
%% necessary actions and resources.
%% For more information about permissions, see Using identity-based policies
%% (IAM policies):
%% https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html
%% in the
%% Amazon Redshift Cluster Management Guide.
-spec get_cluster_credentials_with_iam(aws_client:aws_client(), get_cluster_credentials_with_iam_message()) ->
    {ok, cluster_extended_credentials(), tuple()} |
    {error, any()} |
    {error, get_cluster_credentials_with_iam_errors(), tuple()}.
get_cluster_credentials_with_iam(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cluster_credentials_with_iam(Client, Input, []).

-spec get_cluster_credentials_with_iam(aws_client:aws_client(), get_cluster_credentials_with_iam_message(), proplists:proplist()) ->
    {ok, cluster_extended_credentials(), tuple()} |
    {error, any()} |
    {error, get_cluster_credentials_with_iam_errors(), tuple()}.
get_cluster_credentials_with_iam(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetClusterCredentialsWithIAM">>, Input, Options).

%% @doc Gets the configuration options for the reserved-node exchange.
%%
%% These options
%% include information about the source reserved node and target reserved
%% node offering.
%% Details include the node type, the price, the node count, and the offering
%% type.
-spec get_reserved_node_exchange_configuration_options(aws_client:aws_client(), get_reserved_node_exchange_configuration_options_input_message()) ->
    {ok, get_reserved_node_exchange_configuration_options_output_message(), tuple()} |
    {error, any()} |
    {error, get_reserved_node_exchange_configuration_options_errors(), tuple()}.
get_reserved_node_exchange_configuration_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_reserved_node_exchange_configuration_options(Client, Input, []).

-spec get_reserved_node_exchange_configuration_options(aws_client:aws_client(), get_reserved_node_exchange_configuration_options_input_message(), proplists:proplist()) ->
    {ok, get_reserved_node_exchange_configuration_options_output_message(), tuple()} |
    {error, any()} |
    {error, get_reserved_node_exchange_configuration_options_errors(), tuple()}.
get_reserved_node_exchange_configuration_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReservedNodeExchangeConfigurationOptions">>, Input, Options).

%% @doc Returns an array of DC2 ReservedNodeOfferings that matches the
%% payment type, term,
%% and usage price of the given DC1 reserved node.
-spec get_reserved_node_exchange_offerings(aws_client:aws_client(), get_reserved_node_exchange_offerings_input_message()) ->
    {ok, get_reserved_node_exchange_offerings_output_message(), tuple()} |
    {error, any()} |
    {error, get_reserved_node_exchange_offerings_errors(), tuple()}.
get_reserved_node_exchange_offerings(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_reserved_node_exchange_offerings(Client, Input, []).

-spec get_reserved_node_exchange_offerings(aws_client:aws_client(), get_reserved_node_exchange_offerings_input_message(), proplists:proplist()) ->
    {ok, get_reserved_node_exchange_offerings_output_message(), tuple()} |
    {error, any()} |
    {error, get_reserved_node_exchange_offerings_errors(), tuple()}.
get_reserved_node_exchange_offerings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReservedNodeExchangeOfferings">>, Input, Options).

%% @doc Get the resource policy for a specified resource.
-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_message()) ->
    {ok, get_resource_policy_result(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_policy(Client, Input, []).

-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_message(), proplists:proplist()) ->
    {ok, get_resource_policy_result(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourcePolicy">>, Input, Options).

%% @doc List the Amazon Redshift Advisor recommendations for one or multiple
%% Amazon Redshift clusters in an Amazon Web Services account.
-spec list_recommendations(aws_client:aws_client(), list_recommendations_message()) ->
    {ok, list_recommendations_result(), tuple()} |
    {error, any()} |
    {error, list_recommendations_errors(), tuple()}.
list_recommendations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_recommendations(Client, Input, []).

-spec list_recommendations(aws_client:aws_client(), list_recommendations_message(), proplists:proplist()) ->
    {ok, list_recommendations_result(), tuple()} |
    {error, any()} |
    {error, list_recommendations_errors(), tuple()}.
list_recommendations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRecommendations">>, Input, Options).

%% @doc This operation is retired.
%%
%% Calling this operation does not change AQUA configuration. Amazon Redshift
%% automatically determines whether to use AQUA (Advanced Query Accelerator).
-spec modify_aqua_configuration(aws_client:aws_client(), modify_aqua_input_message()) ->
    {ok, modify_aqua_output_message(), tuple()} |
    {error, any()} |
    {error, modify_aqua_configuration_errors(), tuple()}.
modify_aqua_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_aqua_configuration(Client, Input, []).

-spec modify_aqua_configuration(aws_client:aws_client(), modify_aqua_input_message(), proplists:proplist()) ->
    {ok, modify_aqua_output_message(), tuple()} |
    {error, any()} |
    {error, modify_aqua_configuration_errors(), tuple()}.
modify_aqua_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyAquaConfiguration">>, Input, Options).

%% @doc Modifies an authentication profile.
-spec modify_authentication_profile(aws_client:aws_client(), modify_authentication_profile_message()) ->
    {ok, modify_authentication_profile_result(), tuple()} |
    {error, any()} |
    {error, modify_authentication_profile_errors(), tuple()}.
modify_authentication_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_authentication_profile(Client, Input, []).

-spec modify_authentication_profile(aws_client:aws_client(), modify_authentication_profile_message(), proplists:proplist()) ->
    {ok, modify_authentication_profile_result(), tuple()} |
    {error, any()} |
    {error, modify_authentication_profile_errors(), tuple()}.
modify_authentication_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyAuthenticationProfile">>, Input, Options).

%% @doc Modifies the settings for a cluster.
%%
%% You can also change node type and the number of nodes to scale up or down
%% the
%% cluster. When resizing a cluster, you must specify both the number of
%% nodes and the node
%% type even if one of the parameters does not change.
%%
%% You can add another security or
%% parameter group, or change the admin user password. Resetting a cluster
%% password or modifying the security groups associated with a cluster do not
%% need a reboot. However, modifying a parameter group requires a reboot for
%% parameters to take effect.
%% For more information about managing clusters, go to
%% Amazon Redshift Clusters:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html
%% in the Amazon Redshift Cluster Management Guide.
%%
%% VPC Block Public Access (BPA) enables you to block resources in VPCs and
%% subnets that
%% you own in a Region from reaching or being reached from the internet
%% through internet
%% gateways and egress-only internet gateways. If a subnet group for a
%% provisioned cluster is in an account with VPC BPA turned on, the following
%% capabilities
%% are blocked:
%%
%% Creating a public cluster
%%
%% Restoring a public cluster
%%
%% Modifying a private cluster to be public
%%
%% Adding a subnet with VPC BPA turned on to the subnet group when
%% there's at
%% least one public cluster within the group
%%
%% For more information about VPC BPA, see Block public access to VPCs and
%% subnets:
%% https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html in
%% the Amazon VPC User Guide.
-spec modify_cluster(aws_client:aws_client(), modify_cluster_message()) ->
    {ok, modify_cluster_result(), tuple()} |
    {error, any()} |
    {error, modify_cluster_errors(), tuple()}.
modify_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cluster(Client, Input, []).

-spec modify_cluster(aws_client:aws_client(), modify_cluster_message(), proplists:proplist()) ->
    {ok, modify_cluster_result(), tuple()} |
    {error, any()} |
    {error, modify_cluster_errors(), tuple()}.
modify_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCluster">>, Input, Options).

%% @doc Modifies the database revision of a cluster.
%%
%% The database revision is a unique
%% revision of the database running in a cluster.
-spec modify_cluster_db_revision(aws_client:aws_client(), modify_cluster_db_revision_message()) ->
    {ok, modify_cluster_db_revision_result(), tuple()} |
    {error, any()} |
    {error, modify_cluster_db_revision_errors(), tuple()}.
modify_cluster_db_revision(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cluster_db_revision(Client, Input, []).

-spec modify_cluster_db_revision(aws_client:aws_client(), modify_cluster_db_revision_message(), proplists:proplist()) ->
    {ok, modify_cluster_db_revision_result(), tuple()} |
    {error, any()} |
    {error, modify_cluster_db_revision_errors(), tuple()}.
modify_cluster_db_revision(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyClusterDbRevision">>, Input, Options).

%% @doc Modifies the list of Identity and Access Management (IAM) roles that
%% can be
%% used by the cluster to access other Amazon Web Services services.
%%
%% The maximum number of IAM roles that you can associate is subject to a
%% quota.
%% For more information, go to Quotas and limits:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html
%% in the Amazon Redshift Cluster Management Guide.
-spec modify_cluster_iam_roles(aws_client:aws_client(), modify_cluster_iam_roles_message()) ->
    {ok, modify_cluster_iam_roles_result(), tuple()} |
    {error, any()} |
    {error, modify_cluster_iam_roles_errors(), tuple()}.
modify_cluster_iam_roles(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cluster_iam_roles(Client, Input, []).

-spec modify_cluster_iam_roles(aws_client:aws_client(), modify_cluster_iam_roles_message(), proplists:proplist()) ->
    {ok, modify_cluster_iam_roles_result(), tuple()} |
    {error, any()} |
    {error, modify_cluster_iam_roles_errors(), tuple()}.
modify_cluster_iam_roles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyClusterIamRoles">>, Input, Options).

%% @doc Modifies the maintenance settings of a cluster.
-spec modify_cluster_maintenance(aws_client:aws_client(), modify_cluster_maintenance_message()) ->
    {ok, modify_cluster_maintenance_result(), tuple()} |
    {error, any()} |
    {error, modify_cluster_maintenance_errors(), tuple()}.
modify_cluster_maintenance(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cluster_maintenance(Client, Input, []).

-spec modify_cluster_maintenance(aws_client:aws_client(), modify_cluster_maintenance_message(), proplists:proplist()) ->
    {ok, modify_cluster_maintenance_result(), tuple()} |
    {error, any()} |
    {error, modify_cluster_maintenance_errors(), tuple()}.
modify_cluster_maintenance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyClusterMaintenance">>, Input, Options).

%% @doc Modifies the parameters of a parameter group.
%%
%% For the parameters parameter, it can't contain ASCII characters.
%%
%% For more information about parameters and parameter groups, go to
%% Amazon Redshift Parameter Groups:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html
%% in the Amazon Redshift Cluster Management Guide.
-spec modify_cluster_parameter_group(aws_client:aws_client(), modify_cluster_parameter_group_message()) ->
    {ok, cluster_parameter_group_name_message(), tuple()} |
    {error, any()} |
    {error, modify_cluster_parameter_group_errors(), tuple()}.
modify_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cluster_parameter_group(Client, Input, []).

-spec modify_cluster_parameter_group(aws_client:aws_client(), modify_cluster_parameter_group_message(), proplists:proplist()) ->
    {ok, cluster_parameter_group_name_message(), tuple()} |
    {error, any()} |
    {error, modify_cluster_parameter_group_errors(), tuple()}.
modify_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyClusterParameterGroup">>, Input, Options).

%% @doc Modifies the settings for a snapshot.
%%
%% This exanmple modifies the manual retention period setting for a cluster
%% snapshot.
-spec modify_cluster_snapshot(aws_client:aws_client(), modify_cluster_snapshot_message()) ->
    {ok, modify_cluster_snapshot_result(), tuple()} |
    {error, any()} |
    {error, modify_cluster_snapshot_errors(), tuple()}.
modify_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cluster_snapshot(Client, Input, []).

-spec modify_cluster_snapshot(aws_client:aws_client(), modify_cluster_snapshot_message(), proplists:proplist()) ->
    {ok, modify_cluster_snapshot_result(), tuple()} |
    {error, any()} |
    {error, modify_cluster_snapshot_errors(), tuple()}.
modify_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyClusterSnapshot">>, Input, Options).

%% @doc Modifies a snapshot schedule for a cluster.
-spec modify_cluster_snapshot_schedule(aws_client:aws_client(), modify_cluster_snapshot_schedule_message()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, modify_cluster_snapshot_schedule_errors(), tuple()}.
modify_cluster_snapshot_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cluster_snapshot_schedule(Client, Input, []).

-spec modify_cluster_snapshot_schedule(aws_client:aws_client(), modify_cluster_snapshot_schedule_message(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, modify_cluster_snapshot_schedule_errors(), tuple()}.
modify_cluster_snapshot_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyClusterSnapshotSchedule">>, Input, Options).

%% @doc Modifies a cluster subnet group to include the specified list of VPC
%% subnets.
%%
%% The
%% operation replaces the existing list of subnets with the new list of
%% subnets.
%%
%% VPC Block Public Access (BPA) enables you to block resources in VPCs and
%% subnets that
%% you own in a Region from reaching or being reached from the internet
%% through internet
%% gateways and egress-only internet gateways. If a subnet group for a
%% provisioned cluster is in an account with VPC BPA turned on, the following
%% capabilities
%% are blocked:
%%
%% Creating a public cluster
%%
%% Restoring a public cluster
%%
%% Modifying a private cluster to be public
%%
%% Adding a subnet with VPC BPA turned on to the subnet group when
%% there's at
%% least one public cluster within the group
%%
%% For more information about VPC BPA, see Block public access to VPCs and
%% subnets:
%% https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html in
%% the Amazon VPC User Guide.
-spec modify_cluster_subnet_group(aws_client:aws_client(), modify_cluster_subnet_group_message()) ->
    {ok, modify_cluster_subnet_group_result(), tuple()} |
    {error, any()} |
    {error, modify_cluster_subnet_group_errors(), tuple()}.
modify_cluster_subnet_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cluster_subnet_group(Client, Input, []).

-spec modify_cluster_subnet_group(aws_client:aws_client(), modify_cluster_subnet_group_message(), proplists:proplist()) ->
    {ok, modify_cluster_subnet_group_result(), tuple()} |
    {error, any()} |
    {error, modify_cluster_subnet_group_errors(), tuple()}.
modify_cluster_subnet_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyClusterSubnetGroup">>, Input, Options).

%% @doc Contains information for changing a custom domain association.
-spec modify_custom_domain_association(aws_client:aws_client(), modify_custom_domain_association_message()) ->
    {ok, modify_custom_domain_association_result(), tuple()} |
    {error, any()} |
    {error, modify_custom_domain_association_errors(), tuple()}.
modify_custom_domain_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_custom_domain_association(Client, Input, []).

-spec modify_custom_domain_association(aws_client:aws_client(), modify_custom_domain_association_message(), proplists:proplist()) ->
    {ok, modify_custom_domain_association_result(), tuple()} |
    {error, any()} |
    {error, modify_custom_domain_association_errors(), tuple()}.
modify_custom_domain_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCustomDomainAssociation">>, Input, Options).

%% @doc Modifies a Redshift-managed VPC endpoint.
-spec modify_endpoint_access(aws_client:aws_client(), modify_endpoint_access_message()) ->
    {ok, endpoint_access(), tuple()} |
    {error, any()} |
    {error, modify_endpoint_access_errors(), tuple()}.
modify_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_endpoint_access(Client, Input, []).

-spec modify_endpoint_access(aws_client:aws_client(), modify_endpoint_access_message(), proplists:proplist()) ->
    {ok, endpoint_access(), tuple()} |
    {error, any()} |
    {error, modify_endpoint_access_errors(), tuple()}.
modify_endpoint_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyEndpointAccess">>, Input, Options).

%% @doc Modifies an existing Amazon Redshift event notification subscription.
-spec modify_event_subscription(aws_client:aws_client(), modify_event_subscription_message()) ->
    {ok, modify_event_subscription_result(), tuple()} |
    {error, any()} |
    {error, modify_event_subscription_errors(), tuple()}.
modify_event_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_event_subscription(Client, Input, []).

-spec modify_event_subscription(aws_client:aws_client(), modify_event_subscription_message(), proplists:proplist()) ->
    {ok, modify_event_subscription_result(), tuple()} |
    {error, any()} |
    {error, modify_event_subscription_errors(), tuple()}.
modify_event_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyEventSubscription">>, Input, Options).

%% @doc Modifies a zero-ETL integration or S3 event integration with Amazon
%% Redshift.
-spec modify_integration(aws_client:aws_client(), modify_integration_message()) ->
    {ok, integration(), tuple()} |
    {error, any()} |
    {error, modify_integration_errors(), tuple()}.
modify_integration(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_integration(Client, Input, []).

-spec modify_integration(aws_client:aws_client(), modify_integration_message(), proplists:proplist()) ->
    {ok, integration(), tuple()} |
    {error, any()} |
    {error, modify_integration_errors(), tuple()}.
modify_integration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyIntegration">>, Input, Options).

%% @doc Changes an existing Amazon Redshift IAM Identity Center application.
-spec modify_redshift_idc_application(aws_client:aws_client(), modify_redshift_idc_application_message()) ->
    {ok, modify_redshift_idc_application_result(), tuple()} |
    {error, any()} |
    {error, modify_redshift_idc_application_errors(), tuple()}.
modify_redshift_idc_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_redshift_idc_application(Client, Input, []).

-spec modify_redshift_idc_application(aws_client:aws_client(), modify_redshift_idc_application_message(), proplists:proplist()) ->
    {ok, modify_redshift_idc_application_result(), tuple()} |
    {error, any()} |
    {error, modify_redshift_idc_application_errors(), tuple()}.
modify_redshift_idc_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyRedshiftIdcApplication">>, Input, Options).

%% @doc Modifies a scheduled action.
-spec modify_scheduled_action(aws_client:aws_client(), modify_scheduled_action_message()) ->
    {ok, scheduled_action(), tuple()} |
    {error, any()} |
    {error, modify_scheduled_action_errors(), tuple()}.
modify_scheduled_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_scheduled_action(Client, Input, []).

-spec modify_scheduled_action(aws_client:aws_client(), modify_scheduled_action_message(), proplists:proplist()) ->
    {ok, scheduled_action(), tuple()} |
    {error, any()} |
    {error, modify_scheduled_action_errors(), tuple()}.
modify_scheduled_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyScheduledAction">>, Input, Options).

%% @doc Modifies the number of days to retain snapshots in the destination
%% Amazon Web Services Region after
%% they are copied from the source Amazon Web Services Region.
%%
%% By default, this operation only changes the
%% retention period of copied automated snapshots. The retention periods for
%% both new and
%% existing copied automated snapshots are updated with the new retention
%% period. You can
%% set the manual option to change only the retention periods of copied
%% manual snapshots.
%% If you set this option, only newly copied manual snapshots have the new
%% retention
%% period.
-spec modify_snapshot_copy_retention_period(aws_client:aws_client(), modify_snapshot_copy_retention_period_message()) ->
    {ok, modify_snapshot_copy_retention_period_result(), tuple()} |
    {error, any()} |
    {error, modify_snapshot_copy_retention_period_errors(), tuple()}.
modify_snapshot_copy_retention_period(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_snapshot_copy_retention_period(Client, Input, []).

-spec modify_snapshot_copy_retention_period(aws_client:aws_client(), modify_snapshot_copy_retention_period_message(), proplists:proplist()) ->
    {ok, modify_snapshot_copy_retention_period_result(), tuple()} |
    {error, any()} |
    {error, modify_snapshot_copy_retention_period_errors(), tuple()}.
modify_snapshot_copy_retention_period(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifySnapshotCopyRetentionPeriod">>, Input, Options).

%% @doc Modifies a snapshot schedule.
%%
%% Any schedule associated with a cluster is modified
%% asynchronously.
-spec modify_snapshot_schedule(aws_client:aws_client(), modify_snapshot_schedule_message()) ->
    {ok, snapshot_schedule(), tuple()} |
    {error, any()} |
    {error, modify_snapshot_schedule_errors(), tuple()}.
modify_snapshot_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_snapshot_schedule(Client, Input, []).

-spec modify_snapshot_schedule(aws_client:aws_client(), modify_snapshot_schedule_message(), proplists:proplist()) ->
    {ok, snapshot_schedule(), tuple()} |
    {error, any()} |
    {error, modify_snapshot_schedule_errors(), tuple()}.
modify_snapshot_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifySnapshotSchedule">>, Input, Options).

%% @doc Modifies a usage limit in a cluster.
%%
%% You can't modify the feature type or period of a usage limit.
-spec modify_usage_limit(aws_client:aws_client(), modify_usage_limit_message()) ->
    {ok, usage_limit(), tuple()} |
    {error, any()} |
    {error, modify_usage_limit_errors(), tuple()}.
modify_usage_limit(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_usage_limit(Client, Input, []).

-spec modify_usage_limit(aws_client:aws_client(), modify_usage_limit_message(), proplists:proplist()) ->
    {ok, usage_limit(), tuple()} |
    {error, any()} |
    {error, modify_usage_limit_errors(), tuple()}.
modify_usage_limit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyUsageLimit">>, Input, Options).

%% @doc Pauses a cluster.
-spec pause_cluster(aws_client:aws_client(), pause_cluster_message()) ->
    {ok, pause_cluster_result(), tuple()} |
    {error, any()} |
    {error, pause_cluster_errors(), tuple()}.
pause_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    pause_cluster(Client, Input, []).

-spec pause_cluster(aws_client:aws_client(), pause_cluster_message(), proplists:proplist()) ->
    {ok, pause_cluster_result(), tuple()} |
    {error, any()} |
    {error, pause_cluster_errors(), tuple()}.
pause_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PauseCluster">>, Input, Options).

%% @doc Allows you to purchase reserved nodes.
%%
%% Amazon Redshift offers a predefined set of
%% reserved node offerings. You can purchase one or more of the offerings.
%% You can call the
%% `DescribeReservedNodeOfferings' API to obtain the available reserved
%% node offerings. You can call this API by providing a specific reserved
%% node offering and
%% the number of nodes you want to reserve.
%%
%% For more information about reserved node offerings, go to
%% Purchasing Reserved Nodes:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/purchase-reserved-node-instance.html
%% in the Amazon Redshift Cluster Management Guide.
-spec purchase_reserved_node_offering(aws_client:aws_client(), purchase_reserved_node_offering_message()) ->
    {ok, purchase_reserved_node_offering_result(), tuple()} |
    {error, any()} |
    {error, purchase_reserved_node_offering_errors(), tuple()}.
purchase_reserved_node_offering(Client, Input)
  when is_map(Client), is_map(Input) ->
    purchase_reserved_node_offering(Client, Input, []).

-spec purchase_reserved_node_offering(aws_client:aws_client(), purchase_reserved_node_offering_message(), proplists:proplist()) ->
    {ok, purchase_reserved_node_offering_result(), tuple()} |
    {error, any()} |
    {error, purchase_reserved_node_offering_errors(), tuple()}.
purchase_reserved_node_offering(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PurchaseReservedNodeOffering">>, Input, Options).

%% @doc Updates the resource policy for a specified resource.
-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_message()) ->
    {ok, put_resource_policy_result(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).

-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_message(), proplists:proplist()) ->
    {ok, put_resource_policy_result(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Reboots a cluster.
%%
%% This action is taken as soon as possible. It results in a
%% momentary outage to the cluster, during which the cluster status is set to
%% `rebooting'. A cluster event is created when the reboot is completed.
%% Any
%% pending cluster modifications (see `ModifyCluster') are applied at
%% this
%% reboot.
%% For more information about managing clusters, go to
%% Amazon Redshift Clusters:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html
%% in the Amazon Redshift Cluster Management Guide.
-spec reboot_cluster(aws_client:aws_client(), reboot_cluster_message()) ->
    {ok, reboot_cluster_result(), tuple()} |
    {error, any()} |
    {error, reboot_cluster_errors(), tuple()}.
reboot_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_cluster(Client, Input, []).

-spec reboot_cluster(aws_client:aws_client(), reboot_cluster_message(), proplists:proplist()) ->
    {ok, reboot_cluster_result(), tuple()} |
    {error, any()} |
    {error, reboot_cluster_errors(), tuple()}.
reboot_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootCluster">>, Input, Options).

%% @doc Registers a cluster or serverless namespace to the Amazon Web
%% Services Glue Data Catalog.
-spec register_namespace(aws_client:aws_client(), register_namespace_input_message()) ->
    {ok, register_namespace_output_message(), tuple()} |
    {error, any()} |
    {error, register_namespace_errors(), tuple()}.
register_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_namespace(Client, Input, []).

-spec register_namespace(aws_client:aws_client(), register_namespace_input_message(), proplists:proplist()) ->
    {ok, register_namespace_output_message(), tuple()} |
    {error, any()} |
    {error, register_namespace_errors(), tuple()}.
register_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterNamespace">>, Input, Options).

%% @doc From a datashare consumer account, rejects the specified datashare.
-spec reject_data_share(aws_client:aws_client(), reject_data_share_message()) ->
    {ok, data_share(), tuple()} |
    {error, any()} |
    {error, reject_data_share_errors(), tuple()}.
reject_data_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_data_share(Client, Input, []).

-spec reject_data_share(aws_client:aws_client(), reject_data_share_message(), proplists:proplist()) ->
    {ok, data_share(), tuple()} |
    {error, any()} |
    {error, reject_data_share_errors(), tuple()}.
reject_data_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectDataShare">>, Input, Options).

%% @doc Sets one or more parameters of the specified parameter group to their
%% default
%% values and sets the source values of the parameters to
%% &quot;engine-default&quot;.
%%
%% To reset the
%% entire parameter group specify the ResetAllParameters parameter.
%% For parameter changes to take effect you must reboot any associated
%% clusters.
-spec reset_cluster_parameter_group(aws_client:aws_client(), reset_cluster_parameter_group_message()) ->
    {ok, cluster_parameter_group_name_message(), tuple()} |
    {error, any()} |
    {error, reset_cluster_parameter_group_errors(), tuple()}.
reset_cluster_parameter_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_cluster_parameter_group(Client, Input, []).

-spec reset_cluster_parameter_group(aws_client:aws_client(), reset_cluster_parameter_group_message(), proplists:proplist()) ->
    {ok, cluster_parameter_group_name_message(), tuple()} |
    {error, any()} |
    {error, reset_cluster_parameter_group_errors(), tuple()}.
reset_cluster_parameter_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetClusterParameterGroup">>, Input, Options).

%% @doc Changes the size of the cluster.
%%
%% You can change the cluster's type, or change the
%% number or type of nodes. The default behavior is to use the elastic resize
%% method. With
%% an elastic resize, your cluster is available for read and write operations
%% more quickly
%% than with the classic resize method.
%%
%% Elastic resize operations have the following restrictions:
%%
%% You can only resize clusters of the following types:
%%
%% dc2.large
%%
%% dc2.8xlarge
%%
%% ra3.large
%%
%% ra3.xlplus
%%
%% ra3.4xlarge
%%
%% ra3.16xlarge
%%
%% The type of nodes that you add must match the node type for the
%% cluster.
-spec resize_cluster(aws_client:aws_client(), resize_cluster_message()) ->
    {ok, resize_cluster_result(), tuple()} |
    {error, any()} |
    {error, resize_cluster_errors(), tuple()}.
resize_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    resize_cluster(Client, Input, []).

-spec resize_cluster(aws_client:aws_client(), resize_cluster_message(), proplists:proplist()) ->
    {ok, resize_cluster_result(), tuple()} |
    {error, any()} |
    {error, resize_cluster_errors(), tuple()}.
resize_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResizeCluster">>, Input, Options).

%% @doc Creates a new cluster from a snapshot.
%%
%% By default, Amazon Redshift creates the resulting
%% cluster with the same configuration as the original cluster from which the
%% snapshot was
%% created, except that the new cluster is created with the default cluster
%% security and
%% parameter groups. After Amazon Redshift creates the cluster, you can use
%% the `ModifyCluster' API to associate a different security group and
%% different
%% parameter group with the restored cluster. If you are using a DS node
%% type, you can also
%% choose to change to another DS node type of the same size during restore.
%%
%% If you restore a cluster into a VPC, you must provide a cluster subnet
%% group where
%% you want the cluster restored.
%%
%% VPC Block Public Access (BPA) enables you to block resources in VPCs and
%% subnets that
%% you own in a Region from reaching or being reached from the internet
%% through internet
%% gateways and egress-only internet gateways. If a subnet group for a
%% provisioned cluster is in an account with VPC BPA turned on, the following
%% capabilities
%% are blocked:
%%
%% Creating a public cluster
%%
%% Restoring a public cluster
%%
%% Modifying a private cluster to be public
%%
%% Adding a subnet with VPC BPA turned on to the subnet group when
%% there's at
%% least one public cluster within the group
%%
%% For more information about VPC BPA, see Block public access to VPCs and
%% subnets:
%% https://docs.aws.amazon.com/vpc/latest/userguide/security-vpc-bpa.html in
%% the Amazon VPC User Guide.
%%
%% For more information about working with snapshots, go to
%% Amazon Redshift Snapshots:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html
%% in the Amazon Redshift Cluster Management Guide.
-spec restore_from_cluster_snapshot(aws_client:aws_client(), restore_from_cluster_snapshot_message()) ->
    {ok, restore_from_cluster_snapshot_result(), tuple()} |
    {error, any()} |
    {error, restore_from_cluster_snapshot_errors(), tuple()}.
restore_from_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_from_cluster_snapshot(Client, Input, []).

-spec restore_from_cluster_snapshot(aws_client:aws_client(), restore_from_cluster_snapshot_message(), proplists:proplist()) ->
    {ok, restore_from_cluster_snapshot_result(), tuple()} |
    {error, any()} |
    {error, restore_from_cluster_snapshot_errors(), tuple()}.
restore_from_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreFromClusterSnapshot">>, Input, Options).

%% @doc Creates a new table from a table in an Amazon Redshift cluster
%% snapshot.
%%
%% You must
%% create the new table within the Amazon Redshift cluster that the snapshot
%% was taken
%% from.
%%
%% You cannot use `RestoreTableFromClusterSnapshot' to restore a table
%% with
%% the same name as an existing table in an Amazon Redshift cluster. That is,
%% you cannot
%% overwrite an existing table in a cluster with a restored table. If you
%% want to replace
%% your original table with a new, restored table, then rename or drop your
%% original table
%% before you call `RestoreTableFromClusterSnapshot'. When you have
%% renamed your
%% original table, then you can pass the original name of the table as the
%% `NewTableName' parameter value in the call to
%% `RestoreTableFromClusterSnapshot'. This way, you can replace the
%% original
%% table with the table created from the snapshot.
%%
%% You can't use this operation to restore tables with
%% interleaved sort keys:
%% https://docs.aws.amazon.com/redshift/latest/dg/t_Sorting_data.html#t_Sorting_data-interleaved.
-spec restore_table_from_cluster_snapshot(aws_client:aws_client(), restore_table_from_cluster_snapshot_message()) ->
    {ok, restore_table_from_cluster_snapshot_result(), tuple()} |
    {error, any()} |
    {error, restore_table_from_cluster_snapshot_errors(), tuple()}.
restore_table_from_cluster_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_table_from_cluster_snapshot(Client, Input, []).

-spec restore_table_from_cluster_snapshot(aws_client:aws_client(), restore_table_from_cluster_snapshot_message(), proplists:proplist()) ->
    {ok, restore_table_from_cluster_snapshot_result(), tuple()} |
    {error, any()} |
    {error, restore_table_from_cluster_snapshot_errors(), tuple()}.
restore_table_from_cluster_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreTableFromClusterSnapshot">>, Input, Options).

%% @doc Resumes a paused cluster.
-spec resume_cluster(aws_client:aws_client(), resume_cluster_message()) ->
    {ok, resume_cluster_result(), tuple()} |
    {error, any()} |
    {error, resume_cluster_errors(), tuple()}.
resume_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    resume_cluster(Client, Input, []).

-spec resume_cluster(aws_client:aws_client(), resume_cluster_message(), proplists:proplist()) ->
    {ok, resume_cluster_result(), tuple()} |
    {error, any()} |
    {error, resume_cluster_errors(), tuple()}.
resume_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResumeCluster">>, Input, Options).

%% @doc Revokes an ingress rule in an Amazon Redshift security group for a
%% previously authorized
%% IP range or Amazon EC2 security group.
%%
%% To add an ingress rule, see `AuthorizeClusterSecurityGroupIngress'.
%% For information about managing security groups, go to
%% Amazon Redshift Cluster Security Groups:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html
%% in the
%% Amazon Redshift Cluster Management Guide.
-spec revoke_cluster_security_group_ingress(aws_client:aws_client(), revoke_cluster_security_group_ingress_message()) ->
    {ok, revoke_cluster_security_group_ingress_result(), tuple()} |
    {error, any()} |
    {error, revoke_cluster_security_group_ingress_errors(), tuple()}.
revoke_cluster_security_group_ingress(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_cluster_security_group_ingress(Client, Input, []).

-spec revoke_cluster_security_group_ingress(aws_client:aws_client(), revoke_cluster_security_group_ingress_message(), proplists:proplist()) ->
    {ok, revoke_cluster_security_group_ingress_result(), tuple()} |
    {error, any()} |
    {error, revoke_cluster_security_group_ingress_errors(), tuple()}.
revoke_cluster_security_group_ingress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeClusterSecurityGroupIngress">>, Input, Options).

%% @doc Revokes access to a cluster.
-spec revoke_endpoint_access(aws_client:aws_client(), revoke_endpoint_access_message()) ->
    {ok, endpoint_authorization(), tuple()} |
    {error, any()} |
    {error, revoke_endpoint_access_errors(), tuple()}.
revoke_endpoint_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_endpoint_access(Client, Input, []).

-spec revoke_endpoint_access(aws_client:aws_client(), revoke_endpoint_access_message(), proplists:proplist()) ->
    {ok, endpoint_authorization(), tuple()} |
    {error, any()} |
    {error, revoke_endpoint_access_errors(), tuple()}.
revoke_endpoint_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeEndpointAccess">>, Input, Options).

%% @doc Removes the ability of the specified Amazon Web Services account to
%% restore the specified
%% snapshot.
%%
%% If the account is currently restoring the snapshot, the restore will run
%% to
%% completion.
%%
%% For more information about working with snapshots, go to
%% Amazon Redshift Snapshots:
%% https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-snapshots.html
%% in the Amazon Redshift Cluster Management Guide.
-spec revoke_snapshot_access(aws_client:aws_client(), revoke_snapshot_access_message()) ->
    {ok, revoke_snapshot_access_result(), tuple()} |
    {error, any()} |
    {error, revoke_snapshot_access_errors(), tuple()}.
revoke_snapshot_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_snapshot_access(Client, Input, []).

-spec revoke_snapshot_access(aws_client:aws_client(), revoke_snapshot_access_message(), proplists:proplist()) ->
    {ok, revoke_snapshot_access_result(), tuple()} |
    {error, any()} |
    {error, revoke_snapshot_access_errors(), tuple()}.
revoke_snapshot_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeSnapshotAccess">>, Input, Options).

%% @doc Rotates the encryption keys for a cluster.
-spec rotate_encryption_key(aws_client:aws_client(), rotate_encryption_key_message()) ->
    {ok, rotate_encryption_key_result(), tuple()} |
    {error, any()} |
    {error, rotate_encryption_key_errors(), tuple()}.
rotate_encryption_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    rotate_encryption_key(Client, Input, []).

-spec rotate_encryption_key(aws_client:aws_client(), rotate_encryption_key_message(), proplists:proplist()) ->
    {ok, rotate_encryption_key_result(), tuple()} |
    {error, any()} |
    {error, rotate_encryption_key_errors(), tuple()}.
rotate_encryption_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RotateEncryptionKey">>, Input, Options).

%% @doc Updates the status of a partner integration.
-spec update_partner_status(aws_client:aws_client(), update_partner_status_input_message()) ->
    {ok, partner_integration_output_message(), tuple()} |
    {error, any()} |
    {error, update_partner_status_errors(), tuple()}.
update_partner_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_partner_status(Client, Input, []).

-spec update_partner_status(aws_client:aws_client(), update_partner_status_input_message(), proplists:proplist()) ->
    {ok, partner_integration_output_message(), tuple()} |
    {error, any()} |
    {error, update_partner_status_errors(), tuple()}.
update_partner_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePartnerStatus">>, Input, Options).

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
    Client1 = Client#{service => <<"redshift">>},
    Host = build_host(<<"redshift">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],

    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2012-12-01">>
                   },

    Payload = aws_util:encode_query(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = aws_util:decode_xml(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
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
