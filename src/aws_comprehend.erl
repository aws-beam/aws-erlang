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
         classify_document/2,
         classify_document/3,
         create_document_classifier/2,
         create_document_classifier/3,
         create_endpoint/2,
         create_endpoint/3,
         create_entity_recognizer/2,
         create_entity_recognizer/3,
         delete_document_classifier/2,
         delete_document_classifier/3,
         delete_endpoint/2,
         delete_endpoint/3,
         delete_entity_recognizer/2,
         delete_entity_recognizer/3,
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
         describe_key_phrases_detection_job/2,
         describe_key_phrases_detection_job/3,
         describe_pii_entities_detection_job/2,
         describe_pii_entities_detection_job/3,
         describe_sentiment_detection_job/2,
         describe_sentiment_detection_job/3,
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
         list_document_classification_jobs/2,
         list_document_classification_jobs/3,
         list_document_classifiers/2,
         list_document_classifiers/3,
         list_dominant_language_detection_jobs/2,
         list_dominant_language_detection_jobs/3,
         list_endpoints/2,
         list_endpoints/3,
         list_entities_detection_jobs/2,
         list_entities_detection_jobs/3,
         list_entity_recognizers/2,
         list_entity_recognizers/3,
         list_events_detection_jobs/2,
         list_events_detection_jobs/3,
         list_key_phrases_detection_jobs/2,
         list_key_phrases_detection_jobs/3,
         list_pii_entities_detection_jobs/2,
         list_pii_entities_detection_jobs/3,
         list_sentiment_detection_jobs/2,
         list_sentiment_detection_jobs/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_topics_detection_jobs/2,
         list_topics_detection_jobs/3,
         start_document_classification_job/2,
         start_document_classification_job/3,
         start_dominant_language_detection_job/2,
         start_dominant_language_detection_job/3,
         start_entities_detection_job/2,
         start_entities_detection_job/3,
         start_events_detection_job/2,
         start_events_detection_job/3,
         start_key_phrases_detection_job/2,
         start_key_phrases_detection_job/3,
         start_pii_entities_detection_job/2,
         start_pii_entities_detection_job/3,
         start_sentiment_detection_job/2,
         start_sentiment_detection_job/3,
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
         stop_training_document_classifier/2,
         stop_training_document_classifier/3,
         stop_training_entity_recognizer/2,
         stop_training_entity_recognizer/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_endpoint/2,
         update_endpoint/3]).

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
%% For more information about named entities, see `how-entities'
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
%% prevailing sentiment, `POSITIVE', `NEUTRAL', `MIXED', or `NEGATIVE', in
%% each one.
batch_detect_sentiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_detect_sentiment(Client, Input, []).
batch_detect_sentiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDetectSentiment">>, Input, Options).

%% @doc Inspects the text of a batch of documents for the syntax and part of
%% speech of the words in the document and returns information about them.
%%
%% For more information, see `how-syntax'.
batch_detect_syntax(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_detect_syntax(Client, Input, []).
batch_detect_syntax(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDetectSyntax">>, Input, Options).

%% @doc Creates a new document classification request to analyze a single
%% document in real-time, using a previously created and trained custom model
%% and an endpoint.
classify_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    classify_document(Client, Input, []).
classify_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ClassifyDocument">>, Input, Options).

%% @doc Creates a new document classifier that you can use to categorize
%% documents.
%%
%% To create a classifier, you provide a set of training documents that
%% labeled with the categories that you want to use. After the classifier is
%% trained you can use it to categorize a set of labeled documents into the
%% categories. For more information, see `how-document-classification'.
create_document_classifier(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_document_classifier(Client, Input, []).
create_document_classifier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDocumentClassifier">>, Input, Options).

%% @doc Creates a model-specific endpoint for synchronous inference for a
%% previously trained custom model
create_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_endpoint(Client, Input, []).
create_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEndpoint">>, Input, Options).

%% @doc Creates an entity recognizer using submitted files.
%%
%% After your `CreateEntityRecognizer' request is submitted, you can check
%% job status using the API.
create_entity_recognizer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_entity_recognizer(Client, Input, []).
create_entity_recognizer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEntityRecognizer">>, Input, Options).

%% @doc Deletes a previously created document classifier
%%
%% Only those classifiers that are in terminated states (IN_ERROR, TRAINED)
%% will be deleted.
%%
%% If an active inference job is using the model, a `ResourceInUseException'
%% will be returned.
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
%% All endpoints must be deleted in order for the model to be deleted.
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
%% Use this operation to get the status of an endpoint.
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

%% @doc Gets the properties associated with a sentiment detection job.
%%
%% Use this operation to get the status of a detection job.
describe_sentiment_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_sentiment_detection_job(Client, Input, []).
describe_sentiment_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSentimentDetectionJob">>, Input, Options).

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

%% @doc Inspects text for named entities, and returns information about them.
%%
%% For more information, about named entities, see `how-entities'.
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
%% For more information, `how-syntax'.
detect_syntax(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_syntax(Client, Input, []).
detect_syntax(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectSyntax">>, Input, Options).

%% @doc Gets a list of the documentation classification jobs that you have
%% submitted.
list_document_classification_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_document_classification_jobs(Client, Input, []).
list_document_classification_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDocumentClassificationJobs">>, Input, Options).

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

%% @doc Gets a list of the topic detection jobs that you have submitted.
list_topics_detection_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_topics_detection_jobs(Client, Input, []).
list_topics_detection_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTopicsDetectionJobs">>, Input, Options).

%% @doc Starts an asynchronous document classification job.
%%
%% Use the operation to track the progress of the job.
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
%% optional `EntityRecognizerArn' must be used in order to provide access to
%% the recognizer being used to detect the custom entity.
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
%% use the operation to track the status of a job.
start_sentiment_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_sentiment_detection_job(Client, Input, []).
start_sentiment_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartSentimentDetectionJob">>, Input, Options).

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
%% If the job state is `IN_PROGRESS' the job is marked for termination and
%% put into the `STOP_REQUESTED' state. If the job completes before it can be
%% stopped, it is put into the `COMPLETED' state; otherwise the job is
%% stopped and put into the `STOPPED' state.
%%
%% If the job is in the `COMPLETED' or `FAILED' state when you call the
%% `StopDominantLanguageDetectionJob' operation, the operation returns a 400
%% Internal Request Exception.
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
%% If the job state is `IN_PROGRESS' the job is marked for termination and
%% put into the `STOP_REQUESTED' state. If the job completes before it can be
%% stopped, it is put into the `COMPLETED' state; otherwise the job is
%% stopped and put into the `STOPPED' state.
%%
%% If the job is in the `COMPLETED' or `FAILED' state when you call the
%% `StopDominantLanguageDetectionJob' operation, the operation returns a 400
%% Internal Request Exception.
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
%% If the job state is `IN_PROGRESS' the job is marked for termination and
%% put into the `STOP_REQUESTED' state. If the job completes before it can be
%% stopped, it is put into the `COMPLETED' state; otherwise the job is
%% stopped and put into the `STOPPED' state.
%%
%% If the job is in the `COMPLETED' or `FAILED' state when you call the
%% `StopDominantLanguageDetectionJob' operation, the operation returns a 400
%% Internal Request Exception.
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
%% If the job state is `IN_PROGRESS' the job is marked for termination and
%% put into the `STOP_REQUESTED' state. If the job completes before it can be
%% stopped, it is put into the `COMPLETED' state; otherwise the job is be
%% stopped and put into the `STOPPED' state.
%%
%% If the job is in the `COMPLETED' or `FAILED' state when you call the
%% `StopDominantLanguageDetectionJob' operation, the operation returns a 400
%% Internal Request Exception.
%%
%% When a job is stopped, any documents already processed are written to the
%% output location.
stop_sentiment_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_sentiment_detection_job(Client, Input, []).
stop_sentiment_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopSentimentDetectionJob">>, Input, Options).

%% @doc Stops a document classifier training job while in progress.
%%
%% If the training job state is `TRAINING', the job is marked for termination
%% and put into the `STOP_REQUESTED' state. If the training job completes
%% before it can be stopped, it is put into the `TRAINED'; otherwise the
%% training job is stopped and put into the `STOPPED' state and the service
%% sends back an HTTP 200 response with an empty HTTP body.
stop_training_document_classifier(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_training_document_classifier(Client, Input, []).
stop_training_document_classifier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopTrainingDocumentClassifier">>, Input, Options).

%% @doc Stops an entity recognizer training job while in progress.
%%
%% If the training job state is `TRAINING', the job is marked for termination
%% and put into the `STOP_REQUESTED' state. If the training job completes
%% before it can be stopped, it is put into the `TRAINED'; otherwise the
%% training job is stopped and putted into the `STOPPED' state and the
%% service sends back an HTTP 200 response with an empty HTTP body.
stop_training_entity_recognizer(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_training_entity_recognizer(Client, Input, []).
stop_training_entity_recognizer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopTrainingEntityRecognizer">>, Input, Options).

%% @doc Associates a specific tag with an Amazon Comprehend resource.
%%
%% A tag is a key-value pair that adds as a metadata to a resource used by
%% Amazon Comprehend. For example, a tag with "Sales" as the key might be
%% added to a resource to indicate its use by the sales department.
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
update_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_endpoint(Client, Input, []).
update_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEndpoint">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input0, Options) ->
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
