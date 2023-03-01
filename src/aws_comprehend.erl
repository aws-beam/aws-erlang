%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Comprehend is an AWS service for gaining insight into the
%% content of documents.
%%
%% Use these actions to determine the topics contained in your documents, the
%% topics they discuss, the predominant sentiment expressed in them, the
%% predominant language used, and more.
-module(aws_comprehend).

-export([batch_detect_dominant_language/2,
         batch_detect_dominant_language/3,
         batch_detect_entities/2,
         batch_detect_entities/3,
         batch_detect_key_phrases/2,
         batch_detect_key_phrases/3,
         batch_detect_sentiment/2,
         batch_detect_sentiment/3,
         batch_detect_syntax/2,
         batch_detect_syntax/3,
         batch_detect_targeted_sentiment/2,
         batch_detect_targeted_sentiment/3,
         classify_document/2,
         classify_document/3,
         contains_pii_entities/2,
         contains_pii_entities/3,
         create_dataset/2,
         create_dataset/3,
         create_document_classifier/2,
         create_document_classifier/3,
         create_endpoint/2,
         create_endpoint/3,
         create_entity_recognizer/2,
         create_entity_recognizer/3,
         create_flywheel/2,
         create_flywheel/3,
         delete_document_classifier/2,
         delete_document_classifier/3,
         delete_endpoint/2,
         delete_endpoint/3,
         delete_entity_recognizer/2,
         delete_entity_recognizer/3,
         delete_flywheel/2,
         delete_flywheel/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         describe_dataset/2,
         describe_dataset/3,
         describe_document_classification_job/2,
         describe_document_classification_job/3,
         describe_document_classifier/2,
         describe_document_classifier/3,
         describe_dominant_language_detection_job/2,
         describe_dominant_language_detection_job/3,
         describe_endpoint/2,
         describe_endpoint/3,
         describe_entities_detection_job/2,
         describe_entities_detection_job/3,
         describe_entity_recognizer/2,
         describe_entity_recognizer/3,
         describe_events_detection_job/2,
         describe_events_detection_job/3,
         describe_flywheel/2,
         describe_flywheel/3,
         describe_flywheel_iteration/2,
         describe_flywheel_iteration/3,
         describe_key_phrases_detection_job/2,
         describe_key_phrases_detection_job/3,
         describe_pii_entities_detection_job/2,
         describe_pii_entities_detection_job/3,
         describe_resource_policy/2,
         describe_resource_policy/3,
         describe_sentiment_detection_job/2,
         describe_sentiment_detection_job/3,
         describe_targeted_sentiment_detection_job/2,
         describe_targeted_sentiment_detection_job/3,
         describe_topics_detection_job/2,
         describe_topics_detection_job/3,
         detect_dominant_language/2,
         detect_dominant_language/3,
         detect_entities/2,
         detect_entities/3,
         detect_key_phrases/2,
         detect_key_phrases/3,
         detect_pii_entities/2,
         detect_pii_entities/3,
         detect_sentiment/2,
         detect_sentiment/3,
         detect_syntax/2,
         detect_syntax/3,
         detect_targeted_sentiment/2,
         detect_targeted_sentiment/3,
         import_model/2,
         import_model/3,
         list_datasets/2,
         list_datasets/3,
         list_document_classification_jobs/2,
         list_document_classification_jobs/3,
         list_document_classifier_summaries/2,
         list_document_classifier_summaries/3,
         list_document_classifiers/2,
         list_document_classifiers/3,
         list_dominant_language_detection_jobs/2,
         list_dominant_language_detection_jobs/3,
         list_endpoints/2,
         list_endpoints/3,
         list_entities_detection_jobs/2,
         list_entities_detection_jobs/3,
         list_entity_recognizer_summaries/2,
         list_entity_recognizer_summaries/3,
         list_entity_recognizers/2,
         list_entity_recognizers/3,
         list_events_detection_jobs/2,
         list_events_detection_jobs/3,
         list_flywheel_iteration_history/2,
         list_flywheel_iteration_history/3,
         list_flywheels/2,
         list_flywheels/3,
         list_key_phrases_detection_jobs/2,
         list_key_phrases_detection_jobs/3,
         list_pii_entities_detection_jobs/2,
         list_pii_entities_detection_jobs/3,
         list_sentiment_detection_jobs/2,
         list_sentiment_detection_jobs/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_targeted_sentiment_detection_jobs/2,
         list_targeted_sentiment_detection_jobs/3,
         list_topics_detection_jobs/2,
         list_topics_detection_jobs/3,
         put_resource_policy/2,
         put_resource_policy/3,
         start_document_classification_job/2,
         start_document_classification_job/3,
         start_dominant_language_detection_job/2,
         start_dominant_language_detection_job/3,
         start_entities_detection_job/2,
         start_entities_detection_job/3,
         start_events_detection_job/2,
         start_events_detection_job/3,
         start_flywheel_iteration/2,
         start_flywheel_iteration/3,
         start_key_phrases_detection_job/2,
         start_key_phrases_detection_job/3,
         start_pii_entities_detection_job/2,
         start_pii_entities_detection_job/3,
         start_sentiment_detection_job/2,
         start_sentiment_detection_job/3,
         start_targeted_sentiment_detection_job/2,
         start_targeted_sentiment_detection_job/3,
         start_topics_detection_job/2,
         start_topics_detection_job/3,
         stop_dominant_language_detection_job/2,
         stop_dominant_language_detection_job/3,
         stop_entities_detection_job/2,
         stop_entities_detection_job/3,
         stop_events_detection_job/2,
         stop_events_detection_job/3,
         stop_key_phrases_detection_job/2,
         stop_key_phrases_detection_job/3,
         stop_pii_entities_detection_job/2,
         stop_pii_entities_detection_job/3,
         stop_sentiment_detection_job/2,
         stop_sentiment_detection_job/3,
         stop_targeted_sentiment_detection_job/2,
         stop_targeted_sentiment_detection_job/3,
         stop_training_document_classifier/2,
         stop_training_document_classifier/3,
         stop_training_entity_recognizer/2,
         stop_training_entity_recognizer/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_endpoint/2,
         update_endpoint/3,
         update_flywheel/2,
         update_flywheel/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Determines the dominant language of the input text for a batch of
%% documents.
%%
%% For a list of languages that Amazon Comprehend can detect, see Amazon
%% Comprehend Supported Languages.
batch_detect_dominant_language(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_detect_dominant_language(Client, Input, []).
batch_detect_dominant_language(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDetectDominantLanguage">>, Input, Options).

%% @doc Inspects the text of a batch of documents for named entities and
%% returns information about them.
%%
%% For more information about named entities, see Entities in the Comprehend
%% Developer Guide.
batch_detect_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_detect_entities(Client, Input, []).
batch_detect_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDetectEntities">>, Input, Options).

%% @doc Detects the key noun phrases found in a batch of documents.
batch_detect_key_phrases(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_detect_key_phrases(Client, Input, []).
batch_detect_key_phrases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDetectKeyPhrases">>, Input, Options).

%% @doc Inspects a batch of documents and returns an inference of the
%% prevailing sentiment, `POSITIVE', `NEUTRAL', `MIXED', or
%% `NEGATIVE', in each one.
batch_detect_sentiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_detect_sentiment(Client, Input, []).
batch_detect_sentiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDetectSentiment">>, Input, Options).

%% @doc Inspects the text of a batch of documents for the syntax and part of
%% speech of the words in the document and returns information about them.
%%
%% For more information, see Syntax in the Comprehend Developer Guide.
batch_detect_syntax(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_detect_syntax(Client, Input, []).
batch_detect_syntax(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDetectSyntax">>, Input, Options).

%% @doc Inspects a batch of documents and returns a sentiment analysis for
%% each entity identified in the documents.
%%
%% For more information about targeted sentiment, see Targeted sentiment.
batch_detect_targeted_sentiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_detect_targeted_sentiment(Client, Input, []).
batch_detect_targeted_sentiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDetectTargetedSentiment">>, Input, Options).

%% @doc Creates a new document classification request to analyze a single
%% document in real-time, using a previously created and trained custom model
%% and an endpoint.
%%
%% You can input plain text or you can upload a single-page input document
%% (text, PDF, Word, or image).
%%
%% If the system detects errors while processing a page in the input
%% document, the API response includes an entry in `Errors' that
%% describes the errors.
%%
%% If the system detects a document-level error in your input document, the
%% API returns an `InvalidRequestException' error response. For details
%% about this exception, see Errors in semi-structured documents in the
%% Comprehend Developer Guide.
classify_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    classify_document(Client, Input, []).
classify_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ClassifyDocument">>, Input, Options).

%% @doc Analyzes input text for the presence of personally identifiable
%% information (PII) and returns the labels of identified PII entity types
%% such as name, address, bank account number, or phone number.
contains_pii_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    contains_pii_entities(Client, Input, []).
contains_pii_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ContainsPiiEntities">>, Input, Options).

%% @doc Creates a dataset to upload training or test data for a model
%% associated with a flywheel.
%%
%% For more information about datasets, see Flywheel overview in the Amazon
%% Comprehend Developer Guide.
create_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dataset(Client, Input, []).
create_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataset">>, Input, Options).

%% @doc Creates a new document classifier that you can use to categorize
%% documents.
%%
%% To create a classifier, you provide a set of training documents that
%% labeled with the categories that you want to use. After the classifier is
%% trained you can use it to categorize a set of labeled documents into the
%% categories. For more information, see Document Classification in the
%% Comprehend Developer Guide.
create_document_classifier(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_document_classifier(Client, Input, []).
create_document_classifier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDocumentClassifier">>, Input, Options).

%% @doc Creates a model-specific endpoint for synchronous inference for a
%% previously trained custom model For information about endpoints, see
%% Managing endpoints.
create_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_endpoint(Client, Input, []).
create_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEndpoint">>, Input, Options).

%% @doc Creates an entity recognizer using submitted files.
%%
%% After your `CreateEntityRecognizer' request is submitted, you can
%% check job status using the `DescribeEntityRecognizer' API.
create_entity_recognizer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_entity_recognizer(Client, Input, []).
create_entity_recognizer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEntityRecognizer">>, Input, Options).

%% @doc A flywheel is an AWS resource that orchestrates the ongoing training
%% of a model for custom classification or custom entity recognition.
%%
%% You can create a flywheel to start with an existing trained model, or
%% Comprehend can create and train a new model.
%%
%% When you create the flywheel, Comprehend creates a data lake in your
%% account. The data lake holds the training data and test data for all
%% versions of the model.
%%
%% To use a flywheel with an existing trained model, you specify the active
%% model version. Comprehend copies the model's training data and test
%% data into the flywheel's data lake.
%%
%% To use the flywheel with a new model, you need to provide a dataset for
%% training data (and optional test data) when you create the flywheel.
%%
%% For more information about flywheels, see Flywheel overview in the Amazon
%% Comprehend Developer Guide.
create_flywheel(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_flywheel(Client, Input, []).
create_flywheel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFlywheel">>, Input, Options).

%% @doc Deletes a previously created document classifier
%%
%% Only those classifiers that are in terminated states (IN_ERROR, TRAINED)
%% will be deleted.
%%
%% If an active inference job is using the model, a
%% `ResourceInUseException' will be returned.
%%
%% This is an asynchronous action that puts the classifier into a DELETING
%% state, and it is then removed by a background job. Once removed, the
%% classifier disappears from your account and is no longer available for
%% use.
delete_document_classifier(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_document_classifier(Client, Input, []).
delete_document_classifier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDocumentClassifier">>, Input, Options).

%% @doc Deletes a model-specific endpoint for a previously-trained custom
%% model.
%%
%% All endpoints must be deleted in order for the model to be deleted. For
%% information about endpoints, see Managing endpoints.
delete_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_endpoint(Client, Input, []).
delete_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEndpoint">>, Input, Options).

%% @doc Deletes an entity recognizer.
%%
%% Only those recognizers that are in terminated states (IN_ERROR, TRAINED)
%% will be deleted. If an active inference job is using the model, a
%% `ResourceInUseException' will be returned.
%%
%% This is an asynchronous action that puts the recognizer into a DELETING
%% state, and it is then removed by a background job. Once removed, the
%% recognizer disappears from your account and is no longer available for
%% use.
delete_entity_recognizer(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_entity_recognizer(Client, Input, []).
delete_entity_recognizer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEntityRecognizer">>, Input, Options).

%% @doc Deletes a flywheel.
%%
%% When you delete the flywheel, Amazon Comprehend does not delete the data
%% lake or the model associated with the flywheel.
%%
%% For more information about flywheels, see Flywheel overview in the Amazon
%% Comprehend Developer Guide.
delete_flywheel(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_flywheel(Client, Input, []).
delete_flywheel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFlywheel">>, Input, Options).

%% @doc Deletes a resource-based policy that is attached to a custom model.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Returns information about the dataset that you specify.
%%
%% For more information about datasets, see Flywheel overview in the Amazon
%% Comprehend Developer Guide.
describe_dataset(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dataset(Client, Input, []).
describe_dataset(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataset">>, Input, Options).

%% @doc Gets the properties associated with a document classification job.
%%
%% Use this operation to get the status of a classification job.
describe_document_classification_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_document_classification_job(Client, Input, []).
describe_document_classification_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDocumentClassificationJob">>, Input, Options).

%% @doc Gets the properties associated with a document classifier.
describe_document_classifier(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_document_classifier(Client, Input, []).
describe_document_classifier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDocumentClassifier">>, Input, Options).

%% @doc Gets the properties associated with a dominant language detection
%% job.
%%
%% Use this operation to get the status of a detection job.
describe_dominant_language_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dominant_language_detection_job(Client, Input, []).
describe_dominant_language_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDominantLanguageDetectionJob">>, Input, Options).

%% @doc Gets the properties associated with a specific endpoint.
%%
%% Use this operation to get the status of an endpoint. For information about
%% endpoints, see Managing endpoints.
describe_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoint(Client, Input, []).
describe_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpoint">>, Input, Options).

%% @doc Gets the properties associated with an entities detection job.
%%
%% Use this operation to get the status of a detection job.
describe_entities_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_entities_detection_job(Client, Input, []).
describe_entities_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEntitiesDetectionJob">>, Input, Options).

%% @doc Provides details about an entity recognizer including status, S3
%% buckets containing training data, recognizer metadata, metrics, and so on.
describe_entity_recognizer(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_entity_recognizer(Client, Input, []).
describe_entity_recognizer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEntityRecognizer">>, Input, Options).

%% @doc Gets the status and details of an events detection job.
describe_events_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events_detection_job(Client, Input, []).
describe_events_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventsDetectionJob">>, Input, Options).

%% @doc Provides configuration information about the flywheel.
%%
%% For more information about flywheels, see Flywheel overview in the Amazon
%% Comprehend Developer Guide.
describe_flywheel(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_flywheel(Client, Input, []).
describe_flywheel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFlywheel">>, Input, Options).

%% @doc Retrieve the configuration properties of a flywheel iteration.
%%
%% For more information about flywheels, see Flywheel overview in the Amazon
%% Comprehend Developer Guide.
describe_flywheel_iteration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_flywheel_iteration(Client, Input, []).
describe_flywheel_iteration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFlywheelIteration">>, Input, Options).

%% @doc Gets the properties associated with a key phrases detection job.
%%
%% Use this operation to get the status of a detection job.
describe_key_phrases_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_key_phrases_detection_job(Client, Input, []).
describe_key_phrases_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeKeyPhrasesDetectionJob">>, Input, Options).

%% @doc Gets the properties associated with a PII entities detection job.
%%
%% For example, you can use this operation to get the job status.
describe_pii_entities_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pii_entities_detection_job(Client, Input, []).
describe_pii_entities_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePiiEntitiesDetectionJob">>, Input, Options).

%% @doc Gets the details of a resource-based policy that is attached to a
%% custom model, including the JSON body of the policy.
describe_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_resource_policy(Client, Input, []).
describe_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeResourcePolicy">>, Input, Options).

%% @doc Gets the properties associated with a sentiment detection job.
%%
%% Use this operation to get the status of a detection job.
describe_sentiment_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_sentiment_detection_job(Client, Input, []).
describe_sentiment_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSentimentDetectionJob">>, Input, Options).

%% @doc Gets the properties associated with a targeted sentiment detection
%% job.
%%
%% Use this operation to get the status of the job.
describe_targeted_sentiment_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_targeted_sentiment_detection_job(Client, Input, []).
describe_targeted_sentiment_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTargetedSentimentDetectionJob">>, Input, Options).

%% @doc Gets the properties associated with a topic detection job.
%%
%% Use this operation to get the status of a detection job.
describe_topics_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_topics_detection_job(Client, Input, []).
describe_topics_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTopicsDetectionJob">>, Input, Options).

%% @doc Determines the dominant language of the input text.
%%
%% For a list of languages that Amazon Comprehend can detect, see Amazon
%% Comprehend Supported Languages.
detect_dominant_language(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_dominant_language(Client, Input, []).
detect_dominant_language(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectDominantLanguage">>, Input, Options).

%% @doc Detects named entities in input text when you use the pre-trained
%% model.
%%
%% Detects custom entities if you have a custom entity recognition model.
%%
%% When detecting named entities using the pre-trained model, use plain text
%% as the input. For more information about named entities, see Entities in
%% the Comprehend Developer Guide.
%%
%% When you use a custom entity recognition model, you can input plain text
%% or you can upload a single-page input document (text, PDF, Word, or
%% image).
%%
%% If the system detects errors while processing a page in the input
%% document, the API response includes an entry in `Errors' for each
%% error.
%%
%% If the system detects a document-level error in your input document, the
%% API returns an `InvalidRequestException' error response. For details
%% about this exception, see Errors in semi-structured documents in the
%% Comprehend Developer Guide.
detect_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_entities(Client, Input, []).
detect_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectEntities">>, Input, Options).

%% @doc Detects the key noun phrases found in the text.
detect_key_phrases(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_key_phrases(Client, Input, []).
detect_key_phrases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectKeyPhrases">>, Input, Options).

%% @doc Inspects the input text for entities that contain personally
%% identifiable information (PII) and returns information about them.
detect_pii_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_pii_entities(Client, Input, []).
detect_pii_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectPiiEntities">>, Input, Options).

%% @doc Inspects text and returns an inference of the prevailing sentiment
%% (`POSITIVE', `NEUTRAL', `MIXED', or `NEGATIVE').
detect_sentiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_sentiment(Client, Input, []).
detect_sentiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectSentiment">>, Input, Options).

%% @doc Inspects text for syntax and the part of speech of words in the
%% document.
%%
%% For more information, see Syntax in the Comprehend Developer Guide.
detect_syntax(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_syntax(Client, Input, []).
detect_syntax(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectSyntax">>, Input, Options).

%% @doc Inspects the input text and returns a sentiment analysis for each
%% entity identified in the text.
%%
%% For more information about targeted sentiment, see Targeted sentiment.
detect_targeted_sentiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_targeted_sentiment(Client, Input, []).
detect_targeted_sentiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectTargetedSentiment">>, Input, Options).

%% @doc Creates a new custom model that replicates a source custom model that
%% you import.
%%
%% The source model can be in your AWS account or another one.
%%
%% If the source model is in another AWS account, then it must have a
%% resource-based policy that authorizes you to import it.
%%
%% The source model must be in the same AWS region that you're using when
%% you import. You can't import a model that's in a different region.
import_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_model(Client, Input, []).
import_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportModel">>, Input, Options).

%% @doc List the datasets that you have configured in this region.
%%
%% For more information about datasets, see Flywheel overview in the Amazon
%% Comprehend Developer Guide.
list_datasets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_datasets(Client, Input, []).
list_datasets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDatasets">>, Input, Options).

%% @doc Gets a list of the documentation classification jobs that you have
%% submitted.
list_document_classification_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_document_classification_jobs(Client, Input, []).
list_document_classification_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDocumentClassificationJobs">>, Input, Options).

%% @doc Gets a list of summaries of the document classifiers that you have
%% created
list_document_classifier_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_document_classifier_summaries(Client, Input, []).
list_document_classifier_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDocumentClassifierSummaries">>, Input, Options).

%% @doc Gets a list of the document classifiers that you have created.
list_document_classifiers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_document_classifiers(Client, Input, []).
list_document_classifiers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDocumentClassifiers">>, Input, Options).

%% @doc Gets a list of the dominant language detection jobs that you have
%% submitted.
list_dominant_language_detection_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_dominant_language_detection_jobs(Client, Input, []).
list_dominant_language_detection_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDominantLanguageDetectionJobs">>, Input, Options).

%% @doc Gets a list of all existing endpoints that you've created.
%%
%% For information about endpoints, see Managing endpoints.
list_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_endpoints(Client, Input, []).
list_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEndpoints">>, Input, Options).

%% @doc Gets a list of the entity detection jobs that you have submitted.
list_entities_detection_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_entities_detection_jobs(Client, Input, []).
list_entities_detection_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEntitiesDetectionJobs">>, Input, Options).

%% @doc Gets a list of summaries for the entity recognizers that you have
%% created.
list_entity_recognizer_summaries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_entity_recognizer_summaries(Client, Input, []).
list_entity_recognizer_summaries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEntityRecognizerSummaries">>, Input, Options).

%% @doc Gets a list of the properties of all entity recognizers that you
%% created, including recognizers currently in training.
%%
%% Allows you to filter the list of recognizers based on criteria such as
%% status and submission time. This call returns up to 500 entity recognizers
%% in the list, with a default number of 100 recognizers in the list.
%%
%% The results of this list are not in any particular order. Please get the
%% list and sort locally if needed.
list_entity_recognizers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_entity_recognizers(Client, Input, []).
list_entity_recognizers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEntityRecognizers">>, Input, Options).

%% @doc Gets a list of the events detection jobs that you have submitted.
list_events_detection_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_events_detection_jobs(Client, Input, []).
list_events_detection_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEventsDetectionJobs">>, Input, Options).

%% @doc Information about the history of a flywheel iteration.
%%
%% For more information about flywheels, see Flywheel overview in the Amazon
%% Comprehend Developer Guide.
list_flywheel_iteration_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_flywheel_iteration_history(Client, Input, []).
list_flywheel_iteration_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFlywheelIterationHistory">>, Input, Options).

%% @doc Gets a list of the flywheels that you have created.
list_flywheels(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_flywheels(Client, Input, []).
list_flywheels(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFlywheels">>, Input, Options).

%% @doc Get a list of key phrase detection jobs that you have submitted.
list_key_phrases_detection_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_key_phrases_detection_jobs(Client, Input, []).
list_key_phrases_detection_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListKeyPhrasesDetectionJobs">>, Input, Options).

%% @doc Gets a list of the PII entity detection jobs that you have submitted.
list_pii_entities_detection_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pii_entities_detection_jobs(Client, Input, []).
list_pii_entities_detection_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPiiEntitiesDetectionJobs">>, Input, Options).

%% @doc Gets a list of sentiment detection jobs that you have submitted.
list_sentiment_detection_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_sentiment_detection_jobs(Client, Input, []).
list_sentiment_detection_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSentimentDetectionJobs">>, Input, Options).

%% @doc Lists all tags associated with a given Amazon Comprehend resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Gets a list of targeted sentiment detection jobs that you have
%% submitted.
list_targeted_sentiment_detection_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_targeted_sentiment_detection_jobs(Client, Input, []).
list_targeted_sentiment_detection_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTargetedSentimentDetectionJobs">>, Input, Options).

%% @doc Gets a list of the topic detection jobs that you have submitted.
list_topics_detection_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_topics_detection_jobs(Client, Input, []).
list_topics_detection_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTopicsDetectionJobs">>, Input, Options).

%% @doc Attaches a resource-based policy to a custom model.
%%
%% You can use this policy to authorize an entity in another AWS account to
%% import the custom model, which replicates it in Amazon Comprehend in their
%% account.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Starts an asynchronous document classification job.
%%
%% Use the `DescribeDocumentClassificationJob' operation to track the
%% progress of the job.
start_document_classification_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_document_classification_job(Client, Input, []).
start_document_classification_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDocumentClassificationJob">>, Input, Options).

%% @doc Starts an asynchronous dominant language detection job for a
%% collection of documents.
%%
%% Use the operation to track the status of a job.
start_dominant_language_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_dominant_language_detection_job(Client, Input, []).
start_dominant_language_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDominantLanguageDetectionJob">>, Input, Options).

%% @doc Starts an asynchronous entity detection job for a collection of
%% documents.
%%
%% Use the operation to track the status of a job.
%%
%% This API can be used for either standard entity detection or custom entity
%% recognition. In order to be used for custom entity recognition, the
%% optional `EntityRecognizerArn' must be used in order to provide access
%% to the recognizer being used to detect the custom entity.
start_entities_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_entities_detection_job(Client, Input, []).
start_entities_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartEntitiesDetectionJob">>, Input, Options).

%% @doc Starts an asynchronous event detection job for a collection of
%% documents.
start_events_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_events_detection_job(Client, Input, []).
start_events_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartEventsDetectionJob">>, Input, Options).

%% @doc Start the flywheel iteration.This operation uses any new datasets to
%% train a new model version.
%%
%% For more information about flywheels, see Flywheel overview in the Amazon
%% Comprehend Developer Guide.
start_flywheel_iteration(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_flywheel_iteration(Client, Input, []).
start_flywheel_iteration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartFlywheelIteration">>, Input, Options).

%% @doc Starts an asynchronous key phrase detection job for a collection of
%% documents.
%%
%% Use the operation to track the status of a job.
start_key_phrases_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_key_phrases_detection_job(Client, Input, []).
start_key_phrases_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartKeyPhrasesDetectionJob">>, Input, Options).

%% @doc Starts an asynchronous PII entity detection job for a collection of
%% documents.
start_pii_entities_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_pii_entities_detection_job(Client, Input, []).
start_pii_entities_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartPiiEntitiesDetectionJob">>, Input, Options).

%% @doc Starts an asynchronous sentiment detection job for a collection of
%% documents.
%%
%% Use the operation to track the status of a job.
start_sentiment_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_sentiment_detection_job(Client, Input, []).
start_sentiment_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartSentimentDetectionJob">>, Input, Options).

%% @doc Starts an asynchronous targeted sentiment detection job for a
%% collection of documents.
%%
%% Use the `DescribeTargetedSentimentDetectionJob' operation to track the
%% status of a job.
start_targeted_sentiment_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_targeted_sentiment_detection_job(Client, Input, []).
start_targeted_sentiment_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartTargetedSentimentDetectionJob">>, Input, Options).

%% @doc Starts an asynchronous topic detection job.
%%
%% Use the `DescribeTopicDetectionJob' operation to track the status of a
%% job.
start_topics_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_topics_detection_job(Client, Input, []).
start_topics_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartTopicsDetectionJob">>, Input, Options).

%% @doc Stops a dominant language detection job in progress.
%%
%% If the job state is `IN_PROGRESS' the job is marked for termination
%% and put into the `STOP_REQUESTED' state. If the job completes before
%% it can be stopped, it is put into the `COMPLETED' state; otherwise the
%% job is stopped and put into the `STOPPED' state.
%%
%% If the job is in the `COMPLETED' or `FAILED' state when you call
%% the `StopDominantLanguageDetectionJob' operation, the operation
%% returns a 400 Internal Request Exception.
%%
%% When a job is stopped, any documents already processed are written to the
%% output location.
stop_dominant_language_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_dominant_language_detection_job(Client, Input, []).
stop_dominant_language_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDominantLanguageDetectionJob">>, Input, Options).

%% @doc Stops an entities detection job in progress.
%%
%% If the job state is `IN_PROGRESS' the job is marked for termination
%% and put into the `STOP_REQUESTED' state. If the job completes before
%% it can be stopped, it is put into the `COMPLETED' state; otherwise the
%% job is stopped and put into the `STOPPED' state.
%%
%% If the job is in the `COMPLETED' or `FAILED' state when you call
%% the `StopDominantLanguageDetectionJob' operation, the operation
%% returns a 400 Internal Request Exception.
%%
%% When a job is stopped, any documents already processed are written to the
%% output location.
stop_entities_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_entities_detection_job(Client, Input, []).
stop_entities_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopEntitiesDetectionJob">>, Input, Options).

%% @doc Stops an events detection job in progress.
stop_events_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_events_detection_job(Client, Input, []).
stop_events_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopEventsDetectionJob">>, Input, Options).

%% @doc Stops a key phrases detection job in progress.
%%
%% If the job state is `IN_PROGRESS' the job is marked for termination
%% and put into the `STOP_REQUESTED' state. If the job completes before
%% it can be stopped, it is put into the `COMPLETED' state; otherwise the
%% job is stopped and put into the `STOPPED' state.
%%
%% If the job is in the `COMPLETED' or `FAILED' state when you call
%% the `StopDominantLanguageDetectionJob' operation, the operation
%% returns a 400 Internal Request Exception.
%%
%% When a job is stopped, any documents already processed are written to the
%% output location.
stop_key_phrases_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_key_phrases_detection_job(Client, Input, []).
stop_key_phrases_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopKeyPhrasesDetectionJob">>, Input, Options).

%% @doc Stops a PII entities detection job in progress.
stop_pii_entities_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_pii_entities_detection_job(Client, Input, []).
stop_pii_entities_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopPiiEntitiesDetectionJob">>, Input, Options).

%% @doc Stops a sentiment detection job in progress.
%%
%% If the job state is `IN_PROGRESS', the job is marked for termination
%% and put into the `STOP_REQUESTED' state. If the job completes before
%% it can be stopped, it is put into the `COMPLETED' state; otherwise the
%% job is be stopped and put into the `STOPPED' state.
%%
%% If the job is in the `COMPLETED' or `FAILED' state when you call
%% the `StopDominantLanguageDetectionJob' operation, the operation
%% returns a 400 Internal Request Exception.
%%
%% When a job is stopped, any documents already processed are written to the
%% output location.
stop_sentiment_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_sentiment_detection_job(Client, Input, []).
stop_sentiment_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopSentimentDetectionJob">>, Input, Options).

%% @doc Stops a targeted sentiment detection job in progress.
%%
%% If the job state is `IN_PROGRESS', the job is marked for termination
%% and put into the `STOP_REQUESTED' state. If the job completes before
%% it can be stopped, it is put into the `COMPLETED' state; otherwise the
%% job is be stopped and put into the `STOPPED' state.
%%
%% If the job is in the `COMPLETED' or `FAILED' state when you call
%% the `StopDominantLanguageDetectionJob' operation, the operation
%% returns a 400 Internal Request Exception.
%%
%% When a job is stopped, any documents already processed are written to the
%% output location.
stop_targeted_sentiment_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_targeted_sentiment_detection_job(Client, Input, []).
stop_targeted_sentiment_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopTargetedSentimentDetectionJob">>, Input, Options).

%% @doc Stops a document classifier training job while in progress.
%%
%% If the training job state is `TRAINING', the job is marked for
%% termination and put into the `STOP_REQUESTED' state. If the training
%% job completes before it can be stopped, it is put into the `TRAINED';
%% otherwise the training job is stopped and put into the `STOPPED' state
%% and the service sends back an HTTP 200 response with an empty HTTP body.
stop_training_document_classifier(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_training_document_classifier(Client, Input, []).
stop_training_document_classifier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopTrainingDocumentClassifier">>, Input, Options).

%% @doc Stops an entity recognizer training job while in progress.
%%
%% If the training job state is `TRAINING', the job is marked for
%% termination and put into the `STOP_REQUESTED' state. If the training
%% job completes before it can be stopped, it is put into the `TRAINED';
%% otherwise the training job is stopped and putted into the `STOPPED'
%% state and the service sends back an HTTP 200 response with an empty HTTP
%% body.
stop_training_entity_recognizer(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_training_entity_recognizer(Client, Input, []).
stop_training_entity_recognizer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopTrainingEntityRecognizer">>, Input, Options).

%% @doc Associates a specific tag with an Amazon Comprehend resource.
%%
%% A tag is a key-value pair that adds as a metadata to a resource used by
%% Amazon Comprehend. For example, a tag with &quot;Sales&quot; as the key
%% might be added to a resource to indicate its use by the sales department.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes a specific tag associated with an Amazon Comprehend resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates information about the specified endpoint.
%%
%% For information about endpoints, see Managing endpoints.
update_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_endpoint(Client, Input, []).
update_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEndpoint">>, Input, Options).

%% @doc Update the configuration information for an existing flywheel.
update_flywheel(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_flywheel(Client, Input, []).
update_flywheel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFlywheel">>, Input, Options).

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
    Client1 = Client#{service => <<"comprehend">>},
    Host = build_host(<<"comprehend">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"Comprehend_20171127.", Action/binary>>}
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
