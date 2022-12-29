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

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an application.
create_app(Client, Input) ->
    create_app(Client, Input, []).
create_app(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new campaign for an application or updates the settings of
%% an existing campaign for an application.
create_campaign(Client, ApplicationId, Input) ->
    create_campaign(Client, ApplicationId, Input, []).
create_campaign(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/campaigns"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a message template for messages that are sent through the
%% email channel.
create_email_template(Client, TemplateName, Input) ->
    create_email_template(Client, TemplateName, Input, []).
create_email_template(Client, TemplateName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/email"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an export job for an application.
create_export_job(Client, ApplicationId, Input) ->
    create_export_job(Client, ApplicationId, Input, []).
create_export_job(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/jobs/export"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an import job for an application.
create_import_job(Client, ApplicationId, Input) ->
    create_import_job(Client, ApplicationId, Input, []).
create_import_job(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/jobs/import"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new message template for messages using the in-app message
%% channel.
create_in_app_template(Client, TemplateName, Input) ->
    create_in_app_template(Client, TemplateName, Input, []).
create_in_app_template(Client, TemplateName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/inapp"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a journey for an application.
create_journey(Client, ApplicationId, Input) ->
    create_journey(Client, ApplicationId, Input, []).
create_journey(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/journeys"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a message template for messages that are sent through a push
%% notification channel.
create_push_template(Client, TemplateName, Input) ->
    create_push_template(Client, TemplateName, Input, []).
create_push_template(Client, TemplateName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/push"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Amazon Pinpoint configuration for a recommender model.
create_recommender_configuration(Client, Input) ->
    create_recommender_configuration(Client, Input, []).
create_recommender_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/recommenders"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
create_segment(Client, ApplicationId, Input) ->
    create_segment(Client, ApplicationId, Input, []).
create_segment(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/segments"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a message template for messages that are sent through the SMS
%% channel.
create_sms_template(Client, TemplateName, Input) ->
    create_sms_template(Client, TemplateName, Input, []).
create_sms_template(Client, TemplateName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/sms"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a message template for messages that are sent through the
%% voice channel.
create_voice_template(Client, TemplateName, Input) ->
    create_voice_template(Client, TemplateName, Input, []).
create_voice_template(Client, TemplateName, Input0, Options0) ->
    Method = post,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/voice"],
    SuccessStatusCode = 201,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the ADM channel for an application and deletes any existing
%% settings for the channel.
delete_adm_channel(Client, ApplicationId, Input) ->
    delete_adm_channel(Client, ApplicationId, Input, []).
delete_adm_channel(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/adm"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the APNs channel for an application and deletes any existing
%% settings for the channel.
delete_apns_channel(Client, ApplicationId, Input) ->
    delete_apns_channel(Client, ApplicationId, Input, []).
delete_apns_channel(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the APNs sandbox channel for an application and deletes any
%% existing settings for the channel.
delete_apns_sandbox_channel(Client, ApplicationId, Input) ->
    delete_apns_sandbox_channel(Client, ApplicationId, Input, []).
delete_apns_sandbox_channel(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns_sandbox"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the APNs VoIP channel for an application and deletes any
%% existing settings for the channel.
delete_apns_voip_channel(Client, ApplicationId, Input) ->
    delete_apns_voip_channel(Client, ApplicationId, Input, []).
delete_apns_voip_channel(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns_voip"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the APNs VoIP sandbox channel for an application and deletes
%% any existing settings for the channel.
delete_apns_voip_sandbox_channel(Client, ApplicationId, Input) ->
    delete_apns_voip_sandbox_channel(Client, ApplicationId, Input, []).
delete_apns_voip_sandbox_channel(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns_voip_sandbox"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an application.
delete_app(Client, ApplicationId, Input) ->
    delete_app(Client, ApplicationId, Input, []).
delete_app(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the Baidu channel for an application and deletes any
%% existing settings for the channel.
delete_baidu_channel(Client, ApplicationId, Input) ->
    delete_baidu_channel(Client, ApplicationId, Input, []).
delete_baidu_channel(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/baidu"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a campaign from an application.
delete_campaign(Client, ApplicationId, CampaignId, Input) ->
    delete_campaign(Client, ApplicationId, CampaignId, Input, []).
delete_campaign(Client, ApplicationId, CampaignId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/campaigns/", aws_util:encode_uri(CampaignId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the email channel for an application and deletes any
%% existing settings for the channel.
delete_email_channel(Client, ApplicationId, Input) ->
    delete_email_channel(Client, ApplicationId, Input, []).
delete_email_channel(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/email"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a message template for messages that were sent through the
%% email channel.
delete_email_template(Client, TemplateName, Input) ->
    delete_email_template(Client, TemplateName, Input, []).
delete_email_template(Client, TemplateName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/email"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
delete_endpoint(Client, ApplicationId, EndpointId, Input) ->
    delete_endpoint(Client, ApplicationId, EndpointId, Input, []).
delete_endpoint(Client, ApplicationId, EndpointId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/endpoints/", aws_util:encode_uri(EndpointId), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the event stream for an application.
delete_event_stream(Client, ApplicationId, Input) ->
    delete_event_stream(Client, ApplicationId, Input, []).
delete_event_stream(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/eventstream"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the GCM channel for an application and deletes any existing
%% settings for the channel.
delete_gcm_channel(Client, ApplicationId, Input) ->
    delete_gcm_channel(Client, ApplicationId, Input, []).
delete_gcm_channel(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/gcm"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a message template for messages sent using the in-app message
%% channel.
delete_in_app_template(Client, TemplateName, Input) ->
    delete_in_app_template(Client, TemplateName, Input, []).
delete_in_app_template(Client, TemplateName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/inapp"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
delete_journey(Client, ApplicationId, JourneyId, Input) ->
    delete_journey(Client, ApplicationId, JourneyId, Input, []).
delete_journey(Client, ApplicationId, JourneyId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/journeys/", aws_util:encode_uri(JourneyId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a message template for messages that were sent through a push
%% notification channel.
delete_push_template(Client, TemplateName, Input) ->
    delete_push_template(Client, TemplateName, Input, []).
delete_push_template(Client, TemplateName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/push"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
delete_recommender_configuration(Client, RecommenderId, Input) ->
    delete_recommender_configuration(Client, RecommenderId, Input, []).
delete_recommender_configuration(Client, RecommenderId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/recommenders/", aws_util:encode_uri(RecommenderId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a segment from an application.
delete_segment(Client, ApplicationId, SegmentId, Input) ->
    delete_segment(Client, ApplicationId, SegmentId, Input, []).
delete_segment(Client, ApplicationId, SegmentId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/segments/", aws_util:encode_uri(SegmentId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the SMS channel for an application and deletes any existing
%% settings for the channel.
delete_sms_channel(Client, ApplicationId, Input) ->
    delete_sms_channel(Client, ApplicationId, Input, []).
delete_sms_channel(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/sms"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a message template for messages that were sent through the
%% SMS channel.
delete_sms_template(Client, TemplateName, Input) ->
    delete_sms_template(Client, TemplateName, Input, []).
delete_sms_template(Client, TemplateName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/sms"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
delete_user_endpoints(Client, ApplicationId, UserId, Input) ->
    delete_user_endpoints(Client, ApplicationId, UserId, Input, []).
delete_user_endpoints(Client, ApplicationId, UserId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/users/", aws_util:encode_uri(UserId), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the voice channel for an application and deletes any
%% existing settings for the channel.
delete_voice_channel(Client, ApplicationId, Input) ->
    delete_voice_channel(Client, ApplicationId, Input, []).
delete_voice_channel(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/voice"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a message template for messages that were sent through the
%% voice channel.
delete_voice_template(Client, TemplateName, Input) ->
    delete_voice_template(Client, TemplateName, Input, []).
delete_voice_template(Client, TemplateName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/voice"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
get_adm_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_adm_channel(Client, ApplicationId, #{}, #{}).

get_adm_channel(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_adm_channel(Client, ApplicationId, QueryMap, HeadersMap, []).

get_adm_channel(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/adm"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the APNs
%% channel for an application.
get_apns_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_apns_channel(Client, ApplicationId, #{}, #{}).

get_apns_channel(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_apns_channel(Client, ApplicationId, QueryMap, HeadersMap, []).

get_apns_channel(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the APNs
%% sandbox channel for an application.
get_apns_sandbox_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_apns_sandbox_channel(Client, ApplicationId, #{}, #{}).

get_apns_sandbox_channel(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_apns_sandbox_channel(Client, ApplicationId, QueryMap, HeadersMap, []).

get_apns_sandbox_channel(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns_sandbox"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the APNs VoIP
%% channel for an application.
get_apns_voip_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_apns_voip_channel(Client, ApplicationId, #{}, #{}).

get_apns_voip_channel(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_apns_voip_channel(Client, ApplicationId, QueryMap, HeadersMap, []).

get_apns_voip_channel(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns_voip"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the APNs VoIP
%% sandbox channel for an application.
get_apns_voip_sandbox_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_apns_voip_sandbox_channel(Client, ApplicationId, #{}, #{}).

get_apns_voip_sandbox_channel(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_apns_voip_sandbox_channel(Client, ApplicationId, QueryMap, HeadersMap, []).

get_apns_voip_sandbox_channel(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns_voip_sandbox"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an application.
get_app(Client, ApplicationId)
  when is_map(Client) ->
    get_app(Client, ApplicationId, #{}, #{}).

get_app(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_app(Client, ApplicationId, QueryMap, HeadersMap, []).

get_app(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves (queries) pre-aggregated data for a standard metric that
%% applies to an application.
get_application_date_range_kpi(Client, ApplicationId, KpiName)
  when is_map(Client) ->
    get_application_date_range_kpi(Client, ApplicationId, KpiName, #{}, #{}).

get_application_date_range_kpi(Client, ApplicationId, KpiName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application_date_range_kpi(Client, ApplicationId, KpiName, QueryMap, HeadersMap, []).

get_application_date_range_kpi(Client, ApplicationId, KpiName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/kpis/daterange/", aws_util:encode_uri(KpiName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_application_settings(Client, ApplicationId)
  when is_map(Client) ->
    get_application_settings(Client, ApplicationId, #{}, #{}).

get_application_settings(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application_settings(Client, ApplicationId, QueryMap, HeadersMap, []).

get_application_settings(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/settings"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about all the applications that are associated
%% with your Amazon Pinpoint account.
get_apps(Client)
  when is_map(Client) ->
    get_apps(Client, #{}, #{}).

get_apps(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_apps(Client, QueryMap, HeadersMap, []).

get_apps(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_baidu_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_baidu_channel(Client, ApplicationId, #{}, #{}).

get_baidu_channel(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_baidu_channel(Client, ApplicationId, QueryMap, HeadersMap, []).

get_baidu_channel(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/baidu"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status, configuration, and other
%% settings for a campaign.
get_campaign(Client, ApplicationId, CampaignId)
  when is_map(Client) ->
    get_campaign(Client, ApplicationId, CampaignId, #{}, #{}).

get_campaign(Client, ApplicationId, CampaignId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_campaign(Client, ApplicationId, CampaignId, QueryMap, HeadersMap, []).

get_campaign(Client, ApplicationId, CampaignId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/campaigns/", aws_util:encode_uri(CampaignId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about all the activities for a campaign.
get_campaign_activities(Client, ApplicationId, CampaignId)
  when is_map(Client) ->
    get_campaign_activities(Client, ApplicationId, CampaignId, #{}, #{}).

get_campaign_activities(Client, ApplicationId, CampaignId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_campaign_activities(Client, ApplicationId, CampaignId, QueryMap, HeadersMap, []).

get_campaign_activities(Client, ApplicationId, CampaignId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/campaigns/", aws_util:encode_uri(CampaignId), "/activities"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_campaign_date_range_kpi(Client, ApplicationId, CampaignId, KpiName)
  when is_map(Client) ->
    get_campaign_date_range_kpi(Client, ApplicationId, CampaignId, KpiName, #{}, #{}).

get_campaign_date_range_kpi(Client, ApplicationId, CampaignId, KpiName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_campaign_date_range_kpi(Client, ApplicationId, CampaignId, KpiName, QueryMap, HeadersMap, []).

get_campaign_date_range_kpi(Client, ApplicationId, CampaignId, KpiName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/campaigns/", aws_util:encode_uri(CampaignId), "/kpis/daterange/", aws_util:encode_uri(KpiName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_campaign_version(Client, ApplicationId, CampaignId, Version)
  when is_map(Client) ->
    get_campaign_version(Client, ApplicationId, CampaignId, Version, #{}, #{}).

get_campaign_version(Client, ApplicationId, CampaignId, Version, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_campaign_version(Client, ApplicationId, CampaignId, Version, QueryMap, HeadersMap, []).

get_campaign_version(Client, ApplicationId, CampaignId, Version, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/campaigns/", aws_util:encode_uri(CampaignId), "/versions/", aws_util:encode_uri(Version), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status, configuration, and other
%% settings for all versions of a campaign.
get_campaign_versions(Client, ApplicationId, CampaignId)
  when is_map(Client) ->
    get_campaign_versions(Client, ApplicationId, CampaignId, #{}, #{}).

get_campaign_versions(Client, ApplicationId, CampaignId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_campaign_versions(Client, ApplicationId, CampaignId, QueryMap, HeadersMap, []).

get_campaign_versions(Client, ApplicationId, CampaignId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/campaigns/", aws_util:encode_uri(CampaignId), "/versions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_campaigns(Client, ApplicationId)
  when is_map(Client) ->
    get_campaigns(Client, ApplicationId, #{}, #{}).

get_campaigns(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_campaigns(Client, ApplicationId, QueryMap, HeadersMap, []).

get_campaigns(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/campaigns"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_channels(Client, ApplicationId)
  when is_map(Client) ->
    get_channels(Client, ApplicationId, #{}, #{}).

get_channels(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channels(Client, ApplicationId, QueryMap, HeadersMap, []).

get_channels(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the email
%% channel for an application.
get_email_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_email_channel(Client, ApplicationId, #{}, #{}).

get_email_channel(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_email_channel(Client, ApplicationId, QueryMap, HeadersMap, []).

get_email_channel(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/email"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the content and settings of a message template for messages
%% that are sent through the email channel.
get_email_template(Client, TemplateName)
  when is_map(Client) ->
    get_email_template(Client, TemplateName, #{}, #{}).

get_email_template(Client, TemplateName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_email_template(Client, TemplateName, QueryMap, HeadersMap, []).

get_email_template(Client, TemplateName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/email"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"version">>, maps:get(<<"version">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the settings and attributes of a specific
%% endpoint for an application.
get_endpoint(Client, ApplicationId, EndpointId)
  when is_map(Client) ->
    get_endpoint(Client, ApplicationId, EndpointId, #{}, #{}).

get_endpoint(Client, ApplicationId, EndpointId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_endpoint(Client, ApplicationId, EndpointId, QueryMap, HeadersMap, []).

get_endpoint(Client, ApplicationId, EndpointId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/endpoints/", aws_util:encode_uri(EndpointId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the event stream settings for an
%% application.
get_event_stream(Client, ApplicationId)
  when is_map(Client) ->
    get_event_stream(Client, ApplicationId, #{}, #{}).

get_event_stream(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_event_stream(Client, ApplicationId, QueryMap, HeadersMap, []).

get_event_stream(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/eventstream"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of a specific
%% export job for an application.
get_export_job(Client, ApplicationId, JobId)
  when is_map(Client) ->
    get_export_job(Client, ApplicationId, JobId, #{}, #{}).

get_export_job(Client, ApplicationId, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_export_job(Client, ApplicationId, JobId, QueryMap, HeadersMap, []).

get_export_job(Client, ApplicationId, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/jobs/export/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of all the export
%% jobs for an application.
get_export_jobs(Client, ApplicationId)
  when is_map(Client) ->
    get_export_jobs(Client, ApplicationId, #{}, #{}).

get_export_jobs(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_export_jobs(Client, ApplicationId, QueryMap, HeadersMap, []).

get_export_jobs(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/jobs/export"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_gcm_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_gcm_channel(Client, ApplicationId, #{}, #{}).

get_gcm_channel(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_gcm_channel(Client, ApplicationId, QueryMap, HeadersMap, []).

get_gcm_channel(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/gcm"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of a specific
%% import job for an application.
get_import_job(Client, ApplicationId, JobId)
  when is_map(Client) ->
    get_import_job(Client, ApplicationId, JobId, #{}, #{}).

get_import_job(Client, ApplicationId, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_import_job(Client, ApplicationId, JobId, QueryMap, HeadersMap, []).

get_import_job(Client, ApplicationId, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/jobs/import/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of all the import
%% jobs for an application.
get_import_jobs(Client, ApplicationId)
  when is_map(Client) ->
    get_import_jobs(Client, ApplicationId, #{}, #{}).

get_import_jobs(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_import_jobs(Client, ApplicationId, QueryMap, HeadersMap, []).

get_import_jobs(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/jobs/import"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)},
        {<<"token">>, maps:get(<<"token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the in-app messages targeted for the provided endpoint ID.
get_in_app_messages(Client, ApplicationId, EndpointId)
  when is_map(Client) ->
    get_in_app_messages(Client, ApplicationId, EndpointId, #{}, #{}).

get_in_app_messages(Client, ApplicationId, EndpointId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_in_app_messages(Client, ApplicationId, EndpointId, QueryMap, HeadersMap, []).

get_in_app_messages(Client, ApplicationId, EndpointId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/endpoints/", aws_util:encode_uri(EndpointId), "/inappmessages"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the content and settings of a message template for messages
%% sent through the in-app channel.
get_in_app_template(Client, TemplateName)
  when is_map(Client) ->
    get_in_app_template(Client, TemplateName, #{}, #{}).

get_in_app_template(Client, TemplateName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_in_app_template(Client, TemplateName, QueryMap, HeadersMap, []).

get_in_app_template(Client, TemplateName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/inapp"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"version">>, maps:get(<<"version">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status, configuration, and other
%% settings for a journey.
get_journey(Client, ApplicationId, JourneyId)
  when is_map(Client) ->
    get_journey(Client, ApplicationId, JourneyId, #{}, #{}).

get_journey(Client, ApplicationId, JourneyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_journey(Client, ApplicationId, JourneyId, QueryMap, HeadersMap, []).

get_journey(Client, ApplicationId, JourneyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/journeys/", aws_util:encode_uri(JourneyId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves (queries) pre-aggregated data for a standard engagement
%% metric that applies to a journey.
get_journey_date_range_kpi(Client, ApplicationId, JourneyId, KpiName)
  when is_map(Client) ->
    get_journey_date_range_kpi(Client, ApplicationId, JourneyId, KpiName, #{}, #{}).

get_journey_date_range_kpi(Client, ApplicationId, JourneyId, KpiName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_journey_date_range_kpi(Client, ApplicationId, JourneyId, KpiName, QueryMap, HeadersMap, []).

get_journey_date_range_kpi(Client, ApplicationId, JourneyId, KpiName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/journeys/", aws_util:encode_uri(JourneyId), "/kpis/daterange/", aws_util:encode_uri(KpiName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_journey_execution_activity_metrics(Client, ApplicationId, JourneyActivityId, JourneyId)
  when is_map(Client) ->
    get_journey_execution_activity_metrics(Client, ApplicationId, JourneyActivityId, JourneyId, #{}, #{}).

get_journey_execution_activity_metrics(Client, ApplicationId, JourneyActivityId, JourneyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_journey_execution_activity_metrics(Client, ApplicationId, JourneyActivityId, JourneyId, QueryMap, HeadersMap, []).

get_journey_execution_activity_metrics(Client, ApplicationId, JourneyActivityId, JourneyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/journeys/", aws_util:encode_uri(JourneyId), "/activities/", aws_util:encode_uri(JourneyActivityId), "/execution-metrics"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_journey_execution_metrics(Client, ApplicationId, JourneyId)
  when is_map(Client) ->
    get_journey_execution_metrics(Client, ApplicationId, JourneyId, #{}, #{}).

get_journey_execution_metrics(Client, ApplicationId, JourneyId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_journey_execution_metrics(Client, ApplicationId, JourneyId, QueryMap, HeadersMap, []).

get_journey_execution_metrics(Client, ApplicationId, JourneyId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/journeys/", aws_util:encode_uri(JourneyId), "/execution-metrics"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"page-size">>, maps:get(<<"page-size">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the content and settings of a message template for messages
%% that are sent through a push notification channel.
get_push_template(Client, TemplateName)
  when is_map(Client) ->
    get_push_template(Client, TemplateName, #{}, #{}).

get_push_template(Client, TemplateName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_push_template(Client, TemplateName, QueryMap, HeadersMap, []).

get_push_template(Client, TemplateName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/push"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"version">>, maps:get(<<"version">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an Amazon Pinpoint configuration for a
%% recommender model.
get_recommender_configuration(Client, RecommenderId)
  when is_map(Client) ->
    get_recommender_configuration(Client, RecommenderId, #{}, #{}).

get_recommender_configuration(Client, RecommenderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_recommender_configuration(Client, RecommenderId, QueryMap, HeadersMap, []).

get_recommender_configuration(Client, RecommenderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/recommenders/", aws_util:encode_uri(RecommenderId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about all the recommender model configurations
%% that are associated with your Amazon Pinpoint account.
get_recommender_configurations(Client)
  when is_map(Client) ->
    get_recommender_configurations(Client, #{}, #{}).

get_recommender_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_recommender_configurations(Client, QueryMap, HeadersMap, []).

get_recommender_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/recommenders"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_segment(Client, ApplicationId, SegmentId)
  when is_map(Client) ->
    get_segment(Client, ApplicationId, SegmentId, #{}, #{}).

get_segment(Client, ApplicationId, SegmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_segment(Client, ApplicationId, SegmentId, QueryMap, HeadersMap, []).

get_segment(Client, ApplicationId, SegmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/segments/", aws_util:encode_uri(SegmentId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the export
%% jobs for a segment.
get_segment_export_jobs(Client, ApplicationId, SegmentId)
  when is_map(Client) ->
    get_segment_export_jobs(Client, ApplicationId, SegmentId, #{}, #{}).

get_segment_export_jobs(Client, ApplicationId, SegmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_segment_export_jobs(Client, ApplicationId, SegmentId, QueryMap, HeadersMap, []).

get_segment_export_jobs(Client, ApplicationId, SegmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/segments/", aws_util:encode_uri(SegmentId), "/jobs/export"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_segment_import_jobs(Client, ApplicationId, SegmentId)
  when is_map(Client) ->
    get_segment_import_jobs(Client, ApplicationId, SegmentId, #{}, #{}).

get_segment_import_jobs(Client, ApplicationId, SegmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_segment_import_jobs(Client, ApplicationId, SegmentId, QueryMap, HeadersMap, []).

get_segment_import_jobs(Client, ApplicationId, SegmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/segments/", aws_util:encode_uri(SegmentId), "/jobs/import"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_segment_version(Client, ApplicationId, SegmentId, Version)
  when is_map(Client) ->
    get_segment_version(Client, ApplicationId, SegmentId, Version, #{}, #{}).

get_segment_version(Client, ApplicationId, SegmentId, Version, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_segment_version(Client, ApplicationId, SegmentId, Version, QueryMap, HeadersMap, []).

get_segment_version(Client, ApplicationId, SegmentId, Version, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/segments/", aws_util:encode_uri(SegmentId), "/versions/", aws_util:encode_uri(Version), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the configuration, dimension, and other
%% settings for all the versions of a specific segment that's associated with
%% an application.
get_segment_versions(Client, ApplicationId, SegmentId)
  when is_map(Client) ->
    get_segment_versions(Client, ApplicationId, SegmentId, #{}, #{}).

get_segment_versions(Client, ApplicationId, SegmentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_segment_versions(Client, ApplicationId, SegmentId, QueryMap, HeadersMap, []).

get_segment_versions(Client, ApplicationId, SegmentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/segments/", aws_util:encode_uri(SegmentId), "/versions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_segments(Client, ApplicationId)
  when is_map(Client) ->
    get_segments(Client, ApplicationId, #{}, #{}).

get_segments(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_segments(Client, ApplicationId, QueryMap, HeadersMap, []).

get_segments(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/segments"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
get_sms_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_sms_channel(Client, ApplicationId, #{}, #{}).

get_sms_channel(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sms_channel(Client, ApplicationId, QueryMap, HeadersMap, []).

get_sms_channel(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/sms"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the content and settings of a message template for messages
%% that are sent through the SMS channel.
get_sms_template(Client, TemplateName)
  when is_map(Client) ->
    get_sms_template(Client, TemplateName, #{}, #{}).

get_sms_template(Client, TemplateName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sms_template(Client, TemplateName, QueryMap, HeadersMap, []).

get_sms_template(Client, TemplateName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/sms"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"version">>, maps:get(<<"version">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about all the endpoints that are associated
%% with a specific user ID.
get_user_endpoints(Client, ApplicationId, UserId)
  when is_map(Client) ->
    get_user_endpoints(Client, ApplicationId, UserId, #{}, #{}).

get_user_endpoints(Client, ApplicationId, UserId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_user_endpoints(Client, ApplicationId, UserId, QueryMap, HeadersMap, []).

get_user_endpoints(Client, ApplicationId, UserId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/users/", aws_util:encode_uri(UserId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status and settings of the voice
%% channel for an application.
get_voice_channel(Client, ApplicationId)
  when is_map(Client) ->
    get_voice_channel(Client, ApplicationId, #{}, #{}).

get_voice_channel(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_channel(Client, ApplicationId, QueryMap, HeadersMap, []).

get_voice_channel(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/voice"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the content and settings of a message template for messages
%% that are sent through the voice channel.
get_voice_template(Client, TemplateName)
  when is_map(Client) ->
    get_voice_template(Client, TemplateName, #{}, #{}).

get_voice_template(Client, TemplateName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_voice_template(Client, TemplateName, QueryMap, HeadersMap, []).

get_voice_template(Client, TemplateName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/voice"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"version">>, maps:get(<<"version">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the status, configuration, and other
%% settings for all the journeys that are associated with an application.
list_journeys(Client, ApplicationId)
  when is_map(Client) ->
    list_journeys(Client, ApplicationId, #{}, #{}).

list_journeys(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_journeys(Client, ApplicationId, QueryMap, HeadersMap, []).

list_journeys(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/journeys"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about all the versions of a specific message
%% template.
list_template_versions(Client, TemplateName, TemplateType)
  when is_map(Client) ->
    list_template_versions(Client, TemplateName, TemplateType, #{}, #{}).

list_template_versions(Client, TemplateName, TemplateType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_template_versions(Client, TemplateName, TemplateType, QueryMap, HeadersMap, []).

list_template_versions(Client, TemplateName, TemplateType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/", aws_util:encode_uri(TemplateType), "/versions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
list_templates(Client)
  when is_map(Client) ->
    list_templates(Client, #{}, #{}).

list_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_templates(Client, QueryMap, HeadersMap, []).

list_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/templates"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
phone_number_validate(Client, Input) ->
    phone_number_validate(Client, Input, []).
phone_number_validate(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/phone/number/validate"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new event stream for an application or updates the settings
%% of an existing event stream for an application.
put_event_stream(Client, ApplicationId, Input) ->
    put_event_stream(Client, ApplicationId, Input, []).
put_event_stream(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/eventstream"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new event to record for endpoints, or creates or updates
%% endpoint data that existing events are associated with.
put_events(Client, ApplicationId, Input) ->
    put_events(Client, ApplicationId, Input, []).
put_events(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/events"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes one or more attributes, of the same attribute type, from all
%% the endpoints that are associated with an application.
remove_attributes(Client, ApplicationId, AttributeType, Input) ->
    remove_attributes(Client, ApplicationId, AttributeType, Input, []).
remove_attributes(Client, ApplicationId, AttributeType, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/attributes/", aws_util:encode_uri(AttributeType), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates and sends a direct message.
send_messages(Client, ApplicationId, Input) ->
    send_messages(Client, ApplicationId, Input, []).
send_messages(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/messages"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Send an OTP message
send_o_t_p_message(Client, ApplicationId, Input) ->
    send_o_t_p_message(Client, ApplicationId, Input, []).
send_o_t_p_message(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/otp"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates and sends a message to a list of users.
send_users_messages(Client, ApplicationId, Input) ->
    send_users_messages(Client, ApplicationId, Input, []).
send_users_messages(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/users-messages"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds one or more tags (keys and values) to an application, campaign,
%% message template, or segment.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes one or more tags (keys and values) from an application,
%% campaign, message template, or segment.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
update_adm_channel(Client, ApplicationId, Input) ->
    update_adm_channel(Client, ApplicationId, Input, []).
update_adm_channel(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/adm"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the APNs channel for an application or updates the status and
%% settings of the APNs channel for an application.
update_apns_channel(Client, ApplicationId, Input) ->
    update_apns_channel(Client, ApplicationId, Input, []).
update_apns_channel(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the APNs sandbox channel for an application or updates the
%% status and settings of the APNs sandbox channel for an application.
update_apns_sandbox_channel(Client, ApplicationId, Input) ->
    update_apns_sandbox_channel(Client, ApplicationId, Input, []).
update_apns_sandbox_channel(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns_sandbox"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the APNs VoIP channel for an application or updates the
%% status and settings of the APNs VoIP channel for an application.
update_apns_voip_channel(Client, ApplicationId, Input) ->
    update_apns_voip_channel(Client, ApplicationId, Input, []).
update_apns_voip_channel(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns_voip"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
update_apns_voip_sandbox_channel(Client, ApplicationId, Input) ->
    update_apns_voip_sandbox_channel(Client, ApplicationId, Input, []).
update_apns_voip_sandbox_channel(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/apns_voip_sandbox"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the settings for an application.
update_application_settings(Client, ApplicationId, Input) ->
    update_application_settings(Client, ApplicationId, Input, []).
update_application_settings(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/settings"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the Baidu channel for an application or updates the status
%% and settings of the Baidu channel for an application.
update_baidu_channel(Client, ApplicationId, Input) ->
    update_baidu_channel(Client, ApplicationId, Input, []).
update_baidu_channel(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/baidu"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configuration and other settings for a campaign.
update_campaign(Client, ApplicationId, CampaignId, Input) ->
    update_campaign(Client, ApplicationId, CampaignId, Input, []).
update_campaign(Client, ApplicationId, CampaignId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/campaigns/", aws_util:encode_uri(CampaignId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the email channel for an application or updates the status
%% and settings of the email channel for an application.
update_email_channel(Client, ApplicationId, Input) ->
    update_email_channel(Client, ApplicationId, Input, []).
update_email_channel(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/email"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing message template for messages that are sent
%% through the email channel.
update_email_template(Client, TemplateName, Input) ->
    update_email_template(Client, TemplateName, Input, []).
update_email_template(Client, TemplateName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/email"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
update_endpoint(Client, ApplicationId, EndpointId, Input) ->
    update_endpoint(Client, ApplicationId, EndpointId, Input, []).
update_endpoint(Client, ApplicationId, EndpointId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/endpoints/", aws_util:encode_uri(EndpointId), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
update_endpoints_batch(Client, ApplicationId, Input) ->
    update_endpoints_batch(Client, ApplicationId, Input, []).
update_endpoints_batch(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/endpoints"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the GCM channel for an application or updates the status and
%% settings of the GCM channel for an application.
update_gcm_channel(Client, ApplicationId, Input) ->
    update_gcm_channel(Client, ApplicationId, Input, []).
update_gcm_channel(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/gcm"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing message template for messages sent through the
%% in-app message channel.
update_in_app_template(Client, TemplateName, Input) ->
    update_in_app_template(Client, TemplateName, Input, []).
update_in_app_template(Client, TemplateName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/inapp"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
update_journey(Client, ApplicationId, JourneyId, Input) ->
    update_journey(Client, ApplicationId, JourneyId, Input, []).
update_journey(Client, ApplicationId, JourneyId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/journeys/", aws_util:encode_uri(JourneyId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Pause, resume or cancels (stops) a journey.
update_journey_state(Client, ApplicationId, JourneyId, Input) ->
    update_journey_state(Client, ApplicationId, JourneyId, Input, []).
update_journey_state(Client, ApplicationId, JourneyId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/journeys/", aws_util:encode_uri(JourneyId), "/state"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing message template for messages that are sent
%% through a push notification channel.
update_push_template(Client, TemplateName, Input) ->
    update_push_template(Client, TemplateName, Input, []).
update_push_template(Client, TemplateName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/push"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
update_recommender_configuration(Client, RecommenderId, Input) ->
    update_recommender_configuration(Client, RecommenderId, Input, []).
update_recommender_configuration(Client, RecommenderId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/recommenders/", aws_util:encode_uri(RecommenderId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
update_segment(Client, ApplicationId, SegmentId, Input) ->
    update_segment(Client, ApplicationId, SegmentId, Input, []).
update_segment(Client, ApplicationId, SegmentId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/segments/", aws_util:encode_uri(SegmentId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the SMS channel for an application or updates the status and
%% settings of the SMS channel for an application.
update_sms_channel(Client, ApplicationId, Input) ->
    update_sms_channel(Client, ApplicationId, Input, []).
update_sms_channel(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/sms"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing message template for messages that are sent
%% through the SMS channel.
update_sms_template(Client, TemplateName, Input) ->
    update_sms_template(Client, TemplateName, Input, []).
update_sms_template(Client, TemplateName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/sms"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
update_template_active_version(Client, TemplateName, TemplateType, Input) ->
    update_template_active_version(Client, TemplateName, TemplateType, Input, []).
update_template_active_version(Client, TemplateName, TemplateType, Input0, Options0) ->
    Method = put,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/", aws_util:encode_uri(TemplateType), "/active-version"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the voice channel for an application or updates the status
%% and settings of the voice channel for an application.
update_voice_channel(Client, ApplicationId, Input) ->
    update_voice_channel(Client, ApplicationId, Input, []).
update_voice_channel(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/channels/voice"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing message template for messages that are sent
%% through the voice channel.
update_voice_template(Client, TemplateName, Input) ->
    update_voice_template(Client, TemplateName, Input, []).
update_voice_template(Client, TemplateName, Input0, Options0) ->
    Method = put,
    Path = ["/v1/templates/", aws_util:encode_uri(TemplateName), "/voice"],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
verify_o_t_p_message(Client, ApplicationId, Input) ->
    verify_o_t_p_message(Client, ApplicationId, Input, []).
verify_o_t_p_message(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/apps/", aws_util:encode_uri(ApplicationId), "/verify-otp"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


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
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

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
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
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
