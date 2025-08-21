%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon DataZone is a data management service that enables you to
%% catalog, discover, govern, share, and analyze your data.
%%
%% With Amazon DataZone, you can share and access your data across accounts
%% and supported regions. Amazon DataZone simplifies your experience across
%% Amazon Web Services services, including, but not limited to, Amazon
%% Redshift, Amazon Athena, Amazon Web Services Glue, and Amazon Web Services
%% Lake Formation.
-module(aws_datazone).

-export([accept_predictions/4,
         accept_predictions/5,
         accept_subscription_request/4,
         accept_subscription_request/5,
         add_entity_owner/5,
         add_entity_owner/6,
         add_policy_grant/5,
         add_policy_grant/6,
         associate_environment_role/5,
         associate_environment_role/6,
         cancel_metadata_generation_run/4,
         cancel_metadata_generation_run/5,
         cancel_subscription/4,
         cancel_subscription/5,
         create_account_pool/3,
         create_account_pool/4,
         create_asset/3,
         create_asset/4,
         create_asset_filter/4,
         create_asset_filter/5,
         create_asset_revision/4,
         create_asset_revision/5,
         create_asset_type/3,
         create_asset_type/4,
         create_connection/3,
         create_connection/4,
         create_data_product/3,
         create_data_product/4,
         create_data_product_revision/4,
         create_data_product_revision/5,
         create_data_source/3,
         create_data_source/4,
         create_domain/2,
         create_domain/3,
         create_domain_unit/3,
         create_domain_unit/4,
         create_environment/3,
         create_environment/4,
         create_environment_action/4,
         create_environment_action/5,
         create_environment_profile/3,
         create_environment_profile/4,
         create_form_type/3,
         create_form_type/4,
         create_glossary/3,
         create_glossary/4,
         create_glossary_term/3,
         create_glossary_term/4,
         create_group_profile/3,
         create_group_profile/4,
         create_listing_change_set/3,
         create_listing_change_set/4,
         create_project/3,
         create_project/4,
         create_project_membership/4,
         create_project_membership/5,
         create_project_profile/3,
         create_project_profile/4,
         create_rule/3,
         create_rule/4,
         create_subscription_grant/3,
         create_subscription_grant/4,
         create_subscription_request/3,
         create_subscription_request/4,
         create_subscription_target/4,
         create_subscription_target/5,
         create_user_profile/3,
         create_user_profile/4,
         delete_account_pool/4,
         delete_account_pool/5,
         delete_asset/4,
         delete_asset/5,
         delete_asset_filter/5,
         delete_asset_filter/6,
         delete_asset_type/4,
         delete_asset_type/5,
         delete_connection/4,
         delete_connection/5,
         delete_data_product/4,
         delete_data_product/5,
         delete_data_source/4,
         delete_data_source/5,
         delete_domain/3,
         delete_domain/4,
         delete_domain_unit/4,
         delete_domain_unit/5,
         delete_environment/4,
         delete_environment/5,
         delete_environment_action/5,
         delete_environment_action/6,
         delete_environment_blueprint_configuration/4,
         delete_environment_blueprint_configuration/5,
         delete_environment_profile/4,
         delete_environment_profile/5,
         delete_form_type/4,
         delete_form_type/5,
         delete_glossary/4,
         delete_glossary/5,
         delete_glossary_term/4,
         delete_glossary_term/5,
         delete_listing/4,
         delete_listing/5,
         delete_project/4,
         delete_project/5,
         delete_project_membership/4,
         delete_project_membership/5,
         delete_project_profile/4,
         delete_project_profile/5,
         delete_rule/4,
         delete_rule/5,
         delete_subscription_grant/4,
         delete_subscription_grant/5,
         delete_subscription_request/4,
         delete_subscription_request/5,
         delete_subscription_target/5,
         delete_subscription_target/6,
         delete_time_series_data_points/5,
         delete_time_series_data_points/6,
         disassociate_environment_role/5,
         disassociate_environment_role/6,
         get_account_pool/3,
         get_account_pool/5,
         get_account_pool/6,
         get_asset/3,
         get_asset/5,
         get_asset/6,
         get_asset_filter/4,
         get_asset_filter/6,
         get_asset_filter/7,
         get_asset_type/3,
         get_asset_type/5,
         get_asset_type/6,
         get_connection/3,
         get_connection/5,
         get_connection/6,
         get_data_product/3,
         get_data_product/5,
         get_data_product/6,
         get_data_source/3,
         get_data_source/5,
         get_data_source/6,
         get_data_source_run/3,
         get_data_source_run/5,
         get_data_source_run/6,
         get_domain/2,
         get_domain/4,
         get_domain/5,
         get_domain_unit/3,
         get_domain_unit/5,
         get_domain_unit/6,
         get_environment/3,
         get_environment/5,
         get_environment/6,
         get_environment_action/4,
         get_environment_action/6,
         get_environment_action/7,
         get_environment_blueprint/3,
         get_environment_blueprint/5,
         get_environment_blueprint/6,
         get_environment_blueprint_configuration/3,
         get_environment_blueprint_configuration/5,
         get_environment_blueprint_configuration/6,
         get_environment_credentials/3,
         get_environment_credentials/5,
         get_environment_credentials/6,
         get_environment_profile/3,
         get_environment_profile/5,
         get_environment_profile/6,
         get_form_type/3,
         get_form_type/5,
         get_form_type/6,
         get_glossary/3,
         get_glossary/5,
         get_glossary/6,
         get_glossary_term/3,
         get_glossary_term/5,
         get_glossary_term/6,
         get_group_profile/3,
         get_group_profile/5,
         get_group_profile/6,
         get_iam_portal_login_url/3,
         get_iam_portal_login_url/4,
         get_job_run/3,
         get_job_run/5,
         get_job_run/6,
         get_lineage_event/3,
         get_lineage_event/5,
         get_lineage_event/6,
         get_lineage_node/3,
         get_lineage_node/5,
         get_lineage_node/6,
         get_listing/3,
         get_listing/5,
         get_listing/6,
         get_metadata_generation_run/3,
         get_metadata_generation_run/5,
         get_metadata_generation_run/6,
         get_project/3,
         get_project/5,
         get_project/6,
         get_project_profile/3,
         get_project_profile/5,
         get_project_profile/6,
         get_rule/3,
         get_rule/5,
         get_rule/6,
         get_subscription/3,
         get_subscription/5,
         get_subscription/6,
         get_subscription_grant/3,
         get_subscription_grant/5,
         get_subscription_grant/6,
         get_subscription_request_details/3,
         get_subscription_request_details/5,
         get_subscription_request_details/6,
         get_subscription_target/4,
         get_subscription_target/6,
         get_subscription_target/7,
         get_time_series_data_point/6,
         get_time_series_data_point/8,
         get_time_series_data_point/9,
         get_user_profile/3,
         get_user_profile/5,
         get_user_profile/6,
         list_account_pools/2,
         list_account_pools/4,
         list_account_pools/5,
         list_accounts_in_account_pool/3,
         list_accounts_in_account_pool/5,
         list_accounts_in_account_pool/6,
         list_asset_filters/3,
         list_asset_filters/5,
         list_asset_filters/6,
         list_asset_revisions/3,
         list_asset_revisions/5,
         list_asset_revisions/6,
         list_connections/3,
         list_connections/5,
         list_connections/6,
         list_data_product_revisions/3,
         list_data_product_revisions/5,
         list_data_product_revisions/6,
         list_data_source_run_activities/3,
         list_data_source_run_activities/5,
         list_data_source_run_activities/6,
         list_data_source_runs/3,
         list_data_source_runs/5,
         list_data_source_runs/6,
         list_data_sources/3,
         list_data_sources/5,
         list_data_sources/6,
         list_domain_units_for_parent/3,
         list_domain_units_for_parent/5,
         list_domain_units_for_parent/6,
         list_domains/1,
         list_domains/3,
         list_domains/4,
         list_entity_owners/4,
         list_entity_owners/6,
         list_entity_owners/7,
         list_environment_actions/3,
         list_environment_actions/5,
         list_environment_actions/6,
         list_environment_blueprint_configurations/2,
         list_environment_blueprint_configurations/4,
         list_environment_blueprint_configurations/5,
         list_environment_blueprints/2,
         list_environment_blueprints/4,
         list_environment_blueprints/5,
         list_environment_profiles/2,
         list_environment_profiles/4,
         list_environment_profiles/5,
         list_environments/3,
         list_environments/5,
         list_environments/6,
         list_job_runs/3,
         list_job_runs/5,
         list_job_runs/6,
         list_lineage_events/2,
         list_lineage_events/4,
         list_lineage_events/5,
         list_lineage_node_history/3,
         list_lineage_node_history/5,
         list_lineage_node_history/6,
         list_metadata_generation_runs/2,
         list_metadata_generation_runs/4,
         list_metadata_generation_runs/5,
         list_notifications/3,
         list_notifications/5,
         list_notifications/6,
         list_policy_grants/5,
         list_policy_grants/7,
         list_policy_grants/8,
         list_project_memberships/3,
         list_project_memberships/5,
         list_project_memberships/6,
         list_project_profiles/2,
         list_project_profiles/4,
         list_project_profiles/5,
         list_projects/2,
         list_projects/4,
         list_projects/5,
         list_rules/4,
         list_rules/6,
         list_rules/7,
         list_subscription_grants/2,
         list_subscription_grants/4,
         list_subscription_grants/5,
         list_subscription_requests/2,
         list_subscription_requests/4,
         list_subscription_requests/5,
         list_subscription_targets/3,
         list_subscription_targets/5,
         list_subscription_targets/6,
         list_subscriptions/2,
         list_subscriptions/4,
         list_subscriptions/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_time_series_data_points/5,
         list_time_series_data_points/7,
         list_time_series_data_points/8,
         post_lineage_event/3,
         post_lineage_event/4,
         post_time_series_data_points/5,
         post_time_series_data_points/6,
         put_environment_blueprint_configuration/4,
         put_environment_blueprint_configuration/5,
         reject_predictions/4,
         reject_predictions/5,
         reject_subscription_request/4,
         reject_subscription_request/5,
         remove_entity_owner/5,
         remove_entity_owner/6,
         remove_policy_grant/5,
         remove_policy_grant/6,
         revoke_subscription/4,
         revoke_subscription/5,
         search/3,
         search/4,
         search_group_profiles/3,
         search_group_profiles/4,
         search_listings/3,
         search_listings/4,
         search_types/3,
         search_types/4,
         search_user_profiles/3,
         search_user_profiles/4,
         start_data_source_run/4,
         start_data_source_run/5,
         start_metadata_generation_run/3,
         start_metadata_generation_run/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_account_pool/4,
         update_account_pool/5,
         update_asset_filter/5,
         update_asset_filter/6,
         update_connection/4,
         update_connection/5,
         update_data_source/4,
         update_data_source/5,
         update_domain/3,
         update_domain/4,
         update_domain_unit/4,
         update_domain_unit/5,
         update_environment/4,
         update_environment/5,
         update_environment_action/5,
         update_environment_action/6,
         update_environment_profile/4,
         update_environment_profile/5,
         update_glossary/4,
         update_glossary/5,
         update_glossary_term/4,
         update_glossary_term/5,
         update_group_profile/4,
         update_group_profile/5,
         update_project/4,
         update_project/5,
         update_project_profile/4,
         update_project_profile/5,
         update_rule/4,
         update_rule/5,
         update_subscription_grant_status/5,
         update_subscription_grant_status/6,
         update_subscription_request/4,
         update_subscription_request/5,
         update_subscription_target/5,
         update_subscription_target/6,
         update_user_profile/4,
         update_user_profile/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% policy_grant_member() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"detail">> => list(),
%%   <<"grantId">> => string(),
%%   <<"principal">> => list()
%% }
-type policy_grant_member() :: #{binary() => any()}.


%% Example:
%% asset_revision() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"id">> => string(),
%%   <<"revision">> => string()
%% }
-type asset_revision() :: #{binary() => any()}.


%% Example:
%% list_project_profiles_output() :: #{
%%   <<"items">> => list(project_profile_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_project_profiles_output() :: #{binary() => any()}.


%% Example:
%% metadata_form_enforcement_detail() :: #{
%%   <<"requiredMetadataForms">> => list(metadata_form_reference())
%% }
-type metadata_form_enforcement_detail() :: #{binary() => any()}.


%% Example:
%% update_group_profile_input() :: #{
%%   <<"status">> := list(any())
%% }
-type update_group_profile_input() :: #{binary() => any()}.


%% Example:
%% update_domain_output() :: #{
%%   <<"description">> => [string()],
%%   <<"domainExecutionRole">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => [string()],
%%   <<"rootDomainUnitId">> => string(),
%%   <<"serviceRole">> => string(),
%%   <<"singleSignOn">> => single_sign_on()
%% }
-type update_domain_output() :: #{binary() => any()}.


%% Example:
%% list_metadata_generation_runs_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type list_metadata_generation_runs_input() :: #{binary() => any()}.


%% Example:
%% create_asset_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"externalIdentifier">> => string(),
%%   <<"formsInput">> => list(form_input()),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"name">> := string(),
%%   <<"owningProjectIdentifier">> := string(),
%%   <<"predictionConfiguration">> => prediction_configuration(),
%%   <<"typeIdentifier">> := string(),
%%   <<"typeRevision">> => string()
%% }
-type create_asset_input() :: #{binary() => any()}.


%% Example:
%% search_user_profiles_output() :: #{
%%   <<"items">> => list(user_profile_summary()),
%%   <<"nextToken">> => string()
%% }
-type search_user_profiles_output() :: #{binary() => any()}.


%% Example:
%% asset_item() :: #{
%%   <<"additionalAttributes">> => asset_item_additional_attributes(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"externalIdentifier">> => string(),
%%   <<"firstRevisionCreatedAt">> => non_neg_integer(),
%%   <<"firstRevisionCreatedBy">> => string(),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"identifier">> => string(),
%%   <<"name">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"typeIdentifier">> => string(),
%%   <<"typeRevision">> => string()
%% }
-type asset_item() :: #{binary() => any()}.


%% Example:
%% account_pool_summary() :: #{
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"domainUnitId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"resolutionStrategy">> => list(any()),
%%   <<"updatedBy">> => string()
%% }
-type account_pool_summary() :: #{binary() => any()}.


%% Example:
%% business_name_generation_configuration() :: #{
%%   <<"enabled">> => [boolean()]
%% }
-type business_name_generation_configuration() :: #{binary() => any()}.


%% Example:
%% create_form_type_policy_grant_detail() :: #{
%%   <<"includeChildDomainUnits">> => [boolean()]
%% }
-type create_form_type_policy_grant_detail() :: #{binary() => any()}.


%% Example:
%% data_product_listing() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dataProductId">> => string(),
%%   <<"dataProductRevision">> => string(),
%%   <<"forms">> => string(),
%%   <<"glossaryTerms">> => list(detailed_glossary_term()),
%%   <<"items">> => list(listing_summary()),
%%   <<"owningProjectId">> => string()
%% }
-type data_product_listing() :: #{binary() => any()}.


%% Example:
%% create_environment_action_input() :: #{
%%   <<"description">> => [string()],
%%   <<"name">> := [string()],
%%   <<"parameters">> := list()
%% }
-type create_environment_action_input() :: #{binary() => any()}.


%% Example:
%% list_environment_actions_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_environment_actions_input() :: #{binary() => any()}.


%% Example:
%% listing_summary_item() :: #{
%%   <<"glossaryTerms">> => list(detailed_glossary_term()),
%%   <<"listingId">> => string(),
%%   <<"listingRevision">> => string()
%% }
-type listing_summary_item() :: #{binary() => any()}.


%% Example:
%% asset_filter_summary() :: #{
%%   <<"assetId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"effectiveColumnNames">> => list([string()]()),
%%   <<"effectiveRowFilter">> => [string()],
%%   <<"errorMessage">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type asset_filter_summary() :: #{binary() => any()}.


%% Example:
%% redshift_credential_configuration() :: #{
%%   <<"secretManagerArn">> => [string()]
%% }
-type redshift_credential_configuration() :: #{binary() => any()}.


%% Example:
%% update_glossary_term_output() :: #{
%%   <<"domainId">> => string(),
%%   <<"glossaryId">> => string(),
%%   <<"id">> => string(),
%%   <<"longDescription">> => string(),
%%   <<"name">> => string(),
%%   <<"shortDescription">> => string(),
%%   <<"status">> => list(any()),
%%   <<"termRelations">> => term_relations()
%% }
-type update_glossary_term_output() :: #{binary() => any()}.

%% Example:
%% delete_time_series_data_points_output() :: #{}
-type delete_time_series_data_points_output() :: #{}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_environment_blueprint_configurations_output() :: #{
%%   <<"items">> => list(environment_blueprint_configuration_item()),
%%   <<"nextToken">> => string()
%% }
-type list_environment_blueprint_configurations_output() :: #{binary() => any()}.


%% Example:
%% list_data_source_runs_output() :: #{
%%   <<"items">> => list(data_source_run_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_data_source_runs_output() :: #{binary() => any()}.


%% Example:
%% redshift_run_configuration_input() :: #{
%%   <<"dataAccessRole">> => [string()],
%%   <<"redshiftCredentialConfiguration">> => redshift_credential_configuration(),
%%   <<"redshiftStorage">> => list(),
%%   <<"relationalFilterConfigurations">> => list(relational_filter_configuration())
%% }
-type redshift_run_configuration_input() :: #{binary() => any()}.


%% Example:
%% list_asset_filters_output() :: #{
%%   <<"items">> => list(asset_filter_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_asset_filters_output() :: #{binary() => any()}.


%% Example:
%% redshift_properties_input() :: #{
%%   <<"credentials">> => list(),
%%   <<"databaseName">> => [string()],
%%   <<"host">> => [string()],
%%   <<"lineageSync">> => redshift_lineage_sync_configuration_input(),
%%   <<"port">> => [integer()],
%%   <<"storage">> => list()
%% }
-type redshift_properties_input() :: #{binary() => any()}.


%% Example:
%% list_data_source_runs_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_data_source_runs_input() :: #{binary() => any()}.


%% Example:
%% get_asset_type_input() :: #{
%%   <<"revision">> => string()
%% }
-type get_asset_type_input() :: #{binary() => any()}.


%% Example:
%% search_sort() :: #{
%%   <<"attribute">> => string(),
%%   <<"order">> => list(any())
%% }
-type search_sort() :: #{binary() => any()}.


%% Example:
%% subscription_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"id">> => string(),
%%   <<"retainPermissions">> => [boolean()],
%%   <<"status">> => list(any()),
%%   <<"subscribedListing">> => subscribed_listing(),
%%   <<"subscribedPrincipal">> => list(),
%%   <<"subscriptionRequestId">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type subscription_summary() :: #{binary() => any()}.


%% Example:
%% subscription_target_form() :: #{
%%   <<"content">> => [string()],
%%   <<"formName">> => string()
%% }
-type subscription_target_form() :: #{binary() => any()}.


%% Example:
%% list_project_memberships_output() :: #{
%%   <<"members">> => list(project_member()),
%%   <<"nextToken">> => string()
%% }
-type list_project_memberships_output() :: #{binary() => any()}.


%% Example:
%% update_environment_profile_input() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"awsAccountRegion">> => string(),
%%   <<"description">> => [string()],
%%   <<"name">> => string(),
%%   <<"userParameters">> => list(environment_parameter())
%% }
-type update_environment_profile_input() :: #{binary() => any()}.

%% Example:
%% get_project_profile_input() :: #{}
-type get_project_profile_input() :: #{}.


%% Example:
%% s3_properties_patch() :: #{
%%   <<"s3AccessGrantLocationId">> => string(),
%%   <<"s3Uri">> => string()
%% }
-type s3_properties_patch() :: #{binary() => any()}.


%% Example:
%% update_subscription_target_output() :: #{
%%   <<"applicableAssetTypes">> => list(string()),
%%   <<"authorizedPrincipals">> => list(string()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"id">> => string(),
%%   <<"manageAccessRole">> => string(),
%%   <<"name">> => string(),
%%   <<"projectId">> => string(),
%%   <<"provider">> => [string()],
%%   <<"subscriptionTargetConfig">> => list(subscription_target_form()),
%%   <<"type">> => [string()],
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type update_subscription_target_output() :: #{binary() => any()}.


%% Example:
%% reject_subscription_request_input() :: #{
%%   <<"decisionComment">> => string()
%% }
-type reject_subscription_request_input() :: #{binary() => any()}.

%% Example:
%% delete_connection_input() :: #{}
-type delete_connection_input() :: #{}.


%% Example:
%% update_group_profile_output() :: #{
%%   <<"domainId">> => string(),
%%   <<"groupName">> => string(),
%%   <<"id">> => string(),
%%   <<"status">> => list(any())
%% }
-type update_group_profile_output() :: #{binary() => any()}.


%% Example:
%% list_job_runs_output() :: #{
%%   <<"items">> => list(job_run_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_job_runs_output() :: #{binary() => any()}.

%% Example:
%% get_domain_input() :: #{}
-type get_domain_input() :: #{}.

%% Example:
%% get_environment_action_input() :: #{}
-type get_environment_action_input() :: #{}.


%% Example:
%% list_policy_grants_output() :: #{
%%   <<"grantList">> => list(policy_grant_member()),
%%   <<"nextToken">> => string()
%% }
-type list_policy_grants_output() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"message">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% metadata_form_reference() :: #{
%%   <<"typeIdentifier">> => string(),
%%   <<"typeRevision">> => string()
%% }
-type metadata_form_reference() :: #{binary() => any()}.


%% Example:
%% get_asset_filter_output() :: #{
%%   <<"assetId">> => string(),
%%   <<"configuration">> => list(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"effectiveColumnNames">> => list([string()]()),
%%   <<"effectiveRowFilter">> => [string()],
%%   <<"errorMessage">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type get_asset_filter_output() :: #{binary() => any()}.

%% Example:
%% delete_form_type_output() :: #{}
-type delete_form_type_output() :: #{}.

%% Example:
%% remove_entity_owner_output() :: #{}
-type remove_entity_owner_output() :: #{}.


%% Example:
%% redshift_properties_output() :: #{
%%   <<"credentials">> => list(),
%%   <<"databaseName">> => [string()],
%%   <<"isProvisionedSecret">> => [boolean()],
%%   <<"jdbcIamUrl">> => [string()],
%%   <<"jdbcUrl">> => [string()],
%%   <<"lineageSync">> => redshift_lineage_sync_configuration_output(),
%%   <<"redshiftTempDir">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"storage">> => list()
%% }
-type redshift_properties_output() :: #{binary() => any()}.


%% Example:
%% asset_listing_details() :: #{
%%   <<"listingId">> => string(),
%%   <<"listingStatus">> => list(any())
%% }
-type asset_listing_details() :: #{binary() => any()}.

%% Example:
%% all_users_grant_filter() :: #{}
-type all_users_grant_filter() :: #{}.


%% Example:
%% environment_configuration_parameters_details() :: #{
%%   <<"parameterOverrides">> => list(environment_configuration_parameter()),
%%   <<"resolvedParameters">> => list(environment_configuration_parameter()),
%%   <<"ssmPath">> => string()
%% }
-type environment_configuration_parameters_details() :: #{binary() => any()}.


%% Example:
%% lineage_sync_schedule() :: #{
%%   <<"schedule">> => [string()]
%% }
-type lineage_sync_schedule() :: #{binary() => any()}.


%% Example:
%% create_account_pool_output() :: #{
%%   <<"accountSource">> => list(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"domainUnitId">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"resolutionStrategy">> => list(any()),
%%   <<"updatedBy">> => string()
%% }
-type create_account_pool_output() :: #{binary() => any()}.


%% Example:
%% deployment() :: #{
%%   <<"deploymentId">> => [string()],
%%   <<"deploymentStatus">> => list(any()),
%%   <<"deploymentType">> => list(any()),
%%   <<"failureReason">> => environment_error(),
%%   <<"isDeploymentComplete">> => [boolean()],
%%   <<"messages">> => list(string())
%% }
-type deployment() :: #{binary() => any()}.


%% Example:
%% get_environment_output() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"awsAccountRegion">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => [string()],
%%   <<"deploymentProperties">> => deployment_properties(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"environmentActions">> => list(configurable_environment_action()),
%%   <<"environmentBlueprintId">> => string(),
%%   <<"environmentConfigurationId">> => string(),
%%   <<"environmentProfileId">> => string(),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"id">> => string(),
%%   <<"lastDeployment">> => deployment(),
%%   <<"name">> => string(),
%%   <<"projectId">> => string(),
%%   <<"provider">> => [string()],
%%   <<"provisionedResources">> => list(resource()),
%%   <<"provisioningProperties">> => list(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"userParameters">> => list(custom_parameter())
%% }
-type get_environment_output() :: #{binary() => any()}.


%% Example:
%% update_project_input() :: #{
%%   <<"description">> => string(),
%%   <<"domainUnitId">> => string(),
%%   <<"environmentDeploymentDetails">> => environment_deployment_details(),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"name">> => string(),
%%   <<"projectProfileVersion">> => [string()],
%%   <<"userParameters">> => list(environment_configuration_user_parameter())
%% }
-type update_project_input() :: #{binary() => any()}.

%% Example:
%% get_data_source_input() :: #{}
-type get_data_source_input() :: #{}.


%% Example:
%% get_lineage_node_input() :: #{
%%   <<"eventTimestamp">> => [non_neg_integer()]
%% }
-type get_lineage_node_input() :: #{binary() => any()}.


%% Example:
%% project_member() :: #{
%%   <<"designation">> => list(any()),
%%   <<"memberDetails">> => list()
%% }
-type project_member() :: #{binary() => any()}.


%% Example:
%% project_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"domainUnitId">> => string(),
%%   <<"failureReasons">> => list(project_deletion_error()),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"projectStatus">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type project_summary() :: #{binary() => any()}.


%% Example:
%% environment_resolved_account() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"regionName">> => string(),
%%   <<"sourceAccountPoolId">> => string()
%% }
-type environment_resolved_account() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% glue_connection() :: #{
%%   <<"athenaProperties">> => map(),
%%   <<"authenticationConfiguration">> => authentication_configuration(),
%%   <<"compatibleComputeEnvironments">> => list(list(any())()),
%%   <<"connectionProperties">> => map(),
%%   <<"connectionSchemaVersion">> => [integer()],
%%   <<"connectionType">> => list(any()),
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"description">> => [string()],
%%   <<"lastConnectionValidationTime">> => [non_neg_integer()],
%%   <<"lastUpdatedBy">> => [string()],
%%   <<"lastUpdatedTime">> => [non_neg_integer()],
%%   <<"matchCriteria">> => list([string()]()),
%%   <<"name">> => [string()],
%%   <<"physicalConnectionRequirements">> => physical_connection_requirements(),
%%   <<"pythonProperties">> => map(),
%%   <<"sparkProperties">> => map(),
%%   <<"status">> => list(any()),
%%   <<"statusReason">> => [string()]
%% }
-type glue_connection() :: #{binary() => any()}.


%% Example:
%% create_asset_type_policy_grant_detail() :: #{
%%   <<"includeChildDomainUnits">> => [boolean()]
%% }
-type create_asset_type_policy_grant_detail() :: #{binary() => any()}.


%% Example:
%% list_accounts_in_account_pool_output() :: #{
%%   <<"items">> => list(account_info()),
%%   <<"nextToken">> => string()
%% }
-type list_accounts_in_account_pool_output() :: #{binary() => any()}.


%% Example:
%% project_deletion_error() :: #{
%%   <<"code">> => [string()],
%%   <<"message">> => [string()]
%% }
-type project_deletion_error() :: #{binary() => any()}.


%% Example:
%% create_environment_action_output() :: #{
%%   <<"description">> => [string()],
%%   <<"domainId">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => [string()],
%%   <<"parameters">> => list()
%% }
-type create_environment_action_output() :: #{binary() => any()}.


%% Example:
%% authentication_configuration_input() :: #{
%%   <<"authenticationType">> => list(any()),
%%   <<"basicAuthenticationCredentials">> => basic_authentication_credentials(),
%%   <<"customAuthenticationCredentials">> => map(),
%%   <<"kmsKeyArn">> => [string()],
%%   <<"oAuth2Properties">> => o_auth2_properties(),
%%   <<"secretArn">> => [string()]
%% }
-type authentication_configuration_input() :: #{binary() => any()}.


%% Example:
%% update_project_profile_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"domainUnitId">> => string(),
%%   <<"environmentConfigurations">> => list(environment_configuration()),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type update_project_profile_output() :: #{binary() => any()}.


%% Example:
%% create_listing_change_set_output() :: #{
%%   <<"listingId">> => string(),
%%   <<"listingRevision">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_listing_change_set_output() :: #{binary() => any()}.


%% Example:
%% get_group_profile_output() :: #{
%%   <<"domainId">> => string(),
%%   <<"groupName">> => string(),
%%   <<"id">> => string(),
%%   <<"status">> => list(any())
%% }
-type get_group_profile_output() :: #{binary() => any()}.


%% Example:
%% create_environment_input() :: #{
%%   <<"deploymentOrder">> => [integer()],
%%   <<"description">> => [string()],
%%   <<"environmentAccountIdentifier">> => [string()],
%%   <<"environmentAccountRegion">> => [string()],
%%   <<"environmentBlueprintIdentifier">> => [string()],
%%   <<"environmentConfigurationId">> => [string()],
%%   <<"environmentProfileIdentifier">> => string(),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"name">> := [string()],
%%   <<"projectIdentifier">> := string(),
%%   <<"userParameters">> => list(environment_parameter())
%% }
-type create_environment_input() :: #{binary() => any()}.


%% Example:
%% authorization_code_properties() :: #{
%%   <<"authorizationCode">> => [string()],
%%   <<"redirectUri">> => [string()]
%% }
-type authorization_code_properties() :: #{binary() => any()}.


%% Example:
%% update_environment_profile_output() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"awsAccountRegion">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => [string()],
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"environmentBlueprintId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"projectId">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"userParameters">> => list(custom_parameter())
%% }
-type update_environment_profile_output() :: #{binary() => any()}.


%% Example:
%% term_relations() :: #{
%%   <<"classifies">> => list(string()),
%%   <<"isA">> => list(string())
%% }
-type term_relations() :: #{binary() => any()}.

%% Example:
%% get_subscription_target_input() :: #{}
-type get_subscription_target_input() :: #{}.


%% Example:
%% list_lineage_events_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"processingStatus">> => list(any()),
%%   <<"sortOrder">> => list(any()),
%%   <<"timestampAfter">> => [non_neg_integer()],
%%   <<"timestampBefore">> => [non_neg_integer()]
%% }
-type list_lineage_events_input() :: #{binary() => any()}.


%% Example:
%% list_time_series_data_points_output() :: #{
%%   <<"items">> => list(time_series_data_point_summary_form_output()),
%%   <<"nextToken">> => string()
%% }
-type list_time_series_data_points_output() :: #{binary() => any()}.


%% Example:
%% create_data_product_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"formsInput">> => list(form_input()),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"items">> => list(data_product_item()),
%%   <<"name">> := string(),
%%   <<"owningProjectIdentifier">> := string()
%% }
-type create_data_product_input() :: #{binary() => any()}.


%% Example:
%% domain_summary() :: #{
%%   <<"arn">> => [string()],
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"domainVersion">> => list(any()),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"managedAccountId">> => [string()],
%%   <<"name">> => string(),
%%   <<"portalUrl">> => [string()],
%%   <<"status">> => list(any())
%% }
-type domain_summary() :: #{binary() => any()}.


%% Example:
%% create_project_policy_grant_detail() :: #{
%%   <<"includeChildDomainUnits">> => [boolean()]
%% }
-type create_project_policy_grant_detail() :: #{binary() => any()}.


%% Example:
%% data_product_revision() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"id">> => string(),
%%   <<"revision">> => string()
%% }
-type data_product_revision() :: #{binary() => any()}.


%% Example:
%% create_subscription_target_output() :: #{
%%   <<"applicableAssetTypes">> => list(string()),
%%   <<"authorizedPrincipals">> => list(string()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"id">> => string(),
%%   <<"manageAccessRole">> => string(),
%%   <<"name">> => string(),
%%   <<"projectId">> => string(),
%%   <<"provider">> => [string()],
%%   <<"subscriptionTargetConfig">> => list(subscription_target_form()),
%%   <<"type">> => [string()],
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type create_subscription_target_output() :: #{binary() => any()}.


%% Example:
%% job_run_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => [string()],
%%   <<"domainId">> => string(),
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"error">> => job_run_error(),
%%   <<"jobId">> => [string()],
%%   <<"jobType">> => list(any()),
%%   <<"runId">> => [string()],
%%   <<"runMode">> => list(any()),
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"status">> => list(any())
%% }
-type job_run_summary() :: #{binary() => any()}.


%% Example:
%% create_subscription_request_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"metadataForms">> => list(form_input()),
%%   <<"requestReason">> := string(),
%%   <<"subscribedListings">> := list(subscribed_listing_input()),
%%   <<"subscribedPrincipals">> := list(list())
%% }
-type create_subscription_request_input() :: #{binary() => any()}.


%% Example:
%% owner_group_properties_output() :: #{
%%   <<"groupId">> => [string()]
%% }
-type owner_group_properties_output() :: #{binary() => any()}.


%% Example:
%% list_account_pools_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"name">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type list_account_pools_input() :: #{binary() => any()}.


%% Example:
%% create_data_product_revision_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"firstRevisionCreatedAt">> => non_neg_integer(),
%%   <<"firstRevisionCreatedBy">> => string(),
%%   <<"formsOutput">> => list(form_output()),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"id">> => string(),
%%   <<"items">> => list(data_product_item()),
%%   <<"name">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"revision">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_data_product_revision_output() :: #{binary() => any()}.


%% Example:
%% create_data_source_input() :: #{
%%   <<"assetFormsInput">> => list(form_input()),
%%   <<"clientToken">> => [string()],
%%   <<"configuration">> => list(),
%%   <<"connectionIdentifier">> => [string()],
%%   <<"description">> => string(),
%%   <<"enableSetting">> => list(any()),
%%   <<"environmentIdentifier">> => [string()],
%%   <<"name">> := string(),
%%   <<"projectIdentifier">> := [string()],
%%   <<"publishOnImport">> => [boolean()],
%%   <<"recommendation">> => recommendation_configuration(),
%%   <<"schedule">> => schedule_configuration(),
%%   <<"type">> := string()
%% }
-type create_data_source_input() :: #{binary() => any()}.


%% Example:
%% create_form_type_input() :: #{
%%   <<"description">> => string(),
%%   <<"model">> := list(),
%%   <<"name">> := string(),
%%   <<"owningProjectIdentifier">> := string(),
%%   <<"status">> => list(any())
%% }
-type create_form_type_input() :: #{binary() => any()}.


%% Example:
%% get_project_profile_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"domainUnitId">> => string(),
%%   <<"environmentConfigurations">> => list(environment_configuration()),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type get_project_profile_output() :: #{binary() => any()}.


%% Example:
%% add_policy_grant_output() :: #{
%%   <<"grantId">> => string()
%% }
-type add_policy_grant_output() :: #{binary() => any()}.


%% Example:
%% environment_summary() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"awsAccountRegion">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => [string()],
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"environmentConfigurationId">> => string(),
%%   <<"environmentProfileId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"projectId">> => string(),
%%   <<"provider">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type environment_summary() :: #{binary() => any()}.


%% Example:
%% list_accounts_in_account_pool_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_accounts_in_account_pool_input() :: #{binary() => any()}.


%% Example:
%% notification_resource() :: #{
%%   <<"id">> => [string()],
%%   <<"name">> => [string()],
%%   <<"type">> => list(any())
%% }
-type notification_resource() :: #{binary() => any()}.


%% Example:
%% data_source_run_activity() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dataAssetId">> => [string()],
%%   <<"dataAssetStatus">> => list(any()),
%%   <<"dataSourceRunId">> => string(),
%%   <<"database">> => string(),
%%   <<"errorMessage">> => data_source_error_message(),
%%   <<"lineageSummary">> => lineage_info(),
%%   <<"projectId">> => string(),
%%   <<"technicalDescription">> => string(),
%%   <<"technicalName">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type data_source_run_activity() :: #{binary() => any()}.

%% Example:
%% delete_environment_input() :: #{}
-type delete_environment_input() :: #{}.


%% Example:
%% search_input() :: #{
%%   <<"additionalAttributes">> => list(list(any())()),
%%   <<"filters">> => list(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"owningProjectIdentifier">> => string(),
%%   <<"searchIn">> => list(search_in_item()),
%%   <<"searchScope">> := list(any()),
%%   <<"searchText">> => string(),
%%   <<"sort">> => search_sort()
%% }
-type search_input() :: #{binary() => any()}.


%% Example:
%% get_account_pool_output() :: #{
%%   <<"accountSource">> => list(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"domainUnitId">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"resolutionStrategy">> => list(any()),
%%   <<"updatedBy">> => string()
%% }
-type get_account_pool_output() :: #{binary() => any()}.


%% Example:
%% single_sign_on() :: #{
%%   <<"idcInstanceArn">> => [string()],
%%   <<"type">> => list(any()),
%%   <<"userAssignment">> => list(any())
%% }
-type single_sign_on() :: #{binary() => any()}.


%% Example:
%% create_asset_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"externalIdentifier">> => string(),
%%   <<"firstRevisionCreatedAt">> => non_neg_integer(),
%%   <<"firstRevisionCreatedBy">> => string(),
%%   <<"formsOutput">> => list(form_output()),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"id">> => string(),
%%   <<"latestTimeSeriesDataPointFormsOutput">> => list(time_series_data_point_summary_form_output()),
%%   <<"listing">> => asset_listing_details(),
%%   <<"name">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"predictionConfiguration">> => prediction_configuration(),
%%   <<"readOnlyFormsOutput">> => list(form_output()),
%%   <<"revision">> => string(),
%%   <<"typeIdentifier">> => string(),
%%   <<"typeRevision">> => string()
%% }
-type create_asset_output() :: #{binary() => any()}.


%% Example:
%% list_subscription_grants_output() :: #{
%%   <<"items">> => list(subscription_grant_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_subscription_grants_output() :: #{binary() => any()}.


%% Example:
%% environment_configuration_user_parameter() :: #{
%%   <<"environmentConfigurationName">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"environmentParameters">> => list(environment_parameter()),
%%   <<"environmentResolvedAccount">> => environment_resolved_account()
%% }
-type environment_configuration_user_parameter() :: #{binary() => any()}.


%% Example:
%% less_than_expression() :: #{
%%   <<"columnName">> => [string()],
%%   <<"value">> => [string()]
%% }
-type less_than_expression() :: #{binary() => any()}.


%% Example:
%% revoke_subscription_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"id">> => string(),
%%   <<"retainPermissions">> => [boolean()],
%%   <<"status">> => list(any()),
%%   <<"subscribedListing">> => subscribed_listing(),
%%   <<"subscribedPrincipal">> => list(),
%%   <<"subscriptionRequestId">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type revoke_subscription_output() :: #{binary() => any()}.


%% Example:
%% update_rule_output() :: #{
%%   <<"action">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"detail">> => list(),
%%   <<"identifier">> => string(),
%%   <<"lastUpdatedBy">> => string(),
%%   <<"name">> => string(),
%%   <<"revision">> => string(),
%%   <<"ruleType">> => list(any()),
%%   <<"scope">> => rule_scope(),
%%   <<"target">> => list(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type update_rule_output() :: #{binary() => any()}.


%% Example:
%% get_user_profile_output() :: #{
%%   <<"details">> => list(),
%%   <<"domainId">> => string(),
%%   <<"id">> => string(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type get_user_profile_output() :: #{binary() => any()}.

%% Example:
%% add_entity_owner_output() :: #{}
-type add_entity_owner_output() :: #{}.


%% Example:
%% list_connections_output() :: #{
%%   <<"items">> => list(connection_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_connections_output() :: #{binary() => any()}.


%% Example:
%% user_details() :: #{
%%   <<"userId">> => [string()]
%% }
-type user_details() :: #{binary() => any()}.

%% Example:
%% delete_domain_unit_input() :: #{}
-type delete_domain_unit_input() :: #{}.


%% Example:
%% get_data_product_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"firstRevisionCreatedAt">> => non_neg_integer(),
%%   <<"firstRevisionCreatedBy">> => string(),
%%   <<"formsOutput">> => list(form_output()),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"id">> => string(),
%%   <<"items">> => list(data_product_item()),
%%   <<"name">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"revision">> => string(),
%%   <<"status">> => list(any())
%% }
-type get_data_product_output() :: #{binary() => any()}.


%% Example:
%% update_connection_input() :: #{
%%   <<"awsLocation">> => aws_location(),
%%   <<"description">> => string(),
%%   <<"props">> => list()
%% }
-type update_connection_input() :: #{binary() => any()}.


%% Example:
%% list_job_runs_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortOrder">> => list(any()),
%%   <<"status">> => list(any())
%% }
-type list_job_runs_input() :: #{binary() => any()}.


%% Example:
%% create_environment_profile_policy_grant_detail() :: #{
%%   <<"domainUnitId">> => string()
%% }
-type create_environment_profile_policy_grant_detail() :: #{binary() => any()}.


%% Example:
%% delete_time_series_data_points_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"formName">> := string()
%% }
-type delete_time_series_data_points_input() :: #{binary() => any()}.


%% Example:
%% group_profile_summary() :: #{
%%   <<"domainId">> => string(),
%%   <<"groupName">> => string(),
%%   <<"id">> => string(),
%%   <<"status">> => list(any())
%% }
-type group_profile_summary() :: #{binary() => any()}.


%% Example:
%% create_asset_revision_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"formsInput">> => list(form_input()),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"name">> := string(),
%%   <<"predictionConfiguration">> => prediction_configuration(),
%%   <<"typeRevision">> => string()
%% }
-type create_asset_revision_input() :: #{binary() => any()}.


%% Example:
%% account_info() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"awsAccountName">> => string(),
%%   <<"supportedRegions">> => list(string())
%% }
-type account_info() :: #{binary() => any()}.


%% Example:
%% is_not_null_expression() :: #{
%%   <<"columnName">> => [string()]
%% }
-type is_not_null_expression() :: #{binary() => any()}.


%% Example:
%% update_subscription_request_input() :: #{
%%   <<"requestReason">> := string()
%% }
-type update_subscription_request_input() :: #{binary() => any()}.

%% Example:
%% unit() :: #{}
-type unit() :: #{}.


%% Example:
%% update_domain_unit_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"lastUpdatedBy">> => string(),
%%   <<"name">> => string(),
%%   <<"owners">> => list(list()),
%%   <<"parentDomainUnitId">> => string()
%% }
-type update_domain_unit_output() :: #{binary() => any()}.


%% Example:
%% get_listing_input() :: #{
%%   <<"listingRevision">> => string()
%% }
-type get_listing_input() :: #{binary() => any()}.


%% Example:
%% redshift_self_grant_status_output() :: #{
%%   <<"selfGrantStatusDetails">> => list(self_grant_status_detail())
%% }
-type redshift_self_grant_status_output() :: #{binary() => any()}.


%% Example:
%% create_project_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"domainUnitId">> => string(),
%%   <<"environmentDeploymentDetails">> => environment_deployment_details(),
%%   <<"failureReasons">> => list(project_deletion_error()),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"projectProfileId">> => string(),
%%   <<"projectStatus">> => list(any()),
%%   <<"userParameters">> => list(environment_configuration_user_parameter())
%% }
-type create_project_output() :: #{binary() => any()}.

%% Example:
%% get_environment_blueprint_configuration_input() :: #{}
-type get_environment_blueprint_configuration_input() :: #{}.


%% Example:
%% match_offset() :: #{
%%   <<"endOffset">> => [integer()],
%%   <<"startOffset">> => [integer()]
%% }
-type match_offset() :: #{binary() => any()}.


%% Example:
%% subscription_target_summary() :: #{
%%   <<"applicableAssetTypes">> => list(string()),
%%   <<"authorizedPrincipals">> => list(string()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"id">> => string(),
%%   <<"manageAccessRole">> => string(),
%%   <<"name">> => string(),
%%   <<"projectId">> => string(),
%%   <<"provider">> => [string()],
%%   <<"subscriptionTargetConfig">> => list(subscription_target_form()),
%%   <<"type">> => [string()],
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type subscription_target_summary() :: #{binary() => any()}.


%% Example:
%% list_lineage_node_history_input() :: #{
%%   <<"direction">> => list(any()),
%%   <<"eventTimestampGTE">> => [non_neg_integer()],
%%   <<"eventTimestampLTE">> => [non_neg_integer()],
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortOrder">> => list(any())
%% }
-type list_lineage_node_history_input() :: #{binary() => any()}.


%% Example:
%% revoke_subscription_input() :: #{
%%   <<"retainPermissions">> => [boolean()]
%% }
-type revoke_subscription_input() :: #{binary() => any()}.


%% Example:
%% search_types_input() :: #{
%%   <<"filters">> => list(),
%%   <<"managed">> := [boolean()],
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"searchIn">> => list(search_in_item()),
%%   <<"searchScope">> := list(any()),
%%   <<"searchText">> => string(),
%%   <<"sort">> => search_sort()
%% }
-type search_types_input() :: #{binary() => any()}.


%% Example:
%% create_connection_output() :: #{
%%   <<"connectionId">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"domainUnitId">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"name">> => string(),
%%   <<"physicalEndpoints">> => list(physical_endpoint()),
%%   <<"projectId">> => string(),
%%   <<"props">> => list(),
%%   <<"type">> => list(any())
%% }
-type create_connection_output() :: #{binary() => any()}.


%% Example:
%% override_project_owners_policy_grant_detail() :: #{
%%   <<"includeChildDomainUnits">> => [boolean()]
%% }
-type override_project_owners_policy_grant_detail() :: #{binary() => any()}.

%% Example:
%% disassociate_environment_role_input() :: #{}
-type disassociate_environment_role_input() :: #{}.


%% Example:
%% greater_than_or_equal_to_expression() :: #{
%%   <<"columnName">> => [string()],
%%   <<"value">> => [string()]
%% }
-type greater_than_or_equal_to_expression() :: #{binary() => any()}.

%% Example:
%% delete_account_pool_output() :: #{}
-type delete_account_pool_output() :: #{}.


%% Example:
%% list_policy_grants_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"policyType">> := list(any())
%% }
-type list_policy_grants_input() :: #{binary() => any()}.

%% Example:
%% get_lineage_event_input() :: #{}
-type get_lineage_event_input() :: #{}.


%% Example:
%% domain_unit_filter_for_project() :: #{
%%   <<"domainUnit">> => string(),
%%   <<"includeChildDomainUnits">> => [boolean()]
%% }
-type domain_unit_filter_for_project() :: #{binary() => any()}.


%% Example:
%% create_asset_filter_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"configuration">> := list(),
%%   <<"description">> => string(),
%%   <<"name">> := string()
%% }
-type create_asset_filter_input() :: #{binary() => any()}.


%% Example:
%% post_time_series_data_points_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"forms">> := list(time_series_data_point_form_input())
%% }
-type post_time_series_data_points_input() :: #{binary() => any()}.


%% Example:
%% glue_properties_output() :: #{
%%   <<"errorMessage">> => [string()],
%%   <<"status">> => list(any())
%% }
-type glue_properties_output() :: #{binary() => any()}.

%% Example:
%% get_domain_unit_input() :: #{}
-type get_domain_unit_input() :: #{}.

%% Example:
%% get_data_source_run_input() :: #{}
-type get_data_source_run_input() :: #{}.


%% Example:
%% subscription_grant_summary() :: #{
%%   <<"assets">> => list(subscribed_asset()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"grantedEntity">> => list(),
%%   <<"id">> => string(),
%%   <<"status">> => list(any()),
%%   <<"subscriptionId">> => string(),
%%   <<"subscriptionTargetId">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type subscription_grant_summary() :: #{binary() => any()}.


%% Example:
%% athena_properties_output() :: #{
%%   <<"workgroupName">> => [string()]
%% }
-type athena_properties_output() :: #{binary() => any()}.


%% Example:
%% update_project_profile_input() :: #{
%%   <<"description">> => string(),
%%   <<"domainUnitIdentifier">> => string(),
%%   <<"environmentConfigurations">> => list(environment_configuration()),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type update_project_profile_input() :: #{binary() => any()}.


%% Example:
%% get_data_source_output() :: #{
%%   <<"assetFormsOutput">> => list(form_output()),
%%   <<"configuration">> => list(),
%%   <<"connectionId">> => [string()],
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"enableSetting">> => list(any()),
%%   <<"environmentId">> => string(),
%%   <<"errorMessage">> => data_source_error_message(),
%%   <<"id">> => string(),
%%   <<"lastRunAssetCount">> => [integer()],
%%   <<"lastRunAt">> => non_neg_integer(),
%%   <<"lastRunErrorMessage">> => data_source_error_message(),
%%   <<"lastRunStatus">> => list(any()),
%%   <<"name">> => string(),
%%   <<"projectId">> => string(),
%%   <<"publishOnImport">> => [boolean()],
%%   <<"recommendation">> => recommendation_configuration(),
%%   <<"schedule">> => schedule_configuration(),
%%   <<"selfGrantStatus">> => list(),
%%   <<"status">> => list(any()),
%%   <<"type">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_data_source_output() :: #{binary() => any()}.


%% Example:
%% create_data_product_revision_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"formsInput">> => list(form_input()),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"items">> => list(data_product_item()),
%%   <<"name">> := string()
%% }
-type create_data_product_revision_input() :: #{binary() => any()}.


%% Example:
%% list_notifications_input() :: #{
%%   <<"afterTimestamp">> => [non_neg_integer()],
%%   <<"beforeTimestamp">> => [non_neg_integer()],
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"subjects">> => list([string()]()),
%%   <<"taskStatus">> => list(any()),
%%   <<"type">> := list(any())
%% }
-type list_notifications_input() :: #{binary() => any()}.


%% Example:
%% redshift_serverless_storage() :: #{
%%   <<"workgroupName">> => [string()]
%% }
-type redshift_serverless_storage() :: #{binary() => any()}.


%% Example:
%% list_subscriptions_input() :: #{
%%   <<"approverProjectId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"subscribedListingId">> => string(),
%%   <<"subscriptionRequestIdentifier">> => string()
%% }
-type list_subscriptions_input() :: #{binary() => any()}.

%% Example:
%% delete_asset_filter_input() :: #{}
-type delete_asset_filter_input() :: #{}.


%% Example:
%% update_user_profile_input() :: #{
%%   <<"status">> := list(any()),
%%   <<"type">> => list(any())
%% }
-type update_user_profile_input() :: #{binary() => any()}.


%% Example:
%% get_asset_type_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"formsOutput">> => map(),
%%   <<"name">> => string(),
%%   <<"originDomainId">> => string(),
%%   <<"originProjectId">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"revision">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type get_asset_type_output() :: #{binary() => any()}.


%% Example:
%% list_environment_blueprint_configurations_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_environment_blueprint_configurations_input() :: #{binary() => any()}.


%% Example:
%% list_environments_input() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"awsAccountRegion">> => string(),
%%   <<"environmentBlueprintIdentifier">> => string(),
%%   <<"environmentProfileIdentifier">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"name">> => [string()],
%%   <<"nextToken">> => string(),
%%   <<"projectIdentifier">> := string(),
%%   <<"provider">> => [string()],
%%   <<"status">> => list(any())
%% }
-type list_environments_input() :: #{binary() => any()}.

%% Example:
%% associate_environment_role_input() :: #{}
-type associate_environment_role_input() :: #{}.

%% Example:
%% cancel_metadata_generation_run_output() :: #{}
-type cancel_metadata_generation_run_output() :: #{}.


%% Example:
%% list_environment_actions_output() :: #{
%%   <<"items">> => list(environment_action_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_environment_actions_output() :: #{binary() => any()}.


%% Example:
%% start_metadata_generation_run_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"owningProjectIdentifier">> := string(),
%%   <<"target">> := metadata_generation_run_target(),
%%   <<"type">> := list(any())
%% }
-type start_metadata_generation_run_input() :: #{binary() => any()}.


%% Example:
%% asset_item_additional_attributes() :: #{
%%   <<"formsOutput">> => list(form_output()),
%%   <<"latestTimeSeriesDataPointFormsOutput">> => list(time_series_data_point_summary_form_output()),
%%   <<"matchRationale">> => list(list()),
%%   <<"readOnlyFormsOutput">> => list(form_output())
%% }
-type asset_item_additional_attributes() :: #{binary() => any()}.


%% Example:
%% authentication_configuration_patch() :: #{
%%   <<"basicAuthenticationCredentials">> => basic_authentication_credentials(),
%%   <<"secretArn">> => [string()]
%% }
-type authentication_configuration_patch() :: #{binary() => any()}.


%% Example:
%% environment_blueprint_configuration_item() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"domainId">> => string(),
%%   <<"enabledRegions">> => list(string()),
%%   <<"environmentBlueprintId">> => string(),
%%   <<"environmentRolePermissionBoundary">> => string(),
%%   <<"manageAccessRoleArn">> => string(),
%%   <<"provisioningConfigurations">> => list(list()),
%%   <<"provisioningRoleArn">> => string(),
%%   <<"regionalParameters">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type environment_blueprint_configuration_item() :: #{binary() => any()}.


%% Example:
%% update_environment_action_input() :: #{
%%   <<"description">> => [string()],
%%   <<"name">> => [string()],
%%   <<"parameters">> => list()
%% }
-type update_environment_action_input() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% remove_entity_owner_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"owner">> := list()
%% }
-type remove_entity_owner_input() :: #{binary() => any()}.


%% Example:
%% create_rule_output() :: #{
%%   <<"action">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"detail">> => list(),
%%   <<"identifier">> => string(),
%%   <<"name">> => string(),
%%   <<"ruleType">> => list(any()),
%%   <<"scope">> => rule_scope(),
%%   <<"target">> => list(),
%%   <<"targetType">> => list(any())
%% }
-type create_rule_output() :: #{binary() => any()}.


%% Example:
%% get_job_run_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => [string()],
%%   <<"details">> => list(),
%%   <<"domainId">> => string(),
%%   <<"endTime">> => [non_neg_integer()],
%%   <<"error">> => job_run_error(),
%%   <<"id">> => [string()],
%%   <<"jobId">> => [string()],
%%   <<"jobType">> => list(any()),
%%   <<"runMode">> => list(any()),
%%   <<"startTime">> => [non_neg_integer()],
%%   <<"status">> => list(any())
%% }
-type get_job_run_output() :: #{binary() => any()}.

%% Example:
%% delete_data_product_input() :: #{}
-type delete_data_product_input() :: #{}.


%% Example:
%% start_data_source_run_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dataSourceConfigurationSnapshot">> => [string()],
%%   <<"dataSourceId">> => string(),
%%   <<"domainId">> => string(),
%%   <<"errorMessage">> => data_source_error_message(),
%%   <<"id">> => string(),
%%   <<"projectId">> => string(),
%%   <<"runStatisticsForAssets">> => run_statistics_for_assets(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"stoppedAt">> => non_neg_integer(),
%%   <<"type">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type start_data_source_run_output() :: #{binary() => any()}.


%% Example:
%% reject_choice() :: #{
%%   <<"predictionChoices">> => list([integer()]()),
%%   <<"predictionTarget">> => [string()]
%% }
-type reject_choice() :: #{binary() => any()}.


%% Example:
%% list_data_source_run_activities_output() :: #{
%%   <<"items">> => list(data_source_run_activity()),
%%   <<"nextToken">> => string()
%% }
-type list_data_source_run_activities_output() :: #{binary() => any()}.


%% Example:
%% get_domain_unit_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"lastUpdatedBy">> => string(),
%%   <<"name">> => string(),
%%   <<"owners">> => list(list()),
%%   <<"parentDomainUnitId">> => string()
%% }
-type get_domain_unit_output() :: #{binary() => any()}.


%% Example:
%% metadata_form_summary() :: #{
%%   <<"formName">> => string(),
%%   <<"typeName">> => string(),
%%   <<"typeRevision">> => string()
%% }
-type metadata_form_summary() :: #{binary() => any()}.


%% Example:
%% reject_predictions_output() :: #{
%%   <<"assetId">> => string(),
%%   <<"assetRevision">> => string(),
%%   <<"domainId">> => string()
%% }
-type reject_predictions_output() :: #{binary() => any()}.


%% Example:
%% create_domain_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"description">> => [string()],
%%   <<"domainExecutionRole">> := string(),
%%   <<"domainVersion">> => list(any()),
%%   <<"kmsKeyIdentifier">> => string(),
%%   <<"name">> := [string()],
%%   <<"serviceRole">> => string(),
%%   <<"singleSignOn">> => single_sign_on(),
%%   <<"tags">> => map()
%% }
-type create_domain_input() :: #{binary() => any()}.


%% Example:
%% iam_properties_output() :: #{
%%   <<"environmentId">> => [string()],
%%   <<"glueLineageSyncEnabled">> => [boolean()]
%% }
-type iam_properties_output() :: #{binary() => any()}.

%% Example:
%% delete_subscription_target_input() :: #{}
-type delete_subscription_target_input() :: #{}.


%% Example:
%% hyper_pod_properties_output() :: #{
%%   <<"clusterArn">> => [string()],
%%   <<"clusterName">> => [string()],
%%   <<"orchestrator">> => list(any())
%% }
-type hyper_pod_properties_output() :: #{binary() => any()}.


%% Example:
%% list_time_series_data_points_input() :: #{
%%   <<"endedAt">> => [non_neg_integer()],
%%   <<"formName">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"startedAt">> => [non_neg_integer()]
%% }
-type list_time_series_data_points_input() :: #{binary() => any()}.

%% Example:
%% get_subscription_request_details_input() :: #{}
-type get_subscription_request_details_input() :: #{}.


%% Example:
%% lineage_node_type_item() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => [string()],
%%   <<"domainId">> => string(),
%%   <<"formsOutput">> => map(),
%%   <<"name">> => [string()],
%%   <<"revision">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type lineage_node_type_item() :: #{binary() => any()}.


%% Example:
%% get_metadata_generation_run_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"id">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"target">> => metadata_generation_run_target(),
%%   <<"type">> => list(any())
%% }
-type get_metadata_generation_run_output() :: #{binary() => any()}.


%% Example:
%% get_rule_output() :: #{
%%   <<"action">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"detail">> => list(),
%%   <<"identifier">> => string(),
%%   <<"lastUpdatedBy">> => string(),
%%   <<"name">> => string(),
%%   <<"revision">> => string(),
%%   <<"ruleType">> => list(any()),
%%   <<"scope">> => rule_scope(),
%%   <<"target">> => list(),
%%   <<"targetType">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_rule_output() :: #{binary() => any()}.


%% Example:
%% job_run_error() :: #{
%%   <<"message">> => [string()]
%% }
-type job_run_error() :: #{binary() => any()}.


%% Example:
%% lineage_event_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"eventSummary">> => list(),
%%   <<"eventTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"processingStatus">> => list(any())
%% }
-type lineage_event_summary() :: #{binary() => any()}.


%% Example:
%% glue_connection_input() :: #{
%%   <<"athenaProperties">> => map(),
%%   <<"authenticationConfiguration">> => authentication_configuration_input(),
%%   <<"connectionProperties">> => map(),
%%   <<"connectionType">> => list(any()),
%%   <<"description">> => [string()],
%%   <<"matchCriteria">> => [string()],
%%   <<"name">> => [string()],
%%   <<"physicalConnectionRequirements">> => physical_connection_requirements(),
%%   <<"pythonProperties">> => map(),
%%   <<"sparkProperties">> => map(),
%%   <<"validateCredentials">> => [boolean()],
%%   <<"validateForComputeEnvironments">> => list(list(any())())
%% }
-type glue_connection_input() :: #{binary() => any()}.


%% Example:
%% data_source_error_message() :: #{
%%   <<"errorDetail">> => [string()],
%%   <<"errorType">> => list(any())
%% }
-type data_source_error_message() :: #{binary() => any()}.


%% Example:
%% redshift_cluster_storage() :: #{
%%   <<"clusterName">> => [string()]
%% }
-type redshift_cluster_storage() :: #{binary() => any()}.

%% Example:
%% delete_asset_type_output() :: #{}
-type delete_asset_type_output() :: #{}.


%% Example:
%% update_account_pool_output() :: #{
%%   <<"accountSource">> => list(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"domainUnitId">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"resolutionStrategy">> => list(any()),
%%   <<"updatedBy">> => string()
%% }
-type update_account_pool_output() :: #{binary() => any()}.


%% Example:
%% reject_rule() :: #{
%%   <<"rule">> => list(any()),
%%   <<"threshold">> => [float()]
%% }
-type reject_rule() :: #{binary() => any()}.


%% Example:
%% get_user_profile_input() :: #{
%%   <<"type">> => list(any())
%% }
-type get_user_profile_input() :: #{binary() => any()}.


%% Example:
%% glossary_term_item() :: #{
%%   <<"additionalAttributes">> => glossary_term_item_additional_attributes(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"glossaryId">> => string(),
%%   <<"id">> => string(),
%%   <<"longDescription">> => string(),
%%   <<"name">> => string(),
%%   <<"shortDescription">> => string(),
%%   <<"status">> => list(any()),
%%   <<"termRelations">> => term_relations(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type glossary_term_item() :: #{binary() => any()}.


%% Example:
%% override_domain_unit_owners_policy_grant_detail() :: #{
%%   <<"includeChildDomainUnits">> => [boolean()]
%% }
-type override_domain_unit_owners_policy_grant_detail() :: #{binary() => any()}.


%% Example:
%% asset_target_name_map() :: #{
%%   <<"assetId">> => string(),
%%   <<"targetName">> => [string()]
%% }
-type asset_target_name_map() :: #{binary() => any()}.


%% Example:
%% put_environment_blueprint_configuration_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"domainId">> => string(),
%%   <<"enabledRegions">> => list(string()),
%%   <<"environmentBlueprintId">> => string(),
%%   <<"environmentRolePermissionBoundary">> => string(),
%%   <<"manageAccessRoleArn">> => string(),
%%   <<"provisioningConfigurations">> => list(list()),
%%   <<"provisioningRoleArn">> => string(),
%%   <<"regionalParameters">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type put_environment_blueprint_configuration_output() :: #{binary() => any()}.


%% Example:
%% create_subscription_grant_input() :: #{
%%   <<"assetTargetNames">> => list(asset_target_name_map()),
%%   <<"clientToken">> => [string()],
%%   <<"environmentIdentifier">> := string(),
%%   <<"grantedEntity">> := list(),
%%   <<"subscriptionTargetIdentifier">> => string()
%% }
-type create_subscription_grant_input() :: #{binary() => any()}.


%% Example:
%% create_environment_profile_input() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"awsAccountRegion">> => string(),
%%   <<"description">> => string(),
%%   <<"environmentBlueprintIdentifier">> := string(),
%%   <<"name">> := string(),
%%   <<"projectIdentifier">> := string(),
%%   <<"userParameters">> => list(environment_parameter())
%% }
-type create_environment_profile_input() :: #{binary() => any()}.


%% Example:
%% create_environment_output() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"awsAccountRegion">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => [string()],
%%   <<"deploymentProperties">> => deployment_properties(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"environmentActions">> => list(configurable_environment_action()),
%%   <<"environmentBlueprintId">> => string(),
%%   <<"environmentConfigurationId">> => string(),
%%   <<"environmentProfileId">> => string(),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"id">> => string(),
%%   <<"lastDeployment">> => deployment(),
%%   <<"name">> => string(),
%%   <<"projectId">> => string(),
%%   <<"provider">> => [string()],
%%   <<"provisionedResources">> => list(resource()),
%%   <<"provisioningProperties">> => list(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"userParameters">> => list(custom_parameter())
%% }
-type create_environment_output() :: #{binary() => any()}.


%% Example:
%% post_lineage_event_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"event">> := binary()
%% }
-type post_lineage_event_input() :: #{binary() => any()}.


%% Example:
%% iam_user_profile_details() :: #{
%%   <<"arn">> => [string()]
%% }
-type iam_user_profile_details() :: #{binary() => any()}.


%% Example:
%% reject_predictions_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"rejectChoices">> => list(reject_choice()),
%%   <<"rejectRule">> => reject_rule(),
%%   <<"revision">> => string()
%% }
-type reject_predictions_input() :: #{binary() => any()}.


%% Example:
%% time_series_data_point_form_input() :: #{
%%   <<"content">> => [string()],
%%   <<"formName">> => string(),
%%   <<"timestamp">> => [non_neg_integer()],
%%   <<"typeIdentifier">> => string(),
%%   <<"typeRevision">> => string()
%% }
-type time_series_data_point_form_input() :: #{binary() => any()}.


%% Example:
%% search_output() :: #{
%%   <<"items">> => list(list()),
%%   <<"nextToken">> => string(),
%%   <<"totalMatchCount">> => [integer()]
%% }
-type search_output() :: #{binary() => any()}.

%% Example:
%% get_subscription_grant_input() :: #{}
-type get_subscription_grant_input() :: #{}.

%% Example:
%% delete_rule_output() :: #{}
-type delete_rule_output() :: #{}.


%% Example:
%% o_auth2_client_application() :: #{
%%   <<"aWSManagedClientApplicationReference">> => [string()],
%%   <<"userManagedClientApplicationClientId">> => [string()]
%% }
-type o_auth2_client_application() :: #{binary() => any()}.


%% Example:
%% create_user_profile_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"userIdentifier">> := string(),
%%   <<"userType">> => list(any())
%% }
-type create_user_profile_input() :: #{binary() => any()}.

%% Example:
%% delete_environment_blueprint_configuration_input() :: #{}
-type delete_environment_blueprint_configuration_input() :: #{}.


%% Example:
%% lineage_info() :: #{
%%   <<"errorMessage">> => string(),
%%   <<"eventId">> => [string()],
%%   <<"eventStatus">> => list(any())
%% }
-type lineage_info() :: #{binary() => any()}.


%% Example:
%% subscribed_listing() :: #{
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"item">> => list(),
%%   <<"name">> => string(),
%%   <<"ownerProjectId">> => string(),
%%   <<"ownerProjectName">> => [string()],
%%   <<"revision">> => string()
%% }
-type subscribed_listing() :: #{binary() => any()}.


%% Example:
%% create_form_type_output() :: #{
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"name">> => string(),
%%   <<"originDomainId">> => string(),
%%   <<"originProjectId">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"revision">> => string()
%% }
-type create_form_type_output() :: #{binary() => any()}.

%% Example:
%% get_account_pool_input() :: #{}
-type get_account_pool_input() :: #{}.


%% Example:
%% list_entity_owners_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_entity_owners_input() :: #{binary() => any()}.


%% Example:
%% aggregation_output_item() :: #{
%%   <<"count">> => [integer()],
%%   <<"displayValue">> => string(),
%%   <<"value">> => string()
%% }
-type aggregation_output_item() :: #{binary() => any()}.


%% Example:
%% start_metadata_generation_run_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"id">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type start_metadata_generation_run_output() :: #{binary() => any()}.


%% Example:
%% create_subscription_target_input() :: #{
%%   <<"applicableAssetTypes">> := list(string()),
%%   <<"authorizedPrincipals">> := list(string()),
%%   <<"clientToken">> => [string()],
%%   <<"manageAccessRole">> := string(),
%%   <<"name">> := string(),
%%   <<"provider">> => [string()],
%%   <<"subscriptionTargetConfig">> := list(subscription_target_form()),
%%   <<"type">> := [string()]
%% }
-type create_subscription_target_input() :: #{binary() => any()}.


%% Example:
%% update_data_source_input() :: #{
%%   <<"assetFormsInput">> => list(form_input()),
%%   <<"configuration">> => list(),
%%   <<"description">> => string(),
%%   <<"enableSetting">> => list(any()),
%%   <<"name">> => string(),
%%   <<"publishOnImport">> => [boolean()],
%%   <<"recommendation">> => recommendation_configuration(),
%%   <<"retainPermissionsOnRevokeFailure">> => [boolean()],
%%   <<"schedule">> => schedule_configuration()
%% }
-type update_data_source_input() :: #{binary() => any()}.


%% Example:
%% asset_in_data_product_listing_item() :: #{
%%   <<"entityId">> => [string()],
%%   <<"entityRevision">> => [string()],
%%   <<"entityType">> => [string()]
%% }
-type asset_in_data_product_listing_item() :: #{binary() => any()}.


%% Example:
%% form_entry_input() :: #{
%%   <<"required">> => [boolean()],
%%   <<"typeIdentifier">> => string(),
%%   <<"typeRevision">> => string()
%% }
-type form_entry_input() :: #{binary() => any()}.


%% Example:
%% asset_listing() :: #{
%%   <<"assetId">> => string(),
%%   <<"assetRevision">> => string(),
%%   <<"assetType">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"forms">> => string(),
%%   <<"glossaryTerms">> => list(detailed_glossary_term()),
%%   <<"latestTimeSeriesDataPointForms">> => list(time_series_data_point_summary_form_output()),
%%   <<"owningProjectId">> => string()
%% }
-type asset_listing() :: #{binary() => any()}.


%% Example:
%% domain_unit_user_properties() :: #{
%%   <<"userId">> => [string()]
%% }
-type domain_unit_user_properties() :: #{binary() => any()}.


%% Example:
%% delete_domain_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"skipDeletionCheck">> => [boolean()]
%% }
-type delete_domain_input() :: #{binary() => any()}.


%% Example:
%% get_rule_input() :: #{
%%   <<"revision">> => string()
%% }
-type get_rule_input() :: #{binary() => any()}.


%% Example:
%% list_domain_units_for_parent_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"parentDomainUnitIdentifier">> := string()
%% }
-type list_domain_units_for_parent_input() :: #{binary() => any()}.


%% Example:
%% custom_parameter() :: #{
%%   <<"defaultValue">> => [string()],
%%   <<"description">> => string(),
%%   <<"fieldType">> => [string()],
%%   <<"isEditable">> => [boolean()],
%%   <<"isOptional">> => [boolean()],
%%   <<"keyName">> => [string()]
%% }
-type custom_parameter() :: #{binary() => any()}.


%% Example:
%% get_asset_input() :: #{
%%   <<"revision">> => string()
%% }
-type get_asset_input() :: #{binary() => any()}.


%% Example:
%% projects_for_rule() :: #{
%%   <<"selectionMode">> => list(any()),
%%   <<"specificProjects">> => list(string())
%% }
-type projects_for_rule() :: #{binary() => any()}.


%% Example:
%% update_user_profile_output() :: #{
%%   <<"details">> => list(),
%%   <<"domainId">> => string(),
%%   <<"id">> => string(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type update_user_profile_output() :: #{binary() => any()}.

%% Example:
%% create_project_membership_output() :: #{}
-type create_project_membership_output() :: #{}.


%% Example:
%% is_null_expression() :: #{
%%   <<"columnName">> => [string()]
%% }
-type is_null_expression() :: #{binary() => any()}.


%% Example:
%% text_match_item() :: #{
%%   <<"attribute">> => string(),
%%   <<"matchOffsets">> => list(match_offset()),
%%   <<"text">> => [string()]
%% }
-type text_match_item() :: #{binary() => any()}.


%% Example:
%% add_policy_grant_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"detail">> := list(),
%%   <<"policyType">> := list(any()),
%%   <<"principal">> := list()
%% }
-type add_policy_grant_input() :: #{binary() => any()}.


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
%% delete_glossary_output() :: #{}
-type delete_glossary_output() :: #{}.


%% Example:
%% get_glossary_term_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"glossaryId">> => string(),
%%   <<"id">> => string(),
%%   <<"longDescription">> => string(),
%%   <<"name">> => string(),
%%   <<"shortDescription">> => string(),
%%   <<"status">> => list(any()),
%%   <<"termRelations">> => term_relations(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type get_glossary_term_output() :: #{binary() => any()}.


%% Example:
%% list_domains_output() :: #{
%%   <<"items">> => list(domain_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_domains_output() :: #{binary() => any()}.


%% Example:
%% update_environment_output() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"awsAccountRegion">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => [string()],
%%   <<"deploymentProperties">> => deployment_properties(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"environmentActions">> => list(configurable_environment_action()),
%%   <<"environmentBlueprintId">> => string(),
%%   <<"environmentConfigurationId">> => string(),
%%   <<"environmentProfileId">> => string(),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"id">> => string(),
%%   <<"lastDeployment">> => deployment(),
%%   <<"name">> => string(),
%%   <<"projectId">> => string(),
%%   <<"provider">> => [string()],
%%   <<"provisionedResources">> => list(resource()),
%%   <<"provisioningProperties">> => list(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"userParameters">> => list(custom_parameter())
%% }
-type update_environment_output() :: #{binary() => any()}.


%% Example:
%% like_expression() :: #{
%%   <<"columnName">> => [string()],
%%   <<"value">> => [string()]
%% }
-type like_expression() :: #{binary() => any()}.


%% Example:
%% create_data_source_output() :: #{
%%   <<"assetFormsOutput">> => list(form_output()),
%%   <<"configuration">> => list(),
%%   <<"connectionId">> => [string()],
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"enableSetting">> => list(any()),
%%   <<"environmentId">> => string(),
%%   <<"errorMessage">> => data_source_error_message(),
%%   <<"id">> => string(),
%%   <<"lastRunAt">> => non_neg_integer(),
%%   <<"lastRunErrorMessage">> => data_source_error_message(),
%%   <<"lastRunStatus">> => list(any()),
%%   <<"name">> => string(),
%%   <<"projectId">> => string(),
%%   <<"publishOnImport">> => [boolean()],
%%   <<"recommendation">> => recommendation_configuration(),
%%   <<"schedule">> => schedule_configuration(),
%%   <<"status">> => list(any()),
%%   <<"type">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type create_data_source_output() :: #{binary() => any()}.


%% Example:
%% spark_glue_args() :: #{
%%   <<"connection">> => [string()]
%% }
-type spark_glue_args() :: #{binary() => any()}.


%% Example:
%% equal_to_expression() :: #{
%%   <<"columnName">> => [string()],
%%   <<"value">> => [string()]
%% }
-type equal_to_expression() :: #{binary() => any()}.


%% Example:
%% get_iam_portal_login_url_output() :: #{
%%   <<"authCodeUrl">> => [string()],
%%   <<"userProfileId">> => [string()]
%% }
-type get_iam_portal_login_url_output() :: #{binary() => any()}.


%% Example:
%% subscribed_product_listing() :: #{
%%   <<"assetListings">> => list(asset_in_data_product_listing_item()),
%%   <<"description">> => [string()],
%%   <<"entityId">> => string(),
%%   <<"entityRevision">> => string(),
%%   <<"glossaryTerms">> => list(detailed_glossary_term()),
%%   <<"name">> => [string()]
%% }
-type subscribed_product_listing() :: #{binary() => any()}.


%% Example:
%% accept_rule() :: #{
%%   <<"rule">> => list(any()),
%%   <<"threshold">> => [float()]
%% }
-type accept_rule() :: #{binary() => any()}.


%% Example:
%% metadata_generation_run_target() :: #{
%%   <<"identifier">> => [string()],
%%   <<"revision">> => string(),
%%   <<"type">> => list(any())
%% }
-type metadata_generation_run_target() :: #{binary() => any()}.


%% Example:
%% delete_data_source_output() :: #{
%%   <<"assetFormsOutput">> => list(form_output()),
%%   <<"configuration">> => list(),
%%   <<"connectionId">> => [string()],
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"enableSetting">> => list(any()),
%%   <<"environmentId">> => string(),
%%   <<"errorMessage">> => data_source_error_message(),
%%   <<"id">> => string(),
%%   <<"lastRunAt">> => non_neg_integer(),
%%   <<"lastRunErrorMessage">> => data_source_error_message(),
%%   <<"lastRunStatus">> => list(any()),
%%   <<"name">> => string(),
%%   <<"projectId">> => string(),
%%   <<"publishOnImport">> => [boolean()],
%%   <<"retainPermissionsOnRevokeFailure">> => [boolean()],
%%   <<"schedule">> => schedule_configuration(),
%%   <<"selfGrantStatus">> => list(),
%%   <<"status">> => list(any()),
%%   <<"type">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type delete_data_source_output() :: #{binary() => any()}.


%% Example:
%% get_connection_input() :: #{
%%   <<"withSecret">> => [boolean()]
%% }
-type get_connection_input() :: #{binary() => any()}.


%% Example:
%% get_connection_output() :: #{
%%   <<"connectionCredentials">> => connection_credentials(),
%%   <<"connectionId">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"domainUnitId">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"environmentUserRole">> => [string()],
%%   <<"name">> => string(),
%%   <<"physicalEndpoints">> => list(physical_endpoint()),
%%   <<"projectId">> => string(),
%%   <<"props">> => list(),
%%   <<"type">> => list(any())
%% }
-type get_connection_output() :: #{binary() => any()}.


%% Example:
%% get_glossary_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type get_glossary_output() :: #{binary() => any()}.


%% Example:
%% asset_listing_item_additional_attributes() :: #{
%%   <<"forms">> => string(),
%%   <<"latestTimeSeriesDataPointForms">> => list(time_series_data_point_summary_form_output()),
%%   <<"matchRationale">> => list(list())
%% }
-type asset_listing_item_additional_attributes() :: #{binary() => any()}.


%% Example:
%% list_environment_blueprints_input() :: #{
%%   <<"managed">> => [boolean()],
%%   <<"maxResults">> => integer(),
%%   <<"name">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_environment_blueprints_input() :: #{binary() => any()}.


%% Example:
%% list_data_sources_input() :: #{
%%   <<"connectionIdentifier">> => [string()],
%%   <<"environmentIdentifier">> => [string()],
%%   <<"maxResults">> => integer(),
%%   <<"name">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"projectIdentifier">> := [string()],
%%   <<"status">> => list(any()),
%%   <<"type">> => string()
%% }
-type list_data_sources_input() :: #{binary() => any()}.


%% Example:
%% list_lineage_events_output() :: #{
%%   <<"items">> => list(lineage_event_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_lineage_events_output() :: #{binary() => any()}.


%% Example:
%% iam_properties_input() :: #{
%%   <<"glueLineageSyncEnabled">> => [boolean()]
%% }
-type iam_properties_input() :: #{binary() => any()}.


%% Example:
%% list_projects_output() :: #{
%%   <<"items">> => list(project_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_projects_output() :: #{binary() => any()}.


%% Example:
%% create_user_profile_output() :: #{
%%   <<"details">> => list(),
%%   <<"domainId">> => string(),
%%   <<"id">> => string(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type create_user_profile_output() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% search_user_profiles_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"searchText">> => string(),
%%   <<"userType">> := list(any())
%% }
-type search_user_profiles_input() :: #{binary() => any()}.


%% Example:
%% get_environment_action_output() :: #{
%%   <<"description">> => [string()],
%%   <<"domainId">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => [string()],
%%   <<"parameters">> => list()
%% }
-type get_environment_action_output() :: #{binary() => any()}.


%% Example:
%% data_source_run_lineage_summary() :: #{
%%   <<"importStatus">> => list(any())
%% }
-type data_source_run_lineage_summary() :: #{binary() => any()}.


%% Example:
%% reject_subscription_request_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"decisionComment">> => string(),
%%   <<"domainId">> => string(),
%%   <<"existingSubscriptionId">> => string(),
%%   <<"id">> => string(),
%%   <<"metadataForms">> => list(form_output()),
%%   <<"requestReason">> => string(),
%%   <<"reviewerId">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"subscribedListings">> => list(subscribed_listing()),
%%   <<"subscribedPrincipals">> => list(list()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type reject_subscription_request_output() :: #{binary() => any()}.


%% Example:
%% hyper_pod_properties_input() :: #{
%%   <<"clusterName">> => [string()]
%% }
-type hyper_pod_properties_input() :: #{binary() => any()}.


%% Example:
%% topic() :: #{
%%   <<"resource">> => notification_resource(),
%%   <<"role">> => list(any()),
%%   <<"subject">> => [string()]
%% }
-type topic() :: #{binary() => any()}.


%% Example:
%% configurable_environment_action() :: #{
%%   <<"auth">> => list(any()),
%%   <<"parameters">> => list(configurable_action_parameter()),
%%   <<"type">> => [string()]
%% }
-type configurable_environment_action() :: #{binary() => any()}.


%% Example:
%% get_domain_output() :: #{
%%   <<"arn">> => [string()],
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => [string()],
%%   <<"domainExecutionRole">> => string(),
%%   <<"domainVersion">> => list(any()),
%%   <<"id">> => string(),
%%   <<"kmsKeyIdentifier">> => string(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"name">> => [string()],
%%   <<"portalUrl">> => [string()],
%%   <<"rootDomainUnitId">> => string(),
%%   <<"serviceRole">> => string(),
%%   <<"singleSignOn">> => single_sign_on(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map()
%% }
-type get_domain_output() :: #{binary() => any()}.


%% Example:
%% search_listings_output() :: #{
%%   <<"aggregates">> => list(aggregation_output()),
%%   <<"items">> => list(list()),
%%   <<"nextToken">> => string(),
%%   <<"totalMatchCount">> => [integer()]
%% }
-type search_listings_output() :: #{binary() => any()}.


%% Example:
%% aggregation_output() :: #{
%%   <<"attribute">> => string(),
%%   <<"displayValue">> => string(),
%%   <<"items">> => list(aggregation_output_item())
%% }
-type aggregation_output() :: #{binary() => any()}.


%% Example:
%% prediction_configuration() :: #{
%%   <<"businessNameGeneration">> => business_name_generation_configuration()
%% }
-type prediction_configuration() :: #{binary() => any()}.


%% Example:
%% environment_action_summary() :: #{
%%   <<"description">> => [string()],
%%   <<"domainId">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => [string()],
%%   <<"parameters">> => list()
%% }
-type environment_action_summary() :: #{binary() => any()}.


%% Example:
%% environment_blueprint_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"provider">> => [string()],
%%   <<"provisioningProperties">> => list(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type environment_blueprint_summary() :: #{binary() => any()}.

%% Example:
%% get_environment_input() :: #{}
-type get_environment_input() :: #{}.


%% Example:
%% create_glossary_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"owningProjectIdentifier">> := string(),
%%   <<"status">> => list(any())
%% }
-type create_glossary_input() :: #{binary() => any()}.


%% Example:
%% listing_revision_input() :: #{
%%   <<"identifier">> => string(),
%%   <<"revision">> => string()
%% }
-type listing_revision_input() :: #{binary() => any()}.


%% Example:
%% custom_account_pool_handler() :: #{
%%   <<"lambdaExecutionRoleArn">> => string(),
%%   <<"lambdaFunctionArn">> => string()
%% }
-type custom_account_pool_handler() :: #{binary() => any()}.


%% Example:
%% list_environments_output() :: #{
%%   <<"items">> => list(environment_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_environments_output() :: #{binary() => any()}.


%% Example:
%% run_statistics_for_assets() :: #{
%%   <<"added">> => [integer()],
%%   <<"failed">> => [integer()],
%%   <<"skipped">> => [integer()],
%%   <<"unchanged">> => [integer()],
%%   <<"updated">> => [integer()]
%% }
-type run_statistics_for_assets() :: #{binary() => any()}.


%% Example:
%% glue_properties_patch() :: #{
%%   <<"glueConnectionInput">> => glue_connection_patch()
%% }
-type glue_properties_patch() :: #{binary() => any()}.


%% Example:
%% update_subscription_grant_status_output() :: #{
%%   <<"assets">> => list(subscribed_asset()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"grantedEntity">> => list(),
%%   <<"id">> => string(),
%%   <<"status">> => list(any()),
%%   <<"subscriptionId">> => string(),
%%   <<"subscriptionTargetId">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type update_subscription_grant_status_output() :: #{binary() => any()}.


%% Example:
%% update_environment_input() :: #{
%%   <<"blueprintVersion">> => [string()],
%%   <<"description">> => [string()],
%%   <<"glossaryTerms">> => list(string()),
%%   <<"name">> => [string()],
%%   <<"userParameters">> => list(environment_parameter())
%% }
-type update_environment_input() :: #{binary() => any()}.


%% Example:
%% list_subscription_targets_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type list_subscription_targets_input() :: #{binary() => any()}.


%% Example:
%% sage_maker_run_configuration_input() :: #{
%%   <<"trackingAssets">> => map()
%% }
-type sage_maker_run_configuration_input() :: #{binary() => any()}.

%% Example:
%% get_asset_filter_input() :: #{}
-type get_asset_filter_input() :: #{}.


%% Example:
%% post_lineage_event_output() :: #{
%%   <<"domainId">> => string(),
%%   <<"id">> => string()
%% }
-type post_lineage_event_output() :: #{binary() => any()}.


%% Example:
%% use_asset_type_policy_grant_detail() :: #{
%%   <<"domainUnitId">> => string()
%% }
-type use_asset_type_policy_grant_detail() :: #{binary() => any()}.


%% Example:
%% not_equal_to_expression() :: #{
%%   <<"columnName">> => [string()],
%%   <<"value">> => [string()]
%% }
-type not_equal_to_expression() :: #{binary() => any()}.


%% Example:
%% time_series_data_point_form_output() :: #{
%%   <<"content">> => [string()],
%%   <<"formName">> => string(),
%%   <<"id">> => string(),
%%   <<"timestamp">> => [non_neg_integer()],
%%   <<"typeIdentifier">> => string(),
%%   <<"typeRevision">> => string()
%% }
-type time_series_data_point_form_output() :: #{binary() => any()}.


%% Example:
%% not_like_expression() :: #{
%%   <<"columnName">> => [string()],
%%   <<"value">> => [string()]
%% }
-type not_like_expression() :: #{binary() => any()}.

%% Example:
%% delete_subscription_request_input() :: #{}
-type delete_subscription_request_input() :: #{}.


%% Example:
%% owner_group_properties() :: #{
%%   <<"groupIdentifier">> => string()
%% }
-type owner_group_properties() :: #{binary() => any()}.


%% Example:
%% asset_type_item() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"formsOutput">> => map(),
%%   <<"name">> => string(),
%%   <<"originDomainId">> => string(),
%%   <<"originProjectId">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"revision">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type asset_type_item() :: #{binary() => any()}.


%% Example:
%% glue_o_auth2_credentials() :: #{
%%   <<"accessToken">> => [string()],
%%   <<"jwtToken">> => [string()],
%%   <<"refreshToken">> => [string()],
%%   <<"userManagedClientApplicationClientSecret">> => [string()]
%% }
-type glue_o_auth2_credentials() :: #{binary() => any()}.


%% Example:
%% glue_run_configuration_input() :: #{
%%   <<"autoImportDataQualityResult">> => [boolean()],
%%   <<"catalogName">> => [string()],
%%   <<"dataAccessRole">> => [string()],
%%   <<"relationalFilterConfigurations">> => list(relational_filter_configuration())
%% }
-type glue_run_configuration_input() :: #{binary() => any()}.


%% Example:
%% athena_properties_input() :: #{
%%   <<"workgroupName">> => [string()]
%% }
-type athena_properties_input() :: #{binary() => any()}.


%% Example:
%% list_data_product_revisions_output() :: #{
%%   <<"items">> => list(data_product_revision()),
%%   <<"nextToken">> => string()
%% }
-type list_data_product_revisions_output() :: #{binary() => any()}.


%% Example:
%% list_data_source_run_activities_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_data_source_run_activities_input() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% s3_properties_output() :: #{
%%   <<"errorMessage">> => [string()],
%%   <<"s3AccessGrantLocationId">> => string(),
%%   <<"s3Uri">> => string(),
%%   <<"status">> => list(any())
%% }
-type s3_properties_output() :: #{binary() => any()}.

%% Example:
%% delete_glossary_input() :: #{}
-type delete_glossary_input() :: #{}.


%% Example:
%% owner_user_properties() :: #{
%%   <<"userIdentifier">> => string()
%% }
-type owner_user_properties() :: #{binary() => any()}.


%% Example:
%% lineage_node_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => [string()],
%%   <<"domainId">> => string(),
%%   <<"eventTimestamp">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"name">> => [string()],
%%   <<"sourceIdentifier">> => [string()],
%%   <<"typeName">> => [string()],
%%   <<"typeRevision">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type lineage_node_summary() :: #{binary() => any()}.


%% Example:
%% spark_glue_properties_input() :: #{
%%   <<"additionalArgs">> => spark_glue_args(),
%%   <<"glueConnectionName">> => [string()],
%%   <<"glueVersion">> => [string()],
%%   <<"idleTimeout">> => [integer()],
%%   <<"javaVirtualEnv">> => [string()],
%%   <<"numberOfWorkers">> => [integer()],
%%   <<"pythonVirtualEnv">> => [string()],
%%   <<"workerType">> => [string()]
%% }
-type spark_glue_properties_input() :: #{binary() => any()}.


%% Example:
%% create_subscription_grant_output() :: #{
%%   <<"assets">> => list(subscribed_asset()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"grantedEntity">> => list(),
%%   <<"id">> => string(),
%%   <<"status">> => list(any()),
%%   <<"subscriptionId">> => string(),
%%   <<"subscriptionTargetId">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type create_subscription_grant_output() :: #{binary() => any()}.


%% Example:
%% create_glossary_policy_grant_detail() :: #{
%%   <<"includeChildDomainUnits">> => [boolean()]
%% }
-type create_glossary_policy_grant_detail() :: #{binary() => any()}.

%% Example:
%% delete_glossary_term_output() :: #{}
-type delete_glossary_term_output() :: #{}.


%% Example:
%% athena_properties_patch() :: #{
%%   <<"workgroupName">> => [string()]
%% }
-type athena_properties_patch() :: #{binary() => any()}.


%% Example:
%% list_subscription_requests_input() :: #{
%%   <<"approverProjectId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"subscribedListingId">> => string()
%% }
-type list_subscription_requests_input() :: #{binary() => any()}.


%% Example:
%% form_type_data() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"imports">> => list(import()),
%%   <<"model">> => list(),
%%   <<"name">> => string(),
%%   <<"originDomainId">> => string(),
%%   <<"originProjectId">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"revision">> => string(),
%%   <<"status">> => list(any())
%% }
-type form_type_data() :: #{binary() => any()}.


%% Example:
%% subscribed_project() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type subscribed_project() :: #{binary() => any()}.


%% Example:
%% get_environment_profile_output() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"awsAccountRegion">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => [string()],
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"environmentBlueprintId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"projectId">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"userParameters">> => list(custom_parameter())
%% }
-type get_environment_profile_output() :: #{binary() => any()}.


%% Example:
%% rule_scope() :: #{
%%   <<"assetType">> => asset_types_for_rule(),
%%   <<"dataProduct">> => [boolean()],
%%   <<"project">> => projects_for_rule()
%% }
-type rule_scope() :: #{binary() => any()}.


%% Example:
%% create_glossary_term_output() :: #{
%%   <<"domainId">> => string(),
%%   <<"glossaryId">> => string(),
%%   <<"id">> => string(),
%%   <<"longDescription">> => string(),
%%   <<"name">> => string(),
%%   <<"shortDescription">> => string(),
%%   <<"status">> => list(any()),
%%   <<"termRelations">> => term_relations()
%% }
-type create_glossary_term_output() :: #{binary() => any()}.

%% Example:
%% get_environment_profile_input() :: #{}
-type get_environment_profile_input() :: #{}.


%% Example:
%% create_data_product_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"firstRevisionCreatedAt">> => non_neg_integer(),
%%   <<"firstRevisionCreatedBy">> => string(),
%%   <<"formsOutput">> => list(form_output()),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"id">> => string(),
%%   <<"items">> => list(data_product_item()),
%%   <<"name">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"revision">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_data_product_output() :: #{binary() => any()}.


%% Example:
%% create_environment_profile_output() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"awsAccountRegion">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => [string()],
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"environmentBlueprintId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"projectId">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"userParameters">> => list(custom_parameter())
%% }
-type create_environment_profile_output() :: #{binary() => any()}.


%% Example:
%% search_listings_input() :: #{
%%   <<"additionalAttributes">> => list(list(any())()),
%%   <<"aggregations">> => list(aggregation_list_item()),
%%   <<"filters">> => list(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"searchIn">> => list(search_in_item()),
%%   <<"searchText">> => [string()],
%%   <<"sort">> => search_sort()
%% }
-type search_listings_input() :: #{binary() => any()}.


%% Example:
%% filter_expression() :: #{
%%   <<"expression">> => [string()],
%%   <<"type">> => list(any())
%% }
-type filter_expression() :: #{binary() => any()}.


%% Example:
%% glue_properties_input() :: #{
%%   <<"glueConnectionInput">> => glue_connection_input()
%% }
-type glue_properties_input() :: #{binary() => any()}.


%% Example:
%% list_asset_filters_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_asset_filters_input() :: #{binary() => any()}.

%% Example:
%% get_job_run_input() :: #{}
-type get_job_run_input() :: #{}.


%% Example:
%% glossary_item() :: #{
%%   <<"additionalAttributes">> => glossary_item_additional_attributes(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type glossary_item() :: #{binary() => any()}.


%% Example:
%% list_subscription_grants_input() :: #{
%%   <<"environmentId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any()),
%%   <<"subscribedListingId">> => string(),
%%   <<"subscriptionId">> => string(),
%%   <<"subscriptionTargetId">> => string()
%% }
-type list_subscription_grants_input() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"attribute">> => string(),
%%   <<"value">> => [string()]
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% create_asset_type_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"formsOutput">> => map(),
%%   <<"name">> => string(),
%%   <<"originDomainId">> => string(),
%%   <<"originProjectId">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"revision">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type create_asset_type_output() :: #{binary() => any()}.


%% Example:
%% start_data_source_run_input() :: #{
%%   <<"clientToken">> => [string()]
%% }
-type start_data_source_run_input() :: #{binary() => any()}.


%% Example:
%% create_rule_input() :: #{
%%   <<"action">> := list(any()),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"detail">> := list(),
%%   <<"name">> := string(),
%%   <<"scope">> := rule_scope(),
%%   <<"target">> := list()
%% }
-type create_rule_input() :: #{binary() => any()}.


%% Example:
%% search_in_item() :: #{
%%   <<"attribute">> => string()
%% }
-type search_in_item() :: #{binary() => any()}.


%% Example:
%% get_subscription_target_output() :: #{
%%   <<"applicableAssetTypes">> => list(string()),
%%   <<"authorizedPrincipals">> => list(string()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"id">> => string(),
%%   <<"manageAccessRole">> => string(),
%%   <<"name">> => string(),
%%   <<"projectId">> => string(),
%%   <<"provider">> => [string()],
%%   <<"subscriptionTargetConfig">> => list(subscription_target_form()),
%%   <<"type">> => [string()],
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type get_subscription_target_output() :: #{binary() => any()}.


%% Example:
%% create_asset_revision_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"externalIdentifier">> => string(),
%%   <<"firstRevisionCreatedAt">> => non_neg_integer(),
%%   <<"firstRevisionCreatedBy">> => string(),
%%   <<"formsOutput">> => list(form_output()),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"id">> => string(),
%%   <<"latestTimeSeriesDataPointFormsOutput">> => list(time_series_data_point_summary_form_output()),
%%   <<"listing">> => asset_listing_details(),
%%   <<"name">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"predictionConfiguration">> => prediction_configuration(),
%%   <<"readOnlyFormsOutput">> => list(form_output()),
%%   <<"revision">> => string(),
%%   <<"typeIdentifier">> => string(),
%%   <<"typeRevision">> => string()
%% }
-type create_asset_revision_output() :: #{binary() => any()}.


%% Example:
%% delete_project_membership_input() :: #{
%%   <<"member">> := list()
%% }
-type delete_project_membership_input() :: #{binary() => any()}.


%% Example:
%% add_to_project_member_pool_policy_grant_detail() :: #{
%%   <<"includeChildDomainUnits">> => [boolean()]
%% }
-type add_to_project_member_pool_policy_grant_detail() :: #{binary() => any()}.


%% Example:
%% owner_user_properties_output() :: #{
%%   <<"userId">> => [string()]
%% }
-type owner_user_properties_output() :: #{binary() => any()}.


%% Example:
%% connection_credentials() :: #{
%%   <<"accessKeyId">> => [string()],
%%   <<"expiration">> => [non_neg_integer()],
%%   <<"secretAccessKey">> => [string()],
%%   <<"sessionToken">> => [string()]
%% }
-type connection_credentials() :: #{binary() => any()}.


%% Example:
%% create_domain_unit_output() :: #{
%%   <<"ancestorDomainUnitIds">> => list(string()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"owners">> => list(list()),
%%   <<"parentDomainUnitId">> => string()
%% }
-type create_domain_unit_output() :: #{binary() => any()}.


%% Example:
%% data_product_result_item() :: #{
%%   <<"additionalAttributes">> => data_product_item_additional_attributes(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"firstRevisionCreatedAt">> => non_neg_integer(),
%%   <<"firstRevisionCreatedBy">> => string(),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"owningProjectId">> => string()
%% }
-type data_product_result_item() :: #{binary() => any()}.


%% Example:
%% get_time_series_data_point_output() :: #{
%%   <<"domainId">> => string(),
%%   <<"entityId">> => string(),
%%   <<"entityType">> => list(any()),
%%   <<"form">> => time_series_data_point_form_output(),
%%   <<"formName">> => string()
%% }
-type get_time_series_data_point_output() :: #{binary() => any()}.


%% Example:
%% glue_connection_patch() :: #{
%%   <<"authenticationConfiguration">> => authentication_configuration_patch(),
%%   <<"connectionProperties">> => map(),
%%   <<"description">> => [string()]
%% }
-type glue_connection_patch() :: #{binary() => any()}.


%% Example:
%% list_environment_profiles_input() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"awsAccountRegion">> => string(),
%%   <<"environmentBlueprintIdentifier">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"name">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"projectIdentifier">> => string()
%% }
-type list_environment_profiles_input() :: #{binary() => any()}.


%% Example:
%% update_data_source_output() :: #{
%%   <<"assetFormsOutput">> => list(form_output()),
%%   <<"configuration">> => list(),
%%   <<"connectionId">> => [string()],
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"enableSetting">> => list(any()),
%%   <<"environmentId">> => string(),
%%   <<"errorMessage">> => data_source_error_message(),
%%   <<"id">> => string(),
%%   <<"lastRunAt">> => non_neg_integer(),
%%   <<"lastRunErrorMessage">> => data_source_error_message(),
%%   <<"lastRunStatus">> => list(any()),
%%   <<"name">> => string(),
%%   <<"projectId">> => string(),
%%   <<"publishOnImport">> => [boolean()],
%%   <<"recommendation">> => recommendation_configuration(),
%%   <<"retainPermissionsOnRevokeFailure">> => [boolean()],
%%   <<"schedule">> => schedule_configuration(),
%%   <<"selfGrantStatus">> => list(),
%%   <<"status">> => list(any()),
%%   <<"type">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type update_data_source_output() :: #{binary() => any()}.


%% Example:
%% create_project_input() :: #{
%%   <<"description">> => string(),
%%   <<"domainUnitId">> => string(),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"name">> := string(),
%%   <<"projectProfileId">> => string(),
%%   <<"userParameters">> => list(environment_configuration_user_parameter())
%% }
-type create_project_input() :: #{binary() => any()}.


%% Example:
%% list_rules_input() :: #{
%%   <<"action">> => list(any()),
%%   <<"assetTypes">> => list(string()),
%%   <<"dataProduct">> => [boolean()],
%%   <<"includeCascaded">> => [boolean()],
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"projectIds">> => list(string()),
%%   <<"ruleType">> => list(any())
%% }
-type list_rules_input() :: #{binary() => any()}.

%% Example:
%% delete_subscription_grant_input() :: #{}
-type delete_subscription_grant_input() :: #{}.


%% Example:
%% get_environment_blueprint_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"deploymentProperties">> => deployment_properties(),
%%   <<"description">> => string(),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"provider">> => [string()],
%%   <<"provisioningProperties">> => list(),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"userParameters">> => list(custom_parameter())
%% }
-type get_environment_blueprint_output() :: #{binary() => any()}.


%% Example:
%% aws_console_link_parameters() :: #{
%%   <<"uri">> => [string()]
%% }
-type aws_console_link_parameters() :: #{binary() => any()}.


%% Example:
%% get_form_type_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"imports">> => list(import()),
%%   <<"model">> => list(),
%%   <<"name">> => string(),
%%   <<"originDomainId">> => string(),
%%   <<"originProjectId">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"revision">> => string(),
%%   <<"status">> => list(any())
%% }
-type get_form_type_output() :: #{binary() => any()}.


%% Example:
%% create_asset_filter_output() :: #{
%%   <<"assetId">> => string(),
%%   <<"configuration">> => list(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"effectiveColumnNames">> => list([string()]()),
%%   <<"effectiveRowFilter">> => [string()],
%%   <<"errorMessage">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_asset_filter_output() :: #{binary() => any()}.


%% Example:
%% glossary_term_item_additional_attributes() :: #{
%%   <<"matchRationale">> => list(list())
%% }
-type glossary_term_item_additional_attributes() :: #{binary() => any()}.


%% Example:
%% notification_output() :: #{
%%   <<"actionLink">> => string(),
%%   <<"creationTimestamp">> => [non_neg_integer()],
%%   <<"domainIdentifier">> => string(),
%%   <<"identifier">> => string(),
%%   <<"lastUpdatedTimestamp">> => [non_neg_integer()],
%%   <<"message">> => string(),
%%   <<"metadata">> => map(),
%%   <<"status">> => list(any()),
%%   <<"title">> => string(),
%%   <<"topic">> => topic(),
%%   <<"type">> => list(any())
%% }
-type notification_output() :: #{binary() => any()}.


%% Example:
%% row_filter_configuration() :: #{
%%   <<"rowFilter">> => list(),
%%   <<"sensitive">> => [boolean()]
%% }
-type row_filter_configuration() :: #{binary() => any()}.


%% Example:
%% update_glossary_term_input() :: #{
%%   <<"glossaryIdentifier">> => string(),
%%   <<"longDescription">> => string(),
%%   <<"name">> => string(),
%%   <<"shortDescription">> => string(),
%%   <<"status">> => list(any()),
%%   <<"termRelations">> => term_relations()
%% }
-type update_glossary_term_input() :: #{binary() => any()}.


%% Example:
%% update_environment_action_output() :: #{
%%   <<"description">> => [string()],
%%   <<"domainId">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => [string()],
%%   <<"parameters">> => list()
%% }
-type update_environment_action_output() :: #{binary() => any()}.


%% Example:
%% data_product_listing_item_additional_attributes() :: #{
%%   <<"forms">> => string(),
%%   <<"matchRationale">> => list(list())
%% }
-type data_product_listing_item_additional_attributes() :: #{binary() => any()}.


%% Example:
%% column_filter_configuration() :: #{
%%   <<"includedColumnNames">> => list([string()]())
%% }
-type column_filter_configuration() :: #{binary() => any()}.


%% Example:
%% get_environment_blueprint_configuration_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"domainId">> => string(),
%%   <<"enabledRegions">> => list(string()),
%%   <<"environmentBlueprintId">> => string(),
%%   <<"environmentRolePermissionBoundary">> => string(),
%%   <<"manageAccessRoleArn">> => string(),
%%   <<"provisioningConfigurations">> => list(list()),
%%   <<"provisioningRoleArn">> => string(),
%%   <<"regionalParameters">> => map(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type get_environment_blueprint_configuration_output() :: #{binary() => any()}.


%% Example:
%% create_domain_output() :: #{
%%   <<"arn">> => [string()],
%%   <<"description">> => [string()],
%%   <<"domainExecutionRole">> => string(),
%%   <<"domainVersion">> => list(any()),
%%   <<"id">> => string(),
%%   <<"kmsKeyIdentifier">> => string(),
%%   <<"name">> => [string()],
%%   <<"portalUrl">> => [string()],
%%   <<"rootDomainUnitId">> => string(),
%%   <<"serviceRole">> => string(),
%%   <<"singleSignOn">> => single_sign_on(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map()
%% }
-type create_domain_output() :: #{binary() => any()}.


%% Example:
%% listing_summary() :: #{
%%   <<"glossaryTerms">> => list(detailed_glossary_term()),
%%   <<"listingId">> => string(),
%%   <<"listingRevision">> => string()
%% }
-type listing_summary() :: #{binary() => any()}.


%% Example:
%% create_asset_type_input() :: #{
%%   <<"description">> => string(),
%%   <<"formsInput">> := map(),
%%   <<"name">> := string(),
%%   <<"owningProjectIdentifier">> := string()
%% }
-type create_asset_type_input() :: #{binary() => any()}.


%% Example:
%% rule_summary() :: #{
%%   <<"action">> => list(any()),
%%   <<"identifier">> => string(),
%%   <<"lastUpdatedBy">> => string(),
%%   <<"name">> => string(),
%%   <<"revision">> => string(),
%%   <<"ruleType">> => list(any()),
%%   <<"scope">> => rule_scope(),
%%   <<"target">> => list(),
%%   <<"targetType">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type rule_summary() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% cancel_subscription_input() :: #{}
-type cancel_subscription_input() :: #{}.


%% Example:
%% redshift_properties_patch() :: #{
%%   <<"credentials">> => list(),
%%   <<"databaseName">> => [string()],
%%   <<"host">> => [string()],
%%   <<"lineageSync">> => redshift_lineage_sync_configuration_input(),
%%   <<"port">> => [integer()],
%%   <<"storage">> => list()
%% }
-type redshift_properties_patch() :: #{binary() => any()}.


%% Example:
%% accepted_asset_scope() :: #{
%%   <<"assetId">> => string(),
%%   <<"filterIds">> => list(string())
%% }
-type accepted_asset_scope() :: #{binary() => any()}.


%% Example:
%% redshift_lineage_sync_configuration_output() :: #{
%%   <<"enabled">> => [boolean()],
%%   <<"lineageJobId">> => [string()],
%%   <<"schedule">> => lineage_sync_schedule()
%% }
-type redshift_lineage_sync_configuration_output() :: #{binary() => any()}.


%% Example:
%% cancel_subscription_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"id">> => string(),
%%   <<"retainPermissions">> => [boolean()],
%%   <<"status">> => list(any()),
%%   <<"subscribedListing">> => subscribed_listing(),
%%   <<"subscribedPrincipal">> => list(),
%%   <<"subscriptionRequestId">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type cancel_subscription_output() :: #{binary() => any()}.


%% Example:
%% sso_user_profile_details() :: #{
%%   <<"firstName">> => string(),
%%   <<"lastName">> => string(),
%%   <<"username">> => string()
%% }
-type sso_user_profile_details() :: #{binary() => any()}.

%% Example:
%% cancel_metadata_generation_run_input() :: #{}
-type cancel_metadata_generation_run_input() :: #{}.


%% Example:
%% list_subscription_targets_output() :: #{
%%   <<"items">> => list(subscription_target_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_subscription_targets_output() :: #{binary() => any()}.

%% Example:
%% delete_asset_input() :: #{}
-type delete_asset_input() :: #{}.


%% Example:
%% physical_connection_requirements() :: #{
%%   <<"availabilityZone">> => [string()],
%%   <<"securityGroupIdList">> => list([string()]()),
%%   <<"subnetId">> => string(),
%%   <<"subnetIdList">> => list(string())
%% }
-type physical_connection_requirements() :: #{binary() => any()}.

%% Example:
%% remove_policy_grant_output() :: #{}
-type remove_policy_grant_output() :: #{}.

%% Example:
%% delete_project_membership_output() :: #{}
-type delete_project_membership_output() :: #{}.


%% Example:
%% data_source_summary() :: #{
%%   <<"connectionId">> => [string()],
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dataSourceId">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"enableSetting">> => list(any()),
%%   <<"environmentId">> => [string()],
%%   <<"lastRunAssetCount">> => [integer()],
%%   <<"lastRunAt">> => non_neg_integer(),
%%   <<"lastRunErrorMessage">> => data_source_error_message(),
%%   <<"lastRunStatus">> => list(any()),
%%   <<"name">> => string(),
%%   <<"schedule">> => schedule_configuration(),
%%   <<"status">> => list(any()),
%%   <<"type">> => [string()],
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type data_source_summary() :: #{binary() => any()}.


%% Example:
%% asset_listing_item() :: #{
%%   <<"additionalAttributes">> => asset_listing_item_additional_attributes(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"entityId">> => string(),
%%   <<"entityRevision">> => string(),
%%   <<"entityType">> => string(),
%%   <<"glossaryTerms">> => list(detailed_glossary_term()),
%%   <<"listingCreatedBy">> => string(),
%%   <<"listingId">> => string(),
%%   <<"listingRevision">> => string(),
%%   <<"listingUpdatedBy">> => string(),
%%   <<"name">> => string(),
%%   <<"owningProjectId">> => string()
%% }
-type asset_listing_item() :: #{binary() => any()}.

%% Example:
%% get_environment_credentials_input() :: #{}
-type get_environment_credentials_input() :: #{}.


%% Example:
%% aggregation_list_item() :: #{
%%   <<"attribute">> => string(),
%%   <<"displayValue">> => string()
%% }
-type aggregation_list_item() :: #{binary() => any()}.

%% Example:
%% delete_environment_blueprint_configuration_output() :: #{}
-type delete_environment_blueprint_configuration_output() :: #{}.

%% Example:
%% delete_account_pool_input() :: #{}
-type delete_account_pool_input() :: #{}.


%% Example:
%% search_group_profiles_input() :: #{
%%   <<"groupType">> := list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"searchText">> => string()
%% }
-type search_group_profiles_input() :: #{binary() => any()}.


%% Example:
%% list_environment_blueprints_output() :: #{
%%   <<"items">> => list(environment_blueprint_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_environment_blueprints_output() :: #{binary() => any()}.


%% Example:
%% spark_emr_properties_output() :: #{
%%   <<"computeArn">> => [string()],
%%   <<"credentials">> => username_password(),
%%   <<"credentialsExpiration">> => [non_neg_integer()],
%%   <<"governanceType">> => list(any()),
%%   <<"instanceProfileArn">> => [string()],
%%   <<"javaVirtualEnv">> => [string()],
%%   <<"livyEndpoint">> => [string()],
%%   <<"logUri">> => [string()],
%%   <<"pythonVirtualEnv">> => [string()],
%%   <<"runtimeRole">> => [string()],
%%   <<"trustedCertificatesS3Uri">> => [string()]
%% }
-type spark_emr_properties_output() :: #{binary() => any()}.

%% Example:
%% delete_asset_output() :: #{}
-type delete_asset_output() :: #{}.

%% Example:
%% get_iam_portal_login_url_input() :: #{}
-type get_iam_portal_login_url_input() :: #{}.

%% Example:
%% delete_project_profile_input() :: #{}
-type delete_project_profile_input() :: #{}.


%% Example:
%% list_notifications_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"notifications">> => list(notification_output())
%% }
-type list_notifications_output() :: #{binary() => any()}.


%% Example:
%% update_asset_filter_output() :: #{
%%   <<"assetId">> => string(),
%%   <<"configuration">> => list(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"effectiveColumnNames">> => list([string()]()),
%%   <<"effectiveRowFilter">> => [string()],
%%   <<"errorMessage">> => [string()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type update_asset_filter_output() :: #{binary() => any()}.


%% Example:
%% update_project_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"domainUnitId">> => string(),
%%   <<"environmentDeploymentDetails">> => environment_deployment_details(),
%%   <<"failureReasons">> => list(project_deletion_error()),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"projectProfileId">> => string(),
%%   <<"projectStatus">> => list(any()),
%%   <<"userParameters">> => list(environment_configuration_user_parameter())
%% }
-type update_project_output() :: #{binary() => any()}.


%% Example:
%% data_product_item() :: #{
%%   <<"glossaryTerms">> => list(string()),
%%   <<"identifier">> => string(),
%%   <<"itemType">> => list(any()),
%%   <<"revision">> => string()
%% }
-type data_product_item() :: #{binary() => any()}.


%% Example:
%% lineage_node_reference() :: #{
%%   <<"eventTimestamp">> => [non_neg_integer()],
%%   <<"id">> => string()
%% }
-type lineage_node_reference() :: #{binary() => any()}.

%% Example:
%% delete_glossary_term_input() :: #{}
-type delete_glossary_term_input() :: #{}.


%% Example:
%% in_expression() :: #{
%%   <<"columnName">> => [string()],
%%   <<"values">> => list([string()]())
%% }
-type in_expression() :: #{binary() => any()}.


%% Example:
%% create_group_profile_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"groupIdentifier">> := string()
%% }
-type create_group_profile_input() :: #{binary() => any()}.


%% Example:
%% list_lineage_node_history_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"nodes">> => list(lineage_node_summary())
%% }
-type list_lineage_node_history_output() :: #{binary() => any()}.


%% Example:
%% list_data_product_revisions_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_data_product_revisions_input() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% user_profile_summary() :: #{
%%   <<"details">> => list(),
%%   <<"domainId">> => string(),
%%   <<"id">> => string(),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type user_profile_summary() :: #{binary() => any()}.

%% Example:
%% delete_data_product_output() :: #{}
-type delete_data_product_output() :: #{}.


%% Example:
%% data_source_run_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dataSourceId">> => string(),
%%   <<"errorMessage">> => data_source_error_message(),
%%   <<"id">> => string(),
%%   <<"lineageSummary">> => data_source_run_lineage_summary(),
%%   <<"projectId">> => string(),
%%   <<"runStatisticsForAssets">> => run_statistics_for_assets(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"stoppedAt">> => non_neg_integer(),
%%   <<"type">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type data_source_run_summary() :: #{binary() => any()}.


%% Example:
%% list_account_pools_output() :: #{
%%   <<"items">> => list(account_pool_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_account_pools_output() :: #{binary() => any()}.


%% Example:
%% username_password() :: #{
%%   <<"password">> => string(),
%%   <<"username">> => string()
%% }
-type username_password() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% create_domain_unit_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"parentDomainUnitIdentifier">> := string()
%% }
-type create_domain_unit_input() :: #{binary() => any()}.


%% Example:
%% domain_unit_target() :: #{
%%   <<"domainUnitId">> => string(),
%%   <<"includeChildDomainUnits">> => [boolean()]
%% }
-type domain_unit_target() :: #{binary() => any()}.


%% Example:
%% get_data_product_input() :: #{
%%   <<"revision">> => string()
%% }
-type get_data_product_input() :: #{binary() => any()}.


%% Example:
%% accept_predictions_input() :: #{
%%   <<"acceptChoices">> => list(accept_choice()),
%%   <<"acceptRule">> => accept_rule(),
%%   <<"clientToken">> => string(),
%%   <<"revision">> => string()
%% }
-type accept_predictions_input() :: #{binary() => any()}.


%% Example:
%% list_entity_owners_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"owners">> => list(list())
%% }
-type list_entity_owners_output() :: #{binary() => any()}.


%% Example:
%% list_projects_input() :: #{
%%   <<"groupIdentifier">> => [string()],
%%   <<"maxResults">> => integer(),
%%   <<"name">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"userIdentifier">> => [string()]
%% }
-type list_projects_input() :: #{binary() => any()}.


%% Example:
%% environment_profile_summary() :: #{
%%   <<"awsAccountId">> => string(),
%%   <<"awsAccountRegion">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => [string()],
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"environmentBlueprintId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"projectId">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type environment_profile_summary() :: #{binary() => any()}.


%% Example:
%% subscription_request_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"decisionComment">> => string(),
%%   <<"domainId">> => string(),
%%   <<"existingSubscriptionId">> => string(),
%%   <<"id">> => string(),
%%   <<"metadataFormsSummary">> => list(metadata_form_summary()),
%%   <<"requestReason">> => string(),
%%   <<"reviewerId">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"subscribedListings">> => list(subscribed_listing()),
%%   <<"subscribedPrincipals">> => list(list()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type subscription_request_summary() :: #{binary() => any()}.


%% Example:
%% accept_predictions_output() :: #{
%%   <<"assetId">> => string(),
%%   <<"domainId">> => string(),
%%   <<"revision">> => string()
%% }
-type accept_predictions_output() :: #{binary() => any()}.


%% Example:
%% subscribed_asset_listing() :: #{
%%   <<"assetScope">> => asset_scope(),
%%   <<"entityId">> => string(),
%%   <<"entityRevision">> => string(),
%%   <<"entityType">> => string(),
%%   <<"forms">> => string(),
%%   <<"glossaryTerms">> => list(detailed_glossary_term())
%% }
-type subscribed_asset_listing() :: #{binary() => any()}.


%% Example:
%% connection_summary() :: #{
%%   <<"connectionId">> => string(),
%%   <<"domainId">> => string(),
%%   <<"domainUnitId">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"name">> => string(),
%%   <<"physicalEndpoints">> => list(physical_endpoint()),
%%   <<"projectId">> => string(),
%%   <<"props">> => list(),
%%   <<"type">> => list(any())
%% }
-type connection_summary() :: #{binary() => any()}.


%% Example:
%% self_grant_status_detail() :: #{
%%   <<"databaseName">> => [string()],
%%   <<"failureCause">> => [string()],
%%   <<"schemaName">> => [string()],
%%   <<"status">> => list(any())
%% }
-type self_grant_status_detail() :: #{binary() => any()}.


%% Example:
%% remove_policy_grant_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"grantIdentifier">> => string(),
%%   <<"policyType">> := list(any()),
%%   <<"principal">> := list()
%% }
-type remove_policy_grant_input() :: #{binary() => any()}.


%% Example:
%% delete_connection_output() :: #{
%%   <<"status">> => [string()]
%% }
-type delete_connection_output() :: #{binary() => any()}.


%% Example:
%% update_account_pool_input() :: #{
%%   <<"accountSource">> => list(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"resolutionStrategy">> => list(any())
%% }
-type update_account_pool_input() :: #{binary() => any()}.


%% Example:
%% create_listing_change_set_input() :: #{
%%   <<"action">> := list(any()),
%%   <<"clientToken">> => string(),
%%   <<"entityIdentifier">> := string(),
%%   <<"entityRevision">> => string(),
%%   <<"entityType">> := list(any())
%% }
-type create_listing_change_set_input() :: #{binary() => any()}.


%% Example:
%% domain_unit_policy_grant_principal() :: #{
%%   <<"domainUnitDesignation">> => list(any()),
%%   <<"domainUnitGrantFilter">> => list(),
%%   <<"domainUnitIdentifier">> => string()
%% }
-type domain_unit_policy_grant_principal() :: #{binary() => any()}.


%% Example:
%% relational_filter_configuration() :: #{
%%   <<"databaseName">> => [string()],
%%   <<"filterExpressions">> => list(filter_expression()),
%%   <<"schemaName">> => [string()]
%% }
-type relational_filter_configuration() :: #{binary() => any()}.

%% Example:
%% delete_form_type_input() :: #{}
-type delete_form_type_input() :: #{}.


%% Example:
%% less_than_or_equal_to_expression() :: #{
%%   <<"columnName">> => [string()],
%%   <<"value">> => [string()]
%% }
-type less_than_or_equal_to_expression() :: #{binary() => any()}.


%% Example:
%% create_domain_unit_policy_grant_detail() :: #{
%%   <<"includeChildDomainUnits">> => [boolean()]
%% }
-type create_domain_unit_policy_grant_detail() :: #{binary() => any()}.


%% Example:
%% accept_subscription_request_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"decisionComment">> => string(),
%%   <<"domainId">> => string(),
%%   <<"existingSubscriptionId">> => string(),
%%   <<"id">> => string(),
%%   <<"metadataForms">> => list(form_output()),
%%   <<"requestReason">> => string(),
%%   <<"reviewerId">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"subscribedListings">> => list(subscribed_listing()),
%%   <<"subscribedPrincipals">> => list(list()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type accept_subscription_request_output() :: #{binary() => any()}.


%% Example:
%% update_subscription_request_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"decisionComment">> => string(),
%%   <<"domainId">> => string(),
%%   <<"existingSubscriptionId">> => string(),
%%   <<"id">> => string(),
%%   <<"metadataForms">> => list(form_output()),
%%   <<"requestReason">> => string(),
%%   <<"reviewerId">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"subscribedListings">> => list(subscribed_listing()),
%%   <<"subscribedPrincipals">> => list(list()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type update_subscription_request_output() :: #{binary() => any()}.


%% Example:
%% list_rules_output() :: #{
%%   <<"items">> => list(rule_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_rules_output() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% spark_glue_properties_output() :: #{
%%   <<"additionalArgs">> => spark_glue_args(),
%%   <<"glueConnectionName">> => [string()],
%%   <<"glueVersion">> => [string()],
%%   <<"idleTimeout">> => [integer()],
%%   <<"javaVirtualEnv">> => [string()],
%%   <<"numberOfWorkers">> => [integer()],
%%   <<"pythonVirtualEnv">> => [string()],
%%   <<"workerType">> => [string()]
%% }
-type spark_glue_properties_output() :: #{binary() => any()}.


%% Example:
%% list_domain_units_for_parent_output() :: #{
%%   <<"items">> => list(domain_unit_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_domain_units_for_parent_output() :: #{binary() => any()}.


%% Example:
%% cloud_formation_properties() :: #{
%%   <<"templateUrl">> => [string()]
%% }
-type cloud_formation_properties() :: #{binary() => any()}.

%% Example:
%% delete_asset_type_input() :: #{}
-type delete_asset_type_input() :: #{}.


%% Example:
%% create_account_pool_input() :: #{
%%   <<"accountSource">> := list(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"resolutionStrategy">> := list(any())
%% }
-type create_account_pool_input() :: #{binary() => any()}.


%% Example:
%% schedule_configuration() :: #{
%%   <<"schedule">> => string(),
%%   <<"timezone">> => list(any())
%% }
-type schedule_configuration() :: #{binary() => any()}.

%% Example:
%% associate_environment_role_output() :: #{}
-type associate_environment_role_output() :: #{}.


%% Example:
%% environment_deployment_details() :: #{
%%   <<"environmentFailureReasons">> => map(),
%%   <<"overallDeploymentStatus">> => list(any())
%% }
-type environment_deployment_details() :: #{binary() => any()}.

%% Example:
%% get_glossary_input() :: #{}
-type get_glossary_input() :: #{}.


%% Example:
%% recommendation_configuration() :: #{
%%   <<"enableBusinessNameGeneration">> => [boolean()]
%% }
-type recommendation_configuration() :: #{binary() => any()}.


%% Example:
%% get_project_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"domainUnitId">> => string(),
%%   <<"environmentDeploymentDetails">> => environment_deployment_details(),
%%   <<"failureReasons">> => list(project_deletion_error()),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"projectProfileId">> => string(),
%%   <<"projectStatus">> => list(any()),
%%   <<"userParameters">> => list(environment_configuration_user_parameter())
%% }
-type get_project_output() :: #{binary() => any()}.


%% Example:
%% list_project_profiles_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"name">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type list_project_profiles_input() :: #{binary() => any()}.


%% Example:
%% get_listing_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"id">> => string(),
%%   <<"item">> => list(),
%%   <<"listingRevision">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type get_listing_output() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% not_in_expression() :: #{
%%   <<"columnName">> => [string()],
%%   <<"values">> => list([string()]())
%% }
-type not_in_expression() :: #{binary() => any()}.

%% Example:
%% get_group_profile_input() :: #{}
-type get_group_profile_input() :: #{}.


%% Example:
%% list_environment_profiles_output() :: #{
%%   <<"items">> => list(environment_profile_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_environment_profiles_output() :: #{binary() => any()}.


%% Example:
%% update_asset_filter_input() :: #{
%%   <<"configuration">> => list(),
%%   <<"description">> => string(),
%%   <<"name">> => [string()]
%% }
-type update_asset_filter_input() :: #{binary() => any()}.


%% Example:
%% domain_unit_summary() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => [string()]
%% }
-type domain_unit_summary() :: #{binary() => any()}.


%% Example:
%% get_data_source_run_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"dataSourceConfigurationSnapshot">> => [string()],
%%   <<"dataSourceId">> => string(),
%%   <<"domainId">> => string(),
%%   <<"errorMessage">> => data_source_error_message(),
%%   <<"id">> => string(),
%%   <<"lineageSummary">> => data_source_run_lineage_summary(),
%%   <<"projectId">> => string(),
%%   <<"runStatisticsForAssets">> => run_statistics_for_assets(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"stoppedAt">> => non_neg_integer(),
%%   <<"type">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_data_source_run_output() :: #{binary() => any()}.


%% Example:
%% get_lineage_event_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"event">> => binary(),
%%   <<"eventTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"processingStatus">> => list(any())
%% }
-type get_lineage_event_output() :: #{binary() => any()}.


%% Example:
%% spark_emr_properties_patch() :: #{
%%   <<"computeArn">> => [string()],
%%   <<"instanceProfileArn">> => [string()],
%%   <<"javaVirtualEnv">> => [string()],
%%   <<"logUri">> => [string()],
%%   <<"pythonVirtualEnv">> => [string()],
%%   <<"runtimeRole">> => [string()],
%%   <<"trustedCertificatesS3Uri">> => [string()]
%% }
-type spark_emr_properties_patch() :: #{binary() => any()}.


%% Example:
%% open_lineage_run_event_summary() :: #{
%%   <<"eventType">> => list(any()),
%%   <<"inputs">> => list(name_identifier()),
%%   <<"job">> => name_identifier(),
%%   <<"outputs">> => list(name_identifier()),
%%   <<"runId">> => [string()]
%% }
-type open_lineage_run_event_summary() :: #{binary() => any()}.

%% Example:
%% get_glossary_term_input() :: #{}
-type get_glossary_term_input() :: #{}.


%% Example:
%% update_domain_unit_input() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string()
%% }
-type update_domain_unit_input() :: #{binary() => any()}.

%% Example:
%% get_project_input() :: #{}
-type get_project_input() :: #{}.

%% Example:
%% delete_project_output() :: #{}
-type delete_project_output() :: #{}.


%% Example:
%% list_metadata_generation_runs_output() :: #{
%%   <<"items">> => list(metadata_generation_run_item()),
%%   <<"nextToken">> => string()
%% }
-type list_metadata_generation_runs_output() :: #{binary() => any()}.


%% Example:
%% lineage_run_details() :: #{
%%   <<"sqlQueryRunDetails">> => lineage_sql_query_run_details()
%% }
-type lineage_run_details() :: #{binary() => any()}.


%% Example:
%% delete_project_input() :: #{
%%   <<"skipDeletionCheck">> => [boolean()]
%% }
-type delete_project_input() :: #{binary() => any()}.


%% Example:
%% accept_choice() :: #{
%%   <<"editedValue">> => string(),
%%   <<"predictionChoice">> => [integer()],
%%   <<"predictionTarget">> => [string()]
%% }
-type accept_choice() :: #{binary() => any()}.


%% Example:
%% listing_revision() :: #{
%%   <<"id">> => string(),
%%   <<"revision">> => string()
%% }
-type listing_revision() :: #{binary() => any()}.


%% Example:
%% metadata_generation_run_item() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"id">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"target">> => metadata_generation_run_target(),
%%   <<"type">> => list(any())
%% }
-type metadata_generation_run_item() :: #{binary() => any()}.


%% Example:
%% subscribed_asset() :: #{
%%   <<"assetId">> => string(),
%%   <<"assetRevision">> => string(),
%%   <<"assetScope">> => asset_scope(),
%%   <<"failureCause">> => failure_cause(),
%%   <<"failureTimestamp">> => [non_neg_integer()],
%%   <<"grantedTimestamp">> => [non_neg_integer()],
%%   <<"status">> => list(any()),
%%   <<"targetName">> => [string()]
%% }
-type subscribed_asset() :: #{binary() => any()}.


%% Example:
%% create_project_profile_input() :: #{
%%   <<"description">> => string(),
%%   <<"domainUnitIdentifier">> => string(),
%%   <<"environmentConfigurations">> => list(environment_configuration()),
%%   <<"name">> := string(),
%%   <<"status">> => list(any())
%% }
-type create_project_profile_input() :: #{binary() => any()}.


%% Example:
%% list_project_memberships_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type list_project_memberships_input() :: #{binary() => any()}.


%% Example:
%% environment_configuration() :: #{
%%   <<"accountPools">> => list(string()),
%%   <<"awsAccount">> => list(),
%%   <<"awsRegion">> => list(),
%%   <<"configurationParameters">> => environment_configuration_parameters_details(),
%%   <<"deploymentMode">> => list(any()),
%%   <<"deploymentOrder">> => integer(),
%%   <<"description">> => string(),
%%   <<"environmentBlueprintId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type environment_configuration() :: #{binary() => any()}.


%% Example:
%% time_series_data_point_summary_form_output() :: #{
%%   <<"contentSummary">> => [string()],
%%   <<"formName">> => string(),
%%   <<"id">> => string(),
%%   <<"timestamp">> => [non_neg_integer()],
%%   <<"typeIdentifier">> => string(),
%%   <<"typeRevision">> => string()
%% }
-type time_series_data_point_summary_form_output() :: #{binary() => any()}.


%% Example:
%% post_time_series_data_points_output() :: #{
%%   <<"domainId">> => string(),
%%   <<"entityId">> => string(),
%%   <<"entityType">> => list(any()),
%%   <<"forms">> => list(time_series_data_point_form_output())
%% }
-type post_time_series_data_points_output() :: #{binary() => any()}.


%% Example:
%% get_subscription_grant_output() :: #{
%%   <<"assets">> => list(subscribed_asset()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"grantedEntity">> => list(),
%%   <<"id">> => string(),
%%   <<"status">> => list(any()),
%%   <<"subscriptionId">> => string(),
%%   <<"subscriptionTargetId">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type get_subscription_grant_output() :: #{binary() => any()}.


%% Example:
%% name_identifier() :: #{
%%   <<"name">> => [string()],
%%   <<"namespace">> => [string()]
%% }
-type name_identifier() :: #{binary() => any()}.


%% Example:
%% o_auth2_properties() :: #{
%%   <<"authorizationCodeProperties">> => authorization_code_properties(),
%%   <<"oAuth2ClientApplication">> => o_auth2_client_application(),
%%   <<"oAuth2Credentials">> => glue_o_auth2_credentials(),
%%   <<"oAuth2GrantType">> => list(any()),
%%   <<"tokenUrl">> => [string()],
%%   <<"tokenUrlParametersMap">> => map()
%% }
-type o_auth2_properties() :: #{binary() => any()}.


%% Example:
%% glue_run_configuration_output() :: #{
%%   <<"accountId">> => [string()],
%%   <<"autoImportDataQualityResult">> => [boolean()],
%%   <<"catalogName">> => [string()],
%%   <<"dataAccessRole">> => [string()],
%%   <<"region">> => [string()],
%%   <<"relationalFilterConfigurations">> => list(relational_filter_configuration())
%% }
-type glue_run_configuration_output() :: #{binary() => any()}.


%% Example:
%% subscribed_project_input() :: #{
%%   <<"identifier">> => string()
%% }
-type subscribed_project_input() :: #{binary() => any()}.


%% Example:
%% physical_endpoint() :: #{
%%   <<"awsLocation">> => aws_location(),
%%   <<"glueConnection">> => glue_connection(),
%%   <<"glueConnectionName">> => [string()],
%%   <<"host">> => [string()],
%%   <<"port">> => [integer()],
%%   <<"protocol">> => list(any()),
%%   <<"stage">> => [string()]
%% }
-type physical_endpoint() :: #{binary() => any()}.


%% Example:
%% update_subscription_grant_status_input() :: #{
%%   <<"failureCause">> => failure_cause(),
%%   <<"status">> := list(any()),
%%   <<"targetName">> => [string()]
%% }
-type update_subscription_grant_status_input() :: #{binary() => any()}.


%% Example:
%% form_output() :: #{
%%   <<"content">> => [string()],
%%   <<"formName">> => string(),
%%   <<"typeName">> => string(),
%%   <<"typeRevision">> => string()
%% }
-type form_output() :: #{binary() => any()}.


%% Example:
%% deployment_properties() :: #{
%%   <<"endTimeoutMinutes">> => [integer()],
%%   <<"startTimeoutMinutes">> => [integer()]
%% }
-type deployment_properties() :: #{binary() => any()}.

%% Example:
%% disassociate_environment_role_output() :: #{}
-type disassociate_environment_role_output() :: #{}.


%% Example:
%% get_subscription_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"id">> => string(),
%%   <<"retainPermissions">> => [boolean()],
%%   <<"status">> => list(any()),
%%   <<"subscribedListing">> => subscribed_listing(),
%%   <<"subscribedPrincipal">> => list(),
%%   <<"subscriptionRequestId">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type get_subscription_output() :: #{binary() => any()}.

%% Example:
%% delete_rule_input() :: #{}
-type delete_rule_input() :: #{}.


%% Example:
%% subscribed_listing_input() :: #{
%%   <<"identifier">> => string()
%% }
-type subscribed_listing_input() :: #{binary() => any()}.


%% Example:
%% failure_cause() :: #{
%%   <<"message">> => [string()]
%% }
-type failure_cause() :: #{binary() => any()}.


%% Example:
%% spark_emr_properties_input() :: #{
%%   <<"computeArn">> => [string()],
%%   <<"instanceProfileArn">> => [string()],
%%   <<"javaVirtualEnv">> => [string()],
%%   <<"logUri">> => [string()],
%%   <<"pythonVirtualEnv">> => [string()],
%%   <<"runtimeRole">> => [string()],
%%   <<"trustedCertificatesS3Uri">> => [string()]
%% }
-type spark_emr_properties_input() :: #{binary() => any()}.


%% Example:
%% lineage_sql_query_run_details() :: #{
%%   <<"errorMessages">> => list([string()]()),
%%   <<"numQueriesFailed">> => [integer()],
%%   <<"queryEndTime">> => [non_neg_integer()],
%%   <<"queryStartTime">> => [non_neg_integer()],
%%   <<"totalQueriesProcessed">> => [integer()]
%% }
-type lineage_sql_query_run_details() :: #{binary() => any()}.


%% Example:
%% asset_scope() :: #{
%%   <<"assetId">> => string(),
%%   <<"errorMessage">> => [string()],
%%   <<"filterIds">> => list(string()),
%%   <<"status">> => [string()]
%% }
-type asset_scope() :: #{binary() => any()}.


%% Example:
%% list_connections_input() :: #{
%%   <<"environmentIdentifier">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"name">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"projectIdentifier">> := string(),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type list_connections_input() :: #{binary() => any()}.


%% Example:
%% asset_types_for_rule() :: #{
%%   <<"selectionMode">> => list(any()),
%%   <<"specificAssetTypes">> => list(string())
%% }
-type asset_types_for_rule() :: #{binary() => any()}.


%% Example:
%% list_asset_revisions_output() :: #{
%%   <<"items">> => list(asset_revision()),
%%   <<"nextToken">> => string()
%% }
-type list_asset_revisions_output() :: #{binary() => any()}.


%% Example:
%% group_details() :: #{
%%   <<"groupId">> => [string()]
%% }
-type group_details() :: #{binary() => any()}.

%% Example:
%% delete_environment_action_input() :: #{}
-type delete_environment_action_input() :: #{}.

%% Example:
%% all_domain_units_grant_filter() :: #{}
-type all_domain_units_grant_filter() :: #{}.


%% Example:
%% environment_error() :: #{
%%   <<"code">> => [string()],
%%   <<"message">> => [string()]
%% }
-type environment_error() :: #{binary() => any()}.


%% Example:
%% detailed_glossary_term() :: #{
%%   <<"name">> => string(),
%%   <<"shortDescription">> => string()
%% }
-type detailed_glossary_term() :: #{binary() => any()}.


%% Example:
%% create_project_membership_input() :: #{
%%   <<"designation">> := list(any()),
%%   <<"member">> := list()
%% }
-type create_project_membership_input() :: #{binary() => any()}.


%% Example:
%% delete_domain_output() :: #{
%%   <<"status">> => list(any())
%% }
-type delete_domain_output() :: #{binary() => any()}.


%% Example:
%% aws_location() :: #{
%%   <<"accessRole">> => [string()],
%%   <<"awsAccountId">> => string(),
%%   <<"awsRegion">> => string(),
%%   <<"iamConnectionId">> => string()
%% }
-type aws_location() :: #{binary() => any()}.


%% Example:
%% authentication_configuration() :: #{
%%   <<"authenticationType">> => list(any()),
%%   <<"oAuth2Properties">> => o_auth2_properties(),
%%   <<"secretArn">> => [string()]
%% }
-type authentication_configuration() :: #{binary() => any()}.

%% Example:
%% delete_domain_unit_output() :: #{}
-type delete_domain_unit_output() :: #{}.


%% Example:
%% create_project_from_project_profile_policy_grant_detail() :: #{
%%   <<"includeChildDomainUnits">> => [boolean()],
%%   <<"projectProfiles">> => list([string()]())
%% }
-type create_project_from_project_profile_policy_grant_detail() :: #{binary() => any()}.


%% Example:
%% glossary_item_additional_attributes() :: #{
%%   <<"matchRationale">> => list(list())
%% }
-type glossary_item_additional_attributes() :: #{binary() => any()}.

%% Example:
%% delete_listing_input() :: #{}
-type delete_listing_input() :: #{}.


%% Example:
%% sage_maker_run_configuration_output() :: #{
%%   <<"accountId">> => [string()],
%%   <<"region">> => [string()],
%%   <<"trackingAssets">> => map()
%% }
-type sage_maker_run_configuration_output() :: #{binary() => any()}.


%% Example:
%% create_connection_input() :: #{
%%   <<"awsLocation">> => aws_location(),
%%   <<"clientToken">> => [string()],
%%   <<"description">> => string(),
%%   <<"environmentIdentifier">> := string(),
%%   <<"name">> := string(),
%%   <<"props">> => list()
%% }
-type create_connection_input() :: #{binary() => any()}.


%% Example:
%% get_lineage_node_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => [string()],
%%   <<"domainId">> => string(),
%%   <<"downstreamNodes">> => list(lineage_node_reference()),
%%   <<"eventTimestamp">> => [non_neg_integer()],
%%   <<"formsOutput">> => list(form_output()),
%%   <<"id">> => string(),
%%   <<"name">> => [string()],
%%   <<"sourceIdentifier">> => [string()],
%%   <<"typeName">> => [string()],
%%   <<"typeRevision">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string(),
%%   <<"upstreamNodes">> => list(lineage_node_reference())
%% }
-type get_lineage_node_output() :: #{binary() => any()}.


%% Example:
%% get_form_type_input() :: #{
%%   <<"revision">> => string()
%% }
-type get_form_type_input() :: #{binary() => any()}.


%% Example:
%% greater_than_expression() :: #{
%%   <<"columnName">> => [string()],
%%   <<"value">> => [string()]
%% }
-type greater_than_expression() :: #{binary() => any()}.


%% Example:
%% create_project_profile_output() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"domainUnitId">> => string(),
%%   <<"environmentConfigurations">> => list(environment_configuration()),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_project_profile_output() :: #{binary() => any()}.


%% Example:
%% get_subscription_request_details_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"decisionComment">> => string(),
%%   <<"domainId">> => string(),
%%   <<"existingSubscriptionId">> => string(),
%%   <<"id">> => string(),
%%   <<"metadataForms">> => list(form_output()),
%%   <<"requestReason">> => string(),
%%   <<"reviewerId">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"subscribedListings">> => list(subscribed_listing()),
%%   <<"subscribedPrincipals">> => list(list()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type get_subscription_request_details_output() :: #{binary() => any()}.


%% Example:
%% form_entry_output() :: #{
%%   <<"required">> => [boolean()],
%%   <<"typeName">> => string(),
%%   <<"typeRevision">> => string()
%% }
-type form_entry_output() :: #{binary() => any()}.


%% Example:
%% update_glossary_output() :: #{
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"status">> => list(any())
%% }
-type update_glossary_output() :: #{binary() => any()}.


%% Example:
%% list_domains_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_domains_input() :: #{binary() => any()}.


%% Example:
%% project_policy_grant_principal() :: #{
%%   <<"projectDesignation">> => list(any()),
%%   <<"projectGrantFilter">> => list(),
%%   <<"projectIdentifier">> => string()
%% }
-type project_policy_grant_principal() :: #{binary() => any()}.


%% Example:
%% add_entity_owner_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"owner">> := list()
%% }
-type add_entity_owner_input() :: #{binary() => any()}.


%% Example:
%% glue_self_grant_status_output() :: #{
%%   <<"selfGrantStatusDetails">> => list(self_grant_status_detail())
%% }
-type glue_self_grant_status_output() :: #{binary() => any()}.


%% Example:
%% redshift_lineage_sync_configuration_input() :: #{
%%   <<"enabled">> => [boolean()],
%%   <<"schedule">> => lineage_sync_schedule()
%% }
-type redshift_lineage_sync_configuration_input() :: #{binary() => any()}.

%% Example:
%% get_environment_blueprint_input() :: #{}
-type get_environment_blueprint_input() :: #{}.


%% Example:
%% list_data_sources_output() :: #{
%%   <<"items">> => list(data_source_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_data_sources_output() :: #{binary() => any()}.


%% Example:
%% update_rule_input() :: #{
%%   <<"description">> => string(),
%%   <<"detail">> => list(),
%%   <<"includeChildDomainUnits">> => [boolean()],
%%   <<"name">> => string(),
%%   <<"scope">> => rule_scope()
%% }
-type update_rule_input() :: #{binary() => any()}.


%% Example:
%% get_asset_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"externalIdentifier">> => string(),
%%   <<"firstRevisionCreatedAt">> => non_neg_integer(),
%%   <<"firstRevisionCreatedBy">> => string(),
%%   <<"formsOutput">> => list(form_output()),
%%   <<"glossaryTerms">> => list(string()),
%%   <<"id">> => string(),
%%   <<"latestTimeSeriesDataPointFormsOutput">> => list(time_series_data_point_summary_form_output()),
%%   <<"listing">> => asset_listing_details(),
%%   <<"name">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"readOnlyFormsOutput">> => list(form_output()),
%%   <<"revision">> => string(),
%%   <<"typeIdentifier">> => string(),
%%   <<"typeRevision">> => string()
%% }
-type get_asset_output() :: #{binary() => any()}.


%% Example:
%% environment_parameter() :: #{
%%   <<"name">> => [string()],
%%   <<"value">> => [string()]
%% }
-type environment_parameter() :: #{binary() => any()}.


%% Example:
%% import() :: #{
%%   <<"name">> => string(),
%%   <<"revision">> => string()
%% }
-type import() :: #{binary() => any()}.


%% Example:
%% search_types_output() :: #{
%%   <<"items">> => list(list()),
%%   <<"nextToken">> => string(),
%%   <<"totalMatchCount">> => [integer()]
%% }
-type search_types_output() :: #{binary() => any()}.


%% Example:
%% delete_data_source_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"retainPermissionsOnRevokeFailure">> => [boolean()]
%% }
-type delete_data_source_input() :: #{binary() => any()}.


%% Example:
%% iam_properties_patch() :: #{
%%   <<"glueLineageSyncEnabled">> => [boolean()]
%% }
-type iam_properties_patch() :: #{binary() => any()}.


%% Example:
%% get_environment_credentials_output() :: #{
%%   <<"accessKeyId">> => [string()],
%%   <<"expiration">> => [non_neg_integer()],
%%   <<"secretAccessKey">> => [string()],
%%   <<"sessionToken">> => [string()]
%% }
-type get_environment_credentials_output() :: #{binary() => any()}.


%% Example:
%% get_time_series_data_point_input() :: #{
%%   <<"formName">> := string()
%% }
-type get_time_series_data_point_input() :: #{binary() => any()}.


%% Example:
%% project_profile_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"domainUnitId">> => string(),
%%   <<"id">> => string(),
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type project_profile_summary() :: #{binary() => any()}.


%% Example:
%% create_subscription_request_output() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"decisionComment">> => string(),
%%   <<"domainId">> => string(),
%%   <<"existingSubscriptionId">> => string(),
%%   <<"id">> => string(),
%%   <<"metadataForms">> => list(form_output()),
%%   <<"requestReason">> => string(),
%%   <<"reviewerId">> => [string()],
%%   <<"status">> => list(any()),
%%   <<"subscribedListings">> => list(subscribed_listing()),
%%   <<"subscribedPrincipals">> => list(list()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type create_subscription_request_output() :: #{binary() => any()}.


%% Example:
%% domain_unit_group_properties() :: #{
%%   <<"groupId">> => [string()]
%% }
-type domain_unit_group_properties() :: #{binary() => any()}.


%% Example:
%% accept_subscription_request_input() :: #{
%%   <<"assetScopes">> => list(accepted_asset_scope()),
%%   <<"decisionComment">> => string()
%% }
-type accept_subscription_request_input() :: #{binary() => any()}.

%% Example:
%% get_subscription_input() :: #{}
-type get_subscription_input() :: #{}.


%% Example:
%% list_subscription_requests_output() :: #{
%%   <<"items">> => list(subscription_request_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_subscription_requests_output() :: #{binary() => any()}.


%% Example:
%% create_glossary_term_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"glossaryIdentifier">> := string(),
%%   <<"longDescription">> => string(),
%%   <<"name">> := string(),
%%   <<"shortDescription">> => string(),
%%   <<"status">> => list(any()),
%%   <<"termRelations">> => term_relations()
%% }
-type create_glossary_term_input() :: #{binary() => any()}.


%% Example:
%% update_glossary_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type update_glossary_input() :: #{binary() => any()}.

%% Example:
%% get_metadata_generation_run_input() :: #{}
-type get_metadata_generation_run_input() :: #{}.

%% Example:
%% delete_environment_profile_input() :: #{}
-type delete_environment_profile_input() :: #{}.


%% Example:
%% create_group_profile_output() :: #{
%%   <<"domainId">> => string(),
%%   <<"groupName">> => string(),
%%   <<"id">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_group_profile_output() :: #{binary() => any()}.

%% Example:
%% delete_project_profile_output() :: #{}
-type delete_project_profile_output() :: #{}.


%% Example:
%% data_product_item_additional_attributes() :: #{
%%   <<"matchRationale">> => list(list())
%% }
-type data_product_item_additional_attributes() :: #{binary() => any()}.


%% Example:
%% update_connection_output() :: #{
%%   <<"connectionId">> => string(),
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"domainUnitId">> => string(),
%%   <<"environmentId">> => string(),
%%   <<"name">> => string(),
%%   <<"physicalEndpoints">> => list(physical_endpoint()),
%%   <<"projectId">> => string(),
%%   <<"props">> => list(),
%%   <<"type">> => list(any())
%% }
-type update_connection_output() :: #{binary() => any()}.


%% Example:
%% search_group_profiles_output() :: #{
%%   <<"items">> => list(group_profile_summary()),
%%   <<"nextToken">> => string()
%% }
-type search_group_profiles_output() :: #{binary() => any()}.


%% Example:
%% list_subscriptions_output() :: #{
%%   <<"items">> => list(subscription_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_subscriptions_output() :: #{binary() => any()}.


%% Example:
%% update_subscription_target_input() :: #{
%%   <<"applicableAssetTypes">> => list(string()),
%%   <<"authorizedPrincipals">> => list(string()),
%%   <<"manageAccessRole">> => string(),
%%   <<"name">> => string(),
%%   <<"provider">> => [string()],
%%   <<"subscriptionTargetConfig">> => list(subscription_target_form())
%% }
-type update_subscription_target_input() :: #{binary() => any()}.


%% Example:
%% list_asset_revisions_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_asset_revisions_input() :: #{binary() => any()}.


%% Example:
%% update_domain_input() :: #{
%%   <<"clientToken">> => [string()],
%%   <<"description">> => [string()],
%%   <<"domainExecutionRole">> => string(),
%%   <<"name">> => [string()],
%%   <<"serviceRole">> => string(),
%%   <<"singleSignOn">> => single_sign_on()
%% }
-type update_domain_input() :: #{binary() => any()}.


%% Example:
%% delete_subscription_grant_output() :: #{
%%   <<"assets">> => list(subscribed_asset()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"domainId">> => string(),
%%   <<"grantedEntity">> => list(),
%%   <<"id">> => string(),
%%   <<"status">> => list(any()),
%%   <<"subscriptionId">> => string(),
%%   <<"subscriptionTargetId">> => string(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type delete_subscription_grant_output() :: #{binary() => any()}.


%% Example:
%% lake_formation_configuration() :: #{
%%   <<"locationRegistrationExcludeS3Locations">> => list(string()),
%%   <<"locationRegistrationRole">> => string()
%% }
-type lake_formation_configuration() :: #{binary() => any()}.


%% Example:
%% s3_properties_input() :: #{
%%   <<"s3AccessGrantLocationId">> => string(),
%%   <<"s3Uri">> => string()
%% }
-type s3_properties_input() :: #{binary() => any()}.

%% Example:
%% delete_listing_output() :: #{}
-type delete_listing_output() :: #{}.


%% Example:
%% form_input() :: #{
%%   <<"content">> => [string()],
%%   <<"formName">> => string(),
%%   <<"typeIdentifier">> => string(),
%%   <<"typeRevision">> => string()
%% }
-type form_input() :: #{binary() => any()}.


%% Example:
%% create_glossary_output() :: #{
%%   <<"description">> => string(),
%%   <<"domainId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"owningProjectId">> => string(),
%%   <<"status">> => list(any())
%% }
-type create_glossary_output() :: #{binary() => any()}.


%% Example:
%% basic_authentication_credentials() :: #{
%%   <<"password">> => [string()],
%%   <<"userName">> => [string()]
%% }
-type basic_authentication_credentials() :: #{binary() => any()}.


%% Example:
%% environment_configuration_parameter() :: #{
%%   <<"isEditable">> => [boolean()],
%%   <<"name">> => string(),
%%   <<"value">> => [string()]
%% }
-type environment_configuration_parameter() :: #{binary() => any()}.


%% Example:
%% configurable_action_parameter() :: #{
%%   <<"key">> => [string()],
%%   <<"value">> => [string()]
%% }
-type configurable_action_parameter() :: #{binary() => any()}.


%% Example:
%% resource() :: #{
%%   <<"name">> => [string()],
%%   <<"provider">> => [string()],
%%   <<"type">> => [string()],
%%   <<"value">> => [string()]
%% }
-type resource() :: #{binary() => any()}.


%% Example:
%% redshift_run_configuration_output() :: #{
%%   <<"accountId">> => [string()],
%%   <<"dataAccessRole">> => [string()],
%%   <<"redshiftCredentialConfiguration">> => redshift_credential_configuration(),
%%   <<"redshiftStorage">> => list(),
%%   <<"region">> => [string()],
%%   <<"relationalFilterConfigurations">> => list(relational_filter_configuration())
%% }
-type redshift_run_configuration_output() :: #{binary() => any()}.


%% Example:
%% put_environment_blueprint_configuration_input() :: #{
%%   <<"enabledRegions">> := list(string()),
%%   <<"environmentRolePermissionBoundary">> => string(),
%%   <<"manageAccessRoleArn">> => string(),
%%   <<"provisioningConfigurations">> => list(list()),
%%   <<"provisioningRoleArn">> => string(),
%%   <<"regionalParameters">> => map()
%% }
-type put_environment_blueprint_configuration_input() :: #{binary() => any()}.


%% Example:
%% data_product_listing_item() :: #{
%%   <<"additionalAttributes">> => data_product_listing_item_additional_attributes(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"entityId">> => string(),
%%   <<"entityRevision">> => string(),
%%   <<"glossaryTerms">> => list(detailed_glossary_term()),
%%   <<"items">> => list(listing_summary_item()),
%%   <<"listingCreatedBy">> => string(),
%%   <<"listingId">> => string(),
%%   <<"listingRevision">> => string(),
%%   <<"listingUpdatedBy">> => string(),
%%   <<"name">> => string(),
%%   <<"owningProjectId">> => string()
%% }
-type data_product_listing_item() :: #{binary() => any()}.

-type accept_predictions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type accept_subscription_request_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type add_entity_owner_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type add_policy_grant_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type associate_environment_role_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type cancel_metadata_generation_run_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type cancel_subscription_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_account_pool_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_asset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_asset_filter_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_asset_revision_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_asset_type_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_data_product_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_data_product_revision_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_data_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_domain_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_domain_unit_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_environment_action_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_environment_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_form_type_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_glossary_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_glossary_term_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_group_profile_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_listing_change_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_project_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_project_membership_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_project_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_subscription_grant_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_subscription_request_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_subscription_target_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_user_profile_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_account_pool_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_asset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_asset_filter_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_asset_type_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_data_product_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_data_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_domain_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_domain_unit_errors() ::
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

-type delete_environment_action_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_environment_blueprint_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_environment_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_form_type_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_glossary_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_glossary_term_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_listing_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_project_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_project_membership_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type delete_project_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_subscription_grant_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_subscription_request_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_subscription_target_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_time_series_data_points_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disassociate_environment_role_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_account_pool_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_asset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_asset_filter_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_asset_type_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_data_product_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_data_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_data_source_run_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_domain_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_domain_unit_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_environment_action_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_environment_blueprint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_environment_blueprint_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_environment_credentials_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_environment_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_form_type_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_glossary_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_glossary_term_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_group_profile_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_iam_portal_login_url_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_job_run_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_lineage_event_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_lineage_node_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_listing_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_metadata_generation_run_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_project_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_project_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_subscription_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_subscription_grant_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_subscription_request_details_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_subscription_target_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_time_series_data_point_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_user_profile_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_account_pools_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_accounts_in_account_pool_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_asset_filters_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_asset_revisions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_connections_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_data_product_revisions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_data_source_run_activities_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_data_source_runs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_data_sources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_domain_units_for_parent_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_domains_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_entity_owners_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_environment_actions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_environment_blueprint_configurations_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_environment_blueprints_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_environment_profiles_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_environments_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_job_runs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_lineage_events_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_lineage_node_history_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_metadata_generation_runs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_notifications_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_policy_grants_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_project_memberships_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_project_profiles_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_projects_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_rules_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_subscription_grants_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_subscription_requests_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_subscription_targets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_subscriptions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_time_series_data_points_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type post_lineage_event_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type post_time_series_data_points_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_environment_blueprint_configuration_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type reject_predictions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type reject_subscription_request_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type remove_entity_owner_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type remove_policy_grant_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type revoke_subscription_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type search_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type search_group_profiles_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type search_listings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type search_types_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type search_user_profiles_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_data_source_run_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_metadata_generation_run_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    internal_server_exception() | 
    resource_not_found_exception().

-type update_account_pool_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_asset_filter_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_data_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_domain_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_domain_unit_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_environment_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type update_environment_action_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_environment_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_glossary_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_glossary_term_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_group_profile_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_project_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_project_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_subscription_grant_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_subscription_request_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_subscription_target_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_user_profile_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts automatically generated business-friendly metadata for your
%% Amazon DataZone assets.
-spec accept_predictions(aws_client:aws_client(), binary() | list(), binary() | list(), accept_predictions_input()) ->
    {ok, accept_predictions_output(), tuple()} |
    {error, any()} |
    {error, accept_predictions_errors(), tuple()}.
accept_predictions(Client, DomainIdentifier, Identifier, Input) ->
    accept_predictions(Client, DomainIdentifier, Identifier, Input, []).

-spec accept_predictions(aws_client:aws_client(), binary() | list(), binary() | list(), accept_predictions_input(), proplists:proplist()) ->
    {ok, accept_predictions_output(), tuple()} |
    {error, any()} |
    {error, accept_predictions_errors(), tuple()}.
accept_predictions(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/assets/", aws_util:encode_uri(Identifier), "/accept-predictions"],
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
                     {<<"revision">>, <<"revision">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Accepts a subscription request to a specific asset.
-spec accept_subscription_request(aws_client:aws_client(), binary() | list(), binary() | list(), accept_subscription_request_input()) ->
    {ok, accept_subscription_request_output(), tuple()} |
    {error, any()} |
    {error, accept_subscription_request_errors(), tuple()}.
accept_subscription_request(Client, DomainIdentifier, Identifier, Input) ->
    accept_subscription_request(Client, DomainIdentifier, Identifier, Input, []).

-spec accept_subscription_request(aws_client:aws_client(), binary() | list(), binary() | list(), accept_subscription_request_input(), proplists:proplist()) ->
    {ok, accept_subscription_request_output(), tuple()} |
    {error, any()} |
    {error, accept_subscription_request_errors(), tuple()}.
accept_subscription_request(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-requests/", aws_util:encode_uri(Identifier), "/accept"],
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

%% @doc Adds the owner of an entity (a domain unit).
-spec add_entity_owner(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), add_entity_owner_input()) ->
    {ok, add_entity_owner_output(), tuple()} |
    {error, any()} |
    {error, add_entity_owner_errors(), tuple()}.
add_entity_owner(Client, DomainIdentifier, EntityIdentifier, EntityType, Input) ->
    add_entity_owner(Client, DomainIdentifier, EntityIdentifier, EntityType, Input, []).

-spec add_entity_owner(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), add_entity_owner_input(), proplists:proplist()) ->
    {ok, add_entity_owner_output(), tuple()} |
    {error, any()} |
    {error, add_entity_owner_errors(), tuple()}.
add_entity_owner(Client, DomainIdentifier, EntityIdentifier, EntityType, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/entities/", aws_util:encode_uri(EntityType), "/", aws_util:encode_uri(EntityIdentifier), "/addOwner"],
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

%% @doc Adds a policy grant (an authorization policy) to a specified entity,
%% including domain units, environment blueprint configurations, or
%% environment profiles.
-spec add_policy_grant(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), add_policy_grant_input()) ->
    {ok, add_policy_grant_output(), tuple()} |
    {error, any()} |
    {error, add_policy_grant_errors(), tuple()}.
add_policy_grant(Client, DomainIdentifier, EntityIdentifier, EntityType, Input) ->
    add_policy_grant(Client, DomainIdentifier, EntityIdentifier, EntityType, Input, []).

-spec add_policy_grant(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), add_policy_grant_input(), proplists:proplist()) ->
    {ok, add_policy_grant_output(), tuple()} |
    {error, any()} |
    {error, add_policy_grant_errors(), tuple()}.
add_policy_grant(Client, DomainIdentifier, EntityIdentifier, EntityType, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/policies/managed/", aws_util:encode_uri(EntityType), "/", aws_util:encode_uri(EntityIdentifier), "/addGrant"],
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

%% @doc Associates the environment role in Amazon DataZone.
-spec associate_environment_role(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), associate_environment_role_input()) ->
    {ok, associate_environment_role_output(), tuple()} |
    {error, any()} |
    {error, associate_environment_role_errors(), tuple()}.
associate_environment_role(Client, DomainIdentifier, EnvironmentIdentifier, EnvironmentRoleArn, Input) ->
    associate_environment_role(Client, DomainIdentifier, EnvironmentIdentifier, EnvironmentRoleArn, Input, []).

-spec associate_environment_role(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), associate_environment_role_input(), proplists:proplist()) ->
    {ok, associate_environment_role_output(), tuple()} |
    {error, any()} |
    {error, associate_environment_role_errors(), tuple()}.
associate_environment_role(Client, DomainIdentifier, EnvironmentIdentifier, EnvironmentRoleArn, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/roles/", aws_util:encode_uri(EnvironmentRoleArn), ""],
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

%% @doc Cancels the metadata generation run.
-spec cancel_metadata_generation_run(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_metadata_generation_run_input()) ->
    {ok, cancel_metadata_generation_run_output(), tuple()} |
    {error, any()} |
    {error, cancel_metadata_generation_run_errors(), tuple()}.
cancel_metadata_generation_run(Client, DomainIdentifier, Identifier, Input) ->
    cancel_metadata_generation_run(Client, DomainIdentifier, Identifier, Input, []).

-spec cancel_metadata_generation_run(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_metadata_generation_run_input(), proplists:proplist()) ->
    {ok, cancel_metadata_generation_run_output(), tuple()} |
    {error, any()} |
    {error, cancel_metadata_generation_run_errors(), tuple()}.
cancel_metadata_generation_run(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/metadata-generation-runs/", aws_util:encode_uri(Identifier), "/cancel"],
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

%% @doc Cancels the subscription to the specified asset.
-spec cancel_subscription(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_subscription_input()) ->
    {ok, cancel_subscription_output(), tuple()} |
    {error, any()} |
    {error, cancel_subscription_errors(), tuple()}.
cancel_subscription(Client, DomainIdentifier, Identifier, Input) ->
    cancel_subscription(Client, DomainIdentifier, Identifier, Input, []).

-spec cancel_subscription(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_subscription_input(), proplists:proplist()) ->
    {ok, cancel_subscription_output(), tuple()} |
    {error, any()} |
    {error, cancel_subscription_errors(), tuple()}.
cancel_subscription(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscriptions/", aws_util:encode_uri(Identifier), "/cancel"],
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

%% @doc Creates an account pool.
-spec create_account_pool(aws_client:aws_client(), binary() | list(), create_account_pool_input()) ->
    {ok, create_account_pool_output(), tuple()} |
    {error, any()} |
    {error, create_account_pool_errors(), tuple()}.
create_account_pool(Client, DomainIdentifier, Input) ->
    create_account_pool(Client, DomainIdentifier, Input, []).

-spec create_account_pool(aws_client:aws_client(), binary() | list(), create_account_pool_input(), proplists:proplist()) ->
    {ok, create_account_pool_output(), tuple()} |
    {error, any()} |
    {error, create_account_pool_errors(), tuple()}.
create_account_pool(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/account-pools"],
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

%% @doc Creates an asset in Amazon DataZone catalog.
-spec create_asset(aws_client:aws_client(), binary() | list(), create_asset_input()) ->
    {ok, create_asset_output(), tuple()} |
    {error, any()} |
    {error, create_asset_errors(), tuple()}.
create_asset(Client, DomainIdentifier, Input) ->
    create_asset(Client, DomainIdentifier, Input, []).

-spec create_asset(aws_client:aws_client(), binary() | list(), create_asset_input(), proplists:proplist()) ->
    {ok, create_asset_output(), tuple()} |
    {error, any()} |
    {error, create_asset_errors(), tuple()}.
create_asset(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/assets"],
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

%% @doc Creates a data asset filter.
-spec create_asset_filter(aws_client:aws_client(), binary() | list(), binary() | list(), create_asset_filter_input()) ->
    {ok, create_asset_filter_output(), tuple()} |
    {error, any()} |
    {error, create_asset_filter_errors(), tuple()}.
create_asset_filter(Client, AssetIdentifier, DomainIdentifier, Input) ->
    create_asset_filter(Client, AssetIdentifier, DomainIdentifier, Input, []).

-spec create_asset_filter(aws_client:aws_client(), binary() | list(), binary() | list(), create_asset_filter_input(), proplists:proplist()) ->
    {ok, create_asset_filter_output(), tuple()} |
    {error, any()} |
    {error, create_asset_filter_errors(), tuple()}.
create_asset_filter(Client, AssetIdentifier, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/assets/", aws_util:encode_uri(AssetIdentifier), "/filters"],
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

%% @doc Creates a revision of the asset.
-spec create_asset_revision(aws_client:aws_client(), binary() | list(), binary() | list(), create_asset_revision_input()) ->
    {ok, create_asset_revision_output(), tuple()} |
    {error, any()} |
    {error, create_asset_revision_errors(), tuple()}.
create_asset_revision(Client, DomainIdentifier, Identifier, Input) ->
    create_asset_revision(Client, DomainIdentifier, Identifier, Input, []).

-spec create_asset_revision(aws_client:aws_client(), binary() | list(), binary() | list(), create_asset_revision_input(), proplists:proplist()) ->
    {ok, create_asset_revision_output(), tuple()} |
    {error, any()} |
    {error, create_asset_revision_errors(), tuple()}.
create_asset_revision(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/assets/", aws_util:encode_uri(Identifier), "/revisions"],
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

%% @doc Creates a custom asset type.
-spec create_asset_type(aws_client:aws_client(), binary() | list(), create_asset_type_input()) ->
    {ok, create_asset_type_output(), tuple()} |
    {error, any()} |
    {error, create_asset_type_errors(), tuple()}.
create_asset_type(Client, DomainIdentifier, Input) ->
    create_asset_type(Client, DomainIdentifier, Input, []).

-spec create_asset_type(aws_client:aws_client(), binary() | list(), create_asset_type_input(), proplists:proplist()) ->
    {ok, create_asset_type_output(), tuple()} |
    {error, any()} |
    {error, create_asset_type_errors(), tuple()}.
create_asset_type(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/asset-types"],
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

%% @doc Creates a new connection.
%%
%% In Amazon DataZone, a connection enables you to connect your resources
%% (domains, projects, and environments) to external resources and services.
-spec create_connection(aws_client:aws_client(), binary() | list(), create_connection_input()) ->
    {ok, create_connection_output(), tuple()} |
    {error, any()} |
    {error, create_connection_errors(), tuple()}.
create_connection(Client, DomainIdentifier, Input) ->
    create_connection(Client, DomainIdentifier, Input, []).

-spec create_connection(aws_client:aws_client(), binary() | list(), create_connection_input(), proplists:proplist()) ->
    {ok, create_connection_output(), tuple()} |
    {error, any()} |
    {error, create_connection_errors(), tuple()}.
create_connection(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/connections"],
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

%% @doc Creates a data product.
-spec create_data_product(aws_client:aws_client(), binary() | list(), create_data_product_input()) ->
    {ok, create_data_product_output(), tuple()} |
    {error, any()} |
    {error, create_data_product_errors(), tuple()}.
create_data_product(Client, DomainIdentifier, Input) ->
    create_data_product(Client, DomainIdentifier, Input, []).

-spec create_data_product(aws_client:aws_client(), binary() | list(), create_data_product_input(), proplists:proplist()) ->
    {ok, create_data_product_output(), tuple()} |
    {error, any()} |
    {error, create_data_product_errors(), tuple()}.
create_data_product(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-products"],
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

%% @doc Creates a data product revision.
-spec create_data_product_revision(aws_client:aws_client(), binary() | list(), binary() | list(), create_data_product_revision_input()) ->
    {ok, create_data_product_revision_output(), tuple()} |
    {error, any()} |
    {error, create_data_product_revision_errors(), tuple()}.
create_data_product_revision(Client, DomainIdentifier, Identifier, Input) ->
    create_data_product_revision(Client, DomainIdentifier, Identifier, Input, []).

-spec create_data_product_revision(aws_client:aws_client(), binary() | list(), binary() | list(), create_data_product_revision_input(), proplists:proplist()) ->
    {ok, create_data_product_revision_output(), tuple()} |
    {error, any()} |
    {error, create_data_product_revision_errors(), tuple()}.
create_data_product_revision(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-products/", aws_util:encode_uri(Identifier), "/revisions"],
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

%% @doc Creates an Amazon DataZone data source.
-spec create_data_source(aws_client:aws_client(), binary() | list(), create_data_source_input()) ->
    {ok, create_data_source_output(), tuple()} |
    {error, any()} |
    {error, create_data_source_errors(), tuple()}.
create_data_source(Client, DomainIdentifier, Input) ->
    create_data_source(Client, DomainIdentifier, Input, []).

-spec create_data_source(aws_client:aws_client(), binary() | list(), create_data_source_input(), proplists:proplist()) ->
    {ok, create_data_source_output(), tuple()} |
    {error, any()} |
    {error, create_data_source_errors(), tuple()}.
create_data_source(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-sources"],
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

%% @doc Creates an Amazon DataZone domain.
-spec create_domain(aws_client:aws_client(), create_domain_input()) ->
    {ok, create_domain_output(), tuple()} |
    {error, any()} |
    {error, create_domain_errors(), tuple()}.
create_domain(Client, Input) ->
    create_domain(Client, Input, []).

-spec create_domain(aws_client:aws_client(), create_domain_input(), proplists:proplist()) ->
    {ok, create_domain_output(), tuple()} |
    {error, any()} |
    {error, create_domain_errors(), tuple()}.
create_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains"],
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

%% @doc Creates a domain unit in Amazon DataZone.
-spec create_domain_unit(aws_client:aws_client(), binary() | list(), create_domain_unit_input()) ->
    {ok, create_domain_unit_output(), tuple()} |
    {error, any()} |
    {error, create_domain_unit_errors(), tuple()}.
create_domain_unit(Client, DomainIdentifier, Input) ->
    create_domain_unit(Client, DomainIdentifier, Input, []).

-spec create_domain_unit(aws_client:aws_client(), binary() | list(), create_domain_unit_input(), proplists:proplist()) ->
    {ok, create_domain_unit_output(), tuple()} |
    {error, any()} |
    {error, create_domain_unit_errors(), tuple()}.
create_domain_unit(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/domain-units"],
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

%% @doc Create an Amazon DataZone environment.
-spec create_environment(aws_client:aws_client(), binary() | list(), create_environment_input()) ->
    {ok, create_environment_output(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, DomainIdentifier, Input) ->
    create_environment(Client, DomainIdentifier, Input, []).

-spec create_environment(aws_client:aws_client(), binary() | list(), create_environment_input(), proplists:proplist()) ->
    {ok, create_environment_output(), tuple()} |
    {error, any()} |
    {error, create_environment_errors(), tuple()}.
create_environment(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments"],
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

%% @doc Creates an action for the environment, for example, creates a console
%% link for an analytics tool that is available in this environment.
-spec create_environment_action(aws_client:aws_client(), binary() | list(), binary() | list(), create_environment_action_input()) ->
    {ok, create_environment_action_output(), tuple()} |
    {error, any()} |
    {error, create_environment_action_errors(), tuple()}.
create_environment_action(Client, DomainIdentifier, EnvironmentIdentifier, Input) ->
    create_environment_action(Client, DomainIdentifier, EnvironmentIdentifier, Input, []).

-spec create_environment_action(aws_client:aws_client(), binary() | list(), binary() | list(), create_environment_action_input(), proplists:proplist()) ->
    {ok, create_environment_action_output(), tuple()} |
    {error, any()} |
    {error, create_environment_action_errors(), tuple()}.
create_environment_action(Client, DomainIdentifier, EnvironmentIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/actions"],
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

%% @doc Creates an Amazon DataZone environment profile.
-spec create_environment_profile(aws_client:aws_client(), binary() | list(), create_environment_profile_input()) ->
    {ok, create_environment_profile_output(), tuple()} |
    {error, any()} |
    {error, create_environment_profile_errors(), tuple()}.
create_environment_profile(Client, DomainIdentifier, Input) ->
    create_environment_profile(Client, DomainIdentifier, Input, []).

-spec create_environment_profile(aws_client:aws_client(), binary() | list(), create_environment_profile_input(), proplists:proplist()) ->
    {ok, create_environment_profile_output(), tuple()} |
    {error, any()} |
    {error, create_environment_profile_errors(), tuple()}.
create_environment_profile(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-profiles"],
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

%% @doc Creates a metadata form type.
-spec create_form_type(aws_client:aws_client(), binary() | list(), create_form_type_input()) ->
    {ok, create_form_type_output(), tuple()} |
    {error, any()} |
    {error, create_form_type_errors(), tuple()}.
create_form_type(Client, DomainIdentifier, Input) ->
    create_form_type(Client, DomainIdentifier, Input, []).

-spec create_form_type(aws_client:aws_client(), binary() | list(), create_form_type_input(), proplists:proplist()) ->
    {ok, create_form_type_output(), tuple()} |
    {error, any()} |
    {error, create_form_type_errors(), tuple()}.
create_form_type(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/form-types"],
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

%% @doc Creates an Amazon DataZone business glossary.
-spec create_glossary(aws_client:aws_client(), binary() | list(), create_glossary_input()) ->
    {ok, create_glossary_output(), tuple()} |
    {error, any()} |
    {error, create_glossary_errors(), tuple()}.
create_glossary(Client, DomainIdentifier, Input) ->
    create_glossary(Client, DomainIdentifier, Input, []).

-spec create_glossary(aws_client:aws_client(), binary() | list(), create_glossary_input(), proplists:proplist()) ->
    {ok, create_glossary_output(), tuple()} |
    {error, any()} |
    {error, create_glossary_errors(), tuple()}.
create_glossary(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/glossaries"],
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

%% @doc Creates a business glossary term.
-spec create_glossary_term(aws_client:aws_client(), binary() | list(), create_glossary_term_input()) ->
    {ok, create_glossary_term_output(), tuple()} |
    {error, any()} |
    {error, create_glossary_term_errors(), tuple()}.
create_glossary_term(Client, DomainIdentifier, Input) ->
    create_glossary_term(Client, DomainIdentifier, Input, []).

-spec create_glossary_term(aws_client:aws_client(), binary() | list(), create_glossary_term_input(), proplists:proplist()) ->
    {ok, create_glossary_term_output(), tuple()} |
    {error, any()} |
    {error, create_glossary_term_errors(), tuple()}.
create_glossary_term(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/glossary-terms"],
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

%% @doc Creates a group profile in Amazon DataZone.
-spec create_group_profile(aws_client:aws_client(), binary() | list(), create_group_profile_input()) ->
    {ok, create_group_profile_output(), tuple()} |
    {error, any()} |
    {error, create_group_profile_errors(), tuple()}.
create_group_profile(Client, DomainIdentifier, Input) ->
    create_group_profile(Client, DomainIdentifier, Input, []).

-spec create_group_profile(aws_client:aws_client(), binary() | list(), create_group_profile_input(), proplists:proplist()) ->
    {ok, create_group_profile_output(), tuple()} |
    {error, any()} |
    {error, create_group_profile_errors(), tuple()}.
create_group_profile(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/group-profiles"],
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

%% @doc Publishes a listing (a record of an asset at a given time) or removes
%% a listing from the catalog.
-spec create_listing_change_set(aws_client:aws_client(), binary() | list(), create_listing_change_set_input()) ->
    {ok, create_listing_change_set_output(), tuple()} |
    {error, any()} |
    {error, create_listing_change_set_errors(), tuple()}.
create_listing_change_set(Client, DomainIdentifier, Input) ->
    create_listing_change_set(Client, DomainIdentifier, Input, []).

-spec create_listing_change_set(aws_client:aws_client(), binary() | list(), create_listing_change_set_input(), proplists:proplist()) ->
    {ok, create_listing_change_set_output(), tuple()} |
    {error, any()} |
    {error, create_listing_change_set_errors(), tuple()}.
create_listing_change_set(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/listings/change-set"],
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

%% @doc Creates an Amazon DataZone project.
-spec create_project(aws_client:aws_client(), binary() | list(), create_project_input()) ->
    {ok, create_project_output(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
create_project(Client, DomainIdentifier, Input) ->
    create_project(Client, DomainIdentifier, Input, []).

-spec create_project(aws_client:aws_client(), binary() | list(), create_project_input(), proplists:proplist()) ->
    {ok, create_project_output(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
create_project(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/projects"],
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

%% @doc Creates a project membership in Amazon DataZone.
-spec create_project_membership(aws_client:aws_client(), binary() | list(), binary() | list(), create_project_membership_input()) ->
    {ok, create_project_membership_output(), tuple()} |
    {error, any()} |
    {error, create_project_membership_errors(), tuple()}.
create_project_membership(Client, DomainIdentifier, ProjectIdentifier, Input) ->
    create_project_membership(Client, DomainIdentifier, ProjectIdentifier, Input, []).

-spec create_project_membership(aws_client:aws_client(), binary() | list(), binary() | list(), create_project_membership_input(), proplists:proplist()) ->
    {ok, create_project_membership_output(), tuple()} |
    {error, any()} |
    {error, create_project_membership_errors(), tuple()}.
create_project_membership(Client, DomainIdentifier, ProjectIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/projects/", aws_util:encode_uri(ProjectIdentifier), "/createMembership"],
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

%% @doc Creates a project profile.
-spec create_project_profile(aws_client:aws_client(), binary() | list(), create_project_profile_input()) ->
    {ok, create_project_profile_output(), tuple()} |
    {error, any()} |
    {error, create_project_profile_errors(), tuple()}.
create_project_profile(Client, DomainIdentifier, Input) ->
    create_project_profile(Client, DomainIdentifier, Input, []).

-spec create_project_profile(aws_client:aws_client(), binary() | list(), create_project_profile_input(), proplists:proplist()) ->
    {ok, create_project_profile_output(), tuple()} |
    {error, any()} |
    {error, create_project_profile_errors(), tuple()}.
create_project_profile(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/project-profiles"],
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

%% @doc Creates a rule in Amazon DataZone.
%%
%% A rule is a formal agreement that enforces specific requirements across
%% user workflows (e.g., publishing assets to the catalog, requesting
%% subscriptions, creating projects) within the Amazon DataZone data portal.
%% These rules help maintain consistency, ensure compliance, and uphold
%% governance standards in data management processes. For instance, a
%% metadata enforcement rule can specify the required information for
%% creating a subscription request or publishing a data asset to the catalog,
%% ensuring alignment with organizational standards.
-spec create_rule(aws_client:aws_client(), binary() | list(), create_rule_input()) ->
    {ok, create_rule_output(), tuple()} |
    {error, any()} |
    {error, create_rule_errors(), tuple()}.
create_rule(Client, DomainIdentifier, Input) ->
    create_rule(Client, DomainIdentifier, Input, []).

-spec create_rule(aws_client:aws_client(), binary() | list(), create_rule_input(), proplists:proplist()) ->
    {ok, create_rule_output(), tuple()} |
    {error, any()} |
    {error, create_rule_errors(), tuple()}.
create_rule(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/rules"],
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

%% @doc Creates a subsscription grant in Amazon DataZone.
-spec create_subscription_grant(aws_client:aws_client(), binary() | list(), create_subscription_grant_input()) ->
    {ok, create_subscription_grant_output(), tuple()} |
    {error, any()} |
    {error, create_subscription_grant_errors(), tuple()}.
create_subscription_grant(Client, DomainIdentifier, Input) ->
    create_subscription_grant(Client, DomainIdentifier, Input, []).

-spec create_subscription_grant(aws_client:aws_client(), binary() | list(), create_subscription_grant_input(), proplists:proplist()) ->
    {ok, create_subscription_grant_output(), tuple()} |
    {error, any()} |
    {error, create_subscription_grant_errors(), tuple()}.
create_subscription_grant(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-grants"],
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

%% @doc Creates a subscription request in Amazon DataZone.
-spec create_subscription_request(aws_client:aws_client(), binary() | list(), create_subscription_request_input()) ->
    {ok, create_subscription_request_output(), tuple()} |
    {error, any()} |
    {error, create_subscription_request_errors(), tuple()}.
create_subscription_request(Client, DomainIdentifier, Input) ->
    create_subscription_request(Client, DomainIdentifier, Input, []).

-spec create_subscription_request(aws_client:aws_client(), binary() | list(), create_subscription_request_input(), proplists:proplist()) ->
    {ok, create_subscription_request_output(), tuple()} |
    {error, any()} |
    {error, create_subscription_request_errors(), tuple()}.
create_subscription_request(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-requests"],
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

%% @doc Creates a subscription target in Amazon DataZone.
-spec create_subscription_target(aws_client:aws_client(), binary() | list(), binary() | list(), create_subscription_target_input()) ->
    {ok, create_subscription_target_output(), tuple()} |
    {error, any()} |
    {error, create_subscription_target_errors(), tuple()}.
create_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Input) ->
    create_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Input, []).

-spec create_subscription_target(aws_client:aws_client(), binary() | list(), binary() | list(), create_subscription_target_input(), proplists:proplist()) ->
    {ok, create_subscription_target_output(), tuple()} |
    {error, any()} |
    {error, create_subscription_target_errors(), tuple()}.
create_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/subscription-targets"],
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

%% @doc Creates a user profile in Amazon DataZone.
-spec create_user_profile(aws_client:aws_client(), binary() | list(), create_user_profile_input()) ->
    {ok, create_user_profile_output(), tuple()} |
    {error, any()} |
    {error, create_user_profile_errors(), tuple()}.
create_user_profile(Client, DomainIdentifier, Input) ->
    create_user_profile(Client, DomainIdentifier, Input, []).

-spec create_user_profile(aws_client:aws_client(), binary() | list(), create_user_profile_input(), proplists:proplist()) ->
    {ok, create_user_profile_output(), tuple()} |
    {error, any()} |
    {error, create_user_profile_errors(), tuple()}.
create_user_profile(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/user-profiles"],
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

%% @doc Deletes an account pool.
-spec delete_account_pool(aws_client:aws_client(), binary() | list(), binary() | list(), delete_account_pool_input()) ->
    {ok, delete_account_pool_output(), tuple()} |
    {error, any()} |
    {error, delete_account_pool_errors(), tuple()}.
delete_account_pool(Client, DomainIdentifier, Identifier, Input) ->
    delete_account_pool(Client, DomainIdentifier, Identifier, Input, []).

-spec delete_account_pool(aws_client:aws_client(), binary() | list(), binary() | list(), delete_account_pool_input(), proplists:proplist()) ->
    {ok, delete_account_pool_output(), tuple()} |
    {error, any()} |
    {error, delete_account_pool_errors(), tuple()}.
delete_account_pool(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/account-pools/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes an asset in Amazon DataZone.
-spec delete_asset(aws_client:aws_client(), binary() | list(), binary() | list(), delete_asset_input()) ->
    {ok, delete_asset_output(), tuple()} |
    {error, any()} |
    {error, delete_asset_errors(), tuple()}.
delete_asset(Client, DomainIdentifier, Identifier, Input) ->
    delete_asset(Client, DomainIdentifier, Identifier, Input, []).

-spec delete_asset(aws_client:aws_client(), binary() | list(), binary() | list(), delete_asset_input(), proplists:proplist()) ->
    {ok, delete_asset_output(), tuple()} |
    {error, any()} |
    {error, delete_asset_errors(), tuple()}.
delete_asset(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/assets/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes an asset filter.
-spec delete_asset_filter(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_asset_filter_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_asset_filter_errors(), tuple()}.
delete_asset_filter(Client, AssetIdentifier, DomainIdentifier, Identifier, Input) ->
    delete_asset_filter(Client, AssetIdentifier, DomainIdentifier, Identifier, Input, []).

-spec delete_asset_filter(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_asset_filter_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_asset_filter_errors(), tuple()}.
delete_asset_filter(Client, AssetIdentifier, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/assets/", aws_util:encode_uri(AssetIdentifier), "/filters/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes an asset type in Amazon DataZone.
-spec delete_asset_type(aws_client:aws_client(), binary() | list(), binary() | list(), delete_asset_type_input()) ->
    {ok, delete_asset_type_output(), tuple()} |
    {error, any()} |
    {error, delete_asset_type_errors(), tuple()}.
delete_asset_type(Client, DomainIdentifier, Identifier, Input) ->
    delete_asset_type(Client, DomainIdentifier, Identifier, Input, []).

-spec delete_asset_type(aws_client:aws_client(), binary() | list(), binary() | list(), delete_asset_type_input(), proplists:proplist()) ->
    {ok, delete_asset_type_output(), tuple()} |
    {error, any()} |
    {error, delete_asset_type_errors(), tuple()}.
delete_asset_type(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/asset-types/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes and connection.
%%
%% In Amazon DataZone, a connection enables you to connect your resources
%% (domains, projects, and environments) to external resources and services.
-spec delete_connection(aws_client:aws_client(), binary() | list(), binary() | list(), delete_connection_input()) ->
    {ok, delete_connection_output(), tuple()} |
    {error, any()} |
    {error, delete_connection_errors(), tuple()}.
delete_connection(Client, DomainIdentifier, Identifier, Input) ->
    delete_connection(Client, DomainIdentifier, Identifier, Input, []).

-spec delete_connection(aws_client:aws_client(), binary() | list(), binary() | list(), delete_connection_input(), proplists:proplist()) ->
    {ok, delete_connection_output(), tuple()} |
    {error, any()} |
    {error, delete_connection_errors(), tuple()}.
delete_connection(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/connections/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes a data product in Amazon DataZone.
-spec delete_data_product(aws_client:aws_client(), binary() | list(), binary() | list(), delete_data_product_input()) ->
    {ok, delete_data_product_output(), tuple()} |
    {error, any()} |
    {error, delete_data_product_errors(), tuple()}.
delete_data_product(Client, DomainIdentifier, Identifier, Input) ->
    delete_data_product(Client, DomainIdentifier, Identifier, Input, []).

-spec delete_data_product(aws_client:aws_client(), binary() | list(), binary() | list(), delete_data_product_input(), proplists:proplist()) ->
    {ok, delete_data_product_output(), tuple()} |
    {error, any()} |
    {error, delete_data_product_errors(), tuple()}.
delete_data_product(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-products/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes a data source in Amazon DataZone.
-spec delete_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), delete_data_source_input()) ->
    {ok, delete_data_source_output(), tuple()} |
    {error, any()} |
    {error, delete_data_source_errors(), tuple()}.
delete_data_source(Client, DomainIdentifier, Identifier, Input) ->
    delete_data_source(Client, DomainIdentifier, Identifier, Input, []).

-spec delete_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), delete_data_source_input(), proplists:proplist()) ->
    {ok, delete_data_source_output(), tuple()} |
    {error, any()} |
    {error, delete_data_source_errors(), tuple()}.
delete_data_source(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-sources/", aws_util:encode_uri(Identifier), ""],
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
                     {<<"clientToken">>, <<"clientToken">>},
                     {<<"retainPermissionsOnRevokeFailure">>, <<"retainPermissionsOnRevokeFailure">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Amazon DataZone domain.
-spec delete_domain(aws_client:aws_client(), binary() | list(), delete_domain_input()) ->
    {ok, delete_domain_output(), tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
delete_domain(Client, Identifier, Input) ->
    delete_domain(Client, Identifier, Input, []).

-spec delete_domain(aws_client:aws_client(), binary() | list(), delete_domain_input(), proplists:proplist()) ->
    {ok, delete_domain_output(), tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
delete_domain(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(Identifier), ""],
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
                     {<<"skipDeletionCheck">>, <<"skipDeletionCheck">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a domain unit.
-spec delete_domain_unit(aws_client:aws_client(), binary() | list(), binary() | list(), delete_domain_unit_input()) ->
    {ok, delete_domain_unit_output(), tuple()} |
    {error, any()} |
    {error, delete_domain_unit_errors(), tuple()}.
delete_domain_unit(Client, DomainIdentifier, Identifier, Input) ->
    delete_domain_unit(Client, DomainIdentifier, Identifier, Input, []).

-spec delete_domain_unit(aws_client:aws_client(), binary() | list(), binary() | list(), delete_domain_unit_input(), proplists:proplist()) ->
    {ok, delete_domain_unit_output(), tuple()} |
    {error, any()} |
    {error, delete_domain_unit_errors(), tuple()}.
delete_domain_unit(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/domain-units/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes an environment in Amazon DataZone.
-spec delete_environment(aws_client:aws_client(), binary() | list(), binary() | list(), delete_environment_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, DomainIdentifier, Identifier, Input) ->
    delete_environment(Client, DomainIdentifier, Identifier, Input, []).

-spec delete_environment(aws_client:aws_client(), binary() | list(), binary() | list(), delete_environment_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_environment_errors(), tuple()}.
delete_environment(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes an action for the environment, for example, deletes a console
%% link for an analytics tool that is available in this environment.
-spec delete_environment_action(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_environment_action_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_environment_action_errors(), tuple()}.
delete_environment_action(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, Input) ->
    delete_environment_action(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, Input, []).

-spec delete_environment_action(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_environment_action_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_environment_action_errors(), tuple()}.
delete_environment_action(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/actions/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes the blueprint configuration in Amazon DataZone.
-spec delete_environment_blueprint_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), delete_environment_blueprint_configuration_input()) ->
    {ok, delete_environment_blueprint_configuration_output(), tuple()} |
    {error, any()} |
    {error, delete_environment_blueprint_configuration_errors(), tuple()}.
delete_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier, Input) ->
    delete_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier, Input, []).

-spec delete_environment_blueprint_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), delete_environment_blueprint_configuration_input(), proplists:proplist()) ->
    {ok, delete_environment_blueprint_configuration_output(), tuple()} |
    {error, any()} |
    {error, delete_environment_blueprint_configuration_errors(), tuple()}.
delete_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-blueprint-configurations/", aws_util:encode_uri(EnvironmentBlueprintIdentifier), ""],
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

%% @doc Deletes an environment profile in Amazon DataZone.
-spec delete_environment_profile(aws_client:aws_client(), binary() | list(), binary() | list(), delete_environment_profile_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_environment_profile_errors(), tuple()}.
delete_environment_profile(Client, DomainIdentifier, Identifier, Input) ->
    delete_environment_profile(Client, DomainIdentifier, Identifier, Input, []).

-spec delete_environment_profile(aws_client:aws_client(), binary() | list(), binary() | list(), delete_environment_profile_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_environment_profile_errors(), tuple()}.
delete_environment_profile(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-profiles/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Delets and metadata form type in Amazon DataZone.
-spec delete_form_type(aws_client:aws_client(), binary() | list(), binary() | list(), delete_form_type_input()) ->
    {ok, delete_form_type_output(), tuple()} |
    {error, any()} |
    {error, delete_form_type_errors(), tuple()}.
delete_form_type(Client, DomainIdentifier, FormTypeIdentifier, Input) ->
    delete_form_type(Client, DomainIdentifier, FormTypeIdentifier, Input, []).

-spec delete_form_type(aws_client:aws_client(), binary() | list(), binary() | list(), delete_form_type_input(), proplists:proplist()) ->
    {ok, delete_form_type_output(), tuple()} |
    {error, any()} |
    {error, delete_form_type_errors(), tuple()}.
delete_form_type(Client, DomainIdentifier, FormTypeIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/form-types/", aws_util:encode_uri(FormTypeIdentifier), ""],
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

%% @doc Deletes a business glossary in Amazon DataZone.
-spec delete_glossary(aws_client:aws_client(), binary() | list(), binary() | list(), delete_glossary_input()) ->
    {ok, delete_glossary_output(), tuple()} |
    {error, any()} |
    {error, delete_glossary_errors(), tuple()}.
delete_glossary(Client, DomainIdentifier, Identifier, Input) ->
    delete_glossary(Client, DomainIdentifier, Identifier, Input, []).

-spec delete_glossary(aws_client:aws_client(), binary() | list(), binary() | list(), delete_glossary_input(), proplists:proplist()) ->
    {ok, delete_glossary_output(), tuple()} |
    {error, any()} |
    {error, delete_glossary_errors(), tuple()}.
delete_glossary(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/glossaries/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes a business glossary term in Amazon DataZone.
-spec delete_glossary_term(aws_client:aws_client(), binary() | list(), binary() | list(), delete_glossary_term_input()) ->
    {ok, delete_glossary_term_output(), tuple()} |
    {error, any()} |
    {error, delete_glossary_term_errors(), tuple()}.
delete_glossary_term(Client, DomainIdentifier, Identifier, Input) ->
    delete_glossary_term(Client, DomainIdentifier, Identifier, Input, []).

-spec delete_glossary_term(aws_client:aws_client(), binary() | list(), binary() | list(), delete_glossary_term_input(), proplists:proplist()) ->
    {ok, delete_glossary_term_output(), tuple()} |
    {error, any()} |
    {error, delete_glossary_term_errors(), tuple()}.
delete_glossary_term(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/glossary-terms/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes a listing (a record of an asset at a given time).
-spec delete_listing(aws_client:aws_client(), binary() | list(), binary() | list(), delete_listing_input()) ->
    {ok, delete_listing_output(), tuple()} |
    {error, any()} |
    {error, delete_listing_errors(), tuple()}.
delete_listing(Client, DomainIdentifier, Identifier, Input) ->
    delete_listing(Client, DomainIdentifier, Identifier, Input, []).

-spec delete_listing(aws_client:aws_client(), binary() | list(), binary() | list(), delete_listing_input(), proplists:proplist()) ->
    {ok, delete_listing_output(), tuple()} |
    {error, any()} |
    {error, delete_listing_errors(), tuple()}.
delete_listing(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/listings/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes a project in Amazon DataZone.
-spec delete_project(aws_client:aws_client(), binary() | list(), binary() | list(), delete_project_input()) ->
    {ok, delete_project_output(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, DomainIdentifier, Identifier, Input) ->
    delete_project(Client, DomainIdentifier, Identifier, Input, []).

-spec delete_project(aws_client:aws_client(), binary() | list(), binary() | list(), delete_project_input(), proplists:proplist()) ->
    {ok, delete_project_output(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/projects/", aws_util:encode_uri(Identifier), ""],
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

    QueryMapping = [
                     {<<"skipDeletionCheck">>, <<"skipDeletionCheck">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes project membership in Amazon DataZone.
-spec delete_project_membership(aws_client:aws_client(), binary() | list(), binary() | list(), delete_project_membership_input()) ->
    {ok, delete_project_membership_output(), tuple()} |
    {error, any()} |
    {error, delete_project_membership_errors(), tuple()}.
delete_project_membership(Client, DomainIdentifier, ProjectIdentifier, Input) ->
    delete_project_membership(Client, DomainIdentifier, ProjectIdentifier, Input, []).

-spec delete_project_membership(aws_client:aws_client(), binary() | list(), binary() | list(), delete_project_membership_input(), proplists:proplist()) ->
    {ok, delete_project_membership_output(), tuple()} |
    {error, any()} |
    {error, delete_project_membership_errors(), tuple()}.
delete_project_membership(Client, DomainIdentifier, ProjectIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/projects/", aws_util:encode_uri(ProjectIdentifier), "/deleteMembership"],
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

%% @doc Deletes a project profile.
-spec delete_project_profile(aws_client:aws_client(), binary() | list(), binary() | list(), delete_project_profile_input()) ->
    {ok, delete_project_profile_output(), tuple()} |
    {error, any()} |
    {error, delete_project_profile_errors(), tuple()}.
delete_project_profile(Client, DomainIdentifier, Identifier, Input) ->
    delete_project_profile(Client, DomainIdentifier, Identifier, Input, []).

-spec delete_project_profile(aws_client:aws_client(), binary() | list(), binary() | list(), delete_project_profile_input(), proplists:proplist()) ->
    {ok, delete_project_profile_output(), tuple()} |
    {error, any()} |
    {error, delete_project_profile_errors(), tuple()}.
delete_project_profile(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/project-profiles/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes a rule in Amazon DataZone.
%%
%% A rule is a formal agreement that enforces specific requirements across
%% user workflows (e.g., publishing assets to the catalog, requesting
%% subscriptions, creating projects) within the Amazon DataZone data portal.
%% These rules help maintain consistency, ensure compliance, and uphold
%% governance standards in data management processes. For instance, a
%% metadata enforcement rule can specify the required information for
%% creating a subscription request or publishing a data asset to the catalog,
%% ensuring alignment with organizational standards.
-spec delete_rule(aws_client:aws_client(), binary() | list(), binary() | list(), delete_rule_input()) ->
    {ok, delete_rule_output(), tuple()} |
    {error, any()} |
    {error, delete_rule_errors(), tuple()}.
delete_rule(Client, DomainIdentifier, Identifier, Input) ->
    delete_rule(Client, DomainIdentifier, Identifier, Input, []).

-spec delete_rule(aws_client:aws_client(), binary() | list(), binary() | list(), delete_rule_input(), proplists:proplist()) ->
    {ok, delete_rule_output(), tuple()} |
    {error, any()} |
    {error, delete_rule_errors(), tuple()}.
delete_rule(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/rules/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes and subscription grant in Amazon DataZone.
-spec delete_subscription_grant(aws_client:aws_client(), binary() | list(), binary() | list(), delete_subscription_grant_input()) ->
    {ok, delete_subscription_grant_output(), tuple()} |
    {error, any()} |
    {error, delete_subscription_grant_errors(), tuple()}.
delete_subscription_grant(Client, DomainIdentifier, Identifier, Input) ->
    delete_subscription_grant(Client, DomainIdentifier, Identifier, Input, []).

-spec delete_subscription_grant(aws_client:aws_client(), binary() | list(), binary() | list(), delete_subscription_grant_input(), proplists:proplist()) ->
    {ok, delete_subscription_grant_output(), tuple()} |
    {error, any()} |
    {error, delete_subscription_grant_errors(), tuple()}.
delete_subscription_grant(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-grants/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes a subscription request in Amazon DataZone.
-spec delete_subscription_request(aws_client:aws_client(), binary() | list(), binary() | list(), delete_subscription_request_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_subscription_request_errors(), tuple()}.
delete_subscription_request(Client, DomainIdentifier, Identifier, Input) ->
    delete_subscription_request(Client, DomainIdentifier, Identifier, Input, []).

-spec delete_subscription_request(aws_client:aws_client(), binary() | list(), binary() | list(), delete_subscription_request_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_subscription_request_errors(), tuple()}.
delete_subscription_request(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-requests/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes a subscription target in Amazon DataZone.
-spec delete_subscription_target(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_subscription_target_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_subscription_target_errors(), tuple()}.
delete_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, Input) ->
    delete_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, Input, []).

-spec delete_subscription_target(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_subscription_target_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_subscription_target_errors(), tuple()}.
delete_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/subscription-targets/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes the specified time series form for the specified asset.
-spec delete_time_series_data_points(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_time_series_data_points_input()) ->
    {ok, delete_time_series_data_points_output(), tuple()} |
    {error, any()} |
    {error, delete_time_series_data_points_errors(), tuple()}.
delete_time_series_data_points(Client, DomainIdentifier, EntityIdentifier, EntityType, Input) ->
    delete_time_series_data_points(Client, DomainIdentifier, EntityIdentifier, EntityType, Input, []).

-spec delete_time_series_data_points(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_time_series_data_points_input(), proplists:proplist()) ->
    {ok, delete_time_series_data_points_output(), tuple()} |
    {error, any()} |
    {error, delete_time_series_data_points_errors(), tuple()}.
delete_time_series_data_points(Client, DomainIdentifier, EntityIdentifier, EntityType, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/entities/", aws_util:encode_uri(EntityType), "/", aws_util:encode_uri(EntityIdentifier), "/time-series-data-points"],
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

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>},
                     {<<"formName">>, <<"formName">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates the environment role in Amazon DataZone.
-spec disassociate_environment_role(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), disassociate_environment_role_input()) ->
    {ok, disassociate_environment_role_output(), tuple()} |
    {error, any()} |
    {error, disassociate_environment_role_errors(), tuple()}.
disassociate_environment_role(Client, DomainIdentifier, EnvironmentIdentifier, EnvironmentRoleArn, Input) ->
    disassociate_environment_role(Client, DomainIdentifier, EnvironmentIdentifier, EnvironmentRoleArn, Input, []).

-spec disassociate_environment_role(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), disassociate_environment_role_input(), proplists:proplist()) ->
    {ok, disassociate_environment_role_output(), tuple()} |
    {error, any()} |
    {error, disassociate_environment_role_errors(), tuple()}.
disassociate_environment_role(Client, DomainIdentifier, EnvironmentIdentifier, EnvironmentRoleArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/roles/", aws_util:encode_uri(EnvironmentRoleArn), ""],
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

%% @doc Gets the details of the account pool.
-spec get_account_pool(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_account_pool_output(), tuple()} |
    {error, any()} |
    {error, get_account_pool_errors(), tuple()}.
get_account_pool(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_account_pool(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_account_pool(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_account_pool_output(), tuple()} |
    {error, any()} |
    {error, get_account_pool_errors(), tuple()}.
get_account_pool(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_account_pool(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_account_pool(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_account_pool_output(), tuple()} |
    {error, any()} |
    {error, get_account_pool_errors(), tuple()}.
get_account_pool(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/account-pools/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon DataZone asset.
-spec get_asset(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_asset_output(), tuple()} |
    {error, any()} |
    {error, get_asset_errors(), tuple()}.
get_asset(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_asset(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_asset(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_asset_output(), tuple()} |
    {error, any()} |
    {error, get_asset_errors(), tuple()}.
get_asset(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_asset(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_asset(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_asset_output(), tuple()} |
    {error, any()} |
    {error, get_asset_errors(), tuple()}.
get_asset(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/assets/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"revision">>, maps:get(<<"revision">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an asset filter.
-spec get_asset_filter(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_asset_filter_output(), tuple()} |
    {error, any()} |
    {error, get_asset_filter_errors(), tuple()}.
get_asset_filter(Client, AssetIdentifier, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_asset_filter(Client, AssetIdentifier, DomainIdentifier, Identifier, #{}, #{}).

-spec get_asset_filter(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_asset_filter_output(), tuple()} |
    {error, any()} |
    {error, get_asset_filter_errors(), tuple()}.
get_asset_filter(Client, AssetIdentifier, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_asset_filter(Client, AssetIdentifier, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_asset_filter(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_asset_filter_output(), tuple()} |
    {error, any()} |
    {error, get_asset_filter_errors(), tuple()}.
get_asset_filter(Client, AssetIdentifier, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/assets/", aws_util:encode_uri(AssetIdentifier), "/filters/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon DataZone asset type.
-spec get_asset_type(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_asset_type_output(), tuple()} |
    {error, any()} |
    {error, get_asset_type_errors(), tuple()}.
get_asset_type(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_asset_type(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_asset_type(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_asset_type_output(), tuple()} |
    {error, any()} |
    {error, get_asset_type_errors(), tuple()}.
get_asset_type(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_asset_type(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_asset_type(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_asset_type_output(), tuple()} |
    {error, any()} |
    {error, get_asset_type_errors(), tuple()}.
get_asset_type(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/asset-types/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"revision">>, maps:get(<<"revision">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a connection.
%%
%% In Amazon DataZone, a connection enables you to connect your resources
%% (domains, projects, and environments) to external resources and services.
-spec get_connection(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_connection_output(), tuple()} |
    {error, any()} |
    {error, get_connection_errors(), tuple()}.
get_connection(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_connection(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_connection(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_connection_output(), tuple()} |
    {error, any()} |
    {error, get_connection_errors(), tuple()}.
get_connection(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_connection(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_connection(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_connection_output(), tuple()} |
    {error, any()} |
    {error, get_connection_errors(), tuple()}.
get_connection(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/connections/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"withSecret">>, maps:get(<<"withSecret">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the data product.
-spec get_data_product(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_data_product_output(), tuple()} |
    {error, any()} |
    {error, get_data_product_errors(), tuple()}.
get_data_product(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_data_product(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_data_product(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_data_product_output(), tuple()} |
    {error, any()} |
    {error, get_data_product_errors(), tuple()}.
get_data_product(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_product(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_data_product(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_product_output(), tuple()} |
    {error, any()} |
    {error, get_data_product_errors(), tuple()}.
get_data_product(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-products/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"revision">>, maps:get(<<"revision">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon DataZone data source.
-spec get_data_source(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_data_source_output(), tuple()} |
    {error, any()} |
    {error, get_data_source_errors(), tuple()}.
get_data_source(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_data_source(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_data_source_output(), tuple()} |
    {error, any()} |
    {error, get_data_source_errors(), tuple()}.
get_data_source(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_source(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_source_output(), tuple()} |
    {error, any()} |
    {error, get_data_source_errors(), tuple()}.
get_data_source(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-sources/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon DataZone data source run.
-spec get_data_source_run(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_data_source_run_output(), tuple()} |
    {error, any()} |
    {error, get_data_source_run_errors(), tuple()}.
get_data_source_run(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_data_source_run(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_data_source_run(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_data_source_run_output(), tuple()} |
    {error, any()} |
    {error, get_data_source_run_errors(), tuple()}.
get_data_source_run(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_source_run(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_data_source_run(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_source_run_output(), tuple()} |
    {error, any()} |
    {error, get_data_source_run_errors(), tuple()}.
get_data_source_run(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-source-runs/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon DataZone domain.
-spec get_domain(aws_client:aws_client(), binary() | list()) ->
    {ok, get_domain_output(), tuple()} |
    {error, any()} |
    {error, get_domain_errors(), tuple()}.
get_domain(Client, Identifier)
  when is_map(Client) ->
    get_domain(Client, Identifier, #{}, #{}).

-spec get_domain(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_domain_output(), tuple()} |
    {error, any()} |
    {error, get_domain_errors(), tuple()}.
get_domain(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain(Client, Identifier, QueryMap, HeadersMap, []).

-spec get_domain(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_domain_output(), tuple()} |
    {error, any()} |
    {error, get_domain_errors(), tuple()}.
get_domain(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the details of the specified domain unit.
-spec get_domain_unit(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_domain_unit_output(), tuple()} |
    {error, any()} |
    {error, get_domain_unit_errors(), tuple()}.
get_domain_unit(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_domain_unit(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_domain_unit(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_domain_unit_output(), tuple()} |
    {error, any()} |
    {error, get_domain_unit_errors(), tuple()}.
get_domain_unit(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain_unit(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_domain_unit(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_domain_unit_output(), tuple()} |
    {error, any()} |
    {error, get_domain_unit_errors(), tuple()}.
get_domain_unit(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/domain-units/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon DataZone environment.
-spec get_environment(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_environment_output(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_environment(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_environment(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_environment_output(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_environment(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_environment(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_environment_output(), tuple()} |
    {error, any()} |
    {error, get_environment_errors(), tuple()}.
get_environment(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the specified environment action.
-spec get_environment_action(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_environment_action_output(), tuple()} |
    {error, any()} |
    {error, get_environment_action_errors(), tuple()}.
get_environment_action(Client, DomainIdentifier, EnvironmentIdentifier, Identifier)
  when is_map(Client) ->
    get_environment_action(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, #{}, #{}).

-spec get_environment_action(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_environment_action_output(), tuple()} |
    {error, any()} |
    {error, get_environment_action_errors(), tuple()}.
get_environment_action(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_environment_action(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_environment_action(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_environment_action_output(), tuple()} |
    {error, any()} |
    {error, get_environment_action_errors(), tuple()}.
get_environment_action(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/actions/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon DataZone blueprint.
-spec get_environment_blueprint(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_environment_blueprint_output(), tuple()} |
    {error, any()} |
    {error, get_environment_blueprint_errors(), tuple()}.
get_environment_blueprint(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_environment_blueprint(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_environment_blueprint(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_environment_blueprint_output(), tuple()} |
    {error, any()} |
    {error, get_environment_blueprint_errors(), tuple()}.
get_environment_blueprint(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_environment_blueprint(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_environment_blueprint(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_environment_blueprint_output(), tuple()} |
    {error, any()} |
    {error, get_environment_blueprint_errors(), tuple()}.
get_environment_blueprint(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-blueprints/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the blueprint configuration in Amazon DataZone.
-spec get_environment_blueprint_configuration(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_environment_blueprint_configuration_output(), tuple()} |
    {error, any()} |
    {error, get_environment_blueprint_configuration_errors(), tuple()}.
get_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier)
  when is_map(Client) ->
    get_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier, #{}, #{}).

-spec get_environment_blueprint_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_environment_blueprint_configuration_output(), tuple()} |
    {error, any()} |
    {error, get_environment_blueprint_configuration_errors(), tuple()}.
get_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier, QueryMap, HeadersMap, []).

-spec get_environment_blueprint_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_environment_blueprint_configuration_output(), tuple()} |
    {error, any()} |
    {error, get_environment_blueprint_configuration_errors(), tuple()}.
get_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-blueprint-configurations/", aws_util:encode_uri(EnvironmentBlueprintIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the credentials of an environment in Amazon DataZone.
-spec get_environment_credentials(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_environment_credentials_output(), tuple()} |
    {error, any()} |
    {error, get_environment_credentials_errors(), tuple()}.
get_environment_credentials(Client, DomainIdentifier, EnvironmentIdentifier)
  when is_map(Client) ->
    get_environment_credentials(Client, DomainIdentifier, EnvironmentIdentifier, #{}, #{}).

-spec get_environment_credentials(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_environment_credentials_output(), tuple()} |
    {error, any()} |
    {error, get_environment_credentials_errors(), tuple()}.
get_environment_credentials(Client, DomainIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_environment_credentials(Client, DomainIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap, []).

-spec get_environment_credentials(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_environment_credentials_output(), tuple()} |
    {error, any()} |
    {error, get_environment_credentials_errors(), tuple()}.
get_environment_credentials(Client, DomainIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/credentials"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an evinronment profile in Amazon DataZone.
-spec get_environment_profile(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_environment_profile_output(), tuple()} |
    {error, any()} |
    {error, get_environment_profile_errors(), tuple()}.
get_environment_profile(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_environment_profile(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_environment_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_environment_profile_output(), tuple()} |
    {error, any()} |
    {error, get_environment_profile_errors(), tuple()}.
get_environment_profile(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_environment_profile(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_environment_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_environment_profile_output(), tuple()} |
    {error, any()} |
    {error, get_environment_profile_errors(), tuple()}.
get_environment_profile(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-profiles/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a metadata form type in Amazon DataZone.
-spec get_form_type(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_form_type_output(), tuple()} |
    {error, any()} |
    {error, get_form_type_errors(), tuple()}.
get_form_type(Client, DomainIdentifier, FormTypeIdentifier)
  when is_map(Client) ->
    get_form_type(Client, DomainIdentifier, FormTypeIdentifier, #{}, #{}).

-spec get_form_type(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_form_type_output(), tuple()} |
    {error, any()} |
    {error, get_form_type_errors(), tuple()}.
get_form_type(Client, DomainIdentifier, FormTypeIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_form_type(Client, DomainIdentifier, FormTypeIdentifier, QueryMap, HeadersMap, []).

-spec get_form_type(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_form_type_output(), tuple()} |
    {error, any()} |
    {error, get_form_type_errors(), tuple()}.
get_form_type(Client, DomainIdentifier, FormTypeIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/form-types/", aws_util:encode_uri(FormTypeIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"revision">>, maps:get(<<"revision">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a business glossary in Amazon DataZone.
-spec get_glossary(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_glossary_output(), tuple()} |
    {error, any()} |
    {error, get_glossary_errors(), tuple()}.
get_glossary(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_glossary(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_glossary(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_glossary_output(), tuple()} |
    {error, any()} |
    {error, get_glossary_errors(), tuple()}.
get_glossary(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_glossary(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_glossary(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_glossary_output(), tuple()} |
    {error, any()} |
    {error, get_glossary_errors(), tuple()}.
get_glossary(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/glossaries/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a business glossary term in Amazon DataZone.
-spec get_glossary_term(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_glossary_term_output(), tuple()} |
    {error, any()} |
    {error, get_glossary_term_errors(), tuple()}.
get_glossary_term(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_glossary_term(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_glossary_term(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_glossary_term_output(), tuple()} |
    {error, any()} |
    {error, get_glossary_term_errors(), tuple()}.
get_glossary_term(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_glossary_term(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_glossary_term(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_glossary_term_output(), tuple()} |
    {error, any()} |
    {error, get_glossary_term_errors(), tuple()}.
get_glossary_term(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/glossary-terms/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a group profile in Amazon DataZone.
-spec get_group_profile(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_group_profile_output(), tuple()} |
    {error, any()} |
    {error, get_group_profile_errors(), tuple()}.
get_group_profile(Client, DomainIdentifier, GroupIdentifier)
  when is_map(Client) ->
    get_group_profile(Client, DomainIdentifier, GroupIdentifier, #{}, #{}).

-spec get_group_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_group_profile_output(), tuple()} |
    {error, any()} |
    {error, get_group_profile_errors(), tuple()}.
get_group_profile(Client, DomainIdentifier, GroupIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_group_profile(Client, DomainIdentifier, GroupIdentifier, QueryMap, HeadersMap, []).

-spec get_group_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_group_profile_output(), tuple()} |
    {error, any()} |
    {error, get_group_profile_errors(), tuple()}.
get_group_profile(Client, DomainIdentifier, GroupIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/group-profiles/", aws_util:encode_uri(GroupIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the data portal URL for the specified Amazon DataZone domain.
-spec get_iam_portal_login_url(aws_client:aws_client(), binary() | list(), get_iam_portal_login_url_input()) ->
    {ok, get_iam_portal_login_url_output(), tuple()} |
    {error, any()} |
    {error, get_iam_portal_login_url_errors(), tuple()}.
get_iam_portal_login_url(Client, DomainIdentifier, Input) ->
    get_iam_portal_login_url(Client, DomainIdentifier, Input, []).

-spec get_iam_portal_login_url(aws_client:aws_client(), binary() | list(), get_iam_portal_login_url_input(), proplists:proplist()) ->
    {ok, get_iam_portal_login_url_output(), tuple()} |
    {error, any()} |
    {error, get_iam_portal_login_url_errors(), tuple()}.
get_iam_portal_login_url(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/get-portal-login-url"],
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

%% @doc The details of the job run.
-spec get_job_run(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_job_run_output(), tuple()} |
    {error, any()} |
    {error, get_job_run_errors(), tuple()}.
get_job_run(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_job_run(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_job_run(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_job_run_output(), tuple()} |
    {error, any()} |
    {error, get_job_run_errors(), tuple()}.
get_job_run(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_job_run(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_job_run(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_job_run_output(), tuple()} |
    {error, any()} |
    {error, get_job_run_errors(), tuple()}.
get_job_run(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/jobRuns/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the lineage event.
-spec get_lineage_event(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_lineage_event_output(), tuple()} |
    {error, any()} |
    {error, get_lineage_event_errors(), tuple()}.
get_lineage_event(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_lineage_event(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_lineage_event(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_lineage_event_output(), tuple()} |
    {error, any()} |
    {error, get_lineage_event_errors(), tuple()}.
get_lineage_event(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_lineage_event(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_lineage_event(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_lineage_event_output(), tuple()} |
    {error, any()} |
    {error, get_lineage_event_errors(), tuple()}.
get_lineage_event(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/lineage/events/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Created-At">>, <<"createdAt">>},
            {<<"Created-By">>, <<"createdBy">>},
            {<<"Domain-Id">>, <<"domainId">>},
            {<<"Event-Time">>, <<"eventTime">>},
            {<<"Id">>, <<"id">>},
            {<<"Processing-Status">>, <<"processingStatus">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets the data lineage node.
-spec get_lineage_node(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_lineage_node_output(), tuple()} |
    {error, any()} |
    {error, get_lineage_node_errors(), tuple()}.
get_lineage_node(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_lineage_node(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_lineage_node(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_lineage_node_output(), tuple()} |
    {error, any()} |
    {error, get_lineage_node_errors(), tuple()}.
get_lineage_node(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_lineage_node(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_lineage_node(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_lineage_node_output(), tuple()} |
    {error, any()} |
    {error, get_lineage_node_errors(), tuple()}.
get_lineage_node(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/lineage/nodes/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"timestamp">>, maps:get(<<"timestamp">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a listing (a record of an asset at a given time).
%%
%% If you specify a listing version, only details that are specific to that
%% version are returned.
-spec get_listing(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_listing_output(), tuple()} |
    {error, any()} |
    {error, get_listing_errors(), tuple()}.
get_listing(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_listing(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_listing(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_listing_output(), tuple()} |
    {error, any()} |
    {error, get_listing_errors(), tuple()}.
get_listing(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_listing(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_listing(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_listing_output(), tuple()} |
    {error, any()} |
    {error, get_listing_errors(), tuple()}.
get_listing(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/listings/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"listingRevision">>, maps:get(<<"listingRevision">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a metadata generation run in Amazon DataZone.
-spec get_metadata_generation_run(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_metadata_generation_run_output(), tuple()} |
    {error, any()} |
    {error, get_metadata_generation_run_errors(), tuple()}.
get_metadata_generation_run(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_metadata_generation_run(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_metadata_generation_run(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_metadata_generation_run_output(), tuple()} |
    {error, any()} |
    {error, get_metadata_generation_run_errors(), tuple()}.
get_metadata_generation_run(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_metadata_generation_run(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_metadata_generation_run(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_metadata_generation_run_output(), tuple()} |
    {error, any()} |
    {error, get_metadata_generation_run_errors(), tuple()}.
get_metadata_generation_run(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/metadata-generation-runs/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a project in Amazon DataZone.
-spec get_project(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_project_output(), tuple()} |
    {error, any()} |
    {error, get_project_errors(), tuple()}.
get_project(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_project(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_project(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_project_output(), tuple()} |
    {error, any()} |
    {error, get_project_errors(), tuple()}.
get_project(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_project(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_project(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_project_output(), tuple()} |
    {error, any()} |
    {error, get_project_errors(), tuple()}.
get_project(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/projects/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The details of the project profile.
-spec get_project_profile(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_project_profile_output(), tuple()} |
    {error, any()} |
    {error, get_project_profile_errors(), tuple()}.
get_project_profile(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_project_profile(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_project_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_project_profile_output(), tuple()} |
    {error, any()} |
    {error, get_project_profile_errors(), tuple()}.
get_project_profile(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_project_profile(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_project_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_project_profile_output(), tuple()} |
    {error, any()} |
    {error, get_project_profile_errors(), tuple()}.
get_project_profile(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/project-profiles/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the details of a rule in Amazon DataZone.
%%
%% A rule is a formal agreement that enforces specific requirements across
%% user workflows (e.g., publishing assets to the catalog, requesting
%% subscriptions, creating projects) within the Amazon DataZone data portal.
%% These rules help maintain consistency, ensure compliance, and uphold
%% governance standards in data management processes. For instance, a
%% metadata enforcement rule can specify the required information for
%% creating a subscription request or publishing a data asset to the catalog,
%% ensuring alignment with organizational standards.
-spec get_rule(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_rule_output(), tuple()} |
    {error, any()} |
    {error, get_rule_errors(), tuple()}.
get_rule(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_rule(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_rule(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_rule_output(), tuple()} |
    {error, any()} |
    {error, get_rule_errors(), tuple()}.
get_rule(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_rule(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_rule(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_rule_output(), tuple()} |
    {error, any()} |
    {error, get_rule_errors(), tuple()}.
get_rule(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/rules/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"revision">>, maps:get(<<"revision">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a subscription in Amazon DataZone.
-spec get_subscription(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_subscription_output(), tuple()} |
    {error, any()} |
    {error, get_subscription_errors(), tuple()}.
get_subscription(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_subscription(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_subscription(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_subscription_output(), tuple()} |
    {error, any()} |
    {error, get_subscription_errors(), tuple()}.
get_subscription(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_subscription(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_subscription(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_subscription_output(), tuple()} |
    {error, any()} |
    {error, get_subscription_errors(), tuple()}.
get_subscription(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscriptions/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the subscription grant in Amazon DataZone.
-spec get_subscription_grant(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_subscription_grant_output(), tuple()} |
    {error, any()} |
    {error, get_subscription_grant_errors(), tuple()}.
get_subscription_grant(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_subscription_grant(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_subscription_grant(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_subscription_grant_output(), tuple()} |
    {error, any()} |
    {error, get_subscription_grant_errors(), tuple()}.
get_subscription_grant(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_subscription_grant(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_subscription_grant(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_subscription_grant_output(), tuple()} |
    {error, any()} |
    {error, get_subscription_grant_errors(), tuple()}.
get_subscription_grant(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-grants/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the details of the specified subscription request.
-spec get_subscription_request_details(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_subscription_request_details_output(), tuple()} |
    {error, any()} |
    {error, get_subscription_request_details_errors(), tuple()}.
get_subscription_request_details(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_subscription_request_details(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec get_subscription_request_details(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_subscription_request_details_output(), tuple()} |
    {error, any()} |
    {error, get_subscription_request_details_errors(), tuple()}.
get_subscription_request_details(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_subscription_request_details(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_subscription_request_details(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_subscription_request_details_output(), tuple()} |
    {error, any()} |
    {error, get_subscription_request_details_errors(), tuple()}.
get_subscription_request_details(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-requests/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the subscription target in Amazon DataZone.
-spec get_subscription_target(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_subscription_target_output(), tuple()} |
    {error, any()} |
    {error, get_subscription_target_errors(), tuple()}.
get_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier)
  when is_map(Client) ->
    get_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, #{}, #{}).

-spec get_subscription_target(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_subscription_target_output(), tuple()} |
    {error, any()} |
    {error, get_subscription_target_errors(), tuple()}.
get_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec get_subscription_target(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_subscription_target_output(), tuple()} |
    {error, any()} |
    {error, get_subscription_target_errors(), tuple()}.
get_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/subscription-targets/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the existing data point for the asset.
-spec get_time_series_data_point(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_time_series_data_point_output(), tuple()} |
    {error, any()} |
    {error, get_time_series_data_point_errors(), tuple()}.
get_time_series_data_point(Client, DomainIdentifier, EntityIdentifier, EntityType, Identifier, FormName)
  when is_map(Client) ->
    get_time_series_data_point(Client, DomainIdentifier, EntityIdentifier, EntityType, Identifier, FormName, #{}, #{}).

-spec get_time_series_data_point(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_time_series_data_point_output(), tuple()} |
    {error, any()} |
    {error, get_time_series_data_point_errors(), tuple()}.
get_time_series_data_point(Client, DomainIdentifier, EntityIdentifier, EntityType, Identifier, FormName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_time_series_data_point(Client, DomainIdentifier, EntityIdentifier, EntityType, Identifier, FormName, QueryMap, HeadersMap, []).

-spec get_time_series_data_point(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_time_series_data_point_output(), tuple()} |
    {error, any()} |
    {error, get_time_series_data_point_errors(), tuple()}.
get_time_series_data_point(Client, DomainIdentifier, EntityIdentifier, EntityType, Identifier, FormName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/entities/", aws_util:encode_uri(EntityType), "/", aws_util:encode_uri(EntityIdentifier), "/time-series-data-points/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"formName">>, FormName}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a user profile in Amazon DataZone.
-spec get_user_profile(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_user_profile_output(), tuple()} |
    {error, any()} |
    {error, get_user_profile_errors(), tuple()}.
get_user_profile(Client, DomainIdentifier, UserIdentifier)
  when is_map(Client) ->
    get_user_profile(Client, DomainIdentifier, UserIdentifier, #{}, #{}).

-spec get_user_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_user_profile_output(), tuple()} |
    {error, any()} |
    {error, get_user_profile_errors(), tuple()}.
get_user_profile(Client, DomainIdentifier, UserIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_user_profile(Client, DomainIdentifier, UserIdentifier, QueryMap, HeadersMap, []).

-spec get_user_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_user_profile_output(), tuple()} |
    {error, any()} |
    {error, get_user_profile_errors(), tuple()}.
get_user_profile(Client, DomainIdentifier, UserIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/user-profiles/", aws_util:encode_uri(UserIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists existing account pools.
-spec list_account_pools(aws_client:aws_client(), binary() | list()) ->
    {ok, list_account_pools_output(), tuple()} |
    {error, any()} |
    {error, list_account_pools_errors(), tuple()}.
list_account_pools(Client, DomainIdentifier)
  when is_map(Client) ->
    list_account_pools(Client, DomainIdentifier, #{}, #{}).

-spec list_account_pools(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_account_pools_output(), tuple()} |
    {error, any()} |
    {error, list_account_pools_errors(), tuple()}.
list_account_pools(Client, DomainIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_account_pools(Client, DomainIdentifier, QueryMap, HeadersMap, []).

-spec list_account_pools(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_account_pools_output(), tuple()} |
    {error, any()} |
    {error, list_account_pools_errors(), tuple()}.
list_account_pools(Client, DomainIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/account-pools"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the accounts in the specified account pool.
-spec list_accounts_in_account_pool(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_accounts_in_account_pool_output(), tuple()} |
    {error, any()} |
    {error, list_accounts_in_account_pool_errors(), tuple()}.
list_accounts_in_account_pool(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    list_accounts_in_account_pool(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec list_accounts_in_account_pool(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_accounts_in_account_pool_output(), tuple()} |
    {error, any()} |
    {error, list_accounts_in_account_pool_errors(), tuple()}.
list_accounts_in_account_pool(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_accounts_in_account_pool(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec list_accounts_in_account_pool(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_accounts_in_account_pool_output(), tuple()} |
    {error, any()} |
    {error, list_accounts_in_account_pool_errors(), tuple()}.
list_accounts_in_account_pool(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/account-pools/", aws_util:encode_uri(Identifier), "/accounts"],
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

%% @doc Lists asset filters.
-spec list_asset_filters(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_asset_filters_output(), tuple()} |
    {error, any()} |
    {error, list_asset_filters_errors(), tuple()}.
list_asset_filters(Client, AssetIdentifier, DomainIdentifier)
  when is_map(Client) ->
    list_asset_filters(Client, AssetIdentifier, DomainIdentifier, #{}, #{}).

-spec list_asset_filters(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_asset_filters_output(), tuple()} |
    {error, any()} |
    {error, list_asset_filters_errors(), tuple()}.
list_asset_filters(Client, AssetIdentifier, DomainIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_asset_filters(Client, AssetIdentifier, DomainIdentifier, QueryMap, HeadersMap, []).

-spec list_asset_filters(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_asset_filters_output(), tuple()} |
    {error, any()} |
    {error, list_asset_filters_errors(), tuple()}.
list_asset_filters(Client, AssetIdentifier, DomainIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/assets/", aws_util:encode_uri(AssetIdentifier), "/filters"],
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
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the revisions for the asset.
-spec list_asset_revisions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_asset_revisions_output(), tuple()} |
    {error, any()} |
    {error, list_asset_revisions_errors(), tuple()}.
list_asset_revisions(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    list_asset_revisions(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec list_asset_revisions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_asset_revisions_output(), tuple()} |
    {error, any()} |
    {error, list_asset_revisions_errors(), tuple()}.
list_asset_revisions(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_asset_revisions(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec list_asset_revisions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_asset_revisions_output(), tuple()} |
    {error, any()} |
    {error, list_asset_revisions_errors(), tuple()}.
list_asset_revisions(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/assets/", aws_util:encode_uri(Identifier), "/revisions"],
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

%% @doc Lists connections.
%%
%% In Amazon DataZone, a connection enables you to connect your resources
%% (domains, projects, and environments) to external resources and services.
-spec list_connections(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_connections_output(), tuple()} |
    {error, any()} |
    {error, list_connections_errors(), tuple()}.
list_connections(Client, DomainIdentifier, ProjectIdentifier)
  when is_map(Client) ->
    list_connections(Client, DomainIdentifier, ProjectIdentifier, #{}, #{}).

-spec list_connections(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_connections_output(), tuple()} |
    {error, any()} |
    {error, list_connections_errors(), tuple()}.
list_connections(Client, DomainIdentifier, ProjectIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_connections(Client, DomainIdentifier, ProjectIdentifier, QueryMap, HeadersMap, []).

-spec list_connections(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_connections_output(), tuple()} |
    {error, any()} |
    {error, list_connections_errors(), tuple()}.
list_connections(Client, DomainIdentifier, ProjectIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/connections"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"environmentIdentifier">>, maps:get(<<"environmentIdentifier">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"projectIdentifier">>, ProjectIdentifier},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists data product revisions.
-spec list_data_product_revisions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_data_product_revisions_output(), tuple()} |
    {error, any()} |
    {error, list_data_product_revisions_errors(), tuple()}.
list_data_product_revisions(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    list_data_product_revisions(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec list_data_product_revisions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_data_product_revisions_output(), tuple()} |
    {error, any()} |
    {error, list_data_product_revisions_errors(), tuple()}.
list_data_product_revisions(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_product_revisions(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec list_data_product_revisions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_data_product_revisions_output(), tuple()} |
    {error, any()} |
    {error, list_data_product_revisions_errors(), tuple()}.
list_data_product_revisions(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-products/", aws_util:encode_uri(Identifier), "/revisions"],
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

%% @doc Lists data source run activities.
-spec list_data_source_run_activities(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_data_source_run_activities_output(), tuple()} |
    {error, any()} |
    {error, list_data_source_run_activities_errors(), tuple()}.
list_data_source_run_activities(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    list_data_source_run_activities(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec list_data_source_run_activities(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_data_source_run_activities_output(), tuple()} |
    {error, any()} |
    {error, list_data_source_run_activities_errors(), tuple()}.
list_data_source_run_activities(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_source_run_activities(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec list_data_source_run_activities(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_data_source_run_activities_output(), tuple()} |
    {error, any()} |
    {error, list_data_source_run_activities_errors(), tuple()}.
list_data_source_run_activities(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-source-runs/", aws_util:encode_uri(Identifier), "/activities"],
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
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists data source runs in Amazon DataZone.
-spec list_data_source_runs(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_data_source_runs_output(), tuple()} |
    {error, any()} |
    {error, list_data_source_runs_errors(), tuple()}.
list_data_source_runs(Client, DataSourceIdentifier, DomainIdentifier)
  when is_map(Client) ->
    list_data_source_runs(Client, DataSourceIdentifier, DomainIdentifier, #{}, #{}).

-spec list_data_source_runs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_data_source_runs_output(), tuple()} |
    {error, any()} |
    {error, list_data_source_runs_errors(), tuple()}.
list_data_source_runs(Client, DataSourceIdentifier, DomainIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_source_runs(Client, DataSourceIdentifier, DomainIdentifier, QueryMap, HeadersMap, []).

-spec list_data_source_runs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_data_source_runs_output(), tuple()} |
    {error, any()} |
    {error, list_data_source_runs_errors(), tuple()}.
list_data_source_runs(Client, DataSourceIdentifier, DomainIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-sources/", aws_util:encode_uri(DataSourceIdentifier), "/runs"],
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
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists data sources in Amazon DataZone.
-spec list_data_sources(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_data_sources_output(), tuple()} |
    {error, any()} |
    {error, list_data_sources_errors(), tuple()}.
list_data_sources(Client, DomainIdentifier, ProjectIdentifier)
  when is_map(Client) ->
    list_data_sources(Client, DomainIdentifier, ProjectIdentifier, #{}, #{}).

-spec list_data_sources(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_data_sources_output(), tuple()} |
    {error, any()} |
    {error, list_data_sources_errors(), tuple()}.
list_data_sources(Client, DomainIdentifier, ProjectIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_sources(Client, DomainIdentifier, ProjectIdentifier, QueryMap, HeadersMap, []).

-spec list_data_sources(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_data_sources_output(), tuple()} |
    {error, any()} |
    {error, list_data_sources_errors(), tuple()}.
list_data_sources(Client, DomainIdentifier, ProjectIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-sources"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"connectionIdentifier">>, maps:get(<<"connectionIdentifier">>, QueryMap, undefined)},
        {<<"environmentIdentifier">>, maps:get(<<"environmentIdentifier">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"projectIdentifier">>, ProjectIdentifier},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists child domain units for the specified parent domain unit.
-spec list_domain_units_for_parent(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_domain_units_for_parent_output(), tuple()} |
    {error, any()} |
    {error, list_domain_units_for_parent_errors(), tuple()}.
list_domain_units_for_parent(Client, DomainIdentifier, ParentDomainUnitIdentifier)
  when is_map(Client) ->
    list_domain_units_for_parent(Client, DomainIdentifier, ParentDomainUnitIdentifier, #{}, #{}).

-spec list_domain_units_for_parent(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_domain_units_for_parent_output(), tuple()} |
    {error, any()} |
    {error, list_domain_units_for_parent_errors(), tuple()}.
list_domain_units_for_parent(Client, DomainIdentifier, ParentDomainUnitIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domain_units_for_parent(Client, DomainIdentifier, ParentDomainUnitIdentifier, QueryMap, HeadersMap, []).

-spec list_domain_units_for_parent(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_domain_units_for_parent_output(), tuple()} |
    {error, any()} |
    {error, list_domain_units_for_parent_errors(), tuple()}.
list_domain_units_for_parent(Client, DomainIdentifier, ParentDomainUnitIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/domain-units"],
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
        {<<"parentDomainUnitIdentifier">>, ParentDomainUnitIdentifier}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Amazon DataZone domains.
-spec list_domains(aws_client:aws_client()) ->
    {ok, list_domains_output(), tuple()} |
    {error, any()} |
    {error, list_domains_errors(), tuple()}.
list_domains(Client)
  when is_map(Client) ->
    list_domains(Client, #{}, #{}).

-spec list_domains(aws_client:aws_client(), map(), map()) ->
    {ok, list_domains_output(), tuple()} |
    {error, any()} |
    {error, list_domains_errors(), tuple()}.
list_domains(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domains(Client, QueryMap, HeadersMap, []).

-spec list_domains(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_domains_output(), tuple()} |
    {error, any()} |
    {error, list_domains_errors(), tuple()}.
list_domains(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains"],
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
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the entity (domain units) owners.
-spec list_entity_owners(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_entity_owners_output(), tuple()} |
    {error, any()} |
    {error, list_entity_owners_errors(), tuple()}.
list_entity_owners(Client, DomainIdentifier, EntityIdentifier, EntityType)
  when is_map(Client) ->
    list_entity_owners(Client, DomainIdentifier, EntityIdentifier, EntityType, #{}, #{}).

-spec list_entity_owners(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_entity_owners_output(), tuple()} |
    {error, any()} |
    {error, list_entity_owners_errors(), tuple()}.
list_entity_owners(Client, DomainIdentifier, EntityIdentifier, EntityType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_entity_owners(Client, DomainIdentifier, EntityIdentifier, EntityType, QueryMap, HeadersMap, []).

-spec list_entity_owners(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_entity_owners_output(), tuple()} |
    {error, any()} |
    {error, list_entity_owners_errors(), tuple()}.
list_entity_owners(Client, DomainIdentifier, EntityIdentifier, EntityType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/entities/", aws_util:encode_uri(EntityType), "/", aws_util:encode_uri(EntityIdentifier), "/owners"],
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

%% @doc Lists existing environment actions.
-spec list_environment_actions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_environment_actions_output(), tuple()} |
    {error, any()} |
    {error, list_environment_actions_errors(), tuple()}.
list_environment_actions(Client, DomainIdentifier, EnvironmentIdentifier)
  when is_map(Client) ->
    list_environment_actions(Client, DomainIdentifier, EnvironmentIdentifier, #{}, #{}).

-spec list_environment_actions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_environment_actions_output(), tuple()} |
    {error, any()} |
    {error, list_environment_actions_errors(), tuple()}.
list_environment_actions(Client, DomainIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environment_actions(Client, DomainIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap, []).

-spec list_environment_actions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_environment_actions_output(), tuple()} |
    {error, any()} |
    {error, list_environment_actions_errors(), tuple()}.
list_environment_actions(Client, DomainIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/actions"],
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

%% @doc Lists blueprint configurations for a Amazon DataZone environment.
-spec list_environment_blueprint_configurations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_environment_blueprint_configurations_output(), tuple()} |
    {error, any()} |
    {error, list_environment_blueprint_configurations_errors(), tuple()}.
list_environment_blueprint_configurations(Client, DomainIdentifier)
  when is_map(Client) ->
    list_environment_blueprint_configurations(Client, DomainIdentifier, #{}, #{}).

-spec list_environment_blueprint_configurations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_environment_blueprint_configurations_output(), tuple()} |
    {error, any()} |
    {error, list_environment_blueprint_configurations_errors(), tuple()}.
list_environment_blueprint_configurations(Client, DomainIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environment_blueprint_configurations(Client, DomainIdentifier, QueryMap, HeadersMap, []).

-spec list_environment_blueprint_configurations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_environment_blueprint_configurations_output(), tuple()} |
    {error, any()} |
    {error, list_environment_blueprint_configurations_errors(), tuple()}.
list_environment_blueprint_configurations(Client, DomainIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-blueprint-configurations"],
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

%% @doc Lists blueprints in an Amazon DataZone environment.
-spec list_environment_blueprints(aws_client:aws_client(), binary() | list()) ->
    {ok, list_environment_blueprints_output(), tuple()} |
    {error, any()} |
    {error, list_environment_blueprints_errors(), tuple()}.
list_environment_blueprints(Client, DomainIdentifier)
  when is_map(Client) ->
    list_environment_blueprints(Client, DomainIdentifier, #{}, #{}).

-spec list_environment_blueprints(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_environment_blueprints_output(), tuple()} |
    {error, any()} |
    {error, list_environment_blueprints_errors(), tuple()}.
list_environment_blueprints(Client, DomainIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environment_blueprints(Client, DomainIdentifier, QueryMap, HeadersMap, []).

-spec list_environment_blueprints(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_environment_blueprints_output(), tuple()} |
    {error, any()} |
    {error, list_environment_blueprints_errors(), tuple()}.
list_environment_blueprints(Client, DomainIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-blueprints"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"managed">>, maps:get(<<"managed">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Amazon DataZone environment profiles.
-spec list_environment_profiles(aws_client:aws_client(), binary() | list()) ->
    {ok, list_environment_profiles_output(), tuple()} |
    {error, any()} |
    {error, list_environment_profiles_errors(), tuple()}.
list_environment_profiles(Client, DomainIdentifier)
  when is_map(Client) ->
    list_environment_profiles(Client, DomainIdentifier, #{}, #{}).

-spec list_environment_profiles(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_environment_profiles_output(), tuple()} |
    {error, any()} |
    {error, list_environment_profiles_errors(), tuple()}.
list_environment_profiles(Client, DomainIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environment_profiles(Client, DomainIdentifier, QueryMap, HeadersMap, []).

-spec list_environment_profiles(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_environment_profiles_output(), tuple()} |
    {error, any()} |
    {error, list_environment_profiles_errors(), tuple()}.
list_environment_profiles(Client, DomainIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-profiles"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"awsAccountId">>, maps:get(<<"awsAccountId">>, QueryMap, undefined)},
        {<<"awsAccountRegion">>, maps:get(<<"awsAccountRegion">>, QueryMap, undefined)},
        {<<"environmentBlueprintIdentifier">>, maps:get(<<"environmentBlueprintIdentifier">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"projectIdentifier">>, maps:get(<<"projectIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Amazon DataZone environments.
-spec list_environments(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_environments_output(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, DomainIdentifier, ProjectIdentifier)
  when is_map(Client) ->
    list_environments(Client, DomainIdentifier, ProjectIdentifier, #{}, #{}).

-spec list_environments(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_environments_output(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, DomainIdentifier, ProjectIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environments(Client, DomainIdentifier, ProjectIdentifier, QueryMap, HeadersMap, []).

-spec list_environments(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_environments_output(), tuple()} |
    {error, any()} |
    {error, list_environments_errors(), tuple()}.
list_environments(Client, DomainIdentifier, ProjectIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"awsAccountId">>, maps:get(<<"awsAccountId">>, QueryMap, undefined)},
        {<<"awsAccountRegion">>, maps:get(<<"awsAccountRegion">>, QueryMap, undefined)},
        {<<"environmentBlueprintIdentifier">>, maps:get(<<"environmentBlueprintIdentifier">>, QueryMap, undefined)},
        {<<"environmentProfileIdentifier">>, maps:get(<<"environmentProfileIdentifier">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"projectIdentifier">>, ProjectIdentifier},
        {<<"provider">>, maps:get(<<"provider">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists job runs.
-spec list_job_runs(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_job_runs_output(), tuple()} |
    {error, any()} |
    {error, list_job_runs_errors(), tuple()}.
list_job_runs(Client, DomainIdentifier, JobIdentifier)
  when is_map(Client) ->
    list_job_runs(Client, DomainIdentifier, JobIdentifier, #{}, #{}).

-spec list_job_runs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_job_runs_output(), tuple()} |
    {error, any()} |
    {error, list_job_runs_errors(), tuple()}.
list_job_runs(Client, DomainIdentifier, JobIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_job_runs(Client, DomainIdentifier, JobIdentifier, QueryMap, HeadersMap, []).

-spec list_job_runs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_job_runs_output(), tuple()} |
    {error, any()} |
    {error, list_job_runs_errors(), tuple()}.
list_job_runs(Client, DomainIdentifier, JobIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/jobs/", aws_util:encode_uri(JobIdentifier), "/runs"],
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
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists lineage events.
-spec list_lineage_events(aws_client:aws_client(), binary() | list()) ->
    {ok, list_lineage_events_output(), tuple()} |
    {error, any()} |
    {error, list_lineage_events_errors(), tuple()}.
list_lineage_events(Client, DomainIdentifier)
  when is_map(Client) ->
    list_lineage_events(Client, DomainIdentifier, #{}, #{}).

-spec list_lineage_events(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_lineage_events_output(), tuple()} |
    {error, any()} |
    {error, list_lineage_events_errors(), tuple()}.
list_lineage_events(Client, DomainIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_lineage_events(Client, DomainIdentifier, QueryMap, HeadersMap, []).

-spec list_lineage_events(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_lineage_events_output(), tuple()} |
    {error, any()} |
    {error, list_lineage_events_errors(), tuple()}.
list_lineage_events(Client, DomainIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/lineage/events"],
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
        {<<"processingStatus">>, maps:get(<<"processingStatus">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)},
        {<<"timestampAfter">>, maps:get(<<"timestampAfter">>, QueryMap, undefined)},
        {<<"timestampBefore">>, maps:get(<<"timestampBefore">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the history of the specified data lineage node.
-spec list_lineage_node_history(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_lineage_node_history_output(), tuple()} |
    {error, any()} |
    {error, list_lineage_node_history_errors(), tuple()}.
list_lineage_node_history(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    list_lineage_node_history(Client, DomainIdentifier, Identifier, #{}, #{}).

-spec list_lineage_node_history(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_lineage_node_history_output(), tuple()} |
    {error, any()} |
    {error, list_lineage_node_history_errors(), tuple()}.
list_lineage_node_history(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_lineage_node_history(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

-spec list_lineage_node_history(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_lineage_node_history_output(), tuple()} |
    {error, any()} |
    {error, list_lineage_node_history_errors(), tuple()}.
list_lineage_node_history(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/lineage/nodes/", aws_util:encode_uri(Identifier), "/history"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"direction">>, maps:get(<<"direction">>, QueryMap, undefined)},
        {<<"timestampGTE">>, maps:get(<<"timestampGTE">>, QueryMap, undefined)},
        {<<"timestampLTE">>, maps:get(<<"timestampLTE">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all metadata generation runs.
-spec list_metadata_generation_runs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_metadata_generation_runs_output(), tuple()} |
    {error, any()} |
    {error, list_metadata_generation_runs_errors(), tuple()}.
list_metadata_generation_runs(Client, DomainIdentifier)
  when is_map(Client) ->
    list_metadata_generation_runs(Client, DomainIdentifier, #{}, #{}).

-spec list_metadata_generation_runs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_metadata_generation_runs_output(), tuple()} |
    {error, any()} |
    {error, list_metadata_generation_runs_errors(), tuple()}.
list_metadata_generation_runs(Client, DomainIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_metadata_generation_runs(Client, DomainIdentifier, QueryMap, HeadersMap, []).

-spec list_metadata_generation_runs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_metadata_generation_runs_output(), tuple()} |
    {error, any()} |
    {error, list_metadata_generation_runs_errors(), tuple()}.
list_metadata_generation_runs(Client, DomainIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/metadata-generation-runs"],
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
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all Amazon DataZone notifications.
-spec list_notifications(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_notifications_output(), tuple()} |
    {error, any()} |
    {error, list_notifications_errors(), tuple()}.
list_notifications(Client, DomainIdentifier, Type)
  when is_map(Client) ->
    list_notifications(Client, DomainIdentifier, Type, #{}, #{}).

-spec list_notifications(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_notifications_output(), tuple()} |
    {error, any()} |
    {error, list_notifications_errors(), tuple()}.
list_notifications(Client, DomainIdentifier, Type, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_notifications(Client, DomainIdentifier, Type, QueryMap, HeadersMap, []).

-spec list_notifications(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_notifications_output(), tuple()} |
    {error, any()} |
    {error, list_notifications_errors(), tuple()}.
list_notifications(Client, DomainIdentifier, Type, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/notifications"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"afterTimestamp">>, maps:get(<<"afterTimestamp">>, QueryMap, undefined)},
        {<<"beforeTimestamp">>, maps:get(<<"beforeTimestamp">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"subjects">>, maps:get(<<"subjects">>, QueryMap, undefined)},
        {<<"taskStatus">>, maps:get(<<"taskStatus">>, QueryMap, undefined)},
        {<<"type">>, Type}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists policy grants.
-spec list_policy_grants(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_policy_grants_output(), tuple()} |
    {error, any()} |
    {error, list_policy_grants_errors(), tuple()}.
list_policy_grants(Client, DomainIdentifier, EntityIdentifier, EntityType, PolicyType)
  when is_map(Client) ->
    list_policy_grants(Client, DomainIdentifier, EntityIdentifier, EntityType, PolicyType, #{}, #{}).

-spec list_policy_grants(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_policy_grants_output(), tuple()} |
    {error, any()} |
    {error, list_policy_grants_errors(), tuple()}.
list_policy_grants(Client, DomainIdentifier, EntityIdentifier, EntityType, PolicyType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_policy_grants(Client, DomainIdentifier, EntityIdentifier, EntityType, PolicyType, QueryMap, HeadersMap, []).

-spec list_policy_grants(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_policy_grants_output(), tuple()} |
    {error, any()} |
    {error, list_policy_grants_errors(), tuple()}.
list_policy_grants(Client, DomainIdentifier, EntityIdentifier, EntityType, PolicyType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/policies/managed/", aws_util:encode_uri(EntityType), "/", aws_util:encode_uri(EntityIdentifier), "/grants"],
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
        {<<"policyType">>, PolicyType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all members of the specified project.
-spec list_project_memberships(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_project_memberships_output(), tuple()} |
    {error, any()} |
    {error, list_project_memberships_errors(), tuple()}.
list_project_memberships(Client, DomainIdentifier, ProjectIdentifier)
  when is_map(Client) ->
    list_project_memberships(Client, DomainIdentifier, ProjectIdentifier, #{}, #{}).

-spec list_project_memberships(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_project_memberships_output(), tuple()} |
    {error, any()} |
    {error, list_project_memberships_errors(), tuple()}.
list_project_memberships(Client, DomainIdentifier, ProjectIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_project_memberships(Client, DomainIdentifier, ProjectIdentifier, QueryMap, HeadersMap, []).

-spec list_project_memberships(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_project_memberships_output(), tuple()} |
    {error, any()} |
    {error, list_project_memberships_errors(), tuple()}.
list_project_memberships(Client, DomainIdentifier, ProjectIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/projects/", aws_util:encode_uri(ProjectIdentifier), "/memberships"],
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
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists project profiles.
-spec list_project_profiles(aws_client:aws_client(), binary() | list()) ->
    {ok, list_project_profiles_output(), tuple()} |
    {error, any()} |
    {error, list_project_profiles_errors(), tuple()}.
list_project_profiles(Client, DomainIdentifier)
  when is_map(Client) ->
    list_project_profiles(Client, DomainIdentifier, #{}, #{}).

-spec list_project_profiles(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_project_profiles_output(), tuple()} |
    {error, any()} |
    {error, list_project_profiles_errors(), tuple()}.
list_project_profiles(Client, DomainIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_project_profiles(Client, DomainIdentifier, QueryMap, HeadersMap, []).

-spec list_project_profiles(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_project_profiles_output(), tuple()} |
    {error, any()} |
    {error, list_project_profiles_errors(), tuple()}.
list_project_profiles(Client, DomainIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/project-profiles"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Amazon DataZone projects.
-spec list_projects(aws_client:aws_client(), binary() | list()) ->
    {ok, list_projects_output(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, DomainIdentifier)
  when is_map(Client) ->
    list_projects(Client, DomainIdentifier, #{}, #{}).

-spec list_projects(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_projects_output(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, DomainIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_projects(Client, DomainIdentifier, QueryMap, HeadersMap, []).

-spec list_projects(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_projects_output(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, DomainIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/projects"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"groupIdentifier">>, maps:get(<<"groupIdentifier">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"userIdentifier">>, maps:get(<<"userIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists existing rules.
%%
%% In Amazon DataZone, a rule is a formal agreement that enforces specific
%% requirements across user workflows (e.g., publishing assets to the
%% catalog, requesting subscriptions, creating projects) within the Amazon
%% DataZone data portal. These rules help maintain consistency, ensure
%% compliance, and uphold governance standards in data management processes.
%% For instance, a metadata enforcement rule can specify the required
%% information for creating a subscription request or publishing a data asset
%% to the catalog, ensuring alignment with organizational standards.
-spec list_rules(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_rules_output(), tuple()} |
    {error, any()} |
    {error, list_rules_errors(), tuple()}.
list_rules(Client, DomainIdentifier, TargetIdentifier, TargetType)
  when is_map(Client) ->
    list_rules(Client, DomainIdentifier, TargetIdentifier, TargetType, #{}, #{}).

-spec list_rules(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_rules_output(), tuple()} |
    {error, any()} |
    {error, list_rules_errors(), tuple()}.
list_rules(Client, DomainIdentifier, TargetIdentifier, TargetType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_rules(Client, DomainIdentifier, TargetIdentifier, TargetType, QueryMap, HeadersMap, []).

-spec list_rules(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_rules_output(), tuple()} |
    {error, any()} |
    {error, list_rules_errors(), tuple()}.
list_rules(Client, DomainIdentifier, TargetIdentifier, TargetType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/list-rules/", aws_util:encode_uri(TargetType), "/", aws_util:encode_uri(TargetIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"ruleAction">>, maps:get(<<"ruleAction">>, QueryMap, undefined)},
        {<<"assetTypes">>, maps:get(<<"assetTypes">>, QueryMap, undefined)},
        {<<"dataProduct">>, maps:get(<<"dataProduct">>, QueryMap, undefined)},
        {<<"includeCascaded">>, maps:get(<<"includeCascaded">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"projectIds">>, maps:get(<<"projectIds">>, QueryMap, undefined)},
        {<<"ruleType">>, maps:get(<<"ruleType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists subscription grants.
-spec list_subscription_grants(aws_client:aws_client(), binary() | list()) ->
    {ok, list_subscription_grants_output(), tuple()} |
    {error, any()} |
    {error, list_subscription_grants_errors(), tuple()}.
list_subscription_grants(Client, DomainIdentifier)
  when is_map(Client) ->
    list_subscription_grants(Client, DomainIdentifier, #{}, #{}).

-spec list_subscription_grants(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_subscription_grants_output(), tuple()} |
    {error, any()} |
    {error, list_subscription_grants_errors(), tuple()}.
list_subscription_grants(Client, DomainIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_subscription_grants(Client, DomainIdentifier, QueryMap, HeadersMap, []).

-spec list_subscription_grants(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_subscription_grants_output(), tuple()} |
    {error, any()} |
    {error, list_subscription_grants_errors(), tuple()}.
list_subscription_grants(Client, DomainIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-grants"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"environmentId">>, maps:get(<<"environmentId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"owningProjectId">>, maps:get(<<"owningProjectId">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)},
        {<<"subscribedListingId">>, maps:get(<<"subscribedListingId">>, QueryMap, undefined)},
        {<<"subscriptionId">>, maps:get(<<"subscriptionId">>, QueryMap, undefined)},
        {<<"subscriptionTargetId">>, maps:get(<<"subscriptionTargetId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Amazon DataZone subscription requests.
-spec list_subscription_requests(aws_client:aws_client(), binary() | list()) ->
    {ok, list_subscription_requests_output(), tuple()} |
    {error, any()} |
    {error, list_subscription_requests_errors(), tuple()}.
list_subscription_requests(Client, DomainIdentifier)
  when is_map(Client) ->
    list_subscription_requests(Client, DomainIdentifier, #{}, #{}).

-spec list_subscription_requests(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_subscription_requests_output(), tuple()} |
    {error, any()} |
    {error, list_subscription_requests_errors(), tuple()}.
list_subscription_requests(Client, DomainIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_subscription_requests(Client, DomainIdentifier, QueryMap, HeadersMap, []).

-spec list_subscription_requests(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_subscription_requests_output(), tuple()} |
    {error, any()} |
    {error, list_subscription_requests_errors(), tuple()}.
list_subscription_requests(Client, DomainIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-requests"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"approverProjectId">>, maps:get(<<"approverProjectId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"owningProjectId">>, maps:get(<<"owningProjectId">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)},
        {<<"subscribedListingId">>, maps:get(<<"subscribedListingId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists subscription targets in Amazon DataZone.
-spec list_subscription_targets(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_subscription_targets_output(), tuple()} |
    {error, any()} |
    {error, list_subscription_targets_errors(), tuple()}.
list_subscription_targets(Client, DomainIdentifier, EnvironmentIdentifier)
  when is_map(Client) ->
    list_subscription_targets(Client, DomainIdentifier, EnvironmentIdentifier, #{}, #{}).

-spec list_subscription_targets(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_subscription_targets_output(), tuple()} |
    {error, any()} |
    {error, list_subscription_targets_errors(), tuple()}.
list_subscription_targets(Client, DomainIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_subscription_targets(Client, DomainIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap, []).

-spec list_subscription_targets(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_subscription_targets_output(), tuple()} |
    {error, any()} |
    {error, list_subscription_targets_errors(), tuple()}.
list_subscription_targets(Client, DomainIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/subscription-targets"],
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
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists subscriptions in Amazon DataZone.
-spec list_subscriptions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_subscriptions_output(), tuple()} |
    {error, any()} |
    {error, list_subscriptions_errors(), tuple()}.
list_subscriptions(Client, DomainIdentifier)
  when is_map(Client) ->
    list_subscriptions(Client, DomainIdentifier, #{}, #{}).

-spec list_subscriptions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_subscriptions_output(), tuple()} |
    {error, any()} |
    {error, list_subscriptions_errors(), tuple()}.
list_subscriptions(Client, DomainIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_subscriptions(Client, DomainIdentifier, QueryMap, HeadersMap, []).

-spec list_subscriptions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_subscriptions_output(), tuple()} |
    {error, any()} |
    {error, list_subscriptions_errors(), tuple()}.
list_subscriptions(Client, DomainIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscriptions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"approverProjectId">>, maps:get(<<"approverProjectId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"owningProjectId">>, maps:get(<<"owningProjectId">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)},
        {<<"subscribedListingId">>, maps:get(<<"subscribedListingId">>, QueryMap, undefined)},
        {<<"subscriptionRequestIdentifier">>, maps:get(<<"subscriptionRequestIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists tags for the specified resource in Amazon DataZone.
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

%% @doc Lists time series data points.
-spec list_time_series_data_points(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_time_series_data_points_output(), tuple()} |
    {error, any()} |
    {error, list_time_series_data_points_errors(), tuple()}.
list_time_series_data_points(Client, DomainIdentifier, EntityIdentifier, EntityType, FormName)
  when is_map(Client) ->
    list_time_series_data_points(Client, DomainIdentifier, EntityIdentifier, EntityType, FormName, #{}, #{}).

-spec list_time_series_data_points(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_time_series_data_points_output(), tuple()} |
    {error, any()} |
    {error, list_time_series_data_points_errors(), tuple()}.
list_time_series_data_points(Client, DomainIdentifier, EntityIdentifier, EntityType, FormName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_time_series_data_points(Client, DomainIdentifier, EntityIdentifier, EntityType, FormName, QueryMap, HeadersMap, []).

-spec list_time_series_data_points(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_time_series_data_points_output(), tuple()} |
    {error, any()} |
    {error, list_time_series_data_points_errors(), tuple()}.
list_time_series_data_points(Client, DomainIdentifier, EntityIdentifier, EntityType, FormName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/entities/", aws_util:encode_uri(EntityType), "/", aws_util:encode_uri(EntityIdentifier), "/time-series-data-points"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"endedAt">>, maps:get(<<"endedAt">>, QueryMap, undefined)},
        {<<"formName">>, FormName},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"startedAt">>, maps:get(<<"startedAt">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Posts a data lineage event.
-spec post_lineage_event(aws_client:aws_client(), binary() | list(), post_lineage_event_input()) ->
    {ok, post_lineage_event_output(), tuple()} |
    {error, any()} |
    {error, post_lineage_event_errors(), tuple()}.
post_lineage_event(Client, DomainIdentifier, Input) ->
    post_lineage_event(Client, DomainIdentifier, Input, []).

-spec post_lineage_event(aws_client:aws_client(), binary() | list(), post_lineage_event_input(), proplists:proplist()) ->
    {ok, post_lineage_event_output(), tuple()} |
    {error, any()} |
    {error, post_lineage_event_errors(), tuple()}.
post_lineage_event(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/lineage/events"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Posts time series data points to Amazon DataZone for the specified
%% asset.
-spec post_time_series_data_points(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), post_time_series_data_points_input()) ->
    {ok, post_time_series_data_points_output(), tuple()} |
    {error, any()} |
    {error, post_time_series_data_points_errors(), tuple()}.
post_time_series_data_points(Client, DomainIdentifier, EntityIdentifier, EntityType, Input) ->
    post_time_series_data_points(Client, DomainIdentifier, EntityIdentifier, EntityType, Input, []).

-spec post_time_series_data_points(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), post_time_series_data_points_input(), proplists:proplist()) ->
    {ok, post_time_series_data_points_output(), tuple()} |
    {error, any()} |
    {error, post_time_series_data_points_errors(), tuple()}.
post_time_series_data_points(Client, DomainIdentifier, EntityIdentifier, EntityType, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/entities/", aws_util:encode_uri(EntityType), "/", aws_util:encode_uri(EntityIdentifier), "/time-series-data-points"],
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

%% @doc Writes the configuration for the specified environment blueprint in
%% Amazon DataZone.
-spec put_environment_blueprint_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), put_environment_blueprint_configuration_input()) ->
    {ok, put_environment_blueprint_configuration_output(), tuple()} |
    {error, any()} |
    {error, put_environment_blueprint_configuration_errors(), tuple()}.
put_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier, Input) ->
    put_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier, Input, []).

-spec put_environment_blueprint_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), put_environment_blueprint_configuration_input(), proplists:proplist()) ->
    {ok, put_environment_blueprint_configuration_output(), tuple()} |
    {error, any()} |
    {error, put_environment_blueprint_configuration_errors(), tuple()}.
put_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-blueprint-configurations/", aws_util:encode_uri(EnvironmentBlueprintIdentifier), ""],
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

%% @doc Rejects automatically generated business-friendly metadata for your
%% Amazon DataZone assets.
-spec reject_predictions(aws_client:aws_client(), binary() | list(), binary() | list(), reject_predictions_input()) ->
    {ok, reject_predictions_output(), tuple()} |
    {error, any()} |
    {error, reject_predictions_errors(), tuple()}.
reject_predictions(Client, DomainIdentifier, Identifier, Input) ->
    reject_predictions(Client, DomainIdentifier, Identifier, Input, []).

-spec reject_predictions(aws_client:aws_client(), binary() | list(), binary() | list(), reject_predictions_input(), proplists:proplist()) ->
    {ok, reject_predictions_output(), tuple()} |
    {error, any()} |
    {error, reject_predictions_errors(), tuple()}.
reject_predictions(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/assets/", aws_util:encode_uri(Identifier), "/reject-predictions"],
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
                     {<<"revision">>, <<"revision">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Rejects the specified subscription request.
-spec reject_subscription_request(aws_client:aws_client(), binary() | list(), binary() | list(), reject_subscription_request_input()) ->
    {ok, reject_subscription_request_output(), tuple()} |
    {error, any()} |
    {error, reject_subscription_request_errors(), tuple()}.
reject_subscription_request(Client, DomainIdentifier, Identifier, Input) ->
    reject_subscription_request(Client, DomainIdentifier, Identifier, Input, []).

-spec reject_subscription_request(aws_client:aws_client(), binary() | list(), binary() | list(), reject_subscription_request_input(), proplists:proplist()) ->
    {ok, reject_subscription_request_output(), tuple()} |
    {error, any()} |
    {error, reject_subscription_request_errors(), tuple()}.
reject_subscription_request(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-requests/", aws_util:encode_uri(Identifier), "/reject"],
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

%% @doc Removes an owner from an entity.
-spec remove_entity_owner(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), remove_entity_owner_input()) ->
    {ok, remove_entity_owner_output(), tuple()} |
    {error, any()} |
    {error, remove_entity_owner_errors(), tuple()}.
remove_entity_owner(Client, DomainIdentifier, EntityIdentifier, EntityType, Input) ->
    remove_entity_owner(Client, DomainIdentifier, EntityIdentifier, EntityType, Input, []).

-spec remove_entity_owner(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), remove_entity_owner_input(), proplists:proplist()) ->
    {ok, remove_entity_owner_output(), tuple()} |
    {error, any()} |
    {error, remove_entity_owner_errors(), tuple()}.
remove_entity_owner(Client, DomainIdentifier, EntityIdentifier, EntityType, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/entities/", aws_util:encode_uri(EntityType), "/", aws_util:encode_uri(EntityIdentifier), "/removeOwner"],
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

%% @doc Removes a policy grant.
-spec remove_policy_grant(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), remove_policy_grant_input()) ->
    {ok, remove_policy_grant_output(), tuple()} |
    {error, any()} |
    {error, remove_policy_grant_errors(), tuple()}.
remove_policy_grant(Client, DomainIdentifier, EntityIdentifier, EntityType, Input) ->
    remove_policy_grant(Client, DomainIdentifier, EntityIdentifier, EntityType, Input, []).

-spec remove_policy_grant(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), remove_policy_grant_input(), proplists:proplist()) ->
    {ok, remove_policy_grant_output(), tuple()} |
    {error, any()} |
    {error, remove_policy_grant_errors(), tuple()}.
remove_policy_grant(Client, DomainIdentifier, EntityIdentifier, EntityType, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/policies/managed/", aws_util:encode_uri(EntityType), "/", aws_util:encode_uri(EntityIdentifier), "/removeGrant"],
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

%% @doc Revokes a specified subscription in Amazon DataZone.
-spec revoke_subscription(aws_client:aws_client(), binary() | list(), binary() | list(), revoke_subscription_input()) ->
    {ok, revoke_subscription_output(), tuple()} |
    {error, any()} |
    {error, revoke_subscription_errors(), tuple()}.
revoke_subscription(Client, DomainIdentifier, Identifier, Input) ->
    revoke_subscription(Client, DomainIdentifier, Identifier, Input, []).

-spec revoke_subscription(aws_client:aws_client(), binary() | list(), binary() | list(), revoke_subscription_input(), proplists:proplist()) ->
    {ok, revoke_subscription_output(), tuple()} |
    {error, any()} |
    {error, revoke_subscription_errors(), tuple()}.
revoke_subscription(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscriptions/", aws_util:encode_uri(Identifier), "/revoke"],
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

%% @doc Searches for assets in Amazon DataZone.
-spec search(aws_client:aws_client(), binary() | list(), search_input()) ->
    {ok, search_output(), tuple()} |
    {error, any()} |
    {error, search_errors(), tuple()}.
search(Client, DomainIdentifier, Input) ->
    search(Client, DomainIdentifier, Input, []).

-spec search(aws_client:aws_client(), binary() | list(), search_input(), proplists:proplist()) ->
    {ok, search_output(), tuple()} |
    {error, any()} |
    {error, search_errors(), tuple()}.
search(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/search"],
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

%% @doc Searches group profiles in Amazon DataZone.
-spec search_group_profiles(aws_client:aws_client(), binary() | list(), search_group_profiles_input()) ->
    {ok, search_group_profiles_output(), tuple()} |
    {error, any()} |
    {error, search_group_profiles_errors(), tuple()}.
search_group_profiles(Client, DomainIdentifier, Input) ->
    search_group_profiles(Client, DomainIdentifier, Input, []).

-spec search_group_profiles(aws_client:aws_client(), binary() | list(), search_group_profiles_input(), proplists:proplist()) ->
    {ok, search_group_profiles_output(), tuple()} |
    {error, any()} |
    {error, search_group_profiles_errors(), tuple()}.
search_group_profiles(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/search-group-profiles"],
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

%% @doc Searches listings (records of an asset at a given time) in Amazon
%% DataZone.
-spec search_listings(aws_client:aws_client(), binary() | list(), search_listings_input()) ->
    {ok, search_listings_output(), tuple()} |
    {error, any()} |
    {error, search_listings_errors(), tuple()}.
search_listings(Client, DomainIdentifier, Input) ->
    search_listings(Client, DomainIdentifier, Input, []).

-spec search_listings(aws_client:aws_client(), binary() | list(), search_listings_input(), proplists:proplist()) ->
    {ok, search_listings_output(), tuple()} |
    {error, any()} |
    {error, search_listings_errors(), tuple()}.
search_listings(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/listings/search"],
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

%% @doc Searches for types in Amazon DataZone.
-spec search_types(aws_client:aws_client(), binary() | list(), search_types_input()) ->
    {ok, search_types_output(), tuple()} |
    {error, any()} |
    {error, search_types_errors(), tuple()}.
search_types(Client, DomainIdentifier, Input) ->
    search_types(Client, DomainIdentifier, Input, []).

-spec search_types(aws_client:aws_client(), binary() | list(), search_types_input(), proplists:proplist()) ->
    {ok, search_types_output(), tuple()} |
    {error, any()} |
    {error, search_types_errors(), tuple()}.
search_types(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/types-search"],
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

%% @doc Searches user profiles in Amazon DataZone.
-spec search_user_profiles(aws_client:aws_client(), binary() | list(), search_user_profiles_input()) ->
    {ok, search_user_profiles_output(), tuple()} |
    {error, any()} |
    {error, search_user_profiles_errors(), tuple()}.
search_user_profiles(Client, DomainIdentifier, Input) ->
    search_user_profiles(Client, DomainIdentifier, Input, []).

-spec search_user_profiles(aws_client:aws_client(), binary() | list(), search_user_profiles_input(), proplists:proplist()) ->
    {ok, search_user_profiles_output(), tuple()} |
    {error, any()} |
    {error, search_user_profiles_errors(), tuple()}.
search_user_profiles(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/search-user-profiles"],
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

%% @doc Start the run of the specified data source in Amazon DataZone.
-spec start_data_source_run(aws_client:aws_client(), binary() | list(), binary() | list(), start_data_source_run_input()) ->
    {ok, start_data_source_run_output(), tuple()} |
    {error, any()} |
    {error, start_data_source_run_errors(), tuple()}.
start_data_source_run(Client, DataSourceIdentifier, DomainIdentifier, Input) ->
    start_data_source_run(Client, DataSourceIdentifier, DomainIdentifier, Input, []).

-spec start_data_source_run(aws_client:aws_client(), binary() | list(), binary() | list(), start_data_source_run_input(), proplists:proplist()) ->
    {ok, start_data_source_run_output(), tuple()} |
    {error, any()} |
    {error, start_data_source_run_errors(), tuple()}.
start_data_source_run(Client, DataSourceIdentifier, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-sources/", aws_util:encode_uri(DataSourceIdentifier), "/runs"],
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

%% @doc Starts the metadata generation run.
-spec start_metadata_generation_run(aws_client:aws_client(), binary() | list(), start_metadata_generation_run_input()) ->
    {ok, start_metadata_generation_run_output(), tuple()} |
    {error, any()} |
    {error, start_metadata_generation_run_errors(), tuple()}.
start_metadata_generation_run(Client, DomainIdentifier, Input) ->
    start_metadata_generation_run(Client, DomainIdentifier, Input, []).

-spec start_metadata_generation_run(aws_client:aws_client(), binary() | list(), start_metadata_generation_run_input(), proplists:proplist()) ->
    {ok, start_metadata_generation_run_output(), tuple()} |
    {error, any()} |
    {error, start_metadata_generation_run_errors(), tuple()}.
start_metadata_generation_run(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/metadata-generation-runs"],
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

%% @doc Tags a resource in Amazon DataZone.
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

%% @doc Untags a resource in Amazon DataZone.
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

%% @doc Updates the account pool.
-spec update_account_pool(aws_client:aws_client(), binary() | list(), binary() | list(), update_account_pool_input()) ->
    {ok, update_account_pool_output(), tuple()} |
    {error, any()} |
    {error, update_account_pool_errors(), tuple()}.
update_account_pool(Client, DomainIdentifier, Identifier, Input) ->
    update_account_pool(Client, DomainIdentifier, Identifier, Input, []).

-spec update_account_pool(aws_client:aws_client(), binary() | list(), binary() | list(), update_account_pool_input(), proplists:proplist()) ->
    {ok, update_account_pool_output(), tuple()} |
    {error, any()} |
    {error, update_account_pool_errors(), tuple()}.
update_account_pool(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/account-pools/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates an asset filter.
-spec update_asset_filter(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_asset_filter_input()) ->
    {ok, update_asset_filter_output(), tuple()} |
    {error, any()} |
    {error, update_asset_filter_errors(), tuple()}.
update_asset_filter(Client, AssetIdentifier, DomainIdentifier, Identifier, Input) ->
    update_asset_filter(Client, AssetIdentifier, DomainIdentifier, Identifier, Input, []).

-spec update_asset_filter(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_asset_filter_input(), proplists:proplist()) ->
    {ok, update_asset_filter_output(), tuple()} |
    {error, any()} |
    {error, update_asset_filter_errors(), tuple()}.
update_asset_filter(Client, AssetIdentifier, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/assets/", aws_util:encode_uri(AssetIdentifier), "/filters/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates a connection.
%%
%% In Amazon DataZone, a connection enables you to connect your resources
%% (domains, projects, and environments) to external resources and services.
-spec update_connection(aws_client:aws_client(), binary() | list(), binary() | list(), update_connection_input()) ->
    {ok, update_connection_output(), tuple()} |
    {error, any()} |
    {error, update_connection_errors(), tuple()}.
update_connection(Client, DomainIdentifier, Identifier, Input) ->
    update_connection(Client, DomainIdentifier, Identifier, Input, []).

-spec update_connection(aws_client:aws_client(), binary() | list(), binary() | list(), update_connection_input(), proplists:proplist()) ->
    {ok, update_connection_output(), tuple()} |
    {error, any()} |
    {error, update_connection_errors(), tuple()}.
update_connection(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/connections/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates the specified data source in Amazon DataZone.
-spec update_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_source_input()) ->
    {ok, update_data_source_output(), tuple()} |
    {error, any()} |
    {error, update_data_source_errors(), tuple()}.
update_data_source(Client, DomainIdentifier, Identifier, Input) ->
    update_data_source(Client, DomainIdentifier, Identifier, Input, []).

-spec update_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_source_input(), proplists:proplist()) ->
    {ok, update_data_source_output(), tuple()} |
    {error, any()} |
    {error, update_data_source_errors(), tuple()}.
update_data_source(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-sources/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates a Amazon DataZone domain.
-spec update_domain(aws_client:aws_client(), binary() | list(), update_domain_input()) ->
    {ok, update_domain_output(), tuple()} |
    {error, any()} |
    {error, update_domain_errors(), tuple()}.
update_domain(Client, Identifier, Input) ->
    update_domain(Client, Identifier, Input, []).

-spec update_domain(aws_client:aws_client(), binary() | list(), update_domain_input(), proplists:proplist()) ->
    {ok, update_domain_output(), tuple()} |
    {error, any()} |
    {error, update_domain_errors(), tuple()}.
update_domain(Client, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates the domain unit.
-spec update_domain_unit(aws_client:aws_client(), binary() | list(), binary() | list(), update_domain_unit_input()) ->
    {ok, update_domain_unit_output(), tuple()} |
    {error, any()} |
    {error, update_domain_unit_errors(), tuple()}.
update_domain_unit(Client, DomainIdentifier, Identifier, Input) ->
    update_domain_unit(Client, DomainIdentifier, Identifier, Input, []).

-spec update_domain_unit(aws_client:aws_client(), binary() | list(), binary() | list(), update_domain_unit_input(), proplists:proplist()) ->
    {ok, update_domain_unit_output(), tuple()} |
    {error, any()} |
    {error, update_domain_unit_errors(), tuple()}.
update_domain_unit(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/domain-units/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates the specified environment in Amazon DataZone.
-spec update_environment(aws_client:aws_client(), binary() | list(), binary() | list(), update_environment_input()) ->
    {ok, update_environment_output(), tuple()} |
    {error, any()} |
    {error, update_environment_errors(), tuple()}.
update_environment(Client, DomainIdentifier, Identifier, Input) ->
    update_environment(Client, DomainIdentifier, Identifier, Input, []).

-spec update_environment(aws_client:aws_client(), binary() | list(), binary() | list(), update_environment_input(), proplists:proplist()) ->
    {ok, update_environment_output(), tuple()} |
    {error, any()} |
    {error, update_environment_errors(), tuple()}.
update_environment(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates an environment action.
-spec update_environment_action(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_environment_action_input()) ->
    {ok, update_environment_action_output(), tuple()} |
    {error, any()} |
    {error, update_environment_action_errors(), tuple()}.
update_environment_action(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, Input) ->
    update_environment_action(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, Input, []).

-spec update_environment_action(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_environment_action_input(), proplists:proplist()) ->
    {ok, update_environment_action_output(), tuple()} |
    {error, any()} |
    {error, update_environment_action_errors(), tuple()}.
update_environment_action(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/actions/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates the specified environment profile in Amazon DataZone.
-spec update_environment_profile(aws_client:aws_client(), binary() | list(), binary() | list(), update_environment_profile_input()) ->
    {ok, update_environment_profile_output(), tuple()} |
    {error, any()} |
    {error, update_environment_profile_errors(), tuple()}.
update_environment_profile(Client, DomainIdentifier, Identifier, Input) ->
    update_environment_profile(Client, DomainIdentifier, Identifier, Input, []).

-spec update_environment_profile(aws_client:aws_client(), binary() | list(), binary() | list(), update_environment_profile_input(), proplists:proplist()) ->
    {ok, update_environment_profile_output(), tuple()} |
    {error, any()} |
    {error, update_environment_profile_errors(), tuple()}.
update_environment_profile(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-profiles/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates the business glossary in Amazon DataZone.
-spec update_glossary(aws_client:aws_client(), binary() | list(), binary() | list(), update_glossary_input()) ->
    {ok, update_glossary_output(), tuple()} |
    {error, any()} |
    {error, update_glossary_errors(), tuple()}.
update_glossary(Client, DomainIdentifier, Identifier, Input) ->
    update_glossary(Client, DomainIdentifier, Identifier, Input, []).

-spec update_glossary(aws_client:aws_client(), binary() | list(), binary() | list(), update_glossary_input(), proplists:proplist()) ->
    {ok, update_glossary_output(), tuple()} |
    {error, any()} |
    {error, update_glossary_errors(), tuple()}.
update_glossary(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/glossaries/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates a business glossary term in Amazon DataZone.
-spec update_glossary_term(aws_client:aws_client(), binary() | list(), binary() | list(), update_glossary_term_input()) ->
    {ok, update_glossary_term_output(), tuple()} |
    {error, any()} |
    {error, update_glossary_term_errors(), tuple()}.
update_glossary_term(Client, DomainIdentifier, Identifier, Input) ->
    update_glossary_term(Client, DomainIdentifier, Identifier, Input, []).

-spec update_glossary_term(aws_client:aws_client(), binary() | list(), binary() | list(), update_glossary_term_input(), proplists:proplist()) ->
    {ok, update_glossary_term_output(), tuple()} |
    {error, any()} |
    {error, update_glossary_term_errors(), tuple()}.
update_glossary_term(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/glossary-terms/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates the specified group profile in Amazon DataZone.
-spec update_group_profile(aws_client:aws_client(), binary() | list(), binary() | list(), update_group_profile_input()) ->
    {ok, update_group_profile_output(), tuple()} |
    {error, any()} |
    {error, update_group_profile_errors(), tuple()}.
update_group_profile(Client, DomainIdentifier, GroupIdentifier, Input) ->
    update_group_profile(Client, DomainIdentifier, GroupIdentifier, Input, []).

-spec update_group_profile(aws_client:aws_client(), binary() | list(), binary() | list(), update_group_profile_input(), proplists:proplist()) ->
    {ok, update_group_profile_output(), tuple()} |
    {error, any()} |
    {error, update_group_profile_errors(), tuple()}.
update_group_profile(Client, DomainIdentifier, GroupIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/group-profiles/", aws_util:encode_uri(GroupIdentifier), ""],
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

%% @doc Updates the specified project in Amazon DataZone.
-spec update_project(aws_client:aws_client(), binary() | list(), binary() | list(), update_project_input()) ->
    {ok, update_project_output(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, DomainIdentifier, Identifier, Input) ->
    update_project(Client, DomainIdentifier, Identifier, Input, []).

-spec update_project(aws_client:aws_client(), binary() | list(), binary() | list(), update_project_input(), proplists:proplist()) ->
    {ok, update_project_output(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/projects/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates a project profile.
-spec update_project_profile(aws_client:aws_client(), binary() | list(), binary() | list(), update_project_profile_input()) ->
    {ok, update_project_profile_output(), tuple()} |
    {error, any()} |
    {error, update_project_profile_errors(), tuple()}.
update_project_profile(Client, DomainIdentifier, Identifier, Input) ->
    update_project_profile(Client, DomainIdentifier, Identifier, Input, []).

-spec update_project_profile(aws_client:aws_client(), binary() | list(), binary() | list(), update_project_profile_input(), proplists:proplist()) ->
    {ok, update_project_profile_output(), tuple()} |
    {error, any()} |
    {error, update_project_profile_errors(), tuple()}.
update_project_profile(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/project-profiles/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates a rule.
%%
%% In Amazon DataZone, a rule is a formal agreement that enforces specific
%% requirements across user workflows (e.g., publishing assets to the
%% catalog, requesting subscriptions, creating projects) within the Amazon
%% DataZone data portal. These rules help maintain consistency, ensure
%% compliance, and uphold governance standards in data management processes.
%% For instance, a metadata enforcement rule can specify the required
%% information for creating a subscription request or publishing a data asset
%% to the catalog, ensuring alignment with organizational standards.
-spec update_rule(aws_client:aws_client(), binary() | list(), binary() | list(), update_rule_input()) ->
    {ok, update_rule_output(), tuple()} |
    {error, any()} |
    {error, update_rule_errors(), tuple()}.
update_rule(Client, DomainIdentifier, Identifier, Input) ->
    update_rule(Client, DomainIdentifier, Identifier, Input, []).

-spec update_rule(aws_client:aws_client(), binary() | list(), binary() | list(), update_rule_input(), proplists:proplist()) ->
    {ok, update_rule_output(), tuple()} |
    {error, any()} |
    {error, update_rule_errors(), tuple()}.
update_rule(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/rules/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates the status of the specified subscription grant status in
%% Amazon DataZone.
-spec update_subscription_grant_status(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_subscription_grant_status_input()) ->
    {ok, update_subscription_grant_status_output(), tuple()} |
    {error, any()} |
    {error, update_subscription_grant_status_errors(), tuple()}.
update_subscription_grant_status(Client, AssetIdentifier, DomainIdentifier, Identifier, Input) ->
    update_subscription_grant_status(Client, AssetIdentifier, DomainIdentifier, Identifier, Input, []).

-spec update_subscription_grant_status(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_subscription_grant_status_input(), proplists:proplist()) ->
    {ok, update_subscription_grant_status_output(), tuple()} |
    {error, any()} |
    {error, update_subscription_grant_status_errors(), tuple()}.
update_subscription_grant_status(Client, AssetIdentifier, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-grants/", aws_util:encode_uri(Identifier), "/status/", aws_util:encode_uri(AssetIdentifier), ""],
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

%% @doc Updates a specified subscription request in Amazon DataZone.
-spec update_subscription_request(aws_client:aws_client(), binary() | list(), binary() | list(), update_subscription_request_input()) ->
    {ok, update_subscription_request_output(), tuple()} |
    {error, any()} |
    {error, update_subscription_request_errors(), tuple()}.
update_subscription_request(Client, DomainIdentifier, Identifier, Input) ->
    update_subscription_request(Client, DomainIdentifier, Identifier, Input, []).

-spec update_subscription_request(aws_client:aws_client(), binary() | list(), binary() | list(), update_subscription_request_input(), proplists:proplist()) ->
    {ok, update_subscription_request_output(), tuple()} |
    {error, any()} |
    {error, update_subscription_request_errors(), tuple()}.
update_subscription_request(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-requests/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates the specified subscription target in Amazon DataZone.
-spec update_subscription_target(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_subscription_target_input()) ->
    {ok, update_subscription_target_output(), tuple()} |
    {error, any()} |
    {error, update_subscription_target_errors(), tuple()}.
update_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, Input) ->
    update_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, Input, []).

-spec update_subscription_target(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_subscription_target_input(), proplists:proplist()) ->
    {ok, update_subscription_target_output(), tuple()} |
    {error, any()} |
    {error, update_subscription_target_errors(), tuple()}.
update_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/subscription-targets/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates the specified user profile in Amazon DataZone.
-spec update_user_profile(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_profile_input()) ->
    {ok, update_user_profile_output(), tuple()} |
    {error, any()} |
    {error, update_user_profile_errors(), tuple()}.
update_user_profile(Client, DomainIdentifier, UserIdentifier, Input) ->
    update_user_profile(Client, DomainIdentifier, UserIdentifier, Input, []).

-spec update_user_profile(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_profile_input(), proplists:proplist()) ->
    {ok, update_user_profile_output(), tuple()} |
    {error, any()} |
    {error, update_user_profile_errors(), tuple()}.
update_user_profile(Client, DomainIdentifier, UserIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/user-profiles/", aws_util:encode_uri(UserIdentifier), ""],
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
    Client1 = Client#{service => <<"datazone">>},
    Host = build_host(<<"datazone">>, Client1),
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
