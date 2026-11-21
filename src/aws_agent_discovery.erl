%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Agent Discovery lets you search public records for AI agents, tools,
%% skills, and other resources
%% that their publishers have made discoverable.
-module(aws_agent_discovery).

-export([search_public_records/2,
         search_public_records/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%% hackney:body/1 is only called with hackney versions that still export it.
-ignore_xref([{hackney, body, 1}]).



%% Example:
%% descriptor_entry() :: #{
%%   <<"additionalData">> => map(),
%%   <<"data">> => string(),
%%   <<"source">> => descriptor_source(),
%%   <<"version">> => string()
%% }
-type descriptor_entry() :: #{binary() => any()}.


%% Example:
%% descriptor_source() :: #{
%%   <<"fromUrl">> => descriptor_source_url()
%% }
-type descriptor_source() :: #{binary() => any()}.


%% Example:
%% descriptor_source_url() :: #{
%%   <<"url">> => string()
%% }
-type descriptor_source_url() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% provenance_link() :: #{
%%   <<"relation">> => list(any()),
%%   <<"sourceId">> => string()
%% }
-type provenance_link() :: #{binary() => any()}.


%% Example:
%% public_record() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"descriptors">> => map(),
%%   <<"displayName">> => string(),
%%   <<"domain">> => string(),
%%   <<"identifier">> => list(),
%%   <<"recordType">> => list(any()),
%%   <<"recordVersion">> => string(),
%%   <<"trustManifests">> => list(trust_manifest()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type public_record() :: #{binary() => any()}.


%% Example:
%% search_public_records_request() :: #{
%%   <<"filters">> => any(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"searchQuery">> => string()
%% }
-type search_public_records_request() :: #{binary() => any()}.


%% Example:
%% search_public_records_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"records">> => list(public_record())
%% }
-type search_public_records_response() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% trust_manifest() :: #{
%%   <<"contributor">> => string(),
%%   <<"provenance">> => list(provenance_link())
%% }
-type trust_manifest() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

-type search_public_records_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Search public agent records across the authoritative + crawler
%% indexes.
%%
%% Hybrid keyword +
%% neural ranking, merged and fused (weighted RRF), with filters, org
%% governance policy, and
%% descriptor-visibility enforcement applied server-side. Public,
%% authenticated (D-1).
-spec search_public_records(aws_client:aws_client(), search_public_records_request()) ->
    {ok, search_public_records_response(), tuple()} |
    {error, any()} |
    {error, search_public_records_errors(), tuple()}.
search_public_records(Client, Input) ->
    search_public_records(Client, Input, []).

-spec search_public_records(aws_client:aws_client(), search_public_records_request(), proplists:proplist()) ->
    {ok, search_public_records_response(), tuple()} |
    {error, any()} |
    {error, search_public_records_errors(), tuple()}.
search_public_records(Client, Input0, Options0) ->
    Method = post,
    Path = ["/records/search"],
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
    {ok, Result, {integer(), list(), term()}} |
    {error, Error, {integer(), list(), term()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"agent-discovery">>},
    DefaultHost = build_host(<<"agent-discovery">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_AGENT_DISCOVERY">>),
    URL = aws_request:add_query(URL1, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
         true when is_list(Input) ->
           proplists:get_value(<<"Body">>, Input, <<"">>);
         true when Input =:= undefined ->
           <<"">>;
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
    case response_body(Client) of
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
    {ok, Body} = response_body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
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

