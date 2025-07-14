%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Kendra Intelligent Ranking uses Amazon Kendra
%% semantic search capabilities to intelligently re-rank a search
%% service's results.
-module(aws_kendra_ranking).

-export([create_rescore_execution_plan/2,
         create_rescore_execution_plan/3,
         delete_rescore_execution_plan/2,
         delete_rescore_execution_plan/3,
         describe_rescore_execution_plan/2,
         describe_rescore_execution_plan/3,
         list_rescore_execution_plans/2,
         list_rescore_execution_plans/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         rescore/2,
         rescore/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_rescore_execution_plan/2,
         update_rescore_execution_plan/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% capacity_units_configuration() :: #{
%%   <<"RescoreCapacityUnits">> => integer()
%% }
-type capacity_units_configuration() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% create_rescore_execution_plan_request() :: #{
%%   <<"CapacityUnits">> => capacity_units_configuration(),
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_rescore_execution_plan_request() :: #{binary() => any()}.

%% Example:
%% create_rescore_execution_plan_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type create_rescore_execution_plan_response() :: #{binary() => any()}.

%% Example:
%% delete_rescore_execution_plan_request() :: #{

%% }
-type delete_rescore_execution_plan_request() :: #{binary() => any()}.

%% Example:
%% describe_rescore_execution_plan_request() :: #{

%% }
-type describe_rescore_execution_plan_request() :: #{binary() => any()}.

%% Example:
%% describe_rescore_execution_plan_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CapacityUnits">> => capacity_units_configuration(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type describe_rescore_execution_plan_response() :: #{binary() => any()}.

%% Example:
%% document() :: #{
%%   <<"Body">> => string(),
%%   <<"GroupId">> => string(),
%%   <<"Id">> => string(),
%%   <<"OriginalScore">> => float(),
%%   <<"Title">> => string(),
%%   <<"TokenizedBody">> => list(string()),
%%   <<"TokenizedTitle">> => list(string())
%% }
-type document() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% list_rescore_execution_plans_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_rescore_execution_plans_request() :: #{binary() => any()}.

%% Example:
%% list_rescore_execution_plans_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SummaryItems">> => list(rescore_execution_plan_summary())
%% }
-type list_rescore_execution_plans_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% rescore_execution_plan_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type rescore_execution_plan_summary() :: #{binary() => any()}.

%% Example:
%% rescore_request() :: #{
%%   <<"Documents">> := list(document()),
%%   <<"SearchQuery">> := string()
%% }
-type rescore_request() :: #{binary() => any()}.

%% Example:
%% rescore_result() :: #{
%%   <<"RescoreId">> => string(),
%%   <<"ResultItems">> => list(rescore_result_item())
%% }
-type rescore_result() :: #{binary() => any()}.

%% Example:
%% rescore_result_item() :: #{
%%   <<"DocumentId">> => string(),
%%   <<"Score">> => float()
%% }
-type rescore_result_item() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% resource_unavailable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% update_rescore_execution_plan_request() :: #{
%%   <<"CapacityUnits">> => capacity_units_configuration(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type update_rescore_execution_plan_request() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

-type create_rescore_execution_plan_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_rescore_execution_plan_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type describe_rescore_execution_plan_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_rescore_execution_plans_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_unavailable_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type rescore_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_unavailable_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_unavailable_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type update_rescore_execution_plan_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a rescore execution plan.
%%
%% A rescore execution
%% plan is an Amazon Kendra Intelligent Ranking resource
%% used for provisioning the `Rescore' API. You set
%% the number of capacity units that you require for
%% Amazon Kendra Intelligent Ranking to rescore or re-rank
%% a search service's results.
%%
%% For an example of using the
%% `CreateRescoreExecutionPlan' API, including using
%% the Python and Java SDKs, see Semantically
%% ranking a search service's results:
%% https://docs.aws.amazon.com/kendra/latest/dg/search-service-rerank.html.
-spec create_rescore_execution_plan(aws_client:aws_client(), create_rescore_execution_plan_request()) ->
    {ok, create_rescore_execution_plan_response(), tuple()} |
    {error, any()} |
    {error, create_rescore_execution_plan_errors(), tuple()}.
create_rescore_execution_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_rescore_execution_plan(Client, Input, []).

-spec create_rescore_execution_plan(aws_client:aws_client(), create_rescore_execution_plan_request(), proplists:proplist()) ->
    {ok, create_rescore_execution_plan_response(), tuple()} |
    {error, any()} |
    {error, create_rescore_execution_plan_errors(), tuple()}.
create_rescore_execution_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRescoreExecutionPlan">>, Input, Options).

%% @doc Deletes a rescore execution plan.
%%
%% A rescore execution
%% plan is an Amazon Kendra Intelligent Ranking resource
%% used for provisioning the `Rescore' API.
-spec delete_rescore_execution_plan(aws_client:aws_client(), delete_rescore_execution_plan_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_rescore_execution_plan_errors(), tuple()}.
delete_rescore_execution_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rescore_execution_plan(Client, Input, []).

-spec delete_rescore_execution_plan(aws_client:aws_client(), delete_rescore_execution_plan_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_rescore_execution_plan_errors(), tuple()}.
delete_rescore_execution_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRescoreExecutionPlan">>, Input, Options).

%% @doc Gets information about a rescore execution plan.
%%
%% A rescore
%% execution plan is an Amazon Kendra Intelligent Ranking
%% resource used for provisioning the `Rescore' API.
-spec describe_rescore_execution_plan(aws_client:aws_client(), describe_rescore_execution_plan_request()) ->
    {ok, describe_rescore_execution_plan_response(), tuple()} |
    {error, any()} |
    {error, describe_rescore_execution_plan_errors(), tuple()}.
describe_rescore_execution_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_rescore_execution_plan(Client, Input, []).

-spec describe_rescore_execution_plan(aws_client:aws_client(), describe_rescore_execution_plan_request(), proplists:proplist()) ->
    {ok, describe_rescore_execution_plan_response(), tuple()} |
    {error, any()} |
    {error, describe_rescore_execution_plan_errors(), tuple()}.
describe_rescore_execution_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRescoreExecutionPlan">>, Input, Options).

%% @doc Lists your rescore execution plans.
%%
%% A rescore execution plan
%% is an Amazon Kendra Intelligent Ranking resource used for
%% provisioning the `Rescore' API.
-spec list_rescore_execution_plans(aws_client:aws_client(), list_rescore_execution_plans_request()) ->
    {ok, list_rescore_execution_plans_response(), tuple()} |
    {error, any()} |
    {error, list_rescore_execution_plans_errors(), tuple()}.
list_rescore_execution_plans(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rescore_execution_plans(Client, Input, []).

-spec list_rescore_execution_plans(aws_client:aws_client(), list_rescore_execution_plans_request(), proplists:proplist()) ->
    {ok, list_rescore_execution_plans_response(), tuple()} |
    {error, any()} |
    {error, list_rescore_execution_plans_errors(), tuple()}.
list_rescore_execution_plans(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRescoreExecutionPlans">>, Input, Options).

%% @doc Gets a list of tags associated with a specified resource.
%%
%% A rescore execution plan is an example of a resource that
%% can have tags associated with it.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Rescores or re-ranks search results from a search service
%% such as OpenSearch (self managed).
%%
%% You use the semantic search
%% capabilities of Amazon Kendra Intelligent Ranking to
%% improve the search service's results.
-spec rescore(aws_client:aws_client(), rescore_request()) ->
    {ok, rescore_result(), tuple()} |
    {error, any()} |
    {error, rescore_errors(), tuple()}.
rescore(Client, Input)
  when is_map(Client), is_map(Input) ->
    rescore(Client, Input, []).

-spec rescore(aws_client:aws_client(), rescore_request(), proplists:proplist()) ->
    {ok, rescore_result(), tuple()} |
    {error, any()} |
    {error, rescore_errors(), tuple()}.
rescore(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Rescore">>, Input, Options).

%% @doc Adds a specified tag to a specified rescore execution
%% plan.
%%
%% A rescore execution plan is an Amazon Kendra
%% Intelligent Ranking resource used for provisioning the
%% `Rescore' API. If the tag already exists,
%% the existing value is replaced with the new value.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes a tag from a rescore execution plan.
%%
%% A rescore
%% execution plan is an Amazon Kendra Intelligent
%% Ranking resource used for provisioning the
%% `Rescore' operation.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates a rescore execution plan.
%%
%% A rescore execution plan
%% is an Amazon Kendra Intelligent Ranking resource used for
%% provisioning the `Rescore' API. You can update the
%% number of capacity units you require for Amazon Kendra
%% Intelligent Ranking to rescore or re-rank a search service's
%% results.
-spec update_rescore_execution_plan(aws_client:aws_client(), update_rescore_execution_plan_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_rescore_execution_plan_errors(), tuple()}.
update_rescore_execution_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rescore_execution_plan(Client, Input, []).

-spec update_rescore_execution_plan(aws_client:aws_client(), update_rescore_execution_plan_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_rescore_execution_plan_errors(), tuple()}.
update_rescore_execution_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRescoreExecutionPlan">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"kendra-ranking">>},
    Host = build_host(<<"kendra-ranking">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AWSKendraRerankingFrontendService.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
