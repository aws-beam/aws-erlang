%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Agent Registry lets callers discover, list, and retrieve approved
%% records published to a registry.
-module(aws_agent_registry).

-export([batch_get_discoverable_registry_record/2,
         batch_get_discoverable_registry_record/3,
         list_discoverable_registry_records/3,
         list_discoverable_registry_records/4,
         search_discoverable_registry_records/2,
         search_discoverable_registry_records/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% a2a_agent_card_descriptor() :: #{
%%   <<"data">> => string(),
%%   <<"dataSchemaVersion">> => string(),
%%   <<"source">> => descriptor_source()
%% }
-type a2a_agent_card_descriptor() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% ag_ui_descriptor() :: #{
%%   <<"source">> => descriptor_source()
%% }
-type ag_ui_descriptor() :: #{binary() => any()}.


%% Example:
%% agent_skills_additional_data() :: #{
%%   <<"skillMd">> => agent_skills_md_descriptor()
%% }
-type agent_skills_additional_data() :: #{binary() => any()}.


%% Example:
%% agent_skills_definition_descriptor() :: #{
%%   <<"additionalData">> => agent_skills_additional_data(),
%%   <<"data">> => string(),
%%   <<"dataSchemaVersion">> => string()
%% }
-type agent_skills_definition_descriptor() :: #{binary() => any()}.


%% Example:
%% agent_skills_md_descriptor() :: #{
%%   <<"data">> => string(),
%%   <<"dataSchemaVersion">> => string(),
%%   <<"source">> => descriptor_source()
%% }
-type agent_skills_md_descriptor() :: #{binary() => any()}.


%% Example:
%% batch_get_discoverable_registry_record_error() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"message">> => [string()],
%%   <<"recordId">> => string(),
%%   <<"registryId">> => string()
%% }
-type batch_get_discoverable_registry_record_error() :: #{binary() => any()}.


%% Example:
%% batch_get_discoverable_registry_record_request() :: #{
%%   <<"entries">> := list(registry_records_entry())
%% }
-type batch_get_discoverable_registry_record_request() :: #{binary() => any()}.


%% Example:
%% batch_get_discoverable_registry_record_response() :: #{
%%   <<"errors">> => list(batch_get_discoverable_registry_record_error()),
%%   <<"registryRecords">> => list(registry_record_summary())
%% }
-type batch_get_discoverable_registry_record_response() :: #{binary() => any()}.


%% Example:
%% custom_descriptor() :: #{
%%   <<"data">> => string()
%% }
-type custom_descriptor() :: #{binary() => any()}.


%% Example:
%% descriptor_source() :: #{
%%   <<"fromUrl">> => descriptor_source_from_url()
%% }
-type descriptor_source() :: #{binary() => any()}.


%% Example:
%% descriptor_source_from_url() :: #{
%%   <<"url">> => string()
%% }
-type descriptor_source_from_url() :: #{binary() => any()}.


%% Example:
%% descriptors() :: #{
%%   <<"a2aAgentCard">> => a2a_agent_card_descriptor(),
%%   <<"agentSkillsDefinition">> => agent_skills_definition_descriptor(),
%%   <<"agui">> => ag_ui_descriptor(),
%%   <<"custom">> => custom_descriptor(),
%%   <<"http">> => http_descriptor(),
%%   <<"mcpServer">> => mcp_server_descriptor()
%% }
-type descriptors() :: #{binary() => any()}.


%% Example:
%% discoverable_registry_record_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"descriptorTypes">> => list([string()]()),
%%   <<"displayName">> => string(),
%%   <<"name">> => string(),
%%   <<"recordArn">> => string(),
%%   <<"recordId">> => string(),
%%   <<"recordType">> => list(any()),
%%   <<"recordVersion">> => string(),
%%   <<"registryArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type discoverable_registry_record_summary() :: #{binary() => any()}.


%% Example:
%% http_descriptor() :: #{
%%   <<"source">> => descriptor_source()
%% }
-type http_descriptor() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_discoverable_registry_records_request() :: #{
%%   <<"filters">> => list(registry_record_filter()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_discoverable_registry_records_request() :: #{binary() => any()}.


%% Example:
%% list_discoverable_registry_records_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"registryRecords">> => list(discoverable_registry_record_summary())
%% }
-type list_discoverable_registry_records_response() :: #{binary() => any()}.


%% Example:
%% mcp_server_additional_data() :: #{
%%   <<"tools">> => mcp_tools_descriptor()
%% }
-type mcp_server_additional_data() :: #{binary() => any()}.


%% Example:
%% mcp_server_descriptor() :: #{
%%   <<"additionalData">> => mcp_server_additional_data(),
%%   <<"data">> => string(),
%%   <<"dataSchemaVersion">> => string(),
%%   <<"source">> => descriptor_source()
%% }
-type mcp_server_descriptor() :: #{binary() => any()}.


%% Example:
%% mcp_tools_descriptor() :: #{
%%   <<"data">> => string(),
%%   <<"dataSchemaVersion">> => string()
%% }
-type mcp_tools_descriptor() :: #{binary() => any()}.


%% Example:
%% registry_record_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"values">> => list(string())
%% }
-type registry_record_filter() :: #{binary() => any()}.


%% Example:
%% registry_record_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"descriptors">> => descriptors(),
%%   <<"displayName">> => string(),
%%   <<"name">> => string(),
%%   <<"recordArn">> => string(),
%%   <<"recordId">> => string(),
%%   <<"recordType">> => list(any()),
%%   <<"recordVersion">> => string(),
%%   <<"registryArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type registry_record_summary() :: #{binary() => any()}.


%% Example:
%% registry_records_entry() :: #{
%%   <<"recordIds">> => list(string()),
%%   <<"registryId">> => string()
%% }
-type registry_records_entry() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% search_discoverable_registry_records_request() :: #{
%%   <<"filters">> => any(),
%%   <<"maxResults">> => [integer()],
%%   <<"registryIds">> := list(string()),
%%   <<"searchQuery">> := string()
%% }
-type search_discoverable_registry_records_request() :: #{binary() => any()}.


%% Example:
%% search_discoverable_registry_records_response() :: #{
%%   <<"registryRecords">> => list(registry_record_summary())
%% }
-type search_discoverable_registry_records_response() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"message">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

-type batch_get_discoverable_registry_record_errors() ::
    validation_exception() | 
    unauthorized_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_discoverable_registry_records_errors() ::
    validation_exception() | 
    unauthorized_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type search_discoverable_registry_records_errors() ::
    validation_exception() | 
    unauthorized_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Retrieves multiple discoverable registry records by ID from a single
%% registry.
%%
%% Records that cannot be retrieved are reported individually in the
%% `errors' list rather than failing the entire request.
-spec batch_get_discoverable_registry_record(aws_client:aws_client(), batch_get_discoverable_registry_record_request()) ->
    {ok, batch_get_discoverable_registry_record_response(), tuple()} |
    {error, any()} |
    {error, batch_get_discoverable_registry_record_errors(), tuple()}.
batch_get_discoverable_registry_record(Client, Input) ->
    batch_get_discoverable_registry_record(Client, Input, []).

-spec batch_get_discoverable_registry_record(aws_client:aws_client(), batch_get_discoverable_registry_record_request(), proplists:proplist()) ->
    {ok, batch_get_discoverable_registry_record_response(), tuple()} |
    {error, any()} |
    {error, batch_get_discoverable_registry_record_errors(), tuple()}.
batch_get_discoverable_registry_record(Client, Input0, Options0) ->
    Method = post,
    Path = ["/discoverable-records-batch"],
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

%% @doc Lists the discoverable registry records in a registry.
%%
%% You can optionally filter and paginate the results.
-spec list_discoverable_registry_records(aws_client:aws_client(), binary() | list(), list_discoverable_registry_records_request()) ->
    {ok, list_discoverable_registry_records_response(), tuple()} |
    {error, any()} |
    {error, list_discoverable_registry_records_errors(), tuple()}.
list_discoverable_registry_records(Client, RegistryId, Input) ->
    list_discoverable_registry_records(Client, RegistryId, Input, []).

-spec list_discoverable_registry_records(aws_client:aws_client(), binary() | list(), list_discoverable_registry_records_request(), proplists:proplist()) ->
    {ok, list_discoverable_registry_records_response(), tuple()} |
    {error, any()} |
    {error, list_discoverable_registry_records_errors(), tuple()}.
list_discoverable_registry_records(Client, RegistryId, Input0, Options0) ->
    Method = post,
    Path = ["/registries/", aws_util:encode_uri(RegistryId), "/discoverable-records-list"],
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

%% @doc Searches the discoverable registry records in a registry using a
%% natural language query.
%%
%% Returns metadata for the matching records ordered by relevance.
-spec search_discoverable_registry_records(aws_client:aws_client(), search_discoverable_registry_records_request()) ->
    {ok, search_discoverable_registry_records_response(), tuple()} |
    {error, any()} |
    {error, search_discoverable_registry_records_errors(), tuple()}.
search_discoverable_registry_records(Client, Input) ->
    search_discoverable_registry_records(Client, Input, []).

-spec search_discoverable_registry_records(aws_client:aws_client(), search_discoverable_registry_records_request(), proplists:proplist()) ->
    {ok, search_discoverable_registry_records_response(), tuple()} |
    {error, any()} |
    {error, search_discoverable_registry_records_errors(), tuple()}.
search_discoverable_registry_records(Client, Input0, Options0) ->
    Method = post,
    Path = ["/discoverable-records-search"],
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
    Client1 = Client#{service => <<"agent-registry">>},
    DefaultHost = build_host(<<"agent-registry">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_AGENT_REGISTRY">>),
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

