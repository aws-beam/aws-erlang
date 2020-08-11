%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>AWS Service Catalog</fullname>
%%
%% <a href="https://aws.amazon.com/servicecatalog/">AWS Service Catalog</a>
%% enables organizations to create and manage catalogs of IT services that
%% are approved for use on AWS. To get the most out of this documentation,
%% you should be familiar with the terminology discussed in <a
%% href="http://docs.aws.amazon.com/servicecatalog/latest/adminguide/what-is_concepts.html">AWS
%% Service Catalog Concepts</a>.
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
         disable_a_w_s_organizations_access/2,
         disable_a_w_s_organizations_access/3,
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
         enable_a_w_s_organizations_access/2,
         enable_a_w_s_organizations_access/3,
         execute_provisioned_product_plan/2,
         execute_provisioned_product_plan/3,
         execute_provisioned_product_service_action/2,
         execute_provisioned_product_service_action/3,
         get_a_w_s_organizations_access_status/2,
         get_a_w_s_organizations_access_status/3,
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
%% copy a product to the same region or another region.
%%
%% This operation is performed asynchronously. To track the progress of the
%% operation, use <a>DescribeCopyProductStatus</a>.
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
%% organization node. Shares to an organization node can only be created by
%% the master account of an organization or by a delegated administrator. You
%% can share portfolios to an organization, an organizational unit, or a
%% specific account.
%%
%% Note that if a delegated admin is de-registered, they can no longer create
%% portfolio shares.
%%
%% <code>AWSOrganizationsAccess</code> must be enabled in order to create a
%% portfolio share to an organization node.
%%
%% You can't share a shared resource. This includes portfolios that contain a
%% shared product.
create_portfolio_share(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_portfolio_share(Client, Input, []).
create_portfolio_share(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePortfolioShare">>, Input, Options).

%% @doc Creates a product.
%%
%% A delegated admin is authorized to invoke this command.
create_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_product(Client, Input, []).
create_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProduct">>, Input, Options).

%% @doc Creates a plan. A plan includes the list of resources to be created
%% (when provisioning a new product) or modified (when updating a provisioned
%% product) when the plan is executed.
%%
%% You can create one plan per provisioned product. To create a plan for an
%% existing provisioned product, the product status must be AVAILBLE or
%% TAINTED.
%%
%% To view the resource changes in the change set, use
%% <a>DescribeProvisionedProductPlan</a>. To create or modify the provisioned
%% product, use <a>ExecuteProvisionedProductPlan</a>.
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
%% organization node. Shares to an organization node can only be deleted by
%% the master account of an organization or by a delegated administrator.
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

%% @doc Gets the status of the specified portfolio share operation. This API
%% can only be called by the master account in the organization or by a
%% delegated admin.
describe_portfolio_share_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_portfolio_share_status(Client, Input, []).
describe_portfolio_share_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePortfolioShareStatus">>, Input, Options).

%% @doc Gets information about the specified product.
describe_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_product(Client, Input, []).
describe_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProduct">>, Input, Options).

%% @doc Gets information about the specified product. This operation is run
%% with administrator access.
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
%% <a>ProvisionProduct</a>, do not include conflicted TagOption keys as tags,
%% or this causes the error "Parameter validation failed: Missing required
%% parameter in Tags[<i>N</i>]:<i>Value</i>". Tag the provisioned product
%% with the value <code>sc-tagoption-conflict-portfolioId-productId</code>.
describe_provisioning_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_provisioning_parameters(Client, Input, []).
describe_provisioning_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProvisioningParameters">>, Input, Options).

%% @doc Gets information about the specified request operation.
%%
%% Use this operation after calling a request operation (for example,
%% <a>ProvisionProduct</a>, <a>TerminateProvisionedProduct</a>, or
%% <a>UpdateProvisionedProduct</a>).
%%
%% <note> If a provisioned product was transferred to a new owner using
%% <a>UpdateProvisionedProductProperties</a>, the new owner will be able to
%% describe all past records for that product. The previous owner will no
%% longer be able to describe the records, but will be able to use
%% <a>ListRecordHistory</a> to see the product's history from when he was the
%% owner.
%%
%% </note>
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

%% @doc Disable portfolio sharing through AWS Organizations feature. This
%% feature will not delete your current shares but it will prevent you from
%% creating new shares throughout your organization. Current shares will not
%% be in sync with your organization structure if it changes after calling
%% this API. This API can only be called by the master account in the
%% organization.
%%
%% This API can't be invoked if there are active delegated administrators in
%% the organization.
%%
%% Note that a delegated administrator is not authorized to invoke
%% <code>DisableAWSOrganizationsAccess</code>.
disable_a_w_s_organizations_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_a_w_s_organizations_access(Client, Input, []).
disable_a_w_s_organizations_access(Client, Input, Options)
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

%% @doc Enable portfolio sharing feature through AWS Organizations. This API
%% will allow Service Catalog to receive updates on your organization in
%% order to sync your shares with the current structure. This API can only be
%% called by the master account in the organization.
%%
%% By calling this API Service Catalog will make a call to
%% organizations:EnableAWSServiceAccess on your behalf so that your shares
%% can be in sync with any changes in your AWS Organizations structure.
%%
%% Note that a delegated administrator is not authorized to invoke
%% <code>EnableAWSOrganizationsAccess</code>.
enable_a_w_s_organizations_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_a_w_s_organizations_access(Client, Input, []).
enable_a_w_s_organizations_access(Client, Input, Options)
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

%% @doc Get the Access Status for AWS Organization portfolio share feature.
%% This API can only be called by the master account in the organization or
%% by a delegated admin.
get_a_w_s_organizations_access_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_a_w_s_organizations_access_status(Client, Input, []).
get_a_w_s_organizations_access_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAWSOrganizationsAccessStatus">>, Input, Options).

%% @doc Lists all portfolios for which sharing was accepted by this account.
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

%% @doc Lists the paths to the specified product. A path is how the user has
%% access to a specified product, and is necessary when provisioning a
%% product. A path also determines the constraints put on the product.
list_launch_paths(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_launch_paths(Client, Input, []).
list_launch_paths(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLaunchPaths">>, Input, Options).

%% @doc Lists the organization nodes that have access to the specified
%% portfolio. This API can only be called by the master account in the
%% organization or by a delegated admin.
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

%% @doc Lists all principal ARNs associated with the specified portfolio.
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
%% with the specified <code>CFN_STACKSET</code> type provisioned product. You
%% can filter for stack instances that are associated with a specific AWS
%% account name or region.
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

%% @doc Provisions the specified product.
%%
%% A provisioned product is a resourced instance of a product. For example,
%% provisioning a product based on a CloudFormation template launches a
%% CloudFormation stack and its underlying resources. You can check the
%% status of this request using <a>DescribeRecord</a>.
%%
%% If the request contains a tag key with an empty list of values, there is a
%% tag conflict for that key. Do not include conflicted keys as tags, or this
%% causes the error "Parameter validation failed: Missing required parameter
%% in Tags[<i>N</i>]:<i>Value</i>".
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
%% To use additional filtering, see <a>SearchProvisionedProducts</a>.
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
%% You can check the status of this request using <a>DescribeRecord</a>.
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
%% You can check the status of this request using <a>DescribeRecord</a>.
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
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"servicecatalog">>},
    Host = get_host(<<"servicecatalog">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, << <<"AWS242ServiceCatalogService.">>/binary, Action/binary>>}
    ],
    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    Exception = maps:get(<<"__type">>, Error, undefined),
    Reason = maps:get(<<"message">>, Error, undefined),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
