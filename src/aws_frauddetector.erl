%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Amazon Fraud Detector API Reference.
%%
%% This guide is for developers who need detailed information about Amazon
%% Fraud Detector API actions, data types, and errors. For more information
%% about Amazon Fraud Detector features, see the Amazon Fraud Detector User
%% Guide.
%%
%% We provide the Query API as well as AWS software development kits (SDK)
%% for Amazon Fraud Detector in Java and Python programming languages.
%%
%% The Amazon Fraud Detector Query API provides HTTPS requests that use the
%% HTTP verb GET or POST and a Query parameter `Action'. AWS SDK provides
%% libraries, sample code, tutorials, and other resources for software
%% developers who prefer to build applications using language-specific APIs
%% instead of submitting a request over HTTP or HTTPS. These libraries
%% provide basic functions that automatically take care of tasks such as
%% cryptographically signing your requests, retrying requests, and handling
%% error responses, so that it is easier for you to get started. For more
%% information about the AWS SDKs, see Tools to build on AWS.
-module(aws_frauddetector).

-export([batch_create_variable/2,
         batch_create_variable/3,
         batch_get_variable/2,
         batch_get_variable/3,
         cancel_batch_import_job/2,
         cancel_batch_import_job/3,
         cancel_batch_prediction_job/2,
         cancel_batch_prediction_job/3,
         create_batch_import_job/2,
         create_batch_import_job/3,
         create_batch_prediction_job/2,
         create_batch_prediction_job/3,
         create_detector_version/2,
         create_detector_version/3,
         create_model/2,
         create_model/3,
         create_model_version/2,
         create_model_version/3,
         create_rule/2,
         create_rule/3,
         create_variable/2,
         create_variable/3,
         delete_batch_import_job/2,
         delete_batch_import_job/3,
         delete_batch_prediction_job/2,
         delete_batch_prediction_job/3,
         delete_detector/2,
         delete_detector/3,
         delete_detector_version/2,
         delete_detector_version/3,
         delete_entity_type/2,
         delete_entity_type/3,
         delete_event/2,
         delete_event/3,
         delete_event_type/2,
         delete_event_type/3,
         delete_events_by_event_type/2,
         delete_events_by_event_type/3,
         delete_external_model/2,
         delete_external_model/3,
         delete_label/2,
         delete_label/3,
         delete_model/2,
         delete_model/3,
         delete_model_version/2,
         delete_model_version/3,
         delete_outcome/2,
         delete_outcome/3,
         delete_rule/2,
         delete_rule/3,
         delete_variable/2,
         delete_variable/3,
         describe_detector/2,
         describe_detector/3,
         describe_model_versions/2,
         describe_model_versions/3,
         get_batch_import_jobs/2,
         get_batch_import_jobs/3,
         get_batch_prediction_jobs/2,
         get_batch_prediction_jobs/3,
         get_delete_events_by_event_type_status/2,
         get_delete_events_by_event_type_status/3,
         get_detector_version/2,
         get_detector_version/3,
         get_detectors/2,
         get_detectors/3,
         get_entity_types/2,
         get_entity_types/3,
         get_event/2,
         get_event/3,
         get_event_prediction/2,
         get_event_prediction/3,
         get_event_prediction_metadata/2,
         get_event_prediction_metadata/3,
         get_event_types/2,
         get_event_types/3,
         get_external_models/2,
         get_external_models/3,
         get_kms_encryption_key/2,
         get_kms_encryption_key/3,
         get_labels/2,
         get_labels/3,
         get_model_version/2,
         get_model_version/3,
         get_models/2,
         get_models/3,
         get_outcomes/2,
         get_outcomes/3,
         get_rules/2,
         get_rules/3,
         get_variables/2,
         get_variables/3,
         list_event_predictions/2,
         list_event_predictions/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_detector/2,
         put_detector/3,
         put_entity_type/2,
         put_entity_type/3,
         put_event_type/2,
         put_event_type/3,
         put_external_model/2,
         put_external_model/3,
         put_kms_encryption_key/2,
         put_kms_encryption_key/3,
         put_label/2,
         put_label/3,
         put_outcome/2,
         put_outcome/3,
         send_event/2,
         send_event/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_detector_version/2,
         update_detector_version/3,
         update_detector_version_metadata/2,
         update_detector_version_metadata/3,
         update_detector_version_status/2,
         update_detector_version_status/3,
         update_event_label/2,
         update_event_label/3,
         update_model/2,
         update_model/3,
         update_model_version/2,
         update_model_version/3,
         update_model_version_status/2,
         update_model_version_status/3,
         update_rule_metadata/2,
         update_rule_metadata/3,
         update_rule_version/2,
         update_rule_version/3,
         update_variable/2,
         update_variable/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a batch of variables.
batch_create_variable(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_create_variable(Client, Input, []).
batch_create_variable(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchCreateVariable">>, Input, Options).

%% @doc Gets a batch of variables.
batch_get_variable(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_variable(Client, Input, []).
batch_get_variable(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetVariable">>, Input, Options).

%% @doc Cancels an in-progress batch import job.
cancel_batch_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_batch_import_job(Client, Input, []).
cancel_batch_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelBatchImportJob">>, Input, Options).

%% @doc Cancels the specified batch prediction job.
cancel_batch_prediction_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_batch_prediction_job(Client, Input, []).
cancel_batch_prediction_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelBatchPredictionJob">>, Input, Options).

%% @doc Creates a batch import job.
create_batch_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_batch_import_job(Client, Input, []).
create_batch_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBatchImportJob">>, Input, Options).

%% @doc Creates a batch prediction job.
create_batch_prediction_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_batch_prediction_job(Client, Input, []).
create_batch_prediction_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBatchPredictionJob">>, Input, Options).

%% @doc Creates a detector version.
%%
%% The detector version starts in a `DRAFT' status.
create_detector_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_detector_version(Client, Input, []).
create_detector_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDetectorVersion">>, Input, Options).

%% @doc Creates a model using the specified model type.
create_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model(Client, Input, []).
create_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModel">>, Input, Options).

%% @doc Creates a version of the model using the specified model type and
%% model id.
create_model_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model_version(Client, Input, []).
create_model_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModelVersion">>, Input, Options).

%% @doc Creates a rule for use with the specified detector.
create_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_rule(Client, Input, []).
create_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRule">>, Input, Options).

%% @doc Creates a variable.
create_variable(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_variable(Client, Input, []).
create_variable(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVariable">>, Input, Options).

%% @doc Deletes the specified batch import job ID record.
%%
%% This action does not delete the data that was batch imported.
delete_batch_import_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_batch_import_job(Client, Input, []).
delete_batch_import_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBatchImportJob">>, Input, Options).

%% @doc Deletes a batch prediction job.
delete_batch_prediction_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_batch_prediction_job(Client, Input, []).
delete_batch_prediction_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBatchPredictionJob">>, Input, Options).

%% @doc Deletes the detector.
%%
%% Before deleting a detector, you must first delete all detector versions
%% and rule versions associated with the detector.
%%
%% When you delete a detector, Amazon Fraud Detector permanently deletes the
%% detector and the data is no longer stored in Amazon Fraud Detector.
delete_detector(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_detector(Client, Input, []).
delete_detector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDetector">>, Input, Options).

%% @doc Deletes the detector version.
%%
%% You cannot delete detector versions that are in `ACTIVE' status.
%%
%% When you delete a detector version, Amazon Fraud Detector permanently
%% deletes the detector and the data is no longer stored in Amazon Fraud
%% Detector.
delete_detector_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_detector_version(Client, Input, []).
delete_detector_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDetectorVersion">>, Input, Options).

%% @doc Deletes an entity type.
%%
%% You cannot delete an entity type that is included in an event type.
%%
%% When you delete an entity type, Amazon Fraud Detector permanently deletes
%% that entity type and the data is no longer stored in Amazon Fraud
%% Detector.
delete_entity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_entity_type(Client, Input, []).
delete_entity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEntityType">>, Input, Options).

%% @doc Deletes the specified event.
%%
%% When you delete an event, Amazon Fraud Detector permanently deletes that
%% event and the event data is no longer stored in Amazon Fraud Detector.
delete_event(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event(Client, Input, []).
delete_event(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEvent">>, Input, Options).

%% @doc Deletes an event type.
%%
%% You cannot delete an event type that is used in a detector or a model.
%%
%% When you delete an event type, Amazon Fraud Detector permanently deletes
%% that event type and the data is no longer stored in Amazon Fraud Detector.
delete_event_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event_type(Client, Input, []).
delete_event_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventType">>, Input, Options).

%% @doc Deletes all events of a particular event type.
delete_events_by_event_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_events_by_event_type(Client, Input, []).
delete_events_by_event_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventsByEventType">>, Input, Options).

%% @doc Removes a SageMaker model from Amazon Fraud Detector.
%%
%% You can remove an Amazon SageMaker model if it is not associated with a
%% detector version. Removing a SageMaker model disconnects it from Amazon
%% Fraud Detector, but the model remains available in SageMaker.
delete_external_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_external_model(Client, Input, []).
delete_external_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteExternalModel">>, Input, Options).

%% @doc Deletes a label.
%%
%% You cannot delete labels that are included in an event type in Amazon
%% Fraud Detector.
%%
%% You cannot delete a label assigned to an event ID. You must first delete
%% the relevant event ID.
%%
%% When you delete a label, Amazon Fraud Detector permanently deletes that
%% label and the data is no longer stored in Amazon Fraud Detector.
delete_label(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_label(Client, Input, []).
delete_label(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLabel">>, Input, Options).

%% @doc Deletes a model.
%%
%% You can delete models and model versions in Amazon Fraud Detector,
%% provided that they are not associated with a detector version.
%%
%% When you delete a model, Amazon Fraud Detector permanently deletes that
%% model and the data is no longer stored in Amazon Fraud Detector.
delete_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model(Client, Input, []).
delete_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModel">>, Input, Options).

%% @doc Deletes a model version.
%%
%% You can delete models and model versions in Amazon Fraud Detector,
%% provided that they are not associated with a detector version.
%%
%% When you delete a model version, Amazon Fraud Detector permanently deletes
%% that model version and the data is no longer stored in Amazon Fraud
%% Detector.
delete_model_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model_version(Client, Input, []).
delete_model_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModelVersion">>, Input, Options).

%% @doc Deletes an outcome.
%%
%% You cannot delete an outcome that is used in a rule version.
%%
%% When you delete an outcome, Amazon Fraud Detector permanently deletes that
%% outcome and the data is no longer stored in Amazon Fraud Detector.
delete_outcome(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_outcome(Client, Input, []).
delete_outcome(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOutcome">>, Input, Options).

%% @doc Deletes the rule.
%%
%% You cannot delete a rule if it is used by an `ACTIVE' or `INACTIVE'
%% detector version.
%%
%% When you delete a rule, Amazon Fraud Detector permanently deletes that
%% rule and the data is no longer stored in Amazon Fraud Detector.
delete_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rule(Client, Input, []).
delete_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRule">>, Input, Options).

%% @doc Deletes a variable.
%%
%% You can't delete variables that are included in an event type in Amazon
%% Fraud Detector.
%%
%% Amazon Fraud Detector automatically deletes model output variables and
%% SageMaker model output variables when you delete the model. You can't
%% delete these variables manually.
%%
%% When you delete a variable, Amazon Fraud Detector permanently deletes that
%% variable and the data is no longer stored in Amazon Fraud Detector.
delete_variable(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_variable(Client, Input, []).
delete_variable(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVariable">>, Input, Options).

%% @doc Gets all versions for a specified detector.
describe_detector(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_detector(Client, Input, []).
describe_detector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDetector">>, Input, Options).

%% @doc Gets all of the model versions for the specified model type or for
%% the specified model type and model ID.
%%
%% You can also get details for a single, specified model version.
describe_model_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model_versions(Client, Input, []).
describe_model_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModelVersions">>, Input, Options).

%% @doc Gets all batch import jobs or a specific job of the specified ID.
%%
%% This is a paginated API. If you provide a null `maxResults', this action
%% retrieves a maximum of 50 records per page. If you provide a `maxResults',
%% the value must be between 1 and 50. To get the next page results, provide
%% the pagination token from the `GetBatchImportJobsResponse' as part of your
%% request. A null pagination token fetches the records from the beginning.
get_batch_import_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_batch_import_jobs(Client, Input, []).
get_batch_import_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBatchImportJobs">>, Input, Options).

%% @doc Gets all batch prediction jobs or a specific job if you specify a job
%% ID.
%%
%% This is a paginated API. If you provide a null maxResults, this action
%% retrieves a maximum of 50 records per page. If you provide a maxResults,
%% the value must be between 1 and 50. To get the next page results, provide
%% the pagination token from the GetBatchPredictionJobsResponse as part of
%% your request. A null pagination token fetches the records from the
%% beginning.
get_batch_prediction_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_batch_prediction_jobs(Client, Input, []).
get_batch_prediction_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBatchPredictionJobs">>, Input, Options).

%% @doc Retrieves the status of a `DeleteEventsByEventType' action.
get_delete_events_by_event_type_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_delete_events_by_event_type_status(Client, Input, []).
get_delete_events_by_event_type_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeleteEventsByEventTypeStatus">>, Input, Options).

%% @doc Gets a particular detector version.
get_detector_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_detector_version(Client, Input, []).
get_detector_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDetectorVersion">>, Input, Options).

%% @doc Gets all detectors or a single detector if a `detectorId' is
%% specified.
%%
%% This is a paginated API. If you provide a null `maxResults', this action
%% retrieves a maximum of 10 records per page. If you provide a `maxResults',
%% the value must be between 5 and 10. To get the next page results, provide
%% the pagination token from the `GetDetectorsResponse' as part of your
%% request. A null pagination token fetches the records from the beginning.
get_detectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_detectors(Client, Input, []).
get_detectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDetectors">>, Input, Options).

%% @doc Gets all entity types or a specific entity type if a name is
%% specified.
%%
%% This is a paginated API. If you provide a null `maxResults', this action
%% retrieves a maximum of 10 records per page. If you provide a `maxResults',
%% the value must be between 5 and 10. To get the next page results, provide
%% the pagination token from the `GetEntityTypesResponse' as part of your
%% request. A null pagination token fetches the records from the beginning.
get_entity_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_entity_types(Client, Input, []).
get_entity_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEntityTypes">>, Input, Options).

%% @doc Retrieves details of events stored with Amazon Fraud Detector.
%%
%% This action does not retrieve prediction results.
get_event(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_event(Client, Input, []).
get_event(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEvent">>, Input, Options).

%% @doc Evaluates an event against a detector version.
%%
%% If a version ID is not provided, the detector’s (`ACTIVE') version is
%% used.
get_event_prediction(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_event_prediction(Client, Input, []).
get_event_prediction(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEventPrediction">>, Input, Options).

%% @doc Gets details of the past fraud predictions for the specified event
%% ID, event type, detector ID, and detector version ID that was generated in
%% the specified time period.
get_event_prediction_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_event_prediction_metadata(Client, Input, []).
get_event_prediction_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEventPredictionMetadata">>, Input, Options).

%% @doc Gets all event types or a specific event type if name is provided.
%%
%% This is a paginated API. If you provide a null `maxResults', this action
%% retrieves a maximum of 10 records per page. If you provide a `maxResults',
%% the value must be between 5 and 10. To get the next page results, provide
%% the pagination token from the `GetEventTypesResponse' as part of your
%% request. A null pagination token fetches the records from the beginning.
get_event_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_event_types(Client, Input, []).
get_event_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEventTypes">>, Input, Options).

%% @doc Gets the details for one or more Amazon SageMaker models that have
%% been imported into the service.
%%
%% This is a paginated API. If you provide a null `maxResults', this actions
%% retrieves a maximum of 10 records per page. If you provide a `maxResults',
%% the value must be between 5 and 10. To get the next page results, provide
%% the pagination token from the `GetExternalModelsResult' as part of your
%% request. A null pagination token fetches the records from the beginning.
get_external_models(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_external_models(Client, Input, []).
get_external_models(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetExternalModels">>, Input, Options).

%% @doc Gets the encryption key if a KMS key has been specified to be used to
%% encrypt content in Amazon Fraud Detector.
get_kms_encryption_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_kms_encryption_key(Client, Input, []).
get_kms_encryption_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetKMSEncryptionKey">>, Input, Options).

%% @doc Gets all labels or a specific label if name is provided.
%%
%% This is a paginated API. If you provide a null `maxResults', this action
%% retrieves a maximum of 50 records per page. If you provide a `maxResults',
%% the value must be between 10 and 50. To get the next page results, provide
%% the pagination token from the `GetGetLabelsResponse' as part of your
%% request. A null pagination token fetches the records from the beginning.
get_labels(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_labels(Client, Input, []).
get_labels(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLabels">>, Input, Options).

%% @doc Gets the details of the specified model version.
get_model_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_model_version(Client, Input, []).
get_model_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetModelVersion">>, Input, Options).

%% @doc Gets one or more models.
%%
%% Gets all models for the Amazon Web Services account if no model type and
%% no model id provided. Gets all models for the Amazon Web Services account
%% and model type, if the model type is specified but model id is not
%% provided. Gets a specific model if (model type, model id) tuple is
%% specified.
%%
%% This is a paginated API. If you provide a null `maxResults', this action
%% retrieves a maximum of 10 records per page. If you provide a `maxResults',
%% the value must be between 1 and 10. To get the next page results, provide
%% the pagination token from the response as part of your request. A null
%% pagination token fetches the records from the beginning.
get_models(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_models(Client, Input, []).
get_models(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetModels">>, Input, Options).

%% @doc Gets one or more outcomes.
%%
%% This is a paginated API. If you provide a null `maxResults', this actions
%% retrieves a maximum of 100 records per page. If you provide a
%% `maxResults', the value must be between 50 and 100. To get the next page
%% results, provide the pagination token from the `GetOutcomesResult' as part
%% of your request. A null pagination token fetches the records from the
%% beginning.
get_outcomes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_outcomes(Client, Input, []).
get_outcomes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOutcomes">>, Input, Options).

%% @doc Get all rules for a detector (paginated) if `ruleId' and
%% `ruleVersion' are not specified.
%%
%% Gets all rules for the detector and the `ruleId' if present (paginated).
%% Gets a specific rule if both the `ruleId' and the `ruleVersion' are
%% specified.
%%
%% This is a paginated API. Providing null maxResults results in retrieving
%% maximum of 100 records per page. If you provide maxResults the value must
%% be between 50 and 100. To get the next page result, a provide a pagination
%% token from GetRulesResult as part of your request. Null pagination token
%% fetches the records from the beginning.
get_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rules(Client, Input, []).
get_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRules">>, Input, Options).

%% @doc Gets all of the variables or the specific variable.
%%
%% This is a paginated API. Providing null `maxSizePerPage' results in
%% retrieving maximum of 100 records per page. If you provide
%% `maxSizePerPage' the value must be between 50 and 100. To get the next
%% page result, a provide a pagination token from `GetVariablesResult' as
%% part of your request. Null pagination token fetches the records from the
%% beginning.
get_variables(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_variables(Client, Input, []).
get_variables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVariables">>, Input, Options).

%% @doc Gets a list of past predictions.
%%
%% The list can be filtered by detector ID, detector version ID, event ID,
%% event type, or by specifying a time period. If filter is not specified,
%% the most recent prediction is returned.
%%
%% For example, the following filter lists all past predictions for `xyz'
%% event type - `{ "eventType":{ "value": "xyz" }” } '
%%
%% This is a paginated API. If you provide a null `maxResults', this action
%% will retrieve a maximum of 10 records per page. If you provide a
%% `maxResults', the value must be between 50 and 100. To get the next page
%% results, provide the `nextToken' from the response as part of your
%% request. A null `nextToken' fetches the records from the beginning.
list_event_predictions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_event_predictions(Client, Input, []).
list_event_predictions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEventPredictions">>, Input, Options).

%% @doc Lists all tags associated with the resource.
%%
%% This is a paginated API. To get the next page results, provide the
%% pagination token from the response as part of your request. A null
%% pagination token fetches the records from the beginning.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Creates or updates a detector.
put_detector(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_detector(Client, Input, []).
put_detector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDetector">>, Input, Options).

%% @doc Creates or updates an entity type.
%%
%% An entity represents who is performing the event. As part of a fraud
%% prediction, you pass the entity ID to indicate the specific entity who
%% performed the event. An entity type classifies the entity. Example
%% classifications include customer, merchant, or account.
put_entity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_entity_type(Client, Input, []).
put_entity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutEntityType">>, Input, Options).

%% @doc Creates or updates an event type.
%%
%% An event is a business activity that is evaluated for fraud risk. With
%% Amazon Fraud Detector, you generate fraud predictions for events. An event
%% type defines the structure for an event sent to Amazon Fraud Detector.
%% This includes the variables sent as part of the event, the entity
%% performing the event (such as a customer), and the labels that classify
%% the event. Example event types include online payment transactions,
%% account registrations, and authentications.
put_event_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_event_type(Client, Input, []).
put_event_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutEventType">>, Input, Options).

%% @doc Creates or updates an Amazon SageMaker model endpoint.
%%
%% You can also use this action to update the configuration of the model
%% endpoint, including the IAM role and/or the mapped variables.
put_external_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_external_model(Client, Input, []).
put_external_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutExternalModel">>, Input, Options).

%% @doc Specifies the KMS key to be used to encrypt content in Amazon Fraud
%% Detector.
put_kms_encryption_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_kms_encryption_key(Client, Input, []).
put_kms_encryption_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutKMSEncryptionKey">>, Input, Options).

%% @doc Creates or updates label.
%%
%% A label classifies an event as fraudulent or legitimate. Labels are
%% associated with event types and used to train supervised machine learning
%% models in Amazon Fraud Detector.
put_label(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_label(Client, Input, []).
put_label(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutLabel">>, Input, Options).

%% @doc Creates or updates an outcome.
put_outcome(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_outcome(Client, Input, []).
put_outcome(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutOutcome">>, Input, Options).

%% @doc Stores events in Amazon Fraud Detector without generating fraud
%% predictions for those events.
%%
%% For example, you can use `SendEvent' to upload a historical dataset, which
%% you can then later use to train a model.
send_event(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_event(Client, Input, []).
send_event(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendEvent">>, Input, Options).

%% @doc Assigns tags to a resource.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes tags from a resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates a detector version.
%%
%% The detector version attributes that you can update include models,
%% external model endpoints, rules, rule execution mode, and description. You
%% can only update a `DRAFT' detector version.
update_detector_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_detector_version(Client, Input, []).
update_detector_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDetectorVersion">>, Input, Options).

%% @doc Updates the detector version's description.
%%
%% You can update the metadata for any detector version (`DRAFT, ACTIVE,' or
%% `INACTIVE').
update_detector_version_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_detector_version_metadata(Client, Input, []).
update_detector_version_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDetectorVersionMetadata">>, Input, Options).

%% @doc Updates the detector version’s status.
%%
%% You can perform the following promotions or demotions using
%% `UpdateDetectorVersionStatus': `DRAFT' to `ACTIVE', `ACTIVE' to
%% `INACTIVE', and `INACTIVE' to `ACTIVE'.
update_detector_version_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_detector_version_status(Client, Input, []).
update_detector_version_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDetectorVersionStatus">>, Input, Options).

%% @doc Updates the specified event with a new label.
update_event_label(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_event_label(Client, Input, []).
update_event_label(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEventLabel">>, Input, Options).

%% @doc Updates model description.
update_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_model(Client, Input, []).
update_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateModel">>, Input, Options).

%% @doc Updates a model version.
%%
%% Updating a model version retrains an existing model version using updated
%% training data and produces a new minor version of the model. You can
%% update the training data set location and data access role attributes
%% using this action. This action creates and trains a new minor version of
%% the model, for example version 1.01, 1.02, 1.03.
update_model_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_model_version(Client, Input, []).
update_model_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateModelVersion">>, Input, Options).

%% @doc Updates the status of a model version.
%%
%% You can perform the following status updates:
%%
%% <ol> <li> Change the `TRAINING_IN_PROGRESS' status to
%% `TRAINING_CANCELLED'.
%%
%% </li> <li> Change the `TRAINING_COMPLETE' status to `ACTIVE'.
%%
%% </li> <li> Change `ACTIVE' to `INACTIVE'.
%%
%% </li> </ol>
update_model_version_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_model_version_status(Client, Input, []).
update_model_version_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateModelVersionStatus">>, Input, Options).

%% @doc Updates a rule's metadata.
%%
%% The description attribute can be updated.
update_rule_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rule_metadata(Client, Input, []).
update_rule_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRuleMetadata">>, Input, Options).

%% @doc Updates a rule version resulting in a new rule version.
%%
%% Updates a rule version resulting in a new rule version (version 1, 2, 3
%% ...).
update_rule_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rule_version(Client, Input, []).
update_rule_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRuleVersion">>, Input, Options).

%% @doc Updates a variable.
update_variable(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_variable(Client, Input, []).
update_variable(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateVariable">>, Input, Options).

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
    Client1 = Client#{service => <<"frauddetector">>},
    Host = build_host(<<"frauddetector">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSHawksNestServiceFacade.", Action/binary>>}
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
