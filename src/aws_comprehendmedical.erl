%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Comprehend Medical; extracts structured information from unstructured
%% clinical text.
%%
%% Use these actions to gain insight in your documents.
-module(aws_comprehendmedical).

-export([describe_entities_detection_v2_job/2,
         describe_entities_detection_v2_job/3,
         describe_icd10_cm_inference_job/2,
         describe_icd10_cm_inference_job/3,
         describe_phi_detection_job/2,
         describe_phi_detection_job/3,
         describe_rx_norm_inference_job/2,
         describe_rx_norm_inference_job/3,
         describe_s_n_o_m_e_d_c_t_inference_job/2,
         describe_s_n_o_m_e_d_c_t_inference_job/3,
         detect_entities/2,
         detect_entities/3,
         detect_entities_v2/2,
         detect_entities_v2/3,
         detect_phi/2,
         detect_phi/3,
         infer_icd10_cm/2,
         infer_icd10_cm/3,
         infer_rx_norm/2,
         infer_rx_norm/3,
         infer_s_n_o_m_e_d_c_t/2,
         infer_s_n_o_m_e_d_c_t/3,
         list_entities_detection_v2_jobs/2,
         list_entities_detection_v2_jobs/3,
         list_icd10_cm_inference_jobs/2,
         list_icd10_cm_inference_jobs/3,
         list_phi_detection_jobs/2,
         list_phi_detection_jobs/3,
         list_rx_norm_inference_jobs/2,
         list_rx_norm_inference_jobs/3,
         list_s_n_o_m_e_d_c_t_inference_jobs/2,
         list_s_n_o_m_e_d_c_t_inference_jobs/3,
         start_entities_detection_v2_job/2,
         start_entities_detection_v2_job/3,
         start_icd10_cm_inference_job/2,
         start_icd10_cm_inference_job/3,
         start_phi_detection_job/2,
         start_phi_detection_job/3,
         start_rx_norm_inference_job/2,
         start_rx_norm_inference_job/3,
         start_s_n_o_m_e_d_c_t_inference_job/2,
         start_s_n_o_m_e_d_c_t_inference_job/3,
         stop_entities_detection_v2_job/2,
         stop_entities_detection_v2_job/3,
         stop_icd10_cm_inference_job/2,
         stop_icd10_cm_inference_job/3,
         stop_phi_detection_job/2,
         stop_phi_detection_job/3,
         stop_rx_norm_inference_job/2,
         stop_rx_norm_inference_job/3,
         stop_s_n_o_m_e_d_c_t_inference_job/2,
         stop_s_n_o_m_e_d_c_t_inference_job/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Gets the properties associated with a medical entities detection job.
%%
%% Use this operation to get the status of a detection job.
describe_entities_detection_v2_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_entities_detection_v2_job(Client, Input, []).
describe_entities_detection_v2_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEntitiesDetectionV2Job">>, Input, Options).

%% @doc Gets the properties associated with an InferICD10CM job.
%%
%% Use this operation to get the status of an inference job.
describe_icd10_cm_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_icd10_cm_inference_job(Client, Input, []).
describe_icd10_cm_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeICD10CMInferenceJob">>, Input, Options).

%% @doc Gets the properties associated with a protected health information
%% (PHI) detection job.
%%
%% Use this operation to get the status of a detection job.
describe_phi_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_phi_detection_job(Client, Input, []).
describe_phi_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePHIDetectionJob">>, Input, Options).

%% @doc Gets the properties associated with an InferRxNorm job.
%%
%% Use this operation to get the status of an inference job.
describe_rx_norm_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_rx_norm_inference_job(Client, Input, []).
describe_rx_norm_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRxNormInferenceJob">>, Input, Options).

%% @doc Gets the properties associated with an InferSNOMEDCT job.
%%
%% Use this operation to get the status of an inference job.
describe_s_n_o_m_e_d_c_t_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_s_n_o_m_e_d_c_t_inference_job(Client, Input, []).
describe_s_n_o_m_e_d_c_t_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSNOMEDCTInferenceJob">>, Input, Options).

%% @doc The `DetectEntities' operation is deprecated.
%%
%% You should use the `DetectEntitiesV2' operation instead.
%%
%% Inspects the clinical text for a variety of medical entities and returns
%% specific information about them such as entity category, location, and
%% confidence score on that information .
detect_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_entities(Client, Input, []).
detect_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectEntities">>, Input, Options).

%% @doc Inspects the clinical text for a variety of medical entities and
%% returns specific information about them such as entity category, location,
%% and confidence score on that information.
%%
%% Amazon Comprehend Medical only detects medical entities in English
%% language texts.
%%
%% The `DetectEntitiesV2' operation replaces the `DetectEntities'
%% operation. This new action uses a different model for determining the
%% entities in your medical text and changes the way that some entities are
%% returned in the output. You should use the `DetectEntitiesV2'
%% operation in all new applications.
%%
%% The `DetectEntitiesV2' operation returns the `Acuity' and
%% `Direction' entities as attributes instead of types.
detect_entities_v2(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_entities_v2(Client, Input, []).
detect_entities_v2(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectEntitiesV2">>, Input, Options).

%% @doc Inspects the clinical text for protected health information (PHI)
%% entities and returns the entity category, location, and confidence score
%% for each entity.
%%
%% Amazon Comprehend Medical only detects entities in English language texts.
detect_phi(Client, Input)
  when is_map(Client), is_map(Input) ->
    detect_phi(Client, Input, []).
detect_phi(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetectPHI">>, Input, Options).

%% @doc InferICD10CM detects medical conditions as entities listed in a
%% patient record and links those entities to normalized concept identifiers
%% in the ICD-10-CM knowledge base from the Centers for Disease Control.
%%
%% Amazon Comprehend Medical only detects medical entities in English
%% language texts.
infer_icd10_cm(Client, Input)
  when is_map(Client), is_map(Input) ->
    infer_icd10_cm(Client, Input, []).
infer_icd10_cm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InferICD10CM">>, Input, Options).

%% @doc InferRxNorm detects medications as entities listed in a patient
%% record and links to the normalized concept identifiers in the RxNorm
%% database from the National Library of Medicine.
%%
%% Amazon Comprehend Medical only detects medical entities in English
%% language texts.
infer_rx_norm(Client, Input)
  when is_map(Client), is_map(Input) ->
    infer_rx_norm(Client, Input, []).
infer_rx_norm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InferRxNorm">>, Input, Options).

%% @doc InferSNOMEDCT detects possible medical concepts as entities and links
%% them to codes from the Systematized Nomenclature of Medicine, Clinical
%% Terms (SNOMED-CT) ontology
infer_s_n_o_m_e_d_c_t(Client, Input)
  when is_map(Client), is_map(Input) ->
    infer_s_n_o_m_e_d_c_t(Client, Input, []).
infer_s_n_o_m_e_d_c_t(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InferSNOMEDCT">>, Input, Options).

%% @doc Gets a list of medical entity detection jobs that you have submitted.
list_entities_detection_v2_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_entities_detection_v2_jobs(Client, Input, []).
list_entities_detection_v2_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEntitiesDetectionV2Jobs">>, Input, Options).

%% @doc Gets a list of InferICD10CM jobs that you have submitted.
list_icd10_cm_inference_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_icd10_cm_inference_jobs(Client, Input, []).
list_icd10_cm_inference_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListICD10CMInferenceJobs">>, Input, Options).

%% @doc Gets a list of protected health information (PHI) detection jobs that
%% you have submitted.
list_phi_detection_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_phi_detection_jobs(Client, Input, []).
list_phi_detection_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPHIDetectionJobs">>, Input, Options).

%% @doc Gets a list of InferRxNorm jobs that you have submitted.
list_rx_norm_inference_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rx_norm_inference_jobs(Client, Input, []).
list_rx_norm_inference_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRxNormInferenceJobs">>, Input, Options).

%% @doc Gets a list of InferSNOMEDCT jobs a user has submitted.
list_s_n_o_m_e_d_c_t_inference_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_s_n_o_m_e_d_c_t_inference_jobs(Client, Input, []).
list_s_n_o_m_e_d_c_t_inference_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSNOMEDCTInferenceJobs">>, Input, Options).

%% @doc Starts an asynchronous medical entity detection job for a collection
%% of documents.
%%
%% Use the `DescribeEntitiesDetectionV2Job' operation to track the status
%% of a job.
start_entities_detection_v2_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_entities_detection_v2_job(Client, Input, []).
start_entities_detection_v2_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartEntitiesDetectionV2Job">>, Input, Options).

%% @doc Starts an asynchronous job to detect medical conditions and link them
%% to the ICD-10-CM ontology.
%%
%% Use the `DescribeICD10CMInferenceJob' operation to track the status of
%% a job.
start_icd10_cm_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_icd10_cm_inference_job(Client, Input, []).
start_icd10_cm_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartICD10CMInferenceJob">>, Input, Options).

%% @doc Starts an asynchronous job to detect protected health information
%% (PHI).
%%
%% Use the `DescribePHIDetectionJob' operation to track the status of a
%% job.
start_phi_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_phi_detection_job(Client, Input, []).
start_phi_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartPHIDetectionJob">>, Input, Options).

%% @doc Starts an asynchronous job to detect medication entities and link
%% them to the RxNorm ontology.
%%
%% Use the `DescribeRxNormInferenceJob' operation to track the status of
%% a job.
start_rx_norm_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_rx_norm_inference_job(Client, Input, []).
start_rx_norm_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartRxNormInferenceJob">>, Input, Options).

%% @doc Starts an asynchronous job to detect medical concepts and link them
%% to the SNOMED-CT ontology.
%%
%% Use the DescribeSNOMEDCTInferenceJob operation to track the status of a
%% job.
start_s_n_o_m_e_d_c_t_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_s_n_o_m_e_d_c_t_inference_job(Client, Input, []).
start_s_n_o_m_e_d_c_t_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartSNOMEDCTInferenceJob">>, Input, Options).

%% @doc Stops a medical entities detection job in progress.
stop_entities_detection_v2_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_entities_detection_v2_job(Client, Input, []).
stop_entities_detection_v2_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopEntitiesDetectionV2Job">>, Input, Options).

%% @doc Stops an InferICD10CM inference job in progress.
stop_icd10_cm_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_icd10_cm_inference_job(Client, Input, []).
stop_icd10_cm_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopICD10CMInferenceJob">>, Input, Options).

%% @doc Stops a protected health information (PHI) detection job in progress.
stop_phi_detection_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_phi_detection_job(Client, Input, []).
stop_phi_detection_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopPHIDetectionJob">>, Input, Options).

%% @doc Stops an InferRxNorm inference job in progress.
stop_rx_norm_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_rx_norm_inference_job(Client, Input, []).
stop_rx_norm_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopRxNormInferenceJob">>, Input, Options).

%% @doc Stops an InferSNOMEDCT inference job in progress.
stop_s_n_o_m_e_d_c_t_inference_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_s_n_o_m_e_d_c_t_inference_job(Client, Input, []).
stop_s_n_o_m_e_d_c_t_inference_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopSNOMEDCTInferenceJob">>, Input, Options).

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
    Client1 = Client#{service => <<"comprehendmedical">>},
    Host = build_host(<<"comprehendmedical">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"ComprehendMedical_20181030.", Action/binary>>}
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
