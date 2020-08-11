%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Mobile Analytics is a service for collecting, visualizing, and
%% understanding app usage data at scale.
-module(aws_mobile_analytics).

-export([put_events/2,
         put_events/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc The PutEvents operation records one or more events. You can have up
%% to 1,500 unique custom events per app, any combination of up to 40
%% attributes and metrics per custom event, and any number of attribute or
%% metric values.
put_events(Client, Input) ->
    put_events(Client, Input, []).
put_events(Client, Input0, Options) ->
    Method = post,
    Path = ["/2014-06-05/events"],
    SuccessStatusCode = 202,
    
    HeadersMapping = [
                       {<<"x-amz-Client-Context">>, <<"clientContext">>},
                       {<<"x-amz-Client-Context-Encoding">>, <<"clientContextEncoding">>}
                     ],
    {Headers, Input} = aws_request:build_headers(HeadersMapping, Input0),
    
    request(Client, Method, Path, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Method, Path, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"mobileanalytics">>},
    Host = get_host(<<"mobileanalytics">>, Client1),
    URL = get_url(Host, Path, Client1),
    Headers1 = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
        | Headers0
    ],
    Payload = encode_payload(Input),
    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, undefined, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    Reason1 = maps:get(<<"message">>, Error, undefined),
    Reason2 = maps:get(<<"Message">>, Error, Reason1),
    {error, Reason2, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
