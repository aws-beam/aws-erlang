%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Augmented AI (Amazon A2I) adds the benefit of human judgment
%% to any machine learning
%% application.
%%
%% When an AI application can't evaluate data with a high degree of
%% confidence,
%% human reviewers can take over. This human review is called a human review
%% workflow. To create
%% and start a human review workflow, you need three resources: a worker task
%% template, a flow definition, and a human
%% loop.
%%
%% For information about these resources and prerequisites for using Amazon
%% A2I, see Get Started with
%% Amazon Augmented AI:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-getting-started.html
%% in the Amazon SageMaker Developer Guide.
%%
%% This API reference includes information about API actions and data types
%% that you can use
%% to interact with Amazon A2I programmatically. Use this guide to:
%%
%% Start a human loop with the `StartHumanLoop' operation when using
%% Amazon A2I with a custom task type. To learn more about the
%% difference between custom and built-in task types, see Use Task Types :
%% https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-task-types-general.html.
%% To learn
%% how to start a human loop using this API, see Create and Start a Human
%% Loop for a Custom Task Type :
%% https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-start-human-loop.html#a2i-instructions-starthumanloop
%% in the
%% Amazon SageMaker Developer Guide.
%%
%% Manage your human loops. You can list all human loops that you have
%% created, describe
%% individual human loops, and stop and delete human loops. To learn more,
%% see Monitor and Manage Your Human Loop :
%% https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-monitor-humanloop-results.html
%% in the Amazon SageMaker Developer Guide.
%%
%% Amazon A2I integrates APIs from various AWS services to create and start
%% human review
%% workflows for those services. To learn how Amazon A2I uses these APIs, see
%% Use APIs in
%% Amazon A2I:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-api-references.html in
%% the Amazon SageMaker Developer Guide.
-module(aws_sagemaker_a2i_runtime).

-export([delete_human_loop/3,
         delete_human_loop/4,
         describe_human_loop/2,
         describe_human_loop/4,
         describe_human_loop/5,
         list_human_loops/2,
         list_human_loops/4,
         list_human_loops/5,
         start_human_loop/2,
         start_human_loop/3,
         stop_human_loop/2,
         stop_human_loop/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% delete_human_loop_request() :: #{}
-type delete_human_loop_request() :: #{}.

%% Example:
%% delete_human_loop_response() :: #{}
-type delete_human_loop_response() :: #{}.

%% Example:
%% describe_human_loop_request() :: #{}
-type describe_human_loop_request() :: #{}.


%% Example:
%% describe_human_loop_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureCode">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"FlowDefinitionArn">> => string(),
%%   <<"HumanLoopArn">> => string(),
%%   <<"HumanLoopName">> => string(),
%%   <<"HumanLoopOutput">> => human_loop_output(),
%%   <<"HumanLoopStatus">> => list(any())
%% }
-type describe_human_loop_response() :: #{binary() => any()}.


%% Example:
%% human_loop_data_attributes() :: #{
%%   <<"ContentClassifiers">> => list(list(any())())
%% }
-type human_loop_data_attributes() :: #{binary() => any()}.


%% Example:
%% human_loop_input() :: #{
%%   <<"InputContent">> => string()
%% }
-type human_loop_input() :: #{binary() => any()}.


%% Example:
%% human_loop_output() :: #{
%%   <<"OutputS3Uri">> => string()
%% }
-type human_loop_output() :: #{binary() => any()}.


%% Example:
%% human_loop_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"FlowDefinitionArn">> => string(),
%%   <<"HumanLoopName">> => string(),
%%   <<"HumanLoopStatus">> => list(any())
%% }
-type human_loop_summary() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_human_loops_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"FlowDefinitionArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortOrder">> => list(any())
%% }
-type list_human_loops_request() :: #{binary() => any()}.


%% Example:
%% list_human_loops_response() :: #{
%%   <<"HumanLoopSummaries">> => list(human_loop_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_human_loops_response() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% start_human_loop_request() :: #{
%%   <<"DataAttributes">> => human_loop_data_attributes(),
%%   <<"FlowDefinitionArn">> := string(),
%%   <<"HumanLoopInput">> := human_loop_input(),
%%   <<"HumanLoopName">> := string()
%% }
-type start_human_loop_request() :: #{binary() => any()}.


%% Example:
%% start_human_loop_response() :: #{
%%   <<"HumanLoopArn">> => string()
%% }
-type start_human_loop_response() :: #{binary() => any()}.


%% Example:
%% stop_human_loop_request() :: #{
%%   <<"HumanLoopName">> := string()
%% }
-type stop_human_loop_request() :: #{binary() => any()}.

%% Example:
%% stop_human_loop_response() :: #{}
-type stop_human_loop_response() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

-type delete_human_loop_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception().

-type describe_human_loop_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception().

-type list_human_loops_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception().

-type start_human_loop_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type stop_human_loop_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes the specified human loop for a flow definition.
%%
%% If the human loop was deleted, this operation will return a
%% `ResourceNotFoundException'.
-spec delete_human_loop(aws_client:aws_client(), binary() | list(), delete_human_loop_request()) ->
    {ok, delete_human_loop_response(), tuple()} |
    {error, any()} |
    {error, delete_human_loop_errors(), tuple()}.
delete_human_loop(Client, HumanLoopName, Input) ->
    delete_human_loop(Client, HumanLoopName, Input, []).

-spec delete_human_loop(aws_client:aws_client(), binary() | list(), delete_human_loop_request(), proplists:proplist()) ->
    {ok, delete_human_loop_response(), tuple()} |
    {error, any()} |
    {error, delete_human_loop_errors(), tuple()}.
delete_human_loop(Client, HumanLoopName, Input0, Options0) ->
    Method = delete,
    Path = ["/human-loops/", aws_util:encode_uri(HumanLoopName), ""],
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

%% @doc Returns information about the specified human loop.
%%
%% If the human loop was deleted, this
%% operation will return a `ResourceNotFoundException' error.
-spec describe_human_loop(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_human_loop_response(), tuple()} |
    {error, any()} |
    {error, describe_human_loop_errors(), tuple()}.
describe_human_loop(Client, HumanLoopName)
  when is_map(Client) ->
    describe_human_loop(Client, HumanLoopName, #{}, #{}).

-spec describe_human_loop(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_human_loop_response(), tuple()} |
    {error, any()} |
    {error, describe_human_loop_errors(), tuple()}.
describe_human_loop(Client, HumanLoopName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_human_loop(Client, HumanLoopName, QueryMap, HeadersMap, []).

-spec describe_human_loop(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_human_loop_response(), tuple()} |
    {error, any()} |
    {error, describe_human_loop_errors(), tuple()}.
describe_human_loop(Client, HumanLoopName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/human-loops/", aws_util:encode_uri(HumanLoopName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about human loops, given the specified
%% parameters.
%%
%% If a human loop was deleted, it will not be included.
-spec list_human_loops(aws_client:aws_client(), binary() | list()) ->
    {ok, list_human_loops_response(), tuple()} |
    {error, any()} |
    {error, list_human_loops_errors(), tuple()}.
list_human_loops(Client, FlowDefinitionArn)
  when is_map(Client) ->
    list_human_loops(Client, FlowDefinitionArn, #{}, #{}).

-spec list_human_loops(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_human_loops_response(), tuple()} |
    {error, any()} |
    {error, list_human_loops_errors(), tuple()}.
list_human_loops(Client, FlowDefinitionArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_human_loops(Client, FlowDefinitionArn, QueryMap, HeadersMap, []).

-spec list_human_loops(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_human_loops_response(), tuple()} |
    {error, any()} |
    {error, list_human_loops_errors(), tuple()}.
list_human_loops(Client, FlowDefinitionArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/human-loops"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"CreationTimeAfter">>, maps:get(<<"CreationTimeAfter">>, QueryMap, undefined)},
        {<<"CreationTimeBefore">>, maps:get(<<"CreationTimeBefore">>, QueryMap, undefined)},
        {<<"FlowDefinitionArn">>, FlowDefinitionArn},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"SortOrder">>, maps:get(<<"SortOrder">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts a human loop, provided that at least one activation condition
%% is met.
-spec start_human_loop(aws_client:aws_client(), start_human_loop_request()) ->
    {ok, start_human_loop_response(), tuple()} |
    {error, any()} |
    {error, start_human_loop_errors(), tuple()}.
start_human_loop(Client, Input) ->
    start_human_loop(Client, Input, []).

-spec start_human_loop(aws_client:aws_client(), start_human_loop_request(), proplists:proplist()) ->
    {ok, start_human_loop_response(), tuple()} |
    {error, any()} |
    {error, start_human_loop_errors(), tuple()}.
start_human_loop(Client, Input0, Options0) ->
    Method = post,
    Path = ["/human-loops"],
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

%% @doc Stops the specified human loop.
-spec stop_human_loop(aws_client:aws_client(), stop_human_loop_request()) ->
    {ok, stop_human_loop_response(), tuple()} |
    {error, any()} |
    {error, stop_human_loop_errors(), tuple()}.
stop_human_loop(Client, Input) ->
    stop_human_loop(Client, Input, []).

-spec stop_human_loop(aws_client:aws_client(), stop_human_loop_request(), proplists:proplist()) ->
    {ok, stop_human_loop_response(), tuple()} |
    {error, any()} |
    {error, stop_human_loop_errors(), tuple()}.
stop_human_loop(Client, Input0, Options0) ->
    Method = post,
    Path = ["/human-loops/stop"],
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
    Client1 = Client#{service => <<"sagemaker">>},
    Host = build_host(<<"a2i-runtime.sagemaker">>, Client1),
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
