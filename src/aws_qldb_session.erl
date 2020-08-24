%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The transactional data APIs for Amazon QLDB
%%
%% <note> Instead of interacting directly with this API, we recommend that
%% you use the Amazon QLDB Driver or the QLDB Shell to execute data
%% transactions on a ledger.
%%
%% <ul> <li> If you are working with an AWS SDK, use the QLDB Driver. The
%% driver provides a high-level abstraction layer above this
%% <code>qldbsession</code> data plane and manages <code>SendCommand</code>
%% API calls for you. For information and a list of supported programming
%% languages, see <a
%% href="https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html">Getting
%% started with the driver</a> in the <i>Amazon QLDB Developer Guide</i>.
%%
%% </li> <li> If you are working with the AWS Command Line Interface (AWS
%% CLI), use the QLDB Shell. The shell is a command line interface that uses
%% the QLDB Driver to interact with a ledger. For information, see <a
%% href="https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html">Accessing
%% Amazon QLDB using the QLDB Shell</a>.
%%
%% </li> </ul> </note>
-module(aws_qldb_session).

-export([send_command/2,
         send_command/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Sends a command to an Amazon QLDB ledger.
%%
%% <note> Instead of interacting directly with this API, we recommend that
%% you use the Amazon QLDB Driver or the QLDB Shell to execute data
%% transactions on a ledger.
%%
%% <ul> <li> If you are working with an AWS SDK, use the QLDB Driver. The
%% driver provides a high-level abstraction layer above this
%% <code>qldbsession</code> data plane and manages <code>SendCommand</code>
%% API calls for you. For information and a list of supported programming
%% languages, see <a
%% href="https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-driver.html">Getting
%% started with the driver</a> in the <i>Amazon QLDB Developer Guide</i>.
%%
%% </li> <li> If you are working with the AWS Command Line Interface (AWS
%% CLI), use the QLDB Shell. The shell is a command line interface that uses
%% the QLDB Driver to interact with a ledger. For information, see <a
%% href="https://docs.aws.amazon.com/qldb/latest/developerguide/data-shell.html">Accessing
%% Amazon QLDB using the QLDB Shell</a>.
%%
%% </li> </ul> </note>
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
request(Client, Action, Input0, Options) ->
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

build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
