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

%%====================================================================
%% API
%%====================================================================

%% @doc Provides details about an agreement, such as the proposer, acceptor,
%% start date, and end date.
describe_agreement(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_agreement(Client, Input, []).
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
get_agreement_terms(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_agreement_terms(Client, Input, []).
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
search_agreements(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_agreements(Client, Input, []).
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
    Client1 = Client#{service => <<"agreement-marketplace">>},
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
