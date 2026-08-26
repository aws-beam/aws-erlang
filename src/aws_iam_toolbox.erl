%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Contains APIs to work with AWS Identity and Access Management (IAM).
-module(aws_iam_toolbox).

-export([get_request_authorization_details/2,
         get_request_authorization_details/4,
         get_request_authorization_details/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% attached_to() :: #{
%%   <<"arn">> => [string()]
%% }
-type attached_to() :: #{binary() => any()}.


%% Example:
%% evaluation() :: #{
%%   <<"action">> => [string()],
%%   <<"context">> => map(),
%%   <<"evaluatedEffect">> => list(any()),
%%   <<"matchedPolicies">> => list(matched_policy()),
%%   <<"resource">> => [string()]
%% }
-type evaluation() :: #{binary() => any()}.


%% Example:
%% get_request_authorization_details_input() :: #{
%%   <<"nextToken">> => [string()]
%% }
-type get_request_authorization_details_input() :: #{binary() => any()}.


%% Example:
%% get_request_authorization_details_output() :: #{
%%   <<"evaluations">> => list(evaluation()),
%%   <<"nextToken">> => [string()],
%%   <<"policies">> => list(policy_info()),
%%   <<"requestContext">> => map()
%% }
-type get_request_authorization_details_output() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% matched_policy() :: #{
%%   <<"matchedStatements">> => list(matched_statement()),
%%   <<"uri">> => [string()]
%% }
-type matched_policy() :: #{binary() => any()}.


%% Example:
%% matched_statement() :: #{
%%   <<"evaluatedEffect">> => list(any()),
%%   <<"sid">> => [string()]
%% }
-type matched_statement() :: #{binary() => any()}.


%% Example:
%% policy_info() :: #{
%%   <<"attachedTo">> => list(attached_to()),
%%   <<"inline">> => [boolean()],
%%   <<"type">> => list(any()),
%%   <<"uri">> => [string()]
%% }
-type policy_info() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

-type get_request_authorization_details_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Retrieves the authorization details for a specific access denied
%% request.
%%
%% The details include the request context, the evaluations performed, and
%% the policies that were evaluated.
%%
%% Use this operation to understand why a request was denied. Supported
%% services include an authorization ID in the access denied error message.
%% Pass that ID to this operation to retrieve the details.
%%
%% Authorization details are available for at least 24 hours after the
%% denial.
%%
%% To use this operation, you must have the
%% `iam:GetRequestAuthorizationDetails' permission.
-spec get_request_authorization_details(aws_client:aws_client(), binary() | list()) ->
    {ok, get_request_authorization_details_output(), tuple()} |
    {error, any()} |
    {error, get_request_authorization_details_errors(), tuple()}.
get_request_authorization_details(Client, AuthorizationId)
  when is_map(Client) ->
    get_request_authorization_details(Client, AuthorizationId, #{}, #{}).

-spec get_request_authorization_details(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_request_authorization_details_output(), tuple()} |
    {error, any()} |
    {error, get_request_authorization_details_errors(), tuple()}.
get_request_authorization_details(Client, AuthorizationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_request_authorization_details(Client, AuthorizationId, QueryMap, HeadersMap, []).

-spec get_request_authorization_details(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_request_authorization_details_output(), tuple()} |
    {error, any()} |
    {error, get_request_authorization_details_errors(), tuple()}.
get_request_authorization_details(Client, AuthorizationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/authorization-details/", aws_util:encode_uri(AuthorizationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
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
    Client1 = Client#{service => <<"iam">>},
    DefaultHost = build_host(<<"iam-toolbox">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_IAM_TOOLBOX">>),
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

