%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc With Fleet Hub for IoT Device Management you can build stand-alone
%% web applications for monitoring the health of your device fleets.
-module(aws_iotfleethub).

-export([create_application/2,
         create_application/3,
         delete_application/3,
         delete_application/4,
         describe_application/2,
         describe_application/4,
         describe_application/5,
         list_applications/1,
         list_applications/3,
         list_applications/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_application/3,
         update_application/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% application_summary() :: #{
%%   <<"applicationCreationDate">> => float(),
%%   <<"applicationDescription">> => string(),
%%   <<"applicationId">> => string(),
%%   <<"applicationLastUpdateDate">> => float(),
%%   <<"applicationName">> => string(),
%%   <<"applicationState">> => list(any()),
%%   <<"applicationUrl">> => string()
%% }
-type application_summary() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_application_request() :: #{
%%   <<"applicationDescription">> => string(),
%%   <<"applicationName">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => map()
%% }
-type create_application_request() :: #{binary() => any()}.


%% Example:
%% create_application_response() :: #{
%%   <<"applicationArn">> => string(),
%%   <<"applicationId">> => string()
%% }
-type create_application_response() :: #{binary() => any()}.


%% Example:
%% delete_application_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_application_request() :: #{binary() => any()}.

%% Example:
%% delete_application_response() :: #{}
-type delete_application_response() :: #{}.

%% Example:
%% describe_application_request() :: #{}
-type describe_application_request() :: #{}.


%% Example:
%% describe_application_response() :: #{
%%   <<"applicationArn">> => string(),
%%   <<"applicationCreationDate">> => float(),
%%   <<"applicationDescription">> => string(),
%%   <<"applicationId">> => string(),
%%   <<"applicationLastUpdateDate">> => float(),
%%   <<"applicationName">> => string(),
%%   <<"applicationState">> => list(any()),
%%   <<"applicationUrl">> => string(),
%%   <<"errorMessage">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"ssoClientId">> => string(),
%%   <<"tags">> => map()
%% }
-type describe_application_response() :: #{binary() => any()}.


%% Example:
%% internal_failure_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_failure_exception() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_applications_request() :: #{
%%   <<"nextToken">> => string()
%% }
-type list_applications_request() :: #{binary() => any()}.


%% Example:
%% list_applications_response() :: #{
%%   <<"applicationSummaries">> => list(application_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_applications_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% update_application_request() :: #{
%%   <<"applicationDescription">> => string(),
%%   <<"applicationName">> => string(),
%%   <<"clientToken">> => string()
%% }
-type update_application_request() :: #{binary() => any()}.

%% Example:
%% update_application_response() :: #{}
-type update_application_response() :: #{}.

-type create_application_errors() ::
    throttling_exception() | 
    limit_exceeded_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type delete_application_errors() ::
    throttling_exception() | 
    resource_not_found_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type describe_application_errors() ::
    throttling_exception() | 
    resource_not_found_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_applications_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type list_tags_for_resource_errors() ::
    resource_not_found_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type tag_resource_errors() ::
    resource_not_found_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type untag_resource_errors() ::
    resource_not_found_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type update_application_errors() ::
    throttling_exception() | 
    resource_not_found_exception() | 
    invalid_request_exception() | 
    internal_failure_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a Fleet Hub for IoT Device Management web application.
%%
%% When creating a Fleet Hub application, you must create an organization
%% instance of
%% IAM Identity Center if you don't already have one. The Fleet Hub
%% application you create must also be in
%% the same Amazon Web Services Region of the organization instance of IAM
%% Identity Center. For more information see Enabling
%% IAM Identity Center:
%% https://docs.aws.amazon.com/singlesignon/latest/userguide/get-set-up-for-idc.html
%% and Organization instances of IAM Identity Center:
%% https://docs.aws.amazon.com/singlesignon/latest/userguide/organization-instances-identity-center.html.
-spec create_application(aws_client:aws_client(), create_application_request()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input) ->
    create_application(Client, Input, []).

-spec create_application(aws_client:aws_client(), create_application_request(), proplists:proplist()) ->
    {ok, create_application_response(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/applications"],
    SuccessStatusCode = 201,
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

%% @doc Deletes a Fleet Hub for IoT Device Management web application.
-spec delete_application(aws_client:aws_client(), binary() | list(), delete_application_request()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, ApplicationId, Input) ->
    delete_application(Client, ApplicationId, Input, []).

-spec delete_application(aws_client:aws_client(), binary() | list(), delete_application_request(), proplists:proplist()) ->
    {ok, delete_application_response(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 204,
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about a Fleet Hub for IoT Device Management web
%% application.
-spec describe_application(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_application_response(), tuple()} |
    {error, any()} |
    {error, describe_application_errors(), tuple()}.
describe_application(Client, ApplicationId)
  when is_map(Client) ->
    describe_application(Client, ApplicationId, #{}, #{}).

-spec describe_application(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_application_response(), tuple()} |
    {error, any()} |
    {error, describe_application_errors(), tuple()}.
describe_application(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_application(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec describe_application(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_application_response(), tuple()} |
    {error, any()} |
    {error, describe_application_errors(), tuple()}.
describe_application(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a list of Fleet Hub for IoT Device Management web applications
%% for the current account.
-spec list_applications(aws_client:aws_client()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client)
  when is_map(Client) ->
    list_applications(Client, #{}, #{}).

-spec list_applications(aws_client:aws_client(), map(), map()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_applications(Client, QueryMap, HeadersMap, []).

-spec list_applications(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_applications_response(), tuple()} |
    {error, any()} |
    {error, list_applications_errors(), tuple()}.
list_applications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications"],
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

%% @doc Lists the tags for the specified resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Adds to or modifies the tags of the specified resource.
%%
%% Tags are metadata which can be used to manage a resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes the specified tags (metadata) from the resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates information about a Fleet Hub for IoT Device Management web
%% application.
-spec update_application(aws_client:aws_client(), binary() | list(), update_application_request()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, ApplicationId, Input) ->
    update_application(Client, ApplicationId, Input, []).

-spec update_application(aws_client:aws_client(), binary() | list(), update_application_request(), proplists:proplist()) ->
    {ok, update_application_response(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, ApplicationId, Input0, Options0) ->
    Method = patch,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 202,
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
    Client1 = Client#{service => <<"iotfleethub">>},
    Host = build_host(<<"api.fleethub.iot">>, Client1),
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
