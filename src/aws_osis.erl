%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Use the Amazon OpenSearch Ingestion API to create and manage
%% ingestion pipelines.
%%
%% OpenSearch Ingestion is a fully managed data collector that delivers
%% real-time log and trace data to OpenSearch Service domains. For more
%% information, see Getting data into your cluster using OpenSearch
%% Ingestion:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ingestion.html.
-module(aws_osis).

-export([create_pipeline/2,
         create_pipeline/3,
         delete_pipeline/3,
         delete_pipeline/4,
         get_pipeline/2,
         get_pipeline/4,
         get_pipeline/5,
         get_pipeline_blueprint/2,
         get_pipeline_blueprint/4,
         get_pipeline_blueprint/5,
         get_pipeline_change_progress/2,
         get_pipeline_change_progress/4,
         get_pipeline_change_progress/5,
         list_pipeline_blueprints/2,
         list_pipeline_blueprints/3,
         list_pipelines/1,
         list_pipelines/3,
         list_pipelines/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_pipeline/3,
         start_pipeline/4,
         stop_pipeline/3,
         stop_pipeline/4,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_pipeline/3,
         update_pipeline/4,
         validate_pipeline/2,
         validate_pipeline/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an OpenSearch Ingestion pipeline.
%%
%% For more information, see Creating Amazon OpenSearch Ingestion pipelines:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html.
create_pipeline(Client, Input) ->
    create_pipeline(Client, Input, []).
create_pipeline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2022-01-01/osis/createPipeline"],
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

%% @doc Deletes an OpenSearch Ingestion pipeline.
%%
%% For more information, see Deleting Amazon OpenSearch Ingestion pipelines:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/delete-pipeline.html.
delete_pipeline(Client, PipelineName, Input) ->
    delete_pipeline(Client, PipelineName, Input, []).
delete_pipeline(Client, PipelineName, Input0, Options0) ->
    Method = delete,
    Path = ["/2022-01-01/osis/deletePipeline/", aws_util:encode_uri(PipelineName), ""],
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

%% @doc Retrieves information about an OpenSearch Ingestion pipeline.
get_pipeline(Client, PipelineName)
  when is_map(Client) ->
    get_pipeline(Client, PipelineName, #{}, #{}).

get_pipeline(Client, PipelineName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_pipeline(Client, PipelineName, QueryMap, HeadersMap, []).

get_pipeline(Client, PipelineName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2022-01-01/osis/getPipeline/", aws_util:encode_uri(PipelineName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a specific blueprint for OpenSearch
%% Ingestion.
%%
%% Blueprints are templates for the configuration needed for a
%% `CreatePipeline' request. For more information, see Using blueprints
%% to create a pipeline:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#pipeline-blueprint.
get_pipeline_blueprint(Client, BlueprintName)
  when is_map(Client) ->
    get_pipeline_blueprint(Client, BlueprintName, #{}, #{}).

get_pipeline_blueprint(Client, BlueprintName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_pipeline_blueprint(Client, BlueprintName, QueryMap, HeadersMap, []).

get_pipeline_blueprint(Client, BlueprintName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2022-01-01/osis/getPipelineBlueprint/", aws_util:encode_uri(BlueprintName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns progress information for the current change happening on an
%% OpenSearch Ingestion pipeline.
%%
%% Currently, this operation only returns information when a pipeline is
%% being created.
%%
%% For more information, see Tracking the status of pipeline creation:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#get-pipeline-progress.
get_pipeline_change_progress(Client, PipelineName)
  when is_map(Client) ->
    get_pipeline_change_progress(Client, PipelineName, #{}, #{}).

get_pipeline_change_progress(Client, PipelineName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_pipeline_change_progress(Client, PipelineName, QueryMap, HeadersMap, []).

get_pipeline_change_progress(Client, PipelineName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2022-01-01/osis/getPipelineChangeProgress/", aws_util:encode_uri(PipelineName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of all available blueprints for Data Prepper.
%%
%% For more information, see Using blueprints to create a pipeline:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#pipeline-blueprint.
list_pipeline_blueprints(Client, Input) ->
    list_pipeline_blueprints(Client, Input, []).
list_pipeline_blueprints(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2022-01-01/osis/listPipelineBlueprints"],
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

%% @doc Lists all OpenSearch Ingestion pipelines in the current Amazon Web
%% Services account and Region.
%%
%% For more information, see Viewing Amazon OpenSearch Ingestion pipelines:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/list-pipeline.html.
list_pipelines(Client)
  when is_map(Client) ->
    list_pipelines(Client, #{}, #{}).

list_pipelines(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_pipelines(Client, QueryMap, HeadersMap, []).

list_pipelines(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2022-01-01/osis/listPipelines"],
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

%% @doc Lists all resource tags associated with an OpenSearch Ingestion
%% pipeline.
%%
%% For more information, see Tagging Amazon OpenSearch Ingestion pipelines:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html.
list_tags_for_resource(Client, Arn)
  when is_map(Client) ->
    list_tags_for_resource(Client, Arn, #{}, #{}).

list_tags_for_resource(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, Arn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2022-01-01/osis/listTagsForResource/"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"arn">>, Arn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts an OpenSearch Ingestion pipeline.
%%
%% For more information, see Starting an OpenSearch Ingestion pipeline:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline--stop-start.html#pipeline--start.
start_pipeline(Client, PipelineName, Input) ->
    start_pipeline(Client, PipelineName, Input, []).
start_pipeline(Client, PipelineName, Input0, Options0) ->
    Method = put,
    Path = ["/2022-01-01/osis/startPipeline/", aws_util:encode_uri(PipelineName), ""],
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

%% @doc Stops an OpenSearch Ingestion pipeline.
%%
%% For more information, see Stopping an OpenSearch Ingestion pipeline:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline--stop-start.html#pipeline--stop.
stop_pipeline(Client, PipelineName, Input) ->
    stop_pipeline(Client, PipelineName, Input, []).
stop_pipeline(Client, PipelineName, Input0, Options0) ->
    Method = put,
    Path = ["/2022-01-01/osis/stopPipeline/", aws_util:encode_uri(PipelineName), ""],
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

%% @doc Tags an OpenSearch Ingestion pipeline.
%%
%% For more information, see Tagging Amazon OpenSearch Ingestion pipelines:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2022-01-01/osis/tagResource/"],
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
                     {<<"arn">>, <<"Arn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes one or more tags from an OpenSearch Ingestion pipeline.
%%
%% For more information, see Tagging Amazon OpenSearch Ingestion pipelines:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2022-01-01/osis/untagResource/"],
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
                     {<<"arn">>, <<"Arn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an OpenSearch Ingestion pipeline.
%%
%% For more information, see Updating Amazon OpenSearch Ingestion pipelines:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/update-pipeline.html.
update_pipeline(Client, PipelineName, Input) ->
    update_pipeline(Client, PipelineName, Input, []).
update_pipeline(Client, PipelineName, Input0, Options0) ->
    Method = put,
    Path = ["/2022-01-01/osis/updatePipeline/", aws_util:encode_uri(PipelineName), ""],
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

%% @doc Checks whether an OpenSearch Ingestion pipeline configuration is
%% valid prior to creation.
%%
%% For more information, see Creating Amazon OpenSearch Ingestion pipelines:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html.
validate_pipeline(Client, Input) ->
    validate_pipeline(Client, Input, []).
validate_pipeline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2022-01-01/osis/validatePipeline"],
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
    Client1 = Client#{service => <<"osis">>},
    Host = build_host(<<"osis">>, Client1),
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
