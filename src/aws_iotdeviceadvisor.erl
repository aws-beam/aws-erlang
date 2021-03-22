%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS IoT Core Device Advisor is a cloud-based, fully managed test
%% capability for validating IoT devices during device software development.
%%
%% Device Advisor provides pre-built tests that you can use to validate IoT
%% devices for reliable and secure connectivity with AWS IoT Core before
%% deploying devices to production. By using Device Advisor, you can confirm
%% that your devices can connect to AWS IoT Core, follow security best
%% practices and, if applicable, receive software updates from IoT Device
%% Management. You can also download signed qualification reports to submit
%% to the AWS Partner Network to get your device qualified for the AWS
%% Partner Device Catalog without the need to send your device in and wait
%% for it to be tested.
-module(aws_iotdeviceadvisor).

-export([create_suite_definition/2,
         create_suite_definition/3,
         delete_suite_definition/3,
         delete_suite_definition/4,
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
         list_test_cases/1,
         list_test_cases/3,
         list_test_cases/4,
         start_suite_run/3,
         start_suite_run/4,
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
create_suite_definition(Client, Input) ->
    create_suite_definition(Client, Input, []).
create_suite_definition(Client, Input0, Options) ->
    Method = post,
    Path = ["/suiteDefinitions"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Device Advisor test suite.
delete_suite_definition(Client, SuiteDefinitionId, Input) ->
    delete_suite_definition(Client, SuiteDefinitionId, Input, []).
delete_suite_definition(Client, SuiteDefinitionId, Input0, Options) ->
    Method = delete,
    Path = ["/suiteDefinitions/", aws_util:encode_uri(SuiteDefinitionId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets information about a Device Advisor test suite.
get_suite_definition(Client, SuiteDefinitionId)
  when is_map(Client) ->
    get_suite_definition(Client, SuiteDefinitionId, #{}, #{}).

get_suite_definition(Client, SuiteDefinitionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_suite_definition(Client, SuiteDefinitionId, QueryMap, HeadersMap, []).

get_suite_definition(Client, SuiteDefinitionId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/suiteDefinitions/", aws_util:encode_uri(SuiteDefinitionId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"suiteDefinitionVersion">>, maps:get(<<"suiteDefinitionVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a Device Advisor test suite run.
get_suite_run(Client, SuiteDefinitionId, SuiteRunId)
  when is_map(Client) ->
    get_suite_run(Client, SuiteDefinitionId, SuiteRunId, #{}, #{}).

get_suite_run(Client, SuiteDefinitionId, SuiteRunId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_suite_run(Client, SuiteDefinitionId, SuiteRunId, QueryMap, HeadersMap, []).

get_suite_run(Client, SuiteDefinitionId, SuiteRunId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/suiteDefinitions/", aws_util:encode_uri(SuiteDefinitionId), "/suiteRuns/", aws_util:encode_uri(SuiteRunId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a report download link for a successful Device Advisor
%% qualifying test suite run.
get_suite_run_report(Client, SuiteDefinitionId, SuiteRunId)
  when is_map(Client) ->
    get_suite_run_report(Client, SuiteDefinitionId, SuiteRunId, #{}, #{}).

get_suite_run_report(Client, SuiteDefinitionId, SuiteRunId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_suite_run_report(Client, SuiteDefinitionId, SuiteRunId, QueryMap, HeadersMap, []).

get_suite_run_report(Client, SuiteDefinitionId, SuiteRunId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/suiteDefinitions/", aws_util:encode_uri(SuiteDefinitionId), "/suiteRuns/", aws_util:encode_uri(SuiteRunId), "/report"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Device Advisor test suites you have created.
list_suite_definitions(Client)
  when is_map(Client) ->
    list_suite_definitions(Client, #{}, #{}).

list_suite_definitions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_suite_definitions(Client, QueryMap, HeadersMap, []).

list_suite_definitions(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/suiteDefinitions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the runs of the specified Device Advisor test suite.
%%
%% You can list all runs of the test suite, or the runs of a specific version
%% of the test suite.
list_suite_runs(Client)
  when is_map(Client) ->
    list_suite_runs(Client, #{}, #{}).

list_suite_runs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_suite_runs(Client, QueryMap, HeadersMap, []).

list_suite_runs(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/suiteRuns"],
    SuccessStatusCode = undefined,

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
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the test cases in the test suite.
list_test_cases(Client)
  when is_map(Client) ->
    list_test_cases(Client, #{}, #{}).

list_test_cases(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_test_cases(Client, QueryMap, HeadersMap, []).

list_test_cases(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/testCases"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"intendedForQualification">>, maps:get(<<"intendedForQualification">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts a Device Advisor test suite run.
start_suite_run(Client, SuiteDefinitionId, Input) ->
    start_suite_run(Client, SuiteDefinitionId, Input, []).
start_suite_run(Client, SuiteDefinitionId, Input0, Options) ->
    Method = post,
    Path = ["/suiteDefinitions/", aws_util:encode_uri(SuiteDefinitionId), "/suiteRuns"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds to and modifies existing tags of an IoT Device Advisor resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from an IoT Device Advisor resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a Device Advisor test suite.
update_suite_definition(Client, SuiteDefinitionId, Input) ->
    update_suite_definition(Client, SuiteDefinitionId, Input, []).
update_suite_definition(Client, SuiteDefinitionId, Input0, Options) ->
    Method = patch,
    Path = ["/suiteDefinitions/", aws_util:encode_uri(SuiteDefinitionId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"iotdeviceadvisor">>},
    Host = build_host(<<"api.iotdeviceadvisor">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(should_send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        undefined ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
