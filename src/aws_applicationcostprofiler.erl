%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This reference provides descriptions of the AWS Application Cost
%% Profiler API.
%%
%% The AWS Application Cost Profiler API provides programmatic access to
%% view, create, update, and delete
%% application cost report definitions, as well as to import your usage data
%% into the Application Cost Profiler
%% service.
%%
%% For more information about using this service, see the AWS Application
%% Cost
%% Profiler User Guide:
%% https://docs.aws.amazon.com/application-cost-profiler/latest/userguide/introduction.html.
-module(aws_applicationcostprofiler).

-export([delete_report_definition/3,
         delete_report_definition/4,
         get_report_definition/2,
         get_report_definition/4,
         get_report_definition/5,
         import_application_usage/2,
         import_application_usage/3,
         list_report_definitions/1,
         list_report_definitions/3,
         list_report_definitions/4,
         put_report_definition/2,
         put_report_definition/3,
         update_report_definition/3,
         update_report_definition/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% delete_report_definition_request() :: #{}
-type delete_report_definition_request() :: #{}.


%% Example:
%% delete_report_definition_result() :: #{
%%   <<"reportId">> => string()
%% }
-type delete_report_definition_result() :: #{binary() => any()}.

%% Example:
%% get_report_definition_request() :: #{}
-type get_report_definition_request() :: #{}.


%% Example:
%% get_report_definition_result() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"destinationS3Location">> => s3_location(),
%%   <<"format">> => list(any()),
%%   <<"lastUpdated">> => non_neg_integer(),
%%   <<"reportDescription">> => string(),
%%   <<"reportFrequency">> => list(any()),
%%   <<"reportId">> => string()
%% }
-type get_report_definition_result() :: #{binary() => any()}.


%% Example:
%% import_application_usage_request() :: #{
%%   <<"sourceS3Location">> := source_s3_location()
%% }
-type import_application_usage_request() :: #{binary() => any()}.


%% Example:
%% import_application_usage_result() :: #{
%%   <<"importId">> => string()
%% }
-type import_application_usage_result() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_report_definitions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_report_definitions_request() :: #{binary() => any()}.


%% Example:
%% list_report_definitions_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"reportDefinitions">> => list(report_definition())
%% }
-type list_report_definitions_result() :: #{binary() => any()}.


%% Example:
%% put_report_definition_request() :: #{
%%   <<"destinationS3Location">> := s3_location(),
%%   <<"format">> := list(any()),
%%   <<"reportDescription">> := string(),
%%   <<"reportFrequency">> := list(any()),
%%   <<"reportId">> := string()
%% }
-type put_report_definition_request() :: #{binary() => any()}.


%% Example:
%% put_report_definition_result() :: #{
%%   <<"reportId">> => string()
%% }
-type put_report_definition_result() :: #{binary() => any()}.


%% Example:
%% report_definition() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"destinationS3Location">> => s3_location(),
%%   <<"format">> => list(any()),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"reportDescription">> => string(),
%%   <<"reportFrequency">> => list(any()),
%%   <<"reportId">> => string()
%% }
-type report_definition() :: #{binary() => any()}.


%% Example:
%% s3_location() :: #{
%%   <<"bucket">> => string(),
%%   <<"prefix">> => string()
%% }
-type s3_location() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% source_s3_location() :: #{
%%   <<"bucket">> => string(),
%%   <<"key">> => string(),
%%   <<"region">> => list(any())
%% }
-type source_s3_location() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% update_report_definition_request() :: #{
%%   <<"destinationS3Location">> := s3_location(),
%%   <<"format">> := list(any()),
%%   <<"reportDescription">> := string(),
%%   <<"reportFrequency">> := list(any())
%% }
-type update_report_definition_request() :: #{binary() => any()}.


%% Example:
%% update_report_definition_result() :: #{
%%   <<"reportId">> => string()
%% }
-type update_report_definition_result() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

-type delete_report_definition_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_report_definition_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type import_application_usage_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_report_definitions_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type put_report_definition_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type update_report_definition_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes the specified report definition in AWS Application Cost
%% Profiler.
%%
%% This stops the report from being
%% generated.
-spec delete_report_definition(aws_client:aws_client(), binary() | list(), delete_report_definition_request()) ->
    {ok, delete_report_definition_result(), tuple()} |
    {error, any()} |
    {error, delete_report_definition_errors(), tuple()}.
delete_report_definition(Client, ReportId, Input) ->
    delete_report_definition(Client, ReportId, Input, []).

-spec delete_report_definition(aws_client:aws_client(), binary() | list(), delete_report_definition_request(), proplists:proplist()) ->
    {ok, delete_report_definition_result(), tuple()} |
    {error, any()} |
    {error, delete_report_definition_errors(), tuple()}.
delete_report_definition(Client, ReportId, Input0, Options0) ->
    Method = delete,
    Path = ["/reportDefinition/", aws_util:encode_uri(ReportId), ""],
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

%% @doc Retrieves the definition of a report already configured in AWS
%% Application Cost Profiler.
-spec get_report_definition(aws_client:aws_client(), binary() | list()) ->
    {ok, get_report_definition_result(), tuple()} |
    {error, any()} |
    {error, get_report_definition_errors(), tuple()}.
get_report_definition(Client, ReportId)
  when is_map(Client) ->
    get_report_definition(Client, ReportId, #{}, #{}).

-spec get_report_definition(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_report_definition_result(), tuple()} |
    {error, any()} |
    {error, get_report_definition_errors(), tuple()}.
get_report_definition(Client, ReportId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_report_definition(Client, ReportId, QueryMap, HeadersMap, []).

-spec get_report_definition(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_report_definition_result(), tuple()} |
    {error, any()} |
    {error, get_report_definition_errors(), tuple()}.
get_report_definition(Client, ReportId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/reportDefinition/", aws_util:encode_uri(ReportId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Ingests application usage data from Amazon Simple Storage Service
%% (Amazon S3).
%%
%% The data must already exist in the S3 location. As part of the action, AWS
%% Application Cost Profiler
%% copies the object from your S3 bucket to an S3 bucket owned by Amazon for
%% processing
%% asynchronously.
-spec import_application_usage(aws_client:aws_client(), import_application_usage_request()) ->
    {ok, import_application_usage_result(), tuple()} |
    {error, any()} |
    {error, import_application_usage_errors(), tuple()}.
import_application_usage(Client, Input) ->
    import_application_usage(Client, Input, []).

-spec import_application_usage(aws_client:aws_client(), import_application_usage_request(), proplists:proplist()) ->
    {ok, import_application_usage_result(), tuple()} |
    {error, any()} |
    {error, import_application_usage_errors(), tuple()}.
import_application_usage(Client, Input0, Options0) ->
    Method = post,
    Path = ["/importApplicationUsage"],
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

%% @doc Retrieves a list of all reports and their configurations for your AWS
%% account.
%%
%% The maximum number of reports is one.
-spec list_report_definitions(aws_client:aws_client()) ->
    {ok, list_report_definitions_result(), tuple()} |
    {error, any()} |
    {error, list_report_definitions_errors(), tuple()}.
list_report_definitions(Client)
  when is_map(Client) ->
    list_report_definitions(Client, #{}, #{}).

-spec list_report_definitions(aws_client:aws_client(), map(), map()) ->
    {ok, list_report_definitions_result(), tuple()} |
    {error, any()} |
    {error, list_report_definitions_errors(), tuple()}.
list_report_definitions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_report_definitions(Client, QueryMap, HeadersMap, []).

-spec list_report_definitions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_report_definitions_result(), tuple()} |
    {error, any()} |
    {error, list_report_definitions_errors(), tuple()}.
list_report_definitions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/reportDefinition"],
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

%% @doc Creates the report definition for a report in Application Cost
%% Profiler.
-spec put_report_definition(aws_client:aws_client(), put_report_definition_request()) ->
    {ok, put_report_definition_result(), tuple()} |
    {error, any()} |
    {error, put_report_definition_errors(), tuple()}.
put_report_definition(Client, Input) ->
    put_report_definition(Client, Input, []).

-spec put_report_definition(aws_client:aws_client(), put_report_definition_request(), proplists:proplist()) ->
    {ok, put_report_definition_result(), tuple()} |
    {error, any()} |
    {error, put_report_definition_errors(), tuple()}.
put_report_definition(Client, Input0, Options0) ->
    Method = post,
    Path = ["/reportDefinition"],
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

%% @doc Updates existing report in AWS Application Cost Profiler.
-spec update_report_definition(aws_client:aws_client(), binary() | list(), update_report_definition_request()) ->
    {ok, update_report_definition_result(), tuple()} |
    {error, any()} |
    {error, update_report_definition_errors(), tuple()}.
update_report_definition(Client, ReportId, Input) ->
    update_report_definition(Client, ReportId, Input, []).

-spec update_report_definition(aws_client:aws_client(), binary() | list(), update_report_definition_request(), proplists:proplist()) ->
    {ok, update_report_definition_result(), tuple()} |
    {error, any()} |
    {error, update_report_definition_errors(), tuple()}.
update_report_definition(Client, ReportId, Input0, Options0) ->
    Method = put,
    Path = ["/reportDefinition/", aws_util:encode_uri(ReportId), ""],
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
    Client1 = Client#{service => <<"application-cost-profiler">>},
    Host = build_host(<<"application-cost-profiler">>, Client1),
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
