%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Doc Engage API - Amazon Pinpoint API
-module(aws_pinpoint).

-export([create_app/2,
         create_app/3,
         create_campaign/3,
         create_campaign/4,
         create_email_template/3,
         create_email_template/4,
         create_export_job/3,
         create_export_job/4,
         create_import_job/3,
         create_import_job/4,
         create_in_app_template/3,
         create_in_app_template/4,
         create_journey/3,
         create_journey/4,
         create_push_template/3,
         create_push_template/4,
         create_recommender_configuration/2,
         create_recommender_configuration/3,
         create_segment/3,
         create_segment/4,
         create_sms_template/3,
         create_sms_template/4,
         create_voice_template/3,
         create_voice_template/4,
         delete_adm_channel/3,
         delete_adm_channel/4,
         delete_apns_channel/3,
         delete_apns_channel/4,
         delete_apns_sandbox_channel/3,
         delete_apns_sandbox_channel/4,
         delete_apns_voip_channel/3,
         delete_apns_voip_channel/4,
         delete_apns_voip_sandbox_channel/3,
         delete_apns_voip_sandbox_channel/4,
         delete_app/3,
         delete_app/4,
         delete_baidu_channel/3,
         delete_baidu_channel/4,
         delete_campaign/4,
         delete_campaign/5,
         delete_email_channel/3,
         delete_email_channel/4,
         delete_email_template/3,
         delete_email_template/4,
         delete_endpoint/4,
         delete_endpoint/5,
         delete_event_stream/3,
         delete_event_stream/4,
         delete_gcm_channel/3,
         delete_gcm_channel/4,
         delete_in_app_template/3,
         delete_in_app_template/4,
         delete_journey/4,
         delete_journey/5,
         delete_push_template/3,
         delete_push_template/4,
         delete_recommender_configuration/3,
         delete_recommender_configuration/4,
         delete_segment/4,
         delete_segment/5,
         delete_sms_channel/3,
         delete_sms_channel/4,
         delete_sms_template/3,
         delete_sms_template/4,
         delete_user_endpoints/4,
         delete_user_endpoints/5,
         delete_voice_channel/3,
         delete_voice_channel/4,
         delete_voice_template/3,
         delete_voice_template/4,
         get_adm_channel/2,
         get_adm_channel/4,
         get_adm_channel/5,
         get_apns_channel/2,
         get_apns_channel/4,
         get_apns_channel/5,
         get_apns_sandbox_channel/2,
         get_apns_sandbox_channel/4,
         get_apns_sandbox_channel/5,
         get_apns_voip_channel/2,
         get_apns_voip_channel/4,
         get_apns_voip_channel/5,
         get_apns_voip_sandbox_channel/2,
         get_apns_voip_sandbox_channel/4,
         get_apns_voip_sandbox_channel/5,
         get_app/2,
         get_app/4,
         get_app/5,
         get_application_date_range_kpi/3,
         get_application_date_range_kpi/5,
         get_application_date_range_kpi/6,
         get_application_settings/2,
         get_application_settings/4,
         get_application_settings/5,
         get_apps/1,
         get_apps/3,
         get_apps/4,
         get_baidu_channel/2,
         get_baidu_channel/4,
         get_baidu_channel/5,
         get_campaign/3,
         get_campaign/5,
         get_campaign/6,
         get_campaign_activities/3,
         get_campaign_activities/5,
         get_campaign_activities/6,
         get_campaign_date_range_kpi/4,
         get_campaign_date_range_kpi/6,
         get_campaign_date_range_kpi/7,
         get_campaign_version/4,
         get_campaign_version/6,
         get_campaign_version/7,
         get_campaign_versions/3,
         get_campaign_versions/5,
         get_campaign_versions/6,
         get_campaigns/2,
         get_campaigns/4,
         get_campaigns/5,
         get_channels/2,
         get_channels/4,
         get_channels/5,
         get_email_channel/2,
         get_email_channel/4,
         get_email_channel/5,
         get_email_template/2,
         get_email_template/4,
         get_email_template/5,
         get_endpoint/3,
         get_endpoint/5,
         get_endpoint/6,
         get_event_stream/2,
         get_event_stream/4,
         get_event_stream/5,
         get_export_job/3,
         get_export_job/5,
         get_export_job/6,
         get_export_jobs/2,
         get_export_jobs/4,
         get_export_jobs/5,
         get_gcm_channel/2,
         get_gcm_channel/4,
         get_gcm_channel/5,
         get_import_job/3,
         get_import_job/5,
         get_import_job/6,
         get_import_jobs/2,
         get_import_jobs/4,
         get_import_jobs/5,
         get_in_app_messages/3,
         get_in_app_messages/5,
         get_in_app_messages/6,
         get_in_app_template/2,
         get_in_app_template/4,
         get_in_app_template/5,
         get_journey/3,
         get_journey/5,
         get_journey/6,
         get_journey_date_range_kpi/4,
         get_journey_date_range_kpi/6,
         get_journey_date_range_kpi/7,
         get_journey_execution_activity_metrics/4,
         get_journey_execution_activity_metrics/6,
         get_journey_execution_activity_metrics/7,
         get_journey_execution_metrics/3,
         get_journey_execution_metrics/5,
         get_journey_execution_metrics/6,
         get_journey_run_execution_activity_metrics/5,
         get_journey_run_execution_activity_metrics/7,
         get_journey_run_execution_activity_metrics/8,
         get_journey_run_execution_metrics/4,
         get_journey_run_execution_metrics/6,
         get_journey_run_execution_metrics/7,
         get_journey_runs/3,
         get_journey_runs/5,
         get_journey_runs/6,
         get_push_template/2,
         get_push_template/4,
         get_push_template/5,
         get_recommender_configuration/2,
         get_recommender_configuration/4,
         get_recommender_configuration/5,
         get_recommender_configurations/1,
         get_recommender_configurations/3,
         get_recommender_configurations/4,
         get_segment/3,
         get_segment/5,
         get_segment/6,
         get_segment_export_jobs/3,
         get_segment_export_jobs/5,
         get_segment_export_jobs/6,
         get_segment_import_jobs/3,
         get_segment_import_jobs/5,
         get_segment_import_jobs/6,
         get_segment_version/4,
         get_segment_version/6,
         get_segment_version/7,
         get_segment_versions/3,
         get_segment_versions/5,
         get_segment_versions/6,
         get_segments/2,
         get_segments/4,
         get_segments/5,
         get_sms_channel/2,
         get_sms_channel/4,
         get_sms_channel/5,
         get_sms_template/2,
         get_sms_template/4,
         get_sms_template/5,
         get_user_endpoints/3,
         get_user_endpoints/5,
         get_user_endpoints/6,
         get_voice_channel/2,
         get_voice_channel/4,
         get_voice_channel/5,
         get_voice_template/2,
         get_voice_template/4,
         get_voice_template/5,
         list_journeys/2,
         list_journeys/4,
         list_journeys/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_template_versions/3,
         list_template_versions/5,
         list_template_versions/6,
         list_templates/1,
         list_templates/3,
         list_templates/4,
         phone_number_validate/2,
         phone_number_validate/3,
         put_event_stream/3,
         put_event_stream/4,
         put_events/3,
         put_events/4,
         remove_attributes/4,
         remove_attributes/5,
         send_messages/3,
         send_messages/4,
         send_o_t_p_message/3,
         send_o_t_p_message/4,
         send_users_messages/3,
         send_users_messages/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_adm_channel/3,
         update_adm_channel/4,
         update_apns_channel/3,
         update_apns_channel/4,
         update_apns_sandbox_channel/3,
         update_apns_sandbox_channel/4,
         update_apns_voip_channel/3,
         update_apns_voip_channel/4,
         update_apns_voip_sandbox_channel/3,
         update_apns_voip_sandbox_channel/4,
         update_application_settings/3,
         update_application_settings/4,
         update_baidu_channel/3,
         update_baidu_channel/4,
         update_campaign/4,
         update_campaign/5,
         update_email_channel/3,
         update_email_channel/4,
         update_email_template/3,
         update_email_template/4,
         update_endpoint/4,
         update_endpoint/5,
         update_endpoints_batch/3,
         update_endpoints_batch/4,
         update_gcm_channel/3,
         update_gcm_channel/4,
         update_in_app_template/3,
         update_in_app_template/4,
         update_journey/4,
         update_journey/5,
         update_journey_state/4,
         update_journey_state/5,
         update_push_template/3,
         update_push_template/4,
         update_recommender_configuration/3,
         update_recommender_configuration/4,
         update_segment/4,
         update_segment/5,
         update_sms_channel/3,
         update_sms_channel/4,
         update_sms_template/3,
         update_sms_template/4,
         update_template_active_version/4,
         update_template_active_version/5,
         update_voice_channel/3,
         update_voice_channel/4,
         update_voice_template/3,
         update_voice_template/4,
         verify_o_t_p_message/3,
         verify_o_t_p_message/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% campaign_response() :: #{
%%   <<"AdditionalTreatments">> => list(treatment_resource()),
%%   <<"ApplicationId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"CustomDeliveryConfiguration">> => custom_delivery_configuration(),
%%   <<"DefaultState">> => campaign_state(),
%%   <<"Description">> => string(),
%%   <<"HoldoutPercent">> => integer(),
%%   <<"Hook">> => campaign_hook(),
%%   <<"Id">> => string(),
%%   <<"IsPaused">> => boolean(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"Limits">> => campaign_limits(),
%%   <<"MessageConfiguration">> => message_configuration(),
%%   <<"Name">> => string(),
%%   <<"Priority">> => integer(),
%%   <<"Schedule">> => schedule(),
%%   <<"SegmentId">> => string(),
%%   <<"SegmentVersion">> => integer(),
%%   <<"State">> => campaign_state(),
%%   <<"TemplateConfiguration">> => template_configuration(),
%%   <<"TreatmentDescription">> => string(),
%%   <<"TreatmentName">> => string(),
%%   <<"Version">> => integer(),
%%   <<"tags">> => map()
%% }
-type campaign_response() :: #{binary() => any()}.

%% Example:
%% delete_journey_request() :: #{}
-type delete_journey_request() :: #{}.


%% Example:
%% journey_response() :: #{
%%   <<"Activities">> => map(),
%%   <<"ApplicationId">> => string(),
%%   <<"ClosedDays">> => closed_days(),
%%   <<"CreationDate">> => string(),
%%   <<"Id">> => string(),
%%   <<"JourneyChannelSettings">> => journey_channel_settings(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"Limits">> => journey_limits(),
%%   <<"LocalTime">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"OpenHours">> => open_hours(),
%%   <<"QuietTime">> => quiet_time(),
%%   <<"RefreshFrequency">> => string(),
%%   <<"RefreshOnSegmentUpdate">> => boolean(),
%%   <<"Schedule">> => journey_schedule(),
%%   <<"SendingSchedule">> => boolean(),
%%   <<"StartActivity">> => string(),
%%   <<"StartCondition">> => start_condition(),
%%   <<"State">> => list(any()),
%%   <<"TimezoneEstimationMethods">> => list(list(any())()),
%%   <<"WaitForQuietTime">> => boolean(),
%%   <<"tags">> => map()
%% }
-type journey_response() :: #{binary() => any()}.


%% Example:
%% treatment_resource() :: #{
%%   <<"CustomDeliveryConfiguration">> => custom_delivery_configuration(),
%%   <<"Id">> => string(),
%%   <<"MessageConfiguration">> => message_configuration(),
%%   <<"Schedule">> => schedule(),
%%   <<"SizePercent">> => integer(),
%%   <<"State">> => campaign_state(),
%%   <<"TemplateConfiguration">> => template_configuration(),
%%   <<"TreatmentDescription">> => string(),
%%   <<"TreatmentName">> => string()
%% }
-type treatment_resource() :: #{binary() => any()}.


%% Example:
%% delete_user_endpoints_response() :: #{
%%   <<"EndpointsResponse">> => endpoints_response()
%% }
-type delete_user_endpoints_response() :: #{binary() => any()}.


%% Example:
%% verify_o_t_p_message_request() :: #{
%%   <<"VerifyOTPMessageRequestParameters">> := verify_o_t_p_message_request_parameters()
%% }
-type verify_o_t_p_message_request() :: #{binary() => any()}.


%% Example:
%% get_campaign_activities_response() :: #{
%%   <<"ActivitiesResponse">> => activities_response()
%% }
-type get_campaign_activities_response() :: #{binary() => any()}.


%% Example:
%% wait_time() :: #{
%%   <<"WaitFor">> => string(),
%%   <<"WaitUntil">> => string()
%% }
-type wait_time() :: #{binary() => any()}.


%% Example:
%% create_import_job_response() :: #{
%%   <<"ImportJobResponse">> => import_job_response()
%% }
-type create_import_job_response() :: #{binary() => any()}.


%% Example:
%% update_template_active_version_request() :: #{
%%   <<"TemplateActiveVersionRequest">> := template_active_version_request()
%% }
-type update_template_active_version_request() :: #{binary() => any()}.


%% Example:
%% verify_o_t_p_message_request_parameters() :: #{
%%   <<"DestinationIdentity">> => string(),
%%   <<"Otp">> => string(),
%%   <<"ReferenceId">> => string()
%% }
-type verify_o_t_p_message_request_parameters() :: #{binary() => any()}.


%% Example:
%% in_app_campaign_schedule() :: #{
%%   <<"EndDate">> => string(),
%%   <<"EventFilter">> => campaign_event_filter(),
%%   <<"QuietTime">> => quiet_time()
%% }
-type in_app_campaign_schedule() :: #{binary() => any()}.


%% Example:
%% application_date_range_kpi_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"KpiName">> => string(),
%%   <<"KpiResult">> => base_kpi_result(),
%%   <<"NextToken">> => string(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type application_date_range_kpi_response() :: #{binary() => any()}.

%% Example:
%% get_channels_request() :: #{}
-type get_channels_request() :: #{}.


%% Example:
%% get_application_date_range_kpi_request() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => string(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type get_application_date_range_kpi_request() :: #{binary() => any()}.


%% Example:
%% campaign_limits() :: #{
%%   <<"Daily">> => integer(),
%%   <<"MaximumDuration">> => integer(),
%%   <<"MessagesPerSecond">> => integer(),
%%   <<"Session">> => integer(),
%%   <<"Total">> => integer()
%% }
-type campaign_limits() :: #{binary() => any()}.


%% Example:
%% campaign_state() :: #{
%%   <<"CampaignStatus">> => list(any())
%% }
-type campaign_state() :: #{binary() => any()}.


%% Example:
%% message_configuration() :: #{
%%   <<"ADMMessage">> => message(),
%%   <<"APNSMessage">> => message(),
%%   <<"BaiduMessage">> => message(),
%%   <<"CustomMessage">> => campaign_custom_message(),
%%   <<"DefaultMessage">> => message(),
%%   <<"EmailMessage">> => campaign_email_message(),
%%   <<"GCMMessage">> => message(),
%%   <<"InAppMessage">> => campaign_in_app_message(),
%%   <<"SMSMessage">> => campaign_sms_message()
%% }
-type message_configuration() :: #{binary() => any()}.


%% Example:
%% create_push_template_response() :: #{
%%   <<"CreateTemplateMessageBody">> => create_template_message_body()
%% }
-type create_push_template_response() :: #{binary() => any()}.


%% Example:
%% get_apns_voip_sandbox_channel_response() :: #{
%%   <<"APNSVoipSandboxChannelResponse">> => a_p_n_s_voip_sandbox_channel_response()
%% }
-type get_apns_voip_sandbox_channel_response() :: #{binary() => any()}.


%% Example:
%% update_campaign_response() :: #{
%%   <<"CampaignResponse">> => campaign_response()
%% }
-type update_campaign_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"TagsModel">> := tags_model()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% endpoints_response() :: #{
%%   <<"Item">> => list(endpoint_response())
%% }
-type endpoints_response() :: #{binary() => any()}.


%% Example:
%% push_notification_template_response() :: #{
%%   <<"ADM">> => android_push_notification_template(),
%%   <<"APNS">> => a_p_n_s_push_notification_template(),
%%   <<"Arn">> => string(),
%%   <<"Baidu">> => android_push_notification_template(),
%%   <<"CreationDate">> => string(),
%%   <<"Default">> => default_push_notification_template(),
%%   <<"DefaultSubstitutions">> => string(),
%%   <<"GCM">> => android_push_notification_template(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"RecommenderId">> => string(),
%%   <<"TemplateDescription">> => string(),
%%   <<"TemplateName">> => string(),
%%   <<"TemplateType">> => list(any()),
%%   <<"Version">> => string(),
%%   <<"tags">> => map()
%% }
-type push_notification_template_response() :: #{binary() => any()}.


%% Example:
%% create_import_job_request() :: #{
%%   <<"ImportJobRequest">> := import_job_request()
%% }
-type create_import_job_request() :: #{binary() => any()}.


%% Example:
%% get_push_template_response() :: #{
%%   <<"PushNotificationTemplateResponse">> => push_notification_template_response()
%% }
-type get_push_template_response() :: #{binary() => any()}.


%% Example:
%% get_campaign_versions_response() :: #{
%%   <<"CampaignsResponse">> => campaigns_response()
%% }
-type get_campaign_versions_response() :: #{binary() => any()}.


%% Example:
%% get_apps_request() :: #{
%%   <<"PageSize">> => string(),
%%   <<"Token">> => string()
%% }
-type get_apps_request() :: #{binary() => any()}.


%% Example:
%% baidu_message() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Body">> => string(),
%%   <<"Data">> => map(),
%%   <<"IconReference">> => string(),
%%   <<"ImageIconUrl">> => string(),
%%   <<"ImageUrl">> => string(),
%%   <<"RawContent">> => string(),
%%   <<"SilentPush">> => boolean(),
%%   <<"SmallImageIconUrl">> => string(),
%%   <<"Sound">> => string(),
%%   <<"Substitutions">> => map(),
%%   <<"TimeToLive">> => integer(),
%%   <<"Title">> => string(),
%%   <<"Url">> => string()
%% }
-type baidu_message() :: #{binary() => any()}.


%% Example:
%% channel_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"HasCredential">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"IsArchived">> => boolean(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"Version">> => integer()
%% }
-type channel_response() :: #{binary() => any()}.

%% Example:
%% get_campaign_version_request() :: #{}
-type get_campaign_version_request() :: #{}.

%% Example:
%% get_journey_request() :: #{}
-type get_journey_request() :: #{}.

%% Example:
%% get_campaign_request() :: #{}
-type get_campaign_request() :: #{}.


%% Example:
%% recency_dimension() :: #{
%%   <<"Duration">> => list(any()),
%%   <<"RecencyType">> => list(any())
%% }
-type recency_dimension() :: #{binary() => any()}.


%% Example:
%% create_voice_template_request() :: #{
%%   <<"VoiceTemplateRequest">> := voice_template_request()
%% }
-type create_voice_template_request() :: #{binary() => any()}.


%% Example:
%% simple_condition() :: #{
%%   <<"EventCondition">> => event_condition(),
%%   <<"SegmentCondition">> => segment_condition(),
%%   <<"SegmentDimensions">> => segment_dimensions()
%% }
-type simple_condition() :: #{binary() => any()}.


%% Example:
%% email_template_request() :: #{
%%   <<"DefaultSubstitutions">> => string(),
%%   <<"Headers">> => list(message_header()),
%%   <<"HtmlPart">> => string(),
%%   <<"RecommenderId">> => string(),
%%   <<"Subject">> => string(),
%%   <<"TemplateDescription">> => string(),
%%   <<"TextPart">> => string(),
%%   <<"tags">> => map()
%% }
-type email_template_request() :: #{binary() => any()}.


%% Example:
%% event_condition() :: #{
%%   <<"Dimensions">> => event_dimensions(),
%%   <<"MessageActivity">> => string()
%% }
-type event_condition() :: #{binary() => any()}.


%% Example:
%% update_push_template_response() :: #{
%%   <<"MessageBody">> => message_body()
%% }
-type update_push_template_response() :: #{binary() => any()}.


%% Example:
%% verification_response() :: #{
%%   <<"Valid">> => boolean()
%% }
-type verification_response() :: #{binary() => any()}.


%% Example:
%% create_app_request() :: #{
%%   <<"CreateApplicationRequest">> := create_application_request()
%% }
-type create_app_request() :: #{binary() => any()}.


%% Example:
%% export_jobs_response() :: #{
%%   <<"Item">> => list(export_job_response()),
%%   <<"NextToken">> => string()
%% }
-type export_jobs_response() :: #{binary() => any()}.


%% Example:
%% delete_app_response() :: #{
%%   <<"ApplicationResponse">> => application_response()
%% }
-type delete_app_response() :: #{binary() => any()}.


%% Example:
%% conditional_split_activity() :: #{
%%   <<"Condition">> => condition(),
%%   <<"EvaluationWaitTime">> => wait_time(),
%%   <<"FalseActivity">> => string(),
%%   <<"TrueActivity">> => string()
%% }
-type conditional_split_activity() :: #{binary() => any()}.


%% Example:
%% campaign_hook() :: #{
%%   <<"LambdaFunctionName">> => string(),
%%   <<"Mode">> => list(any()),
%%   <<"WebUrl">> => string()
%% }
-type campaign_hook() :: #{binary() => any()}.

%% Example:
%% delete_apns_sandbox_channel_request() :: #{}
-type delete_apns_sandbox_channel_request() :: #{}.


%% Example:
%% get_email_channel_response() :: #{
%%   <<"EmailChannelResponse">> => email_channel_response()
%% }
-type get_email_channel_response() :: #{binary() => any()}.


%% Example:
%% update_endpoint_response() :: #{
%%   <<"MessageBody">> => message_body()
%% }
-type update_endpoint_response() :: #{binary() => any()}.


%% Example:
%% a_p_n_s_channel_request() :: #{
%%   <<"BundleId">> => string(),
%%   <<"Certificate">> => string(),
%%   <<"DefaultAuthenticationMethod">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"PrivateKey">> => string(),
%%   <<"TeamId">> => string(),
%%   <<"TokenKey">> => string(),
%%   <<"TokenKeyId">> => string()
%% }
-type a_p_n_s_channel_request() :: #{binary() => any()}.


%% Example:
%% open_hours_rule() :: #{
%%   <<"EndTime">> => string(),
%%   <<"StartTime">> => string()
%% }
-type open_hours_rule() :: #{binary() => any()}.


%% Example:
%% campaigns_response() :: #{
%%   <<"Item">> => list(campaign_response()),
%%   <<"NextToken">> => string()
%% }
-type campaigns_response() :: #{binary() => any()}.


%% Example:
%% update_email_template_request() :: #{
%%   <<"CreateNewVersion">> => boolean(),
%%   <<"EmailTemplateRequest">> := email_template_request(),
%%   <<"Version">> => string()
%% }
-type update_email_template_request() :: #{binary() => any()}.


%% Example:
%% push_notification_template_request() :: #{
%%   <<"ADM">> => android_push_notification_template(),
%%   <<"APNS">> => a_p_n_s_push_notification_template(),
%%   <<"Baidu">> => android_push_notification_template(),
%%   <<"Default">> => default_push_notification_template(),
%%   <<"DefaultSubstitutions">> => string(),
%%   <<"GCM">> => android_push_notification_template(),
%%   <<"RecommenderId">> => string(),
%%   <<"TemplateDescription">> => string(),
%%   <<"tags">> => map()
%% }
-type push_notification_template_request() :: #{binary() => any()}.


%% Example:
%% create_in_app_template_response() :: #{
%%   <<"TemplateCreateMessageBody">> => template_create_message_body()
%% }
-type create_in_app_template_response() :: #{binary() => any()}.


%% Example:
%% result_row_value() :: #{
%%   <<"Key">> => string(),
%%   <<"Type">> => string(),
%%   <<"Value">> => string()
%% }
-type result_row_value() :: #{binary() => any()}.


%% Example:
%% journey_custom_message() :: #{
%%   <<"Data">> => string()
%% }
-type journey_custom_message() :: #{binary() => any()}.


%% Example:
%% number_validate_request() :: #{
%%   <<"IsoCountryCode">> => string(),
%%   <<"PhoneNumber">> => string()
%% }
-type number_validate_request() :: #{binary() => any()}.


%% Example:
%% endpoint_batch_item() :: #{
%%   <<"Address">> => string(),
%%   <<"Attributes">> => map(),
%%   <<"ChannelType">> => list(any()),
%%   <<"Demographic">> => endpoint_demographic(),
%%   <<"EffectiveDate">> => string(),
%%   <<"EndpointStatus">> => string(),
%%   <<"Id">> => string(),
%%   <<"Location">> => endpoint_location(),
%%   <<"Metrics">> => map(),
%%   <<"OptOut">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"User">> => endpoint_user()
%% }
-type endpoint_batch_item() :: #{binary() => any()}.


%% Example:
%% update_email_channel_response() :: #{
%%   <<"EmailChannelResponse">> => email_channel_response()
%% }
-type update_email_channel_response() :: #{binary() => any()}.


%% Example:
%% base_kpi_result() :: #{
%%   <<"Rows">> => list(result_row())
%% }
-type base_kpi_result() :: #{binary() => any()}.


%% Example:
%% delete_baidu_channel_response() :: #{
%%   <<"BaiduChannelResponse">> => baidu_channel_response()
%% }
-type delete_baidu_channel_response() :: #{binary() => any()}.


%% Example:
%% update_journey_state_request() :: #{
%%   <<"JourneyStateRequest">> := journey_state_request()
%% }
-type update_journey_state_request() :: #{binary() => any()}.


%% Example:
%% endpoint_batch_request() :: #{
%%   <<"Item">> => list(endpoint_batch_item())
%% }
-type endpoint_batch_request() :: #{binary() => any()}.


%% Example:
%% g_p_s_point_dimension() :: #{
%%   <<"Coordinates">> => g_p_s_coordinates(),
%%   <<"RangeInKilometers">> => float()
%% }
-type g_p_s_point_dimension() :: #{binary() => any()}.


%% Example:
%% quiet_time() :: #{
%%   <<"End">> => string(),
%%   <<"Start">> => string()
%% }
-type quiet_time() :: #{binary() => any()}.


%% Example:
%% update_sms_channel_request() :: #{
%%   <<"SMSChannelRequest">> := sms_channel_request()
%% }
-type update_sms_channel_request() :: #{binary() => any()}.


%% Example:
%% list_templates_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => string(),
%%   <<"Prefix">> => string(),
%%   <<"TemplateType">> => string()
%% }
-type list_templates_request() :: #{binary() => any()}.


%% Example:
%% random_split_entry() :: #{
%%   <<"NextActivity">> => string(),
%%   <<"Percentage">> => integer()
%% }
-type random_split_entry() :: #{binary() => any()}.


%% Example:
%% campaign_event_filter() :: #{
%%   <<"Dimensions">> => event_dimensions(),
%%   <<"FilterType">> => list(any())
%% }
-type campaign_event_filter() :: #{binary() => any()}.


%% Example:
%% put_event_stream_request() :: #{
%%   <<"WriteEventStream">> := write_event_stream()
%% }
-type put_event_stream_request() :: #{binary() => any()}.


%% Example:
%% push_message_activity() :: #{
%%   <<"MessageConfig">> => journey_push_message(),
%%   <<"NextActivity">> => string(),
%%   <<"TemplateName">> => string(),
%%   <<"TemplateVersion">> => string()
%% }
-type push_message_activity() :: #{binary() => any()}.


%% Example:
%% voice_message() :: #{
%%   <<"Body">> => string(),
%%   <<"LanguageCode">> => string(),
%%   <<"OriginationNumber">> => string(),
%%   <<"Substitutions">> => map(),
%%   <<"VoiceId">> => string()
%% }
-type voice_message() :: #{binary() => any()}.

%% Example:
%% get_segment_version_request() :: #{}
-type get_segment_version_request() :: #{}.

%% Example:
%% get_in_app_messages_request() :: #{}
-type get_in_app_messages_request() :: #{}.

%% Example:
%% get_segment_request() :: #{}
-type get_segment_request() :: #{}.


%% Example:
%% get_voice_channel_response() :: #{
%%   <<"VoiceChannelResponse">> => voice_channel_response()
%% }
-type get_voice_channel_response() :: #{binary() => any()}.


%% Example:
%% get_segment_versions_response() :: #{
%%   <<"SegmentsResponse">> => segments_response()
%% }
-type get_segment_versions_response() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestID">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% send_users_message_request() :: #{
%%   <<"Context">> => map(),
%%   <<"MessageConfiguration">> => direct_message_configuration(),
%%   <<"TemplateConfiguration">> => template_configuration(),
%%   <<"TraceId">> => string(),
%%   <<"Users">> => map()
%% }
-type send_users_message_request() :: #{binary() => any()}.


%% Example:
%% event_item_response() :: #{
%%   <<"Message">> => string(),
%%   <<"StatusCode">> => integer()
%% }
-type event_item_response() :: #{binary() => any()}.


%% Example:
%% in_app_message_header_config() :: #{
%%   <<"Alignment">> => list(any()),
%%   <<"Header">> => string(),
%%   <<"TextColor">> => string()
%% }
-type in_app_message_header_config() :: #{binary() => any()}.


%% Example:
%% event_start_condition() :: #{
%%   <<"EventFilter">> => event_filter(),
%%   <<"SegmentId">> => string()
%% }
-type event_start_condition() :: #{binary() => any()}.


%% Example:
%% update_email_channel_request() :: #{
%%   <<"EmailChannelRequest">> := email_channel_request()
%% }
-type update_email_channel_request() :: #{binary() => any()}.


%% Example:
%% campaign_date_range_kpi_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"CampaignId">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"KpiName">> => string(),
%%   <<"KpiResult">> => base_kpi_result(),
%%   <<"NextToken">> => string(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type campaign_date_range_kpi_response() :: #{binary() => any()}.


%% Example:
%% template_create_message_body() :: #{
%%   <<"Arn">> => string(),
%%   <<"Message">> => string(),
%%   <<"RequestID">> => string()
%% }
-type template_create_message_body() :: #{binary() => any()}.


%% Example:
%% events_batch() :: #{
%%   <<"Endpoint">> => public_endpoint(),
%%   <<"Events">> => map()
%% }
-type events_batch() :: #{binary() => any()}.


%% Example:
%% create_export_job_response() :: #{
%%   <<"ExportJobResponse">> => export_job_response()
%% }
-type create_export_job_response() :: #{binary() => any()}.


%% Example:
%% a_p_n_s_voip_channel_request() :: #{
%%   <<"BundleId">> => string(),
%%   <<"Certificate">> => string(),
%%   <<"DefaultAuthenticationMethod">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"PrivateKey">> => string(),
%%   <<"TeamId">> => string(),
%%   <<"TokenKey">> => string(),
%%   <<"TokenKeyId">> => string()
%% }
-type a_p_n_s_voip_channel_request() :: #{binary() => any()}.


%% Example:
%% method_not_allowed_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestID">> => string()
%% }
-type method_not_allowed_exception() :: #{binary() => any()}.


%% Example:
%% get_channels_response() :: #{
%%   <<"ChannelsResponse">> => channels_response()
%% }
-type get_channels_response() :: #{binary() => any()}.


%% Example:
%% update_gcm_channel_request() :: #{
%%   <<"GCMChannelRequest">> := g_cm_channel_request()
%% }
-type update_gcm_channel_request() :: #{binary() => any()}.

%% Example:
%% get_sms_channel_request() :: #{}
-type get_sms_channel_request() :: #{}.


%% Example:
%% get_export_jobs_response() :: #{
%%   <<"ExportJobsResponse">> => export_jobs_response()
%% }
-type get_export_jobs_response() :: #{binary() => any()}.


%% Example:
%% send_o_t_p_message_request_parameters() :: #{
%%   <<"AllowedAttempts">> => integer(),
%%   <<"BrandName">> => string(),
%%   <<"Channel">> => string(),
%%   <<"CodeLength">> => integer(),
%%   <<"DestinationIdentity">> => string(),
%%   <<"EntityId">> => string(),
%%   <<"Language">> => string(),
%%   <<"OriginationIdentity">> => string(),
%%   <<"ReferenceId">> => string(),
%%   <<"TemplateId">> => string(),
%%   <<"ValidityPeriod">> => integer()
%% }
-type send_o_t_p_message_request_parameters() :: #{binary() => any()}.


%% Example:
%% delete_apns_sandbox_channel_response() :: #{
%%   <<"APNSSandboxChannelResponse">> => a_p_n_s_sandbox_channel_response()
%% }
-type delete_apns_sandbox_channel_response() :: #{binary() => any()}.


%% Example:
%% journey_run_execution_activity_metrics_response() :: #{
%%   <<"ActivityType">> => string(),
%%   <<"ApplicationId">> => string(),
%%   <<"JourneyActivityId">> => string(),
%%   <<"JourneyId">> => string(),
%%   <<"LastEvaluatedTime">> => string(),
%%   <<"Metrics">> => map(),
%%   <<"RunId">> => string()
%% }
-type journey_run_execution_activity_metrics_response() :: #{binary() => any()}.


%% Example:
%% update_apns_sandbox_channel_request() :: #{
%%   <<"APNSSandboxChannelRequest">> := a_p_n_s_sandbox_channel_request()
%% }
-type update_apns_sandbox_channel_request() :: #{binary() => any()}.


%% Example:
%% delete_gcm_channel_response() :: #{
%%   <<"GCMChannelResponse">> => g_cm_channel_response()
%% }
-type delete_gcm_channel_response() :: #{binary() => any()}.


%% Example:
%% templates_response() :: #{
%%   <<"Item">> => list(template_response()),
%%   <<"NextToken">> => string()
%% }
-type templates_response() :: #{binary() => any()}.


%% Example:
%% update_sms_channel_response() :: #{
%%   <<"SMSChannelResponse">> => sms_channel_response()
%% }
-type update_sms_channel_response() :: #{binary() => any()}.


%% Example:
%% attributes_resource() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"AttributeType">> => string(),
%%   <<"Attributes">> => list(string())
%% }
-type attributes_resource() :: #{binary() => any()}.


%% Example:
%% delete_recommender_configuration_response() :: #{
%%   <<"RecommenderConfigurationResponse">> => recommender_configuration_response()
%% }
-type delete_recommender_configuration_response() :: #{binary() => any()}.


%% Example:
%% update_voice_channel_request() :: #{
%%   <<"VoiceChannelRequest">> := voice_channel_request()
%% }
-type update_voice_channel_request() :: #{binary() => any()}.


%% Example:
%% update_in_app_template_request() :: #{
%%   <<"CreateNewVersion">> => boolean(),
%%   <<"InAppTemplateRequest">> := in_app_template_request(),
%%   <<"Version">> => string()
%% }
-type update_in_app_template_request() :: #{binary() => any()}.


%% Example:
%% message_body() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestID">> => string()
%% }
-type message_body() :: #{binary() => any()}.


%% Example:
%% write_journey_request() :: #{
%%   <<"Activities">> => map(),
%%   <<"ClosedDays">> => closed_days(),
%%   <<"CreationDate">> => string(),
%%   <<"JourneyChannelSettings">> => journey_channel_settings(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"Limits">> => journey_limits(),
%%   <<"LocalTime">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"OpenHours">> => open_hours(),
%%   <<"QuietTime">> => quiet_time(),
%%   <<"RefreshFrequency">> => string(),
%%   <<"RefreshOnSegmentUpdate">> => boolean(),
%%   <<"Schedule">> => journey_schedule(),
%%   <<"SendingSchedule">> => boolean(),
%%   <<"StartActivity">> => string(),
%%   <<"StartCondition">> => start_condition(),
%%   <<"State">> => list(any()),
%%   <<"TimezoneEstimationMethods">> => list(list(any())()),
%%   <<"WaitForQuietTime">> => boolean()
%% }
-type write_journey_request() :: #{binary() => any()}.


%% Example:
%% raw_email() :: #{
%%   <<"Data">> => binary()
%% }
-type raw_email() :: #{binary() => any()}.


%% Example:
%% get_apns_voip_channel_response() :: #{
%%   <<"APNSVoipChannelResponse">> => a_p_n_s_voip_channel_response()
%% }
-type get_apns_voip_channel_response() :: #{binary() => any()}.


%% Example:
%% activity_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"CampaignId">> => string(),
%%   <<"End">> => string(),
%%   <<"ExecutionMetrics">> => map(),
%%   <<"Id">> => string(),
%%   <<"Result">> => string(),
%%   <<"ScheduledStart">> => string(),
%%   <<"Start">> => string(),
%%   <<"State">> => string(),
%%   <<"SuccessfulEndpointCount">> => integer(),
%%   <<"TimezonesCompletedCount">> => integer(),
%%   <<"TimezonesTotalCount">> => integer(),
%%   <<"TotalEndpointCount">> => integer(),
%%   <<"TreatmentId">> => string()
%% }
-type activity_response() :: #{binary() => any()}.


%% Example:
%% delete_in_app_template_response() :: #{
%%   <<"MessageBody">> => message_body()
%% }
-type delete_in_app_template_response() :: #{binary() => any()}.


%% Example:
%% update_apns_channel_response() :: #{
%%   <<"APNSChannelResponse">> => a_p_n_s_channel_response()
%% }
-type update_apns_channel_response() :: #{binary() => any()}.


%% Example:
%% open_hours() :: #{
%%   <<"CUSTOM">> => map(),
%%   <<"EMAIL">> => map(),
%%   <<"PUSH">> => map(),
%%   <<"SMS">> => map(),
%%   <<"VOICE">> => map()
%% }
-type open_hours() :: #{binary() => any()}.

%% Example:
%% get_baidu_channel_request() :: #{}
-type get_baidu_channel_request() :: #{}.

%% Example:
%% delete_campaign_request() :: #{}
-type delete_campaign_request() :: #{}.


%% Example:
%% sms_message() :: #{
%%   <<"Body">> => string(),
%%   <<"EntityId">> => string(),
%%   <<"Keyword">> => string(),
%%   <<"MediaUrl">> => string(),
%%   <<"MessageType">> => list(any()),
%%   <<"OriginationNumber">> => string(),
%%   <<"SenderId">> => string(),
%%   <<"Substitutions">> => map(),
%%   <<"TemplateId">> => string()
%% }
-type sms_message() :: #{binary() => any()}.


%% Example:
%% sms_message_activity() :: #{
%%   <<"MessageConfig">> => journey_sms_message(),
%%   <<"NextActivity">> => string(),
%%   <<"TemplateName">> => string(),
%%   <<"TemplateVersion">> => string()
%% }
-type sms_message_activity() :: #{binary() => any()}.


%% Example:
%% template_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"DefaultSubstitutions">> => string(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"TemplateDescription">> => string(),
%%   <<"TemplateName">> => string(),
%%   <<"TemplateType">> => list(any()),
%%   <<"Version">> => string(),
%%   <<"tags">> => map()
%% }
-type template_response() :: #{binary() => any()}.


%% Example:
%% update_endpoint_request() :: #{
%%   <<"EndpointRequest">> := endpoint_request()
%% }
-type update_endpoint_request() :: #{binary() => any()}.


%% Example:
%% endpoint_send_configuration() :: #{
%%   <<"BodyOverride">> => string(),
%%   <<"Context">> => map(),
%%   <<"RawContent">> => string(),
%%   <<"Substitutions">> => map(),
%%   <<"TitleOverride">> => string()
%% }
-type endpoint_send_configuration() :: #{binary() => any()}.


%% Example:
%% put_events_response() :: #{
%%   <<"EventsResponse">> => events_response()
%% }
-type put_events_response() :: #{binary() => any()}.


%% Example:
%% journeys_response() :: #{
%%   <<"Item">> => list(journey_response()),
%%   <<"NextToken">> => string()
%% }
-type journeys_response() :: #{binary() => any()}.


%% Example:
%% events_request() :: #{
%%   <<"BatchItem">> => map()
%% }
-type events_request() :: #{binary() => any()}.


%% Example:
%% message_result() :: #{
%%   <<"DeliveryStatus">> => list(any()),
%%   <<"MessageId">> => string(),
%%   <<"StatusCode">> => integer(),
%%   <<"StatusMessage">> => string(),
%%   <<"UpdatedToken">> => string()
%% }
-type message_result() :: #{binary() => any()}.


%% Example:
%% get_journey_execution_metrics_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => string()
%% }
-type get_journey_execution_metrics_request() :: #{binary() => any()}.


%% Example:
%% get_import_jobs_response() :: #{
%%   <<"ImportJobsResponse">> => import_jobs_response()
%% }
-type get_import_jobs_response() :: #{binary() => any()}.


%% Example:
%% update_voice_template_response() :: #{
%%   <<"MessageBody">> => message_body()
%% }
-type update_voice_template_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_apns_voip_channel_response() :: #{
%%   <<"APNSVoipChannelResponse">> => a_p_n_s_voip_channel_response()
%% }
-type update_apns_voip_channel_response() :: #{binary() => any()}.


%% Example:
%% application_settings_resource() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"CampaignHook">> => campaign_hook(),
%%   <<"JourneyLimits">> => application_settings_journey_limits(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"Limits">> => campaign_limits(),
%%   <<"QuietTime">> => quiet_time()
%% }
-type application_settings_resource() :: #{binary() => any()}.


%% Example:
%% create_recommender_configuration_response() :: #{
%%   <<"RecommenderConfigurationResponse">> => recommender_configuration_response()
%% }
-type create_recommender_configuration_response() :: #{binary() => any()}.


%% Example:
%% template_version_response() :: #{
%%   <<"CreationDate">> => string(),
%%   <<"DefaultSubstitutions">> => string(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"TemplateDescription">> => string(),
%%   <<"TemplateName">> => string(),
%%   <<"TemplateType">> => string(),
%%   <<"Version">> => string()
%% }
-type template_version_response() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestID">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% get_push_template_request() :: #{
%%   <<"Version">> => string()
%% }
-type get_push_template_request() :: #{binary() => any()}.


%% Example:
%% update_apns_voip_sandbox_channel_request() :: #{
%%   <<"APNSVoipSandboxChannelRequest">> := a_p_n_s_voip_sandbox_channel_request()
%% }
-type update_apns_voip_sandbox_channel_request() :: #{binary() => any()}.


%% Example:
%% phone_number_validate_response() :: #{
%%   <<"NumberValidateResponse">> => number_validate_response()
%% }
-type phone_number_validate_response() :: #{binary() => any()}.


%% Example:
%% holdout_activity() :: #{
%%   <<"NextActivity">> => string(),
%%   <<"Percentage">> => integer()
%% }
-type holdout_activity() :: #{binary() => any()}.


%% Example:
%% update_sms_template_response() :: #{
%%   <<"MessageBody">> => message_body()
%% }
-type update_sms_template_response() :: #{binary() => any()}.


%% Example:
%% delete_email_template_request() :: #{
%%   <<"Version">> => string()
%% }
-type delete_email_template_request() :: #{binary() => any()}.


%% Example:
%% segment_reference() :: #{
%%   <<"Id">> => string(),
%%   <<"Version">> => integer()
%% }
-type segment_reference() :: #{binary() => any()}.

%% Example:
%% get_recommender_configuration_request() :: #{}
-type get_recommender_configuration_request() :: #{}.


%% Example:
%% ad_m_channel_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"HasCredential">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"IsArchived">> => boolean(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"Platform">> => string(),
%%   <<"Version">> => integer()
%% }
-type ad_m_channel_response() :: #{binary() => any()}.


%% Example:
%% update_baidu_channel_request() :: #{
%%   <<"BaiduChannelRequest">> := baidu_channel_request()
%% }
-type update_baidu_channel_request() :: #{binary() => any()}.

%% Example:
%% delete_email_channel_request() :: #{}
-type delete_email_channel_request() :: #{}.


%% Example:
%% get_sms_template_request() :: #{
%%   <<"Version">> => string()
%% }
-type get_sms_template_request() :: #{binary() => any()}.


%% Example:
%% delete_voice_template_request() :: #{
%%   <<"Version">> => string()
%% }
-type delete_voice_template_request() :: #{binary() => any()}.


%% Example:
%% contact_center_activity() :: #{
%%   <<"NextActivity">> => string()
%% }
-type contact_center_activity() :: #{binary() => any()}.


%% Example:
%% delete_push_template_request() :: #{
%%   <<"Version">> => string()
%% }
-type delete_push_template_request() :: #{binary() => any()}.


%% Example:
%% baidu_channel_request() :: #{
%%   <<"ApiKey">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"SecretKey">> => string()
%% }
-type baidu_channel_request() :: #{binary() => any()}.


%% Example:
%% import_job_resource() :: #{
%%   <<"DefineSegment">> => boolean(),
%%   <<"ExternalId">> => string(),
%%   <<"Format">> => list(any()),
%%   <<"RegisterEndpoints">> => boolean(),
%%   <<"RoleArn">> => string(),
%%   <<"S3Url">> => string(),
%%   <<"SegmentId">> => string(),
%%   <<"SegmentName">> => string()
%% }
-type import_job_resource() :: #{binary() => any()}.


%% Example:
%% segment_condition() :: #{
%%   <<"SegmentId">> => string()
%% }
-type segment_condition() :: #{binary() => any()}.


%% Example:
%% update_gcm_channel_response() :: #{
%%   <<"GCMChannelResponse">> => g_cm_channel_response()
%% }
-type update_gcm_channel_response() :: #{binary() => any()}.


%% Example:
%% create_email_template_request() :: #{
%%   <<"EmailTemplateRequest">> := email_template_request()
%% }
-type create_email_template_request() :: #{binary() => any()}.


%% Example:
%% import_job_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"CompletedPieces">> => integer(),
%%   <<"CompletionDate">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"Definition">> => import_job_resource(),
%%   <<"FailedPieces">> => integer(),
%%   <<"Failures">> => list(string()),
%%   <<"Id">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"TotalFailures">> => integer(),
%%   <<"TotalPieces">> => integer(),
%%   <<"TotalProcessed">> => integer(),
%%   <<"Type">> => string()
%% }
-type import_job_response() :: #{binary() => any()}.


%% Example:
%% update_segment_request() :: #{
%%   <<"WriteSegmentRequest">> := write_segment_request()
%% }
-type update_segment_request() :: #{binary() => any()}.


%% Example:
%% update_template_active_version_response() :: #{
%%   <<"MessageBody">> => message_body()
%% }
-type update_template_active_version_response() :: #{binary() => any()}.


%% Example:
%% address_configuration() :: #{
%%   <<"BodyOverride">> => string(),
%%   <<"ChannelType">> => list(any()),
%%   <<"Context">> => map(),
%%   <<"RawContent">> => string(),
%%   <<"Substitutions">> => map(),
%%   <<"TitleOverride">> => string()
%% }
-type address_configuration() :: #{binary() => any()}.


%% Example:
%% email_channel_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"ConfigurationSet">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"FromAddress">> => string(),
%%   <<"HasCredential">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"Identity">> => string(),
%%   <<"IsArchived">> => boolean(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"MessagesPerSecond">> => integer(),
%%   <<"OrchestrationSendingRoleArn">> => string(),
%%   <<"Platform">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Version">> => integer()
%% }
-type email_channel_response() :: #{binary() => any()}.


%% Example:
%% result_row() :: #{
%%   <<"GroupedBys">> => list(result_row_value()),
%%   <<"Values">> => list(result_row_value())
%% }
-type result_row() :: #{binary() => any()}.


%% Example:
%% custom_delivery_configuration() :: #{
%%   <<"DeliveryUri">> => string(),
%%   <<"EndpointTypes">> => list(list(any())())
%% }
-type custom_delivery_configuration() :: #{binary() => any()}.


%% Example:
%% update_baidu_channel_response() :: #{
%%   <<"BaiduChannelResponse">> => baidu_channel_response()
%% }
-type update_baidu_channel_response() :: #{binary() => any()}.


%% Example:
%% phone_number_validate_request() :: #{
%%   <<"NumberValidateRequest">> := number_validate_request()
%% }
-type phone_number_validate_request() :: #{binary() => any()}.


%% Example:
%% create_segment_response() :: #{
%%   <<"SegmentResponse">> => segment_response()
%% }
-type create_segment_response() :: #{binary() => any()}.


%% Example:
%% g_cm_channel_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"Credential">> => string(),
%%   <<"DefaultAuthenticationMethod">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"HasCredential">> => boolean(),
%%   <<"HasFcmServiceCredentials">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"IsArchived">> => boolean(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"Platform">> => string(),
%%   <<"Version">> => integer()
%% }
-type g_cm_channel_response() :: #{binary() => any()}.


%% Example:
%% get_application_settings_response() :: #{
%%   <<"ApplicationSettingsResource">> => application_settings_resource()
%% }
-type get_application_settings_response() :: #{binary() => any()}.


%% Example:
%% update_journey_state_response() :: #{
%%   <<"JourneyResponse">> => journey_response()
%% }
-type update_journey_state_response() :: #{binary() => any()}.

%% Example:
%% get_app_request() :: #{}
-type get_app_request() :: #{}.


%% Example:
%% default_push_notification_template() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Body">> => string(),
%%   <<"Sound">> => string(),
%%   <<"Title">> => string(),
%%   <<"Url">> => string()
%% }
-type default_push_notification_template() :: #{binary() => any()}.


%% Example:
%% send_messages_request() :: #{
%%   <<"MessageRequest">> := message_request()
%% }
-type send_messages_request() :: #{binary() => any()}.


%% Example:
%% closed_days_rule() :: #{
%%   <<"EndDateTime">> => string(),
%%   <<"Name">> => string(),
%%   <<"StartDateTime">> => string()
%% }
-type closed_days_rule() :: #{binary() => any()}.


%% Example:
%% get_recommender_configuration_response() :: #{
%%   <<"RecommenderConfigurationResponse">> => recommender_configuration_response()
%% }
-type get_recommender_configuration_response() :: #{binary() => any()}.


%% Example:
%% update_journey_request() :: #{
%%   <<"WriteJourneyRequest">> := write_journey_request()
%% }
-type update_journey_request() :: #{binary() => any()}.


%% Example:
%% get_application_date_range_kpi_response() :: #{
%%   <<"ApplicationDateRangeKpiResponse">> => application_date_range_kpi_response()
%% }
-type get_application_date_range_kpi_response() :: #{binary() => any()}.


%% Example:
%% campaign_sms_message() :: #{
%%   <<"Body">> => string(),
%%   <<"EntityId">> => string(),
%%   <<"MessageType">> => list(any()),
%%   <<"OriginationNumber">> => string(),
%%   <<"SenderId">> => string(),
%%   <<"TemplateId">> => string()
%% }
-type campaign_sms_message() :: #{binary() => any()}.


%% Example:
%% a_p_n_s_channel_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"DefaultAuthenticationMethod">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"HasCredential">> => boolean(),
%%   <<"HasTokenKey">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"IsArchived">> => boolean(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"Platform">> => string(),
%%   <<"Version">> => integer()
%% }
-type a_p_n_s_channel_response() :: #{binary() => any()}.


%% Example:
%% create_push_template_request() :: #{
%%   <<"PushNotificationTemplateRequest">> := push_notification_template_request()
%% }
-type create_push_template_request() :: #{binary() => any()}.


%% Example:
%% a_p_n_s_voip_sandbox_channel_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"DefaultAuthenticationMethod">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"HasCredential">> => boolean(),
%%   <<"HasTokenKey">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"IsArchived">> => boolean(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"Platform">> => string(),
%%   <<"Version">> => integer()
%% }
-type a_p_n_s_voip_sandbox_channel_response() :: #{binary() => any()}.


%% Example:
%% send_o_t_p_message_request() :: #{
%%   <<"SendOTPMessageRequestParameters">> := send_o_t_p_message_request_parameters()
%% }
-type send_o_t_p_message_request() :: #{binary() => any()}.


%% Example:
%% journey_execution_metrics_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"JourneyId">> => string(),
%%   <<"LastEvaluatedTime">> => string(),
%%   <<"Metrics">> => map()
%% }
-type journey_execution_metrics_response() :: #{binary() => any()}.


%% Example:
%% update_attributes_request() :: #{
%%   <<"Blacklist">> => list(string())
%% }
-type update_attributes_request() :: #{binary() => any()}.

%% Example:
%% get_voice_channel_request() :: #{}
-type get_voice_channel_request() :: #{}.


%% Example:
%% update_recommender_configuration_shape() :: #{
%%   <<"Attributes">> => map(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"RecommendationProviderIdType">> => string(),
%%   <<"RecommendationProviderRoleArn">> => string(),
%%   <<"RecommendationProviderUri">> => string(),
%%   <<"RecommendationTransformerUri">> => string(),
%%   <<"RecommendationsDisplayName">> => string(),
%%   <<"RecommendationsPerMessage">> => integer()
%% }
-type update_recommender_configuration_shape() :: #{binary() => any()}.


%% Example:
%% application_settings_journey_limits() :: #{
%%   <<"DailyCap">> => integer(),
%%   <<"TimeframeCap">> => journey_timeframe_cap(),
%%   <<"TotalCap">> => integer()
%% }
-type application_settings_journey_limits() :: #{binary() => any()}.


%% Example:
%% delete_voice_template_response() :: #{
%%   <<"MessageBody">> => message_body()
%% }
-type delete_voice_template_response() :: #{binary() => any()}.


%% Example:
%% baidu_channel_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"Credential">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"HasCredential">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"IsArchived">> => boolean(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"Platform">> => string(),
%%   <<"Version">> => integer()
%% }
-type baidu_channel_response() :: #{binary() => any()}.

%% Example:
%% delete_gcm_channel_request() :: #{}
-type delete_gcm_channel_request() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestID">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% write_segment_request() :: #{
%%   <<"Dimensions">> => segment_dimensions(),
%%   <<"Name">> => string(),
%%   <<"SegmentGroups">> => segment_group_list(),
%%   <<"tags">> => map()
%% }
-type write_segment_request() :: #{binary() => any()}.

%% Example:
%% delete_apns_voip_sandbox_channel_request() :: #{}
-type delete_apns_voip_sandbox_channel_request() :: #{}.

%% Example:
%% get_export_job_request() :: #{}
-type get_export_job_request() :: #{}.


%% Example:
%% get_in_app_template_response() :: #{
%%   <<"InAppTemplateResponse">> => in_app_template_response()
%% }
-type get_in_app_template_response() :: #{binary() => any()}.


%% Example:
%% message_header() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type message_header() :: #{binary() => any()}.


%% Example:
%% delete_campaign_response() :: #{
%%   <<"CampaignResponse">> => campaign_response()
%% }
-type delete_campaign_response() :: #{binary() => any()}.


%% Example:
%% import_job_request() :: #{
%%   <<"DefineSegment">> => boolean(),
%%   <<"ExternalId">> => string(),
%%   <<"Format">> => list(any()),
%%   <<"RegisterEndpoints">> => boolean(),
%%   <<"RoleArn">> => string(),
%%   <<"S3Url">> => string(),
%%   <<"SegmentId">> => string(),
%%   <<"SegmentName">> => string()
%% }
-type import_job_request() :: #{binary() => any()}.


%% Example:
%% get_endpoint_response() :: #{
%%   <<"EndpointResponse">> => endpoint_response()
%% }
-type get_endpoint_response() :: #{binary() => any()}.


%% Example:
%% activity() :: #{
%%   <<"CUSTOM">> => custom_message_activity(),
%%   <<"ConditionalSplit">> => conditional_split_activity(),
%%   <<"ContactCenter">> => contact_center_activity(),
%%   <<"Description">> => string(),
%%   <<"EMAIL">> => email_message_activity(),
%%   <<"Holdout">> => holdout_activity(),
%%   <<"MultiCondition">> => multi_conditional_split_activity(),
%%   <<"PUSH">> => push_message_activity(),
%%   <<"RandomSplit">> => random_split_activity(),
%%   <<"SMS">> => sms_message_activity(),
%%   <<"Wait">> => wait_activity()
%% }
-type activity() :: #{binary() => any()}.


%% Example:
%% journey_run_execution_metrics_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"JourneyId">> => string(),
%%   <<"LastEvaluatedTime">> => string(),
%%   <<"Metrics">> => map(),
%%   <<"RunId">> => string()
%% }
-type journey_run_execution_metrics_response() :: #{binary() => any()}.


%% Example:
%% voice_channel_request() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type voice_channel_request() :: #{binary() => any()}.


%% Example:
%% a_p_n_s_push_notification_template() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Body">> => string(),
%%   <<"MediaUrl">> => string(),
%%   <<"RawContent">> => string(),
%%   <<"Sound">> => string(),
%%   <<"Title">> => string(),
%%   <<"Url">> => string()
%% }
-type a_p_n_s_push_notification_template() :: #{binary() => any()}.

%% Example:
%% get_apns_channel_request() :: #{}
-type get_apns_channel_request() :: #{}.


%% Example:
%% get_apps_response() :: #{
%%   <<"ApplicationsResponse">> => applications_response()
%% }
-type get_apps_response() :: #{binary() => any()}.


%% Example:
%% send_o_t_p_message_response() :: #{
%%   <<"MessageResponse">> => message_response()
%% }
-type send_o_t_p_message_response() :: #{binary() => any()}.


%% Example:
%% delete_apns_voip_sandbox_channel_response() :: #{
%%   <<"APNSVoipSandboxChannelResponse">> => a_p_n_s_voip_sandbox_channel_response()
%% }
-type delete_apns_voip_sandbox_channel_response() :: #{binary() => any()}.


%% Example:
%% get_export_job_response() :: #{
%%   <<"ExportJobResponse">> => export_job_response()
%% }
-type get_export_job_response() :: #{binary() => any()}.


%% Example:
%% payload_too_large_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestID">> => string()
%% }
-type payload_too_large_exception() :: #{binary() => any()}.


%% Example:
%% delete_endpoint_response() :: #{
%%   <<"EndpointResponse">> => endpoint_response()
%% }
-type delete_endpoint_response() :: #{binary() => any()}.

%% Example:
%% delete_apns_voip_channel_request() :: #{}
-type delete_apns_voip_channel_request() :: #{}.


%% Example:
%% update_voice_template_request() :: #{
%%   <<"CreateNewVersion">> => boolean(),
%%   <<"Version">> => string(),
%%   <<"VoiceTemplateRequest">> := voice_template_request()
%% }
-type update_voice_template_request() :: #{binary() => any()}.


%% Example:
%% endpoint_message_result() :: #{
%%   <<"Address">> => string(),
%%   <<"DeliveryStatus">> => list(any()),
%%   <<"MessageId">> => string(),
%%   <<"StatusCode">> => integer(),
%%   <<"StatusMessage">> => string(),
%%   <<"UpdatedToken">> => string()
%% }
-type endpoint_message_result() :: #{binary() => any()}.


%% Example:
%% write_event_stream() :: #{
%%   <<"DestinationStreamArn">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type write_event_stream() :: #{binary() => any()}.


%% Example:
%% put_events_request() :: #{
%%   <<"EventsRequest">> := events_request()
%% }
-type put_events_request() :: #{binary() => any()}.


%% Example:
%% segment_dimensions() :: #{
%%   <<"Attributes">> => map(),
%%   <<"Behavior">> => segment_behaviors(),
%%   <<"Demographic">> => segment_demographics(),
%%   <<"Location">> => segment_location(),
%%   <<"Metrics">> => map(),
%%   <<"UserAttributes">> => map()
%% }
-type segment_dimensions() :: #{binary() => any()}.

%% Example:
%% get_apns_voip_sandbox_channel_request() :: #{}
-type get_apns_voip_sandbox_channel_request() :: #{}.


%% Example:
%% voice_channel_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"HasCredential">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"IsArchived">> => boolean(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"Platform">> => string(),
%%   <<"Version">> => integer()
%% }
-type voice_channel_response() :: #{binary() => any()}.


%% Example:
%% get_segment_export_jobs_response() :: #{
%%   <<"ExportJobsResponse">> => export_jobs_response()
%% }
-type get_segment_export_jobs_response() :: #{binary() => any()}.


%% Example:
%% a_p_n_s_message() :: #{
%%   <<"APNSPushType">> => string(),
%%   <<"Action">> => list(any()),
%%   <<"Badge">> => integer(),
%%   <<"Body">> => string(),
%%   <<"Category">> => string(),
%%   <<"CollapseId">> => string(),
%%   <<"Data">> => map(),
%%   <<"MediaUrl">> => string(),
%%   <<"PreferredAuthenticationMethod">> => string(),
%%   <<"Priority">> => string(),
%%   <<"RawContent">> => string(),
%%   <<"SilentPush">> => boolean(),
%%   <<"Sound">> => string(),
%%   <<"Substitutions">> => map(),
%%   <<"ThreadId">> => string(),
%%   <<"TimeToLive">> => integer(),
%%   <<"Title">> => string(),
%%   <<"Url">> => string()
%% }
-type a_p_n_s_message() :: #{binary() => any()}.


%% Example:
%% template_active_version_request() :: #{
%%   <<"Version">> => string()
%% }
-type template_active_version_request() :: #{binary() => any()}.

%% Example:
%% get_import_job_request() :: #{}
-type get_import_job_request() :: #{}.


%% Example:
%% in_app_message_content() :: #{
%%   <<"BackgroundColor">> => string(),
%%   <<"BodyConfig">> => in_app_message_body_config(),
%%   <<"HeaderConfig">> => in_app_message_header_config(),
%%   <<"ImageUrl">> => string(),
%%   <<"PrimaryBtn">> => in_app_message_button(),
%%   <<"SecondaryBtn">> => in_app_message_button()
%% }
-type in_app_message_content() :: #{binary() => any()}.


%% Example:
%% list_template_versions_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => string()
%% }
-type list_template_versions_request() :: #{binary() => any()}.


%% Example:
%% message_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"EndpointResult">> => map(),
%%   <<"RequestId">> => string(),
%%   <<"Result">> => map()
%% }
-type message_response() :: #{binary() => any()}.


%% Example:
%% get_journey_response() :: #{
%%   <<"JourneyResponse">> => journey_response()
%% }
-type get_journey_response() :: #{binary() => any()}.

%% Example:
%% get_apns_voip_channel_request() :: #{}
-type get_apns_voip_channel_request() :: #{}.


%% Example:
%% journey_schedule() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Timezone">> => string()
%% }
-type journey_schedule() :: #{binary() => any()}.


%% Example:
%% delete_email_template_response() :: #{
%%   <<"MessageBody">> => message_body()
%% }
-type delete_email_template_response() :: #{binary() => any()}.


%% Example:
%% export_job_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"CompletedPieces">> => integer(),
%%   <<"CompletionDate">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"Definition">> => export_job_resource(),
%%   <<"FailedPieces">> => integer(),
%%   <<"Failures">> => list(string()),
%%   <<"Id">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"TotalFailures">> => integer(),
%%   <<"TotalPieces">> => integer(),
%%   <<"TotalProcessed">> => integer(),
%%   <<"Type">> => string()
%% }
-type export_job_response() :: #{binary() => any()}.


%% Example:
%% applications_response() :: #{
%%   <<"Item">> => list(application_response()),
%%   <<"NextToken">> => string()
%% }
-type applications_response() :: #{binary() => any()}.


%% Example:
%% sms_channel_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"HasCredential">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"IsArchived">> => boolean(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"Platform">> => string(),
%%   <<"PromotionalMessagesPerSecond">> => integer(),
%%   <<"SenderId">> => string(),
%%   <<"ShortCode">> => string(),
%%   <<"TransactionalMessagesPerSecond">> => integer(),
%%   <<"Version">> => integer()
%% }
-type sms_channel_response() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestID">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% update_journey_response() :: #{
%%   <<"JourneyResponse">> => journey_response()
%% }
-type update_journey_response() :: #{binary() => any()}.


%% Example:
%% in_app_message_body_config() :: #{
%%   <<"Alignment">> => list(any()),
%%   <<"Body">> => string(),
%%   <<"TextColor">> => string()
%% }
-type in_app_message_body_config() :: #{binary() => any()}.


%% Example:
%% update_push_template_request() :: #{
%%   <<"CreateNewVersion">> => boolean(),
%%   <<"PushNotificationTemplateRequest">> := push_notification_template_request(),
%%   <<"Version">> => string()
%% }
-type update_push_template_request() :: #{binary() => any()}.

%% Example:
%% get_user_endpoints_request() :: #{}
-type get_user_endpoints_request() :: #{}.


%% Example:
%% get_campaign_version_response() :: #{
%%   <<"CampaignResponse">> => campaign_response()
%% }
-type get_campaign_version_response() :: #{binary() => any()}.


%% Example:
%% get_campaign_activities_request() :: #{
%%   <<"PageSize">> => string(),
%%   <<"Token">> => string()
%% }
-type get_campaign_activities_request() :: #{binary() => any()}.


%% Example:
%% get_import_jobs_request() :: #{
%%   <<"PageSize">> => string(),
%%   <<"Token">> => string()
%% }
-type get_import_jobs_request() :: #{binary() => any()}.


%% Example:
%% list_template_versions_response() :: #{
%%   <<"TemplateVersionsResponse">> => template_versions_response()
%% }
-type list_template_versions_response() :: #{binary() => any()}.


%% Example:
%% journey_push_message() :: #{
%%   <<"TimeToLive">> => string()
%% }
-type journey_push_message() :: #{binary() => any()}.


%% Example:
%% get_segments_response() :: #{
%%   <<"SegmentsResponse">> => segments_response()
%% }
-type get_segments_response() :: #{binary() => any()}.


%% Example:
%% get_event_stream_response() :: #{
%%   <<"EventStream">> => event_stream()
%% }
-type get_event_stream_response() :: #{binary() => any()}.


%% Example:
%% put_event_stream_response() :: #{
%%   <<"EventStream">> => event_stream()
%% }
-type put_event_stream_response() :: #{binary() => any()}.


%% Example:
%% get_campaign_date_range_kpi_request() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => string(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type get_campaign_date_range_kpi_request() :: #{binary() => any()}.


%% Example:
%% delete_apns_voip_channel_response() :: #{
%%   <<"APNSVoipChannelResponse">> => a_p_n_s_voip_channel_response()
%% }
-type delete_apns_voip_channel_response() :: #{binary() => any()}.


%% Example:
%% get_segment_import_jobs_response() :: #{
%%   <<"ImportJobsResponse">> => import_jobs_response()
%% }
-type get_segment_import_jobs_response() :: #{binary() => any()}.


%% Example:
%% update_endpoints_batch_request() :: #{
%%   <<"EndpointBatchRequest">> := endpoint_batch_request()
%% }
-type update_endpoints_batch_request() :: #{binary() => any()}.


%% Example:
%% template_versions_response() :: #{
%%   <<"Item">> => list(template_version_response()),
%%   <<"Message">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"RequestID">> => string()
%% }
-type template_versions_response() :: #{binary() => any()}.

%% Example:
%% delete_baidu_channel_request() :: #{}
-type delete_baidu_channel_request() :: #{}.


%% Example:
%% get_sms_channel_response() :: #{
%%   <<"SMSChannelResponse">> => sms_channel_response()
%% }
-type get_sms_channel_response() :: #{binary() => any()}.


%% Example:
%% delete_voice_channel_response() :: #{
%%   <<"VoiceChannelResponse">> => voice_channel_response()
%% }
-type delete_voice_channel_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"TagsModel">> => tags_model()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% delete_email_channel_response() :: #{
%%   <<"EmailChannelResponse">> => email_channel_response()
%% }
-type delete_email_channel_response() :: #{binary() => any()}.


%% Example:
%% create_application_request() :: #{
%%   <<"Name">> => string(),
%%   <<"tags">> => map()
%% }
-type create_application_request() :: #{binary() => any()}.


%% Example:
%% update_adm_channel_response() :: #{
%%   <<"ADMChannelResponse">> => ad_m_channel_response()
%% }
-type update_adm_channel_response() :: #{binary() => any()}.


%% Example:
%% get_user_endpoints_response() :: #{
%%   <<"EndpointsResponse">> => endpoints_response()
%% }
-type get_user_endpoints_response() :: #{binary() => any()}.


%% Example:
%% get_journey_run_execution_metrics_response() :: #{
%%   <<"JourneyRunExecutionMetricsResponse">> => journey_run_execution_metrics_response()
%% }
-type get_journey_run_execution_metrics_response() :: #{binary() => any()}.


%% Example:
%% in_app_message() :: #{
%%   <<"Content">> => list(in_app_message_content()),
%%   <<"CustomConfig">> => map(),
%%   <<"Layout">> => list(any())
%% }
-type in_app_message() :: #{binary() => any()}.


%% Example:
%% segment_location() :: #{
%%   <<"Country">> => set_dimension(),
%%   <<"GPSPoint">> => g_p_s_point_dimension()
%% }
-type segment_location() :: #{binary() => any()}.


%% Example:
%% remove_attributes_request() :: #{
%%   <<"UpdateAttributesRequest">> := update_attributes_request()
%% }
-type remove_attributes_request() :: #{binary() => any()}.


%% Example:
%% get_campaign_date_range_kpi_response() :: #{
%%   <<"CampaignDateRangeKpiResponse">> => campaign_date_range_kpi_response()
%% }
-type get_campaign_date_range_kpi_response() :: #{binary() => any()}.


%% Example:
%% update_endpoints_batch_response() :: #{
%%   <<"MessageBody">> => message_body()
%% }
-type update_endpoints_batch_response() :: #{binary() => any()}.


%% Example:
%% get_journey_execution_metrics_response() :: #{
%%   <<"JourneyExecutionMetricsResponse">> => journey_execution_metrics_response()
%% }
-type get_journey_execution_metrics_response() :: #{binary() => any()}.


%% Example:
%% get_adm_channel_response() :: #{
%%   <<"ADMChannelResponse">> => ad_m_channel_response()
%% }
-type get_adm_channel_response() :: #{binary() => any()}.


%% Example:
%% simple_email_part() :: #{
%%   <<"Charset">> => string(),
%%   <<"Data">> => string()
%% }
-type simple_email_part() :: #{binary() => any()}.


%% Example:
%% import_jobs_response() :: #{
%%   <<"Item">> => list(import_job_response()),
%%   <<"NextToken">> => string()
%% }
-type import_jobs_response() :: #{binary() => any()}.


%% Example:
%% condition() :: #{
%%   <<"Conditions">> => list(simple_condition()),
%%   <<"Operator">> => list(any())
%% }
-type condition() :: #{binary() => any()}.


%% Example:
%% journey_run_response() :: #{
%%   <<"CreationTime">> => string(),
%%   <<"LastUpdateTime">> => string(),
%%   <<"RunId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type journey_run_response() :: #{binary() => any()}.


%% Example:
%% get_journey_runs_response() :: #{
%%   <<"JourneyRunsResponse">> => journey_runs_response()
%% }
-type get_journey_runs_response() :: #{binary() => any()}.


%% Example:
%% campaign_in_app_message() :: #{
%%   <<"Body">> => string(),
%%   <<"Content">> => list(in_app_message_content()),
%%   <<"CustomConfig">> => map(),
%%   <<"Layout">> => list(any())
%% }
-type campaign_in_app_message() :: #{binary() => any()}.


%% Example:
%% get_segment_response() :: #{
%%   <<"SegmentResponse">> => segment_response()
%% }
-type get_segment_response() :: #{binary() => any()}.


%% Example:
%% session() :: #{
%%   <<"Duration">> => integer(),
%%   <<"Id">> => string(),
%%   <<"StartTimestamp">> => string(),
%%   <<"StopTimestamp">> => string()
%% }
-type session() :: #{binary() => any()}.


%% Example:
%% event_filter() :: #{
%%   <<"Dimensions">> => event_dimensions(),
%%   <<"FilterType">> => list(any())
%% }
-type event_filter() :: #{binary() => any()}.


%% Example:
%% create_segment_request() :: #{
%%   <<"WriteSegmentRequest">> := write_segment_request()
%% }
-type create_segment_request() :: #{binary() => any()}.


%% Example:
%% endpoint_location() :: #{
%%   <<"City">> => string(),
%%   <<"Country">> => string(),
%%   <<"Latitude">> => float(),
%%   <<"Longitude">> => float(),
%%   <<"PostalCode">> => string(),
%%   <<"Region">> => string()
%% }
-type endpoint_location() :: #{binary() => any()}.


%% Example:
%% journey_execution_activity_metrics_response() :: #{
%%   <<"ActivityType">> => string(),
%%   <<"ApplicationId">> => string(),
%%   <<"JourneyActivityId">> => string(),
%%   <<"JourneyId">> => string(),
%%   <<"LastEvaluatedTime">> => string(),
%%   <<"Metrics">> => map()
%% }
-type journey_execution_activity_metrics_response() :: #{binary() => any()}.


%% Example:
%% direct_message_configuration() :: #{
%%   <<"ADMMessage">> => ad_m_message(),
%%   <<"APNSMessage">> => a_p_n_s_message(),
%%   <<"BaiduMessage">> => baidu_message(),
%%   <<"DefaultMessage">> => default_message(),
%%   <<"DefaultPushNotificationMessage">> => default_push_notification_message(),
%%   <<"EmailMessage">> => email_message(),
%%   <<"GCMMessage">> => g_cm_message(),
%%   <<"SMSMessage">> => sms_message(),
%%   <<"VoiceMessage">> => voice_message()
%% }
-type direct_message_configuration() :: #{binary() => any()}.


%% Example:
%% list_recommender_configurations_response() :: #{
%%   <<"Item">> => list(recommender_configuration_response()),
%%   <<"NextToken">> => string()
%% }
-type list_recommender_configurations_response() :: #{binary() => any()}.


%% Example:
%% metric_dimension() :: #{
%%   <<"ComparisonOperator">> => string(),
%%   <<"Value">> => float()
%% }
-type metric_dimension() :: #{binary() => any()}.


%% Example:
%% get_apns_channel_response() :: #{
%%   <<"APNSChannelResponse">> => a_p_n_s_channel_response()
%% }
-type get_apns_channel_response() :: #{binary() => any()}.


%% Example:
%% journey_timeframe_cap() :: #{
%%   <<"Cap">> => integer(),
%%   <<"Days">> => integer()
%% }
-type journey_timeframe_cap() :: #{binary() => any()}.


%% Example:
%% event_dimensions() :: #{
%%   <<"Attributes">> => map(),
%%   <<"EventType">> => set_dimension(),
%%   <<"Metrics">> => map()
%% }
-type event_dimensions() :: #{binary() => any()}.


%% Example:
%% g_cm_channel_request() :: #{
%%   <<"ApiKey">> => string(),
%%   <<"DefaultAuthenticationMethod">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"ServiceJson">> => string()
%% }
-type g_cm_channel_request() :: #{binary() => any()}.


%% Example:
%% voice_template_request() :: #{
%%   <<"Body">> => string(),
%%   <<"DefaultSubstitutions">> => string(),
%%   <<"LanguageCode">> => string(),
%%   <<"TemplateDescription">> => string(),
%%   <<"VoiceId">> => string(),
%%   <<"tags">> => map()
%% }
-type voice_template_request() :: #{binary() => any()}.


%% Example:
%% email_message() :: #{
%%   <<"Body">> => string(),
%%   <<"FeedbackForwardingAddress">> => string(),
%%   <<"FromAddress">> => string(),
%%   <<"RawEmail">> => raw_email(),
%%   <<"ReplyToAddresses">> => list(string()),
%%   <<"SimpleEmail">> => simple_email(),
%%   <<"Substitutions">> => map()
%% }
-type email_message() :: #{binary() => any()}.


%% Example:
%% delete_segment_response() :: #{
%%   <<"SegmentResponse">> => segment_response()
%% }
-type delete_segment_response() :: #{binary() => any()}.


%% Example:
%% create_sms_template_response() :: #{
%%   <<"CreateTemplateMessageBody">> => create_template_message_body()
%% }
-type create_sms_template_response() :: #{binary() => any()}.


%% Example:
%% create_export_job_request() :: #{
%%   <<"ExportJobRequest">> := export_job_request()
%% }
-type create_export_job_request() :: #{binary() => any()}.


%% Example:
%% segment_import_resource() :: #{
%%   <<"ChannelCounts">> => map(),
%%   <<"ExternalId">> => string(),
%%   <<"Format">> => list(any()),
%%   <<"RoleArn">> => string(),
%%   <<"S3Url">> => string(),
%%   <<"Size">> => integer()
%% }
-type segment_import_resource() :: #{binary() => any()}.

%% Example:
%% delete_adm_channel_request() :: #{}
-type delete_adm_channel_request() :: #{}.

%% Example:
%% delete_recommender_configuration_request() :: #{}
-type delete_recommender_configuration_request() :: #{}.


%% Example:
%% update_apns_voip_sandbox_channel_response() :: #{
%%   <<"APNSVoipSandboxChannelResponse">> => a_p_n_s_voip_sandbox_channel_response()
%% }
-type update_apns_voip_sandbox_channel_response() :: #{binary() => any()}.


%% Example:
%% journey_email_message() :: #{
%%   <<"FromAddress">> => string()
%% }
-type journey_email_message() :: #{binary() => any()}.


%% Example:
%% delete_apns_channel_response() :: #{
%%   <<"APNSChannelResponse">> => a_p_n_s_channel_response()
%% }
-type delete_apns_channel_response() :: #{binary() => any()}.


%% Example:
%% a_p_n_s_sandbox_channel_request() :: #{
%%   <<"BundleId">> => string(),
%%   <<"Certificate">> => string(),
%%   <<"DefaultAuthenticationMethod">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"PrivateKey">> => string(),
%%   <<"TeamId">> => string(),
%%   <<"TokenKey">> => string(),
%%   <<"TokenKeyId">> => string()
%% }
-type a_p_n_s_sandbox_channel_request() :: #{binary() => any()}.


%% Example:
%% segment_group() :: #{
%%   <<"Dimensions">> => list(segment_dimensions()),
%%   <<"SourceSegments">> => list(segment_reference()),
%%   <<"SourceType">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type segment_group() :: #{binary() => any()}.


%% Example:
%% journey_sms_message() :: #{
%%   <<"EntityId">> => string(),
%%   <<"MessageType">> => list(any()),
%%   <<"OriginationNumber">> => string(),
%%   <<"SenderId">> => string(),
%%   <<"TemplateId">> => string()
%% }
-type journey_sms_message() :: #{binary() => any()}.


%% Example:
%% g_p_s_coordinates() :: #{
%%   <<"Latitude">> => float(),
%%   <<"Longitude">> => float()
%% }
-type g_p_s_coordinates() :: #{binary() => any()}.


%% Example:
%% get_app_response() :: #{
%%   <<"ApplicationResponse">> => application_response()
%% }
-type get_app_response() :: #{binary() => any()}.


%% Example:
%% email_message_activity() :: #{
%%   <<"MessageConfig">> => journey_email_message(),
%%   <<"NextActivity">> => string(),
%%   <<"TemplateName">> => string(),
%%   <<"TemplateVersion">> => string()
%% }
-type email_message_activity() :: #{binary() => any()}.

%% Example:
%% get_event_stream_request() :: #{}
-type get_event_stream_request() :: #{}.


%% Example:
%% get_recommender_configurations_response() :: #{
%%   <<"ListRecommenderConfigurationsResponse">> => list_recommender_configurations_response()
%% }
-type get_recommender_configurations_response() :: #{binary() => any()}.


%% Example:
%% schedule() :: #{
%%   <<"EndTime">> => string(),
%%   <<"EventFilter">> => campaign_event_filter(),
%%   <<"Frequency">> => list(any()),
%%   <<"IsLocalTime">> => boolean(),
%%   <<"QuietTime">> => quiet_time(),
%%   <<"StartTime">> => string(),
%%   <<"Timezone">> => string()
%% }
-type schedule() :: #{binary() => any()}.


%% Example:
%% delete_push_template_response() :: #{
%%   <<"MessageBody">> => message_body()
%% }
-type delete_push_template_response() :: #{binary() => any()}.


%% Example:
%% a_p_n_s_voip_channel_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"DefaultAuthenticationMethod">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"HasCredential">> => boolean(),
%%   <<"HasTokenKey">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"IsArchived">> => boolean(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"Platform">> => string(),
%%   <<"Version">> => integer()
%% }
-type a_p_n_s_voip_channel_response() :: #{binary() => any()}.

%% Example:
%% delete_user_endpoints_request() :: #{}
-type delete_user_endpoints_request() :: #{}.


%% Example:
%% list_journeys_request() :: #{
%%   <<"PageSize">> => string(),
%%   <<"Token">> => string()
%% }
-type list_journeys_request() :: #{binary() => any()}.


%% Example:
%% email_template_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"DefaultSubstitutions">> => string(),
%%   <<"Headers">> => list(message_header()),
%%   <<"HtmlPart">> => string(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"RecommenderId">> => string(),
%%   <<"Subject">> => string(),
%%   <<"TemplateDescription">> => string(),
%%   <<"TemplateName">> => string(),
%%   <<"TemplateType">> => list(any()),
%%   <<"TextPart">> => string(),
%%   <<"Version">> => string(),
%%   <<"tags">> => map()
%% }
-type email_template_response() :: #{binary() => any()}.


%% Example:
%% update_sms_template_request() :: #{
%%   <<"CreateNewVersion">> => boolean(),
%%   <<"SMSTemplateRequest">> := sms_template_request(),
%%   <<"Version">> => string()
%% }
-type update_sms_template_request() :: #{binary() => any()}.


%% Example:
%% get_journey_execution_activity_metrics_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => string()
%% }
-type get_journey_execution_activity_metrics_request() :: #{binary() => any()}.


%% Example:
%% event() :: #{
%%   <<"AppPackageName">> => string(),
%%   <<"AppTitle">> => string(),
%%   <<"AppVersionCode">> => string(),
%%   <<"Attributes">> => map(),
%%   <<"ClientSdkVersion">> => string(),
%%   <<"EventType">> => string(),
%%   <<"Metrics">> => map(),
%%   <<"SdkName">> => string(),
%%   <<"Session">> => session(),
%%   <<"Timestamp">> => string()
%% }
-type event() :: #{binary() => any()}.


%% Example:
%% a_p_n_s_sandbox_channel_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"DefaultAuthenticationMethod">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"HasCredential">> => boolean(),
%%   <<"HasTokenKey">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"IsArchived">> => boolean(),
%%   <<"LastModifiedBy">> => string(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"Platform">> => string(),
%%   <<"Version">> => integer()
%% }
-type a_p_n_s_sandbox_channel_response() :: #{binary() => any()}.


%% Example:
%% activities_response() :: #{
%%   <<"Item">> => list(activity_response()),
%%   <<"NextToken">> => string()
%% }
-type activities_response() :: #{binary() => any()}.

%% Example:
%% delete_app_request() :: #{}
-type delete_app_request() :: #{}.


%% Example:
%% send_messages_response() :: #{
%%   <<"MessageResponse">> => message_response()
%% }
-type send_messages_response() :: #{binary() => any()}.


%% Example:
%% in_app_messages_response() :: #{
%%   <<"InAppMessageCampaigns">> => list(in_app_message_campaign())
%% }
-type in_app_messages_response() :: #{binary() => any()}.

%% Example:
%% delete_endpoint_request() :: #{}
-type delete_endpoint_request() :: #{}.


%% Example:
%% get_voice_template_response() :: #{
%%   <<"VoiceTemplateResponse">> => voice_template_response()
%% }
-type get_voice_template_response() :: #{binary() => any()}.


%% Example:
%% create_template_message_body() :: #{
%%   <<"Arn">> => string(),
%%   <<"Message">> => string(),
%%   <<"RequestID">> => string()
%% }
-type create_template_message_body() :: #{binary() => any()}.


%% Example:
%% voice_template_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Body">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"DefaultSubstitutions">> => string(),
%%   <<"LanguageCode">> => string(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"TemplateDescription">> => string(),
%%   <<"TemplateName">> => string(),
%%   <<"TemplateType">> => list(any()),
%%   <<"Version">> => string(),
%%   <<"VoiceId">> => string(),
%%   <<"tags">> => map()
%% }
-type voice_template_response() :: #{binary() => any()}.

%% Example:
%% get_adm_channel_request() :: #{}
-type get_adm_channel_request() :: #{}.


%% Example:
%% update_apns_sandbox_channel_response() :: #{
%%   <<"APNSSandboxChannelResponse">> => a_p_n_s_sandbox_channel_response()
%% }
-type update_apns_sandbox_channel_response() :: #{binary() => any()}.


%% Example:
%% get_import_job_response() :: #{
%%   <<"ImportJobResponse">> => import_job_response()
%% }
-type get_import_job_response() :: #{binary() => any()}.


%% Example:
%% get_journey_run_execution_activity_metrics_response() :: #{
%%   <<"JourneyRunExecutionActivityMetricsResponse">> => journey_run_execution_activity_metrics_response()
%% }
-type get_journey_run_execution_activity_metrics_response() :: #{binary() => any()}.


%% Example:
%% send_users_messages_request() :: #{
%%   <<"SendUsersMessageRequest">> := send_users_message_request()
%% }
-type send_users_messages_request() :: #{binary() => any()}.


%% Example:
%% export_job_request() :: #{
%%   <<"RoleArn">> => string(),
%%   <<"S3UrlPrefix">> => string(),
%%   <<"SegmentId">> => string(),
%%   <<"SegmentVersion">> => integer()
%% }
-type export_job_request() :: #{binary() => any()}.


%% Example:
%% write_campaign_request() :: #{
%%   <<"AdditionalTreatments">> => list(write_treatment_resource()),
%%   <<"CustomDeliveryConfiguration">> => custom_delivery_configuration(),
%%   <<"Description">> => string(),
%%   <<"HoldoutPercent">> => integer(),
%%   <<"Hook">> => campaign_hook(),
%%   <<"IsPaused">> => boolean(),
%%   <<"Limits">> => campaign_limits(),
%%   <<"MessageConfiguration">> => message_configuration(),
%%   <<"Name">> => string(),
%%   <<"Priority">> => integer(),
%%   <<"Schedule">> => schedule(),
%%   <<"SegmentId">> => string(),
%%   <<"SegmentVersion">> => integer(),
%%   <<"TemplateConfiguration">> => template_configuration(),
%%   <<"TreatmentDescription">> => string(),
%%   <<"TreatmentName">> => string(),
%%   <<"tags">> => map()
%% }
-type write_campaign_request() :: #{binary() => any()}.


%% Example:
%% get_baidu_channel_response() :: #{
%%   <<"BaiduChannelResponse">> => baidu_channel_response()
%% }
-type get_baidu_channel_response() :: #{binary() => any()}.


%% Example:
%% campaign_custom_message() :: #{
%%   <<"Data">> => string()
%% }
-type campaign_custom_message() :: #{binary() => any()}.


%% Example:
%% email_channel_request() :: #{
%%   <<"ConfigurationSet">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"FromAddress">> => string(),
%%   <<"Identity">> => string(),
%%   <<"OrchestrationSendingRoleArn">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type email_channel_request() :: #{binary() => any()}.


%% Example:
%% create_campaign_request() :: #{
%%   <<"WriteCampaignRequest">> := write_campaign_request()
%% }
-type create_campaign_request() :: #{binary() => any()}.


%% Example:
%% events_response() :: #{
%%   <<"Results">> => map()
%% }
-type events_response() :: #{binary() => any()}.


%% Example:
%% default_button_configuration() :: #{
%%   <<"BackgroundColor">> => string(),
%%   <<"BorderRadius">> => integer(),
%%   <<"ButtonAction">> => list(any()),
%%   <<"Link">> => string(),
%%   <<"Text">> => string(),
%%   <<"TextColor">> => string()
%% }
-type default_button_configuration() :: #{binary() => any()}.


%% Example:
%% journey_runs_response() :: #{
%%   <<"Item">> => list(journey_run_response()),
%%   <<"NextToken">> => string()
%% }
-type journey_runs_response() :: #{binary() => any()}.


%% Example:
%% sms_template_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Body">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"DefaultSubstitutions">> => string(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"RecommenderId">> => string(),
%%   <<"TemplateDescription">> => string(),
%%   <<"TemplateName">> => string(),
%%   <<"TemplateType">> => list(any()),
%%   <<"Version">> => string(),
%%   <<"tags">> => map()
%% }
-type sms_template_response() :: #{binary() => any()}.


%% Example:
%% segments_response() :: #{
%%   <<"Item">> => list(segment_response()),
%%   <<"NextToken">> => string()
%% }
-type segments_response() :: #{binary() => any()}.


%% Example:
%% closed_days() :: #{
%%   <<"CUSTOM">> => list(closed_days_rule()),
%%   <<"EMAIL">> => list(closed_days_rule()),
%%   <<"PUSH">> => list(closed_days_rule()),
%%   <<"SMS">> => list(closed_days_rule()),
%%   <<"VOICE">> => list(closed_days_rule())
%% }
-type closed_days() :: #{binary() => any()}.


%% Example:
%% delete_event_stream_response() :: #{
%%   <<"EventStream">> => event_stream()
%% }
-type delete_event_stream_response() :: #{binary() => any()}.


%% Example:
%% delete_sms_template_response() :: #{
%%   <<"MessageBody">> => message_body()
%% }
-type delete_sms_template_response() :: #{binary() => any()}.


%% Example:
%% get_segment_versions_request() :: #{
%%   <<"PageSize">> => string(),
%%   <<"Token">> => string()
%% }
-type get_segment_versions_request() :: #{binary() => any()}.


%% Example:
%% channels_response() :: #{
%%   <<"Channels">> => map()
%% }
-type channels_response() :: #{binary() => any()}.


%% Example:
%% get_recommender_configurations_request() :: #{
%%   <<"PageSize">> => string(),
%%   <<"Token">> => string()
%% }
-type get_recommender_configurations_request() :: #{binary() => any()}.


%% Example:
%% get_journey_date_range_kpi_response() :: #{
%%   <<"JourneyDateRangeKpiResponse">> => journey_date_range_kpi_response()
%% }
-type get_journey_date_range_kpi_response() :: #{binary() => any()}.


%% Example:
%% create_journey_request() :: #{
%%   <<"WriteJourneyRequest">> := write_journey_request()
%% }
-type create_journey_request() :: #{binary() => any()}.


%% Example:
%% get_sms_template_response() :: #{
%%   <<"SMSTemplateResponse">> => sms_template_response()
%% }
-type get_sms_template_response() :: #{binary() => any()}.


%% Example:
%% segment_demographics() :: #{
%%   <<"AppVersion">> => set_dimension(),
%%   <<"Channel">> => set_dimension(),
%%   <<"DeviceType">> => set_dimension(),
%%   <<"Make">> => set_dimension(),
%%   <<"Model">> => set_dimension(),
%%   <<"Platform">> => set_dimension()
%% }
-type segment_demographics() :: #{binary() => any()}.


%% Example:
%% application_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"tags">> => map()
%% }
-type application_response() :: #{binary() => any()}.


%% Example:
%% update_voice_channel_response() :: #{
%%   <<"VoiceChannelResponse">> => voice_channel_response()
%% }
-type update_voice_channel_response() :: #{binary() => any()}.


%% Example:
%% send_users_messages_response() :: #{
%%   <<"SendUsersMessageResponse">> => send_users_message_response()
%% }
-type send_users_messages_response() :: #{binary() => any()}.


%% Example:
%% list_templates_response() :: #{
%%   <<"TemplatesResponse">> => templates_response()
%% }
-type list_templates_response() :: #{binary() => any()}.


%% Example:
%% default_message() :: #{
%%   <<"Body">> => string(),
%%   <<"Substitutions">> => map()
%% }
-type default_message() :: #{binary() => any()}.


%% Example:
%% remove_attributes_response() :: #{
%%   <<"AttributesResource">> => attributes_resource()
%% }
-type remove_attributes_response() :: #{binary() => any()}.


%% Example:
%% get_export_jobs_request() :: #{
%%   <<"PageSize">> => string(),
%%   <<"Token">> => string()
%% }
-type get_export_jobs_request() :: #{binary() => any()}.


%% Example:
%% campaign_email_message() :: #{
%%   <<"Body">> => string(),
%%   <<"FromAddress">> => string(),
%%   <<"Headers">> => list(message_header()),
%%   <<"HtmlBody">> => string(),
%%   <<"Title">> => string()
%% }
-type campaign_email_message() :: #{binary() => any()}.


%% Example:
%% ad_m_channel_request() :: #{
%%   <<"ClientId">> => string(),
%%   <<"ClientSecret">> => string(),
%%   <<"Enabled">> => boolean()
%% }
-type ad_m_channel_request() :: #{binary() => any()}.


%% Example:
%% update_apns_voip_channel_request() :: #{
%%   <<"APNSVoipChannelRequest">> := a_p_n_s_voip_channel_request()
%% }
-type update_apns_voip_channel_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% create_sms_template_request() :: #{
%%   <<"SMSTemplateRequest">> := sms_template_request()
%% }
-type create_sms_template_request() :: #{binary() => any()}.


%% Example:
%% sms_template_request() :: #{
%%   <<"Body">> => string(),
%%   <<"DefaultSubstitutions">> => string(),
%%   <<"RecommenderId">> => string(),
%%   <<"TemplateDescription">> => string(),
%%   <<"tags">> => map()
%% }
-type sms_template_request() :: #{binary() => any()}.


%% Example:
%% segment_behaviors() :: #{
%%   <<"Recency">> => recency_dimension()
%% }
-type segment_behaviors() :: #{binary() => any()}.


%% Example:
%% a_p_n_s_voip_sandbox_channel_request() :: #{
%%   <<"BundleId">> => string(),
%%   <<"Certificate">> => string(),
%%   <<"DefaultAuthenticationMethod">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"PrivateKey">> => string(),
%%   <<"TeamId">> => string(),
%%   <<"TokenKey">> => string(),
%%   <<"TokenKeyId">> => string()
%% }
-type a_p_n_s_voip_sandbox_channel_request() :: #{binary() => any()}.


%% Example:
%% create_voice_template_response() :: #{
%%   <<"CreateTemplateMessageBody">> => create_template_message_body()
%% }
-type create_voice_template_response() :: #{binary() => any()}.


%% Example:
%% template_configuration() :: #{
%%   <<"EmailTemplate">> => template(),
%%   <<"InAppTemplate">> => template(),
%%   <<"PushTemplate">> => template(),
%%   <<"SMSTemplate">> => template(),
%%   <<"VoiceTemplate">> => template()
%% }
-type template_configuration() :: #{binary() => any()}.

%% Example:
%% get_application_settings_request() :: #{}
-type get_application_settings_request() :: #{}.


%% Example:
%% create_recommender_configuration_request() :: #{
%%   <<"CreateRecommenderConfiguration">> := create_recommender_configuration_shape()
%% }
-type create_recommender_configuration_request() :: #{binary() => any()}.


%% Example:
%% item_response() :: #{
%%   <<"EndpointItemResponse">> => endpoint_item_response(),
%%   <<"EventsItemResponse">> => map()
%% }
-type item_response() :: #{binary() => any()}.


%% Example:
%% internal_server_error_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestID">> => string()
%% }
-type internal_server_error_exception() :: #{binary() => any()}.


%% Example:
%% override_button_configuration() :: #{
%%   <<"ButtonAction">> => list(any()),
%%   <<"Link">> => string()
%% }
-type override_button_configuration() :: #{binary() => any()}.


%% Example:
%% start_condition() :: #{
%%   <<"Description">> => string(),
%%   <<"EventStartCondition">> => event_start_condition(),
%%   <<"SegmentStartCondition">> => segment_condition()
%% }
-type start_condition() :: #{binary() => any()}.


%% Example:
%% endpoint_demographic() :: #{
%%   <<"AppVersion">> => string(),
%%   <<"Locale">> => string(),
%%   <<"Make">> => string(),
%%   <<"Model">> => string(),
%%   <<"ModelVersion">> => string(),
%%   <<"Platform">> => string(),
%%   <<"PlatformVersion">> => string(),
%%   <<"Timezone">> => string()
%% }
-type endpoint_demographic() :: #{binary() => any()}.


%% Example:
%% get_segment_export_jobs_request() :: #{
%%   <<"PageSize">> => string(),
%%   <<"Token">> => string()
%% }
-type get_segment_export_jobs_request() :: #{binary() => any()}.


%% Example:
%% message_request() :: #{
%%   <<"Addresses">> => map(),
%%   <<"Context">> => map(),
%%   <<"Endpoints">> => map(),
%%   <<"MessageConfiguration">> => direct_message_configuration(),
%%   <<"TemplateConfiguration">> => template_configuration(),
%%   <<"TraceId">> => string()
%% }
-type message_request() :: #{binary() => any()}.


%% Example:
%% endpoint_request() :: #{
%%   <<"Address">> => string(),
%%   <<"Attributes">> => map(),
%%   <<"ChannelType">> => list(any()),
%%   <<"Demographic">> => endpoint_demographic(),
%%   <<"EffectiveDate">> => string(),
%%   <<"EndpointStatus">> => string(),
%%   <<"Location">> => endpoint_location(),
%%   <<"Metrics">> => map(),
%%   <<"OptOut">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"User">> => endpoint_user()
%% }
-type endpoint_request() :: #{binary() => any()}.


%% Example:
%% get_campaign_response() :: #{
%%   <<"CampaignResponse">> => campaign_response()
%% }
-type get_campaign_response() :: #{binary() => any()}.


%% Example:
%% attribute_dimension() :: #{
%%   <<"AttributeType">> => list(any()),
%%   <<"Values">> => list(string())
%% }
-type attribute_dimension() :: #{binary() => any()}.


%% Example:
%% event_stream() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"DestinationStreamArn">> => string(),
%%   <<"ExternalId">> => string(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"LastUpdatedBy">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type event_stream() :: #{binary() => any()}.

%% Example:
%% delete_apns_channel_request() :: #{}
-type delete_apns_channel_request() :: #{}.


%% Example:
%% sms_channel_request() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"SenderId">> => string(),
%%   <<"ShortCode">> => string()
%% }
-type sms_channel_request() :: #{binary() => any()}.


%% Example:
%% get_campaign_versions_request() :: #{
%%   <<"PageSize">> => string(),
%%   <<"Token">> => string()
%% }
-type get_campaign_versions_request() :: #{binary() => any()}.


%% Example:
%% update_recommender_configuration_response() :: #{
%%   <<"RecommenderConfigurationResponse">> => recommender_configuration_response()
%% }
-type update_recommender_configuration_response() :: #{binary() => any()}.


%% Example:
%% set_dimension() :: #{
%%   <<"DimensionType">> => list(any()),
%%   <<"Values">> => list(string())
%% }
-type set_dimension() :: #{binary() => any()}.


%% Example:
%% update_adm_channel_request() :: #{
%%   <<"ADMChannelRequest">> := ad_m_channel_request()
%% }
-type update_adm_channel_request() :: #{binary() => any()}.


%% Example:
%% write_treatment_resource() :: #{
%%   <<"CustomDeliveryConfiguration">> => custom_delivery_configuration(),
%%   <<"MessageConfiguration">> => message_configuration(),
%%   <<"Schedule">> => schedule(),
%%   <<"SizePercent">> => integer(),
%%   <<"TemplateConfiguration">> => template_configuration(),
%%   <<"TreatmentDescription">> => string(),
%%   <<"TreatmentName">> => string()
%% }
-type write_treatment_resource() :: #{binary() => any()}.


%% Example:
%% update_segment_response() :: #{
%%   <<"SegmentResponse">> => segment_response()
%% }
-type update_segment_response() :: #{binary() => any()}.


%% Example:
%% get_journey_runs_request() :: #{
%%   <<"PageSize">> => string(),
%%   <<"Token">> => string()
%% }
-type get_journey_runs_request() :: #{binary() => any()}.


%% Example:
%% simple_email() :: #{
%%   <<"Headers">> => list(message_header()),
%%   <<"HtmlPart">> => simple_email_part(),
%%   <<"Subject">> => simple_email_part(),
%%   <<"TextPart">> => simple_email_part()
%% }
-type simple_email() :: #{binary() => any()}.


%% Example:
%% get_campaigns_request() :: #{
%%   <<"PageSize">> => string(),
%%   <<"Token">> => string()
%% }
-type get_campaigns_request() :: #{binary() => any()}.


%% Example:
%% get_voice_template_request() :: #{
%%   <<"Version">> => string()
%% }
-type get_voice_template_request() :: #{binary() => any()}.


%% Example:
%% update_application_settings_request() :: #{
%%   <<"WriteApplicationSettingsRequest">> := write_application_settings_request()
%% }
-type update_application_settings_request() :: #{binary() => any()}.


%% Example:
%% get_segment_import_jobs_request() :: #{
%%   <<"PageSize">> => string(),
%%   <<"Token">> => string()
%% }
-type get_segment_import_jobs_request() :: #{binary() => any()}.


%% Example:
%% endpoint_response() :: #{
%%   <<"Address">> => string(),
%%   <<"ApplicationId">> => string(),
%%   <<"Attributes">> => map(),
%%   <<"ChannelType">> => list(any()),
%%   <<"CohortId">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"Demographic">> => endpoint_demographic(),
%%   <<"EffectiveDate">> => string(),
%%   <<"EndpointStatus">> => string(),
%%   <<"Id">> => string(),
%%   <<"Location">> => endpoint_location(),
%%   <<"Metrics">> => map(),
%%   <<"OptOut">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"User">> => endpoint_user()
%% }
-type endpoint_response() :: #{binary() => any()}.


%% Example:
%% multi_conditional_split_activity() :: #{
%%   <<"Branches">> => list(multi_conditional_branch()),
%%   <<"DefaultActivity">> => string(),
%%   <<"EvaluationWaitTime">> => wait_time()
%% }
-type multi_conditional_split_activity() :: #{binary() => any()}.

%% Example:
%% delete_voice_channel_request() :: #{}
-type delete_voice_channel_request() :: #{}.


%% Example:
%% journey_limits() :: #{
%%   <<"DailyCap">> => integer(),
%%   <<"EndpointReentryCap">> => integer(),
%%   <<"EndpointReentryInterval">> => string(),
%%   <<"MessagesPerSecond">> => integer(),
%%   <<"TimeframeCap">> => journey_timeframe_cap(),
%%   <<"TotalCap">> => integer()
%% }
-type journey_limits() :: #{binary() => any()}.

%% Example:
%% delete_segment_request() :: #{}
-type delete_segment_request() :: #{}.


%% Example:
%% write_application_settings_request() :: #{
%%   <<"CampaignHook">> => campaign_hook(),
%%   <<"CloudWatchMetricsEnabled">> => boolean(),
%%   <<"EventTaggingEnabled">> => boolean(),
%%   <<"JourneyLimits">> => application_settings_journey_limits(),
%%   <<"Limits">> => campaign_limits(),
%%   <<"QuietTime">> => quiet_time()
%% }
-type write_application_settings_request() :: #{binary() => any()}.


%% Example:
%% get_in_app_messages_response() :: #{
%%   <<"InAppMessagesResponse">> => in_app_messages_response()
%% }
-type get_in_app_messages_response() :: #{binary() => any()}.


%% Example:
%% default_push_notification_message() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Body">> => string(),
%%   <<"Data">> => map(),
%%   <<"SilentPush">> => boolean(),
%%   <<"Substitutions">> => map(),
%%   <<"Title">> => string(),
%%   <<"Url">> => string()
%% }
-type default_push_notification_message() :: #{binary() => any()}.


%% Example:
%% get_segment_version_response() :: #{
%%   <<"SegmentResponse">> => segment_response()
%% }
-type get_segment_version_response() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestID">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% tags_model() :: #{
%%   <<"tags">> => map()
%% }
-type tags_model() :: #{binary() => any()}.


%% Example:
%% segment_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreationDate">> => string(),
%%   <<"Dimensions">> => segment_dimensions(),
%%   <<"Id">> => string(),
%%   <<"ImportDefinition">> => segment_import_resource(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"Name">> => string(),
%%   <<"SegmentGroups">> => segment_group_list(),
%%   <<"SegmentType">> => list(any()),
%%   <<"Version">> => integer(),
%%   <<"tags">> => map()
%% }
-type segment_response() :: #{binary() => any()}.


%% Example:
%% get_email_template_response() :: #{
%%   <<"EmailTemplateResponse">> => email_template_response()
%% }
-type get_email_template_response() :: #{binary() => any()}.


%% Example:
%% get_campaigns_response() :: #{
%%   <<"CampaignsResponse">> => campaigns_response()
%% }
-type get_campaigns_response() :: #{binary() => any()}.


%% Example:
%% verify_o_t_p_message_response() :: #{
%%   <<"VerificationResponse">> => verification_response()
%% }
-type verify_o_t_p_message_response() :: #{binary() => any()}.


%% Example:
%% in_app_message_campaign() :: #{
%%   <<"CampaignId">> => string(),
%%   <<"DailyCap">> => integer(),
%%   <<"InAppMessage">> => in_app_message(),
%%   <<"Priority">> => integer(),
%%   <<"Schedule">> => in_app_campaign_schedule(),
%%   <<"SessionCap">> => integer(),
%%   <<"TotalCap">> => integer(),
%%   <<"TreatmentId">> => string()
%% }
-type in_app_message_campaign() :: #{binary() => any()}.


%% Example:
%% create_recommender_configuration_shape() :: #{
%%   <<"Attributes">> => map(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"RecommendationProviderIdType">> => string(),
%%   <<"RecommendationProviderRoleArn">> => string(),
%%   <<"RecommendationProviderUri">> => string(),
%%   <<"RecommendationTransformerUri">> => string(),
%%   <<"RecommendationsDisplayName">> => string(),
%%   <<"RecommendationsPerMessage">> => integer()
%% }
-type create_recommender_configuration_shape() :: #{binary() => any()}.


%% Example:
%% get_email_template_request() :: #{
%%   <<"Version">> => string()
%% }
-type get_email_template_request() :: #{binary() => any()}.


%% Example:
%% update_campaign_request() :: #{
%%   <<"WriteCampaignRequest">> := write_campaign_request()
%% }
-type update_campaign_request() :: #{binary() => any()}.


%% Example:
%% journey_state_request() :: #{
%%   <<"State">> => list(any())
%% }
-type journey_state_request() :: #{binary() => any()}.


%% Example:
%% update_email_template_response() :: #{
%%   <<"MessageBody">> => message_body()
%% }
-type update_email_template_response() :: #{binary() => any()}.


%% Example:
%% android_push_notification_template() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Body">> => string(),
%%   <<"ImageIconUrl">> => string(),
%%   <<"ImageUrl">> => string(),
%%   <<"RawContent">> => string(),
%%   <<"SmallImageIconUrl">> => string(),
%%   <<"Sound">> => string(),
%%   <<"Title">> => string(),
%%   <<"Url">> => string()
%% }
-type android_push_notification_template() :: #{binary() => any()}.


%% Example:
%% export_job_resource() :: #{
%%   <<"RoleArn">> => string(),
%%   <<"S3UrlPrefix">> => string(),
%%   <<"SegmentId">> => string(),
%%   <<"SegmentVersion">> => integer()
%% }
-type export_job_resource() :: #{binary() => any()}.


%% Example:
%% template() :: #{
%%   <<"Name">> => string(),
%%   <<"Version">> => string()
%% }
-type template() :: #{binary() => any()}.


%% Example:
%% delete_journey_response() :: #{
%%   <<"JourneyResponse">> => journey_response()
%% }
-type delete_journey_response() :: #{binary() => any()}.


%% Example:
%% multi_conditional_branch() :: #{
%%   <<"Condition">> => simple_condition(),
%%   <<"NextActivity">> => string()
%% }
-type multi_conditional_branch() :: #{binary() => any()}.

%% Example:
%% delete_event_stream_request() :: #{}
-type delete_event_stream_request() :: #{}.


%% Example:
%% update_application_settings_response() :: #{
%%   <<"ApplicationSettingsResource">> => application_settings_resource()
%% }
-type update_application_settings_response() :: #{binary() => any()}.


%% Example:
%% get_in_app_template_request() :: #{
%%   <<"Version">> => string()
%% }
-type get_in_app_template_request() :: #{binary() => any()}.


%% Example:
%% delete_adm_channel_response() :: #{
%%   <<"ADMChannelResponse">> => ad_m_channel_response()
%% }
-type delete_adm_channel_response() :: #{binary() => any()}.


%% Example:
%% update_in_app_template_response() :: #{
%%   <<"MessageBody">> => message_body()
%% }
-type update_in_app_template_response() :: #{binary() => any()}.

%% Example:
%% get_apns_sandbox_channel_request() :: #{}
-type get_apns_sandbox_channel_request() :: #{}.


%% Example:
%% create_journey_response() :: #{
%%   <<"JourneyResponse">> => journey_response()
%% }
-type create_journey_response() :: #{binary() => any()}.


%% Example:
%% send_users_message_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Result">> => map()
%% }
-type send_users_message_response() :: #{binary() => any()}.


%% Example:
%% get_journey_date_range_kpi_request() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => string(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type get_journey_date_range_kpi_request() :: #{binary() => any()}.


%% Example:
%% create_app_response() :: #{
%%   <<"ApplicationResponse">> => application_response()
%% }
-type create_app_response() :: #{binary() => any()}.


%% Example:
%% get_apns_sandbox_channel_response() :: #{
%%   <<"APNSSandboxChannelResponse">> => a_p_n_s_sandbox_channel_response()
%% }
-type get_apns_sandbox_channel_response() :: #{binary() => any()}.


%% Example:
%% random_split_activity() :: #{
%%   <<"Branches">> => list(random_split_entry())
%% }
-type random_split_activity() :: #{binary() => any()}.


%% Example:
%% get_journey_execution_activity_metrics_response() :: #{
%%   <<"JourneyExecutionActivityMetricsResponse">> => journey_execution_activity_metrics_response()
%% }
-type get_journey_execution_activity_metrics_response() :: #{binary() => any()}.


%% Example:
%% segment_group_list() :: #{
%%   <<"Groups">> => list(segment_group()),
%%   <<"Include">> => list(any())
%% }
-type segment_group_list() :: #{binary() => any()}.


%% Example:
%% in_app_template_request() :: #{
%%   <<"Content">> => list(in_app_message_content()),
%%   <<"CustomConfig">> => map(),
%%   <<"Layout">> => list(any()),
%%   <<"TemplateDescription">> => string(),
%%   <<"tags">> => map()
%% }
-type in_app_template_request() :: #{binary() => any()}.


%% Example:
%% create_campaign_response() :: #{
%%   <<"CampaignResponse">> => campaign_response()
%% }
-type create_campaign_response() :: #{binary() => any()}.

%% Example:
%% get_endpoint_request() :: #{}
-type get_endpoint_request() :: #{}.

%% Example:
%% get_email_channel_request() :: #{}
-type get_email_channel_request() :: #{}.


%% Example:
%% journey_channel_settings() :: #{
%%   <<"ConnectCampaignArn">> => string(),
%%   <<"ConnectCampaignExecutionRoleArn">> => string()
%% }
-type journey_channel_settings() :: #{binary() => any()}.


%% Example:
%% number_validate_response() :: #{
%%   <<"Carrier">> => string(),
%%   <<"City">> => string(),
%%   <<"CleansedPhoneNumberE164">> => string(),
%%   <<"CleansedPhoneNumberNational">> => string(),
%%   <<"Country">> => string(),
%%   <<"CountryCodeIso2">> => string(),
%%   <<"CountryCodeNumeric">> => string(),
%%   <<"County">> => string(),
%%   <<"OriginalCountryCodeIso2">> => string(),
%%   <<"OriginalPhoneNumber">> => string(),
%%   <<"PhoneType">> => string(),
%%   <<"PhoneTypeCode">> => integer(),
%%   <<"Timezone">> => string(),
%%   <<"ZipCode">> => string()
%% }
-type number_validate_response() :: #{binary() => any()}.


%% Example:
%% delete_sms_channel_response() :: #{
%%   <<"SMSChannelResponse">> => sms_channel_response()
%% }
-type delete_sms_channel_response() :: #{binary() => any()}.


%% Example:
%% g_cm_message() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Body">> => string(),
%%   <<"CollapseKey">> => string(),
%%   <<"Data">> => map(),
%%   <<"IconReference">> => string(),
%%   <<"ImageIconUrl">> => string(),
%%   <<"ImageUrl">> => string(),
%%   <<"PreferredAuthenticationMethod">> => string(),
%%   <<"Priority">> => string(),
%%   <<"RawContent">> => string(),
%%   <<"RestrictedPackageName">> => string(),
%%   <<"SilentPush">> => boolean(),
%%   <<"SmallImageIconUrl">> => string(),
%%   <<"Sound">> => string(),
%%   <<"Substitutions">> => map(),
%%   <<"TimeToLive">> => integer(),
%%   <<"Title">> => string(),
%%   <<"Url">> => string()
%% }
-type g_cm_message() :: #{binary() => any()}.

%% Example:
%% delete_sms_channel_request() :: #{}
-type delete_sms_channel_request() :: #{}.


%% Example:
%% list_journeys_response() :: #{
%%   <<"JourneysResponse">> => journeys_response()
%% }
-type list_journeys_response() :: #{binary() => any()}.


%% Example:
%% get_gcm_channel_response() :: #{
%%   <<"GCMChannelResponse">> => g_cm_channel_response()
%% }
-type get_gcm_channel_response() :: #{binary() => any()}.


%% Example:
%% in_app_message_button() :: #{
%%   <<"Android">> => override_button_configuration(),
%%   <<"DefaultConfig">> => default_button_configuration(),
%%   <<"IOS">> => override_button_configuration(),
%%   <<"Web">> => override_button_configuration()
%% }
-type in_app_message_button() :: #{binary() => any()}.


%% Example:
%% wait_activity() :: #{
%%   <<"NextActivity">> => string(),
%%   <<"WaitTime">> => wait_time()
%% }
-type wait_activity() :: #{binary() => any()}.


%% Example:
%% journey_date_range_kpi_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"JourneyId">> => string(),
%%   <<"KpiName">> => string(),
%%   <<"KpiResult">> => base_kpi_result(),
%%   <<"NextToken">> => string(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type journey_date_range_kpi_response() :: #{binary() => any()}.


%% Example:
%% get_journey_run_execution_metrics_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => string()
%% }
-type get_journey_run_execution_metrics_request() :: #{binary() => any()}.


%% Example:
%% endpoint_item_response() :: #{
%%   <<"Message">> => string(),
%%   <<"StatusCode">> => integer()
%% }
-type endpoint_item_response() :: #{binary() => any()}.


%% Example:
%% get_journey_run_execution_activity_metrics_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PageSize">> => string()
%% }
-type get_journey_run_execution_activity_metrics_request() :: #{binary() => any()}.


%% Example:
%% delete_in_app_template_request() :: #{
%%   <<"Version">> => string()
%% }
-type delete_in_app_template_request() :: #{binary() => any()}.


%% Example:
%% update_apns_channel_request() :: #{
%%   <<"APNSChannelRequest">> := a_p_n_s_channel_request()
%% }
-type update_apns_channel_request() :: #{binary() => any()}.


%% Example:
%% update_recommender_configuration_request() :: #{
%%   <<"UpdateRecommenderConfiguration">> := update_recommender_configuration_shape()
%% }
-type update_recommender_configuration_request() :: #{binary() => any()}.


%% Example:
%% create_email_template_response() :: #{
%%   <<"CreateTemplateMessageBody">> => create_template_message_body()
%% }
-type create_email_template_response() :: #{binary() => any()}.


%% Example:
%% create_in_app_template_request() :: #{
%%   <<"InAppTemplateRequest">> := in_app_template_request()
%% }
-type create_in_app_template_request() :: #{binary() => any()}.


%% Example:
%% delete_sms_template_request() :: #{
%%   <<"Version">> => string()
%% }
-type delete_sms_template_request() :: #{binary() => any()}.

%% Example:
%% get_gcm_channel_request() :: #{}
-type get_gcm_channel_request() :: #{}.


%% Example:
%% endpoint_user() :: #{
%%   <<"UserAttributes">> => map(),
%%   <<"UserId">> => string()
%% }
-type endpoint_user() :: #{binary() => any()}.


%% Example:
%% custom_message_activity() :: #{
%%   <<"DeliveryUri">> => string(),
%%   <<"EndpointTypes">> => list(list(any())()),
%%   <<"MessageConfig">> => journey_custom_message(),
%%   <<"NextActivity">> => string(),
%%   <<"TemplateName">> => string(),
%%   <<"TemplateVersion">> => string()
%% }
-type custom_message_activity() :: #{binary() => any()}.


%% Example:
%% ad_m_message() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Body">> => string(),
%%   <<"ConsolidationKey">> => string(),
%%   <<"Data">> => map(),
%%   <<"ExpiresAfter">> => string(),
%%   <<"IconReference">> => string(),
%%   <<"ImageIconUrl">> => string(),
%%   <<"ImageUrl">> => string(),
%%   <<"MD5">> => string(),
%%   <<"RawContent">> => string(),
%%   <<"SilentPush">> => boolean(),
%%   <<"SmallImageIconUrl">> => string(),
%%   <<"Sound">> => string(),
%%   <<"Substitutions">> => map(),
%%   <<"Title">> => string(),
%%   <<"Url">> => string()
%% }
-type ad_m_message() :: #{binary() => any()}.


%% Example:
%% get_segments_request() :: #{
%%   <<"PageSize">> => string(),
%%   <<"Token">> => string()
%% }
-type get_segments_request() :: #{binary() => any()}.


%% Example:
%% in_app_template_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Content">> => list(in_app_message_content()),
%%   <<"CreationDate">> => string(),
%%   <<"CustomConfig">> => map(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"Layout">> => list(any()),
%%   <<"TemplateDescription">> => string(),
%%   <<"TemplateName">> => string(),
%%   <<"TemplateType">> => list(any()),
%%   <<"Version">> => string(),
%%   <<"tags">> => map()
%% }
-type in_app_template_response() :: #{binary() => any()}.


%% Example:
%% message() :: #{
%%   <<"Action">> => list(any()),
%%   <<"Body">> => string(),
%%   <<"ImageIconUrl">> => string(),
%%   <<"ImageSmallIconUrl">> => string(),
%%   <<"ImageUrl">> => string(),
%%   <<"JsonBody">> => string(),
%%   <<"MediaUrl">> => string(),
%%   <<"RawContent">> => string(),
%%   <<"SilentPush">> => boolean(),
%%   <<"TimeToLive">> => integer(),
%%   <<"Title">> => string(),
%%   <<"Url">> => string()
%% }
-type message() :: #{binary() => any()}.


%% Example:
%% public_endpoint() :: #{
%%   <<"Address">> => string(),
%%   <<"Attributes">> => map(),
%%   <<"ChannelType">> => list(any()),
%%   <<"Demographic">> => endpoint_demographic(),
%%   <<"EffectiveDate">> => string(),
%%   <<"EndpointStatus">> => string(),
%%   <<"Location">> => endpoint_location(),
%%   <<"Metrics">> => map(),
%%   <<"OptOut">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"User">> => endpoint_user()
%% }
-type public_endpoint() :: #{binary() => any()}.


%% Example:
%% recommender_configuration_response() :: #{
%%   <<"Attributes">> => map(),
%%   <<"CreationDate">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedDate">> => string(),
%%   <<"Name">> => string(),
%%   <<"RecommendationProviderIdType">> => string(),
%%   <<"RecommendationProviderRoleArn">> => string(),
%%   <<"RecommendationProviderUri">> => string(),
%%   <<"RecommendationTransformerUri">> => string(),
%%   <<"RecommendationsDisplayName">> => string(),
%%   <<"RecommendationsPerMessage">> => integer()
%% }
-type recommender_configuration_response() :: #{binary() => any()}.

-type create_app_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type create_campaign_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type create_email_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type create_export_job_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type create_import_job_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type create_in_app_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type create_journey_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type create_push_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type create_recommender_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type create_segment_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type create_sms_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type create_voice_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_adm_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_apns_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_apns_sandbox_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_apns_voip_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_apns_voip_sandbox_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_app_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_baidu_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_campaign_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_email_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_email_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_endpoint_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_event_stream_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_gcm_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_in_app_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_journey_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_push_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_recommender_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_segment_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_sms_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_sms_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_user_endpoints_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_voice_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type delete_voice_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_adm_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_apns_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_apns_sandbox_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_apns_voip_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_apns_voip_sandbox_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_app_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_application_date_range_kpi_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_application_settings_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_apps_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_baidu_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_campaign_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_campaign_activities_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_campaign_date_range_kpi_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_campaign_version_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_campaign_versions_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_campaigns_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_channels_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_email_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_email_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_endpoint_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_event_stream_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_export_job_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_export_jobs_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_gcm_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_import_job_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_import_jobs_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_in_app_messages_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_in_app_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_journey_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_journey_date_range_kpi_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_journey_execution_activity_metrics_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_journey_execution_metrics_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_journey_run_execution_activity_metrics_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_journey_run_execution_metrics_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_journey_runs_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_push_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_recommender_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_recommender_configurations_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_segment_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_segment_export_jobs_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_segment_import_jobs_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_segment_version_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_segment_versions_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_segments_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_sms_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_sms_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_user_endpoints_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_voice_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type get_voice_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type list_journeys_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type list_template_versions_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type list_templates_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type phone_number_validate_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type put_event_stream_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type put_events_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type remove_attributes_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type send_messages_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type send_o_t_p_message_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type send_users_messages_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_adm_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_apns_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_apns_sandbox_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_apns_voip_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_apns_voip_sandbox_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_application_settings_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_baidu_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_campaign_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_email_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_email_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_endpoint_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_endpoints_batch_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_gcm_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_in_app_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_journey_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    conflict_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_journey_state_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_push_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_recommender_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_segment_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_sms_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_sms_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_template_active_version_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_voice_channel_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type update_voice_template_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

-type verify_o_t_p_message_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    payload_too_large_exception() | 
    too_many_requests_exception() | 
    method_not_allowed_exception() | 
    forbidden_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an application.
-spec create_app(aws_client:aws_client(), create_app_request()) ->
    {ok, create_app_response(), tuple()} |
    {error, any()} |
    {error, create_app_errors(), tuple()}.
create_app(Client, Input) ->
    create_app(Client, Input, []).

-spec create_app(aws_client:aws_client(), create_app_request(), proplists:proplist()) ->
    {ok, create_app_response(), tuple()} |
    {error, any()} |
    {error, create_app_errors(), tuple()}.
create_app(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps"],
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

%% @doc Creates a new campaign for an application or updates the settings of
%% an existing campaign for an application.
-spec create_campaign(aws_client:aws_client(), binary() | list(), create_campaign_request()) ->
    {ok, create_campaign_response(), tuple()} |
    {error, any()} |
    {error, create_campaign_errors(), tuple()}.
create_campaign(Client, ApplicationId, Input) ->
    create_campaign(Client, ApplicationId, Input, []).

-spec create_campaign(aws_client:aws_client(), binary() | list(), create_campaign_request(), proplists:proplist()) ->
    {ok, create_campaign_response(), tuple()} |
    {error, any()} |
    {error, create_campaign_errors(), tuple()}.
create_campaign(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/campaigns"],
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

%% @doc Creates a message template for messages that are sent through the
%% email channel.
-spec create_email_template(aws_client:aws_client(), binary() | list(), create_email_template_request()) ->
    {ok, create_email_template_response(), tuple()} |
    {error, any()} |
    {error, create_email_template_errors(), tuple()}.
create_email_template(Client, TemplateName, Input) ->
    create_email_template(Client, TemplateName, Input, []).

-spec create_email_template(aws_client:aws_client(), binary() | list(), create_email_template_request(), proplists:proplist()) ->
    {ok, create_email_template_response(), tuple()} |
    {error, any()} |
    {error, create_email_template_errors(), tuple()}.
create_email_template(Client, TemplateName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/email"],
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

%% @doc Creates an export job for an application.
-spec create_export_job(aws_client:aws_client(), binary() | list(), create_export_job_request()) ->
    {ok, create_export_job_response(), tuple()} |
    {error, any()} |
    {error, create_export_job_errors(), tuple()}.
create_export_job(Client, ApplicationId, Input) ->
    create_export_job(Client, ApplicationId, Input, []).

-spec create_export_job(aws_client:aws_client(), binary() | list(), create_export_job_request(), proplists:proplist()) ->
    {ok, create_export_job_response(), tuple()} |
    {error, any()} |
    {error, create_export_job_errors(), tuple()}.
create_export_job(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/jobs/export"],
    SuccessStatusCode = 202,
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

%% @doc Creates an import job for an application.
-spec create_import_job(aws_client:aws_client(), binary() | list(), create_import_job_request()) ->
    {ok, create_import_job_response(), tuple()} |
    {error, any()} |
    {error, create_import_job_errors(), tuple()}.
create_import_job(Client, ApplicationId, Input) ->
    create_import_job(Client, ApplicationId, Input, []).

-spec create_import_job(aws_client:aws_client(), binary() | list(), create_import_job_request(), proplists:proplist()) ->
    {ok, create_import_job_response(), tuple()} |
    {error, any()} |
    {error, create_import_job_errors(), tuple()}.
create_import_job(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/jobs/import"],
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

%% @doc Creates a new message template for messages using the in-app message
%% channel.
-spec create_in_app_template(aws_client:aws_client(), binary() | list(), create_in_app_template_request()) ->
    {ok, create_in_app_template_response(), tuple()} |
    {error, any()} |
    {error, create_in_app_template_errors(), tuple()}.
create_in_app_template(Client, TemplateName, Input) ->
    create_in_app_template(Client, TemplateName, Input, []).

-spec create_in_app_template(aws_client:aws_client(), binary() | list(), create_in_app_template_request(), proplists:proplist()) ->
    {ok, create_in_app_template_response(), tuple()} |
    {error, any()} |
    {error, create_in_app_template_errors(), tuple()}.
create_in_app_template(Client, TemplateName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/inapp"],
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

%% @doc Creates a journey for an application.
-spec create_journey(aws_client:aws_client(), binary() | list(), create_journey_request()) ->
    {ok, create_journey_response(), tuple()} |
    {error, any()} |
    {error, create_journey_errors(), tuple()}.
create_journey(Client, ApplicationId, Input) ->
    create_journey(Client, ApplicationId, Input, []).

-spec create_journey(aws_client:aws_client(), binary() | list(), create_journey_request(), proplists:proplist()) ->
    {ok, create_journey_response(), tuple()} |
    {error, any()} |
    {error, create_journey_errors(), tuple()}.
create_journey(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/journeys"],
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

%% @doc Creates a message template for messages that are sent through a push
%% notification channel.
-spec create_push_template(aws_client:aws_client(), binary() | list(), create_push_template_request()) ->
    {ok, create_push_template_response(), tuple()} |
    {error, any()} |
    {error, create_push_template_errors(), tuple()}.
create_push_template(Client, TemplateName, Input) ->
    create_push_template(Client, TemplateName, Input, []).

-spec create_push_template(aws_client:aws_client(), binary() | list(), create_push_template_request(), proplists:proplist()) ->
    {ok, create_push_template_response(), tuple()} |
    {error, any()} |
    {error, create_push_template_errors(), tuple()}.
create_push_template(Client, TemplateName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/push"],
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

%% @doc Creates an Amazon Pinpoint configuration for a recommender model.
-spec create_recommender_configuration(aws_client:aws_client(), create_recommender_configuration_request()) ->
    {ok, create_recommender_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_recommender_configuration_errors(), tuple()}.
create_recommender_configuration(Client, Input) ->
    create_recommender_configuration(Client, Input, []).

-spec create_recommender_configuration(aws_client:aws_client(), create_recommender_configuration_request(), proplists:proplist()) ->
    {ok, create_recommender_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_recommender_configuration_errors(), tuple()}.
create_recommender_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/recommenders"],
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

%% @doc Creates a new segment for an application or updates the
%% configuration, dimension, and other settings for an existing segment
%% that's associated with an application.
-spec create_segment(aws_client:aws_client(), binary() | list(), create_segment_request()) ->
    {ok, create_segment_response(), tuple()} |
    {error, any()} |
    {error, create_segment_errors(), tuple()}.
create_segment(Client, ApplicationId, Input) ->
    create_segment(Client, ApplicationId, Input, []).

-spec create_segment(aws_client:aws_client(), binary() | list(), create_segment_request(), proplists:proplist()) ->
    {ok, create_segment_response(), tuple()} |
    {error, any()} |
    {error, create_segment_errors(), tuple()}.
create_segment(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/segments"],
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

%% @doc Creates a message template for messages that are sent through the SMS
%% channel.
-spec create_sms_template(aws_client:aws_client(), binary() | list(), create_sms_template_request()) ->
    {ok, create_sms_template_response(), tuple()} |
    {error, any()} |
    {error, create_sms_template_errors(), tuple()}.
create_sms_template(Client, TemplateName, Input) ->
    create_sms_template(Client, TemplateName, Input, []).

-spec create_sms_template(aws_client:aws_client(), binary() | list(), create_sms_template_request(), proplists:proplist()) ->
    {ok, create_sms_template_response(), tuple()} |
    {error, any()} |
    {error, create_sms_template_errors(), tuple()}.
create_sms_template(Client, TemplateName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/sms"],
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

%% @doc Creates a message template for messages that are sent through the
%% voice channel.
-spec create_voice_template(aws_client:aws_client(), binary() | list(), create_voice_template_request()) ->
    {ok, create_voice_template_response(), tuple()} |
    {error, any()} |
    {error, create_voice_template_errors(), tuple()}.
create_voice_template(Client, TemplateName, Input) ->
    create_voice_template(Client, TemplateName, Input, []).

-spec create_voice_template(aws_client:aws_client(), binary() | list(), create_voice_template_request(), proplists:proplist()) ->
    {ok, create_voice_template_response(), tuple()} |
    {error, any()} |
    {error, create_voice_template_errors(), tuple()}.
create_voice_template(Client, TemplateName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/voice"],
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

%% @doc Disables the ADM channel for an application and deletes any existing
%% settings for the channel.
-spec delete_adm_channel(aws_client:aws_client(), binary() | list(), delete_adm_channel_request()) ->
    {ok, delete_adm_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_adm_channel_errors(), tuple()}.
delete_adm_channel(Client, ApplicationId, Input) ->
    delete_adm_channel(Client, ApplicationId, Input, []).

-spec delete_adm_channel(aws_client:aws_client(), binary() | list(), delete_adm_channel_request(), proplists:proplist()) ->
    {ok, delete_adm_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_adm_channel_errors(), tuple()}.
delete_adm_channel(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/adm"],
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

%% @doc Disables the APNs channel for an application and deletes any existing
%% settings for the channel.
-spec delete_apns_channel(aws_client:aws_client(), binary() | list(), delete_apns_channel_request()) ->
    {ok, delete_apns_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_apns_channel_errors(), tuple()}.
delete_apns_channel(Client, ApplicationId, Input) ->
    delete_apns_channel(Client, ApplicationId, Input, []).

-spec delete_apns_channel(aws_client:aws_client(), binary() | list(), delete_apns_channel_request(), proplists:proplist()) ->
    {ok, delete_apns_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_apns_channel_errors(), tuple()}.
delete_apns_channel(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns"],
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

%% @doc Disables the APNs sandbox channel for an application and deletes any
%% existing settings for the channel.
-spec delete_apns_sandbox_channel(aws_client:aws_client(), binary() | list(), delete_apns_sandbox_channel_request()) ->
    {ok, delete_apns_sandbox_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_apns_sandbox_channel_errors(), tuple()}.
delete_apns_sandbox_channel(Client, ApplicationId, Input) ->
    delete_apns_sandbox_channel(Client, ApplicationId, Input, []).

-spec delete_apns_sandbox_channel(aws_client:aws_client(), binary() | list(), delete_apns_sandbox_channel_request(), proplists:proplist()) ->
    {ok, delete_apns_sandbox_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_apns_sandbox_channel_errors(), tuple()}.
delete_apns_sandbox_channel(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns_sandbox"],
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

%% @doc Disables the APNs VoIP channel for an application and deletes any
%% existing settings for the channel.
-spec delete_apns_voip_channel(aws_client:aws_client(), binary() | list(), delete_apns_voip_channel_request()) ->
    {ok, delete_apns_voip_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_apns_voip_channel_errors(), tuple()}.
delete_apns_voip_channel(Client, ApplicationId, Input) ->
    delete_apns_voip_channel(Client, ApplicationId, Input, []).

-spec delete_apns_voip_channel(aws_client:aws_client(), binary() | list(), delete_apns_voip_channel_request(), proplists:proplist()) ->
    {ok, delete_apns_voip_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_apns_voip_channel_errors(), tuple()}.
delete_apns_voip_channel(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns_voip"],
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

%% @doc Disables the APNs VoIP sandbox channel for an application and deletes
%% any existing settings for the channel.
-spec delete_apns_voip_sandbox_channel(aws_client:aws_client(), binary() | list(), delete_apns_voip_sandbox_channel_request()) ->
    {ok, delete_apns_voip_sandbox_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_apns_voip_sandbox_channel_errors(), tuple()}.
delete_apns_voip_sandbox_channel(Client, ApplicationId, Input) ->
    delete_apns_voip_sandbox_channel(Client, ApplicationId, Input, []).

-spec delete_apns_voip_sandbox_channel(aws_client:aws_client(), binary() | list(), delete_apns_voip_sandbox_channel_request(), proplists:proplist()) ->
    {ok, delete_apns_voip_sandbox_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_apns_voip_sandbox_channel_errors(), tuple()}.
delete_apns_voip_sandbox_channel(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns_voip_sandbox"],
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

%% @doc Deletes an application.
-spec delete_app(aws_client:aws_client(), binary() | list(), delete_app_request()) ->
    {ok, delete_app_response(), tuple()} |
    {error, any()} |
    {error, delete_app_errors(), tuple()}.
delete_app(Client, ApplicationId, Input) ->
    delete_app(Client, ApplicationId, Input, []).

-spec delete_app(aws_client:aws_client(), binary() | list(), delete_app_request(), proplists:proplist()) ->
    {ok, delete_app_response(), tuple()} |
    {error, any()} |
    {error, delete_app_errors(), tuple()}.
delete_app(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), ""],
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

%% @doc Disables the Baidu channel for an application and deletes any
%% existing settings for the channel.
-spec delete_baidu_channel(aws_client:aws_client(), binary() | list(), delete_baidu_channel_request()) ->
    {ok, delete_baidu_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_baidu_channel_errors(), tuple()}.
delete_baidu_channel(Client, ApplicationId, Input) ->
    delete_baidu_channel(Client, ApplicationId, Input, []).

-spec delete_baidu_channel(aws_client:aws_client(), binary() | list(), delete_baidu_channel_request(), proplists:proplist()) ->
    {ok, delete_baidu_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_baidu_channel_errors(), tuple()}.
delete_baidu_channel(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/baidu"],
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

%% @doc Deletes a campaign from an application.
-spec delete_campaign(aws_client:aws_client(), binary() | list(), binary() | list(), delete_campaign_request()) ->
    {ok, delete_campaign_response(), tuple()} |
    {error, any()} |
    {error, delete_campaign_errors(), tuple()}.
delete_campaign(Client, ApplicationId, CampaignId, Input) ->
    delete_campaign(Client, ApplicationId, CampaignId, Input, []).

-spec delete_campaign(aws_client:aws_client(), binary() | list(), binary() | list(), delete_campaign_request(), proplists:proplist()) ->
    {ok, delete_campaign_response(), tuple()} |
    {error, any()} |
    {error, delete_campaign_errors(), tuple()}.
delete_campaign(Client, ApplicationId, CampaignId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/campaigns/", aws_util:encode_uri(CampaignId), ""],
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

%% @doc Disables the email channel for an application and deletes any
%% existing settings for the channel.
-spec delete_email_channel(aws_client:aws_client(), binary() | list(), delete_email_channel_request()) ->
    {ok, delete_email_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_email_channel_errors(), tuple()}.
delete_email_channel(Client, ApplicationId, Input) ->
    delete_email_channel(Client, ApplicationId, Input, []).

-spec delete_email_channel(aws_client:aws_client(), binary() | list(), delete_email_channel_request(), proplists:proplist()) ->
    {ok, delete_email_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_email_channel_errors(), tuple()}.
delete_email_channel(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/email"],
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

%% @doc Deletes a message template for messages that were sent through the
%% email channel.
-spec delete_email_template(aws_client:aws_client(), binary() | list(), delete_email_template_request()) ->
    {ok, delete_email_template_response(), tuple()} |
    {error, any()} |
    {error, delete_email_template_errors(), tuple()}.
delete_email_template(Client, TemplateName, Input) ->
    delete_email_template(Client, TemplateName, Input, []).

-spec delete_email_template(aws_client:aws_client(), binary() | list(), delete_email_template_request(), proplists:proplist()) ->
    {ok, delete_email_template_response(), tuple()} |
    {error, any()} |
    {error, delete_email_template_errors(), tuple()}.
delete_email_template(Client, TemplateName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/email"],
    SuccessStatusCode = 202,
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
                     {<<"version">>, <<"Version">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an endpoint from an application.
-spec delete_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), delete_endpoint_request()) ->
    {ok, delete_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_endpoint_errors(), tuple()}.
delete_endpoint(Client, ApplicationId, EndpointId, Input) ->
    delete_endpoint(Client, ApplicationId, EndpointId, Input, []).

-spec delete_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), delete_endpoint_request(), proplists:proplist()) ->
    {ok, delete_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_endpoint_errors(), tuple()}.
delete_endpoint(Client, ApplicationId, EndpointId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/endpoints/", aws_util:encode_uri(EndpointId), ""],
    SuccessStatusCode = 202,
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

%% @doc Deletes the event stream for an application.
-spec delete_event_stream(aws_client:aws_client(), binary() | list(), delete_event_stream_request()) ->
    {ok, delete_event_stream_response(), tuple()} |
    {error, any()} |
    {error, delete_event_stream_errors(), tuple()}.
delete_event_stream(Client, ApplicationId, Input) ->
    delete_event_stream(Client, ApplicationId, Input, []).

-spec delete_event_stream(aws_client:aws_client(), binary() | list(), delete_event_stream_request(), proplists:proplist()) ->
    {ok, delete_event_stream_response(), tuple()} |
    {error, any()} |
    {error, delete_event_stream_errors(), tuple()}.
delete_event_stream(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/eventstream"],
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

%% @doc Disables the GCM channel for an application and deletes any existing
%% settings for the channel.
-spec delete_gcm_channel(aws_client:aws_client(), binary() | list(), delete_gcm_channel_request()) ->
    {ok, delete_gcm_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_gcm_channel_errors(), tuple()}.
delete_gcm_channel(Client, ApplicationId, Input) ->
    delete_gcm_channel(Client, ApplicationId, Input, []).

-spec delete_gcm_channel(aws_client:aws_client(), binary() | list(), delete_gcm_channel_request(), proplists:proplist()) ->
    {ok, delete_gcm_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_gcm_channel_errors(), tuple()}.
delete_gcm_channel(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/gcm"],
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

%% @doc Deletes a message template for messages sent using the in-app message
%% channel.
-spec delete_in_app_template(aws_client:aws_client(), binary() | list(), delete_in_app_template_request()) ->
    {ok, delete_in_app_template_response(), tuple()} |
    {error, any()} |
    {error, delete_in_app_template_errors(), tuple()}.
delete_in_app_template(Client, TemplateName, Input) ->
    delete_in_app_template(Client, TemplateName, Input, []).

-spec delete_in_app_template(aws_client:aws_client(), binary() | list(), delete_in_app_template_request(), proplists:proplist()) ->
    {ok, delete_in_app_template_response(), tuple()} |
    {error, any()} |
    {error, delete_in_app_template_errors(), tuple()}.
delete_in_app_template(Client, TemplateName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/inapp"],
    SuccessStatusCode = 202,
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
                     {<<"version">>, <<"Version">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a journey from an application.
-spec delete_journey(aws_client:aws_client(), binary() | list(), binary() | list(), delete_journey_request()) ->
    {ok, delete_journey_response(), tuple()} |
    {error, any()} |
    {error, delete_journey_errors(), tuple()}.
delete_journey(Client, ApplicationId, JourneyId, Input) ->
    delete_journey(Client, ApplicationId, JourneyId, Input, []).

-spec delete_journey(aws_client:aws_client(), binary() | list(), binary() | list(), delete_journey_request(), proplists:proplist()) ->
    {ok, delete_journey_response(), tuple()} |
    {error, any()} |
    {error, delete_journey_errors(), tuple()}.
delete_journey(Client, ApplicationId, JourneyId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/journeys/", aws_util:encode_uri(JourneyId), ""],
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

%% @doc Deletes a message template for messages that were sent through a push
%% notification channel.
-spec delete_push_template(aws_client:aws_client(), binary() | list(), delete_push_template_request()) ->
    {ok, delete_push_template_response(), tuple()} |
    {error, any()} |
    {error, delete_push_template_errors(), tuple()}.
delete_push_template(Client, TemplateName, Input) ->
    delete_push_template(Client, TemplateName, Input, []).

-spec delete_push_template(aws_client:aws_client(), binary() | list(), delete_push_template_request(), proplists:proplist()) ->
    {ok, delete_push_template_response(), tuple()} |
    {error, any()} |
    {error, delete_push_template_errors(), tuple()}.
delete_push_template(Client, TemplateName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/push"],
    SuccessStatusCode = 202,
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
                     {<<"version">>, <<"Version">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Amazon Pinpoint configuration for a recommender model.
-spec delete_recommender_configuration(aws_client:aws_client(), binary() | list(), delete_recommender_configuration_request()) ->
    {ok, delete_recommender_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_recommender_configuration_errors(), tuple()}.
delete_recommender_configuration(Client, RecommenderId, Input) ->
    delete_recommender_configuration(Client, RecommenderId, Input, []).

-spec delete_recommender_configuration(aws_client:aws_client(), binary() | list(), delete_recommender_configuration_request(), proplists:proplist()) ->
    {ok, delete_recommender_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_recommender_configuration_errors(), tuple()}.
delete_recommender_configuration(Client, RecommenderId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/recommenders/", aws_util:encode_uri(RecommenderId), ""],
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

%% @doc Deletes a segment from an application.
-spec delete_segment(aws_client:aws_client(), binary() | list(), binary() | list(), delete_segment_request()) ->
    {ok, delete_segment_response(), tuple()} |
    {error, any()} |
    {error, delete_segment_errors(), tuple()}.
delete_segment(Client, ApplicationId, SegmentId, Input) ->
    delete_segment(Client, ApplicationId, SegmentId, Input, []).

-spec delete_segment(aws_client:aws_client(), binary() | list(), binary() | list(), delete_segment_request(), proplists:proplist()) ->
    {ok, delete_segment_response(), tuple()} |
    {error, any()} |
    {error, delete_segment_errors(), tuple()}.
delete_segment(Client, ApplicationId, SegmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/segments/", aws_util:encode_uri(SegmentId), ""],
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

%% @doc Disables the SMS channel for an application and deletes any existing
%% settings for the channel.
-spec delete_sms_channel(aws_client:aws_client(), binary() | list(), delete_sms_channel_request()) ->
    {ok, delete_sms_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_sms_channel_errors(), tuple()}.
delete_sms_channel(Client, ApplicationId, Input) ->
    delete_sms_channel(Client, ApplicationId, Input, []).

-spec delete_sms_channel(aws_client:aws_client(), binary() | list(), delete_sms_channel_request(), proplists:proplist()) ->
    {ok, delete_sms_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_sms_channel_errors(), tuple()}.
delete_sms_channel(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/sms"],
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

%% @doc Deletes a message template for messages that were sent through the
%% SMS channel.
-spec delete_sms_template(aws_client:aws_client(), binary() | list(), delete_sms_template_request()) ->
    {ok, delete_sms_template_response(), tuple()} |
    {error, any()} |
    {error, delete_sms_template_errors(), tuple()}.
delete_sms_template(Client, TemplateName, Input) ->
    delete_sms_template(Client, TemplateName, Input, []).

-spec delete_sms_template(aws_client:aws_client(), binary() | list(), delete_sms_template_request(), proplists:proplist()) ->
    {ok, delete_sms_template_response(), tuple()} |
    {error, any()} |
    {error, delete_sms_template_errors(), tuple()}.
delete_sms_template(Client, TemplateName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/sms"],
    SuccessStatusCode = 202,
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
                     {<<"version">>, <<"Version">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes all the endpoints that are associated with a specific user
%% ID.
-spec delete_user_endpoints(aws_client:aws_client(), binary() | list(), binary() | list(), delete_user_endpoints_request()) ->
    {ok, delete_user_endpoints_response(), tuple()} |
    {error, any()} |
    {error, delete_user_endpoints_errors(), tuple()}.
delete_user_endpoints(Client, ApplicationId, UserId, Input) ->
    delete_user_endpoints(Client, ApplicationId, UserId, Input, []).

-spec delete_user_endpoints(aws_client:aws_client(), binary() | list(), binary() | list(), delete_user_endpoints_request(), proplists:proplist()) ->
    {ok, delete_user_endpoints_response(), tuple()} |
    {error, any()} |
    {error, delete_user_endpoints_errors(), tuple()}.
delete_user_endpoints(Client, ApplicationId, UserId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/users/", aws_util:encode_uri(UserId), ""],
    SuccessStatusCode = 202,
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

%% @doc Disables the voice channel for an application and deletes any
%% existing settings for the channel.
-spec delete_voice_channel(aws_client:aws_client(), binary() | list(), delete_voice_channel_request()) ->
    {ok, delete_voice_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_voice_channel_errors(), tuple()}.
delete_voice_channel(Client, ApplicationId, Input) ->
    delete_voice_channel(Client, ApplicationId, Input, []).

-spec delete_voice_channel(aws_client:aws_client(), binary() | list(), delete_voice_channel_request(), proplists:proplist()) ->
    {ok, delete_voice_channel_response(), tuple()} |
    {error, any()} |
    {error, delete_voice_channel_errors(), tuple()}.
delete_voice_channel(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/voice"],
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

%% @doc Deletes a message template for messages that were sent through the
%% voice channel.
-spec delete_voice_template(aws_client:aws_client(), binary() | list(), delete_voice_template_request()) ->
    {ok, delete_voice_template_response(), tuple()} |
    {error, any()} |
    {error, delete_voice_template_errors(), tuple()}.
delete_voice_template(Client, TemplateName, Input) ->
    delete_voice_template(Client, TemplateName, Input, []).

-spec delete_voice_template(aws_client:aws_client(), binary() | list(), delete_voice_template_request(), proplists:proplist()) ->
    {ok, delete_voice_template_response(), tuple()} |
    {error, any()} |
    {error, delete_voice_template_errors(), tuple()}.
delete_voice_template(Client, TemplateName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/voice"],
    SuccessStatusCode = 202,
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
                     {<<"version">>, <<"Version">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the ADM
%% channel for an application.
-spec get_adm_channel(aws_client:aws_client(), binary() | list()) ->
    {ok, get_adm_channel_response(), tuple()} |
    {error, any()} |
    {error, get_adm_channel_errors(), tuple()}.
get_adm_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_adm_channel(Client, ApplicationId, #{}, #{}).

-spec get_adm_channel(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_adm_channel_response(), tuple()} |
    {error, any()} |
    {error, get_adm_channel_errors(), tuple()}.
get_adm_channel(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_adm_channel(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_adm_channel(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_adm_channel_response(), tuple()} |
    {error, any()} |
    {error, get_adm_channel_errors(), tuple()}.
get_adm_channel(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/adm"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the APNs
%% channel for an application.
-spec get_apns_channel(aws_client:aws_client(), binary() | list()) ->
    {ok, get_apns_channel_response(), tuple()} |
    {error, any()} |
    {error, get_apns_channel_errors(), tuple()}.
get_apns_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_apns_channel(Client, ApplicationId, #{}, #{}).

-spec get_apns_channel(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_apns_channel_response(), tuple()} |
    {error, any()} |
    {error, get_apns_channel_errors(), tuple()}.
get_apns_channel(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_apns_channel(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_apns_channel(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_apns_channel_response(), tuple()} |
    {error, any()} |
    {error, get_apns_channel_errors(), tuple()}.
get_apns_channel(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the APNs
%% sandbox channel for an application.
-spec get_apns_sandbox_channel(aws_client:aws_client(), binary() | list()) ->
    {ok, get_apns_sandbox_channel_response(), tuple()} |
    {error, any()} |
    {error, get_apns_sandbox_channel_errors(), tuple()}.
get_apns_sandbox_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_apns_sandbox_channel(Client, ApplicationId, #{}, #{}).

-spec get_apns_sandbox_channel(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_apns_sandbox_channel_response(), tuple()} |
    {error, any()} |
    {error, get_apns_sandbox_channel_errors(), tuple()}.
get_apns_sandbox_channel(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_apns_sandbox_channel(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_apns_sandbox_channel(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_apns_sandbox_channel_response(), tuple()} |
    {error, any()} |
    {error, get_apns_sandbox_channel_errors(), tuple()}.
get_apns_sandbox_channel(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns_sandbox"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the APNs VoIP
%% channel for an application.
-spec get_apns_voip_channel(aws_client:aws_client(), binary() | list()) ->
    {ok, get_apns_voip_channel_response(), tuple()} |
    {error, any()} |
    {error, get_apns_voip_channel_errors(), tuple()}.
get_apns_voip_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_apns_voip_channel(Client, ApplicationId, #{}, #{}).

-spec get_apns_voip_channel(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_apns_voip_channel_response(), tuple()} |
    {error, any()} |
    {error, get_apns_voip_channel_errors(), tuple()}.
get_apns_voip_channel(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_apns_voip_channel(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_apns_voip_channel(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_apns_voip_channel_response(), tuple()} |
    {error, any()} |
    {error, get_apns_voip_channel_errors(), tuple()}.
get_apns_voip_channel(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns_voip"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the APNs VoIP
%% sandbox channel for an application.
-spec get_apns_voip_sandbox_channel(aws_client:aws_client(), binary() | list()) ->
    {ok, get_apns_voip_sandbox_channel_response(), tuple()} |
    {error, any()} |
    {error, get_apns_voip_sandbox_channel_errors(), tuple()}.
get_apns_voip_sandbox_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_apns_voip_sandbox_channel(Client, ApplicationId, #{}, #{}).

-spec get_apns_voip_sandbox_channel(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_apns_voip_sandbox_channel_response(), tuple()} |
    {error, any()} |
    {error, get_apns_voip_sandbox_channel_errors(), tuple()}.
get_apns_voip_sandbox_channel(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_apns_voip_sandbox_channel(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_apns_voip_sandbox_channel(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_apns_voip_sandbox_channel_response(), tuple()} |
    {error, any()} |
    {error, get_apns_voip_sandbox_channel_errors(), tuple()}.
get_apns_voip_sandbox_channel(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns_voip_sandbox"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an application.
-spec get_app(aws_client:aws_client(), binary() | list()) ->
    {ok, get_app_response(), tuple()} |
    {error, any()} |
    {error, get_app_errors(), tuple()}.
get_app(Client, ApplicationId)
  when is_map(Client) ->
    get_app(Client, ApplicationId, #{}, #{}).

-spec get_app(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_app_response(), tuple()} |
    {error, any()} |
    {error, get_app_errors(), tuple()}.
get_app(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_app(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_app(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_app_response(), tuple()} |
    {error, any()} |
    {error, get_app_errors(), tuple()}.
get_app(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves (queries) pre-aggregated data for a standard metric that
%% applies to an application.
-spec get_application_date_range_kpi(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_application_date_range_kpi_response(), tuple()} |
    {error, any()} |
    {error, get_application_date_range_kpi_errors(), tuple()}.
get_application_date_range_kpi(Client, ApplicationId, KpiName)
  when is_map(Client) ->
    get_application_date_range_kpi(Client, ApplicationId, KpiName, #{}, #{}).

-spec get_application_date_range_kpi(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_application_date_range_kpi_response(), tuple()} |
    {error, any()} |
    {error, get_application_date_range_kpi_errors(), tuple()}.
get_application_date_range_kpi(Client, ApplicationId, KpiName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application_date_range_kpi(Client, ApplicationId, KpiName, QueryMap, HeadersMap, []).

-spec get_application_date_range_kpi(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_application_date_range_kpi_response(), tuple()} |
    {error, any()} |
    {error, get_application_date_range_kpi_errors(), tuple()}.
get_application_date_range_kpi(Client, ApplicationId, KpiName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/kpis/daterange/", aws_util:encode_uri(KpiName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"end-time">>, maps:get(<<"end-time">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)},
        {<<"start-time">>, maps:get(<<"start-time">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the settings for an application.
-spec get_application_settings(aws_client:aws_client(), binary() | list()) ->
    {ok, get_application_settings_response(), tuple()} |
    {error, any()} |
    {error, get_application_settings_errors(), tuple()}.
get_application_settings(Client, ApplicationId)
  when is_map(Client) ->
    get_application_settings(Client, ApplicationId, #{}, #{}).

-spec get_application_settings(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_application_settings_response(), tuple()} |
    {error, any()} |
    {error, get_application_settings_errors(), tuple()}.
get_application_settings(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application_settings(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_application_settings(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_application_settings_response(), tuple()} |
    {error, any()} |
    {error, get_application_settings_errors(), tuple()}.
get_application_settings(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/settings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about all the applications that are associated
%% with your Amazon Pinpoint account.
-spec get_apps(aws_client:aws_client()) ->
    {ok, get_apps_response(), tuple()} |
    {error, any()} |
    {error, get_apps_errors(), tuple()}.
get_apps(Client)
  when is_map(Client) ->
    get_apps(Client, #{}, #{}).

-spec get_apps(aws_client:aws_client(), map(), map()) ->
    {ok, get_apps_response(), tuple()} |
    {error, any()} |
    {error, get_apps_errors(), tuple()}.
get_apps(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_apps(Client, QueryMap, HeadersMap, []).

-spec get_apps(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_apps_response(), tuple()} |
    {error, any()} |
    {error, get_apps_errors(), tuple()}.
get_apps(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)},
        {<<"token">>, maps:get(<<"token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the Baidu
%% channel for an application.
-spec get_baidu_channel(aws_client:aws_client(), binary() | list()) ->
    {ok, get_baidu_channel_response(), tuple()} |
    {error, any()} |
    {error, get_baidu_channel_errors(), tuple()}.
get_baidu_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_baidu_channel(Client, ApplicationId, #{}, #{}).

-spec get_baidu_channel(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_baidu_channel_response(), tuple()} |
    {error, any()} |
    {error, get_baidu_channel_errors(), tuple()}.
get_baidu_channel(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_baidu_channel(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_baidu_channel(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_baidu_channel_response(), tuple()} |
    {error, any()} |
    {error, get_baidu_channel_errors(), tuple()}.
get_baidu_channel(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/baidu"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status, configuration, and other
%% settings for a campaign.
-spec get_campaign(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_campaign_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_errors(), tuple()}.
get_campaign(Client, ApplicationId, CampaignId)
  when is_map(Client) ->
    get_campaign(Client, ApplicationId, CampaignId, #{}, #{}).

-spec get_campaign(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_campaign_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_errors(), tuple()}.
get_campaign(Client, ApplicationId, CampaignId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_campaign(Client, ApplicationId, CampaignId, QueryMap, HeadersMap, []).

-spec get_campaign(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_campaign_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_errors(), tuple()}.
get_campaign(Client, ApplicationId, CampaignId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/campaigns/", aws_util:encode_uri(CampaignId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about all the activities for a campaign.
-spec get_campaign_activities(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_campaign_activities_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_activities_errors(), tuple()}.
get_campaign_activities(Client, ApplicationId, CampaignId)
  when is_map(Client) ->
    get_campaign_activities(Client, ApplicationId, CampaignId, #{}, #{}).

-spec get_campaign_activities(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_campaign_activities_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_activities_errors(), tuple()}.
get_campaign_activities(Client, ApplicationId, CampaignId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_campaign_activities(Client, ApplicationId, CampaignId, QueryMap, HeadersMap, []).

-spec get_campaign_activities(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_campaign_activities_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_activities_errors(), tuple()}.
get_campaign_activities(Client, ApplicationId, CampaignId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/campaigns/", aws_util:encode_uri(CampaignId), "/activities"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)},
        {<<"token">>, maps:get(<<"token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves (queries) pre-aggregated data for a standard metric that
%% applies to a campaign.
-spec get_campaign_date_range_kpi(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_campaign_date_range_kpi_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_date_range_kpi_errors(), tuple()}.
get_campaign_date_range_kpi(Client, ApplicationId, CampaignId, KpiName)
  when is_map(Client) ->
    get_campaign_date_range_kpi(Client, ApplicationId, CampaignId, KpiName, #{}, #{}).

-spec get_campaign_date_range_kpi(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_campaign_date_range_kpi_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_date_range_kpi_errors(), tuple()}.
get_campaign_date_range_kpi(Client, ApplicationId, CampaignId, KpiName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_campaign_date_range_kpi(Client, ApplicationId, CampaignId, KpiName, QueryMap, HeadersMap, []).

-spec get_campaign_date_range_kpi(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_campaign_date_range_kpi_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_date_range_kpi_errors(), tuple()}.
get_campaign_date_range_kpi(Client, ApplicationId, CampaignId, KpiName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/campaigns/", aws_util:encode_uri(CampaignId), "/kpis/daterange/", aws_util:encode_uri(KpiName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"end-time">>, maps:get(<<"end-time">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)},
        {<<"start-time">>, maps:get(<<"start-time">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status, configuration, and other
%% settings for a specific version of a campaign.
-spec get_campaign_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_campaign_version_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_version_errors(), tuple()}.
get_campaign_version(Client, ApplicationId, CampaignId, Version)
  when is_map(Client) ->
    get_campaign_version(Client, ApplicationId, CampaignId, Version, #{}, #{}).

-spec get_campaign_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_campaign_version_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_version_errors(), tuple()}.
get_campaign_version(Client, ApplicationId, CampaignId, Version, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_campaign_version(Client, ApplicationId, CampaignId, Version, QueryMap, HeadersMap, []).

-spec get_campaign_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_campaign_version_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_version_errors(), tuple()}.
get_campaign_version(Client, ApplicationId, CampaignId, Version, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/campaigns/", aws_util:encode_uri(CampaignId), "/versions/", aws_util:encode_uri(Version), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status, configuration, and other
%% settings for all versions of a campaign.
-spec get_campaign_versions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_campaign_versions_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_versions_errors(), tuple()}.
get_campaign_versions(Client, ApplicationId, CampaignId)
  when is_map(Client) ->
    get_campaign_versions(Client, ApplicationId, CampaignId, #{}, #{}).

-spec get_campaign_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_campaign_versions_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_versions_errors(), tuple()}.
get_campaign_versions(Client, ApplicationId, CampaignId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_campaign_versions(Client, ApplicationId, CampaignId, QueryMap, HeadersMap, []).

-spec get_campaign_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_campaign_versions_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_versions_errors(), tuple()}.
get_campaign_versions(Client, ApplicationId, CampaignId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/campaigns/", aws_util:encode_uri(CampaignId), "/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)},
        {<<"token">>, maps:get(<<"token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status, configuration, and other
%% settings for all the campaigns that are associated with an application.
-spec get_campaigns(aws_client:aws_client(), binary() | list()) ->
    {ok, get_campaigns_response(), tuple()} |
    {error, any()} |
    {error, get_campaigns_errors(), tuple()}.
get_campaigns(Client, ApplicationId)
  when is_map(Client) ->
    get_campaigns(Client, ApplicationId, #{}, #{}).

-spec get_campaigns(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_campaigns_response(), tuple()} |
    {error, any()} |
    {error, get_campaigns_errors(), tuple()}.
get_campaigns(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_campaigns(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_campaigns(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_campaigns_response(), tuple()} |
    {error, any()} |
    {error, get_campaigns_errors(), tuple()}.
get_campaigns(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/campaigns"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)},
        {<<"token">>, maps:get(<<"token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the history and status of each channel
%% for an application.
-spec get_channels(aws_client:aws_client(), binary() | list()) ->
    {ok, get_channels_response(), tuple()} |
    {error, any()} |
    {error, get_channels_errors(), tuple()}.
get_channels(Client, ApplicationId)
  when is_map(Client) ->
    get_channels(Client, ApplicationId, #{}, #{}).

-spec get_channels(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_channels_response(), tuple()} |
    {error, any()} |
    {error, get_channels_errors(), tuple()}.
get_channels(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channels(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_channels(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_channels_response(), tuple()} |
    {error, any()} |
    {error, get_channels_errors(), tuple()}.
get_channels(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the email
%% channel for an application.
-spec get_email_channel(aws_client:aws_client(), binary() | list()) ->
    {ok, get_email_channel_response(), tuple()} |
    {error, any()} |
    {error, get_email_channel_errors(), tuple()}.
get_email_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_email_channel(Client, ApplicationId, #{}, #{}).

-spec get_email_channel(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_email_channel_response(), tuple()} |
    {error, any()} |
    {error, get_email_channel_errors(), tuple()}.
get_email_channel(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_email_channel(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_email_channel(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_email_channel_response(), tuple()} |
    {error, any()} |
    {error, get_email_channel_errors(), tuple()}.
get_email_channel(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/email"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the content and settings of a message template for messages
%% that are sent through the email channel.
-spec get_email_template(aws_client:aws_client(), binary() | list()) ->
    {ok, get_email_template_response(), tuple()} |
    {error, any()} |
    {error, get_email_template_errors(), tuple()}.
get_email_template(Client, TemplateName)
  when is_map(Client) ->
    get_email_template(Client, TemplateName, #{}, #{}).

-spec get_email_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_email_template_response(), tuple()} |
    {error, any()} |
    {error, get_email_template_errors(), tuple()}.
get_email_template(Client, TemplateName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_email_template(Client, TemplateName, QueryMap, HeadersMap, []).

-spec get_email_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_email_template_response(), tuple()} |
    {error, any()} |
    {error, get_email_template_errors(), tuple()}.
get_email_template(Client, TemplateName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/email"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"version">>, maps:get(<<"version">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the settings and attributes of a specific
%% endpoint for an application.
-spec get_endpoint(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_endpoint_errors(), tuple()}.
get_endpoint(Client, ApplicationId, EndpointId)
  when is_map(Client) ->
    get_endpoint(Client, ApplicationId, EndpointId, #{}, #{}).

-spec get_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_endpoint_errors(), tuple()}.
get_endpoint(Client, ApplicationId, EndpointId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_endpoint(Client, ApplicationId, EndpointId, QueryMap, HeadersMap, []).

-spec get_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_endpoint_response(), tuple()} |
    {error, any()} |
    {error, get_endpoint_errors(), tuple()}.
get_endpoint(Client, ApplicationId, EndpointId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/endpoints/", aws_util:encode_uri(EndpointId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the event stream settings for an
%% application.
-spec get_event_stream(aws_client:aws_client(), binary() | list()) ->
    {ok, get_event_stream_response(), tuple()} |
    {error, any()} |
    {error, get_event_stream_errors(), tuple()}.
get_event_stream(Client, ApplicationId)
  when is_map(Client) ->
    get_event_stream(Client, ApplicationId, #{}, #{}).

-spec get_event_stream(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_event_stream_response(), tuple()} |
    {error, any()} |
    {error, get_event_stream_errors(), tuple()}.
get_event_stream(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_event_stream(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_event_stream(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_event_stream_response(), tuple()} |
    {error, any()} |
    {error, get_event_stream_errors(), tuple()}.
get_event_stream(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/eventstream"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of a specific
%% export job for an application.
-spec get_export_job(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_export_job_response(), tuple()} |
    {error, any()} |
    {error, get_export_job_errors(), tuple()}.
get_export_job(Client, ApplicationId, JobId)
  when is_map(Client) ->
    get_export_job(Client, ApplicationId, JobId, #{}, #{}).

-spec get_export_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_export_job_response(), tuple()} |
    {error, any()} |
    {error, get_export_job_errors(), tuple()}.
get_export_job(Client, ApplicationId, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_export_job(Client, ApplicationId, JobId, QueryMap, HeadersMap, []).

-spec get_export_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_export_job_response(), tuple()} |
    {error, any()} |
    {error, get_export_job_errors(), tuple()}.
get_export_job(Client, ApplicationId, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/jobs/export/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of all the export
%% jobs for an application.
-spec get_export_jobs(aws_client:aws_client(), binary() | list()) ->
    {ok, get_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, get_export_jobs_errors(), tuple()}.
get_export_jobs(Client, ApplicationId)
  when is_map(Client) ->
    get_export_jobs(Client, ApplicationId, #{}, #{}).

-spec get_export_jobs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, get_export_jobs_errors(), tuple()}.
get_export_jobs(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_export_jobs(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_export_jobs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, get_export_jobs_errors(), tuple()}.
get_export_jobs(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/jobs/export"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)},
        {<<"token">>, maps:get(<<"token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the GCM
%% channel for an application.
-spec get_gcm_channel(aws_client:aws_client(), binary() | list()) ->
    {ok, get_gcm_channel_response(), tuple()} |
    {error, any()} |
    {error, get_gcm_channel_errors(), tuple()}.
get_gcm_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_gcm_channel(Client, ApplicationId, #{}, #{}).

-spec get_gcm_channel(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_gcm_channel_response(), tuple()} |
    {error, any()} |
    {error, get_gcm_channel_errors(), tuple()}.
get_gcm_channel(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_gcm_channel(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_gcm_channel(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_gcm_channel_response(), tuple()} |
    {error, any()} |
    {error, get_gcm_channel_errors(), tuple()}.
get_gcm_channel(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/gcm"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of a specific
%% import job for an application.
-spec get_import_job(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_import_job_errors(), tuple()}.
get_import_job(Client, ApplicationId, JobId)
  when is_map(Client) ->
    get_import_job(Client, ApplicationId, JobId, #{}, #{}).

-spec get_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_import_job_errors(), tuple()}.
get_import_job(Client, ApplicationId, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_import_job(Client, ApplicationId, JobId, QueryMap, HeadersMap, []).

-spec get_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_import_job_response(), tuple()} |
    {error, any()} |
    {error, get_import_job_errors(), tuple()}.
get_import_job(Client, ApplicationId, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/jobs/import/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of all the import
%% jobs for an application.
-spec get_import_jobs(aws_client:aws_client(), binary() | list()) ->
    {ok, get_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, get_import_jobs_errors(), tuple()}.
get_import_jobs(Client, ApplicationId)
  when is_map(Client) ->
    get_import_jobs(Client, ApplicationId, #{}, #{}).

-spec get_import_jobs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, get_import_jobs_errors(), tuple()}.
get_import_jobs(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_import_jobs(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_import_jobs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, get_import_jobs_errors(), tuple()}.
get_import_jobs(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/jobs/import"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)},
        {<<"token">>, maps:get(<<"token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the in-app messages targeted for the provided endpoint ID.
-spec get_in_app_messages(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_in_app_messages_response(), tuple()} |
    {error, any()} |
    {error, get_in_app_messages_errors(), tuple()}.
get_in_app_messages(Client, ApplicationId, EndpointId)
  when is_map(Client) ->
    get_in_app_messages(Client, ApplicationId, EndpointId, #{}, #{}).

-spec get_in_app_messages(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_in_app_messages_response(), tuple()} |
    {error, any()} |
    {error, get_in_app_messages_errors(), tuple()}.
get_in_app_messages(Client, ApplicationId, EndpointId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_in_app_messages(Client, ApplicationId, EndpointId, QueryMap, HeadersMap, []).

-spec get_in_app_messages(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_in_app_messages_response(), tuple()} |
    {error, any()} |
    {error, get_in_app_messages_errors(), tuple()}.
get_in_app_messages(Client, ApplicationId, EndpointId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/endpoints/", aws_util:encode_uri(EndpointId), "/inappmessages"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the content and settings of a message template for messages
%% sent through the in-app channel.
-spec get_in_app_template(aws_client:aws_client(), binary() | list()) ->
    {ok, get_in_app_template_response(), tuple()} |
    {error, any()} |
    {error, get_in_app_template_errors(), tuple()}.
get_in_app_template(Client, TemplateName)
  when is_map(Client) ->
    get_in_app_template(Client, TemplateName, #{}, #{}).

-spec get_in_app_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_in_app_template_response(), tuple()} |
    {error, any()} |
    {error, get_in_app_template_errors(), tuple()}.
get_in_app_template(Client, TemplateName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_in_app_template(Client, TemplateName, QueryMap, HeadersMap, []).

-spec get_in_app_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_in_app_template_response(), tuple()} |
    {error, any()} |
    {error, get_in_app_template_errors(), tuple()}.
get_in_app_template(Client, TemplateName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/inapp"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"version">>, maps:get(<<"version">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status, configuration, and other
%% settings for a journey.
-spec get_journey(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_journey_response(), tuple()} |
    {error, any()} |
    {error, get_journey_errors(), tuple()}.
get_journey(Client, ApplicationId, JourneyId)
  when is_map(Client) ->
    get_journey(Client, ApplicationId, JourneyId, #{}, #{}).

-spec get_journey(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_journey_response(), tuple()} |
    {error, any()} |
    {error, get_journey_errors(), tuple()}.
get_journey(Client, ApplicationId, JourneyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_journey(Client, ApplicationId, JourneyId, QueryMap, HeadersMap, []).

-spec get_journey(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_journey_response(), tuple()} |
    {error, any()} |
    {error, get_journey_errors(), tuple()}.
get_journey(Client, ApplicationId, JourneyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/journeys/", aws_util:encode_uri(JourneyId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves (queries) pre-aggregated data for a standard engagement
%% metric that applies to a journey.
-spec get_journey_date_range_kpi(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_journey_date_range_kpi_response(), tuple()} |
    {error, any()} |
    {error, get_journey_date_range_kpi_errors(), tuple()}.
get_journey_date_range_kpi(Client, ApplicationId, JourneyId, KpiName)
  when is_map(Client) ->
    get_journey_date_range_kpi(Client, ApplicationId, JourneyId, KpiName, #{}, #{}).

-spec get_journey_date_range_kpi(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_journey_date_range_kpi_response(), tuple()} |
    {error, any()} |
    {error, get_journey_date_range_kpi_errors(), tuple()}.
get_journey_date_range_kpi(Client, ApplicationId, JourneyId, KpiName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_journey_date_range_kpi(Client, ApplicationId, JourneyId, KpiName, QueryMap, HeadersMap, []).

-spec get_journey_date_range_kpi(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_journey_date_range_kpi_response(), tuple()} |
    {error, any()} |
    {error, get_journey_date_range_kpi_errors(), tuple()}.
get_journey_date_range_kpi(Client, ApplicationId, JourneyId, KpiName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/journeys/", aws_util:encode_uri(JourneyId), "/kpis/daterange/", aws_util:encode_uri(KpiName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"end-time">>, maps:get(<<"end-time">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)},
        {<<"start-time">>, maps:get(<<"start-time">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves (queries) pre-aggregated data for a standard execution
%% metric that applies to a journey activity.
-spec get_journey_execution_activity_metrics(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_journey_execution_activity_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_journey_execution_activity_metrics_errors(), tuple()}.
get_journey_execution_activity_metrics(Client, ApplicationId, JourneyActivityId, JourneyId)
  when is_map(Client) ->
    get_journey_execution_activity_metrics(Client, ApplicationId, JourneyActivityId, JourneyId, #{}, #{}).

-spec get_journey_execution_activity_metrics(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_journey_execution_activity_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_journey_execution_activity_metrics_errors(), tuple()}.
get_journey_execution_activity_metrics(Client, ApplicationId, JourneyActivityId, JourneyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_journey_execution_activity_metrics(Client, ApplicationId, JourneyActivityId, JourneyId, QueryMap, HeadersMap, []).

-spec get_journey_execution_activity_metrics(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_journey_execution_activity_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_journey_execution_activity_metrics_errors(), tuple()}.
get_journey_execution_activity_metrics(Client, ApplicationId, JourneyActivityId, JourneyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/journeys/", aws_util:encode_uri(JourneyId), "/activities/", aws_util:encode_uri(JourneyActivityId), "/execution-metrics"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves (queries) pre-aggregated data for a standard execution
%% metric that applies to a journey.
-spec get_journey_execution_metrics(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_journey_execution_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_journey_execution_metrics_errors(), tuple()}.
get_journey_execution_metrics(Client, ApplicationId, JourneyId)
  when is_map(Client) ->
    get_journey_execution_metrics(Client, ApplicationId, JourneyId, #{}, #{}).

-spec get_journey_execution_metrics(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_journey_execution_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_journey_execution_metrics_errors(), tuple()}.
get_journey_execution_metrics(Client, ApplicationId, JourneyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_journey_execution_metrics(Client, ApplicationId, JourneyId, QueryMap, HeadersMap, []).

-spec get_journey_execution_metrics(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_journey_execution_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_journey_execution_metrics_errors(), tuple()}.
get_journey_execution_metrics(Client, ApplicationId, JourneyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/journeys/", aws_util:encode_uri(JourneyId), "/execution-metrics"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves (queries) pre-aggregated data for a standard run execution
%% metric that applies to a journey activity.
-spec get_journey_run_execution_activity_metrics(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_journey_run_execution_activity_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_journey_run_execution_activity_metrics_errors(), tuple()}.
get_journey_run_execution_activity_metrics(Client, ApplicationId, JourneyActivityId, JourneyId, RunId)
  when is_map(Client) ->
    get_journey_run_execution_activity_metrics(Client, ApplicationId, JourneyActivityId, JourneyId, RunId, #{}, #{}).

-spec get_journey_run_execution_activity_metrics(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_journey_run_execution_activity_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_journey_run_execution_activity_metrics_errors(), tuple()}.
get_journey_run_execution_activity_metrics(Client, ApplicationId, JourneyActivityId, JourneyId, RunId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_journey_run_execution_activity_metrics(Client, ApplicationId, JourneyActivityId, JourneyId, RunId, QueryMap, HeadersMap, []).

-spec get_journey_run_execution_activity_metrics(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_journey_run_execution_activity_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_journey_run_execution_activity_metrics_errors(), tuple()}.
get_journey_run_execution_activity_metrics(Client, ApplicationId, JourneyActivityId, JourneyId, RunId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/journeys/", aws_util:encode_uri(JourneyId), "/runs/", aws_util:encode_uri(RunId), "/activities/", aws_util:encode_uri(JourneyActivityId), "/execution-metrics"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves (queries) pre-aggregated data for a standard run execution
%% metric that applies to a journey.
-spec get_journey_run_execution_metrics(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_journey_run_execution_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_journey_run_execution_metrics_errors(), tuple()}.
get_journey_run_execution_metrics(Client, ApplicationId, JourneyId, RunId)
  when is_map(Client) ->
    get_journey_run_execution_metrics(Client, ApplicationId, JourneyId, RunId, #{}, #{}).

-spec get_journey_run_execution_metrics(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_journey_run_execution_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_journey_run_execution_metrics_errors(), tuple()}.
get_journey_run_execution_metrics(Client, ApplicationId, JourneyId, RunId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_journey_run_execution_metrics(Client, ApplicationId, JourneyId, RunId, QueryMap, HeadersMap, []).

-spec get_journey_run_execution_metrics(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_journey_run_execution_metrics_response(), tuple()} |
    {error, any()} |
    {error, get_journey_run_execution_metrics_errors(), tuple()}.
get_journey_run_execution_metrics(Client, ApplicationId, JourneyId, RunId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/journeys/", aws_util:encode_uri(JourneyId), "/runs/", aws_util:encode_uri(RunId), "/execution-metrics"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides information about the runs of a journey.
-spec get_journey_runs(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_journey_runs_response(), tuple()} |
    {error, any()} |
    {error, get_journey_runs_errors(), tuple()}.
get_journey_runs(Client, ApplicationId, JourneyId)
  when is_map(Client) ->
    get_journey_runs(Client, ApplicationId, JourneyId, #{}, #{}).

-spec get_journey_runs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_journey_runs_response(), tuple()} |
    {error, any()} |
    {error, get_journey_runs_errors(), tuple()}.
get_journey_runs(Client, ApplicationId, JourneyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_journey_runs(Client, ApplicationId, JourneyId, QueryMap, HeadersMap, []).

-spec get_journey_runs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_journey_runs_response(), tuple()} |
    {error, any()} |
    {error, get_journey_runs_errors(), tuple()}.
get_journey_runs(Client, ApplicationId, JourneyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/journeys/", aws_util:encode_uri(JourneyId), "/runs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)},
        {<<"token">>, maps:get(<<"token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the content and settings of a message template for messages
%% that are sent through a push notification channel.
-spec get_push_template(aws_client:aws_client(), binary() | list()) ->
    {ok, get_push_template_response(), tuple()} |
    {error, any()} |
    {error, get_push_template_errors(), tuple()}.
get_push_template(Client, TemplateName)
  when is_map(Client) ->
    get_push_template(Client, TemplateName, #{}, #{}).

-spec get_push_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_push_template_response(), tuple()} |
    {error, any()} |
    {error, get_push_template_errors(), tuple()}.
get_push_template(Client, TemplateName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_push_template(Client, TemplateName, QueryMap, HeadersMap, []).

-spec get_push_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_push_template_response(), tuple()} |
    {error, any()} |
    {error, get_push_template_errors(), tuple()}.
get_push_template(Client, TemplateName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/push"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"version">>, maps:get(<<"version">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an Amazon Pinpoint configuration for a
%% recommender model.
-spec get_recommender_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_recommender_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_recommender_configuration_errors(), tuple()}.
get_recommender_configuration(Client, RecommenderId)
  when is_map(Client) ->
    get_recommender_configuration(Client, RecommenderId, #{}, #{}).

-spec get_recommender_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_recommender_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_recommender_configuration_errors(), tuple()}.
get_recommender_configuration(Client, RecommenderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_recommender_configuration(Client, RecommenderId, QueryMap, HeadersMap, []).

-spec get_recommender_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_recommender_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_recommender_configuration_errors(), tuple()}.
get_recommender_configuration(Client, RecommenderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/recommenders/", aws_util:encode_uri(RecommenderId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about all the recommender model configurations
%% that are associated with your Amazon Pinpoint account.
-spec get_recommender_configurations(aws_client:aws_client()) ->
    {ok, get_recommender_configurations_response(), tuple()} |
    {error, any()} |
    {error, get_recommender_configurations_errors(), tuple()}.
get_recommender_configurations(Client)
  when is_map(Client) ->
    get_recommender_configurations(Client, #{}, #{}).

-spec get_recommender_configurations(aws_client:aws_client(), map(), map()) ->
    {ok, get_recommender_configurations_response(), tuple()} |
    {error, any()} |
    {error, get_recommender_configurations_errors(), tuple()}.
get_recommender_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_recommender_configurations(Client, QueryMap, HeadersMap, []).

-spec get_recommender_configurations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_recommender_configurations_response(), tuple()} |
    {error, any()} |
    {error, get_recommender_configurations_errors(), tuple()}.
get_recommender_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/recommenders"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)},
        {<<"token">>, maps:get(<<"token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the configuration, dimension, and other
%% settings for a specific segment that's associated with an application.
-spec get_segment(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_segment_response(), tuple()} |
    {error, any()} |
    {error, get_segment_errors(), tuple()}.
get_segment(Client, ApplicationId, SegmentId)
  when is_map(Client) ->
    get_segment(Client, ApplicationId, SegmentId, #{}, #{}).

-spec get_segment(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_segment_response(), tuple()} |
    {error, any()} |
    {error, get_segment_errors(), tuple()}.
get_segment(Client, ApplicationId, SegmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_segment(Client, ApplicationId, SegmentId, QueryMap, HeadersMap, []).

-spec get_segment(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_segment_response(), tuple()} |
    {error, any()} |
    {error, get_segment_errors(), tuple()}.
get_segment(Client, ApplicationId, SegmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/segments/", aws_util:encode_uri(SegmentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the export
%% jobs for a segment.
-spec get_segment_export_jobs(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_segment_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, get_segment_export_jobs_errors(), tuple()}.
get_segment_export_jobs(Client, ApplicationId, SegmentId)
  when is_map(Client) ->
    get_segment_export_jobs(Client, ApplicationId, SegmentId, #{}, #{}).

-spec get_segment_export_jobs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_segment_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, get_segment_export_jobs_errors(), tuple()}.
get_segment_export_jobs(Client, ApplicationId, SegmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_segment_export_jobs(Client, ApplicationId, SegmentId, QueryMap, HeadersMap, []).

-spec get_segment_export_jobs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_segment_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, get_segment_export_jobs_errors(), tuple()}.
get_segment_export_jobs(Client, ApplicationId, SegmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/segments/", aws_util:encode_uri(SegmentId), "/jobs/export"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)},
        {<<"token">>, maps:get(<<"token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the import
%% jobs for a segment.
-spec get_segment_import_jobs(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_segment_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, get_segment_import_jobs_errors(), tuple()}.
get_segment_import_jobs(Client, ApplicationId, SegmentId)
  when is_map(Client) ->
    get_segment_import_jobs(Client, ApplicationId, SegmentId, #{}, #{}).

-spec get_segment_import_jobs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_segment_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, get_segment_import_jobs_errors(), tuple()}.
get_segment_import_jobs(Client, ApplicationId, SegmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_segment_import_jobs(Client, ApplicationId, SegmentId, QueryMap, HeadersMap, []).

-spec get_segment_import_jobs(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_segment_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, get_segment_import_jobs_errors(), tuple()}.
get_segment_import_jobs(Client, ApplicationId, SegmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/segments/", aws_util:encode_uri(SegmentId), "/jobs/import"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)},
        {<<"token">>, maps:get(<<"token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the configuration, dimension, and other
%% settings for a specific version of a segment that's associated with an
%% application.
-spec get_segment_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_segment_version_response(), tuple()} |
    {error, any()} |
    {error, get_segment_version_errors(), tuple()}.
get_segment_version(Client, ApplicationId, SegmentId, Version)
  when is_map(Client) ->
    get_segment_version(Client, ApplicationId, SegmentId, Version, #{}, #{}).

-spec get_segment_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_segment_version_response(), tuple()} |
    {error, any()} |
    {error, get_segment_version_errors(), tuple()}.
get_segment_version(Client, ApplicationId, SegmentId, Version, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_segment_version(Client, ApplicationId, SegmentId, Version, QueryMap, HeadersMap, []).

-spec get_segment_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_segment_version_response(), tuple()} |
    {error, any()} |
    {error, get_segment_version_errors(), tuple()}.
get_segment_version(Client, ApplicationId, SegmentId, Version, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/segments/", aws_util:encode_uri(SegmentId), "/versions/", aws_util:encode_uri(Version), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the configuration, dimension, and other
%% settings for all the versions of a specific segment that's associated
%% with an application.
-spec get_segment_versions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_segment_versions_response(), tuple()} |
    {error, any()} |
    {error, get_segment_versions_errors(), tuple()}.
get_segment_versions(Client, ApplicationId, SegmentId)
  when is_map(Client) ->
    get_segment_versions(Client, ApplicationId, SegmentId, #{}, #{}).

-spec get_segment_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_segment_versions_response(), tuple()} |
    {error, any()} |
    {error, get_segment_versions_errors(), tuple()}.
get_segment_versions(Client, ApplicationId, SegmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_segment_versions(Client, ApplicationId, SegmentId, QueryMap, HeadersMap, []).

-spec get_segment_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_segment_versions_response(), tuple()} |
    {error, any()} |
    {error, get_segment_versions_errors(), tuple()}.
get_segment_versions(Client, ApplicationId, SegmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/segments/", aws_util:encode_uri(SegmentId), "/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)},
        {<<"token">>, maps:get(<<"token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the configuration, dimension, and other
%% settings for all the segments that are associated with an application.
-spec get_segments(aws_client:aws_client(), binary() | list()) ->
    {ok, get_segments_response(), tuple()} |
    {error, any()} |
    {error, get_segments_errors(), tuple()}.
get_segments(Client, ApplicationId)
  when is_map(Client) ->
    get_segments(Client, ApplicationId, #{}, #{}).

-spec get_segments(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_segments_response(), tuple()} |
    {error, any()} |
    {error, get_segments_errors(), tuple()}.
get_segments(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_segments(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_segments(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_segments_response(), tuple()} |
    {error, any()} |
    {error, get_segments_errors(), tuple()}.
get_segments(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/segments"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)},
        {<<"token">>, maps:get(<<"token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the SMS
%% channel for an application.
-spec get_sms_channel(aws_client:aws_client(), binary() | list()) ->
    {ok, get_sms_channel_response(), tuple()} |
    {error, any()} |
    {error, get_sms_channel_errors(), tuple()}.
get_sms_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_sms_channel(Client, ApplicationId, #{}, #{}).

-spec get_sms_channel(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_sms_channel_response(), tuple()} |
    {error, any()} |
    {error, get_sms_channel_errors(), tuple()}.
get_sms_channel(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sms_channel(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_sms_channel(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sms_channel_response(), tuple()} |
    {error, any()} |
    {error, get_sms_channel_errors(), tuple()}.
get_sms_channel(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/sms"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the content and settings of a message template for messages
%% that are sent through the SMS channel.
-spec get_sms_template(aws_client:aws_client(), binary() | list()) ->
    {ok, get_sms_template_response(), tuple()} |
    {error, any()} |
    {error, get_sms_template_errors(), tuple()}.
get_sms_template(Client, TemplateName)
  when is_map(Client) ->
    get_sms_template(Client, TemplateName, #{}, #{}).

-spec get_sms_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_sms_template_response(), tuple()} |
    {error, any()} |
    {error, get_sms_template_errors(), tuple()}.
get_sms_template(Client, TemplateName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sms_template(Client, TemplateName, QueryMap, HeadersMap, []).

-spec get_sms_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sms_template_response(), tuple()} |
    {error, any()} |
    {error, get_sms_template_errors(), tuple()}.
get_sms_template(Client, TemplateName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/sms"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"version">>, maps:get(<<"version">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about all the endpoints that are associated
%% with a specific user ID.
-spec get_user_endpoints(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_user_endpoints_response(), tuple()} |
    {error, any()} |
    {error, get_user_endpoints_errors(), tuple()}.
get_user_endpoints(Client, ApplicationId, UserId)
  when is_map(Client) ->
    get_user_endpoints(Client, ApplicationId, UserId, #{}, #{}).

-spec get_user_endpoints(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_user_endpoints_response(), tuple()} |
    {error, any()} |
    {error, get_user_endpoints_errors(), tuple()}.
get_user_endpoints(Client, ApplicationId, UserId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_user_endpoints(Client, ApplicationId, UserId, QueryMap, HeadersMap, []).

-spec get_user_endpoints(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_user_endpoints_response(), tuple()} |
    {error, any()} |
    {error, get_user_endpoints_errors(), tuple()}.
get_user_endpoints(Client, ApplicationId, UserId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/users/", aws_util:encode_uri(UserId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the voice
%% channel for an application.
-spec get_voice_channel(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_channel_response(), tuple()} |
    {error, any()} |
    {error, get_voice_channel_errors(), tuple()}.
get_voice_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_voice_channel(Client, ApplicationId, #{}, #{}).

-spec get_voice_channel(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_channel_response(), tuple()} |
    {error, any()} |
    {error, get_voice_channel_errors(), tuple()}.
get_voice_channel(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_channel(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec get_voice_channel(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_channel_response(), tuple()} |
    {error, any()} |
    {error, get_voice_channel_errors(), tuple()}.
get_voice_channel(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/voice"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the content and settings of a message template for messages
%% that are sent through the voice channel.
-spec get_voice_template(aws_client:aws_client(), binary() | list()) ->
    {ok, get_voice_template_response(), tuple()} |
    {error, any()} |
    {error, get_voice_template_errors(), tuple()}.
get_voice_template(Client, TemplateName)
  when is_map(Client) ->
    get_voice_template(Client, TemplateName, #{}, #{}).

-spec get_voice_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_voice_template_response(), tuple()} |
    {error, any()} |
    {error, get_voice_template_errors(), tuple()}.
get_voice_template(Client, TemplateName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_template(Client, TemplateName, QueryMap, HeadersMap, []).

-spec get_voice_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_voice_template_response(), tuple()} |
    {error, any()} |
    {error, get_voice_template_errors(), tuple()}.
get_voice_template(Client, TemplateName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/voice"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"version">>, maps:get(<<"version">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status, configuration, and other
%% settings for all the journeys that are associated with an application.
-spec list_journeys(aws_client:aws_client(), binary() | list()) ->
    {ok, list_journeys_response(), tuple()} |
    {error, any()} |
    {error, list_journeys_errors(), tuple()}.
list_journeys(Client, ApplicationId)
  when is_map(Client) ->
    list_journeys(Client, ApplicationId, #{}, #{}).

-spec list_journeys(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_journeys_response(), tuple()} |
    {error, any()} |
    {error, list_journeys_errors(), tuple()}.
list_journeys(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_journeys(Client, ApplicationId, QueryMap, HeadersMap, []).

-spec list_journeys(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_journeys_response(), tuple()} |
    {error, any()} |
    {error, list_journeys_errors(), tuple()}.
list_journeys(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/journeys"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)},
        {<<"token">>, maps:get(<<"token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves all the tags (keys and values) that are associated with an
%% application, campaign, message template, or segment.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about all the versions of a specific message
%% template.
-spec list_template_versions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_template_versions_response(), tuple()} |
    {error, any()} |
    {error, list_template_versions_errors(), tuple()}.
list_template_versions(Client, TemplateName, TemplateType)
  when is_map(Client) ->
    list_template_versions(Client, TemplateName, TemplateType, #{}, #{}).

-spec list_template_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_template_versions_response(), tuple()} |
    {error, any()} |
    {error, list_template_versions_errors(), tuple()}.
list_template_versions(Client, TemplateName, TemplateType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_template_versions(Client, TemplateName, TemplateType, QueryMap, HeadersMap, []).

-spec list_template_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_template_versions_response(), tuple()} |
    {error, any()} |
    {error, list_template_versions_errors(), tuple()}.
list_template_versions(Client, TemplateName, TemplateType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/", aws_util:encode_uri(TemplateType), "/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about all the message templates that are
%% associated with your Amazon Pinpoint account.
-spec list_templates(aws_client:aws_client()) ->
    {ok, list_templates_response(), tuple()} |
    {error, any()} |
    {error, list_templates_errors(), tuple()}.
list_templates(Client)
  when is_map(Client) ->
    list_templates(Client, #{}, #{}).

-spec list_templates(aws_client:aws_client(), map(), map()) ->
    {ok, list_templates_response(), tuple()} |
    {error, any()} |
    {error, list_templates_errors(), tuple()}.
list_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_templates(Client, QueryMap, HeadersMap, []).

-spec list_templates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_templates_response(), tuple()} |
    {error, any()} |
    {error, list_templates_errors(), tuple()}.
list_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/templates"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)},
        {<<"prefix">>, maps:get(<<"prefix">>, QueryMap, undefined)},
        {<<"template-type">>, maps:get(<<"template-type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a phone number.
-spec phone_number_validate(aws_client:aws_client(), phone_number_validate_request()) ->
    {ok, phone_number_validate_response(), tuple()} |
    {error, any()} |
    {error, phone_number_validate_errors(), tuple()}.
phone_number_validate(Client, Input) ->
    phone_number_validate(Client, Input, []).

-spec phone_number_validate(aws_client:aws_client(), phone_number_validate_request(), proplists:proplist()) ->
    {ok, phone_number_validate_response(), tuple()} |
    {error, any()} |
    {error, phone_number_validate_errors(), tuple()}.
phone_number_validate(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/phone/number/validate"],
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

%% @doc Creates a new event stream for an application or updates the settings
%% of an existing event stream for an application.
-spec put_event_stream(aws_client:aws_client(), binary() | list(), put_event_stream_request()) ->
    {ok, put_event_stream_response(), tuple()} |
    {error, any()} |
    {error, put_event_stream_errors(), tuple()}.
put_event_stream(Client, ApplicationId, Input) ->
    put_event_stream(Client, ApplicationId, Input, []).

-spec put_event_stream(aws_client:aws_client(), binary() | list(), put_event_stream_request(), proplists:proplist()) ->
    {ok, put_event_stream_response(), tuple()} |
    {error, any()} |
    {error, put_event_stream_errors(), tuple()}.
put_event_stream(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/eventstream"],
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

%% @doc Creates a new event to record for endpoints, or creates or updates
%% endpoint data that existing events are associated with.
-spec put_events(aws_client:aws_client(), binary() | list(), put_events_request()) ->
    {ok, put_events_response(), tuple()} |
    {error, any()} |
    {error, put_events_errors(), tuple()}.
put_events(Client, ApplicationId, Input) ->
    put_events(Client, ApplicationId, Input, []).

-spec put_events(aws_client:aws_client(), binary() | list(), put_events_request(), proplists:proplist()) ->
    {ok, put_events_response(), tuple()} |
    {error, any()} |
    {error, put_events_errors(), tuple()}.
put_events(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/events"],
    SuccessStatusCode = 202,
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

%% @doc Removes one or more custom attributes, of the same attribute type,
%% from the application.
%%
%% Existing endpoints still have the attributes but Amazon Pinpoint will stop
%% capturing new or changed values for these attributes.
-spec remove_attributes(aws_client:aws_client(), binary() | list(), binary() | list(), remove_attributes_request()) ->
    {ok, remove_attributes_response(), tuple()} |
    {error, any()} |
    {error, remove_attributes_errors(), tuple()}.
remove_attributes(Client, ApplicationId, AttributeType, Input) ->
    remove_attributes(Client, ApplicationId, AttributeType, Input, []).

-spec remove_attributes(aws_client:aws_client(), binary() | list(), binary() | list(), remove_attributes_request(), proplists:proplist()) ->
    {ok, remove_attributes_response(), tuple()} |
    {error, any()} |
    {error, remove_attributes_errors(), tuple()}.
remove_attributes(Client, ApplicationId, AttributeType, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/attributes/", aws_util:encode_uri(AttributeType), ""],
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

%% @doc Creates and sends a direct message.
-spec send_messages(aws_client:aws_client(), binary() | list(), send_messages_request()) ->
    {ok, send_messages_response(), tuple()} |
    {error, any()} |
    {error, send_messages_errors(), tuple()}.
send_messages(Client, ApplicationId, Input) ->
    send_messages(Client, ApplicationId, Input, []).

-spec send_messages(aws_client:aws_client(), binary() | list(), send_messages_request(), proplists:proplist()) ->
    {ok, send_messages_response(), tuple()} |
    {error, any()} |
    {error, send_messages_errors(), tuple()}.
send_messages(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/messages"],
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

%% @doc Send an OTP message
-spec send_o_t_p_message(aws_client:aws_client(), binary() | list(), send_o_t_p_message_request()) ->
    {ok, send_o_t_p_message_response(), tuple()} |
    {error, any()} |
    {error, send_o_t_p_message_errors(), tuple()}.
send_o_t_p_message(Client, ApplicationId, Input) ->
    send_o_t_p_message(Client, ApplicationId, Input, []).

-spec send_o_t_p_message(aws_client:aws_client(), binary() | list(), send_o_t_p_message_request(), proplists:proplist()) ->
    {ok, send_o_t_p_message_response(), tuple()} |
    {error, any()} |
    {error, send_o_t_p_message_errors(), tuple()}.
send_o_t_p_message(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/otp"],
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

%% @doc Creates and sends a message to a list of users.
-spec send_users_messages(aws_client:aws_client(), binary() | list(), send_users_messages_request()) ->
    {ok, send_users_messages_response(), tuple()} |
    {error, any()} |
    {error, send_users_messages_errors(), tuple()}.
send_users_messages(Client, ApplicationId, Input) ->
    send_users_messages(Client, ApplicationId, Input, []).

-spec send_users_messages(aws_client:aws_client(), binary() | list(), send_users_messages_request(), proplists:proplist()) ->
    {ok, send_users_messages_response(), tuple()} |
    {error, any()} |
    {error, send_users_messages_errors(), tuple()}.
send_users_messages(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/users-messages"],
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

%% @doc Adds one or more tags (keys and values) to an application, campaign,
%% message template, or segment.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes one or more tags (keys and values) from an application,
%% campaign, message template, or segment.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the ADM channel for an application or updates the status and
%% settings of the ADM channel for an application.
-spec update_adm_channel(aws_client:aws_client(), binary() | list(), update_adm_channel_request()) ->
    {ok, update_adm_channel_response(), tuple()} |
    {error, any()} |
    {error, update_adm_channel_errors(), tuple()}.
update_adm_channel(Client, ApplicationId, Input) ->
    update_adm_channel(Client, ApplicationId, Input, []).

-spec update_adm_channel(aws_client:aws_client(), binary() | list(), update_adm_channel_request(), proplists:proplist()) ->
    {ok, update_adm_channel_response(), tuple()} |
    {error, any()} |
    {error, update_adm_channel_errors(), tuple()}.
update_adm_channel(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/adm"],
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

%% @doc Enables the APNs channel for an application or updates the status and
%% settings of the APNs channel for an application.
-spec update_apns_channel(aws_client:aws_client(), binary() | list(), update_apns_channel_request()) ->
    {ok, update_apns_channel_response(), tuple()} |
    {error, any()} |
    {error, update_apns_channel_errors(), tuple()}.
update_apns_channel(Client, ApplicationId, Input) ->
    update_apns_channel(Client, ApplicationId, Input, []).

-spec update_apns_channel(aws_client:aws_client(), binary() | list(), update_apns_channel_request(), proplists:proplist()) ->
    {ok, update_apns_channel_response(), tuple()} |
    {error, any()} |
    {error, update_apns_channel_errors(), tuple()}.
update_apns_channel(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns"],
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

%% @doc Enables the APNs sandbox channel for an application or updates the
%% status and settings of the APNs sandbox channel for an application.
-spec update_apns_sandbox_channel(aws_client:aws_client(), binary() | list(), update_apns_sandbox_channel_request()) ->
    {ok, update_apns_sandbox_channel_response(), tuple()} |
    {error, any()} |
    {error, update_apns_sandbox_channel_errors(), tuple()}.
update_apns_sandbox_channel(Client, ApplicationId, Input) ->
    update_apns_sandbox_channel(Client, ApplicationId, Input, []).

-spec update_apns_sandbox_channel(aws_client:aws_client(), binary() | list(), update_apns_sandbox_channel_request(), proplists:proplist()) ->
    {ok, update_apns_sandbox_channel_response(), tuple()} |
    {error, any()} |
    {error, update_apns_sandbox_channel_errors(), tuple()}.
update_apns_sandbox_channel(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns_sandbox"],
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

%% @doc Enables the APNs VoIP channel for an application or updates the
%% status and settings of the APNs VoIP channel for an application.
-spec update_apns_voip_channel(aws_client:aws_client(), binary() | list(), update_apns_voip_channel_request()) ->
    {ok, update_apns_voip_channel_response(), tuple()} |
    {error, any()} |
    {error, update_apns_voip_channel_errors(), tuple()}.
update_apns_voip_channel(Client, ApplicationId, Input) ->
    update_apns_voip_channel(Client, ApplicationId, Input, []).

-spec update_apns_voip_channel(aws_client:aws_client(), binary() | list(), update_apns_voip_channel_request(), proplists:proplist()) ->
    {ok, update_apns_voip_channel_response(), tuple()} |
    {error, any()} |
    {error, update_apns_voip_channel_errors(), tuple()}.
update_apns_voip_channel(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns_voip"],
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

%% @doc Enables the APNs VoIP sandbox channel for an application or updates
%% the status and settings of the APNs VoIP sandbox channel for an
%% application.
-spec update_apns_voip_sandbox_channel(aws_client:aws_client(), binary() | list(), update_apns_voip_sandbox_channel_request()) ->
    {ok, update_apns_voip_sandbox_channel_response(), tuple()} |
    {error, any()} |
    {error, update_apns_voip_sandbox_channel_errors(), tuple()}.
update_apns_voip_sandbox_channel(Client, ApplicationId, Input) ->
    update_apns_voip_sandbox_channel(Client, ApplicationId, Input, []).

-spec update_apns_voip_sandbox_channel(aws_client:aws_client(), binary() | list(), update_apns_voip_sandbox_channel_request(), proplists:proplist()) ->
    {ok, update_apns_voip_sandbox_channel_response(), tuple()} |
    {error, any()} |
    {error, update_apns_voip_sandbox_channel_errors(), tuple()}.
update_apns_voip_sandbox_channel(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns_voip_sandbox"],
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

%% @doc Updates the settings for an application.
-spec update_application_settings(aws_client:aws_client(), binary() | list(), update_application_settings_request()) ->
    {ok, update_application_settings_response(), tuple()} |
    {error, any()} |
    {error, update_application_settings_errors(), tuple()}.
update_application_settings(Client, ApplicationId, Input) ->
    update_application_settings(Client, ApplicationId, Input, []).

-spec update_application_settings(aws_client:aws_client(), binary() | list(), update_application_settings_request(), proplists:proplist()) ->
    {ok, update_application_settings_response(), tuple()} |
    {error, any()} |
    {error, update_application_settings_errors(), tuple()}.
update_application_settings(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/settings"],
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

%% @doc Enables the Baidu channel for an application or updates the status
%% and settings of the Baidu channel for an application.
-spec update_baidu_channel(aws_client:aws_client(), binary() | list(), update_baidu_channel_request()) ->
    {ok, update_baidu_channel_response(), tuple()} |
    {error, any()} |
    {error, update_baidu_channel_errors(), tuple()}.
update_baidu_channel(Client, ApplicationId, Input) ->
    update_baidu_channel(Client, ApplicationId, Input, []).

-spec update_baidu_channel(aws_client:aws_client(), binary() | list(), update_baidu_channel_request(), proplists:proplist()) ->
    {ok, update_baidu_channel_response(), tuple()} |
    {error, any()} |
    {error, update_baidu_channel_errors(), tuple()}.
update_baidu_channel(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/baidu"],
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

%% @doc Updates the configuration and other settings for a campaign.
-spec update_campaign(aws_client:aws_client(), binary() | list(), binary() | list(), update_campaign_request()) ->
    {ok, update_campaign_response(), tuple()} |
    {error, any()} |
    {error, update_campaign_errors(), tuple()}.
update_campaign(Client, ApplicationId, CampaignId, Input) ->
    update_campaign(Client, ApplicationId, CampaignId, Input, []).

-spec update_campaign(aws_client:aws_client(), binary() | list(), binary() | list(), update_campaign_request(), proplists:proplist()) ->
    {ok, update_campaign_response(), tuple()} |
    {error, any()} |
    {error, update_campaign_errors(), tuple()}.
update_campaign(Client, ApplicationId, CampaignId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/campaigns/", aws_util:encode_uri(CampaignId), ""],
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

%% @doc Enables the email channel for an application or updates the status
%% and settings of the email channel for an application.
-spec update_email_channel(aws_client:aws_client(), binary() | list(), update_email_channel_request()) ->
    {ok, update_email_channel_response(), tuple()} |
    {error, any()} |
    {error, update_email_channel_errors(), tuple()}.
update_email_channel(Client, ApplicationId, Input) ->
    update_email_channel(Client, ApplicationId, Input, []).

-spec update_email_channel(aws_client:aws_client(), binary() | list(), update_email_channel_request(), proplists:proplist()) ->
    {ok, update_email_channel_response(), tuple()} |
    {error, any()} |
    {error, update_email_channel_errors(), tuple()}.
update_email_channel(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/email"],
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

%% @doc Updates an existing message template for messages that are sent
%% through the email channel.
-spec update_email_template(aws_client:aws_client(), binary() | list(), update_email_template_request()) ->
    {ok, update_email_template_response(), tuple()} |
    {error, any()} |
    {error, update_email_template_errors(), tuple()}.
update_email_template(Client, TemplateName, Input) ->
    update_email_template(Client, TemplateName, Input, []).

-spec update_email_template(aws_client:aws_client(), binary() | list(), update_email_template_request(), proplists:proplist()) ->
    {ok, update_email_template_response(), tuple()} |
    {error, any()} |
    {error, update_email_template_errors(), tuple()}.
update_email_template(Client, TemplateName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/email"],
    SuccessStatusCode = 202,
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
                     {<<"create-new-version">>, <<"CreateNewVersion">>},
                     {<<"version">>, <<"Version">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new endpoint for an application or updates the settings and
%% attributes of an existing endpoint for an application.
%%
%% You can also use this operation to define custom attributes for an
%% endpoint. If an update includes one or more values for a custom attribute,
%% Amazon Pinpoint replaces (overwrites) any existing values with the new
%% values.
-spec update_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), update_endpoint_request()) ->
    {ok, update_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_endpoint_errors(), tuple()}.
update_endpoint(Client, ApplicationId, EndpointId, Input) ->
    update_endpoint(Client, ApplicationId, EndpointId, Input, []).

-spec update_endpoint(aws_client:aws_client(), binary() | list(), binary() | list(), update_endpoint_request(), proplists:proplist()) ->
    {ok, update_endpoint_response(), tuple()} |
    {error, any()} |
    {error, update_endpoint_errors(), tuple()}.
update_endpoint(Client, ApplicationId, EndpointId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/endpoints/", aws_util:encode_uri(EndpointId), ""],
    SuccessStatusCode = 202,
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

%% @doc Creates a new batch of endpoints for an application or updates the
%% settings and attributes of a batch of existing endpoints for an
%% application.
%%
%% You can also use this operation to define custom attributes for a batch of
%% endpoints. If an update includes one or more values for a custom
%% attribute, Amazon Pinpoint replaces (overwrites) any existing values with
%% the new values.
-spec update_endpoints_batch(aws_client:aws_client(), binary() | list(), update_endpoints_batch_request()) ->
    {ok, update_endpoints_batch_response(), tuple()} |
    {error, any()} |
    {error, update_endpoints_batch_errors(), tuple()}.
update_endpoints_batch(Client, ApplicationId, Input) ->
    update_endpoints_batch(Client, ApplicationId, Input, []).

-spec update_endpoints_batch(aws_client:aws_client(), binary() | list(), update_endpoints_batch_request(), proplists:proplist()) ->
    {ok, update_endpoints_batch_response(), tuple()} |
    {error, any()} |
    {error, update_endpoints_batch_errors(), tuple()}.
update_endpoints_batch(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/endpoints"],
    SuccessStatusCode = 202,
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

%% @doc Enables the GCM channel for an application or updates the status and
%% settings of the GCM channel for an application.
-spec update_gcm_channel(aws_client:aws_client(), binary() | list(), update_gcm_channel_request()) ->
    {ok, update_gcm_channel_response(), tuple()} |
    {error, any()} |
    {error, update_gcm_channel_errors(), tuple()}.
update_gcm_channel(Client, ApplicationId, Input) ->
    update_gcm_channel(Client, ApplicationId, Input, []).

-spec update_gcm_channel(aws_client:aws_client(), binary() | list(), update_gcm_channel_request(), proplists:proplist()) ->
    {ok, update_gcm_channel_response(), tuple()} |
    {error, any()} |
    {error, update_gcm_channel_errors(), tuple()}.
update_gcm_channel(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/gcm"],
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

%% @doc Updates an existing message template for messages sent through the
%% in-app message channel.
-spec update_in_app_template(aws_client:aws_client(), binary() | list(), update_in_app_template_request()) ->
    {ok, update_in_app_template_response(), tuple()} |
    {error, any()} |
    {error, update_in_app_template_errors(), tuple()}.
update_in_app_template(Client, TemplateName, Input) ->
    update_in_app_template(Client, TemplateName, Input, []).

-spec update_in_app_template(aws_client:aws_client(), binary() | list(), update_in_app_template_request(), proplists:proplist()) ->
    {ok, update_in_app_template_response(), tuple()} |
    {error, any()} |
    {error, update_in_app_template_errors(), tuple()}.
update_in_app_template(Client, TemplateName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/inapp"],
    SuccessStatusCode = 202,
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
                     {<<"create-new-version">>, <<"CreateNewVersion">>},
                     {<<"version">>, <<"Version">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration and other settings for a journey.
-spec update_journey(aws_client:aws_client(), binary() | list(), binary() | list(), update_journey_request()) ->
    {ok, update_journey_response(), tuple()} |
    {error, any()} |
    {error, update_journey_errors(), tuple()}.
update_journey(Client, ApplicationId, JourneyId, Input) ->
    update_journey(Client, ApplicationId, JourneyId, Input, []).

-spec update_journey(aws_client:aws_client(), binary() | list(), binary() | list(), update_journey_request(), proplists:proplist()) ->
    {ok, update_journey_response(), tuple()} |
    {error, any()} |
    {error, update_journey_errors(), tuple()}.
update_journey(Client, ApplicationId, JourneyId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/journeys/", aws_util:encode_uri(JourneyId), ""],
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

%% @doc Cancels (stops) an active journey.
-spec update_journey_state(aws_client:aws_client(), binary() | list(), binary() | list(), update_journey_state_request()) ->
    {ok, update_journey_state_response(), tuple()} |
    {error, any()} |
    {error, update_journey_state_errors(), tuple()}.
update_journey_state(Client, ApplicationId, JourneyId, Input) ->
    update_journey_state(Client, ApplicationId, JourneyId, Input, []).

-spec update_journey_state(aws_client:aws_client(), binary() | list(), binary() | list(), update_journey_state_request(), proplists:proplist()) ->
    {ok, update_journey_state_response(), tuple()} |
    {error, any()} |
    {error, update_journey_state_errors(), tuple()}.
update_journey_state(Client, ApplicationId, JourneyId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/journeys/", aws_util:encode_uri(JourneyId), "/state"],
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

%% @doc Updates an existing message template for messages that are sent
%% through a push notification channel.
-spec update_push_template(aws_client:aws_client(), binary() | list(), update_push_template_request()) ->
    {ok, update_push_template_response(), tuple()} |
    {error, any()} |
    {error, update_push_template_errors(), tuple()}.
update_push_template(Client, TemplateName, Input) ->
    update_push_template(Client, TemplateName, Input, []).

-spec update_push_template(aws_client:aws_client(), binary() | list(), update_push_template_request(), proplists:proplist()) ->
    {ok, update_push_template_response(), tuple()} |
    {error, any()} |
    {error, update_push_template_errors(), tuple()}.
update_push_template(Client, TemplateName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/push"],
    SuccessStatusCode = 202,
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
                     {<<"create-new-version">>, <<"CreateNewVersion">>},
                     {<<"version">>, <<"Version">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an Amazon Pinpoint configuration for a recommender model.
-spec update_recommender_configuration(aws_client:aws_client(), binary() | list(), update_recommender_configuration_request()) ->
    {ok, update_recommender_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_recommender_configuration_errors(), tuple()}.
update_recommender_configuration(Client, RecommenderId, Input) ->
    update_recommender_configuration(Client, RecommenderId, Input, []).

-spec update_recommender_configuration(aws_client:aws_client(), binary() | list(), update_recommender_configuration_request(), proplists:proplist()) ->
    {ok, update_recommender_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_recommender_configuration_errors(), tuple()}.
update_recommender_configuration(Client, RecommenderId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/recommenders/", aws_util:encode_uri(RecommenderId), ""],
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

%% @doc Creates a new segment for an application or updates the
%% configuration, dimension, and other settings for an existing segment
%% that's associated with an application.
-spec update_segment(aws_client:aws_client(), binary() | list(), binary() | list(), update_segment_request()) ->
    {ok, update_segment_response(), tuple()} |
    {error, any()} |
    {error, update_segment_errors(), tuple()}.
update_segment(Client, ApplicationId, SegmentId, Input) ->
    update_segment(Client, ApplicationId, SegmentId, Input, []).

-spec update_segment(aws_client:aws_client(), binary() | list(), binary() | list(), update_segment_request(), proplists:proplist()) ->
    {ok, update_segment_response(), tuple()} |
    {error, any()} |
    {error, update_segment_errors(), tuple()}.
update_segment(Client, ApplicationId, SegmentId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/segments/", aws_util:encode_uri(SegmentId), ""],
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

%% @doc Enables the SMS channel for an application or updates the status and
%% settings of the SMS channel for an application.
-spec update_sms_channel(aws_client:aws_client(), binary() | list(), update_sms_channel_request()) ->
    {ok, update_sms_channel_response(), tuple()} |
    {error, any()} |
    {error, update_sms_channel_errors(), tuple()}.
update_sms_channel(Client, ApplicationId, Input) ->
    update_sms_channel(Client, ApplicationId, Input, []).

-spec update_sms_channel(aws_client:aws_client(), binary() | list(), update_sms_channel_request(), proplists:proplist()) ->
    {ok, update_sms_channel_response(), tuple()} |
    {error, any()} |
    {error, update_sms_channel_errors(), tuple()}.
update_sms_channel(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/sms"],
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

%% @doc Updates an existing message template for messages that are sent
%% through the SMS channel.
-spec update_sms_template(aws_client:aws_client(), binary() | list(), update_sms_template_request()) ->
    {ok, update_sms_template_response(), tuple()} |
    {error, any()} |
    {error, update_sms_template_errors(), tuple()}.
update_sms_template(Client, TemplateName, Input) ->
    update_sms_template(Client, TemplateName, Input, []).

-spec update_sms_template(aws_client:aws_client(), binary() | list(), update_sms_template_request(), proplists:proplist()) ->
    {ok, update_sms_template_response(), tuple()} |
    {error, any()} |
    {error, update_sms_template_errors(), tuple()}.
update_sms_template(Client, TemplateName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/sms"],
    SuccessStatusCode = 202,
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
                     {<<"create-new-version">>, <<"CreateNewVersion">>},
                     {<<"version">>, <<"Version">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Changes the status of a specific version of a message template to
%% active.
-spec update_template_active_version(aws_client:aws_client(), binary() | list(), binary() | list(), update_template_active_version_request()) ->
    {ok, update_template_active_version_response(), tuple()} |
    {error, any()} |
    {error, update_template_active_version_errors(), tuple()}.
update_template_active_version(Client, TemplateName, TemplateType, Input) ->
    update_template_active_version(Client, TemplateName, TemplateType, Input, []).

-spec update_template_active_version(aws_client:aws_client(), binary() | list(), binary() | list(), update_template_active_version_request(), proplists:proplist()) ->
    {ok, update_template_active_version_response(), tuple()} |
    {error, any()} |
    {error, update_template_active_version_errors(), tuple()}.
update_template_active_version(Client, TemplateName, TemplateType, Input0, Options0) ->
    Method = put,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/", aws_util:encode_uri(TemplateType), "/active-version"],
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

%% @doc Enables the voice channel for an application or updates the status
%% and settings of the voice channel for an application.
-spec update_voice_channel(aws_client:aws_client(), binary() | list(), update_voice_channel_request()) ->
    {ok, update_voice_channel_response(), tuple()} |
    {error, any()} |
    {error, update_voice_channel_errors(), tuple()}.
update_voice_channel(Client, ApplicationId, Input) ->
    update_voice_channel(Client, ApplicationId, Input, []).

-spec update_voice_channel(aws_client:aws_client(), binary() | list(), update_voice_channel_request(), proplists:proplist()) ->
    {ok, update_voice_channel_response(), tuple()} |
    {error, any()} |
    {error, update_voice_channel_errors(), tuple()}.
update_voice_channel(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/voice"],
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

%% @doc Updates an existing message template for messages that are sent
%% through the voice channel.
-spec update_voice_template(aws_client:aws_client(), binary() | list(), update_voice_template_request()) ->
    {ok, update_voice_template_response(), tuple()} |
    {error, any()} |
    {error, update_voice_template_errors(), tuple()}.
update_voice_template(Client, TemplateName, Input) ->
    update_voice_template(Client, TemplateName, Input, []).

-spec update_voice_template(aws_client:aws_client(), binary() | list(), update_voice_template_request(), proplists:proplist()) ->
    {ok, update_voice_template_response(), tuple()} |
    {error, any()} |
    {error, update_voice_template_errors(), tuple()}.
update_voice_template(Client, TemplateName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/voice"],
    SuccessStatusCode = 202,
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
                     {<<"create-new-version">>, <<"CreateNewVersion">>},
                     {<<"version">>, <<"Version">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Verify an OTP
-spec verify_o_t_p_message(aws_client:aws_client(), binary() | list(), verify_o_t_p_message_request()) ->
    {ok, verify_o_t_p_message_response(), tuple()} |
    {error, any()} |
    {error, verify_o_t_p_message_errors(), tuple()}.
verify_o_t_p_message(Client, ApplicationId, Input) ->
    verify_o_t_p_message(Client, ApplicationId, Input, []).

-spec verify_o_t_p_message(aws_client:aws_client(), binary() | list(), verify_o_t_p_message_request(), proplists:proplist()) ->
    {ok, verify_o_t_p_message_response(), tuple()} |
    {error, any()} |
    {error, verify_o_t_p_message_errors(), tuple()}.
verify_o_t_p_message(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/verify-otp"],
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
    Client1 = Client#{service => <<"mobiletargeting">>},
    Host = build_host(<<"pinpoint">>, Client1),
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
