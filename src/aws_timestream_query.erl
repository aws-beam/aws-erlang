%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.


-module(aws_timestream_query).

-export([cancel_query/2,
         cancel_query/3,
         describe_endpoints/2,
         describe_endpoints/3,
         query/2,
         query/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels a query that has been issued.
%%
%% Cancellation is guaranteed only if the query has not completed execution
%% before the cancellation request was issued. Because cancellation is an
%% idempotent operation, subsequent cancellation requests will return a
%% `CancellationMessage`, indicating that the query has already been
%% canceled.
cancel_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_query(Client, Input, []).
cancel_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelQuery">>, Input, Options).

%% @doc DescribeEndpoints returns a list of available endpoints to make
%% Timestream API calls against.
%%
%% This API is available through both Write and Query.
%%
%% Because Timestream’s SDKs are designed to transparently work with the
%% service’s architecture, including the management and mapping of the
%% service endpoints, it is not recommended that you use this API unless:
%%
%% <ul> <li> Your application uses a programming language that does not yet
%% have SDK support
%%
%% </li> <li> You require better control over the client-side implementation
%%
%% </li> </ul> For detailed information on how to use DescribeEndpoints, see
%% The Endpoint Discovery Pattern and REST APIs.
describe_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoints(Client, Input, []).
describe_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpoints">>, Input, Options).

%% @doc Query is a synchronous operation that enables you to execute a query.
%%
%% Query will timeout after 60 seconds. You must update the default timeout
%% in the SDK to support a timeout of 60 seconds. The result set will be
%% truncated to 1MB. Service quotas apply. For more information, see Quotas
%% in the Timestream Developer Guide.
query(Client, Input)
  when is_map(Client), is_map(Input) ->
    query(Client, Input, []).
query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Query">>, Input, Options).

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
    Client1 = Client#{service => <<"timestream">>},
    Host = build_host(<<"query.timestream">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"Timestream_20181101.", Action/binary>>}
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
