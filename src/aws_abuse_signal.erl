%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Abuse Signal
%%
%% Amazon Web Services Abuse Signal API provides programmatic means to report
%% suspected abuse of Amazon Web Services resources.
%%
%% You can use the API to submit abuse reports about Amazon Web Services
%% resources and to track the status of your reports. Amazon Web Services
%% Trust &amp; Safety uses the information that you provide to investigate
%% and try to resolve the incident that you reported.
%%
%% You submit reports in the eXtended Abuse Reporting Format (XARF), an open
%% standard for structured abuse reporting. For more information, see XARF on
%% the XARF website: https://xarf.org/docs/introduction/. Reports can cover a
%% wide range of abuse categories, including spam, phishing, distributed
%% denial of service (DDoS), malware distribution, and copyright
%% infringement.
%%
%% With the Amazon Web Services Abuse Signal API, you can:
%%
%% Submit abuse reports – Create structured abuse reports by using the XARF
%% format, with full support for all XARF v4 report types.
%%
%% Track report status – Monitor the processing status of submitted reports,
%% from submission through resolution.
%%
%% List and filter reports – Retrieve the status of all reports, with
%% optional filtering by correlation ID.
%%
%% Retry submissions safely – Safely retry report submissions without
%% creating duplicates by using client tokens.
%%
%% Cross-Region data residency: By submitting a report, you instruct Amazon
%% Web Services to store it in all supported Regions (`us-east-1',
%% `us-west-2', and `eu-west-2'), including across the United States
%% and Europe. If data must remain in a single Region, do not include it in
%% the report.
-module(aws_abuse_signal).

-export([create_abuse_report/2,
         create_abuse_report/3,
         get_abuse_report_status/2,
         get_abuse_report_status/4,
         get_abuse_report_status/5,
         list_abuse_report_statuses/1,
         list_abuse_report_statuses/3,
         list_abuse_report_statuses/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%% hackney:body/1 is only called with hackney versions that still export it.
-ignore_xref([{hackney, body, 1}]).



%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% create_abuse_report_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"correlationId">> => string(),
%%   <<"report">> := list()
%% }
-type create_abuse_report_request() :: #{binary() => any()}.


%% Example:
%% create_abuse_report_response() :: #{
%%   <<"correlationId">> => string(),
%%   <<"reportId">> => string()
%% }
-type create_abuse_report_response() :: #{binary() => any()}.

%% Example:
%% get_abuse_report_status_request() :: #{}
-type get_abuse_report_status_request() :: #{}.


%% Example:
%% get_abuse_report_status_response() :: #{
%%   <<"correlationId">> => string(),
%%   <<"description">> => [string()],
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"reasonCode">> => list(any()),
%%   <<"reportId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"submittedAt">> => [non_neg_integer()]
%% }
-type get_abuse_report_status_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_abuse_report_statuses_request() :: #{
%%   <<"correlationId">> => string(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_abuse_report_statuses_request() :: #{binary() => any()}.


%% Example:
%% list_abuse_report_statuses_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"reports">> => list(report_status_list_item())
%% }
-type list_abuse_report_statuses_response() :: #{binary() => any()}.


%% Example:
%% report_status_list_item() :: #{
%%   <<"correlationId">> => string(),
%%   <<"description">> => [string()],
%%   <<"reasonCode">> => list(any()),
%%   <<"reportId">> => string(),
%%   <<"status">> => list(any())
%% }
-type report_status_list_item() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% submission_requirement() :: #{
%%   <<"code">> => [string()],
%%   <<"message">> => [string()],
%%   <<"path">> => [string()]
%% }
-type submission_requirement() :: #{binary() => any()}.


%% Example:
%% submission_requirement_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"unmetRequirements">> => list(submission_requirement())
%% }
-type submission_requirement_exception() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


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

-type create_abuse_report_errors() ::
    submission_requirement_exception() | 
    conflict_exception().

-type get_abuse_report_status_errors() ::
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Submits a structured report.
%%
%% Amazon Web Services validates it and returns a report ID. A successful
%% response confirms that Amazon Web Services received your report. It
%% doesn't mean that Amazon Web Services has reached an outcome. Use
%% `GetAbuseReportStatus' with the report ID to check the report's
%% status and outcome.
%%
%% This operation is idempotent within a time window. If you provide a
%% `clientToken', duplicate requests within 24 hours return the existing
%% report ID. If you omit it, the service generates a token scoped to 5
%% minutes.
%%
%% Cross-Region data residency: By submitting a report, you instruct Amazon
%% Web Services to store it in all supported Regions (`us-east-1',
%% `us-west-2', and `eu-west-2'), including across the United States
%% and Europe. If data must remain in a single Region, do not include it in
%% the report.
-spec create_abuse_report(aws_client:aws_client(), create_abuse_report_request()) ->
    {ok, create_abuse_report_response(), tuple()} |
    {error, any()} |
    {error, create_abuse_report_errors(), tuple()}.
create_abuse_report(Client, Input) ->
    create_abuse_report(Client, Input, []).

-spec create_abuse_report(aws_client:aws_client(), create_abuse_report_request(), proplists:proplist()) ->
    {ok, create_abuse_report_response(), tuple()} |
    {error, any()} |
    {error, create_abuse_report_errors(), tuple()}.
create_abuse_report(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/abuse"],
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

%% @doc Retrieves the current processing status of a previously submitted
%% abuse report, including the status, submission timestamp, and last-update
%% time.
%%
%% You can poll this operation to track the report's status.
%% `PROCESSING' confirms that Amazon Web Services received your report
%% and is processing it. `COMPLETED' means Amazon Web Services finished
%% resolving the report, and the response includes a `reasonCode'. The
%% time to reach `COMPLETED' may vary and can take up to several days
%% depending on the scope and complexity of the suspected abuse.
%%
%% `COMPLETED' is the only terminal status. To wait for a report, use the
%% `ReportProcessing' waiter, which succeeds when the report reaches
%% `PROCESSING' or `COMPLETED'. If you poll this operation yourself,
%% wait 1–5 seconds between calls.
-spec get_abuse_report_status(aws_client:aws_client(), binary() | list()) ->
    {ok, get_abuse_report_status_response(), tuple()} |
    {error, any()} |
    {error, get_abuse_report_status_errors(), tuple()}.
get_abuse_report_status(Client, ReportId)
  when is_map(Client) ->
    get_abuse_report_status(Client, ReportId, #{}, #{}).

-spec get_abuse_report_status(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_abuse_report_status_response(), tuple()} |
    {error, any()} |
    {error, get_abuse_report_status_errors(), tuple()}.
get_abuse_report_status(Client, ReportId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_abuse_report_status(Client, ReportId, QueryMap, HeadersMap, []).

-spec get_abuse_report_status(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_abuse_report_status_response(), tuple()} |
    {error, any()} |
    {error, get_abuse_report_status_errors(), tuple()}.
get_abuse_report_status(Client, ReportId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/abuse/", aws_util:encode_uri(ReportId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists abuse report statuses for the calling account, ordered by
%% submission time, with optional filtering and pagination.
%%
%% Use the `correlationId' parameter to filter results by the
%% reporter-provided correlation ID that was specified during report
%% submission.
%%
%% Results are paginated. Use `nextToken' to retrieve additional results.
-spec list_abuse_report_statuses(aws_client:aws_client()) ->
    {ok, list_abuse_report_statuses_response(), tuple()} |
    {error, any()}.
list_abuse_report_statuses(Client)
  when is_map(Client) ->
    list_abuse_report_statuses(Client, #{}, #{}).

-spec list_abuse_report_statuses(aws_client:aws_client(), map(), map()) ->
    {ok, list_abuse_report_statuses_response(), tuple()} |
    {error, any()}.
list_abuse_report_statuses(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_abuse_report_statuses(Client, QueryMap, HeadersMap, []).

-spec list_abuse_report_statuses(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_abuse_report_statuses_response(), tuple()} |
    {error, any()}.
list_abuse_report_statuses(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/abusestatuses"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"correlationId">>, maps:get(<<"correlationId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
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
    {ok, Result, {integer(), list(), term()}} |
    {error, Error, {integer(), list(), term()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"abuse">>},
    DefaultHost = build_host(<<"abuse">>, Client1),
    URL0 = build_url(DefaultHost, Path, Client1),
    PathBin = erlang:iolist_to_binary(Path),
    {URL1, Host} = aws_util:apply_endpoint_url_override(URL0, DefaultHost, PathBin, <<"AWS_ENDPOINT_URL_ABUSE_SIGNAL">>),
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

