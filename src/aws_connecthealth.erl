%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Health Agent for healthcare providers and patient engagement
-module(aws_connecthealth).

-export([activate_subscription/4,
         activate_subscription/5,
         create_domain/2,
         create_domain/3,
         create_subscription/3,
         create_subscription/4,
         deactivate_subscription/4,
         deactivate_subscription/5,
         delete_domain/3,
         delete_domain/4,
         get_domain/2,
         get_domain/4,
         get_domain/5,
         get_medical_scribe_listening_session/4,
         get_medical_scribe_listening_session/6,
         get_medical_scribe_listening_session/7,
         get_patient_insights_job/3,
         get_patient_insights_job/5,
         get_patient_insights_job/6,
         get_subscription/3,
         get_subscription/5,
         get_subscription/6,
         list_domains/1,
         list_domains/3,
         list_domains/4,
         list_subscriptions/2,
         list_subscriptions/4,
         list_subscriptions/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_medical_scribe_listening_session/2,
         start_medical_scribe_listening_session/3,
         start_patient_insights_job/3,
         start_patient_insights_job/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% fhir_server() :: #{
%%   <<"fhirEndpoint">> => string(),
%%   <<"oauthToken">> => string()
%% }
-type fhir_server() :: #{binary() => any()}.


%% Example:
%% s3_source() :: #{
%%   <<"uri">> => string()
%% }
-type s3_source() :: #{binary() => any()}.


%% Example:
%% start_patient_insights_job_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"encounterContext">> := patient_insights_encounter_context(),
%%   <<"inputDataConfig">> := input_data_config(),
%%   <<"insightsContext">> := insights_context(),
%%   <<"outputDataConfig">> := output_data_config(),
%%   <<"patientContext">> := patient_insights_patient_context(),
%%   <<"userContext">> := user_context()
%% }
-type start_patient_insights_job_request() :: #{binary() => any()}.

%% Example:
%% get_domain_input() :: #{}
-type get_domain_input() :: #{}.


%% Example:
%% medical_scribe_audio_event() :: #{
%%   <<"audioChunk">> => binary()
%% }
-type medical_scribe_audio_event() :: #{binary() => any()}.


%% Example:
%% medical_scribe_post_stream_action_settings() :: #{
%%   <<"clinicalNoteGenerationSettings">> => clinical_note_generation_settings(),
%%   <<"outputS3Uri">> => string()
%% }
-type medical_scribe_post_stream_action_settings() :: #{binary() => any()}.


%% Example:
%% input_data_config() :: #{
%%   <<"fhirServer">> => fhir_server(),
%%   <<"s3Sources">> => list(s3_source())
%% }
-type input_data_config() :: #{binary() => any()}.

%% Example:
%% create_subscription_input() :: #{}
-type create_subscription_input() :: #{}.


%% Example:
%% patient_insights_patient_context() :: #{
%%   <<"dateOfBirth">> => string(),
%%   <<"patientId">> => string(),
%%   <<"pronouns">> => list(any())
%% }
-type patient_insights_patient_context() :: #{binary() => any()}.


%% Example:
%% medical_scribe_post_stream_action_settings_response() :: #{
%%   <<"clinicalNoteGenerationSettings">> => clinical_note_generation_settings_response(),
%%   <<"outputS3Uri">> => string()
%% }
-type medical_scribe_post_stream_action_settings_response() :: #{binary() => any()}.


%% Example:
%% domain_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"domainId">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any())
%% }
-type domain_summary() :: #{binary() => any()}.


%% Example:
%% clinical_note_generation_settings() :: #{
%%   <<"noteTemplateSettings">> => list()
%% }
-type clinical_note_generation_settings() :: #{binary() => any()}.


%% Example:
%% start_medical_scribe_listening_session_output() :: #{
%%   <<"domainId">> => string(),
%%   <<"languageCode">> => list(any()),
%%   <<"mediaEncoding">> => list(any()),
%%   <<"mediaSampleRateHertz">> => integer(),
%%   <<"requestId">> => string(),
%%   <<"responseStream">> => list(),
%%   <<"sessionId">> => string(),
%%   <<"subscriptionId">> => string()
%% }
-type start_medical_scribe_listening_session_output() :: #{binary() => any()}.


%% Example:
%% managed_template() :: #{
%%   <<"templateType">> => list(any())
%% }
-type managed_template() :: #{binary() => any()}.


%% Example:
%% list_subscriptions_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()]
%% }
-type list_subscriptions_input() :: #{binary() => any()}.


%% Example:
%% custom_template() :: #{
%%   <<"templateInstructions">> => list(template_section_instruction()),
%%   <<"templateType">> => list(any())
%% }
-type custom_template() :: #{binary() => any()}.


%% Example:
%% medical_scribe_configuration_event() :: #{
%%   <<"channelDefinitions">> => list(medical_scribe_channel_definition()),
%%   <<"encounterContext">> => encounter_context(),
%%   <<"postStreamActionSettings">> => medical_scribe_post_stream_action_settings()
%% }
-type medical_scribe_configuration_event() :: #{binary() => any()}.

%% Example:
%% activate_subscription_input() :: #{}
-type activate_subscription_input() :: #{}.


%% Example:
%% medical_scribe_transcript_event() :: #{
%%   <<"transcriptSegment">> => medical_scribe_transcript_segment()
%% }
-type medical_scribe_transcript_event() :: #{binary() => any()}.


%% Example:
%% medical_scribe_post_stream_actions_result() :: #{
%%   <<"clinicalNoteGenerationResult">> => clinical_note_generation_result()
%% }
-type medical_scribe_post_stream_actions_result() :: #{binary() => any()}.


%% Example:
%% activate_subscription_output() :: #{
%%   <<"subscription">> => subscription_description()
%% }
-type activate_subscription_output() :: #{binary() => any()}.


%% Example:
%% create_domain_input() :: #{
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map(),
%%   <<"webAppSetupConfiguration">> => create_web_app_configuration()
%% }
-type create_domain_input() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% get_medical_scribe_listening_session_output() :: #{
%%   <<"medicalScribeListeningSessionDetails">> => medical_scribe_listening_session_details()
%% }
-type get_medical_scribe_listening_session_output() :: #{binary() => any()}.

%% Example:
%% delete_domain_input() :: #{}
-type delete_domain_input() :: #{}.

%% Example:
%% get_medical_scribe_listening_session_input() :: #{}
-type get_medical_scribe_listening_session_input() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% list_domains_output() :: #{
%%   <<"domains">> => list(domain_summary()),
%%   <<"nextToken">> => [string()]
%% }
-type list_domains_output() :: #{binary() => any()}.


%% Example:
%% custom_template_response() :: #{
%%   <<"templateType">> => list(any())
%% }
-type custom_template_response() :: #{binary() => any()}.


%% Example:
%% medical_scribe_listening_session_details() :: #{
%%   <<"channelDefinitions">> => list(medical_scribe_channel_definition()),
%%   <<"domainId">> => string(),
%%   <<"encounterContextProvided">> => boolean(),
%%   <<"languageCode">> => list(any()),
%%   <<"mediaEncoding">> => list(any()),
%%   <<"mediaSampleRateHertz">> => integer(),
%%   <<"postStreamActionResult">> => medical_scribe_post_stream_actions_result(),
%%   <<"postStreamActionSettings">> => medical_scribe_post_stream_action_settings_response(),
%%   <<"sessionId">> => string(),
%%   <<"streamCreationTime">> => [non_neg_integer()],
%%   <<"streamEndTime">> => [non_neg_integer()],
%%   <<"streamStatus">> => list(any()),
%%   <<"subscriptionId">> => string()
%% }
-type medical_scribe_listening_session_details() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_domain_output() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"domainId">> => string(),
%%   <<"encryptionContext">> => encryption_context(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"webAppConfiguration">> => web_app_configuration(),
%%   <<"webAppUrl">> => string()
%% }
-type get_domain_output() :: #{binary() => any()}.


%% Example:
%% start_medical_scribe_listening_session_input() :: #{
%%   <<"domainId">> := string(),
%%   <<"inputStream">> => list(),
%%   <<"languageCode">> := list(any()),
%%   <<"mediaEncoding">> := list(any()),
%%   <<"mediaSampleRateHertz">> := integer(),
%%   <<"sessionId">> := string(),
%%   <<"subscriptionId">> := string()
%% }
-type start_medical_scribe_listening_session_input() :: #{binary() => any()}.


%% Example:
%% insights_output() :: #{
%%   <<"uri">> => string()
%% }
-type insights_output() :: #{binary() => any()}.


%% Example:
%% encryption_context() :: #{
%%   <<"encryptionType">> => list(any()),
%%   <<"kmsKeyArn">> => string()
%% }
-type encryption_context() :: #{binary() => any()}.


%% Example:
%% create_web_app_configuration() :: #{
%%   <<"ehrRole">> => [string()],
%%   <<"idcInstanceId">> => [string()],
%%   <<"idcRegion">> => [string()]
%% }
-type create_web_app_configuration() :: #{binary() => any()}.

%% Example:
%% get_patient_insights_job_request() :: #{}
-type get_patient_insights_job_request() :: #{}.


%% Example:
%% start_patient_insights_job_response() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"jobArn">> => string(),
%%   <<"jobId">> => string()
%% }
-type start_patient_insights_job_response() :: #{binary() => any()}.


%% Example:
%% clinical_note_generation_settings_response() :: #{
%%   <<"noteTemplateSettings">> => list()
%% }
-type clinical_note_generation_settings_response() :: #{binary() => any()}.


%% Example:
%% encounter_context() :: #{
%%   <<"unstructuredContext">> => string()
%% }
-type encounter_context() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% web_app_configuration() :: #{
%%   <<"ehrRole">> => [string()],
%%   <<"idcApplicationId">> => [string()],
%%   <<"idcRegion">> => [string()]
%% }
-type web_app_configuration() :: #{binary() => any()}.


%% Example:
%% deactivate_subscription_output() :: #{
%%   <<"subscription">> => subscription_description()
%% }
-type deactivate_subscription_output() :: #{binary() => any()}.


%% Example:
%% create_domain_output() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"domainId">> => string(),
%%   <<"encryptionContext">> => encryption_context(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> => string(),
%%   <<"status">> => list(any()),
%%   <<"webAppConfiguration">> => web_app_configuration(),
%%   <<"webAppUrl">> => string()
%% }
-type create_domain_output() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% create_subscription_output() :: #{
%%   <<"activatedAt">> => [non_neg_integer()],
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"deactivatedAt">> => [non_neg_integer()],
%%   <<"domainId">> => string(),
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"status">> => list(any()),
%%   <<"subscriptionId">> => string()
%% }
-type create_subscription_output() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% insights_context() :: #{
%%   <<"insightsType">> => list(any())
%% }
-type insights_context() :: #{binary() => any()}.


%% Example:
%% get_patient_insights_job_response() :: #{
%%   <<"creationTime">> => [non_neg_integer()],
%%   <<"encounterContext">> => patient_insights_encounter_context(),
%%   <<"inputDataConfig">> => input_data_config(),
%%   <<"insightsContext">> => insights_context(),
%%   <<"insightsOutput">> => insights_output(),
%%   <<"jobArn">> => string(),
%%   <<"jobId">> => string(),
%%   <<"jobStatus">> => list(any()),
%%   <<"outputDataConfig">> => output_data_config(),
%%   <<"patientContext">> => patient_insights_patient_context(),
%%   <<"statusDetails">> => string(),
%%   <<"updatedTime">> => [non_neg_integer()],
%%   <<"userContext">> => user_context()
%% }
-type get_patient_insights_job_response() :: #{binary() => any()}.

%% Example:
%% deactivate_subscription_input() :: #{}
-type deactivate_subscription_input() :: #{}.


%% Example:
%% artifact_details() :: #{
%%   <<"failureReason">> => string(),
%%   <<"outputLocation">> => string(),
%%   <<"status">> => list(any())
%% }
-type artifact_details() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% template_section_instruction() :: #{
%%   <<"sectionHeader">> => string(),
%%   <<"sectionInstruction">> => string()
%% }
-type template_section_instruction() :: #{binary() => any()}.


%% Example:
%% output_data_config() :: #{
%%   <<"s3OutputPath">> => string()
%% }
-type output_data_config() :: #{binary() => any()}.


%% Example:
%% medical_scribe_session_control_event() :: #{
%%   <<"type">> => list(any())
%% }
-type medical_scribe_session_control_event() :: #{binary() => any()}.


%% Example:
%% get_subscription_output() :: #{
%%   <<"subscription">> => subscription_description()
%% }
-type get_subscription_output() :: #{binary() => any()}.


%% Example:
%% user_context() :: #{
%%   <<"role">> => list(any()),
%%   <<"specialty">> => list(any()),
%%   <<"userId">> => string()
%% }
-type user_context() :: #{binary() => any()}.


%% Example:
%% medical_scribe_transcript_segment() :: #{
%%   <<"audioBeginOffset">> => float(),
%%   <<"audioEndOffset">> => float(),
%%   <<"channelId">> => [string()],
%%   <<"content">> => [string()],
%%   <<"isPartial">> => boolean(),
%%   <<"segmentId">> => [string()]
%% }
-type medical_scribe_transcript_segment() :: #{binary() => any()}.


%% Example:
%% delete_domain_output() :: #{
%%   <<"arn">> => string(),
%%   <<"domainId">> => string(),
%%   <<"status">> => list(any())
%% }
-type delete_domain_output() :: #{binary() => any()}.


%% Example:
%% patient_insights_encounter_context() :: #{
%%   <<"encounterReason">> => string()
%% }
-type patient_insights_encounter_context() :: #{binary() => any()}.


%% Example:
%% list_domains_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => [string()],
%%   <<"status">> => list(any())
%% }
-type list_domains_input() :: #{binary() => any()}.


%% Example:
%% medical_scribe_channel_definition() :: #{
%%   <<"channelId">> => integer(),
%%   <<"participantRole">> => list(any())
%% }
-type medical_scribe_channel_definition() :: #{binary() => any()}.


%% Example:
%% managed_template_response() :: #{
%%   <<"templateType">> => list(any())
%% }
-type managed_template_response() :: #{binary() => any()}.


%% Example:
%% clinical_note_generation_result() :: #{
%%   <<"afterVisitSummaryResult">> => artifact_details(),
%%   <<"noteResult">> => artifact_details(),
%%   <<"transcriptResult">> => artifact_details()
%% }
-type clinical_note_generation_result() :: #{binary() => any()}.


%% Example:
%% subscription_description() :: #{
%%   <<"activatedAt">> => [non_neg_integer()],
%%   <<"arn">> => string(),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"deactivatedAt">> => [non_neg_integer()],
%%   <<"domainId">> => string(),
%%   <<"lastUpdatedAt">> => [non_neg_integer()],
%%   <<"status">> => list(any()),
%%   <<"subscriptionId">> => string()
%% }
-type subscription_description() :: #{binary() => any()}.

%% Example:
%% get_subscription_input() :: #{}
-type get_subscription_input() :: #{}.


%% Example:
%% list_subscriptions_output() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"subscriptions">> => list(subscription_description())
%% }
-type list_subscriptions_output() :: #{binary() => any()}.

-type activate_subscription_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_domain_errors() ::
    service_quota_exceeded_exception().

-type create_subscription_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type deactivate_subscription_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_domain_errors() ::
    resource_not_found_exception().

-type get_domain_errors() ::
    resource_not_found_exception().

-type get_medical_scribe_listening_session_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type get_patient_insights_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_subscription_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_subscriptions_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_medical_scribe_listening_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type start_patient_insights_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Activates a Subscription to enable billing for a user.
-spec activate_subscription(aws_client:aws_client(), binary() | list(), binary() | list(), activate_subscription_input()) ->
    {ok, activate_subscription_output(), tuple()} |
    {error, any()} |
    {error, activate_subscription_errors(), tuple()}.
activate_subscription(Client, DomainId, SubscriptionId, Input) ->
    activate_subscription(Client, DomainId, SubscriptionId, Input, []).

-spec activate_subscription(aws_client:aws_client(), binary() | list(), binary() | list(), activate_subscription_input(), proplists:proplist()) ->
    {ok, activate_subscription_output(), tuple()} |
    {error, any()} |
    {error, activate_subscription_errors(), tuple()}.
activate_subscription(Client, DomainId, SubscriptionId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/subscriptions/", aws_util:encode_uri(SubscriptionId), "/activate"],
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

%% @doc Creates a new Domain for managing HealthAgent resources.
-spec create_domain(aws_client:aws_client(), create_domain_input()) ->
    {ok, create_domain_output(), tuple()} |
    {error, any()} |
    {error, create_domain_errors(), tuple()}.
create_domain(Client, Input) ->
    create_domain(Client, Input, []).

-spec create_domain(aws_client:aws_client(), create_domain_input(), proplists:proplist()) ->
    {ok, create_domain_output(), tuple()} |
    {error, any()} |
    {error, create_domain_errors(), tuple()}.
create_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/domain"],
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

%% @doc Creates a new Subscription within a Domain for billing and user
%% management.
-spec create_subscription(aws_client:aws_client(), binary() | list(), create_subscription_input()) ->
    {ok, create_subscription_output(), tuple()} |
    {error, any()} |
    {error, create_subscription_errors(), tuple()}.
create_subscription(Client, DomainId, Input) ->
    create_subscription(Client, DomainId, Input, []).

-spec create_subscription(aws_client:aws_client(), binary() | list(), create_subscription_input(), proplists:proplist()) ->
    {ok, create_subscription_output(), tuple()} |
    {error, any()} |
    {error, create_subscription_errors(), tuple()}.
create_subscription(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/subscriptions"],
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

%% @doc Deactivates a Subscription to stop billing for a user.
-spec deactivate_subscription(aws_client:aws_client(), binary() | list(), binary() | list(), deactivate_subscription_input()) ->
    {ok, deactivate_subscription_output(), tuple()} |
    {error, any()} |
    {error, deactivate_subscription_errors(), tuple()}.
deactivate_subscription(Client, DomainId, SubscriptionId, Input) ->
    deactivate_subscription(Client, DomainId, SubscriptionId, Input, []).

-spec deactivate_subscription(aws_client:aws_client(), binary() | list(), binary() | list(), deactivate_subscription_input(), proplists:proplist()) ->
    {ok, deactivate_subscription_output(), tuple()} |
    {error, any()} |
    {error, deactivate_subscription_errors(), tuple()}.
deactivate_subscription(Client, DomainId, SubscriptionId, Input0, Options0) ->
    Method = post,
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/subscriptions/", aws_util:encode_uri(SubscriptionId), "/deactivate"],
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

%% @doc Deletes a Domain and all associated resources.
-spec delete_domain(aws_client:aws_client(), binary() | list(), delete_domain_input()) ->
    {ok, delete_domain_output(), tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
delete_domain(Client, DomainId, Input) ->
    delete_domain(Client, DomainId, Input, []).

-spec delete_domain(aws_client:aws_client(), binary() | list(), delete_domain_input(), proplists:proplist()) ->
    {ok, delete_domain_output(), tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
delete_domain(Client, DomainId, Input0, Options0) ->
    Method = delete,
    Path = ["/domain/", aws_util:encode_uri(DomainId), ""],
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

%% @doc Retrieves information about a Domain.
-spec get_domain(aws_client:aws_client(), binary() | list()) ->
    {ok, get_domain_output(), tuple()} |
    {error, any()} |
    {error, get_domain_errors(), tuple()}.
get_domain(Client, DomainId)
  when is_map(Client) ->
    get_domain(Client, DomainId, #{}, #{}).

-spec get_domain(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_domain_output(), tuple()} |
    {error, any()} |
    {error, get_domain_errors(), tuple()}.
get_domain(Client, DomainId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain(Client, DomainId, QueryMap, HeadersMap, []).

-spec get_domain(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_domain_output(), tuple()} |
    {error, any()} |
    {error, get_domain_errors(), tuple()}.
get_domain(Client, DomainId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domain/", aws_util:encode_uri(DomainId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details about an existing Medical Scribe listening session
-spec get_medical_scribe_listening_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_medical_scribe_listening_session_output(), tuple()} |
    {error, any()} |
    {error, get_medical_scribe_listening_session_errors(), tuple()}.
get_medical_scribe_listening_session(Client, DomainId, SessionId, SubscriptionId)
  when is_map(Client) ->
    get_medical_scribe_listening_session(Client, DomainId, SessionId, SubscriptionId, #{}, #{}).

-spec get_medical_scribe_listening_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_medical_scribe_listening_session_output(), tuple()} |
    {error, any()} |
    {error, get_medical_scribe_listening_session_errors(), tuple()}.
get_medical_scribe_listening_session(Client, DomainId, SessionId, SubscriptionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_medical_scribe_listening_session(Client, DomainId, SessionId, SubscriptionId, QueryMap, HeadersMap, []).

-spec get_medical_scribe_listening_session(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_medical_scribe_listening_session_output(), tuple()} |
    {error, any()} |
    {error, get_medical_scribe_listening_session_errors(), tuple()}.
get_medical_scribe_listening_session(Client, DomainId, SessionId, SubscriptionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/medical-scribe-stream/domain/", aws_util:encode_uri(DomainId), "/subscription/", aws_util:encode_uri(SubscriptionId), "/session/", aws_util:encode_uri(SessionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get details of a started patient insights job.
-spec get_patient_insights_job(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_patient_insights_job_response(), tuple()} |
    {error, any()} |
    {error, get_patient_insights_job_errors(), tuple()}.
get_patient_insights_job(Client, DomainId, JobId)
  when is_map(Client) ->
    get_patient_insights_job(Client, DomainId, JobId, #{}, #{}).

-spec get_patient_insights_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_patient_insights_job_response(), tuple()} |
    {error, any()} |
    {error, get_patient_insights_job_errors(), tuple()}.
get_patient_insights_job(Client, DomainId, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_patient_insights_job(Client, DomainId, JobId, QueryMap, HeadersMap, []).

-spec get_patient_insights_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_patient_insights_job_response(), tuple()} |
    {error, any()} |
    {error, get_patient_insights_job_errors(), tuple()}.
get_patient_insights_job(Client, DomainId, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domain/", aws_util:encode_uri(DomainId), "/patient-insights-job/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a Subscription.
-spec get_subscription(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_subscription_output(), tuple()} |
    {error, any()} |
    {error, get_subscription_errors(), tuple()}.
get_subscription(Client, DomainId, SubscriptionId)
  when is_map(Client) ->
    get_subscription(Client, DomainId, SubscriptionId, #{}, #{}).

-spec get_subscription(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_subscription_output(), tuple()} |
    {error, any()} |
    {error, get_subscription_errors(), tuple()}.
get_subscription(Client, DomainId, SubscriptionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_subscription(Client, DomainId, SubscriptionId, QueryMap, HeadersMap, []).

-spec get_subscription(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_subscription_output(), tuple()} |
    {error, any()} |
    {error, get_subscription_errors(), tuple()}.
get_subscription(Client, DomainId, SubscriptionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/subscriptions/", aws_util:encode_uri(SubscriptionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Domains for a given account.
-spec list_domains(aws_client:aws_client()) ->
    {ok, list_domains_output(), tuple()} |
    {error, any()}.
list_domains(Client)
  when is_map(Client) ->
    list_domains(Client, #{}, #{}).

-spec list_domains(aws_client:aws_client(), map(), map()) ->
    {ok, list_domains_output(), tuple()} |
    {error, any()}.
list_domains(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domains(Client, QueryMap, HeadersMap, []).

-spec list_domains(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_domains_output(), tuple()} |
    {error, any()}.
list_domains(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domain"],
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
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all Subscriptions within a Domain.
-spec list_subscriptions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_subscriptions_output(), tuple()} |
    {error, any()} |
    {error, list_subscriptions_errors(), tuple()}.
list_subscriptions(Client, DomainId)
  when is_map(Client) ->
    list_subscriptions(Client, DomainId, #{}, #{}).

-spec list_subscriptions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_subscriptions_output(), tuple()} |
    {error, any()} |
    {error, list_subscriptions_errors(), tuple()}.
list_subscriptions(Client, DomainId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_subscriptions(Client, DomainId, QueryMap, HeadersMap, []).

-spec list_subscriptions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_subscriptions_output(), tuple()} |
    {error, any()} |
    {error, list_subscriptions_errors(), tuple()}.
list_subscriptions(Client, DomainId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/domains/", aws_util:encode_uri(DomainId), "/subscriptions"],
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

%% @doc Lists the tags associated with the specified resource
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts a new Medical Scribe listening session for real-time audio
%% transcription
-spec start_medical_scribe_listening_session(aws_client:aws_client(), start_medical_scribe_listening_session_input()) ->
    {ok, start_medical_scribe_listening_session_output(), tuple()} |
    {error, any()} |
    {error, start_medical_scribe_listening_session_errors(), tuple()}.
start_medical_scribe_listening_session(Client, Input) ->
    start_medical_scribe_listening_session(Client, Input, []).

-spec start_medical_scribe_listening_session(aws_client:aws_client(), start_medical_scribe_listening_session_input(), proplists:proplist()) ->
    {ok, start_medical_scribe_listening_session_output(), tuple()} |
    {error, any()} |
    {error, start_medical_scribe_listening_session_errors(), tuple()}.
start_medical_scribe_listening_session(Client, Input0, Options0) ->
    Method = post,
    Path = ["/medical-scribe-stream/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-medscribe-domain-id">>, <<"domainId">>},
                       {<<"x-amzn-medscribe-language-code">>, <<"languageCode">>},
                       {<<"x-amzn-medscribe-media-encoding">>, <<"mediaEncoding">>},
                       {<<"x-amzn-medscribe-sample-rate">>, <<"mediaSampleRateHertz">>},
                       {<<"x-amzn-medscribe-session-id">>, <<"sessionId">>},
                       {<<"x-amzn-medscribe-subscription-id">>, <<"subscriptionId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    case request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"x-amzn-medscribe-domain-id">>, <<"domainId">>},
            {<<"x-amzn-medscribe-language-code">>, <<"languageCode">>},
            {<<"x-amzn-medscribe-media-encoding">>, <<"mediaEncoding">>},
            {<<"x-amzn-medscribe-sample-rate">>, <<"mediaSampleRateHertz">>},
            {<<"x-amzn-request-id">>, <<"requestId">>},
            {<<"x-amzn-medscribe-session-id">>, <<"sessionId">>},
            {<<"x-amzn-medscribe-subscription-id">>, <<"subscriptionId">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Starts a new patient insights job.
-spec start_patient_insights_job(aws_client:aws_client(), binary() | list(), start_patient_insights_job_request()) ->
    {ok, start_patient_insights_job_response(), tuple()} |
    {error, any()} |
    {error, start_patient_insights_job_errors(), tuple()}.
start_patient_insights_job(Client, DomainId, Input) ->
    start_patient_insights_job(Client, DomainId, Input, []).

-spec start_patient_insights_job(aws_client:aws_client(), binary() | list(), start_patient_insights_job_request(), proplists:proplist()) ->
    {ok, start_patient_insights_job_response(), tuple()} |
    {error, any()} |
    {error, start_patient_insights_job_errors(), tuple()}.
start_patient_insights_job(Client, DomainId, Input0, Options0) ->
    Method = post,
    Path = ["/domain/", aws_util:encode_uri(DomainId), "/patient-insights-job"],
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

%% @doc Associates the specified tags with the specified resource
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
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

%% @doc Removes the specified tags from the specified resource
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
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
    Client1 = Client#{service => <<"health-agent">>},
    Host = build_host(<<"health-agent">>, Client1),
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
