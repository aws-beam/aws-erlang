%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Service Catalog
%%
%% Service Catalog enables organizations to create and manage catalogs of IT
%% services that are approved for Amazon Web Services.
%%
%% To get the most out of this documentation, you should be familiar with the
%% terminology discussed in Service Catalog Concepts.
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

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts an offer to share the specified portfolio.
accept_portfolio_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_portfolio_share(Client, Input, []).
accept_portfolio_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptPortfolioShare">>, Input, Options).

%% @doc Associates the specified budget with the specified resource.
associate_budget_with_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_budget_with_resource(Client, Input, []).
associate_budget_with_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateBudgetWithResource">>, Input, Options).

%% @doc Associates the specified principal ARN with the specified portfolio.
%%
%% If you share the portfolio with principal name sharing enabled, the
%% `PrincipalARN' association is included in the share.
%%
%% The `PortfolioID', `PrincipalARN', and `PrincipalType'
%% parameters are required.
%%
%% You can associate a maximum of 10 Principals with a portfolio using
%% `PrincipalType' as `IAM_PATTERN'
%%
%% When you associate a principal with portfolio, a potential privilege
%% escalation path may occur when that portfolio is then shared with other
%% accounts. For a user in a recipient account who is not an Service Catalog
%% Admin, but still has the ability to create Principals
%% (Users/Groups/Roles), that user could create a role that matches a
%% principal name association for the portfolio. Although this user may not
%% know which principal names are associated through Service Catalog, they
%% may be able to guess the user. If this potential escalation path is a
%% concern, then Service Catalog recommends using `PrincipalType' as
%% `IAM'. With this configuration, the `PrincipalARN' must already
%% exist in the recipient account before it can be associated.
associate_principal_with_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_principal_with_portfolio(Client, Input, []).
associate_principal_with_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociatePrincipalWithPortfolio">>, Input, Options).

%% @doc Associates the specified product with the specified portfolio.
%%
%% A delegated admin is authorized to invoke this command.
associate_product_with_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_product_with_portfolio(Client, Input, []).
associate_product_with_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateProductWithPortfolio">>, Input, Options).

%% @doc Associates a self-service action with a provisioning artifact.
associate_service_action_with_provisioning_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_service_action_with_provisioning_artifact(Client, Input, []).
associate_service_action_with_provisioning_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateServiceActionWithProvisioningArtifact">>, Input, Options).

%% @doc Associate the specified TagOption with the specified portfolio or
%% product.
associate_tag_option_with_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_tag_option_with_resource(Client, Input, []).
associate_tag_option_with_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateTagOptionWithResource">>, Input, Options).

%% @doc Associates multiple self-service actions with provisioning artifacts.
batch_associate_service_action_with_provisioning_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_associate_service_action_with_provisioning_artifact(Client, Input, []).
batch_associate_service_action_with_provisioning_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchAssociateServiceActionWithProvisioningArtifact">>, Input, Options).

%% @doc Disassociates a batch of self-service actions from the specified
%% provisioning artifact.
batch_disassociate_service_action_from_provisioning_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_disassociate_service_action_from_provisioning_artifact(Client, Input, []).
batch_disassociate_service_action_from_provisioning_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDisassociateServiceActionFromProvisioningArtifact">>, Input, Options).

%% @doc Copies the specified source product to the specified target product
%% or a new product.
%%
%% You can copy a product to the same account or another account. You can
%% copy a product to the same Region or another Region. If you copy a product
%% to another account, you must first share the product in a portfolio using
%% `CreatePortfolioShare'.
%%
%% This operation is performed asynchronously. To track the progress of the
%% operation, use `DescribeCopyProductStatus'.
copy_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_product(Client, Input, []).
copy_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyProduct">>, Input, Options).

%% @doc Creates a constraint.
%%
%% A delegated admin is authorized to invoke this command.
create_constraint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_constraint(Client, Input, []).
create_constraint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConstraint">>, Input, Options).

%% @doc Creates a portfolio.
%%
%% A delegated admin is authorized to invoke this command.
create_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_portfolio(Client, Input, []).
create_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePortfolio">>, Input, Options).

%% @doc Shares the specified portfolio with the specified account or
%% organization node.
%%
%% Shares to an organization node can only be created by the management
%% account of an organization or by a delegated administrator. You can share
%% portfolios to an organization, an organizational unit, or a specific
%% account.
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
%% already exists, this action will have no effect and will not return an
%% error. To update an existing share, you must use the `
%% UpdatePortfolioShare' API instead.
%%
%% When you associate a principal with portfolio, a potential privilege
%% escalation path may occur when that portfolio is then shared with other
%% accounts. For a user in a recipient account who is not an Service Catalog
%% Admin, but still has the ability to create Principals
%% (Users/Groups/Roles), that user could create a role that matches a
%% principal name association for the portfolio. Although this user may not
%% know which principal names are associated through Service Catalog, they
%% may be able to guess the user. If this potential escalation path is a
%% concern, then Service Catalog recommends using `PrincipalType' as
%% `IAM'. With this configuration, the `PrincipalARN' must already
%% exist in the recipient account before it can be associated.
create_portfolio_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_portfolio_share(Client, Input, []).
create_portfolio_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePortfolioShare">>, Input, Options).

%% @doc Creates a product.
%%
%% A delegated admin is authorized to invoke this command.
%%
%% The user or role that performs this operation must have the
%% `cloudformation:GetTemplate' IAM policy permission. This policy
%% permission is required when using the `ImportFromPhysicalId' template
%% source in the information data section.
create_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_product(Client, Input, []).
create_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProduct">>, Input, Options).

%% @doc Creates a plan.
%%
%% A plan includes the list of resources to be created (when provisioning a
%% new product) or modified (when updating a provisioned product) when the
%% plan is executed.
%%
%% You can create one plan for each provisioned product. To create a plan for
%% an existing provisioned product, the product status must be AVAILABLE or
%% TAINTED.
%%
%% To view the resource changes in the change set, use
%% `DescribeProvisionedProductPlan'. To create or modify the provisioned
%% product, use `ExecuteProvisionedProductPlan'.
create_provisioned_product_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_provisioned_product_plan(Client, Input, []).
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
%% `cloudformation:GetTemplate' IAM policy permission. This policy
%% permission is required when using the `ImportFromPhysicalId' template
%% source in the information data section.
create_provisioning_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_provisioning_artifact(Client, Input, []).
create_provisioning_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProvisioningArtifact">>, Input, Options).

%% @doc Creates a self-service action.
create_service_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_service_action(Client, Input, []).
create_service_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateServiceAction">>, Input, Options).

%% @doc Creates a TagOption.
create_tag_option(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_tag_option(Client, Input, []).
create_tag_option(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTagOption">>, Input, Options).

%% @doc Deletes the specified constraint.
%%
%% A delegated admin is authorized to invoke this command.
delete_constraint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_constraint(Client, Input, []).
delete_constraint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConstraint">>, Input, Options).

%% @doc Deletes the specified portfolio.
%%
%% You cannot delete a portfolio if it was shared with you or if it has
%% associated products, users, constraints, or shared accounts.
%%
%% A delegated admin is authorized to invoke this command.
delete_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_portfolio(Client, Input, []).
delete_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePortfolio">>, Input, Options).

%% @doc Stops sharing the specified portfolio with the specified account or
%% organization node.
%%
%% Shares to an organization node can only be deleted by the management
%% account of an organization or by a delegated administrator.
%%
%% Note that if a delegated admin is de-registered, portfolio shares created
%% from that account are removed.
delete_portfolio_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_portfolio_share(Client, Input, []).
delete_portfolio_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePortfolioShare">>, Input, Options).

%% @doc Deletes the specified product.
%%
%% You cannot delete a product if it was shared with you or is associated
%% with a portfolio.
%%
%% A delegated admin is authorized to invoke this command.
delete_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_product(Client, Input, []).
delete_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProduct">>, Input, Options).

%% @doc Deletes the specified plan.
delete_provisioned_product_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_provisioned_product_plan(Client, Input, []).
delete_provisioned_product_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProvisionedProductPlan">>, Input, Options).

%% @doc Deletes the specified provisioning artifact (also known as a version)
%% for the specified product.
%%
%% You cannot delete a provisioning artifact associated with a product that
%% was shared with you. You cannot delete the last provisioning artifact for
%% a product, because a product must have at least one provisioning artifact.
delete_provisioning_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_provisioning_artifact(Client, Input, []).
delete_provisioning_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProvisioningArtifact">>, Input, Options).

%% @doc Deletes a self-service action.
delete_service_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service_action(Client, Input, []).
delete_service_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServiceAction">>, Input, Options).

%% @doc Deletes the specified TagOption.
%%
%% You cannot delete a TagOption if it is associated with a product or
%% portfolio.
delete_tag_option(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tag_option(Client, Input, []).
delete_tag_option(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTagOption">>, Input, Options).

%% @doc Gets information about the specified constraint.
describe_constraint(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_constraint(Client, Input, []).
describe_constraint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConstraint">>, Input, Options).

%% @doc Gets the status of the specified copy product operation.
describe_copy_product_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_copy_product_status(Client, Input, []).
describe_copy_product_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCopyProductStatus">>, Input, Options).

%% @doc Gets information about the specified portfolio.
%%
%% A delegated admin is authorized to invoke this command.
describe_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_portfolio(Client, Input, []).
describe_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePortfolio">>, Input, Options).

%% @doc Gets the status of the specified portfolio share operation.
%%
%% This API can only be called by the management account in the organization
%% or by a delegated admin.
describe_portfolio_share_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_portfolio_share_status(Client, Input, []).
describe_portfolio_share_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePortfolioShareStatus">>, Input, Options).

%% @doc Returns a summary of each of the portfolio shares that were created
%% for the specified portfolio.
%%
%% You can use this API to determine which accounts or organizational nodes
%% this portfolio have been shared, whether the recipient entity has imported
%% the share, and whether TagOptions are included with the share.
%%
%% The `PortfolioId' and `Type' parameters are both required.
describe_portfolio_shares(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_portfolio_shares(Client, Input, []).
describe_portfolio_shares(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePortfolioShares">>, Input, Options).

%% @doc Gets information about the specified product.
%%
%% Running this operation with administrator access results in a failure.
%% `DescribeProductAsAdmin' should be used instead.
describe_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_product(Client, Input, []).
describe_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProduct">>, Input, Options).

%% @doc Gets information about the specified product.
%%
%% This operation is run with administrator access.
describe_product_as_admin(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_product_as_admin(Client, Input, []).
describe_product_as_admin(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProductAsAdmin">>, Input, Options).

%% @doc Gets information about the specified product.
describe_product_view(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_product_view(Client, Input, []).
describe_product_view(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProductView">>, Input, Options).

%% @doc Gets information about the specified provisioned product.
describe_provisioned_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_provisioned_product(Client, Input, []).
describe_provisioned_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProvisionedProduct">>, Input, Options).

%% @doc Gets information about the resource changes for the specified plan.
describe_provisioned_product_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_provisioned_product_plan(Client, Input, []).
describe_provisioned_product_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProvisionedProductPlan">>, Input, Options).

%% @doc Gets information about the specified provisioning artifact (also
%% known as a version) for the specified product.
describe_provisioning_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_provisioning_artifact(Client, Input, []).
describe_provisioning_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProvisioningArtifact">>, Input, Options).

%% @doc Gets information about the configuration required to provision the
%% specified product using the specified provisioning artifact.
%%
%% If the output contains a TagOption key with an empty list of values, there
%% is a TagOption conflict for that key. The end user cannot take action to
%% fix the conflict, and launch is not blocked. In subsequent calls to
%% `ProvisionProduct', do not include conflicted TagOption keys as tags,
%% or this causes the error &quot;Parameter validation failed: Missing
%% required parameter in Tags[N]:Value&quot;. Tag the provisioned product
%% with the value `sc-tagoption-conflict-portfolioId-productId'.
describe_provisioning_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_provisioning_parameters(Client, Input, []).
describe_provisioning_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProvisioningParameters">>, Input, Options).

%% @doc Gets information about the specified request operation.
%%
%% Use this operation after calling a request operation (for example,
%% `ProvisionProduct', `TerminateProvisionedProduct', or
%% `UpdateProvisionedProduct').
%%
%% If a provisioned product was transferred to a new owner using
%% `UpdateProvisionedProductProperties', the new owner will be able to
%% describe all past records for that product. The previous owner will no
%% longer be able to describe the records, but will be able to use
%% `ListRecordHistory' to see the product's history from when he was
%% the owner.
describe_record(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_record(Client, Input, []).
describe_record(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRecord">>, Input, Options).

%% @doc Describes a self-service action.
describe_service_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_service_action(Client, Input, []).
describe_service_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServiceAction">>, Input, Options).

%% @doc Finds the default parameters for a specific self-service action on a
%% specific provisioned product and returns a map of the results to the user.
describe_service_action_execution_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_service_action_execution_parameters(Client, Input, []).
describe_service_action_execution_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServiceActionExecutionParameters">>, Input, Options).

%% @doc Gets information about the specified TagOption.
describe_tag_option(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tag_option(Client, Input, []).
describe_tag_option(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTagOption">>, Input, Options).

%% @doc Disable portfolio sharing through the Organizations service.
%%
%% This command will not delete your current shares, but prevents you from
%% creating new shares throughout your organization. Current shares are not
%% kept in sync with your organization structure if the structure changes
%% after calling this API. Only the management account in the organization
%% can call this API.
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
%% the organization structure. Specifically, accounts that you removed from
%% the organization after disabling Service Catalog access will retain access
%% to the previously shared portfolio.
disable_aws_organizations_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_aws_organizations_access(Client, Input, []).
disable_aws_organizations_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableAWSOrganizationsAccess">>, Input, Options).

%% @doc Disassociates the specified budget from the specified resource.
disassociate_budget_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_budget_from_resource(Client, Input, []).
disassociate_budget_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateBudgetFromResource">>, Input, Options).

%% @doc Disassociates a previously associated principal ARN from a specified
%% portfolio.
%%
%% The `PrincipalType' and `PrincipalARN' must match the
%% `AssociatePrincipalWithPortfolio' call request details. For example,
%% to disassociate an association created with a `PrincipalARN' of
%% `PrincipalType' IAM you must use the `PrincipalType' IAM when
%% calling `DisassociatePrincipalFromPortfolio'.
%%
%% For portfolios that have been shared with principal name sharing enabled:
%% after disassociating a principal, share recipient accounts will no longer
%% be able to provision products in this portfolio using a role matching the
%% name of the associated principal.
disassociate_principal_from_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_principal_from_portfolio(Client, Input, []).
disassociate_principal_from_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociatePrincipalFromPortfolio">>, Input, Options).

%% @doc Disassociates the specified product from the specified portfolio.
%%
%% A delegated admin is authorized to invoke this command.
disassociate_product_from_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_product_from_portfolio(Client, Input, []).
disassociate_product_from_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateProductFromPortfolio">>, Input, Options).

%% @doc Disassociates the specified self-service action association from the
%% specified provisioning artifact.
disassociate_service_action_from_provisioning_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_service_action_from_provisioning_artifact(Client, Input, []).
disassociate_service_action_from_provisioning_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateServiceActionFromProvisioningArtifact">>, Input, Options).

%% @doc Disassociates the specified TagOption from the specified resource.
disassociate_tag_option_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_tag_option_from_resource(Client, Input, []).
disassociate_tag_option_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateTagOptionFromResource">>, Input, Options).

%% @doc Enable portfolio sharing feature through Organizations.
%%
%% This API will allow Service Catalog to receive updates on your
%% organization in order to sync your shares with the current structure. This
%% API can only be called by the management account in the organization.
%%
%% When you call this API, Service Catalog calls
%% `organizations:EnableAWSServiceAccess' on your behalf so that your
%% shares stay in sync with any changes in your Organizations structure.
%%
%% Note that a delegated administrator is not authorized to invoke
%% `EnableAWSOrganizationsAccess'.
%%
%% If you have previously disabled Organizations access for Service Catalog,
%% and then enable access again, the portfolio access permissions might not
%% sync with the latest changes to the organization structure. Specifically,
%% accounts that you removed from the organization after disabling Service
%% Catalog access, and before you enabled access again, can retain access to
%% the previously shared portfolio. As a result, an account that has been
%% removed from the organization might still be able to create or manage
%% Amazon Web Services resources when it is no longer authorized to do so.
%% Amazon Web Services is working to resolve this issue.
enable_aws_organizations_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_aws_organizations_access(Client, Input, []).
enable_aws_organizations_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableAWSOrganizationsAccess">>, Input, Options).

%% @doc Provisions or modifies a product based on the resource changes for
%% the specified plan.
execute_provisioned_product_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    execute_provisioned_product_plan(Client, Input, []).
execute_provisioned_product_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExecuteProvisionedProductPlan">>, Input, Options).

%% @doc Executes a self-service action against a provisioned product.
execute_provisioned_product_service_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    execute_provisioned_product_service_action(Client, Input, []).
execute_provisioned_product_service_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExecuteProvisionedProductServiceAction">>, Input, Options).

%% @doc Get the Access Status for Organizations portfolio share feature.
%%
%% This API can only be called by the management account in the organization
%% or by a delegated admin.
get_aws_organizations_access_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_aws_organizations_access_status(Client, Input, []).
get_aws_organizations_access_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAWSOrganizationsAccessStatus">>, Input, Options).

%% @doc This API takes either a `ProvisonedProductId' or a
%% `ProvisionedProductName', along with a list of one or more output
%% keys, and responds with the key/value pairs of those outputs.
get_provisioned_product_outputs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_provisioned_product_outputs(Client, Input, []).
get_provisioned_product_outputs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProvisionedProductOutputs">>, Input, Options).

%% @doc Requests the import of a resource as an Service Catalog provisioned
%% product that is associated to an Service Catalog product and provisioning
%% artifact.
%%
%% Once imported, all supported governance actions are supported on the
%% provisioned product.
%%
%% Resource import only supports CloudFormation stack ARNs. CloudFormation
%% StackSets, and non-root nested stacks are not supported.
%%
%% The CloudFormation stack must have one of the following statuses to be
%% imported: `CREATE_COMPLETE', `UPDATE_COMPLETE',
%% `UPDATE_ROLLBACK_COMPLETE', `IMPORT_COMPLETE', and
%% `IMPORT_ROLLBACK_COMPLETE'.
%%
%% Import of the resource requires that the CloudFormation stack template
%% matches the associated Service Catalog product provisioning artifact.
%%
%% When you import an existing CloudFormation stack into a portfolio,
%% constraints that are associated with the product aren't applied during
%% the import process. The constraints are applied after you call
%% `UpdateProvisionedProduct' for the provisioned product.
%%
%% The user or role that performs this operation must have the
%% `cloudformation:GetTemplate' and `cloudformation:DescribeStacks'
%% IAM policy permissions.
import_as_provisioned_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_as_provisioned_product(Client, Input, []).
import_as_provisioned_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportAsProvisionedProduct">>, Input, Options).

%% @doc Lists all imported portfolios for which account-to-account shares
%% were accepted by this account.
%%
%% By specifying the `PortfolioShareType', you can list portfolios for
%% which organizational shares were accepted by this account.
list_accepted_portfolio_shares(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_accepted_portfolio_shares(Client, Input, []).
list_accepted_portfolio_shares(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAcceptedPortfolioShares">>, Input, Options).

%% @doc Lists all the budgets associated to the specified resource.
list_budgets_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_budgets_for_resource(Client, Input, []).
list_budgets_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBudgetsForResource">>, Input, Options).

%% @doc Lists the constraints for the specified portfolio and product.
list_constraints_for_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_constraints_for_portfolio(Client, Input, []).
list_constraints_for_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConstraintsForPortfolio">>, Input, Options).

%% @doc Lists the paths to the specified product.
%%
%% A path describes how the user gets access to a specified product and is
%% necessary when provisioning a product. A path also determines the
%% constraints that are put on a product. A path is dependent on a specific
%% product, porfolio, and principal.
%%
%% When provisioning a product that's been added to a portfolio, you must
%% grant your user, group, or role access to the portfolio. For more
%% information, see Granting users access in the Service Catalog User Guide.
list_launch_paths(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_launch_paths(Client, Input, []).
list_launch_paths(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLaunchPaths">>, Input, Options).

%% @doc Lists the organization nodes that have access to the specified
%% portfolio.
%%
%% This API can only be called by the management account in the organization
%% or by a delegated admin.
%%
%% If a delegated admin is de-registered, they can no longer perform this
%% operation.
list_organization_portfolio_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_organization_portfolio_access(Client, Input, []).
list_organization_portfolio_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOrganizationPortfolioAccess">>, Input, Options).

%% @doc Lists the account IDs that have access to the specified portfolio.
%%
%% A delegated admin can list the accounts that have access to the shared
%% portfolio. Note that if a delegated admin is de-registered, they can no
%% longer perform this operation.
list_portfolio_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_portfolio_access(Client, Input, []).
list_portfolio_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPortfolioAccess">>, Input, Options).

%% @doc Lists all portfolios in the catalog.
list_portfolios(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_portfolios(Client, Input, []).
list_portfolios(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPortfolios">>, Input, Options).

%% @doc Lists all portfolios that the specified product is associated with.
list_portfolios_for_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_portfolios_for_product(Client, Input, []).
list_portfolios_for_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPortfoliosForProduct">>, Input, Options).

%% @doc Lists all `PrincipalARN's and corresponding `PrincipalType's
%% associated with the specified portfolio.
list_principals_for_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_principals_for_portfolio(Client, Input, []).
list_principals_for_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPrincipalsForPortfolio">>, Input, Options).

%% @doc Lists the plans for the specified provisioned product or all plans to
%% which the user has access.
list_provisioned_product_plans(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_provisioned_product_plans(Client, Input, []).
list_provisioned_product_plans(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProvisionedProductPlans">>, Input, Options).

%% @doc Lists all provisioning artifacts (also known as versions) for the
%% specified product.
list_provisioning_artifacts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_provisioning_artifacts(Client, Input, []).
list_provisioning_artifacts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProvisioningArtifacts">>, Input, Options).

%% @doc Lists all provisioning artifacts (also known as versions) for the
%% specified self-service action.
list_provisioning_artifacts_for_service_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_provisioning_artifacts_for_service_action(Client, Input, []).
list_provisioning_artifacts_for_service_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProvisioningArtifactsForServiceAction">>, Input, Options).

%% @doc Lists the specified requests or all performed requests.
list_record_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_record_history(Client, Input, []).
list_record_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRecordHistory">>, Input, Options).

%% @doc Lists the resources associated with the specified TagOption.
list_resources_for_tag_option(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resources_for_tag_option(Client, Input, []).
list_resources_for_tag_option(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourcesForTagOption">>, Input, Options).

%% @doc Lists all self-service actions.
list_service_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_actions(Client, Input, []).
list_service_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServiceActions">>, Input, Options).

%% @doc Returns a paginated list of self-service actions associated with the
%% specified Product ID and Provisioning Artifact ID.
list_service_actions_for_provisioning_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_actions_for_provisioning_artifact(Client, Input, []).
list_service_actions_for_provisioning_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServiceActionsForProvisioningArtifact">>, Input, Options).

%% @doc Returns summary information about stack instances that are associated
%% with the specified `CFN_STACKSET' type provisioned product.
%%
%% You can filter for stack instances that are associated with a specific
%% Amazon Web Services account name or Region.
list_stack_instances_for_provisioned_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stack_instances_for_provisioned_product(Client, Input, []).
list_stack_instances_for_provisioned_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStackInstancesForProvisionedProduct">>, Input, Options).

%% @doc Lists the specified TagOptions or all TagOptions.
list_tag_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tag_options(Client, Input, []).
list_tag_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagOptions">>, Input, Options).

%% @doc Notifies the result of the provisioning engine execution.
notify_provision_product_engine_workflow_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    notify_provision_product_engine_workflow_result(Client, Input, []).
notify_provision_product_engine_workflow_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"NotifyProvisionProductEngineWorkflowResult">>, Input, Options).

%% @doc Notifies the result of the terminate engine execution.
notify_terminate_provisioned_product_engine_workflow_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    notify_terminate_provisioned_product_engine_workflow_result(Client, Input, []).
notify_terminate_provisioned_product_engine_workflow_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"NotifyTerminateProvisionedProductEngineWorkflowResult">>, Input, Options).

%% @doc Notifies the result of the update engine execution.
notify_update_provisioned_product_engine_workflow_result(Client, Input)
  when is_map(Client), is_map(Input) ->
    notify_update_provisioned_product_engine_workflow_result(Client, Input, []).
notify_update_provisioned_product_engine_workflow_result(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"NotifyUpdateProvisionedProductEngineWorkflowResult">>, Input, Options).

%% @doc Provisions the specified product.
%%
%% A provisioned product is a resourced instance of a product. For example,
%% provisioning a product that's based on an CloudFormation template
%% launches an CloudFormation stack and its underlying resources. You can
%% check the status of this request using `DescribeRecord'.
%%
%% If the request contains a tag key with an empty list of values,
%% there's a tag conflict for that key. Don't include conflicted keys
%% as tags, or this will cause the error &quot;Parameter validation failed:
%% Missing required parameter in Tags[N]:Value&quot;.
%%
%% When provisioning a product that's been added to a portfolio, you must
%% grant your user, group, or role access to the portfolio. For more
%% information, see Granting users access in the Service Catalog User Guide.
provision_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    provision_product(Client, Input, []).
provision_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ProvisionProduct">>, Input, Options).

%% @doc Rejects an offer to share the specified portfolio.
reject_portfolio_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_portfolio_share(Client, Input, []).
reject_portfolio_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectPortfolioShare">>, Input, Options).

%% @doc Lists the provisioned products that are available (not terminated).
%%
%% To use additional filtering, see `SearchProvisionedProducts'.
scan_provisioned_products(Client, Input)
  when is_map(Client), is_map(Input) ->
    scan_provisioned_products(Client, Input, []).
scan_provisioned_products(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ScanProvisionedProducts">>, Input, Options).

%% @doc Gets information about the products to which the caller has access.
search_products(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_products(Client, Input, []).
search_products(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchProducts">>, Input, Options).

%% @doc Gets information about the products for the specified portfolio or
%% all products.
search_products_as_admin(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_products_as_admin(Client, Input, []).
search_products_as_admin(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchProductsAsAdmin">>, Input, Options).

%% @doc Gets information about the provisioned products that meet the
%% specified criteria.
search_provisioned_products(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_provisioned_products(Client, Input, []).
search_provisioned_products(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchProvisionedProducts">>, Input, Options).

%% @doc Terminates the specified provisioned product.
%%
%% This operation does not delete any records associated with the provisioned
%% product.
%%
%% You can check the status of this request using `DescribeRecord'.
terminate_provisioned_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_provisioned_product(Client, Input, []).
terminate_provisioned_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateProvisionedProduct">>, Input, Options).

%% @doc Updates the specified constraint.
update_constraint(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_constraint(Client, Input, []).
update_constraint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConstraint">>, Input, Options).

%% @doc Updates the specified portfolio.
%%
%% You cannot update a product that was shared with you.
update_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_portfolio(Client, Input, []).
update_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePortfolio">>, Input, Options).

%% @doc Updates the specified portfolio share.
%%
%% You can use this API to enable or disable `TagOptions' sharing or
%% Principal sharing for an existing portfolio share.
%%
%% The portfolio share cannot be updated if the `CreatePortfolioShare'
%% operation is `IN_PROGRESS', as the share is not available to recipient
%% entities. In this case, you must wait for the portfolio share to be
%% COMPLETED.
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
%% escalation path may occur when that portfolio is then shared with other
%% accounts. For a user in a recipient account who is not an Service Catalog
%% Admin, but still has the ability to create Principals
%% (Users/Groups/Roles), that user could create a role that matches a
%% principal name association for the portfolio. Although this user may not
%% know which principal names are associated through Service Catalog, they
%% may be able to guess the user. If this potential escalation path is a
%% concern, then Service Catalog recommends using `PrincipalType' as
%% `IAM'. With this configuration, the `PrincipalARN' must already
%% exist in the recipient account before it can be associated.
update_portfolio_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_portfolio_share(Client, Input, []).
update_portfolio_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePortfolioShare">>, Input, Options).

%% @doc Updates the specified product.
update_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_product(Client, Input, []).
update_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProduct">>, Input, Options).

%% @doc Requests updates to the configuration of the specified provisioned
%% product.
%%
%% If there are tags associated with the object, they cannot be updated or
%% added. Depending on the specific updates requested, this operation can
%% update with no interruption, with some interruption, or replace the
%% provisioned product entirely.
%%
%% You can check the status of this request using `DescribeRecord'.
update_provisioned_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_provisioned_product(Client, Input, []).
update_provisioned_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProvisionedProduct">>, Input, Options).

%% @doc Requests updates to the properties of the specified provisioned
%% product.
update_provisioned_product_properties(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_provisioned_product_properties(Client, Input, []).
update_provisioned_product_properties(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProvisionedProductProperties">>, Input, Options).

%% @doc Updates the specified provisioning artifact (also known as a version)
%% for the specified product.
%%
%% You cannot update a provisioning artifact for a product that was shared
%% with you.
update_provisioning_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_provisioning_artifact(Client, Input, []).
update_provisioning_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProvisioningArtifact">>, Input, Options).

%% @doc Updates a self-service action.
update_service_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service_action(Client, Input, []).
update_service_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServiceAction">>, Input, Options).

%% @doc Updates the specified TagOption.
update_tag_option(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_tag_option(Client, Input, []).
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
