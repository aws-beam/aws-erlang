%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Managed Blockchain (AMB) Query provides you with convenient
%% access to multi-blockchain network data, which makes
%% it easier for you to extract contextual data related to blockchain
%% activity.
%%
%% You can use AMB Query to
%% read data from public blockchain networks, such as Bitcoin Mainnet and
%% Ethereum Mainnet. You can
%% also get information such as the current and historical balances of
%% addresses, or you can get a
%% list of blockchain transactions for a given time period. Additionally, you
%% can get details of a
%% given transaction, such as transaction events, which you can further
%% analyze or use in business
%% logic for your applications.
-module(aws_managedblockchain_query).

-export([batch_get_token_balance/2,
         batch_get_token_balance/3,
         get_asset_contract/2,
         get_asset_contract/3,
         get_token_balance/2,
         get_token_balance/3,
         get_transaction/2,
         get_transaction/3,
         list_asset_contracts/2,
         list_asset_contracts/3,
         list_filtered_transaction_events/2,
         list_filtered_transaction_events/3,
         list_token_balances/2,
         list_token_balances/3,
         list_transaction_events/2,
         list_transaction_events/3,
         list_transactions/2,
         list_transactions/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% get_asset_contract_input() :: #{
%%   <<"contractIdentifier">> := contract_identifier()
%% }
-type get_asset_contract_input() :: #{binary() => any()}.


%% Example:
%% list_asset_contracts_output() :: #{
%%   <<"contracts">> => list(asset_contract()),
%%   <<"nextToken">> => string()
%% }
-type list_asset_contracts_output() :: #{binary() => any()}.


%% Example:
%% batch_get_token_balance_input_item() :: #{
%%   <<"atBlockchainInstant">> => blockchain_instant(),
%%   <<"ownerIdentifier">> => owner_identifier(),
%%   <<"tokenIdentifier">> => token_identifier()
%% }
-type batch_get_token_balance_input_item() :: #{binary() => any()}.


%% Example:
%% get_asset_contract_output() :: #{
%%   <<"contractIdentifier">> => contract_identifier(),
%%   <<"deployerAddress">> => string(),
%%   <<"metadata">> => contract_metadata(),
%%   <<"tokenStandard">> => string()
%% }
-type get_asset_contract_output() :: #{binary() => any()}.


%% Example:
%% contract_filter() :: #{
%%   <<"deployerAddress">> => string(),
%%   <<"network">> => string(),
%%   <<"tokenStandard">> => string()
%% }
-type contract_filter() :: #{binary() => any()}.


%% Example:
%% owner_filter() :: #{
%%   <<"address">> => string()
%% }
-type owner_filter() :: #{binary() => any()}.


%% Example:
%% blockchain_instant() :: #{
%%   <<"time">> => [non_neg_integer()]
%% }
-type blockchain_instant() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% batch_get_token_balance_output_item() :: #{
%%   <<"atBlockchainInstant">> => blockchain_instant(),
%%   <<"balance">> => [string()],
%%   <<"lastUpdatedTime">> => blockchain_instant(),
%%   <<"ownerIdentifier">> => owner_identifier(),
%%   <<"tokenIdentifier">> => token_identifier()
%% }
-type batch_get_token_balance_output_item() :: #{binary() => any()}.


%% Example:
%% list_token_balances_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"ownerFilter">> => owner_filter(),
%%   <<"tokenFilter">> := token_filter()
%% }
-type list_token_balances_input() :: #{binary() => any()}.


%% Example:
%% list_transactions_input() :: #{
%%   <<"address">> := string(),
%%   <<"confirmationStatusFilter">> => confirmation_status_filter(),
%%   <<"fromBlockchainInstant">> => blockchain_instant(),
%%   <<"maxResults">> => [integer()],
%%   <<"network">> := string(),
%%   <<"nextToken">> => string(),
%%   <<"sort">> => list_transactions_sort(),
%%   <<"toBlockchainInstant">> => blockchain_instant()
%% }
-type list_transactions_input() :: #{binary() => any()}.


%% Example:
%% time_filter() :: #{
%%   <<"from">> => blockchain_instant(),
%%   <<"to">> => blockchain_instant()
%% }
-type time_filter() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"resourceId">> => string(),
%%   <<"resourceType">> => string(),
%%   <<"serviceCode">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% transaction_output_item() :: #{
%%   <<"confirmationStatus">> => string(),
%%   <<"network">> => string(),
%%   <<"transactionHash">> => string(),
%%   <<"transactionId">> => string(),
%%   <<"transactionTimestamp">> => [non_neg_integer()]
%% }
-type transaction_output_item() :: #{binary() => any()}.


%% Example:
%% asset_contract() :: #{
%%   <<"contractIdentifier">> => contract_identifier(),
%%   <<"deployerAddress">> => string(),
%%   <<"tokenStandard">> => string()
%% }
-type asset_contract() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% batch_get_token_balance_output() :: #{
%%   <<"errors">> => list(batch_get_token_balance_error_item()),
%%   <<"tokenBalances">> => list(batch_get_token_balance_output_item())
%% }
-type batch_get_token_balance_output() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_filtered_transaction_events_input() :: #{
%%   <<"addressIdentifierFilter">> := address_identifier_filter(),
%%   <<"confirmationStatusFilter">> => confirmation_status_filter(),
%%   <<"maxResults">> => [integer()],
%%   <<"network">> := [string()],
%%   <<"nextToken">> => string(),
%%   <<"sort">> => list_filtered_transaction_events_sort(),
%%   <<"timeFilter">> => time_filter(),
%%   <<"voutFilter">> => vout_filter()
%% }
-type list_filtered_transaction_events_input() :: #{binary() => any()}.


%% Example:
%% get_token_balance_output() :: #{
%%   <<"atBlockchainInstant">> => blockchain_instant(),
%%   <<"balance">> => [string()],
%%   <<"lastUpdatedTime">> => blockchain_instant(),
%%   <<"ownerIdentifier">> => owner_identifier(),
%%   <<"tokenIdentifier">> => token_identifier()
%% }
-type get_token_balance_output() :: #{binary() => any()}.


%% Example:
%% contract_metadata() :: #{
%%   <<"decimals">> => [integer()],
%%   <<"name">> => [string()],
%%   <<"symbol">> => [string()]
%% }
-type contract_metadata() :: #{binary() => any()}.


%% Example:
%% batch_get_token_balance_error_item() :: #{
%%   <<"atBlockchainInstant">> => blockchain_instant(),
%%   <<"errorCode">> => [string()],
%%   <<"errorMessage">> => [string()],
%%   <<"errorType">> => string(),
%%   <<"ownerIdentifier">> => owner_identifier(),
%%   <<"tokenIdentifier">> => token_identifier()
%% }
-type batch_get_token_balance_error_item() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% vout_filter() :: #{
%%   <<"voutSpent">> => [boolean()]
%% }
-type vout_filter() :: #{binary() => any()}.


%% Example:
%% get_transaction_output() :: #{
%%   <<"transaction">> => transaction()
%% }
-type get_transaction_output() :: #{binary() => any()}.


%% Example:
%% list_transactions_sort() :: #{
%%   <<"sortBy">> => string(),
%%   <<"sortOrder">> => string()
%% }
-type list_transactions_sort() :: #{binary() => any()}.


%% Example:
%% get_transaction_input() :: #{
%%   <<"network">> := string(),
%%   <<"transactionHash">> => string(),
%%   <<"transactionId">> => string()
%% }
-type get_transaction_input() :: #{binary() => any()}.


%% Example:
%% token_identifier() :: #{
%%   <<"contractAddress">> => string(),
%%   <<"network">> => string(),
%%   <<"tokenId">> => string()
%% }
-type token_identifier() :: #{binary() => any()}.


%% Example:
%% batch_get_token_balance_input() :: #{
%%   <<"getTokenBalanceInputs">> => list(batch_get_token_balance_input_item())
%% }
-type batch_get_token_balance_input() :: #{binary() => any()}.


%% Example:
%% list_transaction_events_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"network">> := string(),
%%   <<"nextToken">> => string(),
%%   <<"transactionHash">> => string(),
%%   <<"transactionId">> => string()
%% }
-type list_transaction_events_input() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => string(),
%%   <<"reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_filtered_transaction_events_sort() :: #{
%%   <<"sortBy">> => string(),
%%   <<"sortOrder">> => string()
%% }
-type list_filtered_transaction_events_sort() :: #{binary() => any()}.


%% Example:
%% confirmation_status_filter() :: #{
%%   <<"include">> => list(string())
%% }
-type confirmation_status_filter() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string(),
%%   <<"quotaCode">> => string(),
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% token_balance() :: #{
%%   <<"atBlockchainInstant">> => blockchain_instant(),
%%   <<"balance">> => [string()],
%%   <<"lastUpdatedTime">> => blockchain_instant(),
%%   <<"ownerIdentifier">> => owner_identifier(),
%%   <<"tokenIdentifier">> => token_identifier()
%% }
-type token_balance() :: #{binary() => any()}.


%% Example:
%% list_asset_contracts_input() :: #{
%%   <<"contractFilter">> := contract_filter(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_asset_contracts_input() :: #{binary() => any()}.


%% Example:
%% owner_identifier() :: #{
%%   <<"address">> => string()
%% }
-type owner_identifier() :: #{binary() => any()}.


%% Example:
%% contract_identifier() :: #{
%%   <<"contractAddress">> => string(),
%%   <<"network">> => string()
%% }
-type contract_identifier() :: #{binary() => any()}.


%% Example:
%% list_filtered_transaction_events_output() :: #{
%%   <<"events">> => list(transaction_event()),
%%   <<"nextToken">> => string()
%% }
-type list_filtered_transaction_events_output() :: #{binary() => any()}.


%% Example:
%% get_token_balance_input() :: #{
%%   <<"atBlockchainInstant">> => blockchain_instant(),
%%   <<"ownerIdentifier">> := owner_identifier(),
%%   <<"tokenIdentifier">> := token_identifier()
%% }
-type get_token_balance_input() :: #{binary() => any()}.


%% Example:
%% list_token_balances_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tokenBalances">> => list(token_balance())
%% }
-type list_token_balances_output() :: #{binary() => any()}.


%% Example:
%% list_transaction_events_output() :: #{
%%   <<"events">> => list(transaction_event()),
%%   <<"nextToken">> => string()
%% }
-type list_transaction_events_output() :: #{binary() => any()}.


%% Example:
%% transaction_event() :: #{
%%   <<"blockchainInstant">> => blockchain_instant(),
%%   <<"confirmationStatus">> => string(),
%%   <<"contractAddress">> => string(),
%%   <<"eventType">> => string(),
%%   <<"from">> => string(),
%%   <<"network">> => string(),
%%   <<"spentVoutIndex">> => [integer()],
%%   <<"spentVoutTransactionHash">> => [string()],
%%   <<"spentVoutTransactionId">> => [string()],
%%   <<"to">> => string(),
%%   <<"tokenId">> => string(),
%%   <<"transactionHash">> => string(),
%%   <<"transactionId">> => [string()],
%%   <<"value">> => [string()],
%%   <<"voutIndex">> => [integer()],
%%   <<"voutSpent">> => [boolean()]
%% }
-type transaction_event() :: #{binary() => any()}.


%% Example:
%% address_identifier_filter() :: #{
%%   <<"transactionEventToAddress">> => list(string())
%% }
-type address_identifier_filter() :: #{binary() => any()}.


%% Example:
%% transaction() :: #{
%%   <<"blockHash">> => string(),
%%   <<"blockNumber">> => [string()],
%%   <<"confirmationStatus">> => string(),
%%   <<"contractAddress">> => string(),
%%   <<"cumulativeGasUsed">> => [string()],
%%   <<"effectiveGasPrice">> => [string()],
%%   <<"executionStatus">> => string(),
%%   <<"from">> => string(),
%%   <<"gasUsed">> => [string()],
%%   <<"network">> => string(),
%%   <<"numberOfTransactions">> => [float()],
%%   <<"signatureR">> => [string()],
%%   <<"signatureS">> => [string()],
%%   <<"signatureV">> => [integer()],
%%   <<"to">> => string(),
%%   <<"transactionFee">> => [string()],
%%   <<"transactionHash">> => string(),
%%   <<"transactionId">> => [string()],
%%   <<"transactionIndex">> => [float()],
%%   <<"transactionTimestamp">> => [non_neg_integer()]
%% }
-type transaction() :: #{binary() => any()}.


%% Example:
%% list_transactions_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"transactions">> => list(transaction_output_item())
%% }
-type list_transactions_output() :: #{binary() => any()}.


%% Example:
%% token_filter() :: #{
%%   <<"contractAddress">> => string(),
%%   <<"network">> => string(),
%%   <<"tokenId">> => string()
%% }
-type token_filter() :: #{binary() => any()}.

-type batch_get_token_balance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_asset_contract_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_token_balance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_transaction_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type list_asset_contracts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_filtered_transaction_events_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_token_balances_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_transaction_events_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type list_transactions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Gets the token balance for a batch of tokens by using the
%% `BatchGetTokenBalance'
%% action for every token in the request.
%%
%% Only the native tokens BTC and ETH, and the ERC-20,
%% ERC-721, and ERC 1155 token standards are supported.
-spec batch_get_token_balance(aws_client:aws_client(), batch_get_token_balance_input()) ->
    {ok, batch_get_token_balance_output(), tuple()} |
    {error, any()} |
    {error, batch_get_token_balance_errors(), tuple()}.
batch_get_token_balance(Client, Input) ->
    batch_get_token_balance(Client, Input, []).

-spec batch_get_token_balance(aws_client:aws_client(), batch_get_token_balance_input(), proplists:proplist()) ->
    {ok, batch_get_token_balance_output(), tuple()} |
    {error, any()} |
    {error, batch_get_token_balance_errors(), tuple()}.
batch_get_token_balance(Client, Input0, Options0) ->
    Method = post,
    Path = ["/batch-get-token-balance"],
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

%% @doc Gets the information about a specific contract deployed on the
%% blockchain.
%%
%% The Bitcoin blockchain networks do not support this
%% operation.
%%
%% Metadata is currently only available for some `ERC-20' contracts.
%% Metadata will be available for additional contracts in the future.
-spec get_asset_contract(aws_client:aws_client(), get_asset_contract_input()) ->
    {ok, get_asset_contract_output(), tuple()} |
    {error, any()} |
    {error, get_asset_contract_errors(), tuple()}.
get_asset_contract(Client, Input) ->
    get_asset_contract(Client, Input, []).

-spec get_asset_contract(aws_client:aws_client(), get_asset_contract_input(), proplists:proplist()) ->
    {ok, get_asset_contract_output(), tuple()} |
    {error, any()} |
    {error, get_asset_contract_errors(), tuple()}.
get_asset_contract(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-asset-contract"],
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

%% @doc Gets the balance of a specific token, including native tokens, for a
%% given address (wallet or contract) on the blockchain.
%%
%% Only the native tokens BTC and ETH, and the ERC-20,
%% ERC-721, and ERC 1155 token standards are supported.
-spec get_token_balance(aws_client:aws_client(), get_token_balance_input()) ->
    {ok, get_token_balance_output(), tuple()} |
    {error, any()} |
    {error, get_token_balance_errors(), tuple()}.
get_token_balance(Client, Input) ->
    get_token_balance(Client, Input, []).

-spec get_token_balance(aws_client:aws_client(), get_token_balance_input(), proplists:proplist()) ->
    {ok, get_token_balance_output(), tuple()} |
    {error, any()} |
    {error, get_token_balance_errors(), tuple()}.
get_token_balance(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-token-balance"],
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

%% @doc Gets the details of a transaction.
%%
%% This action will return transaction details for all transactions
%% that are confirmed on the blockchain, even if they have not reached
%% finality:
%% https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality.
-spec get_transaction(aws_client:aws_client(), get_transaction_input()) ->
    {ok, get_transaction_output(), tuple()} |
    {error, any()} |
    {error, get_transaction_errors(), tuple()}.
get_transaction(Client, Input) ->
    get_transaction(Client, Input, []).

-spec get_transaction(aws_client:aws_client(), get_transaction_input(), proplists:proplist()) ->
    {ok, get_transaction_output(), tuple()} |
    {error, any()} |
    {error, get_transaction_errors(), tuple()}.
get_transaction(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-transaction"],
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

%% @doc Lists all the contracts for a given contract type deployed by an
%% address
%% (either a contract address or a wallet address).
%%
%% The Bitcoin blockchain networks do not support this
%% operation.
-spec list_asset_contracts(aws_client:aws_client(), list_asset_contracts_input()) ->
    {ok, list_asset_contracts_output(), tuple()} |
    {error, any()} |
    {error, list_asset_contracts_errors(), tuple()}.
list_asset_contracts(Client, Input) ->
    list_asset_contracts(Client, Input, []).

-spec list_asset_contracts(aws_client:aws_client(), list_asset_contracts_input(), proplists:proplist()) ->
    {ok, list_asset_contracts_output(), tuple()} |
    {error, any()} |
    {error, list_asset_contracts_errors(), tuple()}.
list_asset_contracts(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-asset-contracts"],
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

%% @doc Lists all the transaction events for an address on the blockchain.
%%
%% This operation is only supported on the Bitcoin networks.
-spec list_filtered_transaction_events(aws_client:aws_client(), list_filtered_transaction_events_input()) ->
    {ok, list_filtered_transaction_events_output(), tuple()} |
    {error, any()} |
    {error, list_filtered_transaction_events_errors(), tuple()}.
list_filtered_transaction_events(Client, Input) ->
    list_filtered_transaction_events(Client, Input, []).

-spec list_filtered_transaction_events(aws_client:aws_client(), list_filtered_transaction_events_input(), proplists:proplist()) ->
    {ok, list_filtered_transaction_events_output(), tuple()} |
    {error, any()} |
    {error, list_filtered_transaction_events_errors(), tuple()}.
list_filtered_transaction_events(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-filtered-transaction-events"],
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

%% @doc This action returns the following for a given blockchain network:
%%
%% Lists all token balances owned by an address (either a contract
%% address or a wallet address).
%%
%% Lists all token balances for all tokens created by a contract.
%%
%% Lists all token balances for a given token.
%%
%% You must always specify the network property of
%% the `tokenFilter' when using this operation.
-spec list_token_balances(aws_client:aws_client(), list_token_balances_input()) ->
    {ok, list_token_balances_output(), tuple()} |
    {error, any()} |
    {error, list_token_balances_errors(), tuple()}.
list_token_balances(Client, Input) ->
    list_token_balances(Client, Input, []).

-spec list_token_balances(aws_client:aws_client(), list_token_balances_input(), proplists:proplist()) ->
    {ok, list_token_balances_output(), tuple()} |
    {error, any()} |
    {error, list_token_balances_errors(), tuple()}.
list_token_balances(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-token-balances"],
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

%% @doc Lists all the transaction events for a transaction
%%
%% This action will return transaction details for all transactions
%% that are confirmed on the blockchain, even if they have not reached
%% finality:
%% https://docs.aws.amazon.com/managed-blockchain/latest/ambq-dg/key-concepts.html#finality.
-spec list_transaction_events(aws_client:aws_client(), list_transaction_events_input()) ->
    {ok, list_transaction_events_output(), tuple()} |
    {error, any()} |
    {error, list_transaction_events_errors(), tuple()}.
list_transaction_events(Client, Input) ->
    list_transaction_events(Client, Input, []).

-spec list_transaction_events(aws_client:aws_client(), list_transaction_events_input(), proplists:proplist()) ->
    {ok, list_transaction_events_output(), tuple()} |
    {error, any()} |
    {error, list_transaction_events_errors(), tuple()}.
list_transaction_events(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-transaction-events"],
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

%% @doc Lists all the transaction events for a transaction.
-spec list_transactions(aws_client:aws_client(), list_transactions_input()) ->
    {ok, list_transactions_output(), tuple()} |
    {error, any()} |
    {error, list_transactions_errors(), tuple()}.
list_transactions(Client, Input) ->
    list_transactions(Client, Input, []).

-spec list_transactions(aws_client:aws_client(), list_transactions_input(), proplists:proplist()) ->
    {ok, list_transactions_output(), tuple()} |
    {error, any()} |
    {error, list_transactions_errors(), tuple()}.
list_transactions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-transactions"],
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
    Client1 = Client#{service => <<"managedblockchain-query">>},
    Host = build_host(<<"managedblockchain-query">>, Client1),
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
