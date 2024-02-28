%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services IoT Core Device Advisor is a cloud-based, fully
%% managed test capability for validating IoT devices during device software
%% development.
%%
%% Device Advisor provides pre-built tests that you can use to validate IoT
%% devices for reliable and secure connectivity with Amazon Web Services IoT
%% Core before deploying devices to production. By using Device Advisor, you
%% can confirm that your devices can connect to Amazon Web Services IoT Core,
%% follow security best practices and, if applicable, receive software
%% updates from IoT Device Management. You can also download signed
%% qualification reports to submit to the Amazon Web Services Partner Network
%% to get your device qualified for the Amazon Web Services Partner Device
%% Catalog without the need to send your device in and wait for it to be
%% tested.
-module(aws_iotdeviceadvisor).

-export([create_suite_definition/2,
         create_suite_definition/3,
         delete_suite_definition/3,
         delete_suite_definition/4,
         get_endpoint/1,
         get_endpoint/3,
         get_endpoint/4,
         get_suite_definition/2,
         get_suite_definition/4,
         get_suite_definition/5,
         get_suite_run/3,
         get_suite_run/5,
         get_suite_run/6,
         get_suite_run_report/3,
         get_suite_run_report/5,
         get_suite_run_report/6,
         list_suite_definitions/1,
         list_suite_definitions/3,
         list_suite_definitions/4,
         list_suite_runs/1,
         list_suite_runs/3,
         list_suite_runs/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_suite_run/3,
         start_suite_run/4,
         stop_suite_run/4,
         stop_suite_run/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_suite_definition/3,
         update_suite_definition/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a Device Advisor test suite.
%%
%% Requires permission to access the CreateSuiteDefinition:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
create_suite_definition(Client, Input) ->
    create_suite_definition(Client, Input, []).
create_suite_definition(Client, Input0, Options0) ->
    Method = post,
    Path = ["/suiteDefinitions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Device Advisor test suite.
%%
%% Requires permission to access the DeleteSuiteDefinition:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
delete_suite_definition(Client, SuiteDefinitionId, Input) ->
    delete_suite_definition(Client, SuiteDefinitionId, Input, []).
delete_suite_definition(Client, SuiteDefinitionId, Input0, Options0) ->
    Method = delete,
    Path = ["/suiteDefinitions/", aws_util:encode_uri(SuiteDefinitionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about an Device Advisor endpoint.
get_endpoint(Client)
  when is_map(Client) ->
    get_endpoint(Client, #{}, #{}).

get_endpoint(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_endpoint(Client, QueryMap, HeadersMap, []).

get_endpoint(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/endpoint"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"authenticationMethod">>, maps:get(<<"authenticationMethod">>, QueryMap, undefined)},
        {<<"certificateArn">>, maps:get(<<"certificateArn">>, QueryMap, undefined)},
        {<<"deviceRoleArn">>, maps:get(<<"deviceRoleArn">>, QueryMap, undefined)},
        {<<"thingArn">>, maps:get(<<"thingArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a Device Advisor test suite.
%%
%% Requires permission to access the GetSuiteDefinition:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
get_suite_definition(Client, SuiteDefinitionId)
  when is_map(Client) ->
    get_suite_definition(Client, SuiteDefinitionId, #{}, #{}).

get_suite_definition(Client, SuiteDefinitionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_suite_definition(Client, SuiteDefinitionId, QueryMap, HeadersMap, []).

get_suite_definition(Client, SuiteDefinitionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/suiteDefinitions/", aws_util:encode_uri(SuiteDefinitionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"suiteDefinitionVersion">>, maps:get(<<"suiteDefinitionVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a Device Advisor test suite run.
%%
%% Requires permission to access the GetSuiteRun:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
get_suite_run(Client, SuiteDefinitionId, SuiteRunId)
  when is_map(Client) ->
    get_suite_run(Client, SuiteDefinitionId, SuiteRunId, #{}, #{}).

get_suite_run(Client, SuiteDefinitionId, SuiteRunId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_suite_run(Client, SuiteDefinitionId, SuiteRunId, QueryMap, HeadersMap, []).

get_suite_run(Client, SuiteDefinitionId, SuiteRunId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/suiteDefinitions/", aws_util:encode_uri(SuiteDefinitionId), "/suiteRuns/", aws_util:encode_uri(SuiteRunId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a report download link for a successful Device Advisor
%% qualifying test suite run.
%%
%% Requires permission to access the GetSuiteRunReport:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
get_suite_run_report(Client, SuiteDefinitionId, SuiteRunId)
  when is_map(Client) ->
    get_suite_run_report(Client, SuiteDefinitionId, SuiteRunId, #{}, #{}).

get_suite_run_report(Client, SuiteDefinitionId, SuiteRunId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_suite_run_report(Client, SuiteDefinitionId, SuiteRunId, QueryMap, HeadersMap, []).

get_suite_run_report(Client, SuiteDefinitionId, SuiteRunId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/suiteDefinitions/", aws_util:encode_uri(SuiteDefinitionId), "/suiteRuns/", aws_util:encode_uri(SuiteRunId), "/report"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Device Advisor test suites you have created.
%%
%% Requires permission to access the ListSuiteDefinitions:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
list_suite_definitions(Client)
  when is_map(Client) ->
    list_suite_definitions(Client, #{}, #{}).

list_suite_definitions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_suite_definitions(Client, QueryMap, HeadersMap, []).

list_suite_definitions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/suiteDefinitions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists runs of the specified Device Advisor test suite.
%%
%% You can list all runs of the test suite, or the runs of a specific version
%% of the test suite.
%%
%% Requires permission to access the ListSuiteRuns:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
list_suite_runs(Client)
  when is_map(Client) ->
    list_suite_runs(Client, #{}, #{}).

list_suite_runs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_suite_runs(Client, QueryMap, HeadersMap, []).

list_suite_runs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/suiteRuns"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"suiteDefinitionId">>, maps:get(<<"suiteDefinitionId">>, QueryMap, undefined)},
        {<<"suiteDefinitionVersion">>, maps:get(<<"suiteDefinitionVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags attached to an IoT Device Advisor resource.
%%
%% Requires permission to access the ListTagsForResource:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts a Device Advisor test suite run.
%%
%% Requires permission to access the StartSuiteRun:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
start_suite_run(Client, SuiteDefinitionId, Input) ->
    start_suite_run(Client, SuiteDefinitionId, Input, []).
start_suite_run(Client, SuiteDefinitionId, Input0, Options0) ->
    Method = post,
    Path = ["/suiteDefinitions/", aws_util:encode_uri(SuiteDefinitionId), "/suiteRuns"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stops a Device Advisor test suite run that is currently running.
%%
%% Requires permission to access the StopSuiteRun:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
stop_suite_run(Client, SuiteDefinitionId, SuiteRunId, Input) ->
    stop_suite_run(Client, SuiteDefinitionId, SuiteRunId, Input, []).
stop_suite_run(Client, SuiteDefinitionId, SuiteRunId, Input0, Options0) ->
    Method = post,
    Path = ["/suiteDefinitions/", aws_util:encode_uri(SuiteDefinitionId), "/suiteRuns/", aws_util:encode_uri(SuiteRunId), "/stop"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds to and modifies existing tags of an IoT Device Advisor resource.
%%
%% Requires permission to access the TagResource:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from an IoT Device Advisor resource.
%%
%% Requires permission to access the UntagResource:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a Device Advisor test suite.
%%
%% Requires permission to access the UpdateSuiteDefinition:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
update_suite_definition(Client, SuiteDefinitionId, Input) ->
    update_suite_definition(Client, SuiteDefinitionId, Input, []).
update_suite_definition(Client, SuiteDefinitionId, Input0, Options0) ->
    Method = patch,
    Path = ["/suiteDefinitions/", aws_util:encode_uri(SuiteDefinitionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
    Client1 = Client#{service => <<"iotdeviceadvisor">>},
    Host = build_host(<<"api.iotdeviceadvisor">>, Client1),
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
