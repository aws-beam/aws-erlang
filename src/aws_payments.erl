%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Payments manages how money moves between you and
%% Amazon Web Services.
%%
%% It holds the payment instruments you use to pay Amazon Web Services and to
%% receive money from Amazon Web Services, such as cards and bank accounts.
%% It collects payment for your Amazon Web Services invoices, applies your
%% payments and credit memos to them, and returns refunds.
%%
%% A payment instrument is a channel that moves money between you and Amazon
%% Web Services, and its payment method is the kind of instrument, such as a
%% card or a bank account. A financial record is an invoice or credit memo.
%% It shows how much of its amount is outstanding, processing, settled, and
%% canceled as Amazon Web Services applies payments and credits.
%%
%% With the Amazon Web Services Payments API, you can read your financial
%% records and account balances, and read your payment instruments and their
%% status.
%%
%% The Amazon Web Services Payments API provides the following endpoint:
%%
%% `https://payments.us-east-1.api.aws'
-module(aws_payments).

-export([batch_get_financial_record/2,
         batch_get_financial_record/3,
         get_account_balance/2,
         get_account_balance/3,
         get_financial_record/2,
         get_financial_record/3,
         get_payment_instrument/2,
         get_payment_instrument/3,
         list_financial_records/2,
         list_financial_records/3,
         list_payment_instruments/2,
         list_payment_instruments/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%% hackney:body/1 is only called with hackney versions that still export it.
-ignore_xref([{hackney, body, 1}]).


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% account_balance() :: #{
%%   <<"amount">> => currency_amount(),
%%   <<"merchantOfRecord">> => string()
%% }
-type account_balance() :: #{binary() => any()}.

%% Example:
%% balances() :: #{
%%   <<"canceled">> => currency_amount(),
%%   <<"outstanding">> => currency_amount(),
%%   <<"processing">> => currency_amount(),
%%   <<"settled">> => currency_amount()
%% }
-type balances() :: #{binary() => any()}.

%% Example:
%% batch_get_financial_record_request() :: #{
%%   <<"keys">> := list(list())
%% }
-type batch_get_financial_record_request() :: #{binary() => any()}.

%% Example:
%% batch_get_financial_record_response() :: #{
%%   <<"errors">> => list(financial_record_error()),
%%   <<"financialRecords">> => list(financial_record())
%% }
-type batch_get_financial_record_response() :: #{binary() => any()}.

%% Example:
%% billing_period() :: #{
%%   <<"endDate">> => [non_neg_integer()],
%%   <<"startDate">> => [non_neg_integer()]
%% }
-type billing_period() :: #{binary() => any()}.

%% Example:
%% business_unit() :: #{
%%   <<"lineOfBusiness">> => list(any()),
%%   <<"merchantOfRecord">> => string()
%% }
-type business_unit() :: #{binary() => any()}.

%% Example:
%% card() :: #{
%%   <<"brand">> => list(any()),
%%   <<"cardType">> => list(any()),
%%   <<"expirationMonth">> => integer(),
%%   <<"expirationYear">> => integer(),
%%   <<"issuerCountry">> => string(),
%%   <<"issuingBank">> => string(),
%%   <<"last4">> => string()
%% }
-type card() :: #{binary() => any()}.

%% Example:
%% cn_bank_redirect() :: #{
%%   <<"bankCode">> => string()
%% }
-type cn_bank_redirect() :: #{binary() => any()}.

%% Example:
%% credit_memo_details() :: #{
%%   <<"billingPeriod">> => billing_period(),
%%   <<"invoiceId">> => string()
%% }
-type credit_memo_details() :: #{binary() => any()}.

%% Example:
%% currency_amount() :: #{
%%   <<"currency">> => string(),
%%   <<"value">> => string()
%% }
-type currency_amount() :: #{binary() => any()}.

%% Example:
%% financial_record() :: #{
%%   <<"amount">> => currency_amount(),
%%   <<"balances">> => balances(),
%%   <<"businessUnit">> => business_unit(),
%%   <<"closedAt">> => [non_neg_integer()],
%%   <<"details">> => list(),
%%   <<"id">> => string(),
%%   <<"issuedAt">> => [non_neg_integer()],
%%   <<"settlementStatus">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type financial_record() :: #{binary() => any()}.

%% Example:
%% financial_record_error() :: #{
%%   <<"code">> => list(any()),
%%   <<"key">> => list(),
%%   <<"message">> => [string()]
%% }
-type financial_record_error() :: #{binary() => any()}.

%% Example:
%% financial_record_summary() :: #{
%%   <<"amount">> => currency_amount(),
%%   <<"balances">> => balances(),
%%   <<"businessUnit">> => business_unit(),
%%   <<"closedAt">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"issuedAt">> => [non_neg_integer()],
%%   <<"settlementStatus">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type financial_record_summary() :: #{binary() => any()}.

%% Example:
%% get_account_balance_request() :: #{
%%   <<"balanceType">> := list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_account_balance_request() :: #{binary() => any()}.

%% Example:
%% get_account_balance_response() :: #{
%%   <<"accountBalances">> => list(account_balance()),
%%   <<"nextToken">> => string()
%% }
-type get_account_balance_response() :: #{binary() => any()}.

%% Example:
%% get_financial_record_request() :: #{
%%   <<"identifier">> => string(),
%%   <<"invoiceIdentifier">> => string()
%% }
-type get_financial_record_request() :: #{binary() => any()}.

%% Example:
%% get_financial_record_response() :: #{
%%   <<"financialRecord">> => financial_record()
%% }
-type get_financial_record_response() :: #{binary() => any()}.

%% Example:
%% get_payment_instrument_request() :: #{
%%   <<"identifier">> := string()
%% }
-type get_payment_instrument_request() :: #{binary() => any()}.

%% Example:
%% get_payment_instrument_response() :: #{
%%   <<"paymentInstrument">> => payment_instrument()
%% }
-type get_payment_instrument_response() :: #{binary() => any()}.

%% Example:
%% in_net_banking() :: #{
%%   <<"bankCode">> => string(),
%%   <<"bankName">> => string()
%% }
-type in_net_banking() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% invoice_details() :: #{
%%   <<"billingPeriod">> => billing_period(),
%%   <<"dueDate">> => [non_neg_integer()],
%%   <<"dueStatus">> => list(any()),
%%   <<"invoiceFrequency">> => list(any()),
%%   <<"invoiceId">> => string(),
%%   <<"paymentTerms">> => string()
%% }
-type invoice_details() :: #{binary() => any()}.

%% Example:
%% list_financial_records_request() :: #{
%%   <<"issuedAfter">> => [non_neg_integer()],
%%   <<"issuedBefore">> => [non_neg_integer()],
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"settlementStatuses">> => list(list(any())()),
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any()),
%%   <<"types">> := list(list(any())())
%% }
-type list_financial_records_request() :: #{binary() => any()}.

%% Example:
%% list_financial_records_response() :: #{
%%   <<"financialRecordSummaries">> => list(financial_record_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_financial_records_response() :: #{binary() => any()}.

%% Example:
%% list_payment_instruments_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_payment_instruments_request() :: #{binary() => any()}.

%% Example:
%% list_payment_instruments_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"paymentInstrumentSummaries">> => list(payment_instrument_summary())
%% }
-type list_payment_instruments_response() :: #{binary() => any()}.

%% Example:
%% payment_instrument() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"details">> => list(),
%%   <<"paymentMethod">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type payment_instrument() :: #{binary() => any()}.

%% Example:
%% payment_instrument_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"paymentMethod">> => list(any()),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type payment_instrument_summary() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% sepa_bank_account() :: #{
%%   <<"accountHolderName">> => string(),
%%   <<"accountNumberTail">> => string(),
%%   <<"accountType">> => list(any()),
%%   <<"bankName">> => string()
%% }
-type sepa_bank_account() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% uk_bacs_bank_account() :: #{
%%   <<"accountHolderName">> => string(),
%%   <<"accountNumberTail">> => string(),
%%   <<"accountType">> => list(any()),
%%   <<"bankName">> => string()
%% }
-type uk_bacs_bank_account() :: #{binary() => any()}.

%% Example:
%% upi() :: #{
%%   <<"appName">> => string()
%% }
-type upi() :: #{binary() => any()}.

%% Example:
%% us_ach_bank_account() :: #{
%%   <<"accountHolderName">> => string(),
%%   <<"accountNumberTail">> => string(),
%%   <<"accountType">> => list(any()),
%%   <<"bankName">> => string()
%% }
-type us_ach_bank_account() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.

-type batch_get_financial_record_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_account_balance_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_financial_record_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_payment_instrument_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_financial_records_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_payment_instruments_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Retrieves up to 100 financial records in one request, including the
%% details that are specific to each record's type.
%%
%% Identify each record by its ID or by its invoice ID. Results can be
%% partial: each key that you request appears once in the response, either as
%% a record in `financialRecords' or as an error in `errors'. A key
%% that matches no record on your account is returned in `errors' and
%% doesn't fail the request. This operation provides strongly consistent
%% reads.
%%
%% To use this operation, you must have Amazon Web Services Identity and
%% Access Management (IAM) permission for both
%% `payments:BatchGetFinancialRecord' and
%% `payments:GetPaymentStatus'.
-spec batch_get_financial_record(aws_client:aws_client(), batch_get_financial_record_request()) ->
    {ok, batch_get_financial_record_response(), tuple()} |
    {error, any()} |
    {error, batch_get_financial_record_errors(), tuple()}.
batch_get_financial_record(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_financial_record(Client, Input, []).

-spec batch_get_financial_record(aws_client:aws_client(), batch_get_financial_record_request(), proplists:proplist()) ->
    {ok, batch_get_financial_record_response(), tuple()} |
    {error, any()} |
    {error, batch_get_financial_record_errors(), tuple()}.
batch_get_financial_record(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetFinancialRecord">>, Input, Options).

%% @doc Retrieves one balance of your account, selected by balance type, as
%% one amount for each merchant of record and currency.
%%
%% Each amount is the sum of the outstanding balances of your invoices or
%% credit memos that have the status `OUTSTANDING'. Amounts are never
%% added together across merchants of record or currencies. This operation is
%% eventually consistent. Results are paginated. Use `nextToken' to
%% retrieve more results.
%%
%% To use this operation, you must have Amazon Web Services Identity and
%% Access Management (IAM) permission for both
%% `payments:GetAccountBalance' and `payments:GetPaymentStatus'.
-spec get_account_balance(aws_client:aws_client(), get_account_balance_request()) ->
    {ok, get_account_balance_response(), tuple()} |
    {error, any()} |
    {error, get_account_balance_errors(), tuple()}.
get_account_balance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_balance(Client, Input, []).

-spec get_account_balance(aws_client:aws_client(), get_account_balance_request(), proplists:proplist()) ->
    {ok, get_account_balance_response(), tuple()} |
    {error, any()} |
    {error, get_account_balance_errors(), tuple()}.
get_account_balance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountBalance">>, Input, Options).

%% @doc Retrieves a single financial record, including the details that are
%% specific to its type.
%%
%% Specify exactly one of the following:
%%
%% The ID that Amazon Web Services Payments issued for the record, in
%% `identifier'.
%%
%% The invoice ID that Amazon Web Services Invoicing issued for an invoice or
%% a credit memo, in `invoiceIdentifier'.
%%
%% If you specify both or neither, the request fails with
%% `ValidationException'. If no record on your account matches, the
%% request fails with `ResourceNotFoundException'.
%%
%% This operation provides strongly consistent reads.
%%
%% To use this operation, you must have Amazon Web Services Identity and
%% Access Management (IAM) permission for both
%% `payments:GetFinancialRecord' and `payments:GetPaymentStatus'.
-spec get_financial_record(aws_client:aws_client(), get_financial_record_request()) ->
    {ok, get_financial_record_response(), tuple()} |
    {error, any()} |
    {error, get_financial_record_errors(), tuple()}.
get_financial_record(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_financial_record(Client, Input, []).

-spec get_financial_record(aws_client:aws_client(), get_financial_record_request(), proplists:proplist()) ->
    {ok, get_financial_record_response(), tuple()} |
    {error, any()} |
    {error, get_financial_record_errors(), tuple()}.
get_financial_record(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFinancialRecord">>, Input, Options).

%% @doc Retrieves a payment instrument on your account, including the details
%% that are specific to its payment method, such as a card's last four
%% digits.
%%
%% Identify the instrument by its Amazon Resource Name (ARN) or by its ID.
%% `ListPaymentInstruments' returns both.
%%
%% To use this operation, you must have Amazon Web Services Identity and
%% Access Management (IAM) permission for
%% `payments:GetPaymentInstrument'. You can scope this permission to the
%% instrument's ARN.
-spec get_payment_instrument(aws_client:aws_client(), get_payment_instrument_request()) ->
    {ok, get_payment_instrument_response(), tuple()} |
    {error, any()} |
    {error, get_payment_instrument_errors(), tuple()}.
get_payment_instrument(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_payment_instrument(Client, Input, []).

-spec get_payment_instrument(aws_client:aws_client(), get_payment_instrument_request(), proplists:proplist()) ->
    {ok, get_payment_instrument_response(), tuple()} |
    {error, any()} |
    {error, get_payment_instrument_errors(), tuple()}.
get_payment_instrument(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPaymentInstrument">>, Input, Options).

%% @doc Lists the financial records on your account, with the newest first by
%% default.
%%
%% A financial record is an invoice or a credit memo. You must specify at
%% least one record type in `types'. You can narrow the results further
%% by settlement status and issue date. This operation returns summaries. To
%% get the details that are specific to a record's type, use
%% `GetFinancialRecord' or `BatchGetFinancialRecord'. Results are
%% paginated. Use `nextToken' to retrieve more results.
%%
%% To use this operation, you must have Amazon Web Services Identity and
%% Access Management (IAM) permission for both
%% `payments:ListFinancialRecords' and `payments:GetPaymentStatus'.
-spec list_financial_records(aws_client:aws_client(), list_financial_records_request()) ->
    {ok, list_financial_records_response(), tuple()} |
    {error, any()} |
    {error, list_financial_records_errors(), tuple()}.
list_financial_records(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_financial_records(Client, Input, []).

-spec list_financial_records(aws_client:aws_client(), list_financial_records_request(), proplists:proplist()) ->
    {ok, list_financial_records_response(), tuple()} |
    {error, any()} |
    {error, list_financial_records_errors(), tuple()}.
list_financial_records(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFinancialRecords">>, Input, Options).

%% @doc Lists the payment instruments on your account.
%%
%% This operation returns summaries. To get the details that are specific to
%% an instrument's payment method, use `GetPaymentInstrument'.
%% Results are paginated. Use `nextToken' to retrieve more results.
%%
%% To use this operation, you must have Amazon Web Services Identity and
%% Access Management (IAM) permission for
%% `payments:ListPaymentInstruments'.
-spec list_payment_instruments(aws_client:aws_client(), list_payment_instruments_request()) ->
    {ok, list_payment_instruments_response(), tuple()} |
    {error, any()} |
    {error, list_payment_instruments_errors(), tuple()}.
list_payment_instruments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_payment_instruments(Client, Input, []).

-spec list_payment_instruments(aws_client:aws_client(), list_payment_instruments_request(), proplists:proplist()) ->
    {ok, list_payment_instruments_response(), tuple()} |
    {error, any()} |
    {error, list_payment_instruments_errors(), tuple()}.
list_payment_instruments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPaymentInstruments">>, Input, Options).

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
    Client1 = Client#{service => <<"payments">>},
    DefaultHost = build_host(<<"payments">>, Client1),
    {URL, Host} = aws_util:apply_endpoint_url_override(build_url(DefaultHost, Client1), DefaultHost, <<"/">>, <<"AWS_ENDPOINT_URL_PAYMENTS">>),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AWSPayments.", Action/binary>>}
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
