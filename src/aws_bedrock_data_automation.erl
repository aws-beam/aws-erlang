%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Bedrock Data Automation BuildTime
-module(aws_bedrock_data_automation).

-export([create_blueprint/2,
         create_blueprint/3,
         create_blueprint_version/3,
         create_blueprint_version/4,
         create_data_automation_project/2,
         create_data_automation_project/3,
         delete_blueprint/3,
         delete_blueprint/4,
         delete_data_automation_project/3,
         delete_data_automation_project/4,
         get_blueprint/3,
         get_blueprint/4,
         get_data_automation_project/3,
         get_data_automation_project/4,
         list_blueprints/2,
         list_blueprints/3,
         list_data_automation_projects/2,
         list_data_automation_projects/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_blueprint/3,
         update_blueprint/4,
         update_data_automation_project/3,
         update_data_automation_project/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% create_blueprint_version_response() :: #{
%%   <<"blueprint">> => blueprint()
%% }
-type create_blueprint_version_response() :: #{binary() => any()}.


%% Example:
%% delete_data_automation_project_response() :: #{
%%   <<"projectArn">> => string(),
%%   <<"status">> => list(any())
%% }
-type delete_data_automation_project_response() :: #{binary() => any()}.


%% Example:
%% encryption_configuration() :: #{
%%   <<"kmsEncryptionContext">> => map(),
%%   <<"kmsKeyId">> => string()
%% }
-type encryption_configuration() :: #{binary() => any()}.


%% Example:
%% list_blueprints_request() :: #{
%%   <<"blueprintArn">> => string(),
%%   <<"blueprintStageFilter">> => list(any()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"projectFilter">> => data_automation_project_filter(),
%%   <<"resourceOwner">> => list(any())
%% }
-type list_blueprints_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceARN">> := string(),
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% video_standard_output_configuration() :: #{
%%   <<"extraction">> => video_standard_extraction(),
%%   <<"generativeField">> => video_standard_generative_field()
%% }
-type video_standard_output_configuration() :: #{binary() => any()}.


%% Example:
%% standard_output_configuration() :: #{
%%   <<"audio">> => audio_standard_output_configuration(),
%%   <<"document">> => document_standard_output_configuration(),
%%   <<"image">> => image_standard_output_configuration(),
%%   <<"video">> => video_standard_output_configuration()
%% }
-type standard_output_configuration() :: #{binary() => any()}.


%% Example:
%% image_override_configuration() :: #{
%%   <<"modalityProcessing">> => modality_processing_configuration()
%% }
-type image_override_configuration() :: #{binary() => any()}.


%% Example:
%% data_automation_project_summary() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"projectArn">> => string(),
%%   <<"projectName">> => string(),
%%   <<"projectStage">> => list(any())
%% }
-type data_automation_project_summary() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% blueprint_item() :: #{
%%   <<"blueprintArn">> => string(),
%%   <<"blueprintStage">> => list(any()),
%%   <<"blueprintVersion">> => string()
%% }
-type blueprint_item() :: #{binary() => any()}.


%% Example:
%% video_bounding_box() :: #{
%%   <<"state">> => list(any())
%% }
-type video_bounding_box() :: #{binary() => any()}.


%% Example:
%% update_blueprint_response() :: #{
%%   <<"blueprint">> => blueprint()
%% }
-type update_blueprint_response() :: #{binary() => any()}.


%% Example:
%% override_configuration() :: #{
%%   <<"audio">> => audio_override_configuration(),
%%   <<"document">> => document_override_configuration(),
%%   <<"image">> => image_override_configuration(),
%%   <<"modalityRouting">> => modality_routing_configuration(),
%%   <<"video">> => video_override_configuration()
%% }
-type override_configuration() :: #{binary() => any()}.


%% Example:
%% update_data_automation_project_request() :: #{
%%   <<"customOutputConfiguration">> => custom_output_configuration(),
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"overrideConfiguration">> => override_configuration(),
%%   <<"projectDescription">> => string(),
%%   <<"projectStage">> => list(any()),
%%   <<"standardOutputConfiguration">> := standard_output_configuration()
%% }
-type update_data_automation_project_request() :: #{binary() => any()}.


%% Example:
%% blueprint_summary() :: #{
%%   <<"blueprintArn">> => string(),
%%   <<"blueprintName">> => string(),
%%   <<"blueprintStage">> => list(any()),
%%   <<"blueprintVersion">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"lastModifiedTime">> => non_neg_integer()
%% }
-type blueprint_summary() :: #{binary() => any()}.


%% Example:
%% list_data_automation_projects_request() :: #{
%%   <<"blueprintFilter">> => blueprint_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"projectStageFilter">> => list(any()),
%%   <<"resourceOwner">> => list(any())
%% }
-type list_data_automation_projects_request() :: #{binary() => any()}.

%% Example:
%% delete_blueprint_response() :: #{}
-type delete_blueprint_response() :: #{}.


%% Example:
%% document_override_configuration() :: #{
%%   <<"modalityProcessing">> => modality_processing_configuration(),
%%   <<"splitter">> => splitter_configuration()
%% }
-type document_override_configuration() :: #{binary() => any()}.


%% Example:
%% video_override_configuration() :: #{
%%   <<"modalityProcessing">> => modality_processing_configuration()
%% }
-type video_override_configuration() :: #{binary() => any()}.


%% Example:
%% audio_standard_output_configuration() :: #{
%%   <<"extraction">> => audio_standard_extraction(),
%%   <<"generativeField">> => audio_standard_generative_field()
%% }
-type audio_standard_output_configuration() :: #{binary() => any()}.


%% Example:
%% document_standard_generative_field() :: #{
%%   <<"state">> => list(any())
%% }
-type document_standard_generative_field() :: #{binary() => any()}.


%% Example:
%% document_output_text_format() :: #{
%%   <<"types">> => list(list(any())())
%% }
-type document_output_text_format() :: #{binary() => any()}.


%% Example:
%% create_data_automation_project_response() :: #{
%%   <<"projectArn">> => string(),
%%   <<"projectStage">> => list(any()),
%%   <<"status">> => list(any())
%% }
-type create_data_automation_project_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceARN">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_blueprint_version_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type create_blueprint_version_request() :: #{binary() => any()}.


%% Example:
%% get_blueprint_request() :: #{
%%   <<"blueprintStage">> => list(any()),
%%   <<"blueprintVersion">> => string()
%% }
-type get_blueprint_request() :: #{binary() => any()}.


%% Example:
%% document_extraction_granularity() :: #{
%%   <<"types">> => list(list(any())())
%% }
-type document_extraction_granularity() :: #{binary() => any()}.


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
%% video_standard_generative_field() :: #{
%%   <<"state">> => list(any()),
%%   <<"types">> => list(list(any())())
%% }
-type video_standard_generative_field() :: #{binary() => any()}.


%% Example:
%% image_standard_extraction() :: #{
%%   <<"boundingBox">> => image_bounding_box(),
%%   <<"category">> => image_extraction_category()
%% }
-type image_standard_extraction() :: #{binary() => any()}.


%% Example:
%% audio_standard_generative_field() :: #{
%%   <<"state">> => list(any()),
%%   <<"types">> => list(list(any())())
%% }
-type audio_standard_generative_field() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% document_output_additional_file_format() :: #{
%%   <<"state">> => list(any())
%% }
-type document_output_additional_file_format() :: #{binary() => any()}.


%% Example:
%% get_blueprint_response() :: #{
%%   <<"blueprint">> => blueprint()
%% }
-type get_blueprint_response() :: #{binary() => any()}.


%% Example:
%% create_data_automation_project_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"customOutputConfiguration">> => custom_output_configuration(),
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"overrideConfiguration">> => override_configuration(),
%%   <<"projectDescription">> => string(),
%%   <<"projectName">> := string(),
%%   <<"projectStage">> => list(any()),
%%   <<"standardOutputConfiguration">> := standard_output_configuration(),
%%   <<"tags">> => list(tag())
%% }
-type create_data_automation_project_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% get_data_automation_project_response() :: #{
%%   <<"project">> => data_automation_project()
%% }
-type get_data_automation_project_response() :: #{binary() => any()}.


%% Example:
%% video_extraction_category() :: #{
%%   <<"state">> => list(any()),
%%   <<"types">> => list(list(any())())
%% }
-type video_extraction_category() :: #{binary() => any()}.


%% Example:
%% audio_extraction_category() :: #{
%%   <<"state">> => list(any()),
%%   <<"types">> => list(list(any())())
%% }
-type audio_extraction_category() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => string(),
%%   <<"name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% modality_routing_configuration() :: #{
%%   <<"jpeg">> => list(any()),
%%   <<"mov">> => list(any()),
%%   <<"mp4">> => list(any()),
%%   <<"png">> => list(any())
%% }
-type modality_routing_configuration() :: #{binary() => any()}.


%% Example:
%% blueprint() :: #{
%%   <<"blueprintArn">> => string(),
%%   <<"blueprintName">> => string(),
%%   <<"blueprintStage">> => list(any()),
%%   <<"blueprintVersion">> => string(),
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"kmsEncryptionContext">> => map(),
%%   <<"kmsKeyId">> => string(),
%%   <<"lastModifiedTime">> => non_neg_integer(),
%%   <<"schema">> => string(),
%%   <<"type">> => list(any())
%% }
-type blueprint() :: #{binary() => any()}.


%% Example:
%% data_automation_project() :: #{
%%   <<"creationTime">> => non_neg_integer(),
%%   <<"customOutputConfiguration">> => custom_output_configuration(),
%%   <<"kmsEncryptionContext">> => map(),
%%   <<"kmsKeyId">> => string(),
%%   <<"lastModifiedTime">> => non_neg_integer(),
%%   <<"overrideConfiguration">> => override_configuration(),
%%   <<"projectArn">> => string(),
%%   <<"projectDescription">> => string(),
%%   <<"projectName">> => string(),
%%   <<"projectStage">> => list(any()),
%%   <<"standardOutputConfiguration">> => standard_output_configuration(),
%%   <<"status">> => list(any())
%% }
-type data_automation_project() :: #{binary() => any()}.


%% Example:
%% video_standard_extraction() :: #{
%%   <<"boundingBox">> => video_bounding_box(),
%%   <<"category">> => video_extraction_category()
%% }
-type video_standard_extraction() :: #{binary() => any()}.


%% Example:
%% image_standard_output_configuration() :: #{
%%   <<"extraction">> => image_standard_extraction(),
%%   <<"generativeField">> => image_standard_generative_field()
%% }
-type image_standard_output_configuration() :: #{binary() => any()}.


%% Example:
%% splitter_configuration() :: #{
%%   <<"state">> => list(any())
%% }
-type splitter_configuration() :: #{binary() => any()}.


%% Example:
%% create_blueprint_response() :: #{
%%   <<"blueprint">> => blueprint()
%% }
-type create_blueprint_response() :: #{binary() => any()}.


%% Example:
%% update_blueprint_request() :: #{
%%   <<"blueprintStage">> => list(any()),
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"schema">> := string()
%% }
-type update_blueprint_request() :: #{binary() => any()}.


%% Example:
%% document_standard_extraction() :: #{
%%   <<"boundingBox">> => document_bounding_box(),
%%   <<"granularity">> => document_extraction_granularity()
%% }
-type document_standard_extraction() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% audio_standard_extraction() :: #{
%%   <<"category">> => audio_extraction_category()
%% }
-type audio_standard_extraction() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% document_standard_output_configuration() :: #{
%%   <<"extraction">> => document_standard_extraction(),
%%   <<"generativeField">> => document_standard_generative_field(),
%%   <<"outputFormat">> => document_output_format()
%% }
-type document_standard_output_configuration() :: #{binary() => any()}.


%% Example:
%% update_data_automation_project_response() :: #{
%%   <<"projectArn">> => string(),
%%   <<"projectStage">> => list(any()),
%%   <<"status">> => list(any())
%% }
-type update_data_automation_project_response() :: #{binary() => any()}.


%% Example:
%% modality_processing_configuration() :: #{
%%   <<"state">> => list(any())
%% }
-type modality_processing_configuration() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% document_bounding_box() :: #{
%%   <<"state">> => list(any())
%% }
-type document_bounding_box() :: #{binary() => any()}.


%% Example:
%% delete_blueprint_request() :: #{
%%   <<"blueprintVersion">> => string()
%% }
-type delete_blueprint_request() :: #{binary() => any()}.


%% Example:
%% image_standard_generative_field() :: #{
%%   <<"state">> => list(any()),
%%   <<"types">> => list(list(any())())
%% }
-type image_standard_generative_field() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% audio_override_configuration() :: #{
%%   <<"modalityProcessing">> => modality_processing_configuration()
%% }
-type audio_override_configuration() :: #{binary() => any()}.


%% Example:
%% create_blueprint_request() :: #{
%%   <<"blueprintName">> := string(),
%%   <<"blueprintStage">> => list(any()),
%%   <<"clientToken">> => string(),
%%   <<"encryptionConfiguration">> => encryption_configuration(),
%%   <<"schema">> := string(),
%%   <<"tags">> => list(tag()),
%%   <<"type">> := list(any())
%% }
-type create_blueprint_request() :: #{binary() => any()}.


%% Example:
%% list_blueprints_response() :: #{
%%   <<"blueprints">> => list(blueprint_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_blueprints_response() :: #{binary() => any()}.


%% Example:
%% image_extraction_category() :: #{
%%   <<"state">> => list(any()),
%%   <<"types">> => list(list(any())())
%% }
-type image_extraction_category() :: #{binary() => any()}.


%% Example:
%% image_bounding_box() :: #{
%%   <<"state">> => list(any())
%% }
-type image_bounding_box() :: #{binary() => any()}.


%% Example:
%% data_automation_project_filter() :: #{
%%   <<"projectArn">> => string(),
%%   <<"projectStage">> => list(any())
%% }
-type data_automation_project_filter() :: #{binary() => any()}.


%% Example:
%% custom_output_configuration() :: #{
%%   <<"blueprints">> => list(blueprint_item())
%% }
-type custom_output_configuration() :: #{binary() => any()}.


%% Example:
%% get_data_automation_project_request() :: #{
%%   <<"projectStage">> => list(any())
%% }
-type get_data_automation_project_request() :: #{binary() => any()}.

%% Example:
%% delete_data_automation_project_request() :: #{}
-type delete_data_automation_project_request() :: #{}.


%% Example:
%% list_data_automation_projects_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"projects">> => list(data_automation_project_summary())
%% }
-type list_data_automation_projects_response() :: #{binary() => any()}.


%% Example:
%% blueprint_filter() :: #{
%%   <<"blueprintArn">> => string(),
%%   <<"blueprintStage">> => list(any()),
%%   <<"blueprintVersion">> => string()
%% }
-type blueprint_filter() :: #{binary() => any()}.


%% Example:
%% document_output_format() :: #{
%%   <<"additionalFileFormat">> => document_output_additional_file_format(),
%%   <<"textFormat">> => document_output_text_format()
%% }
-type document_output_format() :: #{binary() => any()}.

-type create_blueprint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_blueprint_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_data_automation_project_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_blueprint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_data_automation_project_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_blueprint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_data_automation_project_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_blueprints_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_data_automation_projects_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_blueprint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_data_automation_project_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an Amazon Bedrock Data Automation Blueprint
-spec create_blueprint(aws_client:aws_client(), create_blueprint_request()) ->
    {ok, create_blueprint_response(), tuple()} |
    {error, any()} |
    {error, create_blueprint_errors(), tuple()}.
create_blueprint(Client, Input) ->
    create_blueprint(Client, Input, []).

-spec create_blueprint(aws_client:aws_client(), create_blueprint_request(), proplists:proplist()) ->
    {ok, create_blueprint_response(), tuple()} |
    {error, any()} |
    {error, create_blueprint_errors(), tuple()}.
create_blueprint(Client, Input0, Options0) ->
    Method = put,
    Path = ["/blueprints/"],
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

%% @doc Creates a new version of an existing Amazon Bedrock Data Automation
%% Blueprint
-spec create_blueprint_version(aws_client:aws_client(), binary() | list(), create_blueprint_version_request()) ->
    {ok, create_blueprint_version_response(), tuple()} |
    {error, any()} |
    {error, create_blueprint_version_errors(), tuple()}.
create_blueprint_version(Client, BlueprintArn, Input) ->
    create_blueprint_version(Client, BlueprintArn, Input, []).

-spec create_blueprint_version(aws_client:aws_client(), binary() | list(), create_blueprint_version_request(), proplists:proplist()) ->
    {ok, create_blueprint_version_response(), tuple()} |
    {error, any()} |
    {error, create_blueprint_version_errors(), tuple()}.
create_blueprint_version(Client, BlueprintArn, Input0, Options0) ->
    Method = post,
    Path = ["/blueprints/", aws_util:encode_uri(BlueprintArn), "/versions/"],
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

%% @doc Creates an Amazon Bedrock Data Automation Project
-spec create_data_automation_project(aws_client:aws_client(), create_data_automation_project_request()) ->
    {ok, create_data_automation_project_response(), tuple()} |
    {error, any()} |
    {error, create_data_automation_project_errors(), tuple()}.
create_data_automation_project(Client, Input) ->
    create_data_automation_project(Client, Input, []).

-spec create_data_automation_project(aws_client:aws_client(), create_data_automation_project_request(), proplists:proplist()) ->
    {ok, create_data_automation_project_response(), tuple()} |
    {error, any()} |
    {error, create_data_automation_project_errors(), tuple()}.
create_data_automation_project(Client, Input0, Options0) ->
    Method = put,
    Path = ["/data-automation-projects/"],
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

%% @doc Deletes an existing Amazon Bedrock Data Automation Blueprint
-spec delete_blueprint(aws_client:aws_client(), binary() | list(), delete_blueprint_request()) ->
    {ok, delete_blueprint_response(), tuple()} |
    {error, any()} |
    {error, delete_blueprint_errors(), tuple()}.
delete_blueprint(Client, BlueprintArn, Input) ->
    delete_blueprint(Client, BlueprintArn, Input, []).

-spec delete_blueprint(aws_client:aws_client(), binary() | list(), delete_blueprint_request(), proplists:proplist()) ->
    {ok, delete_blueprint_response(), tuple()} |
    {error, any()} |
    {error, delete_blueprint_errors(), tuple()}.
delete_blueprint(Client, BlueprintArn, Input0, Options0) ->
    Method = delete,
    Path = ["/blueprints/", aws_util:encode_uri(BlueprintArn), "/"],
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
                     {<<"blueprintVersion">>, <<"blueprintVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing Amazon Bedrock Data Automation Project
-spec delete_data_automation_project(aws_client:aws_client(), binary() | list(), delete_data_automation_project_request()) ->
    {ok, delete_data_automation_project_response(), tuple()} |
    {error, any()} |
    {error, delete_data_automation_project_errors(), tuple()}.
delete_data_automation_project(Client, ProjectArn, Input) ->
    delete_data_automation_project(Client, ProjectArn, Input, []).

-spec delete_data_automation_project(aws_client:aws_client(), binary() | list(), delete_data_automation_project_request(), proplists:proplist()) ->
    {ok, delete_data_automation_project_response(), tuple()} |
    {error, any()} |
    {error, delete_data_automation_project_errors(), tuple()}.
delete_data_automation_project(Client, ProjectArn, Input0, Options0) ->
    Method = delete,
    Path = ["/data-automation-projects/", aws_util:encode_uri(ProjectArn), "/"],
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

%% @doc Gets an existing Amazon Bedrock Data Automation Blueprint
-spec get_blueprint(aws_client:aws_client(), binary() | list(), get_blueprint_request()) ->
    {ok, get_blueprint_response(), tuple()} |
    {error, any()} |
    {error, get_blueprint_errors(), tuple()}.
get_blueprint(Client, BlueprintArn, Input) ->
    get_blueprint(Client, BlueprintArn, Input, []).

-spec get_blueprint(aws_client:aws_client(), binary() | list(), get_blueprint_request(), proplists:proplist()) ->
    {ok, get_blueprint_response(), tuple()} |
    {error, any()} |
    {error, get_blueprint_errors(), tuple()}.
get_blueprint(Client, BlueprintArn, Input0, Options0) ->
    Method = post,
    Path = ["/blueprints/", aws_util:encode_uri(BlueprintArn), "/"],
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

%% @doc Gets an existing Amazon Bedrock Data Automation Project
-spec get_data_automation_project(aws_client:aws_client(), binary() | list(), get_data_automation_project_request()) ->
    {ok, get_data_automation_project_response(), tuple()} |
    {error, any()} |
    {error, get_data_automation_project_errors(), tuple()}.
get_data_automation_project(Client, ProjectArn, Input) ->
    get_data_automation_project(Client, ProjectArn, Input, []).

-spec get_data_automation_project(aws_client:aws_client(), binary() | list(), get_data_automation_project_request(), proplists:proplist()) ->
    {ok, get_data_automation_project_response(), tuple()} |
    {error, any()} |
    {error, get_data_automation_project_errors(), tuple()}.
get_data_automation_project(Client, ProjectArn, Input0, Options0) ->
    Method = post,
    Path = ["/data-automation-projects/", aws_util:encode_uri(ProjectArn), "/"],
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

%% @doc Lists all existing Amazon Bedrock Data Automation Blueprints
-spec list_blueprints(aws_client:aws_client(), list_blueprints_request()) ->
    {ok, list_blueprints_response(), tuple()} |
    {error, any()} |
    {error, list_blueprints_errors(), tuple()}.
list_blueprints(Client, Input) ->
    list_blueprints(Client, Input, []).

-spec list_blueprints(aws_client:aws_client(), list_blueprints_request(), proplists:proplist()) ->
    {ok, list_blueprints_response(), tuple()} |
    {error, any()} |
    {error, list_blueprints_errors(), tuple()}.
list_blueprints(Client, Input0, Options0) ->
    Method = post,
    Path = ["/blueprints/"],
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

%% @doc Lists all existing Amazon Bedrock Data Automation Projects
-spec list_data_automation_projects(aws_client:aws_client(), list_data_automation_projects_request()) ->
    {ok, list_data_automation_projects_response(), tuple()} |
    {error, any()} |
    {error, list_data_automation_projects_errors(), tuple()}.
list_data_automation_projects(Client, Input) ->
    list_data_automation_projects(Client, Input, []).

-spec list_data_automation_projects(aws_client:aws_client(), list_data_automation_projects_request(), proplists:proplist()) ->
    {ok, list_data_automation_projects_response(), tuple()} |
    {error, any()} |
    {error, list_data_automation_projects_errors(), tuple()}.
list_data_automation_projects(Client, Input0, Options0) ->
    Method = post,
    Path = ["/data-automation-projects/"],
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

%% @doc List tags for an Amazon Bedrock Data Automation resource
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
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

%% @doc Tag an Amazon Bedrock Data Automation resource
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

%% @doc Untag an Amazon Bedrock Data Automation resource
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

%% @doc Updates an existing Amazon Bedrock Data Automation Blueprint
-spec update_blueprint(aws_client:aws_client(), binary() | list(), update_blueprint_request()) ->
    {ok, update_blueprint_response(), tuple()} |
    {error, any()} |
    {error, update_blueprint_errors(), tuple()}.
update_blueprint(Client, BlueprintArn, Input) ->
    update_blueprint(Client, BlueprintArn, Input, []).

-spec update_blueprint(aws_client:aws_client(), binary() | list(), update_blueprint_request(), proplists:proplist()) ->
    {ok, update_blueprint_response(), tuple()} |
    {error, any()} |
    {error, update_blueprint_errors(), tuple()}.
update_blueprint(Client, BlueprintArn, Input0, Options0) ->
    Method = put,
    Path = ["/blueprints/", aws_util:encode_uri(BlueprintArn), "/"],
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

%% @doc Updates an existing Amazon Bedrock Data Automation Project
-spec update_data_automation_project(aws_client:aws_client(), binary() | list(), update_data_automation_project_request()) ->
    {ok, update_data_automation_project_response(), tuple()} |
    {error, any()} |
    {error, update_data_automation_project_errors(), tuple()}.
update_data_automation_project(Client, ProjectArn, Input) ->
    update_data_automation_project(Client, ProjectArn, Input, []).

-spec update_data_automation_project(aws_client:aws_client(), binary() | list(), update_data_automation_project_request(), proplists:proplist()) ->
    {ok, update_data_automation_project_response(), tuple()} |
    {error, any()} |
    {error, update_data_automation_project_errors(), tuple()}.
update_data_automation_project(Client, ProjectArn, Input0, Options0) ->
    Method = put,
    Path = ["/data-automation-projects/", aws_util:encode_uri(ProjectArn), "/"],
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
    Client1 = Client#{service => <<"bedrock">>},
    Host = build_host(<<"bedrock-data-automation">>, Client1),
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
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload, [{uri_encode_path, true}]),
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
