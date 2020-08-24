%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <important> Amazon Augmented AI is in preview release and is subject
%% to change. We do not recommend using this product in production
%% environments.
%%
%% </important> Amazon Augmented AI (Amazon A2I) adds the benefit of human
%% judgment to any machine learning application. When an AI application can't
%% evaluate data with a high degree of confidence, human reviewers can take
%% over. This human review is called a human review workflow. To create and
%% start a human review workflow, you need three resources: a <i>worker task
%% template</i>, a <i>flow definition</i>, and a <i>human loop</i>.
%%
%% For information about these resources and prerequisites for using Amazon
%% A2I, see <a
%% href="https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-getting-started.html">Get
%% Started with Amazon Augmented AI</a> in the Amazon SageMaker Developer
%% Guide.
%%
%% This API reference includes information about API actions and data types
%% that you can use to interact with Amazon A2I programmatically. Use this
%% guide to:
%%
%% <ul> <li> Start a human loop with the <code>StartHumanLoop</code>
%% operation when using Amazon A2I with a <i>custom task type</i>. To learn
%% more about the difference between custom and built-in task types, see <a
%% href="https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-task-types-general.html">Use
%% Task Types </a>. To learn how to start a human loop using this API, see <a
%% href="https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-start-human-loop.html#a2i-instructions-starthumanloop">Create
%% and Start a Human Loop for a Custom Task Type </a> in the Amazon SageMaker
%% Developer Guide.
%%
%% </li> <li> Manage your human loops. You can list all human loops that you
%% have created, describe individual human loops, and stop and delete human
%% loops. To learn more, see <a
%% href="https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-monitor-humanloop-results.html">Monitor
%% and Manage Your Human Loop </a> in the Amazon SageMaker Developer Guide.
%%
%% </li> </ul> Amazon A2I integrates APIs from various AWS services to create
%% and start human review workflows for those services. To learn how Amazon
%% A2I uses these APIs, see <a
%% href="https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-api-references.html">Use
%% APIs in Amazon A2I</a> in the Amazon SageMaker Developer Guide.
-module(aws_sagemaker_a2i_runtime).

-export([delete_human_loop/3,
         delete_human_loop/4,
         describe_human_loop/2,
         describe_human_loop/3,
         list_human_loops/7,
         list_human_loops/8,
         start_human_loop/2,
         start_human_loop/3,
         stop_human_loop/2,
         stop_human_loop/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes the specified human loop for a flow definition.
delete_human_loop(Client, HumanLoopName, Input) ->
    delete_human_loop(Client, HumanLoopName, Input, []).
delete_human_loop(Client, HumanLoopName, Input0, Options) ->
    Method = delete,
    Path = ["/human-loops/", http_uri:encode(HumanLoopName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns information about the specified human loop.
describe_human_loop(Client, HumanLoopName)
  when is_map(Client) ->
    describe_human_loop(Client, HumanLoopName, []).
describe_human_loop(Client, HumanLoopName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/human-loops/", http_uri:encode(HumanLoopName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about human loops, given the specified
%% parameters. If a human loop was deleted, it will not be included.
list_human_loops(Client, CreationTimeAfter, CreationTimeBefore, FlowDefinitionArn, MaxResults, NextToken, SortOrder)
  when is_map(Client) ->
    list_human_loops(Client, CreationTimeAfter, CreationTimeBefore, FlowDefinitionArn, MaxResults, NextToken, SortOrder, []).
list_human_loops(Client, CreationTimeAfter, CreationTimeBefore, FlowDefinitionArn, MaxResults, NextToken, SortOrder, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/human-loops"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"CreationTimeAfter">>, CreationTimeAfter},
        {<<"CreationTimeBefore">>, CreationTimeBefore},
        {<<"FlowDefinitionArn">>, FlowDefinitionArn},
        {<<"MaxResults">>, MaxResults},
        {<<"NextToken">>, NextToken},
        {<<"SortOrder">>, SortOrder}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts a human loop, provided that at least one activation condition
%% is met.
start_human_loop(Client, Input) ->
    start_human_loop(Client, Input, []).
start_human_loop(Client, Input0, Options) ->
    Method = post,
    Path = ["/human-loops"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Stops the specified human loop.
stop_human_loop(Client, Input) ->
    stop_human_loop(Client, Input, []).
stop_human_loop(Client, Input0, Options) ->
    Method = post,
    Path = ["/human-loops/stop"],
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
    Client1 = Client#{service => <<"sagemaker">>},
    Host = build_host(<<"a2i-runtime.sagemaker">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
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
