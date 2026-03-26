%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Amazon Web Services User Experience Customization (UXC)
%% API Reference.
%%
%% Amazon Web Services User Experience Customization (UXC) is a utility that
%% provides programmatic access to enable account administrators to customize
%% the visual appearance of the Amazon Web Services Management Console and
%% manage these settings at the account level.
%%
%% The `visibleServices' and `visibleRegions' settings control only
%% the appearance of services and Regions in the Amazon Web Services
%% Management Console. They do not restrict access through the CLI, SDKs, or
%% other APIs.
%%
%% For more information about UXC features and console procedures, see
%% Getting started with Amazon Web Services User Experience Customization:
%% https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/getting-started-uxc.html.
%% For information about required permissions, see Identity and access
%% management for Amazon Web Services Management Console:
%% https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/security_iam.html.
-module(aws_uxc).

-export([get_account_customizations/1,
         get_account_customizations/3,
         get_account_customizations/4,
         list_services/1,
         list_services/3,
         list_services/4,
         update_account_customizations/2,
         update_account_customizations/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% get_account_customizations_input() :: #{}
-type get_account_customizations_input() :: #{}.


%% Example:
%% get_account_customizations_output() :: #{
%%   <<"accountColor">> => list(any()),
%%   <<"visibleRegions">> => list(string()),
%%   <<"visibleServices">> => list(string())
%% }
-type get_account_customizations_output() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_services_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_services_input() :: #{binary() => any()}.


%% Example:
%% list_services_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"services">> => list(string())
%% }
-type list_services_output() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% update_account_customizations_input() :: #{
%%   <<"accountColor">> => list(any()),
%%   <<"visibleRegions">> => list(string()),
%%   <<"visibleServices">> => list(string())
%% }
-type update_account_customizations_input() :: #{binary() => any()}.


%% Example:
%% update_account_customizations_output() :: #{
%%   <<"accountColor">> => list(any()),
%%   <<"visibleRegions">> => list(string()),
%%   <<"visibleServices">> => list(string())
%% }
-type update_account_customizations_output() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"path">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

-type get_account_customizations_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_services_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type update_account_customizations_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Returns the current account customization settings, including account
%% color, visible services, and visible Regions.
%%
%% Settings that you have not configured return their default values: visible
%% Regions and visible services return `null`, and account color returns
%% `none`.
%%
%% The `visibleServices' and `visibleRegions' settings control only
%% the appearance of services and Regions in the Amazon Web Services
%% Management Console. They do not restrict access through the CLI, SDKs, or
%% other APIs.
-spec get_account_customizations(aws_client:aws_client()) ->
    {ok, get_account_customizations_output(), tuple()} |
    {error, any()} |
    {error, get_account_customizations_errors(), tuple()}.
get_account_customizations(Client)
  when is_map(Client) ->
    get_account_customizations(Client, #{}, #{}).

-spec get_account_customizations(aws_client:aws_client(), map(), map()) ->
    {ok, get_account_customizations_output(), tuple()} |
    {error, any()} |
    {error, get_account_customizations_errors(), tuple()}.
get_account_customizations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_account_customizations(Client, QueryMap, HeadersMap, []).

-spec get_account_customizations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_account_customizations_output(), tuple()} |
    {error, any()} |
    {error, get_account_customizations_errors(), tuple()}.
get_account_customizations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/account-customizations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of Amazon Web Services service identifiers
%% that you can use as values for the `visibleServices' setting in
%% UpdateAccountCustomizations:
%% https://docs.aws.amazon.com/awsconsolehelpdocs/latest/APIReference/API_UpdateAccountCustomizations.html.
%%
%% The available services vary by Amazon Web Services partition. Use
%% pagination to retrieve all results.
%%
%% The `visibleServices' setting controls only the appearance of services
%% in the Amazon Web Services Management Console. It does not restrict access
%% through the CLI, SDKs, or other APIs.
-spec list_services(aws_client:aws_client()) ->
    {ok, list_services_output(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client)
  when is_map(Client) ->
    list_services(Client, #{}, #{}).

-spec list_services(aws_client:aws_client(), map(), map()) ->
    {ok, list_services_output(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_services(Client, QueryMap, HeadersMap, []).

-spec list_services(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_services_output(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/services"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Updates one or more account customization settings.
%%
%% You can update account color, visible services, and visible Regions in a
%% single request. Only the settings that you include in the request body are
%% modified. Omitted settings remain unchanged. To reset a setting to its
%% default behavior, set the value to `null' for visible Regions and
%% visible services, or `none' for account color. This operation is
%% idempotent.
%%
%% The `visibleServices' and `visibleRegions' settings control only
%% the appearance of services and Regions in the Amazon Web Services
%% Management Console. They do not restrict access through the CLI, SDKs, or
%% other APIs.
-spec update_account_customizations(aws_client:aws_client(), update_account_customizations_input()) ->
    {ok, update_account_customizations_output(), tuple()} |
    {error, any()} |
    {error, update_account_customizations_errors(), tuple()}.
update_account_customizations(Client, Input) ->
    update_account_customizations(Client, Input, []).

-spec update_account_customizations(aws_client:aws_client(), update_account_customizations_input(), proplists:proplist()) ->
    {ok, update_account_customizations_output(), tuple()} |
    {error, any()} |
    {error, update_account_customizations_errors(), tuple()}.
update_account_customizations(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/v1/account-customizations"],
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
    Client1 = Client#{service => <<"uxc">>},
    Host = build_host(<<"uxc">>, Client1),
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
