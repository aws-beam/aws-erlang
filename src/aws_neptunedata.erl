%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Neptune Data API
%%
%% The Amazon Neptune data API provides SDK support for more than 40 of
%% Neptune's data operations, including data loading, query execution,
%% data inquiry, and machine learning.
%%
%% It supports all three Neptune query languages (Gremlin, openCypher and
%% SPARQL), and is available in all SDK languages. It automatically signs API
%% requests and greatly simplifies integrating Neptune into your
%% applications.
-module(aws_neptunedata).

-export([cancel_gremlin_query/3,
         cancel_gremlin_query/4,
         cancel_loader_job/3,
         cancel_loader_job/4,
         cancel_ml_data_processing_job/3,
         cancel_ml_data_processing_job/4,
         cancel_ml_model_training_job/3,
         cancel_ml_model_training_job/4,
         cancel_ml_model_transform_job/3,
         cancel_ml_model_transform_job/4,
         cancel_open_cypher_query/3,
         cancel_open_cypher_query/4,
         create_ml_endpoint/2,
         create_ml_endpoint/3,
         delete_ml_endpoint/3,
         delete_ml_endpoint/4,
         delete_propertygraph_statistics/2,
         delete_propertygraph_statistics/3,
         delete_sparql_statistics/2,
         delete_sparql_statistics/3,
         execute_fast_reset/2,
         execute_fast_reset/3,
         execute_gremlin_explain_query/2,
         execute_gremlin_explain_query/3,
         execute_gremlin_profile_query/2,
         execute_gremlin_profile_query/3,
         execute_gremlin_query/2,
         execute_gremlin_query/3,
         execute_open_cypher_explain_query/2,
         execute_open_cypher_explain_query/3,
         get_engine_status/1,
         get_engine_status/3,
         get_engine_status/4,
         get_gremlin_query_status/2,
         get_gremlin_query_status/4,
         get_gremlin_query_status/5,
         get_ml_data_processing_job/2,
         get_ml_data_processing_job/4,
         get_ml_data_processing_job/5,
         get_ml_endpoint/2,
         get_ml_endpoint/4,
         get_ml_endpoint/5,
         get_ml_model_training_job/2,
         get_ml_model_training_job/4,
         get_ml_model_training_job/5,
         get_ml_model_transform_job/2,
         get_ml_model_transform_job/4,
         get_ml_model_transform_job/5,
         get_open_cypher_query_status/2,
         get_open_cypher_query_status/4,
         get_open_cypher_query_status/5,
         get_propertygraph_statistics/1,
         get_propertygraph_statistics/3,
         get_propertygraph_statistics/4,
         get_propertygraph_summary/1,
         get_propertygraph_summary/3,
         get_propertygraph_summary/4,
         get_r_d_f_graph_summary/1,
         get_r_d_f_graph_summary/3,
         get_r_d_f_graph_summary/4,
         get_sparql_statistics/1,
         get_sparql_statistics/3,
         get_sparql_statistics/4,
         get_sparql_stream/1,
         get_sparql_stream/3,
         get_sparql_stream/4,
         list_gremlin_queries/1,
         list_gremlin_queries/3,
         list_gremlin_queries/4,
         list_loader_jobs/1,
         list_loader_jobs/3,
         list_loader_jobs/4,
         list_ml_data_processing_jobs/1,
         list_ml_data_processing_jobs/3,
         list_ml_data_processing_jobs/4,
         list_ml_endpoints/1,
         list_ml_endpoints/3,
         list_ml_endpoints/4,
         list_ml_model_training_jobs/1,
         list_ml_model_training_jobs/3,
         list_ml_model_training_jobs/4,
         list_ml_model_transform_jobs/1,
         list_ml_model_transform_jobs/3,
         list_ml_model_transform_jobs/4,
         list_open_cypher_queries/1,
         list_open_cypher_queries/3,
         list_open_cypher_queries/4,
         manage_propertygraph_statistics/2,
         manage_propertygraph_statistics/3,
         manage_sparql_statistics/2,
         manage_sparql_statistics/3,
         start_loader_job/2,
         start_loader_job/3,
         start_ml_data_processing_job/2,
         start_ml_data_processing_job/3,
         start_ml_model_training_job/2,
         start_ml_model_training_job/3,
         start_ml_model_transform_job/2,
         start_ml_model_transform_job/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels a Gremlin query.
%%
%% See Gremlin query cancellation for more information.
cancel_gremlin_query(Client, QueryId, Input) ->
    cancel_gremlin_query(Client, QueryId, Input, []).
cancel_gremlin_query(Client, QueryId, Input0, Options0) ->
    Method = delete,
    Path = ["/gremlin/status/", aws_util:encode_uri(QueryId), ""],
    SuccessStatusCode = 200,
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

%% @doc Cancels a specified load job.
%%
%% This is an HTTP `DELETE' request.
%%
%% See Neptune Loader Get-Status API for more information.
cancel_loader_job(Client, LoadId, Input) ->
    cancel_loader_job(Client, LoadId, Input, []).
cancel_loader_job(Client, LoadId, Input0, Options0) ->
    Method = delete,
    Path = ["/loader/", aws_util:encode_uri(LoadId), ""],
    SuccessStatusCode = 200,
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

%% @doc Cancels a Neptune ML data processing job.
%%
%% See The `dataprocessing' command.
cancel_ml_data_processing_job(Client, Id, Input) ->
    cancel_ml_data_processing_job(Client, Id, Input, []).
cancel_ml_data_processing_job(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/ml/dataprocessing/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clean">>, <<"clean">>},
                     {<<"neptuneIamRoleArn">>, <<"neptuneIamRoleArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels a Neptune ML model training job.
%%
%% See Model training using the `modeltraining' command.
cancel_ml_model_training_job(Client, Id, Input) ->
    cancel_ml_model_training_job(Client, Id, Input, []).
cancel_ml_model_training_job(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/ml/modeltraining/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clean">>, <<"clean">>},
                     {<<"neptuneIamRoleArn">>, <<"neptuneIamRoleArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels a specified model transform job.
%%
%% See Use a trained model to generate new model artifacts.
cancel_ml_model_transform_job(Client, Id, Input) ->
    cancel_ml_model_transform_job(Client, Id, Input, []).
cancel_ml_model_transform_job(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/ml/modeltransform/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clean">>, <<"clean">>},
                     {<<"neptuneIamRoleArn">>, <<"neptuneIamRoleArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels a specified openCypher query.
%%
%% See Neptune openCypher status endpoint for more information.
cancel_open_cypher_query(Client, QueryId, Input) ->
    cancel_open_cypher_query(Client, QueryId, Input, []).
cancel_open_cypher_query(Client, QueryId, Input0, Options0) ->
    Method = delete,
    Path = ["/opencypher/status/", aws_util:encode_uri(QueryId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"silent">>, <<"silent">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new Neptune ML inference endpoint that lets you query one
%% specific model that the model-training process constructed.
%%
%% See Managing inference endpoints using the endpoints command.
create_ml_endpoint(Client, Input) ->
    create_ml_endpoint(Client, Input, []).
create_ml_endpoint(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ml/endpoints"],
    SuccessStatusCode = 200,
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

%% @doc Cancels the creation of a Neptune ML inference endpoint.
%%
%% See Managing inference endpoints using the endpoints command.
delete_ml_endpoint(Client, Id, Input) ->
    delete_ml_endpoint(Client, Id, Input, []).
delete_ml_endpoint(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/ml/endpoints/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clean">>, <<"clean">>},
                     {<<"neptuneIamRoleArn">>, <<"neptuneIamRoleArn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes statistics for Gremlin and openCypher (property graph) data.
delete_propertygraph_statistics(Client, Input) ->
    delete_propertygraph_statistics(Client, Input, []).
delete_propertygraph_statistics(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/propertygraph/statistics"],
    SuccessStatusCode = 200,
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

%% @doc Deletes SPARQL statistics
delete_sparql_statistics(Client, Input) ->
    delete_sparql_statistics(Client, Input, []).
delete_sparql_statistics(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/sparql/statistics"],
    SuccessStatusCode = 200,
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

%% @doc The fast reset REST API lets you reset a Neptune graph quicky and
%% easily, removing all of its data.
%%
%% Neptune fast reset is a two-step process. First you call
%% `ExecuteFastReset' with `action' set to
%% `initiateDatabaseReset'. This returns a UUID token which you then
%% include when calling `ExecuteFastReset' again with `action' set to
%% `performDatabaseReset'. See Empty an Amazon Neptune DB cluster using
%% the fast reset API.
execute_fast_reset(Client, Input) ->
    execute_fast_reset(Client, Input, []).
execute_fast_reset(Client, Input0, Options0) ->
    Method = post,
    Path = ["/system"],
    SuccessStatusCode = 200,
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

%% @doc Executes a Gremlin Explain query.
%%
%% Amazon Neptune has added a Gremlin feature named `explain' that
%% provides is a self-service tool for understanding the execution approach
%% being taken by the Neptune engine for the query. You invoke it by adding
%% an `explain' parameter to an HTTP call that submits a Gremlin query.
%%
%% The explain feature provides information about the logical structure of
%% query execution plans. You can use this information to identify potential
%% evaluation and execution bottlenecks and to tune your query, as explained
%% in Tuning Gremlin queries. You can also use query hints to improve query
%% execution plans.
execute_gremlin_explain_query(Client, Input) ->
    execute_gremlin_explain_query(Client, Input, []).
execute_gremlin_explain_query(Client, Input0, Options0) ->
    Method = post,
    Path = ["/gremlin/explain"],
    SuccessStatusCode = 200,
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

%% @doc Executes a Gremlin Profile query, which runs a specified traversal,
%% collects various metrics about the run, and produces a profile report as
%% output.
%%
%% See Gremlin profile API in Neptune for details.
execute_gremlin_profile_query(Client, Input) ->
    execute_gremlin_profile_query(Client, Input, []).
execute_gremlin_profile_query(Client, Input0, Options0) ->
    Method = post,
    Path = ["/gremlin/profile"],
    SuccessStatusCode = 200,
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

%% @doc This commands executes a Gremlin query.
%%
%% Amazon Neptune is compatible with Apache TinkerPop3 and Gremlin, so you
%% can use the Gremlin traversal language to query the graph, as described
%% under The Graph in the Apache TinkerPop3 documentation. More details can
%% also be found in Accessing a Neptune graph with Gremlin.
execute_gremlin_query(Client, Input) ->
    execute_gremlin_query(Client, Input, []).
execute_gremlin_query(Client, Input0, Options0) ->
    Method = post,
    Path = ["/gremlin"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    HeadersMapping = [
                       {<<"accept">>, <<"serializer">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Executes an openCypher `explain' request.
%%
%% See The openCypher explain feature for more information.
execute_open_cypher_explain_query(Client, Input) ->
    execute_open_cypher_explain_query(Client, Input, []).
execute_open_cypher_explain_query(Client, Input0, Options0) ->
    Method = post,
    Path = ["/opencypher/explain"],
    SuccessStatusCode = 200,
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

%% @doc Check the status of the graph database on the host.
get_engine_status(Client)
  when is_map(Client) ->
    get_engine_status(Client, #{}, #{}).

get_engine_status(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_engine_status(Client, QueryMap, HeadersMap, []).

get_engine_status(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/status"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the status of a specified Gremlin query.
get_gremlin_query_status(Client, QueryId)
  when is_map(Client) ->
    get_gremlin_query_status(Client, QueryId, #{}, #{}).

get_gremlin_query_status(Client, QueryId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_gremlin_query_status(Client, QueryId, QueryMap, HeadersMap, []).

get_gremlin_query_status(Client, QueryId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/gremlin/status/", aws_util:encode_uri(QueryId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a specified data processing job.
%%
%% See The `dataprocessing' command.
get_ml_data_processing_job(Client, Id)
  when is_map(Client) ->
    get_ml_data_processing_job(Client, Id, #{}, #{}).

get_ml_data_processing_job(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ml_data_processing_job(Client, Id, QueryMap, HeadersMap, []).

get_ml_data_processing_job(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ml/dataprocessing/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"neptuneIamRoleArn">>, maps:get(<<"neptuneIamRoleArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details about an inference endpoint.
%%
%% See Managing inference endpoints using the endpoints command.
get_ml_endpoint(Client, Id)
  when is_map(Client) ->
    get_ml_endpoint(Client, Id, #{}, #{}).

get_ml_endpoint(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ml_endpoint(Client, Id, QueryMap, HeadersMap, []).

get_ml_endpoint(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ml/endpoints/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"neptuneIamRoleArn">>, maps:get(<<"neptuneIamRoleArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a Neptune ML model training job.
%%
%% See Model training using the `modeltraining' command.
get_ml_model_training_job(Client, Id)
  when is_map(Client) ->
    get_ml_model_training_job(Client, Id, #{}, #{}).

get_ml_model_training_job(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ml_model_training_job(Client, Id, QueryMap, HeadersMap, []).

get_ml_model_training_job(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ml/modeltraining/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"neptuneIamRoleArn">>, maps:get(<<"neptuneIamRoleArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a specified model transform job.
%%
%% See Use a trained model to generate new model artifacts.
get_ml_model_transform_job(Client, Id)
  when is_map(Client) ->
    get_ml_model_transform_job(Client, Id, #{}, #{}).

get_ml_model_transform_job(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ml_model_transform_job(Client, Id, QueryMap, HeadersMap, []).

get_ml_model_transform_job(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ml/modeltransform/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"neptuneIamRoleArn">>, maps:get(<<"neptuneIamRoleArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the status of a specified openCypher query.
get_open_cypher_query_status(Client, QueryId)
  when is_map(Client) ->
    get_open_cypher_query_status(Client, QueryId, #{}, #{}).

get_open_cypher_query_status(Client, QueryId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_open_cypher_query_status(Client, QueryId, QueryMap, HeadersMap, []).

get_open_cypher_query_status(Client, QueryId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/opencypher/status/", aws_util:encode_uri(QueryId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets property graph statistics (Gremlin and openCypher).
get_propertygraph_statistics(Client)
  when is_map(Client) ->
    get_propertygraph_statistics(Client, #{}, #{}).

get_propertygraph_statistics(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_propertygraph_statistics(Client, QueryMap, HeadersMap, []).

get_propertygraph_statistics(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/propertygraph/statistics"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a graph summary for a property graph.
get_propertygraph_summary(Client)
  when is_map(Client) ->
    get_propertygraph_summary(Client, #{}, #{}).

get_propertygraph_summary(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_propertygraph_summary(Client, QueryMap, HeadersMap, []).

get_propertygraph_summary(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/propertygraph/statistics/summary"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"mode">>, maps:get(<<"mode">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a graph summary for an RDF graph.
get_r_d_f_graph_summary(Client)
  when is_map(Client) ->
    get_r_d_f_graph_summary(Client, #{}, #{}).

get_r_d_f_graph_summary(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_r_d_f_graph_summary(Client, QueryMap, HeadersMap, []).

get_r_d_f_graph_summary(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rdf/statistics/summary"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"mode">>, maps:get(<<"mode">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets RDF statistics (SPARQL).
get_sparql_statistics(Client)
  when is_map(Client) ->
    get_sparql_statistics(Client, #{}, #{}).

get_sparql_statistics(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sparql_statistics(Client, QueryMap, HeadersMap, []).

get_sparql_statistics(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sparql/statistics"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a stream for an RDF graph.
%%
%% With the Neptune Streams feature, you can generate a complete sequence of
%% change-log entries that record every change made to your graph data as it
%% happens. `GetSparqlStream' lets you collect these change-log entries
%% for an RDF graph.
%%
%% The Neptune streams feature needs to be enabled on your Neptune DBcluster.
%% To enable streams, set the neptune_streams DB cluster parameter to
%% `1'.
%%
%% See Capturing graph changes in real time using Neptune streams.
get_sparql_stream(Client)
  when is_map(Client) ->
    get_sparql_stream(Client, #{}, #{}).

get_sparql_stream(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sparql_stream(Client, QueryMap, HeadersMap, []).

get_sparql_stream(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sparql/stream"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers0 =
      [
        {<<"Accept-Encoding">>, maps:get(<<"Accept-Encoding">>, HeadersMap, undefined)}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query0_ =
      [
        {<<"commitNum">>, maps:get(<<"commitNum">>, QueryMap, undefined)},
        {<<"iteratorType">>, maps:get(<<"iteratorType">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)},
        {<<"opNum">>, maps:get(<<"opNum">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists active Gremlin queries.
%%
%% See Gremlin query status API for details about the output.
list_gremlin_queries(Client)
  when is_map(Client) ->
    list_gremlin_queries(Client, #{}, #{}).

list_gremlin_queries(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_gremlin_queries(Client, QueryMap, HeadersMap, []).

list_gremlin_queries(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/gremlin/status"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"includeWaiting">>, maps:get(<<"includeWaiting">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of the `loadIds' for all active loader jobs.
list_loader_jobs(Client)
  when is_map(Client) ->
    list_loader_jobs(Client, #{}, #{}).

list_loader_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_loader_jobs(Client, QueryMap, HeadersMap, []).

list_loader_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/loader"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"includeQueuedLoads">>, maps:get(<<"includeQueuedLoads">>, QueryMap, undefined)},
        {<<"limit">>, maps:get(<<"limit">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of Neptune ML data processing jobs.
%%
%% See Listing active data-processing jobs using the Neptune ML
%% dataprocessing command.
list_ml_data_processing_jobs(Client)
  when is_map(Client) ->
    list_ml_data_processing_jobs(Client, #{}, #{}).

list_ml_data_processing_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ml_data_processing_jobs(Client, QueryMap, HeadersMap, []).

list_ml_data_processing_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ml/dataprocessing"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxItems">>, maps:get(<<"maxItems">>, QueryMap, undefined)},
        {<<"neptuneIamRoleArn">>, maps:get(<<"neptuneIamRoleArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists existing inference endpoints.
%%
%% See Managing inference endpoints using the endpoints command.
list_ml_endpoints(Client)
  when is_map(Client) ->
    list_ml_endpoints(Client, #{}, #{}).

list_ml_endpoints(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ml_endpoints(Client, QueryMap, HeadersMap, []).

list_ml_endpoints(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ml/endpoints"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxItems">>, maps:get(<<"maxItems">>, QueryMap, undefined)},
        {<<"neptuneIamRoleArn">>, maps:get(<<"neptuneIamRoleArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Neptune ML model-training jobs.
%%
%% See Model training using the `modeltraining' command.
list_ml_model_training_jobs(Client)
  when is_map(Client) ->
    list_ml_model_training_jobs(Client, #{}, #{}).

list_ml_model_training_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ml_model_training_jobs(Client, QueryMap, HeadersMap, []).

list_ml_model_training_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ml/modeltraining"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxItems">>, maps:get(<<"maxItems">>, QueryMap, undefined)},
        {<<"neptuneIamRoleArn">>, maps:get(<<"neptuneIamRoleArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of model transform job IDs.
%%
%% See Use a trained model to generate new model artifacts.
list_ml_model_transform_jobs(Client)
  when is_map(Client) ->
    list_ml_model_transform_jobs(Client, #{}, #{}).

list_ml_model_transform_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ml_model_transform_jobs(Client, QueryMap, HeadersMap, []).

list_ml_model_transform_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ml/modeltransform"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxItems">>, maps:get(<<"maxItems">>, QueryMap, undefined)},
        {<<"neptuneIamRoleArn">>, maps:get(<<"neptuneIamRoleArn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists active openCypher queries.
%%
%% See Neptune openCypher status endpoint for more information.
list_open_cypher_queries(Client)
  when is_map(Client) ->
    list_open_cypher_queries(Client, #{}, #{}).

list_open_cypher_queries(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_open_cypher_queries(Client, QueryMap, HeadersMap, []).

list_open_cypher_queries(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/opencypher/status"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"includeWaiting">>, maps:get(<<"includeWaiting">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Manages the generation and use of property graph statistics.
manage_propertygraph_statistics(Client, Input) ->
    manage_propertygraph_statistics(Client, Input, []).
manage_propertygraph_statistics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/propertygraph/statistics"],
    SuccessStatusCode = 200,
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

%% @doc Manages the generation and use of RDF graph statistics.
manage_sparql_statistics(Client, Input) ->
    manage_sparql_statistics(Client, Input, []).
manage_sparql_statistics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sparql/statistics"],
    SuccessStatusCode = 200,
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

%% @doc Starts a Neptune bulk loader job to load data from an Amazon S3
%% bucket into a Neptune DB instance.
%%
%% See Using the Amazon Neptune Bulk Loader to Ingest Data.
start_loader_job(Client, Input) ->
    start_loader_job(Client, Input, []).
start_loader_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/loader"],
    SuccessStatusCode = 200,
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

%% @doc Creates a new Neptune ML data processing job for processing the graph
%% data exported from Neptune for training.
%%
%% See The `dataprocessing' command.
start_ml_data_processing_job(Client, Input) ->
    start_ml_data_processing_job(Client, Input, []).
start_ml_data_processing_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ml/dataprocessing"],
    SuccessStatusCode = 200,
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

%% @doc Creates a new Neptune ML model training job.
%%
%% See Model training using the `modeltraining' command.
start_ml_model_training_job(Client, Input) ->
    start_ml_model_training_job(Client, Input, []).
start_ml_model_training_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ml/modeltraining"],
    SuccessStatusCode = 200,
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

%% @doc Creates a new model transform job.
%%
%% See Use a trained model to generate new model artifacts.
start_ml_model_transform_job(Client, Input) ->
    start_ml_model_transform_job(Client, Input, []).
start_ml_model_transform_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ml/modeltransform"],
    SuccessStatusCode = 200,
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
    Client1 = Client#{service => <<"neptune-db">>},
    Host = build_host(<<"neptune-db">>, Client1),
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
