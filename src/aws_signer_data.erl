%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Signer Data Plane service provides APIs for checking revocation
%% status of signed artifacts.
-module(aws_signer_data).

-export([get_revocation_status/6,
         get_revocation_status/8,
         get_revocation_status/9]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% get_revocation_status_request() :: #{
%%   <<"certificateHashes">> := list(string()),
%%   <<"jobArn">> := string(),
%%   <<"platformId">> := string(),
%%   <<"profileVersionArn">> := string(),
%%   <<"signatureTimestamp">> := [non_neg_integer()]
%% }
-type get_revocation_status_request() :: #{binary() => any()}.


%% Example:
%% get_revocation_status_response() :: #{
%%   <<"revokedEntities">> => list(string())
%% }
-type get_revocation_status_response() :: #{binary() => any()}.


%% Example:
%% internal_service_error_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"message">> => [string()]
%% }
-type internal_service_error_exception() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"message">> => [string()]
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

-type get_revocation_status_errors() ::
    validation_exception() | 
    too_many_requests_exception() | 
    internal_service_error_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Retrieves the revocation status for a signed artifact by checking if
%% the signing profile, job, or certificate has been revoked.
-spec get_revocation_status(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_revocation_status_response(), tuple()} |
    {error, any()} |
    {error, get_revocation_status_errors(), tuple()}.
get_revocation_status(Client, CertificateHashes, JobArn, PlatformId, ProfileVersionArn, SignatureTimestamp)
  when is_map(Client) ->
    get_revocation_status(Client, CertificateHashes, JobArn, PlatformId, ProfileVersionArn, SignatureTimestamp, #{}, #{}).

-spec get_revocation_status(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_revocation_status_response(), tuple()} |
    {error, any()} |
    {error, get_revocation_status_errors(), tuple()}.
get_revocation_status(Client, CertificateHashes, JobArn, PlatformId, ProfileVersionArn, SignatureTimestamp, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_revocation_status(Client, CertificateHashes, JobArn, PlatformId, ProfileVersionArn, SignatureTimestamp, QueryMap, HeadersMap, []).

-spec get_revocation_status(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_revocation_status_response(), tuple()} |
    {error, any()} |
    {error, get_revocation_status_errors(), tuple()}.
get_revocation_status(Client, CertificateHashes, JobArn, PlatformId, ProfileVersionArn, SignatureTimestamp, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/revocations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"certificateHashes">>, CertificateHashes},
        {<<"jobArn">>, JobArn},
        {<<"platformId">>, PlatformId},
        {<<"profileVersionArn">>, ProfileVersionArn},
        {<<"signatureTimestamp">>, SignatureTimestamp}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

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
    Client1 = Client#{service => <<"signer">>},
    Host = build_host(<<"data-signer">>, Client1),
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
