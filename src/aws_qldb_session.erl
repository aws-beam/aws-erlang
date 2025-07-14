%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The transactional data APIs for Amazon QLDB
%%
%% Instead of interacting directly with this API, we recommend using the QLDB
%% driver
%% or the QLDB shell to execute data transactions on a ledger.
%%
%% If you are working with an AWS SDK, use the QLDB driver. The driver
%% provides
%% a high-level abstraction layer above this QLDB Session data
%% plane and manages `SendCommand' API calls for you. For information and
%% a list of supported programming languages, see Getting started
%% with the driver:
%% https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html
%% in the Amazon QLDB Developer
%% Guide.
%%
%% If you are working with the AWS Command Line Interface (AWS CLI), use the
%% QLDB shell. The shell is a command line interface that uses the QLDB
%% driver to
%% interact with a ledger. For information, see Accessing Amazon QLDB using
%% the
%% QLDB shell:
%% https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html.
-module(aws_qldb_session).

-export([send_command/2,
         send_command/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% abort_transaction_request() :: #{

%% }
-type abort_transaction_request() :: #{binary() => any()}.

%% Example:
%% abort_transaction_result() :: #{
%%   <<"TimingInformation">> => timing_information()
%% }
-type abort_transaction_result() :: #{binary() => any()}.

%% Example:
%% bad_request_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.

%% Example:
%% capacity_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type capacity_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% commit_transaction_request() :: #{
%%   <<"CommitDigest">> => binary(),
%%   <<"TransactionId">> => string()
%% }
-type commit_transaction_request() :: #{binary() => any()}.

%% Example:
%% commit_transaction_result() :: #{
%%   <<"CommitDigest">> => binary(),
%%   <<"ConsumedIOs">> => i_o_usage(),
%%   <<"TimingInformation">> => timing_information(),
%%   <<"TransactionId">> => string()
%% }
-type commit_transaction_result() :: #{binary() => any()}.

%% Example:
%% end_session_request() :: #{

%% }
-type end_session_request() :: #{binary() => any()}.

%% Example:
%% end_session_result() :: #{
%%   <<"TimingInformation">> => timing_information()
%% }
-type end_session_result() :: #{binary() => any()}.

%% Example:
%% execute_statement_request() :: #{
%%   <<"Parameters">> => list(value_holder()),
%%   <<"Statement">> => string(),
%%   <<"TransactionId">> => string()
%% }
-type execute_statement_request() :: #{binary() => any()}.

%% Example:
%% execute_statement_result() :: #{
%%   <<"ConsumedIOs">> => i_o_usage(),
%%   <<"FirstPage">> => page(),
%%   <<"TimingInformation">> => timing_information()
%% }
-type execute_statement_result() :: #{binary() => any()}.

%% Example:
%% fetch_page_request() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"TransactionId">> => string()
%% }
-type fetch_page_request() :: #{binary() => any()}.

%% Example:
%% fetch_page_result() :: #{
%%   <<"ConsumedIOs">> => i_o_usage(),
%%   <<"Page">> => page(),
%%   <<"TimingInformation">> => timing_information()
%% }
-type fetch_page_result() :: #{binary() => any()}.

%% Example:
%% i_o_usage() :: #{
%%   <<"ReadIOs">> => float(),
%%   <<"WriteIOs">> => float()
%% }
-type i_o_usage() :: #{binary() => any()}.

%% Example:
%% invalid_session_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type invalid_session_exception() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% occ_conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type occ_conflict_exception() :: #{binary() => any()}.

%% Example:
%% page() :: #{
%%   <<"NextPageToken">> => string(),
%%   <<"Values">> => list(value_holder())
%% }
-type page() :: #{binary() => any()}.

%% Example:
%% rate_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type rate_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% send_command_request() :: #{
%%   <<"AbortTransaction">> => abort_transaction_request(),
%%   <<"CommitTransaction">> => commit_transaction_request(),
%%   <<"EndSession">> => end_session_request(),
%%   <<"ExecuteStatement">> => execute_statement_request(),
%%   <<"FetchPage">> => fetch_page_request(),
%%   <<"SessionToken">> => string(),
%%   <<"StartSession">> => start_session_request(),
%%   <<"StartTransaction">> => start_transaction_request()
%% }
-type send_command_request() :: #{binary() => any()}.

%% Example:
%% send_command_result() :: #{
%%   <<"AbortTransaction">> => abort_transaction_result(),
%%   <<"CommitTransaction">> => commit_transaction_result(),
%%   <<"EndSession">> => end_session_result(),
%%   <<"ExecuteStatement">> => execute_statement_result(),
%%   <<"FetchPage">> => fetch_page_result(),
%%   <<"StartSession">> => start_session_result(),
%%   <<"StartTransaction">> => start_transaction_result()
%% }
-type send_command_result() :: #{binary() => any()}.

%% Example:
%% start_session_request() :: #{
%%   <<"LedgerName">> => string()
%% }
-type start_session_request() :: #{binary() => any()}.

%% Example:
%% start_session_result() :: #{
%%   <<"SessionToken">> => string(),
%%   <<"TimingInformation">> => timing_information()
%% }
-type start_session_result() :: #{binary() => any()}.

%% Example:
%% start_transaction_request() :: #{

%% }
-type start_transaction_request() :: #{binary() => any()}.

%% Example:
%% start_transaction_result() :: #{
%%   <<"TimingInformation">> => timing_information(),
%%   <<"TransactionId">> => string()
%% }
-type start_transaction_result() :: #{binary() => any()}.

%% Example:
%% timing_information() :: #{
%%   <<"ProcessingTimeMilliseconds">> => float()
%% }
-type timing_information() :: #{binary() => any()}.

%% Example:
%% value_holder() :: #{
%%   <<"IonBinary">> => binary(),
%%   <<"IonText">> => string()
%% }
-type value_holder() :: #{binary() => any()}.

-type send_command_errors() ::
    rate_exceeded_exception() | 
    occ_conflict_exception() | 
    limit_exceeded_exception() | 
    invalid_session_exception() | 
    capacity_exceeded_exception() | 
    bad_request_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Sends a command to an Amazon QLDB ledger.
%%
%% Instead of interacting directly with this API, we recommend using the QLDB
%% driver
%% or the QLDB shell to execute data transactions on a ledger.
%%
%% If you are working with an AWS SDK, use the QLDB driver. The driver
%% provides
%% a high-level abstraction layer above this QLDB Session data
%% plane and manages `SendCommand' API calls for you. For information and
%% a list of supported programming languages, see Getting started
%% with the driver:
%% https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html
%% in the Amazon QLDB Developer
%% Guide.
%%
%% If you are working with the AWS Command Line Interface (AWS CLI), use the
%% QLDB shell. The shell is a command line interface that uses the QLDB
%% driver to
%% interact with a ledger. For information, see Accessing Amazon QLDB using
%% the
%% QLDB shell:
%% https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html.
-spec send_command(aws_client:aws_client(), send_command_request()) ->
    {ok, send_command_result(), tuple()} |
    {error, any()} |
    {error, send_command_errors(), tuple()}.
send_command(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_command(Client, Input, []).

-spec send_command(aws_client:aws_client(), send_command_request(), proplists:proplist()) ->
    {ok, send_command_result(), tuple()} |
    {error, any()} |
    {error, send_command_errors(), tuple()}.
send_command(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendCommand">>, Input, Options).

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
    Client1 = Client#{service => <<"qldb">>},
    Host = build_host(<<"session.qldb">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"QLDBSession.", Action/binary>>}
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
