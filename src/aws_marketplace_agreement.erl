%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Marketplace is a curated digital catalog that customers can use
%% to find, buy, deploy, and manage third-party software, data, and services
%% to build solutions and run their businesses.
%%
%% The AWS Marketplace Agreement Service provides an API interface that helps
%% AWS Marketplace sellers manage their product-related agreements, including
%% listing, searching, and filtering agreements.
%%
%% To manage agreements in AWS Marketplace, you must ensure that your AWS
%% Identity and Access Management (IAM) policies and roles are set up. The
%% user must have the required policies/permissions that allow them to carry
%% out the actions in AWS:
%%
%% `DescribeAgreement' – Grants permission to users to obtain detailed
%% meta data about any of their agreements.
%%
%% `GetAgreementTerms' – Grants permission to users to obtain details
%% about the terms of an agreement.
%%
%% `SearchAgreements' – Grants permission to users to search through all
%% their agreements.
-module(aws_marketplace_agreement).

-export([cancel_agreement_payment_request/2,
         cancel_agreement_payment_request/3,
         describe_agreement/2,
         describe_agreement/3,
         get_agreement_payment_request/2,
         get_agreement_payment_request/3,
         get_agreement_terms/2,
         get_agreement_terms/3,
         list_agreement_payment_requests/2,
         list_agreement_payment_requests/3,
         search_agreements/2,
         search_agreements/3,
         send_agreement_payment_request/2,
         send_agreement_payment_request/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% renewal_term_configuration() :: #{
%%   <<"enableAutoRenew">> => boolean()
%% }
-type renewal_term_configuration() :: #{binary() => any()}.

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
%% get_agreement_terms_output() :: #{
%%   <<"acceptedTerms">> => list(list()),
%%   <<"nextToken">> => string()
%% }
-type get_agreement_terms_output() :: #{binary() => any()}.

%% Example:
%% estimated_charges() :: #{
%%   <<"agreementValue">> => string(),
%%   <<"currencyCode">> => string()
%% }
-type estimated_charges() :: #{binary() => any()}.

%% Example:
%% configurable_upfront_pricing_term_configuration() :: #{
%%   <<"dimensions">> => list(dimension()),
%%   <<"selectorValue">> => string()
%% }
-type configurable_upfront_pricing_term_configuration() :: #{binary() => any()}.

%% Example:
%% selector() :: #{
%%   <<"type">> => string(),
%%   <<"value">> => string()
%% }
-type selector() :: #{binary() => any()}.

%% Example:
%% support_term() :: #{
%%   <<"refundPolicy">> => string(),
%%   <<"type">> => string()
%% }
-type support_term() :: #{binary() => any()}.

%% Example:
%% renewal_term() :: #{
%%   <<"configuration">> => renewal_term_configuration(),
%%   <<"type">> => string()
%% }
-type renewal_term() :: #{binary() => any()}.

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
%% acceptor() :: #{
%%   <<"accountId">> => string()
%% }
-type acceptor() :: #{binary() => any()}.

%% Example:
%% cancel_agreement_payment_request_input() :: #{
%%   <<"agreementId">> := string(),
%%   <<"paymentRequestId">> := string()
%% }
-type cancel_agreement_payment_request_input() :: #{binary() => any()}.

%% Example:
%% document_item() :: #{
%%   <<"type">> => string(),
%%   <<"url">> => string(),
%%   <<"version">> => string()
%% }
-type document_item() :: #{binary() => any()}.

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
%% agreement_view_summary() :: #{
%%   <<"acceptanceTime">> => non_neg_integer(),
%%   <<"acceptor">> => acceptor(),
%%   <<"agreementId">> => string(),
%%   <<"agreementType">> => string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"proposalSummary">> => proposal_summary(),
%%   <<"proposer">> => proposer(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type agreement_view_summary() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string(),
%%   <<"requestId">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => list(any())
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string(),
%%   <<"requestId">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => list(any())
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% describe_agreement_output() :: #{
%%   <<"acceptanceTime">> => non_neg_integer(),
%%   <<"acceptor">> => acceptor(),
%%   <<"agreementId">> => string(),
%%   <<"agreementType">> => string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"estimatedCharges">> => estimated_charges(),
%%   <<"proposalSummary">> => proposal_summary(),
%%   <<"proposer">> => proposer(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any())
%% }
-type describe_agreement_output() :: #{binary() => any()}.

%% Example:
%% usage_based_pricing_term() :: #{
%%   <<"currencyCode">> => string(),
%%   <<"rateCards">> => list(usage_based_rate_card_item()),
%%   <<"type">> => string()
%% }
-type usage_based_pricing_term() :: #{binary() => any()}.

%% Example:
%% list_agreement_payment_requests_output() :: #{
%%   <<"items">> => list(payment_request_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_agreement_payment_requests_output() :: #{binary() => any()}.

%% Example:
%% byol_pricing_term() :: #{
%%   <<"type">> => string()
%% }
-type byol_pricing_term() :: #{binary() => any()}.

%% Example:
%% recurring_payment_term() :: #{
%%   <<"billingPeriod">> => string(),
%%   <<"currencyCode">> => string(),
%%   <<"price">> => string(),
%%   <<"type">> => string()
%% }
-type recurring_payment_term() :: #{binary() => any()}.

%% Example:
%% proposer() :: #{
%%   <<"accountId">> => string()
%% }
-type proposer() :: #{binary() => any()}.

%% Example:
%% grant_item() :: #{
%%   <<"dimensionKey">> => string(),
%%   <<"maxQuantity">> => integer()
%% }
-type grant_item() :: #{binary() => any()}.

%% Example:
%% legal_term() :: #{
%%   <<"documents">> => list(document_item()),
%%   <<"type">> => string()
%% }
-type legal_term() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => string(),
%%   <<"name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% payment_schedule_term() :: #{
%%   <<"currencyCode">> => string(),
%%   <<"schedule">> => list(schedule_item()),
%%   <<"type">> => string()
%% }
-type payment_schedule_term() :: #{binary() => any()}.

%% Example:
%% usage_based_rate_card_item() :: #{
%%   <<"rateCard">> => list(rate_card_item())
%% }
-type usage_based_rate_card_item() :: #{binary() => any()}.

%% Example:
%% get_agreement_terms_input() :: #{
%%   <<"agreementId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_agreement_terms_input() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"name">> => string(),
%%   <<"values">> => list(string())
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% sort() :: #{
%%   <<"sortBy">> => string(),
%%   <<"sortOrder">> => list(any())
%% }
-type sort() :: #{binary() => any()}.

%% Example:
%% describe_agreement_input() :: #{
%%   <<"agreementId">> := string()
%% }
-type describe_agreement_input() :: #{binary() => any()}.

%% Example:
%% search_agreements_output() :: #{
%%   <<"agreementViewSummaries">> => list(agreement_view_summary()),
%%   <<"nextToken">> => string()
%% }
-type search_agreements_output() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string(),
%%   <<"requestId">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% fixed_upfront_pricing_term() :: #{
%%   <<"currencyCode">> => string(),
%%   <<"duration">> => string(),
%%   <<"grants">> => list(grant_item()),
%%   <<"price">> => string(),
%%   <<"type">> => string()
%% }
-type fixed_upfront_pricing_term() :: #{binary() => any()}.

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
%% constraints() :: #{
%%   <<"multipleDimensionSelection">> => string(),
%%   <<"quantityConfiguration">> => string()
%% }
-type constraints() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string(),
%%   <<"requestId">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% configurable_upfront_rate_card_item() :: #{
%%   <<"constraints">> => constraints(),
%%   <<"rateCard">> => list(rate_card_item()),
%%   <<"selector">> => selector()
%% }
-type configurable_upfront_rate_card_item() :: #{binary() => any()}.

%% Example:
%% variable_payment_term() :: #{
%%   <<"configuration">> => variable_payment_term_configuration(),
%%   <<"currencyCode">> => string(),
%%   <<"maxTotalChargeAmount">> => string(),
%%   <<"type">> => string()
%% }
-type variable_payment_term() :: #{binary() => any()}.

%% Example:
%% schedule_item() :: #{
%%   <<"chargeAmount">> => string(),
%%   <<"chargeDate">> => non_neg_integer()
%% }
-type schedule_item() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"fields">> => list(validation_exception_field()),
%%   <<"message">> => string(),
%%   <<"reason">> => list(any()),
%%   <<"requestId">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% proposal_summary() :: #{
%%   <<"offerId">> => string(),
%%   <<"offerSetId">> => string(),
%%   <<"resources">> => list(resource())
%% }
-type proposal_summary() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string(),
%%   <<"requestId">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% get_agreement_payment_request_input() :: #{
%%   <<"agreementId">> := string(),
%%   <<"paymentRequestId">> := string()
%% }
-type get_agreement_payment_request_input() :: #{binary() => any()}.

%% Example:
%% free_trial_pricing_term() :: #{
%%   <<"duration">> => string(),
%%   <<"grants">> => list(grant_item()),
%%   <<"type">> => string()
%% }
-type free_trial_pricing_term() :: #{binary() => any()}.

%% Example:
%% dimension() :: #{
%%   <<"dimensionKey">> => string(),
%%   <<"dimensionValue">> => integer()
%% }
-type dimension() :: #{binary() => any()}.

%% Example:
%% validity_term() :: #{
%%   <<"agreementDuration">> => string(),
%%   <<"agreementEndDate">> => non_neg_integer(),
%%   <<"agreementStartDate">> => non_neg_integer(),
%%   <<"type">> => string()
%% }
-type validity_term() :: #{binary() => any()}.

%% Example:
%% rate_card_item() :: #{
%%   <<"dimensionKey">> => string(),
%%   <<"price">> => string()
%% }
-type rate_card_item() :: #{binary() => any()}.

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
%% variable_payment_term_configuration() :: #{
%%   <<"expirationDuration">> => string(),
%%   <<"paymentRequestApprovalStrategy">> => list(any())
%% }
-type variable_payment_term_configuration() :: #{binary() => any()}.

%% Example:
%% configurable_upfront_pricing_term() :: #{
%%   <<"configuration">> => configurable_upfront_pricing_term_configuration(),
%%   <<"currencyCode">> => string(),
%%   <<"rateCards">> => list(configurable_upfront_rate_card_item()),
%%   <<"type">> => string()
%% }
-type configurable_upfront_pricing_term() :: #{binary() => any()}.

%% Example:
%% resource() :: #{
%%   <<"id">> => string(),
%%   <<"type">> => string()
%% }
-type resource() :: #{binary() => any()}.

-type cancel_agreement_payment_request_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_agreement_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_agreement_payment_request_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_agreement_terms_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_agreement_payment_requests_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type search_agreements_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type send_agreement_payment_request_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

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

%% @doc Searches across all agreements that a proposer has in AWS
%% Marketplace.
%%
%% The search returns a list of agreements with basic agreement information.
%%
%% The following filter combinations are supported when the `PartyType'
%% is `Proposer':
%%
%% `AgreementType'
%%
%% `AgreementType' + `EndTime'
%%
%% `AgreementType' + `ResourceType'
%%
%% `AgreementType' + `ResourceType' + `EndTime'
%%
%% `AgreementType' + `ResourceType' + `Status'
%%
%% `AgreementType' + `ResourceType' + `Status' + `EndTime'
%%
%% `AgreementType' + `ResourceId'
%%
%% `AgreementType' + `ResourceId' + `EndTime'
%%
%% `AgreementType' + `ResourceId' + `Status'
%%
%% `AgreementType' + `ResourceId' + `Status' + `EndTime'
%%
%% `AgreementType' + `AcceptorAccountId'
%%
%% `AgreementType' + `AcceptorAccountId' + `EndTime'
%%
%% `AgreementType' + `AcceptorAccountId' + `Status'
%%
%% `AgreementType' + `AcceptorAccountId' + `Status' +
%% `EndTime'
%%
%% `AgreementType' + `AcceptorAccountId' + `OfferId'
%%
%% `AgreementType' + `AcceptorAccountId' + `OfferId' +
%% `Status'
%%
%% `AgreementType' + `AcceptorAccountId' + `OfferId' +
%% `EndTime'
%%
%% `AgreementType' + `AcceptorAccountId' + `OfferId' +
%% `Status' + `EndTime'
%%
%% `AgreementType' + `AcceptorAccountId' + `ResourceId'
%%
%% `AgreementType' + `AcceptorAccountId' + `ResourceId' +
%% `Status'
%%
%% `AgreementType' + `AcceptorAccountId' + `ResourceId' +
%% `EndTime'
%%
%% `AgreementType' + `AcceptorAccountId' + `ResourceId' +
%% `Status' + `EndTime'
%%
%% `AgreementType' + `AcceptorAccountId' + `ResourceType'
%%
%% `AgreementType' + `AcceptorAccountId' + `ResourceType' +
%% `EndTime'
%%
%% `AgreementType' + `AcceptorAccountId' + `ResourceType' +
%% `Status'
%%
%% `AgreementType' + `AcceptorAccountId' + `ResourceType' +
%% `Status' + `EndTime'
%%
%% `AgreementType' + `Status'
%%
%% `AgreementType' + `Status' + `EndTime'
%%
%% `AgreementType' + `OfferId'
%%
%% `AgreementType' + `OfferId' + `EndTime'
%%
%% `AgreementType' + `OfferId' + `Status'
%%
%% `AgreementType' + `OfferId' + `Status' + `EndTime'
%%
%% `AgreementType' + `OfferSetId'
%%
%% `AgreementType' + `OfferSetId' + `EndTime'
%%
%% `AgreementType' + `OfferSetId' + `Status'
%%
%% `AgreementType' + `OfferSetId' + `Status' + `EndTime'
%%
%% To filter by `EndTime', you can use either `BeforeEndTime' or
%% `AfterEndTime'. Only `EndTime' is supported for sorting.
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
    Client1 = Client#{service => <<"aws-marketplace">>},
    Host = build_host(<<"agreement-marketplace">>, Client1),
    URL = build_url(Host, Client1),
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
