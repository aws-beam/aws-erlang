%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%% AWS Mobile Service provides mobile app and website developers with
%% capabilities
%% required to configure AWS resources and bootstrap their developer desktop
%% projects
%% with the necessary SDKs, constants, tools and samples to make use of those
%% resources.
-module(aws_mobile).

-export([create_project/2,
         create_project/3,
         delete_project/3,
         delete_project/4,
         describe_bundle/2,
         describe_bundle/4,
         describe_bundle/5,
         describe_project/2,
         describe_project/4,
         describe_project/5,
         export_bundle/3,
         export_bundle/4,
         export_project/3,
         export_project/4,
         list_bundles/1,
         list_bundles/3,
         list_bundles/4,
         list_projects/1,
         list_projects/3,
         list_projects/4,
         update_project/2,
         update_project/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% account_action_required_exception() :: #{
%%   <<"message">> => string()
%% }
-type account_action_required_exception() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% bundle_details() :: #{
%%   <<"availablePlatforms">> => list(list(any())()),
%%   <<"bundleId">> => string(),
%%   <<"description">> => string(),
%%   <<"iconUrl">> => string(),
%%   <<"title">> => string(),
%%   <<"version">> => string()
%% }
-type bundle_details() :: #{binary() => any()}.


%% Example:
%% create_project_request() :: #{
%%   <<"contents">> => binary(),
%%   <<"name">> => string(),
%%   <<"region">> => string(),
%%   <<"snapshotId">> => string()
%% }
-type create_project_request() :: #{binary() => any()}.


%% Example:
%% create_project_result() :: #{
%%   <<"details">> => project_details()
%% }
-type create_project_result() :: #{binary() => any()}.

%% Example:
%% delete_project_request() :: #{}
-type delete_project_request() :: #{}.


%% Example:
%% delete_project_result() :: #{
%%   <<"deletedResources">> => list(resource()()),
%%   <<"orphanedResources">> => list(resource()())
%% }
-type delete_project_result() :: #{binary() => any()}.

%% Example:
%% describe_bundle_request() :: #{}
-type describe_bundle_request() :: #{}.


%% Example:
%% describe_bundle_result() :: #{
%%   <<"details">> => bundle_details()
%% }
-type describe_bundle_result() :: #{binary() => any()}.


%% Example:
%% describe_project_request() :: #{
%%   <<"projectId">> := string(),
%%   <<"syncFromResources">> => boolean()
%% }
-type describe_project_request() :: #{binary() => any()}.


%% Example:
%% describe_project_result() :: #{
%%   <<"details">> => project_details()
%% }
-type describe_project_result() :: #{binary() => any()}.


%% Example:
%% export_bundle_request() :: #{
%%   <<"platform">> => list(any()),
%%   <<"projectId">> => string()
%% }
-type export_bundle_request() :: #{binary() => any()}.


%% Example:
%% export_bundle_result() :: #{
%%   <<"downloadUrl">> => string()
%% }
-type export_bundle_result() :: #{binary() => any()}.

%% Example:
%% export_project_request() :: #{}
-type export_project_request() :: #{}.


%% Example:
%% export_project_result() :: #{
%%   <<"downloadUrl">> => string(),
%%   <<"shareUrl">> => string(),
%%   <<"snapshotId">> => string()
%% }
-type export_project_result() :: #{binary() => any()}.


%% Example:
%% internal_failure_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_failure_exception() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_bundles_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_bundles_request() :: #{binary() => any()}.


%% Example:
%% list_bundles_result() :: #{
%%   <<"bundleList">> => list(bundle_details()()),
%%   <<"nextToken">> => string()
%% }
-type list_bundles_result() :: #{binary() => any()}.


%% Example:
%% list_projects_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_projects_request() :: #{binary() => any()}.


%% Example:
%% list_projects_result() :: #{
%%   <<"nextToken">> => string(),
%%   <<"projects">> => list(project_summary()())
%% }
-type list_projects_result() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% project_details() :: #{
%%   <<"consoleUrl">> => string(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"projectId">> => string(),
%%   <<"region">> => string(),
%%   <<"resources">> => list(resource()()),
%%   <<"state">> => list(any())
%% }
-type project_details() :: #{binary() => any()}.


%% Example:
%% project_summary() :: #{
%%   <<"name">> => string(),
%%   <<"projectId">> => string()
%% }
-type project_summary() :: #{binary() => any()}.


%% Example:
%% resource() :: #{
%%   <<"arn">> => string(),
%%   <<"attributes">> => map(),
%%   <<"feature">> => string(),
%%   <<"name">> => string(),
%%   <<"type">> => string()
%% }
-type resource() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryAfterSeconds">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"message">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% update_project_request() :: #{
%%   <<"contents">> => binary(),
%%   <<"projectId">> := string()
%% }
-type update_project_request() :: #{binary() => any()}.


%% Example:
%% update_project_result() :: #{
%%   <<"details">> => project_details()
%% }
-type update_project_result() :: #{binary() => any()}.

-type create_project_errors() ::
    unauthorized_exception() | 
    too_many_requests_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception() | 
    bad_request_exception().

-type delete_project_errors() ::
    unauthorized_exception() | 
    too_many_requests_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    internal_failure_exception().

-type describe_bundle_errors() ::
    unauthorized_exception() | 
    too_many_requests_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    internal_failure_exception() | 
    bad_request_exception().

-type describe_project_errors() ::
    unauthorized_exception() | 
    too_many_requests_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    internal_failure_exception() | 
    bad_request_exception().

-type export_bundle_errors() ::
    unauthorized_exception() | 
    too_many_requests_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    internal_failure_exception() | 
    bad_request_exception().

-type export_project_errors() ::
    unauthorized_exception() | 
    too_many_requests_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    internal_failure_exception() | 
    bad_request_exception().

-type list_bundles_errors() ::
    unauthorized_exception() | 
    too_many_requests_exception() | 
    service_unavailable_exception() | 
    internal_failure_exception() | 
    bad_request_exception().

-type list_projects_errors() ::
    unauthorized_exception() | 
    too_many_requests_exception() | 
    service_unavailable_exception() | 
    internal_failure_exception() | 
    bad_request_exception().

-type update_project_errors() ::
    unauthorized_exception() | 
    too_many_requests_exception() | 
    service_unavailable_exception() | 
    not_found_exception() | 
    limit_exceeded_exception() | 
    internal_failure_exception() | 
    bad_request_exception() | 
    account_action_required_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc
%% Creates an AWS Mobile Hub project.
-spec create_project(aws_client:aws_client(), create_project_request()) ->
    {ok, create_project_result(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
create_project(Client, Input) ->
    create_project(Client, Input, []).

-spec create_project(aws_client:aws_client(), create_project_request(), proplists:proplist()) ->
    {ok, create_project_result(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
create_project(Client, Input0, Options0) ->
    Method = post,
    Path = ["/projects"],
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
                     {<<"name">>, <<"name">>},
                     {<<"region">>, <<"region">>},
                     {<<"snapshotId">>, <<"snapshotId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Delets a project in AWS Mobile Hub.
-spec delete_project(aws_client:aws_client(), binary() | list(), delete_project_request()) ->
    {ok, delete_project_result(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, ProjectId, Input) ->
    delete_project(Client, ProjectId, Input, []).

-spec delete_project(aws_client:aws_client(), binary() | list(), delete_project_request(), proplists:proplist()) ->
    {ok, delete_project_result(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, ProjectId, Input0, Options0) ->
    Method = delete,
    Path = ["/projects/", aws_util:encode_uri(ProjectId), ""],
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

%% @doc
%% Get the bundle details for the requested bundle id.
-spec describe_bundle(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_bundle_result(), tuple()} |
    {error, any()} |
    {error, describe_bundle_errors(), tuple()}.
describe_bundle(Client, BundleId)
  when is_map(Client) ->
    describe_bundle(Client, BundleId, #{}, #{}).

-spec describe_bundle(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_bundle_result(), tuple()} |
    {error, any()} |
    {error, describe_bundle_errors(), tuple()}.
describe_bundle(Client, BundleId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_bundle(Client, BundleId, QueryMap, HeadersMap, []).

-spec describe_bundle(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_bundle_result(), tuple()} |
    {error, any()} |
    {error, describe_bundle_errors(), tuple()}.
describe_bundle(Client, BundleId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bundles/", aws_util:encode_uri(BundleId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Gets details about a project in AWS Mobile Hub.
-spec describe_project(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_project_result(), tuple()} |
    {error, any()} |
    {error, describe_project_errors(), tuple()}.
describe_project(Client, ProjectId)
  when is_map(Client) ->
    describe_project(Client, ProjectId, #{}, #{}).

-spec describe_project(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_project_result(), tuple()} |
    {error, any()} |
    {error, describe_project_errors(), tuple()}.
describe_project(Client, ProjectId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_project(Client, ProjectId, QueryMap, HeadersMap, []).

-spec describe_project(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_project_result(), tuple()} |
    {error, any()} |
    {error, describe_project_errors(), tuple()}.
describe_project(Client, ProjectId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/project"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"projectId">>, ProjectId},
        {<<"syncFromResources">>, maps:get(<<"syncFromResources">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%% Generates customized software development kit (SDK) and or tool packages
%% used to integrate mobile web or mobile app clients with backend AWS
%% resources.
-spec export_bundle(aws_client:aws_client(), binary() | list(), export_bundle_request()) ->
    {ok, export_bundle_result(), tuple()} |
    {error, any()} |
    {error, export_bundle_errors(), tuple()}.
export_bundle(Client, BundleId, Input) ->
    export_bundle(Client, BundleId, Input, []).

-spec export_bundle(aws_client:aws_client(), binary() | list(), export_bundle_request(), proplists:proplist()) ->
    {ok, export_bundle_result(), tuple()} |
    {error, any()} |
    {error, export_bundle_errors(), tuple()}.
export_bundle(Client, BundleId, Input0, Options0) ->
    Method = post,
    Path = ["/bundles/", aws_util:encode_uri(BundleId), ""],
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
                     {<<"platform">>, <<"platform">>},
                     {<<"projectId">>, <<"projectId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Exports project configuration to a snapshot which can be downloaded and
%% shared.
%%
%% Note that mobile app push credentials are encrypted in exported projects,
%% so they
%% can only be shared successfully within the same AWS account.
-spec export_project(aws_client:aws_client(), binary() | list(), export_project_request()) ->
    {ok, export_project_result(), tuple()} |
    {error, any()} |
    {error, export_project_errors(), tuple()}.
export_project(Client, ProjectId, Input) ->
    export_project(Client, ProjectId, Input, []).

-spec export_project(aws_client:aws_client(), binary() | list(), export_project_request(), proplists:proplist()) ->
    {ok, export_project_result(), tuple()} |
    {error, any()} |
    {error, export_project_errors(), tuple()}.
export_project(Client, ProjectId, Input0, Options0) ->
    Method = post,
    Path = ["/exports/", aws_util:encode_uri(ProjectId), ""],
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

%% @doc
%% List all available bundles.
-spec list_bundles(aws_client:aws_client()) ->
    {ok, list_bundles_result(), tuple()} |
    {error, any()} |
    {error, list_bundles_errors(), tuple()}.
list_bundles(Client)
  when is_map(Client) ->
    list_bundles(Client, #{}, #{}).

-spec list_bundles(aws_client:aws_client(), map(), map()) ->
    {ok, list_bundles_result(), tuple()} |
    {error, any()} |
    {error, list_bundles_errors(), tuple()}.
list_bundles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_bundles(Client, QueryMap, HeadersMap, []).

-spec list_bundles(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_bundles_result(), tuple()} |
    {error, any()} |
    {error, list_bundles_errors(), tuple()}.
list_bundles(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/bundles"],
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

%% @doc
%% Lists projects in AWS Mobile Hub.
-spec list_projects(aws_client:aws_client()) ->
    {ok, list_projects_result(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client)
  when is_map(Client) ->
    list_projects(Client, #{}, #{}).

-spec list_projects(aws_client:aws_client(), map(), map()) ->
    {ok, list_projects_result(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_projects(Client, QueryMap, HeadersMap, []).

-spec list_projects(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_projects_result(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects"],
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

%% @doc
%% Update an existing project.
-spec update_project(aws_client:aws_client(), update_project_request()) ->
    {ok, update_project_result(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, Input) ->
    update_project(Client, Input, []).

-spec update_project(aws_client:aws_client(), update_project_request(), proplists:proplist()) ->
    {ok, update_project_result(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update"],
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
                     {<<"projectId">>, <<"projectId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
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
    Client1 = Client#{service => <<"AWSMobileHubService">>},
    Host = build_host(<<"mobile">>, Client1),
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
