%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The AWS Sustainability service provides programmatic access to
%% estimated carbon emissions data for your Amazon Web Services usage.
%%
%% Use the AWS Sustainability service to retrieve, analyze, and track the
%% carbon footprint of your cloud infrastructure over time.
%%
%% With the AWS Sustainability service, you can:
%%
%% Retrieve estimated carbon emissions for your Amazon Web Services usage
%% across different time periods
%%
%% Group emissions data by dimensions such as account, region, and service
%%
%% Filter emissions data to focus on specific accounts, regions, or services
%%
%% Access multiple emissions calculation methodologies including
%% Location-based Method (LBM) and Market-based Method (MBM)
%%
%% Aggregate emissions data at various time granularities including monthly,
%% quarterly, and yearly periods
%%
%% The API supports pagination for efficient data retrieval and provides
%% dimension values to help you understand the available grouping and
%% filtering options for your account.
%%
%% All emissions values are calculated using methodologies aligned with the
%% Greenhouse Gas (GHG) Protocol and are provided in metric tons of carbon
%% dioxide-equivalent (MTCO2e).
-module(aws_sustainability).

-export([get_estimated_carbon_emissions/2,
         get_estimated_carbon_emissions/3,
         get_estimated_carbon_emissions_dimension_values/2,
         get_estimated_carbon_emissions_dimension_values/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% dimension_entry() :: #{
%%   <<"Dimension">> => list(any()),
%%   <<"Value">> => [string()]
%% }
-type dimension_entry() :: #{binary() => any()}.


%% Example:
%% emissions() :: #{
%%   <<"Unit">> => list(any()),
%%   <<"Value">> => [float()]
%% }
-type emissions() :: #{binary() => any()}.


%% Example:
%% estimated_carbon_emissions() :: #{
%%   <<"DimensionsValues">> => map(),
%%   <<"EmissionsValues">> => map(),
%%   <<"ModelVersion">> => string(),
%%   <<"TimePeriod">> => time_period()
%% }
-type estimated_carbon_emissions() :: #{binary() => any()}.


%% Example:
%% filter_expression() :: #{
%%   <<"Dimensions">> => map()
%% }
-type filter_expression() :: #{binary() => any()}.


%% Example:
%% get_estimated_carbon_emissions_dimension_values_request() :: #{
%%   <<"Dimensions">> := list(list(any())()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TimePeriod">> := time_period()
%% }
-type get_estimated_carbon_emissions_dimension_values_request() :: #{binary() => any()}.


%% Example:
%% get_estimated_carbon_emissions_dimension_values_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Results">> => list(dimension_entry())
%% }
-type get_estimated_carbon_emissions_dimension_values_response() :: #{binary() => any()}.


%% Example:
%% get_estimated_carbon_emissions_request() :: #{
%%   <<"EmissionsTypes">> => list(list(any())()),
%%   <<"FilterBy">> => filter_expression(),
%%   <<"Granularity">> => list(any()),
%%   <<"GranularityConfiguration">> => granularity_configuration(),
%%   <<"GroupBy">> => list(list(any())()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TimePeriod">> := time_period()
%% }
-type get_estimated_carbon_emissions_request() :: #{binary() => any()}.


%% Example:
%% get_estimated_carbon_emissions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Results">> => list(estimated_carbon_emissions())
%% }
-type get_estimated_carbon_emissions_response() :: #{binary() => any()}.


%% Example:
%% granularity_configuration() :: #{
%%   <<"FiscalYearStartMonth">> => integer()
%% }
-type granularity_configuration() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% time_period() :: #{
%%   <<"End">> => non_neg_integer(),
%%   <<"Start">> => non_neg_integer()
%% }
-type time_period() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

-type get_estimated_carbon_emissions_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_estimated_carbon_emissions_dimension_values_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Returns estimated carbon emission values based on customer grouping
%% and filtering parameters.
%%
%% We recommend using pagination to ensure that the operation returns quickly
%% and successfully.
-spec get_estimated_carbon_emissions(aws_client:aws_client(), get_estimated_carbon_emissions_request()) ->
    {ok, get_estimated_carbon_emissions_response(), tuple()} |
    {error, any()} |
    {error, get_estimated_carbon_emissions_errors(), tuple()}.
get_estimated_carbon_emissions(Client, Input) ->
    get_estimated_carbon_emissions(Client, Input, []).

-spec get_estimated_carbon_emissions(aws_client:aws_client(), get_estimated_carbon_emissions_request(), proplists:proplist()) ->
    {ok, get_estimated_carbon_emissions_response(), tuple()} |
    {error, any()} |
    {error, get_estimated_carbon_emissions_errors(), tuple()}.
get_estimated_carbon_emissions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/estimated-carbon-emissions"],
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

%% @doc Returns the possible dimension values available for a customer's
%% account.
%%
%% We recommend using pagination to ensure that the operation returns quickly
%% and successfully.
-spec get_estimated_carbon_emissions_dimension_values(aws_client:aws_client(), get_estimated_carbon_emissions_dimension_values_request()) ->
    {ok, get_estimated_carbon_emissions_dimension_values_response(), tuple()} |
    {error, any()} |
    {error, get_estimated_carbon_emissions_dimension_values_errors(), tuple()}.
get_estimated_carbon_emissions_dimension_values(Client, Input) ->
    get_estimated_carbon_emissions_dimension_values(Client, Input, []).

-spec get_estimated_carbon_emissions_dimension_values(aws_client:aws_client(), get_estimated_carbon_emissions_dimension_values_request(), proplists:proplist()) ->
    {ok, get_estimated_carbon_emissions_dimension_values_response(), tuple()} |
    {error, any()} |
    {error, get_estimated_carbon_emissions_dimension_values_errors(), tuple()}.
get_estimated_carbon_emissions_dimension_values(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/estimated-carbon-emissions-dimension-values"],
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
    Client1 = Client#{service => <<"sustainability">>},
    Host = build_host(<<"sustainability">>, Client1),
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
