%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Describes the API operations for creating and managing Amazon Bedrock
%% models.
-module(aws_bedrock).

-export([create_model_customization_job/2,
         create_model_customization_job/3,
         create_provisioned_model_throughput/2,
         create_provisioned_model_throughput/3,
         delete_custom_model/3,
         delete_custom_model/4,
         delete_model_invocation_logging_configuration/2,
         delete_model_invocation_logging_configuration/3,
         delete_provisioned_model_throughput/3,
         delete_provisioned_model_throughput/4,
         get_custom_model/2,
         get_custom_model/4,
         get_custom_model/5,
         get_foundation_model/2,
         get_foundation_model/4,
         get_foundation_model/5,
         get_model_customization_job/2,
         get_model_customization_job/4,
         get_model_customization_job/5,
         get_model_invocation_logging_configuration/1,
         get_model_invocation_logging_configuration/3,
         get_model_invocation_logging_configuration/4,
         get_provisioned_model_throughput/2,
         get_provisioned_model_throughput/4,
         get_provisioned_model_throughput/5,
         list_custom_models/1,
         list_custom_models/3,
         list_custom_models/4,
         list_foundation_models/1,
         list_foundation_models/3,
         list_foundation_models/4,
         list_model_customization_jobs/1,
         list_model_customization_jobs/3,
         list_model_customization_jobs/4,
         list_provisioned_model_throughputs/1,
         list_provisioned_model_throughputs/3,
         list_provisioned_model_throughputs/4,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_model_invocation_logging_configuration/2,
         put_model_invocation_logging_configuration/3,
         stop_model_customization_job/3,
         stop_model_customization_job/4,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_provisioned_model_throughput/3,
         update_provisioned_model_throughput/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a fine-tuning job to customize a base model.
%%
%% You specify the base foundation model and the location of the training
%% data.
%% After the model-customization job completes successfully, your custom
%% model resource will be ready to use. Training data
%% contains input and output text for each record in a JSONL format.
%% Optionally, you can specify validation data
%% in the same format as the training data. Amazon Bedrock returns validation
%% loss metrics and output generations
%% after the job completes.
%%
%% Model-customization jobs are asynchronous and the completion time depends
%% on the base model and the training/validation data size.
%% To monitor a job, use the `GetModelCustomizationJob' operation to
%% retrieve the job status.
%%
%% For more information, see Custom models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html in
%% the Bedrock User Guide.
create_model_customization_job(Client, Input) ->
    create_model_customization_job(Client, Input, []).
create_model_customization_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/model-customization-jobs"],
    SuccessStatusCode = 201,
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

%% @doc Creates a provisioned throughput with dedicated capacity for a
%% foundation model or a fine-tuned model.
%%
%% For more information, see Provisioned throughput:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
%% in the Bedrock User Guide.
create_provisioned_model_throughput(Client, Input) ->
    create_provisioned_model_throughput(Client, Input, []).
create_provisioned_model_throughput(Client, Input0, Options0) ->
    Method = post,
    Path = ["/provisioned-model-throughput"],
    SuccessStatusCode = 201,
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

%% @doc Deletes a custom model that you created earlier.
%%
%% For more information, see Custom models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html in
%% the Bedrock User Guide.
delete_custom_model(Client, ModelIdentifier, Input) ->
    delete_custom_model(Client, ModelIdentifier, Input, []).
delete_custom_model(Client, ModelIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/custom-models/", aws_util:encode_uri(ModelIdentifier), ""],
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

%% @doc Delete the invocation logging.
delete_model_invocation_logging_configuration(Client, Input) ->
    delete_model_invocation_logging_configuration(Client, Input, []).
delete_model_invocation_logging_configuration(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/logging/modelinvocations"],
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

%% @doc Deletes a provisioned throughput.
%%
%% For more information, see Provisioned throughput:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
%% in the Bedrock User Guide.
delete_provisioned_model_throughput(Client, ProvisionedModelId, Input) ->
    delete_provisioned_model_throughput(Client, ProvisionedModelId, Input, []).
delete_provisioned_model_throughput(Client, ProvisionedModelId, Input0, Options0) ->
    Method = delete,
    Path = ["/provisioned-model-throughput/", aws_util:encode_uri(ProvisionedModelId), ""],
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

%% @doc Get the properties associated with a Amazon Bedrock custom model that
%% you have created.For more information, see Custom models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html in
%% the Bedrock User Guide.
get_custom_model(Client, ModelIdentifier)
  when is_map(Client) ->
    get_custom_model(Client, ModelIdentifier, #{}, #{}).

get_custom_model(Client, ModelIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_custom_model(Client, ModelIdentifier, QueryMap, HeadersMap, []).

get_custom_model(Client, ModelIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/custom-models/", aws_util:encode_uri(ModelIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get details about a Amazon Bedrock foundation model.
get_foundation_model(Client, ModelIdentifier)
  when is_map(Client) ->
    get_foundation_model(Client, ModelIdentifier, #{}, #{}).

get_foundation_model(Client, ModelIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_foundation_model(Client, ModelIdentifier, QueryMap, HeadersMap, []).

get_foundation_model(Client, ModelIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/foundation-models/", aws_util:encode_uri(ModelIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the properties associated with a model-customization job,
%% including the status of the job.
%%
%% For more information, see Custom models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html in
%% the Bedrock User Guide.
get_model_customization_job(Client, JobIdentifier)
  when is_map(Client) ->
    get_model_customization_job(Client, JobIdentifier, #{}, #{}).

get_model_customization_job(Client, JobIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_model_customization_job(Client, JobIdentifier, QueryMap, HeadersMap, []).

get_model_customization_job(Client, JobIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/model-customization-jobs/", aws_util:encode_uri(JobIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the current configuration values for model invocation logging.
get_model_invocation_logging_configuration(Client)
  when is_map(Client) ->
    get_model_invocation_logging_configuration(Client, #{}, #{}).

get_model_invocation_logging_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_model_invocation_logging_configuration(Client, QueryMap, HeadersMap, []).

get_model_invocation_logging_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/logging/modelinvocations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get details for a provisioned throughput.
%%
%% For more information, see Provisioned throughput:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
%% in the Bedrock User Guide.
get_provisioned_model_throughput(Client, ProvisionedModelId)
  when is_map(Client) ->
    get_provisioned_model_throughput(Client, ProvisionedModelId, #{}, #{}).

get_provisioned_model_throughput(Client, ProvisionedModelId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_provisioned_model_throughput(Client, ProvisionedModelId, QueryMap, HeadersMap, []).

get_provisioned_model_throughput(Client, ProvisionedModelId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/provisioned-model-throughput/", aws_util:encode_uri(ProvisionedModelId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the custom models that you have created with the
%% `CreateModelCustomizationJob' operation.
%%
%% For more information, see Custom models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html in
%% the Bedrock User Guide.
list_custom_models(Client)
  when is_map(Client) ->
    list_custom_models(Client, #{}, #{}).

list_custom_models(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_custom_models(Client, QueryMap, HeadersMap, []).

list_custom_models(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/custom-models"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"baseModelArnEquals">>, maps:get(<<"baseModelArnEquals">>, QueryMap, undefined)},
        {<<"creationTimeAfter">>, maps:get(<<"creationTimeAfter">>, QueryMap, undefined)},
        {<<"creationTimeBefore">>, maps:get(<<"creationTimeBefore">>, QueryMap, undefined)},
        {<<"foundationModelArnEquals">>, maps:get(<<"foundationModelArnEquals">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nameContains">>, maps:get(<<"nameContains">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List of Amazon Bedrock foundation models that you can use.
%%
%% For more information, see Foundation models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/foundation-models.html
%% in the Bedrock User Guide.
list_foundation_models(Client)
  when is_map(Client) ->
    list_foundation_models(Client, #{}, #{}).

list_foundation_models(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_foundation_models(Client, QueryMap, HeadersMap, []).

list_foundation_models(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/foundation-models"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"byCustomizationType">>, maps:get(<<"byCustomizationType">>, QueryMap, undefined)},
        {<<"byInferenceType">>, maps:get(<<"byInferenceType">>, QueryMap, undefined)},
        {<<"byOutputModality">>, maps:get(<<"byOutputModality">>, QueryMap, undefined)},
        {<<"byProvider">>, maps:get(<<"byProvider">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of model customization jobs that you have submitted.
%%
%% You can filter the jobs to return based on
%% one or more criteria.
%%
%% For more information, see Custom models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html in
%% the Bedrock User Guide.
list_model_customization_jobs(Client)
  when is_map(Client) ->
    list_model_customization_jobs(Client, #{}, #{}).

list_model_customization_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_model_customization_jobs(Client, QueryMap, HeadersMap, []).

list_model_customization_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/model-customization-jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"creationTimeAfter">>, maps:get(<<"creationTimeAfter">>, QueryMap, undefined)},
        {<<"creationTimeBefore">>, maps:get(<<"creationTimeBefore">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nameContains">>, maps:get(<<"nameContains">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)},
        {<<"statusEquals">>, maps:get(<<"statusEquals">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the provisioned capacities.
%%
%% For more information, see Provisioned throughput:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
%% in the Bedrock User Guide.
list_provisioned_model_throughputs(Client)
  when is_map(Client) ->
    list_provisioned_model_throughputs(Client, #{}, #{}).

list_provisioned_model_throughputs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_provisioned_model_throughputs(Client, QueryMap, HeadersMap, []).

list_provisioned_model_throughputs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/provisioned-model-throughputs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"creationTimeAfter">>, maps:get(<<"creationTimeAfter">>, QueryMap, undefined)},
        {<<"creationTimeBefore">>, maps:get(<<"creationTimeBefore">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"modelArnEquals">>, maps:get(<<"modelArnEquals">>, QueryMap, undefined)},
        {<<"nameContains">>, maps:get(<<"nameContains">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)},
        {<<"statusEquals">>, maps:get(<<"statusEquals">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the tags associated with the specified resource.
%%
%% For more information, see Tagging resources:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
%% in the Bedrock User Guide.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listTagsForResource"],
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

%% @doc Set the configuration values for model invocation logging.
put_model_invocation_logging_configuration(Client, Input) ->
    put_model_invocation_logging_configuration(Client, Input, []).
put_model_invocation_logging_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/logging/modelinvocations"],
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

%% @doc Stops an active model customization job.
%%
%% For more information, see Custom models:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models.html in
%% the Bedrock User Guide.
stop_model_customization_job(Client, JobIdentifier, Input) ->
    stop_model_customization_job(Client, JobIdentifier, Input, []).
stop_model_customization_job(Client, JobIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/model-customization-jobs/", aws_util:encode_uri(JobIdentifier), "/stop"],
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

%% @doc Associate tags with a resource.
%%
%% For more information, see Tagging resources:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
%% in the Bedrock User Guide.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tagResource"],
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

%% @doc Remove one or more tags from a resource.
%%
%% For more information, see Tagging resources:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
%% in the Bedrock User Guide.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/untagResource"],
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

%% @doc Update a provisioned throughput.
%%
%% For more information, see Provisioned throughput:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
%% in the Bedrock User Guide.
update_provisioned_model_throughput(Client, ProvisionedModelId, Input) ->
    update_provisioned_model_throughput(Client, ProvisionedModelId, Input, []).
update_provisioned_model_throughput(Client, ProvisionedModelId, Input0, Options0) ->
    Method = patch,
    Path = ["/provisioned-model-throughput/", aws_util:encode_uri(ProvisionedModelId), ""],
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

-spec proplists_take(any(), proplists:proplists(), any()) -> {any(), proplists:proplists()}.
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
    Client1 = Client#{service => <<"bedrock">>},
    Host = build_host(<<"bedrock">>, Client1),
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
