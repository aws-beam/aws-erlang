%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Systems Manager GUI Connect
%%
%% Systems Manager GUI Connect, a component of Fleet Manager, lets you
%% connect to your Window
%% Server-type Amazon Elastic Compute Cloud (Amazon EC2) instances using the
%% Remote Desktop Protocol (RDP).
%%
%% GUI
%% Connect, which is powered by Amazon DCV:
%% https://docs.aws.amazon.com/dcv/latest/adminguide/what-is-dcv.html,
%% provides you
%% with secure connectivity to your Windows Server instances directly from
%% the Systems Manager console.
%% You can have up to four simultaneous connections in a single browser
%% window. In the
%% console, GUI Connect is also referred to as Fleet Manager Remote Desktop.
%%
%% This reference is intended to be used with the
%% Amazon Web Services Systems Manager User
%% Guide
%% : https://docs.aws.amazon.com/systems-manager/latest/userguide/. To get
%% started, see the following user guide topics:
%%
%% Setting up
%% Amazon Web Services Systems Manager:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-setting-up.html
%%
%% Connect to a Windows Server managed instance using Remote Desktop:
%% https://docs.aws.amazon.com/systems-manager/latest/userguide/fleet-rdp.html
-module(aws_ssm_guiconnect).

-export([delete_connection_recording_preferences/2,
         delete_connection_recording_preferences/3,
         get_connection_recording_preferences/2,
         get_connection_recording_preferences/3,
         update_connection_recording_preferences/2,
         update_connection_recording_preferences/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% connection_recording_preferences() :: #{
%%   <<"KMSKeyArn">> => [string()],
%%   <<"RecordingDestinations">> => recording_destinations()
%% }
-type connection_recording_preferences() :: #{binary() => any()}.


%% Example:
%% delete_connection_recording_preferences_request() :: #{
%%   <<"ClientToken">> => string()
%% }
-type delete_connection_recording_preferences_request() :: #{binary() => any()}.


%% Example:
%% delete_connection_recording_preferences_response() :: #{
%%   <<"ClientToken">> => string()
%% }
-type delete_connection_recording_preferences_response() :: #{binary() => any()}.


%% Example:
%% get_connection_recording_preferences_response() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ConnectionRecordingPreferences">> => connection_recording_preferences()
%% }
-type get_connection_recording_preferences_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% recording_destinations() :: #{
%%   <<"S3Buckets">> => list(s3_bucket())
%% }
-type recording_destinations() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% s3_bucket() :: #{
%%   <<"BucketName">> => string(),
%%   <<"BucketOwner">> => string()
%% }
-type s3_bucket() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% update_connection_recording_preferences_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ConnectionRecordingPreferences">> := connection_recording_preferences()
%% }
-type update_connection_recording_preferences_request() :: #{binary() => any()}.


%% Example:
%% update_connection_recording_preferences_response() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ConnectionRecordingPreferences">> => connection_recording_preferences()
%% }
-type update_connection_recording_preferences_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

-type delete_connection_recording_preferences_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type get_connection_recording_preferences_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_connection_recording_preferences_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes the preferences for recording RDP connections.
-spec delete_connection_recording_preferences(aws_client:aws_client(), delete_connection_recording_preferences_request()) ->
    {ok, delete_connection_recording_preferences_response(), tuple()} |
    {error, any()} |
    {error, delete_connection_recording_preferences_errors(), tuple()}.
delete_connection_recording_preferences(Client, Input) ->
    delete_connection_recording_preferences(Client, Input, []).

-spec delete_connection_recording_preferences(aws_client:aws_client(), delete_connection_recording_preferences_request(), proplists:proplist()) ->
    {ok, delete_connection_recording_preferences_response(), tuple()} |
    {error, any()} |
    {error, delete_connection_recording_preferences_errors(), tuple()}.
delete_connection_recording_preferences(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteConnectionRecordingPreferences"],
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

%% @doc Returns the preferences specified for recording RDP connections in
%% the requesting Amazon Web Services account and Amazon Web Services Region.
-spec get_connection_recording_preferences(aws_client:aws_client(), #{}) ->
    {ok, get_connection_recording_preferences_response(), tuple()} |
    {error, any()} |
    {error, get_connection_recording_preferences_errors(), tuple()}.
get_connection_recording_preferences(Client, Input) ->
    get_connection_recording_preferences(Client, Input, []).

-spec get_connection_recording_preferences(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, get_connection_recording_preferences_response(), tuple()} |
    {error, any()} |
    {error, get_connection_recording_preferences_errors(), tuple()}.
get_connection_recording_preferences(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetConnectionRecordingPreferences"],
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

%% @doc Updates the preferences for recording RDP connections.
-spec update_connection_recording_preferences(aws_client:aws_client(), update_connection_recording_preferences_request()) ->
    {ok, update_connection_recording_preferences_response(), tuple()} |
    {error, any()} |
    {error, update_connection_recording_preferences_errors(), tuple()}.
update_connection_recording_preferences(Client, Input) ->
    update_connection_recording_preferences(Client, Input, []).

-spec update_connection_recording_preferences(aws_client:aws_client(), update_connection_recording_preferences_request(), proplists:proplist()) ->
    {ok, update_connection_recording_preferences_response(), tuple()} |
    {error, any()} |
    {error, update_connection_recording_preferences_errors(), tuple()}.
update_connection_recording_preferences(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateConnectionRecordingPreferences"],
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
    Client1 = Client#{service => <<"ssm-guiconnect">>},
    Host = build_host(<<"ssm-guiconnect">>, Client1),
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
