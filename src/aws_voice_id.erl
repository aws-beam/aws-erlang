%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Connect Voice ID provides real-time caller authentication and
%% fraud risk detection, which
%% make voice interactions in contact centers more secure and efficient.
-module(aws_voice_id).

-export([associate_fraudster/2,
         associate_fraudster/3,
         create_domain/2,
         create_domain/3,
         create_watchlist/2,
         create_watchlist/3,
         delete_domain/2,
         delete_domain/3,
         delete_fraudster/2,
         delete_fraudster/3,
         delete_speaker/2,
         delete_speaker/3,
         delete_watchlist/2,
         delete_watchlist/3,
         describe_domain/2,
         describe_domain/3,
         describe_fraudster/2,
         describe_fraudster/3,
         describe_fraudster_registration_job/2,
         describe_fraudster_registration_job/3,
         describe_speaker/2,
         describe_speaker/3,
         describe_speaker_enrollment_job/2,
         describe_speaker_enrollment_job/3,
         describe_watchlist/2,
         describe_watchlist/3,
         disassociate_fraudster/2,
         disassociate_fraudster/3,
         evaluate_session/2,
         evaluate_session/3,
         list_domains/2,
         list_domains/3,
         list_fraudster_registration_jobs/2,
         list_fraudster_registration_jobs/3,
         list_fraudsters/2,
         list_fraudsters/3,
         list_speaker_enrollment_jobs/2,
         list_speaker_enrollment_jobs/3,
         list_speakers/2,
         list_speakers/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_watchlists/2,
         list_watchlists/3,
         opt_out_speaker/2,
         opt_out_speaker/3,
         start_fraudster_registration_job/2,
         start_fraudster_registration_job/3,
         start_speaker_enrollment_job/2,
         start_speaker_enrollment_job/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_domain/2,
         update_domain/3,
         update_watchlist/2,
         update_watchlist/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% update_domain_request() :: #{
%%   <<"Description">> => string(),
%%   <<"DomainId">> := string(),
%%   <<"Name">> := string(),
%%   <<"ServerSideEncryptionConfiguration">> := server_side_encryption_configuration()
%% }
-type update_domain_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% registration_config() :: #{
%%   <<"DuplicateRegistrationAction">> => string(),
%%   <<"FraudsterSimilarityThreshold">> => integer(),
%%   <<"WatchlistIds">> => list(string())
%% }
-type registration_config() :: #{binary() => any()}.

%% Example:
%% describe_fraudster_registration_job_response() :: #{
%%   <<"Job">> => fraudster_registration_job()
%% }
-type describe_fraudster_registration_job_response() :: #{binary() => any()}.

%% Example:
%% list_speakers_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SpeakerSummaries">> => list(speaker_summary())
%% }
-type list_speakers_response() :: #{binary() => any()}.

%% Example:
%% input_data_config() :: #{
%%   <<"S3Uri">> => string()
%% }
-type input_data_config() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% list_speaker_enrollment_jobs_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"JobStatus">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_speaker_enrollment_jobs_request() :: #{binary() => any()}.

%% Example:
%% describe_fraudster_response() :: #{
%%   <<"Fraudster">> => fraudster()
%% }
-type describe_fraudster_response() :: #{binary() => any()}.

%% Example:
%% domain_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DomainId">> => string(),
%%   <<"DomainStatus">> => string(),
%%   <<"Name">> => string(),
%%   <<"ServerSideEncryptionConfiguration">> => server_side_encryption_configuration(),
%%   <<"ServerSideEncryptionUpdateDetails">> => server_side_encryption_update_details(),
%%   <<"UpdatedAt">> => non_neg_integer(),
%%   <<"WatchlistDetails">> => watchlist_details()
%% }
-type domain_summary() :: #{binary() => any()}.

%% Example:
%% update_domain_response() :: #{
%%   <<"Domain">> => domain()
%% }
-type update_domain_response() :: #{binary() => any()}.

%% Example:
%% describe_speaker_response() :: #{
%%   <<"Speaker">> => speaker()
%% }
-type describe_speaker_response() :: #{binary() => any()}.

%% Example:
%% evaluate_session_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"SessionNameOrId">> := string()
%% }
-type evaluate_session_request() :: #{binary() => any()}.

%% Example:
%% domain() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DomainId">> => string(),
%%   <<"DomainStatus">> => string(),
%%   <<"Name">> => string(),
%%   <<"ServerSideEncryptionConfiguration">> => server_side_encryption_configuration(),
%%   <<"ServerSideEncryptionUpdateDetails">> => server_side_encryption_update_details(),
%%   <<"UpdatedAt">> => non_neg_integer(),
%%   <<"WatchlistDetails">> => watchlist_details()
%% }
-type domain() :: #{binary() => any()}.

%% Example:
%% speaker() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CustomerSpeakerId">> => string(),
%%   <<"DomainId">> => string(),
%%   <<"GeneratedSpeakerId">> => string(),
%%   <<"LastAccessedAt">> => non_neg_integer(),
%%   <<"Status">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type speaker() :: #{binary() => any()}.

%% Example:
%% job_progress() :: #{
%%   <<"PercentComplete">> => integer()
%% }
-type job_progress() :: #{binary() => any()}.

%% Example:
%% watchlist_details() :: #{
%%   <<"DefaultWatchlistId">> => string()
%% }
-type watchlist_details() :: #{binary() => any()}.

%% Example:
%% list_fraudsters_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"WatchlistId">> => string()
%% }
-type list_fraudsters_request() :: #{binary() => any()}.

%% Example:
%% server_side_encryption_update_details() :: #{
%%   <<"Message">> => string(),
%%   <<"OldKmsKeyId">> => string(),
%%   <<"UpdateStatus">> => string()
%% }
-type server_side_encryption_update_details() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% fraud_detection_result() :: #{
%%   <<"AudioAggregationEndedAt">> => non_neg_integer(),
%%   <<"AudioAggregationStartedAt">> => non_neg_integer(),
%%   <<"Configuration">> => fraud_detection_configuration(),
%%   <<"Decision">> => string(),
%%   <<"FraudDetectionResultId">> => string(),
%%   <<"Reasons">> => list(string()),
%%   <<"RiskDetails">> => fraud_risk_details()
%% }
-type fraud_detection_result() :: #{binary() => any()}.

%% Example:
%% describe_watchlist_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"WatchlistId">> := string()
%% }
-type describe_watchlist_request() :: #{binary() => any()}.

%% Example:
%% fraud_risk_details() :: #{
%%   <<"KnownFraudsterRisk">> => known_fraudster_risk(),
%%   <<"VoiceSpoofingRisk">> => voice_spoofing_risk()
%% }
-type fraud_risk_details() :: #{binary() => any()}.

%% Example:
%% failure_details() :: #{
%%   <<"Message">> => string(),
%%   <<"StatusCode">> => integer()
%% }
-type failure_details() :: #{binary() => any()}.

%% Example:
%% known_fraudster_risk() :: #{
%%   <<"GeneratedFraudsterId">> => string(),
%%   <<"RiskScore">> => integer()
%% }
-type known_fraudster_risk() :: #{binary() => any()}.

%% Example:
%% start_fraudster_registration_job_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"DomainId">> := string(),
%%   <<"InputDataConfig">> := input_data_config(),
%%   <<"JobName">> => string(),
%%   <<"OutputDataConfig">> := output_data_config(),
%%   <<"RegistrationConfig">> => registration_config()
%% }
-type start_fraudster_registration_job_request() :: #{binary() => any()}.

%% Example:
%% describe_speaker_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"SpeakerId">> := string()
%% }
-type describe_speaker_request() :: #{binary() => any()}.

%% Example:
%% fraudster_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DomainId">> => string(),
%%   <<"GeneratedFraudsterId">> => string(),
%%   <<"WatchlistIds">> => list(string())
%% }
-type fraudster_summary() :: #{binary() => any()}.

%% Example:
%% list_speaker_enrollment_jobs_response() :: #{
%%   <<"JobSummaries">> => list(speaker_enrollment_job_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_speaker_enrollment_jobs_response() :: #{binary() => any()}.

%% Example:
%% delete_domain_request() :: #{
%%   <<"DomainId">> := string()
%% }
-type delete_domain_request() :: #{binary() => any()}.

%% Example:
%% authentication_result() :: #{
%%   <<"AudioAggregationEndedAt">> => non_neg_integer(),
%%   <<"AudioAggregationStartedAt">> => non_neg_integer(),
%%   <<"AuthenticationResultId">> => string(),
%%   <<"Configuration">> => authentication_configuration(),
%%   <<"CustomerSpeakerId">> => string(),
%%   <<"Decision">> => string(),
%%   <<"GeneratedSpeakerId">> => string(),
%%   <<"Score">> => integer()
%% }
-type authentication_result() :: #{binary() => any()}.

%% Example:
%% delete_fraudster_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"FraudsterId">> := string()
%% }
-type delete_fraudster_request() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"ConflictType">> => string(),
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% list_fraudster_registration_jobs_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"JobStatus">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_fraudster_registration_jobs_request() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% create_watchlist_response() :: #{
%%   <<"Watchlist">> => watchlist()
%% }
-type create_watchlist_response() :: #{binary() => any()}.

%% Example:
%% create_domain_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"ServerSideEncryptionConfiguration">> := server_side_encryption_configuration(),
%%   <<"Tags">> => list(tag())
%% }
-type create_domain_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% evaluate_session_response() :: #{
%%   <<"AuthenticationResult">> => authentication_result(),
%%   <<"DomainId">> => string(),
%%   <<"FraudDetectionResult">> => fraud_detection_result(),
%%   <<"SessionId">> => string(),
%%   <<"SessionName">> => string(),
%%   <<"StreamingStatus">> => string()
%% }
-type evaluate_session_response() :: #{binary() => any()}.

%% Example:
%% update_watchlist_response() :: #{
%%   <<"Watchlist">> => watchlist()
%% }
-type update_watchlist_response() :: #{binary() => any()}.

%% Example:
%% list_speakers_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_speakers_request() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% list_domains_response() :: #{
%%   <<"DomainSummaries">> => list(domain_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_domains_response() :: #{binary() => any()}.

%% Example:
%% fraudster_registration_job() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"DomainId">> => string(),
%%   <<"EndedAt">> => non_neg_integer(),
%%   <<"FailureDetails">> => failure_details(),
%%   <<"InputDataConfig">> => input_data_config(),
%%   <<"JobId">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobProgress">> => job_progress(),
%%   <<"JobStatus">> => string(),
%%   <<"OutputDataConfig">> => output_data_config(),
%%   <<"RegistrationConfig">> => registration_config()
%% }
-type fraudster_registration_job() :: #{binary() => any()}.

%% Example:
%% start_speaker_enrollment_job_response() :: #{
%%   <<"Job">> => speaker_enrollment_job()
%% }
-type start_speaker_enrollment_job_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% describe_domain_response() :: #{
%%   <<"Domain">> => domain()
%% }
-type describe_domain_response() :: #{binary() => any()}.

%% Example:
%% opt_out_speaker_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"SpeakerId">> := string()
%% }
-type opt_out_speaker_request() :: #{binary() => any()}.

%% Example:
%% watchlist() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DefaultWatchlist">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"DomainId">> => string(),
%%   <<"Name">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer(),
%%   <<"WatchlistId">> => string()
%% }
-type watchlist() :: #{binary() => any()}.

%% Example:
%% voice_spoofing_risk() :: #{
%%   <<"RiskScore">> => integer()
%% }
-type voice_spoofing_risk() :: #{binary() => any()}.

%% Example:
%% speaker_enrollment_job() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DataAccessRoleArn">> => string(),
%%   <<"DomainId">> => string(),
%%   <<"EndedAt">> => non_neg_integer(),
%%   <<"EnrollmentConfig">> => enrollment_config(),
%%   <<"FailureDetails">> => failure_details(),
%%   <<"InputDataConfig">> => input_data_config(),
%%   <<"JobId">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobProgress">> => job_progress(),
%%   <<"JobStatus">> => string(),
%%   <<"OutputDataConfig">> => output_data_config()
%% }
-type speaker_enrollment_job() :: #{binary() => any()}.

%% Example:
%% associate_fraudster_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"FraudsterId">> := string(),
%%   <<"WatchlistId">> := string()
%% }
-type associate_fraudster_request() :: #{binary() => any()}.

%% Example:
%% start_speaker_enrollment_job_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"DataAccessRoleArn">> := string(),
%%   <<"DomainId">> := string(),
%%   <<"EnrollmentConfig">> => enrollment_config(),
%%   <<"InputDataConfig">> := input_data_config(),
%%   <<"JobName">> => string(),
%%   <<"OutputDataConfig">> := output_data_config()
%% }
-type start_speaker_enrollment_job_request() :: #{binary() => any()}.

%% Example:
%% fraudster() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DomainId">> => string(),
%%   <<"GeneratedFraudsterId">> => string(),
%%   <<"WatchlistIds">> => list(string())
%% }
-type fraudster() :: #{binary() => any()}.

%% Example:
%% server_side_encryption_configuration() :: #{
%%   <<"KmsKeyId">> => string()
%% }
-type server_side_encryption_configuration() :: #{binary() => any()}.

%% Example:
%% speaker_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CustomerSpeakerId">> => string(),
%%   <<"DomainId">> => string(),
%%   <<"GeneratedSpeakerId">> => string(),
%%   <<"LastAccessedAt">> => non_neg_integer(),
%%   <<"Status">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type speaker_summary() :: #{binary() => any()}.

%% Example:
%% opt_out_speaker_response() :: #{
%%   <<"Speaker">> => speaker()
%% }
-type opt_out_speaker_response() :: #{binary() => any()}.

%% Example:
%% describe_fraudster_registration_job_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"JobId">> := string()
%% }
-type describe_fraudster_registration_job_request() :: #{binary() => any()}.

%% Example:
%% list_domains_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_domains_request() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% associate_fraudster_response() :: #{
%%   <<"Fraudster">> => fraudster()
%% }
-type associate_fraudster_response() :: #{binary() => any()}.

%% Example:
%% describe_fraudster_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"FraudsterId">> := string()
%% }
-type describe_fraudster_request() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% describe_domain_request() :: #{
%%   <<"DomainId">> := string()
%% }
-type describe_domain_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% delete_watchlist_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"WatchlistId">> := string()
%% }
-type delete_watchlist_request() :: #{binary() => any()}.

%% Example:
%% describe_speaker_enrollment_job_response() :: #{
%%   <<"Job">> => speaker_enrollment_job()
%% }
-type describe_speaker_enrollment_job_response() :: #{binary() => any()}.

%% Example:
%% list_watchlists_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WatchlistSummaries">> => list(watchlist_summary())
%% }
-type list_watchlists_response() :: #{binary() => any()}.

%% Example:
%% create_watchlist_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"DomainId">> := string(),
%%   <<"Name">> := string()
%% }
-type create_watchlist_request() :: #{binary() => any()}.

%% Example:
%% start_fraudster_registration_job_response() :: #{
%%   <<"Job">> => fraudster_registration_job()
%% }
-type start_fraudster_registration_job_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% fraudster_registration_job_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DomainId">> => string(),
%%   <<"EndedAt">> => non_neg_integer(),
%%   <<"FailureDetails">> => failure_details(),
%%   <<"JobId">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobProgress">> => job_progress(),
%%   <<"JobStatus">> => string()
%% }
-type fraudster_registration_job_summary() :: #{binary() => any()}.

%% Example:
%% list_fraudsters_response() :: #{
%%   <<"FraudsterSummaries">> => list(fraudster_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_fraudsters_response() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% create_domain_response() :: #{
%%   <<"Domain">> => domain()
%% }
-type create_domain_response() :: #{binary() => any()}.

%% Example:
%% list_fraudster_registration_jobs_response() :: #{
%%   <<"JobSummaries">> => list(fraudster_registration_job_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_fraudster_registration_jobs_response() :: #{binary() => any()}.

%% Example:
%% delete_speaker_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"SpeakerId">> := string()
%% }
-type delete_speaker_request() :: #{binary() => any()}.

%% Example:
%% output_data_config() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"S3Uri">> => string()
%% }
-type output_data_config() :: #{binary() => any()}.

%% Example:
%% enrollment_config() :: #{
%%   <<"ExistingEnrollmentAction">> => string(),
%%   <<"FraudDetectionConfig">> => enrollment_job_fraud_detection_config()
%% }
-type enrollment_config() :: #{binary() => any()}.

%% Example:
%% update_watchlist_request() :: #{
%%   <<"Description">> => string(),
%%   <<"DomainId">> := string(),
%%   <<"Name">> => string(),
%%   <<"WatchlistId">> := string()
%% }
-type update_watchlist_request() :: #{binary() => any()}.

%% Example:
%% authentication_configuration() :: #{
%%   <<"AcceptanceThreshold">> => integer()
%% }
-type authentication_configuration() :: #{binary() => any()}.

%% Example:
%% list_watchlists_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_watchlists_request() :: #{binary() => any()}.

%% Example:
%% describe_watchlist_response() :: #{
%%   <<"Watchlist">> => watchlist()
%% }
-type describe_watchlist_response() :: #{binary() => any()}.

%% Example:
%% describe_speaker_enrollment_job_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"JobId">> := string()
%% }
-type describe_speaker_enrollment_job_request() :: #{binary() => any()}.

%% Example:
%% fraud_detection_configuration() :: #{
%%   <<"RiskThreshold">> => integer(),
%%   <<"WatchlistId">> => string()
%% }
-type fraud_detection_configuration() :: #{binary() => any()}.

%% Example:
%% disassociate_fraudster_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"FraudsterId">> := string(),
%%   <<"WatchlistId">> := string()
%% }
-type disassociate_fraudster_request() :: #{binary() => any()}.

%% Example:
%% watchlist_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DefaultWatchlist">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"DomainId">> => string(),
%%   <<"Name">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer(),
%%   <<"WatchlistId">> => string()
%% }
-type watchlist_summary() :: #{binary() => any()}.

%% Example:
%% enrollment_job_fraud_detection_config() :: #{
%%   <<"FraudDetectionAction">> => string(),
%%   <<"RiskThreshold">> => integer(),
%%   <<"WatchlistIds">> => list(string())
%% }
-type enrollment_job_fraud_detection_config() :: #{binary() => any()}.

%% Example:
%% disassociate_fraudster_response() :: #{
%%   <<"Fraudster">> => fraudster()
%% }
-type disassociate_fraudster_response() :: #{binary() => any()}.

%% Example:
%% speaker_enrollment_job_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DomainId">> => string(),
%%   <<"EndedAt">> => non_neg_integer(),
%%   <<"FailureDetails">> => failure_details(),
%%   <<"JobId">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobProgress">> => job_progress(),
%%   <<"JobStatus">> => string()
%% }
-type speaker_enrollment_job_summary() :: #{binary() => any()}.

-type associate_fraudster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_domain_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_watchlist_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_domain_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_fraudster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_speaker_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_watchlist_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_domain_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_fraudster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_fraudster_registration_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_speaker_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_speaker_enrollment_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_watchlist_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disassociate_fraudster_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type evaluate_session_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_domains_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_fraudster_registration_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_fraudsters_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_speaker_enrollment_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_speakers_errors() ::
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

-type list_watchlists_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type opt_out_speaker_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_fraudster_registration_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_speaker_enrollment_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_domain_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_watchlist_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates the fraudsters with the watchlist specified in the same
%% domain.
-spec associate_fraudster(aws_client:aws_client(), associate_fraudster_request()) ->
    {ok, associate_fraudster_response(), tuple()} |
    {error, any()} |
    {error, associate_fraudster_errors(), tuple()}.
associate_fraudster(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_fraudster(Client, Input, []).

-spec associate_fraudster(aws_client:aws_client(), associate_fraudster_request(), proplists:proplist()) ->
    {ok, associate_fraudster_response(), tuple()} |
    {error, any()} |
    {error, associate_fraudster_errors(), tuple()}.
associate_fraudster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateFraudster">>, Input, Options).

%% @doc Creates a domain that contains all Amazon Connect Voice ID data, such
%% as speakers, fraudsters,
%% customer audio, and voiceprints.
%%
%% Every domain is created with a default watchlist that fraudsters can be a
%% part of.
-spec create_domain(aws_client:aws_client(), create_domain_request()) ->
    {ok, create_domain_response(), tuple()} |
    {error, any()} |
    {error, create_domain_errors(), tuple()}.
create_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_domain(Client, Input, []).

-spec create_domain(aws_client:aws_client(), create_domain_request(), proplists:proplist()) ->
    {ok, create_domain_response(), tuple()} |
    {error, any()} |
    {error, create_domain_errors(), tuple()}.
create_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDomain">>, Input, Options).

%% @doc Creates a watchlist that fraudsters can be a part of.
-spec create_watchlist(aws_client:aws_client(), create_watchlist_request()) ->
    {ok, create_watchlist_response(), tuple()} |
    {error, any()} |
    {error, create_watchlist_errors(), tuple()}.
create_watchlist(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_watchlist(Client, Input, []).

-spec create_watchlist(aws_client:aws_client(), create_watchlist_request(), proplists:proplist()) ->
    {ok, create_watchlist_response(), tuple()} |
    {error, any()} |
    {error, create_watchlist_errors(), tuple()}.
create_watchlist(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWatchlist">>, Input, Options).

%% @doc Deletes the specified domain from Voice ID.
-spec delete_domain(aws_client:aws_client(), delete_domain_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
delete_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_domain(Client, Input, []).

-spec delete_domain(aws_client:aws_client(), delete_domain_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
delete_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDomain">>, Input, Options).

%% @doc Deletes the specified fraudster from Voice ID.
%%
%% This action disassociates the fraudster from any watchlists it is a part
%% of.
-spec delete_fraudster(aws_client:aws_client(), delete_fraudster_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_fraudster_errors(), tuple()}.
delete_fraudster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_fraudster(Client, Input, []).

-spec delete_fraudster(aws_client:aws_client(), delete_fraudster_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_fraudster_errors(), tuple()}.
delete_fraudster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFraudster">>, Input, Options).

%% @doc Deletes the specified speaker from Voice ID.
-spec delete_speaker(aws_client:aws_client(), delete_speaker_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_speaker_errors(), tuple()}.
delete_speaker(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_speaker(Client, Input, []).

-spec delete_speaker(aws_client:aws_client(), delete_speaker_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_speaker_errors(), tuple()}.
delete_speaker(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSpeaker">>, Input, Options).

%% @doc Deletes the specified watchlist from Voice ID.
%%
%% This API throws an exception when
%% there are fraudsters in the watchlist that you are trying to delete. You
%% must delete the
%% fraudsters, and then delete the watchlist. Every domain has a default
%% watchlist which cannot be deleted.
-spec delete_watchlist(aws_client:aws_client(), delete_watchlist_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_watchlist_errors(), tuple()}.
delete_watchlist(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_watchlist(Client, Input, []).

-spec delete_watchlist(aws_client:aws_client(), delete_watchlist_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_watchlist_errors(), tuple()}.
delete_watchlist(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWatchlist">>, Input, Options).

%% @doc Describes the specified domain.
-spec describe_domain(aws_client:aws_client(), describe_domain_request()) ->
    {ok, describe_domain_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_errors(), tuple()}.
describe_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_domain(Client, Input, []).

-spec describe_domain(aws_client:aws_client(), describe_domain_request(), proplists:proplist()) ->
    {ok, describe_domain_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_errors(), tuple()}.
describe_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDomain">>, Input, Options).

%% @doc Describes the specified fraudster.
-spec describe_fraudster(aws_client:aws_client(), describe_fraudster_request()) ->
    {ok, describe_fraudster_response(), tuple()} |
    {error, any()} |
    {error, describe_fraudster_errors(), tuple()}.
describe_fraudster(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fraudster(Client, Input, []).

-spec describe_fraudster(aws_client:aws_client(), describe_fraudster_request(), proplists:proplist()) ->
    {ok, describe_fraudster_response(), tuple()} |
    {error, any()} |
    {error, describe_fraudster_errors(), tuple()}.
describe_fraudster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFraudster">>, Input, Options).

%% @doc Describes the specified fraudster registration job.
-spec describe_fraudster_registration_job(aws_client:aws_client(), describe_fraudster_registration_job_request()) ->
    {ok, describe_fraudster_registration_job_response(), tuple()} |
    {error, any()} |
    {error, describe_fraudster_registration_job_errors(), tuple()}.
describe_fraudster_registration_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fraudster_registration_job(Client, Input, []).

-spec describe_fraudster_registration_job(aws_client:aws_client(), describe_fraudster_registration_job_request(), proplists:proplist()) ->
    {ok, describe_fraudster_registration_job_response(), tuple()} |
    {error, any()} |
    {error, describe_fraudster_registration_job_errors(), tuple()}.
describe_fraudster_registration_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFraudsterRegistrationJob">>, Input, Options).

%% @doc Describes the specified speaker.
-spec describe_speaker(aws_client:aws_client(), describe_speaker_request()) ->
    {ok, describe_speaker_response(), tuple()} |
    {error, any()} |
    {error, describe_speaker_errors(), tuple()}.
describe_speaker(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_speaker(Client, Input, []).

-spec describe_speaker(aws_client:aws_client(), describe_speaker_request(), proplists:proplist()) ->
    {ok, describe_speaker_response(), tuple()} |
    {error, any()} |
    {error, describe_speaker_errors(), tuple()}.
describe_speaker(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSpeaker">>, Input, Options).

%% @doc Describes the specified speaker enrollment job.
-spec describe_speaker_enrollment_job(aws_client:aws_client(), describe_speaker_enrollment_job_request()) ->
    {ok, describe_speaker_enrollment_job_response(), tuple()} |
    {error, any()} |
    {error, describe_speaker_enrollment_job_errors(), tuple()}.
describe_speaker_enrollment_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_speaker_enrollment_job(Client, Input, []).

-spec describe_speaker_enrollment_job(aws_client:aws_client(), describe_speaker_enrollment_job_request(), proplists:proplist()) ->
    {ok, describe_speaker_enrollment_job_response(), tuple()} |
    {error, any()} |
    {error, describe_speaker_enrollment_job_errors(), tuple()}.
describe_speaker_enrollment_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSpeakerEnrollmentJob">>, Input, Options).

%% @doc Describes the specified watchlist.
-spec describe_watchlist(aws_client:aws_client(), describe_watchlist_request()) ->
    {ok, describe_watchlist_response(), tuple()} |
    {error, any()} |
    {error, describe_watchlist_errors(), tuple()}.
describe_watchlist(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_watchlist(Client, Input, []).

-spec describe_watchlist(aws_client:aws_client(), describe_watchlist_request(), proplists:proplist()) ->
    {ok, describe_watchlist_response(), tuple()} |
    {error, any()} |
    {error, describe_watchlist_errors(), tuple()}.
describe_watchlist(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWatchlist">>, Input, Options).

%% @doc Disassociates the fraudsters from the watchlist specified.
%%
%% Voice ID always expects a
%% fraudster to be a part of at least one watchlist. If
%% you try to disassociate a fraudster from its only watchlist, a
%% `ValidationException' is thrown.
-spec disassociate_fraudster(aws_client:aws_client(), disassociate_fraudster_request()) ->
    {ok, disassociate_fraudster_response(), tuple()} |
    {error, any()} |
    {error, disassociate_fraudster_errors(), tuple()}.
disassociate_fraudster(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_fraudster(Client, Input, []).

-spec disassociate_fraudster(aws_client:aws_client(), disassociate_fraudster_request(), proplists:proplist()) ->
    {ok, disassociate_fraudster_response(), tuple()} |
    {error, any()} |
    {error, disassociate_fraudster_errors(), tuple()}.
disassociate_fraudster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateFraudster">>, Input, Options).

%% @doc Evaluates a specified session based on audio data accumulated during
%% a streaming
%% Amazon Connect Voice ID call.
-spec evaluate_session(aws_client:aws_client(), evaluate_session_request()) ->
    {ok, evaluate_session_response(), tuple()} |
    {error, any()} |
    {error, evaluate_session_errors(), tuple()}.
evaluate_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    evaluate_session(Client, Input, []).

-spec evaluate_session(aws_client:aws_client(), evaluate_session_request(), proplists:proplist()) ->
    {ok, evaluate_session_response(), tuple()} |
    {error, any()} |
    {error, evaluate_session_errors(), tuple()}.
evaluate_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EvaluateSession">>, Input, Options).

%% @doc Lists all the domains in the Amazon Web Services account.
-spec list_domains(aws_client:aws_client(), list_domains_request()) ->
    {ok, list_domains_response(), tuple()} |
    {error, any()} |
    {error, list_domains_errors(), tuple()}.
list_domains(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_domains(Client, Input, []).

-spec list_domains(aws_client:aws_client(), list_domains_request(), proplists:proplist()) ->
    {ok, list_domains_response(), tuple()} |
    {error, any()} |
    {error, list_domains_errors(), tuple()}.
list_domains(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDomains">>, Input, Options).

%% @doc Lists all the fraudster registration jobs in the domain with the
%% given
%% `JobStatus'.
%%
%% If `JobStatus' is not provided, this lists all
%% fraudster registration jobs in the given domain.
-spec list_fraudster_registration_jobs(aws_client:aws_client(), list_fraudster_registration_jobs_request()) ->
    {ok, list_fraudster_registration_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_fraudster_registration_jobs_errors(), tuple()}.
list_fraudster_registration_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_fraudster_registration_jobs(Client, Input, []).

-spec list_fraudster_registration_jobs(aws_client:aws_client(), list_fraudster_registration_jobs_request(), proplists:proplist()) ->
    {ok, list_fraudster_registration_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_fraudster_registration_jobs_errors(), tuple()}.
list_fraudster_registration_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFraudsterRegistrationJobs">>, Input, Options).

%% @doc Lists all fraudsters in a specified watchlist or domain.
-spec list_fraudsters(aws_client:aws_client(), list_fraudsters_request()) ->
    {ok, list_fraudsters_response(), tuple()} |
    {error, any()} |
    {error, list_fraudsters_errors(), tuple()}.
list_fraudsters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_fraudsters(Client, Input, []).

-spec list_fraudsters(aws_client:aws_client(), list_fraudsters_request(), proplists:proplist()) ->
    {ok, list_fraudsters_response(), tuple()} |
    {error, any()} |
    {error, list_fraudsters_errors(), tuple()}.
list_fraudsters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFraudsters">>, Input, Options).

%% @doc Lists all the speaker enrollment jobs in the domain with the
%% specified
%% `JobStatus'.
%%
%% If `JobStatus' is not provided, this lists all
%% jobs with all possible speaker enrollment job statuses.
-spec list_speaker_enrollment_jobs(aws_client:aws_client(), list_speaker_enrollment_jobs_request()) ->
    {ok, list_speaker_enrollment_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_speaker_enrollment_jobs_errors(), tuple()}.
list_speaker_enrollment_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_speaker_enrollment_jobs(Client, Input, []).

-spec list_speaker_enrollment_jobs(aws_client:aws_client(), list_speaker_enrollment_jobs_request(), proplists:proplist()) ->
    {ok, list_speaker_enrollment_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_speaker_enrollment_jobs_errors(), tuple()}.
list_speaker_enrollment_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSpeakerEnrollmentJobs">>, Input, Options).

%% @doc Lists all speakers in a specified domain.
-spec list_speakers(aws_client:aws_client(), list_speakers_request()) ->
    {ok, list_speakers_response(), tuple()} |
    {error, any()} |
    {error, list_speakers_errors(), tuple()}.
list_speakers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_speakers(Client, Input, []).

-spec list_speakers(aws_client:aws_client(), list_speakers_request(), proplists:proplist()) ->
    {ok, list_speakers_response(), tuple()} |
    {error, any()} |
    {error, list_speakers_errors(), tuple()}.
list_speakers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSpeakers">>, Input, Options).

%% @doc Lists all tags associated with a specified Voice ID resource.
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

%% @doc Lists all watchlists in a specified domain.
-spec list_watchlists(aws_client:aws_client(), list_watchlists_request()) ->
    {ok, list_watchlists_response(), tuple()} |
    {error, any()} |
    {error, list_watchlists_errors(), tuple()}.
list_watchlists(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_watchlists(Client, Input, []).

-spec list_watchlists(aws_client:aws_client(), list_watchlists_request(), proplists:proplist()) ->
    {ok, list_watchlists_response(), tuple()} |
    {error, any()} |
    {error, list_watchlists_errors(), tuple()}.
list_watchlists(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWatchlists">>, Input, Options).

%% @doc Opts out a speaker from Voice ID.
%%
%% A speaker can be opted out regardless of whether or
%% not they already exist in Voice ID. If they don't yet exist, a new
%% speaker is created
%% in an opted out state. If they already exist, their existing status is
%% overridden and
%% they are opted out. Enrollment and evaluation authentication requests are
%% rejected for
%% opted out speakers, and opted out speakers have no voice embeddings stored
%% in
%% Voice ID.
-spec opt_out_speaker(aws_client:aws_client(), opt_out_speaker_request()) ->
    {ok, opt_out_speaker_response(), tuple()} |
    {error, any()} |
    {error, opt_out_speaker_errors(), tuple()}.
opt_out_speaker(Client, Input)
  when is_map(Client), is_map(Input) ->
    opt_out_speaker(Client, Input, []).

-spec opt_out_speaker(aws_client:aws_client(), opt_out_speaker_request(), proplists:proplist()) ->
    {ok, opt_out_speaker_response(), tuple()} |
    {error, any()} |
    {error, opt_out_speaker_errors(), tuple()}.
opt_out_speaker(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"OptOutSpeaker">>, Input, Options).

%% @doc Starts a new batch fraudster registration job using provided details.
-spec start_fraudster_registration_job(aws_client:aws_client(), start_fraudster_registration_job_request()) ->
    {ok, start_fraudster_registration_job_response(), tuple()} |
    {error, any()} |
    {error, start_fraudster_registration_job_errors(), tuple()}.
start_fraudster_registration_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_fraudster_registration_job(Client, Input, []).

-spec start_fraudster_registration_job(aws_client:aws_client(), start_fraudster_registration_job_request(), proplists:proplist()) ->
    {ok, start_fraudster_registration_job_response(), tuple()} |
    {error, any()} |
    {error, start_fraudster_registration_job_errors(), tuple()}.
start_fraudster_registration_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartFraudsterRegistrationJob">>, Input, Options).

%% @doc Starts a new batch speaker enrollment job using specified details.
-spec start_speaker_enrollment_job(aws_client:aws_client(), start_speaker_enrollment_job_request()) ->
    {ok, start_speaker_enrollment_job_response(), tuple()} |
    {error, any()} |
    {error, start_speaker_enrollment_job_errors(), tuple()}.
start_speaker_enrollment_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_speaker_enrollment_job(Client, Input, []).

-spec start_speaker_enrollment_job(aws_client:aws_client(), start_speaker_enrollment_job_request(), proplists:proplist()) ->
    {ok, start_speaker_enrollment_job_response(), tuple()} |
    {error, any()} |
    {error, start_speaker_enrollment_job_errors(), tuple()}.
start_speaker_enrollment_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartSpeakerEnrollmentJob">>, Input, Options).

%% @doc Tags a Voice ID resource with the provided list of tags.
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

%% @doc Removes specified tags from a specified Amazon Connect Voice ID
%% resource.
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

%% @doc Updates the specified domain.
%%
%% This API has clobber behavior, and clears and replaces
%% all attributes. If an optional field, such as 'Description' is not
%% provided, it is
%% removed from the domain.
-spec update_domain(aws_client:aws_client(), update_domain_request()) ->
    {ok, update_domain_response(), tuple()} |
    {error, any()} |
    {error, update_domain_errors(), tuple()}.
update_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_domain(Client, Input, []).

-spec update_domain(aws_client:aws_client(), update_domain_request(), proplists:proplist()) ->
    {ok, update_domain_response(), tuple()} |
    {error, any()} |
    {error, update_domain_errors(), tuple()}.
update_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDomain">>, Input, Options).

%% @doc Updates the specified watchlist.
%%
%% Every domain has a default watchlist which cannot be updated.
-spec update_watchlist(aws_client:aws_client(), update_watchlist_request()) ->
    {ok, update_watchlist_response(), tuple()} |
    {error, any()} |
    {error, update_watchlist_errors(), tuple()}.
update_watchlist(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_watchlist(Client, Input, []).

-spec update_watchlist(aws_client:aws_client(), update_watchlist_request(), proplists:proplist()) ->
    {ok, update_watchlist_response(), tuple()} |
    {error, any()} |
    {error, update_watchlist_errors(), tuple()}.
update_watchlist(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWatchlist">>, Input, Options).

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
    Client1 = Client#{service => <<"voiceid">>},
    Host = build_host(<<"voiceid">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"VoiceID.", Action/binary>>}
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
