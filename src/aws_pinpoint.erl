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
         get_adm_channel/3,
         get_apns_channel/2,
         get_apns_channel/3,
         get_apns_sandbox_channel/2,
         get_apns_sandbox_channel/3,
         get_apns_voip_channel/2,
         get_apns_voip_channel/3,
         get_apns_voip_sandbox_channel/2,
         get_apns_voip_sandbox_channel/3,
         get_app/2,
         get_app/3,
         get_application_date_range_kpi/7,
         get_application_date_range_kpi/8,
         get_application_settings/2,
         get_application_settings/3,
         get_apps/3,
         get_apps/4,
         get_baidu_channel/2,
         get_baidu_channel/3,
         get_campaign/3,
         get_campaign/4,
         get_campaign_activities/5,
         get_campaign_activities/6,
         get_campaign_date_range_kpi/8,
         get_campaign_date_range_kpi/9,
         get_campaign_version/4,
         get_campaign_version/5,
         get_campaign_versions/5,
         get_campaign_versions/6,
         get_campaigns/4,
         get_campaigns/5,
         get_channels/2,
         get_channels/3,
         get_email_channel/2,
         get_email_channel/3,
         get_email_template/3,
         get_email_template/4,
         get_endpoint/3,
         get_endpoint/4,
         get_event_stream/2,
         get_event_stream/3,
         get_export_job/3,
         get_export_job/4,
         get_export_jobs/4,
         get_export_jobs/5,
         get_gcm_channel/2,
         get_gcm_channel/3,
         get_import_job/3,
         get_import_job/4,
         get_import_jobs/4,
         get_import_jobs/5,
         get_journey/3,
         get_journey/4,
         get_journey_date_range_kpi/8,
         get_journey_date_range_kpi/9,
         get_journey_execution_activity_metrics/6,
         get_journey_execution_activity_metrics/7,
         get_journey_execution_metrics/5,
         get_journey_execution_metrics/6,
         get_push_template/3,
         get_push_template/4,
         get_recommender_configuration/2,
         get_recommender_configuration/3,
         get_recommender_configurations/3,
         get_recommender_configurations/4,
         get_segment/3,
         get_segment/4,
         get_segment_export_jobs/5,
         get_segment_export_jobs/6,
         get_segment_import_jobs/5,
         get_segment_import_jobs/6,
         get_segment_version/4,
         get_segment_version/5,
         get_segment_versions/5,
         get_segment_versions/6,
         get_segments/4,
         get_segments/5,
         get_sms_channel/2,
         get_sms_channel/3,
         get_sms_template/3,
         get_sms_template/4,
         get_user_endpoints/3,
         get_user_endpoints/4,
         get_voice_channel/2,
         get_voice_channel/3,
         get_voice_template/3,
         get_voice_template/4,
         list_journeys/4,
         list_journeys/5,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_template_versions/5,
         list_template_versions/6,
         list_templates/5,
         list_templates/6,
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
         update_voice_template/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an application.
create_app(Client, Input) ->
    create_app(Client, Input, []).
create_app(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/apps"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new campaign for an application or updates the settings of
%% an existing campaign for an application.
create_campaign(Client, ApplicationId, Input) ->
    create_campaign(Client, ApplicationId, Input, []).
create_campaign(Client, ApplicationId, Input0, Options) ->
    Method = post,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/campaigns"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a message template for messages that are sent through the
%% email channel.
create_email_template(Client, TemplateName, Input) ->
    create_email_template(Client, TemplateName, Input, []).
create_email_template(Client, TemplateName, Input0, Options) ->
    Method = post,
    Path = ["/v1/templates/", http_uri:encode(TemplateName), "/email"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an export job for an application.
create_export_job(Client, ApplicationId, Input) ->
    create_export_job(Client, ApplicationId, Input, []).
create_export_job(Client, ApplicationId, Input0, Options) ->
    Method = post,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/jobs/export"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an import job for an application.
create_import_job(Client, ApplicationId, Input) ->
    create_import_job(Client, ApplicationId, Input, []).
create_import_job(Client, ApplicationId, Input0, Options) ->
    Method = post,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/jobs/import"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a journey for an application.
create_journey(Client, ApplicationId, Input) ->
    create_journey(Client, ApplicationId, Input, []).
create_journey(Client, ApplicationId, Input0, Options) ->
    Method = post,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/journeys"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a message template for messages that are sent through a push
%% notification channel.
create_push_template(Client, TemplateName, Input) ->
    create_push_template(Client, TemplateName, Input, []).
create_push_template(Client, TemplateName, Input0, Options) ->
    Method = post,
    Path = ["/v1/templates/", http_uri:encode(TemplateName), "/push"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Amazon Pinpoint configuration for a recommender model.
create_recommender_configuration(Client, Input) ->
    create_recommender_configuration(Client, Input, []).
create_recommender_configuration(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/recommenders"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new segment for an application or updates the
%% configuration, dimension, and other settings for an existing segment
%% that's associated with an application.
create_segment(Client, ApplicationId, Input) ->
    create_segment(Client, ApplicationId, Input, []).
create_segment(Client, ApplicationId, Input0, Options) ->
    Method = post,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/segments"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a message template for messages that are sent through the SMS
%% channel.
create_sms_template(Client, TemplateName, Input) ->
    create_sms_template(Client, TemplateName, Input, []).
create_sms_template(Client, TemplateName, Input0, Options) ->
    Method = post,
    Path = ["/v1/templates/", http_uri:encode(TemplateName), "/sms"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a message template for messages that are sent through the
%% voice channel.
create_voice_template(Client, TemplateName, Input) ->
    create_voice_template(Client, TemplateName, Input, []).
create_voice_template(Client, TemplateName, Input0, Options) ->
    Method = post,
    Path = ["/v1/templates/", http_uri:encode(TemplateName), "/voice"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the ADM channel for an application and deletes any existing
%% settings for the channel.
delete_adm_channel(Client, ApplicationId, Input) ->
    delete_adm_channel(Client, ApplicationId, Input, []).
delete_adm_channel(Client, ApplicationId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/adm"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the APNs channel for an application and deletes any existing
%% settings for the channel.
delete_apns_channel(Client, ApplicationId, Input) ->
    delete_apns_channel(Client, ApplicationId, Input, []).
delete_apns_channel(Client, ApplicationId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/apns"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the APNs sandbox channel for an application and deletes any
%% existing settings for the channel.
delete_apns_sandbox_channel(Client, ApplicationId, Input) ->
    delete_apns_sandbox_channel(Client, ApplicationId, Input, []).
delete_apns_sandbox_channel(Client, ApplicationId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/apns_sandbox"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the APNs VoIP channel for an application and deletes any
%% existing settings for the channel.
delete_apns_voip_channel(Client, ApplicationId, Input) ->
    delete_apns_voip_channel(Client, ApplicationId, Input, []).
delete_apns_voip_channel(Client, ApplicationId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/apns_voip"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the APNs VoIP sandbox channel for an application and deletes
%% any existing settings for the channel.
delete_apns_voip_sandbox_channel(Client, ApplicationId, Input) ->
    delete_apns_voip_sandbox_channel(Client, ApplicationId, Input, []).
delete_apns_voip_sandbox_channel(Client, ApplicationId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/apns_voip_sandbox"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an application.
delete_app(Client, ApplicationId, Input) ->
    delete_app(Client, ApplicationId, Input, []).
delete_app(Client, ApplicationId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the Baidu channel for an application and deletes any
%% existing settings for the channel.
delete_baidu_channel(Client, ApplicationId, Input) ->
    delete_baidu_channel(Client, ApplicationId, Input, []).
delete_baidu_channel(Client, ApplicationId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/baidu"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a campaign from an application.
delete_campaign(Client, ApplicationId, CampaignId, Input) ->
    delete_campaign(Client, ApplicationId, CampaignId, Input, []).
delete_campaign(Client, ApplicationId, CampaignId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/campaigns/", http_uri:encode(CampaignId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the email channel for an application and deletes any
%% existing settings for the channel.
delete_email_channel(Client, ApplicationId, Input) ->
    delete_email_channel(Client, ApplicationId, Input, []).
delete_email_channel(Client, ApplicationId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/email"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a message template for messages that were sent through the
%% email channel.
delete_email_template(Client, TemplateName, Input) ->
    delete_email_template(Client, TemplateName, Input, []).
delete_email_template(Client, TemplateName, Input0, Options) ->
    Method = delete,
    Path = ["/v1/templates/", http_uri:encode(TemplateName), "/email"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"version">>, <<"Version">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an endpoint from an application.
delete_endpoint(Client, ApplicationId, EndpointId, Input) ->
    delete_endpoint(Client, ApplicationId, EndpointId, Input, []).
delete_endpoint(Client, ApplicationId, EndpointId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/endpoints/", http_uri:encode(EndpointId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the event stream for an application.
delete_event_stream(Client, ApplicationId, Input) ->
    delete_event_stream(Client, ApplicationId, Input, []).
delete_event_stream(Client, ApplicationId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/eventstream"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the GCM channel for an application and deletes any existing
%% settings for the channel.
delete_gcm_channel(Client, ApplicationId, Input) ->
    delete_gcm_channel(Client, ApplicationId, Input, []).
delete_gcm_channel(Client, ApplicationId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/gcm"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a journey from an application.
delete_journey(Client, ApplicationId, JourneyId, Input) ->
    delete_journey(Client, ApplicationId, JourneyId, Input, []).
delete_journey(Client, ApplicationId, JourneyId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/journeys/", http_uri:encode(JourneyId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a message template for messages that were sent through a push
%% notification channel.
delete_push_template(Client, TemplateName, Input) ->
    delete_push_template(Client, TemplateName, Input, []).
delete_push_template(Client, TemplateName, Input0, Options) ->
    Method = delete,
    Path = ["/v1/templates/", http_uri:encode(TemplateName), "/push"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"version">>, <<"Version">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Amazon Pinpoint configuration for a recommender model.
delete_recommender_configuration(Client, RecommenderId, Input) ->
    delete_recommender_configuration(Client, RecommenderId, Input, []).
delete_recommender_configuration(Client, RecommenderId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/recommenders/", http_uri:encode(RecommenderId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a segment from an application.
delete_segment(Client, ApplicationId, SegmentId, Input) ->
    delete_segment(Client, ApplicationId, SegmentId, Input, []).
delete_segment(Client, ApplicationId, SegmentId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/segments/", http_uri:encode(SegmentId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the SMS channel for an application and deletes any existing
%% settings for the channel.
delete_sms_channel(Client, ApplicationId, Input) ->
    delete_sms_channel(Client, ApplicationId, Input, []).
delete_sms_channel(Client, ApplicationId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/sms"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a message template for messages that were sent through the
%% SMS channel.
delete_sms_template(Client, TemplateName, Input) ->
    delete_sms_template(Client, TemplateName, Input, []).
delete_sms_template(Client, TemplateName, Input0, Options) ->
    Method = delete,
    Path = ["/v1/templates/", http_uri:encode(TemplateName), "/sms"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"version">>, <<"Version">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes all the endpoints that are associated with a specific user
%% ID.
delete_user_endpoints(Client, ApplicationId, UserId, Input) ->
    delete_user_endpoints(Client, ApplicationId, UserId, Input, []).
delete_user_endpoints(Client, ApplicationId, UserId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/users/", http_uri:encode(UserId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the voice channel for an application and deletes any
%% existing settings for the channel.
delete_voice_channel(Client, ApplicationId, Input) ->
    delete_voice_channel(Client, ApplicationId, Input, []).
delete_voice_channel(Client, ApplicationId, Input0, Options) ->
    Method = delete,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/voice"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a message template for messages that were sent through the
%% voice channel.
delete_voice_template(Client, TemplateName, Input) ->
    delete_voice_template(Client, TemplateName, Input, []).
delete_voice_template(Client, TemplateName, Input0, Options) ->
    Method = delete,
    Path = ["/v1/templates/", http_uri:encode(TemplateName), "/voice"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"version">>, <<"Version">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the ADM
%% channel for an application.
get_adm_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_adm_channel(Client, ApplicationId, []).
get_adm_channel(Client, ApplicationId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/adm"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the APNs
%% channel for an application.
get_apns_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_apns_channel(Client, ApplicationId, []).
get_apns_channel(Client, ApplicationId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/apns"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the APNs
%% sandbox channel for an application.
get_apns_sandbox_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_apns_sandbox_channel(Client, ApplicationId, []).
get_apns_sandbox_channel(Client, ApplicationId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/apns_sandbox"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the APNs VoIP
%% channel for an application.
get_apns_voip_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_apns_voip_channel(Client, ApplicationId, []).
get_apns_voip_channel(Client, ApplicationId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/apns_voip"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the APNs VoIP
%% sandbox channel for an application.
get_apns_voip_sandbox_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_apns_voip_sandbox_channel(Client, ApplicationId, []).
get_apns_voip_sandbox_channel(Client, ApplicationId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/apns_voip_sandbox"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an application.
get_app(Client, ApplicationId)
  when is_map(Client) ->
    get_app(Client, ApplicationId, []).
get_app(Client, ApplicationId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves (queries) pre-aggregated data for a standard metric that
%% applies to an application.
get_application_date_range_kpi(Client, ApplicationId, KpiName, EndTime, NextToken, PageSize, StartTime)
  when is_map(Client) ->
    get_application_date_range_kpi(Client, ApplicationId, KpiName, EndTime, NextToken, PageSize, StartTime, []).
get_application_date_range_kpi(Client, ApplicationId, KpiName, EndTime, NextToken, PageSize, StartTime, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/kpis/daterange/", http_uri:encode(KpiName), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"end-time">>, EndTime},
        {<<"next-token">>, NextToken},
        {<<"page-size">>, PageSize},
        {<<"start-time">>, StartTime}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the settings for an application.
get_application_settings(Client, ApplicationId)
  when is_map(Client) ->
    get_application_settings(Client, ApplicationId, []).
get_application_settings(Client, ApplicationId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/settings"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about all the applications that are associated
%% with your Amazon Pinpoint account.
get_apps(Client, PageSize, Token)
  when is_map(Client) ->
    get_apps(Client, PageSize, Token, []).
get_apps(Client, PageSize, Token, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, PageSize},
        {<<"token">>, Token}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the Baidu
%% channel for an application.
get_baidu_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_baidu_channel(Client, ApplicationId, []).
get_baidu_channel(Client, ApplicationId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/baidu"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status, configuration, and other
%% settings for a campaign.
get_campaign(Client, ApplicationId, CampaignId)
  when is_map(Client) ->
    get_campaign(Client, ApplicationId, CampaignId, []).
get_campaign(Client, ApplicationId, CampaignId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/campaigns/", http_uri:encode(CampaignId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about all the activities for a campaign.
get_campaign_activities(Client, ApplicationId, CampaignId, PageSize, Token)
  when is_map(Client) ->
    get_campaign_activities(Client, ApplicationId, CampaignId, PageSize, Token, []).
get_campaign_activities(Client, ApplicationId, CampaignId, PageSize, Token, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/campaigns/", http_uri:encode(CampaignId), "/activities"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, PageSize},
        {<<"token">>, Token}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves (queries) pre-aggregated data for a standard metric that
%% applies to a campaign.
get_campaign_date_range_kpi(Client, ApplicationId, CampaignId, KpiName, EndTime, NextToken, PageSize, StartTime)
  when is_map(Client) ->
    get_campaign_date_range_kpi(Client, ApplicationId, CampaignId, KpiName, EndTime, NextToken, PageSize, StartTime, []).
get_campaign_date_range_kpi(Client, ApplicationId, CampaignId, KpiName, EndTime, NextToken, PageSize, StartTime, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/campaigns/", http_uri:encode(CampaignId), "/kpis/daterange/", http_uri:encode(KpiName), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"end-time">>, EndTime},
        {<<"next-token">>, NextToken},
        {<<"page-size">>, PageSize},
        {<<"start-time">>, StartTime}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status, configuration, and other
%% settings for a specific version of a campaign.
get_campaign_version(Client, ApplicationId, CampaignId, Version)
  when is_map(Client) ->
    get_campaign_version(Client, ApplicationId, CampaignId, Version, []).
get_campaign_version(Client, ApplicationId, CampaignId, Version, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/campaigns/", http_uri:encode(CampaignId), "/versions/", http_uri:encode(Version), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status, configuration, and other
%% settings for all versions of a campaign.
get_campaign_versions(Client, ApplicationId, CampaignId, PageSize, Token)
  when is_map(Client) ->
    get_campaign_versions(Client, ApplicationId, CampaignId, PageSize, Token, []).
get_campaign_versions(Client, ApplicationId, CampaignId, PageSize, Token, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/campaigns/", http_uri:encode(CampaignId), "/versions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, PageSize},
        {<<"token">>, Token}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status, configuration, and other
%% settings for all the campaigns that are associated with an application.
get_campaigns(Client, ApplicationId, PageSize, Token)
  when is_map(Client) ->
    get_campaigns(Client, ApplicationId, PageSize, Token, []).
get_campaigns(Client, ApplicationId, PageSize, Token, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/campaigns"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, PageSize},
        {<<"token">>, Token}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the history and status of each channel
%% for an application.
get_channels(Client, ApplicationId)
  when is_map(Client) ->
    get_channels(Client, ApplicationId, []).
get_channels(Client, ApplicationId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the email
%% channel for an application.
get_email_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_email_channel(Client, ApplicationId, []).
get_email_channel(Client, ApplicationId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/email"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the content and settings of a message template for messages
%% that are sent through the email channel.
get_email_template(Client, TemplateName, Version)
  when is_map(Client) ->
    get_email_template(Client, TemplateName, Version, []).
get_email_template(Client, TemplateName, Version, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/templates/", http_uri:encode(TemplateName), "/email"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"version">>, Version}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the settings and attributes of a specific
%% endpoint for an application.
get_endpoint(Client, ApplicationId, EndpointId)
  when is_map(Client) ->
    get_endpoint(Client, ApplicationId, EndpointId, []).
get_endpoint(Client, ApplicationId, EndpointId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/endpoints/", http_uri:encode(EndpointId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the event stream settings for an
%% application.
get_event_stream(Client, ApplicationId)
  when is_map(Client) ->
    get_event_stream(Client, ApplicationId, []).
get_event_stream(Client, ApplicationId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/eventstream"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of a specific
%% export job for an application.
get_export_job(Client, ApplicationId, JobId)
  when is_map(Client) ->
    get_export_job(Client, ApplicationId, JobId, []).
get_export_job(Client, ApplicationId, JobId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/jobs/export/", http_uri:encode(JobId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of all the export
%% jobs for an application.
get_export_jobs(Client, ApplicationId, PageSize, Token)
  when is_map(Client) ->
    get_export_jobs(Client, ApplicationId, PageSize, Token, []).
get_export_jobs(Client, ApplicationId, PageSize, Token, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/jobs/export"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, PageSize},
        {<<"token">>, Token}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the GCM
%% channel for an application.
get_gcm_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_gcm_channel(Client, ApplicationId, []).
get_gcm_channel(Client, ApplicationId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/gcm"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of a specific
%% import job for an application.
get_import_job(Client, ApplicationId, JobId)
  when is_map(Client) ->
    get_import_job(Client, ApplicationId, JobId, []).
get_import_job(Client, ApplicationId, JobId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/jobs/import/", http_uri:encode(JobId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of all the import
%% jobs for an application.
get_import_jobs(Client, ApplicationId, PageSize, Token)
  when is_map(Client) ->
    get_import_jobs(Client, ApplicationId, PageSize, Token, []).
get_import_jobs(Client, ApplicationId, PageSize, Token, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/jobs/import"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, PageSize},
        {<<"token">>, Token}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status, configuration, and other
%% settings for a journey.
get_journey(Client, ApplicationId, JourneyId)
  when is_map(Client) ->
    get_journey(Client, ApplicationId, JourneyId, []).
get_journey(Client, ApplicationId, JourneyId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/journeys/", http_uri:encode(JourneyId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves (queries) pre-aggregated data for a standard engagement
%% metric that applies to a journey.
get_journey_date_range_kpi(Client, ApplicationId, JourneyId, KpiName, EndTime, NextToken, PageSize, StartTime)
  when is_map(Client) ->
    get_journey_date_range_kpi(Client, ApplicationId, JourneyId, KpiName, EndTime, NextToken, PageSize, StartTime, []).
get_journey_date_range_kpi(Client, ApplicationId, JourneyId, KpiName, EndTime, NextToken, PageSize, StartTime, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/journeys/", http_uri:encode(JourneyId), "/kpis/daterange/", http_uri:encode(KpiName), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"end-time">>, EndTime},
        {<<"next-token">>, NextToken},
        {<<"page-size">>, PageSize},
        {<<"start-time">>, StartTime}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves (queries) pre-aggregated data for a standard execution
%% metric that applies to a journey activity.
get_journey_execution_activity_metrics(Client, ApplicationId, JourneyActivityId, JourneyId, NextToken, PageSize)
  when is_map(Client) ->
    get_journey_execution_activity_metrics(Client, ApplicationId, JourneyActivityId, JourneyId, NextToken, PageSize, []).
get_journey_execution_activity_metrics(Client, ApplicationId, JourneyActivityId, JourneyId, NextToken, PageSize, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/journeys/", http_uri:encode(JourneyId), "/activities/", http_uri:encode(JourneyActivityId), "/execution-metrics"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"next-token">>, NextToken},
        {<<"page-size">>, PageSize}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves (queries) pre-aggregated data for a standard execution
%% metric that applies to a journey.
get_journey_execution_metrics(Client, ApplicationId, JourneyId, NextToken, PageSize)
  when is_map(Client) ->
    get_journey_execution_metrics(Client, ApplicationId, JourneyId, NextToken, PageSize, []).
get_journey_execution_metrics(Client, ApplicationId, JourneyId, NextToken, PageSize, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/journeys/", http_uri:encode(JourneyId), "/execution-metrics"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"next-token">>, NextToken},
        {<<"page-size">>, PageSize}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the content and settings of a message template for messages
%% that are sent through a push notification channel.
get_push_template(Client, TemplateName, Version)
  when is_map(Client) ->
    get_push_template(Client, TemplateName, Version, []).
get_push_template(Client, TemplateName, Version, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/templates/", http_uri:encode(TemplateName), "/push"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"version">>, Version}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an Amazon Pinpoint configuration for a
%% recommender model.
get_recommender_configuration(Client, RecommenderId)
  when is_map(Client) ->
    get_recommender_configuration(Client, RecommenderId, []).
get_recommender_configuration(Client, RecommenderId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/recommenders/", http_uri:encode(RecommenderId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about all the recommender model configurations
%% that are associated with your Amazon Pinpoint account.
get_recommender_configurations(Client, PageSize, Token)
  when is_map(Client) ->
    get_recommender_configurations(Client, PageSize, Token, []).
get_recommender_configurations(Client, PageSize, Token, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/recommenders"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, PageSize},
        {<<"token">>, Token}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the configuration, dimension, and other
%% settings for a specific segment that's associated with an application.
get_segment(Client, ApplicationId, SegmentId)
  when is_map(Client) ->
    get_segment(Client, ApplicationId, SegmentId, []).
get_segment(Client, ApplicationId, SegmentId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/segments/", http_uri:encode(SegmentId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the export
%% jobs for a segment.
get_segment_export_jobs(Client, ApplicationId, SegmentId, PageSize, Token)
  when is_map(Client) ->
    get_segment_export_jobs(Client, ApplicationId, SegmentId, PageSize, Token, []).
get_segment_export_jobs(Client, ApplicationId, SegmentId, PageSize, Token, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/segments/", http_uri:encode(SegmentId), "/jobs/export"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, PageSize},
        {<<"token">>, Token}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the import
%% jobs for a segment.
get_segment_import_jobs(Client, ApplicationId, SegmentId, PageSize, Token)
  when is_map(Client) ->
    get_segment_import_jobs(Client, ApplicationId, SegmentId, PageSize, Token, []).
get_segment_import_jobs(Client, ApplicationId, SegmentId, PageSize, Token, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/segments/", http_uri:encode(SegmentId), "/jobs/import"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, PageSize},
        {<<"token">>, Token}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the configuration, dimension, and other
%% settings for a specific version of a segment that's associated with an
%% application.
get_segment_version(Client, ApplicationId, SegmentId, Version)
  when is_map(Client) ->
    get_segment_version(Client, ApplicationId, SegmentId, Version, []).
get_segment_version(Client, ApplicationId, SegmentId, Version, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/segments/", http_uri:encode(SegmentId), "/versions/", http_uri:encode(Version), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the configuration, dimension, and other
%% settings for all the versions of a specific segment that's associated with
%% an application.
get_segment_versions(Client, ApplicationId, SegmentId, PageSize, Token)
  when is_map(Client) ->
    get_segment_versions(Client, ApplicationId, SegmentId, PageSize, Token, []).
get_segment_versions(Client, ApplicationId, SegmentId, PageSize, Token, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/segments/", http_uri:encode(SegmentId), "/versions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, PageSize},
        {<<"token">>, Token}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the configuration, dimension, and other
%% settings for all the segments that are associated with an application.
get_segments(Client, ApplicationId, PageSize, Token)
  when is_map(Client) ->
    get_segments(Client, ApplicationId, PageSize, Token, []).
get_segments(Client, ApplicationId, PageSize, Token, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/segments"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, PageSize},
        {<<"token">>, Token}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the SMS
%% channel for an application.
get_sms_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_sms_channel(Client, ApplicationId, []).
get_sms_channel(Client, ApplicationId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/sms"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the content and settings of a message template for messages
%% that are sent through the SMS channel.
get_sms_template(Client, TemplateName, Version)
  when is_map(Client) ->
    get_sms_template(Client, TemplateName, Version, []).
get_sms_template(Client, TemplateName, Version, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/templates/", http_uri:encode(TemplateName), "/sms"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"version">>, Version}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about all the endpoints that are associated
%% with a specific user ID.
get_user_endpoints(Client, ApplicationId, UserId)
  when is_map(Client) ->
    get_user_endpoints(Client, ApplicationId, UserId, []).
get_user_endpoints(Client, ApplicationId, UserId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/users/", http_uri:encode(UserId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the voice
%% channel for an application.
get_voice_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_voice_channel(Client, ApplicationId, []).
get_voice_channel(Client, ApplicationId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/voice"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the content and settings of a message template for messages
%% that are sent through the voice channel.
get_voice_template(Client, TemplateName, Version)
  when is_map(Client) ->
    get_voice_template(Client, TemplateName, Version, []).
get_voice_template(Client, TemplateName, Version, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/templates/", http_uri:encode(TemplateName), "/voice"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"version">>, Version}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status, configuration, and other
%% settings for all the journeys that are associated with an application.
list_journeys(Client, ApplicationId, PageSize, Token)
  when is_map(Client) ->
    list_journeys(Client, ApplicationId, PageSize, Token, []).
list_journeys(Client, ApplicationId, PageSize, Token, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/journeys"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, PageSize},
        {<<"token">>, Token}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves all the tags (keys and values) that are associated with an
%% application, campaign, message template, or segment.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about all the versions of a specific message
%% template.
list_template_versions(Client, TemplateName, TemplateType, NextToken, PageSize)
  when is_map(Client) ->
    list_template_versions(Client, TemplateName, TemplateType, NextToken, PageSize, []).
list_template_versions(Client, TemplateName, TemplateType, NextToken, PageSize, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/templates/", http_uri:encode(TemplateName), "/", http_uri:encode(TemplateType), "/versions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"next-token">>, NextToken},
        {<<"page-size">>, PageSize}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about all the message templates that are
%% associated with your Amazon Pinpoint account.
list_templates(Client, NextToken, PageSize, Prefix, TemplateType)
  when is_map(Client) ->
    list_templates(Client, NextToken, PageSize, Prefix, TemplateType, []).
list_templates(Client, NextToken, PageSize, Prefix, TemplateType, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/v1/templates"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"next-token">>, NextToken},
        {<<"page-size">>, PageSize},
        {<<"prefix">>, Prefix},
        {<<"template-type">>, TemplateType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about a phone number.
phone_number_validate(Client, Input) ->
    phone_number_validate(Client, Input, []).
phone_number_validate(Client, Input0, Options) ->
    Method = post,
    Path = ["/v1/phone/number/validate"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new event stream for an application or updates the settings
%% of an existing event stream for an application.
put_event_stream(Client, ApplicationId, Input) ->
    put_event_stream(Client, ApplicationId, Input, []).
put_event_stream(Client, ApplicationId, Input0, Options) ->
    Method = post,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/eventstream"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new event to record for endpoints, or creates or updates
%% endpoint data that existing events are associated with.
put_events(Client, ApplicationId, Input) ->
    put_events(Client, ApplicationId, Input, []).
put_events(Client, ApplicationId, Input0, Options) ->
    Method = post,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/events"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes one or more attributes, of the same attribute type, from all
%% the endpoints that are associated with an application.
remove_attributes(Client, ApplicationId, AttributeType, Input) ->
    remove_attributes(Client, ApplicationId, AttributeType, Input, []).
remove_attributes(Client, ApplicationId, AttributeType, Input0, Options) ->
    Method = put,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/attributes/", http_uri:encode(AttributeType), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates and sends a direct message.
send_messages(Client, ApplicationId, Input) ->
    send_messages(Client, ApplicationId, Input, []).
send_messages(Client, ApplicationId, Input0, Options) ->
    Method = post,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/messages"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates and sends a message to a list of users.
send_users_messages(Client, ApplicationId, Input) ->
    send_users_messages(Client, ApplicationId, Input, []).
send_users_messages(Client, ApplicationId, Input0, Options) ->
    Method = post,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/users-messages"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds one or more tags (keys and values) to an application, campaign,
%% message template, or segment.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/v1/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes one or more tags (keys and values) from an application,
%% campaign, message template, or segment.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/v1/tags/", http_uri:encode(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the ADM channel for an application or updates the status and
%% settings of the ADM channel for an application.
update_adm_channel(Client, ApplicationId, Input) ->
    update_adm_channel(Client, ApplicationId, Input, []).
update_adm_channel(Client, ApplicationId, Input0, Options) ->
    Method = put,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/adm"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the APNs channel for an application or updates the status and
%% settings of the APNs channel for an application.
update_apns_channel(Client, ApplicationId, Input) ->
    update_apns_channel(Client, ApplicationId, Input, []).
update_apns_channel(Client, ApplicationId, Input0, Options) ->
    Method = put,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/apns"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the APNs sandbox channel for an application or updates the
%% status and settings of the APNs sandbox channel for an application.
update_apns_sandbox_channel(Client, ApplicationId, Input) ->
    update_apns_sandbox_channel(Client, ApplicationId, Input, []).
update_apns_sandbox_channel(Client, ApplicationId, Input0, Options) ->
    Method = put,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/apns_sandbox"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the APNs VoIP channel for an application or updates the
%% status and settings of the APNs VoIP channel for an application.
update_apns_voip_channel(Client, ApplicationId, Input) ->
    update_apns_voip_channel(Client, ApplicationId, Input, []).
update_apns_voip_channel(Client, ApplicationId, Input0, Options) ->
    Method = put,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/apns_voip"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the APNs VoIP sandbox channel for an application or updates
%% the status and settings of the APNs VoIP sandbox channel for an
%% application.
update_apns_voip_sandbox_channel(Client, ApplicationId, Input) ->
    update_apns_voip_sandbox_channel(Client, ApplicationId, Input, []).
update_apns_voip_sandbox_channel(Client, ApplicationId, Input0, Options) ->
    Method = put,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/apns_voip_sandbox"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the settings for an application.
update_application_settings(Client, ApplicationId, Input) ->
    update_application_settings(Client, ApplicationId, Input, []).
update_application_settings(Client, ApplicationId, Input0, Options) ->
    Method = put,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/settings"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the Baidu channel for an application or updates the status
%% and settings of the Baidu channel for an application.
update_baidu_channel(Client, ApplicationId, Input) ->
    update_baidu_channel(Client, ApplicationId, Input, []).
update_baidu_channel(Client, ApplicationId, Input0, Options) ->
    Method = put,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/baidu"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration and other settings for a campaign.
update_campaign(Client, ApplicationId, CampaignId, Input) ->
    update_campaign(Client, ApplicationId, CampaignId, Input, []).
update_campaign(Client, ApplicationId, CampaignId, Input0, Options) ->
    Method = put,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/campaigns/", http_uri:encode(CampaignId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the email channel for an application or updates the status
%% and settings of the email channel for an application.
update_email_channel(Client, ApplicationId, Input) ->
    update_email_channel(Client, ApplicationId, Input, []).
update_email_channel(Client, ApplicationId, Input0, Options) ->
    Method = put,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/email"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing message template for messages that are sent
%% through the email channel.
update_email_template(Client, TemplateName, Input) ->
    update_email_template(Client, TemplateName, Input, []).
update_email_template(Client, TemplateName, Input0, Options) ->
    Method = put,
    Path = ["/v1/templates/", http_uri:encode(TemplateName), "/email"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"create-new-version">>, <<"CreateNewVersion">>},
                     {<<"version">>, <<"Version">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new endpoint for an application or updates the settings and
%% attributes of an existing endpoint for an application.
%%
%% You can also use this operation to define custom attributes for an
%% endpoint. If an update includes one or more values for a custom attribute,
%% Amazon Pinpoint replaces (overwrites) any existing values with the new
%% values.
update_endpoint(Client, ApplicationId, EndpointId, Input) ->
    update_endpoint(Client, ApplicationId, EndpointId, Input, []).
update_endpoint(Client, ApplicationId, EndpointId, Input0, Options) ->
    Method = put,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/endpoints/", http_uri:encode(EndpointId), ""],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new batch of endpoints for an application or updates the
%% settings and attributes of a batch of existing endpoints for an
%% application.
%%
%% You can also use this operation to define custom attributes for a batch of
%% endpoints. If an update includes one or more values for a custom
%% attribute, Amazon Pinpoint replaces (overwrites) any existing values with
%% the new values.
update_endpoints_batch(Client, ApplicationId, Input) ->
    update_endpoints_batch(Client, ApplicationId, Input, []).
update_endpoints_batch(Client, ApplicationId, Input0, Options) ->
    Method = put,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/endpoints"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the GCM channel for an application or updates the status and
%% settings of the GCM channel for an application.
update_gcm_channel(Client, ApplicationId, Input) ->
    update_gcm_channel(Client, ApplicationId, Input, []).
update_gcm_channel(Client, ApplicationId, Input0, Options) ->
    Method = put,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/gcm"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration and other settings for a journey.
update_journey(Client, ApplicationId, JourneyId, Input) ->
    update_journey(Client, ApplicationId, JourneyId, Input, []).
update_journey(Client, ApplicationId, JourneyId, Input0, Options) ->
    Method = put,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/journeys/", http_uri:encode(JourneyId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels (stops) an active journey.
update_journey_state(Client, ApplicationId, JourneyId, Input) ->
    update_journey_state(Client, ApplicationId, JourneyId, Input, []).
update_journey_state(Client, ApplicationId, JourneyId, Input0, Options) ->
    Method = put,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/journeys/", http_uri:encode(JourneyId), "/state"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing message template for messages that are sent
%% through a push notification channel.
update_push_template(Client, TemplateName, Input) ->
    update_push_template(Client, TemplateName, Input, []).
update_push_template(Client, TemplateName, Input0, Options) ->
    Method = put,
    Path = ["/v1/templates/", http_uri:encode(TemplateName), "/push"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"create-new-version">>, <<"CreateNewVersion">>},
                     {<<"version">>, <<"Version">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an Amazon Pinpoint configuration for a recommender model.
update_recommender_configuration(Client, RecommenderId, Input) ->
    update_recommender_configuration(Client, RecommenderId, Input, []).
update_recommender_configuration(Client, RecommenderId, Input0, Options) ->
    Method = put,
    Path = ["/v1/recommenders/", http_uri:encode(RecommenderId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new segment for an application or updates the
%% configuration, dimension, and other settings for an existing segment
%% that's associated with an application.
update_segment(Client, ApplicationId, SegmentId, Input) ->
    update_segment(Client, ApplicationId, SegmentId, Input, []).
update_segment(Client, ApplicationId, SegmentId, Input0, Options) ->
    Method = put,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/segments/", http_uri:encode(SegmentId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the SMS channel for an application or updates the status and
%% settings of the SMS channel for an application.
update_sms_channel(Client, ApplicationId, Input) ->
    update_sms_channel(Client, ApplicationId, Input, []).
update_sms_channel(Client, ApplicationId, Input0, Options) ->
    Method = put,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/sms"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing message template for messages that are sent
%% through the SMS channel.
update_sms_template(Client, TemplateName, Input) ->
    update_sms_template(Client, TemplateName, Input, []).
update_sms_template(Client, TemplateName, Input0, Options) ->
    Method = put,
    Path = ["/v1/templates/", http_uri:encode(TemplateName), "/sms"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"create-new-version">>, <<"CreateNewVersion">>},
                     {<<"version">>, <<"Version">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Changes the status of a specific version of a message template to
%% active.
update_template_active_version(Client, TemplateName, TemplateType, Input) ->
    update_template_active_version(Client, TemplateName, TemplateType, Input, []).
update_template_active_version(Client, TemplateName, TemplateType, Input0, Options) ->
    Method = put,
    Path = ["/v1/templates/", http_uri:encode(TemplateName), "/", http_uri:encode(TemplateType), "/active-version"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the voice channel for an application or updates the status
%% and settings of the voice channel for an application.
update_voice_channel(Client, ApplicationId, Input) ->
    update_voice_channel(Client, ApplicationId, Input, []).
update_voice_channel(Client, ApplicationId, Input0, Options) ->
    Method = put,
    Path = ["/v1/apps/", http_uri:encode(ApplicationId), "/channels/voice"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing message template for messages that are sent
%% through the voice channel.
update_voice_template(Client, TemplateName, Input) ->
    update_voice_template(Client, TemplateName, Input, []).
update_voice_template(Client, TemplateName, Input0, Options) ->
    Method = put,
    Path = ["/v1/templates/", http_uri:encode(TemplateName), "/voice"],
    SuccessStatusCode = 202,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"create-new-version">>, <<"CreateNewVersion">>},
                     {<<"version">>, <<"Version">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"mobiletargeting">>},
    Host = build_host(<<"pinpoint">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
