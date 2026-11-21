%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Textract detects and analyzes text in documents and converts
%% it
%% into machine-readable text.
%%
%% This is the API reference documentation for
%% Amazon Textract.
-module(aws_textract).

-export([analyze_document/2,
         analyze_document/3,
         analyze_expense/2,
         analyze_expense/3,
         analyze_id/2,
         analyze_id/3,
         create_adapter/2,
         create_adapter/3,
         create_adapter_version/2,
         create_adapter_version/3,
         create_blueprint/2,
         create_blueprint/3,
         create_blueprint_version/2,
         create_blueprint_version/3,
         create_project/2,
         create_project/3,
         delete_adapter/2,
         delete_adapter/3,
         delete_adapter_version/2,
         delete_adapter_version/3,
         delete_blueprint/2,
         delete_blueprint/3,
         delete_project/2,
         delete_project/3,
         detect_document_text/2,
         detect_document_text/3,
         get_adapter/2,
         get_adapter/3,
         get_adapter_version/2,
         get_adapter_version/3,
         get_blueprint/2,
         get_blueprint/3,
         get_document_analysis/2,
         get_document_analysis/3,
         get_document_insights/2,
         get_document_insights/3,
         get_document_text_detection/2,
         get_document_text_detection/3,
         get_expense_analysis/2,
         get_expense_analysis/3,
         get_lending_analysis/2,
         get_lending_analysis/3,
         get_lending_analysis_summary/2,
         get_lending_analysis_summary/3,
         get_project/2,
         get_project/3,
         list_adapter_versions/2,
         list_adapter_versions/3,
         list_adapters/2,
         list_adapters/3,
         list_blueprints/2,
         list_blueprints/3,
         list_projects/2,
         list_projects/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         start_document_analysis/2,
         start_document_analysis/3,
         start_document_insights/2,
         start_document_insights/3,
         start_document_text_detection/2,
         start_document_text_detection/3,
         start_expense_analysis/2,
         start_expense_analysis/3,
         start_lending_analysis/2,
         start_lending_analysis/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_adapter/2,
         update_adapter/3,
         update_blueprint/2,
         update_blueprint/3,
         update_project/2,
         update_project/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%% hackney:body/1 is only called with hackney versions that still export it.
-ignore_xref([{hackney, body, 1}]).


%% Example:
%% access_denied_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% adapter() :: #{
%%   <<"AdapterId">> => string(),
%%   <<"Pages">> => list(string()),
%%   <<"Version">> => string()
%% }
-type adapter() :: #{binary() => any()}.

%% Example:
%% adapter_overview() :: #{
%%   <<"AdapterId">> => string(),
%%   <<"AdapterName">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FeatureTypes">> => list(list(any())())
%% }
-type adapter_overview() :: #{binary() => any()}.

%% Example:
%% adapter_version_dataset_config() :: #{
%%   <<"ManifestS3Object">> => s3_object()
%% }
-type adapter_version_dataset_config() :: #{binary() => any()}.

%% Example:
%% adapter_version_evaluation_metric() :: #{
%%   <<"AdapterVersion">> => evaluation_metric(),
%%   <<"Baseline">> => evaluation_metric(),
%%   <<"FeatureType">> => list(any())
%% }
-type adapter_version_evaluation_metric() :: #{binary() => any()}.

%% Example:
%% adapter_version_overview() :: #{
%%   <<"AdapterId">> => string(),
%%   <<"AdapterVersion">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FeatureTypes">> => list(list(any())()),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type adapter_version_overview() :: #{binary() => any()}.

%% Example:
%% adapters_config() :: #{
%%   <<"Adapters">> => list(adapter())
%% }
-type adapters_config() :: #{binary() => any()}.

%% Example:
%% analyze_document_request() :: #{
%%   <<"AdaptersConfig">> => adapters_config(),
%%   <<"Document">> := document(),
%%   <<"FeatureTypes">> := list(list(any())()),
%%   <<"HumanLoopConfig">> => human_loop_config(),
%%   <<"QueriesConfig">> => queries_config()
%% }
-type analyze_document_request() :: #{binary() => any()}.

%% Example:
%% analyze_document_response() :: #{
%%   <<"AnalyzeDocumentModelVersion">> => string(),
%%   <<"Blocks">> => list(block()),
%%   <<"DocumentMetadata">> => document_metadata(),
%%   <<"HumanLoopActivationOutput">> => human_loop_activation_output()
%% }
-type analyze_document_response() :: #{binary() => any()}.

%% Example:
%% analyze_expense_request() :: #{
%%   <<"Document">> := document()
%% }
-type analyze_expense_request() :: #{binary() => any()}.

%% Example:
%% analyze_expense_response() :: #{
%%   <<"DocumentMetadata">> => document_metadata(),
%%   <<"ExpenseDocuments">> => list(expense_document())
%% }
-type analyze_expense_response() :: #{binary() => any()}.

%% Example:
%% analyze_id_detections() :: #{
%%   <<"Confidence">> => float(),
%%   <<"NormalizedValue">> => normalized_value(),
%%   <<"Text">> => string()
%% }
-type analyze_id_detections() :: #{binary() => any()}.

%% Example:
%% analyze_id_request() :: #{
%%   <<"DocumentPages">> := list(document())
%% }
-type analyze_id_request() :: #{binary() => any()}.

%% Example:
%% analyze_id_response() :: #{
%%   <<"AnalyzeIDModelVersion">> => string(),
%%   <<"DocumentMetadata">> => document_metadata(),
%%   <<"IdentityDocuments">> => list(identity_document())
%% }
-type analyze_id_response() :: #{binary() => any()}.

%% Example:
%% bad_document_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type bad_document_exception() :: #{binary() => any()}.

%% Example:
%% block() :: #{
%%   <<"BlockType">> => list(any()),
%%   <<"ColumnIndex">> => integer(),
%%   <<"ColumnSpan">> => integer(),
%%   <<"Confidence">> => float(),
%%   <<"EntityTypes">> => list(list(any())()),
%%   <<"Geometry">> => geometry(),
%%   <<"Id">> => string(),
%%   <<"Page">> => integer(),
%%   <<"Query">> => query(),
%%   <<"Relationships">> => list(relationship()),
%%   <<"RowIndex">> => integer(),
%%   <<"RowSpan">> => integer(),
%%   <<"SelectionStatus">> => list(any()),
%%   <<"Text">> => string(),
%%   <<"TextType">> => list(any())
%% }
-type block() :: #{binary() => any()}.

%% Example:
%% blueprint_filter() :: #{
%%   <<"BlueprintArn">> => string(),
%%   <<"BlueprintVersion">> => string()
%% }
-type blueprint_filter() :: #{binary() => any()}.

%% Example:
%% blueprint_item() :: #{
%%   <<"BlueprintArn">> => string(),
%%   <<"BlueprintVersion">> => string()
%% }
-type blueprint_item() :: #{binary() => any()}.

%% Example:
%% blueprint_summary() :: #{
%%   <<"BlueprintArn">> => string(),
%%   <<"BlueprintName">> => string(),
%%   <<"BlueprintVersion">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ResourceOwner">> => list(any())
%% }
-type blueprint_summary() :: #{binary() => any()}.

%% Example:
%% bounding_box() :: #{
%%   <<"Height">> => float(),
%%   <<"Left">> => float(),
%%   <<"Top">> => float(),
%%   <<"Width">> => float()
%% }
-type bounding_box() :: #{binary() => any()}.

%% Example:
%% bounding_box_configuration() :: #{
%%   <<"State">> => list(any())
%% }
-type bounding_box_configuration() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% create_adapter_request() :: #{
%%   <<"AdapterName">> := string(),
%%   <<"AutoUpdate">> => list(any()),
%%   <<"ClientRequestToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"FeatureTypes">> := list(list(any())()),
%%   <<"Tags">> => map()
%% }
-type create_adapter_request() :: #{binary() => any()}.

%% Example:
%% create_adapter_response() :: #{
%%   <<"AdapterId">> => string()
%% }
-type create_adapter_response() :: #{binary() => any()}.

%% Example:
%% create_adapter_version_request() :: #{
%%   <<"AdapterId">> := string(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"DatasetConfig">> := adapter_version_dataset_config(),
%%   <<"KMSKeyId">> => string(),
%%   <<"OutputConfig">> := output_config(),
%%   <<"Tags">> => map()
%% }
-type create_adapter_version_request() :: #{binary() => any()}.

%% Example:
%% create_adapter_version_response() :: #{
%%   <<"AdapterId">> => string(),
%%   <<"AdapterVersion">> => string()
%% }
-type create_adapter_version_response() :: #{binary() => any()}.

%% Example:
%% create_blueprint_request() :: #{
%%   <<"BlueprintName">> := string(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"Schema">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_blueprint_request() :: #{binary() => any()}.

%% Example:
%% create_blueprint_response() :: #{
%%   <<"BlueprintArn">> => string()
%% }
-type create_blueprint_response() :: #{binary() => any()}.

%% Example:
%% create_blueprint_version_request() :: #{
%%   <<"BlueprintArn">> := string(),
%%   <<"ClientRequestToken">> => string()
%% }
-type create_blueprint_version_request() :: #{binary() => any()}.

%% Example:
%% create_blueprint_version_response() :: #{
%%   <<"BlueprintArn">> => string(),
%%   <<"BlueprintVersion">> => string()
%% }
-type create_blueprint_version_response() :: #{binary() => any()}.

%% Example:
%% create_project_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"CustomConfiguration">> => custom_configuration(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"ExtractionConfiguration">> := extraction_configuration(),
%%   <<"GenerativeConfiguration">> => generative_configuration(),
%%   <<"ProjectDescription">> => string(),
%%   <<"ProjectName">> := string(),
%%   <<"SensitiveDataConfiguration">> => sensitive_data_configuration(),
%%   <<"SplitterConfiguration">> => splitter_configuration(),
%%   <<"Tags">> => map()
%% }
-type create_project_request() :: #{binary() => any()}.

%% Example:
%% create_project_response() :: #{
%%   <<"ProjectArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type create_project_response() :: #{binary() => any()}.

%% Example:
%% custom_configuration() :: #{
%%   <<"Blueprints">> => list(blueprint_item()),
%%   <<"FallbackBlueprints">> => list(blueprint_item())
%% }
-type custom_configuration() :: #{binary() => any()}.

%% Example:
%% delete_adapter_request() :: #{
%%   <<"AdapterId">> := string()
%% }
-type delete_adapter_request() :: #{binary() => any()}.

%% Example:
%% delete_adapter_response() :: #{

%% }
-type delete_adapter_response() :: #{binary() => any()}.

%% Example:
%% delete_adapter_version_request() :: #{
%%   <<"AdapterId">> := string(),
%%   <<"AdapterVersion">> := string()
%% }
-type delete_adapter_version_request() :: #{binary() => any()}.

%% Example:
%% delete_adapter_version_response() :: #{

%% }
-type delete_adapter_version_response() :: #{binary() => any()}.

%% Example:
%% delete_blueprint_request() :: #{
%%   <<"BlueprintArn">> := string(),
%%   <<"BlueprintVersion">> => string()
%% }
-type delete_blueprint_request() :: #{binary() => any()}.

%% Example:
%% delete_blueprint_response() :: #{

%% }
-type delete_blueprint_response() :: #{binary() => any()}.

%% Example:
%% delete_project_request() :: #{
%%   <<"ProjectArn">> := string()
%% }
-type delete_project_request() :: #{binary() => any()}.

%% Example:
%% delete_project_response() :: #{

%% }
-type delete_project_response() :: #{binary() => any()}.

%% Example:
%% detect_document_text_request() :: #{
%%   <<"Document">> := document()
%% }
-type detect_document_text_request() :: #{binary() => any()}.

%% Example:
%% detect_document_text_response() :: #{
%%   <<"Blocks">> => list(block()),
%%   <<"DetectDocumentTextModelVersion">> => string(),
%%   <<"DocumentMetadata">> => document_metadata()
%% }
-type detect_document_text_response() :: #{binary() => any()}.

%% Example:
%% detected_signature() :: #{
%%   <<"Page">> => integer()
%% }
-type detected_signature() :: #{binary() => any()}.

%% Example:
%% document() :: #{
%%   <<"Bytes">> => binary(),
%%   <<"S3Object">> => s3_object()
%% }
-type document() :: #{binary() => any()}.

%% Example:
%% document_group() :: #{
%%   <<"DetectedSignatures">> => list(detected_signature()),
%%   <<"SplitDocuments">> => list(split_document()),
%%   <<"Type">> => string(),
%%   <<"UndetectedSignatures">> => list(undetected_signature())
%% }
-type document_group() :: #{binary() => any()}.

%% Example:
%% document_location() :: #{
%%   <<"S3Object">> => s3_object()
%% }
-type document_location() :: #{binary() => any()}.

%% Example:
%% document_metadata() :: #{
%%   <<"Pages">> => integer()
%% }
-type document_metadata() :: #{binary() => any()}.

%% Example:
%% document_too_large_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type document_too_large_exception() :: #{binary() => any()}.

%% Example:
%% encryption_configuration() :: #{
%%   <<"KmsEncryptionContext">> => map(),
%%   <<"KmsKeyId">> => string()
%% }
-type encryption_configuration() :: #{binary() => any()}.

%% Example:
%% evaluation_metric() :: #{
%%   <<"F1Score">> => float(),
%%   <<"Precision">> => float(),
%%   <<"Recall">> => float()
%% }
-type evaluation_metric() :: #{binary() => any()}.

%% Example:
%% event_bridge_configuration() :: #{
%%   <<"State">> => list(any())
%% }
-type event_bridge_configuration() :: #{binary() => any()}.

%% Example:
%% expense_currency() :: #{
%%   <<"Code">> => string(),
%%   <<"Confidence">> => float()
%% }
-type expense_currency() :: #{binary() => any()}.

%% Example:
%% expense_detection() :: #{
%%   <<"Confidence">> => float(),
%%   <<"Geometry">> => geometry(),
%%   <<"Text">> => string()
%% }
-type expense_detection() :: #{binary() => any()}.

%% Example:
%% expense_document() :: #{
%%   <<"Blocks">> => list(block()),
%%   <<"ExpenseIndex">> => integer(),
%%   <<"LineItemGroups">> => list(line_item_group()),
%%   <<"SummaryFields">> => list(expense_field())
%% }
-type expense_document() :: #{binary() => any()}.

%% Example:
%% expense_field() :: #{
%%   <<"Currency">> => expense_currency(),
%%   <<"GroupProperties">> => list(expense_group_property()),
%%   <<"LabelDetection">> => expense_detection(),
%%   <<"PageNumber">> => integer(),
%%   <<"Type">> => expense_type(),
%%   <<"ValueDetection">> => expense_detection()
%% }
-type expense_field() :: #{binary() => any()}.

%% Example:
%% expense_group_property() :: #{
%%   <<"Id">> => string(),
%%   <<"Types">> => list(string())
%% }
-type expense_group_property() :: #{binary() => any()}.

%% Example:
%% expense_type() :: #{
%%   <<"Confidence">> => float(),
%%   <<"Text">> => string()
%% }
-type expense_type() :: #{binary() => any()}.

%% Example:
%% extraction() :: #{
%%   <<"ExpenseDocument">> => expense_document(),
%%   <<"IdentityDocument">> => identity_document(),
%%   <<"LendingDocument">> => lending_document()
%% }
-type extraction() :: #{binary() => any()}.

%% Example:
%% extraction_configuration() :: #{
%%   <<"BoundingBox">> => bounding_box_configuration(),
%%   <<"Granularity">> => extraction_granularity(),
%%   <<"OutputFormat">> => output_format()
%% }
-type extraction_configuration() :: #{binary() => any()}.

%% Example:
%% extraction_granularity() :: #{
%%   <<"Types">> => list(list(any())())
%% }
-type extraction_granularity() :: #{binary() => any()}.

%% Example:
%% figure_caption_configuration() :: #{
%%   <<"State">> => list(any())
%% }
-type figure_caption_configuration() :: #{binary() => any()}.

%% Example:
%% generative_configuration() :: #{
%%   <<"FigureCaption">> => figure_caption_configuration(),
%%   <<"Summarization">> => summarization_configuration()
%% }
-type generative_configuration() :: #{binary() => any()}.

%% Example:
%% geometry() :: #{
%%   <<"BoundingBox">> => bounding_box(),
%%   <<"Polygon">> => list(point()),
%%   <<"RotationAngle">> => float()
%% }
-type geometry() :: #{binary() => any()}.

%% Example:
%% get_adapter_request() :: #{
%%   <<"AdapterId">> := string()
%% }
-type get_adapter_request() :: #{binary() => any()}.

%% Example:
%% get_adapter_response() :: #{
%%   <<"AdapterId">> => string(),
%%   <<"AdapterName">> => string(),
%%   <<"AutoUpdate">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"FeatureTypes">> => list(list(any())()),
%%   <<"Tags">> => map()
%% }
-type get_adapter_response() :: #{binary() => any()}.

%% Example:
%% get_adapter_version_request() :: #{
%%   <<"AdapterId">> := string(),
%%   <<"AdapterVersion">> := string()
%% }
-type get_adapter_version_request() :: #{binary() => any()}.

%% Example:
%% get_adapter_version_response() :: #{
%%   <<"AdapterId">> => string(),
%%   <<"AdapterVersion">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DatasetConfig">> => adapter_version_dataset_config(),
%%   <<"EvaluationMetrics">> => list(adapter_version_evaluation_metric()),
%%   <<"FeatureTypes">> => list(list(any())()),
%%   <<"KMSKeyId">> => string(),
%%   <<"OutputConfig">> => output_config(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"Tags">> => map()
%% }
-type get_adapter_version_response() :: #{binary() => any()}.

%% Example:
%% get_blueprint_request() :: #{
%%   <<"BlueprintArn">> := string(),
%%   <<"BlueprintVersion">> => string()
%% }
-type get_blueprint_request() :: #{binary() => any()}.

%% Example:
%% get_blueprint_response() :: #{
%%   <<"BlueprintArn">> => string(),
%%   <<"BlueprintName">> => string(),
%%   <<"BlueprintVersion">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"KmsEncryptionContext">> => map(),
%%   <<"KmsKeyId">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Schema">> => string()
%% }
-type get_blueprint_response() :: #{binary() => any()}.

%% Example:
%% get_document_analysis_request() :: #{
%%   <<"JobId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_document_analysis_request() :: #{binary() => any()}.

%% Example:
%% get_document_analysis_response() :: #{
%%   <<"AnalyzeDocumentModelVersion">> => string(),
%%   <<"Blocks">> => list(block()),
%%   <<"DocumentMetadata">> => document_metadata(),
%%   <<"JobStatus">> => list(any()),
%%   <<"NextToken">> => string(),
%%   <<"StatusMessage">> => string(),
%%   <<"Warnings">> => list(warning())
%% }
-type get_document_analysis_response() :: #{binary() => any()}.

%% Example:
%% get_document_insights_request() :: #{
%%   <<"JobArn">> := string()
%% }
-type get_document_insights_request() :: #{binary() => any()}.

%% Example:
%% get_document_insights_response() :: #{
%%   <<"ErrorMessage">> => string(),
%%   <<"ErrorType">> => string(),
%%   <<"OutputConfiguration">> => output_configuration(),
%%   <<"Status">> => list(any())
%% }
-type get_document_insights_response() :: #{binary() => any()}.

%% Example:
%% get_document_text_detection_request() :: #{
%%   <<"JobId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_document_text_detection_request() :: #{binary() => any()}.

%% Example:
%% get_document_text_detection_response() :: #{
%%   <<"Blocks">> => list(block()),
%%   <<"DetectDocumentTextModelVersion">> => string(),
%%   <<"DocumentMetadata">> => document_metadata(),
%%   <<"JobStatus">> => list(any()),
%%   <<"NextToken">> => string(),
%%   <<"StatusMessage">> => string(),
%%   <<"Warnings">> => list(warning())
%% }
-type get_document_text_detection_response() :: #{binary() => any()}.

%% Example:
%% get_expense_analysis_request() :: #{
%%   <<"JobId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_expense_analysis_request() :: #{binary() => any()}.

%% Example:
%% get_expense_analysis_response() :: #{
%%   <<"AnalyzeExpenseModelVersion">> => string(),
%%   <<"DocumentMetadata">> => document_metadata(),
%%   <<"ExpenseDocuments">> => list(expense_document()),
%%   <<"JobStatus">> => list(any()),
%%   <<"NextToken">> => string(),
%%   <<"StatusMessage">> => string(),
%%   <<"Warnings">> => list(warning())
%% }
-type get_expense_analysis_response() :: #{binary() => any()}.

%% Example:
%% get_lending_analysis_request() :: #{
%%   <<"JobId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_lending_analysis_request() :: #{binary() => any()}.

%% Example:
%% get_lending_analysis_response() :: #{
%%   <<"AnalyzeLendingModelVersion">> => string(),
%%   <<"DocumentMetadata">> => document_metadata(),
%%   <<"JobStatus">> => list(any()),
%%   <<"NextToken">> => string(),
%%   <<"Results">> => list(lending_result()),
%%   <<"StatusMessage">> => string(),
%%   <<"Warnings">> => list(warning())
%% }
-type get_lending_analysis_response() :: #{binary() => any()}.

%% Example:
%% get_lending_analysis_summary_request() :: #{
%%   <<"JobId">> := string()
%% }
-type get_lending_analysis_summary_request() :: #{binary() => any()}.

%% Example:
%% get_lending_analysis_summary_response() :: #{
%%   <<"AnalyzeLendingModelVersion">> => string(),
%%   <<"DocumentMetadata">> => document_metadata(),
%%   <<"JobStatus">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"Summary">> => lending_summary(),
%%   <<"Warnings">> => list(warning())
%% }
-type get_lending_analysis_summary_response() :: #{binary() => any()}.

%% Example:
%% get_project_request() :: #{
%%   <<"ProjectArn">> := string()
%% }
-type get_project_request() :: #{binary() => any()}.

%% Example:
%% get_project_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CustomConfiguration">> => custom_configuration(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"ExtractionConfiguration">> => extraction_configuration(),
%%   <<"GenerativeConfiguration">> => generative_configuration(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ProjectArn">> => string(),
%%   <<"ProjectDescription">> => string(),
%%   <<"ProjectName">> => string(),
%%   <<"SensitiveDataConfiguration">> => sensitive_data_configuration(),
%%   <<"SplitterConfiguration">> => splitter_configuration(),
%%   <<"Status">> => list(any())
%% }
-type get_project_response() :: #{binary() => any()}.

%% Example:
%% human_loop_activation_output() :: #{
%%   <<"HumanLoopActivationConditionsEvaluationResults">> => string(),
%%   <<"HumanLoopActivationReasons">> => list(string()),
%%   <<"HumanLoopArn">> => string()
%% }
-type human_loop_activation_output() :: #{binary() => any()}.

%% Example:
%% human_loop_config() :: #{
%%   <<"DataAttributes">> => human_loop_data_attributes(),
%%   <<"FlowDefinitionArn">> => string(),
%%   <<"HumanLoopName">> => string()
%% }
-type human_loop_config() :: #{binary() => any()}.

%% Example:
%% human_loop_data_attributes() :: #{
%%   <<"ContentClassifiers">> => list(list(any())())
%% }
-type human_loop_data_attributes() :: #{binary() => any()}.

%% Example:
%% human_loop_quota_exceeded_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string(),
%%   <<"QuotaCode">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"ServiceCode">> => string()
%% }
-type human_loop_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% idempotent_parameter_mismatch_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type idempotent_parameter_mismatch_exception() :: #{binary() => any()}.

%% Example:
%% identity_document() :: #{
%%   <<"Blocks">> => list(block()),
%%   <<"DocumentIndex">> => integer(),
%%   <<"IdentityDocumentFields">> => list(identity_document_field())
%% }
-type identity_document() :: #{binary() => any()}.

%% Example:
%% identity_document_field() :: #{
%%   <<"Type">> => analyze_id_detections(),
%%   <<"ValueDetection">> => analyze_id_detections()
%% }
-type identity_document_field() :: #{binary() => any()}.

%% Example:
%% input_configuration() :: #{
%%   <<"S3Uri">> => string()
%% }
-type input_configuration() :: #{binary() => any()}.

%% Example:
%% internal_server_error() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type internal_server_error() :: #{binary() => any()}.

%% Example:
%% invalid_job_id_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type invalid_job_id_exception() :: #{binary() => any()}.

%% Example:
%% invalid_kms_key_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type invalid_kms_key_exception() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.

%% Example:
%% invalid_s3_object_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type invalid_s3_object_exception() :: #{binary() => any()}.

%% Example:
%% lending_detection() :: #{
%%   <<"Confidence">> => float(),
%%   <<"Geometry">> => geometry(),
%%   <<"SelectionStatus">> => list(any()),
%%   <<"Text">> => string()
%% }
-type lending_detection() :: #{binary() => any()}.

%% Example:
%% lending_document() :: #{
%%   <<"LendingFields">> => list(lending_field()),
%%   <<"SignatureDetections">> => list(signature_detection())
%% }
-type lending_document() :: #{binary() => any()}.

%% Example:
%% lending_field() :: #{
%%   <<"KeyDetection">> => lending_detection(),
%%   <<"Type">> => string(),
%%   <<"ValueDetections">> => list(lending_detection())
%% }
-type lending_field() :: #{binary() => any()}.

%% Example:
%% lending_result() :: #{
%%   <<"Extractions">> => list(extraction()),
%%   <<"Page">> => integer(),
%%   <<"PageClassification">> => page_classification()
%% }
-type lending_result() :: #{binary() => any()}.

%% Example:
%% lending_summary() :: #{
%%   <<"DocumentGroups">> => list(document_group()),
%%   <<"UndetectedDocumentTypes">> => list(string())
%% }
-type lending_summary() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% line_item_fields() :: #{
%%   <<"LineItemExpenseFields">> => list(expense_field())
%% }
-type line_item_fields() :: #{binary() => any()}.

%% Example:
%% line_item_group() :: #{
%%   <<"LineItemGroupIndex">> => integer(),
%%   <<"LineItems">> => list(line_item_fields())
%% }
-type line_item_group() :: #{binary() => any()}.

%% Example:
%% list_adapter_versions_request() :: #{
%%   <<"AdapterId">> => string(),
%%   <<"AfterCreationTime">> => non_neg_integer(),
%%   <<"BeforeCreationTime">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_adapter_versions_request() :: #{binary() => any()}.

%% Example:
%% list_adapter_versions_response() :: #{
%%   <<"AdapterVersions">> => list(adapter_version_overview()),
%%   <<"NextToken">> => string()
%% }
-type list_adapter_versions_response() :: #{binary() => any()}.

%% Example:
%% list_adapters_request() :: #{
%%   <<"AfterCreationTime">> => non_neg_integer(),
%%   <<"BeforeCreationTime">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_adapters_request() :: #{binary() => any()}.

%% Example:
%% list_adapters_response() :: #{
%%   <<"Adapters">> => list(adapter_overview()),
%%   <<"NextToken">> => string()
%% }
-type list_adapters_response() :: #{binary() => any()}.

%% Example:
%% list_blueprints_request() :: #{
%%   <<"BlueprintArn">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ProjectFilter">> => project_filter(),
%%   <<"ResourceOwner">> => list(any())
%% }
-type list_blueprints_request() :: #{binary() => any()}.

%% Example:
%% list_blueprints_response() :: #{
%%   <<"Blueprints">> => list(blueprint_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_blueprints_response() :: #{binary() => any()}.

%% Example:
%% list_projects_request() :: #{
%%   <<"BlueprintFilter">> => blueprint_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_projects_request() :: #{binary() => any()}.

%% Example:
%% list_projects_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Projects">> => list(project_summary())
%% }
-type list_projects_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% normalized_value() :: #{
%%   <<"Value">> => string(),
%%   <<"ValueType">> => list(any())
%% }
-type normalized_value() :: #{binary() => any()}.

%% Example:
%% notification_channel() :: #{
%%   <<"RoleArn">> => string(),
%%   <<"SNSTopicArn">> => string()
%% }
-type notification_channel() :: #{binary() => any()}.

%% Example:
%% notification_configuration() :: #{
%%   <<"EventBridgeConfiguration">> => event_bridge_configuration()
%% }
-type notification_configuration() :: #{binary() => any()}.

%% Example:
%% output_additional_file_format() :: #{
%%   <<"State">> => list(any())
%% }
-type output_additional_file_format() :: #{binary() => any()}.

%% Example:
%% output_config() :: #{
%%   <<"S3Bucket">> => string(),
%%   <<"S3Prefix">> => string()
%% }
-type output_config() :: #{binary() => any()}.

%% Example:
%% output_configuration() :: #{
%%   <<"S3Uri">> => string()
%% }
-type output_configuration() :: #{binary() => any()}.

%% Example:
%% output_format() :: #{
%%   <<"AdditionalFileFormat">> => output_additional_file_format(),
%%   <<"TextFormat">> => output_text_format()
%% }
-type output_format() :: #{binary() => any()}.

%% Example:
%% output_text_format() :: #{
%%   <<"Types">> => list(list(any())())
%% }
-type output_text_format() :: #{binary() => any()}.

%% Example:
%% p_i_i_entities_configuration() :: #{
%%   <<"PiiEntityTypes">> => list(list(any())()),
%%   <<"RedactionMaskMode">> => list(any())
%% }
-type p_i_i_entities_configuration() :: #{binary() => any()}.

%% Example:
%% page_classification() :: #{
%%   <<"PageNumber">> => list(prediction()),
%%   <<"PageType">> => list(prediction())
%% }
-type page_classification() :: #{binary() => any()}.

%% Example:
%% point() :: #{
%%   <<"X">> => float(),
%%   <<"Y">> => float()
%% }
-type point() :: #{binary() => any()}.

%% Example:
%% prediction() :: #{
%%   <<"Confidence">> => float(),
%%   <<"Value">> => string()
%% }
-type prediction() :: #{binary() => any()}.

%% Example:
%% project_filter() :: #{
%%   <<"ProjectArn">> => string()
%% }
-type project_filter() :: #{binary() => any()}.

%% Example:
%% project_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ProjectArn">> => string(),
%%   <<"ProjectName">> => string()
%% }
-type project_summary() :: #{binary() => any()}.

%% Example:
%% provisioned_throughput_exceeded_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type provisioned_throughput_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% queries_config() :: #{
%%   <<"Queries">> => list(query())
%% }
-type queries_config() :: #{binary() => any()}.

%% Example:
%% query() :: #{
%%   <<"Alias">> => string(),
%%   <<"Pages">> => list(string()),
%%   <<"Text">> => string()
%% }
-type query() :: #{binary() => any()}.

%% Example:
%% relationship() :: #{
%%   <<"Ids">> => list(string()),
%%   <<"Type">> => list(any())
%% }
-type relationship() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% s3_object() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Name">> => string(),
%%   <<"Version">> => string()
%% }
-type s3_object() :: #{binary() => any()}.

%% Example:
%% sensitive_data_configuration() :: #{
%%   <<"DetectionMode">> => list(any()),
%%   <<"PiiEntitiesConfiguration">> => p_i_i_entities_configuration()
%% }
-type sensitive_data_configuration() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% signature_detection() :: #{
%%   <<"Confidence">> => float(),
%%   <<"Geometry">> => geometry()
%% }
-type signature_detection() :: #{binary() => any()}.

%% Example:
%% split_document() :: #{
%%   <<"Index">> => integer(),
%%   <<"Pages">> => list(integer())
%% }
-type split_document() :: #{binary() => any()}.

%% Example:
%% splitter_configuration() :: #{
%%   <<"State">> => list(any())
%% }
-type splitter_configuration() :: #{binary() => any()}.

%% Example:
%% start_document_analysis_request() :: #{
%%   <<"AdaptersConfig">> => adapters_config(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"DocumentLocation">> := document_location(),
%%   <<"FeatureTypes">> := list(list(any())()),
%%   <<"JobTag">> => string(),
%%   <<"KMSKeyId">> => string(),
%%   <<"NotificationChannel">> => notification_channel(),
%%   <<"OutputConfig">> => output_config(),
%%   <<"QueriesConfig">> => queries_config()
%% }
-type start_document_analysis_request() :: #{binary() => any()}.

%% Example:
%% start_document_analysis_response() :: #{
%%   <<"JobId">> => string()
%% }
-type start_document_analysis_response() :: #{binary() => any()}.

%% Example:
%% start_document_insights_request() :: #{
%%   <<"Blueprints">> => list(blueprint_item()),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"InputConfiguration">> := input_configuration(),
%%   <<"NotificationConfiguration">> => notification_configuration(),
%%   <<"OutputConfiguration">> := output_configuration(),
%%   <<"ProjectArn">> => string(),
%%   <<"Tags">> => map()
%% }
-type start_document_insights_request() :: #{binary() => any()}.

%% Example:
%% start_document_insights_response() :: #{
%%   <<"JobArn">> => string()
%% }
-type start_document_insights_response() :: #{binary() => any()}.

%% Example:
%% start_document_text_detection_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DocumentLocation">> := document_location(),
%%   <<"JobTag">> => string(),
%%   <<"KMSKeyId">> => string(),
%%   <<"NotificationChannel">> => notification_channel(),
%%   <<"OutputConfig">> => output_config()
%% }
-type start_document_text_detection_request() :: #{binary() => any()}.

%% Example:
%% start_document_text_detection_response() :: #{
%%   <<"JobId">> => string()
%% }
-type start_document_text_detection_response() :: #{binary() => any()}.

%% Example:
%% start_expense_analysis_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DocumentLocation">> := document_location(),
%%   <<"JobTag">> => string(),
%%   <<"KMSKeyId">> => string(),
%%   <<"NotificationChannel">> => notification_channel(),
%%   <<"OutputConfig">> => output_config()
%% }
-type start_expense_analysis_request() :: #{binary() => any()}.

%% Example:
%% start_expense_analysis_response() :: #{
%%   <<"JobId">> => string()
%% }
-type start_expense_analysis_response() :: #{binary() => any()}.

%% Example:
%% start_lending_analysis_request() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"DocumentLocation">> := document_location(),
%%   <<"JobTag">> => string(),
%%   <<"KMSKeyId">> => string(),
%%   <<"NotificationChannel">> => notification_channel(),
%%   <<"OutputConfig">> => output_config()
%% }
-type start_lending_analysis_request() :: #{binary() => any()}.

%% Example:
%% start_lending_analysis_response() :: #{
%%   <<"JobId">> => string()
%% }
-type start_lending_analysis_response() :: #{binary() => any()}.

%% Example:
%% summarization_configuration() :: #{
%%   <<"State">> => list(any())
%% }
-type summarization_configuration() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% undetected_signature() :: #{
%%   <<"Page">> => integer()
%% }
-type undetected_signature() :: #{binary() => any()}.

%% Example:
%% unsupported_document_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type unsupported_document_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% update_adapter_request() :: #{
%%   <<"AdapterId">> := string(),
%%   <<"AdapterName">> => string(),
%%   <<"AutoUpdate">> => list(any()),
%%   <<"Description">> => string()
%% }
-type update_adapter_request() :: #{binary() => any()}.

%% Example:
%% update_adapter_response() :: #{
%%   <<"AdapterId">> => string(),
%%   <<"AdapterName">> => string(),
%%   <<"AutoUpdate">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"FeatureTypes">> => list(list(any())())
%% }
-type update_adapter_response() :: #{binary() => any()}.

%% Example:
%% update_blueprint_request() :: #{
%%   <<"BlueprintArn">> := string(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"Schema">> => string()
%% }
-type update_blueprint_request() :: #{binary() => any()}.

%% Example:
%% update_blueprint_response() :: #{
%%   <<"BlueprintArn">> => string()
%% }
-type update_blueprint_response() :: #{binary() => any()}.

%% Example:
%% update_project_request() :: #{
%%   <<"CustomConfiguration">> => custom_configuration(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"ExtractionConfiguration">> => extraction_configuration(),
%%   <<"GenerativeConfiguration">> => generative_configuration(),
%%   <<"ProjectArn">> := string(),
%%   <<"ProjectDescription">> => string(),
%%   <<"SensitiveDataConfiguration">> => sensitive_data_configuration(),
%%   <<"SplitterConfiguration">> => splitter_configuration()
%% }
-type update_project_request() :: #{binary() => any()}.

%% Example:
%% update_project_response() :: #{
%%   <<"ProjectArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type update_project_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% warning() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Pages">> => list(integer())
%% }
-type warning() :: #{binary() => any()}.

-type analyze_document_errors() ::
    unsupported_document_exception() | 
    throttling_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_s3_object_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    human_loop_quota_exceeded_exception() | 
    document_too_large_exception() | 
    bad_document_exception() | 
    access_denied_exception().

-type analyze_expense_errors() ::
    unsupported_document_exception() | 
    throttling_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_s3_object_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    document_too_large_exception() | 
    bad_document_exception() | 
    access_denied_exception().

-type analyze_id_errors() ::
    unsupported_document_exception() | 
    throttling_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_s3_object_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    document_too_large_exception() | 
    bad_document_exception() | 
    access_denied_exception().

-type create_adapter_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    provisioned_throughput_exceeded_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    idempotent_parameter_mismatch_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_adapter_version_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    limit_exceeded_exception() | 
    invalid_s3_object_exception() | 
    invalid_parameter_exception() | 
    invalid_kms_key_exception() | 
    internal_server_error() | 
    idempotent_parameter_mismatch_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_blueprint_errors() ::
    validation_exception() | 
    provisioned_throughput_exceeded_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    conflict_exception() | 
    access_denied_exception().

-type create_blueprint_version_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    conflict_exception() | 
    access_denied_exception().

-type create_project_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_adapter_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_adapter_version_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_blueprint_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_project_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    access_denied_exception().

-type detect_document_text_errors() ::
    unsupported_document_exception() | 
    throttling_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_s3_object_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    document_too_large_exception() | 
    bad_document_exception() | 
    access_denied_exception().

-type get_adapter_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    access_denied_exception().

-type get_adapter_version_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    access_denied_exception().

-type get_blueprint_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    access_denied_exception().

-type get_document_analysis_errors() ::
    throttling_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_s3_object_exception() | 
    invalid_parameter_exception() | 
    invalid_kms_key_exception() | 
    invalid_job_id_exception() | 
    internal_server_error() | 
    access_denied_exception().

-type get_document_insights_errors() ::
    validation_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_parameter_exception() | 
    invalid_job_id_exception() | 
    internal_server_error() | 
    access_denied_exception().

-type get_document_text_detection_errors() ::
    throttling_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_s3_object_exception() | 
    invalid_parameter_exception() | 
    invalid_kms_key_exception() | 
    invalid_job_id_exception() | 
    internal_server_error() | 
    access_denied_exception().

-type get_expense_analysis_errors() ::
    throttling_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_s3_object_exception() | 
    invalid_parameter_exception() | 
    invalid_kms_key_exception() | 
    invalid_job_id_exception() | 
    internal_server_error() | 
    access_denied_exception().

-type get_lending_analysis_errors() ::
    throttling_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_s3_object_exception() | 
    invalid_parameter_exception() | 
    invalid_kms_key_exception() | 
    invalid_job_id_exception() | 
    internal_server_error() | 
    access_denied_exception().

-type get_lending_analysis_summary_errors() ::
    throttling_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_s3_object_exception() | 
    invalid_parameter_exception() | 
    invalid_kms_key_exception() | 
    invalid_job_id_exception() | 
    internal_server_error() | 
    access_denied_exception().

-type get_project_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    access_denied_exception().

-type list_adapter_versions_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    access_denied_exception().

-type list_adapters_errors() ::
    validation_exception() | 
    throttling_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    access_denied_exception().

-type list_blueprints_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    access_denied_exception().

-type list_projects_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    access_denied_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    access_denied_exception().

-type start_document_analysis_errors() ::
    unsupported_document_exception() | 
    throttling_exception() | 
    provisioned_throughput_exceeded_exception() | 
    limit_exceeded_exception() | 
    invalid_s3_object_exception() | 
    invalid_parameter_exception() | 
    invalid_kms_key_exception() | 
    internal_server_error() | 
    idempotent_parameter_mismatch_exception() | 
    document_too_large_exception() | 
    bad_document_exception() | 
    access_denied_exception().

-type start_document_insights_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    access_denied_exception().

-type start_document_text_detection_errors() ::
    unsupported_document_exception() | 
    throttling_exception() | 
    provisioned_throughput_exceeded_exception() | 
    limit_exceeded_exception() | 
    invalid_s3_object_exception() | 
    invalid_parameter_exception() | 
    invalid_kms_key_exception() | 
    internal_server_error() | 
    idempotent_parameter_mismatch_exception() | 
    document_too_large_exception() | 
    bad_document_exception() | 
    access_denied_exception().

-type start_expense_analysis_errors() ::
    unsupported_document_exception() | 
    throttling_exception() | 
    provisioned_throughput_exceeded_exception() | 
    limit_exceeded_exception() | 
    invalid_s3_object_exception() | 
    invalid_parameter_exception() | 
    invalid_kms_key_exception() | 
    internal_server_error() | 
    idempotent_parameter_mismatch_exception() | 
    document_too_large_exception() | 
    bad_document_exception() | 
    access_denied_exception().

-type start_lending_analysis_errors() ::
    unsupported_document_exception() | 
    throttling_exception() | 
    provisioned_throughput_exceeded_exception() | 
    limit_exceeded_exception() | 
    invalid_s3_object_exception() | 
    invalid_parameter_exception() | 
    invalid_kms_key_exception() | 
    internal_server_error() | 
    idempotent_parameter_mismatch_exception() | 
    document_too_large_exception() | 
    bad_document_exception() | 
    access_denied_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    access_denied_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    access_denied_exception().

-type update_adapter_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    conflict_exception() | 
    access_denied_exception().

-type update_blueprint_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    conflict_exception() | 
    access_denied_exception().

-type update_project_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    provisioned_throughput_exceeded_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    internal_server_error() | 
    conflict_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Analyzes an input document for relationships between detected items.
%%
%% The types of information returned are as follows:
%%
%% Form data (key-value pairs). The related information is returned in two
%% `Block' objects, each of type `KEY_VALUE_SET': a KEY
%% `Block' object and a VALUE `Block' object. For example,
%% Name: Ana Silva Carolina contains a key and value.
%% Name: is the key. Ana Silva Carolina is
%% the value.
%%
%% Table and table cell data. A TABLE `Block' object contains information
%% about a detected table. A CELL `Block' object is returned for each
%% cell in
%% a table.
%%
%% Lines and words of text. A LINE `Block' object contains one or more
%% WORD `Block' objects. All lines and words that are detected in the
%% document are returned (including text that doesn't have a relationship
%% with the value
%% of `FeatureTypes').
%%
%% Signatures. A SIGNATURE `Block' object contains the location
%% information
%% of a signature in a document. If used in conjunction with forms or tables,
%% a signature
%% can be given a Key-Value pairing or be detected in the cell of a table.
%%
%% Query. A QUERY Block object contains the query text, alias and link to the
%% associated Query results block object.
%%
%% Query Result. A QUERY_RESULT Block object contains the answer to the query
%% and an
%% ID that connects it to the query asked. This Block also contains a
%% confidence
%% score.
%%
%% Selection elements such as check boxes and option buttons (radio buttons)
%% can be
%% detected in form data and in tables. A SELECTION_ELEMENT `Block'
%% object contains
%% information about a selection element, including the selection status.
%%
%% You can choose which type of analysis to perform by specifying the
%% `FeatureTypes' list.
%%
%% The output is returned in a list of `Block' objects.
%%
%% `AnalyzeDocument' is a synchronous operation. To analyze documents
%% asynchronously, use `StartDocumentAnalysis'.
%%
%% For more information, see Document Text
%% Analysis:
%% https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html.
-spec analyze_document(aws_client:aws_client(), analyze_document_request()) ->
    {ok, analyze_document_response(), tuple()} |
    {error, any()} |
    {error, analyze_document_errors(), tuple()}.
analyze_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    analyze_document(Client, Input, []).

-spec analyze_document(aws_client:aws_client(), analyze_document_request(), proplists:proplist()) ->
    {ok, analyze_document_response(), tuple()} |
    {error, any()} |
    {error, analyze_document_errors(), tuple()}.
analyze_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AnalyzeDocument">>, Input, Options).

%% @doc
%% `AnalyzeExpense' synchronously analyzes an input document for
%% financially
%% related relationships between text.
%%
%% Information is returned as `ExpenseDocuments' and seperated as
%% follows:
%%
%% `LineItemGroups'- A data set containing `LineItems' which
%% store information about the lines of text, such as an item purchased and
%% its price on
%% a receipt.
%%
%% `SummaryFields'- Contains all other information a receipt, such as
%% header information or the vendors name.
-spec analyze_expense(aws_client:aws_client(), analyze_expense_request()) ->
    {ok, analyze_expense_response(), tuple()} |
    {error, any()} |
    {error, analyze_expense_errors(), tuple()}.
analyze_expense(Client, Input)
  when is_map(Client), is_map(Input) ->
    analyze_expense(Client, Input, []).

-spec analyze_expense(aws_client:aws_client(), analyze_expense_request(), proplists:proplist()) ->
    {ok, analyze_expense_response(), tuple()} |
    {error, any()} |
    {error, analyze_expense_errors(), tuple()}.
analyze_expense(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AnalyzeExpense">>, Input, Options).

%% @doc Analyzes identity documents for relevant information.
%%
%% This information is extracted and
%% returned as `IdentityDocumentFields', which records both the
%% normalized field
%% and value of the extracted text. Unlike other Amazon Textract operations,
%% `AnalyzeID' doesn't return any Geometry data.
-spec analyze_id(aws_client:aws_client(), analyze_id_request()) ->
    {ok, analyze_id_response(), tuple()} |
    {error, any()} |
    {error, analyze_id_errors(), tuple()}.
analyze_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    analyze_id(Client, Input, []).

-spec analyze_id(aws_client:aws_client(), analyze_id_request(), proplists:proplist()) ->
    {ok, analyze_id_response(), tuple()} |
    {error, any()} |
    {error, analyze_id_errors(), tuple()}.
analyze_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AnalyzeID">>, Input, Options).

%% @doc Creates an adapter, which can be fine-tuned for enhanced performance
%% on user provided
%% documents.
%%
%% Takes an AdapterName and FeatureType. Currently the only supported feature
%% type
%% is `QUERIES'. You can also provide a Description, Tags, and a
%% ClientRequestToken. You can choose whether or not the adapter should be
%% AutoUpdated with
%% the AutoUpdate argument. By default, AutoUpdate is set to DISABLED.
-spec create_adapter(aws_client:aws_client(), create_adapter_request()) ->
    {ok, create_adapter_response(), tuple()} |
    {error, any()} |
    {error, create_adapter_errors(), tuple()}.
create_adapter(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_adapter(Client, Input, []).

-spec create_adapter(aws_client:aws_client(), create_adapter_request(), proplists:proplist()) ->
    {ok, create_adapter_response(), tuple()} |
    {error, any()} |
    {error, create_adapter_errors(), tuple()}.
create_adapter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAdapter">>, Input, Options).

%% @doc Creates a new version of an adapter.
%%
%% Operates on a provided AdapterId and a specified
%% dataset provided via the DatasetConfig argument. Requires that you
%% specify an Amazon S3 bucket with the OutputConfig argument. You can
%% provide an optional KMSKeyId,
%% an optional ClientRequestToken, and optional tags.
-spec create_adapter_version(aws_client:aws_client(), create_adapter_version_request()) ->
    {ok, create_adapter_version_response(), tuple()} |
    {error, any()} |
    {error, create_adapter_version_errors(), tuple()}.
create_adapter_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_adapter_version(Client, Input, []).

-spec create_adapter_version(aws_client:aws_client(), create_adapter_version_request(), proplists:proplist()) ->
    {ok, create_adapter_version_response(), tuple()} |
    {error, any()} |
    {error, create_adapter_version_errors(), tuple()}.
create_adapter_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAdapterVersion">>, Input, Options).

%% @doc Creates a blueprint that defines the schema Amazon Textract uses to
%% extract structured
%% data from a document during a document insights job.
%%
%% A blueprint describes the fields
%% to extract and how to normalize them.
-spec create_blueprint(aws_client:aws_client(), create_blueprint_request()) ->
    {ok, create_blueprint_response(), tuple()} |
    {error, any()} |
    {error, create_blueprint_errors(), tuple()}.
create_blueprint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_blueprint(Client, Input, []).

-spec create_blueprint(aws_client:aws_client(), create_blueprint_request(), proplists:proplist()) ->
    {ok, create_blueprint_response(), tuple()} |
    {error, any()} |
    {error, create_blueprint_errors(), tuple()}.
create_blueprint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBlueprint">>, Input, Options).

%% @doc Creates a new, immutable version of an existing blueprint so that
%% projects can pin to a
%% specific version.
-spec create_blueprint_version(aws_client:aws_client(), create_blueprint_version_request()) ->
    {ok, create_blueprint_version_response(), tuple()} |
    {error, any()} |
    {error, create_blueprint_version_errors(), tuple()}.
create_blueprint_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_blueprint_version(Client, Input, []).

-spec create_blueprint_version(aws_client:aws_client(), create_blueprint_version_request(), proplists:proplist()) ->
    {ok, create_blueprint_version_response(), tuple()} |
    {error, any()} |
    {error, create_blueprint_version_errors(), tuple()}.
create_blueprint_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBlueprintVersion">>, Input, Options).

%% @doc Creates a project that groups the configuration used to run document
%% insights jobs.
-spec create_project(aws_client:aws_client(), create_project_request()) ->
    {ok, create_project_response(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
create_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_project(Client, Input, []).

-spec create_project(aws_client:aws_client(), create_project_request(), proplists:proplist()) ->
    {ok, create_project_response(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
create_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProject">>, Input, Options).

%% @doc Deletes an Amazon Textract adapter.
%%
%% Takes an AdapterId and deletes the adapter specified by the ID.
-spec delete_adapter(aws_client:aws_client(), delete_adapter_request()) ->
    {ok, delete_adapter_response(), tuple()} |
    {error, any()} |
    {error, delete_adapter_errors(), tuple()}.
delete_adapter(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_adapter(Client, Input, []).

-spec delete_adapter(aws_client:aws_client(), delete_adapter_request(), proplists:proplist()) ->
    {ok, delete_adapter_response(), tuple()} |
    {error, any()} |
    {error, delete_adapter_errors(), tuple()}.
delete_adapter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAdapter">>, Input, Options).

%% @doc Deletes an Amazon Textract adapter version.
%%
%% Requires that you specify both an AdapterId and a
%% AdapterVersion. Deletes the adapter version specified by the AdapterId and
%% the AdapterVersion.
-spec delete_adapter_version(aws_client:aws_client(), delete_adapter_version_request()) ->
    {ok, delete_adapter_version_response(), tuple()} |
    {error, any()} |
    {error, delete_adapter_version_errors(), tuple()}.
delete_adapter_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_adapter_version(Client, Input, []).

-spec delete_adapter_version(aws_client:aws_client(), delete_adapter_version_request(), proplists:proplist()) ->
    {ok, delete_adapter_version_response(), tuple()} |
    {error, any()} |
    {error, delete_adapter_version_errors(), tuple()}.
delete_adapter_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAdapterVersion">>, Input, Options).

%% @doc Deletes a blueprint, or a specific version of a blueprint.
-spec delete_blueprint(aws_client:aws_client(), delete_blueprint_request()) ->
    {ok, delete_blueprint_response(), tuple()} |
    {error, any()} |
    {error, delete_blueprint_errors(), tuple()}.
delete_blueprint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_blueprint(Client, Input, []).

-spec delete_blueprint(aws_client:aws_client(), delete_blueprint_request(), proplists:proplist()) ->
    {ok, delete_blueprint_response(), tuple()} |
    {error, any()} |
    {error, delete_blueprint_errors(), tuple()}.
delete_blueprint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBlueprint">>, Input, Options).

%% @doc Deletes a project.
-spec delete_project(aws_client:aws_client(), delete_project_request()) ->
    {ok, delete_project_response(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_project(Client, Input, []).

-spec delete_project(aws_client:aws_client(), delete_project_request(), proplists:proplist()) ->
    {ok, delete_project_response(), tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProject">>, Input, Options).

%% @doc Detects text in the input document.
%%
%% Amazon Textract can detect lines of text and the
%% words that make up a line of text. The input document must be in one of
%% the following image
%% formats: JPEG, PNG, PDF, or TIFF. `DetectDocumentText' returns the
%% detected
%% text in an array of `Block' objects.
%%
%% Each document page has as an associated `Block' of type PAGE. Each
%% PAGE `Block' object
%% is the parent of LINE `Block' objects that represent the lines of
%% detected text on a page. A LINE `Block' object is
%% a parent for each word that makes up the line. Words are represented by
%% `Block' objects of type WORD.
%%
%% `DetectDocumentText' is a synchronous operation. To analyze documents
%% asynchronously, use `StartDocumentTextDetection'.
%%
%% For more information, see Document Text Detection:
%% https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html.
-spec detect_document_text(aws_client:aws_client(), detect_document_text_request()) ->
    {ok, detect_document_text_response(), tuple()} |
    {error, any()} |
    {error, detect_document_text_errors(), tuple()}.
detect_document_text(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_document_text(Client, Input, []).

-spec detect_document_text(aws_client:aws_client(), detect_document_text_request(), proplists:proplist()) ->
    {ok, detect_document_text_response(), tuple()} |
    {error, any()} |
    {error, detect_document_text_errors(), tuple()}.
detect_document_text(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectDocumentText">>, Input, Options).

%% @doc Gets configuration information for an adapter specified by an
%% AdapterId, returning information on AdapterName, Description,
%% CreationTime, AutoUpdate status, and FeatureTypes.
-spec get_adapter(aws_client:aws_client(), get_adapter_request()) ->
    {ok, get_adapter_response(), tuple()} |
    {error, any()} |
    {error, get_adapter_errors(), tuple()}.
get_adapter(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_adapter(Client, Input, []).

-spec get_adapter(aws_client:aws_client(), get_adapter_request(), proplists:proplist()) ->
    {ok, get_adapter_response(), tuple()} |
    {error, any()} |
    {error, get_adapter_errors(), tuple()}.
get_adapter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAdapter">>, Input, Options).

%% @doc Gets configuration information for the specified adapter version,
%% including:
%% AdapterId, AdapterVersion, FeatureTypes, Status, StatusMessage,
%% DatasetConfig,
%% KMSKeyId, OutputConfig, Tags and EvaluationMetrics.
-spec get_adapter_version(aws_client:aws_client(), get_adapter_version_request()) ->
    {ok, get_adapter_version_response(), tuple()} |
    {error, any()} |
    {error, get_adapter_version_errors(), tuple()}.
get_adapter_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_adapter_version(Client, Input, []).

-spec get_adapter_version(aws_client:aws_client(), get_adapter_version_request(), proplists:proplist()) ->
    {ok, get_adapter_version_response(), tuple()} |
    {error, any()} |
    {error, get_adapter_version_errors(), tuple()}.
get_adapter_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAdapterVersion">>, Input, Options).

%% @doc Gets the details of a blueprint, including its schema, encryption
%% settings, and
%% timestamps.
-spec get_blueprint(aws_client:aws_client(), get_blueprint_request()) ->
    {ok, get_blueprint_response(), tuple()} |
    {error, any()} |
    {error, get_blueprint_errors(), tuple()}.
get_blueprint(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_blueprint(Client, Input, []).

-spec get_blueprint(aws_client:aws_client(), get_blueprint_request(), proplists:proplist()) ->
    {ok, get_blueprint_response(), tuple()} |
    {error, any()} |
    {error, get_blueprint_errors(), tuple()}.
get_blueprint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBlueprint">>, Input, Options).

%% @doc Gets the results for an Amazon Textract asynchronous operation that
%% analyzes text in a
%% document.
%%
%% You start asynchronous text analysis by calling
%% `StartDocumentAnalysis',
%% which returns a job identifier (`JobId'). When the text analysis
%% operation
%% finishes, Amazon Textract publishes a completion status to the Amazon
%% Simple Notification Service (Amazon SNS) topic
%% that's registered in the initial call to `StartDocumentAnalysis'.
%% To get the
%% results of the text-detection operation, first check that the status value
%% published to the
%% Amazon SNS topic is `SUCCEEDED'. If so, call
%% `GetDocumentAnalysis', and
%% pass the job identifier (`JobId') from the initial call to
%% `StartDocumentAnalysis'.
%%
%% `GetDocumentAnalysis' returns an array of `Block' objects.
%% The following types of information are returned:
%%
%% Form data (key-value pairs). The related information is returned in two
%% `Block' objects, each of type `KEY_VALUE_SET': a KEY
%% `Block' object and a VALUE `Block' object. For example,
%% Name: Ana Silva Carolina contains a key and value.
%% Name: is the key. Ana Silva Carolina is
%% the value.
%%
%% Table and table cell data. A TABLE `Block' object contains information
%% about a detected table. A CELL `Block' object is returned for each
%% cell in
%% a table.
%%
%% Lines and words of text. A LINE `Block' object contains one or more
%% WORD `Block' objects. All lines and words that are detected in the
%% document are returned (including text that doesn't have a relationship
%% with the value
%% of the `StartDocumentAnalysis'
%% `FeatureTypes' input parameter).
%%
%% Query. A QUERY Block object contains the query text, alias and link to the
%% associated Query results block object.
%%
%% Query Results. A QUERY_RESULT Block object contains the answer to the
%% query and an
%% ID that connects it to the query asked. This Block also contains a
%% confidence
%% score.
%%
%% While processing a document with queries, look out for
%% `INVALID_REQUEST_PARAMETERS' output. This indicates that either the
%% per
%% page query limit has been exceeded or that the operation is trying to
%% query a page in
%% the document which doesn’t exist.
%%
%% Selection elements such as check boxes and option buttons (radio buttons)
%% can be
%% detected in form data and in tables. A SELECTION_ELEMENT `Block'
%% object contains
%% information about a selection element, including the selection status.
%%
%% Use the `MaxResults' parameter to limit the number of blocks that are
%% returned. If there are more results than specified in `MaxResults',
%% the value of
%% `NextToken' in the operation response contains a pagination token for
%% getting
%% the next set of results. To get the next page of results, call
%% `GetDocumentAnalysis', and populate the `NextToken' request
%% parameter with the token value that's returned from the previous call
%% to
%% `GetDocumentAnalysis'.
%%
%% For more information, see Document Text
%% Analysis:
%% https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html.
-spec get_document_analysis(aws_client:aws_client(), get_document_analysis_request()) ->
    {ok, get_document_analysis_response(), tuple()} |
    {error, any()} |
    {error, get_document_analysis_errors(), tuple()}.
get_document_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_document_analysis(Client, Input, []).

-spec get_document_analysis(aws_client:aws_client(), get_document_analysis_request(), proplists:proplist()) ->
    {ok, get_document_analysis_response(), tuple()} |
    {error, any()} |
    {error, get_document_analysis_errors(), tuple()}.
get_document_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDocumentAnalysis">>, Input, Options).

%% @doc Gets the status and results of a document insights job that was
%% started by
%% `StartDocumentInsights'.
-spec get_document_insights(aws_client:aws_client(), get_document_insights_request()) ->
    {ok, get_document_insights_response(), tuple()} |
    {error, any()} |
    {error, get_document_insights_errors(), tuple()}.
get_document_insights(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_document_insights(Client, Input, []).

-spec get_document_insights(aws_client:aws_client(), get_document_insights_request(), proplists:proplist()) ->
    {ok, get_document_insights_response(), tuple()} |
    {error, any()} |
    {error, get_document_insights_errors(), tuple()}.
get_document_insights(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDocumentInsights">>, Input, Options).

%% @doc Gets the results for an Amazon Textract asynchronous operation that
%% detects text in a document.
%%
%% Amazon Textract can detect lines of text and the words that make up a line
%% of text.
%%
%% You start asynchronous text detection by calling
%% `StartDocumentTextDetection', which returns a job identifier
%% (`JobId'). When the text detection operation finishes, Amazon Textract
%% publishes a
%% completion status to the Amazon Simple Notification Service (Amazon SNS)
%% topic that's registered in the initial call to
%% `StartDocumentTextDetection'. To get the results of the text-detection
%% operation, first check that the status value published to the Amazon SNS
%% topic is
%% `SUCCEEDED'. If so, call `GetDocumentTextDetection', and pass the
%% job identifier (`JobId') from the initial call to
%% `StartDocumentTextDetection'.
%%
%% `GetDocumentTextDetection' returns an array of `Block'
%% objects.
%%
%% Each document page has as an associated `Block' of type PAGE. Each
%% PAGE `Block' object
%% is the parent of LINE `Block' objects that represent the lines of
%% detected text on a page. A LINE `Block' object is
%% a parent for each word that makes up the line. Words are represented by
%% `Block' objects of type WORD.
%%
%% Use the MaxResults parameter to limit the number of blocks that are
%% returned. If there
%% are more results than specified in `MaxResults', the value of
%% `NextToken' in the operation response contains a pagination token for
%% getting
%% the next set of results. To get the next page of results, call
%% `GetDocumentTextDetection', and populate the `NextToken' request
%% parameter with the token value that's returned from the previous call
%% to
%% `GetDocumentTextDetection'.
%%
%% For more information, see Document Text Detection:
%% https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html.
-spec get_document_text_detection(aws_client:aws_client(), get_document_text_detection_request()) ->
    {ok, get_document_text_detection_response(), tuple()} |
    {error, any()} |
    {error, get_document_text_detection_errors(), tuple()}.
get_document_text_detection(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_document_text_detection(Client, Input, []).

-spec get_document_text_detection(aws_client:aws_client(), get_document_text_detection_request(), proplists:proplist()) ->
    {ok, get_document_text_detection_response(), tuple()} |
    {error, any()} |
    {error, get_document_text_detection_errors(), tuple()}.
get_document_text_detection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDocumentTextDetection">>, Input, Options).

%% @doc Gets the results for an Amazon Textract asynchronous operation that
%% analyzes invoices and
%% receipts.
%%
%% Amazon Textract finds contact information, items purchased, and vendor
%% name, from input
%% invoices and receipts.
%%
%% You start asynchronous invoice/receipt analysis by calling
%% `StartExpenseAnalysis', which returns a job identifier (`JobId').
%% Upon
%% completion of the invoice/receipt analysis, Amazon Textract publishes the
%% completion status to the
%% Amazon Simple Notification Service (Amazon SNS) topic. This topic must be
%% registered in the initial call to
%% `StartExpenseAnalysis'. To get the results of the invoice/receipt
%% analysis operation,
%% first ensure that the status value published to the Amazon SNS topic is
%% `SUCCEEDED'. If so,
%% call `GetExpenseAnalysis', and pass the job identifier (`JobId')
%% from the
%% initial call to `StartExpenseAnalysis'.
%%
%% Use the MaxResults parameter to limit the number of blocks that are
%% returned. If there are
%% more results than specified in `MaxResults', the value of
%% `NextToken' in
%% the operation response contains a pagination token for getting the next
%% set of results. To get
%% the next page of results, call `GetExpenseAnalysis', and populate the
%% `NextToken' request parameter with the token value that's returned
%% from the previous
%% call to `GetExpenseAnalysis'.
%%
%% For more information, see Analyzing Invoices and Receipts:
%% https://docs.aws.amazon.com/textract/latest/dg/invoices-receipts.html.
-spec get_expense_analysis(aws_client:aws_client(), get_expense_analysis_request()) ->
    {ok, get_expense_analysis_response(), tuple()} |
    {error, any()} |
    {error, get_expense_analysis_errors(), tuple()}.
get_expense_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_expense_analysis(Client, Input, []).

-spec get_expense_analysis(aws_client:aws_client(), get_expense_analysis_request(), proplists:proplist()) ->
    {ok, get_expense_analysis_response(), tuple()} |
    {error, any()} |
    {error, get_expense_analysis_errors(), tuple()}.
get_expense_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetExpenseAnalysis">>, Input, Options).

%% @doc Gets the results for an Amazon Textract asynchronous operation that
%% analyzes text in a
%% lending document.
%%
%% You start asynchronous text analysis by calling
%% `StartLendingAnalysis',
%% which returns a job identifier (`JobId'). When the text analysis
%% operation
%% finishes, Amazon Textract publishes a completion status to the Amazon
%% Simple
%% Notification Service (Amazon SNS) topic that's registered in the
%% initial call to
%% `StartLendingAnalysis'.
%%
%% To get the results of the text analysis operation, first check that the
%% status value
%% published to the Amazon SNS topic is SUCCEEDED. If so, call
%% GetLendingAnalysis, and pass
%% the job identifier (`JobId') from the initial call to
%% `StartLendingAnalysis'.
-spec get_lending_analysis(aws_client:aws_client(), get_lending_analysis_request()) ->
    {ok, get_lending_analysis_response(), tuple()} |
    {error, any()} |
    {error, get_lending_analysis_errors(), tuple()}.
get_lending_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_lending_analysis(Client, Input, []).

-spec get_lending_analysis(aws_client:aws_client(), get_lending_analysis_request(), proplists:proplist()) ->
    {ok, get_lending_analysis_response(), tuple()} |
    {error, any()} |
    {error, get_lending_analysis_errors(), tuple()}.
get_lending_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLendingAnalysis">>, Input, Options).

%% @doc Gets summarized results for the `StartLendingAnalysis' operation,
%% which analyzes
%% text in a lending document.
%%
%% The returned summary consists of information about documents grouped
%% together by a common document type. Information like detected signatures,
%% page numbers, and split
%% documents is returned with respect to the type of grouped document.
%%
%% You start asynchronous text analysis by calling
%% `StartLendingAnalysis', which
%% returns a job identifier (`JobId'). When the text analysis operation
%% finishes, Amazon
%% Textract publishes a completion status to the Amazon Simple Notification
%% Service (Amazon SNS)
%% topic that's registered in the initial call to
%% `StartLendingAnalysis'.
%%
%% To get the results of the text analysis operation, first check that the
%% status value
%% published to the Amazon SNS topic is SUCCEEDED. If so, call
%% `GetLendingAnalysisSummary', and pass the job identifier (`JobId')
%% from
%% the initial call to `StartLendingAnalysis'.
-spec get_lending_analysis_summary(aws_client:aws_client(), get_lending_analysis_summary_request()) ->
    {ok, get_lending_analysis_summary_response(), tuple()} |
    {error, any()} |
    {error, get_lending_analysis_summary_errors(), tuple()}.
get_lending_analysis_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_lending_analysis_summary(Client, Input, []).

-spec get_lending_analysis_summary(aws_client:aws_client(), get_lending_analysis_summary_request(), proplists:proplist()) ->
    {ok, get_lending_analysis_summary_response(), tuple()} |
    {error, any()} |
    {error, get_lending_analysis_summary_errors(), tuple()}.
get_lending_analysis_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLendingAnalysisSummary">>, Input, Options).

%% @doc Gets the details of a project, including its configuration, status,
%% and timestamps.
-spec get_project(aws_client:aws_client(), get_project_request()) ->
    {ok, get_project_response(), tuple()} |
    {error, any()} |
    {error, get_project_errors(), tuple()}.
get_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_project(Client, Input, []).

-spec get_project(aws_client:aws_client(), get_project_request(), proplists:proplist()) ->
    {ok, get_project_response(), tuple()} |
    {error, any()} |
    {error, get_project_errors(), tuple()}.
get_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProject">>, Input, Options).

%% @doc List all version of an adapter that meet the specified filtration
%% criteria.
-spec list_adapter_versions(aws_client:aws_client(), list_adapter_versions_request()) ->
    {ok, list_adapter_versions_response(), tuple()} |
    {error, any()} |
    {error, list_adapter_versions_errors(), tuple()}.
list_adapter_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_adapter_versions(Client, Input, []).

-spec list_adapter_versions(aws_client:aws_client(), list_adapter_versions_request(), proplists:proplist()) ->
    {ok, list_adapter_versions_response(), tuple()} |
    {error, any()} |
    {error, list_adapter_versions_errors(), tuple()}.
list_adapter_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAdapterVersions">>, Input, Options).

%% @doc Lists all adapters that match the specified filtration criteria.
-spec list_adapters(aws_client:aws_client(), list_adapters_request()) ->
    {ok, list_adapters_response(), tuple()} |
    {error, any()} |
    {error, list_adapters_errors(), tuple()}.
list_adapters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_adapters(Client, Input, []).

-spec list_adapters(aws_client:aws_client(), list_adapters_request(), proplists:proplist()) ->
    {ok, list_adapters_response(), tuple()} |
    {error, any()} |
    {error, list_adapters_errors(), tuple()}.
list_adapters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAdapters">>, Input, Options).

%% @doc Lists the blueprints that are available to the caller, with optional
%% filtering by
%% project and resource owner.
%%
%% The results are paginated. If the response includes a
%% `NextToken' value, pass it in a subsequent call to retrieve the next
%% page of
%% results.
-spec list_blueprints(aws_client:aws_client(), list_blueprints_request()) ->
    {ok, list_blueprints_response(), tuple()} |
    {error, any()} |
    {error, list_blueprints_errors(), tuple()}.
list_blueprints(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_blueprints(Client, Input, []).

-spec list_blueprints(aws_client:aws_client(), list_blueprints_request(), proplists:proplist()) ->
    {ok, list_blueprints_response(), tuple()} |
    {error, any()} |
    {error, list_blueprints_errors(), tuple()}.
list_blueprints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBlueprints">>, Input, Options).

%% @doc Lists the projects that are available to the caller, with optional
%% filtering by
%% blueprint.
%%
%% The results are paginated. If the response includes a `NextToken'
%% value, pass it in a subsequent call to retrieve the next page of results.
-spec list_projects(aws_client:aws_client(), list_projects_request()) ->
    {ok, list_projects_response(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_projects(Client, Input, []).

-spec list_projects(aws_client:aws_client(), list_projects_request(), proplists:proplist()) ->
    {ok, list_projects_response(), tuple()} |
    {error, any()} |
    {error, list_projects_errors(), tuple()}.
list_projects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProjects">>, Input, Options).

%% @doc Lists all tags for an Amazon Textract resource.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Starts the asynchronous analysis of an input document for
%% relationships between detected
%% items such as key-value pairs, tables, and selection elements.
%%
%% `StartDocumentAnalysis' can analyze text in documents that are in
%% JPEG, PNG, TIFF, and PDF format. The
%% documents are stored in an Amazon S3 bucket. Use `DocumentLocation' to
%% specify the bucket name and file name
%% of the document.
%%
%% `StartDocumentAnalysis' returns a job identifier
%% (`JobId') that you use to get the results of the operation. When text
%% analysis is finished, Amazon Textract publishes a completion status to the
%% Amazon Simple Notification Service (Amazon SNS)
%% topic that you specify in `NotificationChannel'. To get the results of
%% the text
%% analysis operation, first check that the status value published to the
%% Amazon SNS topic is
%% `SUCCEEDED'. If so, call `GetDocumentAnalysis', and pass
%% the job identifier (`JobId') from the initial call to
%% `StartDocumentAnalysis'.
%%
%% For more information, see Document Text Analysis:
%% https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html.
-spec start_document_analysis(aws_client:aws_client(), start_document_analysis_request()) ->
    {ok, start_document_analysis_response(), tuple()} |
    {error, any()} |
    {error, start_document_analysis_errors(), tuple()}.
start_document_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_document_analysis(Client, Input, []).

-spec start_document_analysis(aws_client:aws_client(), start_document_analysis_request(), proplists:proplist()) ->
    {ok, start_document_analysis_response(), tuple()} |
    {error, any()} |
    {error, start_document_analysis_errors(), tuple()}.
start_document_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDocumentAnalysis">>, Input, Options).

%% @doc Starts an asynchronous job that analyzes a document using the
%% configuration defined by a
%% project or a set of blueprints.
%%
%% Use `GetDocumentInsights' to
%% retrieve the results of the job.
-spec start_document_insights(aws_client:aws_client(), start_document_insights_request()) ->
    {ok, start_document_insights_response(), tuple()} |
    {error, any()} |
    {error, start_document_insights_errors(), tuple()}.
start_document_insights(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_document_insights(Client, Input, []).

-spec start_document_insights(aws_client:aws_client(), start_document_insights_request(), proplists:proplist()) ->
    {ok, start_document_insights_response(), tuple()} |
    {error, any()} |
    {error, start_document_insights_errors(), tuple()}.
start_document_insights(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDocumentInsights">>, Input, Options).

%% @doc Starts the asynchronous detection of text in a document.
%%
%% Amazon Textract can detect lines of
%% text and the words that make up a line of text.
%%
%% `StartDocumentTextDetection' can analyze text in documents that are in
%% JPEG, PNG, TIFF, and PDF format. The
%% documents are stored in an Amazon S3 bucket. Use `DocumentLocation' to
%% specify the bucket name and file name
%% of the document.
%%
%% `StartDocumentTextDetection' returns a job identifier
%% (`JobId') that you use to get the results of the operation. When text
%% detection is finished, Amazon Textract publishes a completion status to
%% the Amazon Simple Notification Service (Amazon SNS)
%% topic that you specify in `NotificationChannel'. To get the results of
%% the text
%% detection operation, first check that the status value published to the
%% Amazon SNS topic is
%% `SUCCEEDED'. If so, call `GetDocumentTextDetection', and
%% pass the job identifier (`JobId') from the initial call to
%% `StartDocumentTextDetection'.
%%
%% For more information, see Document Text Detection:
%% https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html.
-spec start_document_text_detection(aws_client:aws_client(), start_document_text_detection_request()) ->
    {ok, start_document_text_detection_response(), tuple()} |
    {error, any()} |
    {error, start_document_text_detection_errors(), tuple()}.
start_document_text_detection(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_document_text_detection(Client, Input, []).

-spec start_document_text_detection(aws_client:aws_client(), start_document_text_detection_request(), proplists:proplist()) ->
    {ok, start_document_text_detection_response(), tuple()} |
    {error, any()} |
    {error, start_document_text_detection_errors(), tuple()}.
start_document_text_detection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDocumentTextDetection">>, Input, Options).

%% @doc Starts the asynchronous analysis of invoices or receipts for data
%% like contact information,
%% items purchased, and vendor names.
%%
%% `StartExpenseAnalysis' can analyze text in documents that are in JPEG,
%% PNG, and
%% PDF format. The documents must be stored in an Amazon S3 bucket. Use the
%% `DocumentLocation' parameter to specify the name of your S3 bucket and
%% the name of the
%% document in that bucket.
%%
%% `StartExpenseAnalysis' returns a job identifier (`JobId') that you
%% will provide to `GetExpenseAnalysis' to retrieve the results of the
%% operation. When
%% the analysis of the input invoices/receipts is finished, Amazon Textract
%% publishes a completion
%% status to the Amazon Simple Notification Service (Amazon SNS) topic that
%% you provide to the `NotificationChannel'.
%% To obtain the results of the invoice and receipt analysis operation,
%% ensure that the status value
%% published to the Amazon SNS topic is `SUCCEEDED'. If so, call
%% `GetExpenseAnalysis', and pass the job identifier (`JobId') that
%% was
%% returned by your call to `StartExpenseAnalysis'.
%%
%% For more information, see Analyzing Invoices and Receipts:
%% https://docs.aws.amazon.com/textract/latest/dg/invoice-receipts.html.
-spec start_expense_analysis(aws_client:aws_client(), start_expense_analysis_request()) ->
    {ok, start_expense_analysis_response(), tuple()} |
    {error, any()} |
    {error, start_expense_analysis_errors(), tuple()}.
start_expense_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_expense_analysis(Client, Input, []).

-spec start_expense_analysis(aws_client:aws_client(), start_expense_analysis_request(), proplists:proplist()) ->
    {ok, start_expense_analysis_response(), tuple()} |
    {error, any()} |
    {error, start_expense_analysis_errors(), tuple()}.
start_expense_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartExpenseAnalysis">>, Input, Options).

%% @doc Starts the classification and analysis of an input document.
%%
%% `StartLendingAnalysis' initiates the classification and analysis of a
%% packet of
%% lending documents. `StartLendingAnalysis' operates on a document file
%% located in an
%% Amazon S3 bucket.
%%
%% `StartLendingAnalysis' can analyze text in documents that are in one
%% of the
%% following formats: JPEG, PNG, TIFF, PDF. Use `DocumentLocation' to
%% specify the bucket
%% name and the file name of the document.
%%
%% `StartLendingAnalysis' returns a job identifier (`JobId') that you
%% use
%% to get the results of the operation. When the text analysis is finished,
%% Amazon Textract
%% publishes a completion status to the Amazon Simple Notification Service
%% (Amazon SNS) topic that
%% you specify in `NotificationChannel'. To get the results of the text
%% analysis
%% operation, first check that the status value published to the Amazon SNS
%% topic is SUCCEEDED. If
%% the status is SUCCEEDED you can call either `GetLendingAnalysis' or
%% `GetLendingAnalysisSummary' and provide the `JobId' to obtain the
%% results
%% of the analysis.
%%
%% If using `OutputConfig' to specify an Amazon S3 bucket, the output
%% will be contained
%% within the specified prefix in a directory labeled with the job-id. In the
%% directory there are 3
%% sub-directories:
%%
%% detailedResponse (contains the GetLendingAnalysis response)
%%
%% summaryResponse (for the GetLendingAnalysisSummary response)
%%
%% splitDocuments (documents split across logical boundaries)
-spec start_lending_analysis(aws_client:aws_client(), start_lending_analysis_request()) ->
    {ok, start_lending_analysis_response(), tuple()} |
    {error, any()} |
    {error, start_lending_analysis_errors(), tuple()}.
start_lending_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_lending_analysis(Client, Input, []).

-spec start_lending_analysis(aws_client:aws_client(), start_lending_analysis_request(), proplists:proplist()) ->
    {ok, start_lending_analysis_response(), tuple()} |
    {error, any()} |
    {error, start_lending_analysis_errors(), tuple()}.
start_lending_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartLendingAnalysis">>, Input, Options).

%% @doc Adds one or more tags to the specified resource.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes any tags with the specified keys from the specified resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Update the configuration for an adapter.
%%
%% FeatureTypes configurations cannot be updated.
%% At least one new parameter must be specified as an argument.
-spec update_adapter(aws_client:aws_client(), update_adapter_request()) ->
    {ok, update_adapter_response(), tuple()} |
    {error, any()} |
    {error, update_adapter_errors(), tuple()}.
update_adapter(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_adapter(Client, Input, []).

-spec update_adapter(aws_client:aws_client(), update_adapter_request(), proplists:proplist()) ->
    {ok, update_adapter_response(), tuple()} |
    {error, any()} |
    {error, update_adapter_errors(), tuple()}.
update_adapter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAdapter">>, Input, Options).

%% @doc Updates an existing blueprint, replacing its schema and, optionally,
%% its encryption
%% configuration.
-spec update_blueprint(aws_client:aws_client(), update_blueprint_request()) ->
    {ok, update_blueprint_response(), tuple()} |
    {error, any()} |
    {error, update_blueprint_errors(), tuple()}.
update_blueprint(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_blueprint(Client, Input, []).

-spec update_blueprint(aws_client:aws_client(), update_blueprint_request(), proplists:proplist()) ->
    {ok, update_blueprint_response(), tuple()} |
    {error, any()} |
    {error, update_blueprint_errors(), tuple()}.
update_blueprint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBlueprint">>, Input, Options).

%% @doc Updates the configuration of an existing project.
%%
%% If you omit a configuration, UpdateProject leaves it unchanged.
%% A configuration that you supply replaces the stored one, so include every
%% setting that you want to keep.
-spec update_project(aws_client:aws_client(), update_project_request()) ->
    {ok, update_project_response(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_project(Client, Input, []).

-spec update_project(aws_client:aws_client(), update_project_request(), proplists:proplist()) ->
    {ok, update_project_response(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProject">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), term()}} |
    {error, Error, {integer(), list(), term()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"textract">>},
    DefaultHost = build_host(<<"textract">>, Client1),
    {URL, Host} = aws_util:apply_endpoint_url_override(build_url(DefaultHost, Client1), DefaultHost, <<"/">>, <<"AWS_ENDPOINT_URL_TEXTRACT">>),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"Textract.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case response_body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = response_body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

%% hackney 1.x and 2.x return a client reference that is read with
%% hackney:body/1. hackney 3.0 removed hackney:body/1 and returns the body in
%% the response tuple, so a binary is already the body.
response_body(Body) when is_binary(Body) ->
    {ok, Body};
response_body(Client) ->
    apply(hackney, body, [Client]).

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
