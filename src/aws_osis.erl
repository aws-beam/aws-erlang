%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Use the Amazon OpenSearch Ingestion API to create and manage
%% ingestion pipelines.
%%
%% OpenSearch Ingestion is a
%% fully managed data collector that delivers real-time log and trace data to
%% OpenSearch Service domains. For more information, see
%% Getting data into your cluster using OpenSearch Ingestion:
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



%% Example:
%% service_vpc_endpoint() :: #{
%%   <<"ServiceName">> => list(any()),
%%   <<"VpcEndpointId">> => string()
%% }
-type service_vpc_endpoint() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Arn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% get_pipeline_response() :: #{
%%   <<"Pipeline">> => pipeline()
%% }
-type get_pipeline_response() :: #{binary() => any()}.


%% Example:
%% list_pipelines_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Pipelines">> => list(pipeline_summary())
%% }
-type list_pipelines_response() :: #{binary() => any()}.


%% Example:
%% update_pipeline_response() :: #{
%%   <<"Pipeline">> => pipeline()
%% }
-type update_pipeline_response() :: #{binary() => any()}.


%% Example:
%% list_pipelines_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_pipelines_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% create_pipeline_response() :: #{
%%   <<"Pipeline">> => pipeline()
%% }
-type create_pipeline_response() :: #{binary() => any()}.


%% Example:
%% get_pipeline_change_progress_response() :: #{
%%   <<"ChangeProgressStatuses">> => list(change_progress_status())
%% }
-type get_pipeline_change_progress_response() :: #{binary() => any()}.


%% Example:
%% pipeline() :: #{
%%   <<"BufferOptions">> => buffer_options(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Destinations">> => list(pipeline_destination()),
%%   <<"EncryptionAtRestOptions">> => encryption_at_rest_options(),
%%   <<"IngestEndpointUrls">> => list(string()),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"LogPublishingOptions">> => log_publishing_options(),
%%   <<"MaxUnits">> => integer(),
%%   <<"MinUnits">> => integer(),
%%   <<"PipelineArn">> => string(),
%%   <<"PipelineConfigurationBody">> => string(),
%%   <<"PipelineName">> => string(),
%%   <<"ServiceVpcEndpoints">> => list(service_vpc_endpoint()),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => pipeline_status_reason(),
%%   <<"Tags">> => list(tag()),
%%   <<"VpcEndpointService">> => string(),
%%   <<"VpcEndpoints">> => list(vpc_endpoint())
%% }
-type pipeline() :: #{binary() => any()}.


%% Example:
%% start_pipeline_response() :: #{
%%   <<"Pipeline">> => pipeline()
%% }
-type start_pipeline_response() :: #{binary() => any()}.


%% Example:
%% disabled_operation_exception() :: #{
%%   <<"message">> => string()
%% }
-type disabled_operation_exception() :: #{binary() => any()}.


%% Example:
%% change_progress_status() :: #{
%%   <<"ChangeProgressStages">> => list(change_progress_stage()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"TotalNumberOfStages">> => integer()
%% }
-type change_progress_status() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"Arn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% cloud_watch_log_destination() :: #{
%%   <<"LogGroup">> => string()
%% }
-type cloud_watch_log_destination() :: #{binary() => any()}.

%% Example:
%% start_pipeline_request() :: #{}
-type start_pipeline_request() :: #{}.


%% Example:
%% buffer_options() :: #{
%%   <<"PersistentBufferEnabled">> => boolean()
%% }
-type buffer_options() :: #{binary() => any()}.

%% Example:
%% list_pipeline_blueprints_request() :: #{}
-type list_pipeline_blueprints_request() :: #{}.


%% Example:
%% list_pipeline_blueprints_response() :: #{
%%   <<"Blueprints">> => list(pipeline_blueprint_summary())
%% }
-type list_pipeline_blueprints_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% create_pipeline_request() :: #{
%%   <<"BufferOptions">> => buffer_options(),
%%   <<"EncryptionAtRestOptions">> => encryption_at_rest_options(),
%%   <<"LogPublishingOptions">> => log_publishing_options(),
%%   <<"MaxUnits">> := integer(),
%%   <<"MinUnits">> := integer(),
%%   <<"PipelineConfigurationBody">> := string(),
%%   <<"PipelineName">> := string(),
%%   <<"Tags">> => list(tag()),
%%   <<"VpcOptions">> => vpc_options()
%% }
-type create_pipeline_request() :: #{binary() => any()}.


%% Example:
%% update_pipeline_request() :: #{
%%   <<"BufferOptions">> => buffer_options(),
%%   <<"EncryptionAtRestOptions">> => encryption_at_rest_options(),
%%   <<"LogPublishingOptions">> => log_publishing_options(),
%%   <<"MaxUnits">> => integer(),
%%   <<"MinUnits">> => integer(),
%%   <<"PipelineConfigurationBody">> => string()
%% }
-type update_pipeline_request() :: #{binary() => any()}.


%% Example:
%% get_pipeline_blueprint_request() :: #{
%%   <<"Format">> => string()
%% }
-type get_pipeline_blueprint_request() :: #{binary() => any()}.

%% Example:
%% delete_pipeline_request() :: #{}
-type delete_pipeline_request() :: #{}.


%% Example:
%% get_pipeline_blueprint_response() :: #{
%%   <<"Blueprint">> => pipeline_blueprint(),
%%   <<"Format">> => string()
%% }
-type get_pipeline_blueprint_response() :: #{binary() => any()}.

%% Example:
%% get_pipeline_change_progress_request() :: #{}
-type get_pipeline_change_progress_request() :: #{}.


%% Example:
%% pipeline_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Destinations">> => list(pipeline_destination()),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"MaxUnits">> => integer(),
%%   <<"MinUnits">> => integer(),
%%   <<"PipelineArn">> => string(),
%%   <<"PipelineName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => pipeline_status_reason(),
%%   <<"Tags">> => list(tag())
%% }
-type pipeline_summary() :: #{binary() => any()}.


%% Example:
%% encryption_at_rest_options() :: #{
%%   <<"KmsKeyArn">> => string()
%% }
-type encryption_at_rest_options() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% vpc_endpoint() :: #{
%%   <<"VpcEndpointId">> => string(),
%%   <<"VpcId">> => string(),
%%   <<"VpcOptions">> => vpc_options()
%% }
-type vpc_endpoint() :: #{binary() => any()}.


%% Example:
%% pipeline_blueprint() :: #{
%%   <<"BlueprintName">> => string(),
%%   <<"DisplayDescription">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"PipelineConfigurationBody">> => string(),
%%   <<"Service">> => string(),
%%   <<"UseCase">> => string()
%% }
-type pipeline_blueprint() :: #{binary() => any()}.


%% Example:
%% log_publishing_options() :: #{
%%   <<"CloudWatchLogDestination">> => cloud_watch_log_destination(),
%%   <<"IsLoggingEnabled">> => boolean()
%% }
-type log_publishing_options() :: #{binary() => any()}.


%% Example:
%% pipeline_blueprint_summary() :: #{
%%   <<"BlueprintName">> => string(),
%%   <<"DisplayDescription">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"Service">> => string(),
%%   <<"UseCase">> => string()
%% }
-type pipeline_blueprint_summary() :: #{binary() => any()}.

%% Example:
%% stop_pipeline_request() :: #{}
-type stop_pipeline_request() :: #{}.


%% Example:
%% change_progress_stage() :: #{
%%   <<"Description">> => string(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type change_progress_stage() :: #{binary() => any()}.


%% Example:
%% validation_message() :: #{
%%   <<"Message">> => string()
%% }
-type validation_message() :: #{binary() => any()}.


%% Example:
%% internal_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_exception() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% stop_pipeline_response() :: #{
%%   <<"Pipeline">> => pipeline()
%% }
-type stop_pipeline_response() :: #{binary() => any()}.


%% Example:
%% validate_pipeline_response() :: #{
%%   <<"Errors">> => list(validation_message()),
%%   <<"isValid">> => boolean()
%% }
-type validate_pipeline_response() :: #{binary() => any()}.

%% Example:
%% get_pipeline_request() :: #{}
-type get_pipeline_request() :: #{}.


%% Example:
%% pipeline_status_reason() :: #{
%%   <<"Description">> => string()
%% }
-type pipeline_status_reason() :: #{binary() => any()}.


%% Example:
%% pipeline_destination() :: #{
%%   <<"Endpoint">> => string(),
%%   <<"ServiceName">> => string()
%% }
-type pipeline_destination() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"Arn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% vpc_options() :: #{
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SubnetIds">> => list(string()),
%%   <<"VpcAttachmentOptions">> => vpc_attachment_options(),
%%   <<"VpcEndpointManagement">> => list(any())
%% }
-type vpc_options() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.


%% Example:
%% vpc_attachment_options() :: #{
%%   <<"AttachToVpc">> => boolean(),
%%   <<"CidrBlock">> => string()
%% }
-type vpc_attachment_options() :: #{binary() => any()}.


%% Example:
%% validate_pipeline_request() :: #{
%%   <<"PipelineConfigurationBody">> := string()
%% }
-type validate_pipeline_request() :: #{binary() => any()}.

%% Example:
%% delete_pipeline_response() :: #{}
-type delete_pipeline_response() :: #{}.


%% Example:
%% invalid_pagination_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_pagination_token_exception() :: #{binary() => any()}.

-type create_pipeline_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type delete_pipeline_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    disabled_operation_exception().

-type get_pipeline_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type get_pipeline_blueprint_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type get_pipeline_change_progress_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type list_pipeline_blueprints_errors() ::
    invalid_pagination_token_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    disabled_operation_exception().

-type list_pipelines_errors() ::
    invalid_pagination_token_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    disabled_operation_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type start_pipeline_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    disabled_operation_exception().

-type stop_pipeline_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    disabled_operation_exception().

-type tag_resource_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    disabled_operation_exception().

-type update_pipeline_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    disabled_operation_exception().

-type validate_pipeline_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_exception() | 
    disabled_operation_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an OpenSearch Ingestion pipeline.
%%
%% For more information, see Creating Amazon OpenSearch Ingestion pipelines:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html.
-spec create_pipeline(aws_client:aws_client(), create_pipeline_request()) ->
    {ok, create_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_pipeline_errors(), tuple()}.
create_pipeline(Client, Input) ->
    create_pipeline(Client, Input, []).

-spec create_pipeline(aws_client:aws_client(), create_pipeline_request(), proplists:proplist()) ->
    {ok, create_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_pipeline_errors(), tuple()}.
create_pipeline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2022-01-01/osis/createPipeline"],
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

%% @doc Deletes an OpenSearch Ingestion pipeline.
%%
%% For more information, see Deleting Amazon OpenSearch Ingestion pipelines:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/delete-pipeline.html.
-spec delete_pipeline(aws_client:aws_client(), binary() | list(), delete_pipeline_request()) ->
    {ok, delete_pipeline_response(), tuple()} |
    {error, any()} |
    {error, delete_pipeline_errors(), tuple()}.
delete_pipeline(Client, PipelineName, Input) ->
    delete_pipeline(Client, PipelineName, Input, []).

-spec delete_pipeline(aws_client:aws_client(), binary() | list(), delete_pipeline_request(), proplists:proplist()) ->
    {ok, delete_pipeline_response(), tuple()} |
    {error, any()} |
    {error, delete_pipeline_errors(), tuple()}.
delete_pipeline(Client, PipelineName, Input0, Options0) ->
    Method = delete,
    Path = ["/2022-01-01/osis/deletePipeline/", aws_util:encode_uri(PipelineName), ""],
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

%% @doc Retrieves information about an OpenSearch Ingestion pipeline.
-spec get_pipeline(aws_client:aws_client(), binary() | list()) ->
    {ok, get_pipeline_response(), tuple()} |
    {error, any()} |
    {error, get_pipeline_errors(), tuple()}.
get_pipeline(Client, PipelineName)
  when is_map(Client) ->
    get_pipeline(Client, PipelineName, #{}, #{}).

-spec get_pipeline(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_pipeline_response(), tuple()} |
    {error, any()} |
    {error, get_pipeline_errors(), tuple()}.
get_pipeline(Client, PipelineName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_pipeline(Client, PipelineName, QueryMap, HeadersMap, []).

-spec get_pipeline(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_pipeline_response(), tuple()} |
    {error, any()} |
    {error, get_pipeline_errors(), tuple()}.
get_pipeline(Client, PipelineName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2022-01-01/osis/getPipeline/", aws_util:encode_uri(PipelineName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a specific blueprint for OpenSearch
%% Ingestion.
%%
%% Blueprints are
%% templates for the configuration needed for a `CreatePipeline' request.
%% For more
%% information, see Using
%% blueprints to create a pipeline:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#pipeline-blueprint.
-spec get_pipeline_blueprint(aws_client:aws_client(), binary() | list()) ->
    {ok, get_pipeline_blueprint_response(), tuple()} |
    {error, any()} |
    {error, get_pipeline_blueprint_errors(), tuple()}.
get_pipeline_blueprint(Client, BlueprintName)
  when is_map(Client) ->
    get_pipeline_blueprint(Client, BlueprintName, #{}, #{}).

-spec get_pipeline_blueprint(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_pipeline_blueprint_response(), tuple()} |
    {error, any()} |
    {error, get_pipeline_blueprint_errors(), tuple()}.
get_pipeline_blueprint(Client, BlueprintName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_pipeline_blueprint(Client, BlueprintName, QueryMap, HeadersMap, []).

-spec get_pipeline_blueprint(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_pipeline_blueprint_response(), tuple()} |
    {error, any()} |
    {error, get_pipeline_blueprint_errors(), tuple()}.
get_pipeline_blueprint(Client, BlueprintName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2022-01-01/osis/getPipelineBlueprint/", aws_util:encode_uri(BlueprintName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"format">>, maps:get(<<"format">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns progress information for the current change happening on an
%% OpenSearch Ingestion
%% pipeline.
%%
%% Currently, this operation only returns information when a pipeline is
%% being
%% created.
%%
%% For more information, see Tracking the status of pipeline creation:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#get-pipeline-progress.
-spec get_pipeline_change_progress(aws_client:aws_client(), binary() | list()) ->
    {ok, get_pipeline_change_progress_response(), tuple()} |
    {error, any()} |
    {error, get_pipeline_change_progress_errors(), tuple()}.
get_pipeline_change_progress(Client, PipelineName)
  when is_map(Client) ->
    get_pipeline_change_progress(Client, PipelineName, #{}, #{}).

-spec get_pipeline_change_progress(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_pipeline_change_progress_response(), tuple()} |
    {error, any()} |
    {error, get_pipeline_change_progress_errors(), tuple()}.
get_pipeline_change_progress(Client, PipelineName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_pipeline_change_progress(Client, PipelineName, QueryMap, HeadersMap, []).

-spec get_pipeline_change_progress(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_pipeline_change_progress_response(), tuple()} |
    {error, any()} |
    {error, get_pipeline_change_progress_errors(), tuple()}.
get_pipeline_change_progress(Client, PipelineName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2022-01-01/osis/getPipelineChangeProgress/", aws_util:encode_uri(PipelineName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of all available blueprints for Data Prepper.
%%
%% For more information, see
%% Using blueprints to create a pipeline:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#pipeline-blueprint.
-spec list_pipeline_blueprints(aws_client:aws_client(), list_pipeline_blueprints_request()) ->
    {ok, list_pipeline_blueprints_response(), tuple()} |
    {error, any()} |
    {error, list_pipeline_blueprints_errors(), tuple()}.
list_pipeline_blueprints(Client, Input) ->
    list_pipeline_blueprints(Client, Input, []).

-spec list_pipeline_blueprints(aws_client:aws_client(), list_pipeline_blueprints_request(), proplists:proplist()) ->
    {ok, list_pipeline_blueprints_response(), tuple()} |
    {error, any()} |
    {error, list_pipeline_blueprints_errors(), tuple()}.
list_pipeline_blueprints(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2022-01-01/osis/listPipelineBlueprints"],
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

%% @doc Lists all OpenSearch Ingestion pipelines in the current Amazon Web
%% Services account and Region.
%%
%% For
%% more information, see Viewing Amazon OpenSearch Ingestion pipelines:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/list-pipeline.html.
-spec list_pipelines(aws_client:aws_client()) ->
    {ok, list_pipelines_response(), tuple()} |
    {error, any()} |
    {error, list_pipelines_errors(), tuple()}.
list_pipelines(Client)
  when is_map(Client) ->
    list_pipelines(Client, #{}, #{}).

-spec list_pipelines(aws_client:aws_client(), map(), map()) ->
    {ok, list_pipelines_response(), tuple()} |
    {error, any()} |
    {error, list_pipelines_errors(), tuple()}.
list_pipelines(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_pipelines(Client, QueryMap, HeadersMap, []).

-spec list_pipelines(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_pipelines_response(), tuple()} |
    {error, any()} |
    {error, list_pipelines_errors(), tuple()}.
list_pipelines(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2022-01-01/osis/listPipelines"],
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

%% @doc Lists all resource tags associated with an OpenSearch Ingestion
%% pipeline.
%%
%% For more information,
%% see Tagging Amazon OpenSearch Ingestion pipelines:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Arn)
  when is_map(Client) ->
    list_tags_for_resource(Client, Arn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, Arn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2022-01-01/osis/listTagsForResource"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

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
-spec start_pipeline(aws_client:aws_client(), binary() | list(), start_pipeline_request()) ->
    {ok, start_pipeline_response(), tuple()} |
    {error, any()} |
    {error, start_pipeline_errors(), tuple()}.
start_pipeline(Client, PipelineName, Input) ->
    start_pipeline(Client, PipelineName, Input, []).

-spec start_pipeline(aws_client:aws_client(), binary() | list(), start_pipeline_request(), proplists:proplist()) ->
    {ok, start_pipeline_response(), tuple()} |
    {error, any()} |
    {error, start_pipeline_errors(), tuple()}.
start_pipeline(Client, PipelineName, Input0, Options0) ->
    Method = put,
    Path = ["/2022-01-01/osis/startPipeline/", aws_util:encode_uri(PipelineName), ""],
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

%% @doc Stops an OpenSearch Ingestion pipeline.
%%
%% For more information, see Stopping an OpenSearch Ingestion pipeline:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline--stop-start.html#pipeline--stop.
-spec stop_pipeline(aws_client:aws_client(), binary() | list(), stop_pipeline_request()) ->
    {ok, stop_pipeline_response(), tuple()} |
    {error, any()} |
    {error, stop_pipeline_errors(), tuple()}.
stop_pipeline(Client, PipelineName, Input) ->
    stop_pipeline(Client, PipelineName, Input, []).

-spec stop_pipeline(aws_client:aws_client(), binary() | list(), stop_pipeline_request(), proplists:proplist()) ->
    {ok, stop_pipeline_response(), tuple()} |
    {error, any()} |
    {error, stop_pipeline_errors(), tuple()}.
stop_pipeline(Client, PipelineName, Input0, Options0) ->
    Method = put,
    Path = ["/2022-01-01/osis/stopPipeline/", aws_util:encode_uri(PipelineName), ""],
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

%% @doc Tags an OpenSearch Ingestion pipeline.
%%
%% For more information, see Tagging Amazon OpenSearch Ingestion pipelines:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2022-01-01/osis/tagResource"],
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
                     {<<"arn">>, <<"Arn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes one or more tags from an OpenSearch Ingestion pipeline.
%%
%% For more information, see Tagging Amazon
%% OpenSearch Ingestion pipelines:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2022-01-01/osis/untagResource"],
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
                     {<<"arn">>, <<"Arn">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an OpenSearch Ingestion pipeline.
%%
%% For more information, see Updating Amazon OpenSearch Ingestion pipelines:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/update-pipeline.html.
-spec update_pipeline(aws_client:aws_client(), binary() | list(), update_pipeline_request()) ->
    {ok, update_pipeline_response(), tuple()} |
    {error, any()} |
    {error, update_pipeline_errors(), tuple()}.
update_pipeline(Client, PipelineName, Input) ->
    update_pipeline(Client, PipelineName, Input, []).

-spec update_pipeline(aws_client:aws_client(), binary() | list(), update_pipeline_request(), proplists:proplist()) ->
    {ok, update_pipeline_response(), tuple()} |
    {error, any()} |
    {error, update_pipeline_errors(), tuple()}.
update_pipeline(Client, PipelineName, Input0, Options0) ->
    Method = put,
    Path = ["/2022-01-01/osis/updatePipeline/", aws_util:encode_uri(PipelineName), ""],
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

%% @doc Checks whether an OpenSearch Ingestion pipeline configuration is
%% valid prior to creation.
%%
%% For
%% more information, see Creating Amazon OpenSearch
%% Ingestion pipelines:
%% https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html.
-spec validate_pipeline(aws_client:aws_client(), validate_pipeline_request()) ->
    {ok, validate_pipeline_response(), tuple()} |
    {error, any()} |
    {error, validate_pipeline_errors(), tuple()}.
validate_pipeline(Client, Input) ->
    validate_pipeline(Client, Input, []).

-spec validate_pipeline(aws_client:aws_client(), validate_pipeline_request(), proplists:proplist()) ->
    {ok, validate_pipeline_response(), tuple()} |
    {error, any()} |
    {error, validate_pipeline_errors(), tuple()}.
validate_pipeline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2022-01-01/osis/validatePipeline"],
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
