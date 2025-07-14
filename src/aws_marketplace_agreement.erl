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
%% Identity and
%% Access Management (IAM) policies and roles are set up. The user must have
%% the required
%% policies/permissions that allow them to carry out the actions in AWS:
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

-export([describe_agreement/2,
         describe_agreement/3,
         get_agreement_terms/2,
         get_agreement_terms/3,
         search_agreements/2,
         search_agreements/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% renewal_term_configuration() :: #{
%%   <<"enableAutoRenew">> => boolean()
%% }
-type renewal_term_configuration() :: #{binary() => any()}.

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
%% acceptor() :: #{
%%   <<"accountId">> => string()
%% }
-type acceptor() :: #{binary() => any()}.

%% Example:
%% document_item() :: #{
%%   <<"type">> => string(),
%%   <<"url">> => string(),
%%   <<"version">> => string()
%% }
-type document_item() :: #{binary() => any()}.

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

-type describe_agreement_errors() ::
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

-type search_agreements_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

%%====================================================================
%% API
%%====================================================================

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

%% @doc Obtains details about the terms in an agreement that you participated
%% in as proposer or
%% acceptor.
%%
%% The details include:
%%
%% `TermType' – The type of term, such as `LegalTerm',
%% `RenewalTerm', or `ConfigurableUpfrontPricingTerm'.
%%
%% `TermID' – The ID of the particular term, which is common between
%% offer
%% and agreement.
%%
%% `TermPayload' – The key information contained in the term, such as the
%% EULA for `LegalTerm' or pricing and dimensions for various pricing
%% terms,
%% such as `ConfigurableUpfrontPricingTerm' or
%% `UsageBasedPricingTerm'.
%%
%% `Configuration' – The buyer/acceptor's selection at the time of
%% agreement creation, such as the number of units purchased for a dimension
%% or setting
%% the `EnableAutoRenew' flag.
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

%% @doc Searches across all agreements that a proposer or an acceptor has in
%% AWS Marketplace.
%%
%% The search returns a list of agreements with basic agreement information.
%%
%% The following filter combinations are supported:
%%
%% `PartyType' as `Proposer' + `AgreementType' +
%% `ResourceIdentifier'
%%
%% `PartyType' as `Proposer' + `AgreementType' +
%% `OfferId'
%%
%% `PartyType' as `Proposer' + `AgreementType' +
%% `AcceptorAccountId'
%%
%% `PartyType' as `Proposer' + `AgreementType' +
%% `Status'
%%
%% `PartyType' as `Proposer' + `AgreementType' +
%% `ResourceIdentifier' + `Status'
%%
%% `PartyType' as `Proposer' + `AgreementType' +
%% `OfferId' + `Status'
%%
%% `PartyType' as `Proposer' + `AgreementType' +
%% `AcceptorAccountId' + `Status'
%%
%% `PartyType' as `Proposer' + `AgreementType' +
%% `ResourceType' + `Status'
%%
%% `PartyType' as `Proposer' + `AgreementType' +
%% `AcceptorAccountId' + `ResourceType' +
%% `Status'
%%
%% `PartyType' as `Proposer' + `AgreementType' +
%% `AcceptorAccountId' + `OfferId'
%%
%% `PartyType' as `Proposer' + `AgreementType' +
%% `AcceptorAccountId' + `OfferId' + `Status'
%%
%% `PartyType' as `Proposer' + `AgreementType' +
%% `AcceptorAccountId' + `ResourceIdentifier'
%%
%% `PartyType' as `Proposer' + `AgreementType' +
%% `AcceptorAccountId' + `ResourceIdentifier' +
%% `Status'
%%
%% `PartyType' as `Proposer' + `AgreementType' +
%% `AcceptorAccountId' + `ResourceType'
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
