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
send_command(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_command(Client, Input, []).
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
    Client1 = Client#{service => <<"session.qldb">>},
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
