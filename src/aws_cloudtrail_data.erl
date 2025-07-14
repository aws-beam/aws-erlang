%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The CloudTrail Data Service lets you ingest events into CloudTrail
%% from any source in your
%% hybrid environments, such as in-house or SaaS applications hosted
%% on-premises or in the cloud,
%% virtual machines, or containers.
%%
%% You can store, access, analyze, troubleshoot and take action on
%% this data without maintaining multiple log aggregators and reporting
%% tools. After you run
%% `PutAuditEvents' to ingest your application activity into CloudTrail,
%% you can use CloudTrail Lake to search, query, and analyze the data that is
%% logged
%% from your applications.
-module(aws_cloudtrail_data).

-export([put_audit_events/2,
         put_audit_events/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% audit_event() :: #{
%%   <<"eventData">> => [string()],
%%   <<"eventDataChecksum">> => [string()],
%%   <<"id">> => string()
%% }
-type audit_event() :: #{binary() => any()}.


%% Example:
%% audit_event_result_entry() :: #{
%%   <<"eventID">> => string(),
%%   <<"id">> => string()
%% }
-type audit_event_result_entry() :: #{binary() => any()}.


%% Example:
%% channel_insufficient_permission() :: #{
%%   <<"message">> => [string()]
%% }
-type channel_insufficient_permission() :: #{binary() => any()}.


%% Example:
%% channel_not_found() :: #{
%%   <<"message">> => [string()]
%% }
-type channel_not_found() :: #{binary() => any()}.


%% Example:
%% channel_unsupported_schema() :: #{
%%   <<"message">> => [string()]
%% }
-type channel_unsupported_schema() :: #{binary() => any()}.


%% Example:
%% duplicated_audit_event_id() :: #{
%%   <<"message">> => [string()]
%% }
-type duplicated_audit_event_id() :: #{binary() => any()}.


%% Example:
%% invalid_channel_arn() :: #{
%%   <<"message">> => [string()]
%% }
-type invalid_channel_arn() :: #{binary() => any()}.


%% Example:
%% put_audit_events_request() :: #{
%%   <<"auditEvents">> := list(audit_event()),
%%   <<"channelArn">> := string(),
%%   <<"externalId">> => string()
%% }
-type put_audit_events_request() :: #{binary() => any()}.


%% Example:
%% put_audit_events_response() :: #{
%%   <<"failed">> := list(result_error_entry()),
%%   <<"successful">> := list(audit_event_result_entry())
%% }
-type put_audit_events_response() :: #{binary() => any()}.


%% Example:
%% result_error_entry() :: #{
%%   <<"errorCode">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"id">> => string()
%% }
-type result_error_entry() :: #{binary() => any()}.


%% Example:
%% unsupported_operation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type unsupported_operation_exception() :: #{binary() => any()}.

-type put_audit_events_errors() ::
    unsupported_operation_exception() | 
    invalid_channel_arn() | 
    duplicated_audit_event_id() | 
    channel_unsupported_schema() | 
    channel_not_found() | 
    channel_insufficient_permission().

%%====================================================================
%% API
%%====================================================================

%% @doc Ingests your application events into CloudTrail Lake.
%%
%% A required parameter,
%% `auditEvents', accepts the JSON records (also called
%% payload) of events that you want CloudTrail to ingest. You
%% can add up to 100 of these events (or up to 1 MB) per `PutAuditEvents'
%% request.
-spec put_audit_events(aws_client:aws_client(), put_audit_events_request()) ->
    {ok, put_audit_events_response(), tuple()} |
    {error, any()} |
    {error, put_audit_events_errors(), tuple()}.
put_audit_events(Client, Input) ->
    put_audit_events(Client, Input, []).

-spec put_audit_events(aws_client:aws_client(), put_audit_events_request(), proplists:proplist()) ->
    {ok, put_audit_events_response(), tuple()} |
    {error, any()} |
    {error, put_audit_events_errors(), tuple()}.
put_audit_events(Client, Input0, Options0) ->
    Method = post,
    Path = ["/PutAuditEvents"],
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

    QueryMapping = [
                     {<<"channelArn">>, <<"channelArn">>},
                     {<<"externalId">>, <<"externalId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
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
    Client1 = Client#{service => <<"cloudtrail-data">>},
    Host = build_host(<<"cloudtrail-data">>, Client1),
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
