%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Definition of the public APIs exposed by Amazon Machine Learning
-module(aws_machine_learning).

-export([add_tags/2,
         add_tags/3,
         create_batch_prediction/2,
         create_batch_prediction/3,
         create_data_source_from_rds/2,
         create_data_source_from_rds/3,
         create_data_source_from_redshift/2,
         create_data_source_from_redshift/3,
         create_data_source_from_s3/2,
         create_data_source_from_s3/3,
         create_evaluation/2,
         create_evaluation/3,
         create_ml_model/2,
         create_ml_model/3,
         create_realtime_endpoint/2,
         create_realtime_endpoint/3,
         delete_batch_prediction/2,
         delete_batch_prediction/3,
         delete_data_source/2,
         delete_data_source/3,
         delete_evaluation/2,
         delete_evaluation/3,
         delete_ml_model/2,
         delete_ml_model/3,
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
         describe_ml_models/2,
         describe_ml_models/3,
         describe_tags/2,
         describe_tags/3,
         get_batch_prediction/2,
         get_batch_prediction/3,
         get_data_source/2,
         get_data_source/3,
         get_evaluation/2,
         get_evaluation/3,
         get_ml_model/2,
         get_ml_model/3,
         predict/2,
         predict/3,
         update_batch_prediction/2,
         update_batch_prediction/3,
         update_data_source/2,
         update_data_source/3,
         update_evaluation/2,
         update_evaluation/3,
         update_ml_model/2,
         update_ml_model/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds one or more tags to an object, up to a limit of 10.
%%
%% Each tag consists of a key and an optional value. If you add a tag using a
%% key that is already associated with the ML object, `AddTags' updates
%% the tag's value.
add_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags(Client, Input, []).
add_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTags">>, Input, Options).

%% @doc Generates predictions for a group of observations.
%%
%% The observations to process exist in one or more data files referenced by
%% a `DataSource'. This operation creates a new `BatchPrediction',
%% and uses an `MLModel' and the data files referenced by the
%% `DataSource' as information sources.
%%
%% `CreateBatchPrediction' is an asynchronous operation. In response to
%% `CreateBatchPrediction', Amazon Machine Learning (Amazon ML)
%% immediately returns and sets the `BatchPrediction' status to
%% `PENDING'. After the `BatchPrediction' completes, Amazon ML sets
%% the status to `COMPLETED'.
%%
%% You can poll for status updates by using the `GetBatchPrediction'
%% operation and checking the `Status' parameter of the result. After the
%% `COMPLETED' status appears, the results are available in the location
%% specified by the `OutputUri' parameter.
create_batch_prediction(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_batch_prediction(Client, Input, []).
create_batch_prediction(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBatchPrediction">>, Input, Options).

%% @doc Creates a `DataSource' object from an Amazon Relational Database
%% Service: http://aws.amazon.com/rds/ (Amazon RDS).
%%
%% A `DataSource' references data that can be used to perform
%% `CreateMLModel', `CreateEvaluation', or
%% `CreateBatchPrediction' operations.
%%
%% `CreateDataSourceFromRDS' is an asynchronous operation. In response to
%% `CreateDataSourceFromRDS', Amazon Machine Learning (Amazon ML)
%% immediately returns and sets the `DataSource' status to `PENDING'.
%% After the `DataSource' is created and ready for use, Amazon ML sets
%% the `Status' parameter to `COMPLETED'. `DataSource' in the
%% `COMPLETED' or `PENDING' state can be used only to perform
%% `&gt;CreateMLModel'&gt;, `CreateEvaluation', or
%% `CreateBatchPrediction' operations.
%%
%% If Amazon ML cannot accept the input source, it sets the `Status'
%% parameter to `FAILED' and includes an error message in the
%% `Message' attribute of the `GetDataSource' operation response.
create_data_source_from_rds(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_source_from_rds(Client, Input, []).
create_data_source_from_rds(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataSourceFromRDS">>, Input, Options).

%% @doc Creates a `DataSource' from a database hosted on an Amazon
%% Redshift cluster.
%%
%% A `DataSource' references data that can be used to perform either
%% `CreateMLModel', `CreateEvaluation', or
%% `CreateBatchPrediction' operations.
%%
%% `CreateDataSourceFromRedshift' is an asynchronous operation. In
%% response to `CreateDataSourceFromRedshift', Amazon Machine Learning
%% (Amazon ML) immediately returns and sets the `DataSource' status to
%% `PENDING'. After the `DataSource' is created and ready for use,
%% Amazon ML sets the `Status' parameter to `COMPLETED'.
%% `DataSource' in `COMPLETED' or `PENDING' states can be used to
%% perform only `CreateMLModel', `CreateEvaluation', or
%% `CreateBatchPrediction' operations.
%%
%% If Amazon ML can't accept the input source, it sets the `Status'
%% parameter to `FAILED' and includes an error message in the
%% `Message' attribute of the `GetDataSource' operation response.
%%
%% The observations should be contained in the database hosted on an Amazon
%% Redshift cluster and should be specified by a `SelectSqlQuery' query.
%% Amazon ML executes an `Unload' command in Amazon Redshift to transfer
%% the result set of the `SelectSqlQuery' query to
%% `S3StagingLocation'.
%%
%% After the `DataSource' has been created, it's ready for use in
%% evaluations and batch predictions. If you plan to use the `DataSource'
%% to train an `MLModel', the `DataSource' also requires a recipe. A
%% recipe describes how each input variable will be used in training an
%% `MLModel'. Will the variable be included or excluded from training?
%% Will the variable be manipulated; for example, will it be combined with
%% another variable or will it be split apart into word combinations? The
%% recipe provides answers to these questions.
%%
%% You can't change an existing datasource, but you can copy and modify
%% the settings from an existing Amazon Redshift datasource to create a new
%% datasource. To do so, call `GetDataSource' for an existing datasource
%% and copy the values to a `CreateDataSource' call. Change the settings
%% that you want to change and make sure that all required fields have the
%% appropriate values.
create_data_source_from_redshift(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_source_from_redshift(Client, Input, []).
create_data_source_from_redshift(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataSourceFromRedshift">>, Input, Options).

%% @doc Creates a `DataSource' object.
%%
%% A `DataSource' references data that can be used to perform
%% `CreateMLModel', `CreateEvaluation', or
%% `CreateBatchPrediction' operations.
%%
%% `CreateDataSourceFromS3' is an asynchronous operation. In response to
%% `CreateDataSourceFromS3', Amazon Machine Learning (Amazon ML)
%% immediately returns and sets the `DataSource' status to `PENDING'.
%% After the `DataSource' has been created and is ready for use, Amazon
%% ML sets the `Status' parameter to `COMPLETED'. `DataSource' in
%% the `COMPLETED' or `PENDING' state can be used to perform only
%% `CreateMLModel', `CreateEvaluation' or `CreateBatchPrediction'
%% operations.
%%
%% If Amazon ML can't accept the input source, it sets the `Status'
%% parameter to `FAILED' and includes an error message in the
%% `Message' attribute of the `GetDataSource' operation response.
%%
%% The observation data used in a `DataSource' should be ready to use;
%% that is, it should have a consistent structure, and missing data values
%% should be kept to a minimum. The observation data must reside in one or
%% more .csv files in an Amazon Simple Storage Service (Amazon S3) location,
%% along with a schema that describes the data items by name and type. The
%% same schema must be used for all of the data files referenced by the
%% `DataSource'.
%%
%% After the `DataSource' has been created, it's ready to use in
%% evaluations and batch predictions. If you plan to use the `DataSource'
%% to train an `MLModel', the `DataSource' also needs a recipe. A
%% recipe describes how each input variable will be used in training an
%% `MLModel'. Will the variable be included or excluded from training?
%% Will the variable be manipulated; for example, will it be combined with
%% another variable or will it be split apart into word combinations? The
%% recipe provides answers to these questions.
create_data_source_from_s3(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_source_from_s3(Client, Input, []).
create_data_source_from_s3(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataSourceFromS3">>, Input, Options).

%% @doc Creates a new `Evaluation' of an `MLModel'.
%%
%% An `MLModel' is evaluated on a set of observations associated to a
%% `DataSource'. Like a `DataSource' for an `MLModel', the
%% `DataSource' for an `Evaluation' contains values for the `Target
%% Variable'. The `Evaluation' compares the predicted result for each
%% observation to the actual outcome and provides a summary so that you know
%% how effective the `MLModel' functions on the test data. Evaluation
%% generates a relevant performance metric, such as BinaryAUC, RegressionRMSE
%% or MulticlassAvgFScore based on the corresponding `MLModelType':
%% `BINARY', `REGRESSION' or `MULTICLASS'.
%%
%% `CreateEvaluation' is an asynchronous operation. In response to
%% `CreateEvaluation', Amazon Machine Learning (Amazon ML) immediately
%% returns and sets the evaluation status to `PENDING'. After the
%% `Evaluation' is created and ready for use, Amazon ML sets the status
%% to `COMPLETED'.
%%
%% You can use the `GetEvaluation' operation to check progress of the
%% evaluation during the creation operation.
create_evaluation(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_evaluation(Client, Input, []).
create_evaluation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEvaluation">>, Input, Options).

%% @doc Creates a new `MLModel' using the `DataSource' and the recipe
%% as information sources.
%%
%% An `MLModel' is nearly immutable. Users can update only the
%% `MLModelName' and the `ScoreThreshold' in an `MLModel' without
%% creating a new `MLModel'.
%%
%% `CreateMLModel' is an asynchronous operation. In response to
%% `CreateMLModel', Amazon Machine Learning (Amazon ML) immediately
%% returns and sets the `MLModel' status to `PENDING'. After the
%% `MLModel' has been created and ready is for use, Amazon ML sets the
%% status to `COMPLETED'.
%%
%% You can use the `GetMLModel' operation to check the progress of the
%% `MLModel' during the creation operation.
%%
%% `CreateMLModel' requires a `DataSource' with computed statistics,
%% which can be created by setting `ComputeStatistics' to `true' in
%% `CreateDataSourceFromRDS', `CreateDataSourceFromS3', or
%% `CreateDataSourceFromRedshift' operations.
create_ml_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_ml_model(Client, Input, []).
create_ml_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMLModel">>, Input, Options).

%% @doc Creates a real-time endpoint for the `MLModel'.
%%
%% The endpoint contains the URI of the `MLModel'; that is, the location
%% to send real-time prediction requests for the specified `MLModel'.
create_realtime_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_realtime_endpoint(Client, Input, []).
create_realtime_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRealtimeEndpoint">>, Input, Options).

%% @doc Assigns the DELETED status to a `BatchPrediction', rendering it
%% unusable.
%%
%% After using the `DeleteBatchPrediction' operation, you can use the
%% `GetBatchPrediction' operation to verify that the status of the
%% `BatchPrediction' changed to DELETED.
%%
%% Caution: The result of the `DeleteBatchPrediction' operation is
%% irreversible.
delete_batch_prediction(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_batch_prediction(Client, Input, []).
delete_batch_prediction(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBatchPrediction">>, Input, Options).

%% @doc Assigns the DELETED status to a `DataSource', rendering it
%% unusable.
%%
%% After using the `DeleteDataSource' operation, you can use the
%% `GetDataSource' operation to verify that the status of the
%% `DataSource' changed to DELETED.
%%
%% Caution: The results of the `DeleteDataSource' operation are
%% irreversible.
delete_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_data_source(Client, Input, []).
delete_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataSource">>, Input, Options).

%% @doc Assigns the `DELETED' status to an `Evaluation', rendering it
%% unusable.
%%
%% After invoking the `DeleteEvaluation' operation, you can use the
%% `GetEvaluation' operation to verify that the status of the
%% `Evaluation' changed to `DELETED'.
%%
%% Caution: The results of the `DeleteEvaluation' operation are
%% irreversible.
delete_evaluation(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_evaluation(Client, Input, []).
delete_evaluation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEvaluation">>, Input, Options).

%% @doc Assigns the `DELETED' status to an `MLModel', rendering it
%% unusable.
%%
%% After using the `DeleteMLModel' operation, you can use the
%% `GetMLModel' operation to verify that the status of the `MLModel'
%% changed to DELETED.
%%
%% Caution: The result of the `DeleteMLModel' operation is irreversible.
delete_ml_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ml_model(Client, Input, []).
delete_ml_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMLModel">>, Input, Options).

%% @doc Deletes a real time endpoint of an `MLModel'.
delete_realtime_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_realtime_endpoint(Client, Input, []).
delete_realtime_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRealtimeEndpoint">>, Input, Options).

%% @doc Deletes the specified tags associated with an ML object.
%%
%% After this operation is complete, you can't recover deleted tags.
%%
%% If you specify a tag that doesn't exist, Amazon ML ignores it.
delete_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tags(Client, Input, []).
delete_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTags">>, Input, Options).

%% @doc Returns a list of `BatchPrediction' operations that match the
%% search criteria in the request.
describe_batch_predictions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_batch_predictions(Client, Input, []).
describe_batch_predictions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBatchPredictions">>, Input, Options).

%% @doc Returns a list of `DataSource' that match the search criteria in
%% the request.
describe_data_sources(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_sources(Client, Input, []).
describe_data_sources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataSources">>, Input, Options).

%% @doc Returns a list of `DescribeEvaluations' that match the search
%% criteria in the request.
describe_evaluations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_evaluations(Client, Input, []).
describe_evaluations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvaluations">>, Input, Options).

%% @doc Returns a list of `MLModel' that match the search criteria in the
%% request.
describe_ml_models(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_ml_models(Client, Input, []).
describe_ml_models(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMLModels">>, Input, Options).

%% @doc Describes one or more of the tags for your Amazon ML object.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc Returns a `BatchPrediction' that includes detailed metadata,
%% status, and data file information for a `Batch Prediction' request.
get_batch_prediction(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_batch_prediction(Client, Input, []).
get_batch_prediction(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBatchPrediction">>, Input, Options).

%% @doc Returns a `DataSource' that includes metadata and data file
%% information, as well as the current status of the `DataSource'.
%%
%% `GetDataSource' provides results in normal or verbose format. The
%% verbose format adds the schema description and the list of files pointed
%% to by the DataSource to the normal format.
get_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_data_source(Client, Input, []).
get_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDataSource">>, Input, Options).

%% @doc Returns an `Evaluation' that includes metadata as well as the
%% current status of the `Evaluation'.
get_evaluation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_evaluation(Client, Input, []).
get_evaluation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEvaluation">>, Input, Options).

%% @doc Returns an `MLModel' that includes detailed metadata, data source
%% information, and the current status of the `MLModel'.
%%
%% `GetMLModel' provides results in normal or verbose format.
get_ml_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ml_model(Client, Input, []).
get_ml_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetMLModel">>, Input, Options).

%% @doc Generates a prediction for the observation using the specified `ML
%% Model'.
%%
%% Note: Not all response parameters will be populated. Whether a response
%% parameter is populated depends on the type of model requested.
predict(Client, Input)
  when is_map(Client), is_map(Input) ->
    predict(Client, Input, []).
predict(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Predict">>, Input, Options).

%% @doc Updates the `BatchPredictionName' of a `BatchPrediction'.
%%
%% You can use the `GetBatchPrediction' operation to view the contents of
%% the updated data element.
update_batch_prediction(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_batch_prediction(Client, Input, []).
update_batch_prediction(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBatchPrediction">>, Input, Options).

%% @doc Updates the `DataSourceName' of a `DataSource'.
%%
%% You can use the `GetDataSource' operation to view the contents of the
%% updated data element.
update_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_data_source(Client, Input, []).
update_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDataSource">>, Input, Options).

%% @doc Updates the `EvaluationName' of an `Evaluation'.
%%
%% You can use the `GetEvaluation' operation to view the contents of the
%% updated data element.
update_evaluation(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_evaluation(Client, Input, []).
update_evaluation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEvaluation">>, Input, Options).

%% @doc Updates the `MLModelName' and the `ScoreThreshold' of an
%% `MLModel'.
%%
%% You can use the `GetMLModel' operation to view the contents of the
%% updated data element.
update_ml_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_ml_model(Client, Input, []).
update_ml_model(Client, Input, Options)
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
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"machinelearning">>},
    Host = build_host(<<"machinelearning">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AmazonML_20141212.", Action/binary>>}
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
