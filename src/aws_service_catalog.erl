%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Service Catalog
%%
%% Service Catalog: http://aws.amazon.com/servicecatalog enables
%% organizations to create and manage catalogs of IT services that are
%% approved for Amazon Web Services.
%%
%% To
%% get the most out of this documentation, you should be familiar with the
%% terminology
%% discussed in Service Catalog
%% Concepts:
%% http://docs.aws.amazon.com/servicecatalog/latest/adminguide/what-is_concepts.html.
-module(aws_service_catalog).

-export([accept_portfolio_share/2,
         accept_portfolio_share/3,
         associate_budget_with_resource/2,
         associate_budget_with_resource/3,
         associate_principal_with_portfolio/2,
         associate_principal_with_portfolio/3,
         associate_product_with_portfolio/2,
         associate_product_with_portfolio/3,
         associate_service_action_with_provisioning_artifact/2,
         associate_service_action_with_provisioning_artifact/3,
         associate_tag_option_with_resource/2,
         associate_tag_option_with_resource/3,
         batch_associate_service_action_with_provisioning_artifact/2,
         batch_associate_service_action_with_provisioning_artifact/3,
         batch_disassociate_service_action_from_provisioning_artifact/2,
         batch_disassociate_service_action_from_provisioning_artifact/3,
         copy_product/2,
         copy_product/3,
         create_constraint/2,
         create_constraint/3,
         create_portfolio/2,
         create_portfolio/3,
         create_portfolio_share/2,
         create_portfolio_share/3,
         create_product/2,
         create_product/3,
         create_provisioned_product_plan/2,
         create_provisioned_product_plan/3,
         create_provisioning_artifact/2,
         create_provisioning_artifact/3,
         create_service_action/2,
         create_service_action/3,
         create_tag_option/2,
         create_tag_option/3,
         delete_constraint/2,
         delete_constraint/3,
         delete_portfolio/2,
         delete_portfolio/3,
         delete_portfolio_share/2,
         delete_portfolio_share/3,
         delete_product/2,
         delete_product/3,
         delete_provisioned_product_plan/2,
         delete_provisioned_product_plan/3,
         delete_provisioning_artifact/2,
         delete_provisioning_artifact/3,
         delete_service_action/2,
         delete_service_action/3,
         delete_tag_option/2,
         delete_tag_option/3,
         describe_constraint/2,
         describe_constraint/3,
         describe_copy_product_status/2,
         describe_copy_product_status/3,
         describe_portfolio/2,
         describe_portfolio/3,
         describe_portfolio_share_status/2,
         describe_portfolio_share_status/3,
         describe_portfolio_shares/2,
         describe_portfolio_shares/3,
         describe_product/2,
         describe_product/3,
         describe_product_as_admin/2,
         describe_product_as_admin/3,
         describe_product_view/2,
         describe_product_view/3,
         describe_provisioned_product/2,
         describe_provisioned_product/3,
         describe_provisioned_product_plan/2,
         describe_provisioned_product_plan/3,
         describe_provisioning_artifact/2,
         describe_provisioning_artifact/3,
         describe_provisioning_parameters/2,
         describe_provisioning_parameters/3,
         describe_record/2,
         describe_record/3,
         describe_service_action/2,
         describe_service_action/3,
         describe_service_action_execution_parameters/2,
         describe_service_action_execution_parameters/3,
         describe_tag_option/2,
         describe_tag_option/3,
         disable_aws_organizations_access/2,
         disable_aws_organizations_access/3,
         disassociate_budget_from_resource/2,
         disassociate_budget_from_resource/3,
         disassociate_principal_from_portfolio/2,
         disassociate_principal_from_portfolio/3,
         disassociate_product_from_portfolio/2,
         disassociate_product_from_portfolio/3,
         disassociate_service_action_from_provisioning_artifact/2,
         disassociate_service_action_from_provisioning_artifact/3,
         disassociate_tag_option_from_resource/2,
         disassociate_tag_option_from_resource/3,
         enable_aws_organizations_access/2,
         enable_aws_organizations_access/3,
         execute_provisioned_product_plan/2,
         execute_provisioned_product_plan/3,
         execute_provisioned_product_service_action/2,
         execute_provisioned_product_service_action/3,
         get_aws_organizations_access_status/2,
         get_aws_organizations_access_status/3,
         get_provisioned_product_outputs/2,
         get_provisioned_product_outputs/3,
         import_as_provisioned_product/2,
         import_as_provisioned_product/3,
         list_accepted_portfolio_shares/2,
         list_accepted_portfolio_shares/3,
         list_budgets_for_resource/2,
         list_budgets_for_resource/3,
         list_constraints_for_portfolio/2,
         list_constraints_for_portfolio/3,
         list_launch_paths/2,
         list_launch_paths/3,
         list_organization_portfolio_access/2,
         list_organization_portfolio_access/3,
         list_portfolio_access/2,
         list_portfolio_access/3,
         list_portfolios/2,
         list_portfolios/3,
         list_portfolios_for_product/2,
         list_portfolios_for_product/3,
         list_principals_for_portfolio/2,
         list_principals_for_portfolio/3,
         list_provisioned_product_plans/2,
         list_provisioned_product_plans/3,
         list_provisioning_artifacts/2,
         list_provisioning_artifacts/3,
         list_provisioning_artifacts_for_service_action/2,
         list_provisioning_artifacts_for_service_action/3,
         list_record_history/2,
         list_record_history/3,
         list_resources_for_tag_option/2,
         list_resources_for_tag_option/3,
         list_service_actions/2,
         list_service_actions/3,
         list_service_actions_for_provisioning_artifact/2,
         list_service_actions_for_provisioning_artifact/3,
         list_stack_instances_for_provisioned_product/2,
         list_stack_instances_for_provisioned_product/3,
         list_tag_options/2,
         list_tag_options/3,
         notify_provision_product_engine_workflow_result/2,
         notify_provision_product_engine_workflow_result/3,
         notify_terminate_provisioned_product_engine_workflow_result/2,
         notify_terminate_provisioned_product_engine_workflow_result/3,
         notify_update_provisioned_product_engine_workflow_result/2,
         notify_update_provisioned_product_engine_workflow_result/3,
         provision_product/2,
         provision_product/3,
         reject_portfolio_share/2,
         reject_portfolio_share/3,
         scan_provisioned_products/2,
         scan_provisioned_products/3,
         search_products/2,
         search_products/3,
         search_products_as_admin/2,
         search_products_as_admin/3,
         search_provisioned_products/2,
         search_provisioned_products/3,
         terminate_provisioned_product/2,
         terminate_provisioned_product/3,
         update_constraint/2,
         update_constraint/3,
         update_portfolio/2,
         update_portfolio/3,
         update_portfolio_share/2,
         update_portfolio_share/3,
         update_product/2,
         update_product/3,
         update_provisioned_product/2,
         update_provisioned_product/3,
         update_provisioned_product_properties/2,
         update_provisioned_product_properties/3,
         update_provisioning_artifact/2,
         update_provisioning_artifact/3,
         update_service_action/2,
         update_service_action/3,
         update_tag_option/2,
         update_tag_option/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% list_tag_options_input() :: #{
%%   <<"Filters">> => list_tag_options_filters(),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string()
%% }
-type list_tag_options_input() :: #{binary() => any()}.

%% Example:
%% create_provisioning_artifact_output() :: #{
%%   <<"Info">> => map(),
%%   <<"ProvisioningArtifactDetail">> => provisioning_artifact_detail(),
%%   <<"Status">> => list(any())
%% }
-type create_provisioning_artifact_output() :: #{binary() => any()}.

%% Example:
%% copy_product_output() :: #{
%%   <<"CopyProductToken">> => string()
%% }
-type copy_product_output() :: #{binary() => any()}.

%% Example:
%% list_provisioned_product_plans_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"AccessLevelFilter">> => access_level_filter(),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string(),
%%   <<"ProvisionProductId">> => string()
%% }
-type list_provisioned_product_plans_input() :: #{binary() => any()}.

%% Example:
%% disassociate_service_action_from_provisioning_artifact_output() :: #{

%% }
-type disassociate_service_action_from_provisioning_artifact_output() :: #{binary() => any()}.

%% Example:
%% notify_terminate_provisioned_product_engine_workflow_result_output() :: #{

%% }
-type notify_terminate_provisioned_product_engine_workflow_result_output() :: #{binary() => any()}.

%% Example:
%% copy_product_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"CopyOptions">> => list(list(any())()),
%%   <<"IdempotencyToken">> := string(),
%%   <<"SourceProductArn">> := string(),
%%   <<"SourceProvisioningArtifactIdentifiers">> => list(map()()),
%%   <<"TargetProductId">> => string(),
%%   <<"TargetProductName">> => string()
%% }
-type copy_product_input() :: #{binary() => any()}.

%% Example:
%% disassociate_budget_from_resource_output() :: #{

%% }
-type disassociate_budget_from_resource_output() :: #{binary() => any()}.

%% Example:
%% delete_constraint_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"Id">> := string()
%% }
-type delete_constraint_input() :: #{binary() => any()}.

%% Example:
%% accept_portfolio_share_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"PortfolioId">> := string(),
%%   <<"PortfolioShareType">> => list(any())
%% }
-type accept_portfolio_share_input() :: #{binary() => any()}.

%% Example:
%% disassociate_tag_option_from_resource_output() :: #{

%% }
-type disassociate_tag_option_from_resource_output() :: #{binary() => any()}.

%% Example:
%% list_provisioning_artifacts_for_service_action_output() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"ProvisioningArtifactViews">> => list(provisioning_artifact_view()())
%% }
-type list_provisioning_artifacts_for_service_action_output() :: #{binary() => any()}.

%% Example:
%% list_accepted_portfolio_shares_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string(),
%%   <<"PortfolioShareType">> => list(any())
%% }
-type list_accepted_portfolio_shares_input() :: #{binary() => any()}.

%% Example:
%% update_portfolio_share_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"AccountId">> => string(),
%%   <<"OrganizationNode">> => organization_node(),
%%   <<"PortfolioId">> := string(),
%%   <<"SharePrincipals">> => boolean(),
%%   <<"ShareTagOptions">> => boolean()
%% }
-type update_portfolio_share_input() :: #{binary() => any()}.

%% Example:
%% delete_portfolio_output() :: #{

%% }
-type delete_portfolio_output() :: #{binary() => any()}.

%% Example:
%% list_constraints_for_portfolio_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string(),
%%   <<"PortfolioId">> := string(),
%%   <<"ProductId">> => string()
%% }
-type list_constraints_for_portfolio_input() :: #{binary() => any()}.

%% Example:
%% associate_service_action_with_provisioning_artifact_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"IdempotencyToken">> => string(),
%%   <<"ProductId">> := string(),
%%   <<"ProvisioningArtifactId">> := string(),
%%   <<"ServiceActionId">> := string()
%% }
-type associate_service_action_with_provisioning_artifact_input() :: #{binary() => any()}.

%% Example:
%% describe_constraint_output() :: #{
%%   <<"ConstraintDetail">> => constraint_detail(),
%%   <<"ConstraintParameters">> => string(),
%%   <<"Status">> => list(any())
%% }
-type describe_constraint_output() :: #{binary() => any()}.

%% Example:
%% delete_portfolio_share_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"AccountId">> => string(),
%%   <<"OrganizationNode">> => organization_node(),
%%   <<"PortfolioId">> := string()
%% }
-type delete_portfolio_share_input() :: #{binary() => any()}.

%% Example:
%% parameter_constraints() :: #{
%%   <<"AllowedPattern">> => string(),
%%   <<"AllowedValues">> => list(string()()),
%%   <<"ConstraintDescription">> => string(),
%%   <<"MaxLength">> => string(),
%%   <<"MaxValue">> => string(),
%%   <<"MinLength">> => string(),
%%   <<"MinValue">> => string()
%% }
-type parameter_constraints() :: #{binary() => any()}.

%% Example:
%% describe_provisioning_parameters_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"PathId">> => string(),
%%   <<"PathName">> => string(),
%%   <<"ProductId">> => string(),
%%   <<"ProductName">> => string(),
%%   <<"ProvisioningArtifactId">> => string(),
%%   <<"ProvisioningArtifactName">> => string()
%% }
-type describe_provisioning_parameters_input() :: #{binary() => any()}.

%% Example:
%% provisioned_product_detail() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"IdempotencyToken">> => string(),
%%   <<"LastProvisioningRecordId">> => string(),
%%   <<"LastRecordId">> => string(),
%%   <<"LastSuccessfulProvisioningRecordId">> => string(),
%%   <<"LaunchRoleArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"ProductId">> => string(),
%%   <<"ProvisioningArtifactId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"Type">> => string()
%% }
-type provisioned_product_detail() :: #{binary() => any()}.

%% Example:
%% describe_product_output() :: #{
%%   <<"Budgets">> => list(budget_detail()()),
%%   <<"LaunchPaths">> => list(launch_path()()),
%%   <<"ProductViewSummary">> => product_view_summary(),
%%   <<"ProvisioningArtifacts">> => list(provisioning_artifact()())
%% }
-type describe_product_output() :: #{binary() => any()}.

%% Example:
%% get_provisioned_product_outputs_output() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"Outputs">> => list(record_output()())
%% }
-type get_provisioned_product_outputs_output() :: #{binary() => any()}.

%% Example:
%% provisioning_artifact_properties() :: #{
%%   <<"Description">> => string(),
%%   <<"DisableTemplateValidation">> => boolean(),
%%   <<"Info">> => map(),
%%   <<"Name">> => string(),
%%   <<"Type">> => list(any())
%% }
-type provisioning_artifact_properties() :: #{binary() => any()}.

%% Example:
%% engine_workflow_resource_identifier() :: #{
%%   <<"UniqueTag">> => unique_tag_resource_identifier()
%% }
-type engine_workflow_resource_identifier() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% describe_provisioning_parameters_output() :: #{
%%   <<"ConstraintSummaries">> => list(constraint_summary()()),
%%   <<"ProvisioningArtifactOutputKeys">> => list(provisioning_artifact_output()()),
%%   <<"ProvisioningArtifactOutputs">> => list(provisioning_artifact_output()()),
%%   <<"ProvisioningArtifactParameters">> => list(provisioning_artifact_parameter()()),
%%   <<"ProvisioningArtifactPreferences">> => provisioning_artifact_preferences(),
%%   <<"TagOptions">> => list(tag_option_summary()()),
%%   <<"UsageInstructions">> => list(usage_instruction()())
%% }
-type describe_provisioning_parameters_output() :: #{binary() => any()}.

%% Example:
%% get_aws_organizations_access_status_output() :: #{
%%   <<"AccessStatus">> => list(any())
%% }
-type get_aws_organizations_access_status_output() :: #{binary() => any()}.

%% Example:
%% disassociate_principal_from_portfolio_output() :: #{

%% }
-type disassociate_principal_from_portfolio_output() :: #{binary() => any()}.

%% Example:
%% describe_product_view_output() :: #{
%%   <<"ProductViewSummary">> => product_view_summary(),
%%   <<"ProvisioningArtifacts">> => list(provisioning_artifact()())
%% }
-type describe_product_view_output() :: #{binary() => any()}.

%% Example:
%% list_principals_for_portfolio_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string(),
%%   <<"PortfolioId">> := string()
%% }
-type list_principals_for_portfolio_input() :: #{binary() => any()}.

%% Example:
%% execute_provisioned_product_service_action_output() :: #{
%%   <<"RecordDetail">> => record_detail()
%% }
-type execute_provisioned_product_service_action_output() :: #{binary() => any()}.

%% Example:
%% list_portfolio_access_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"OrganizationParentId">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string(),
%%   <<"PortfolioId">> := string()
%% }
-type list_portfolio_access_input() :: #{binary() => any()}.

%% Example:
%% execute_provisioned_product_plan_output() :: #{
%%   <<"RecordDetail">> => record_detail()
%% }
-type execute_provisioned_product_plan_output() :: #{binary() => any()}.

%% Example:
%% associate_product_with_portfolio_output() :: #{

%% }
-type associate_product_with_portfolio_output() :: #{binary() => any()}.

%% Example:
%% create_constraint_output() :: #{
%%   <<"ConstraintDetail">> => constraint_detail(),
%%   <<"ConstraintParameters">> => string(),
%%   <<"Status">> => list(any())
%% }
-type create_constraint_output() :: #{binary() => any()}.

%% Example:
%% associate_product_with_portfolio_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"PortfolioId">> := string(),
%%   <<"ProductId">> := string(),
%%   <<"SourcePortfolioId">> => string()
%% }
-type associate_product_with_portfolio_input() :: #{binary() => any()}.

%% Example:
%% share_details() :: #{
%%   <<"ShareErrors">> => list(share_error()()),
%%   <<"SuccessfulShares">> => list(string()())
%% }
-type share_details() :: #{binary() => any()}.

%% Example:
%% resource_target_definition() :: #{
%%   <<"Attribute">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"RequiresRecreation">> => list(any())
%% }
-type resource_target_definition() :: #{binary() => any()}.

%% Example:
%% list_provisioning_artifacts_for_service_action_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string(),
%%   <<"ServiceActionId">> := string()
%% }
-type list_provisioning_artifacts_for_service_action_input() :: #{binary() => any()}.

%% Example:
%% service_action_summary() :: #{
%%   <<"DefinitionType">> => list(any()),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type service_action_summary() :: #{binary() => any()}.

%% Example:
%% describe_tag_option_input() :: #{
%%   <<"Id">> := string()
%% }
-type describe_tag_option_input() :: #{binary() => any()}.

%% Example:
%% terminate_provisioned_product_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"IgnoreErrors">> => boolean(),
%%   <<"ProvisionedProductId">> => string(),
%%   <<"ProvisionedProductName">> => string(),
%%   <<"RetainPhysicalResources">> => boolean(),
%%   <<"TerminateToken">> := string()
%% }
-type terminate_provisioned_product_input() :: #{binary() => any()}.

%% Example:
%% describe_portfolio_output() :: #{
%%   <<"Budgets">> => list(budget_detail()()),
%%   <<"PortfolioDetail">> => portfolio_detail(),
%%   <<"TagOptions">> => list(tag_option_detail()()),
%%   <<"Tags">> => list(tag()())
%% }
-type describe_portfolio_output() :: #{binary() => any()}.

%% Example:
%% list_organization_portfolio_access_output() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"OrganizationNodes">> => list(organization_node()())
%% }
-type list_organization_portfolio_access_output() :: #{binary() => any()}.

%% Example:
%% search_products_as_admin_output() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"ProductViewDetails">> => list(product_view_detail()())
%% }
-type search_products_as_admin_output() :: #{binary() => any()}.

%% Example:
%% source_connection_detail() :: #{
%%   <<"ConnectionParameters">> => source_connection_parameters(),
%%   <<"LastSync">> => last_sync(),
%%   <<"Type">> => list(any())
%% }
-type source_connection_detail() :: #{binary() => any()}.

%% Example:
%% list_record_history_search_filter() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type list_record_history_search_filter() :: #{binary() => any()}.

%% Example:
%% principal() :: #{
%%   <<"PrincipalARN">> => string(),
%%   <<"PrincipalType">> => list(any())
%% }
-type principal() :: #{binary() => any()}.

%% Example:
%% disable_aws_organizations_access_output() :: #{

%% }
-type disable_aws_organizations_access_output() :: #{binary() => any()}.

%% Example:
%% product_view_aggregation_value() :: #{
%%   <<"ApproximateCount">> => integer(),
%%   <<"Value">> => string()
%% }
-type product_view_aggregation_value() :: #{binary() => any()}.

%% Example:
%% invalid_state_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_state_exception() :: #{binary() => any()}.

%% Example:
%% delete_service_action_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"Id">> := string(),
%%   <<"IdempotencyToken">> => string()
%% }
-type delete_service_action_input() :: #{binary() => any()}.

%% Example:
%% batch_disassociate_service_action_from_provisioning_artifact_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"ServiceActionAssociations">> := list(service_action_association()())
%% }
-type batch_disassociate_service_action_from_provisioning_artifact_input() :: #{binary() => any()}.

%% Example:
%% usage_instruction() :: #{
%%   <<"Type">> => string(),
%%   <<"Value">> => string()
%% }
-type usage_instruction() :: #{binary() => any()}.

%% Example:
%% describe_service_action_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"Id">> := string()
%% }
-type describe_service_action_input() :: #{binary() => any()}.

%% Example:
%% disable_aws_organizations_access_input() :: #{

%% }
-type disable_aws_organizations_access_input() :: #{binary() => any()}.

%% Example:
%% stack_instance() :: #{
%%   <<"Account">> => string(),
%%   <<"Region">> => string(),
%%   <<"StackInstanceStatus">> => list(any())
%% }
-type stack_instance() :: #{binary() => any()}.

%% Example:
%% delete_portfolio_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"Id">> := string()
%% }
-type delete_portfolio_input() :: #{binary() => any()}.

%% Example:
%% update_portfolio_output() :: #{
%%   <<"PortfolioDetail">> => portfolio_detail(),
%%   <<"Tags">> => list(tag()())
%% }
-type update_portfolio_output() :: #{binary() => any()}.

%% Example:
%% budget_detail() :: #{
%%   <<"BudgetName">> => string()
%% }
-type budget_detail() :: #{binary() => any()}.

%% Example:
%% describe_provisioning_artifact_output() :: #{
%%   <<"Info">> => map(),
%%   <<"ProvisioningArtifactDetail">> => provisioning_artifact_detail(),
%%   <<"ProvisioningArtifactParameters">> => list(provisioning_artifact_parameter()()),
%%   <<"Status">> => list(any())
%% }
-type describe_provisioning_artifact_output() :: #{binary() => any()}.

%% Example:
%% unique_tag_resource_identifier() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type unique_tag_resource_identifier() :: #{binary() => any()}.

%% Example:
%% provisioning_artifact_summary() :: #{
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ProvisioningArtifactMetadata">> => map()
%% }
-type provisioning_artifact_summary() :: #{binary() => any()}.

%% Example:
%% associate_budget_with_resource_output() :: #{

%% }
-type associate_budget_with_resource_output() :: #{binary() => any()}.

%% Example:
%% list_principals_for_portfolio_output() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"Principals">> => list(principal()())
%% }
-type list_principals_for_portfolio_output() :: #{binary() => any()}.

%% Example:
%% create_tag_option_output() :: #{
%%   <<"TagOptionDetail">> => tag_option_detail()
%% }
-type create_tag_option_output() :: #{binary() => any()}.

%% Example:
%% describe_product_view_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"Id">> := string()
%% }
-type describe_product_view_input() :: #{binary() => any()}.

%% Example:
%% batch_associate_service_action_with_provisioning_artifact_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"ServiceActionAssociations">> := list(service_action_association()())
%% }
-type batch_associate_service_action_with_provisioning_artifact_input() :: #{binary() => any()}.

%% Example:
%% constraint_summary() :: #{
%%   <<"Description">> => string(),
%%   <<"Type">> => string()
%% }
-type constraint_summary() :: #{binary() => any()}.

%% Example:
%% source_connection() :: #{
%%   <<"ConnectionParameters">> => source_connection_parameters(),
%%   <<"Type">> => list(any())
%% }
-type source_connection() :: #{binary() => any()}.

%% Example:
%% describe_tag_option_output() :: #{
%%   <<"TagOptionDetail">> => tag_option_detail()
%% }
-type describe_tag_option_output() :: #{binary() => any()}.

%% Example:
%% notify_provision_product_engine_workflow_result_output() :: #{

%% }
-type notify_provision_product_engine_workflow_result_output() :: #{binary() => any()}.

%% Example:
%% import_as_provisioned_product_output() :: #{
%%   <<"RecordDetail">> => record_detail()
%% }
-type import_as_provisioned_product_output() :: #{binary() => any()}.

%% Example:
%% update_product_output() :: #{
%%   <<"ProductViewDetail">> => product_view_detail(),
%%   <<"Tags">> => list(tag()())
%% }
-type update_product_output() :: #{binary() => any()}.

%% Example:
%% describe_portfolio_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"Id">> := string()
%% }
-type describe_portfolio_input() :: #{binary() => any()}.

%% Example:
%% notify_update_provisioned_product_engine_workflow_result_output() :: #{

%% }
-type notify_update_provisioned_product_engine_workflow_result_output() :: #{binary() => any()}.

%% Example:
%% provisioned_product_plan_summary() :: #{
%%   <<"PlanId">> => string(),
%%   <<"PlanName">> => string(),
%%   <<"PlanType">> => list(any()),
%%   <<"ProvisionProductId">> => string(),
%%   <<"ProvisionProductName">> => string(),
%%   <<"ProvisioningArtifactId">> => string()
%% }
-type provisioned_product_plan_summary() :: #{binary() => any()}.

%% Example:
%% list_tag_options_filters() :: #{
%%   <<"Active">> => boolean(),
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type list_tag_options_filters() :: #{binary() => any()}.

%% Example:
%% code_star_parameters() :: #{
%%   <<"ArtifactPath">> => string(),
%%   <<"Branch">> => string(),
%%   <<"ConnectionArn">> => string(),
%%   <<"Repository">> => string()
%% }
-type code_star_parameters() :: #{binary() => any()}.

%% Example:
%% delete_product_output() :: #{

%% }
-type delete_product_output() :: #{binary() => any()}.

%% Example:
%% service_action_association() :: #{
%%   <<"ProductId">> => string(),
%%   <<"ProvisioningArtifactId">> => string(),
%%   <<"ServiceActionId">> => string()
%% }
-type service_action_association() :: #{binary() => any()}.

%% Example:
%% search_provisioned_products_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"AccessLevelFilter">> => access_level_filter(),
%%   <<"Filters">> => map(),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string(),
%%   <<"SortBy">> => string(),
%%   <<"SortOrder">> => list(any())
%% }
-type search_provisioned_products_input() :: #{binary() => any()}.

%% Example:
%% update_provisioned_product_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"PathId">> => string(),
%%   <<"PathName">> => string(),
%%   <<"ProductId">> => string(),
%%   <<"ProductName">> => string(),
%%   <<"ProvisionedProductId">> => string(),
%%   <<"ProvisionedProductName">> => string(),
%%   <<"ProvisioningArtifactId">> => string(),
%%   <<"ProvisioningArtifactName">> => string(),
%%   <<"ProvisioningParameters">> => list(update_provisioning_parameter()()),
%%   <<"ProvisioningPreferences">> => update_provisioning_preferences(),
%%   <<"Tags">> => list(tag()()),
%%   <<"UpdateToken">> := string()
%% }
-type update_provisioned_product_input() :: #{binary() => any()}.

%% Example:
%% create_portfolio_share_output() :: #{
%%   <<"PortfolioShareToken">> => string()
%% }
-type create_portfolio_share_output() :: #{binary() => any()}.

%% Example:
%% scan_provisioned_products_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"AccessLevelFilter">> => access_level_filter(),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string()
%% }
-type scan_provisioned_products_input() :: #{binary() => any()}.

%% Example:
%% product_view_detail() :: #{
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"ProductARN">> => string(),
%%   <<"ProductViewSummary">> => product_view_summary(),
%%   <<"SourceConnection">> => source_connection_detail(),
%%   <<"Status">> => list(any())
%% }
-type product_view_detail() :: #{binary() => any()}.

%% Example:
%% list_accepted_portfolio_shares_output() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"PortfolioDetails">> => list(portfolio_detail()())
%% }
-type list_accepted_portfolio_shares_output() :: #{binary() => any()}.

%% Example:
%% provisioning_artifact_detail() :: #{
%%   <<"Active">> => boolean(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Guidance">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"SourceRevision">> => string(),
%%   <<"Type">> => list(any())
%% }
-type provisioning_artifact_detail() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% list_budgets_for_resource_output() :: #{
%%   <<"Budgets">> => list(budget_detail()()),
%%   <<"NextPageToken">> => string()
%% }
-type list_budgets_for_resource_output() :: #{binary() => any()}.

%% Example:
%% disassociate_product_from_portfolio_output() :: #{

%% }
-type disassociate_product_from_portfolio_output() :: #{binary() => any()}.

%% Example:
%% execute_provisioned_product_plan_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"IdempotencyToken">> := string(),
%%   <<"PlanId">> := string()
%% }
-type execute_provisioned_product_plan_input() :: #{binary() => any()}.

%% Example:
%% describe_portfolio_shares_input() :: #{
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string(),
%%   <<"PortfolioId">> := string(),
%%   <<"Type">> := list(any())
%% }
-type describe_portfolio_shares_input() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% constraint_detail() :: #{
%%   <<"ConstraintId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Owner">> => string(),
%%   <<"PortfolioId">> => string(),
%%   <<"ProductId">> => string(),
%%   <<"Type">> => string()
%% }
-type constraint_detail() :: #{binary() => any()}.

%% Example:
%% notify_terminate_provisioned_product_engine_workflow_result_input() :: #{
%%   <<"FailureReason">> => string(),
%%   <<"IdempotencyToken">> := string(),
%%   <<"RecordId">> := string(),
%%   <<"Status">> := list(any()),
%%   <<"WorkflowToken">> := string()
%% }
-type notify_terminate_provisioned_product_engine_workflow_result_input() :: #{binary() => any()}.

%% Example:
%% record_tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type record_tag() :: #{binary() => any()}.

%% Example:
%% disassociate_principal_from_portfolio_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"PortfolioId">> := string(),
%%   <<"PrincipalARN">> := string(),
%%   <<"PrincipalType">> => list(any())
%% }
-type disassociate_principal_from_portfolio_input() :: #{binary() => any()}.

%% Example:
%% provisioned_product_attribute() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"IdempotencyToken">> => string(),
%%   <<"LastProvisioningRecordId">> => string(),
%%   <<"LastRecordId">> => string(),
%%   <<"LastSuccessfulProvisioningRecordId">> => string(),
%%   <<"Name">> => string(),
%%   <<"PhysicalId">> => string(),
%%   <<"ProductId">> => string(),
%%   <<"ProductName">> => string(),
%%   <<"ProvisioningArtifactId">> => string(),
%%   <<"ProvisioningArtifactName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Type">> => string(),
%%   <<"UserArn">> => string(),
%%   <<"UserArnSession">> => string()
%% }
-type provisioned_product_attribute() :: #{binary() => any()}.

%% Example:
%% create_constraint_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"Description">> => string(),
%%   <<"IdempotencyToken">> := string(),
%%   <<"Parameters">> := string(),
%%   <<"PortfolioId">> := string(),
%%   <<"ProductId">> := string(),
%%   <<"Type">> := string()
%% }
-type create_constraint_input() :: #{binary() => any()}.

%% Example:
%% batch_associate_service_action_with_provisioning_artifact_output() :: #{
%%   <<"FailedServiceActionAssociations">> => list(failed_service_action_association()())
%% }
-type batch_associate_service_action_with_provisioning_artifact_output() :: #{binary() => any()}.

%% Example:
%% create_portfolio_output() :: #{
%%   <<"PortfolioDetail">> => portfolio_detail(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_portfolio_output() :: #{binary() => any()}.

%% Example:
%% describe_copy_product_status_output() :: #{
%%   <<"CopyProductStatus">> => list(any()),
%%   <<"StatusDetail">> => string(),
%%   <<"TargetProductId">> => string()
%% }
-type describe_copy_product_status_output() :: #{binary() => any()}.

%% Example:
%% disassociate_tag_option_from_resource_input() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"TagOptionId">> := string()
%% }
-type disassociate_tag_option_from_resource_input() :: #{binary() => any()}.

%% Example:
%% describe_provisioned_product_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type describe_provisioned_product_input() :: #{binary() => any()}.

%% Example:
%% list_portfolios_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string()
%% }
-type list_portfolios_input() :: #{binary() => any()}.

%% Example:
%% record_error() :: #{
%%   <<"Code">> => string(),
%%   <<"Description">> => string()
%% }
-type record_error() :: #{binary() => any()}.

%% Example:
%% list_portfolios_output() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"PortfolioDetails">> => list(portfolio_detail()())
%% }
-type list_portfolios_output() :: #{binary() => any()}.

%% Example:
%% describe_record_output() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"RecordDetail">> => record_detail(),
%%   <<"RecordOutputs">> => list(record_output()())
%% }
-type describe_record_output() :: #{binary() => any()}.

%% Example:
%% provisioning_artifact_view() :: #{
%%   <<"ProductViewSummary">> => product_view_summary(),
%%   <<"ProvisioningArtifact">> => provisioning_artifact()
%% }
-type provisioning_artifact_view() :: #{binary() => any()}.

%% Example:
%% describe_provisioned_product_output() :: #{
%%   <<"CloudWatchDashboards">> => list(cloud_watch_dashboard()()),
%%   <<"ProvisionedProductDetail">> => provisioned_product_detail()
%% }
-type describe_provisioned_product_output() :: #{binary() => any()}.

%% Example:
%% create_portfolio_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> := string(),
%%   <<"IdempotencyToken">> := string(),
%%   <<"ProviderName">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_portfolio_input() :: #{binary() => any()}.

%% Example:
%% delete_portfolio_share_output() :: #{
%%   <<"PortfolioShareToken">> => string()
%% }
-type delete_portfolio_share_output() :: #{binary() => any()}.

%% Example:
%% create_provisioned_product_plan_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"IdempotencyToken">> := string(),
%%   <<"NotificationArns">> => list(string()()),
%%   <<"PathId">> => string(),
%%   <<"PlanName">> := string(),
%%   <<"PlanType">> := list(any()),
%%   <<"ProductId">> := string(),
%%   <<"ProvisionedProductName">> := string(),
%%   <<"ProvisioningArtifactId">> := string(),
%%   <<"ProvisioningParameters">> => list(update_provisioning_parameter()()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_provisioned_product_plan_input() :: #{binary() => any()}.

%% Example:
%% create_tag_option_input() :: #{
%%   <<"Key">> := string(),
%%   <<"Value">> := string()
%% }
-type create_tag_option_input() :: #{binary() => any()}.

%% Example:
%% list_provisioned_product_plans_output() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"ProvisionedProductPlans">> => list(provisioned_product_plan_summary()())
%% }
-type list_provisioned_product_plans_output() :: #{binary() => any()}.

%% Example:
%% update_tag_option_input() :: #{
%%   <<"Active">> => boolean(),
%%   <<"Id">> := string(),
%%   <<"Value">> => string()
%% }
-type update_tag_option_input() :: #{binary() => any()}.

%% Example:
%% portfolio_detail() :: #{
%%   <<"ARN">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"Id">> => string(),
%%   <<"ProviderName">> => string()
%% }
-type portfolio_detail() :: #{binary() => any()}.

%% Example:
%% enable_aws_organizations_access_input() :: #{

%% }
-type enable_aws_organizations_access_input() :: #{binary() => any()}.

%% Example:
%% list_service_actions_for_provisioning_artifact_output() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"ServiceActionSummaries">> => list(service_action_summary()())
%% }
-type list_service_actions_for_provisioning_artifact_output() :: #{binary() => any()}.

%% Example:
%% tag_option_detail() :: #{
%%   <<"Active">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"Key">> => string(),
%%   <<"Owner">> => string(),
%%   <<"Value">> => string()
%% }
-type tag_option_detail() :: #{binary() => any()}.

%% Example:
%% share_error() :: #{
%%   <<"Accounts">> => list(string()()),
%%   <<"Error">> => string(),
%%   <<"Message">> => string()
%% }
-type share_error() :: #{binary() => any()}.

%% Example:
%% organization_node() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Value">> => string()
%% }
-type organization_node() :: #{binary() => any()}.

%% Example:
%% enable_aws_organizations_access_output() :: #{

%% }
-type enable_aws_organizations_access_output() :: #{binary() => any()}.

%% Example:
%% list_budgets_for_resource_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string(),
%%   <<"ResourceId">> := string()
%% }
-type list_budgets_for_resource_input() :: #{binary() => any()}.

%% Example:
%% describe_portfolio_shares_output() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"PortfolioShareDetails">> => list(portfolio_share_detail()())
%% }
-type describe_portfolio_shares_output() :: #{binary() => any()}.

%% Example:
%% launch_path() :: #{
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type launch_path() :: #{binary() => any()}.

%% Example:
%% invalid_parameters_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_parameters_exception() :: #{binary() => any()}.

%% Example:
%% associate_tag_option_with_resource_input() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"TagOptionId">> := string()
%% }
-type associate_tag_option_with_resource_input() :: #{binary() => any()}.

%% Example:
%% provision_product_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"NotificationArns">> => list(string()()),
%%   <<"PathId">> => string(),
%%   <<"PathName">> => string(),
%%   <<"ProductId">> => string(),
%%   <<"ProductName">> => string(),
%%   <<"ProvisionToken">> := string(),
%%   <<"ProvisionedProductName">> := string(),
%%   <<"ProvisioningArtifactId">> => string(),
%%   <<"ProvisioningArtifactName">> => string(),
%%   <<"ProvisioningParameters">> => list(provisioning_parameter()()),
%%   <<"ProvisioningPreferences">> => provisioning_preferences(),
%%   <<"Tags">> => list(tag()())
%% }
-type provision_product_input() :: #{binary() => any()}.

%% Example:
%% list_launch_paths_output() :: #{
%%   <<"LaunchPathSummaries">> => list(launch_path_summary()()),
%%   <<"NextPageToken">> => string()
%% }
-type list_launch_paths_output() :: #{binary() => any()}.

%% Example:
%% describe_provisioned_product_plan_output() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"ProvisionedProductPlanDetails">> => provisioned_product_plan_details(),
%%   <<"ResourceChanges">> => list(resource_change()())
%% }
-type describe_provisioned_product_plan_output() :: #{binary() => any()}.

%% Example:
%% describe_portfolio_share_status_input() :: #{
%%   <<"PortfolioShareToken">> := string()
%% }
-type describe_portfolio_share_status_input() :: #{binary() => any()}.

%% Example:
%% list_resources_for_tag_option_output() :: #{
%%   <<"PageToken">> => string(),
%%   <<"ResourceDetails">> => list(resource_detail()())
%% }
-type list_resources_for_tag_option_output() :: #{binary() => any()}.

%% Example:
%% disassociate_product_from_portfolio_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"PortfolioId">> := string(),
%%   <<"ProductId">> := string()
%% }
-type disassociate_product_from_portfolio_input() :: #{binary() => any()}.

%% Example:
%% delete_provisioned_product_plan_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"IgnoreErrors">> => boolean(),
%%   <<"PlanId">> := string()
%% }
-type delete_provisioned_product_plan_input() :: #{binary() => any()}.

%% Example:
%% create_product_output() :: #{
%%   <<"ProductViewDetail">> => product_view_detail(),
%%   <<"ProvisioningArtifactDetail">> => provisioning_artifact_detail(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_product_output() :: #{binary() => any()}.

%% Example:
%% update_service_action_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"Definition">> => map(),
%%   <<"Description">> => string(),
%%   <<"Id">> := string(),
%%   <<"Name">> => string()
%% }
-type update_service_action_input() :: #{binary() => any()}.

%% Example:
%% batch_disassociate_service_action_from_provisioning_artifact_output() :: #{
%%   <<"FailedServiceActionAssociations">> => list(failed_service_action_association()())
%% }
-type batch_disassociate_service_action_from_provisioning_artifact_output() :: #{binary() => any()}.

%% Example:
%% create_product_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"Description">> => string(),
%%   <<"Distributor">> => string(),
%%   <<"IdempotencyToken">> := string(),
%%   <<"Name">> := string(),
%%   <<"Owner">> := string(),
%%   <<"ProductType">> := list(any()),
%%   <<"ProvisioningArtifactParameters">> => provisioning_artifact_properties(),
%%   <<"SourceConnection">> => source_connection(),
%%   <<"SupportDescription">> => string(),
%%   <<"SupportEmail">> => string(),
%%   <<"SupportUrl">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_product_input() :: #{binary() => any()}.

%% Example:
%% list_service_actions_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string()
%% }
-type list_service_actions_input() :: #{binary() => any()}.

%% Example:
%% import_as_provisioned_product_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"IdempotencyToken">> := string(),
%%   <<"PhysicalId">> := string(),
%%   <<"ProductId">> := string(),
%%   <<"ProvisionedProductName">> := string(),
%%   <<"ProvisioningArtifactId">> := string()
%% }
-type import_as_provisioned_product_input() :: #{binary() => any()}.

%% Example:
%% describe_constraint_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"Id">> := string()
%% }
-type describe_constraint_input() :: #{binary() => any()}.

%% Example:
%% execute_provisioned_product_service_action_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"ExecuteToken">> := string(),
%%   <<"Parameters">> => map(),
%%   <<"ProvisionedProductId">> := string(),
%%   <<"ServiceActionId">> := string()
%% }
-type execute_provisioned_product_service_action_input() :: #{binary() => any()}.

%% Example:
%% provisioning_parameter() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type provisioning_parameter() :: #{binary() => any()}.

%% Example:
%% associate_principal_with_portfolio_output() :: #{

%% }
-type associate_principal_with_portfolio_output() :: #{binary() => any()}.

%% Example:
%% failed_service_action_association() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"ProductId">> => string(),
%%   <<"ProvisioningArtifactId">> => string(),
%%   <<"ServiceActionId">> => string()
%% }
-type failed_service_action_association() :: #{binary() => any()}.

%% Example:
%% portfolio_share_detail() :: #{
%%   <<"Accepted">> => boolean(),
%%   <<"PrincipalId">> => string(),
%%   <<"SharePrincipals">> => boolean(),
%%   <<"ShareTagOptions">> => boolean(),
%%   <<"Type">> => list(any())
%% }
-type portfolio_share_detail() :: #{binary() => any()}.

%% Example:
%% list_provisioning_artifacts_output() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"ProvisioningArtifactDetails">> => list(provisioning_artifact_detail()())
%% }
-type list_provisioning_artifacts_output() :: #{binary() => any()}.

%% Example:
%% execution_parameter() :: #{
%%   <<"DefaultValues">> => list(string()()),
%%   <<"Name">> => string(),
%%   <<"Type">> => string()
%% }
-type execution_parameter() :: #{binary() => any()}.

%% Example:
%% delete_provisioning_artifact_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"ProductId">> := string(),
%%   <<"ProvisioningArtifactId">> := string()
%% }
-type delete_provisioning_artifact_input() :: #{binary() => any()}.

%% Example:
%% delete_provisioned_product_plan_output() :: #{

%% }
-type delete_provisioned_product_plan_output() :: #{binary() => any()}.

%% Example:
%% update_provisioned_product_output() :: #{
%%   <<"RecordDetail">> => record_detail()
%% }
-type update_provisioned_product_output() :: #{binary() => any()}.

%% Example:
%% record_output() :: #{
%%   <<"Description">> => string(),
%%   <<"OutputKey">> => string(),
%%   <<"OutputValue">> => string()
%% }
-type record_output() :: #{binary() => any()}.

%% Example:
%% update_provisioning_preferences() :: #{
%%   <<"StackSetAccounts">> => list(string()()),
%%   <<"StackSetFailureToleranceCount">> => integer(),
%%   <<"StackSetFailureTolerancePercentage">> => integer(),
%%   <<"StackSetMaxConcurrencyCount">> => integer(),
%%   <<"StackSetMaxConcurrencyPercentage">> => integer(),
%%   <<"StackSetOperationType">> => list(any()),
%%   <<"StackSetRegions">> => list(string()())
%% }
-type update_provisioning_preferences() :: #{binary() => any()}.

%% Example:
%% product_view_summary() :: #{
%%   <<"Distributor">> => string(),
%%   <<"HasDefaultPath">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string(),
%%   <<"ProductId">> => string(),
%%   <<"ShortDescription">> => string(),
%%   <<"SupportDescription">> => string(),
%%   <<"SupportEmail">> => string(),
%%   <<"SupportUrl">> => string(),
%%   <<"Type">> => list(any())
%% }
-type product_view_summary() :: #{binary() => any()}.

%% Example:
%% list_tag_options_output() :: #{
%%   <<"PageToken">> => string(),
%%   <<"TagOptionDetails">> => list(tag_option_detail()())
%% }
-type list_tag_options_output() :: #{binary() => any()}.

%% Example:
%% describe_provisioned_product_plan_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string(),
%%   <<"PlanId">> := string()
%% }
-type describe_provisioned_product_plan_input() :: #{binary() => any()}.

%% Example:
%% create_provisioning_artifact_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"IdempotencyToken">> := string(),
%%   <<"Parameters">> := provisioning_artifact_properties(),
%%   <<"ProductId">> := string()
%% }
-type create_provisioning_artifact_input() :: #{binary() => any()}.

%% Example:
%% provisioning_artifact_parameter() :: #{
%%   <<"DefaultValue">> => string(),
%%   <<"Description">> => string(),
%%   <<"IsNoEcho">> => boolean(),
%%   <<"ParameterConstraints">> => parameter_constraints(),
%%   <<"ParameterKey">> => string(),
%%   <<"ParameterType">> => string()
%% }
-type provisioning_artifact_parameter() :: #{binary() => any()}.

%% Example:
%% delete_constraint_output() :: #{

%% }
-type delete_constraint_output() :: #{binary() => any()}.

%% Example:
%% list_launch_paths_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string(),
%%   <<"ProductId">> := string()
%% }
-type list_launch_paths_input() :: #{binary() => any()}.

%% Example:
%% search_products_as_admin_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"Filters">> => map(),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string(),
%%   <<"PortfolioId">> => string(),
%%   <<"ProductSource">> => list(any()),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type search_products_as_admin_input() :: #{binary() => any()}.

%% Example:
%% update_provisioning_artifact_output() :: #{
%%   <<"Info">> => map(),
%%   <<"ProvisioningArtifactDetail">> => provisioning_artifact_detail(),
%%   <<"Status">> => list(any())
%% }
-type update_provisioning_artifact_output() :: #{binary() => any()}.

%% Example:
%% reject_portfolio_share_output() :: #{

%% }
-type reject_portfolio_share_output() :: #{binary() => any()}.

%% Example:
%% notify_update_provisioned_product_engine_workflow_result_input() :: #{
%%   <<"FailureReason">> => string(),
%%   <<"IdempotencyToken">> := string(),
%%   <<"Outputs">> => list(record_output()()),
%%   <<"RecordId">> := string(),
%%   <<"Status">> := list(any()),
%%   <<"WorkflowToken">> := string()
%% }
-type notify_update_provisioned_product_engine_workflow_result_input() :: #{binary() => any()}.

%% Example:
%% list_portfolio_access_output() :: #{
%%   <<"AccountIds">> => list(string()()),
%%   <<"NextPageToken">> => string()
%% }
-type list_portfolio_access_output() :: #{binary() => any()}.

%% Example:
%% create_provisioned_product_plan_output() :: #{
%%   <<"PlanId">> => string(),
%%   <<"PlanName">> => string(),
%%   <<"ProvisionProductId">> => string(),
%%   <<"ProvisionedProductName">> => string(),
%%   <<"ProvisioningArtifactId">> => string()
%% }
-type create_provisioned_product_plan_output() :: #{binary() => any()}.

%% Example:
%% update_tag_option_output() :: #{
%%   <<"TagOptionDetail">> => tag_option_detail()
%% }
-type update_tag_option_output() :: #{binary() => any()}.

%% Example:
%% get_aws_organizations_access_status_input() :: #{

%% }
-type get_aws_organizations_access_status_input() :: #{binary() => any()}.

%% Example:
%% associate_principal_with_portfolio_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"PortfolioId">> := string(),
%%   <<"PrincipalARN">> := string(),
%%   <<"PrincipalType">> := list(any())
%% }
-type associate_principal_with_portfolio_input() :: #{binary() => any()}.

%% Example:
%% list_service_actions_output() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"ServiceActionSummaries">> => list(service_action_summary()())
%% }
-type list_service_actions_output() :: #{binary() => any()}.

%% Example:
%% accept_portfolio_share_output() :: #{

%% }
-type accept_portfolio_share_output() :: #{binary() => any()}.

%% Example:
%% list_portfolios_for_product_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string(),
%%   <<"ProductId">> := string()
%% }
-type list_portfolios_for_product_input() :: #{binary() => any()}.

%% Example:
%% list_portfolios_for_product_output() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"PortfolioDetails">> => list(portfolio_detail()())
%% }
-type list_portfolios_for_product_output() :: #{binary() => any()}.

%% Example:
%% update_portfolio_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"AddTags">> => list(tag()()),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"Id">> := string(),
%%   <<"ProviderName">> => string(),
%%   <<"RemoveTags">> => list(string()())
%% }
-type update_portfolio_input() :: #{binary() => any()}.

%% Example:
%% describe_product_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type describe_product_input() :: #{binary() => any()}.

%% Example:
%% update_provisioned_product_properties_output() :: #{
%%   <<"ProvisionedProductId">> => string(),
%%   <<"ProvisionedProductProperties">> => map(),
%%   <<"RecordId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type update_provisioned_product_properties_output() :: #{binary() => any()}.

%% Example:
%% tag_option_summary() :: #{
%%   <<"Key">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type tag_option_summary() :: #{binary() => any()}.

%% Example:
%% list_constraints_for_portfolio_output() :: #{
%%   <<"ConstraintDetails">> => list(constraint_detail()()),
%%   <<"NextPageToken">> => string()
%% }
-type list_constraints_for_portfolio_output() :: #{binary() => any()}.

%% Example:
%% provisioning_artifact() :: #{
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Guidance">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type provisioning_artifact() :: #{binary() => any()}.

%% Example:
%% describe_provisioning_artifact_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"IncludeProvisioningArtifactParameters">> => boolean(),
%%   <<"ProductId">> => string(),
%%   <<"ProductName">> => string(),
%%   <<"ProvisioningArtifactId">> => string(),
%%   <<"ProvisioningArtifactName">> => string(),
%%   <<"Verbose">> => boolean()
%% }
-type describe_provisioning_artifact_input() :: #{binary() => any()}.

%% Example:
%% delete_service_action_output() :: #{

%% }
-type delete_service_action_output() :: #{binary() => any()}.

%% Example:
%% search_products_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"Filters">> => map(),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type search_products_input() :: #{binary() => any()}.

%% Example:
%% cloud_watch_dashboard() :: #{
%%   <<"Name">> => string()
%% }
-type cloud_watch_dashboard() :: #{binary() => any()}.

%% Example:
%% associate_service_action_with_provisioning_artifact_output() :: #{

%% }
-type associate_service_action_with_provisioning_artifact_output() :: #{binary() => any()}.

%% Example:
%% describe_portfolio_share_status_output() :: #{
%%   <<"OrganizationNodeValue">> => string(),
%%   <<"PortfolioId">> => string(),
%%   <<"PortfolioShareToken">> => string(),
%%   <<"ShareDetails">> => share_details(),
%%   <<"Status">> => list(any())
%% }
-type describe_portfolio_share_status_output() :: #{binary() => any()}.

%% Example:
%% resource_change_detail() :: #{
%%   <<"CausingEntity">> => string(),
%%   <<"Evaluation">> => list(any()),
%%   <<"Target">> => resource_target_definition()
%% }
-type resource_change_detail() :: #{binary() => any()}.

%% Example:
%% describe_service_action_output() :: #{
%%   <<"ServiceActionDetail">> => service_action_detail()
%% }
-type describe_service_action_output() :: #{binary() => any()}.

%% Example:
%% list_resources_for_tag_option_input() :: #{
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"TagOptionId">> := string()
%% }
-type list_resources_for_tag_option_input() :: #{binary() => any()}.

%% Example:
%% update_provisioning_parameter() :: #{
%%   <<"Key">> => string(),
%%   <<"UsePreviousValue">> => boolean(),
%%   <<"Value">> => string()
%% }
-type update_provisioning_parameter() :: #{binary() => any()}.

%% Example:
%% update_provisioning_artifact_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"Active">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"Guidance">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"ProductId">> := string(),
%%   <<"ProvisioningArtifactId">> := string()
%% }
-type update_provisioning_artifact_input() :: #{binary() => any()}.

%% Example:
%% source_connection_parameters() :: #{
%%   <<"CodeStar">> => code_star_parameters()
%% }
-type source_connection_parameters() :: #{binary() => any()}.

%% Example:
%% last_sync() :: #{
%%   <<"LastSuccessfulSyncProvisioningArtifactId">> => string(),
%%   <<"LastSuccessfulSyncTime">> => non_neg_integer(),
%%   <<"LastSyncStatus">> => list(any()),
%%   <<"LastSyncStatusMessage">> => string(),
%%   <<"LastSyncTime">> => non_neg_integer()
%% }
-type last_sync() :: #{binary() => any()}.

%% Example:
%% delete_tag_option_input() :: #{
%%   <<"Id">> := string()
%% }
-type delete_tag_option_input() :: #{binary() => any()}.

%% Example:
%% create_service_action_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"Definition">> := map(),
%%   <<"DefinitionType">> := list(any()),
%%   <<"Description">> => string(),
%%   <<"IdempotencyToken">> := string(),
%%   <<"Name">> := string()
%% }
-type create_service_action_input() :: #{binary() => any()}.

%% Example:
%% list_stack_instances_for_provisioned_product_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string(),
%%   <<"ProvisionedProductId">> := string()
%% }
-type list_stack_instances_for_provisioned_product_input() :: #{binary() => any()}.

%% Example:
%% search_products_output() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"ProductViewAggregations">> => map(),
%%   <<"ProductViewSummaries">> => list(product_view_summary()())
%% }
-type search_products_output() :: #{binary() => any()}.

%% Example:
%% provisioning_artifact_preferences() :: #{
%%   <<"StackSetAccounts">> => list(string()()),
%%   <<"StackSetRegions">> => list(string()())
%% }
-type provisioning_artifact_preferences() :: #{binary() => any()}.

%% Example:
%% create_service_action_output() :: #{
%%   <<"ServiceActionDetail">> => service_action_detail()
%% }
-type create_service_action_output() :: #{binary() => any()}.

%% Example:
%% access_level_filter() :: #{
%%   <<"Key">> => list(any()),
%%   <<"Value">> => string()
%% }
-type access_level_filter() :: #{binary() => any()}.

%% Example:
%% tag_option_not_migrated_exception() :: #{
%%   <<"Message">> => string()
%% }
-type tag_option_not_migrated_exception() :: #{binary() => any()}.

%% Example:
%% update_constraint_output() :: #{
%%   <<"ConstraintDetail">> => constraint_detail(),
%%   <<"ConstraintParameters">> => string(),
%%   <<"Status">> => list(any())
%% }
-type update_constraint_output() :: #{binary() => any()}.

%% Example:
%% describe_record_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"Id">> := string(),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string()
%% }
-type describe_record_input() :: #{binary() => any()}.

%% Example:
%% disassociate_service_action_from_provisioning_artifact_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"IdempotencyToken">> => string(),
%%   <<"ProductId">> := string(),
%%   <<"ProvisioningArtifactId">> := string(),
%%   <<"ServiceActionId">> := string()
%% }
-type disassociate_service_action_from_provisioning_artifact_input() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% describe_service_action_execution_parameters_output() :: #{
%%   <<"ServiceActionParameters">> => list(execution_parameter()())
%% }
-type describe_service_action_execution_parameters_output() :: #{binary() => any()}.

%% Example:
%% get_provisioned_product_outputs_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"OutputKeys">> => list(string()()),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string(),
%%   <<"ProvisionedProductId">> => string(),
%%   <<"ProvisionedProductName">> => string()
%% }
-type get_provisioned_product_outputs_input() :: #{binary() => any()}.

%% Example:
%% update_constraint_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> := string(),
%%   <<"Parameters">> => string()
%% }
-type update_constraint_input() :: #{binary() => any()}.

%% Example:
%% search_provisioned_products_output() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"ProvisionedProducts">> => list(provisioned_product_attribute()()),
%%   <<"TotalResultsCount">> => integer()
%% }
-type search_provisioned_products_output() :: #{binary() => any()}.

%% Example:
%% describe_copy_product_status_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"CopyProductToken">> := string()
%% }
-type describe_copy_product_status_input() :: #{binary() => any()}.

%% Example:
%% provisioning_artifact_output() :: #{
%%   <<"Description">> => string(),
%%   <<"Key">> => string()
%% }
-type provisioning_artifact_output() :: #{binary() => any()}.

%% Example:
%% notify_provision_product_engine_workflow_result_input() :: #{
%%   <<"FailureReason">> => string(),
%%   <<"IdempotencyToken">> := string(),
%%   <<"Outputs">> => list(record_output()()),
%%   <<"RecordId">> := string(),
%%   <<"ResourceIdentifier">> => engine_workflow_resource_identifier(),
%%   <<"Status">> := list(any()),
%%   <<"WorkflowToken">> := string()
%% }
-type notify_provision_product_engine_workflow_result_input() :: #{binary() => any()}.

%% Example:
%% reject_portfolio_share_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"PortfolioId">> := string(),
%%   <<"PortfolioShareType">> => list(any())
%% }
-type reject_portfolio_share_input() :: #{binary() => any()}.

%% Example:
%% record_detail() :: #{
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"LaunchRoleArn">> => string(),
%%   <<"PathId">> => string(),
%%   <<"ProductId">> => string(),
%%   <<"ProvisionedProductId">> => string(),
%%   <<"ProvisionedProductName">> => string(),
%%   <<"ProvisionedProductType">> => string(),
%%   <<"ProvisioningArtifactId">> => string(),
%%   <<"RecordErrors">> => list(record_error()()),
%%   <<"RecordId">> => string(),
%%   <<"RecordTags">> => list(record_tag()()),
%%   <<"RecordType">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedTime">> => non_neg_integer()
%% }
-type record_detail() :: #{binary() => any()}.

%% Example:
%% service_action_detail() :: #{
%%   <<"Definition">> => map(),
%%   <<"ServiceActionSummary">> => service_action_summary()
%% }
-type service_action_detail() :: #{binary() => any()}.

%% Example:
%% associate_budget_with_resource_input() :: #{
%%   <<"BudgetName">> := string(),
%%   <<"ResourceId">> := string()
%% }
-type associate_budget_with_resource_input() :: #{binary() => any()}.

%% Example:
%% update_provisioned_product_properties_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"IdempotencyToken">> := string(),
%%   <<"ProvisionedProductId">> := string(),
%%   <<"ProvisionedProductProperties">> := map()
%% }
-type update_provisioned_product_properties_input() :: #{binary() => any()}.

%% Example:
%% describe_service_action_execution_parameters_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"ProvisionedProductId">> := string(),
%%   <<"ServiceActionId">> := string()
%% }
-type describe_service_action_execution_parameters_input() :: #{binary() => any()}.

%% Example:
%% list_provisioning_artifacts_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"ProductId">> := string()
%% }
-type list_provisioning_artifacts_input() :: #{binary() => any()}.

%% Example:
%% associate_tag_option_with_resource_output() :: #{

%% }
-type associate_tag_option_with_resource_output() :: #{binary() => any()}.

%% Example:
%% list_stack_instances_for_provisioned_product_output() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"StackInstances">> => list(stack_instance()())
%% }
-type list_stack_instances_for_provisioned_product_output() :: #{binary() => any()}.

%% Example:
%% list_service_actions_for_provisioning_artifact_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string(),
%%   <<"ProductId">> := string(),
%%   <<"ProvisioningArtifactId">> := string()
%% }
-type list_service_actions_for_provisioning_artifact_input() :: #{binary() => any()}.

%% Example:
%% operation_not_supported_exception() :: #{
%%   <<"Message">> => string()
%% }
-type operation_not_supported_exception() :: #{binary() => any()}.

%% Example:
%% scan_provisioned_products_output() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"ProvisionedProducts">> => list(provisioned_product_detail()())
%% }
-type scan_provisioned_products_output() :: #{binary() => any()}.

%% Example:
%% terminate_provisioned_product_output() :: #{
%%   <<"RecordDetail">> => record_detail()
%% }
-type terminate_provisioned_product_output() :: #{binary() => any()}.

%% Example:
%% update_service_action_output() :: #{
%%   <<"ServiceActionDetail">> => service_action_detail()
%% }
-type update_service_action_output() :: #{binary() => any()}.

%% Example:
%% delete_product_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"Id">> := string()
%% }
-type delete_product_input() :: #{binary() => any()}.

%% Example:
%% create_portfolio_share_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"AccountId">> => string(),
%%   <<"OrganizationNode">> => organization_node(),
%%   <<"PortfolioId">> := string(),
%%   <<"SharePrincipals">> => boolean(),
%%   <<"ShareTagOptions">> => boolean()
%% }
-type create_portfolio_share_input() :: #{binary() => any()}.

%% Example:
%% delete_provisioning_artifact_output() :: #{

%% }
-type delete_provisioning_artifact_output() :: #{binary() => any()}.

%% Example:
%% list_record_history_output() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"RecordDetails">> => list(record_detail()())
%% }
-type list_record_history_output() :: #{binary() => any()}.

%% Example:
%% resource_change() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Details">> => list(resource_change_detail()()),
%%   <<"LogicalResourceId">> => string(),
%%   <<"PhysicalResourceId">> => string(),
%%   <<"Replacement">> => list(any()),
%%   <<"ResourceType">> => string(),
%%   <<"Scope">> => list(list(any())())
%% }
-type resource_change() :: #{binary() => any()}.

%% Example:
%% update_portfolio_share_output() :: #{
%%   <<"PortfolioShareToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type update_portfolio_share_output() :: #{binary() => any()}.

%% Example:
%% launch_path_summary() :: #{
%%   <<"ConstraintSummaries">> => list(constraint_summary()()),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type launch_path_summary() :: #{binary() => any()}.

%% Example:
%% disassociate_budget_from_resource_input() :: #{
%%   <<"BudgetName">> := string(),
%%   <<"ResourceId">> := string()
%% }
-type disassociate_budget_from_resource_input() :: #{binary() => any()}.

%% Example:
%% duplicate_resource_exception() :: #{
%%   <<"Message">> => string()
%% }
-type duplicate_resource_exception() :: #{binary() => any()}.

%% Example:
%% describe_product_as_admin_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"SourcePortfolioId">> => string()
%% }
-type describe_product_as_admin_input() :: #{binary() => any()}.

%% Example:
%% describe_product_as_admin_output() :: #{
%%   <<"Budgets">> => list(budget_detail()()),
%%   <<"ProductViewDetail">> => product_view_detail(),
%%   <<"ProvisioningArtifactSummaries">> => list(provisioning_artifact_summary()()),
%%   <<"TagOptions">> => list(tag_option_detail()()),
%%   <<"Tags">> => list(tag()())
%% }
-type describe_product_as_admin_output() :: #{binary() => any()}.

%% Example:
%% update_product_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"AddTags">> => list(tag()()),
%%   <<"Description">> => string(),
%%   <<"Distributor">> => string(),
%%   <<"Id">> := string(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string(),
%%   <<"RemoveTags">> => list(string()()),
%%   <<"SourceConnection">> => source_connection(),
%%   <<"SupportDescription">> => string(),
%%   <<"SupportEmail">> => string(),
%%   <<"SupportUrl">> => string()
%% }
-type update_product_input() :: #{binary() => any()}.

%% Example:
%% list_record_history_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"AccessLevelFilter">> => access_level_filter(),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string(),
%%   <<"SearchFilter">> => list_record_history_search_filter()
%% }
-type list_record_history_input() :: #{binary() => any()}.

%% Example:
%% provisioned_product_plan_details() :: #{
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"NotificationArns">> => list(string()()),
%%   <<"PathId">> => string(),
%%   <<"PlanId">> => string(),
%%   <<"PlanName">> => string(),
%%   <<"PlanType">> => list(any()),
%%   <<"ProductId">> => string(),
%%   <<"ProvisionProductId">> => string(),
%%   <<"ProvisionProductName">> => string(),
%%   <<"ProvisioningArtifactId">> => string(),
%%   <<"ProvisioningParameters">> => list(update_provisioning_parameter()()),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"UpdatedTime">> => non_neg_integer()
%% }
-type provisioned_product_plan_details() :: #{binary() => any()}.

%% Example:
%% list_organization_portfolio_access_input() :: #{
%%   <<"AcceptLanguage">> => string(),
%%   <<"OrganizationNodeType">> := list(any()),
%%   <<"PageSize">> => integer(),
%%   <<"PageToken">> => string(),
%%   <<"PortfolioId">> := string()
%% }
-type list_organization_portfolio_access_input() :: #{binary() => any()}.

%% Example:
%% provisioning_preferences() :: #{
%%   <<"StackSetAccounts">> => list(string()()),
%%   <<"StackSetFailureToleranceCount">> => integer(),
%%   <<"StackSetFailureTolerancePercentage">> => integer(),
%%   <<"StackSetMaxConcurrencyCount">> => integer(),
%%   <<"StackSetMaxConcurrencyPercentage">> => integer(),
%%   <<"StackSetRegions">> => list(string()())
%% }
-type provisioning_preferences() :: #{binary() => any()}.

%% Example:
%% delete_tag_option_output() :: #{

%% }
-type delete_tag_option_output() :: #{binary() => any()}.

%% Example:
%% resource_detail() :: #{
%%   <<"ARN">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type resource_detail() :: #{binary() => any()}.

%% Example:
%% provision_product_output() :: #{
%%   <<"RecordDetail">> => record_detail()
%% }
-type provision_product_output() :: #{binary() => any()}.

-type accept_portfolio_share_errors() ::
    limit_exceeded_exception() | 
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type associate_budget_with_resource_errors() ::
    duplicate_resource_exception() | 
    limit_exceeded_exception() | 
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type associate_principal_with_portfolio_errors() ::
    limit_exceeded_exception() | 
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type associate_product_with_portfolio_errors() ::
    limit_exceeded_exception() | 
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type associate_service_action_with_provisioning_artifact_errors() ::
    duplicate_resource_exception() | 
    limit_exceeded_exception() | 
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type associate_tag_option_with_resource_errors() ::
    duplicate_resource_exception() | 
    limit_exceeded_exception() | 
    tag_option_not_migrated_exception() | 
    invalid_parameters_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type batch_associate_service_action_with_provisioning_artifact_errors() ::
    invalid_parameters_exception().

-type batch_disassociate_service_action_from_provisioning_artifact_errors() ::
    invalid_parameters_exception().

-type copy_product_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type create_constraint_errors() ::
    duplicate_resource_exception() | 
    limit_exceeded_exception() | 
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type create_portfolio_errors() ::
    limit_exceeded_exception() | 
    tag_option_not_migrated_exception() | 
    invalid_parameters_exception().

-type create_portfolio_share_errors() ::
    operation_not_supported_exception() | 
    limit_exceeded_exception() | 
    invalid_parameters_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type create_product_errors() ::
    limit_exceeded_exception() | 
    tag_option_not_migrated_exception() | 
    invalid_parameters_exception().

-type create_provisioned_product_plan_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type create_provisioning_artifact_errors() ::
    limit_exceeded_exception() | 
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type create_service_action_errors() ::
    limit_exceeded_exception() | 
    invalid_parameters_exception().

-type create_tag_option_errors() ::
    duplicate_resource_exception() | 
    limit_exceeded_exception() | 
    tag_option_not_migrated_exception().

-type delete_constraint_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type delete_portfolio_errors() ::
    tag_option_not_migrated_exception() | 
    invalid_parameters_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_portfolio_share_errors() ::
    operation_not_supported_exception() | 
    invalid_parameters_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type delete_product_errors() ::
    tag_option_not_migrated_exception() | 
    invalid_parameters_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_provisioned_product_plan_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type delete_provisioning_artifact_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_service_action_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_tag_option_errors() ::
    tag_option_not_migrated_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type describe_constraint_errors() ::
    resource_not_found_exception().

-type describe_copy_product_status_errors() ::
    resource_not_found_exception().

-type describe_portfolio_errors() ::
    resource_not_found_exception().

-type describe_portfolio_share_status_errors() ::
    operation_not_supported_exception() | 
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type describe_portfolio_shares_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type describe_product_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type describe_product_as_admin_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type describe_product_view_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type describe_provisioned_product_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type describe_provisioned_product_plan_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type describe_provisioning_artifact_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type describe_provisioning_parameters_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type describe_record_errors() ::
    resource_not_found_exception().

-type describe_service_action_errors() ::
    resource_not_found_exception().

-type describe_service_action_execution_parameters_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type describe_tag_option_errors() ::
    tag_option_not_migrated_exception() | 
    resource_not_found_exception().

-type disable_aws_organizations_access_errors() ::
    operation_not_supported_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type disassociate_budget_from_resource_errors() ::
    resource_not_found_exception().

-type disassociate_principal_from_portfolio_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type disassociate_product_from_portfolio_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type disassociate_service_action_from_provisioning_artifact_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type disassociate_tag_option_from_resource_errors() ::
    tag_option_not_migrated_exception() | 
    resource_not_found_exception().

-type enable_aws_organizations_access_errors() ::
    operation_not_supported_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type execute_provisioned_product_plan_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type execute_provisioned_product_service_action_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type get_aws_organizations_access_status_errors() ::
    operation_not_supported_exception() | 
    resource_not_found_exception().

-type get_provisioned_product_outputs_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type import_as_provisioned_product_errors() ::
    duplicate_resource_exception() | 
    invalid_parameters_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type list_accepted_portfolio_shares_errors() ::
    operation_not_supported_exception() | 
    invalid_parameters_exception().

-type list_budgets_for_resource_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type list_constraints_for_portfolio_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type list_launch_paths_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type list_organization_portfolio_access_errors() ::
    operation_not_supported_exception() | 
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type list_portfolio_access_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type list_portfolios_errors() ::
    invalid_parameters_exception().

-type list_portfolios_for_product_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type list_principals_for_portfolio_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type list_provisioned_product_plans_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type list_provisioning_artifacts_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type list_provisioning_artifacts_for_service_action_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type list_record_history_errors() ::
    invalid_parameters_exception().

-type list_resources_for_tag_option_errors() ::
    tag_option_not_migrated_exception() | 
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type list_service_actions_errors() ::
    invalid_parameters_exception().

-type list_service_actions_for_provisioning_artifact_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type list_stack_instances_for_provisioned_product_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type list_tag_options_errors() ::
    tag_option_not_migrated_exception() | 
    invalid_parameters_exception().

-type notify_provision_product_engine_workflow_result_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type notify_terminate_provisioned_product_engine_workflow_result_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type notify_update_provisioned_product_engine_workflow_result_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type provision_product_errors() ::
    duplicate_resource_exception() | 
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type reject_portfolio_share_errors() ::
    resource_not_found_exception().

-type scan_provisioned_products_errors() ::
    invalid_parameters_exception().

-type search_products_errors() ::
    invalid_parameters_exception().

-type search_products_as_admin_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type search_provisioned_products_errors() ::
    invalid_parameters_exception().

-type terminate_provisioned_product_errors() ::
    resource_not_found_exception().

-type update_constraint_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type update_portfolio_errors() ::
    limit_exceeded_exception() | 
    tag_option_not_migrated_exception() | 
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type update_portfolio_share_errors() ::
    operation_not_supported_exception() | 
    invalid_parameters_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type update_product_errors() ::
    tag_option_not_migrated_exception() | 
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type update_provisioned_product_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type update_provisioned_product_properties_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type update_provisioning_artifact_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type update_service_action_errors() ::
    invalid_parameters_exception() | 
    resource_not_found_exception().

-type update_tag_option_errors() ::
    duplicate_resource_exception() | 
    tag_option_not_migrated_exception() | 
    invalid_parameters_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts an offer to share the specified portfolio.
-spec accept_portfolio_share(aws_client:aws_client(), accept_portfolio_share_input()) ->
    {ok, accept_portfolio_share_output(), tuple()} |
    {error, any()} |
    {error, accept_portfolio_share_errors(), tuple()}.
accept_portfolio_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_portfolio_share(Client, Input, []).

-spec accept_portfolio_share(aws_client:aws_client(), accept_portfolio_share_input(), proplists:proplist()) ->
    {ok, accept_portfolio_share_output(), tuple()} |
    {error, any()} |
    {error, accept_portfolio_share_errors(), tuple()}.
accept_portfolio_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptPortfolioShare">>, Input, Options).

%% @doc Associates the specified budget with the specified resource.
-spec associate_budget_with_resource(aws_client:aws_client(), associate_budget_with_resource_input()) ->
    {ok, associate_budget_with_resource_output(), tuple()} |
    {error, any()} |
    {error, associate_budget_with_resource_errors(), tuple()}.
associate_budget_with_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_budget_with_resource(Client, Input, []).

-spec associate_budget_with_resource(aws_client:aws_client(), associate_budget_with_resource_input(), proplists:proplist()) ->
    {ok, associate_budget_with_resource_output(), tuple()} |
    {error, any()} |
    {error, associate_budget_with_resource_errors(), tuple()}.
associate_budget_with_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateBudgetWithResource">>, Input, Options).

%% @doc Associates the specified principal ARN with the specified portfolio.
%%
%% If you share the portfolio with principal name sharing enabled, the
%% `PrincipalARN' association is
%% included in the share.
%%
%% The `PortfolioID', `PrincipalARN', and `PrincipalType'
%% parameters are
%% required.
%%
%% You can associate a maximum of 10 Principals with a portfolio using
%% `PrincipalType' as `IAM_PATTERN'.
%%
%% When you associate a principal with portfolio, a potential privilege
%% escalation path may occur when that portfolio is
%% then shared with other accounts. For a user in a recipient account who is
%% not an Service Catalog Admin,
%% but still has the ability to create Principals (Users/Groups/Roles), that
%% user could create a role that matches a principal
%% name association for the portfolio. Although this user may not know which
%% principal names are associated through
%% Service Catalog, they may be able to guess the user. If this potential
%% escalation path is a concern, then
%% Service Catalog recommends using `PrincipalType' as `IAM'. With
%% this configuration,
%% the `PrincipalARN' must already exist in the recipient account before
%% it can be associated.
-spec associate_principal_with_portfolio(aws_client:aws_client(), associate_principal_with_portfolio_input()) ->
    {ok, associate_principal_with_portfolio_output(), tuple()} |
    {error, any()} |
    {error, associate_principal_with_portfolio_errors(), tuple()}.
associate_principal_with_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_principal_with_portfolio(Client, Input, []).

-spec associate_principal_with_portfolio(aws_client:aws_client(), associate_principal_with_portfolio_input(), proplists:proplist()) ->
    {ok, associate_principal_with_portfolio_output(), tuple()} |
    {error, any()} |
    {error, associate_principal_with_portfolio_errors(), tuple()}.
associate_principal_with_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociatePrincipalWithPortfolio">>, Input, Options).

%% @doc Associates the specified product with the specified portfolio.
%%
%% A delegated admin is authorized to invoke this command.
-spec associate_product_with_portfolio(aws_client:aws_client(), associate_product_with_portfolio_input()) ->
    {ok, associate_product_with_portfolio_output(), tuple()} |
    {error, any()} |
    {error, associate_product_with_portfolio_errors(), tuple()}.
associate_product_with_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_product_with_portfolio(Client, Input, []).

-spec associate_product_with_portfolio(aws_client:aws_client(), associate_product_with_portfolio_input(), proplists:proplist()) ->
    {ok, associate_product_with_portfolio_output(), tuple()} |
    {error, any()} |
    {error, associate_product_with_portfolio_errors(), tuple()}.
associate_product_with_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateProductWithPortfolio">>, Input, Options).

%% @doc Associates a self-service action with a provisioning artifact.
-spec associate_service_action_with_provisioning_artifact(aws_client:aws_client(), associate_service_action_with_provisioning_artifact_input()) ->
    {ok, associate_service_action_with_provisioning_artifact_output(), tuple()} |
    {error, any()} |
    {error, associate_service_action_with_provisioning_artifact_errors(), tuple()}.
associate_service_action_with_provisioning_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_service_action_with_provisioning_artifact(Client, Input, []).

-spec associate_service_action_with_provisioning_artifact(aws_client:aws_client(), associate_service_action_with_provisioning_artifact_input(), proplists:proplist()) ->
    {ok, associate_service_action_with_provisioning_artifact_output(), tuple()} |
    {error, any()} |
    {error, associate_service_action_with_provisioning_artifact_errors(), tuple()}.
associate_service_action_with_provisioning_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateServiceActionWithProvisioningArtifact">>, Input, Options).

%% @doc Associate the specified TagOption with the specified portfolio or
%% product.
-spec associate_tag_option_with_resource(aws_client:aws_client(), associate_tag_option_with_resource_input()) ->
    {ok, associate_tag_option_with_resource_output(), tuple()} |
    {error, any()} |
    {error, associate_tag_option_with_resource_errors(), tuple()}.
associate_tag_option_with_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_tag_option_with_resource(Client, Input, []).

-spec associate_tag_option_with_resource(aws_client:aws_client(), associate_tag_option_with_resource_input(), proplists:proplist()) ->
    {ok, associate_tag_option_with_resource_output(), tuple()} |
    {error, any()} |
    {error, associate_tag_option_with_resource_errors(), tuple()}.
associate_tag_option_with_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateTagOptionWithResource">>, Input, Options).

%% @doc Associates multiple self-service actions with provisioning artifacts.
-spec batch_associate_service_action_with_provisioning_artifact(aws_client:aws_client(), batch_associate_service_action_with_provisioning_artifact_input()) ->
    {ok, batch_associate_service_action_with_provisioning_artifact_output(), tuple()} |
    {error, any()} |
    {error, batch_associate_service_action_with_provisioning_artifact_errors(), tuple()}.
batch_associate_service_action_with_provisioning_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_associate_service_action_with_provisioning_artifact(Client, Input, []).

-spec batch_associate_service_action_with_provisioning_artifact(aws_client:aws_client(), batch_associate_service_action_with_provisioning_artifact_input(), proplists:proplist()) ->
    {ok, batch_associate_service_action_with_provisioning_artifact_output(), tuple()} |
    {error, any()} |
    {error, batch_associate_service_action_with_provisioning_artifact_errors(), tuple()}.
batch_associate_service_action_with_provisioning_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchAssociateServiceActionWithProvisioningArtifact">>, Input, Options).

%% @doc Disassociates a batch of self-service actions from the specified
%% provisioning artifact.
-spec batch_disassociate_service_action_from_provisioning_artifact(aws_client:aws_client(), batch_disassociate_service_action_from_provisioning_artifact_input()) ->
    {ok, batch_disassociate_service_action_from_provisioning_artifact_output(), tuple()} |
    {error, any()} |
    {error, batch_disassociate_service_action_from_provisioning_artifact_errors(), tuple()}.
batch_disassociate_service_action_from_provisioning_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_disassociate_service_action_from_provisioning_artifact(Client, Input, []).

-spec batch_disassociate_service_action_from_provisioning_artifact(aws_client:aws_client(), batch_disassociate_service_action_from_provisioning_artifact_input(), proplists:proplist()) ->
    {ok, batch_disassociate_service_action_from_provisioning_artifact_output(), tuple()} |
    {error, any()} |
    {error, batch_disassociate_service_action_from_provisioning_artifact_errors(), tuple()}.
batch_disassociate_service_action_from_provisioning_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDisassociateServiceActionFromProvisioningArtifact">>, Input, Options).

%% @doc Copies the specified source product to the specified target product
%% or a new
%% product.
%%
%% You can copy a product to the same account or another account. You can
%% copy a product
%% to the same Region or another Region. If you copy a product to another
%% account, you must
%% first share the product in a portfolio using `CreatePortfolioShare'.
%%
%% This operation is performed asynchronously. To track the progress of the
%% operation, use `DescribeCopyProductStatus'.
-spec copy_product(aws_client:aws_client(), copy_product_input()) ->
    {ok, copy_product_output(), tuple()} |
    {error, any()} |
    {error, copy_product_errors(), tuple()}.
copy_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_product(Client, Input, []).

-spec copy_product(aws_client:aws_client(), copy_product_input(), proplists:proplist()) ->
    {ok, copy_product_output(), tuple()} |
    {error, any()} |
    {error, copy_product_errors(), tuple()}.
copy_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyProduct">>, Input, Options).

%% @doc Creates a constraint.
%%
%% A delegated admin is authorized to invoke this command.
-spec create_constraint(aws_client:aws_client(), create_constraint_input()) ->
    {ok, create_constraint_output(), tuple()} |
    {error, any()} |
    {error, create_constraint_errors(), tuple()}.
create_constraint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_constraint(Client, Input, []).

-spec create_constraint(aws_client:aws_client(), create_constraint_input(), proplists:proplist()) ->
    {ok, create_constraint_output(), tuple()} |
    {error, any()} |
    {error, create_constraint_errors(), tuple()}.
create_constraint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConstraint">>, Input, Options).

%% @doc Creates a portfolio.
%%
%% A delegated admin is authorized to invoke this command.
-spec create_portfolio(aws_client:aws_client(), create_portfolio_input()) ->
    {ok, create_portfolio_output(), tuple()} |
    {error, any()} |
    {error, create_portfolio_errors(), tuple()}.
create_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_portfolio(Client, Input, []).

-spec create_portfolio(aws_client:aws_client(), create_portfolio_input(), proplists:proplist()) ->
    {ok, create_portfolio_output(), tuple()} |
    {error, any()} |
    {error, create_portfolio_errors(), tuple()}.
create_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePortfolio">>, Input, Options).

%% @doc Shares the specified portfolio with the specified account or
%% organization node.
%%
%% Shares to an organization node can only be created by the management
%% account of an
%% organization or by a delegated administrator. You can share portfolios to
%% an organization,
%% an organizational unit, or a specific account.
%%
%% Note that if a delegated admin is de-registered, they can no longer create
%% portfolio shares.
%%
%% `AWSOrganizationsAccess' must be enabled in order to create a
%% portfolio share to an organization node.
%%
%% You can't share a shared resource, including portfolios that contain a
%% shared product.
%%
%% If the portfolio share with the specified account or organization node
%% already exists, this action will have no effect
%% and will not return an error. To update an existing share, you must use
%% the ` UpdatePortfolioShare' API instead.
%%
%% When you associate a principal with portfolio, a potential privilege
%% escalation path may occur when that portfolio is
%% then shared with other accounts. For a user in a recipient account who is
%% not an Service Catalog Admin,
%% but still has the ability to create Principals (Users/Groups/Roles), that
%% user could create a role that matches a principal
%% name association for the portfolio. Although this user may not know which
%% principal names are associated through
%% Service Catalog, they may be able to guess the user. If this potential
%% escalation path is a concern, then
%% Service Catalog recommends using `PrincipalType' as `IAM'. With
%% this configuration,
%% the `PrincipalARN' must already exist in the recipient account before
%% it can be associated.
-spec create_portfolio_share(aws_client:aws_client(), create_portfolio_share_input()) ->
    {ok, create_portfolio_share_output(), tuple()} |
    {error, any()} |
    {error, create_portfolio_share_errors(), tuple()}.
create_portfolio_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_portfolio_share(Client, Input, []).

-spec create_portfolio_share(aws_client:aws_client(), create_portfolio_share_input(), proplists:proplist()) ->
    {ok, create_portfolio_share_output(), tuple()} |
    {error, any()} |
    {error, create_portfolio_share_errors(), tuple()}.
create_portfolio_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePortfolioShare">>, Input, Options).

%% @doc Creates a product.
%%
%% A delegated admin is authorized to invoke this command.
%%
%% The user or role that performs this operation must have the
%% `cloudformation:GetTemplate' IAM policy permission. This policy
%% permission is
%% required when using the `ImportFromPhysicalId' template source in the
%% information data section.
-spec create_product(aws_client:aws_client(), create_product_input()) ->
    {ok, create_product_output(), tuple()} |
    {error, any()} |
    {error, create_product_errors(), tuple()}.
create_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_product(Client, Input, []).

-spec create_product(aws_client:aws_client(), create_product_input(), proplists:proplist()) ->
    {ok, create_product_output(), tuple()} |
    {error, any()} |
    {error, create_product_errors(), tuple()}.
create_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProduct">>, Input, Options).

%% @doc Creates a plan.
%%
%% A plan includes the list of resources to be
%% created (when provisioning a new product) or modified (when updating a
%% provisioned product)
%% when the plan is executed.
%%
%% You can create one plan for each provisioned product. To create a plan for
%% an existing
%% provisioned product, the product status must be AVAILABLE or TAINTED.
%%
%% To view the resource changes in the change set, use
%% `DescribeProvisionedProductPlan'.
%% To create or modify the provisioned product, use
%% `ExecuteProvisionedProductPlan'.
-spec create_provisioned_product_plan(aws_client:aws_client(), create_provisioned_product_plan_input()) ->
    {ok, create_provisioned_product_plan_output(), tuple()} |
    {error, any()} |
    {error, create_provisioned_product_plan_errors(), tuple()}.
create_provisioned_product_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_provisioned_product_plan(Client, Input, []).

-spec create_provisioned_product_plan(aws_client:aws_client(), create_provisioned_product_plan_input(), proplists:proplist()) ->
    {ok, create_provisioned_product_plan_output(), tuple()} |
    {error, any()} |
    {error, create_provisioned_product_plan_errors(), tuple()}.
create_provisioned_product_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProvisionedProductPlan">>, Input, Options).

%% @doc Creates a provisioning artifact (also known as a version) for the
%% specified product.
%%
%% You cannot create a provisioning artifact for a product that was shared
%% with you.
%%
%% The user or role that performs this operation must have the
%% `cloudformation:GetTemplate'
%% IAM policy permission. This policy permission is required when using the
%% `ImportFromPhysicalId' template source in the information data
%% section.
-spec create_provisioning_artifact(aws_client:aws_client(), create_provisioning_artifact_input()) ->
    {ok, create_provisioning_artifact_output(), tuple()} |
    {error, any()} |
    {error, create_provisioning_artifact_errors(), tuple()}.
create_provisioning_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_provisioning_artifact(Client, Input, []).

-spec create_provisioning_artifact(aws_client:aws_client(), create_provisioning_artifact_input(), proplists:proplist()) ->
    {ok, create_provisioning_artifact_output(), tuple()} |
    {error, any()} |
    {error, create_provisioning_artifact_errors(), tuple()}.
create_provisioning_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProvisioningArtifact">>, Input, Options).

%% @doc Creates a self-service action.
-spec create_service_action(aws_client:aws_client(), create_service_action_input()) ->
    {ok, create_service_action_output(), tuple()} |
    {error, any()} |
    {error, create_service_action_errors(), tuple()}.
create_service_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_service_action(Client, Input, []).

-spec create_service_action(aws_client:aws_client(), create_service_action_input(), proplists:proplist()) ->
    {ok, create_service_action_output(), tuple()} |
    {error, any()} |
    {error, create_service_action_errors(), tuple()}.
create_service_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateServiceAction">>, Input, Options).

%% @doc Creates a TagOption.
-spec create_tag_option(aws_client:aws_client(), create_tag_option_input()) ->
    {ok, create_tag_option_output(), tuple()} |
    {error, any()} |
    {error, create_tag_option_errors(), tuple()}.
create_tag_option(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_tag_option(Client, Input, []).

-spec create_tag_option(aws_client:aws_client(), create_tag_option_input(), proplists:proplist()) ->
    {ok, create_tag_option_output(), tuple()} |
    {error, any()} |
    {error, create_tag_option_errors(), tuple()}.
create_tag_option(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTagOption">>, Input, Options).

%% @doc Deletes the specified constraint.
%%
%% A delegated admin is authorized to invoke this command.
-spec delete_constraint(aws_client:aws_client(), delete_constraint_input()) ->
    {ok, delete_constraint_output(), tuple()} |
    {error, any()} |
    {error, delete_constraint_errors(), tuple()}.
delete_constraint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_constraint(Client, Input, []).

-spec delete_constraint(aws_client:aws_client(), delete_constraint_input(), proplists:proplist()) ->
    {ok, delete_constraint_output(), tuple()} |
    {error, any()} |
    {error, delete_constraint_errors(), tuple()}.
delete_constraint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConstraint">>, Input, Options).

%% @doc Deletes the specified portfolio.
%%
%% You cannot delete a portfolio if it was shared with you or if it has
%% associated
%% products, users, constraints, or shared accounts.
%%
%% A delegated admin is authorized to invoke this command.
-spec delete_portfolio(aws_client:aws_client(), delete_portfolio_input()) ->
    {ok, delete_portfolio_output(), tuple()} |
    {error, any()} |
    {error, delete_portfolio_errors(), tuple()}.
delete_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_portfolio(Client, Input, []).

-spec delete_portfolio(aws_client:aws_client(), delete_portfolio_input(), proplists:proplist()) ->
    {ok, delete_portfolio_output(), tuple()} |
    {error, any()} |
    {error, delete_portfolio_errors(), tuple()}.
delete_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePortfolio">>, Input, Options).

%% @doc Stops sharing the specified portfolio with the specified account or
%% organization
%% node.
%%
%% Shares to an organization node can only be deleted by the management
%% account of an
%% organization or by a delegated administrator.
%%
%% Note that if a delegated admin is de-registered, portfolio shares created
%% from that account are removed.
-spec delete_portfolio_share(aws_client:aws_client(), delete_portfolio_share_input()) ->
    {ok, delete_portfolio_share_output(), tuple()} |
    {error, any()} |
    {error, delete_portfolio_share_errors(), tuple()}.
delete_portfolio_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_portfolio_share(Client, Input, []).

-spec delete_portfolio_share(aws_client:aws_client(), delete_portfolio_share_input(), proplists:proplist()) ->
    {ok, delete_portfolio_share_output(), tuple()} |
    {error, any()} |
    {error, delete_portfolio_share_errors(), tuple()}.
delete_portfolio_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePortfolioShare">>, Input, Options).

%% @doc Deletes the specified product.
%%
%% You cannot delete a product if it was shared with you or is associated
%% with a portfolio.
%%
%% A delegated admin is authorized to invoke this command.
-spec delete_product(aws_client:aws_client(), delete_product_input()) ->
    {ok, delete_product_output(), tuple()} |
    {error, any()} |
    {error, delete_product_errors(), tuple()}.
delete_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_product(Client, Input, []).

-spec delete_product(aws_client:aws_client(), delete_product_input(), proplists:proplist()) ->
    {ok, delete_product_output(), tuple()} |
    {error, any()} |
    {error, delete_product_errors(), tuple()}.
delete_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProduct">>, Input, Options).

%% @doc Deletes the specified plan.
-spec delete_provisioned_product_plan(aws_client:aws_client(), delete_provisioned_product_plan_input()) ->
    {ok, delete_provisioned_product_plan_output(), tuple()} |
    {error, any()} |
    {error, delete_provisioned_product_plan_errors(), tuple()}.
delete_provisioned_product_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_provisioned_product_plan(Client, Input, []).

-spec delete_provisioned_product_plan(aws_client:aws_client(), delete_provisioned_product_plan_input(), proplists:proplist()) ->
    {ok, delete_provisioned_product_plan_output(), tuple()} |
    {error, any()} |
    {error, delete_provisioned_product_plan_errors(), tuple()}.
delete_provisioned_product_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProvisionedProductPlan">>, Input, Options).

%% @doc Deletes the specified provisioning artifact (also known as a version)
%% for the specified product.
%%
%% You cannot delete a provisioning artifact associated with a product that
%% was shared with you.
%% You cannot delete the last provisioning artifact for a product, because a
%% product must have at
%% least one provisioning artifact.
-spec delete_provisioning_artifact(aws_client:aws_client(), delete_provisioning_artifact_input()) ->
    {ok, delete_provisioning_artifact_output(), tuple()} |
    {error, any()} |
    {error, delete_provisioning_artifact_errors(), tuple()}.
delete_provisioning_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_provisioning_artifact(Client, Input, []).

-spec delete_provisioning_artifact(aws_client:aws_client(), delete_provisioning_artifact_input(), proplists:proplist()) ->
    {ok, delete_provisioning_artifact_output(), tuple()} |
    {error, any()} |
    {error, delete_provisioning_artifact_errors(), tuple()}.
delete_provisioning_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProvisioningArtifact">>, Input, Options).

%% @doc Deletes a self-service action.
-spec delete_service_action(aws_client:aws_client(), delete_service_action_input()) ->
    {ok, delete_service_action_output(), tuple()} |
    {error, any()} |
    {error, delete_service_action_errors(), tuple()}.
delete_service_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service_action(Client, Input, []).

-spec delete_service_action(aws_client:aws_client(), delete_service_action_input(), proplists:proplist()) ->
    {ok, delete_service_action_output(), tuple()} |
    {error, any()} |
    {error, delete_service_action_errors(), tuple()}.
delete_service_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServiceAction">>, Input, Options).

%% @doc Deletes the specified TagOption.
%%
%% You cannot delete a TagOption if it is associated with a product or
%% portfolio.
-spec delete_tag_option(aws_client:aws_client(), delete_tag_option_input()) ->
    {ok, delete_tag_option_output(), tuple()} |
    {error, any()} |
    {error, delete_tag_option_errors(), tuple()}.
delete_tag_option(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tag_option(Client, Input, []).

-spec delete_tag_option(aws_client:aws_client(), delete_tag_option_input(), proplists:proplist()) ->
    {ok, delete_tag_option_output(), tuple()} |
    {error, any()} |
    {error, delete_tag_option_errors(), tuple()}.
delete_tag_option(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTagOption">>, Input, Options).

%% @doc Gets information about the specified constraint.
-spec describe_constraint(aws_client:aws_client(), describe_constraint_input()) ->
    {ok, describe_constraint_output(), tuple()} |
    {error, any()} |
    {error, describe_constraint_errors(), tuple()}.
describe_constraint(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_constraint(Client, Input, []).

-spec describe_constraint(aws_client:aws_client(), describe_constraint_input(), proplists:proplist()) ->
    {ok, describe_constraint_output(), tuple()} |
    {error, any()} |
    {error, describe_constraint_errors(), tuple()}.
describe_constraint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConstraint">>, Input, Options).

%% @doc Gets the status of the specified copy product operation.
-spec describe_copy_product_status(aws_client:aws_client(), describe_copy_product_status_input()) ->
    {ok, describe_copy_product_status_output(), tuple()} |
    {error, any()} |
    {error, describe_copy_product_status_errors(), tuple()}.
describe_copy_product_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_copy_product_status(Client, Input, []).

-spec describe_copy_product_status(aws_client:aws_client(), describe_copy_product_status_input(), proplists:proplist()) ->
    {ok, describe_copy_product_status_output(), tuple()} |
    {error, any()} |
    {error, describe_copy_product_status_errors(), tuple()}.
describe_copy_product_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCopyProductStatus">>, Input, Options).

%% @doc Gets information about the specified portfolio.
%%
%% A delegated admin is authorized to invoke this command.
-spec describe_portfolio(aws_client:aws_client(), describe_portfolio_input()) ->
    {ok, describe_portfolio_output(), tuple()} |
    {error, any()} |
    {error, describe_portfolio_errors(), tuple()}.
describe_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_portfolio(Client, Input, []).

-spec describe_portfolio(aws_client:aws_client(), describe_portfolio_input(), proplists:proplist()) ->
    {ok, describe_portfolio_output(), tuple()} |
    {error, any()} |
    {error, describe_portfolio_errors(), tuple()}.
describe_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePortfolio">>, Input, Options).

%% @doc Gets the status of the specified portfolio share operation.
%%
%% This API can only be called
%% by the management account in the organization or by a delegated admin.
-spec describe_portfolio_share_status(aws_client:aws_client(), describe_portfolio_share_status_input()) ->
    {ok, describe_portfolio_share_status_output(), tuple()} |
    {error, any()} |
    {error, describe_portfolio_share_status_errors(), tuple()}.
describe_portfolio_share_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_portfolio_share_status(Client, Input, []).

-spec describe_portfolio_share_status(aws_client:aws_client(), describe_portfolio_share_status_input(), proplists:proplist()) ->
    {ok, describe_portfolio_share_status_output(), tuple()} |
    {error, any()} |
    {error, describe_portfolio_share_status_errors(), tuple()}.
describe_portfolio_share_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePortfolioShareStatus">>, Input, Options).

%% @doc Returns a summary of each of the portfolio shares that were created
%% for the specified portfolio.
%%
%% You can use this API to determine which accounts or organizational nodes
%% this
%% portfolio have been shared, whether the recipient entity has imported the
%% share, and
%% whether TagOptions are included with the share.
%%
%% The `PortfolioId' and `Type' parameters are both required.
-spec describe_portfolio_shares(aws_client:aws_client(), describe_portfolio_shares_input()) ->
    {ok, describe_portfolio_shares_output(), tuple()} |
    {error, any()} |
    {error, describe_portfolio_shares_errors(), tuple()}.
describe_portfolio_shares(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_portfolio_shares(Client, Input, []).

-spec describe_portfolio_shares(aws_client:aws_client(), describe_portfolio_shares_input(), proplists:proplist()) ->
    {ok, describe_portfolio_shares_output(), tuple()} |
    {error, any()} |
    {error, describe_portfolio_shares_errors(), tuple()}.
describe_portfolio_shares(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePortfolioShares">>, Input, Options).

%% @doc Gets information about the specified product.
%%
%% Running this operation
%% with administrator access
%% results
%% in a failure.
%% `DescribeProductAsAdmin' should be used instead.
-spec describe_product(aws_client:aws_client(), describe_product_input()) ->
    {ok, describe_product_output(), tuple()} |
    {error, any()} |
    {error, describe_product_errors(), tuple()}.
describe_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_product(Client, Input, []).

-spec describe_product(aws_client:aws_client(), describe_product_input(), proplists:proplist()) ->
    {ok, describe_product_output(), tuple()} |
    {error, any()} |
    {error, describe_product_errors(), tuple()}.
describe_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProduct">>, Input, Options).

%% @doc Gets information about the specified product.
%%
%% This operation is run with administrator access.
-spec describe_product_as_admin(aws_client:aws_client(), describe_product_as_admin_input()) ->
    {ok, describe_product_as_admin_output(), tuple()} |
    {error, any()} |
    {error, describe_product_as_admin_errors(), tuple()}.
describe_product_as_admin(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_product_as_admin(Client, Input, []).

-spec describe_product_as_admin(aws_client:aws_client(), describe_product_as_admin_input(), proplists:proplist()) ->
    {ok, describe_product_as_admin_output(), tuple()} |
    {error, any()} |
    {error, describe_product_as_admin_errors(), tuple()}.
describe_product_as_admin(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProductAsAdmin">>, Input, Options).

%% @doc Gets information about the specified product.
-spec describe_product_view(aws_client:aws_client(), describe_product_view_input()) ->
    {ok, describe_product_view_output(), tuple()} |
    {error, any()} |
    {error, describe_product_view_errors(), tuple()}.
describe_product_view(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_product_view(Client, Input, []).

-spec describe_product_view(aws_client:aws_client(), describe_product_view_input(), proplists:proplist()) ->
    {ok, describe_product_view_output(), tuple()} |
    {error, any()} |
    {error, describe_product_view_errors(), tuple()}.
describe_product_view(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProductView">>, Input, Options).

%% @doc Gets information about the specified provisioned product.
-spec describe_provisioned_product(aws_client:aws_client(), describe_provisioned_product_input()) ->
    {ok, describe_provisioned_product_output(), tuple()} |
    {error, any()} |
    {error, describe_provisioned_product_errors(), tuple()}.
describe_provisioned_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_provisioned_product(Client, Input, []).

-spec describe_provisioned_product(aws_client:aws_client(), describe_provisioned_product_input(), proplists:proplist()) ->
    {ok, describe_provisioned_product_output(), tuple()} |
    {error, any()} |
    {error, describe_provisioned_product_errors(), tuple()}.
describe_provisioned_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProvisionedProduct">>, Input, Options).

%% @doc Gets information about the resource changes for the specified plan.
-spec describe_provisioned_product_plan(aws_client:aws_client(), describe_provisioned_product_plan_input()) ->
    {ok, describe_provisioned_product_plan_output(), tuple()} |
    {error, any()} |
    {error, describe_provisioned_product_plan_errors(), tuple()}.
describe_provisioned_product_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_provisioned_product_plan(Client, Input, []).

-spec describe_provisioned_product_plan(aws_client:aws_client(), describe_provisioned_product_plan_input(), proplists:proplist()) ->
    {ok, describe_provisioned_product_plan_output(), tuple()} |
    {error, any()} |
    {error, describe_provisioned_product_plan_errors(), tuple()}.
describe_provisioned_product_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProvisionedProductPlan">>, Input, Options).

%% @doc Gets information about the specified provisioning artifact (also
%% known as a version) for the specified product.
-spec describe_provisioning_artifact(aws_client:aws_client(), describe_provisioning_artifact_input()) ->
    {ok, describe_provisioning_artifact_output(), tuple()} |
    {error, any()} |
    {error, describe_provisioning_artifact_errors(), tuple()}.
describe_provisioning_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_provisioning_artifact(Client, Input, []).

-spec describe_provisioning_artifact(aws_client:aws_client(), describe_provisioning_artifact_input(), proplists:proplist()) ->
    {ok, describe_provisioning_artifact_output(), tuple()} |
    {error, any()} |
    {error, describe_provisioning_artifact_errors(), tuple()}.
describe_provisioning_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProvisioningArtifact">>, Input, Options).

%% @doc Gets information about the configuration required to provision the
%% specified product using
%% the specified provisioning artifact.
%%
%% If the output contains a TagOption key with an empty list of values, there
%% is a
%% TagOption conflict for that key. The end user cannot take action to fix
%% the conflict, and
%% launch is not blocked. In subsequent calls to `ProvisionProduct',
%% do not include conflicted TagOption keys as tags, or this causes the error
%% &quot;Parameter validation failed: Missing required parameter in
%% Tags[N]:Value&quot;.
%% Tag the provisioned product with the value
%% `sc-tagoption-conflict-portfolioId-productId'.
-spec describe_provisioning_parameters(aws_client:aws_client(), describe_provisioning_parameters_input()) ->
    {ok, describe_provisioning_parameters_output(), tuple()} |
    {error, any()} |
    {error, describe_provisioning_parameters_errors(), tuple()}.
describe_provisioning_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_provisioning_parameters(Client, Input, []).

-spec describe_provisioning_parameters(aws_client:aws_client(), describe_provisioning_parameters_input(), proplists:proplist()) ->
    {ok, describe_provisioning_parameters_output(), tuple()} |
    {error, any()} |
    {error, describe_provisioning_parameters_errors(), tuple()}.
describe_provisioning_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProvisioningParameters">>, Input, Options).

%% @doc Gets information about the specified request operation.
%%
%% Use this operation after calling a request operation (for example,
%% `ProvisionProduct',
%% `TerminateProvisionedProduct', or `UpdateProvisionedProduct').
%%
%% If a provisioned product was transferred to a new owner using
%% `UpdateProvisionedProductProperties', the new owner
%% will be able to describe all past records for that product. The previous
%% owner will no longer be able to describe the records, but will be able to
%% use `ListRecordHistory' to see the product's history from when he
%% was the owner.
-spec describe_record(aws_client:aws_client(), describe_record_input()) ->
    {ok, describe_record_output(), tuple()} |
    {error, any()} |
    {error, describe_record_errors(), tuple()}.
describe_record(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_record(Client, Input, []).

-spec describe_record(aws_client:aws_client(), describe_record_input(), proplists:proplist()) ->
    {ok, describe_record_output(), tuple()} |
    {error, any()} |
    {error, describe_record_errors(), tuple()}.
describe_record(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRecord">>, Input, Options).

%% @doc Describes a self-service action.
-spec describe_service_action(aws_client:aws_client(), describe_service_action_input()) ->
    {ok, describe_service_action_output(), tuple()} |
    {error, any()} |
    {error, describe_service_action_errors(), tuple()}.
describe_service_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_service_action(Client, Input, []).

-spec describe_service_action(aws_client:aws_client(), describe_service_action_input(), proplists:proplist()) ->
    {ok, describe_service_action_output(), tuple()} |
    {error, any()} |
    {error, describe_service_action_errors(), tuple()}.
describe_service_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServiceAction">>, Input, Options).

%% @doc Finds the default parameters for a specific self-service action on a
%% specific provisioned product and returns a map of the results to the user.
-spec describe_service_action_execution_parameters(aws_client:aws_client(), describe_service_action_execution_parameters_input()) ->
    {ok, describe_service_action_execution_parameters_output(), tuple()} |
    {error, any()} |
    {error, describe_service_action_execution_parameters_errors(), tuple()}.
describe_service_action_execution_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_service_action_execution_parameters(Client, Input, []).

-spec describe_service_action_execution_parameters(aws_client:aws_client(), describe_service_action_execution_parameters_input(), proplists:proplist()) ->
    {ok, describe_service_action_execution_parameters_output(), tuple()} |
    {error, any()} |
    {error, describe_service_action_execution_parameters_errors(), tuple()}.
describe_service_action_execution_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServiceActionExecutionParameters">>, Input, Options).

%% @doc Gets information about the specified TagOption.
-spec describe_tag_option(aws_client:aws_client(), describe_tag_option_input()) ->
    {ok, describe_tag_option_output(), tuple()} |
    {error, any()} |
    {error, describe_tag_option_errors(), tuple()}.
describe_tag_option(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tag_option(Client, Input, []).

-spec describe_tag_option(aws_client:aws_client(), describe_tag_option_input(), proplists:proplist()) ->
    {ok, describe_tag_option_output(), tuple()} |
    {error, any()} |
    {error, describe_tag_option_errors(), tuple()}.
describe_tag_option(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTagOption">>, Input, Options).

%% @doc Disable portfolio sharing through the Organizations service.
%%
%% This command will not
%% delete your current shares, but prevents you from creating new shares
%% throughout your
%% organization. Current shares are not kept in sync with your organization
%% structure if the structure
%% changes after calling this API. Only the management account in the
%% organization can call this API.
%%
%% You cannot call this API if there are active delegated administrators in
%% the organization.
%%
%% Note that a delegated administrator is not authorized to invoke
%% `DisableAWSOrganizationsAccess'.
%%
%% If you share an Service Catalog portfolio in an organization within
%% Organizations, and then disable Organizations access for Service Catalog,
%% the portfolio access permissions will not sync with the latest changes to
%% the organization
%% structure. Specifically, accounts that you removed from the organization
%% after
%% disabling Service Catalog access will retain access to the previously
%% shared portfolio.
-spec disable_aws_organizations_access(aws_client:aws_client(), disable_aws_organizations_access_input()) ->
    {ok, disable_aws_organizations_access_output(), tuple()} |
    {error, any()} |
    {error, disable_aws_organizations_access_errors(), tuple()}.
disable_aws_organizations_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_aws_organizations_access(Client, Input, []).

-spec disable_aws_organizations_access(aws_client:aws_client(), disable_aws_organizations_access_input(), proplists:proplist()) ->
    {ok, disable_aws_organizations_access_output(), tuple()} |
    {error, any()} |
    {error, disable_aws_organizations_access_errors(), tuple()}.
disable_aws_organizations_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableAWSOrganizationsAccess">>, Input, Options).

%% @doc Disassociates the specified budget from the specified resource.
-spec disassociate_budget_from_resource(aws_client:aws_client(), disassociate_budget_from_resource_input()) ->
    {ok, disassociate_budget_from_resource_output(), tuple()} |
    {error, any()} |
    {error, disassociate_budget_from_resource_errors(), tuple()}.
disassociate_budget_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_budget_from_resource(Client, Input, []).

-spec disassociate_budget_from_resource(aws_client:aws_client(), disassociate_budget_from_resource_input(), proplists:proplist()) ->
    {ok, disassociate_budget_from_resource_output(), tuple()} |
    {error, any()} |
    {error, disassociate_budget_from_resource_errors(), tuple()}.
disassociate_budget_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateBudgetFromResource">>, Input, Options).

%% @doc Disassociates a previously associated principal ARN from a specified
%% portfolio.
%%
%% The `PrincipalType' and `PrincipalARN' must match the
%% `AssociatePrincipalWithPortfolio' call request details. For example,
%% to disassociate an association created with a `PrincipalARN' of
%% `PrincipalType'
%% IAM you must use the `PrincipalType' IAM when calling
%% `DisassociatePrincipalFromPortfolio'.
%%
%% For portfolios that have been shared with principal name sharing enabled:
%% after disassociating a principal,
%% share recipient accounts will no longer be able to provision products in
%% this portfolio using a role matching the name
%% of the associated principal.
%%
%% For more information, review associate-principal-with-portfolio:
%% https://docs.aws.amazon.com/cli/latest/reference/servicecatalog/associate-principal-with-portfolio.html#options
%% in the Amazon Web Services CLI Command Reference.
%%
%% If you disassociate a principal from a portfolio, with PrincipalType as
%% `IAM', the same principal will
%% still have access to the portfolio if it matches one of the associated
%% principals of type `IAM_PATTERN'.
%% To fully remove access for a principal, verify all the associated
%% Principals of type `IAM_PATTERN',
%% and then ensure you disassociate any `IAM_PATTERN' principals that
%% match the principal
%% whose access you are removing.
-spec disassociate_principal_from_portfolio(aws_client:aws_client(), disassociate_principal_from_portfolio_input()) ->
    {ok, disassociate_principal_from_portfolio_output(), tuple()} |
    {error, any()} |
    {error, disassociate_principal_from_portfolio_errors(), tuple()}.
disassociate_principal_from_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_principal_from_portfolio(Client, Input, []).

-spec disassociate_principal_from_portfolio(aws_client:aws_client(), disassociate_principal_from_portfolio_input(), proplists:proplist()) ->
    {ok, disassociate_principal_from_portfolio_output(), tuple()} |
    {error, any()} |
    {error, disassociate_principal_from_portfolio_errors(), tuple()}.
disassociate_principal_from_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociatePrincipalFromPortfolio">>, Input, Options).

%% @doc Disassociates the specified product from the specified portfolio.
%%
%% A delegated admin is authorized to invoke this command.
-spec disassociate_product_from_portfolio(aws_client:aws_client(), disassociate_product_from_portfolio_input()) ->
    {ok, disassociate_product_from_portfolio_output(), tuple()} |
    {error, any()} |
    {error, disassociate_product_from_portfolio_errors(), tuple()}.
disassociate_product_from_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_product_from_portfolio(Client, Input, []).

-spec disassociate_product_from_portfolio(aws_client:aws_client(), disassociate_product_from_portfolio_input(), proplists:proplist()) ->
    {ok, disassociate_product_from_portfolio_output(), tuple()} |
    {error, any()} |
    {error, disassociate_product_from_portfolio_errors(), tuple()}.
disassociate_product_from_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateProductFromPortfolio">>, Input, Options).

%% @doc Disassociates the specified self-service action association from the
%% specified provisioning artifact.
-spec disassociate_service_action_from_provisioning_artifact(aws_client:aws_client(), disassociate_service_action_from_provisioning_artifact_input()) ->
    {ok, disassociate_service_action_from_provisioning_artifact_output(), tuple()} |
    {error, any()} |
    {error, disassociate_service_action_from_provisioning_artifact_errors(), tuple()}.
disassociate_service_action_from_provisioning_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_service_action_from_provisioning_artifact(Client, Input, []).

-spec disassociate_service_action_from_provisioning_artifact(aws_client:aws_client(), disassociate_service_action_from_provisioning_artifact_input(), proplists:proplist()) ->
    {ok, disassociate_service_action_from_provisioning_artifact_output(), tuple()} |
    {error, any()} |
    {error, disassociate_service_action_from_provisioning_artifact_errors(), tuple()}.
disassociate_service_action_from_provisioning_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateServiceActionFromProvisioningArtifact">>, Input, Options).

%% @doc Disassociates the specified TagOption from the specified resource.
-spec disassociate_tag_option_from_resource(aws_client:aws_client(), disassociate_tag_option_from_resource_input()) ->
    {ok, disassociate_tag_option_from_resource_output(), tuple()} |
    {error, any()} |
    {error, disassociate_tag_option_from_resource_errors(), tuple()}.
disassociate_tag_option_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_tag_option_from_resource(Client, Input, []).

-spec disassociate_tag_option_from_resource(aws_client:aws_client(), disassociate_tag_option_from_resource_input(), proplists:proplist()) ->
    {ok, disassociate_tag_option_from_resource_output(), tuple()} |
    {error, any()} |
    {error, disassociate_tag_option_from_resource_errors(), tuple()}.
disassociate_tag_option_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateTagOptionFromResource">>, Input, Options).

%% @doc Enable portfolio sharing feature through Organizations.
%%
%% This API will allow Service Catalog to receive updates on your
%% organization in order to sync your shares with the
%% current structure. This API can only be called by the management account
%% in the organization.
%%
%% When you call this API, Service Catalog calls
%% `organizations:EnableAWSServiceAccess' on your behalf so that your
%% shares stay in sync with any changes in your Organizations structure.
%%
%% Note that a delegated administrator is not authorized to invoke
%% `EnableAWSOrganizationsAccess'.
%%
%% If you have previously disabled Organizations access for Service Catalog,
%% and then
%% enable access again, the portfolio access permissions might not sync with
%% the latest changes to
%% the organization structure. Specifically, accounts that you removed from
%% the organization after
%% disabling Service Catalog access, and before you enabled access again, can
%% retain access to the
%% previously shared portfolio. As a result, an account that has been removed
%% from the organization
%% might still be able to create or manage Amazon Web Services resources when
%% it is no longer
%% authorized to do so. Amazon Web Services is working to resolve this issue.
-spec enable_aws_organizations_access(aws_client:aws_client(), enable_aws_organizations_access_input()) ->
    {ok, enable_aws_organizations_access_output(), tuple()} |
    {error, any()} |
    {error, enable_aws_organizations_access_errors(), tuple()}.
enable_aws_organizations_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_aws_organizations_access(Client, Input, []).

-spec enable_aws_organizations_access(aws_client:aws_client(), enable_aws_organizations_access_input(), proplists:proplist()) ->
    {ok, enable_aws_organizations_access_output(), tuple()} |
    {error, any()} |
    {error, enable_aws_organizations_access_errors(), tuple()}.
enable_aws_organizations_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableAWSOrganizationsAccess">>, Input, Options).

%% @doc Provisions or modifies a product based on the resource changes for
%% the specified plan.
-spec execute_provisioned_product_plan(aws_client:aws_client(), execute_provisioned_product_plan_input()) ->
    {ok, execute_provisioned_product_plan_output(), tuple()} |
    {error, any()} |
    {error, execute_provisioned_product_plan_errors(), tuple()}.
execute_provisioned_product_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    execute_provisioned_product_plan(Client, Input, []).

-spec execute_provisioned_product_plan(aws_client:aws_client(), execute_provisioned_product_plan_input(), proplists:proplist()) ->
    {ok, execute_provisioned_product_plan_output(), tuple()} |
    {error, any()} |
    {error, execute_provisioned_product_plan_errors(), tuple()}.
execute_provisioned_product_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExecuteProvisionedProductPlan">>, Input, Options).

%% @doc Executes a self-service action against a provisioned product.
-spec execute_provisioned_product_service_action(aws_client:aws_client(), execute_provisioned_product_service_action_input()) ->
    {ok, execute_provisioned_product_service_action_output(), tuple()} |
    {error, any()} |
    {error, execute_provisioned_product_service_action_errors(), tuple()}.
execute_provisioned_product_service_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    execute_provisioned_product_service_action(Client, Input, []).

-spec execute_provisioned_product_service_action(aws_client:aws_client(), execute_provisioned_product_service_action_input(), proplists:proplist()) ->
    {ok, execute_provisioned_product_service_action_output(), tuple()} |
    {error, any()} |
    {error, execute_provisioned_product_service_action_errors(), tuple()}.
execute_provisioned_product_service_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExecuteProvisionedProductServiceAction">>, Input, Options).

%% @doc Get the Access Status for Organizations portfolio share feature.
%%
%% This API can only be
%% called by the management account in the organization or by a delegated
%% admin.
-spec get_aws_organizations_access_status(aws_client:aws_client(), get_aws_organizations_access_status_input()) ->
    {ok, get_aws_organizations_access_status_output(), tuple()} |
    {error, any()} |
    {error, get_aws_organizations_access_status_errors(), tuple()}.
get_aws_organizations_access_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_aws_organizations_access_status(Client, Input, []).

-spec get_aws_organizations_access_status(aws_client:aws_client(), get_aws_organizations_access_status_input(), proplists:proplist()) ->
    {ok, get_aws_organizations_access_status_output(), tuple()} |
    {error, any()} |
    {error, get_aws_organizations_access_status_errors(), tuple()}.
get_aws_organizations_access_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAWSOrganizationsAccessStatus">>, Input, Options).

%% @doc This API takes either a `ProvisonedProductId' or a
%% `ProvisionedProductName', along with a list of one or more output
%% keys, and responds with the key/value pairs of those outputs.
-spec get_provisioned_product_outputs(aws_client:aws_client(), get_provisioned_product_outputs_input()) ->
    {ok, get_provisioned_product_outputs_output(), tuple()} |
    {error, any()} |
    {error, get_provisioned_product_outputs_errors(), tuple()}.
get_provisioned_product_outputs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_provisioned_product_outputs(Client, Input, []).

-spec get_provisioned_product_outputs(aws_client:aws_client(), get_provisioned_product_outputs_input(), proplists:proplist()) ->
    {ok, get_provisioned_product_outputs_output(), tuple()} |
    {error, any()} |
    {error, get_provisioned_product_outputs_errors(), tuple()}.
get_provisioned_product_outputs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProvisionedProductOutputs">>, Input, Options).

%% @doc
%% Requests the import of a resource as an Service Catalog provisioned
%% product
%% that is associated to an Service Catalog product and provisioning
%% artifact.
%%
%% Once imported, all supported governance actions are supported on the
%% provisioned product.
%%
%% Resource import only supports CloudFormation stack ARNs. CloudFormation
%% StackSets,
%% and non-root nested stacks, are not supported.
%%
%% The CloudFormation stack must have one
%% of the following statuses
%% to be imported: `CREATE_COMPLETE', `UPDATE_COMPLETE',
%% `UPDATE_ROLLBACK_COMPLETE', `IMPORT_COMPLETE', and
%% `IMPORT_ROLLBACK_COMPLETE'.
%%
%% Import of the resource requires that the CloudFormation stack template
%% matches
%% the associated Service Catalog product provisioning artifact.
%%
%% When you import an existing CloudFormation stack
%% into a portfolio, Service Catalog does not apply the product's
%% associated constraints
%% during the import process. Service Catalog applies the constraints
%% after you call `UpdateProvisionedProduct' for the provisioned product.
%%
%% The user or role that performs this operation must have the
%% `cloudformation:GetTemplate'
%% and `cloudformation:DescribeStacks' IAM policy permissions.
%%
%% You can only import one provisioned product at a time. The product's
%% CloudFormation stack must have the
%% `IMPORT_COMPLETE' status before you import another.
-spec import_as_provisioned_product(aws_client:aws_client(), import_as_provisioned_product_input()) ->
    {ok, import_as_provisioned_product_output(), tuple()} |
    {error, any()} |
    {error, import_as_provisioned_product_errors(), tuple()}.
import_as_provisioned_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_as_provisioned_product(Client, Input, []).

-spec import_as_provisioned_product(aws_client:aws_client(), import_as_provisioned_product_input(), proplists:proplist()) ->
    {ok, import_as_provisioned_product_output(), tuple()} |
    {error, any()} |
    {error, import_as_provisioned_product_errors(), tuple()}.
import_as_provisioned_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportAsProvisionedProduct">>, Input, Options).

%% @doc Lists all imported portfolios for which account-to-account shares
%% were accepted by
%% this account.
%%
%% By specifying the `PortfolioShareType', you can list portfolios for
%% which
%% organizational shares were accepted by this account.
-spec list_accepted_portfolio_shares(aws_client:aws_client(), list_accepted_portfolio_shares_input()) ->
    {ok, list_accepted_portfolio_shares_output(), tuple()} |
    {error, any()} |
    {error, list_accepted_portfolio_shares_errors(), tuple()}.
list_accepted_portfolio_shares(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_accepted_portfolio_shares(Client, Input, []).

-spec list_accepted_portfolio_shares(aws_client:aws_client(), list_accepted_portfolio_shares_input(), proplists:proplist()) ->
    {ok, list_accepted_portfolio_shares_output(), tuple()} |
    {error, any()} |
    {error, list_accepted_portfolio_shares_errors(), tuple()}.
list_accepted_portfolio_shares(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAcceptedPortfolioShares">>, Input, Options).

%% @doc Lists all the budgets associated to the specified resource.
-spec list_budgets_for_resource(aws_client:aws_client(), list_budgets_for_resource_input()) ->
    {ok, list_budgets_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_budgets_for_resource_errors(), tuple()}.
list_budgets_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_budgets_for_resource(Client, Input, []).

-spec list_budgets_for_resource(aws_client:aws_client(), list_budgets_for_resource_input(), proplists:proplist()) ->
    {ok, list_budgets_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_budgets_for_resource_errors(), tuple()}.
list_budgets_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBudgetsForResource">>, Input, Options).

%% @doc Lists the constraints for the specified portfolio and product.
-spec list_constraints_for_portfolio(aws_client:aws_client(), list_constraints_for_portfolio_input()) ->
    {ok, list_constraints_for_portfolio_output(), tuple()} |
    {error, any()} |
    {error, list_constraints_for_portfolio_errors(), tuple()}.
list_constraints_for_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_constraints_for_portfolio(Client, Input, []).

-spec list_constraints_for_portfolio(aws_client:aws_client(), list_constraints_for_portfolio_input(), proplists:proplist()) ->
    {ok, list_constraints_for_portfolio_output(), tuple()} |
    {error, any()} |
    {error, list_constraints_for_portfolio_errors(), tuple()}.
list_constraints_for_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConstraintsForPortfolio">>, Input, Options).

%% @doc
%% Lists the paths
%% to the specified product.
%%
%% A path describes
%% how the user
%% gets access
%% to a specified product
%% and is necessary
%% when provisioning a product.
%% A path also determines the constraints
%% that are put on a product.
%% A path is dependent
%% on a specific product, porfolio, and principal.
%%
%% When provisioning a product
%% that's been added
%% to a portfolio,
%% you must grant your user, group, or role access
%% to the portfolio.
%% For more information,
%% see Granting users access:
%% https://docs.aws.amazon.com/servicecatalog/latest/adminguide/catalogs_portfolios_users.html
%% in the Service Catalog User Guide.
-spec list_launch_paths(aws_client:aws_client(), list_launch_paths_input()) ->
    {ok, list_launch_paths_output(), tuple()} |
    {error, any()} |
    {error, list_launch_paths_errors(), tuple()}.
list_launch_paths(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_launch_paths(Client, Input, []).

-spec list_launch_paths(aws_client:aws_client(), list_launch_paths_input(), proplists:proplist()) ->
    {ok, list_launch_paths_output(), tuple()} |
    {error, any()} |
    {error, list_launch_paths_errors(), tuple()}.
list_launch_paths(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLaunchPaths">>, Input, Options).

%% @doc Lists the organization nodes that have access to the specified
%% portfolio.
%%
%% This API can
%% only be called by the management account in the organization or by a
%% delegated
%% admin.
%%
%% If a delegated admin is de-registered, they can no longer perform this
%% operation.
-spec list_organization_portfolio_access(aws_client:aws_client(), list_organization_portfolio_access_input()) ->
    {ok, list_organization_portfolio_access_output(), tuple()} |
    {error, any()} |
    {error, list_organization_portfolio_access_errors(), tuple()}.
list_organization_portfolio_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_organization_portfolio_access(Client, Input, []).

-spec list_organization_portfolio_access(aws_client:aws_client(), list_organization_portfolio_access_input(), proplists:proplist()) ->
    {ok, list_organization_portfolio_access_output(), tuple()} |
    {error, any()} |
    {error, list_organization_portfolio_access_errors(), tuple()}.
list_organization_portfolio_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOrganizationPortfolioAccess">>, Input, Options).

%% @doc Lists the account IDs that have access to the specified portfolio.
%%
%% A delegated admin can list the accounts that have access to the shared
%% portfolio. Note that if a delegated admin is de-registered, they can no
%% longer perform this operation.
-spec list_portfolio_access(aws_client:aws_client(), list_portfolio_access_input()) ->
    {ok, list_portfolio_access_output(), tuple()} |
    {error, any()} |
    {error, list_portfolio_access_errors(), tuple()}.
list_portfolio_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_portfolio_access(Client, Input, []).

-spec list_portfolio_access(aws_client:aws_client(), list_portfolio_access_input(), proplists:proplist()) ->
    {ok, list_portfolio_access_output(), tuple()} |
    {error, any()} |
    {error, list_portfolio_access_errors(), tuple()}.
list_portfolio_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPortfolioAccess">>, Input, Options).

%% @doc Lists all portfolios in the catalog.
-spec list_portfolios(aws_client:aws_client(), list_portfolios_input()) ->
    {ok, list_portfolios_output(), tuple()} |
    {error, any()} |
    {error, list_portfolios_errors(), tuple()}.
list_portfolios(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_portfolios(Client, Input, []).

-spec list_portfolios(aws_client:aws_client(), list_portfolios_input(), proplists:proplist()) ->
    {ok, list_portfolios_output(), tuple()} |
    {error, any()} |
    {error, list_portfolios_errors(), tuple()}.
list_portfolios(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPortfolios">>, Input, Options).

%% @doc Lists all portfolios that the specified product is associated with.
-spec list_portfolios_for_product(aws_client:aws_client(), list_portfolios_for_product_input()) ->
    {ok, list_portfolios_for_product_output(), tuple()} |
    {error, any()} |
    {error, list_portfolios_for_product_errors(), tuple()}.
list_portfolios_for_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_portfolios_for_product(Client, Input, []).

-spec list_portfolios_for_product(aws_client:aws_client(), list_portfolios_for_product_input(), proplists:proplist()) ->
    {ok, list_portfolios_for_product_output(), tuple()} |
    {error, any()} |
    {error, list_portfolios_for_product_errors(), tuple()}.
list_portfolios_for_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPortfoliosForProduct">>, Input, Options).

%% @doc Lists all `PrincipalARN's and corresponding `PrincipalType's
%% associated with the specified portfolio.
-spec list_principals_for_portfolio(aws_client:aws_client(), list_principals_for_portfolio_input()) ->
    {ok, list_principals_for_portfolio_output(), tuple()} |
    {error, any()} |
    {error, list_principals_for_portfolio_errors(), tuple()}.
list_principals_for_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_principals_for_portfolio(Client, Input, []).

-spec list_principals_for_portfolio(aws_client:aws_client(), list_principals_for_portfolio_input(), proplists:proplist()) ->
    {ok, list_principals_for_portfolio_output(), tuple()} |
    {error, any()} |
    {error, list_principals_for_portfolio_errors(), tuple()}.
list_principals_for_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPrincipalsForPortfolio">>, Input, Options).

%% @doc Lists the plans for the specified provisioned product or all plans to
%% which the user has access.
-spec list_provisioned_product_plans(aws_client:aws_client(), list_provisioned_product_plans_input()) ->
    {ok, list_provisioned_product_plans_output(), tuple()} |
    {error, any()} |
    {error, list_provisioned_product_plans_errors(), tuple()}.
list_provisioned_product_plans(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_provisioned_product_plans(Client, Input, []).

-spec list_provisioned_product_plans(aws_client:aws_client(), list_provisioned_product_plans_input(), proplists:proplist()) ->
    {ok, list_provisioned_product_plans_output(), tuple()} |
    {error, any()} |
    {error, list_provisioned_product_plans_errors(), tuple()}.
list_provisioned_product_plans(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProvisionedProductPlans">>, Input, Options).

%% @doc Lists all provisioning artifacts (also known as versions) for the
%% specified product.
-spec list_provisioning_artifacts(aws_client:aws_client(), list_provisioning_artifacts_input()) ->
    {ok, list_provisioning_artifacts_output(), tuple()} |
    {error, any()} |
    {error, list_provisioning_artifacts_errors(), tuple()}.
list_provisioning_artifacts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_provisioning_artifacts(Client, Input, []).

-spec list_provisioning_artifacts(aws_client:aws_client(), list_provisioning_artifacts_input(), proplists:proplist()) ->
    {ok, list_provisioning_artifacts_output(), tuple()} |
    {error, any()} |
    {error, list_provisioning_artifacts_errors(), tuple()}.
list_provisioning_artifacts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProvisioningArtifacts">>, Input, Options).

%% @doc Lists all provisioning artifacts (also known as versions) for the
%% specified self-service action.
-spec list_provisioning_artifacts_for_service_action(aws_client:aws_client(), list_provisioning_artifacts_for_service_action_input()) ->
    {ok, list_provisioning_artifacts_for_service_action_output(), tuple()} |
    {error, any()} |
    {error, list_provisioning_artifacts_for_service_action_errors(), tuple()}.
list_provisioning_artifacts_for_service_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_provisioning_artifacts_for_service_action(Client, Input, []).

-spec list_provisioning_artifacts_for_service_action(aws_client:aws_client(), list_provisioning_artifacts_for_service_action_input(), proplists:proplist()) ->
    {ok, list_provisioning_artifacts_for_service_action_output(), tuple()} |
    {error, any()} |
    {error, list_provisioning_artifacts_for_service_action_errors(), tuple()}.
list_provisioning_artifacts_for_service_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProvisioningArtifactsForServiceAction">>, Input, Options).

%% @doc Lists the specified requests or all performed requests.
-spec list_record_history(aws_client:aws_client(), list_record_history_input()) ->
    {ok, list_record_history_output(), tuple()} |
    {error, any()} |
    {error, list_record_history_errors(), tuple()}.
list_record_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_record_history(Client, Input, []).

-spec list_record_history(aws_client:aws_client(), list_record_history_input(), proplists:proplist()) ->
    {ok, list_record_history_output(), tuple()} |
    {error, any()} |
    {error, list_record_history_errors(), tuple()}.
list_record_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRecordHistory">>, Input, Options).

%% @doc Lists the resources associated with the specified TagOption.
-spec list_resources_for_tag_option(aws_client:aws_client(), list_resources_for_tag_option_input()) ->
    {ok, list_resources_for_tag_option_output(), tuple()} |
    {error, any()} |
    {error, list_resources_for_tag_option_errors(), tuple()}.
list_resources_for_tag_option(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resources_for_tag_option(Client, Input, []).

-spec list_resources_for_tag_option(aws_client:aws_client(), list_resources_for_tag_option_input(), proplists:proplist()) ->
    {ok, list_resources_for_tag_option_output(), tuple()} |
    {error, any()} |
    {error, list_resources_for_tag_option_errors(), tuple()}.
list_resources_for_tag_option(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourcesForTagOption">>, Input, Options).

%% @doc Lists all self-service actions.
-spec list_service_actions(aws_client:aws_client(), list_service_actions_input()) ->
    {ok, list_service_actions_output(), tuple()} |
    {error, any()} |
    {error, list_service_actions_errors(), tuple()}.
list_service_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_actions(Client, Input, []).

-spec list_service_actions(aws_client:aws_client(), list_service_actions_input(), proplists:proplist()) ->
    {ok, list_service_actions_output(), tuple()} |
    {error, any()} |
    {error, list_service_actions_errors(), tuple()}.
list_service_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServiceActions">>, Input, Options).

%% @doc Returns a paginated list of self-service actions associated with the
%% specified Product ID and Provisioning Artifact ID.
-spec list_service_actions_for_provisioning_artifact(aws_client:aws_client(), list_service_actions_for_provisioning_artifact_input()) ->
    {ok, list_service_actions_for_provisioning_artifact_output(), tuple()} |
    {error, any()} |
    {error, list_service_actions_for_provisioning_artifact_errors(), tuple()}.
list_service_actions_for_provisioning_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_actions_for_provisioning_artifact(Client, Input, []).

-spec list_service_actions_for_provisioning_artifact(aws_client:aws_client(), list_service_actions_for_provisioning_artifact_input(), proplists:proplist()) ->
    {ok, list_service_actions_for_provisioning_artifact_output(), tuple()} |
    {error, any()} |
    {error, list_service_actions_for_provisioning_artifact_errors(), tuple()}.
list_service_actions_for_provisioning_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServiceActionsForProvisioningArtifact">>, Input, Options).

%% @doc Returns summary information about stack instances that are associated
%% with the specified `CFN_STACKSET' type provisioned product.
%%
%% You can filter for stack instances that are associated with a specific
%% Amazon Web Services account name or Region.
-spec list_stack_instances_for_provisioned_product(aws_client:aws_client(), list_stack_instances_for_provisioned_product_input()) ->
    {ok, list_stack_instances_for_provisioned_product_output(), tuple()} |
    {error, any()} |
    {error, list_stack_instances_for_provisioned_product_errors(), tuple()}.
list_stack_instances_for_provisioned_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stack_instances_for_provisioned_product(Client, Input, []).

-spec list_stack_instances_for_provisioned_product(aws_client:aws_client(), list_stack_instances_for_provisioned_product_input(), proplists:proplist()) ->
    {ok, list_stack_instances_for_provisioned_product_output(), tuple()} |
    {error, any()} |
    {error, list_stack_instances_for_provisioned_product_errors(), tuple()}.
list_stack_instances_for_provisioned_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStackInstancesForProvisionedProduct">>, Input, Options).

%% @doc Lists the specified TagOptions or all TagOptions.
-spec list_tag_options(aws_client:aws_client(), list_tag_options_input()) ->
    {ok, list_tag_options_output(), tuple()} |
    {error, any()} |
    {error, list_tag_options_errors(), tuple()}.
list_tag_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tag_options(Client, Input, []).

-spec list_tag_options(aws_client:aws_client(), list_tag_options_input(), proplists:proplist()) ->
    {ok, list_tag_options_output(), tuple()} |
    {error, any()} |
    {error, list_tag_options_errors(), tuple()}.
list_tag_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagOptions">>, Input, Options).

%% @doc
%% Notifies the result
%% of the provisioning engine execution.
-spec notify_provision_product_engine_workflow_result(aws_client:aws_client(), notify_provision_product_engine_workflow_result_input()) ->
    {ok, notify_provision_product_engine_workflow_result_output(), tuple()} |
    {error, any()} |
    {error, notify_provision_product_engine_workflow_result_errors(), tuple()}.
notify_provision_product_engine_workflow_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    notify_provision_product_engine_workflow_result(Client, Input, []).

-spec notify_provision_product_engine_workflow_result(aws_client:aws_client(), notify_provision_product_engine_workflow_result_input(), proplists:proplist()) ->
    {ok, notify_provision_product_engine_workflow_result_output(), tuple()} |
    {error, any()} |
    {error, notify_provision_product_engine_workflow_result_errors(), tuple()}.
notify_provision_product_engine_workflow_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"NotifyProvisionProductEngineWorkflowResult">>, Input, Options).

%% @doc
%% Notifies the result
%% of the terminate engine execution.
-spec notify_terminate_provisioned_product_engine_workflow_result(aws_client:aws_client(), notify_terminate_provisioned_product_engine_workflow_result_input()) ->
    {ok, notify_terminate_provisioned_product_engine_workflow_result_output(), tuple()} |
    {error, any()} |
    {error, notify_terminate_provisioned_product_engine_workflow_result_errors(), tuple()}.
notify_terminate_provisioned_product_engine_workflow_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    notify_terminate_provisioned_product_engine_workflow_result(Client, Input, []).

-spec notify_terminate_provisioned_product_engine_workflow_result(aws_client:aws_client(), notify_terminate_provisioned_product_engine_workflow_result_input(), proplists:proplist()) ->
    {ok, notify_terminate_provisioned_product_engine_workflow_result_output(), tuple()} |
    {error, any()} |
    {error, notify_terminate_provisioned_product_engine_workflow_result_errors(), tuple()}.
notify_terminate_provisioned_product_engine_workflow_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"NotifyTerminateProvisionedProductEngineWorkflowResult">>, Input, Options).

%% @doc
%% Notifies the result
%% of the update engine execution.
-spec notify_update_provisioned_product_engine_workflow_result(aws_client:aws_client(), notify_update_provisioned_product_engine_workflow_result_input()) ->
    {ok, notify_update_provisioned_product_engine_workflow_result_output(), tuple()} |
    {error, any()} |
    {error, notify_update_provisioned_product_engine_workflow_result_errors(), tuple()}.
notify_update_provisioned_product_engine_workflow_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    notify_update_provisioned_product_engine_workflow_result(Client, Input, []).

-spec notify_update_provisioned_product_engine_workflow_result(aws_client:aws_client(), notify_update_provisioned_product_engine_workflow_result_input(), proplists:proplist()) ->
    {ok, notify_update_provisioned_product_engine_workflow_result_output(), tuple()} |
    {error, any()} |
    {error, notify_update_provisioned_product_engine_workflow_result_errors(), tuple()}.
notify_update_provisioned_product_engine_workflow_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"NotifyUpdateProvisionedProductEngineWorkflowResult">>, Input, Options).

%% @doc
%% Provisions the specified product.
%%
%% A provisioned product is a resourced instance
%% of a product.
%% For example,
%% provisioning a product
%% that's based
%% on an CloudFormation template
%% launches an CloudFormation stack and its underlying resources.
%% You can check the status
%% of this request
%% using `DescribeRecord'.
%%
%% If the request contains a tag key
%% with an empty list
%% of values,
%% there's a tag conflict
%% for that key.
%% Don't include conflicted keys
%% as tags,
%% or this will cause the error &quot;Parameter validation failed: Missing
%% required parameter in Tags[N]:Value&quot;.
%%
%% When provisioning a product
%% that's been added
%% to a portfolio,
%% you must grant your user, group, or role access
%% to the portfolio.
%% For more information,
%% see Granting users access:
%% https://docs.aws.amazon.com/servicecatalog/latest/adminguide/catalogs_portfolios_users.html
%% in the Service Catalog User Guide.
-spec provision_product(aws_client:aws_client(), provision_product_input()) ->
    {ok, provision_product_output(), tuple()} |
    {error, any()} |
    {error, provision_product_errors(), tuple()}.
provision_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    provision_product(Client, Input, []).

-spec provision_product(aws_client:aws_client(), provision_product_input(), proplists:proplist()) ->
    {ok, provision_product_output(), tuple()} |
    {error, any()} |
    {error, provision_product_errors(), tuple()}.
provision_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ProvisionProduct">>, Input, Options).

%% @doc Rejects an offer to share the specified portfolio.
-spec reject_portfolio_share(aws_client:aws_client(), reject_portfolio_share_input()) ->
    {ok, reject_portfolio_share_output(), tuple()} |
    {error, any()} |
    {error, reject_portfolio_share_errors(), tuple()}.
reject_portfolio_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_portfolio_share(Client, Input, []).

-spec reject_portfolio_share(aws_client:aws_client(), reject_portfolio_share_input(), proplists:proplist()) ->
    {ok, reject_portfolio_share_output(), tuple()} |
    {error, any()} |
    {error, reject_portfolio_share_errors(), tuple()}.
reject_portfolio_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectPortfolioShare">>, Input, Options).

%% @doc Lists the provisioned products that are available (not terminated).
%%
%% To use additional filtering, see `SearchProvisionedProducts'.
-spec scan_provisioned_products(aws_client:aws_client(), scan_provisioned_products_input()) ->
    {ok, scan_provisioned_products_output(), tuple()} |
    {error, any()} |
    {error, scan_provisioned_products_errors(), tuple()}.
scan_provisioned_products(Client, Input)
  when is_map(Client), is_map(Input) ->
    scan_provisioned_products(Client, Input, []).

-spec scan_provisioned_products(aws_client:aws_client(), scan_provisioned_products_input(), proplists:proplist()) ->
    {ok, scan_provisioned_products_output(), tuple()} |
    {error, any()} |
    {error, scan_provisioned_products_errors(), tuple()}.
scan_provisioned_products(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ScanProvisionedProducts">>, Input, Options).

%% @doc Gets information about the products to which the caller has access.
-spec search_products(aws_client:aws_client(), search_products_input()) ->
    {ok, search_products_output(), tuple()} |
    {error, any()} |
    {error, search_products_errors(), tuple()}.
search_products(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_products(Client, Input, []).

-spec search_products(aws_client:aws_client(), search_products_input(), proplists:proplist()) ->
    {ok, search_products_output(), tuple()} |
    {error, any()} |
    {error, search_products_errors(), tuple()}.
search_products(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchProducts">>, Input, Options).

%% @doc Gets information about the products for the specified portfolio or
%% all products.
-spec search_products_as_admin(aws_client:aws_client(), search_products_as_admin_input()) ->
    {ok, search_products_as_admin_output(), tuple()} |
    {error, any()} |
    {error, search_products_as_admin_errors(), tuple()}.
search_products_as_admin(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_products_as_admin(Client, Input, []).

-spec search_products_as_admin(aws_client:aws_client(), search_products_as_admin_input(), proplists:proplist()) ->
    {ok, search_products_as_admin_output(), tuple()} |
    {error, any()} |
    {error, search_products_as_admin_errors(), tuple()}.
search_products_as_admin(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchProductsAsAdmin">>, Input, Options).

%% @doc Gets information about the provisioned products that meet the
%% specified criteria.
-spec search_provisioned_products(aws_client:aws_client(), search_provisioned_products_input()) ->
    {ok, search_provisioned_products_output(), tuple()} |
    {error, any()} |
    {error, search_provisioned_products_errors(), tuple()}.
search_provisioned_products(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_provisioned_products(Client, Input, []).

-spec search_provisioned_products(aws_client:aws_client(), search_provisioned_products_input(), proplists:proplist()) ->
    {ok, search_provisioned_products_output(), tuple()} |
    {error, any()} |
    {error, search_provisioned_products_errors(), tuple()}.
search_provisioned_products(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchProvisionedProducts">>, Input, Options).

%% @doc Terminates the specified provisioned product.
%%
%% This operation does not delete any records associated with the provisioned
%% product.
%%
%% You can check the status of this request using `DescribeRecord'.
-spec terminate_provisioned_product(aws_client:aws_client(), terminate_provisioned_product_input()) ->
    {ok, terminate_provisioned_product_output(), tuple()} |
    {error, any()} |
    {error, terminate_provisioned_product_errors(), tuple()}.
terminate_provisioned_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_provisioned_product(Client, Input, []).

-spec terminate_provisioned_product(aws_client:aws_client(), terminate_provisioned_product_input(), proplists:proplist()) ->
    {ok, terminate_provisioned_product_output(), tuple()} |
    {error, any()} |
    {error, terminate_provisioned_product_errors(), tuple()}.
terminate_provisioned_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateProvisionedProduct">>, Input, Options).

%% @doc Updates the specified constraint.
-spec update_constraint(aws_client:aws_client(), update_constraint_input()) ->
    {ok, update_constraint_output(), tuple()} |
    {error, any()} |
    {error, update_constraint_errors(), tuple()}.
update_constraint(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_constraint(Client, Input, []).

-spec update_constraint(aws_client:aws_client(), update_constraint_input(), proplists:proplist()) ->
    {ok, update_constraint_output(), tuple()} |
    {error, any()} |
    {error, update_constraint_errors(), tuple()}.
update_constraint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConstraint">>, Input, Options).

%% @doc Updates the specified portfolio.
%%
%% You cannot update a product that was shared with you.
-spec update_portfolio(aws_client:aws_client(), update_portfolio_input()) ->
    {ok, update_portfolio_output(), tuple()} |
    {error, any()} |
    {error, update_portfolio_errors(), tuple()}.
update_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_portfolio(Client, Input, []).

-spec update_portfolio(aws_client:aws_client(), update_portfolio_input(), proplists:proplist()) ->
    {ok, update_portfolio_output(), tuple()} |
    {error, any()} |
    {error, update_portfolio_errors(), tuple()}.
update_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePortfolio">>, Input, Options).

%% @doc Updates the specified portfolio share.
%%
%% You can use this API to enable or disable `TagOptions' sharing
%% or Principal sharing for an existing portfolio share.
%%
%% The portfolio share cannot be updated if the `CreatePortfolioShare'
%% operation is `IN_PROGRESS', as the share is not available to recipient
%% entities.
%% In this case, you must wait for the portfolio share to be completed.
%%
%% You must provide the `accountId' or organization node in the input,
%% but not both.
%%
%% If the portfolio is shared to both an external account and an organization
%% node, and both shares need to be updated, you must invoke
%% `UpdatePortfolioShare' separately for each share type.
%%
%% This API cannot be used for removing the portfolio share. You must use
%% `DeletePortfolioShare' API for that action.
%%
%% When you associate a principal with portfolio, a potential privilege
%% escalation path may occur when that portfolio is
%% then shared with other accounts. For a user in a recipient account who is
%% not an Service Catalog Admin,
%% but still has the ability to create Principals (Users/Groups/Roles), that
%% user could create a role that matches a principal
%% name association for the portfolio. Although this user may not know which
%% principal names are associated through
%% Service Catalog, they may be able to guess the user. If this potential
%% escalation path is a concern, then
%% Service Catalog recommends using `PrincipalType' as `IAM'. With
%% this configuration,
%% the `PrincipalARN' must already exist in the recipient account before
%% it can be associated.
-spec update_portfolio_share(aws_client:aws_client(), update_portfolio_share_input()) ->
    {ok, update_portfolio_share_output(), tuple()} |
    {error, any()} |
    {error, update_portfolio_share_errors(), tuple()}.
update_portfolio_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_portfolio_share(Client, Input, []).

-spec update_portfolio_share(aws_client:aws_client(), update_portfolio_share_input(), proplists:proplist()) ->
    {ok, update_portfolio_share_output(), tuple()} |
    {error, any()} |
    {error, update_portfolio_share_errors(), tuple()}.
update_portfolio_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePortfolioShare">>, Input, Options).

%% @doc Updates the specified product.
-spec update_product(aws_client:aws_client(), update_product_input()) ->
    {ok, update_product_output(), tuple()} |
    {error, any()} |
    {error, update_product_errors(), tuple()}.
update_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_product(Client, Input, []).

-spec update_product(aws_client:aws_client(), update_product_input(), proplists:proplist()) ->
    {ok, update_product_output(), tuple()} |
    {error, any()} |
    {error, update_product_errors(), tuple()}.
update_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProduct">>, Input, Options).

%% @doc Requests updates to the configuration of the specified provisioned
%% product.
%%
%% If there are tags associated with the object, they cannot be updated or
%% added.
%% Depending on the specific updates requested, this operation can update
%% with no
%% interruption, with some interruption, or replace the provisioned product
%% entirely.
%%
%% You can check the status of this request using `DescribeRecord'.
-spec update_provisioned_product(aws_client:aws_client(), update_provisioned_product_input()) ->
    {ok, update_provisioned_product_output(), tuple()} |
    {error, any()} |
    {error, update_provisioned_product_errors(), tuple()}.
update_provisioned_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_provisioned_product(Client, Input, []).

-spec update_provisioned_product(aws_client:aws_client(), update_provisioned_product_input(), proplists:proplist()) ->
    {ok, update_provisioned_product_output(), tuple()} |
    {error, any()} |
    {error, update_provisioned_product_errors(), tuple()}.
update_provisioned_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProvisionedProduct">>, Input, Options).

%% @doc Requests updates to the properties of the specified provisioned
%% product.
-spec update_provisioned_product_properties(aws_client:aws_client(), update_provisioned_product_properties_input()) ->
    {ok, update_provisioned_product_properties_output(), tuple()} |
    {error, any()} |
    {error, update_provisioned_product_properties_errors(), tuple()}.
update_provisioned_product_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_provisioned_product_properties(Client, Input, []).

-spec update_provisioned_product_properties(aws_client:aws_client(), update_provisioned_product_properties_input(), proplists:proplist()) ->
    {ok, update_provisioned_product_properties_output(), tuple()} |
    {error, any()} |
    {error, update_provisioned_product_properties_errors(), tuple()}.
update_provisioned_product_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProvisionedProductProperties">>, Input, Options).

%% @doc Updates the specified provisioning artifact (also known as a version)
%% for the specified product.
%%
%% You cannot update a provisioning artifact for a product that was shared
%% with you.
-spec update_provisioning_artifact(aws_client:aws_client(), update_provisioning_artifact_input()) ->
    {ok, update_provisioning_artifact_output(), tuple()} |
    {error, any()} |
    {error, update_provisioning_artifact_errors(), tuple()}.
update_provisioning_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_provisioning_artifact(Client, Input, []).

-spec update_provisioning_artifact(aws_client:aws_client(), update_provisioning_artifact_input(), proplists:proplist()) ->
    {ok, update_provisioning_artifact_output(), tuple()} |
    {error, any()} |
    {error, update_provisioning_artifact_errors(), tuple()}.
update_provisioning_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProvisioningArtifact">>, Input, Options).

%% @doc Updates a self-service action.
-spec update_service_action(aws_client:aws_client(), update_service_action_input()) ->
    {ok, update_service_action_output(), tuple()} |
    {error, any()} |
    {error, update_service_action_errors(), tuple()}.
update_service_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service_action(Client, Input, []).

-spec update_service_action(aws_client:aws_client(), update_service_action_input(), proplists:proplist()) ->
    {ok, update_service_action_output(), tuple()} |
    {error, any()} |
    {error, update_service_action_errors(), tuple()}.
update_service_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServiceAction">>, Input, Options).

%% @doc Updates the specified TagOption.
-spec update_tag_option(aws_client:aws_client(), update_tag_option_input()) ->
    {ok, update_tag_option_output(), tuple()} |
    {error, any()} |
    {error, update_tag_option_errors(), tuple()}.
update_tag_option(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_tag_option(Client, Input, []).

-spec update_tag_option(aws_client:aws_client(), update_tag_option_input(), proplists:proplist()) ->
    {ok, update_tag_option_output(), tuple()} |
    {error, any()} |
    {error, update_tag_option_errors(), tuple()}.
update_tag_option(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTagOption">>, Input, Options).

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
    Client1 = Client#{service => <<"servicecatalog">>},
    Host = build_host(<<"servicecatalog">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWS242ServiceCatalogService.", Action/binary>>}
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
