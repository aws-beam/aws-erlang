%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc Definition of the public APIs exposed by Amazon Machine Learning
-module(aws_machine_learning).

-export([add_tags/2,
         add_tags/3,
         create_batch_prediction/2,
         create_batch_prediction/3,
         create_data_source_from_r_d_s/2,
         create_data_source_from_r_d_s/3,
         create_data_source_from_redshift/2,
         create_data_source_from_redshift/3,
         create_data_source_from_s3/2,
         create_data_source_from_s3/3,
         create_evaluation/2,
         create_evaluation/3,
         create_m_l_model/2,
         create_m_l_model/3,
         create_realtime_endpoint/2,
         create_realtime_endpoint/3,
         delete_batch_prediction/2,
         delete_batch_prediction/3,
         delete_data_source/2,
         delete_data_source/3,
         delete_evaluation/2,
         delete_evaluation/3,
         delete_m_l_model/2,
         delete_m_l_model/3,
         delete_realtime_endpoint/2,
         delete_realtime_endpoint/3,
         delete_tags/2,
         delete_tags/3,
         describe_batch_predictions/2,
         describe_batch_predictions/3,
         describe_data_sources/2,
         describe_data_sources/3,
         describe_evaluations/2,
         describe_evaluations/3,
         describe_m_l_models/2,
         describe_m_l_models/3,
         describe_tags/2,
         describe_tags/3,
         get_batch_prediction/2,
         get_batch_prediction/3,
         get_data_source/2,
         get_data_source/3,
         get_evaluation/2,
         get_evaluation/3,
         get_m_l_model/2,
         get_m_l_model/3,
         predict/2,
         predict/3,
         update_batch_prediction/2,
         update_batch_prediction/3,
         update_data_source/2,
         update_data_source/3,
         update_evaluation/2,
         update_evaluation/3,
         update_m_l_model/2,
         update_m_l_model/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds one or more tags to an object, up to a limit of 10. Each tag
%% consists of a key and an optional value. If you add a tag using a key that
%% is already associated with the ML object, <code>AddTags</code> updates the
%% tag's value.
add_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags(Client, Input, []).
add_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTags">>, Input, Options).

%% @doc Generates predictions for a group of observations. The observations
%% to process exist in one or more data files referenced by a
%% <code>DataSource</code>. This operation creates a new
%% <code>BatchPrediction</code>, and uses an <code>MLModel</code> and the
%% data files referenced by the <code>DataSource</code> as information
%% sources.
%%
%% <code>CreateBatchPrediction</code> is an asynchronous operation. In
%% response to <code>CreateBatchPrediction</code>, Amazon Machine Learning
%% (Amazon ML) immediately returns and sets the <code>BatchPrediction</code>
%% status to <code>PENDING</code>. After the <code>BatchPrediction</code>
%% completes, Amazon ML sets the status to <code>COMPLETED</code>.
%%
%% You can poll for status updates by using the <a>GetBatchPrediction</a>
%% operation and checking the <code>Status</code> parameter of the result.
%% After the <code>COMPLETED</code> status appears, the results are available
%% in the location specified by the <code>OutputUri</code> parameter.
create_batch_prediction(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_batch_prediction(Client, Input, []).
create_batch_prediction(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBatchPrediction">>, Input, Options).

%% @doc Creates a <code>DataSource</code> object from an <a
%% href="http://aws.amazon.com/rds/"> Amazon Relational Database Service</a>
%% (Amazon RDS). A <code>DataSource</code> references data that can be used
%% to perform <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or
%% <code>CreateBatchPrediction</code> operations.
%%
%% <code>CreateDataSourceFromRDS</code> is an asynchronous operation. In
%% response to <code>CreateDataSourceFromRDS</code>, Amazon Machine Learning
%% (Amazon ML) immediately returns and sets the <code>DataSource</code>
%% status to <code>PENDING</code>. After the <code>DataSource</code> is
%% created and ready for use, Amazon ML sets the <code>Status</code>
%% parameter to <code>COMPLETED</code>. <code>DataSource</code> in the
%% <code>COMPLETED</code> or <code>PENDING</code> state can be used only to
%% perform <code>&gt;CreateMLModel</code>&gt;, <code>CreateEvaluation</code>,
%% or <code>CreateBatchPrediction</code> operations.
%%
%% If Amazon ML cannot accept the input source, it sets the
%% <code>Status</code> parameter to <code>FAILED</code> and includes an error
%% message in the <code>Message</code> attribute of the
%% <code>GetDataSource</code> operation response.
create_data_source_from_r_d_s(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_source_from_r_d_s(Client, Input, []).
create_data_source_from_r_d_s(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataSourceFromRDS">>, Input, Options).

%% @doc Creates a <code>DataSource</code> from a database hosted on an Amazon
%% Redshift cluster. A <code>DataSource</code> references data that can be
%% used to perform either <code>CreateMLModel</code>,
%% <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code>
%% operations.
%%
%% <code>CreateDataSourceFromRedshift</code> is an asynchronous operation. In
%% response to <code>CreateDataSourceFromRedshift</code>, Amazon Machine
%% Learning (Amazon ML) immediately returns and sets the
%% <code>DataSource</code> status to <code>PENDING</code>. After the
%% <code>DataSource</code> is created and ready for use, Amazon ML sets the
%% <code>Status</code> parameter to <code>COMPLETED</code>.
%% <code>DataSource</code> in <code>COMPLETED</code> or <code>PENDING</code>
%% states can be used to perform only <code>CreateMLModel</code>,
%% <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code>
%% operations.
%%
%% If Amazon ML can't accept the input source, it sets the
%% <code>Status</code> parameter to <code>FAILED</code> and includes an error
%% message in the <code>Message</code> attribute of the
%% <code>GetDataSource</code> operation response.
%%
%% The observations should be contained in the database hosted on an Amazon
%% Redshift cluster and should be specified by a <code>SelectSqlQuery</code>
%% query. Amazon ML executes an <code>Unload</code> command in Amazon
%% Redshift to transfer the result set of the <code>SelectSqlQuery</code>
%% query to <code>S3StagingLocation</code>.
%%
%% After the <code>DataSource</code> has been created, it's ready for use in
%% evaluations and batch predictions. If you plan to use the
%% <code>DataSource</code> to train an <code>MLModel</code>, the
%% <code>DataSource</code> also requires a recipe. A recipe describes how
%% each input variable will be used in training an <code>MLModel</code>. Will
%% the variable be included or excluded from training? Will the variable be
%% manipulated; for example, will it be combined with another variable or
%% will it be split apart into word combinations? The recipe provides answers
%% to these questions.
%%
%% <?oxy_insert_start author="laurama" timestamp="20160406T153842-0700">You
%% can't change an existing datasource, but you can copy and modify the
%% settings from an existing Amazon Redshift datasource to create a new
%% datasource. To do so, call <code>GetDataSource</code> for an existing
%% datasource and copy the values to a <code>CreateDataSource</code> call.
%% Change the settings that you want to change and make sure that all
%% required fields have the appropriate values.
%%
%% <?oxy_insert_end>
create_data_source_from_redshift(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_source_from_redshift(Client, Input, []).
create_data_source_from_redshift(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataSourceFromRedshift">>, Input, Options).

%% @doc Creates a <code>DataSource</code> object. A <code>DataSource</code>
%% references data that can be used to perform <code>CreateMLModel</code>,
%% <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code>
%% operations.
%%
%% <code>CreateDataSourceFromS3</code> is an asynchronous operation. In
%% response to <code>CreateDataSourceFromS3</code>, Amazon Machine Learning
%% (Amazon ML) immediately returns and sets the <code>DataSource</code>
%% status to <code>PENDING</code>. After the <code>DataSource</code> has been
%% created and is ready for use, Amazon ML sets the <code>Status</code>
%% parameter to <code>COMPLETED</code>. <code>DataSource</code> in the
%% <code>COMPLETED</code> or <code>PENDING</code> state can be used to
%% perform only <code>CreateMLModel</code>, <code>CreateEvaluation</code> or
%% <code>CreateBatchPrediction</code> operations.
%%
%% If Amazon ML can't accept the input source, it sets the
%% <code>Status</code> parameter to <code>FAILED</code> and includes an error
%% message in the <code>Message</code> attribute of the
%% <code>GetDataSource</code> operation response.
%%
%% The observation data used in a <code>DataSource</code> should be ready to
%% use; that is, it should have a consistent structure, and missing data
%% values should be kept to a minimum. The observation data must reside in
%% one or more .csv files in an Amazon Simple Storage Service (Amazon S3)
%% location, along with a schema that describes the data items by name and
%% type. The same schema must be used for all of the data files referenced by
%% the <code>DataSource</code>.
%%
%% After the <code>DataSource</code> has been created, it's ready to use in
%% evaluations and batch predictions. If you plan to use the
%% <code>DataSource</code> to train an <code>MLModel</code>, the
%% <code>DataSource</code> also needs a recipe. A recipe describes how each
%% input variable will be used in training an <code>MLModel</code>. Will the
%% variable be included or excluded from training? Will the variable be
%% manipulated; for example, will it be combined with another variable or
%% will it be split apart into word combinations? The recipe provides answers
%% to these questions.
create_data_source_from_s3(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_source_from_s3(Client, Input, []).
create_data_source_from_s3(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataSourceFromS3">>, Input, Options).

%% @doc Creates a new <code>Evaluation</code> of an <code>MLModel</code>. An
%% <code>MLModel</code> is evaluated on a set of observations associated to a
%% <code>DataSource</code>. Like a <code>DataSource</code> for an
%% <code>MLModel</code>, the <code>DataSource</code> for an
%% <code>Evaluation</code> contains values for the <code>Target
%% Variable</code>. The <code>Evaluation</code> compares the predicted result
%% for each observation to the actual outcome and provides a summary so that
%% you know how effective the <code>MLModel</code> functions on the test
%% data. Evaluation generates a relevant performance metric, such as
%% BinaryAUC, RegressionRMSE or MulticlassAvgFScore based on the
%% corresponding <code>MLModelType</code>: <code>BINARY</code>,
%% <code>REGRESSION</code> or <code>MULTICLASS</code>.
%%
%% <code>CreateEvaluation</code> is an asynchronous operation. In response to
%% <code>CreateEvaluation</code>, Amazon Machine Learning (Amazon ML)
%% immediately returns and sets the evaluation status to
%% <code>PENDING</code>. After the <code>Evaluation</code> is created and
%% ready for use, Amazon ML sets the status to <code>COMPLETED</code>.
%%
%% You can use the <code>GetEvaluation</code> operation to check progress of
%% the evaluation during the creation operation.
create_evaluation(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_evaluation(Client, Input, []).
create_evaluation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEvaluation">>, Input, Options).

%% @doc Creates a new <code>MLModel</code> using the <code>DataSource</code>
%% and the recipe as information sources.
%%
%% An <code>MLModel</code> is nearly immutable. Users can update only the
%% <code>MLModelName</code> and the <code>ScoreThreshold</code> in an
%% <code>MLModel</code> without creating a new <code>MLModel</code>.
%%
%% <code>CreateMLModel</code> is an asynchronous operation. In response to
%% <code>CreateMLModel</code>, Amazon Machine Learning (Amazon ML)
%% immediately returns and sets the <code>MLModel</code> status to
%% <code>PENDING</code>. After the <code>MLModel</code> has been created and
%% ready is for use, Amazon ML sets the status to <code>COMPLETED</code>.
%%
%% You can use the <code>GetMLModel</code> operation to check the progress of
%% the <code>MLModel</code> during the creation operation.
%%
%% <code>CreateMLModel</code> requires a <code>DataSource</code> with
%% computed statistics, which can be created by setting
%% <code>ComputeStatistics</code> to <code>true</code> in
%% <code>CreateDataSourceFromRDS</code>, <code>CreateDataSourceFromS3</code>,
%% or <code>CreateDataSourceFromRedshift</code> operations.
create_m_l_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_m_l_model(Client, Input, []).
create_m_l_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMLModel">>, Input, Options).

%% @doc Creates a real-time endpoint for the <code>MLModel</code>. The
%% endpoint contains the URI of the <code>MLModel</code>; that is, the
%% location to send real-time prediction requests for the specified
%% <code>MLModel</code>.
create_realtime_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_realtime_endpoint(Client, Input, []).
create_realtime_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRealtimeEndpoint">>, Input, Options).

%% @doc Assigns the DELETED status to a <code>BatchPrediction</code>,
%% rendering it unusable.
%%
%% After using the <code>DeleteBatchPrediction</code> operation, you can use
%% the <a>GetBatchPrediction</a> operation to verify that the status of the
%% <code>BatchPrediction</code> changed to DELETED.
%%
%% <b>Caution:</b> The result of the <code>DeleteBatchPrediction</code>
%% operation is irreversible.
delete_batch_prediction(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_batch_prediction(Client, Input, []).
delete_batch_prediction(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBatchPrediction">>, Input, Options).

%% @doc Assigns the DELETED status to a <code>DataSource</code>, rendering it
%% unusable.
%%
%% After using the <code>DeleteDataSource</code> operation, you can use the
%% <a>GetDataSource</a> operation to verify that the status of the
%% <code>DataSource</code> changed to DELETED.
%%
%% <b>Caution:</b> The results of the <code>DeleteDataSource</code> operation
%% are irreversible.
delete_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_data_source(Client, Input, []).
delete_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataSource">>, Input, Options).

%% @doc Assigns the <code>DELETED</code> status to an
%% <code>Evaluation</code>, rendering it unusable.
%%
%% After invoking the <code>DeleteEvaluation</code> operation, you can use
%% the <code>GetEvaluation</code> operation to verify that the status of the
%% <code>Evaluation</code> changed to <code>DELETED</code>.
%%
%% <caution><title>Caution</title> The results of the
%% <code>DeleteEvaluation</code> operation are irreversible.
%%
%% </caution>
delete_evaluation(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_evaluation(Client, Input, []).
delete_evaluation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEvaluation">>, Input, Options).

%% @doc Assigns the <code>DELETED</code> status to an <code>MLModel</code>,
%% rendering it unusable.
%%
%% After using the <code>DeleteMLModel</code> operation, you can use the
%% <code>GetMLModel</code> operation to verify that the status of the
%% <code>MLModel</code> changed to DELETED.
%%
%% <b>Caution:</b> The result of the <code>DeleteMLModel</code> operation is
%% irreversible.
delete_m_l_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_m_l_model(Client, Input, []).
delete_m_l_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMLModel">>, Input, Options).

%% @doc Deletes a real time endpoint of an <code>MLModel</code>.
delete_realtime_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_realtime_endpoint(Client, Input, []).
delete_realtime_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRealtimeEndpoint">>, Input, Options).

%% @doc Deletes the specified tags associated with an ML object. After this
%% operation is complete, you can't recover deleted tags.
%%
%% If you specify a tag that doesn't exist, Amazon ML ignores it.
delete_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tags(Client, Input, []).
delete_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTags">>, Input, Options).

%% @doc Returns a list of <code>BatchPrediction</code> operations that match
%% the search criteria in the request.
describe_batch_predictions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_batch_predictions(Client, Input, []).
describe_batch_predictions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBatchPredictions">>, Input, Options).

%% @doc Returns a list of <code>DataSource</code> that match the search
%% criteria in the request.
describe_data_sources(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_sources(Client, Input, []).
describe_data_sources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataSources">>, Input, Options).

%% @doc Returns a list of <code>DescribeEvaluations</code> that match the
%% search criteria in the request.
describe_evaluations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_evaluations(Client, Input, []).
describe_evaluations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvaluations">>, Input, Options).

%% @doc Returns a list of <code>MLModel</code> that match the search criteria
%% in the request.
describe_m_l_models(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_m_l_models(Client, Input, []).
describe_m_l_models(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMLModels">>, Input, Options).

%% @doc Describes one or more of the tags for your Amazon ML object.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc Returns a <code>BatchPrediction</code> that includes detailed
%% metadata, status, and data file information for a <code>Batch
%% Prediction</code> request.
get_batch_prediction(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_batch_prediction(Client, Input, []).
get_batch_prediction(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBatchPrediction">>, Input, Options).

%% @doc Returns a <code>DataSource</code> that includes metadata and data
%% file information, as well as the current status of the
%% <code>DataSource</code>.
%%
%% <code>GetDataSource</code> provides results in normal or verbose format.
%% The verbose format adds the schema description and the list of files
%% pointed to by the DataSource to the normal format.
get_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_source(Client, Input, []).
get_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataSource">>, Input, Options).

%% @doc Returns an <code>Evaluation</code> that includes metadata as well as
%% the current status of the <code>Evaluation</code>.
get_evaluation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_evaluation(Client, Input, []).
get_evaluation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEvaluation">>, Input, Options).

%% @doc Returns an <code>MLModel</code> that includes detailed metadata, data
%% source information, and the current status of the <code>MLModel</code>.
%%
%% <code>GetMLModel</code> provides results in normal or verbose format.
get_m_l_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_m_l_model(Client, Input, []).
get_m_l_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMLModel">>, Input, Options).

%% @doc Generates a prediction for the observation using the specified
%% <code>ML Model</code>.
%%
%% <note><title>Note</title> Not all response parameters will be populated.
%% Whether a response parameter is populated depends on the type of model
%% requested.
%%
%% </note>
predict(Client, Input)
  when is_map(Client), is_map(Input) ->
    predict(Client, Input, []).
predict(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Predict">>, Input, Options).

%% @doc Updates the <code>BatchPredictionName</code> of a
%% <code>BatchPrediction</code>.
%%
%% You can use the <code>GetBatchPrediction</code> operation to view the
%% contents of the updated data element.
update_batch_prediction(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_batch_prediction(Client, Input, []).
update_batch_prediction(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBatchPrediction">>, Input, Options).

%% @doc Updates the <code>DataSourceName</code> of a <code>DataSource</code>.
%%
%% You can use the <code>GetDataSource</code> operation to view the contents
%% of the updated data element.
update_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_data_source(Client, Input, []).
update_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDataSource">>, Input, Options).

%% @doc Updates the <code>EvaluationName</code> of an
%% <code>Evaluation</code>.
%%
%% You can use the <code>GetEvaluation</code> operation to view the contents
%% of the updated data element.
update_evaluation(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_evaluation(Client, Input, []).
update_evaluation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEvaluation">>, Input, Options).

%% @doc Updates the <code>MLModelName</code> and the
%% <code>ScoreThreshold</code> of an <code>MLModel</code>.
%%
%% You can use the <code>GetMLModel</code> operation to view the contents of
%% the updated data element.
update_m_l_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_m_l_model(Client, Input, []).
update_m_l_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMLModel">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"machinelearning">>},
    Host = get_host(<<"machinelearning">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"AmazonML_20141212.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    Exception = maps:get(<<"__type">>, Error, undefined),
    Reason = maps:get(<<"message">>, Error, undefined),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix,
			  <<".">>,
			  Region,
			  <<".">>,
			  Endpoint],
			 <<"">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>],
			 <<"">>).
