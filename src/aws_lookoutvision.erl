%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Amazon Lookout for Vision API Reference.
%%
%% It provides descriptions of actions, data types, common parameters, and
%% common errors.
%%
%% Amazon Lookout for Vision enables you to find visual defects in industrial
%% products, accurately and at scale. It uses computer vision to identify
%% missing components in an industrial product, damage to vehicles or
%% structures, irregularities in production lines, and even minuscule defects
%% in silicon wafers — or any other physical item where quality is important
%% such as a missing capacitor on printed circuit boards.
-module(aws_lookoutvision).

-export([create_dataset/3,
         create_dataset/4,
         create_model/3,
         create_model/4,
         create_project/2,
         create_project/3,
         delete_dataset/4,
         delete_dataset/5,
         delete_model/4,
         delete_model/5,
         delete_project/3,
         delete_project/4,
         describe_dataset/3,
         describe_dataset/5,
         describe_dataset/6,
         describe_model/3,
         describe_model/5,
         describe_model/6,
         describe_model_packaging_job/3,
         describe_model_packaging_job/5,
         describe_model_packaging_job/6,
         describe_project/2,
         describe_project/4,
         describe_project/5,
         detect_anomalies/4,
         detect_anomalies/5,
         list_dataset_entries/3,
         list_dataset_entries/5,
         list_dataset_entries/6,
         list_model_packaging_jobs/2,
         list_model_packaging_jobs/4,
         list_model_packaging_jobs/5,
         list_models/2,
         list_models/4,
         list_models/5,
         list_projects/1,
         list_projects/3,
         list_projects/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_model/4,
         start_model/5,
         start_model_packaging_job/3,
         start_model_packaging_job/4,
         stop_model/4,
         stop_model/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_dataset_entries/4,
         update_dataset_entries/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new dataset in an Amazon Lookout for Vision project.
%%
%% `CreateDataset' can create a training or a test dataset from a valid
%% dataset source (`DatasetSource').
%%
%% If you want a single dataset project, specify `train' for the value of
%% `DatasetType'.
%%
%% To have a project with separate training and test datasets, call
%% `CreateDataset' twice. On the first call, specify `train' for the value of
%% `DatasetType'. On the second call, specify `test' for the value of
%% `DatasetType'.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:CreateDataset' operation.
create_dataset(Client, ProjectName, Input) ->
    create_dataset(Client, ProjectName, Input, []).
create_dataset(Client, ProjectName, Input0, Options0) ->
    Method = post,
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/datasets"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new version of a model within an an Amazon Lookout for
%% Vision project.
%%
%% `CreateModel' is an asynchronous operation in which Amazon Lookout for
%% Vision trains, tests, and evaluates a new version of a model.
%%
%% To get the current status, check the `Status' field returned in the
%% response from `DescribeModel'.
%%
%% If the project has a single dataset, Amazon Lookout for Vision internally
%% splits the dataset to create a training and a test dataset. If the project
%% has a training and a test dataset, Lookout for Vision uses the respective
%% datasets to train and test the model.
%%
%% After training completes, the evaluation metrics are stored at the
%% location specified in `OutputConfig'.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:CreateModel' operation. If you want to tag your model, you
%% also require permission to the `lookoutvision:TagResource' operation.
create_model(Client, ProjectName, Input) ->
    create_model(Client, ProjectName, Input, []).
create_model(Client, ProjectName, Input0, Options0) ->
    Method = post,
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/models"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an empty Amazon Lookout for Vision project.
%%
%% After you create the project, add a dataset by calling `CreateDataset'.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:CreateProject' operation.
create_project(Client, Input) ->
    create_project(Client, Input, []).
create_project(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-11-20/projects"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing Amazon Lookout for Vision `dataset'.
%%
%% If your the project has a single dataset, you must create a new dataset
%% before you can create a model.
%%
%% If you project has a training dataset and a test dataset consider the
%% following.
%%
%% <ul> <li> If you delete the test dataset, your project reverts to a single
%% dataset project. If you then train the model, Amazon Lookout for Vision
%% internally splits the remaining dataset into a training and test dataset.
%%
%% </li> <li> If you delete the training dataset, you must create a training
%% dataset before you can create a model.
%%
%% </li> </ul> This operation requires permissions to perform the
%% `lookoutvision:DeleteDataset' operation.
delete_dataset(Client, DatasetType, ProjectName, Input) ->
    delete_dataset(Client, DatasetType, ProjectName, Input, []).
delete_dataset(Client, DatasetType, ProjectName, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/datasets/", aws_util:encode_uri(DatasetType), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Amazon Lookout for Vision model.
%%
%% You can't delete a running model. To stop a running model, use the
%% `StopModel' operation.
%%
%% It might take a few seconds to delete a model. To determine if a model has
%% been deleted, call `ListModels' and check if the version of the model
%% (`ModelVersion') is in the `Models' array.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:DeleteModel' operation.
delete_model(Client, ModelVersion, ProjectName, Input) ->
    delete_model(Client, ModelVersion, ProjectName, Input, []).
delete_model(Client, ModelVersion, ProjectName, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/models/", aws_util:encode_uri(ModelVersion), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Amazon Lookout for Vision project.
%%
%% To delete a project, you must first delete each version of the model
%% associated with the project. To delete a model use the `DeleteModel'
%% operation.
%%
%% You also have to delete the dataset(s) associated with the model. For more
%% information, see `DeleteDataset'. The images referenced by the training
%% and test datasets aren't deleted.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:DeleteProject' operation.
delete_project(Client, ProjectName, Input) ->
    delete_project(Client, ProjectName, Input, []).
delete_project(Client, ProjectName, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describe an Amazon Lookout for Vision dataset.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:DescribeDataset' operation.
describe_dataset(Client, DatasetType, ProjectName)
  when is_map(Client) ->
    describe_dataset(Client, DatasetType, ProjectName, #{}, #{}).

describe_dataset(Client, DatasetType, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dataset(Client, DatasetType, ProjectName, QueryMap, HeadersMap, []).

describe_dataset(Client, DatasetType, ProjectName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/datasets/", aws_util:encode_uri(DatasetType), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a version of an Amazon Lookout for Vision model.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:DescribeModel' operation.
describe_model(Client, ModelVersion, ProjectName)
  when is_map(Client) ->
    describe_model(Client, ModelVersion, ProjectName, #{}, #{}).

describe_model(Client, ModelVersion, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_model(Client, ModelVersion, ProjectName, QueryMap, HeadersMap, []).

describe_model(Client, ModelVersion, ProjectName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/models/", aws_util:encode_uri(ModelVersion), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an Amazon Lookout for Vision model packaging job.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:DescribeModelPackagingJob' operation.
%%
%% For more information, see Using your Amazon Lookout for Vision model on an
%% edge device in the Amazon Lookout for Vision Developer Guide.
describe_model_packaging_job(Client, JobName, ProjectName)
  when is_map(Client) ->
    describe_model_packaging_job(Client, JobName, ProjectName, #{}, #{}).

describe_model_packaging_job(Client, JobName, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_model_packaging_job(Client, JobName, ProjectName, QueryMap, HeadersMap, []).

describe_model_packaging_job(Client, JobName, ProjectName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/modelpackagingjobs/", aws_util:encode_uri(JobName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an Amazon Lookout for Vision project.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:DescribeProject' operation.
describe_project(Client, ProjectName)
  when is_map(Client) ->
    describe_project(Client, ProjectName, #{}, #{}).

describe_project(Client, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_project(Client, ProjectName, QueryMap, HeadersMap, []).

describe_project(Client, ProjectName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Detects anomalies in an image that you supply.
%%
%% The response from `DetectAnomalies' includes a boolean prediction that the
%% image contains one or more anomalies and a confidence value for the
%% prediction. If the model is an image segmentation model, the response also
%% includes segmentation information for each type of anomaly found in the
%% image.
%%
%% Before calling `DetectAnomalies', you must first start your model with the
%% `StartModel' operation. You are charged for the amount of time, in
%% minutes, that a model runs and for the number of anomaly detection units
%% that your model uses. If you are not using a model, use the `StopModel'
%% operation to stop your model.
%%
%% For more information, see Detecting anomalies in an image in the Amazon
%% Lookout for Vision developer guide.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:DetectAnomalies' operation.
detect_anomalies(Client, ModelVersion, ProjectName, Input) ->
    detect_anomalies(Client, ModelVersion, ProjectName, Input, []).
detect_anomalies(Client, ModelVersion, ProjectName, Input0, Options0) ->
    Method = post,
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/models/", aws_util:encode_uri(ModelVersion), "/detect"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, true},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"Content-Type">>, <<"ContentType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the JSON Lines within a dataset.
%%
%% An Amazon Lookout for Vision JSON Line contains the anomaly information
%% for a single image, including the image location and the assigned label.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:ListDatasetEntries' operation.
list_dataset_entries(Client, DatasetType, ProjectName)
  when is_map(Client) ->
    list_dataset_entries(Client, DatasetType, ProjectName, #{}, #{}).

list_dataset_entries(Client, DatasetType, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_dataset_entries(Client, DatasetType, ProjectName, QueryMap, HeadersMap, []).

list_dataset_entries(Client, DatasetType, ProjectName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/datasets/", aws_util:encode_uri(DatasetType), "/entries"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"createdAfter">>, maps:get(<<"createdAfter">>, QueryMap, undefined)},
        {<<"anomalyClass">>, maps:get(<<"anomalyClass">>, QueryMap, undefined)},
        {<<"createdBefore">>, maps:get(<<"createdBefore">>, QueryMap, undefined)},
        {<<"labeled">>, maps:get(<<"labeled">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sourceRefContains">>, maps:get(<<"sourceRefContains">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the model packaging jobs created for an Amazon Lookout for
%% Vision project.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:ListModelPackagingJobs' operation.
%%
%% For more information, see Using your Amazon Lookout for Vision model on an
%% edge device in the Amazon Lookout for Vision Developer Guide.
list_model_packaging_jobs(Client, ProjectName)
  when is_map(Client) ->
    list_model_packaging_jobs(Client, ProjectName, #{}, #{}).

list_model_packaging_jobs(Client, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_model_packaging_jobs(Client, ProjectName, QueryMap, HeadersMap, []).

list_model_packaging_jobs(Client, ProjectName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/modelpackagingjobs"],
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

%% @doc Lists the versions of a model in an Amazon Lookout for Vision
%% project.
%%
%% The `ListModels' operation is eventually consistent. Recent calls to
%% `CreateModel' might take a while to appear in the response from
%% `ListProjects'.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:ListModels' operation.
list_models(Client, ProjectName)
  when is_map(Client) ->
    list_models(Client, ProjectName, #{}, #{}).

list_models(Client, ProjectName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_models(Client, ProjectName, QueryMap, HeadersMap, []).

list_models(Client, ProjectName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/models"],
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

%% @doc Lists the Amazon Lookout for Vision projects in your AWS account that
%% are in the AWS Region in which you call `ListProjects'.
%%
%% The `ListProjects' operation is eventually consistent. Recent calls to
%% `CreateProject' and `DeleteProject' might take a while to appear in the
%% response from `ListProjects'.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:ListProjects' operation.
list_projects(Client)
  when is_map(Client) ->
    list_projects(Client, #{}, #{}).

list_projects(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_projects(Client, QueryMap, HeadersMap, []).

list_projects(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-11-20/projects"],
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

%% @doc Returns a list of tags attached to the specified Amazon Lookout for
%% Vision model.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:ListTagsForResource' operation.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-11-20/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts the running of the version of an Amazon Lookout for Vision
%% model.
%%
%% Starting a model takes a while to complete. To check the current state of
%% the model, use `DescribeModel'.
%%
%% A model is ready to use when its status is `HOSTED'.
%%
%% Once the model is running, you can detect custom labels in new images by
%% calling `DetectAnomalies'.
%%
%% You are charged for the amount of time that the model is running. To stop
%% a running model, call `StopModel'.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:StartModel' operation.
start_model(Client, ModelVersion, ProjectName, Input) ->
    start_model(Client, ModelVersion, ProjectName, Input, []).
start_model(Client, ModelVersion, ProjectName, Input0, Options0) ->
    Method = post,
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/models/", aws_util:encode_uri(ModelVersion), "/start"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts an Amazon Lookout for Vision model packaging job.
%%
%% A model packaging job creates an AWS IoT Greengrass component for a
%% Lookout for Vision model. You can use the component to deploy your model
%% to an edge device managed by Greengrass.
%%
%% Use the `DescribeModelPackagingJob' API to determine the current status of
%% the job. The model packaging job is complete if the value of `Status' is
%% `SUCCEEDED'.
%%
%% To deploy the component to the target device, use the component name and
%% component version with the AWS IoT Greengrass CreateDeployment API.
%%
%% This operation requires the following permissions:
%%
%% <ul> <li> `lookoutvision:StartModelPackagingJob'
%%
%% </li> <li> `s3:PutObject'
%%
%% </li> <li> `s3:GetBucketLocation'
%%
%% </li> <li> `kms:GenerateDataKey'
%%
%% </li> <li> `greengrass:CreateComponentVersion'
%%
%% </li> <li> `greengrass:DescribeComponent'
%%
%% </li> <li> (Optional) `greengrass:TagResource'. Only required if you want
%% to tag the component.
%%
%% </li> </ul> For more information, see Using your Amazon Lookout for Vision
%% model on an edge device in the Amazon Lookout for Vision Developer Guide.
start_model_packaging_job(Client, ProjectName, Input) ->
    start_model_packaging_job(Client, ProjectName, Input, []).
start_model_packaging_job(Client, ProjectName, Input0, Options0) ->
    Method = post,
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/modelpackagingjobs"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stops the hosting of a running model.
%%
%% The operation might take a while to complete. To check the current status,
%% call `DescribeModel'.
%%
%% After the model hosting stops, the `Status' of the model is `TRAINED'.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:StopModel' operation.
stop_model(Client, ModelVersion, ProjectName, Input) ->
    stop_model(Client, ModelVersion, ProjectName, Input, []).
stop_model(Client, ModelVersion, ProjectName, Input0, Options0) ->
    Method = post,
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/models/", aws_util:encode_uri(ModelVersion), "/stop"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds one or more key-value tags to an Amazon Lookout for Vision
%% model.
%%
%% For more information, see Tagging a model in the Amazon Lookout for Vision
%% Developer Guide.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:TagResource' operation.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/2020-11-20/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes one or more tags from an Amazon Lookout for Vision model.
%%
%% For more information, see Tagging a model in the Amazon Lookout for Vision
%% Developer Guide.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:UntagResource' operation.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-11-20/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds or updates one or more JSON Line entries in a dataset.
%%
%% A JSON Line includes information about an image used for training or
%% testing an Amazon Lookout for Vision model.
%%
%% To update an existing JSON Line, use the `source-ref' field to identify
%% the JSON Line. The JSON line that you supply replaces the existing JSON
%% line. Any existing annotations that are not in the new JSON line are
%% removed from the dataset.
%%
%% For more information, see Defining JSON lines for anomaly classification
%% in the Amazon Lookout for Vision Developer Guide.
%%
%% The images you reference in the `source-ref' field of a JSON line, must be
%% in the same S3 bucket as the existing images in the dataset.
%%
%% Updating a dataset might take a while to complete. To check the current
%% status, call `DescribeDataset' and check the `Status' field in the
%% response.
%%
%% This operation requires permissions to perform the
%% `lookoutvision:UpdateDatasetEntries' operation.
update_dataset_entries(Client, DatasetType, ProjectName, Input) ->
    update_dataset_entries(Client, DatasetType, ProjectName, Input, []).
update_dataset_entries(Client, DatasetType, ProjectName, Input0, Options0) ->
    Method = patch,
    Path = ["/2020-11-20/projects/", aws_util:encode_uri(ProjectName), "/datasets/", aws_util:encode_uri(DatasetType), "/entries"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amzn-Client-Token">>, <<"ClientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

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
    Client1 = Client#{service => <<"lookoutvision">>},
    Host = build_host(<<"lookoutvision">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

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
                       true -> jsx:decode(Body);
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
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
