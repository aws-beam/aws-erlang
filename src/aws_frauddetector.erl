%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the Amazon Fraud Detector API Reference. This guide is for
%% developers who need detailed information about Amazon Fraud Detector API
%% actions, data types, and errors. For more information about Amazon Fraud
%% Detector features, see the <a
%% href="https://docs.aws.amazon.com/frauddetector/latest/ug/">Amazon Fraud
%% Detector User Guide</a>.
-module(aws_frauddetector).

-export([batch_create_variable/2,
         batch_create_variable/3,
         batch_get_variable/2,
         batch_get_variable/3,
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
         delete_detector/2,
         delete_detector/3,
         delete_detector_version/2,
         delete_detector_version/3,
         delete_event/2,
         delete_event/3,
         delete_rule/2,
         delete_rule/3,
         describe_detector/2,
         describe_detector/3,
         describe_model_versions/2,
         describe_model_versions/3,
         get_detector_version/2,
         get_detector_version/3,
         get_detectors/2,
         get_detectors/3,
         get_entity_types/2,
         get_entity_types/3,
         get_event_prediction/2,
         get_event_prediction/3,
         get_event_types/2,
         get_event_types/3,
         get_external_models/2,
         get_external_models/3,
         get_k_m_s_encryption_key/2,
         get_k_m_s_encryption_key/3,
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
         put_k_m_s_encryption_key/2,
         put_k_m_s_encryption_key/3,
         put_label/2,
         put_label/3,
         put_outcome/2,
         put_outcome/3,
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

%% @doc Creates a detector version. The detector version starts in a
%% <code>DRAFT</code> status.
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

%% @doc Deletes the detector. Before deleting a detector, you must first
%% delete all detector versions and rule versions associated with the
%% detector.
delete_detector(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_detector(Client, Input, []).
delete_detector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDetector">>, Input, Options).

%% @doc Deletes the detector version. You cannot delete detector versions
%% that are in <code>ACTIVE</code> status.
delete_detector_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_detector_version(Client, Input, []).
delete_detector_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDetectorVersion">>, Input, Options).

%% @doc Deletes the specified event.
delete_event(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event(Client, Input, []).
delete_event(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEvent">>, Input, Options).

%% @doc Deletes the rule. You cannot delete a rule if it is used by an
%% <code>ACTIVE</code> or <code>INACTIVE</code> detector version.
delete_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rule(Client, Input, []).
delete_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRule">>, Input, Options).

%% @doc Gets all versions for a specified detector.
describe_detector(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_detector(Client, Input, []).
describe_detector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDetector">>, Input, Options).

%% @doc Gets all of the model versions for the specified model type or for
%% the specified model type and model ID. You can also get details for a
%% single, specified model version.
describe_model_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model_versions(Client, Input, []).
describe_model_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModelVersions">>, Input, Options).

%% @doc Gets a particular detector version.
get_detector_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_detector_version(Client, Input, []).
get_detector_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDetectorVersion">>, Input, Options).

%% @doc Gets all detectors or a single detector if a <code>detectorId</code>
%% is specified. This is a paginated API. If you provide a null
%% <code>maxResults</code>, this action retrieves a maximum of 10 records per
%% page. If you provide a <code>maxResults</code>, the value must be between
%% 5 and 10. To get the next page results, provide the pagination token from
%% the <code>GetDetectorsResponse</code> as part of your request. A null
%% pagination token fetches the records from the beginning.
get_detectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_detectors(Client, Input, []).
get_detectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDetectors">>, Input, Options).

%% @doc Gets all entity types or a specific entity type if a name is
%% specified. This is a paginated API. If you provide a null
%% <code>maxResults</code>, this action retrieves a maximum of 10 records per
%% page. If you provide a <code>maxResults</code>, the value must be between
%% 5 and 10. To get the next page results, provide the pagination token from
%% the <code>GetEntityTypesResponse</code> as part of your request. A null
%% pagination token fetches the records from the beginning.
get_entity_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_entity_types(Client, Input, []).
get_entity_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEntityTypes">>, Input, Options).

%% @doc Evaluates an event against a detector version. If a version ID is not
%% provided, the detector’s (<code>ACTIVE</code>) version is used.
get_event_prediction(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_event_prediction(Client, Input, []).
get_event_prediction(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEventPrediction">>, Input, Options).

%% @doc Gets all event types or a specific event type if name is provided.
%% This is a paginated API. If you provide a null <code>maxResults</code>,
%% this action retrieves a maximum of 10 records per page. If you provide a
%% <code>maxResults</code>, the value must be between 5 and 10. To get the
%% next page results, provide the pagination token from the
%% <code>GetEventTypesResponse</code> as part of your request. A null
%% pagination token fetches the records from the beginning.
get_event_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_event_types(Client, Input, []).
get_event_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEventTypes">>, Input, Options).

%% @doc Gets the details for one or more Amazon SageMaker models that have
%% been imported into the service. This is a paginated API. If you provide a
%% null <code>maxResults</code>, this actions retrieves a maximum of 10
%% records per page. If you provide a <code>maxResults</code>, the value must
%% be between 5 and 10. To get the next page results, provide the pagination
%% token from the <code>GetExternalModelsResult</code> as part of your
%% request. A null pagination token fetches the records from the beginning.
get_external_models(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_external_models(Client, Input, []).
get_external_models(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetExternalModels">>, Input, Options).

%% @doc Gets the encryption key if a Key Management Service (KMS) customer
%% master key (CMK) has been specified to be used to encrypt content in
%% Amazon Fraud Detector.
get_k_m_s_encryption_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_k_m_s_encryption_key(Client, Input, []).
get_k_m_s_encryption_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetKMSEncryptionKey">>, Input, Options).

%% @doc Gets all labels or a specific label if name is provided. This is a
%% paginated API. If you provide a null <code>maxResults</code>, this action
%% retrieves a maximum of 50 records per page. If you provide a
%% <code>maxResults</code>, the value must be between 10 and 50. To get the
%% next page results, provide the pagination token from the
%% <code>GetGetLabelsResponse</code> as part of your request. A null
%% pagination token fetches the records from the beginning.
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

%% @doc Gets one or more models. Gets all models for the AWS account if no
%% model type and no model id provided. Gets all models for the AWS account
%% and model type, if the model type is specified but model id is not
%% provided. Gets a specific model if (model type, model id) tuple is
%% specified.
%%
%% This is a paginated API. If you provide a null <code>maxResults</code>,
%% this action retrieves a maximum of 10 records per page. If you provide a
%% <code>maxResults</code>, the value must be between 1 and 10. To get the
%% next page results, provide the pagination token from the response as part
%% of your request. A null pagination token fetches the records from the
%% beginning.
get_models(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_models(Client, Input, []).
get_models(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetModels">>, Input, Options).

%% @doc Gets one or more outcomes. This is a paginated API. If you provide a
%% null <code>maxResults</code>, this actions retrieves a maximum of 100
%% records per page. If you provide a <code>maxResults</code>, the value must
%% be between 50 and 100. To get the next page results, provide the
%% pagination token from the <code>GetOutcomesResult</code> as part of your
%% request. A null pagination token fetches the records from the beginning.
get_outcomes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_outcomes(Client, Input, []).
get_outcomes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOutcomes">>, Input, Options).

%% @doc Get all rules for a detector (paginated) if <code>ruleId</code> and
%% <code>ruleVersion</code> are not specified. Gets all rules for the
%% detector and the <code>ruleId</code> if present (paginated). Gets a
%% specific rule if both the <code>ruleId</code> and the
%% <code>ruleVersion</code> are specified.
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

%% @doc Gets all of the variables or the specific variable. This is a
%% paginated API. Providing null <code>maxSizePerPage</code> results in
%% retrieving maximum of 100 records per page. If you provide
%% <code>maxSizePerPage</code> the value must be between 50 and 100. To get
%% the next page result, a provide a pagination token from
%% <code>GetVariablesResult</code> as part of your request. Null pagination
%% token fetches the records from the beginning.
get_variables(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_variables(Client, Input, []).
get_variables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVariables">>, Input, Options).

%% @doc Lists all tags associated with the resource. This is a paginated API.
%% To get the next page results, provide the pagination token from the
%% response as part of your request. A null pagination token fetches the
%% records from the beginning.
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

%% @doc Creates or updates an entity type. An entity represents who is
%% performing the event. As part of a fraud prediction, you pass the entity
%% ID to indicate the specific entity who performed the event. An entity type
%% classifies the entity. Example classifications include customer, merchant,
%% or account.
put_entity_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_entity_type(Client, Input, []).
put_entity_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutEntityType">>, Input, Options).

%% @doc Creates or updates an event type. An event is a business activity
%% that is evaluated for fraud risk. With Amazon Fraud Detector, you generate
%% fraud predictions for events. An event type defines the structure for an
%% event sent to Amazon Fraud Detector. This includes the variables sent as
%% part of the event, the entity performing the event (such as a customer),
%% and the labels that classify the event. Example event types include online
%% payment transactions, account registrations, and authentications.
put_event_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_event_type(Client, Input, []).
put_event_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutEventType">>, Input, Options).

%% @doc Creates or updates an Amazon SageMaker model endpoint. You can also
%% use this action to update the configuration of the model endpoint,
%% including the IAM role and/or the mapped variables.
put_external_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_external_model(Client, Input, []).
put_external_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutExternalModel">>, Input, Options).

%% @doc Specifies the Key Management Service (KMS) customer master key (CMK)
%% to be used to encrypt content in Amazon Fraud Detector.
put_k_m_s_encryption_key(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_k_m_s_encryption_key(Client, Input, []).
put_k_m_s_encryption_key(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutKMSEncryptionKey">>, Input, Options).

%% @doc Creates or updates label. A label classifies an event as fraudulent
%% or legitimate. Labels are associated with event types and used to train
%% supervised machine learning models in Amazon Fraud Detector.
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

%% @doc Updates a detector version. The detector version attributes that you
%% can update include models, external model endpoints, rules, rule execution
%% mode, and description. You can only update a <code>DRAFT</code> detector
%% version.
update_detector_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_detector_version(Client, Input, []).
update_detector_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDetectorVersion">>, Input, Options).

%% @doc Updates the detector version's description. You can update the
%% metadata for any detector version (<code>DRAFT, ACTIVE,</code> or
%% <code>INACTIVE</code>).
update_detector_version_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_detector_version_metadata(Client, Input, []).
update_detector_version_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDetectorVersionMetadata">>, Input, Options).

%% @doc Updates the detector version’s status. You can perform the following
%% promotions or demotions using <code>UpdateDetectorVersionStatus</code>:
%% <code>DRAFT</code> to <code>ACTIVE</code>, <code>ACTIVE</code> to
%% <code>INACTIVE</code>, and <code>INACTIVE</code> to <code>ACTIVE</code>.
update_detector_version_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_detector_version_status(Client, Input, []).
update_detector_version_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDetectorVersionStatus">>, Input, Options).

%% @doc Updates a model. You can update the description attribute using this
%% action.
update_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_model(Client, Input, []).
update_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateModel">>, Input, Options).

%% @doc Updates a model version. Updating a model version retrains an
%% existing model version using updated training data and produces a new
%% minor version of the model. You can update the training data set location
%% and data access role attributes using this action. This action creates and
%% trains a new minor version of the model, for example version 1.01, 1.02,
%% 1.03.
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
%% <ol> <li> Change the <code>TRAINING_COMPLETE</code> status to
%% <code>ACTIVE</code>.
%%
%% </li> <li> Change <code>ACTIVE</code>to <code>INACTIVE</code>.
%%
%% </li> </ol>
update_model_version_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_model_version_status(Client, Input, []).
update_model_version_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateModelVersionStatus">>, Input, Options).

%% @doc Updates a rule's metadata. The description attribute can be updated.
update_rule_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rule_metadata(Client, Input, []).
update_rule_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRuleMetadata">>, Input, Options).

%% @doc Updates a rule version resulting in a new rule version. Updates a
%% rule version resulting in a new rule version (version 1, 2, 3 ...).
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
request(Client, Action, Input0, Options) ->
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

build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
