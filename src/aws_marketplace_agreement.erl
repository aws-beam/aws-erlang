%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Marketplace is a curated digital catalog that customers can use
%% to find, buy, deploy, and manage third-party software, data, and services
%% to build solutions and run their businesses.
%%
%% The AWS Marketplace Agreement Service provides an API interface that helps
%% AWS Marketplace sellers and buyers manage their product-related
%% agreements, including listing, searching, creating, and filtering
%% agreements.
-module(aws_marketplace_agreement).

-export([accept_agreement_approval/2,
         accept_agreement_approval/3,
         accept_agreement_cancellation_request/2,
         accept_agreement_cancellation_request/3,
         accept_agreement_payment_request/2,
         accept_agreement_payment_request/3,
         accept_agreement_request/2,
         accept_agreement_request/3,
         batch_create_billing_adjustment_request/2,
         batch_create_billing_adjustment_request/3,
         cancel_agreement/2,
         cancel_agreement/3,
         cancel_agreement_cancellation_request/2,
         cancel_agreement_cancellation_request/3,
         cancel_agreement_payment_request/2,
         cancel_agreement_payment_request/3,
         cancel_agreement_request/2,
         cancel_agreement_request/3,
         create_agreement_request/2,
         create_agreement_request/3,
         describe_agreement/2,
         describe_agreement/3,
         get_agreement_approval/2,
         get_agreement_approval/3,
         get_agreement_cancellation_request/2,
         get_agreement_cancellation_request/3,
         get_agreement_contacts/2,
         get_agreement_contacts/3,
         get_agreement_entitlements/2,
         get_agreement_entitlements/3,
         get_agreement_payment_request/2,
         get_agreement_payment_request/3,
         get_agreement_request/2,
         get_agreement_request/3,
         get_agreement_request_approval_plans/2,
         get_agreement_request_approval_plans/3,
         get_agreement_request_terms/2,
         get_agreement_request_terms/3,
         get_agreement_terms/2,
         get_agreement_terms/3,
         get_billing_adjustment_request/2,
         get_billing_adjustment_request/3,
         list_agreement_approvals/2,
         list_agreement_approvals/3,
         list_agreement_cancellation_requests/2,
         list_agreement_cancellation_requests/3,
         list_agreement_charges/2,
         list_agreement_charges/3,
         list_agreement_invoice_line_items/2,
         list_agreement_invoice_line_items/3,
         list_agreement_payment_requests/2,
         list_agreement_payment_requests/3,
         list_agreement_requests/2,
         list_agreement_requests/3,
         list_billing_adjustment_requests/2,
         list_billing_adjustment_requests/3,
         reject_agreement_approval/2,
         reject_agreement_approval/3,
         reject_agreement_cancellation_request/2,
         reject_agreement_cancellation_request/3,
         reject_agreement_payment_request/2,
         reject_agreement_payment_request/3,
         search_agreements/2,
         search_agreements/3,
         send_agreement_cancellation_request/2,
         send_agreement_cancellation_request/3,
         send_agreement_payment_request/2,
         send_agreement_payment_request/3,
         start_agreement_approvals/2,
         start_agreement_approvals/3,
         update_purchase_orders/2,
         update_purchase_orders/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%% hackney:body/1 is only called with hackney versions that still export it.
-ignore_xref([{hackney, body, 1}]).


%% Example:
%% accept_agreement_approval_input() :: #{
%%   <<"buyerAgreementApprovalApproverInput">> => buyer_agreement_approval_approver_input()
%% }
-type accept_agreement_approval_input() :: #{binary() => any()}.

%% Example:
%% accept_agreement_approval_output() :: #{

%% }
-type accept_agreement_approval_output() :: #{binary() => any()}.

%% Example:
%% accept_agreement_cancellation_request_input() :: #{
%%   <<"agreementCancellationRequestId">> := string(),
%%   <<"agreementId">> := string()
%% }
-type accept_agreement_cancellation_request_input() :: #{binary() => any()}.

%% Example:
%% accept_agreement_cancellation_request_output() :: #{
%%   <<"agreementCancellationRequestId">> => string(),
%%   <<"agreementId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"reasonCode">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type accept_agreement_cancellation_request_output() :: #{binary() => any()}.

%% Example:
%% accept_agreement_payment_request_input() :: #{
%%   <<"agreementId">> := string(),
%%   <<"paymentRequestId">> := string(),
%%   <<"purchaseOrderReference">> => string()
%% }
-type accept_agreement_payment_request_input() :: #{binary() => any()}.

%% Example:
%% accept_agreement_payment_request_output() :: #{
%%   <<"agreementId">> => string(),
%%   <<"chargeAmount">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"currencyCode">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"paymentRequestId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type accept_agreement_payment_request_output() :: #{binary() => any()}.

%% Example:
%% accept_agreement_request_input() :: #{
%%   <<"agreementRequestId">> := string(),
%%   <<"purchaseOrders">> => list(purchase_order())
%% }
-type accept_agreement_request_input() :: #{binary() => any()}.

%% Example:
%% accept_agreement_request_output() :: #{
%%   <<"agreementId">> => string()
%% }
-type accept_agreement_request_output() :: #{binary() => any()}.

%% Example:
%% acceptor() :: #{
%%   <<"accountId">> => string()
%% }
-type acceptor() :: #{binary() => any()}.

%% Example:
%% acceptor_contact() :: #{
%%   <<"companyName">> => string(),
%%   <<"countryCode">> => string(),
%%   <<"emailAddress">> => string(),
%%   <<"firstName">> => string(),
%%   <<"lastName">> => string()
%% }
-type acceptor_contact() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string(),
%%   <<"reason">> => list(any()),
%%   <<"requestId">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% agreement_approval_proposal_summary() :: #{
%%   <<"offerId">> => string(),
%%   <<"offerSetId">> => string(),
%%   <<"resources">> => list(agreement_approval_resource()),
%%   <<"visibilityScope">> => list(any())
%% }
-type agreement_approval_proposal_summary() :: #{binary() => any()}.

%% Example:
%% agreement_approval_proposer() :: #{
%%   <<"accountId">> => string(),
%%   <<"legalName">> => string()
%% }
-type agreement_approval_proposer() :: #{binary() => any()}.

%% Example:
%% agreement_approval_purchase_order() :: #{
%%   <<"chargeId">> => string(),
%%   <<"purchaseOrderReference">> => string()
%% }
-type agreement_approval_purchase_order() :: #{binary() => any()}.

%% Example:
%% agreement_approval_requester() :: #{
%%   <<"accountId">> => string()
%% }
-type agreement_approval_requester() :: #{binary() => any()}.

%% Example:
%% agreement_approval_resource() :: #{
%%   <<"deployedOnAws">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"type">> => string()
%% }
-type agreement_approval_resource() :: #{binary() => any()}.

%% Example:
%% agreement_approval_summary() :: #{
%%   <<"agreementApprovalId">> => string(),
%%   <<"agreementRequestId">> => string(),
%%   <<"approvalNeededBy">> => non_neg_integer(),
%%   <<"approvalType">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"expiresAt">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type agreement_approval_summary() :: #{binary() => any()}.

%% Example:
%% agreement_cancellation_request_summary() :: #{
%%   <<"agreementCancellationRequestId">> => string(),
%%   <<"agreementId">> => string(),
%%   <<"agreementType">> => string(),
%%   <<"catalog">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"reasonCode">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type agreement_cancellation_request_summary() :: #{binary() => any()}.

%% Example:
%% agreement_entitlement() :: #{
%%   <<"licenseArn">> => string(),
%%   <<"registrationToken">> => string(),
%%   <<"resource">> => resource(),
%%   <<"status">> => list(any()),
%%   <<"statusReasonCode">> => list(any()),
%%   <<"type">> => string()
%% }
-type agreement_entitlement() :: #{binary() => any()}.

%% Example:
%% agreement_invoice_line_item_group_summary() :: #{
%%   <<"agreementId">> => string(),
%%   <<"invoiceBillingPeriod">> => invoice_billing_period(),
%%   <<"invoiceId">> => string(),
%%   <<"invoiceType">> => list(any()),
%%   <<"invoicingEntity">> => invoicing_entity(),
%%   <<"issuedTime">> => non_neg_integer(),
%%   <<"pricingCurrencyAmount">> => pricing_currency_amount()
%% }
-type agreement_invoice_line_item_group_summary() :: #{binary() => any()}.

%% Example:
%% agreement_request_summary() :: #{
%%   <<"agreementId">> => string(),
%%   <<"agreementRequestId">> => string(),
%%   <<"agreementType">> => string(),
%%   <<"proposalSummary">> => proposal_summary(),
%%   <<"status">> => list(any())
%% }
-type agreement_request_summary() :: #{binary() => any()}.

%% Example:
%% agreement_view_summary() :: #{
%%   <<"acceptanceTime">> => non_neg_integer(),
%%   <<"acceptor">> => acceptor(),
%%   <<"agreementId">> => string(),
%%   <<"agreementType">> => string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"endTimeBehaviorReasonCode">> => list(any()),
%%   <<"endTimeBehaviorType">> => list(any()),
%%   <<"entitlements">> => list(entitlement()),
%%   <<"freeTrialEndTime">> => non_neg_integer(),
%%   <<"includesContactOfType">> => list(list(any())()),
%%   <<"initialAgreementId">> => string(),
%%   <<"lastUpdateTime">> => non_neg_integer(),
%%   <<"proposalSummary">> => proposal_summary(),
%%   <<"proposer">> => proposer(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type agreement_view_summary() :: #{binary() => any()}.

%% Example:
%% aws_organization_admin_approver() :: #{
%%   <<"organizationId">> => string()
%% }
-type aws_organization_admin_approver() :: #{binary() => any()}.

%% Example:
%% aws_organization_approver_outcome() :: #{
%%   <<"approverOutcomeId">> => string(),
%%   <<"note">> => string(),
%%   <<"purchaseOrders">> => list(agreement_approval_purchase_order()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type aws_organization_approver_outcome() :: #{binary() => any()}.

%% Example:
%% batch_create_billing_adjustment_error() :: #{
%%   <<"clientToken">> => string(),
%%   <<"code">> => list(any()),
%%   <<"message">> => [string()]
%% }
-type batch_create_billing_adjustment_error() :: #{binary() => any()}.

%% Example:
%% batch_create_billing_adjustment_item() :: #{
%%   <<"billingAdjustmentRequestId">> => string(),
%%   <<"clientToken">> => string()
%% }
-type batch_create_billing_adjustment_item() :: #{binary() => any()}.

%% Example:
%% batch_create_billing_adjustment_request_entry() :: #{
%%   <<"adjustmentAmount">> => string(),
%%   <<"adjustmentReasonCode">> => list(any()),
%%   <<"agreementId">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"currencyCode">> => string(),
%%   <<"description">> => string(),
%%   <<"originalInvoiceId">> => string()
%% }
-type batch_create_billing_adjustment_request_entry() :: #{binary() => any()}.

%% Example:
%% batch_create_billing_adjustment_request_input() :: #{
%%   <<"billingAdjustmentRequestEntries">> := list(batch_create_billing_adjustment_request_entry())
%% }
-type batch_create_billing_adjustment_request_input() :: #{binary() => any()}.

%% Example:
%% batch_create_billing_adjustment_request_output() :: #{
%%   <<"errors">> => list(batch_create_billing_adjustment_error()),
%%   <<"items">> => list(batch_create_billing_adjustment_item())
%% }
-type batch_create_billing_adjustment_request_output() :: #{binary() => any()}.

%% Example:
%% billing_adjustment_summary() :: #{
%%   <<"adjustmentAmount">> => string(),
%%   <<"agreementId">> => string(),
%%   <<"agreementType">> => string(),
%%   <<"billingAdjustmentRequestId">> => string(),
%%   <<"catalog">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"currencyCode">> => string(),
%%   <<"originalInvoiceId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type billing_adjustment_summary() :: #{binary() => any()}.

%% Example:
%% buyer_agreement_approval() :: #{
%%   <<"agreementApprovalId">> => string(),
%%   <<"agreementRequestId">> => string(),
%%   <<"approvalNeededBy">> => non_neg_integer(),
%%   <<"approvalType">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"expiresAt">> => non_neg_integer(),
%%   <<"levels">> => list(buyer_agreement_approval_level()),
%%   <<"name">> => string(),
%%   <<"planInput">> => buyer_agreement_approval_plan_input(),
%%   <<"proposalSummary">> => agreement_approval_proposal_summary(),
%%   <<"proposer">> => agreement_approval_proposer(),
%%   <<"requester">> => agreement_approval_requester(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type buyer_agreement_approval() :: #{binary() => any()}.

%% Example:
%% buyer_agreement_approval_approver_input() :: #{
%%   <<"agreementApprovalId">> => string(),
%%   <<"approverOutcomeIdToOverride">> => string(),
%%   <<"note">> => string(),
%%   <<"purchaseOrders">> => list(agreement_approval_purchase_order())
%% }
-type buyer_agreement_approval_approver_input() :: #{binary() => any()}.

%% Example:
%% buyer_agreement_approval_criteria() :: #{
%%   <<"requiredApprovalCount">> => [integer()]
%% }
-type buyer_agreement_approval_criteria() :: #{binary() => any()}.

%% Example:
%% buyer_agreement_approval_group() :: #{
%%   <<"approvalCriteria">> => buyer_agreement_approval_criteria(),
%%   <<"approvers">> => list(list())
%% }
-type buyer_agreement_approval_group() :: #{binary() => any()}.

%% Example:
%% buyer_agreement_approval_level() :: #{
%%   <<"groups">> => list(buyer_agreement_approval_group()),
%%   <<"name">> => string()
%% }
-type buyer_agreement_approval_level() :: #{binary() => any()}.

%% Example:
%% buyer_agreement_approval_plan() :: #{
%%   <<"levels">> => list(buyer_agreement_approval_plan_level()),
%%   <<"name">> => string(),
%%   <<"planReference">> => string()
%% }
-type buyer_agreement_approval_plan() :: #{binary() => any()}.

%% Example:
%% buyer_agreement_approval_plan_group() :: #{
%%   <<"approvalCriteria">> => buyer_agreement_approval_criteria(),
%%   <<"approvers">> => list(list())
%% }
-type buyer_agreement_approval_plan_group() :: #{binary() => any()}.

%% Example:
%% buyer_agreement_approval_plan_input() :: #{
%%   <<"planReference">> => string(),
%%   <<"requesterNote">> => string()
%% }
-type buyer_agreement_approval_plan_input() :: #{binary() => any()}.

%% Example:
%% buyer_agreement_approval_plan_level() :: #{
%%   <<"groups">> => list(buyer_agreement_approval_plan_group()),
%%   <<"name">> => string()
%% }
-type buyer_agreement_approval_plan_level() :: #{binary() => any()}.

%% Example:
%% buyer_agreement_approval_rejection_input() :: #{
%%   <<"agreementApprovalId">> => string(),
%%   <<"approverOutcomeIdToOverride">> => string(),
%%   <<"note">> => string()
%% }
-type buyer_agreement_approval_rejection_input() :: #{binary() => any()}.

%% Example:
%% byol_pricing_term() :: #{
%%   <<"id">> => string(),
%%   <<"type">> => string()
%% }
-type byol_pricing_term() :: #{binary() => any()}.

%% Example:
%% caller_identity() :: #{
%%   <<"principalArn">> => string()
%% }
-type caller_identity() :: #{binary() => any()}.

%% Example:
%% cancel_agreement_cancellation_request_input() :: #{
%%   <<"agreementCancellationRequestId">> := string(),
%%   <<"agreementId">> := string(),
%%   <<"cancellationReason">> := string()
%% }
-type cancel_agreement_cancellation_request_input() :: #{binary() => any()}.

%% Example:
%% cancel_agreement_cancellation_request_output() :: #{
%%   <<"agreementCancellationRequestId">> => string(),
%%   <<"agreementId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"reasonCode">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type cancel_agreement_cancellation_request_output() :: #{binary() => any()}.

%% Example:
%% cancel_agreement_input() :: #{
%%   <<"agreementId">> := string()
%% }
-type cancel_agreement_input() :: #{binary() => any()}.

%% Example:
%% cancel_agreement_output() :: #{

%% }
-type cancel_agreement_output() :: #{binary() => any()}.

%% Example:
%% cancel_agreement_payment_request_input() :: #{
%%   <<"agreementId">> := string(),
%%   <<"paymentRequestId">> := string()
%% }
-type cancel_agreement_payment_request_input() :: #{binary() => any()}.

%% Example:
%% cancel_agreement_payment_request_output() :: #{
%%   <<"agreementId">> => string(),
%%   <<"chargeAmount">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"currencyCode">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"paymentRequestId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type cancel_agreement_payment_request_output() :: #{binary() => any()}.

%% Example:
%% cancel_agreement_request_input() :: #{
%%   <<"agreementRequestId">> := string()
%% }
-type cancel_agreement_request_input() :: #{binary() => any()}.

%% Example:
%% cancel_agreement_request_output() :: #{

%% }
-type cancel_agreement_request_output() :: #{binary() => any()}.

%% Example:
%% charge() :: #{
%%   <<"agreementId">> => string(),
%%   <<"agreementType">> => string(),
%%   <<"amount">> => string(),
%%   <<"currencyCode">> => string(),
%%   <<"id">> => string(),
%%   <<"purchaseOrderReference">> => string(),
%%   <<"revision">> => float(),
%%   <<"time">> => non_neg_integer()
%% }
-type charge() :: #{binary() => any()}.

%% Example:
%% charge_summary() :: #{
%%   <<"currencyCode">> => string(),
%%   <<"estimatedTaxes">> => estimated_taxes(),
%%   <<"expectedCharges">> => list(expected_charge()),
%%   <<"invoicingEntity">> => invoicing_entity(),
%%   <<"itemizedCharges">> => list(itemized_charge()),
%%   <<"newAgreementValue">> => string(),
%%   <<"newAgreementValueAfterTax">> => string()
%% }
-type charge_summary() :: #{binary() => any()}.

%% Example:
%% configurable_upfront_pricing_term() :: #{
%%   <<"configuration">> => configurable_upfront_pricing_term_configuration(),
%%   <<"currencyCode">> => string(),
%%   <<"id">> => string(),
%%   <<"rateCards">> => list(configurable_upfront_rate_card_item()),
%%   <<"type">> => string()
%% }
-type configurable_upfront_pricing_term() :: #{binary() => any()}.

%% Example:
%% configurable_upfront_pricing_term_configuration() :: #{
%%   <<"dimensions">> => list(dimension()),
%%   <<"selectorValue">> => string()
%% }
-type configurable_upfront_pricing_term_configuration() :: #{binary() => any()}.

%% Example:
%% configurable_upfront_rate_card_item() :: #{
%%   <<"constraints">> => constraints(),
%%   <<"rateCard">> => list(rate_card_item()),
%%   <<"selector">> => selector()
%% }
-type configurable_upfront_rate_card_item() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"requestId">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => list(any())
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% constraints() :: #{
%%   <<"multipleDimensionSelection">> => string(),
%%   <<"quantityConfiguration">> => string()
%% }
-type constraints() :: #{binary() => any()}.

%% Example:
%% create_agreement_request_input() :: #{
%%   <<"acceptorContact">> => acceptor_contact(),
%%   <<"agreementProposalIdentifier">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"intent">> := list(any()),
%%   <<"requestedTerms">> := list(requested_term()),
%%   <<"sourceAgreementIdentifier">> => string(),
%%   <<"taxConfiguration">> => tax_configuration()
%% }
-type create_agreement_request_input() :: #{binary() => any()}.

%% Example:
%% create_agreement_request_output() :: #{
%%   <<"agreementRequestId">> => string(),
%%   <<"agreementType">> => string(),
%%   <<"approvalRequirement">> => list(any()),
%%   <<"chargeSummary">> => charge_summary(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type create_agreement_request_output() :: #{binary() => any()}.

%% Example:
%% describe_agreement_input() :: #{
%%   <<"agreementId">> := string()
%% }
-type describe_agreement_input() :: #{binary() => any()}.

%% Example:
%% describe_agreement_output() :: #{
%%   <<"acceptanceTime">> => non_neg_integer(),
%%   <<"acceptor">> => acceptor(),
%%   <<"agreementId">> => string(),
%%   <<"agreementType">> => string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"endTimeBehavior">> => end_time_behavior(),
%%   <<"estimatedCharges">> => estimated_charges(),
%%   <<"freeTrialSummary">> => free_trial_summary(),
%%   <<"initialAgreementId">> => string(),
%%   <<"proposalSummary">> => proposal_summary(),
%%   <<"proposer">> => proposer(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type describe_agreement_output() :: #{binary() => any()}.

%% Example:
%% dimension() :: #{
%%   <<"dimensionKey">> => string(),
%%   <<"dimensionValue">> => integer()
%% }
-type dimension() :: #{binary() => any()}.

%% Example:
%% document_item() :: #{
%%   <<"type">> => string(),
%%   <<"url">> => string(),
%%   <<"version">> => string()
%% }
-type document_item() :: #{binary() => any()}.

%% Example:
%% email_approver() :: #{
%%   <<"emailAddress">> => string(),
%%   <<"name">> => string()
%% }
-type email_approver() :: #{binary() => any()}.

%% Example:
%% email_approver_outcome() :: #{
%%   <<"approverOutcomeId">> => string(),
%%   <<"emailAddress">> => string(),
%%   <<"name">> => string(),
%%   <<"note">> => string(),
%%   <<"overriddenBy">> => caller_identity(),
%%   <<"purchaseOrders">> => list(agreement_approval_purchase_order()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type email_approver_outcome() :: #{binary() => any()}.

%% Example:
%% end_time_behavior() :: #{
%%   <<"reasonCode">> => list(any()),
%%   <<"renewalSummary">> => renewal_summary(),
%%   <<"type">> => list(any())
%% }
-type end_time_behavior() :: #{binary() => any()}.

%% Example:
%% entitlement() :: #{
%%   <<"licenseArn">> => [string()]
%% }
-type entitlement() :: #{binary() => any()}.

%% Example:
%% estimated_charges() :: #{
%%   <<"agreementValue">> => string(),
%%   <<"currencyCode">> => string()
%% }
-type estimated_charges() :: #{binary() => any()}.

%% Example:
%% estimated_taxes() :: #{
%%   <<"breakdown">> => list(tax_breakdown_item()),
%%   <<"totalAmount">> => string()
%% }
-type estimated_taxes() :: #{binary() => any()}.

%% Example:
%% expected_charge() :: #{
%%   <<"amount">> => string(),
%%   <<"amountAfterTax">> => string(),
%%   <<"estimatedTaxes">> => estimated_taxes(),
%%   <<"id">> => string(),
%%   <<"purchaseOrderReference">> => string(),
%%   <<"time">> => non_neg_integer(),
%%   <<"timing">> => list(any())
%% }
-type expected_charge() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"name">> => string(),
%%   <<"values">> => list(string())
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% fixed_percentage() :: #{
%%   <<"value">> => string()
%% }
-type fixed_percentage() :: #{binary() => any()}.

%% Example:
%% fixed_upfront_pricing_term() :: #{
%%   <<"currencyCode">> => string(),
%%   <<"duration">> => string(),
%%   <<"grants">> => list(grant_item()),
%%   <<"id">> => string(),
%%   <<"price">> => string(),
%%   <<"type">> => string()
%% }
-type fixed_upfront_pricing_term() :: #{binary() => any()}.

%% Example:
%% free_trial_pricing_term() :: #{
%%   <<"duration">> => string(),
%%   <<"grants">> => list(grant_item()),
%%   <<"id">> => string(),
%%   <<"type">> => string()
%% }
-type free_trial_pricing_term() :: #{binary() => any()}.

%% Example:
%% free_trial_summary() :: #{
%%   <<"trialEndTime">> => non_neg_integer()
%% }
-type free_trial_summary() :: #{binary() => any()}.

%% Example:
%% get_agreement_approval_input() :: #{
%%   <<"agreementApprovalId">> := string()
%% }
-type get_agreement_approval_input() :: #{binary() => any()}.

%% Example:
%% get_agreement_approval_output() :: #{
%%   <<"buyerAgreementApproval">> => buyer_agreement_approval()
%% }
-type get_agreement_approval_output() :: #{binary() => any()}.

%% Example:
%% get_agreement_cancellation_request_input() :: #{
%%   <<"agreementCancellationRequestId">> := string(),
%%   <<"agreementId">> := string()
%% }
-type get_agreement_cancellation_request_input() :: #{binary() => any()}.

%% Example:
%% get_agreement_cancellation_request_output() :: #{
%%   <<"agreementCancellationRequestId">> => string(),
%%   <<"agreementId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"reasonCode">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_agreement_cancellation_request_output() :: #{binary() => any()}.

%% Example:
%% get_agreement_contacts_input() :: #{
%%   <<"agreementId">> := string()
%% }
-type get_agreement_contacts_input() :: #{binary() => any()}.

%% Example:
%% get_agreement_contacts_output() :: #{
%%   <<"acceptorContact">> => acceptor_contact()
%% }
-type get_agreement_contacts_output() :: #{binary() => any()}.

%% Example:
%% get_agreement_entitlements_input() :: #{
%%   <<"agreementId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_agreement_entitlements_input() :: #{binary() => any()}.

%% Example:
%% get_agreement_entitlements_output() :: #{
%%   <<"agreementEntitlements">> => list(agreement_entitlement()),
%%   <<"nextToken">> => string()
%% }
-type get_agreement_entitlements_output() :: #{binary() => any()}.

%% Example:
%% get_agreement_payment_request_input() :: #{
%%   <<"agreementId">> := string(),
%%   <<"paymentRequestId">> := string()
%% }
-type get_agreement_payment_request_input() :: #{binary() => any()}.

%% Example:
%% get_agreement_payment_request_output() :: #{
%%   <<"agreementId">> => string(),
%%   <<"chargeAmount">> => string(),
%%   <<"chargeId">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"currencyCode">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"paymentRequestId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type get_agreement_payment_request_output() :: #{binary() => any()}.

%% Example:
%% get_agreement_request_approval_plans_input() :: #{
%%   <<"agreementRequestId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_agreement_request_approval_plans_input() :: #{binary() => any()}.

%% Example:
%% get_agreement_request_approval_plans_output() :: #{
%%   <<"items">> => list(list()),
%%   <<"nextToken">> => string()
%% }
-type get_agreement_request_approval_plans_output() :: #{binary() => any()}.

%% Example:
%% get_agreement_request_input() :: #{
%%   <<"agreementRequestId">> := string()
%% }
-type get_agreement_request_input() :: #{binary() => any()}.

%% Example:
%% get_agreement_request_output() :: #{
%%   <<"agreementId">> => string(),
%%   <<"agreementRequestId">> => string(),
%%   <<"agreementType">> => string(),
%%   <<"approvalRequirement">> => list(any()),
%%   <<"chargeSummary">> => charge_summary(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"intent">> => list(any()),
%%   <<"proposalSummary">> => proposal_summary(),
%%   <<"proposer">> => proposer(),
%%   <<"status">> => list(any())
%% }
-type get_agreement_request_output() :: #{binary() => any()}.

%% Example:
%% get_agreement_request_terms_input() :: #{
%%   <<"agreementRequestId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_agreement_request_terms_input() :: #{binary() => any()}.

%% Example:
%% get_agreement_request_terms_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"terms">> => list(list())
%% }
-type get_agreement_request_terms_output() :: #{binary() => any()}.

%% Example:
%% get_agreement_terms_input() :: #{
%%   <<"agreementId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_agreement_terms_input() :: #{binary() => any()}.

%% Example:
%% get_agreement_terms_output() :: #{
%%   <<"acceptedTerms">> => list(list()),
%%   <<"nextToken">> => string()
%% }
-type get_agreement_terms_output() :: #{binary() => any()}.

%% Example:
%% get_billing_adjustment_request_input() :: #{
%%   <<"agreementId">> := string(),
%%   <<"billingAdjustmentRequestId">> := string()
%% }
-type get_billing_adjustment_request_input() :: #{binary() => any()}.

%% Example:
%% get_billing_adjustment_request_output() :: #{
%%   <<"adjustmentAmount">> => string(),
%%   <<"adjustmentReasonCode">> => list(any()),
%%   <<"agreementId">> => string(),
%%   <<"billingAdjustmentRequestId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"currencyCode">> => string(),
%%   <<"description">> => [string()],
%%   <<"originalInvoiceId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type get_billing_adjustment_request_output() :: #{binary() => any()}.

%% Example:
%% grant_item() :: #{
%%   <<"dimensionKey">> => string(),
%%   <<"maxQuantity">> => integer()
%% }
-type grant_item() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string(),
%%   <<"requestId">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% invoice_billing_period() :: #{
%%   <<"month">> => [integer()],
%%   <<"year">> => [integer()]
%% }
-type invoice_billing_period() :: #{binary() => any()}.

%% Example:
%% invoicing_entity() :: #{
%%   <<"branchName">> => string(),
%%   <<"legalName">> => string()
%% }
-type invoicing_entity() :: #{binary() => any()}.

%% Example:
%% itemized_charge() :: #{
%%   <<"chargeReference">> => string(),
%%   <<"dimensionKey">> => string(),
%%   <<"incrementalChargeAmount">> => string(),
%%   <<"newQuantity">> => [integer()],
%%   <<"oldQuantity">> => [integer()]
%% }
-type itemized_charge() :: #{binary() => any()}.

%% Example:
%% legal_term() :: #{
%%   <<"documents">> => list(document_item()),
%%   <<"id">> => string(),
%%   <<"type">> => string()
%% }
-type legal_term() :: #{binary() => any()}.

%% Example:
%% list_agreement_approvals_input() :: #{
%%   <<"agreementRequestId">> => string(),
%%   <<"approvalType">> => list(any()),
%%   <<"catalog">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"partyType">> := list(any()),
%%   <<"status">> => list(any())
%% }
-type list_agreement_approvals_input() :: #{binary() => any()}.

%% Example:
%% list_agreement_approvals_output() :: #{
%%   <<"items">> => list(agreement_approval_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_agreement_approvals_output() :: #{binary() => any()}.

%% Example:
%% list_agreement_cancellation_requests_input() :: #{
%%   <<"agreementId">> => string(),
%%   <<"agreementType">> => string(),
%%   <<"catalog">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"partyType">> := string(),
%%   <<"status">> => list(any())
%% }
-type list_agreement_cancellation_requests_input() :: #{binary() => any()}.

%% Example:
%% list_agreement_cancellation_requests_output() :: #{
%%   <<"items">> => list(agreement_cancellation_request_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_agreement_cancellation_requests_output() :: #{binary() => any()}.

%% Example:
%% list_agreement_charges_input() :: #{
%%   <<"agreementId">> => string(),
%%   <<"agreementType">> => string(),
%%   <<"catalog">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_agreement_charges_input() :: #{binary() => any()}.

%% Example:
%% list_agreement_charges_output() :: #{
%%   <<"items">> => list(charge()),
%%   <<"nextToken">> => string()
%% }
-type list_agreement_charges_output() :: #{binary() => any()}.

%% Example:
%% list_agreement_invoice_line_items_input() :: #{
%%   <<"afterIssuedTime">> => non_neg_integer(),
%%   <<"agreementId">> := string(),
%%   <<"beforeIssuedTime">> => non_neg_integer(),
%%   <<"groupBy">> := list(any()),
%%   <<"invoiceBillingPeriod">> => invoice_billing_period(),
%%   <<"invoiceId">> => string(),
%%   <<"invoiceType">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_agreement_invoice_line_items_input() :: #{binary() => any()}.

%% Example:
%% list_agreement_invoice_line_items_output() :: #{
%%   <<"agreementInvoiceLineItemGroupSummaries">> => list(agreement_invoice_line_item_group_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_agreement_invoice_line_items_output() :: #{binary() => any()}.

%% Example:
%% list_agreement_payment_requests_input() :: #{
%%   <<"agreementId">> => string(),
%%   <<"agreementType">> => string(),
%%   <<"catalog">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"partyType">> := string(),
%%   <<"status">> => list(any())
%% }
-type list_agreement_payment_requests_input() :: #{binary() => any()}.

%% Example:
%% list_agreement_payment_requests_output() :: #{
%%   <<"items">> => list(payment_request_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_agreement_payment_requests_output() :: #{binary() => any()}.

%% Example:
%% list_agreement_requests_input() :: #{
%%   <<"catalog">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_agreement_requests_input() :: #{binary() => any()}.

%% Example:
%% list_agreement_requests_output() :: #{
%%   <<"items">> => list(agreement_request_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_agreement_requests_output() :: #{binary() => any()}.

%% Example:
%% list_billing_adjustment_requests_input() :: #{
%%   <<"agreementId">> => string(),
%%   <<"agreementType">> => string(),
%%   <<"catalog">> => string(),
%%   <<"createdAfter">> => non_neg_integer(),
%%   <<"createdBefore">> => non_neg_integer(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_billing_adjustment_requests_input() :: #{binary() => any()}.

%% Example:
%% list_billing_adjustment_requests_output() :: #{
%%   <<"items">> => list(billing_adjustment_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_billing_adjustment_requests_output() :: #{binary() => any()}.

%% Example:
%% net_payment_term() :: #{
%%   <<"id">> => string(),
%%   <<"paymentDuePeriod">> => string(),
%%   <<"type">> => string()
%% }
-type net_payment_term() :: #{binary() => any()}.

%% Example:
%% payment_request_summary() :: #{
%%   <<"agreementId">> => string(),
%%   <<"chargeAmount">> => string(),
%%   <<"chargeId">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"currencyCode">> => string(),
%%   <<"name">> => string(),
%%   <<"paymentRequestId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type payment_request_summary() :: #{binary() => any()}.

%% Example:
%% payment_schedule_entry() :: #{
%%   <<"chargeDateOffset">> => string(),
%%   <<"chargePercentage">> => string(),
%%   <<"dayOfMonth">> => [integer()]
%% }
-type payment_schedule_entry() :: #{binary() => any()}.

%% Example:
%% payment_schedule_term() :: #{
%%   <<"currencyCode">> => string(),
%%   <<"id">> => string(),
%%   <<"schedule">> => list(schedule_item()),
%%   <<"type">> => string()
%% }
-type payment_schedule_term() :: #{binary() => any()}.

%% Example:
%% payment_schedule_term_template() :: #{
%%   <<"schedule">> => list(payment_schedule_entry())
%% }
-type payment_schedule_term_template() :: #{binary() => any()}.

%% Example:
%% percentage_range() :: #{
%%   <<"defaultValue">> => string(),
%%   <<"maxValue">> => string(),
%%   <<"minValue">> => string()
%% }
-type percentage_range() :: #{binary() => any()}.

%% Example:
%% pricing_currency_amount() :: #{
%%   <<"amount">> => string(),
%%   <<"currencyCode">> => string(),
%%   <<"maxAdjustmentAmount">> => string()
%% }
-type pricing_currency_amount() :: #{binary() => any()}.

%% Example:
%% procurement_tool_approver() :: #{
%%   <<"name">> => string()
%% }
-type procurement_tool_approver() :: #{binary() => any()}.

%% Example:
%% procurement_tool_approver_outcome() :: #{
%%   <<"approverOutcomeId">> => string(),
%%   <<"name">> => string(),
%%   <<"note">> => string(),
%%   <<"overriddenBy">> => caller_identity(),
%%   <<"purchaseOrders">> => list(agreement_approval_purchase_order()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type procurement_tool_approver_outcome() :: #{binary() => any()}.

%% Example:
%% proposal_summary() :: #{
%%   <<"offerId">> => string(),
%%   <<"offerSetId">> => string(),
%%   <<"resources">> => list(resource())
%% }
-type proposal_summary() :: #{binary() => any()}.

%% Example:
%% proposer() :: #{
%%   <<"accountId">> => string()
%% }
-type proposer() :: #{binary() => any()}.

%% Example:
%% purchase_order() :: #{
%%   <<"agreementId">> => string(),
%%   <<"chargeId">> => string(),
%%   <<"chargeRevision">> => float(),
%%   <<"purchaseOrderReference">> => string()
%% }
-type purchase_order() :: #{binary() => any()}.

%% Example:
%% rate_card_item() :: #{
%%   <<"dimensionKey">> => string(),
%%   <<"price">> => string(),
%%   <<"regionalPrices">> => list(regional_price())
%% }
-type rate_card_item() :: #{binary() => any()}.

%% Example:
%% recurring_payment_term() :: #{
%%   <<"billingPeriod">> => string(),
%%   <<"currencyCode">> => string(),
%%   <<"id">> => string(),
%%   <<"price">> => string(),
%%   <<"type">> => string()
%% }
-type recurring_payment_term() :: #{binary() => any()}.

%% Example:
%% regional_price() :: #{
%%   <<"price">> => string(),
%%   <<"region">> => string()
%% }
-type regional_price() :: #{binary() => any()}.

%% Example:
%% reject_agreement_approval_input() :: #{
%%   <<"buyerAgreementApprovalRejectionInput">> => buyer_agreement_approval_rejection_input()
%% }
-type reject_agreement_approval_input() :: #{binary() => any()}.

%% Example:
%% reject_agreement_approval_output() :: #{

%% }
-type reject_agreement_approval_output() :: #{binary() => any()}.

%% Example:
%% reject_agreement_cancellation_request_input() :: #{
%%   <<"agreementCancellationRequestId">> := string(),
%%   <<"agreementId">> := string(),
%%   <<"rejectionReason">> := string()
%% }
-type reject_agreement_cancellation_request_input() :: #{binary() => any()}.

%% Example:
%% reject_agreement_cancellation_request_output() :: #{
%%   <<"agreementCancellationRequestId">> => string(),
%%   <<"agreementId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"reasonCode">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type reject_agreement_cancellation_request_output() :: #{binary() => any()}.

%% Example:
%% reject_agreement_payment_request_input() :: #{
%%   <<"agreementId">> := string(),
%%   <<"paymentRequestId">> := string(),
%%   <<"rejectionReason">> => string()
%% }
-type reject_agreement_payment_request_input() :: #{binary() => any()}.

%% Example:
%% reject_agreement_payment_request_output() :: #{
%%   <<"agreementId">> => string(),
%%   <<"chargeAmount">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"currencyCode">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"paymentRequestId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type reject_agreement_payment_request_output() :: #{binary() => any()}.

%% Example:
%% renewal_summary() :: #{
%%   <<"offerId">> => string()
%% }
-type renewal_summary() :: #{binary() => any()}.

%% Example:
%% renewal_term() :: #{
%%   <<"adjustmentDeadline">> => string(),
%%   <<"configuration">> => renewal_term_configuration(),
%%   <<"id">> => string(),
%%   <<"lockoutPeriod">> => string(),
%%   <<"maxRenewals">> => [integer()],
%%   <<"priceIncrease">> => list(),
%%   <<"termTemplates">> => list(list()),
%%   <<"type">> => string()
%% }
-type renewal_term() :: #{binary() => any()}.

%% Example:
%% renewal_term_configuration() :: #{
%%   <<"enableAutoRenew">> => boolean()
%% }
-type renewal_term_configuration() :: #{binary() => any()}.

%% Example:
%% requested_term() :: #{
%%   <<"configuration">> => list(),
%%   <<"id">> => string()
%% }
-type requested_term() :: #{binary() => any()}.

%% Example:
%% resource() :: #{
%%   <<"id">> => string(),
%%   <<"type">> => string()
%% }
-type resource() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string(),
%%   <<"requestId">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => list(any())
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% schedule_item() :: #{
%%   <<"chargeAmount">> => string(),
%%   <<"chargeDate">> => non_neg_integer()
%% }
-type schedule_item() :: #{binary() => any()}.

%% Example:
%% search_agreements_input() :: #{
%%   <<"catalog">> => string(),
%%   <<"filters">> => list(filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"sort">> => sort()
%% }
-type search_agreements_input() :: #{binary() => any()}.

%% Example:
%% search_agreements_output() :: #{
%%   <<"agreementViewSummaries">> => list(agreement_view_summary()),
%%   <<"nextToken">> => string()
%% }
-type search_agreements_output() :: #{binary() => any()}.

%% Example:
%% selector() :: #{
%%   <<"type">> => string(),
%%   <<"value">> => string()
%% }
-type selector() :: #{binary() => any()}.

%% Example:
%% send_agreement_cancellation_request_input() :: #{
%%   <<"agreementId">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"reasonCode">> := list(any())
%% }
-type send_agreement_cancellation_request_input() :: #{binary() => any()}.

%% Example:
%% send_agreement_cancellation_request_output() :: #{
%%   <<"agreementCancellationRequestId">> => string(),
%%   <<"agreementId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"reasonCode">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type send_agreement_cancellation_request_output() :: #{binary() => any()}.

%% Example:
%% send_agreement_payment_request_input() :: #{
%%   <<"agreementId">> := string(),
%%   <<"chargeAmount">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"termId">> := string()
%% }
-type send_agreement_payment_request_input() :: #{binary() => any()}.

%% Example:
%% send_agreement_payment_request_output() :: #{
%%   <<"agreementId">> => string(),
%%   <<"chargeAmount">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"currencyCode">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"paymentRequestId">> => string(),
%%   <<"status">> => list(any())
%% }
-type send_agreement_payment_request_output() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"requestId">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"serviceCode">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% sort() :: #{
%%   <<"sortBy">> => string(),
%%   <<"sortOrder">> => list(any())
%% }
-type sort() :: #{binary() => any()}.

%% Example:
%% start_agreement_approvals_input() :: #{
%%   <<"agreementRequestId">> := string(),
%%   <<"planInputs">> := list(list()),
%%   <<"purchaseOrders">> => list(agreement_approval_purchase_order())
%% }
-type start_agreement_approvals_input() :: #{binary() => any()}.

%% Example:
%% start_agreement_approvals_output() :: #{
%%   <<"approvalSummaries">> => list(agreement_approval_summary())
%% }
-type start_agreement_approvals_output() :: #{binary() => any()}.

%% Example:
%% support_term() :: #{
%%   <<"id">> => string(),
%%   <<"refundPolicy">> => string(),
%%   <<"type">> => string()
%% }
-type support_term() :: #{binary() => any()}.

%% Example:
%% tax_breakdown_item() :: #{
%%   <<"amount">> => string(),
%%   <<"rate">> => string(),
%%   <<"type">> => string()
%% }
-type tax_breakdown_item() :: #{binary() => any()}.

%% Example:
%% tax_configuration() :: #{
%%   <<"taxEstimation">> => list(any())
%% }
-type tax_configuration() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string(),
%%   <<"requestId">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% update_purchase_orders_input() :: #{
%%   <<"purchaseOrders">> := list(purchase_order())
%% }
-type update_purchase_orders_input() :: #{binary() => any()}.

%% Example:
%% update_purchase_orders_output() :: #{

%% }
-type update_purchase_orders_output() :: #{binary() => any()}.

%% Example:
%% usage_based_pricing_term() :: #{
%%   <<"currencyCode">> => string(),
%%   <<"id">> => string(),
%%   <<"rateCards">> => list(usage_based_rate_card_item()),
%%   <<"type">> => string()
%% }
-type usage_based_pricing_term() :: #{binary() => any()}.

%% Example:
%% usage_based_rate_card_item() :: #{
%%   <<"rateCard">> => list(rate_card_item())
%% }
-type usage_based_rate_card_item() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"fields">> => list(validation_exception_field()),
%%   <<"message">> => string(),
%%   <<"reason">> => list(any()),
%%   <<"requestId">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => string(),
%%   <<"name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% validity_term() :: #{
%%   <<"agreementDuration">> => string(),
%%   <<"agreementEndDate">> => non_neg_integer(),
%%   <<"agreementStartDate">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"type">> => string()
%% }
-type validity_term() :: #{binary() => any()}.

%% Example:
%% variable_payment_term() :: #{
%%   <<"configuration">> => variable_payment_term_configuration(),
%%   <<"currencyCode">> => string(),
%%   <<"id">> => string(),
%%   <<"maxTotalChargeAmount">> => string(),
%%   <<"type">> => string()
%% }
-type variable_payment_term() :: #{binary() => any()}.

%% Example:
%% variable_payment_term_configuration() :: #{
%%   <<"expirationDuration">> => string(),
%%   <<"paymentRequestApprovalStrategy">> => list(any())
%% }
-type variable_payment_term_configuration() :: #{binary() => any()}.

-type accept_agreement_approval_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type accept_agreement_cancellation_request_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type accept_agreement_payment_request_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type accept_agreement_request_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type batch_create_billing_adjustment_request_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type cancel_agreement_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type cancel_agreement_cancellation_request_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type cancel_agreement_payment_request_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type cancel_agreement_request_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_agreement_request_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type describe_agreement_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_agreement_approval_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_agreement_cancellation_request_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_agreement_contacts_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_agreement_entitlements_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_agreement_payment_request_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_agreement_request_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_agreement_request_approval_plans_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_agreement_request_terms_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_agreement_terms_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_billing_adjustment_request_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_agreement_approvals_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_agreement_cancellation_requests_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_agreement_charges_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_agreement_invoice_line_items_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_agreement_payment_requests_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_agreement_requests_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_billing_adjustment_requests_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type reject_agreement_approval_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type reject_agreement_cancellation_request_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type reject_agreement_payment_request_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type search_agreements_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type send_agreement_cancellation_request_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type send_agreement_payment_request_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type start_agreement_approvals_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_purchase_orders_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Allows the management account or a delegated administrator of the
%% buyer's AWS organization to approve an agreement approval that is in
%% `PENDING_APPROVAL' status, as the organization administrator approver
%% or on behalf of another approver.
%%
%% Once every level is approved, the agreement approval transitions to
%% `APPROVED' status. You can optionally provide purchase order
%% references and a note.
-spec accept_agreement_approval(aws_client:aws_client(), accept_agreement_approval_input()) ->
    {ok, accept_agreement_approval_output(), tuple()} |
    {error, any()} |
    {error, accept_agreement_approval_errors(), tuple()}.
accept_agreement_approval(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_agreement_approval(Client, Input, []).

-spec accept_agreement_approval(aws_client:aws_client(), accept_agreement_approval_input(), proplists:proplist()) ->
    {ok, accept_agreement_approval_output(), tuple()} |
    {error, any()} |
    {error, accept_agreement_approval_errors(), tuple()}.
accept_agreement_approval(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptAgreementApproval">>, Input, Options).

%% @doc Allows buyers (acceptors) to accept a cancellation request that is in
%% `PENDING_APPROVAL' status.
%%
%% Once accepted, the cancellation request transitions to `APPROVED'
%% status and the agreement cancellation will be processed.
%%
%% Only cancellation requests in `PENDING_APPROVAL' status can be
%% accepted. A `ConflictException' is thrown if the cancellation request
%% is in any other status.
-spec accept_agreement_cancellation_request(aws_client:aws_client(), accept_agreement_cancellation_request_input()) ->
    {ok, accept_agreement_cancellation_request_output(), tuple()} |
    {error, any()} |
    {error, accept_agreement_cancellation_request_errors(), tuple()}.
accept_agreement_cancellation_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_agreement_cancellation_request(Client, Input, []).

-spec accept_agreement_cancellation_request(aws_client:aws_client(), accept_agreement_cancellation_request_input(), proplists:proplist()) ->
    {ok, accept_agreement_cancellation_request_output(), tuple()} |
    {error, any()} |
    {error, accept_agreement_cancellation_request_errors(), tuple()}.
accept_agreement_cancellation_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptAgreementCancellationRequest">>, Input, Options).

%% @doc Allows buyers (acceptors) to accept a payment request that is in
%% `PENDING_APPROVAL' status.
%%
%% Once accepted, the payment request transitions to `APPROVED' status
%% and the charge will be processed. Buyers can optionally provide a purchase
%% order reference for their internal tracking.
%%
%% Only payment requests in `PENDING_APPROVAL' status can be accepted. A
%% `ConflictException' is thrown if the payment request is in any other
%% status.
-spec accept_agreement_payment_request(aws_client:aws_client(), accept_agreement_payment_request_input()) ->
    {ok, accept_agreement_payment_request_output(), tuple()} |
    {error, any()} |
    {error, accept_agreement_payment_request_errors(), tuple()}.
accept_agreement_payment_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_agreement_payment_request(Client, Input, []).

-spec accept_agreement_payment_request(aws_client:aws_client(), accept_agreement_payment_request_input(), proplists:proplist()) ->
    {ok, accept_agreement_payment_request_output(), tuple()} |
    {error, any()} |
    {error, accept_agreement_payment_request_errors(), tuple()}.
accept_agreement_payment_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptAgreementPaymentRequest">>, Input, Options).

%% @doc Accepts an agreement request to finalize the agreement.
%%
%% The acceptor can optionally provide purchase orders to associate with the
%% agreement charges.
-spec accept_agreement_request(aws_client:aws_client(), accept_agreement_request_input()) ->
    {ok, accept_agreement_request_output(), tuple()} |
    {error, any()} |
    {error, accept_agreement_request_errors(), tuple()}.
accept_agreement_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_agreement_request(Client, Input, []).

-spec accept_agreement_request(aws_client:aws_client(), accept_agreement_request_input(), proplists:proplist()) ->
    {ok, accept_agreement_request_output(), tuple()} |
    {error, any()} |
    {error, accept_agreement_request_errors(), tuple()}.
accept_agreement_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptAgreementRequest">>, Input, Options).

%% @doc Allows sellers (proposers) to submit billing adjustment requests for
%% one or more invoices within an agreement.
%%
%% Each entry in the batch specifies an invoice and the adjustment amount.
%% The operation returns successfully created adjustment request IDs and any
%% errors for entries that failed to process.
%%
%% Each entry requires a unique `clientToken' for idempotency.
-spec batch_create_billing_adjustment_request(aws_client:aws_client(), batch_create_billing_adjustment_request_input()) ->
    {ok, batch_create_billing_adjustment_request_output(), tuple()} |
    {error, any()} |
    {error, batch_create_billing_adjustment_request_errors(), tuple()}.
batch_create_billing_adjustment_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_create_billing_adjustment_request(Client, Input, []).

-spec batch_create_billing_adjustment_request(aws_client:aws_client(), batch_create_billing_adjustment_request_input(), proplists:proplist()) ->
    {ok, batch_create_billing_adjustment_request_output(), tuple()} |
    {error, any()} |
    {error, batch_create_billing_adjustment_request_errors(), tuple()}.
batch_create_billing_adjustment_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchCreateBillingAdjustmentRequest">>, Input, Options).

%% @doc Allows an acceptor to cancel an active agreement.
%%
%% Not all agreements are eligible for cancellation. Use the error response
%% to determine why a cancellation request was rejected.
-spec cancel_agreement(aws_client:aws_client(), cancel_agreement_input()) ->
    {ok, cancel_agreement_output(), tuple()} |
    {error, any()} |
    {error, cancel_agreement_errors(), tuple()}.
cancel_agreement(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_agreement(Client, Input, []).

-spec cancel_agreement(aws_client:aws_client(), cancel_agreement_input(), proplists:proplist()) ->
    {ok, cancel_agreement_output(), tuple()} |
    {error, any()} |
    {error, cancel_agreement_errors(), tuple()}.
cancel_agreement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelAgreement">>, Input, Options).

%% @doc Allows sellers (proposers) to withdraw an existing agreement
%% cancellation request that is in a pending state.
%%
%% Once cancelled, the cancellation request transitions to `CANCELLED'
%% status and can no longer be approved or rejected by the buyer.
%%
%% Only cancellation requests in `PENDING_APPROVAL' status can be
%% cancelled. A `ConflictException' is thrown if the cancellation request
%% is in any other status.
-spec cancel_agreement_cancellation_request(aws_client:aws_client(), cancel_agreement_cancellation_request_input()) ->
    {ok, cancel_agreement_cancellation_request_output(), tuple()} |
    {error, any()} |
    {error, cancel_agreement_cancellation_request_errors(), tuple()}.
cancel_agreement_cancellation_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_agreement_cancellation_request(Client, Input, []).

-spec cancel_agreement_cancellation_request(aws_client:aws_client(), cancel_agreement_cancellation_request_input(), proplists:proplist()) ->
    {ok, cancel_agreement_cancellation_request_output(), tuple()} |
    {error, any()} |
    {error, cancel_agreement_cancellation_request_errors(), tuple()}.
cancel_agreement_cancellation_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelAgreementCancellationRequest">>, Input, Options).

%% @doc Allows sellers (proposers) to cancel a payment request that is in
%% `PENDING_APPROVAL' status.
%%
%% Once cancelled, the payment request transitions to `CANCELLED' status
%% and can no longer be accepted or rejected by the buyer.
%%
%% Only payment requests in `PENDING_APPROVAL' status can be cancelled. A
%% `ConflictException' is thrown if the payment request is in any other
%% status.
-spec cancel_agreement_payment_request(aws_client:aws_client(), cancel_agreement_payment_request_input()) ->
    {ok, cancel_agreement_payment_request_output(), tuple()} |
    {error, any()} |
    {error, cancel_agreement_payment_request_errors(), tuple()}.
cancel_agreement_payment_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_agreement_payment_request(Client, Input, []).

-spec cancel_agreement_payment_request(aws_client:aws_client(), cancel_agreement_payment_request_input(), proplists:proplist()) ->
    {ok, cancel_agreement_payment_request_output(), tuple()} |
    {error, any()} |
    {error, cancel_agreement_payment_request_errors(), tuple()}.
cancel_agreement_payment_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelAgreementPaymentRequest">>, Input, Options).

%% @doc Allows buyers (acceptors) to cancel an agreement request that is in
%% `PENDING_APPROVAL' status, or in `APPROVED' status when no
%% agreement has been created from it.
%%
%% Once cancelled, the agreement request transitions to `CANCELLED'
%% status and its open agreement approvals are cancelled.
-spec cancel_agreement_request(aws_client:aws_client(), cancel_agreement_request_input()) ->
    {ok, cancel_agreement_request_output(), tuple()} |
    {error, any()} |
    {error, cancel_agreement_request_errors(), tuple()}.
cancel_agreement_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_agreement_request(Client, Input, []).

-spec cancel_agreement_request(aws_client:aws_client(), cancel_agreement_request_input(), proplists:proplist()) ->
    {ok, cancel_agreement_request_output(), tuple()} |
    {error, any()} |
    {error, cancel_agreement_request_errors(), tuple()}.
cancel_agreement_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelAgreementRequest">>, Input, Options).

%% @doc Creates an agreement request that acts as a quote for the terms you
%% want to accept.
%%
%% The agreement request captures the requested terms, calculates charges,
%% and returns a summary. Use `AcceptAgreementRequest' with the returned
%% `agreementRequestId' to finalize the agreement.
-spec create_agreement_request(aws_client:aws_client(), create_agreement_request_input()) ->
    {ok, create_agreement_request_output(), tuple()} |
    {error, any()} |
    {error, create_agreement_request_errors(), tuple()}.
create_agreement_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_agreement_request(Client, Input, []).

-spec create_agreement_request(aws_client:aws_client(), create_agreement_request_input(), proplists:proplist()) ->
    {ok, create_agreement_request_output(), tuple()} |
    {error, any()} |
    {error, create_agreement_request_errors(), tuple()}.
create_agreement_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAgreementRequest">>, Input, Options).

%% @doc Provides details about an agreement, such as the proposer, acceptor,
%% start date, and end date.
-spec describe_agreement(aws_client:aws_client(), describe_agreement_input()) ->
    {ok, describe_agreement_output(), tuple()} |
    {error, any()} |
    {error, describe_agreement_errors(), tuple()}.
describe_agreement(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_agreement(Client, Input, []).

-spec describe_agreement(aws_client:aws_client(), describe_agreement_input(), proplists:proplist()) ->
    {ok, describe_agreement_output(), tuple()} |
    {error, any()} |
    {error, describe_agreement_errors(), tuple()}.
describe_agreement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAgreement">>, Input, Options).

%% @doc Retrieves detailed information about a specific agreement approval,
%% including its approval levels, the approvers at each level, and the
%% decision of each approver.
%%
%% The acceptor, or the management account or a delegated administrator of
%% the acceptor's AWS organization, can call this operation.
-spec get_agreement_approval(aws_client:aws_client(), get_agreement_approval_input()) ->
    {ok, get_agreement_approval_output(), tuple()} |
    {error, any()} |
    {error, get_agreement_approval_errors(), tuple()}.
get_agreement_approval(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_agreement_approval(Client, Input, []).

-spec get_agreement_approval(aws_client:aws_client(), get_agreement_approval_input(), proplists:proplist()) ->
    {ok, get_agreement_approval_output(), tuple()} |
    {error, any()} |
    {error, get_agreement_approval_errors(), tuple()}.
get_agreement_approval(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAgreementApproval">>, Input, Options).

%% @doc Retrieves detailed information about a specific agreement
%% cancellation request.
%%
%% Both sellers (proposers) and buyers (acceptors) can use this operation to
%% view cancellation requests associated with their agreements.
-spec get_agreement_cancellation_request(aws_client:aws_client(), get_agreement_cancellation_request_input()) ->
    {ok, get_agreement_cancellation_request_output(), tuple()} |
    {error, any()} |
    {error, get_agreement_cancellation_request_errors(), tuple()}.
get_agreement_cancellation_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_agreement_cancellation_request(Client, Input, []).

-spec get_agreement_cancellation_request(aws_client:aws_client(), get_agreement_cancellation_request_input(), proplists:proplist()) ->
    {ok, get_agreement_cancellation_request_output(), tuple()} |
    {error, any()} |
    {error, get_agreement_cancellation_request_errors(), tuple()}.
get_agreement_cancellation_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAgreementCancellationRequest">>, Input, Options).

%% @doc Obtains details about the acceptor's contact information for an
%% active agreement that you participate in as the proposer, acceptor, or
%% manufacturer.
%%
%% If the acceptor's contact information isn't available, the
%% operation succeeds but doesn't return `acceptorContact'. This
%% happens when the acceptor didn't provide it, the information was
%% removed, or the agreement isn't active.
-spec get_agreement_contacts(aws_client:aws_client(), get_agreement_contacts_input()) ->
    {ok, get_agreement_contacts_output(), tuple()} |
    {error, any()} |
    {error, get_agreement_contacts_errors(), tuple()}.
get_agreement_contacts(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_agreement_contacts(Client, Input, []).

-spec get_agreement_contacts(aws_client:aws_client(), get_agreement_contacts_input(), proplists:proplist()) ->
    {ok, get_agreement_contacts_output(), tuple()} |
    {error, any()} |
    {error, get_agreement_contacts_errors(), tuple()}.
get_agreement_contacts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAgreementContacts">>, Input, Options).

%% @doc Obtains details about the entitlements of an agreement.
-spec get_agreement_entitlements(aws_client:aws_client(), get_agreement_entitlements_input()) ->
    {ok, get_agreement_entitlements_output(), tuple()} |
    {error, any()} |
    {error, get_agreement_entitlements_errors(), tuple()}.
get_agreement_entitlements(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_agreement_entitlements(Client, Input, []).

-spec get_agreement_entitlements(aws_client:aws_client(), get_agreement_entitlements_input(), proplists:proplist()) ->
    {ok, get_agreement_entitlements_output(), tuple()} |
    {error, any()} |
    {error, get_agreement_entitlements_errors(), tuple()}.
get_agreement_entitlements(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAgreementEntitlements">>, Input, Options).

%% @doc Retrieves detailed information about a specific payment request.
%%
%% Both sellers (proposers) and buyers (acceptors) can use this operation to
%% view payment requests associated with their agreements. The response
%% includes the current status, charge details, timestamps, and the charge ID
%% if the request has been approved.
%%
%% The calling identity must be either the acceptor or proposer of the
%% payment request. A `ResourceNotFoundException' is returned if the
%% payment request does not exist.
-spec get_agreement_payment_request(aws_client:aws_client(), get_agreement_payment_request_input()) ->
    {ok, get_agreement_payment_request_output(), tuple()} |
    {error, any()} |
    {error, get_agreement_payment_request_errors(), tuple()}.
get_agreement_payment_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_agreement_payment_request(Client, Input, []).

-spec get_agreement_payment_request(aws_client:aws_client(), get_agreement_payment_request_input(), proplists:proplist()) ->
    {ok, get_agreement_payment_request_output(), tuple()} |
    {error, any()} |
    {error, get_agreement_payment_request_errors(), tuple()}.
get_agreement_payment_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAgreementPaymentRequest">>, Input, Options).

%% @doc Retrieves detailed information about a specific agreement request,
%% including its status, intent, approval requirement, and charges.
%%
%% The acceptor, or the management account or a delegated administrator of
%% the acceptor's AWS organization, can call this operation.
-spec get_agreement_request(aws_client:aws_client(), get_agreement_request_input()) ->
    {ok, get_agreement_request_output(), tuple()} |
    {error, any()} |
    {error, get_agreement_request_errors(), tuple()}.
get_agreement_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_agreement_request(Client, Input, []).

-spec get_agreement_request(aws_client:aws_client(), get_agreement_request_input(), proplists:proplist()) ->
    {ok, get_agreement_request_output(), tuple()} |
    {error, any()} |
    {error, get_agreement_request_errors(), tuple()}.
get_agreement_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAgreementRequest">>, Input, Options).

%% @doc Retrieves the approval plans that apply to an agreement request.
%%
%% Only the acceptor of the agreement request can call this operation. Each
%% approval plan lists its approval levels and the approvers at each level.
%% Pass the `planReference' of an approval plan to
%% `StartAgreementApprovals' to start an agreement approval for it.
-spec get_agreement_request_approval_plans(aws_client:aws_client(), get_agreement_request_approval_plans_input()) ->
    {ok, get_agreement_request_approval_plans_output(), tuple()} |
    {error, any()} |
    {error, get_agreement_request_approval_plans_errors(), tuple()}.
get_agreement_request_approval_plans(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_agreement_request_approval_plans(Client, Input, []).

-spec get_agreement_request_approval_plans(aws_client:aws_client(), get_agreement_request_approval_plans_input(), proplists:proplist()) ->
    {ok, get_agreement_request_approval_plans_output(), tuple()} |
    {error, any()} |
    {error, get_agreement_request_approval_plans_errors(), tuple()}.
get_agreement_request_approval_plans(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAgreementRequestApprovalPlans">>, Input, Options).

%% @doc Retrieves the terms proposed for an agreement request, such as
%% pricing, legal, and renewal terms.
%%
%% The acceptor, or the management account or a delegated administrator of
%% the acceptor's AWS organization, can call this operation. This
%% operation is similar to `GetAgreementTerms', but it takes an
%% `agreementRequestId' instead of an `agreementId'.
-spec get_agreement_request_terms(aws_client:aws_client(), get_agreement_request_terms_input()) ->
    {ok, get_agreement_request_terms_output(), tuple()} |
    {error, any()} |
    {error, get_agreement_request_terms_errors(), tuple()}.
get_agreement_request_terms(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_agreement_request_terms(Client, Input, []).

-spec get_agreement_request_terms(aws_client:aws_client(), get_agreement_request_terms_input(), proplists:proplist()) ->
    {ok, get_agreement_request_terms_output(), tuple()} |
    {error, any()} |
    {error, get_agreement_request_terms_errors(), tuple()}.
get_agreement_request_terms(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAgreementRequestTerms">>, Input, Options).

%% @doc Obtains details about the terms in an agreement that you participated
%% in as proposer or acceptor.
%%
%% The details include:
%%
%% `TermType' – The type of term, such as `LegalTerm',
%% `RenewalTerm', or `ConfigurableUpfrontPricingTerm'.
%%
%% `TermID' – The ID of the particular term, which is common between
%% offer and agreement.
%%
%% `TermPayload' – The key information contained in the term, such as the
%% EULA for `LegalTerm' or pricing and dimensions for various pricing
%% terms, such as `ConfigurableUpfrontPricingTerm' or
%% `UsageBasedPricingTerm'.
%%
%% `Configuration' – The buyer/acceptor's selection at the time of
%% agreement creation, such as the number of units purchased for a dimension
%% or setting the `EnableAutoRenew' flag.
-spec get_agreement_terms(aws_client:aws_client(), get_agreement_terms_input()) ->
    {ok, get_agreement_terms_output(), tuple()} |
    {error, any()} |
    {error, get_agreement_terms_errors(), tuple()}.
get_agreement_terms(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_agreement_terms(Client, Input, []).

-spec get_agreement_terms(aws_client:aws_client(), get_agreement_terms_input(), proplists:proplist()) ->
    {ok, get_agreement_terms_output(), tuple()} |
    {error, any()} |
    {error, get_agreement_terms_errors(), tuple()}.
get_agreement_terms(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAgreementTerms">>, Input, Options).

%% @doc Retrieves detailed information about a specific billing adjustment
%% request.
%%
%% Sellers (proposers) can use this operation to view the status and details
%% of a billing adjustment request they submitted.
-spec get_billing_adjustment_request(aws_client:aws_client(), get_billing_adjustment_request_input()) ->
    {ok, get_billing_adjustment_request_output(), tuple()} |
    {error, any()} |
    {error, get_billing_adjustment_request_errors(), tuple()}.
get_billing_adjustment_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_billing_adjustment_request(Client, Input, []).

-spec get_billing_adjustment_request(aws_client:aws_client(), get_billing_adjustment_request_input(), proplists:proplist()) ->
    {ok, get_billing_adjustment_request_output(), tuple()} |
    {error, any()} |
    {error, get_billing_adjustment_request_errors(), tuple()}.
get_billing_adjustment_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBillingAdjustmentRequest">>, Input, Options).

%% @doc Lists agreement approvals available to you as a buyer.
%%
%% Use `REQUESTER' as the `partyType' to list the agreement approvals
%% that your account started. Use `AWS_ORGANIZATION_ADMIN' to list the
%% agreement approvals in your AWS organization, if your account is the
%% management account or a delegated administrator of the organization. You
%% can filter the results by agreement request, approval type, and status.
-spec list_agreement_approvals(aws_client:aws_client(), list_agreement_approvals_input()) ->
    {ok, list_agreement_approvals_output(), tuple()} |
    {error, any()} |
    {error, list_agreement_approvals_errors(), tuple()}.
list_agreement_approvals(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_agreement_approvals(Client, Input, []).

-spec list_agreement_approvals(aws_client:aws_client(), list_agreement_approvals_input(), proplists:proplist()) ->
    {ok, list_agreement_approvals_output(), tuple()} |
    {error, any()} |
    {error, list_agreement_approvals_errors(), tuple()}.
list_agreement_approvals(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAgreementApprovals">>, Input, Options).

%% @doc Lists agreement cancellation requests available to you as a seller or
%% buyer.
%%
%% Both sellers (proposers) and buyers (acceptors) can use this operation to
%% find cancellation requests by specifying their party type and applying
%% optional filters.
%%
%% `PartyType' is a required parameter. A `ValidationException' is
%% returned if `PartyType' is not provided.
-spec list_agreement_cancellation_requests(aws_client:aws_client(), list_agreement_cancellation_requests_input()) ->
    {ok, list_agreement_cancellation_requests_output(), tuple()} |
    {error, any()} |
    {error, list_agreement_cancellation_requests_errors(), tuple()}.
list_agreement_cancellation_requests(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_agreement_cancellation_requests(Client, Input, []).

-spec list_agreement_cancellation_requests(aws_client:aws_client(), list_agreement_cancellation_requests_input(), proplists:proplist()) ->
    {ok, list_agreement_cancellation_requests_output(), tuple()} |
    {error, any()} |
    {error, list_agreement_cancellation_requests_errors(), tuple()}.
list_agreement_cancellation_requests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAgreementCancellationRequests">>, Input, Options).

%% @doc Allows acceptors to view charges and purchase orders that are
%% associated with an agreement.
%%
%% The response includes details about all charges regardless of whether a
%% purchase order is linked to each charge.
-spec list_agreement_charges(aws_client:aws_client(), list_agreement_charges_input()) ->
    {ok, list_agreement_charges_output(), tuple()} |
    {error, any()} |
    {error, list_agreement_charges_errors(), tuple()}.
list_agreement_charges(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_agreement_charges(Client, Input, []).

-spec list_agreement_charges(aws_client:aws_client(), list_agreement_charges_input(), proplists:proplist()) ->
    {ok, list_agreement_charges_output(), tuple()} |
    {error, any()} |
    {error, list_agreement_charges_errors(), tuple()}.
list_agreement_charges(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAgreementCharges">>, Input, Options).

%% @doc Allows sellers (proposers) to retrieve aggregated billing data from
%% AWS Marketplace agreements using flexible grouping.
%%
%% Supports invoice-level aggregation with filtering by billing period,
%% invoice type, and issued date.
%%
%% The `groupBy' parameter is required and supports only `INVOICE_ID'
%% as a value. The `agreementId' parameter is required.
-spec list_agreement_invoice_line_items(aws_client:aws_client(), list_agreement_invoice_line_items_input()) ->
    {ok, list_agreement_invoice_line_items_output(), tuple()} |
    {error, any()} |
    {error, list_agreement_invoice_line_items_errors(), tuple()}.
list_agreement_invoice_line_items(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_agreement_invoice_line_items(Client, Input, []).

-spec list_agreement_invoice_line_items(aws_client:aws_client(), list_agreement_invoice_line_items_input(), proplists:proplist()) ->
    {ok, list_agreement_invoice_line_items_output(), tuple()} |
    {error, any()} |
    {error, list_agreement_invoice_line_items_errors(), tuple()}.
list_agreement_invoice_line_items(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAgreementInvoiceLineItems">>, Input, Options).

%% @doc Lists payment requests available to you as a seller or buyer.
%%
%% Both sellers (proposers) and buyers (acceptors) can use this operation to
%% find payment requests by specifying their party type and applying optional
%% parameters.
%%
%% `PartyType' is a required parameter. A `ValidationException' is
%% returned if `PartyType' is not provided. Pagination is supported
%% through `maxResults' (1-50, default 50) and `nextToken'
%% parameters.
-spec list_agreement_payment_requests(aws_client:aws_client(), list_agreement_payment_requests_input()) ->
    {ok, list_agreement_payment_requests_output(), tuple()} |
    {error, any()} |
    {error, list_agreement_payment_requests_errors(), tuple()}.
list_agreement_payment_requests(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_agreement_payment_requests(Client, Input, []).

-spec list_agreement_payment_requests(aws_client:aws_client(), list_agreement_payment_requests_input(), proplists:proplist()) ->
    {ok, list_agreement_payment_requests_output(), tuple()} |
    {error, any()} |
    {error, list_agreement_payment_requests_errors(), tuple()}.
list_agreement_payment_requests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAgreementPaymentRequests">>, Input, Options).

%% @doc Lists agreement requests available to you as a buyer (acceptor).
%%
%% You can filter the results by `catalog', `status', and
%% `resourceId'.
-spec list_agreement_requests(aws_client:aws_client(), list_agreement_requests_input()) ->
    {ok, list_agreement_requests_output(), tuple()} |
    {error, any()} |
    {error, list_agreement_requests_errors(), tuple()}.
list_agreement_requests(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_agreement_requests(Client, Input, []).

-spec list_agreement_requests(aws_client:aws_client(), list_agreement_requests_input(), proplists:proplist()) ->
    {ok, list_agreement_requests_output(), tuple()} |
    {error, any()} |
    {error, list_agreement_requests_errors(), tuple()}.
list_agreement_requests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAgreementRequests">>, Input, Options).

%% @doc Lists billing adjustment requests for a specific agreement.
%%
%% Sellers (proposers) can use this operation to view all billing adjustment
%% requests associated with an agreement.
-spec list_billing_adjustment_requests(aws_client:aws_client(), list_billing_adjustment_requests_input()) ->
    {ok, list_billing_adjustment_requests_output(), tuple()} |
    {error, any()} |
    {error, list_billing_adjustment_requests_errors(), tuple()}.
list_billing_adjustment_requests(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_billing_adjustment_requests(Client, Input, []).

-spec list_billing_adjustment_requests(aws_client:aws_client(), list_billing_adjustment_requests_input(), proplists:proplist()) ->
    {ok, list_billing_adjustment_requests_output(), tuple()} |
    {error, any()} |
    {error, list_billing_adjustment_requests_errors(), tuple()}.
list_billing_adjustment_requests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBillingAdjustmentRequests">>, Input, Options).

%% @doc Allows the management account or a delegated administrator of the
%% buyer's AWS organization to reject an agreement approval that is in
%% `PENDING_APPROVAL' status, as the organization administrator approver
%% or on behalf of another approver.
%%
%% Once rejected, the agreement approval and its agreement request transition
%% to `REJECTED' status. You must provide a reason for the rejection.
-spec reject_agreement_approval(aws_client:aws_client(), reject_agreement_approval_input()) ->
    {ok, reject_agreement_approval_output(), tuple()} |
    {error, any()} |
    {error, reject_agreement_approval_errors(), tuple()}.
reject_agreement_approval(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_agreement_approval(Client, Input, []).

-spec reject_agreement_approval(aws_client:aws_client(), reject_agreement_approval_input(), proplists:proplist()) ->
    {ok, reject_agreement_approval_output(), tuple()} |
    {error, any()} |
    {error, reject_agreement_approval_errors(), tuple()}.
reject_agreement_approval(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectAgreementApproval">>, Input, Options).

%% @doc Allows buyers (acceptors) to reject a cancellation request that is in
%% `PENDING_APPROVAL' status.
%%
%% Once rejected, the cancellation request transitions to `REJECTED'
%% status and the agreement remains active. Buyers must provide a reason for
%% the rejection.
%%
%% Only cancellation requests in `PENDING_APPROVAL' status can be
%% rejected. A `ConflictException' is thrown if the cancellation request
%% is in any other status.
-spec reject_agreement_cancellation_request(aws_client:aws_client(), reject_agreement_cancellation_request_input()) ->
    {ok, reject_agreement_cancellation_request_output(), tuple()} |
    {error, any()} |
    {error, reject_agreement_cancellation_request_errors(), tuple()}.
reject_agreement_cancellation_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_agreement_cancellation_request(Client, Input, []).

-spec reject_agreement_cancellation_request(aws_client:aws_client(), reject_agreement_cancellation_request_input(), proplists:proplist()) ->
    {ok, reject_agreement_cancellation_request_output(), tuple()} |
    {error, any()} |
    {error, reject_agreement_cancellation_request_errors(), tuple()}.
reject_agreement_cancellation_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectAgreementCancellationRequest">>, Input, Options).

%% @doc Allows buyers (acceptors) to reject a payment request that is in
%% `PENDING_APPROVAL' status.
%%
%% Once rejected, the payment request transitions to `REJECTED' status
%% and cannot be accepted. Buyers can optionally provide a reason for the
%% rejection.
%%
%% Only payment requests in `PENDING_APPROVAL' status can be rejected. A
%% `ConflictException' is thrown if the payment request is in any other
%% status.
-spec reject_agreement_payment_request(aws_client:aws_client(), reject_agreement_payment_request_input()) ->
    {ok, reject_agreement_payment_request_output(), tuple()} |
    {error, any()} |
    {error, reject_agreement_payment_request_errors(), tuple()}.
reject_agreement_payment_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_agreement_payment_request(Client, Input, []).

-spec reject_agreement_payment_request(aws_client:aws_client(), reject_agreement_payment_request_input(), proplists:proplist()) ->
    {ok, reject_agreement_payment_request_output(), tuple()} |
    {error, any()} |
    {error, reject_agreement_payment_request_errors(), tuple()}.
reject_agreement_payment_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectAgreementPaymentRequest">>, Input, Options).

%% @doc Searches across all agreements that a proposer or an acceptor has in
%% AWS Marketplace.
%%
%% The search returns a list of agreements with basic agreement information.
-spec search_agreements(aws_client:aws_client(), search_agreements_input()) ->
    {ok, search_agreements_output(), tuple()} |
    {error, any()} |
    {error, search_agreements_errors(), tuple()}.
search_agreements(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_agreements(Client, Input, []).

-spec search_agreements(aws_client:aws_client(), search_agreements_input(), proplists:proplist()) ->
    {ok, search_agreements_output(), tuple()} |
    {error, any()} |
    {error, search_agreements_errors(), tuple()}.
search_agreements(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchAgreements">>, Input, Options).

%% @doc Allows sellers (proposers) to submit a cancellation request for an
%% active agreement.
%%
%% The cancellation request is created in `PENDING_APPROVAL' status, at
%% which point the buyer can review it.
-spec send_agreement_cancellation_request(aws_client:aws_client(), send_agreement_cancellation_request_input()) ->
    {ok, send_agreement_cancellation_request_output(), tuple()} |
    {error, any()} |
    {error, send_agreement_cancellation_request_errors(), tuple()}.
send_agreement_cancellation_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_agreement_cancellation_request(Client, Input, []).

-spec send_agreement_cancellation_request(aws_client:aws_client(), send_agreement_cancellation_request_input(), proplists:proplist()) ->
    {ok, send_agreement_cancellation_request_output(), tuple()} |
    {error, any()} |
    {error, send_agreement_cancellation_request_errors(), tuple()}.
send_agreement_cancellation_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendAgreementCancellationRequest">>, Input, Options).

%% @doc Allows sellers (proposers) to submit a payment request to buyers
%% (acceptors) for a specific charge amount for an agreement that includes a
%% `VariablePaymentTerm'.
%%
%% The payment request is created in `PENDING_APPROVAL' status, at which
%% point the buyer can accept or reject it.
%%
%% The agreement must be active and have a `VariablePaymentTerm' to
%% support payment requests. The `chargeAmount' must not exceed the
%% remaining available balance under the `VariablePaymentTerm'
%% `maxTotalChargeAmount'.
-spec send_agreement_payment_request(aws_client:aws_client(), send_agreement_payment_request_input()) ->
    {ok, send_agreement_payment_request_output(), tuple()} |
    {error, any()} |
    {error, send_agreement_payment_request_errors(), tuple()}.
send_agreement_payment_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_agreement_payment_request(Client, Input, []).

-spec send_agreement_payment_request(aws_client:aws_client(), send_agreement_payment_request_input(), proplists:proplist()) ->
    {ok, send_agreement_payment_request_output(), tuple()} |
    {error, any()} |
    {error, send_agreement_payment_request_errors(), tuple()}.
send_agreement_payment_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendAgreementPaymentRequest">>, Input, Options).

%% @doc Allows buyers (acceptors) to start the approvals that their
%% organization requires for an agreement request.
%%
%% You start one agreement approval for each approval plan that you specify.
%% Use `GetAgreementRequestApprovalPlans' to retrieve the approval plans
%% of the agreement request. Once the agreement approvals start, the
%% agreement request transitions to `PENDING_APPROVAL' status.
-spec start_agreement_approvals(aws_client:aws_client(), start_agreement_approvals_input()) ->
    {ok, start_agreement_approvals_output(), tuple()} |
    {error, any()} |
    {error, start_agreement_approvals_errors(), tuple()}.
start_agreement_approvals(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_agreement_approvals(Client, Input, []).

-spec start_agreement_approvals(aws_client:aws_client(), start_agreement_approvals_input(), proplists:proplist()) ->
    {ok, start_agreement_approvals_output(), tuple()} |
    {error, any()} |
    {error, start_agreement_approvals_errors(), tuple()}.
start_agreement_approvals(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartAgreementApprovals">>, Input, Options).

%% @doc Allows acceptors to associate purchase orders with agreement charges
%% after an agreement is created.
-spec update_purchase_orders(aws_client:aws_client(), update_purchase_orders_input()) ->
    {ok, update_purchase_orders_output(), tuple()} |
    {error, any()} |
    {error, update_purchase_orders_errors(), tuple()}.
update_purchase_orders(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_purchase_orders(Client, Input, []).

-spec update_purchase_orders(aws_client:aws_client(), update_purchase_orders_input(), proplists:proplist()) ->
    {ok, update_purchase_orders_output(), tuple()} |
    {error, any()} |
    {error, update_purchase_orders_errors(), tuple()}.
update_purchase_orders(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePurchaseOrders">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), term()}} |
    {error, Error, {integer(), list(), term()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"aws-marketplace">>},
    DefaultHost = build_host(<<"agreement-marketplace">>, Client1),
    {URL, Host} = aws_util:apply_endpoint_url_override(build_url(DefaultHost, Client1), DefaultHost, <<"/">>, <<"AWS_ENDPOINT_URL_MARKETPLACE_AGREEMENT">>),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AWSMPCommerceService_v20200301.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case response_body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = response_body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

%% hackney 1.x and 2.x return a client reference that is read with
%% hackney:body/1. hackney 3.0 removed hackney:body/1 and returns the body in
%% the response tuple, so a binary is already the body.
response_body(Body) when is_binary(Body) ->
    {ok, Body};
response_body(Client) ->
    apply(hackney, body, [Client]).

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
