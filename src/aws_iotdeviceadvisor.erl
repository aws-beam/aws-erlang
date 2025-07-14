%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services IoT Core Device Advisor is a cloud-based, fully
%% managed test capability for validating IoT
%% devices during device software development.
%%
%% Device Advisor provides pre-built tests that you
%% can use to validate IoT devices for reliable and secure connectivity with
%% Amazon Web Services IoT Core
%% before deploying devices to production. By using Device Advisor, you can
%% confirm that your
%% devices can connect to Amazon Web Services IoT Core, follow security best
%% practices and, if applicable,
%% receive software updates from IoT Device Management. You can also download
%% signed
%% qualification reports to submit to the Amazon Web Services Partner Network
%% to get your device
%% qualified for the Amazon Web Services Partner Device Catalog without the
%% need to send your device in
%% and wait for it to be tested.
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



%% Example:
%% list_suite_definitions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"suiteDefinitionInformationList">> => list(suite_definition_information())
%% }
-type list_suite_definitions_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_suite_run_request() :: #{}
-type get_suite_run_request() :: #{}.


%% Example:
%% start_suite_run_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"endpoint">> => string(),
%%   <<"suiteRunArn">> => string(),
%%   <<"suiteRunId">> => string()
%% }
-type start_suite_run_response() :: #{binary() => any()}.


%% Example:
%% suite_run_configuration() :: #{
%%   <<"parallelRun">> => boolean(),
%%   <<"primaryDevice">> => device_under_test(),
%%   <<"selectedTestList">> => list(string())
%% }
-type suite_run_configuration() :: #{binary() => any()}.


%% Example:
%% suite_definition_information() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"defaultDevices">> => list(device_under_test()),
%%   <<"intendedForQualification">> => boolean(),
%%   <<"isLongDurationTest">> => boolean(),
%%   <<"protocol">> => list(any()),
%%   <<"suiteDefinitionId">> => string(),
%%   <<"suiteDefinitionName">> => string()
%% }
-type suite_definition_information() :: #{binary() => any()}.


%% Example:
%% create_suite_definition_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"suiteDefinitionArn">> => string(),
%%   <<"suiteDefinitionId">> => string(),
%%   <<"suiteDefinitionName">> => string()
%% }
-type create_suite_definition_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% test_result() :: #{
%%   <<"groups">> => list(group_result())
%% }
-type test_result() :: #{binary() => any()}.


%% Example:
%% suite_run_information() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"endAt">> => non_neg_integer(),
%%   <<"failed">> => integer(),
%%   <<"passed">> => integer(),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"suiteDefinitionId">> => string(),
%%   <<"suiteDefinitionName">> => string(),
%%   <<"suiteDefinitionVersion">> => string(),
%%   <<"suiteRunId">> => string()
%% }
-type suite_run_information() :: #{binary() => any()}.


%% Example:
%% device_under_test() :: #{
%%   <<"certificateArn">> => string(),
%%   <<"deviceRoleArn">> => string(),
%%   <<"thingArn">> => string()
%% }
-type device_under_test() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% stop_suite_run_response() :: #{}
-type stop_suite_run_response() :: #{}.


%% Example:
%% get_suite_run_report_response() :: #{
%%   <<"qualificationReportDownloadUrl">> => string()
%% }
-type get_suite_run_report_response() :: #{binary() => any()}.


%% Example:
%% list_suite_definitions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_suite_definitions_request() :: #{binary() => any()}.

%% Example:
%% get_suite_run_report_request() :: #{}
-type get_suite_run_report_request() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% get_endpoint_response() :: #{
%%   <<"endpoint">> => string()
%% }
-type get_endpoint_response() :: #{binary() => any()}.


%% Example:
%% get_suite_run_response() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"errorReason">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"suiteDefinitionId">> => string(),
%%   <<"suiteDefinitionVersion">> => string(),
%%   <<"suiteRunArn">> => string(),
%%   <<"suiteRunConfiguration">> => suite_run_configuration(),
%%   <<"suiteRunId">> => string(),
%%   <<"tags">> => map(),
%%   <<"testResult">> => test_result()
%% }
-type get_suite_run_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% create_suite_definition_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"suiteDefinitionConfiguration">> := suite_definition_configuration(),
%%   <<"tags">> => map()
%% }
-type create_suite_definition_request() :: #{binary() => any()}.

%% Example:
%% stop_suite_run_request() :: #{}
-type stop_suite_run_request() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% get_suite_definition_request() :: #{
%%   <<"suiteDefinitionVersion">> => string()
%% }
-type get_suite_definition_request() :: #{binary() => any()}.


%% Example:
%% list_suite_runs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"suiteDefinitionId">> => string(),
%%   <<"suiteDefinitionVersion">> => string()
%% }
-type list_suite_runs_request() :: #{binary() => any()}.

%% Example:
%% delete_suite_definition_request() :: #{}
-type delete_suite_definition_request() :: #{}.


%% Example:
%% suite_definition_configuration() :: #{
%%   <<"devicePermissionRoleArn">> => string(),
%%   <<"devices">> => list(device_under_test()),
%%   <<"intendedForQualification">> => boolean(),
%%   <<"isLongDurationTest">> => boolean(),
%%   <<"protocol">> => list(any()),
%%   <<"rootGroup">> => string(),
%%   <<"suiteDefinitionName">> => string()
%% }
-type suite_definition_configuration() :: #{binary() => any()}.


%% Example:
%% test_case_scenario() :: #{
%%   <<"failure">> => string(),
%%   <<"status">> => list(any()),
%%   <<"systemMessage">> => string(),
%%   <<"testCaseScenarioId">> => string(),
%%   <<"testCaseScenarioType">> => list(any())
%% }
-type test_case_scenario() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.

%% Example:
%% delete_suite_definition_response() :: #{}
-type delete_suite_definition_response() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% update_suite_definition_request() :: #{
%%   <<"suiteDefinitionConfiguration">> := suite_definition_configuration()
%% }
-type update_suite_definition_request() :: #{binary() => any()}.


%% Example:
%% get_suite_definition_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"lastModifiedAt">> => non_neg_integer(),
%%   <<"latestVersion">> => string(),
%%   <<"suiteDefinitionArn">> => string(),
%%   <<"suiteDefinitionConfiguration">> => suite_definition_configuration(),
%%   <<"suiteDefinitionId">> => string(),
%%   <<"suiteDefinitionVersion">> => string(),
%%   <<"tags">> => map()
%% }
-type get_suite_definition_response() :: #{binary() => any()}.


%% Example:
%% list_suite_runs_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"suiteRunsList">> => list(suite_run_information())
%% }
-type list_suite_runs_response() :: #{binary() => any()}.


%% Example:
%% group_result() :: #{
%%   <<"groupId">> => string(),
%%   <<"groupName">> => string(),
%%   <<"tests">> => list(test_case_run())
%% }
-type group_result() :: #{binary() => any()}.


%% Example:
%% start_suite_run_request() :: #{
%%   <<"suiteDefinitionVersion">> => string(),
%%   <<"suiteRunConfiguration">> := suite_run_configuration(),
%%   <<"tags">> => map()
%% }
-type start_suite_run_request() :: #{binary() => any()}.


%% Example:
%% test_case_run() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"failure">> => string(),
%%   <<"logUrl">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"testCaseDefinitionId">> => string(),
%%   <<"testCaseDefinitionName">> => string(),
%%   <<"testCaseRunId">> => string(),
%%   <<"testScenarios">> => list(test_case_scenario()),
%%   <<"warnings">> => string()
%% }
-type test_case_run() :: #{binary() => any()}.


%% Example:
%% get_endpoint_request() :: #{
%%   <<"authenticationMethod">> => list(any()),
%%   <<"certificateArn">> => string(),
%%   <<"deviceRoleArn">> => string(),
%%   <<"thingArn">> => string()
%% }
-type get_endpoint_request() :: #{binary() => any()}.


%% Example:
%% update_suite_definition_response() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"lastUpdatedAt">> => non_neg_integer(),
%%   <<"suiteDefinitionArn">> => string(),
%%   <<"suiteDefinitionId">> => string(),
%%   <<"suiteDefinitionName">> => string(),
%%   <<"suiteDefinitionVersion">> => string()
%% }
-type update_suite_definition_response() :: #{binary() => any()}.

-type create_suite_definition_errors() ::
    validation_exception() | 
    internal_server_exception().

-type delete_suite_definition_errors() ::
    validation_exception() | 
    internal_server_exception().

-type get_endpoint_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_suite_definition_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_suite_run_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_suite_run_report_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_suite_definitions_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_suite_runs_errors() ::
    validation_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_suite_run_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type stop_suite_run_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_suite_definition_errors() ::
    validation_exception() | 
    internal_server_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a Device Advisor test suite.
%%
%% Requires permission to access the CreateSuiteDefinition:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec create_suite_definition(aws_client:aws_client(), create_suite_definition_request()) ->
    {ok, create_suite_definition_response(), tuple()} |
    {error, any()} |
    {error, create_suite_definition_errors(), tuple()}.
create_suite_definition(Client, Input) ->
    create_suite_definition(Client, Input, []).

-spec create_suite_definition(aws_client:aws_client(), create_suite_definition_request(), proplists:proplist()) ->
    {ok, create_suite_definition_response(), tuple()} |
    {error, any()} |
    {error, create_suite_definition_errors(), tuple()}.
create_suite_definition(Client, Input0, Options0) ->
    Method = post,
    Path = ["/suiteDefinitions"],
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

%% @doc Deletes a Device Advisor test suite.
%%
%% Requires permission to access the DeleteSuiteDefinition:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec delete_suite_definition(aws_client:aws_client(), binary() | list(), delete_suite_definition_request()) ->
    {ok, delete_suite_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_suite_definition_errors(), tuple()}.
delete_suite_definition(Client, SuiteDefinitionId, Input) ->
    delete_suite_definition(Client, SuiteDefinitionId, Input, []).

-spec delete_suite_definition(aws_client:aws_client(), binary() | list(), delete_suite_definition_request(), proplists:proplist()) ->
    {ok, delete_suite_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_suite_definition_errors(), tuple()}.
delete_suite_definition(Client, SuiteDefinitionId, Input0, Options0) ->
    Method = delete,
    Path = ["/suiteDefinitions/", aws_util:encode_uri(SuiteDefinitionId), ""],
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

%% @doc Gets information about an Device Advisor endpoint.
-spec get_endpoint(aws_client:aws_client()) ->
    {ok, get_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_endpoint_errors(), tuple()}.
get_endpoint(Client)
  when is_map(Client) ->
    get_endpoint(Client, #{}, #{}).

-spec get_endpoint(aws_client:aws_client(), map(), map()) ->
    {ok, get_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_endpoint_errors(), tuple()}.
get_endpoint(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_endpoint(Client, QueryMap, HeadersMap, []).

-spec get_endpoint(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_endpoint_errors(), tuple()}.
get_endpoint(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/endpoint"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
-spec get_suite_definition(aws_client:aws_client(), binary() | list()) ->
    {ok, get_suite_definition_response(), tuple()} |
    {error, any()} |
    {error, get_suite_definition_errors(), tuple()}.
get_suite_definition(Client, SuiteDefinitionId)
  when is_map(Client) ->
    get_suite_definition(Client, SuiteDefinitionId, #{}, #{}).

-spec get_suite_definition(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_suite_definition_response(), tuple()} |
    {error, any()} |
    {error, get_suite_definition_errors(), tuple()}.
get_suite_definition(Client, SuiteDefinitionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_suite_definition(Client, SuiteDefinitionId, QueryMap, HeadersMap, []).

-spec get_suite_definition(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_suite_definition_response(), tuple()} |
    {error, any()} |
    {error, get_suite_definition_errors(), tuple()}.
get_suite_definition(Client, SuiteDefinitionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/suiteDefinitions/", aws_util:encode_uri(SuiteDefinitionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
-spec get_suite_run(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_suite_run_response(), tuple()} |
    {error, any()} |
    {error, get_suite_run_errors(), tuple()}.
get_suite_run(Client, SuiteDefinitionId, SuiteRunId)
  when is_map(Client) ->
    get_suite_run(Client, SuiteDefinitionId, SuiteRunId, #{}, #{}).

-spec get_suite_run(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_suite_run_response(), tuple()} |
    {error, any()} |
    {error, get_suite_run_errors(), tuple()}.
get_suite_run(Client, SuiteDefinitionId, SuiteRunId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_suite_run(Client, SuiteDefinitionId, SuiteRunId, QueryMap, HeadersMap, []).

-spec get_suite_run(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_suite_run_response(), tuple()} |
    {error, any()} |
    {error, get_suite_run_errors(), tuple()}.
get_suite_run(Client, SuiteDefinitionId, SuiteRunId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/suiteDefinitions/", aws_util:encode_uri(SuiteDefinitionId), "/suiteRuns/", aws_util:encode_uri(SuiteRunId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a report download link for a successful Device Advisor
%% qualifying test suite run.
%%
%% Requires permission to access the GetSuiteRunReport:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec get_suite_run_report(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_suite_run_report_response(), tuple()} |
    {error, any()} |
    {error, get_suite_run_report_errors(), tuple()}.
get_suite_run_report(Client, SuiteDefinitionId, SuiteRunId)
  when is_map(Client) ->
    get_suite_run_report(Client, SuiteDefinitionId, SuiteRunId, #{}, #{}).

-spec get_suite_run_report(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_suite_run_report_response(), tuple()} |
    {error, any()} |
    {error, get_suite_run_report_errors(), tuple()}.
get_suite_run_report(Client, SuiteDefinitionId, SuiteRunId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_suite_run_report(Client, SuiteDefinitionId, SuiteRunId, QueryMap, HeadersMap, []).

-spec get_suite_run_report(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_suite_run_report_response(), tuple()} |
    {error, any()} |
    {error, get_suite_run_report_errors(), tuple()}.
get_suite_run_report(Client, SuiteDefinitionId, SuiteRunId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/suiteDefinitions/", aws_util:encode_uri(SuiteDefinitionId), "/suiteRuns/", aws_util:encode_uri(SuiteRunId), "/report"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Device Advisor test suites you have created.
%%
%% Requires permission to access the ListSuiteDefinitions:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_suite_definitions(aws_client:aws_client()) ->
    {ok, list_suite_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_suite_definitions_errors(), tuple()}.
list_suite_definitions(Client)
  when is_map(Client) ->
    list_suite_definitions(Client, #{}, #{}).

-spec list_suite_definitions(aws_client:aws_client(), map(), map()) ->
    {ok, list_suite_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_suite_definitions_errors(), tuple()}.
list_suite_definitions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_suite_definitions(Client, QueryMap, HeadersMap, []).

-spec list_suite_definitions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_suite_definitions_response(), tuple()} |
    {error, any()} |
    {error, list_suite_definitions_errors(), tuple()}.
list_suite_definitions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/suiteDefinitions"],
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

%% @doc Lists runs of the specified Device Advisor test suite.
%%
%% You can list all runs of the test
%% suite, or the runs of a specific version of the test suite.
%%
%% Requires permission to access the ListSuiteRuns:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec list_suite_runs(aws_client:aws_client()) ->
    {ok, list_suite_runs_response(), tuple()} |
    {error, any()} |
    {error, list_suite_runs_errors(), tuple()}.
list_suite_runs(Client)
  when is_map(Client) ->
    list_suite_runs(Client, #{}, #{}).

-spec list_suite_runs(aws_client:aws_client(), map(), map()) ->
    {ok, list_suite_runs_response(), tuple()} |
    {error, any()} |
    {error, list_suite_runs_errors(), tuple()}.
list_suite_runs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_suite_runs(Client, QueryMap, HeadersMap, []).

-spec list_suite_runs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_suite_runs_response(), tuple()} |
    {error, any()} |
    {error, list_suite_runs_errors(), tuple()}.
list_suite_runs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/suiteRuns"],
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

%% @doc Starts a Device Advisor test suite run.
%%
%% Requires permission to access the StartSuiteRun:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec start_suite_run(aws_client:aws_client(), binary() | list(), start_suite_run_request()) ->
    {ok, start_suite_run_response(), tuple()} |
    {error, any()} |
    {error, start_suite_run_errors(), tuple()}.
start_suite_run(Client, SuiteDefinitionId, Input) ->
    start_suite_run(Client, SuiteDefinitionId, Input, []).

-spec start_suite_run(aws_client:aws_client(), binary() | list(), start_suite_run_request(), proplists:proplist()) ->
    {ok, start_suite_run_response(), tuple()} |
    {error, any()} |
    {error, start_suite_run_errors(), tuple()}.
start_suite_run(Client, SuiteDefinitionId, Input0, Options0) ->
    Method = post,
    Path = ["/suiteDefinitions/", aws_util:encode_uri(SuiteDefinitionId), "/suiteRuns"],
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

%% @doc Stops a Device Advisor test suite run that is currently running.
%%
%% Requires permission to access the StopSuiteRun:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec stop_suite_run(aws_client:aws_client(), binary() | list(), binary() | list(), stop_suite_run_request()) ->
    {ok, stop_suite_run_response(), tuple()} |
    {error, any()} |
    {error, stop_suite_run_errors(), tuple()}.
stop_suite_run(Client, SuiteDefinitionId, SuiteRunId, Input) ->
    stop_suite_run(Client, SuiteDefinitionId, SuiteRunId, Input, []).

-spec stop_suite_run(aws_client:aws_client(), binary() | list(), binary() | list(), stop_suite_run_request(), proplists:proplist()) ->
    {ok, stop_suite_run_response(), tuple()} |
    {error, any()} |
    {error, stop_suite_run_errors(), tuple()}.
stop_suite_run(Client, SuiteDefinitionId, SuiteRunId, Input0, Options0) ->
    Method = post,
    Path = ["/suiteDefinitions/", aws_util:encode_uri(SuiteDefinitionId), "/suiteRuns/", aws_util:encode_uri(SuiteRunId), "/stop"],
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

%% @doc Adds to and modifies existing tags of an IoT Device Advisor resource.
%%
%% Requires permission to access the TagResource:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
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

%% @doc Removes tags from an IoT Device Advisor resource.
%%
%% Requires permission to access the UntagResource:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
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

%% @doc Updates a Device Advisor test suite.
%%
%% Requires permission to access the UpdateSuiteDefinition:
%% https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
%% action.
-spec update_suite_definition(aws_client:aws_client(), binary() | list(), update_suite_definition_request()) ->
    {ok, update_suite_definition_response(), tuple()} |
    {error, any()} |
    {error, update_suite_definition_errors(), tuple()}.
update_suite_definition(Client, SuiteDefinitionId, Input) ->
    update_suite_definition(Client, SuiteDefinitionId, Input, []).

-spec update_suite_definition(aws_client:aws_client(), binary() | list(), update_suite_definition_request(), proplists:proplist()) ->
    {ok, update_suite_definition_response(), tuple()} |
    {error, any()} |
    {error, update_suite_definition_errors(), tuple()}.
update_suite_definition(Client, SuiteDefinitionId, Input0, Options0) ->
    Method = patch,
    Path = ["/suiteDefinitions/", aws_util:encode_uri(SuiteDefinitionId), ""],
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
