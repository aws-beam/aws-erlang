%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon QuickSight API Reference
%%
%% Amazon Quick Sight is a fully managed, serverless business intelligence
%% service for the
%% Amazon Web Services Cloud that makes it easy to extend data and insights
%% to every user in your
%% organization.
%%
%% This API reference contains documentation for a programming interface that
%% you can use to manage Amazon Quick Sight.
-module(aws_quicksight).

-export([batch_create_topic_reviewed_answer/4,
         batch_create_topic_reviewed_answer/5,
         batch_delete_topic_reviewed_answer/4,
         batch_delete_topic_reviewed_answer/5,
         cancel_ingestion/5,
         cancel_ingestion/6,
         create_account_customization/3,
         create_account_customization/4,
         create_account_subscription/3,
         create_account_subscription/4,
         create_action_connector/3,
         create_action_connector/4,
         create_analysis/4,
         create_analysis/5,
         create_brand/4,
         create_brand/5,
         create_custom_permissions/3,
         create_custom_permissions/4,
         create_dashboard/4,
         create_dashboard/5,
         create_data_set/3,
         create_data_set/4,
         create_data_source/3,
         create_data_source/4,
         create_folder/4,
         create_folder/5,
         create_folder_membership/6,
         create_folder_membership/7,
         create_group/4,
         create_group/5,
         create_group_membership/6,
         create_group_membership/7,
         create_iam_policy_assignment/4,
         create_iam_policy_assignment/5,
         create_ingestion/5,
         create_ingestion/6,
         create_namespace/3,
         create_namespace/4,
         create_refresh_schedule/4,
         create_refresh_schedule/5,
         create_role_membership/6,
         create_role_membership/7,
         create_template/4,
         create_template/5,
         create_template_alias/5,
         create_template_alias/6,
         create_theme/4,
         create_theme/5,
         create_theme_alias/5,
         create_theme_alias/6,
         create_topic/3,
         create_topic/4,
         create_topic_refresh_schedule/4,
         create_topic_refresh_schedule/5,
         create_vpc_connection/3,
         create_vpc_connection/4,
         delete_account_custom_permission/3,
         delete_account_custom_permission/4,
         delete_account_customization/3,
         delete_account_customization/4,
         delete_account_subscription/3,
         delete_account_subscription/4,
         delete_action_connector/4,
         delete_action_connector/5,
         delete_analysis/4,
         delete_analysis/5,
         delete_brand/4,
         delete_brand/5,
         delete_brand_assignment/3,
         delete_brand_assignment/4,
         delete_custom_permissions/4,
         delete_custom_permissions/5,
         delete_dashboard/4,
         delete_dashboard/5,
         delete_data_set/4,
         delete_data_set/5,
         delete_data_set_refresh_properties/4,
         delete_data_set_refresh_properties/5,
         delete_data_source/4,
         delete_data_source/5,
         delete_default_q_business_application/3,
         delete_default_q_business_application/4,
         delete_folder/4,
         delete_folder/5,
         delete_folder_membership/6,
         delete_folder_membership/7,
         delete_group/5,
         delete_group/6,
         delete_group_membership/6,
         delete_group_membership/7,
         delete_iam_policy_assignment/5,
         delete_iam_policy_assignment/6,
         delete_identity_propagation_config/4,
         delete_identity_propagation_config/5,
         delete_namespace/4,
         delete_namespace/5,
         delete_refresh_schedule/5,
         delete_refresh_schedule/6,
         delete_role_custom_permission/5,
         delete_role_custom_permission/6,
         delete_role_membership/6,
         delete_role_membership/7,
         delete_template/4,
         delete_template/5,
         delete_template_alias/5,
         delete_template_alias/6,
         delete_theme/4,
         delete_theme/5,
         delete_theme_alias/5,
         delete_theme_alias/6,
         delete_topic/4,
         delete_topic/5,
         delete_topic_refresh_schedule/5,
         delete_topic_refresh_schedule/6,
         delete_user/5,
         delete_user/6,
         delete_user_by_principal_id/5,
         delete_user_by_principal_id/6,
         delete_user_custom_permission/5,
         delete_user_custom_permission/6,
         delete_vpc_connection/4,
         delete_vpc_connection/5,
         describe_account_custom_permission/2,
         describe_account_custom_permission/4,
         describe_account_custom_permission/5,
         describe_account_customization/2,
         describe_account_customization/4,
         describe_account_customization/5,
         describe_account_settings/2,
         describe_account_settings/4,
         describe_account_settings/5,
         describe_account_subscription/2,
         describe_account_subscription/4,
         describe_account_subscription/5,
         describe_action_connector/3,
         describe_action_connector/5,
         describe_action_connector/6,
         describe_action_connector_permissions/3,
         describe_action_connector_permissions/5,
         describe_action_connector_permissions/6,
         describe_analysis/3,
         describe_analysis/5,
         describe_analysis/6,
         describe_analysis_definition/3,
         describe_analysis_definition/5,
         describe_analysis_definition/6,
         describe_analysis_permissions/3,
         describe_analysis_permissions/5,
         describe_analysis_permissions/6,
         describe_asset_bundle_export_job/3,
         describe_asset_bundle_export_job/5,
         describe_asset_bundle_export_job/6,
         describe_asset_bundle_import_job/3,
         describe_asset_bundle_import_job/5,
         describe_asset_bundle_import_job/6,
         describe_brand/3,
         describe_brand/5,
         describe_brand/6,
         describe_brand_assignment/2,
         describe_brand_assignment/4,
         describe_brand_assignment/5,
         describe_brand_published_version/3,
         describe_brand_published_version/5,
         describe_brand_published_version/6,
         describe_custom_permissions/3,
         describe_custom_permissions/5,
         describe_custom_permissions/6,
         describe_dashboard/3,
         describe_dashboard/5,
         describe_dashboard/6,
         describe_dashboard_definition/3,
         describe_dashboard_definition/5,
         describe_dashboard_definition/6,
         describe_dashboard_permissions/3,
         describe_dashboard_permissions/5,
         describe_dashboard_permissions/6,
         describe_dashboard_snapshot_job/4,
         describe_dashboard_snapshot_job/6,
         describe_dashboard_snapshot_job/7,
         describe_dashboard_snapshot_job_result/4,
         describe_dashboard_snapshot_job_result/6,
         describe_dashboard_snapshot_job_result/7,
         describe_dashboards_q_a_configuration/2,
         describe_dashboards_q_a_configuration/4,
         describe_dashboards_q_a_configuration/5,
         describe_data_set/3,
         describe_data_set/5,
         describe_data_set/6,
         describe_data_set_permissions/3,
         describe_data_set_permissions/5,
         describe_data_set_permissions/6,
         describe_data_set_refresh_properties/3,
         describe_data_set_refresh_properties/5,
         describe_data_set_refresh_properties/6,
         describe_data_source/3,
         describe_data_source/5,
         describe_data_source/6,
         describe_data_source_permissions/3,
         describe_data_source_permissions/5,
         describe_data_source_permissions/6,
         describe_default_q_business_application/2,
         describe_default_q_business_application/4,
         describe_default_q_business_application/5,
         describe_folder/3,
         describe_folder/5,
         describe_folder/6,
         describe_folder_permissions/3,
         describe_folder_permissions/5,
         describe_folder_permissions/6,
         describe_folder_resolved_permissions/3,
         describe_folder_resolved_permissions/5,
         describe_folder_resolved_permissions/6,
         describe_group/4,
         describe_group/6,
         describe_group/7,
         describe_group_membership/5,
         describe_group_membership/7,
         describe_group_membership/8,
         describe_iam_policy_assignment/4,
         describe_iam_policy_assignment/6,
         describe_iam_policy_assignment/7,
         describe_ingestion/4,
         describe_ingestion/6,
         describe_ingestion/7,
         describe_ip_restriction/2,
         describe_ip_restriction/4,
         describe_ip_restriction/5,
         describe_key_registration/2,
         describe_key_registration/4,
         describe_key_registration/5,
         describe_namespace/3,
         describe_namespace/5,
         describe_namespace/6,
         describe_q_personalization_configuration/2,
         describe_q_personalization_configuration/4,
         describe_q_personalization_configuration/5,
         describe_quick_sight_q_search_configuration/2,
         describe_quick_sight_q_search_configuration/4,
         describe_quick_sight_q_search_configuration/5,
         describe_refresh_schedule/4,
         describe_refresh_schedule/6,
         describe_refresh_schedule/7,
         describe_role_custom_permission/4,
         describe_role_custom_permission/6,
         describe_role_custom_permission/7,
         describe_template/3,
         describe_template/5,
         describe_template/6,
         describe_template_alias/4,
         describe_template_alias/6,
         describe_template_alias/7,
         describe_template_definition/3,
         describe_template_definition/5,
         describe_template_definition/6,
         describe_template_permissions/3,
         describe_template_permissions/5,
         describe_template_permissions/6,
         describe_theme/3,
         describe_theme/5,
         describe_theme/6,
         describe_theme_alias/4,
         describe_theme_alias/6,
         describe_theme_alias/7,
         describe_theme_permissions/3,
         describe_theme_permissions/5,
         describe_theme_permissions/6,
         describe_topic/3,
         describe_topic/5,
         describe_topic/6,
         describe_topic_permissions/3,
         describe_topic_permissions/5,
         describe_topic_permissions/6,
         describe_topic_refresh/4,
         describe_topic_refresh/6,
         describe_topic_refresh/7,
         describe_topic_refresh_schedule/4,
         describe_topic_refresh_schedule/6,
         describe_topic_refresh_schedule/7,
         describe_user/4,
         describe_user/6,
         describe_user/7,
         describe_vpc_connection/3,
         describe_vpc_connection/5,
         describe_vpc_connection/6,
         generate_embed_url_for_anonymous_user/3,
         generate_embed_url_for_anonymous_user/4,
         generate_embed_url_for_registered_user/3,
         generate_embed_url_for_registered_user/4,
         generate_embed_url_for_registered_user_with_identity/3,
         generate_embed_url_for_registered_user_with_identity/4,
         get_dashboard_embed_url/4,
         get_dashboard_embed_url/6,
         get_dashboard_embed_url/7,
         get_flow_metadata/3,
         get_flow_metadata/5,
         get_flow_metadata/6,
         get_flow_permissions/3,
         get_flow_permissions/5,
         get_flow_permissions/6,
         get_session_embed_url/2,
         get_session_embed_url/4,
         get_session_embed_url/5,
         list_action_connectors/2,
         list_action_connectors/4,
         list_action_connectors/5,
         list_analyses/2,
         list_analyses/4,
         list_analyses/5,
         list_asset_bundle_export_jobs/2,
         list_asset_bundle_export_jobs/4,
         list_asset_bundle_export_jobs/5,
         list_asset_bundle_import_jobs/2,
         list_asset_bundle_import_jobs/4,
         list_asset_bundle_import_jobs/5,
         list_brands/2,
         list_brands/4,
         list_brands/5,
         list_custom_permissions/2,
         list_custom_permissions/4,
         list_custom_permissions/5,
         list_dashboard_versions/3,
         list_dashboard_versions/5,
         list_dashboard_versions/6,
         list_dashboards/2,
         list_dashboards/4,
         list_dashboards/5,
         list_data_sets/2,
         list_data_sets/4,
         list_data_sets/5,
         list_data_sources/2,
         list_data_sources/4,
         list_data_sources/5,
         list_flows/2,
         list_flows/4,
         list_flows/5,
         list_folder_members/3,
         list_folder_members/5,
         list_folder_members/6,
         list_folders/2,
         list_folders/4,
         list_folders/5,
         list_folders_for_resource/3,
         list_folders_for_resource/5,
         list_folders_for_resource/6,
         list_group_memberships/4,
         list_group_memberships/6,
         list_group_memberships/7,
         list_groups/3,
         list_groups/5,
         list_groups/6,
         list_iam_policy_assignments/3,
         list_iam_policy_assignments/5,
         list_iam_policy_assignments/6,
         list_iam_policy_assignments_for_user/4,
         list_iam_policy_assignments_for_user/6,
         list_iam_policy_assignments_for_user/7,
         list_identity_propagation_configs/2,
         list_identity_propagation_configs/4,
         list_identity_propagation_configs/5,
         list_ingestions/3,
         list_ingestions/5,
         list_ingestions/6,
         list_namespaces/2,
         list_namespaces/4,
         list_namespaces/5,
         list_refresh_schedules/3,
         list_refresh_schedules/5,
         list_refresh_schedules/6,
         list_role_memberships/4,
         list_role_memberships/6,
         list_role_memberships/7,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_template_aliases/3,
         list_template_aliases/5,
         list_template_aliases/6,
         list_template_versions/3,
         list_template_versions/5,
         list_template_versions/6,
         list_templates/2,
         list_templates/4,
         list_templates/5,
         list_theme_aliases/3,
         list_theme_aliases/5,
         list_theme_aliases/6,
         list_theme_versions/3,
         list_theme_versions/5,
         list_theme_versions/6,
         list_themes/2,
         list_themes/4,
         list_themes/5,
         list_topic_refresh_schedules/3,
         list_topic_refresh_schedules/5,
         list_topic_refresh_schedules/6,
         list_topic_reviewed_answers/3,
         list_topic_reviewed_answers/5,
         list_topic_reviewed_answers/6,
         list_topics/2,
         list_topics/4,
         list_topics/5,
         list_user_groups/4,
         list_user_groups/6,
         list_user_groups/7,
         list_users/3,
         list_users/5,
         list_users/6,
         list_vpc_connections/2,
         list_vpc_connections/4,
         list_vpc_connections/5,
         predict_q_a_results/3,
         predict_q_a_results/4,
         put_data_set_refresh_properties/4,
         put_data_set_refresh_properties/5,
         register_user/4,
         register_user/5,
         restore_analysis/4,
         restore_analysis/5,
         search_action_connectors/3,
         search_action_connectors/4,
         search_analyses/3,
         search_analyses/4,
         search_dashboards/3,
         search_dashboards/4,
         search_data_sets/3,
         search_data_sets/4,
         search_data_sources/3,
         search_data_sources/4,
         search_flows/3,
         search_flows/4,
         search_folders/3,
         search_folders/4,
         search_groups/4,
         search_groups/5,
         search_topics/3,
         search_topics/4,
         start_asset_bundle_export_job/3,
         start_asset_bundle_export_job/4,
         start_asset_bundle_import_job/3,
         start_asset_bundle_import_job/4,
         start_dashboard_snapshot_job/4,
         start_dashboard_snapshot_job/5,
         start_dashboard_snapshot_job_schedule/5,
         start_dashboard_snapshot_job_schedule/6,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_account_custom_permission/3,
         update_account_custom_permission/4,
         update_account_customization/3,
         update_account_customization/4,
         update_account_settings/3,
         update_account_settings/4,
         update_action_connector/4,
         update_action_connector/5,
         update_action_connector_permissions/4,
         update_action_connector_permissions/5,
         update_analysis/4,
         update_analysis/5,
         update_analysis_permissions/4,
         update_analysis_permissions/5,
         update_application_with_token_exchange_grant/3,
         update_application_with_token_exchange_grant/4,
         update_brand/4,
         update_brand/5,
         update_brand_assignment/3,
         update_brand_assignment/4,
         update_brand_published_version/4,
         update_brand_published_version/5,
         update_custom_permissions/4,
         update_custom_permissions/5,
         update_dashboard/4,
         update_dashboard/5,
         update_dashboard_links/4,
         update_dashboard_links/5,
         update_dashboard_permissions/4,
         update_dashboard_permissions/5,
         update_dashboard_published_version/5,
         update_dashboard_published_version/6,
         update_dashboards_q_a_configuration/3,
         update_dashboards_q_a_configuration/4,
         update_data_set/4,
         update_data_set/5,
         update_data_set_permissions/4,
         update_data_set_permissions/5,
         update_data_source/4,
         update_data_source/5,
         update_data_source_permissions/4,
         update_data_source_permissions/5,
         update_default_q_business_application/3,
         update_default_q_business_application/4,
         update_flow_permissions/4,
         update_flow_permissions/5,
         update_folder/4,
         update_folder/5,
         update_folder_permissions/4,
         update_folder_permissions/5,
         update_group/5,
         update_group/6,
         update_iam_policy_assignment/5,
         update_iam_policy_assignment/6,
         update_identity_propagation_config/4,
         update_identity_propagation_config/5,
         update_ip_restriction/3,
         update_ip_restriction/4,
         update_key_registration/3,
         update_key_registration/4,
         update_public_sharing_settings/3,
         update_public_sharing_settings/4,
         update_q_personalization_configuration/3,
         update_q_personalization_configuration/4,
         update_quick_sight_q_search_configuration/3,
         update_quick_sight_q_search_configuration/4,
         update_refresh_schedule/4,
         update_refresh_schedule/5,
         update_role_custom_permission/5,
         update_role_custom_permission/6,
         update_s_p_i_c_e_capacity_configuration/3,
         update_s_p_i_c_e_capacity_configuration/4,
         update_template/4,
         update_template/5,
         update_template_alias/5,
         update_template_alias/6,
         update_template_permissions/4,
         update_template_permissions/5,
         update_theme/4,
         update_theme/5,
         update_theme_alias/5,
         update_theme_alias/6,
         update_theme_permissions/4,
         update_theme_permissions/5,
         update_topic/4,
         update_topic/5,
         update_topic_permissions/4,
         update_topic_permissions/5,
         update_topic_refresh_schedule/5,
         update_topic_refresh_schedule/6,
         update_user/5,
         update_user/6,
         update_user_custom_permission/5,
         update_user_custom_permission/6,
         update_vpc_connection/4,
         update_vpc_connection/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% box_plot_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => box_plot_chart_configuration(),
%%   <<"ColumnHierarchies">> => list(column_hierarchy()),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type box_plot_visual() :: #{binary() => any()}.


%% Example:
%% theme() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"ThemeId">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Version">> => theme_version()
%% }
-type theme() :: #{binary() => any()}.


%% Example:
%% data_point_drill_up_down_option() :: #{
%%   <<"AvailabilityStatus">> => list(any())
%% }
-type data_point_drill_up_down_option() :: #{binary() => any()}.


%% Example:
%% folder_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"FolderId">> => string(),
%%   <<"FolderType">> => list(any()),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"SharingModel">> => list(any())
%% }
-type folder_summary() :: #{binary() => any()}.


%% Example:
%% update_topic_refresh_schedule_response() :: #{
%%   <<"DatasetArn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TopicArn">> => string(),
%%   <<"TopicId">> => string()
%% }
-type update_topic_refresh_schedule_response() :: #{binary() => any()}.


%% Example:
%% line_chart_default_series_settings() :: #{
%%   <<"AxisBinding">> => list(any()),
%%   <<"LineStyleSettings">> => line_chart_line_style_settings(),
%%   <<"MarkerStyleSettings">> => line_chart_marker_style_settings()
%% }
-type line_chart_default_series_settings() :: #{binary() => any()}.


%% Example:
%% data_label_type() :: #{
%%   <<"DataPathLabelType">> => data_path_label_type(),
%%   <<"FieldLabelType">> => field_label_type(),
%%   <<"MaximumLabelType">> => maximum_label_type(),
%%   <<"MinimumLabelType">> => minimum_label_type(),
%%   <<"RangeEndsLabelType">> => range_ends_label_type()
%% }
-type data_label_type() :: #{binary() => any()}.


%% Example:
%% number_format_configuration() :: #{
%%   <<"FormatConfiguration">> => numeric_format_configuration()
%% }
-type number_format_configuration() :: #{binary() => any()}.


%% Example:
%% list_dashboards_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_dashboards_request() :: #{binary() => any()}.


%% Example:
%% growth_rate_computation() :: #{
%%   <<"ComputationId">> => string(),
%%   <<"Name">> => string(),
%%   <<"PeriodSize">> => integer(),
%%   <<"Time">> => dimension_field(),
%%   <<"Value">> => measure_field()
%% }
-type growth_rate_computation() :: #{binary() => any()}.

%% Example:
%% describe_dashboard_snapshot_job_request() :: #{}
-type describe_dashboard_snapshot_job_request() :: #{}.


%% Example:
%% delete_brand_assignment_response() :: #{
%%   <<"RequestId">> => string()
%% }
-type delete_brand_assignment_response() :: #{binary() => any()}.


%% Example:
%% update_dashboard_permissions_response() :: #{
%%   <<"DashboardArn">> => string(),
%%   <<"DashboardId">> => string(),
%%   <<"LinkSharingConfiguration">> => link_sharing_configuration(),
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_dashboard_permissions_response() :: #{binary() => any()}.


%% Example:
%% field_based_tooltip() :: #{
%%   <<"AggregationVisibility">> => list(any()),
%%   <<"TooltipFields">> => list(tooltip_item()),
%%   <<"TooltipTitleType">> => list(any())
%% }
-type field_based_tooltip() :: #{binary() => any()}.


%% Example:
%% gutter_style() :: #{
%%   <<"Show">> => boolean()
%% }
-type gutter_style() :: #{binary() => any()}.


%% Example:
%% delete_namespace_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_namespace_response() :: #{binary() => any()}.


%% Example:
%% date_time_parameter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(non_neg_integer())
%% }
-type date_time_parameter() :: #{binary() => any()}.


%% Example:
%% axis_label_options() :: #{
%%   <<"ApplyTo">> => axis_label_reference_options(),
%%   <<"CustomLabel">> => string(),
%%   <<"FontConfiguration">> => font_configuration()
%% }
-type axis_label_options() :: #{binary() => any()}.


%% Example:
%% geospatial_layer_definition() :: #{
%%   <<"LineLayer">> => geospatial_line_layer(),
%%   <<"PointLayer">> => geospatial_point_layer(),
%%   <<"PolygonLayer">> => geospatial_polygon_layer()
%% }
-type geospatial_layer_definition() :: #{binary() => any()}.


%% Example:
%% contextual_accent_palette() :: #{
%%   <<"Automation">> => palette(),
%%   <<"Connection">> => palette(),
%%   <<"Insight">> => palette(),
%%   <<"Visualization">> => palette()
%% }
-type contextual_accent_palette() :: #{binary() => any()}.


%% Example:
%% free_form_layout_canvas_size_options() :: #{
%%   <<"ScreenCanvasSizeOptions">> => free_form_layout_screen_canvas_size_options()
%% }
-type free_form_layout_canvas_size_options() :: #{binary() => any()}.


%% Example:
%% executive_summary_option() :: #{
%%   <<"AvailabilityStatus">> => list(any())
%% }
-type executive_summary_option() :: #{binary() => any()}.


%% Example:
%% image_menu_option() :: #{
%%   <<"AvailabilityStatus">> => list(any())
%% }
-type image_menu_option() :: #{binary() => any()}.


%% Example:
%% list_iam_policy_assignments_for_user_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_iam_policy_assignments_for_user_request() :: #{binary() => any()}.


%% Example:
%% dashboard_error() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"ViolatedEntities">> => list(entity())
%% }
-type dashboard_error() :: #{binary() => any()}.


%% Example:
%% pivot_table_field_collapse_state_option() :: #{
%%   <<"State">> => list(any()),
%%   <<"Target">> => pivot_table_field_collapse_state_target()
%% }
-type pivot_table_field_collapse_state_option() :: #{binary() => any()}.


%% Example:
%% get_dashboard_embed_url_response() :: #{
%%   <<"EmbedUrl">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type get_dashboard_embed_url_response() :: #{binary() => any()}.


%% Example:
%% reference_line_custom_label_configuration() :: #{
%%   <<"CustomLabel">> => string()
%% }
-type reference_line_custom_label_configuration() :: #{binary() => any()}.


%% Example:
%% describe_analysis_definition_response() :: #{
%%   <<"AnalysisId">> => string(),
%%   <<"Definition">> => analysis_definition(),
%%   <<"Errors">> => list(analysis_error()),
%%   <<"Name">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"ResourceStatus">> => list(any()),
%%   <<"Status">> => integer(),
%%   <<"ThemeArn">> => string()
%% }
-type describe_analysis_definition_response() :: #{binary() => any()}.


%% Example:
%% filled_map_configuration() :: #{
%%   <<"FieldWells">> => filled_map_field_wells(),
%%   <<"Interactions">> => visual_interaction_options(),
%%   <<"Legend">> => legend_options(),
%%   <<"MapStyleOptions">> => geospatial_map_style_options(),
%%   <<"SortConfiguration">> => filled_map_sort_configuration(),
%%   <<"Tooltip">> => tooltip_options(),
%%   <<"WindowOptions">> => geospatial_window_options()
%% }
-type filled_map_configuration() :: #{binary() => any()}.


%% Example:
%% brand_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"BrandId">> => string(),
%%   <<"BrandName">> => string(),
%%   <<"BrandStatus">> => list(any()),
%%   <<"CreatedTime">> => [non_neg_integer()],
%%   <<"Description">> => string(),
%%   <<"LastUpdatedTime">> => [non_neg_integer()]
%% }
-type brand_summary() :: #{binary() => any()}.


%% Example:
%% filter_date_time_picker_control() :: #{
%%   <<"CommitMode">> => list(any()),
%%   <<"DisplayOptions">> => date_time_picker_control_display_options(),
%%   <<"FilterControlId">> => string(),
%%   <<"SourceFilterId">> => string(),
%%   <<"Title">> => string(),
%%   <<"Type">> => list(any())
%% }
-type filter_date_time_picker_control() :: #{binary() => any()}.


%% Example:
%% update_dashboard_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationStatus">> => list(any()),
%%   <<"DashboardId">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"VersionArn">> => string()
%% }
-type update_dashboard_response() :: #{binary() => any()}.


%% Example:
%% reference_line_data_configuration() :: #{
%%   <<"AxisBinding">> => list(any()),
%%   <<"DynamicConfiguration">> => reference_line_dynamic_data_configuration(),
%%   <<"SeriesType">> => list(any()),
%%   <<"StaticConfiguration">> => reference_line_static_data_configuration()
%% }
-type reference_line_data_configuration() :: #{binary() => any()}.


%% Example:
%% template_version() :: #{
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DataSetConfigurations">> => list(data_set_configuration()),
%%   <<"Description">> => string(),
%%   <<"Errors">> => list(template_error()),
%%   <<"Sheets">> => list(sheet()),
%%   <<"SourceEntityArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"ThemeArn">> => string(),
%%   <<"VersionNumber">> => float()
%% }
-type template_version() :: #{binary() => any()}.


%% Example:
%% trend_arrow_options() :: #{
%%   <<"Visibility">> => list(any())
%% }
-type trend_arrow_options() :: #{binary() => any()}.


%% Example:
%% describe_account_custom_permission_response() :: #{
%%   <<"CustomPermissionsName">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_account_custom_permission_response() :: #{binary() => any()}.


%% Example:
%% radar_chart_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => radar_chart_configuration(),
%%   <<"ColumnHierarchies">> => list(column_hierarchy()),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type radar_chart_visual() :: #{binary() => any()}.


%% Example:
%% refresh_failure_email_alert() :: #{
%%   <<"AlertStatus">> => list(any())
%% }
-type refresh_failure_email_alert() :: #{binary() => any()}.


%% Example:
%% filter_list_control() :: #{
%%   <<"CascadingControlConfiguration">> => cascading_control_configuration(),
%%   <<"DisplayOptions">> => list_control_display_options(),
%%   <<"FilterControlId">> => string(),
%%   <<"SelectableValues">> => filter_selectable_values(),
%%   <<"SourceFilterId">> => string(),
%%   <<"Title">> => string(),
%%   <<"Type">> => list(any())
%% }
-type filter_list_control() :: #{binary() => any()}.


%% Example:
%% data_aggregation() :: #{
%%   <<"DatasetRowDateGranularity">> => list(any()),
%%   <<"DefaultDateColumnName">> => string()
%% }
-type data_aggregation() :: #{binary() => any()}.


%% Example:
%% field_sort() :: #{
%%   <<"Direction">> => list(any()),
%%   <<"FieldId">> => string()
%% }
-type field_sort() :: #{binary() => any()}.


%% Example:
%% update_s_p_i_c_e_capacity_configuration_request() :: #{
%%   <<"PurchaseMode">> := list(any())
%% }
-type update_s_p_i_c_e_capacity_configuration_request() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssetBundleImportJobId">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"FailureAction">> => list(any()),
%%   <<"JobStatus">> => list(any())
%% }
-type asset_bundle_import_job_summary() :: #{binary() => any()}.


%% Example:
%% data_point_menu_label_option() :: #{
%%   <<"AvailabilityStatus">> => list(any())
%% }
-type data_point_menu_label_option() :: #{binary() => any()}.


%% Example:
%% string_default_values() :: #{
%%   <<"DynamicValue">> => dynamic_default_value(),
%%   <<"StaticValues">> => list(string())
%% }
-type string_default_values() :: #{binary() => any()}.


%% Example:
%% topic_search_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Operator">> => list(any()),
%%   <<"Value">> => string()
%% }
-type topic_search_filter() :: #{binary() => any()}.


%% Example:
%% update_action_connector_permissions_request() :: #{
%%   <<"GrantPermissions">> => list(resource_permission()),
%%   <<"RevokePermissions">> => list(resource_permission())
%% }
-type update_action_connector_permissions_request() :: #{binary() => any()}.


%% Example:
%% data_stories_configurations() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type data_stories_configurations() :: #{binary() => any()}.


%% Example:
%% template_alias() :: #{
%%   <<"AliasName">> => string(),
%%   <<"Arn">> => string(),
%%   <<"TemplateVersionNumber">> => float()
%% }
-type template_alias() :: #{binary() => any()}.


%% Example:
%% describe_vpc_connection_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"VPCConnection">> => vpc_connection()
%% }
-type describe_vpc_connection_response() :: #{binary() => any()}.


%% Example:
%% search_flows_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Operator">> => list(any()),
%%   <<"Value">> => [string()]
%% }
-type search_flows_filter() :: #{binary() => any()}.


%% Example:
%% start_dashboard_snapshot_job_request() :: #{
%%   <<"SnapshotConfiguration">> := snapshot_configuration(),
%%   <<"SnapshotJobId">> := string(),
%%   <<"UserConfiguration">> := snapshot_user_configuration()
%% }
-type start_dashboard_snapshot_job_request() :: #{binary() => any()}.

%% Example:
%% describe_action_connector_permissions_request() :: #{}
-type describe_action_connector_permissions_request() :: #{}.


%% Example:
%% update_dashboard_request() :: #{
%%   <<"DashboardPublishOptions">> => dashboard_publish_options(),
%%   <<"Definition">> => dashboard_version_definition(),
%%   <<"Name">> := string(),
%%   <<"Parameters">> => parameters(),
%%   <<"SourceEntity">> => dashboard_source_entity(),
%%   <<"ThemeArn">> => string(),
%%   <<"ValidationStrategy">> => validation_strategy(),
%%   <<"VersionDescription">> => string()
%% }
-type update_dashboard_request() :: #{binary() => any()}.


%% Example:
%% data_set_refresh_properties() :: #{
%%   <<"FailureConfiguration">> => refresh_failure_configuration(),
%%   <<"RefreshConfiguration">> => refresh_configuration()
%% }
-type data_set_refresh_properties() :: #{binary() => any()}.


%% Example:
%% create_custom_permissions_request() :: #{
%%   <<"Capabilities">> => capabilities(),
%%   <<"CustomPermissionsName">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_custom_permissions_request() :: #{binary() => any()}.


%% Example:
%% describe_namespace_response() :: #{
%%   <<"Namespace">> => namespace_info_v2(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_namespace_response() :: #{binary() => any()}.


%% Example:
%% line_chart_aggregated_field_wells() :: #{
%%   <<"Category">> => list(dimension_field()),
%%   <<"Colors">> => list(dimension_field()),
%%   <<"SmallMultiples">> => list(dimension_field()),
%%   <<"Values">> => list(measure_field())
%% }
-type line_chart_aggregated_field_wells() :: #{binary() => any()}.


%% Example:
%% update_q_personalization_configuration_request() :: #{
%%   <<"PersonalizationMode">> := list(any())
%% }
-type update_q_personalization_configuration_request() :: #{binary() => any()}.


%% Example:
%% drill_down_filter() :: #{
%%   <<"CategoryFilter">> => category_drill_down_filter(),
%%   <<"NumericEqualityFilter">> => numeric_equality_drill_down_filter(),
%%   <<"TimeRangeFilter">> => time_range_drill_down_filter()
%% }
-type drill_down_filter() :: #{binary() => any()}.


%% Example:
%% topic_category_filter_constant() :: #{
%%   <<"CollectiveConstant">> => collective_constant(),
%%   <<"ConstantType">> => list(any()),
%%   <<"SingularConstant">> => string()
%% }
-type topic_category_filter_constant() :: #{binary() => any()}.


%% Example:
%% override_dataset_parameter_operation() :: #{
%%   <<"NewDefaultValues">> => new_default_values(),
%%   <<"NewParameterName">> => string(),
%%   <<"ParameterName">> => string()
%% }
-type override_dataset_parameter_operation() :: #{binary() => any()}.


%% Example:
%% bar_chart_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => bar_chart_configuration(),
%%   <<"ColumnHierarchies">> => list(column_hierarchy()),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type bar_chart_visual() :: #{binary() => any()}.


%% Example:
%% table_paginated_report_options() :: #{
%%   <<"OverflowColumnHeaderVisibility">> => list(any()),
%%   <<"VerticalOverflowVisibility">> => list(any())
%% }
-type table_paginated_report_options() :: #{binary() => any()}.


%% Example:
%% describe_data_set_refresh_properties_response() :: #{
%%   <<"DataSetRefreshProperties">> => data_set_refresh_properties(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_data_set_refresh_properties_response() :: #{binary() => any()}.


%% Example:
%% column_level_permission_rule() :: #{
%%   <<"ColumnNames">> => list(string()),
%%   <<"Principals">> => list(string())
%% }
-type column_level_permission_rule() :: #{binary() => any()}.


%% Example:
%% untag_column_operation() :: #{
%%   <<"ColumnName">> => string(),
%%   <<"TagNames">> => list(list(any())())
%% }
-type untag_column_operation() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_action_connectors_response() :: #{
%%   <<"ActionConnectorSummaries">> => list(action_connector_summary()),
%%   <<"NextToken">> => [string()],
%%   <<"RequestId">> => [string()],
%%   <<"Status">> => integer()
%% }
-type list_action_connectors_response() :: #{binary() => any()}.


%% Example:
%% snapshot_file_sheet_selection() :: #{
%%   <<"SelectionScope">> => list(any()),
%%   <<"SheetId">> => string(),
%%   <<"VisualIds">> => list(string())
%% }
-type snapshot_file_sheet_selection() :: #{binary() => any()}.

%% Example:
%% delete_account_subscription_request() :: #{}
-type delete_account_subscription_request() :: #{}.


%% Example:
%% internal_failure_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type internal_failure_exception() :: #{binary() => any()}.


%% Example:
%% plugin_visual_field_well() :: #{
%%   <<"AxisName">> => list(any()),
%%   <<"Dimensions">> => list(dimension_field()),
%%   <<"Measures">> => list(measure_field()),
%%   <<"Unaggregated">> => list(unaggregated_field())
%% }
-type plugin_visual_field_well() :: #{binary() => any()}.


%% Example:
%% create_columns_operation() :: #{
%%   <<"Columns">> => list(calculated_column())
%% }
-type create_columns_operation() :: #{binary() => any()}.


%% Example:
%% describe_dashboard_definition_response() :: #{
%%   <<"DashboardId">> => string(),
%%   <<"DashboardPublishOptions">> => dashboard_publish_options(),
%%   <<"Definition">> => dashboard_version_definition(),
%%   <<"Errors">> => list(dashboard_error()),
%%   <<"Name">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"ResourceStatus">> => list(any()),
%%   <<"Status">> => integer(),
%%   <<"ThemeArn">> => string()
%% }
-type describe_dashboard_definition_response() :: #{binary() => any()}.


%% Example:
%% table_border_options() :: #{
%%   <<"Color">> => string(),
%%   <<"Style">> => list(any()),
%%   <<"Thickness">> => integer()
%% }
-type table_border_options() :: #{binary() => any()}.


%% Example:
%% waterfall_chart_options() :: #{
%%   <<"TotalBarLabel">> => string()
%% }
-type waterfall_chart_options() :: #{binary() => any()}.


%% Example:
%% list_action_connectors_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_action_connectors_request() :: #{binary() => any()}.


%% Example:
%% geospatial_gradient_color() :: #{
%%   <<"DefaultOpacity">> => float(),
%%   <<"NullDataSettings">> => geospatial_null_data_settings(),
%%   <<"NullDataVisibility">> => list(any()),
%%   <<"StepColors">> => list(geospatial_gradient_step_color())
%% }
-type geospatial_gradient_color() :: #{binary() => any()}.


%% Example:
%% radar_chart_field_wells() :: #{
%%   <<"RadarChartAggregatedFieldWells">> => radar_chart_aggregated_field_wells()
%% }
-type radar_chart_field_wells() :: #{binary() => any()}.


%% Example:
%% start_dashboard_snapshot_job_schedule_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type start_dashboard_snapshot_job_schedule_response() :: #{binary() => any()}.


%% Example:
%% create_template_alias_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TemplateAlias">> => template_alias()
%% }
-type create_template_alias_response() :: #{binary() => any()}.


%% Example:
%% update_identity_propagation_config_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_identity_propagation_config_response() :: #{binary() => any()}.


%% Example:
%% label_options() :: #{
%%   <<"CustomLabel">> => string(),
%%   <<"FontConfiguration">> => font_configuration(),
%%   <<"Visibility">> => list(any())
%% }
-type label_options() :: #{binary() => any()}.


%% Example:
%% legend_options() :: #{
%%   <<"Height">> => string(),
%%   <<"Position">> => list(any()),
%%   <<"Title">> => label_options(),
%%   <<"ValueFontConfiguration">> => font_configuration(),
%%   <<"Visibility">> => list(any()),
%%   <<"Width">> => string()
%% }
-type legend_options() :: #{binary() => any()}.


%% Example:
%% registered_user_q_search_bar_embedding_configuration() :: #{
%%   <<"InitialTopicId">> => string()
%% }
-type registered_user_q_search_bar_embedding_configuration() :: #{binary() => any()}.

%% Example:
%% describe_account_settings_request() :: #{}
-type describe_account_settings_request() :: #{}.


%% Example:
%% string_parameter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string())
%% }
-type string_parameter() :: #{binary() => any()}.


%% Example:
%% upload_settings() :: #{
%%   <<"ContainsHeader">> => boolean(),
%%   <<"Delimiter">> => string(),
%%   <<"Format">> => list(any()),
%%   <<"StartFromRow">> => integer(),
%%   <<"TextQualifier">> => list(any())
%% }
-type upload_settings() :: #{binary() => any()}.


%% Example:
%% get_dashboard_embed_url_request() :: #{
%%   <<"AdditionalDashboardIds">> => list(string()),
%%   <<"IdentityType">> := list(any()),
%%   <<"Namespace">> => string(),
%%   <<"ResetDisabled">> => boolean(),
%%   <<"SessionLifetimeInMinutes">> => float(),
%%   <<"StatePersistenceEnabled">> => boolean(),
%%   <<"UndoRedoDisabled">> => boolean(),
%%   <<"UserArn">> => string()
%% }
-type get_dashboard_embed_url_request() :: #{binary() => any()}.


%% Example:
%% parameter_control() :: #{
%%   <<"DateTimePicker">> => parameter_date_time_picker_control(),
%%   <<"Dropdown">> => parameter_drop_down_control(),
%%   <<"List">> => parameter_list_control(),
%%   <<"Slider">> => parameter_slider_control(),
%%   <<"TextArea">> => parameter_text_area_control(),
%%   <<"TextField">> => parameter_text_field_control()
%% }
-type parameter_control() :: #{binary() => any()}.


%% Example:
%% cell_value_synonym() :: #{
%%   <<"CellValue">> => string(),
%%   <<"Synonyms">> => list(string())
%% }
-type cell_value_synonym() :: #{binary() => any()}.


%% Example:
%% topic_visual() :: #{
%%   <<"Ir">> => topic_i_r(),
%%   <<"Role">> => list(any()),
%%   <<"SupportingVisuals">> => list(topic_visual()),
%%   <<"VisualId">> => string()
%% }
-type topic_visual() :: #{binary() => any()}.

%% Example:
%% describe_data_source_request() :: #{}
-type describe_data_source_request() :: #{}.


%% Example:
%% snapshot_configuration() :: #{
%%   <<"DestinationConfiguration">> => snapshot_destination_configuration(),
%%   <<"FileGroups">> => list(snapshot_file_group()),
%%   <<"Parameters">> => parameters()
%% }
-type snapshot_configuration() :: #{binary() => any()}.


%% Example:
%% numerical_aggregation_function() :: #{
%%   <<"PercentileAggregation">> => percentile_aggregation(),
%%   <<"SimpleNumericalAggregation">> => list(any())
%% }
-type numerical_aggregation_function() :: #{binary() => any()}.


%% Example:
%% default_grid_layout_configuration() :: #{
%%   <<"CanvasSizeOptions">> => grid_layout_canvas_size_options()
%% }
-type default_grid_layout_configuration() :: #{binary() => any()}.


%% Example:
%% period_to_date_computation() :: #{
%%   <<"ComputationId">> => string(),
%%   <<"Name">> => string(),
%%   <<"PeriodTimeGranularity">> => list(any()),
%%   <<"Time">> => dimension_field(),
%%   <<"Value">> => measure_field()
%% }
-type period_to_date_computation() :: #{binary() => any()}.


%% Example:
%% create_folder_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"FolderId">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type create_folder_response() :: #{binary() => any()}.

%% Example:
%% describe_folder_request() :: #{}
-type describe_folder_request() :: #{}.


%% Example:
%% create_vpc_connection_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AvailabilityStatus">> => list(any()),
%%   <<"CreationStatus">> => list(any()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"VPCConnectionId">> => string()
%% }
-type create_vpc_connection_response() :: #{binary() => any()}.


%% Example:
%% logical_table() :: #{
%%   <<"Alias">> => string(),
%%   <<"DataTransforms">> => list(list()),
%%   <<"Source">> => logical_table_source()
%% }
-type logical_table() :: #{binary() => any()}.


%% Example:
%% geospatial_map_style() :: #{
%%   <<"BackgroundColor">> => string(),
%%   <<"BaseMapStyle">> => list(any()),
%%   <<"BaseMapVisibility">> => list(any())
%% }
-type geospatial_map_style() :: #{binary() => any()}.


%% Example:
%% describe_dashboard_snapshot_job_result_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"ErrorInfo">> => snapshot_job_error_info(),
%%   <<"JobStatus">> => list(any()),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"RequestId">> => string(),
%%   <<"Result">> => snapshot_job_result(),
%%   <<"Status">> => integer()
%% }
-type describe_dashboard_snapshot_job_result_response() :: #{binary() => any()}.


%% Example:
%% q_a_result() :: #{
%%   <<"DashboardVisual">> => dashboard_visual_result(),
%%   <<"GeneratedAnswer">> => generated_answer_result(),
%%   <<"ResultType">> => list(any())
%% }
-type q_a_result() :: #{binary() => any()}.


%% Example:
%% negative_format() :: #{
%%   <<"Prefix">> => string(),
%%   <<"Suffix">> => string()
%% }
-type negative_format() :: #{binary() => any()}.


%% Example:
%% anonymous_user_q_search_bar_embedding_configuration() :: #{
%%   <<"InitialTopicId">> => string()
%% }
-type anonymous_user_q_search_bar_embedding_configuration() :: #{binary() => any()}.


%% Example:
%% parameter_text_area_control() :: #{
%%   <<"Delimiter">> => string(),
%%   <<"DisplayOptions">> => text_area_control_display_options(),
%%   <<"ParameterControlId">> => string(),
%%   <<"SourceParameterName">> => string(),
%%   <<"Title">> => string()
%% }
-type parameter_text_area_control() :: #{binary() => any()}.


%% Example:
%% visual_subtitle_label_options() :: #{
%%   <<"FormatText">> => long_format_text(),
%%   <<"Visibility">> => list(any())
%% }
-type visual_subtitle_label_options() :: #{binary() => any()}.


%% Example:
%% s3_source() :: #{
%%   <<"DataSourceArn">> => string(),
%%   <<"InputColumns">> => list(input_column()),
%%   <<"UploadSettings">> => upload_settings()
%% }
-type s3_source() :: #{binary() => any()}.


%% Example:
%% list_data_sets_response() :: #{
%%   <<"DataSetSummaries">> => list(data_set_summary()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type list_data_sets_response() :: #{binary() => any()}.


%% Example:
%% date_time_picker_control_display_options() :: #{
%%   <<"DateIconVisibility">> => list(any()),
%%   <<"DateTimeFormat">> => string(),
%%   <<"HelperTextVisibility">> => list(any()),
%%   <<"InfoIconLabelOptions">> => sheet_control_info_icon_label_options(),
%%   <<"TitleOptions">> => label_options()
%% }
-type date_time_picker_control_display_options() :: #{binary() => any()}.


%% Example:
%% pivot_table_rows_label_options() :: #{
%%   <<"CustomLabel">> => string(),
%%   <<"Visibility">> => list(any())
%% }
-type pivot_table_rows_label_options() :: #{binary() => any()}.


%% Example:
%% combo_chart_sort_configuration() :: #{
%%   <<"CategoryItemsLimit">> => items_limit_configuration(),
%%   <<"CategorySort">> => list(field_sort_options()),
%%   <<"ColorItemsLimit">> => items_limit_configuration(),
%%   <<"ColorSort">> => list(field_sort_options())
%% }
-type combo_chart_sort_configuration() :: #{binary() => any()}.


%% Example:
%% anchor() :: #{
%%   <<"AnchorType">> => list(any()),
%%   <<"Offset">> => integer(),
%%   <<"TimeGranularity">> => list(any())
%% }
-type anchor() :: #{binary() => any()}.


%% Example:
%% topic_numeric_equality_filter() :: #{
%%   <<"Aggregation">> => list(any()),
%%   <<"Constant">> => topic_singular_filter_constant()
%% }
-type topic_numeric_equality_filter() :: #{binary() => any()}.

%% Example:
%% describe_account_subscription_request() :: #{}
-type describe_account_subscription_request() :: #{}.


%% Example:
%% integer_parameter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(float())
%% }
-type integer_parameter() :: #{binary() => any()}.


%% Example:
%% default_interactive_layout_configuration() :: #{
%%   <<"FreeForm">> => default_free_form_layout_configuration(),
%%   <<"Grid">> => default_grid_layout_configuration()
%% }
-type default_interactive_layout_configuration() :: #{binary() => any()}.


%% Example:
%% insight_configuration() :: #{
%%   <<"Computations">> => list(computation()),
%%   <<"CustomNarrative">> => custom_narrative_options(),
%%   <<"Interactions">> => visual_interaction_options()
%% }
-type insight_configuration() :: #{binary() => any()}.


%% Example:
%% pivot_table_field_wells() :: #{
%%   <<"PivotTableAggregatedFieldWells">> => pivot_table_aggregated_field_wells()
%% }
-type pivot_table_field_wells() :: #{binary() => any()}.

%% Example:
%% describe_refresh_schedule_request() :: #{}
-type describe_refresh_schedule_request() :: #{}.


%% Example:
%% list_custom_permissions_response() :: #{
%%   <<"CustomPermissionsList">> => list(custom_permissions()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type list_custom_permissions_response() :: #{binary() => any()}.


%% Example:
%% default_free_form_layout_configuration() :: #{
%%   <<"CanvasSizeOptions">> => free_form_layout_canvas_size_options()
%% }
-type default_free_form_layout_configuration() :: #{binary() => any()}.


%% Example:
%% numerical_measure_field() :: #{
%%   <<"AggregationFunction">> => numerical_aggregation_function(),
%%   <<"Column">> => column_identifier(),
%%   <<"FieldId">> => string(),
%%   <<"FormatConfiguration">> => number_format_configuration()
%% }
-type numerical_measure_field() :: #{binary() => any()}.


%% Example:
%% plugin_visual_sort_configuration() :: #{
%%   <<"PluginVisualTableQuerySort">> => plugin_visual_table_query_sort()
%% }
-type plugin_visual_sort_configuration() :: #{binary() => any()}.


%% Example:
%% schedule_refresh_on_entity() :: #{
%%   <<"DayOfMonth">> => string(),
%%   <<"DayOfWeek">> => list(any())
%% }
-type schedule_refresh_on_entity() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_error() :: #{
%%   <<"Arn">> => string(),
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type asset_bundle_import_job_error() :: #{binary() => any()}.


%% Example:
%% describe_q_personalization_configuration_response() :: #{
%%   <<"PersonalizationMode">> => list(any()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_q_personalization_configuration_response() :: #{binary() => any()}.


%% Example:
%% list_vpc_connections_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"VPCConnectionSummaries">> => list(vpc_connection_summary())
%% }
-type list_vpc_connections_response() :: #{binary() => any()}.


%% Example:
%% delete_refresh_schedule_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"ScheduleId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_refresh_schedule_response() :: #{binary() => any()}.


%% Example:
%% predefined_hierarchy() :: #{
%%   <<"Columns">> => list(column_identifier()),
%%   <<"DrillDownFilters">> => list(drill_down_filter()),
%%   <<"HierarchyId">> => string()
%% }
-type predefined_hierarchy() :: #{binary() => any()}.


%% Example:
%% list_ingestions_response() :: #{
%%   <<"Ingestions">> => list(ingestion()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type list_ingestions_response() :: #{binary() => any()}.


%% Example:
%% quicksight_identifier() :: #{
%%   <<"Identity">> => string()
%% }
-type quicksight_identifier() :: #{binary() => any()}.


%% Example:
%% describe_ip_restriction_response() :: #{
%%   <<"AwsAccountId">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"IpRestrictionRuleMap">> => map(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"VpcEndpointIdRestrictionRuleMap">> => map(),
%%   <<"VpcIdRestrictionRuleMap">> => map()
%% }
-type describe_ip_restriction_response() :: #{binary() => any()}.


%% Example:
%% aurora_parameters() :: #{
%%   <<"Database">> => string(),
%%   <<"Host">> => string(),
%%   <<"Port">> => integer()
%% }
-type aurora_parameters() :: #{binary() => any()}.


%% Example:
%% create_action_connector_response() :: #{
%%   <<"ActionConnectorId">> => [string()],
%%   <<"Arn">> => string(),
%%   <<"CreationStatus">> => list(any()),
%%   <<"RequestId">> => [string()],
%%   <<"Status">> => integer()
%% }
-type create_action_connector_response() :: #{binary() => any()}.


%% Example:
%% analysis_source_template() :: #{
%%   <<"Arn">> => string(),
%%   <<"DataSetReferences">> => list(data_set_reference())
%% }
-type analysis_source_template() :: #{binary() => any()}.

%% Example:
%% describe_dashboards_q_a_configuration_request() :: #{}
-type describe_dashboards_q_a_configuration_request() :: #{}.


%% Example:
%% update_refresh_schedule_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"ScheduleId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_refresh_schedule_response() :: #{binary() => any()}.


%% Example:
%% spatial_static_file() :: #{
%%   <<"Source">> => static_file_source(),
%%   <<"StaticFileId">> => string()
%% }
-type spatial_static_file() :: #{binary() => any()}.

%% Example:
%% cancel_ingestion_request() :: #{}
-type cancel_ingestion_request() :: #{}.

%% Example:
%% delete_theme_alias_request() :: #{}
-type delete_theme_alias_request() :: #{}.


%% Example:
%% dashboard_version_definition() :: #{
%%   <<"AnalysisDefaults">> => analysis_defaults(),
%%   <<"CalculatedFields">> => list(calculated_field()),
%%   <<"ColumnConfigurations">> => list(column_configuration()),
%%   <<"DataSetIdentifierDeclarations">> => list(data_set_identifier_declaration()),
%%   <<"FilterGroups">> => list(filter_group()),
%%   <<"Options">> => asset_options(),
%%   <<"ParameterDeclarations">> => list(parameter_declaration()),
%%   <<"Sheets">> => list(sheet_definition()),
%%   <<"StaticFiles">> => list(static_file())
%% }
-type dashboard_version_definition() :: #{binary() => any()}.


%% Example:
%% update_user_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"User">> => user()
%% }
-type update_user_response() :: #{binary() => any()}.


%% Example:
%% create_data_source_request() :: #{
%%   <<"Credentials">> => data_source_credentials(),
%%   <<"DataSourceId">> := string(),
%%   <<"DataSourceParameters">> => list(),
%%   <<"FolderArns">> => list(string()),
%%   <<"Name">> := string(),
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"SslProperties">> => ssl_properties(),
%%   <<"Tags">> => list(tag()),
%%   <<"Type">> := list(any()),
%%   <<"VpcConnectionProperties">> => vpc_connection_properties()
%% }
-type create_data_source_request() :: #{binary() => any()}.


%% Example:
%% list_topic_refresh_schedules_response() :: #{
%%   <<"RefreshSchedules">> => list(topic_refresh_schedule_summary()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TopicArn">> => string(),
%%   <<"TopicId">> => string()
%% }
-type list_topic_refresh_schedules_response() :: #{binary() => any()}.


%% Example:
%% asset_bundle_resource_permissions() :: #{
%%   <<"Actions">> => list(string()),
%%   <<"Principals">> => list(string())
%% }
-type asset_bundle_resource_permissions() :: #{binary() => any()}.


%% Example:
%% waterfall_chart_configuration() :: #{
%%   <<"CategoryAxisDisplayOptions">> => axis_display_options(),
%%   <<"CategoryAxisLabelOptions">> => chart_axis_label_options(),
%%   <<"ColorConfiguration">> => waterfall_chart_color_configuration(),
%%   <<"DataLabels">> => data_label_options(),
%%   <<"FieldWells">> => waterfall_chart_field_wells(),
%%   <<"Interactions">> => visual_interaction_options(),
%%   <<"Legend">> => legend_options(),
%%   <<"PrimaryYAxisDisplayOptions">> => axis_display_options(),
%%   <<"PrimaryYAxisLabelOptions">> => chart_axis_label_options(),
%%   <<"SortConfiguration">> => waterfall_chart_sort_configuration(),
%%   <<"VisualPalette">> => visual_palette(),
%%   <<"WaterfallChartOptions">> => waterfall_chart_options()
%% }
-type waterfall_chart_configuration() :: #{binary() => any()}.


%% Example:
%% none_connection_metadata() :: #{
%%   <<"BaseEndpoint">> => string()
%% }
-type none_connection_metadata() :: #{binary() => any()}.


%% Example:
%% search_folders_response() :: #{
%%   <<"FolderSummaryList">> => list(folder_summary()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type search_folders_response() :: #{binary() => any()}.


%% Example:
%% unique_key() :: #{
%%   <<"ColumnNames">> => list(string())
%% }
-type unique_key() :: #{binary() => any()}.


%% Example:
%% gauge_chart_configuration() :: #{
%%   <<"ColorConfiguration">> => gauge_chart_color_configuration(),
%%   <<"DataLabels">> => data_label_options(),
%%   <<"FieldWells">> => gauge_chart_field_wells(),
%%   <<"GaugeChartOptions">> => gauge_chart_options(),
%%   <<"Interactions">> => visual_interaction_options(),
%%   <<"TooltipOptions">> => tooltip_options(),
%%   <<"VisualPalette">> => visual_palette()
%% }
-type gauge_chart_configuration() :: #{binary() => any()}.


%% Example:
%% put_data_set_refresh_properties_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type put_data_set_refresh_properties_response() :: #{binary() => any()}.


%% Example:
%% describe_data_source_permissions_response() :: #{
%%   <<"DataSourceArn">> => string(),
%%   <<"DataSourceId">> => string(),
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_data_source_permissions_response() :: #{binary() => any()}.


%% Example:
%% folder_member() :: #{
%%   <<"MemberId">> => string(),
%%   <<"MemberType">> => list(any())
%% }
-type folder_member() :: #{binary() => any()}.


%% Example:
%% decimal_dataset_parameter() :: #{
%%   <<"DefaultValues">> => decimal_dataset_parameter_default_values(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ValueType">> => list(any())
%% }
-type decimal_dataset_parameter() :: #{binary() => any()}.


%% Example:
%% describe_template_request() :: #{
%%   <<"AliasName">> => string(),
%%   <<"VersionNumber">> => float()
%% }
-type describe_template_request() :: #{binary() => any()}.


%% Example:
%% sheet_text_box() :: #{
%%   <<"Content">> => string(),
%%   <<"Interactions">> => text_box_interaction_options(),
%%   <<"SheetTextBoxId">> => string()
%% }
-type sheet_text_box() :: #{binary() => any()}.


%% Example:
%% read_auth_config() :: #{
%%   <<"AuthenticationMetadata">> => list(),
%%   <<"AuthenticationType">> => list(any())
%% }
-type read_auth_config() :: #{binary() => any()}.


%% Example:
%% sheet_layout_element_maximization_option() :: #{
%%   <<"AvailabilityStatus">> => list(any())
%% }
-type sheet_layout_element_maximization_option() :: #{binary() => any()}.


%% Example:
%% relational_table() :: #{
%%   <<"Catalog">> => string(),
%%   <<"DataSourceArn">> => string(),
%%   <<"InputColumns">> => list(input_column()),
%%   <<"Name">> => string(),
%%   <<"Schema">> => string()
%% }
-type relational_table() :: #{binary() => any()}.


%% Example:
%% table_field_options() :: #{
%%   <<"Order">> => list(string()),
%%   <<"PinnedFieldOptions">> => table_pinned_field_options(),
%%   <<"SelectedFieldOptions">> => list(table_field_option()),
%%   <<"TransposedTableOptions">> => list(transposed_table_option())
%% }
-type table_field_options() :: #{binary() => any()}.


%% Example:
%% predict_q_a_results_request() :: #{
%%   <<"IncludeGeneratedAnswer">> => list(any()),
%%   <<"IncludeQuickSightQIndex">> => list(any()),
%%   <<"MaxTopicsToConsider">> => integer(),
%%   <<"QueryText">> := string()
%% }
-type predict_q_a_results_request() :: #{binary() => any()}.


%% Example:
%% k_p_i_options() :: #{
%%   <<"Comparison">> => comparison_configuration(),
%%   <<"PrimaryValueDisplayType">> => list(any()),
%%   <<"PrimaryValueFontConfiguration">> => font_configuration(),
%%   <<"ProgressBar">> => progress_bar_options(),
%%   <<"SecondaryValue">> => secondary_value_options(),
%%   <<"SecondaryValueFontConfiguration">> => font_configuration(),
%%   <<"Sparkline">> => k_p_i_sparkline_options(),
%%   <<"TrendArrows">> => trend_arrow_options(),
%%   <<"VisualLayoutOptions">> => k_p_i_visual_layout_options()
%% }
-type k_p_i_options() :: #{binary() => any()}.


%% Example:
%% list_templates_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_templates_request() :: #{binary() => any()}.


%% Example:
%% sheet_controls_option() :: #{
%%   <<"VisibilityState">> => list(any())
%% }
-type sheet_controls_option() :: #{binary() => any()}.


%% Example:
%% tile_layout_style() :: #{
%%   <<"Gutter">> => gutter_style(),
%%   <<"Margin">> => margin_style()
%% }
-type tile_layout_style() :: #{binary() => any()}.


%% Example:
%% percentile_aggregation() :: #{
%%   <<"PercentileValue">> => float()
%% }
-type percentile_aggregation() :: #{binary() => any()}.


%% Example:
%% untag_resource_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type untag_resource_response() :: #{binary() => any()}.


%% Example:
%% entity() :: #{
%%   <<"Path">> => string()
%% }
-type entity() :: #{binary() => any()}.


%% Example:
%% update_analysis_response() :: #{
%%   <<"AnalysisId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"UpdateStatus">> => list(any())
%% }
-type update_analysis_response() :: #{binary() => any()}.


%% Example:
%% waterfall_chart_color_configuration() :: #{
%%   <<"GroupColorConfiguration">> => waterfall_chart_group_color_configuration()
%% }
-type waterfall_chart_color_configuration() :: #{binary() => any()}.


%% Example:
%% axis_label_reference_options() :: #{
%%   <<"Column">> => column_identifier(),
%%   <<"FieldId">> => string()
%% }
-type axis_label_reference_options() :: #{binary() => any()}.


%% Example:
%% table_field_custom_icon_content() :: #{
%%   <<"Icon">> => list(any())
%% }
-type table_field_custom_icon_content() :: #{binary() => any()}.


%% Example:
%% column_description() :: #{
%%   <<"Text">> => string()
%% }
-type column_description() :: #{binary() => any()}.


%% Example:
%% k_p_i_field_wells() :: #{
%%   <<"TargetValues">> => list(measure_field()),
%%   <<"TrendGroups">> => list(dimension_field()),
%%   <<"Values">> => list(measure_field())
%% }
-type k_p_i_field_wells() :: #{binary() => any()}.


%% Example:
%% text_field_control_display_options() :: #{
%%   <<"InfoIconLabelOptions">> => sheet_control_info_icon_label_options(),
%%   <<"PlaceholderOptions">> => text_control_placeholder_options(),
%%   <<"TitleOptions">> => label_options()
%% }
-type text_field_control_display_options() :: #{binary() => any()}.


%% Example:
%% read_iam_connection_metadata() :: #{
%%   <<"RoleArn">> => string(),
%%   <<"SourceArn">> => string()
%% }
-type read_iam_connection_metadata() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_theme_override_parameters() :: #{
%%   <<"Name">> => string(),
%%   <<"ThemeId">> => string()
%% }
-type asset_bundle_import_job_theme_override_parameters() :: #{binary() => any()}.


%% Example:
%% tooltip_options() :: #{
%%   <<"FieldBasedTooltip">> => field_based_tooltip(),
%%   <<"SelectedTooltipType">> => list(any()),
%%   <<"TooltipVisibility">> => list(any())
%% }
-type tooltip_options() :: #{binary() => any()}.


%% Example:
%% gauge_chart_arc_conditional_formatting() :: #{
%%   <<"ForegroundColor">> => conditional_formatting_color()
%% }
-type gauge_chart_arc_conditional_formatting() :: #{binary() => any()}.


%% Example:
%% axis_tick_label_options() :: #{
%%   <<"LabelOptions">> => label_options(),
%%   <<"RotationAngle">> => float()
%% }
-type axis_tick_label_options() :: #{binary() => any()}.


%% Example:
%% list_ingestions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_ingestions_request() :: #{binary() => any()}.


%% Example:
%% list_namespaces_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_namespaces_request() :: #{binary() => any()}.


%% Example:
%% list_identity_propagation_configs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_identity_propagation_configs_request() :: #{binary() => any()}.


%% Example:
%% pie_chart_sort_configuration() :: #{
%%   <<"CategoryItemsLimit">> => items_limit_configuration(),
%%   <<"CategorySort">> => list(field_sort_options()),
%%   <<"SmallMultiplesLimitConfiguration">> => items_limit_configuration(),
%%   <<"SmallMultiplesSort">> => list(field_sort_options())
%% }
-type pie_chart_sort_configuration() :: #{binary() => any()}.


%% Example:
%% delete_data_set_refresh_properties_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_data_set_refresh_properties_response() :: #{binary() => any()}.


%% Example:
%% list_flows_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_flows_input() :: #{binary() => any()}.


%% Example:
%% k_p_i_conditional_formatting_option() :: #{
%%   <<"ActualValue">> => k_p_i_actual_value_conditional_formatting(),
%%   <<"ComparisonValue">> => k_p_i_comparison_value_conditional_formatting(),
%%   <<"PrimaryValue">> => k_p_iprimary_value_conditional_formatting(),
%%   <<"ProgressBar">> => k_p_iprogress_bar_conditional_formatting()
%% }
-type k_p_i_conditional_formatting_option() :: #{binary() => any()}.


%% Example:
%% asset_bundle_export_job_vpc_connection_override_properties() :: #{
%%   <<"Arn">> => string(),
%%   <<"Properties">> => list(list(any())())
%% }
-type asset_bundle_export_job_vpc_connection_override_properties() :: #{binary() => any()}.


%% Example:
%% line_chart_sort_configuration() :: #{
%%   <<"CategoryItemsLimitConfiguration">> => items_limit_configuration(),
%%   <<"CategorySort">> => list(field_sort_options()),
%%   <<"ColorItemsLimitConfiguration">> => items_limit_configuration(),
%%   <<"SmallMultiplesLimitConfiguration">> => items_limit_configuration(),
%%   <<"SmallMultiplesSort">> => list(field_sort_options())
%% }
-type line_chart_sort_configuration() :: #{binary() => any()}.


%% Example:
%% update_template_permissions_response() :: #{
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TemplateArn">> => string(),
%%   <<"TemplateId">> => string()
%% }
-type update_template_permissions_response() :: #{binary() => any()}.


%% Example:
%% create_theme_alias_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"ThemeAlias">> => theme_alias()
%% }
-type create_theme_alias_response() :: #{binary() => any()}.


%% Example:
%% read_client_credentials_grant_metadata() :: #{
%%   <<"BaseEndpoint">> => string(),
%%   <<"ClientCredentialsSource">> => list(any()),
%%   <<"ReadClientCredentialsDetails">> => list()
%% }
-type read_client_credentials_grant_metadata() :: #{binary() => any()}.


%% Example:
%% data_set() :: #{
%%   <<"Arn">> => string(),
%%   <<"ColumnGroups">> => list(column_group()),
%%   <<"ColumnLevelPermissionRules">> => list(column_level_permission_rule()),
%%   <<"ConsumedSpiceCapacityInBytes">> => float(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DataSetId">> => string(),
%%   <<"DataSetUsageConfiguration">> => data_set_usage_configuration(),
%%   <<"DatasetParameters">> => list(dataset_parameter()),
%%   <<"FieldFolders">> => map(),
%%   <<"ImportMode">> => list(any()),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"LogicalTableMap">> => map(),
%%   <<"Name">> => string(),
%%   <<"OutputColumns">> => list(output_column()),
%%   <<"PerformanceConfiguration">> => performance_configuration(),
%%   <<"PhysicalTableMap">> => map(),
%%   <<"RowLevelPermissionDataSet">> => row_level_permission_data_set(),
%%   <<"RowLevelPermissionTagConfiguration">> => row_level_permission_tag_configuration(),
%%   <<"UseAs">> => list(any())
%% }
-type data_set() :: #{binary() => any()}.


%% Example:
%% radar_chart_sort_configuration() :: #{
%%   <<"CategoryItemsLimit">> => items_limit_configuration(),
%%   <<"CategorySort">> => list(field_sort_options()),
%%   <<"ColorItemsLimit">> => items_limit_configuration(),
%%   <<"ColorSort">> => list(field_sort_options())
%% }
-type radar_chart_sort_configuration() :: #{binary() => any()}.


%% Example:
%% create_ingestion_request() :: #{
%%   <<"IngestionType">> => list(any())
%% }
-type create_ingestion_request() :: #{binary() => any()}.


%% Example:
%% geospatial_heatmap_data_color() :: #{
%%   <<"Color">> => string()
%% }
-type geospatial_heatmap_data_color() :: #{binary() => any()}.


%% Example:
%% create_iam_policy_assignment_request() :: #{
%%   <<"AssignmentName">> := string(),
%%   <<"AssignmentStatus">> := list(any()),
%%   <<"Identities">> => map(),
%%   <<"PolicyArn">> => string()
%% }
-type create_iam_policy_assignment_request() :: #{binary() => any()}.


%% Example:
%% update_template_alias_request() :: #{
%%   <<"TemplateVersionNumber">> := float()
%% }
-type update_template_alias_request() :: #{binary() => any()}.


%% Example:
%% update_user_custom_permission_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_user_custom_permission_response() :: #{binary() => any()}.


%% Example:
%% list_asset_bundle_import_jobs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_asset_bundle_import_jobs_request() :: #{binary() => any()}.


%% Example:
%% sheet_image() :: #{
%%   <<"Actions">> => list(image_custom_action()),
%%   <<"ImageContentAltText">> => string(),
%%   <<"Interactions">> => image_interaction_options(),
%%   <<"Scaling">> => sheet_image_scaling_configuration(),
%%   <<"SheetImageId">> => string(),
%%   <<"Source">> => sheet_image_source(),
%%   <<"Tooltip">> => sheet_image_tooltip_configuration()
%% }
-type sheet_image() :: #{binary() => any()}.


%% Example:
%% lookback_window() :: #{
%%   <<"ColumnName">> => string(),
%%   <<"Size">> => float(),
%%   <<"SizeUnit">> => list(any())
%% }
-type lookback_window() :: #{binary() => any()}.


%% Example:
%% cluster_marker() :: #{
%%   <<"SimpleClusterMarker">> => simple_cluster_marker()
%% }
-type cluster_marker() :: #{binary() => any()}.


%% Example:
%% pivot_table_sort_configuration() :: #{
%%   <<"FieldSortOptions">> => list(pivot_field_sort_options())
%% }
-type pivot_table_sort_configuration() :: #{binary() => any()}.


%% Example:
%% list_user_groups_response() :: #{
%%   <<"GroupList">> => list(group()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type list_user_groups_response() :: #{binary() => any()}.


%% Example:
%% authorized_targets_by_service() :: #{
%%   <<"AuthorizedTargets">> => list(string()),
%%   <<"Service">> => list(any())
%% }
-type authorized_targets_by_service() :: #{binary() => any()}.


%% Example:
%% data_set_search_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Operator">> => list(any()),
%%   <<"Value">> => string()
%% }
-type data_set_search_filter() :: #{binary() => any()}.


%% Example:
%% search_action_connectors_request() :: #{
%%   <<"Filters">> := list(action_connector_search_filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type search_action_connectors_request() :: #{binary() => any()}.


%% Example:
%% forecast_computation() :: #{
%%   <<"ComputationId">> => string(),
%%   <<"CustomSeasonalityValue">> => integer(),
%%   <<"LowerBoundary">> => float(),
%%   <<"Name">> => string(),
%%   <<"PeriodsBackward">> => integer(),
%%   <<"PeriodsForward">> => integer(),
%%   <<"PredictionInterval">> => integer(),
%%   <<"Seasonality">> => list(any()),
%%   <<"Time">> => dimension_field(),
%%   <<"UpperBoundary">> => float(),
%%   <<"Value">> => measure_field()
%% }
-type forecast_computation() :: #{binary() => any()}.


%% Example:
%% action_connector_search_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Operator">> => list(any()),
%%   <<"Value">> => [string()]
%% }
-type action_connector_search_filter() :: #{binary() => any()}.


%% Example:
%% filled_map_field_wells() :: #{
%%   <<"FilledMapAggregatedFieldWells">> => filled_map_aggregated_field_wells()
%% }
-type filled_map_field_wells() :: #{binary() => any()}.


%% Example:
%% snapshot_file_group() :: #{
%%   <<"Files">> => list(snapshot_file())
%% }
-type snapshot_file_group() :: #{binary() => any()}.


%% Example:
%% search_folders_request() :: #{
%%   <<"Filters">> := list(folder_search_filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type search_folders_request() :: #{binary() => any()}.


%% Example:
%% image_set_configuration() :: #{
%%   <<"Original">> => image_configuration()
%% }
-type image_set_configuration() :: #{binary() => any()}.


%% Example:
%% customer_managed_key_unavailable_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type customer_managed_key_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% update_topic_refresh_schedule_request() :: #{
%%   <<"RefreshSchedule">> := topic_refresh_schedule()
%% }
-type update_topic_refresh_schedule_request() :: #{binary() => any()}.


%% Example:
%% list_template_aliases_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TemplateAliasList">> => list(template_alias())
%% }
-type list_template_aliases_response() :: #{binary() => any()}.


%% Example:
%% time_based_forecast_properties() :: #{
%%   <<"LowerBoundary">> => float(),
%%   <<"PeriodsBackward">> => integer(),
%%   <<"PeriodsForward">> => integer(),
%%   <<"PredictionInterval">> => integer(),
%%   <<"Seasonality">> => integer(),
%%   <<"UpperBoundary">> => float()
%% }
-type time_based_forecast_properties() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_data_source_credential_pair() :: #{
%%   <<"Password">> => string(),
%%   <<"Username">> => string()
%% }
-type asset_bundle_import_job_data_source_credential_pair() :: #{binary() => any()}.


%% Example:
%% header_footer_section_configuration() :: #{
%%   <<"Layout">> => section_layout_configuration(),
%%   <<"SectionId">> => string(),
%%   <<"Style">> => section_style()
%% }
-type header_footer_section_configuration() :: #{binary() => any()}.


%% Example:
%% field_folder() :: #{
%%   <<"columns">> => list(string()),
%%   <<"description">> => string()
%% }
-type field_folder() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_vpc_connection_override_tags() :: #{
%%   <<"Tags">> => list(tag()),
%%   <<"VPCConnectionIds">> => list(string())
%% }
-type asset_bundle_import_job_vpc_connection_override_tags() :: #{binary() => any()}.


%% Example:
%% list_iam_policy_assignments_response() :: #{
%%   <<"IAMPolicyAssignments">> => list(iam_policy_assignment_summary()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type list_iam_policy_assignments_response() :: #{binary() => any()}.


%% Example:
%% namespace_info_v2() :: #{
%%   <<"Arn">> => string(),
%%   <<"CapacityRegion">> => string(),
%%   <<"CreationStatus">> => list(any()),
%%   <<"IamIdentityCenterApplicationArn">> => string(),
%%   <<"IamIdentityCenterInstanceArn">> => string(),
%%   <<"IdentityStore">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"NamespaceError">> => namespace_error()
%% }
-type namespace_info_v2() :: #{binary() => any()}.


%% Example:
%% quick_sight_user_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type quick_sight_user_not_found_exception() :: #{binary() => any()}.


%% Example:
%% funnel_chart_sort_configuration() :: #{
%%   <<"CategoryItemsLimit">> => items_limit_configuration(),
%%   <<"CategorySort">> => list(field_sort_options())
%% }
-type funnel_chart_sort_configuration() :: #{binary() => any()}.


%% Example:
%% list_custom_permissions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_custom_permissions_request() :: #{binary() => any()}.


%% Example:
%% font_configuration() :: #{
%%   <<"FontColor">> => string(),
%%   <<"FontDecoration">> => list(any()),
%%   <<"FontFamily">> => string(),
%%   <<"FontSize">> => font_size(),
%%   <<"FontStyle">> => list(any()),
%%   <<"FontWeight">> => font_weight()
%% }
-type font_configuration() :: #{binary() => any()}.


%% Example:
%% gauge_chart_conditional_formatting() :: #{
%%   <<"ConditionalFormattingOptions">> => list(gauge_chart_conditional_formatting_option())
%% }
-type gauge_chart_conditional_formatting() :: #{binary() => any()}.


%% Example:
%% time_range_drill_down_filter() :: #{
%%   <<"Column">> => column_identifier(),
%%   <<"RangeMaximum">> => non_neg_integer(),
%%   <<"RangeMinimum">> => non_neg_integer(),
%%   <<"TimeGranularity">> => list(any())
%% }
-type time_range_drill_down_filter() :: #{binary() => any()}.


%% Example:
%% amazon_q_in_quick_sight_dashboard_configurations() :: #{
%%   <<"ExecutiveSummary">> => executive_summary_configurations()
%% }
-type amazon_q_in_quick_sight_dashboard_configurations() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_source_description() :: #{
%%   <<"Body">> => string(),
%%   <<"S3Uri">> => string()
%% }
-type asset_bundle_import_source_description() :: #{binary() => any()}.


%% Example:
%% athena_parameters() :: #{
%%   <<"IdentityCenterConfiguration">> => identity_center_configuration(),
%%   <<"RoleArn">> => string(),
%%   <<"WorkGroup">> => string()
%% }
-type athena_parameters() :: #{binary() => any()}.

%% Example:
%% describe_iam_policy_assignment_request() :: #{}
-type describe_iam_policy_assignment_request() :: #{}.


%% Example:
%% bin_count_options() :: #{
%%   <<"Value">> => integer()
%% }
-type bin_count_options() :: #{binary() => any()}.


%% Example:
%% describe_asset_bundle_export_job_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssetBundleExportJobId">> => string(),
%%   <<"AwsAccountId">> => string(),
%%   <<"CloudFormationOverridePropertyConfiguration">> => asset_bundle_cloud_formation_override_property_configuration(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DownloadUrl">> => string(),
%%   <<"Errors">> => list(asset_bundle_export_job_error()),
%%   <<"ExportFormat">> => list(any()),
%%   <<"IncludeAllDependencies">> => boolean(),
%%   <<"IncludeFolderMembers">> => list(any()),
%%   <<"IncludeFolderMemberships">> => boolean(),
%%   <<"IncludePermissions">> => boolean(),
%%   <<"IncludeTags">> => boolean(),
%%   <<"JobStatus">> => list(any()),
%%   <<"RequestId">> => string(),
%%   <<"ResourceArns">> => list(string()),
%%   <<"Status">> => integer(),
%%   <<"ValidationStrategy">> => asset_bundle_export_job_validation_strategy(),
%%   <<"Warnings">> => list(asset_bundle_export_job_warning())
%% }
-type describe_asset_bundle_export_job_response() :: #{binary() => any()}.


%% Example:
%% restore_analysis_request() :: #{
%%   <<"RestoreToFolders">> => boolean()
%% }
-type restore_analysis_request() :: #{binary() => any()}.


%% Example:
%% body_section_repeat_dimension_configuration() :: #{
%%   <<"DynamicCategoryDimensionConfiguration">> => body_section_dynamic_category_dimension_configuration(),
%%   <<"DynamicNumericDimensionConfiguration">> => body_section_dynamic_numeric_dimension_configuration()
%% }
-type body_section_repeat_dimension_configuration() :: #{binary() => any()}.


%% Example:
%% free_form_section_layout_configuration() :: #{
%%   <<"Elements">> => list(free_form_layout_element())
%% }
-type free_form_section_layout_configuration() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_data_source_override_parameters() :: #{
%%   <<"Credentials">> => asset_bundle_import_job_data_source_credentials(),
%%   <<"DataSourceId">> => string(),
%%   <<"DataSourceParameters">> => list(),
%%   <<"Name">> => string(),
%%   <<"SslProperties">> => ssl_properties(),
%%   <<"VpcConnectionProperties">> => vpc_connection_properties()
%% }
-type asset_bundle_import_job_data_source_override_parameters() :: #{binary() => any()}.


%% Example:
%% geospatial_coordinate_bounds() :: #{
%%   <<"East">> => float(),
%%   <<"North">> => float(),
%%   <<"South">> => float(),
%%   <<"West">> => float()
%% }
-type geospatial_coordinate_bounds() :: #{binary() => any()}.


%% Example:
%% conditional_formatting_color() :: #{
%%   <<"Gradient">> => conditional_formatting_gradient_color(),
%%   <<"Solid">> => conditional_formatting_solid_color()
%% }
-type conditional_formatting_color() :: #{binary() => any()}.


%% Example:
%% update_brand_request() :: #{
%%   <<"BrandDefinition">> => brand_definition()
%% }
-type update_brand_request() :: #{binary() => any()}.


%% Example:
%% parameter_text_field_control() :: #{
%%   <<"DisplayOptions">> => text_field_control_display_options(),
%%   <<"ParameterControlId">> => string(),
%%   <<"SourceParameterName">> => string(),
%%   <<"Title">> => string()
%% }
-type parameter_text_field_control() :: #{binary() => any()}.


%% Example:
%% geospatial_layer_map_configuration() :: #{
%%   <<"Interactions">> => visual_interaction_options(),
%%   <<"Legend">> => legend_options(),
%%   <<"MapLayers">> => list(geospatial_layer_item()),
%%   <<"MapState">> => geospatial_map_state(),
%%   <<"MapStyle">> => geospatial_map_style()
%% }
-type geospatial_layer_map_configuration() :: #{binary() => any()}.


%% Example:
%% resource_unavailable_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type resource_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% geospatial_heatmap_configuration() :: #{
%%   <<"HeatmapColor">> => geospatial_heatmap_color_scale()
%% }
-type geospatial_heatmap_configuration() :: #{binary() => any()}.


%% Example:
%% logo() :: #{
%%   <<"AltText">> => string(),
%%   <<"LogoSet">> => logo_set()
%% }
-type logo() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_theme_override_permissions() :: #{
%%   <<"Permissions">> => asset_bundle_resource_permissions(),
%%   <<"ThemeIds">> => list(string())
%% }
-type asset_bundle_import_job_theme_override_permissions() :: #{binary() => any()}.


%% Example:
%% gauge_chart_primary_value_conditional_formatting() :: #{
%%   <<"Icon">> => conditional_formatting_icon(),
%%   <<"TextColor">> => conditional_formatting_color()
%% }
-type gauge_chart_primary_value_conditional_formatting() :: #{binary() => any()}.


%% Example:
%% describe_brand_published_version_response() :: #{
%%   <<"BrandDefinition">> => brand_definition(),
%%   <<"BrandDetail">> => brand_detail(),
%%   <<"RequestId">> => string()
%% }
-type describe_brand_published_version_response() :: #{binary() => any()}.


%% Example:
%% geospatial_static_file_source() :: #{
%%   <<"StaticFileId">> => string()
%% }
-type geospatial_static_file_source() :: #{binary() => any()}.


%% Example:
%% geospatial_color() :: #{
%%   <<"Categorical">> => geospatial_categorical_color(),
%%   <<"Gradient">> => geospatial_gradient_color(),
%%   <<"Solid">> => geospatial_solid_color()
%% }
-type geospatial_color() :: #{binary() => any()}.


%% Example:
%% sheet_element_rendering_rule() :: #{
%%   <<"ConfigurationOverrides">> => sheet_element_configuration_overrides(),
%%   <<"Expression">> => string()
%% }
-type sheet_element_rendering_rule() :: #{binary() => any()}.


%% Example:
%% start_asset_bundle_import_job_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssetBundleImportJobId">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type start_asset_bundle_import_job_response() :: #{binary() => any()}.


%% Example:
%% search_topics_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TopicSummaryList">> => list(topic_summary())
%% }
-type search_topics_response() :: #{binary() => any()}.


%% Example:
%% table_field_link_content_configuration() :: #{
%%   <<"CustomIconContent">> => table_field_custom_icon_content(),
%%   <<"CustomTextContent">> => table_field_custom_text_content()
%% }
-type table_field_link_content_configuration() :: #{binary() => any()}.


%% Example:
%% slot() :: #{
%%   <<"SlotId">> => string(),
%%   <<"VisualId">> => string()
%% }
-type slot() :: #{binary() => any()}.


%% Example:
%% describe_refresh_schedule_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"RefreshSchedule">> => refresh_schedule(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_refresh_schedule_response() :: #{binary() => any()}.


%% Example:
%% recent_snapshots_configurations() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type recent_snapshots_configurations() :: #{binary() => any()}.


%% Example:
%% category_filter_configuration() :: #{
%%   <<"CustomFilterConfiguration">> => custom_filter_configuration(),
%%   <<"CustomFilterListConfiguration">> => custom_filter_list_configuration(),
%%   <<"FilterListConfiguration">> => filter_list_configuration()
%% }
-type category_filter_configuration() :: #{binary() => any()}.


%% Example:
%% describe_template_definition_response() :: #{
%%   <<"Definition">> => template_version_definition(),
%%   <<"Errors">> => list(template_error()),
%%   <<"Name">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"ResourceStatus">> => list(any()),
%%   <<"Status">> => integer(),
%%   <<"TemplateId">> => string(),
%%   <<"ThemeArn">> => string()
%% }
-type describe_template_definition_response() :: #{binary() => any()}.


%% Example:
%% topic_refresh_schedule() :: #{
%%   <<"BasedOnSpiceSchedule">> => boolean(),
%%   <<"IsEnabled">> => boolean(),
%%   <<"RepeatAt">> => string(),
%%   <<"StartingAt">> => non_neg_integer(),
%%   <<"Timezone">> => string(),
%%   <<"TopicScheduleType">> => list(any())
%% }
-type topic_refresh_schedule() :: #{binary() => any()}.


%% Example:
%% column_sort() :: #{
%%   <<"AggregationFunction">> => aggregation_function(),
%%   <<"Direction">> => list(any()),
%%   <<"SortBy">> => column_identifier()
%% }
-type column_sort() :: #{binary() => any()}.


%% Example:
%% input_column() :: #{
%%   <<"Name">> => string(),
%%   <<"SubType">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type input_column() :: #{binary() => any()}.


%% Example:
%% geospatial_point_style() :: #{
%%   <<"CircleSymbolStyle">> => geospatial_circle_symbol_style()
%% }
-type geospatial_point_style() :: #{binary() => any()}.


%% Example:
%% update_account_settings_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_account_settings_response() :: #{binary() => any()}.


%% Example:
%% q_data_key() :: #{
%%   <<"QDataKeyArn">> => string(),
%%   <<"QDataKeyType">> => list(any())
%% }
-type q_data_key() :: #{binary() => any()}.


%% Example:
%% asset_bundle_export_job_resource_id_override_configuration() :: #{
%%   <<"PrefixForAllResources">> => boolean()
%% }
-type asset_bundle_export_job_resource_id_override_configuration() :: #{binary() => any()}.


%% Example:
%% axis_display_range() :: #{
%%   <<"DataDriven">> => axis_display_data_driven_range(),
%%   <<"MinMax">> => axis_display_min_max_range()
%% }
-type axis_display_range() :: #{binary() => any()}.


%% Example:
%% filled_map_shape_conditional_formatting() :: #{
%%   <<"FieldId">> => string(),
%%   <<"Format">> => shape_conditional_format()
%% }
-type filled_map_shape_conditional_formatting() :: #{binary() => any()}.


%% Example:
%% network_interface() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"NetworkInterfaceId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"SubnetId">> => string()
%% }
-type network_interface() :: #{binary() => any()}.


%% Example:
%% create_iam_policy_assignment_response() :: #{
%%   <<"AssignmentId">> => string(),
%%   <<"AssignmentName">> => string(),
%%   <<"AssignmentStatus">> => list(any()),
%%   <<"Identities">> => map(),
%%   <<"PolicyArn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type create_iam_policy_assignment_response() :: #{binary() => any()}.


%% Example:
%% line_chart_field_wells() :: #{
%%   <<"LineChartAggregatedFieldWells">> => line_chart_aggregated_field_wells()
%% }
-type line_chart_field_wells() :: #{binary() => any()}.


%% Example:
%% gauge_chart_color_configuration() :: #{
%%   <<"BackgroundColor">> => string(),
%%   <<"ForegroundColor">> => string()
%% }
-type gauge_chart_color_configuration() :: #{binary() => any()}.


%% Example:
%% dashboard_version() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DataSetArns">> => list(string()),
%%   <<"Description">> => string(),
%%   <<"Errors">> => list(dashboard_error()),
%%   <<"Sheets">> => list(sheet()),
%%   <<"SourceEntityArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"ThemeArn">> => string(),
%%   <<"VersionNumber">> => float()
%% }
-type dashboard_version() :: #{binary() => any()}.


%% Example:
%% table_unaggregated_field_wells() :: #{
%%   <<"Values">> => list(unaggregated_field())
%% }
-type table_unaggregated_field_wells() :: #{binary() => any()}.


%% Example:
%% analysis_summary() :: #{
%%   <<"AnalysisId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type analysis_summary() :: #{binary() => any()}.


%% Example:
%% integer_default_values() :: #{
%%   <<"DynamicValue">> => dynamic_default_value(),
%%   <<"StaticValues">> => list(float())
%% }
-type integer_default_values() :: #{binary() => any()}.


%% Example:
%% update_analysis_permissions_request() :: #{
%%   <<"GrantPermissions">> => list(resource_permission()),
%%   <<"RevokePermissions">> => list(resource_permission())
%% }
-type update_analysis_permissions_request() :: #{binary() => any()}.


%% Example:
%% geospatial_point_layer() :: #{
%%   <<"Style">> => geospatial_point_style()
%% }
-type geospatial_point_layer() :: #{binary() => any()}.


%% Example:
%% pie_chart_field_wells() :: #{
%%   <<"PieChartAggregatedFieldWells">> => pie_chart_aggregated_field_wells()
%% }
-type pie_chart_field_wells() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_folder_override_permissions() :: #{
%%   <<"FolderIds">> => list(string()),
%%   <<"Permissions">> => asset_bundle_resource_permissions()
%% }
-type asset_bundle_import_job_folder_override_permissions() :: #{binary() => any()}.


%% Example:
%% create_template_request() :: #{
%%   <<"Definition">> => template_version_definition(),
%%   <<"Name">> => string(),
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"SourceEntity">> => template_source_entity(),
%%   <<"Tags">> => list(tag()),
%%   <<"ValidationStrategy">> => validation_strategy(),
%%   <<"VersionDescription">> => string()
%% }
-type create_template_request() :: #{binary() => any()}.


%% Example:
%% named_entity_ref() :: #{
%%   <<"NamedEntityName">> => string()
%% }
-type named_entity_ref() :: #{binary() => any()}.


%% Example:
%% anonymous_user_dashboard_embedding_configuration() :: #{
%%   <<"DisabledFeatures">> => list(list(any())()),
%%   <<"EnabledFeatures">> => list(list(any())()),
%%   <<"FeatureConfigurations">> => anonymous_user_dashboard_feature_configurations(),
%%   <<"InitialDashboardId">> => string()
%% }
-type anonymous_user_dashboard_embedding_configuration() :: #{binary() => any()}.


%% Example:
%% update_dashboard_published_version_response() :: #{
%%   <<"DashboardArn">> => string(),
%%   <<"DashboardId">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_dashboard_published_version_response() :: #{binary() => any()}.


%% Example:
%% table_field_link_configuration() :: #{
%%   <<"Content">> => table_field_link_content_configuration(),
%%   <<"Target">> => list(any())
%% }
-type table_field_link_configuration() :: #{binary() => any()}.


%% Example:
%% generate_embed_url_for_registered_user_request() :: #{
%%   <<"AllowedDomains">> => list(string()),
%%   <<"ExperienceConfiguration">> := registered_user_embedding_experience_configuration(),
%%   <<"SessionLifetimeInMinutes">> => float(),
%%   <<"UserArn">> := string()
%% }
-type generate_embed_url_for_registered_user_request() :: #{binary() => any()}.


%% Example:
%% search_data_sources_request() :: #{
%%   <<"Filters">> := list(data_source_search_filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type search_data_sources_request() :: #{binary() => any()}.


%% Example:
%% account_info() :: #{
%%   <<"AccountName">> => string(),
%%   <<"AccountSubscriptionStatus">> => string(),
%%   <<"AuthenticationType">> => string(),
%%   <<"Edition">> => list(any()),
%%   <<"IAMIdentityCenterInstanceArn">> => string(),
%%   <<"NotificationEmail">> => string()
%% }
-type account_info() :: #{binary() => any()}.


%% Example:
%% global_table_border_options() :: #{
%%   <<"SideSpecificBorder">> => table_side_border_options(),
%%   <<"UniformBorder">> => table_border_options()
%% }
-type global_table_border_options() :: #{binary() => any()}.


%% Example:
%% filter_slider_control() :: #{
%%   <<"DisplayOptions">> => slider_control_display_options(),
%%   <<"FilterControlId">> => string(),
%%   <<"MaximumValue">> => float(),
%%   <<"MinimumValue">> => float(),
%%   <<"SourceFilterId">> => string(),
%%   <<"StepSize">> => float(),
%%   <<"Title">> => string(),
%%   <<"Type">> => list(any())
%% }
-type filter_slider_control() :: #{binary() => any()}.


%% Example:
%% describe_action_connector_permissions_response() :: #{
%%   <<"ActionConnectorId">> => string(),
%%   <<"Arn">> => [string()],
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"RequestId">> => [string()],
%%   <<"Status">> => integer()
%% }
-type describe_action_connector_permissions_response() :: #{binary() => any()}.


%% Example:
%% histogram_field_wells() :: #{
%%   <<"HistogramAggregatedFieldWells">> => histogram_aggregated_field_wells()
%% }
-type histogram_field_wells() :: #{binary() => any()}.


%% Example:
%% loading_animation() :: #{
%%   <<"Visibility">> => list(any())
%% }
-type loading_animation() :: #{binary() => any()}.


%% Example:
%% list_control_display_options() :: #{
%%   <<"InfoIconLabelOptions">> => sheet_control_info_icon_label_options(),
%%   <<"SearchOptions">> => list_control_search_options(),
%%   <<"SelectAllOptions">> => list_control_select_all_options(),
%%   <<"TitleOptions">> => label_options()
%% }
-type list_control_display_options() :: #{binary() => any()}.


%% Example:
%% update_account_customization_response() :: #{
%%   <<"AccountCustomization">> => account_customization(),
%%   <<"Arn">> => string(),
%%   <<"AwsAccountId">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_account_customization_response() :: #{binary() => any()}.


%% Example:
%% integer_dataset_parameter() :: #{
%%   <<"DefaultValues">> => integer_dataset_parameter_default_values(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ValueType">> => list(any())
%% }
-type integer_dataset_parameter() :: #{binary() => any()}.


%% Example:
%% snapshot_s3_destination_configuration() :: #{
%%   <<"BucketConfiguration">> => s3_bucket_configuration()
%% }
-type snapshot_s3_destination_configuration() :: #{binary() => any()}.


%% Example:
%% update_dashboard_links_request() :: #{
%%   <<"LinkEntities">> := list(string())
%% }
-type update_dashboard_links_request() :: #{binary() => any()}.


%% Example:
%% geo_spatial_column_group() :: #{
%%   <<"Columns">> => list(string()),
%%   <<"CountryCode">> => list(any()),
%%   <<"Name">> => string()
%% }
-type geo_spatial_column_group() :: #{binary() => any()}.


%% Example:
%% create_topic_request() :: #{
%%   <<"CustomInstructions">> => custom_instructions(),
%%   <<"FolderArns">> => list(string()),
%%   <<"Tags">> => list(tag()),
%%   <<"Topic">> := topic_details(),
%%   <<"TopicId">> := string()
%% }
-type create_topic_request() :: #{binary() => any()}.


%% Example:
%% asset_bundle_export_job_folder_override_properties() :: #{
%%   <<"Arn">> => string(),
%%   <<"Properties">> => list(list(any())())
%% }
-type asset_bundle_export_job_folder_override_properties() :: #{binary() => any()}.


%% Example:
%% list_data_sets_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_data_sets_request() :: #{binary() => any()}.


%% Example:
%% decimal_value_when_unset_configuration() :: #{
%%   <<"CustomValue">> => float(),
%%   <<"ValueWhenUnsetOption">> => list(any())
%% }
-type decimal_value_when_unset_configuration() :: #{binary() => any()}.


%% Example:
%% font() :: #{
%%   <<"FontFamily">> => string()
%% }
-type font() :: #{binary() => any()}.


%% Example:
%% unsupported_pricing_plan_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type unsupported_pricing_plan_exception() :: #{binary() => any()}.


%% Example:
%% geospatial_point_style_options() :: #{
%%   <<"ClusterMarkerConfiguration">> => cluster_marker_configuration(),
%%   <<"HeatmapConfiguration">> => geospatial_heatmap_configuration(),
%%   <<"SelectedPointStyle">> => list(any())
%% }
-type geospatial_point_style_options() :: #{binary() => any()}.


%% Example:
%% radar_chart_series_settings() :: #{
%%   <<"AreaStyleSettings">> => radar_chart_area_style_settings()
%% }
-type radar_chart_series_settings() :: #{binary() => any()}.


%% Example:
%% put_data_set_refresh_properties_request() :: #{
%%   <<"DataSetRefreshProperties">> := data_set_refresh_properties()
%% }
-type put_data_set_refresh_properties_request() :: #{binary() => any()}.


%% Example:
%% scroll_bar_options() :: #{
%%   <<"Visibility">> => list(any()),
%%   <<"VisibleRange">> => visible_range_options()
%% }
-type scroll_bar_options() :: #{binary() => any()}.

%% Example:
%% delete_custom_permissions_request() :: #{}
-type delete_custom_permissions_request() :: #{}.


%% Example:
%% search_data_sources_response() :: #{
%%   <<"DataSourceSummaries">> => list(data_source_summary()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type search_data_sources_response() :: #{binary() => any()}.


%% Example:
%% search_topics_request() :: #{
%%   <<"Filters">> := list(topic_search_filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type search_topics_request() :: #{binary() => any()}.


%% Example:
%% create_custom_permissions_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type create_custom_permissions_response() :: #{binary() => any()}.


%% Example:
%% update_topic_request() :: #{
%%   <<"CustomInstructions">> => custom_instructions(),
%%   <<"Topic">> := topic_details()
%% }
-type update_topic_request() :: #{binary() => any()}.


%% Example:
%% theme_alias() :: #{
%%   <<"AliasName">> => string(),
%%   <<"Arn">> => string(),
%%   <<"ThemeVersionNumber">> => float()
%% }
-type theme_alias() :: #{binary() => any()}.

%% Example:
%% update_dashboard_published_version_request() :: #{}
-type update_dashboard_published_version_request() :: #{}.


%% Example:
%% visual_highlight_operation() :: #{
%%   <<"Trigger">> => list(any())
%% }
-type visual_highlight_operation() :: #{binary() => any()}.

%% Example:
%% describe_asset_bundle_import_job_request() :: #{}
-type describe_asset_bundle_import_job_request() :: #{}.


%% Example:
%% layout() :: #{
%%   <<"Configuration">> => layout_configuration()
%% }
-type layout() :: #{binary() => any()}.


%% Example:
%% update_key_registration_request() :: #{
%%   <<"KeyRegistration">> := list(registered_customer_managed_key())
%% }
-type update_key_registration_request() :: #{binary() => any()}.


%% Example:
%% reference_line_static_data_configuration() :: #{
%%   <<"Value">> => float()
%% }
-type reference_line_static_data_configuration() :: #{binary() => any()}.


%% Example:
%% free_form_layout_element_border_style() :: #{
%%   <<"Color">> => string(),
%%   <<"Visibility">> => list(any())
%% }
-type free_form_layout_element_border_style() :: #{binary() => any()}.


%% Example:
%% filter_group() :: #{
%%   <<"CrossDataset">> => list(any()),
%%   <<"FilterGroupId">> => string(),
%%   <<"Filters">> => list(filter()),
%%   <<"ScopeConfiguration">> => filter_scope_configuration(),
%%   <<"Status">> => list(any())
%% }
-type filter_group() :: #{binary() => any()}.


%% Example:
%% update_iam_policy_assignment_request() :: #{
%%   <<"AssignmentStatus">> => list(any()),
%%   <<"Identities">> => map(),
%%   <<"PolicyArn">> => string()
%% }
-type update_iam_policy_assignment_request() :: #{binary() => any()}.

%% Example:
%% describe_namespace_request() :: #{}
-type describe_namespace_request() :: #{}.


%% Example:
%% update_application_with_token_exchange_grant_request() :: #{
%%   <<"Namespace">> := string()
%% }
-type update_application_with_token_exchange_grant_request() :: #{binary() => any()}.


%% Example:
%% create_ingestion_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"IngestionId">> => string(),
%%   <<"IngestionStatus">> => list(any()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type create_ingestion_response() :: #{binary() => any()}.


%% Example:
%% describe_account_customization_request() :: #{
%%   <<"Namespace">> => string(),
%%   <<"Resolved">> => boolean()
%% }
-type describe_account_customization_request() :: #{binary() => any()}.


%% Example:
%% aws_iot_analytics_parameters() :: #{
%%   <<"DataSetName">> => string()
%% }
-type aws_iot_analytics_parameters() :: #{binary() => any()}.


%% Example:
%% update_template_request() :: #{
%%   <<"Definition">> => template_version_definition(),
%%   <<"Name">> => string(),
%%   <<"SourceEntity">> => template_source_entity(),
%%   <<"ValidationStrategy">> => validation_strategy(),
%%   <<"VersionDescription">> => string()
%% }
-type update_template_request() :: #{binary() => any()}.


%% Example:
%% context_menu_option() :: #{
%%   <<"AvailabilityStatus">> => list(any())
%% }
-type context_menu_option() :: #{binary() => any()}.


%% Example:
%% custom_filter_list_configuration() :: #{
%%   <<"CategoryValues">> => list(string()),
%%   <<"MatchOperator">> => list(any()),
%%   <<"NullOption">> => list(any()),
%%   <<"SelectAllOptions">> => list(any())
%% }
-type custom_filter_list_configuration() :: #{binary() => any()}.


%% Example:
%% describe_brand_request() :: #{
%%   <<"VersionId">> => string()
%% }
-type describe_brand_request() :: #{binary() => any()}.


%% Example:
%% list_brands_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_brands_request() :: #{binary() => any()}.


%% Example:
%% scatter_plot_categorically_aggregated_field_wells() :: #{
%%   <<"Category">> => list(dimension_field()),
%%   <<"Label">> => list(dimension_field()),
%%   <<"Size">> => list(measure_field()),
%%   <<"XAxis">> => list(measure_field()),
%%   <<"YAxis">> => list(measure_field())
%% }
-type scatter_plot_categorically_aggregated_field_wells() :: #{binary() => any()}.


%% Example:
%% create_theme_alias_request() :: #{
%%   <<"ThemeVersionNumber">> := float()
%% }
-type create_theme_alias_request() :: #{binary() => any()}.


%% Example:
%% bookmarks_configurations() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type bookmarks_configurations() :: #{binary() => any()}.


%% Example:
%% update_data_source_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"DataSourceId">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"UpdateStatus">> => list(any())
%% }
-type update_data_source_response() :: #{binary() => any()}.


%% Example:
%% gauge_chart_options() :: #{
%%   <<"Arc">> => arc_configuration(),
%%   <<"ArcAxis">> => arc_axis_configuration(),
%%   <<"Comparison">> => comparison_configuration(),
%%   <<"PrimaryValueDisplayType">> => list(any()),
%%   <<"PrimaryValueFontConfiguration">> => font_configuration()
%% }
-type gauge_chart_options() :: #{binary() => any()}.

%% Example:
%% describe_topic_request() :: #{}
-type describe_topic_request() :: #{}.


%% Example:
%% top_bottom_filter() :: #{
%%   <<"AggregationSortConfigurations">> => list(aggregation_sort_configuration()),
%%   <<"Column">> => column_identifier(),
%%   <<"DefaultFilterControlConfiguration">> => default_filter_control_configuration(),
%%   <<"FilterId">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"ParameterName">> => string(),
%%   <<"TimeGranularity">> => list(any())
%% }
-type top_bottom_filter() :: #{binary() => any()}.


%% Example:
%% error_info() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => list(any())
%% }
-type error_info() :: #{binary() => any()}.

%% Example:
%% describe_action_connector_request() :: #{}
-type describe_action_connector_request() :: #{}.

%% Example:
%% delete_user_custom_permission_request() :: #{}
-type delete_user_custom_permission_request() :: #{}.


%% Example:
%% update_flow_permissions_output() :: #{
%%   <<"Arn">> => [string()],
%%   <<"FlowId">> => string(),
%%   <<"Permissions">> => list(permission()),
%%   <<"RequestId">> => [string()],
%%   <<"Status">> => integer()
%% }
-type update_flow_permissions_output() :: #{binary() => any()}.


%% Example:
%% maximum_minimum_computation() :: #{
%%   <<"ComputationId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Time">> => dimension_field(),
%%   <<"Type">> => list(any()),
%%   <<"Value">> => measure_field()
%% }
-type maximum_minimum_computation() :: #{binary() => any()}.


%% Example:
%% delete_account_customization_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_account_customization_response() :: #{binary() => any()}.


%% Example:
%% field_sort_options() :: #{
%%   <<"ColumnSort">> => column_sort(),
%%   <<"FieldSort">> => field_sort()
%% }
-type field_sort_options() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_folder_override_parameters() :: #{
%%   <<"FolderId">> => string(),
%%   <<"Name">> => string(),
%%   <<"ParentFolderArn">> => string()
%% }
-type asset_bundle_import_job_folder_override_parameters() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% vpc_connection() :: #{
%%   <<"Arn">> => string(),
%%   <<"AvailabilityStatus">> => list(any()),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DnsResolvers">> => list(string()),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"NetworkInterfaces">> => list(network_interface()),
%%   <<"RoleArn">> => string(),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"Status">> => list(any()),
%%   <<"VPCConnectionId">> => string(),
%%   <<"VPCId">> => string()
%% }
-type vpc_connection() :: #{binary() => any()}.


%% Example:
%% create_vpc_connection_request() :: #{
%%   <<"DnsResolvers">> => list(string()),
%%   <<"Name">> := string(),
%%   <<"RoleArn">> := string(),
%%   <<"SecurityGroupIds">> := list(string()),
%%   <<"SubnetIds">> := list(string()),
%%   <<"Tags">> => list(tag()),
%%   <<"VPCConnectionId">> := string()
%% }
-type create_vpc_connection_request() :: #{binary() => any()}.

%% Example:
%% get_flow_permissions_input() :: #{}
-type get_flow_permissions_input() :: #{}.


%% Example:
%% geospatial_layer_join_definition() :: #{
%%   <<"ColorField">> => geospatial_layer_color_field(),
%%   <<"DatasetKeyField">> => unaggregated_field(),
%%   <<"ShapeKeyField">> => string()
%% }
-type geospatial_layer_join_definition() :: #{binary() => any()}.


%% Example:
%% unaggregated_field() :: #{
%%   <<"Column">> => column_identifier(),
%%   <<"FieldId">> => string(),
%%   <<"FormatConfiguration">> => format_configuration()
%% }
-type unaggregated_field() :: #{binary() => any()}.


%% Example:
%% line_series_axis_display_options() :: #{
%%   <<"AxisOptions">> => axis_display_options(),
%%   <<"MissingDataConfigurations">> => list(missing_data_configuration())
%% }
-type line_series_axis_display_options() :: #{binary() => any()}.


%% Example:
%% sheet_visual_scoping_configuration() :: #{
%%   <<"Scope">> => list(any()),
%%   <<"SheetId">> => string(),
%%   <<"VisualIds">> => list(string())
%% }
-type sheet_visual_scoping_configuration() :: #{binary() => any()}.


%% Example:
%% dynamic_default_value() :: #{
%%   <<"DefaultValueColumn">> => column_identifier(),
%%   <<"GroupNameColumn">> => column_identifier(),
%%   <<"UserNameColumn">> => column_identifier()
%% }
-type dynamic_default_value() :: #{binary() => any()}.


%% Example:
%% axis_display_min_max_range() :: #{
%%   <<"Maximum">> => float(),
%%   <<"Minimum">> => float()
%% }
-type axis_display_min_max_range() :: #{binary() => any()}.


%% Example:
%% pivot_table_cell_conditional_formatting() :: #{
%%   <<"FieldId">> => string(),
%%   <<"Scope">> => pivot_table_conditional_formatting_scope(),
%%   <<"Scopes">> => list(pivot_table_conditional_formatting_scope()),
%%   <<"TextFormat">> => text_conditional_format()
%% }
-type pivot_table_cell_conditional_formatting() :: #{binary() => any()}.


%% Example:
%% search_analyses_response() :: #{
%%   <<"AnalysisSummaryList">> => list(analysis_summary()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type search_analyses_response() :: #{binary() => any()}.


%% Example:
%% parameters() :: #{
%%   <<"DateTimeParameters">> => list(date_time_parameter()),
%%   <<"DecimalParameters">> => list(decimal_parameter()),
%%   <<"IntegerParameters">> => list(integer_parameter()),
%%   <<"StringParameters">> => list(string_parameter())
%% }
-type parameters() :: #{binary() => any()}.


%% Example:
%% read_client_credentials_grant_details() :: #{
%%   <<"ClientId">> => string(),
%%   <<"TokenEndpoint">> => string()
%% }
-type read_client_credentials_grant_details() :: #{binary() => any()}.


%% Example:
%% grid_layout_configuration() :: #{
%%   <<"CanvasSizeOptions">> => grid_layout_canvas_size_options(),
%%   <<"Elements">> => list(grid_layout_element())
%% }
-type grid_layout_configuration() :: #{binary() => any()}.


%% Example:
%% delete_theme_request() :: #{
%%   <<"VersionNumber">> => float()
%% }
-type delete_theme_request() :: #{binary() => any()}.


%% Example:
%% template_version_definition() :: #{
%%   <<"AnalysisDefaults">> => analysis_defaults(),
%%   <<"CalculatedFields">> => list(calculated_field()),
%%   <<"ColumnConfigurations">> => list(column_configuration()),
%%   <<"DataSetConfigurations">> => list(data_set_configuration()),
%%   <<"FilterGroups">> => list(filter_group()),
%%   <<"Options">> => asset_options(),
%%   <<"ParameterDeclarations">> => list(parameter_declaration()),
%%   <<"QueryExecutionOptions">> => query_execution_options(),
%%   <<"Sheets">> => list(sheet_definition()),
%%   <<"StaticFiles">> => list(static_file())
%% }
-type template_version_definition() :: #{binary() => any()}.


%% Example:
%% update_application_with_token_exchange_grant_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_application_with_token_exchange_grant_response() :: #{binary() => any()}.


%% Example:
%% named_entity_definition_metric() :: #{
%%   <<"Aggregation">> => list(any()),
%%   <<"AggregationFunctionParameters">> => map()
%% }
-type named_entity_definition_metric() :: #{binary() => any()}.


%% Example:
%% free_form_layout_screen_canvas_size_options() :: #{
%%   <<"OptimizedViewPortWidth">> => string()
%% }
-type free_form_layout_screen_canvas_size_options() :: #{binary() => any()}.


%% Example:
%% field_label_type() :: #{
%%   <<"FieldId">> => string(),
%%   <<"Visibility">> => list(any())
%% }
-type field_label_type() :: #{binary() => any()}.

%% Example:
%% describe_data_set_permissions_request() :: #{}
-type describe_data_set_permissions_request() :: #{}.


%% Example:
%% sheet_definition() :: #{
%%   <<"ContentType">> => list(any()),
%%   <<"CustomActionDefaults">> => visual_custom_action_defaults(),
%%   <<"Description">> => string(),
%%   <<"FilterControls">> => list(filter_control()),
%%   <<"Images">> => list(sheet_image()),
%%   <<"Layouts">> => list(layout()),
%%   <<"Name">> => string(),
%%   <<"ParameterControls">> => list(parameter_control()),
%%   <<"SheetControlLayouts">> => list(sheet_control_layout()),
%%   <<"SheetId">> => string(),
%%   <<"TextBoxes">> => list(sheet_text_box()),
%%   <<"Title">> => string(),
%%   <<"Visuals">> => list(visual())
%% }
-type sheet_definition() :: #{binary() => any()}.


%% Example:
%% relative_dates_filter() :: #{
%%   <<"AnchorDateConfiguration">> => anchor_date_configuration(),
%%   <<"Column">> => column_identifier(),
%%   <<"DefaultFilterControlConfiguration">> => default_filter_control_configuration(),
%%   <<"ExcludePeriodConfiguration">> => exclude_period_configuration(),
%%   <<"FilterId">> => string(),
%%   <<"MinimumGranularity">> => list(any()),
%%   <<"NullOption">> => list(any()),
%%   <<"ParameterName">> => string(),
%%   <<"RelativeDateType">> => list(any()),
%%   <<"RelativeDateValue">> => integer(),
%%   <<"TimeGranularity">> => list(any())
%% }
-type relative_dates_filter() :: #{binary() => any()}.


%% Example:
%% line_chart_series_settings() :: #{
%%   <<"LineStyleSettings">> => line_chart_line_style_settings(),
%%   <<"MarkerStyleSettings">> => line_chart_marker_style_settings()
%% }
-type line_chart_series_settings() :: #{binary() => any()}.


%% Example:
%% pivot_field_sort_options() :: #{
%%   <<"FieldId">> => string(),
%%   <<"SortBy">> => pivot_table_sort_by()
%% }
-type pivot_field_sort_options() :: #{binary() => any()}.


%% Example:
%% queue_info() :: #{
%%   <<"QueuedIngestion">> => string(),
%%   <<"WaitingOnIngestion">> => string()
%% }
-type queue_info() :: #{binary() => any()}.


%% Example:
%% rename_column_operation() :: #{
%%   <<"ColumnName">> => string(),
%%   <<"NewColumnName">> => string()
%% }
-type rename_column_operation() :: #{binary() => any()}.


%% Example:
%% long_format_text() :: #{
%%   <<"PlainText">> => string(),
%%   <<"RichText">> => string()
%% }
-type long_format_text() :: #{binary() => any()}.


%% Example:
%% topic_constant_value() :: #{
%%   <<"ConstantType">> => list(any()),
%%   <<"Maximum">> => string(),
%%   <<"Minimum">> => string(),
%%   <<"Value">> => string(),
%%   <<"ValueList">> => list(collective_constant_entry())
%% }
-type topic_constant_value() :: #{binary() => any()}.


%% Example:
%% tree_map_field_wells() :: #{
%%   <<"TreeMapAggregatedFieldWells">> => tree_map_aggregated_field_wells()
%% }
-type tree_map_field_wells() :: #{binary() => any()}.


%% Example:
%% grid_layout_element() :: #{
%%   <<"ColumnIndex">> => integer(),
%%   <<"ColumnSpan">> => integer(),
%%   <<"ElementId">> => string(),
%%   <<"ElementType">> => list(any()),
%%   <<"RowIndex">> => integer(),
%%   <<"RowSpan">> => integer()
%% }
-type grid_layout_element() :: #{binary() => any()}.


%% Example:
%% column_identifier() :: #{
%%   <<"ColumnName">> => string(),
%%   <<"DataSetIdentifier">> => string()
%% }
-type column_identifier() :: #{binary() => any()}.


%% Example:
%% heat_map_field_wells() :: #{
%%   <<"HeatMapAggregatedFieldWells">> => heat_map_aggregated_field_wells()
%% }
-type heat_map_field_wells() :: #{binary() => any()}.

%% Example:
%% delete_role_custom_permission_request() :: #{}
-type delete_role_custom_permission_request() :: #{}.


%% Example:
%% geospatial_line_layer() :: #{
%%   <<"Style">> => geospatial_line_style()
%% }
-type geospatial_line_layer() :: #{binary() => any()}.


%% Example:
%% ssl_properties() :: #{
%%   <<"DisableSsl">> => boolean()
%% }
-type ssl_properties() :: #{binary() => any()}.

%% Example:
%% describe_topic_permissions_request() :: #{}
-type describe_topic_permissions_request() :: #{}.


%% Example:
%% table_field_option() :: #{
%%   <<"CustomLabel">> => string(),
%%   <<"FieldId">> => string(),
%%   <<"URLStyling">> => table_field_url_configuration(),
%%   <<"Visibility">> => list(any()),
%%   <<"Width">> => string()
%% }
-type table_field_option() :: #{binary() => any()}.


%% Example:
%% arc_axis_display_range() :: #{
%%   <<"Max">> => float(),
%%   <<"Min">> => float()
%% }
-type arc_axis_display_range() :: #{binary() => any()}.


%% Example:
%% update_account_customization_request() :: #{
%%   <<"AccountCustomization">> := account_customization(),
%%   <<"Namespace">> => string()
%% }
-type update_account_customization_request() :: #{binary() => any()}.


%% Example:
%% describe_key_registration_response() :: #{
%%   <<"AwsAccountId">> => string(),
%%   <<"KeyRegistration">> => list(registered_customer_managed_key()),
%%   <<"QDataKey">> => q_data_key(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_key_registration_response() :: #{binary() => any()}.


%% Example:
%% client_credentials_grant_metadata() :: #{
%%   <<"BaseEndpoint">> => string(),
%%   <<"ClientCredentialsDetails">> => list(),
%%   <<"ClientCredentialsSource">> => list(any())
%% }
-type client_credentials_grant_metadata() :: #{binary() => any()}.


%% Example:
%% word_cloud_chart_configuration() :: #{
%%   <<"CategoryLabelOptions">> => chart_axis_label_options(),
%%   <<"FieldWells">> => word_cloud_field_wells(),
%%   <<"Interactions">> => visual_interaction_options(),
%%   <<"SortConfiguration">> => word_cloud_sort_configuration(),
%%   <<"WordCloudOptions">> => word_cloud_options()
%% }
-type word_cloud_chart_configuration() :: #{binary() => any()}.


%% Example:
%% histogram_configuration() :: #{
%%   <<"BinOptions">> => histogram_bin_options(),
%%   <<"DataLabels">> => data_label_options(),
%%   <<"FieldWells">> => histogram_field_wells(),
%%   <<"Interactions">> => visual_interaction_options(),
%%   <<"Tooltip">> => tooltip_options(),
%%   <<"VisualPalette">> => visual_palette(),
%%   <<"XAxisDisplayOptions">> => axis_display_options(),
%%   <<"XAxisLabelOptions">> => chart_axis_label_options(),
%%   <<"YAxisDisplayOptions">> => axis_display_options()
%% }
-type histogram_configuration() :: #{binary() => any()}.


%% Example:
%% string_dataset_parameter() :: #{
%%   <<"DefaultValues">> => string_dataset_parameter_default_values(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ValueType">> => list(any())
%% }
-type string_dataset_parameter() :: #{binary() => any()}.


%% Example:
%% client_credentials_grant_details() :: #{
%%   <<"ClientId">> => string(),
%%   <<"ClientSecret">> => string(),
%%   <<"TokenEndpoint">> => string()
%% }
-type client_credentials_grant_details() :: #{binary() => any()}.


%% Example:
%% delete_analysis_request() :: #{
%%   <<"ForceDeleteWithoutRecovery">> => boolean(),
%%   <<"RecoveryWindowInDays">> => float()
%% }
-type delete_analysis_request() :: #{binary() => any()}.


%% Example:
%% update_group_request() :: #{
%%   <<"Description">> => string()
%% }
-type update_group_request() :: #{binary() => any()}.


%% Example:
%% iam_connection_metadata() :: #{
%%   <<"RoleArn">> => string()
%% }
-type iam_connection_metadata() :: #{binary() => any()}.


%% Example:
%% custom_sql() :: #{
%%   <<"Columns">> => list(input_column()),
%%   <<"DataSourceArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"SqlQuery">> => string()
%% }
-type custom_sql() :: #{binary() => any()}.


%% Example:
%% get_flow_permissions_output() :: #{
%%   <<"Arn">> => string(),
%%   <<"FlowId">> => string(),
%%   <<"Permissions">> => list(permission()),
%%   <<"RequestId">> => [string()],
%%   <<"Status">> => integer()
%% }
-type get_flow_permissions_output() :: #{binary() => any()}.


%% Example:
%% filter_selectable_values() :: #{
%%   <<"Values">> => list(string())
%% }
-type filter_selectable_values() :: #{binary() => any()}.

%% Example:
%% describe_q_personalization_configuration_request() :: #{}
-type describe_q_personalization_configuration_request() :: #{}.


%% Example:
%% donut_options() :: #{
%%   <<"ArcOptions">> => arc_options(),
%%   <<"DonutCenterOptions">> => donut_center_options()
%% }
-type donut_options() :: #{binary() => any()}.


%% Example:
%% create_analysis_response() :: #{
%%   <<"AnalysisId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreationStatus">> => list(any()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type create_analysis_response() :: #{binary() => any()}.


%% Example:
%% search_analyses_request() :: #{
%%   <<"Filters">> := list(analysis_search_filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type search_analyses_request() :: #{binary() => any()}.


%% Example:
%% geospatial_categorical_color() :: #{
%%   <<"CategoryDataColors">> => list(geospatial_categorical_data_color()),
%%   <<"DefaultOpacity">> => float(),
%%   <<"NullDataSettings">> => geospatial_null_data_settings(),
%%   <<"NullDataVisibility">> => list(any())
%% }
-type geospatial_categorical_color() :: #{binary() => any()}.


%% Example:
%% describe_theme_permissions_response() :: #{
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"ThemeArn">> => string(),
%%   <<"ThemeId">> => string()
%% }
-type describe_theme_permissions_response() :: #{binary() => any()}.


%% Example:
%% integer_parameter_declaration() :: #{
%%   <<"DefaultValues">> => integer_default_values(),
%%   <<"MappedDataSetParameters">> => list(mapped_data_set_parameter()),
%%   <<"Name">> => string(),
%%   <<"ParameterValueType">> => list(any()),
%%   <<"ValueWhenUnset">> => integer_value_when_unset_configuration()
%% }
-type integer_parameter_declaration() :: #{binary() => any()}.


%% Example:
%% default_relative_date_time_control_options() :: #{
%%   <<"CommitMode">> => list(any()),
%%   <<"DisplayOptions">> => relative_date_time_control_display_options()
%% }
-type default_relative_date_time_control_options() :: #{binary() => any()}.


%% Example:
%% image_interaction_options() :: #{
%%   <<"ImageMenuOption">> => image_menu_option()
%% }
-type image_interaction_options() :: #{binary() => any()}.


%% Example:
%% search_flows_input() :: #{
%%   <<"Filters">> := list(search_flows_filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type search_flows_input() :: #{binary() => any()}.


%% Example:
%% update_brand_response() :: #{
%%   <<"BrandDefinition">> => brand_definition(),
%%   <<"BrandDetail">> => brand_detail(),
%%   <<"RequestId">> => string()
%% }
-type update_brand_response() :: #{binary() => any()}.


%% Example:
%% update_folder_permissions_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"FolderId">> => string(),
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_folder_permissions_response() :: #{binary() => any()}.

%% Example:
%% describe_data_set_refresh_properties_request() :: #{}
-type describe_data_set_refresh_properties_request() :: #{}.


%% Example:
%% describe_theme_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"Theme">> => theme()
%% }
-type describe_theme_response() :: #{binary() => any()}.


%% Example:
%% state_persistence_configurations() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type state_persistence_configurations() :: #{binary() => any()}.


%% Example:
%% data_path_sort() :: #{
%%   <<"Direction">> => list(any()),
%%   <<"SortPaths">> => list(data_path_value())
%% }
-type data_path_sort() :: #{binary() => any()}.


%% Example:
%% folder_search_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Operator">> => list(any()),
%%   <<"Value">> => string()
%% }
-type folder_search_filter() :: #{binary() => any()}.


%% Example:
%% arc_options() :: #{
%%   <<"ArcThickness">> => list(any())
%% }
-type arc_options() :: #{binary() => any()}.


%% Example:
%% combo_chart_field_wells() :: #{
%%   <<"ComboChartAggregatedFieldWells">> => combo_chart_aggregated_field_wells()
%% }
-type combo_chart_field_wells() :: #{binary() => any()}.


%% Example:
%% update_identity_propagation_config_request() :: #{
%%   <<"AuthorizedTargets">> => list(string())
%% }
-type update_identity_propagation_config_request() :: #{binary() => any()}.


%% Example:
%% describe_topic_permissions_response() :: #{
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TopicArn">> => string(),
%%   <<"TopicId">> => string()
%% }
-type describe_topic_permissions_response() :: #{binary() => any()}.


%% Example:
%% custom_content_configuration() :: #{
%%   <<"ContentType">> => list(any()),
%%   <<"ContentUrl">> => string(),
%%   <<"ImageScaling">> => list(any()),
%%   <<"Interactions">> => visual_interaction_options()
%% }
-type custom_content_configuration() :: #{binary() => any()}.


%% Example:
%% geospatial_line_style() :: #{
%%   <<"LineSymbolStyle">> => geospatial_line_symbol_style()
%% }
-type geospatial_line_style() :: #{binary() => any()}.


%% Example:
%% template_error() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"ViolatedEntities">> => list(entity())
%% }
-type template_error() :: #{binary() => any()}.


%% Example:
%% describe_data_source_response() :: #{
%%   <<"DataSource">> => data_source(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_data_source_response() :: #{binary() => any()}.


%% Example:
%% update_user_custom_permission_request() :: #{
%%   <<"CustomPermissionsName">> := string()
%% }
-type update_user_custom_permission_request() :: #{binary() => any()}.


%% Example:
%% geospatial_categorical_data_color() :: #{
%%   <<"Color">> => string(),
%%   <<"DataValue">> => string()
%% }
-type geospatial_categorical_data_color() :: #{binary() => any()}.


%% Example:
%% dashboard_version_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"SourceEntityArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"VersionNumber">> => float()
%% }
-type dashboard_version_summary() :: #{binary() => any()}.


%% Example:
%% topic_i_r_comparison_method() :: #{
%%   <<"Period">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"WindowSize">> => integer()
%% }
-type topic_i_r_comparison_method() :: #{binary() => any()}.


%% Example:
%% create_topic_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"RefreshArn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TopicId">> => string()
%% }
-type create_topic_response() :: #{binary() => any()}.


%% Example:
%% list_folders_for_resource_response() :: #{
%%   <<"Folders">> => list(string()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type list_folders_for_resource_response() :: #{binary() => any()}.


%% Example:
%% brand_element_style() :: #{
%%   <<"NavbarStyle">> => navbar_style()
%% }
-type brand_element_style() :: #{binary() => any()}.


%% Example:
%% date_axis_options() :: #{
%%   <<"MissingDateVisibility">> => list(any())
%% }
-type date_axis_options() :: #{binary() => any()}.


%% Example:
%% join_instruction() :: #{
%%   <<"LeftJoinKeyProperties">> => join_key_properties(),
%%   <<"LeftOperand">> => string(),
%%   <<"OnClause">> => string(),
%%   <<"RightJoinKeyProperties">> => join_key_properties(),
%%   <<"RightOperand">> => string(),
%%   <<"Type">> => list(any())
%% }
-type join_instruction() :: #{binary() => any()}.


%% Example:
%% comparison_format_configuration() :: #{
%%   <<"NumberDisplayFormatConfiguration">> => number_display_format_configuration(),
%%   <<"PercentageDisplayFormatConfiguration">> => percentage_display_format_configuration()
%% }
-type comparison_format_configuration() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_resource_id_override_configuration() :: #{
%%   <<"PrefixForAllResources">> => string()
%% }
-type asset_bundle_import_job_resource_id_override_configuration() :: #{binary() => any()}.


%% Example:
%% describe_theme_alias_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"ThemeAlias">> => theme_alias()
%% }
-type describe_theme_alias_response() :: #{binary() => any()}.


%% Example:
%% analysis_definition() :: #{
%%   <<"AnalysisDefaults">> => analysis_defaults(),
%%   <<"CalculatedFields">> => list(calculated_field()),
%%   <<"ColumnConfigurations">> => list(column_configuration()),
%%   <<"DataSetIdentifierDeclarations">> => list(data_set_identifier_declaration()),
%%   <<"FilterGroups">> => list(filter_group()),
%%   <<"Options">> => asset_options(),
%%   <<"ParameterDeclarations">> => list(parameter_declaration()),
%%   <<"QueryExecutionOptions">> => query_execution_options(),
%%   <<"Sheets">> => list(sheet_definition()),
%%   <<"StaticFiles">> => list(static_file())
%% }
-type analysis_definition() :: #{binary() => any()}.


%% Example:
%% integer_value_when_unset_configuration() :: #{
%%   <<"CustomValue">> => float(),
%%   <<"ValueWhenUnsetOption">> => list(any())
%% }
-type integer_value_when_unset_configuration() :: #{binary() => any()}.


%% Example:
%% update_data_set_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"DataSetId">> => string(),
%%   <<"IngestionArn">> => string(),
%%   <<"IngestionId">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_data_set_response() :: #{binary() => any()}.


%% Example:
%% create_theme_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationStatus">> => list(any()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"ThemeId">> => string(),
%%   <<"VersionArn">> => string()
%% }
-type create_theme_response() :: #{binary() => any()}.


%% Example:
%% describe_template_definition_request() :: #{
%%   <<"AliasName">> => string(),
%%   <<"VersionNumber">> => float()
%% }
-type describe_template_definition_request() :: #{binary() => any()}.


%% Example:
%% pivot_total_options() :: #{
%%   <<"CustomLabel">> => string(),
%%   <<"MetricHeaderCellStyle">> => table_cell_style(),
%%   <<"Placement">> => list(any()),
%%   <<"ScrollStatus">> => list(any()),
%%   <<"TotalAggregationOptions">> => list(total_aggregation_option()),
%%   <<"TotalCellStyle">> => table_cell_style(),
%%   <<"TotalsVisibility">> => list(any()),
%%   <<"ValueCellStyle">> => table_cell_style()
%% }
-type pivot_total_options() :: #{binary() => any()}.


%% Example:
%% table_inline_visualization() :: #{
%%   <<"DataBars">> => data_bars_options()
%% }
-type table_inline_visualization() :: #{binary() => any()}.


%% Example:
%% named_entity_definition() :: #{
%%   <<"FieldName">> => string(),
%%   <<"Metric">> => named_entity_definition_metric(),
%%   <<"PropertyName">> => string(),
%%   <<"PropertyRole">> => list(any()),
%%   <<"PropertyUsage">> => list(any())
%% }
-type named_entity_definition() :: #{binary() => any()}.

%% Example:
%% delete_vpc_connection_request() :: #{}
-type delete_vpc_connection_request() :: #{}.


%% Example:
%% snapshot_job_result() :: #{
%%   <<"AnonymousUsers">> => list(anonymous_user_snapshot_job_result())
%% }
-type snapshot_job_result() :: #{binary() => any()}.


%% Example:
%% dashboard_search_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Operator">> => list(any()),
%%   <<"Value">> => string()
%% }
-type dashboard_search_filter() :: #{binary() => any()}.


%% Example:
%% small_multiples_axis_properties() :: #{
%%   <<"Placement">> => list(any()),
%%   <<"Scale">> => list(any())
%% }
-type small_multiples_axis_properties() :: #{binary() => any()}.


%% Example:
%% maria_db_parameters() :: #{
%%   <<"Database">> => string(),
%%   <<"Host">> => string(),
%%   <<"Port">> => integer()
%% }
-type maria_db_parameters() :: #{binary() => any()}.


%% Example:
%% registered_customer_managed_key() :: #{
%%   <<"DefaultKey">> => boolean(),
%%   <<"KeyArn">> => string()
%% }
-type registered_customer_managed_key() :: #{binary() => any()}.


%% Example:
%% describe_analysis_permissions_response() :: #{
%%   <<"AnalysisArn">> => string(),
%%   <<"AnalysisId">> => string(),
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_analysis_permissions_response() :: #{binary() => any()}.


%% Example:
%% axis_linear_scale() :: #{
%%   <<"StepCount">> => integer(),
%%   <<"StepSize">> => float()
%% }
-type axis_linear_scale() :: #{binary() => any()}.


%% Example:
%% update_quick_sight_q_search_configuration_request() :: #{
%%   <<"QSearchStatus">> := list(any())
%% }
-type update_quick_sight_q_search_configuration_request() :: #{binary() => any()}.


%% Example:
%% parameter_list_control() :: #{
%%   <<"CascadingControlConfiguration">> => cascading_control_configuration(),
%%   <<"DisplayOptions">> => list_control_display_options(),
%%   <<"ParameterControlId">> => string(),
%%   <<"SelectableValues">> => parameter_selectable_values(),
%%   <<"SourceParameterName">> => string(),
%%   <<"Title">> => string(),
%%   <<"Type">> => list(any())
%% }
-type parameter_list_control() :: #{binary() => any()}.


%% Example:
%% static_file_url_source_options() :: #{
%%   <<"Url">> => string()
%% }
-type static_file_url_source_options() :: #{binary() => any()}.


%% Example:
%% describe_role_custom_permission_response() :: #{
%%   <<"CustomPermissionsName">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_role_custom_permission_response() :: #{binary() => any()}.


%% Example:
%% sheet_control_layout_configuration() :: #{
%%   <<"GridLayout">> => grid_layout_configuration()
%% }
-type sheet_control_layout_configuration() :: #{binary() => any()}.


%% Example:
%% line_chart_configuration() :: #{
%%   <<"ContributionAnalysisDefaults">> => list(contribution_analysis_default()),
%%   <<"DataLabels">> => data_label_options(),
%%   <<"DefaultSeriesSettings">> => line_chart_default_series_settings(),
%%   <<"FieldWells">> => line_chart_field_wells(),
%%   <<"ForecastConfigurations">> => list(forecast_configuration()),
%%   <<"Interactions">> => visual_interaction_options(),
%%   <<"Legend">> => legend_options(),
%%   <<"PrimaryYAxisDisplayOptions">> => line_series_axis_display_options(),
%%   <<"PrimaryYAxisLabelOptions">> => chart_axis_label_options(),
%%   <<"ReferenceLines">> => list(reference_line()),
%%   <<"SecondaryYAxisDisplayOptions">> => line_series_axis_display_options(),
%%   <<"SecondaryYAxisLabelOptions">> => chart_axis_label_options(),
%%   <<"Series">> => list(series_item()),
%%   <<"SingleAxisOptions">> => single_axis_options(),
%%   <<"SmallMultiplesOptions">> => small_multiples_options(),
%%   <<"SortConfiguration">> => line_chart_sort_configuration(),
%%   <<"Tooltip">> => tooltip_options(),
%%   <<"Type">> => list(any()),
%%   <<"VisualPalette">> => visual_palette(),
%%   <<"XAxisDisplayOptions">> => axis_display_options(),
%%   <<"XAxisLabelOptions">> => chart_axis_label_options()
%% }
-type line_chart_configuration() :: #{binary() => any()}.


%% Example:
%% visual_axis_sort_option() :: #{
%%   <<"AvailabilityStatus">> => list(any())
%% }
-type visual_axis_sort_option() :: #{binary() => any()}.


%% Example:
%% topic_named_entity() :: #{
%%   <<"Definition">> => list(named_entity_definition()),
%%   <<"EntityDescription">> => string(),
%%   <<"EntityName">> => string(),
%%   <<"EntitySynonyms">> => list(string()),
%%   <<"SemanticEntityType">> => semantic_entity_type()
%% }
-type topic_named_entity() :: #{binary() => any()}.


%% Example:
%% default_filter_control_options() :: #{
%%   <<"DefaultDateTimePickerOptions">> => default_date_time_picker_control_options(),
%%   <<"DefaultDropdownOptions">> => default_filter_drop_down_control_options(),
%%   <<"DefaultListOptions">> => default_filter_list_control_options(),
%%   <<"DefaultRelativeDateTimeOptions">> => default_relative_date_time_control_options(),
%%   <<"DefaultSliderOptions">> => default_slider_control_options(),
%%   <<"DefaultTextAreaOptions">> => default_text_area_control_options(),
%%   <<"DefaultTextFieldOptions">> => default_text_field_control_options()
%% }
-type default_filter_control_options() :: #{binary() => any()}.


%% Example:
%% pivot_table_total_options() :: #{
%%   <<"ColumnSubtotalOptions">> => subtotal_options(),
%%   <<"ColumnTotalOptions">> => pivot_total_options(),
%%   <<"RowSubtotalOptions">> => subtotal_options(),
%%   <<"RowTotalOptions">> => pivot_total_options()
%% }
-type pivot_table_total_options() :: #{binary() => any()}.


%% Example:
%% bar_chart_aggregated_field_wells() :: #{
%%   <<"Category">> => list(dimension_field()),
%%   <<"Colors">> => list(dimension_field()),
%%   <<"SmallMultiples">> => list(dimension_field()),
%%   <<"Values">> => list(measure_field())
%% }
-type bar_chart_aggregated_field_wells() :: #{binary() => any()}.


%% Example:
%% logo_set() :: #{
%%   <<"Favicon">> => image_set(),
%%   <<"Primary">> => image_set()
%% }
-type logo_set() :: #{binary() => any()}.


%% Example:
%% unsupported_user_edition_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type unsupported_user_edition_exception() :: #{binary() => any()}.


%% Example:
%% topic_i_r_metric() :: #{
%%   <<"CalculatedFieldReferences">> => list(identifier()),
%%   <<"ComparisonMethod">> => topic_i_r_comparison_method(),
%%   <<"DisplayFormat">> => list(any()),
%%   <<"DisplayFormatOptions">> => display_format_options(),
%%   <<"Expression">> => string(),
%%   <<"Function">> => agg_function(),
%%   <<"MetricId">> => identifier(),
%%   <<"NamedEntity">> => named_entity_ref(),
%%   <<"Operands">> => list(identifier())
%% }
-type topic_i_r_metric() :: #{binary() => any()}.


%% Example:
%% display_format_options() :: #{
%%   <<"BlankCellFormat">> => string(),
%%   <<"CurrencySymbol">> => string(),
%%   <<"DateFormat">> => string(),
%%   <<"DecimalSeparator">> => list(any()),
%%   <<"FractionDigits">> => integer(),
%%   <<"GroupingSeparator">> => string(),
%%   <<"NegativeFormat">> => negative_format(),
%%   <<"Prefix">> => string(),
%%   <<"Suffix">> => string(),
%%   <<"UnitScaler">> => list(any()),
%%   <<"UseBlankCellFormat">> => boolean(),
%%   <<"UseGrouping">> => boolean()
%% }
-type display_format_options() :: #{binary() => any()}.


%% Example:
%% total_aggregation_function() :: #{
%%   <<"SimpleTotalAggregationFunction">> => list(any())
%% }
-type total_aggregation_function() :: #{binary() => any()}.


%% Example:
%% body_section_dynamic_numeric_dimension_configuration() :: #{
%%   <<"Column">> => column_identifier(),
%%   <<"Limit">> => integer(),
%%   <<"SortByMetrics">> => list(column_sort())
%% }
-type body_section_dynamic_numeric_dimension_configuration() :: #{binary() => any()}.


%% Example:
%% link_sharing_configuration() :: #{
%%   <<"Permissions">> => list(resource_permission())
%% }
-type link_sharing_configuration() :: #{binary() => any()}.


%% Example:
%% list_vpc_connections_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_vpc_connections_request() :: #{binary() => any()}.


%% Example:
%% refresh_failure_configuration() :: #{
%%   <<"EmailAlert">> => refresh_failure_email_alert()
%% }
-type refresh_failure_configuration() :: #{binary() => any()}.


%% Example:
%% mapped_data_set_parameter() :: #{
%%   <<"DataSetIdentifier">> => string(),
%%   <<"DataSetParameterName">> => string()
%% }
-type mapped_data_set_parameter() :: #{binary() => any()}.


%% Example:
%% starburst_parameters() :: #{
%%   <<"AuthenticationType">> => list(any()),
%%   <<"Catalog">> => string(),
%%   <<"DatabaseAccessControlRole">> => string(),
%%   <<"Host">> => string(),
%%   <<"OAuthParameters">> => o_auth_parameters(),
%%   <<"Port">> => integer(),
%%   <<"ProductType">> => list(any())
%% }
-type starburst_parameters() :: #{binary() => any()}.

%% Example:
%% describe_brand_published_version_request() :: #{}
-type describe_brand_published_version_request() :: #{}.


%% Example:
%% shape_conditional_format() :: #{
%%   <<"BackgroundColor">> => conditional_formatting_color()
%% }
-type shape_conditional_format() :: #{binary() => any()}.


%% Example:
%% update_account_custom_permission_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_account_custom_permission_response() :: #{binary() => any()}.


%% Example:
%% list_data_sources_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_data_sources_request() :: #{binary() => any()}.


%% Example:
%% sheet_image_tooltip_text() :: #{
%%   <<"PlainText">> => string()
%% }
-type sheet_image_tooltip_text() :: #{binary() => any()}.


%% Example:
%% delete_custom_permissions_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_custom_permissions_response() :: #{binary() => any()}.


%% Example:
%% tree_map_configuration() :: #{
%%   <<"ColorLabelOptions">> => chart_axis_label_options(),
%%   <<"ColorScale">> => color_scale(),
%%   <<"DataLabels">> => data_label_options(),
%%   <<"FieldWells">> => tree_map_field_wells(),
%%   <<"GroupLabelOptions">> => chart_axis_label_options(),
%%   <<"Interactions">> => visual_interaction_options(),
%%   <<"Legend">> => legend_options(),
%%   <<"SizeLabelOptions">> => chart_axis_label_options(),
%%   <<"SortConfiguration">> => tree_map_sort_configuration(),
%%   <<"Tooltip">> => tooltip_options()
%% }
-type tree_map_configuration() :: #{binary() => any()}.


%% Example:
%% delete_role_custom_permission_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_role_custom_permission_response() :: #{binary() => any()}.


%% Example:
%% active_iam_policy_assignment() :: #{
%%   <<"AssignmentName">> => string(),
%%   <<"PolicyArn">> => string()
%% }
-type active_iam_policy_assignment() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_analysis_override_tags() :: #{
%%   <<"AnalysisIds">> => list(string()),
%%   <<"Tags">> => list(tag())
%% }
-type asset_bundle_import_job_analysis_override_tags() :: #{binary() => any()}.


%% Example:
%% create_namespace_request() :: #{
%%   <<"IdentityStore">> := list(any()),
%%   <<"Namespace">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_namespace_request() :: #{binary() => any()}.


%% Example:
%% data_bars_options() :: #{
%%   <<"FieldId">> => string(),
%%   <<"NegativeColor">> => string(),
%%   <<"PositiveColor">> => string()
%% }
-type data_bars_options() :: #{binary() => any()}.


%% Example:
%% data_set_configuration() :: #{
%%   <<"ColumnGroupSchemaList">> => list(column_group_schema()),
%%   <<"DataSetSchema">> => data_set_schema(),
%%   <<"Placeholder">> => string()
%% }
-type data_set_configuration() :: #{binary() => any()}.


%% Example:
%% data_source_search_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Operator">> => list(any()),
%%   <<"Value">> => string()
%% }
-type data_source_search_filter() :: #{binary() => any()}.


%% Example:
%% heat_map_aggregated_field_wells() :: #{
%%   <<"Columns">> => list(dimension_field()),
%%   <<"Rows">> => list(dimension_field()),
%%   <<"Values">> => list(measure_field())
%% }
-type heat_map_aggregated_field_wells() :: #{binary() => any()}.


%% Example:
%% update_brand_published_version_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"VersionId">> => string()
%% }
-type update_brand_published_version_response() :: #{binary() => any()}.


%% Example:
%% default_paginated_layout_configuration() :: #{
%%   <<"SectionBased">> => default_section_based_layout_configuration()
%% }
-type default_paginated_layout_configuration() :: #{binary() => any()}.


%% Example:
%% list_iam_policy_assignments_for_user_response() :: #{
%%   <<"ActiveAssignments">> => list(active_iam_policy_assignment()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type list_iam_policy_assignments_for_user_response() :: #{binary() => any()}.


%% Example:
%% delete_data_source_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"DataSourceId">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_data_source_response() :: #{binary() => any()}.


%% Example:
%% axis_scale() :: #{
%%   <<"Linear">> => axis_linear_scale(),
%%   <<"Logarithmic">> => axis_logarithmic_scale()
%% }
-type axis_scale() :: #{binary() => any()}.


%% Example:
%% list_topic_reviewed_answers_response() :: #{
%%   <<"Answers">> => list(topic_reviewed_answer()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TopicArn">> => string(),
%%   <<"TopicId">> => string()
%% }
-type list_topic_reviewed_answers_response() :: #{binary() => any()}.


%% Example:
%% missing_data_configuration() :: #{
%%   <<"TreatmentOption">> => list(any())
%% }
-type missing_data_configuration() :: #{binary() => any()}.


%% Example:
%% describe_dashboard_snapshot_job_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AwsAccountId">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DashboardId">> => string(),
%%   <<"JobStatus">> => list(any()),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"RequestId">> => string(),
%%   <<"SnapshotConfiguration">> => snapshot_configuration(),
%%   <<"SnapshotJobId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"UserConfiguration">> => snapshot_user_configuration_redacted()
%% }
-type describe_dashboard_snapshot_job_response() :: #{binary() => any()}.


%% Example:
%% text_area_control_display_options() :: #{
%%   <<"InfoIconLabelOptions">> => sheet_control_info_icon_label_options(),
%%   <<"PlaceholderOptions">> => text_control_placeholder_options(),
%%   <<"TitleOptions">> => label_options()
%% }
-type text_area_control_display_options() :: #{binary() => any()}.


%% Example:
%% delete_template_request() :: #{
%%   <<"VersionNumber">> => float()
%% }
-type delete_template_request() :: #{binary() => any()}.


%% Example:
%% update_action_connector_response() :: #{
%%   <<"ActionConnectorId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"RequestId">> => [string()],
%%   <<"Status">> => integer(),
%%   <<"UpdateStatus">> => list(any())
%% }
-type update_action_connector_response() :: #{binary() => any()}.


%% Example:
%% authorization_code_grant_details() :: #{
%%   <<"AuthorizationEndpoint">> => string(),
%%   <<"ClientId">> => string(),
%%   <<"ClientSecret">> => string(),
%%   <<"TokenEndpoint">> => string()
%% }
-type authorization_code_grant_details() :: #{binary() => any()}.


%% Example:
%% nested_filter() :: #{
%%   <<"Column">> => column_identifier(),
%%   <<"FilterId">> => string(),
%%   <<"IncludeInnerSet">> => boolean(),
%%   <<"InnerFilter">> => inner_filter()
%% }
-type nested_filter() :: #{binary() => any()}.


%% Example:
%% delete_folder_membership_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_folder_membership_response() :: #{binary() => any()}.


%% Example:
%% filled_map_conditional_formatting_option() :: #{
%%   <<"Shape">> => filled_map_shape_conditional_formatting()
%% }
-type filled_map_conditional_formatting_option() :: #{binary() => any()}.

%% Example:
%% describe_data_set_request() :: #{}
-type describe_data_set_request() :: #{}.

%% Example:
%% delete_data_set_refresh_properties_request() :: #{}
-type delete_data_set_refresh_properties_request() :: #{}.


%% Example:
%% conditional_formatting_icon_display_configuration() :: #{
%%   <<"IconDisplayOption">> => list(any())
%% }
-type conditional_formatting_icon_display_configuration() :: #{binary() => any()}.


%% Example:
%% topic_i_r_filter_option() :: #{
%%   <<"AggMetrics">> => list(filter_agg_metrics()),
%%   <<"Aggregation">> => list(any()),
%%   <<"AggregationFunctionParameters">> => map(),
%%   <<"AggregationPartitionBy">> => list(aggregation_partition_by()),
%%   <<"Anchor">> => anchor(),
%%   <<"Constant">> => topic_constant_value(),
%%   <<"FilterClass">> => list(any()),
%%   <<"FilterType">> => list(any()),
%%   <<"Function">> => list(any()),
%%   <<"Inclusive">> => boolean(),
%%   <<"Inverse">> => boolean(),
%%   <<"LastNextOffset">> => topic_constant_value(),
%%   <<"NullFilter">> => list(any()),
%%   <<"OperandField">> => identifier(),
%%   <<"Range">> => topic_constant_value(),
%%   <<"SortDirection">> => list(any()),
%%   <<"TimeGranularity">> => list(any()),
%%   <<"TopBottomLimit">> => topic_constant_value()
%% }
-type topic_i_r_filter_option() :: #{binary() => any()}.


%% Example:
%% arc_configuration() :: #{
%%   <<"ArcAngle">> => float(),
%%   <<"ArcThickness">> => list(any())
%% }
-type arc_configuration() :: #{binary() => any()}.


%% Example:
%% box_plot_style_options() :: #{
%%   <<"FillStyle">> => list(any())
%% }
-type box_plot_style_options() :: #{binary() => any()}.


%% Example:
%% minimum_label_type() :: #{
%%   <<"Visibility">> => list(any())
%% }
-type minimum_label_type() :: #{binary() => any()}.


%% Example:
%% anonymous_user_dashboard_visual_embedding_configuration() :: #{
%%   <<"InitialDashboardVisualId">> => dashboard_visual_id()
%% }
-type anonymous_user_dashboard_visual_embedding_configuration() :: #{binary() => any()}.


%% Example:
%% describe_topic_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CustomInstructions">> => custom_instructions(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"Topic">> => topic_details(),
%%   <<"TopicId">> => string()
%% }
-type describe_topic_response() :: #{binary() => any()}.


%% Example:
%% body_section_repeat_page_break_configuration() :: #{
%%   <<"After">> => section_after_page_break()
%% }
-type body_section_repeat_page_break_configuration() :: #{binary() => any()}.


%% Example:
%% web_crawler_parameters() :: #{
%%   <<"LoginPageUrl">> => string(),
%%   <<"PasswordButtonXpath">> => string(),
%%   <<"PasswordFieldXpath">> => string(),
%%   <<"UsernameButtonXpath">> => string(),
%%   <<"UsernameFieldXpath">> => string(),
%%   <<"WebCrawlerAuthType">> => list(any()),
%%   <<"WebProxyHostName">> => string(),
%%   <<"WebProxyPortNumber">> => integer()
%% }
-type web_crawler_parameters() :: #{binary() => any()}.


%% Example:
%% registered_user_dashboard_embedding_configuration() :: #{
%%   <<"FeatureConfigurations">> => registered_user_dashboard_feature_configurations(),
%%   <<"InitialDashboardId">> => string()
%% }
-type registered_user_dashboard_embedding_configuration() :: #{binary() => any()}.


%% Example:
%% numeric_range_filter() :: #{
%%   <<"AggregationFunction">> => aggregation_function(),
%%   <<"Column">> => column_identifier(),
%%   <<"DefaultFilterControlConfiguration">> => default_filter_control_configuration(),
%%   <<"FilterId">> => string(),
%%   <<"IncludeMaximum">> => boolean(),
%%   <<"IncludeMinimum">> => boolean(),
%%   <<"NullOption">> => list(any()),
%%   <<"RangeMaximum">> => numeric_range_filter_value(),
%%   <<"RangeMinimum">> => numeric_range_filter_value(),
%%   <<"SelectAllOptions">> => list(any())
%% }
-type numeric_range_filter() :: #{binary() => any()}.


%% Example:
%% search_data_sets_response() :: #{
%%   <<"DataSetSummaries">> => list(data_set_summary()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type search_data_sets_response() :: #{binary() => any()}.


%% Example:
%% list_identity_propagation_configs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Services">> => list(authorized_targets_by_service()),
%%   <<"Status">> => integer()
%% }
-type list_identity_propagation_configs_response() :: #{binary() => any()}.


%% Example:
%% box_plot_field_wells() :: #{
%%   <<"BoxPlotAggregatedFieldWells">> => box_plot_aggregated_field_wells()
%% }
-type box_plot_field_wells() :: #{binary() => any()}.


%% Example:
%% asset_bundle_resource_link_sharing_configuration() :: #{
%%   <<"Permissions">> => asset_bundle_resource_permissions()
%% }
-type asset_bundle_resource_link_sharing_configuration() :: #{binary() => any()}.


%% Example:
%% category_inner_filter() :: #{
%%   <<"Column">> => column_identifier(),
%%   <<"Configuration">> => category_filter_configuration(),
%%   <<"DefaultFilterControlConfiguration">> => default_filter_control_configuration()
%% }
-type category_inner_filter() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% list_themes_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Type">> => list(any())
%% }
-type list_themes_request() :: #{binary() => any()}.


%% Example:
%% column_group_column_schema() :: #{
%%   <<"Name">> => string()
%% }
-type column_group_column_schema() :: #{binary() => any()}.


%% Example:
%% topic_reviewed_answer() :: #{
%%   <<"AnswerId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"DatasetArn">> => string(),
%%   <<"Mir">> => topic_i_r(),
%%   <<"PrimaryVisual">> => topic_visual(),
%%   <<"Question">> => string(),
%%   <<"Template">> => topic_template()
%% }
-type topic_reviewed_answer() :: #{binary() => any()}.


%% Example:
%% filter_relative_date_time_control() :: #{
%%   <<"CommitMode">> => list(any()),
%%   <<"DisplayOptions">> => relative_date_time_control_display_options(),
%%   <<"FilterControlId">> => string(),
%%   <<"SourceFilterId">> => string(),
%%   <<"Title">> => string()
%% }
-type filter_relative_date_time_control() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% cluster_marker_configuration() :: #{
%%   <<"ClusterMarker">> => cluster_marker()
%% }
-type cluster_marker_configuration() :: #{binary() => any()}.


%% Example:
%% basic_auth_connection_metadata() :: #{
%%   <<"BaseEndpoint">> => string(),
%%   <<"Password">> => string(),
%%   <<"Username">> => string()
%% }
-type basic_auth_connection_metadata() :: #{binary() => any()}.


%% Example:
%% string_dataset_parameter_default_values() :: #{
%%   <<"StaticValues">> => list(string())
%% }
-type string_dataset_parameter_default_values() :: #{binary() => any()}.


%% Example:
%% describe_dashboard_definition_request() :: #{
%%   <<"AliasName">> => string(),
%%   <<"VersionNumber">> => float()
%% }
-type describe_dashboard_definition_request() :: #{binary() => any()}.


%% Example:
%% geospatial_line_width() :: #{
%%   <<"LineWidth">> => float()
%% }
-type geospatial_line_width() :: #{binary() => any()}.


%% Example:
%% plugin_visual_configuration() :: #{
%%   <<"FieldWells">> => list(plugin_visual_field_well()),
%%   <<"SortConfiguration">> => plugin_visual_sort_configuration(),
%%   <<"VisualOptions">> => plugin_visual_options()
%% }
-type plugin_visual_configuration() :: #{binary() => any()}.


%% Example:
%% data_q_a_enabled_option() :: #{
%%   <<"AvailabilityStatus">> => list(any())
%% }
-type data_q_a_enabled_option() :: #{binary() => any()}.


%% Example:
%% list_analyses_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_analyses_request() :: #{binary() => any()}.


%% Example:
%% numeric_range_filter_value() :: #{
%%   <<"Parameter">> => string(),
%%   <<"StaticValue">> => float()
%% }
-type numeric_range_filter_value() :: #{binary() => any()}.

%% Example:
%% describe_analysis_request() :: #{}
-type describe_analysis_request() :: #{}.


%% Example:
%% section_style() :: #{
%%   <<"Height">> => string(),
%%   <<"Padding">> => spacing()
%% }
-type section_style() :: #{binary() => any()}.


%% Example:
%% colors_configuration() :: #{
%%   <<"CustomColors">> => list(custom_color())
%% }
-type colors_configuration() :: #{binary() => any()}.


%% Example:
%% section_after_page_break() :: #{
%%   <<"Status">> => list(any())
%% }
-type section_after_page_break() :: #{binary() => any()}.

%% Example:
%% delete_account_custom_permission_request() :: #{}
-type delete_account_custom_permission_request() :: #{}.


%% Example:
%% analysis_search_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Operator">> => list(any()),
%%   <<"Value">> => string()
%% }
-type analysis_search_filter() :: #{binary() => any()}.


%% Example:
%% pivot_table_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => pivot_table_configuration(),
%%   <<"ConditionalFormatting">> => pivot_table_conditional_formatting(),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type pivot_table_visual() :: #{binary() => any()}.


%% Example:
%% sheet_image_static_file_source() :: #{
%%   <<"StaticFileId">> => string()
%% }
-type sheet_image_static_file_source() :: #{binary() => any()}.


%% Example:
%% text_control_placeholder_options() :: #{
%%   <<"Visibility">> => list(any())
%% }
-type text_control_placeholder_options() :: #{binary() => any()}.


%% Example:
%% text_conditional_format() :: #{
%%   <<"BackgroundColor">> => conditional_formatting_color(),
%%   <<"Icon">> => conditional_formatting_icon(),
%%   <<"TextColor">> => conditional_formatting_color()
%% }
-type text_conditional_format() :: #{binary() => any()}.


%% Example:
%% unique_values_computation() :: #{
%%   <<"Category">> => dimension_field(),
%%   <<"ComputationId">> => string(),
%%   <<"Name">> => string()
%% }
-type unique_values_computation() :: #{binary() => any()}.


%% Example:
%% funnel_chart_data_label_options() :: #{
%%   <<"CategoryLabelVisibility">> => list(any()),
%%   <<"LabelColor">> => string(),
%%   <<"LabelFontConfiguration">> => font_configuration(),
%%   <<"MeasureDataLabelStyle">> => list(any()),
%%   <<"MeasureLabelVisibility">> => list(any()),
%%   <<"Position">> => list(any()),
%%   <<"Visibility">> => list(any())
%% }
-type funnel_chart_data_label_options() :: #{binary() => any()}.


%% Example:
%% axis_logarithmic_scale() :: #{
%%   <<"Base">> => float()
%% }
-type axis_logarithmic_scale() :: #{binary() => any()}.


%% Example:
%% describe_template_permissions_response() :: #{
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TemplateArn">> => string(),
%%   <<"TemplateId">> => string()
%% }
-type describe_template_permissions_response() :: #{binary() => any()}.


%% Example:
%% ingestion() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"ErrorInfo">> => error_info(),
%%   <<"IngestionId">> => string(),
%%   <<"IngestionSizeInBytes">> => float(),
%%   <<"IngestionStatus">> => list(any()),
%%   <<"IngestionTimeInSeconds">> => float(),
%%   <<"QueueInfo">> => queue_info(),
%%   <<"RequestSource">> => list(any()),
%%   <<"RequestType">> => list(any()),
%%   <<"RowInfo">> => row_info()
%% }
-type ingestion() :: #{binary() => any()}.


%% Example:
%% query_execution_options() :: #{
%%   <<"QueryExecutionMode">> => list(any())
%% }
-type query_execution_options() :: #{binary() => any()}.


%% Example:
%% subtotal_options() :: #{
%%   <<"CustomLabel">> => string(),
%%   <<"FieldLevel">> => list(any()),
%%   <<"FieldLevelOptions">> => list(pivot_table_field_subtotal_options()),
%%   <<"MetricHeaderCellStyle">> => table_cell_style(),
%%   <<"StyleTargets">> => list(table_style_target()),
%%   <<"TotalCellStyle">> => table_cell_style(),
%%   <<"TotalsVisibility">> => list(any()),
%%   <<"ValueCellStyle">> => table_cell_style()
%% }
-type subtotal_options() :: #{binary() => any()}.

%% Example:
%% describe_theme_permissions_request() :: #{}
-type describe_theme_permissions_request() :: #{}.


%% Example:
%% axis_display_options() :: #{
%%   <<"AxisLineVisibility">> => list(any()),
%%   <<"AxisOffset">> => string(),
%%   <<"DataOptions">> => axis_data_options(),
%%   <<"GridLineVisibility">> => list(any()),
%%   <<"ScrollbarOptions">> => scroll_bar_options(),
%%   <<"TickLabelOptions">> => axis_tick_label_options()
%% }
-type axis_display_options() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_analysis_override_parameters() :: #{
%%   <<"AnalysisId">> => string(),
%%   <<"Name">> => string()
%% }
-type asset_bundle_import_job_analysis_override_parameters() :: #{binary() => any()}.


%% Example:
%% pivot_table_field_collapse_state_target() :: #{
%%   <<"FieldDataPathValues">> => list(data_path_value()),
%%   <<"FieldId">> => string()
%% }
-type pivot_table_field_collapse_state_target() :: #{binary() => any()}.


%% Example:
%% api_key_connection_metadata() :: #{
%%   <<"ApiKey">> => string(),
%%   <<"BaseEndpoint">> => string(),
%%   <<"Email">> => string()
%% }
-type api_key_connection_metadata() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% create_data_set_request() :: #{
%%   <<"ColumnGroups">> => list(column_group()),
%%   <<"ColumnLevelPermissionRules">> => list(column_level_permission_rule()),
%%   <<"DataSetId">> := string(),
%%   <<"DataSetUsageConfiguration">> => data_set_usage_configuration(),
%%   <<"DatasetParameters">> => list(dataset_parameter()),
%%   <<"FieldFolders">> => map(),
%%   <<"FolderArns">> => list(string()),
%%   <<"ImportMode">> := list(any()),
%%   <<"LogicalTableMap">> => map(),
%%   <<"Name">> := string(),
%%   <<"PerformanceConfiguration">> => performance_configuration(),
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"PhysicalTableMap">> := map(),
%%   <<"RowLevelPermissionDataSet">> => row_level_permission_data_set(),
%%   <<"RowLevelPermissionTagConfiguration">> => row_level_permission_tag_configuration(),
%%   <<"Tags">> => list(tag()),
%%   <<"UseAs">> => list(any())
%% }
-type create_data_set_request() :: #{binary() => any()}.


%% Example:
%% registered_user_dashboard_feature_configurations() :: #{
%%   <<"AmazonQInQuickSight">> => amazon_q_in_quick_sight_dashboard_configurations(),
%%   <<"Bookmarks">> => bookmarks_configurations(),
%%   <<"RecentSnapshots">> => recent_snapshots_configurations(),
%%   <<"Schedules">> => schedules_configurations(),
%%   <<"SharedView">> => shared_view_configurations(),
%%   <<"StatePersistence">> => state_persistence_configurations(),
%%   <<"ThresholdAlerts">> => threshold_alerts_configurations()
%% }
-type registered_user_dashboard_feature_configurations() :: #{binary() => any()}.


%% Example:
%% filter_operation() :: #{
%%   <<"ConditionExpression">> => string()
%% }
-type filter_operation() :: #{binary() => any()}.


%% Example:
%% asset_bundle_export_job_data_set_override_properties() :: #{
%%   <<"Arn">> => string(),
%%   <<"Properties">> => list(list(any())())
%% }
-type asset_bundle_export_job_data_set_override_properties() :: #{binary() => any()}.


%% Example:
%% layer_map_visual() :: #{
%%   <<"ChartConfiguration">> => geospatial_layer_map_configuration(),
%%   <<"DataSetIdentifier">> => string(),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type layer_map_visual() :: #{binary() => any()}.


%% Example:
%% search_data_sets_request() :: #{
%%   <<"Filters">> := list(data_set_search_filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type search_data_sets_request() :: #{binary() => any()}.


%% Example:
%% visual_palette() :: #{
%%   <<"ChartColor">> => string(),
%%   <<"ColorMap">> => list(data_path_color())
%% }
-type visual_palette() :: #{binary() => any()}.


%% Example:
%% visible_range_options() :: #{
%%   <<"PercentRange">> => percent_visible_range()
%% }
-type visible_range_options() :: #{binary() => any()}.


%% Example:
%% asset_bundle_export_job_error() :: #{
%%   <<"Arn">> => string(),
%%   <<"Message">> => string(),
%%   <<"Type">> => string()
%% }
-type asset_bundle_export_job_error() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% scatter_plot_unaggregated_field_wells() :: #{
%%   <<"Category">> => list(dimension_field()),
%%   <<"Label">> => list(dimension_field()),
%%   <<"Size">> => list(measure_field()),
%%   <<"XAxis">> => list(dimension_field()),
%%   <<"YAxis">> => list(dimension_field())
%% }
-type scatter_plot_unaggregated_field_wells() :: #{binary() => any()}.


%% Example:
%% register_user_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"User">> => user(),
%%   <<"UserInvitationUrl">> => string()
%% }
-type register_user_response() :: #{binary() => any()}.


%% Example:
%% topic_category_filter() :: #{
%%   <<"CategoryFilterFunction">> => list(any()),
%%   <<"CategoryFilterType">> => list(any()),
%%   <<"Constant">> => topic_category_filter_constant(),
%%   <<"Inverse">> => boolean()
%% }
-type topic_category_filter() :: #{binary() => any()}.


%% Example:
%% describe_folder_permissions_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"FolderId">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_folder_permissions_response() :: #{binary() => any()}.


%% Example:
%% semantic_entity_type() :: #{
%%   <<"SubTypeName">> => string(),
%%   <<"TypeName">> => string(),
%%   <<"TypeParameters">> => map()
%% }
-type semantic_entity_type() :: #{binary() => any()}.


%% Example:
%% static_file() :: #{
%%   <<"ImageStaticFile">> => image_static_file(),
%%   <<"SpatialStaticFile">> => spatial_static_file()
%% }
-type static_file() :: #{binary() => any()}.


%% Example:
%% filled_map_sort_configuration() :: #{
%%   <<"CategorySort">> => list(field_sort_options())
%% }
-type filled_map_sort_configuration() :: #{binary() => any()}.


%% Example:
%% snowflake_parameters() :: #{
%%   <<"AuthenticationType">> => list(any()),
%%   <<"Database">> => string(),
%%   <<"DatabaseAccessControlRole">> => string(),
%%   <<"Host">> => string(),
%%   <<"OAuthParameters">> => o_auth_parameters(),
%%   <<"Warehouse">> => string()
%% }
-type snowflake_parameters() :: #{binary() => any()}.


%% Example:
%% template_source_analysis() :: #{
%%   <<"Arn">> => string(),
%%   <<"DataSetReferences">> => list(data_set_reference())
%% }
-type template_source_analysis() :: #{binary() => any()}.


%% Example:
%% field_tooltip_item() :: #{
%%   <<"FieldId">> => string(),
%%   <<"Label">> => string(),
%%   <<"TooltipTarget">> => list(any()),
%%   <<"Visibility">> => list(any())
%% }
-type field_tooltip_item() :: #{binary() => any()}.


%% Example:
%% scatter_plot_sort_configuration() :: #{
%%   <<"ScatterPlotLimitConfiguration">> => items_limit_configuration()
%% }
-type scatter_plot_sort_configuration() :: #{binary() => any()}.


%% Example:
%% geospatial_window_options() :: #{
%%   <<"Bounds">> => geospatial_coordinate_bounds(),
%%   <<"MapZoomMode">> => list(any())
%% }
-type geospatial_window_options() :: #{binary() => any()}.


%% Example:
%% geospatial_layer_color_field() :: #{
%%   <<"ColorDimensionsFields">> => list(dimension_field()),
%%   <<"ColorValuesFields">> => list(measure_field())
%% }
-type geospatial_layer_color_field() :: #{binary() => any()}.

%% Example:
%% describe_template_alias_request() :: #{}
-type describe_template_alias_request() :: #{}.


%% Example:
%% layer_custom_action() :: #{
%%   <<"ActionOperations">> => list(layer_custom_action_operation()),
%%   <<"CustomActionId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Trigger">> => list(any())
%% }
-type layer_custom_action() :: #{binary() => any()}.


%% Example:
%% describe_account_subscription_response() :: #{
%%   <<"AccountInfo">> => account_info(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_account_subscription_response() :: #{binary() => any()}.


%% Example:
%% list_asset_bundle_export_jobs_response() :: #{
%%   <<"AssetBundleExportJobSummaryList">> => list(asset_bundle_export_job_summary()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type list_asset_bundle_export_jobs_response() :: #{binary() => any()}.


%% Example:
%% k_p_i_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => k_p_i_configuration(),
%%   <<"ColumnHierarchies">> => list(column_hierarchy()),
%%   <<"ConditionalFormatting">> => k_p_i_conditional_formatting(),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type k_p_i_visual() :: #{binary() => any()}.


%% Example:
%% dashboard() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DashboardId">> => string(),
%%   <<"LastPublishedTime">> => non_neg_integer(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"LinkEntities">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"Version">> => dashboard_version()
%% }
-type dashboard() :: #{binary() => any()}.


%% Example:
%% describe_topic_refresh_response() :: #{
%%   <<"RefreshDetails">> => topic_refresh_details(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_topic_refresh_response() :: #{binary() => any()}.


%% Example:
%% conditional_formatting_custom_icon_options() :: #{
%%   <<"Icon">> => list(any()),
%%   <<"UnicodeIcon">> => string()
%% }
-type conditional_formatting_custom_icon_options() :: #{binary() => any()}.


%% Example:
%% panel_configuration() :: #{
%%   <<"BackgroundColor">> => string(),
%%   <<"BackgroundVisibility">> => list(any()),
%%   <<"BorderColor">> => string(),
%%   <<"BorderStyle">> => list(any()),
%%   <<"BorderThickness">> => string(),
%%   <<"BorderVisibility">> => list(any()),
%%   <<"GutterSpacing">> => string(),
%%   <<"GutterVisibility">> => list(any()),
%%   <<"Title">> => panel_title_options()
%% }
-type panel_configuration() :: #{binary() => any()}.


%% Example:
%% contribution_analysis_factor() :: #{
%%   <<"FieldName">> => string()
%% }
-type contribution_analysis_factor() :: #{binary() => any()}.


%% Example:
%% invalid_topic_reviewed_answer() :: #{
%%   <<"AnswerId">> => string(),
%%   <<"Error">> => list(any())
%% }
-type invalid_topic_reviewed_answer() :: #{binary() => any()}.

%% Example:
%% start_dashboard_snapshot_job_schedule_request() :: #{}
-type start_dashboard_snapshot_job_schedule_request() :: #{}.


%% Example:
%% asset_bundle_import_job_data_source_override_tags() :: #{
%%   <<"DataSourceIds">> => list(string()),
%%   <<"Tags">> => list(tag())
%% }
-type asset_bundle_import_job_data_source_override_tags() :: #{binary() => any()}.


%% Example:
%% domain_not_whitelisted_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type domain_not_whitelisted_exception() :: #{binary() => any()}.


%% Example:
%% semantic_type() :: #{
%%   <<"FalseyCellValue">> => string(),
%%   <<"FalseyCellValueSynonyms">> => list(string()),
%%   <<"SubTypeName">> => string(),
%%   <<"TruthyCellValue">> => string(),
%%   <<"TruthyCellValueSynonyms">> => list(string()),
%%   <<"TypeName">> => string(),
%%   <<"TypeParameters">> => map()
%% }
-type semantic_type() :: #{binary() => any()}.


%% Example:
%% table_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => table_configuration(),
%%   <<"ConditionalFormatting">> => table_conditional_formatting(),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type table_visual() :: #{binary() => any()}.


%% Example:
%% visual_menu_option() :: #{
%%   <<"AvailabilityStatus">> => list(any())
%% }
-type visual_menu_option() :: #{binary() => any()}.


%% Example:
%% custom_connection_parameters() :: #{
%%   <<"ConnectionType">> => string()
%% }
-type custom_connection_parameters() :: #{binary() => any()}.


%% Example:
%% dashboard_visual_publish_options() :: #{
%%   <<"ExportHiddenFieldsOption">> => export_hidden_fields_option()
%% }
-type dashboard_visual_publish_options() :: #{binary() => any()}.


%% Example:
%% topic_template() :: #{
%%   <<"Slots">> => list(slot()),
%%   <<"TemplateType">> => string()
%% }
-type topic_template() :: #{binary() => any()}.


%% Example:
%% computation() :: #{
%%   <<"Forecast">> => forecast_computation(),
%%   <<"GrowthRate">> => growth_rate_computation(),
%%   <<"MaximumMinimum">> => maximum_minimum_computation(),
%%   <<"MetricComparison">> => metric_comparison_computation(),
%%   <<"PeriodOverPeriod">> => period_over_period_computation(),
%%   <<"PeriodToDate">> => period_to_date_computation(),
%%   <<"TopBottomMovers">> => top_bottom_movers_computation(),
%%   <<"TopBottomRanked">> => top_bottom_ranked_computation(),
%%   <<"TotalAggregation">> => total_aggregation_computation(),
%%   <<"UniqueValues">> => unique_values_computation()
%% }
-type computation() :: #{binary() => any()}.


%% Example:
%% export_to_csv_option() :: #{
%%   <<"AvailabilityStatus">> => list(any())
%% }
-type export_to_csv_option() :: #{binary() => any()}.


%% Example:
%% default_formatting() :: #{
%%   <<"DisplayFormat">> => list(any()),
%%   <<"DisplayFormatOptions">> => display_format_options()
%% }
-type default_formatting() :: #{binary() => any()}.


%% Example:
%% analysis_source_entity() :: #{
%%   <<"SourceTemplate">> => analysis_source_template()
%% }
-type analysis_source_entity() :: #{binary() => any()}.


%% Example:
%% conditional_formatting_custom_icon_condition() :: #{
%%   <<"Color">> => string(),
%%   <<"DisplayConfiguration">> => conditional_formatting_icon_display_configuration(),
%%   <<"Expression">> => string(),
%%   <<"IconOptions">> => conditional_formatting_custom_icon_options()
%% }
-type conditional_formatting_custom_icon_condition() :: #{binary() => any()}.


%% Example:
%% snapshot_anonymous_user_redacted() :: #{
%%   <<"RowLevelPermissionTagKeys">> => list(string())
%% }
-type snapshot_anonymous_user_redacted() :: #{binary() => any()}.


%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.


%% Example:
%% metric_comparison_computation() :: #{
%%   <<"ComputationId">> => string(),
%%   <<"FromValue">> => measure_field(),
%%   <<"Name">> => string(),
%%   <<"TargetValue">> => measure_field(),
%%   <<"Time">> => dimension_field()
%% }
-type metric_comparison_computation() :: #{binary() => any()}.


%% Example:
%% describe_analysis_response() :: #{
%%   <<"Analysis">> => analysis(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_analysis_response() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_value_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type invalid_parameter_value_exception() :: #{binary() => any()}.


%% Example:
%% namespace_error() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => list(any())
%% }
-type namespace_error() :: #{binary() => any()}.


%% Example:
%% template_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"LatestVersionNumber">> => float(),
%%   <<"Name">> => string(),
%%   <<"TemplateId">> => string()
%% }
-type template_summary() :: #{binary() => any()}.


%% Example:
%% authorization_code_grant_metadata() :: #{
%%   <<"AuthorizationCodeGrantCredentialsDetails">> => list(),
%%   <<"AuthorizationCodeGrantCredentialsSource">> => list(any()),
%%   <<"BaseEndpoint">> => string(),
%%   <<"RedirectUrl">> => string()
%% }
-type authorization_code_grant_metadata() :: #{binary() => any()}.


%% Example:
%% data_path_label_type() :: #{
%%   <<"FieldId">> => string(),
%%   <<"FieldValue">> => string(),
%%   <<"Visibility">> => list(any())
%% }
-type data_path_label_type() :: #{binary() => any()}.


%% Example:
%% list_template_versions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_template_versions_request() :: #{binary() => any()}.


%% Example:
%% asset_bundle_export_job_theme_override_properties() :: #{
%%   <<"Arn">> => string(),
%%   <<"Properties">> => list(list(any())())
%% }
-type asset_bundle_export_job_theme_override_properties() :: #{binary() => any()}.


%% Example:
%% filter_agg_metrics() :: #{
%%   <<"Function">> => list(any()),
%%   <<"MetricOperand">> => identifier(),
%%   <<"SortDirection">> => list(any())
%% }
-type filter_agg_metrics() :: #{binary() => any()}.


%% Example:
%% slider_control_display_options() :: #{
%%   <<"InfoIconLabelOptions">> => sheet_control_info_icon_label_options(),
%%   <<"TitleOptions">> => label_options()
%% }
-type slider_control_display_options() :: #{binary() => any()}.


%% Example:
%% update_analysis_request() :: #{
%%   <<"Definition">> => analysis_definition(),
%%   <<"Name">> := string(),
%%   <<"Parameters">> => parameters(),
%%   <<"SourceEntity">> => analysis_source_entity(),
%%   <<"ThemeArn">> => string(),
%%   <<"ValidationStrategy">> => validation_strategy()
%% }
-type update_analysis_request() :: #{binary() => any()}.


%% Example:
%% total_aggregation_computation() :: #{
%%   <<"ComputationId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Value">> => measure_field()
%% }
-type total_aggregation_computation() :: #{binary() => any()}.


%% Example:
%% update_refresh_schedule_request() :: #{
%%   <<"Schedule">> := refresh_schedule()
%% }
-type update_refresh_schedule_request() :: #{binary() => any()}.


%% Example:
%% list_users_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"UserList">> => list(user())
%% }
-type list_users_response() :: #{binary() => any()}.


%% Example:
%% list_role_memberships_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_role_memberships_request() :: #{binary() => any()}.


%% Example:
%% geospatial_circle_symbol_style() :: #{
%%   <<"CircleRadius">> => geospatial_circle_radius(),
%%   <<"FillColor">> => geospatial_color(),
%%   <<"StrokeColor">> => geospatial_color(),
%%   <<"StrokeWidth">> => geospatial_line_width()
%% }
-type geospatial_circle_symbol_style() :: #{binary() => any()}.


%% Example:
%% project_operation() :: #{
%%   <<"ProjectedColumns">> => list(string())
%% }
-type project_operation() :: #{binary() => any()}.


%% Example:
%% update_theme_request() :: #{
%%   <<"BaseThemeId">> := string(),
%%   <<"Configuration">> => theme_configuration(),
%%   <<"Name">> => string(),
%%   <<"VersionDescription">> => string()
%% }
-type update_theme_request() :: #{binary() => any()}.


%% Example:
%% update_theme_alias_request() :: #{
%%   <<"ThemeVersionNumber">> := float()
%% }
-type update_theme_alias_request() :: #{binary() => any()}.


%% Example:
%% create_theme_request() :: #{
%%   <<"BaseThemeId">> := string(),
%%   <<"Configuration">> := theme_configuration(),
%%   <<"Name">> := string(),
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"Tags">> => list(tag()),
%%   <<"VersionDescription">> => string()
%% }
-type create_theme_request() :: #{binary() => any()}.


%% Example:
%% q_business_parameters() :: #{
%%   <<"ApplicationArn">> => string()
%% }
-type q_business_parameters() :: #{binary() => any()}.


%% Example:
%% executive_summary_configurations() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type executive_summary_configurations() :: #{binary() => any()}.


%% Example:
%% s3_knowledge_base_parameters() :: #{
%%   <<"BucketUrl">> => string(),
%%   <<"MetadataFilesLocation">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type s3_knowledge_base_parameters() :: #{binary() => any()}.


%% Example:
%% plugin_visual_options() :: #{
%%   <<"VisualProperties">> => list(plugin_visual_property())
%% }
-type plugin_visual_options() :: #{binary() => any()}.


%% Example:
%% axis_data_options() :: #{
%%   <<"DateAxisOptions">> => date_axis_options(),
%%   <<"NumericAxisOptions">> => numeric_axis_options()
%% }
-type axis_data_options() :: #{binary() => any()}.


%% Example:
%% body_section_repeat_configuration() :: #{
%%   <<"DimensionConfigurations">> => list(body_section_repeat_dimension_configuration()),
%%   <<"NonRepeatingVisuals">> => list(string()),
%%   <<"PageBreakConfiguration">> => body_section_repeat_page_break_configuration()
%% }
-type body_section_repeat_configuration() :: #{binary() => any()}.


%% Example:
%% search_groups_request() :: #{
%%   <<"Filters">> := list(group_search_filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type search_groups_request() :: #{binary() => any()}.


%% Example:
%% search_action_connectors_response() :: #{
%%   <<"ActionConnectorSummaries">> => list(action_connector_summary()),
%%   <<"NextToken">> => [string()],
%%   <<"RequestId">> => [string()],
%%   <<"Status">> => integer()
%% }
-type search_action_connectors_response() :: #{binary() => any()}.


%% Example:
%% radar_chart_configuration() :: #{
%%   <<"AlternateBandColorsVisibility">> => list(any()),
%%   <<"AlternateBandEvenColor">> => string(),
%%   <<"AlternateBandOddColor">> => string(),
%%   <<"AxesRangeScale">> => list(any()),
%%   <<"BaseSeriesSettings">> => radar_chart_series_settings(),
%%   <<"CategoryAxis">> => axis_display_options(),
%%   <<"CategoryLabelOptions">> => chart_axis_label_options(),
%%   <<"ColorAxis">> => axis_display_options(),
%%   <<"ColorLabelOptions">> => chart_axis_label_options(),
%%   <<"FieldWells">> => radar_chart_field_wells(),
%%   <<"Interactions">> => visual_interaction_options(),
%%   <<"Legend">> => legend_options(),
%%   <<"Shape">> => list(any()),
%%   <<"SortConfiguration">> => radar_chart_sort_configuration(),
%%   <<"StartAngle">> => float(),
%%   <<"VisualPalette">> => visual_palette()
%% }
-type radar_chart_configuration() :: #{binary() => any()}.


%% Example:
%% describe_dashboard_response() :: #{
%%   <<"Dashboard">> => dashboard(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_dashboard_response() :: #{binary() => any()}.


%% Example:
%% amazon_elasticsearch_parameters() :: #{
%%   <<"Domain">> => string()
%% }
-type amazon_elasticsearch_parameters() :: #{binary() => any()}.


%% Example:
%% pivot_table_conditional_formatting_option() :: #{
%%   <<"Cell">> => pivot_table_cell_conditional_formatting()
%% }
-type pivot_table_conditional_formatting_option() :: #{binary() => any()}.


%% Example:
%% sankey_diagram_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => sankey_diagram_chart_configuration(),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type sankey_diagram_visual() :: #{binary() => any()}.


%% Example:
%% describe_dashboard_permissions_response() :: #{
%%   <<"DashboardArn">> => string(),
%%   <<"DashboardId">> => string(),
%%   <<"LinkSharingConfiguration">> => link_sharing_configuration(),
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_dashboard_permissions_response() :: #{binary() => any()}.


%% Example:
%% create_data_set_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"DataSetId">> => string(),
%%   <<"IngestionArn">> => string(),
%%   <<"IngestionId">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type create_data_set_response() :: #{binary() => any()}.


%% Example:
%% list_topics_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_topics_request() :: #{binary() => any()}.


%% Example:
%% k_p_i_visual_layout_options() :: #{
%%   <<"StandardLayout">> => k_p_i_visual_standard_layout()
%% }
-type k_p_i_visual_layout_options() :: #{binary() => any()}.


%% Example:
%% logo_configuration() :: #{
%%   <<"AltText">> => string(),
%%   <<"LogoSet">> => logo_set_configuration()
%% }
-type logo_configuration() :: #{binary() => any()}.

%% Example:
%% delete_topic_refresh_schedule_request() :: #{}
-type delete_topic_refresh_schedule_request() :: #{}.


%% Example:
%% theme_version() :: #{
%%   <<"Arn">> => string(),
%%   <<"BaseThemeId">> => string(),
%%   <<"Configuration">> => theme_configuration(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Errors">> => list(theme_error()),
%%   <<"Status">> => list(any()),
%%   <<"VersionNumber">> => float()
%% }
-type theme_version() :: #{binary() => any()}.


%% Example:
%% postgre_sql_parameters() :: #{
%%   <<"Database">> => string(),
%%   <<"Host">> => string(),
%%   <<"Port">> => integer()
%% }
-type postgre_sql_parameters() :: #{binary() => any()}.


%% Example:
%% parameter_date_time_picker_control() :: #{
%%   <<"DisplayOptions">> => date_time_picker_control_display_options(),
%%   <<"ParameterControlId">> => string(),
%%   <<"SourceParameterName">> => string(),
%%   <<"Title">> => string()
%% }
-type parameter_date_time_picker_control() :: #{binary() => any()}.


%% Example:
%% refresh_configuration() :: #{
%%   <<"IncrementalRefresh">> => incremental_refresh()
%% }
-type refresh_configuration() :: #{binary() => any()}.


%% Example:
%% k_p_i_actual_value_conditional_formatting() :: #{
%%   <<"Icon">> => conditional_formatting_icon(),
%%   <<"TextColor">> => conditional_formatting_color()
%% }
-type k_p_i_actual_value_conditional_formatting() :: #{binary() => any()}.


%% Example:
%% combo_chart_aggregated_field_wells() :: #{
%%   <<"BarValues">> => list(measure_field()),
%%   <<"Category">> => list(dimension_field()),
%%   <<"Colors">> => list(dimension_field()),
%%   <<"LineValues">> => list(measure_field())
%% }
-type combo_chart_aggregated_field_wells() :: #{binary() => any()}.


%% Example:
%% list_template_versions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TemplateVersionSummaryList">> => list(template_version_summary())
%% }
-type list_template_versions_response() :: #{binary() => any()}.


%% Example:
%% secondary_value_options() :: #{
%%   <<"Visibility">> => list(any())
%% }
-type secondary_value_options() :: #{binary() => any()}.


%% Example:
%% image_custom_action() :: #{
%%   <<"ActionOperations">> => list(image_custom_action_operation()),
%%   <<"CustomActionId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Trigger">> => list(any())
%% }
-type image_custom_action() :: #{binary() => any()}.


%% Example:
%% delete_user_custom_permission_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_user_custom_permission_response() :: #{binary() => any()}.


%% Example:
%% update_dashboards_q_a_configuration_response() :: #{
%%   <<"DashboardsQAStatus">> => list(any()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_dashboards_q_a_configuration_response() :: #{binary() => any()}.

%% Example:
%% delete_refresh_schedule_request() :: #{}
-type delete_refresh_schedule_request() :: #{}.


%% Example:
%% update_default_q_business_application_request() :: #{
%%   <<"ApplicationId">> := string(),
%%   <<"Namespace">> => string()
%% }
-type update_default_q_business_application_request() :: #{binary() => any()}.

%% Example:
%% list_refresh_schedules_request() :: #{}
-type list_refresh_schedules_request() :: #{}.


%% Example:
%% list_data_sources_response() :: #{
%%   <<"DataSources">> => list(data_source()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type list_data_sources_response() :: #{binary() => any()}.

%% Example:
%% delete_data_source_request() :: #{}
-type delete_data_source_request() :: #{}.


%% Example:
%% member_id_arn_pair() :: #{
%%   <<"MemberArn">> => string(),
%%   <<"MemberId">> => string()
%% }
-type member_id_arn_pair() :: #{binary() => any()}.


%% Example:
%% list_theme_aliases_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"ThemeAliasList">> => list(theme_alias())
%% }
-type list_theme_aliases_response() :: #{binary() => any()}.


%% Example:
%% create_refresh_schedule_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"ScheduleId">> => string(),
%%   <<"Status">> => integer()
%% }
-type create_refresh_schedule_response() :: #{binary() => any()}.


%% Example:
%% describe_brand_assignment_response() :: #{
%%   <<"BrandArn">> => string(),
%%   <<"RequestId">> => string()
%% }
-type describe_brand_assignment_response() :: #{binary() => any()}.


%% Example:
%% parameter_slider_control() :: #{
%%   <<"DisplayOptions">> => slider_control_display_options(),
%%   <<"MaximumValue">> => float(),
%%   <<"MinimumValue">> => float(),
%%   <<"ParameterControlId">> => string(),
%%   <<"SourceParameterName">> => string(),
%%   <<"StepSize">> => float(),
%%   <<"Title">> => string()
%% }
-type parameter_slider_control() :: #{binary() => any()}.


%% Example:
%% string_value_when_unset_configuration() :: #{
%%   <<"CustomValue">> => string(),
%%   <<"ValueWhenUnsetOption">> => list(any())
%% }
-type string_value_when_unset_configuration() :: #{binary() => any()}.


%% Example:
%% custom_filter_configuration() :: #{
%%   <<"CategoryValue">> => string(),
%%   <<"MatchOperator">> => list(any()),
%%   <<"NullOption">> => list(any()),
%%   <<"ParameterName">> => string(),
%%   <<"SelectAllOptions">> => list(any())
%% }
-type custom_filter_configuration() :: #{binary() => any()}.


%% Example:
%% describe_dashboards_q_a_configuration_response() :: #{
%%   <<"DashboardsQAStatus">> => list(any()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_dashboards_q_a_configuration_response() :: #{binary() => any()}.


%% Example:
%% create_brand_request() :: #{
%%   <<"BrandDefinition">> => brand_definition(),
%%   <<"Tags">> => list(tag())
%% }
-type create_brand_request() :: #{binary() => any()}.

%% Example:
%% describe_template_permissions_request() :: #{}
-type describe_template_permissions_request() :: #{}.


%% Example:
%% quick_suite_actions_option() :: #{
%%   <<"AvailabilityStatus">> => list(any())
%% }
-type quick_suite_actions_option() :: #{binary() => any()}.


%% Example:
%% describe_key_registration_request() :: #{
%%   <<"DefaultKeyOnly">> => boolean()
%% }
-type describe_key_registration_request() :: #{binary() => any()}.


%% Example:
%% data_set_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"ColumnLevelPermissionRulesApplied">> => boolean(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DataSetId">> => string(),
%%   <<"ImportMode">> => list(any()),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"RowLevelPermissionDataSet">> => row_level_permission_data_set(),
%%   <<"RowLevelPermissionTagConfigurationApplied">> => boolean(),
%%   <<"UseAs">> => list(any())
%% }
-type data_set_summary() :: #{binary() => any()}.


%% Example:
%% geospatial_data_source_item() :: #{
%%   <<"StaticFileDataSource">> => geospatial_static_file_source()
%% }
-type geospatial_data_source_item() :: #{binary() => any()}.


%% Example:
%% tree_map_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => tree_map_configuration(),
%%   <<"ColumnHierarchies">> => list(column_hierarchy()),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type tree_map_visual() :: #{binary() => any()}.


%% Example:
%% empty_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"DataSetIdentifier">> => string(),
%%   <<"VisualId">> => string()
%% }
-type empty_visual() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_data_set_override_tags() :: #{
%%   <<"DataSetIds">> => list(string()),
%%   <<"Tags">> => list(tag())
%% }
-type asset_bundle_import_job_data_set_override_tags() :: #{binary() => any()}.


%% Example:
%% geospatial_polygon_layer() :: #{
%%   <<"Style">> => geospatial_polygon_style()
%% }
-type geospatial_polygon_layer() :: #{binary() => any()}.


%% Example:
%% pivot_table_field_option() :: #{
%%   <<"CustomLabel">> => string(),
%%   <<"FieldId">> => string(),
%%   <<"Visibility">> => list(any())
%% }
-type pivot_table_field_option() :: #{binary() => any()}.


%% Example:
%% start_asset_bundle_export_job_request() :: #{
%%   <<"AssetBundleExportJobId">> := string(),
%%   <<"CloudFormationOverridePropertyConfiguration">> => asset_bundle_cloud_formation_override_property_configuration(),
%%   <<"ExportFormat">> := list(any()),
%%   <<"IncludeAllDependencies">> => boolean(),
%%   <<"IncludeFolderMembers">> => list(any()),
%%   <<"IncludeFolderMemberships">> => boolean(),
%%   <<"IncludePermissions">> => boolean(),
%%   <<"IncludeTags">> => boolean(),
%%   <<"ResourceArns">> := list(string()),
%%   <<"ValidationStrategy">> => asset_bundle_export_job_validation_strategy()
%% }
-type start_asset_bundle_export_job_request() :: #{binary() => any()}.


%% Example:
%% conditional_formatting_icon_set() :: #{
%%   <<"Expression">> => string(),
%%   <<"IconSetType">> => list(any())
%% }
-type conditional_formatting_icon_set() :: #{binary() => any()}.


%% Example:
%% pivot_table_field_options() :: #{
%%   <<"CollapseStateOptions">> => list(pivot_table_field_collapse_state_option()),
%%   <<"DataPathOptions">> => list(pivot_table_data_path_option()),
%%   <<"SelectedFieldOptions">> => list(pivot_table_field_option())
%% }
-type pivot_table_field_options() :: #{binary() => any()}.


%% Example:
%% parameter_drop_down_control() :: #{
%%   <<"CascadingControlConfiguration">> => cascading_control_configuration(),
%%   <<"CommitMode">> => list(any()),
%%   <<"DisplayOptions">> => drop_down_control_display_options(),
%%   <<"ParameterControlId">> => string(),
%%   <<"SelectableValues">> => parameter_selectable_values(),
%%   <<"SourceParameterName">> => string(),
%%   <<"Title">> => string(),
%%   <<"Type">> => list(any())
%% }
-type parameter_drop_down_control() :: #{binary() => any()}.


%% Example:
%% refresh_frequency() :: #{
%%   <<"Interval">> => list(any()),
%%   <<"RefreshOnDay">> => schedule_refresh_on_entity(),
%%   <<"TimeOfTheDay">> => string(),
%%   <<"Timezone">> => string()
%% }
-type refresh_frequency() :: #{binary() => any()}.


%% Example:
%% tree_map_sort_configuration() :: #{
%%   <<"TreeMapGroupItemsLimitConfiguration">> => items_limit_configuration(),
%%   <<"TreeMapSort">> => list(field_sort_options())
%% }
-type tree_map_sort_configuration() :: #{binary() => any()}.


%% Example:
%% grid_layout_canvas_size_options() :: #{
%%   <<"ScreenCanvasSizeOptions">> => grid_layout_screen_canvas_size_options()
%% }
-type grid_layout_canvas_size_options() :: #{binary() => any()}.

%% Example:
%% delete_folder_request() :: #{}
-type delete_folder_request() :: #{}.


%% Example:
%% static_file_s3_source_options() :: #{
%%   <<"BucketName">> => string(),
%%   <<"ObjectKey">> => string(),
%%   <<"Region">> => string()
%% }
-type static_file_s3_source_options() :: #{binary() => any()}.


%% Example:
%% image_custom_action_operation() :: #{
%%   <<"NavigationOperation">> => custom_action_navigation_operation(),
%%   <<"SetParametersOperation">> => custom_action_set_parameters_operation(),
%%   <<"URLOperation">> => custom_action_url_operation()
%% }
-type image_custom_action_operation() :: #{binary() => any()}.


%% Example:
%% sheet_image_scaling_configuration() :: #{
%%   <<"ScalingType">> => list(any())
%% }
-type sheet_image_scaling_configuration() :: #{binary() => any()}.


%% Example:
%% template_source_template() :: #{
%%   <<"Arn">> => string()
%% }
-type template_source_template() :: #{binary() => any()}.


%% Example:
%% threshold_alerts_configurations() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type threshold_alerts_configurations() :: #{binary() => any()}.


%% Example:
%% row_level_permission_data_set() :: #{
%%   <<"Arn">> => string(),
%%   <<"FormatVersion">> => list(any()),
%%   <<"Namespace">> => string(),
%%   <<"PermissionPolicy">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type row_level_permission_data_set() :: #{binary() => any()}.


%% Example:
%% update_dashboard_permissions_request() :: #{
%%   <<"GrantLinkPermissions">> => list(resource_permission()),
%%   <<"GrantPermissions">> => list(resource_permission()),
%%   <<"RevokeLinkPermissions">> => list(resource_permission()),
%%   <<"RevokePermissions">> => list(resource_permission())
%% }
-type update_dashboard_permissions_request() :: #{binary() => any()}.


%% Example:
%% row_info() :: #{
%%   <<"RowsDropped">> => float(),
%%   <<"RowsIngested">> => float(),
%%   <<"TotalRowsInDataset">> => float()
%% }
-type row_info() :: #{binary() => any()}.


%% Example:
%% list_group_memberships_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_group_memberships_request() :: #{binary() => any()}.


%% Example:
%% row_level_permission_tag_rule() :: #{
%%   <<"ColumnName">> => string(),
%%   <<"MatchAllValue">> => string(),
%%   <<"TagKey">> => string(),
%%   <<"TagMultiValueDelimiter">> => string()
%% }
-type row_level_permission_tag_rule() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% filter_control() :: #{
%%   <<"CrossSheet">> => filter_cross_sheet_control(),
%%   <<"DateTimePicker">> => filter_date_time_picker_control(),
%%   <<"Dropdown">> => filter_drop_down_control(),
%%   <<"List">> => filter_list_control(),
%%   <<"RelativeDateTime">> => filter_relative_date_time_control(),
%%   <<"Slider">> => filter_slider_control(),
%%   <<"TextArea">> => filter_text_area_control(),
%%   <<"TextField">> => filter_text_field_control()
%% }
-type filter_control() :: #{binary() => any()}.


%% Example:
%% my_sql_parameters() :: #{
%%   <<"Database">> => string(),
%%   <<"Host">> => string(),
%%   <<"Port">> => integer()
%% }
-type my_sql_parameters() :: #{binary() => any()}.


%% Example:
%% k_p_iprogress_bar_conditional_formatting() :: #{
%%   <<"ForegroundColor">> => conditional_formatting_color()
%% }
-type k_p_iprogress_bar_conditional_formatting() :: #{binary() => any()}.


%% Example:
%% column_tag() :: #{
%%   <<"ColumnDescription">> => column_description(),
%%   <<"ColumnGeographicRole">> => list(any())
%% }
-type column_tag() :: #{binary() => any()}.


%% Example:
%% free_form_layout_configuration() :: #{
%%   <<"CanvasSizeOptions">> => free_form_layout_canvas_size_options(),
%%   <<"Elements">> => list(free_form_layout_element())
%% }
-type free_form_layout_configuration() :: #{binary() => any()}.


%% Example:
%% funnel_chart_aggregated_field_wells() :: #{
%%   <<"Category">> => list(dimension_field()),
%%   <<"Values">> => list(measure_field())
%% }
-type funnel_chart_aggregated_field_wells() :: #{binary() => any()}.


%% Example:
%% date_time_parameter_declaration() :: #{
%%   <<"DefaultValues">> => date_time_default_values(),
%%   <<"MappedDataSetParameters">> => list(mapped_data_set_parameter()),
%%   <<"Name">> => string(),
%%   <<"TimeGranularity">> => list(any()),
%%   <<"ValueWhenUnset">> => date_time_value_when_unset_configuration()
%% }
-type date_time_parameter_declaration() :: #{binary() => any()}.


%% Example:
%% panel_title_options() :: #{
%%   <<"FontConfiguration">> => font_configuration(),
%%   <<"HorizontalTextAlignment">> => list(any()),
%%   <<"Visibility">> => list(any())
%% }
-type panel_title_options() :: #{binary() => any()}.


%% Example:
%% export_hidden_fields_option() :: #{
%%   <<"AvailabilityStatus">> => list(any())
%% }
-type export_hidden_fields_option() :: #{binary() => any()}.


%% Example:
%% top_bottom_movers_computation() :: #{
%%   <<"Category">> => dimension_field(),
%%   <<"ComputationId">> => string(),
%%   <<"MoverSize">> => integer(),
%%   <<"Name">> => string(),
%%   <<"SortOrder">> => list(any()),
%%   <<"Time">> => dimension_field(),
%%   <<"Type">> => list(any()),
%%   <<"Value">> => measure_field()
%% }
-type top_bottom_movers_computation() :: #{binary() => any()}.


%% Example:
%% list_topics_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TopicsSummaries">> => list(topic_summary())
%% }
-type list_topics_response() :: #{binary() => any()}.


%% Example:
%% contribution_analysis_time_ranges() :: #{
%%   <<"EndRange">> => topic_i_r_filter_option(),
%%   <<"StartRange">> => topic_i_r_filter_option()
%% }
-type contribution_analysis_time_ranges() :: #{binary() => any()}.


%% Example:
%% word_cloud_options() :: #{
%%   <<"CloudLayout">> => list(any()),
%%   <<"MaximumStringLength">> => integer(),
%%   <<"WordCasing">> => list(any()),
%%   <<"WordOrientation">> => list(any()),
%%   <<"WordPadding">> => list(any()),
%%   <<"WordScaling">> => list(any())
%% }
-type word_cloud_options() :: #{binary() => any()}.


%% Example:
%% batch_delete_topic_reviewed_answer_request() :: #{
%%   <<"AnswerIds">> => list(string())
%% }
-type batch_delete_topic_reviewed_answer_request() :: #{binary() => any()}.


%% Example:
%% default_filter_control_configuration() :: #{
%%   <<"ControlOptions">> => default_filter_control_options(),
%%   <<"Title">> => string()
%% }
-type default_filter_control_configuration() :: #{binary() => any()}.


%% Example:
%% total_aggregation_option() :: #{
%%   <<"FieldId">> => string(),
%%   <<"TotalAggregationFunction">> => total_aggregation_function()
%% }
-type total_aggregation_option() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_analysis_override_permissions() :: #{
%%   <<"AnalysisIds">> => list(string()),
%%   <<"Permissions">> => asset_bundle_resource_permissions()
%% }
-type asset_bundle_import_job_analysis_override_permissions() :: #{binary() => any()}.


%% Example:
%% radar_chart_aggregated_field_wells() :: #{
%%   <<"Category">> => list(dimension_field()),
%%   <<"Color">> => list(dimension_field()),
%%   <<"Values">> => list(measure_field())
%% }
-type radar_chart_aggregated_field_wells() :: #{binary() => any()}.


%% Example:
%% generated_answer_result() :: #{
%%   <<"AnswerId">> => string(),
%%   <<"AnswerStatus">> => list(any()),
%%   <<"QuestionId">> => string(),
%%   <<"QuestionText">> => string(),
%%   <<"QuestionUrl">> => string(),
%%   <<"Restatement">> => string(),
%%   <<"TopicId">> => string(),
%%   <<"TopicName">> => string()
%% }
-type generated_answer_result() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_refresh_schedule_override_parameters() :: #{
%%   <<"DataSetId">> => string(),
%%   <<"ScheduleId">> => string(),
%%   <<"StartAfterDateTime">> => non_neg_integer()
%% }
-type asset_bundle_import_job_refresh_schedule_override_parameters() :: #{binary() => any()}.


%% Example:
%% update_brand_assignment_request() :: #{
%%   <<"BrandArn">> := string()
%% }
-type update_brand_assignment_request() :: #{binary() => any()}.


%% Example:
%% delete_default_q_business_application_request() :: #{
%%   <<"Namespace">> => string()
%% }
-type delete_default_q_business_application_request() :: #{binary() => any()}.


%% Example:
%% geospatial_layer_item() :: #{
%%   <<"Actions">> => list(layer_custom_action()),
%%   <<"DataSource">> => geospatial_data_source_item(),
%%   <<"JoinDefinition">> => geospatial_layer_join_definition(),
%%   <<"Label">> => string(),
%%   <<"LayerDefinition">> => geospatial_layer_definition(),
%%   <<"LayerId">> => string(),
%%   <<"LayerType">> => list(any()),
%%   <<"Tooltip">> => tooltip_options(),
%%   <<"Visibility">> => list(any())
%% }
-type geospatial_layer_item() :: #{binary() => any()}.


%% Example:
%% pie_chart_aggregated_field_wells() :: #{
%%   <<"Category">> => list(dimension_field()),
%%   <<"SmallMultiples">> => list(dimension_field()),
%%   <<"Values">> => list(measure_field())
%% }
-type pie_chart_aggregated_field_wells() :: #{binary() => any()}.


%% Example:
%% grid_layout_screen_canvas_size_options() :: #{
%%   <<"OptimizedViewPortWidth">> => string(),
%%   <<"ResizeOption">> => list(any())
%% }
-type grid_layout_screen_canvas_size_options() :: #{binary() => any()}.


%% Example:
%% what_if_range_scenario() :: #{
%%   <<"EndDate">> => non_neg_integer(),
%%   <<"StartDate">> => non_neg_integer(),
%%   <<"Value">> => float()
%% }
-type what_if_range_scenario() :: #{binary() => any()}.

%% Example:
%% describe_role_custom_permission_request() :: #{}
-type describe_role_custom_permission_request() :: #{}.


%% Example:
%% create_group_request() :: #{
%%   <<"Description">> => string(),
%%   <<"GroupName">> := string()
%% }
-type create_group_request() :: #{binary() => any()}.


%% Example:
%% update_template_permissions_request() :: #{
%%   <<"GrantPermissions">> => list(resource_permission()),
%%   <<"RevokePermissions">> => list(resource_permission())
%% }
-type update_template_permissions_request() :: #{binary() => any()}.


%% Example:
%% update_account_settings_request() :: #{
%%   <<"DefaultNamespace">> := string(),
%%   <<"NotificationEmail">> => string(),
%%   <<"TerminationProtectionEnabled">> => boolean()
%% }
-type update_account_settings_request() :: #{binary() => any()}.

%% Example:
%% create_folder_membership_request() :: #{}
-type create_folder_membership_request() :: #{}.


%% Example:
%% asset_bundle_export_job_refresh_schedule_override_properties() :: #{
%%   <<"Arn">> => string(),
%%   <<"Properties">> => list(list(any())())
%% }
-type asset_bundle_export_job_refresh_schedule_override_properties() :: #{binary() => any()}.


%% Example:
%% generate_embed_url_for_registered_user_with_identity_request() :: #{
%%   <<"AllowedDomains">> => list(string()),
%%   <<"ExperienceConfiguration">> := registered_user_embedding_experience_configuration(),
%%   <<"SessionLifetimeInMinutes">> => float()
%% }
-type generate_embed_url_for_registered_user_with_identity_request() :: #{binary() => any()}.


%% Example:
%% column_group() :: #{
%%   <<"GeoSpatialColumnGroup">> => geo_spatial_column_group()
%% }
-type column_group() :: #{binary() => any()}.


%% Example:
%% create_template_alias_request() :: #{
%%   <<"TemplateVersionNumber">> := float()
%% }
-type create_template_alias_request() :: #{binary() => any()}.


%% Example:
%% analysis_error() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"ViolatedEntities">> => list(entity())
%% }
-type analysis_error() :: #{binary() => any()}.


%% Example:
%% registered_user_dashboard_visual_embedding_configuration() :: #{
%%   <<"InitialDashboardVisualId">> => dashboard_visual_id()
%% }
-type registered_user_dashboard_visual_embedding_configuration() :: #{binary() => any()}.


%% Example:
%% custom_action_navigation_operation() :: #{
%%   <<"LocalNavigationConfiguration">> => local_navigation_configuration()
%% }
-type custom_action_navigation_operation() :: #{binary() => any()}.


%% Example:
%% bar_chart_configuration() :: #{
%%   <<"BarsArrangement">> => list(any()),
%%   <<"CategoryAxis">> => axis_display_options(),
%%   <<"CategoryLabelOptions">> => chart_axis_label_options(),
%%   <<"ColorLabelOptions">> => chart_axis_label_options(),
%%   <<"ContributionAnalysisDefaults">> => list(contribution_analysis_default()),
%%   <<"DataLabels">> => data_label_options(),
%%   <<"FieldWells">> => bar_chart_field_wells(),
%%   <<"Interactions">> => visual_interaction_options(),
%%   <<"Legend">> => legend_options(),
%%   <<"Orientation">> => list(any()),
%%   <<"ReferenceLines">> => list(reference_line()),
%%   <<"SmallMultiplesOptions">> => small_multiples_options(),
%%   <<"SortConfiguration">> => bar_chart_sort_configuration(),
%%   <<"Tooltip">> => tooltip_options(),
%%   <<"ValueAxis">> => axis_display_options(),
%%   <<"ValueLabelOptions">> => chart_axis_label_options(),
%%   <<"VisualPalette">> => visual_palette()
%% }
-type bar_chart_configuration() :: #{binary() => any()}.


%% Example:
%% date_measure_field() :: #{
%%   <<"AggregationFunction">> => list(any()),
%%   <<"Column">> => column_identifier(),
%%   <<"FieldId">> => string(),
%%   <<"FormatConfiguration">> => date_time_format_configuration()
%% }
-type date_measure_field() :: #{binary() => any()}.


%% Example:
%% update_iam_policy_assignment_response() :: #{
%%   <<"AssignmentId">> => string(),
%%   <<"AssignmentName">> => string(),
%%   <<"AssignmentStatus">> => list(any()),
%%   <<"Identities">> => map(),
%%   <<"PolicyArn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_iam_policy_assignment_response() :: #{binary() => any()}.

%% Example:
%% create_group_membership_request() :: #{}
-type create_group_membership_request() :: #{}.

%% Example:
%% describe_group_membership_request() :: #{}
-type describe_group_membership_request() :: #{}.


%% Example:
%% generate_embed_url_for_anonymous_user_request() :: #{
%%   <<"AllowedDomains">> => list(string()),
%%   <<"AuthorizedResourceArns">> := list(string()),
%%   <<"ExperienceConfiguration">> := anonymous_user_embedding_experience_configuration(),
%%   <<"Namespace">> := string(),
%%   <<"SessionLifetimeInMinutes">> => float(),
%%   <<"SessionTags">> => list(session_tag())
%% }
-type generate_embed_url_for_anonymous_user_request() :: #{binary() => any()}.


%% Example:
%% date_time_dataset_parameter_default_values() :: #{
%%   <<"StaticValues">> => list(non_neg_integer())
%% }
-type date_time_dataset_parameter_default_values() :: #{binary() => any()}.


%% Example:
%% confluence_parameters() :: #{
%%   <<"ConfluenceUrl">> => string()
%% }
-type confluence_parameters() :: #{binary() => any()}.


%% Example:
%% visual_interaction_options() :: #{
%%   <<"ContextMenuOption">> => context_menu_option(),
%%   <<"VisualMenuOption">> => visual_menu_option()
%% }
-type visual_interaction_options() :: #{binary() => any()}.

%% Example:
%% describe_data_source_permissions_request() :: #{}
-type describe_data_source_permissions_request() :: #{}.


%% Example:
%% asset_bundle_import_job_dashboard_override_tags() :: #{
%%   <<"DashboardIds">> => list(string()),
%%   <<"Tags">> => list(tag())
%% }
-type asset_bundle_import_job_dashboard_override_tags() :: #{binary() => any()}.


%% Example:
%% filter_text_field_control() :: #{
%%   <<"DisplayOptions">> => text_field_control_display_options(),
%%   <<"FilterControlId">> => string(),
%%   <<"SourceFilterId">> => string(),
%%   <<"Title">> => string()
%% }
-type filter_text_field_control() :: #{binary() => any()}.


%% Example:
%% tile_style() :: #{
%%   <<"Border">> => border_style()
%% }
-type tile_style() :: #{binary() => any()}.


%% Example:
%% batch_create_topic_reviewed_answer_response() :: #{
%%   <<"InvalidAnswers">> => list(invalid_topic_reviewed_answer()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"SucceededAnswers">> => list(succeeded_topic_reviewed_answer()),
%%   <<"TopicArn">> => string(),
%%   <<"TopicId">> => string()
%% }
-type batch_create_topic_reviewed_answer_response() :: #{binary() => any()}.


%% Example:
%% data_path_type() :: #{
%%   <<"PivotTableDataPathType">> => list(any())
%% }
-type data_path_type() :: #{binary() => any()}.


%% Example:
%% anonymous_user_dashboard_feature_configurations() :: #{
%%   <<"SharedView">> => shared_view_configurations()
%% }
-type anonymous_user_dashboard_feature_configurations() :: #{binary() => any()}.


%% Example:
%% date_time_dataset_parameter() :: #{
%%   <<"DefaultValues">> => date_time_dataset_parameter_default_values(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"TimeGranularity">> => list(any()),
%%   <<"ValueType">> => list(any())
%% }
-type date_time_dataset_parameter() :: #{binary() => any()}.


%% Example:
%% action_connector_summary() :: #{
%%   <<"ActionConnectorId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => [non_neg_integer()],
%%   <<"Error">> => action_connector_error(),
%%   <<"LastUpdatedTime">> => [non_neg_integer()],
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type action_connector_summary() :: #{binary() => any()}.


%% Example:
%% update_key_registration_response() :: #{
%%   <<"FailedKeyRegistration">> => list(failed_key_registration_entry()),
%%   <<"RequestId">> => string(),
%%   <<"SuccessfulKeyRegistration">> => list(successful_key_registration_entry())
%% }
-type update_key_registration_response() :: #{binary() => any()}.


%% Example:
%% currency_display_format_configuration() :: #{
%%   <<"DecimalPlacesConfiguration">> => decimal_places_configuration(),
%%   <<"NegativeValueConfiguration">> => negative_value_configuration(),
%%   <<"NullValueFormatConfiguration">> => null_value_format_configuration(),
%%   <<"NumberScale">> => list(any()),
%%   <<"Prefix">> => string(),
%%   <<"SeparatorConfiguration">> => numeric_separator_configuration(),
%%   <<"Suffix">> => string(),
%%   <<"Symbol">> => string()
%% }
-type currency_display_format_configuration() :: #{binary() => any()}.


%% Example:
%% start_asset_bundle_import_job_request() :: #{
%%   <<"AssetBundleImportJobId">> := string(),
%%   <<"AssetBundleImportSource">> := asset_bundle_import_source(),
%%   <<"FailureAction">> => list(any()),
%%   <<"OverrideParameters">> => asset_bundle_import_job_override_parameters(),
%%   <<"OverridePermissions">> => asset_bundle_import_job_override_permissions(),
%%   <<"OverrideTags">> => asset_bundle_import_job_override_tags(),
%%   <<"OverrideValidationStrategy">> => asset_bundle_import_job_override_validation_strategy()
%% }
-type start_asset_bundle_import_job_request() :: #{binary() => any()}.


%% Example:
%% search_flows_output() :: #{
%%   <<"FlowSummaryList">> => list(flow_summary()),
%%   <<"NextToken">> => [string()],
%%   <<"RequestId">> => [string()],
%%   <<"Status">> => integer()
%% }
-type search_flows_output() :: #{binary() => any()}.


%% Example:
%% get_session_embed_url_response() :: #{
%%   <<"EmbedUrl">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type get_session_embed_url_response() :: #{binary() => any()}.


%% Example:
%% list_asset_bundle_import_jobs_response() :: #{
%%   <<"AssetBundleImportJobSummaryList">> => list(asset_bundle_import_job_summary()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type list_asset_bundle_import_jobs_response() :: #{binary() => any()}.


%% Example:
%% group_member() :: #{
%%   <<"Arn">> => string(),
%%   <<"MemberName">> => string()
%% }
-type group_member() :: #{binary() => any()}.


%% Example:
%% category_drill_down_filter() :: #{
%%   <<"CategoryValues">> => list(string()),
%%   <<"Column">> => column_identifier()
%% }
-type category_drill_down_filter() :: #{binary() => any()}.


%% Example:
%% signup_response() :: #{
%%   <<"IAMUser">> => boolean(),
%%   <<"accountName">> => string(),
%%   <<"directoryType">> => string(),
%%   <<"userLoginName">> => string()
%% }
-type signup_response() :: #{binary() => any()}.


%% Example:
%% section_based_layout_paper_canvas_size_options() :: #{
%%   <<"PaperMargin">> => spacing(),
%%   <<"PaperOrientation">> => list(any()),
%%   <<"PaperSize">> => list(any())
%% }
-type section_based_layout_paper_canvas_size_options() :: #{binary() => any()}.


%% Example:
%% data_source_credentials() :: #{
%%   <<"CopySourceArn">> => string(),
%%   <<"CredentialPair">> => credential_pair(),
%%   <<"SecretArn">> => string(),
%%   <<"WebProxyCredentials">> => web_proxy_credentials()
%% }
-type data_source_credentials() :: #{binary() => any()}.


%% Example:
%% account_customization() :: #{
%%   <<"DefaultEmailCustomizationTemplate">> => string(),
%%   <<"DefaultTheme">> => string()
%% }
-type account_customization() :: #{binary() => any()}.


%% Example:
%% describe_theme_request() :: #{
%%   <<"AliasName">> => string(),
%%   <<"VersionNumber">> => float()
%% }
-type describe_theme_request() :: #{binary() => any()}.


%% Example:
%% series_item() :: #{
%%   <<"DataFieldSeriesItem">> => data_field_series_item(),
%%   <<"FieldSeriesItem">> => field_series_item()
%% }
-type series_item() :: #{binary() => any()}.


%% Example:
%% update_role_custom_permission_request() :: #{
%%   <<"CustomPermissionsName">> := string()
%% }
-type update_role_custom_permission_request() :: #{binary() => any()}.


%% Example:
%% generate_embed_url_for_registered_user_response() :: #{
%%   <<"EmbedUrl">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type generate_embed_url_for_registered_user_response() :: #{binary() => any()}.


%% Example:
%% validation_strategy() :: #{
%%   <<"Mode">> => list(any())
%% }
-type validation_strategy() :: #{binary() => any()}.

%% Example:
%% delete_user_request() :: #{}
-type delete_user_request() :: #{}.


%% Example:
%% jira_parameters() :: #{
%%   <<"SiteBaseUrl">> => string()
%% }
-type jira_parameters() :: #{binary() => any()}.


%% Example:
%% describe_folder_permissions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"Namespace">> => string(),
%%   <<"NextToken">> => string()
%% }
-type describe_folder_permissions_request() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"CategoryFilter">> => category_filter(),
%%   <<"NestedFilter">> => nested_filter(),
%%   <<"NumericEqualityFilter">> => numeric_equality_filter(),
%%   <<"NumericRangeFilter">> => numeric_range_filter(),
%%   <<"RelativeDatesFilter">> => relative_dates_filter(),
%%   <<"TimeEqualityFilter">> => time_equality_filter(),
%%   <<"TimeRangeFilter">> => time_range_filter(),
%%   <<"TopBottomFilter">> => top_bottom_filter()
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% progress_bar_options() :: #{
%%   <<"Visibility">> => list(any())
%% }
-type progress_bar_options() :: #{binary() => any()}.


%% Example:
%% time_range_filter_value() :: #{
%%   <<"Parameter">> => string(),
%%   <<"RollingDate">> => rolling_date_configuration(),
%%   <<"StaticValue">> => non_neg_integer()
%% }
-type time_range_filter_value() :: #{binary() => any()}.


%% Example:
%% numeric_format_configuration() :: #{
%%   <<"CurrencyDisplayFormatConfiguration">> => currency_display_format_configuration(),
%%   <<"NumberDisplayFormatConfiguration">> => number_display_format_configuration(),
%%   <<"PercentageDisplayFormatConfiguration">> => percentage_display_format_configuration()
%% }
-type numeric_format_configuration() :: #{binary() => any()}.


%% Example:
%% filter_operation_selected_fields_configuration() :: #{
%%   <<"SelectedColumns">> => list(column_identifier()),
%%   <<"SelectedFieldOptions">> => list(any()),
%%   <<"SelectedFields">> => list(string())
%% }
-type filter_operation_selected_fields_configuration() :: #{binary() => any()}.


%% Example:
%% anchor_date_configuration() :: #{
%%   <<"AnchorOption">> => list(any()),
%%   <<"ParameterName">> => string()
%% }
-type anchor_date_configuration() :: #{binary() => any()}.


%% Example:
%% geospatial_map_style_options() :: #{
%%   <<"BaseMapStyle">> => list(any())
%% }
-type geospatial_map_style_options() :: #{binary() => any()}.


%% Example:
%% attribute_aggregation_function() :: #{
%%   <<"SimpleAttributeAggregation">> => list(any()),
%%   <<"ValueForMultipleValues">> => string()
%% }
-type attribute_aggregation_function() :: #{binary() => any()}.


%% Example:
%% delete_role_membership_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_role_membership_response() :: #{binary() => any()}.


%% Example:
%% dashboard_visual_result() :: #{
%%   <<"DashboardId">> => string(),
%%   <<"DashboardName">> => string(),
%%   <<"DashboardUrl">> => string(),
%%   <<"SheetId">> => string(),
%%   <<"SheetName">> => string(),
%%   <<"VisualId">> => string(),
%%   <<"VisualSubtitle">> => string(),
%%   <<"VisualTitle">> => string()
%% }
-type dashboard_visual_result() :: #{binary() => any()}.


%% Example:
%% topic_null_filter() :: #{
%%   <<"Constant">> => topic_singular_filter_constant(),
%%   <<"Inverse">> => boolean(),
%%   <<"NullFilterType">> => list(any())
%% }
-type topic_null_filter() :: #{binary() => any()}.


%% Example:
%% data_set_identifier_declaration() :: #{
%%   <<"DataSetArn">> => string(),
%%   <<"Identifier">> => string()
%% }
-type data_set_identifier_declaration() :: #{binary() => any()}.


%% Example:
%% update_topic_permissions_response() :: #{
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TopicArn">> => string(),
%%   <<"TopicId">> => string()
%% }
-type update_topic_permissions_response() :: #{binary() => any()}.

%% Example:
%% list_topic_reviewed_answers_request() :: #{}
-type list_topic_reviewed_answers_request() :: #{}.


%% Example:
%% set_parameter_value_configuration() :: #{
%%   <<"DestinationParameterName">> => string(),
%%   <<"Value">> => destination_parameter_value_configuration()
%% }
-type set_parameter_value_configuration() :: #{binary() => any()}.


%% Example:
%% topic_i_r_contribution_analysis() :: #{
%%   <<"Direction">> => list(any()),
%%   <<"Factors">> => list(contribution_analysis_factor()),
%%   <<"SortType">> => list(any()),
%%   <<"TimeRanges">> => contribution_analysis_time_ranges()
%% }
-type topic_i_r_contribution_analysis() :: #{binary() => any()}.


%% Example:
%% static_file_source() :: #{
%%   <<"S3Options">> => static_file_s3_source_options(),
%%   <<"UrlOptions">> => static_file_url_source_options()
%% }
-type static_file_source() :: #{binary() => any()}.


%% Example:
%% null_value_format_configuration() :: #{
%%   <<"NullString">> => string()
%% }
-type null_value_format_configuration() :: #{binary() => any()}.


%% Example:
%% teradata_parameters() :: #{
%%   <<"Database">> => string(),
%%   <<"Host">> => string(),
%%   <<"Port">> => integer()
%% }
-type teradata_parameters() :: #{binary() => any()}.

%% Example:
%% axis_display_data_driven_range() :: #{}
-type axis_display_data_driven_range() :: #{}.


%% Example:
%% dashboard_visual_id() :: #{
%%   <<"DashboardId">> => string(),
%%   <<"SheetId">> => string(),
%%   <<"VisualId">> => string()
%% }
-type dashboard_visual_id() :: #{binary() => any()}.


%% Example:
%% list_brands_response() :: #{
%%   <<"Brands">> => list(brand_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_brands_response() :: #{binary() => any()}.


%% Example:
%% range_ends_label_type() :: #{
%%   <<"Visibility">> => list(any())
%% }
-type range_ends_label_type() :: #{binary() => any()}.


%% Example:
%% update_custom_permissions_request() :: #{
%%   <<"Capabilities">> => capabilities()
%% }
-type update_custom_permissions_request() :: #{binary() => any()}.


%% Example:
%% concurrent_updating_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type concurrent_updating_exception() :: #{binary() => any()}.


%% Example:
%% inner_filter() :: #{
%%   <<"CategoryInnerFilter">> => category_inner_filter()
%% }
-type inner_filter() :: #{binary() => any()}.


%% Example:
%% items_limit_configuration() :: #{
%%   <<"ItemsLimit">> => float(),
%%   <<"OtherCategories">> => list(any())
%% }
-type items_limit_configuration() :: #{binary() => any()}.


%% Example:
%% delete_dashboard_request() :: #{
%%   <<"VersionNumber">> => float()
%% }
-type delete_dashboard_request() :: #{binary() => any()}.


%% Example:
%% k_p_i_configuration() :: #{
%%   <<"FieldWells">> => k_p_i_field_wells(),
%%   <<"Interactions">> => visual_interaction_options(),
%%   <<"KPIOptions">> => k_p_i_options(),
%%   <<"SortConfiguration">> => k_p_i_sort_configuration()
%% }
-type k_p_i_configuration() :: #{binary() => any()}.


%% Example:
%% data_point_tooltip_option() :: #{
%%   <<"AvailabilityStatus">> => list(any())
%% }
-type data_point_tooltip_option() :: #{binary() => any()}.

%% Example:
%% describe_dashboard_snapshot_job_result_request() :: #{}
-type describe_dashboard_snapshot_job_result_request() :: #{}.


%% Example:
%% negative_value_configuration() :: #{
%%   <<"DisplayMode">> => list(any())
%% }
-type negative_value_configuration() :: #{binary() => any()}.


%% Example:
%% delete_user_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_user_response() :: #{binary() => any()}.


%% Example:
%% sheet_control_layout() :: #{
%%   <<"Configuration">> => sheet_control_layout_configuration()
%% }
-type sheet_control_layout() :: #{binary() => any()}.


%% Example:
%% delete_theme_alias_response() :: #{
%%   <<"AliasName">> => string(),
%%   <<"Arn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"ThemeId">> => string()
%% }
-type delete_theme_alias_response() :: #{binary() => any()}.


%% Example:
%% iam_policy_assignment() :: #{
%%   <<"AssignmentId">> => string(),
%%   <<"AssignmentName">> => string(),
%%   <<"AssignmentStatus">> => list(any()),
%%   <<"AwsAccountId">> => string(),
%%   <<"Identities">> => map(),
%%   <<"PolicyArn">> => string()
%% }
-type iam_policy_assignment() :: #{binary() => any()}.


%% Example:
%% default_filter_drop_down_control_options() :: #{
%%   <<"CommitMode">> => list(any()),
%%   <<"DisplayOptions">> => drop_down_control_display_options(),
%%   <<"SelectableValues">> => filter_selectable_values(),
%%   <<"Type">> => list(any())
%% }
-type default_filter_drop_down_control_options() :: #{binary() => any()}.


%% Example:
%% delete_account_subscription_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_account_subscription_response() :: #{binary() => any()}.


%% Example:
%% table_side_border_options() :: #{
%%   <<"Bottom">> => table_border_options(),
%%   <<"InnerHorizontal">> => table_border_options(),
%%   <<"InnerVertical">> => table_border_options(),
%%   <<"Left">> => table_border_options(),
%%   <<"Right">> => table_border_options(),
%%   <<"Top">> => table_border_options()
%% }
-type table_side_border_options() :: #{binary() => any()}.


%% Example:
%% impala_parameters() :: #{
%%   <<"Database">> => string(),
%%   <<"Host">> => string(),
%%   <<"Port">> => integer(),
%%   <<"SqlEndpointPath">> => string()
%% }
-type impala_parameters() :: #{binary() => any()}.


%% Example:
%% gauge_chart_field_wells() :: #{
%%   <<"TargetValues">> => list(measure_field()),
%%   <<"Values">> => list(measure_field())
%% }
-type gauge_chart_field_wells() :: #{binary() => any()}.


%% Example:
%% topic_details() :: #{
%%   <<"ConfigOptions">> => topic_config_options(),
%%   <<"DataSets">> => list(dataset_metadata()),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"UserExperienceVersion">> => list(any())
%% }
-type topic_details() :: #{binary() => any()}.


%% Example:
%% dataset_parameter() :: #{
%%   <<"DateTimeDatasetParameter">> => date_time_dataset_parameter(),
%%   <<"DecimalDatasetParameter">> => decimal_dataset_parameter(),
%%   <<"IntegerDatasetParameter">> => integer_dataset_parameter(),
%%   <<"StringDatasetParameter">> => string_dataset_parameter()
%% }
-type dataset_parameter() :: #{binary() => any()}.


%% Example:
%% update_vpc_connection_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AvailabilityStatus">> => list(any()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"UpdateStatus">> => list(any()),
%%   <<"VPCConnectionId">> => string()
%% }
-type update_vpc_connection_response() :: #{binary() => any()}.


%% Example:
%% transposed_table_option() :: #{
%%   <<"ColumnIndex">> => integer(),
%%   <<"ColumnType">> => list(any()),
%%   <<"ColumnWidth">> => string()
%% }
-type transposed_table_option() :: #{binary() => any()}.


%% Example:
%% update_default_q_business_application_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_default_q_business_application_response() :: #{binary() => any()}.


%% Example:
%% ad_hoc_filtering_option() :: #{
%%   <<"AvailabilityStatus">> => list(any())
%% }
-type ad_hoc_filtering_option() :: #{binary() => any()}.


%% Example:
%% create_account_subscription_request() :: #{
%%   <<"AccountName">> := string(),
%%   <<"ActiveDirectoryName">> => string(),
%%   <<"AdminGroup">> => list(string()),
%%   <<"AdminProGroup">> => list(string()),
%%   <<"AuthenticationMethod">> := list(any()),
%%   <<"AuthorGroup">> => list(string()),
%%   <<"AuthorProGroup">> => list(string()),
%%   <<"ContactNumber">> => string(),
%%   <<"DirectoryId">> => string(),
%%   <<"Edition">> => list(any()),
%%   <<"EmailAddress">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"IAMIdentityCenterInstanceArn">> => string(),
%%   <<"LastName">> => string(),
%%   <<"NotificationEmail">> := string(),
%%   <<"ReaderGroup">> => list(string()),
%%   <<"ReaderProGroup">> => list(string()),
%%   <<"Realm">> => string()
%% }
-type create_account_subscription_request() :: #{binary() => any()}.


%% Example:
%% tag_column_operation() :: #{
%%   <<"ColumnName">> => string(),
%%   <<"Tags">> => list(column_tag())
%% }
-type tag_column_operation() :: #{binary() => any()}.


%% Example:
%% custom_permissions() :: #{
%%   <<"Arn">> => string(),
%%   <<"Capabilities">> => capabilities(),
%%   <<"CustomPermissionsName">> => string()
%% }
-type custom_permissions() :: #{binary() => any()}.


%% Example:
%% bar_chart_sort_configuration() :: #{
%%   <<"CategoryItemsLimit">> => items_limit_configuration(),
%%   <<"CategorySort">> => list(field_sort_options()),
%%   <<"ColorItemsLimit">> => items_limit_configuration(),
%%   <<"ColorSort">> => list(field_sort_options()),
%%   <<"SmallMultiplesLimitConfiguration">> => items_limit_configuration(),
%%   <<"SmallMultiplesSort">> => list(field_sort_options())
%% }
-type bar_chart_sort_configuration() :: #{binary() => any()}.


%% Example:
%% filter_drop_down_control() :: #{
%%   <<"CascadingControlConfiguration">> => cascading_control_configuration(),
%%   <<"CommitMode">> => list(any()),
%%   <<"DisplayOptions">> => drop_down_control_display_options(),
%%   <<"FilterControlId">> => string(),
%%   <<"SelectableValues">> => filter_selectable_values(),
%%   <<"SourceFilterId">> => string(),
%%   <<"Title">> => string(),
%%   <<"Type">> => list(any())
%% }
-type filter_drop_down_control() :: #{binary() => any()}.


%% Example:
%% pie_chart_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => pie_chart_configuration(),
%%   <<"ColumnHierarchies">> => list(column_hierarchy()),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type pie_chart_visual() :: #{binary() => any()}.


%% Example:
%% refresh_schedule() :: #{
%%   <<"Arn">> => string(),
%%   <<"RefreshType">> => list(any()),
%%   <<"ScheduleFrequency">> => refresh_frequency(),
%%   <<"ScheduleId">> => string(),
%%   <<"StartAfterDateTime">> => non_neg_integer()
%% }
-type refresh_schedule() :: #{binary() => any()}.


%% Example:
%% list_folders_response() :: #{
%%   <<"FolderSummaryList">> => list(folder_summary()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type list_folders_response() :: #{binary() => any()}.


%% Example:
%% table_aggregated_field_wells() :: #{
%%   <<"GroupBy">> => list(dimension_field()),
%%   <<"Values">> => list(measure_field())
%% }
-type table_aggregated_field_wells() :: #{binary() => any()}.


%% Example:
%% delete_dashboard_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"DashboardId">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_dashboard_response() :: #{binary() => any()}.


%% Example:
%% service_now_parameters() :: #{
%%   <<"SiteBaseUrl">> => string()
%% }
-type service_now_parameters() :: #{binary() => any()}.


%% Example:
%% update_template_alias_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TemplateAlias">> => template_alias()
%% }
-type update_template_alias_response() :: #{binary() => any()}.


%% Example:
%% logo_set_configuration() :: #{
%%   <<"Favicon">> => image_set_configuration(),
%%   <<"Primary">> => image_set_configuration()
%% }
-type logo_set_configuration() :: #{binary() => any()}.


%% Example:
%% destination_parameter_value_configuration() :: #{
%%   <<"CustomValuesConfiguration">> => custom_values_configuration(),
%%   <<"SelectAllValueOptions">> => list(any()),
%%   <<"SourceColumn">> => column_identifier(),
%%   <<"SourceField">> => string(),
%%   <<"SourceParameterName">> => string()
%% }
-type destination_parameter_value_configuration() :: #{binary() => any()}.


%% Example:
%% rds_parameters() :: #{
%%   <<"Database">> => string(),
%%   <<"InstanceId">> => string()
%% }
-type rds_parameters() :: #{binary() => any()}.


%% Example:
%% list_folders_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_folders_request() :: #{binary() => any()}.


%% Example:
%% thousand_separator_options() :: #{
%%   <<"GroupingStyle">> => list(any()),
%%   <<"Symbol">> => list(any()),
%%   <<"Visibility">> => list(any())
%% }
-type thousand_separator_options() :: #{binary() => any()}.


%% Example:
%% aurora_postgre_sql_parameters() :: #{
%%   <<"Database">> => string(),
%%   <<"Host">> => string(),
%%   <<"Port">> => integer()
%% }
-type aurora_postgre_sql_parameters() :: #{binary() => any()}.


%% Example:
%% palette() :: #{
%%   <<"Background">> => string(),
%%   <<"Foreground">> => string()
%% }
-type palette() :: #{binary() => any()}.


%% Example:
%% update_template_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationStatus">> => list(any()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TemplateId">> => string(),
%%   <<"VersionArn">> => string()
%% }
-type update_template_response() :: #{binary() => any()}.


%% Example:
%% numeric_separator_configuration() :: #{
%%   <<"DecimalSeparator">> => list(any()),
%%   <<"ThousandsSeparator">> => thousand_separator_options()
%% }
-type numeric_separator_configuration() :: #{binary() => any()}.


%% Example:
%% conditional_formatting_icon() :: #{
%%   <<"CustomCondition">> => conditional_formatting_custom_icon_condition(),
%%   <<"IconSet">> => conditional_formatting_icon_set()
%% }
-type conditional_formatting_icon() :: #{binary() => any()}.


%% Example:
%% filter_list_configuration() :: #{
%%   <<"CategoryValues">> => list(string()),
%%   <<"MatchOperator">> => list(any()),
%%   <<"NullOption">> => list(any()),
%%   <<"SelectAllOptions">> => list(any())
%% }
-type filter_list_configuration() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% parameter_declaration() :: #{
%%   <<"DateTimeParameterDeclaration">> => date_time_parameter_declaration(),
%%   <<"DecimalParameterDeclaration">> => decimal_parameter_declaration(),
%%   <<"IntegerParameterDeclaration">> => integer_parameter_declaration(),
%%   <<"StringParameterDeclaration">> => string_parameter_declaration()
%% }
-type parameter_declaration() :: #{binary() => any()}.


%% Example:
%% geospatial_map_state() :: #{
%%   <<"Bounds">> => geospatial_coordinate_bounds(),
%%   <<"MapNavigation">> => list(any())
%% }
-type geospatial_map_state() :: #{binary() => any()}.


%% Example:
%% custom_content_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => custom_content_configuration(),
%%   <<"DataSetIdentifier">> => string(),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type custom_content_visual() :: #{binary() => any()}.


%% Example:
%% waterfall_chart_aggregated_field_wells() :: #{
%%   <<"Breakdowns">> => list(dimension_field()),
%%   <<"Categories">> => list(dimension_field()),
%%   <<"Values">> => list(measure_field())
%% }
-type waterfall_chart_aggregated_field_wells() :: #{binary() => any()}.

%% Example:
%% describe_vpc_connection_request() :: #{}
-type describe_vpc_connection_request() :: #{}.

%% Example:
%% delete_data_set_request() :: #{}
-type delete_data_set_request() :: #{}.


%% Example:
%% sankey_diagram_field_wells() :: #{
%%   <<"SankeyDiagramAggregatedFieldWells">> => sankey_diagram_aggregated_field_wells()
%% }
-type sankey_diagram_field_wells() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_warning() :: #{
%%   <<"Arn">> => string(),
%%   <<"Message">> => string()
%% }
-type asset_bundle_import_job_warning() :: #{binary() => any()}.


%% Example:
%% range_constant() :: #{
%%   <<"Maximum">> => string(),
%%   <<"Minimum">> => string()
%% }
-type range_constant() :: #{binary() => any()}.


%% Example:
%% table_row_conditional_formatting() :: #{
%%   <<"BackgroundColor">> => conditional_formatting_color(),
%%   <<"TextColor">> => conditional_formatting_color()
%% }
-type table_row_conditional_formatting() :: #{binary() => any()}.


%% Example:
%% numeric_equality_drill_down_filter() :: #{
%%   <<"Column">> => column_identifier(),
%%   <<"Value">> => float()
%% }
-type numeric_equality_drill_down_filter() :: #{binary() => any()}.


%% Example:
%% sheet_image_tooltip_configuration() :: #{
%%   <<"TooltipText">> => sheet_image_tooltip_text(),
%%   <<"Visibility">> => list(any())
%% }
-type sheet_image_tooltip_configuration() :: #{binary() => any()}.


%% Example:
%% snapshot_destination_configuration() :: #{
%%   <<"S3Destinations">> => list(snapshot_s3_destination_configuration())
%% }
-type snapshot_destination_configuration() :: #{binary() => any()}.


%% Example:
%% topic_singular_filter_constant() :: #{
%%   <<"ConstantType">> => list(any()),
%%   <<"SingularConstant">> => string()
%% }
-type topic_singular_filter_constant() :: #{binary() => any()}.


%% Example:
%% analysis() :: #{
%%   <<"AnalysisId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DataSetArns">> => list(string()),
%%   <<"Errors">> => list(analysis_error()),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Sheets">> => list(sheet()),
%%   <<"Status">> => list(any()),
%%   <<"ThemeArn">> => string()
%% }
-type analysis() :: #{binary() => any()}.


%% Example:
%% default_section_based_layout_configuration() :: #{
%%   <<"CanvasSizeOptions">> => section_based_layout_canvas_size_options()
%% }
-type default_section_based_layout_configuration() :: #{binary() => any()}.


%% Example:
%% new_default_values() :: #{
%%   <<"DateTimeStaticValues">> => list(non_neg_integer()),
%%   <<"DecimalStaticValues">> => list(float()),
%%   <<"IntegerStaticValues">> => list(float()),
%%   <<"StringStaticValues">> => list(string())
%% }
-type new_default_values() :: #{binary() => any()}.


%% Example:
%% k_p_i_sort_configuration() :: #{
%%   <<"TrendGroupSort">> => list(field_sort_options())
%% }
-type k_p_i_sort_configuration() :: #{binary() => any()}.


%% Example:
%% session_lifetime_in_minutes_invalid_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type session_lifetime_in_minutes_invalid_exception() :: #{binary() => any()}.


%% Example:
%% geospatial_heatmap_color_scale() :: #{
%%   <<"Colors">> => list(geospatial_heatmap_data_color())
%% }
-type geospatial_heatmap_color_scale() :: #{binary() => any()}.


%% Example:
%% theme_version_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"VersionNumber">> => float()
%% }
-type theme_version_summary() :: #{binary() => any()}.


%% Example:
%% create_data_source_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationStatus">> => list(any()),
%%   <<"DataSourceId">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type create_data_source_response() :: #{binary() => any()}.


%% Example:
%% table_field_wells() :: #{
%%   <<"TableAggregatedFieldWells">> => table_aggregated_field_wells(),
%%   <<"TableUnaggregatedFieldWells">> => table_unaggregated_field_wells()
%% }
-type table_field_wells() :: #{binary() => any()}.


%% Example:
%% topic_sort_clause() :: #{
%%   <<"Operand">> => identifier(),
%%   <<"SortDirection">> => list(any())
%% }
-type topic_sort_clause() :: #{binary() => any()}.


%% Example:
%% theme_configuration() :: #{
%%   <<"DataColorPalette">> => data_color_palette(),
%%   <<"Sheet">> => sheet_style(),
%%   <<"Typography">> => typography(),
%%   <<"UIColorPalette">> => ui_color_palette()
%% }
-type theme_configuration() :: #{binary() => any()}.


%% Example:
%% combo_chart_configuration() :: #{
%%   <<"BarDataLabels">> => data_label_options(),
%%   <<"BarsArrangement">> => list(any()),
%%   <<"CategoryAxis">> => axis_display_options(),
%%   <<"CategoryLabelOptions">> => chart_axis_label_options(),
%%   <<"ColorLabelOptions">> => chart_axis_label_options(),
%%   <<"FieldWells">> => combo_chart_field_wells(),
%%   <<"Interactions">> => visual_interaction_options(),
%%   <<"Legend">> => legend_options(),
%%   <<"LineDataLabels">> => data_label_options(),
%%   <<"PrimaryYAxisDisplayOptions">> => axis_display_options(),
%%   <<"PrimaryYAxisLabelOptions">> => chart_axis_label_options(),
%%   <<"ReferenceLines">> => list(reference_line()),
%%   <<"SecondaryYAxisDisplayOptions">> => axis_display_options(),
%%   <<"SecondaryYAxisLabelOptions">> => chart_axis_label_options(),
%%   <<"SingleAxisOptions">> => single_axis_options(),
%%   <<"SortConfiguration">> => combo_chart_sort_configuration(),
%%   <<"Tooltip">> => tooltip_options(),
%%   <<"VisualPalette">> => visual_palette()
%% }
-type combo_chart_configuration() :: #{binary() => any()}.

%% Example:
%% describe_asset_bundle_export_job_request() :: #{}
-type describe_asset_bundle_export_job_request() :: #{}.

%% Example:
%% describe_brand_assignment_request() :: #{}
-type describe_brand_assignment_request() :: #{}.


%% Example:
%% describe_user_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"User">> => user()
%% }
-type describe_user_response() :: #{binary() => any()}.


%% Example:
%% list_role_memberships_response() :: #{
%%   <<"MembersList">> => list(string()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type list_role_memberships_response() :: #{binary() => any()}.


%% Example:
%% topic_date_range_filter() :: #{
%%   <<"Constant">> => topic_range_filter_constant(),
%%   <<"Inclusive">> => boolean()
%% }
-type topic_date_range_filter() :: #{binary() => any()}.


%% Example:
%% funnel_chart_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => funnel_chart_configuration(),
%%   <<"ColumnHierarchies">> => list(column_hierarchy()),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type funnel_chart_visual() :: #{binary() => any()}.


%% Example:
%% create_dashboard_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationStatus">> => list(any()),
%%   <<"DashboardId">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"VersionArn">> => string()
%% }
-type create_dashboard_response() :: #{binary() => any()}.


%% Example:
%% list_analyses_response() :: #{
%%   <<"AnalysisSummaryList">> => list(analysis_summary()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type list_analyses_response() :: #{binary() => any()}.


%% Example:
%% flow_summary() :: #{
%%   <<"Arn">> => [string()],
%%   <<"CreatedBy">> => [string()],
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"FlowId">> => string(),
%%   <<"LastPublishedAt">> => non_neg_integer(),
%%   <<"LastPublishedBy">> => [string()],
%%   <<"LastUpdatedBy">> => [string()],
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"PublishState">> => list(any()),
%%   <<"RunCount">> => integer(),
%%   <<"UserCount">> => integer()
%% }
-type flow_summary() :: #{binary() => any()}.


%% Example:
%% update_dashboards_q_a_configuration_request() :: #{
%%   <<"DashboardsQAStatus">> := list(any())
%% }
-type update_dashboards_q_a_configuration_request() :: #{binary() => any()}.


%% Example:
%% tooltip_item() :: #{
%%   <<"ColumnTooltipItem">> => column_tooltip_item(),
%%   <<"FieldTooltipItem">> => field_tooltip_item()
%% }
-type tooltip_item() :: #{binary() => any()}.

%% Example:
%% describe_custom_permissions_request() :: #{}
-type describe_custom_permissions_request() :: #{}.


%% Example:
%% asset_bundle_export_job_data_source_override_properties() :: #{
%%   <<"Arn">> => string(),
%%   <<"Properties">> => list(list(any())())
%% }
-type asset_bundle_export_job_data_source_override_properties() :: #{binary() => any()}.


%% Example:
%% table_field_custom_text_content() :: #{
%%   <<"FontConfiguration">> => font_configuration(),
%%   <<"Value">> => string()
%% }
-type table_field_custom_text_content() :: #{binary() => any()}.


%% Example:
%% string_format_configuration() :: #{
%%   <<"NullValueFormatConfiguration">> => null_value_format_configuration(),
%%   <<"NumericFormatConfiguration">> => numeric_format_configuration()
%% }
-type string_format_configuration() :: #{binary() => any()}.


%% Example:
%% aggregation_sort_configuration() :: #{
%%   <<"AggregationFunction">> => aggregation_function(),
%%   <<"Column">> => column_identifier(),
%%   <<"SortDirection">> => list(any())
%% }
-type aggregation_sort_configuration() :: #{binary() => any()}.


%% Example:
%% line_chart_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => line_chart_configuration(),
%%   <<"ColumnHierarchies">> => list(column_hierarchy()),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type line_chart_visual() :: #{binary() => any()}.


%% Example:
%% filter_cross_sheet_control() :: #{
%%   <<"CascadingControlConfiguration">> => cascading_control_configuration(),
%%   <<"FilterControlId">> => string(),
%%   <<"SourceFilterId">> => string()
%% }
-type filter_cross_sheet_control() :: #{binary() => any()}.


%% Example:
%% delete_default_q_business_application_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_default_q_business_application_response() :: #{binary() => any()}.


%% Example:
%% row_alternate_color_options() :: #{
%%   <<"RowAlternateColors">> => list(string()),
%%   <<"Status">> => list(any()),
%%   <<"UsePrimaryBackgroundColor">> => list(any())
%% }
-type row_alternate_color_options() :: #{binary() => any()}.


%% Example:
%% update_q_personalization_configuration_response() :: #{
%%   <<"PersonalizationMode">> => list(any()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_q_personalization_configuration_response() :: #{binary() => any()}.


%% Example:
%% integer_dataset_parameter_default_values() :: #{
%%   <<"StaticValues">> => list(float())
%% }
-type integer_dataset_parameter_default_values() :: #{binary() => any()}.


%% Example:
%% update_theme_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationStatus">> => list(any()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"ThemeId">> => string(),
%%   <<"VersionArn">> => string()
%% }
-type update_theme_response() :: #{binary() => any()}.


%% Example:
%% generative_authoring_configurations() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type generative_authoring_configurations() :: #{binary() => any()}.


%% Example:
%% create_topic_reviewed_answer() :: #{
%%   <<"AnswerId">> => string(),
%%   <<"DatasetArn">> => string(),
%%   <<"Mir">> => topic_i_r(),
%%   <<"PrimaryVisual">> => topic_visual(),
%%   <<"Question">> => string(),
%%   <<"Template">> => topic_template()
%% }
-type create_topic_reviewed_answer() :: #{binary() => any()}.


%% Example:
%% update_topic_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"RefreshArn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TopicId">> => string()
%% }
-type update_topic_response() :: #{binary() => any()}.


%% Example:
%% gauge_chart_conditional_formatting_option() :: #{
%%   <<"Arc">> => gauge_chart_arc_conditional_formatting(),
%%   <<"PrimaryValue">> => gauge_chart_primary_value_conditional_formatting()
%% }
-type gauge_chart_conditional_formatting_option() :: #{binary() => any()}.


%% Example:
%% registered_user_generative_qn_a_embedding_configuration() :: #{
%%   <<"InitialTopicId">> => string()
%% }
-type registered_user_generative_qn_a_embedding_configuration() :: #{binary() => any()}.


%% Example:
%% column_tooltip_item() :: #{
%%   <<"Aggregation">> => aggregation_function(),
%%   <<"Column">> => column_identifier(),
%%   <<"Label">> => string(),
%%   <<"TooltipTarget">> => list(any()),
%%   <<"Visibility">> => list(any())
%% }
-type column_tooltip_item() :: #{binary() => any()}.


%% Example:
%% data_source_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DataSourceId">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Type">> => list(any())
%% }
-type data_source_summary() :: #{binary() => any()}.


%% Example:
%% action_connector() :: #{
%%   <<"ActionConnectorId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"AuthenticationConfig">> => read_auth_config(),
%%   <<"CreatedTime">> => [non_neg_integer()],
%%   <<"Description">> => string(),
%%   <<"EnabledActions">> => list(string()),
%%   <<"Error">> => action_connector_error(),
%%   <<"LastUpdatedTime">> => [non_neg_integer()],
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"VpcConnectionArn">> => string()
%% }
-type action_connector() :: #{binary() => any()}.


%% Example:
%% anonymous_user_snapshot_job_result() :: #{
%%   <<"FileGroups">> => list(snapshot_job_result_file_group())
%% }
-type anonymous_user_snapshot_job_result() :: #{binary() => any()}.


%% Example:
%% list_dashboard_versions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_dashboard_versions_request() :: #{binary() => any()}.

%% Example:
%% delete_identity_propagation_config_request() :: #{}
-type delete_identity_propagation_config_request() :: #{}.


%% Example:
%% get_flow_metadata_output() :: #{
%%   <<"Arn">> => [string()],
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"FlowId">> => string(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"PublishState">> => list(any()),
%%   <<"RequestId">> => [string()],
%%   <<"RunCount">> => integer(),
%%   <<"Status">> => integer(),
%%   <<"UserCount">> => integer()
%% }
-type get_flow_metadata_output() :: #{binary() => any()}.


%% Example:
%% cast_column_type_operation() :: #{
%%   <<"ColumnName">> => string(),
%%   <<"Format">> => string(),
%%   <<"NewColumnType">> => list(any()),
%%   <<"SubType">> => list(any())
%% }
-type cast_column_type_operation() :: #{binary() => any()}.


%% Example:
%% custom_action_url_operation() :: #{
%%   <<"URLTarget">> => list(any()),
%%   <<"URLTemplate">> => string()
%% }
-type custom_action_url_operation() :: #{binary() => any()}.


%% Example:
%% selected_sheets_filter_scope_configuration() :: #{
%%   <<"SheetVisualScopingConfigurations">> => list(sheet_visual_scoping_configuration())
%% }
-type selected_sheets_filter_scope_configuration() :: #{binary() => any()}.


%% Example:
%% geospatial_null_data_settings() :: #{
%%   <<"SymbolStyle">> => geospatial_null_symbol_style()
%% }
-type geospatial_null_data_settings() :: #{binary() => any()}.


%% Example:
%% batch_create_topic_reviewed_answer_request() :: #{
%%   <<"Answers">> := list(create_topic_reviewed_answer())
%% }
-type batch_create_topic_reviewed_answer_request() :: #{binary() => any()}.


%% Example:
%% default_filter_list_control_options() :: #{
%%   <<"DisplayOptions">> => list_control_display_options(),
%%   <<"SelectableValues">> => filter_selectable_values(),
%%   <<"Type">> => list(any())
%% }
-type default_filter_list_control_options() :: #{binary() => any()}.


%% Example:
%% describe_data_set_permissions_response() :: #{
%%   <<"DataSetArn">> => string(),
%%   <<"DataSetId">> => string(),
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_data_set_permissions_response() :: #{binary() => any()}.


%% Example:
%% table_cell_image_sizing_configuration() :: #{
%%   <<"TableCellImageScalingConfiguration">> => list(any())
%% }
-type table_cell_image_sizing_configuration() :: #{binary() => any()}.


%% Example:
%% topic_numeric_range_filter() :: #{
%%   <<"Aggregation">> => list(any()),
%%   <<"Constant">> => topic_range_filter_constant(),
%%   <<"Inclusive">> => boolean()
%% }
-type topic_numeric_range_filter() :: #{binary() => any()}.


%% Example:
%% geospatial_polygon_symbol_style() :: #{
%%   <<"FillColor">> => geospatial_color(),
%%   <<"StrokeColor">> => geospatial_color(),
%%   <<"StrokeWidth">> => geospatial_line_width()
%% }
-type geospatial_polygon_symbol_style() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_source() :: #{
%%   <<"Body">> => binary(),
%%   <<"S3Uri">> => string()
%% }
-type asset_bundle_import_source() :: #{binary() => any()}.


%% Example:
%% topic_config_options() :: #{
%%   <<"QBusinessInsightsEnabled">> => boolean()
%% }
-type topic_config_options() :: #{binary() => any()}.


%% Example:
%% geospatial_map_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => geospatial_map_configuration(),
%%   <<"ColumnHierarchies">> => list(column_hierarchy()),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type geospatial_map_visual() :: #{binary() => any()}.


%% Example:
%% registered_user_console_feature_configurations() :: #{
%%   <<"AmazonQInQuickSight">> => amazon_q_in_quick_sight_console_configurations(),
%%   <<"RecentSnapshots">> => recent_snapshots_configurations(),
%%   <<"Schedules">> => schedules_configurations(),
%%   <<"SharedView">> => shared_view_configurations(),
%%   <<"StatePersistence">> => state_persistence_configurations(),
%%   <<"ThresholdAlerts">> => threshold_alerts_configurations()
%% }
-type registered_user_console_feature_configurations() :: #{binary() => any()}.


%% Example:
%% topic_i_r() :: #{
%%   <<"ContributionAnalysis">> => topic_i_r_contribution_analysis(),
%%   <<"Filters">> => list(list(topic_i_r_filter_option())()),
%%   <<"GroupByList">> => list(topic_i_r_group_by()),
%%   <<"Metrics">> => list(topic_i_r_metric()),
%%   <<"Sort">> => topic_sort_clause(),
%%   <<"Visual">> => visual_options()
%% }
-type topic_i_r() :: #{binary() => any()}.


%% Example:
%% snapshot_job_result_file_group() :: #{
%%   <<"Files">> => list(snapshot_file()),
%%   <<"S3Results">> => list(snapshot_job_s3_result())
%% }
-type snapshot_job_result_file_group() :: #{binary() => any()}.


%% Example:
%% o_auth_parameters() :: #{
%%   <<"IdentityProviderResourceUri">> => string(),
%%   <<"IdentityProviderVpcConnectionProperties">> => vpc_connection_properties(),
%%   <<"OAuthScope">> => string(),
%%   <<"TokenProviderUrl">> => string()
%% }
-type o_auth_parameters() :: #{binary() => any()}.


%% Example:
%% update_dashboard_links_response() :: #{
%%   <<"DashboardArn">> => string(),
%%   <<"LinkEntities">> => list(string()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_dashboard_links_response() :: #{binary() => any()}.


%% Example:
%% template_source_entity() :: #{
%%   <<"SourceAnalysis">> => template_source_analysis(),
%%   <<"SourceTemplate">> => template_source_template()
%% }
-type template_source_entity() :: #{binary() => any()}.


%% Example:
%% update_public_sharing_settings_request() :: #{
%%   <<"PublicSharingEnabled">> => boolean()
%% }
-type update_public_sharing_settings_request() :: #{binary() => any()}.


%% Example:
%% image() :: #{
%%   <<"GeneratedImageUrl">> => string(),
%%   <<"Source">> => list()
%% }
-type image() :: #{binary() => any()}.


%% Example:
%% create_account_subscription_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"SignupResponse">> => signup_response(),
%%   <<"Status">> => integer()
%% }
-type create_account_subscription_response() :: #{binary() => any()}.


%% Example:
%% collective_constant_entry() :: #{
%%   <<"ConstantType">> => list(any()),
%%   <<"Value">> => string()
%% }
-type collective_constant_entry() :: #{binary() => any()}.


%% Example:
%% spacing() :: #{
%%   <<"Bottom">> => string(),
%%   <<"Left">> => string(),
%%   <<"Right">> => string(),
%%   <<"Top">> => string()
%% }
-type spacing() :: #{binary() => any()}.


%% Example:
%% resource_exists_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type resource_exists_exception() :: #{binary() => any()}.


%% Example:
%% snapshot_user_configuration() :: #{
%%   <<"AnonymousUsers">> => list(snapshot_anonymous_user())
%% }
-type snapshot_user_configuration() :: #{binary() => any()}.


%% Example:
%% update_theme_permissions_request() :: #{
%%   <<"GrantPermissions">> => list(resource_permission()),
%%   <<"RevokePermissions">> => list(resource_permission())
%% }
-type update_theme_permissions_request() :: #{binary() => any()}.


%% Example:
%% donut_center_options() :: #{
%%   <<"LabelVisibility">> => list(any())
%% }
-type donut_center_options() :: #{binary() => any()}.

%% Example:
%% list_topic_refresh_schedules_request() :: #{}
-type list_topic_refresh_schedules_request() :: #{}.


%% Example:
%% describe_group_membership_response() :: #{
%%   <<"GroupMember">> => group_member(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_group_membership_response() :: #{binary() => any()}.


%% Example:
%% data_label_options() :: #{
%%   <<"CategoryLabelVisibility">> => list(any()),
%%   <<"DataLabelTypes">> => list(data_label_type()),
%%   <<"LabelColor">> => string(),
%%   <<"LabelContent">> => list(any()),
%%   <<"LabelFontConfiguration">> => font_configuration(),
%%   <<"MeasureLabelVisibility">> => list(any()),
%%   <<"Overlap">> => list(any()),
%%   <<"Position">> => list(any()),
%%   <<"TotalsVisibility">> => list(any()),
%%   <<"Visibility">> => list(any())
%% }
-type data_label_options() :: #{binary() => any()}.


%% Example:
%% geospatial_polygon_style() :: #{
%%   <<"PolygonSymbolStyle">> => geospatial_polygon_symbol_style()
%% }
-type geospatial_polygon_style() :: #{binary() => any()}.


%% Example:
%% column_configuration() :: #{
%%   <<"ColorsConfiguration">> => colors_configuration(),
%%   <<"Column">> => column_identifier(),
%%   <<"FormatConfiguration">> => format_configuration(),
%%   <<"Role">> => list(any())
%% }
-type column_configuration() :: #{binary() => any()}.


%% Example:
%% row_level_permission_tag_configuration() :: #{
%%   <<"Status">> => list(any()),
%%   <<"TagRuleConfigurations">> => list(list(string())()),
%%   <<"TagRules">> => list(row_level_permission_tag_rule())
%% }
-type row_level_permission_tag_configuration() :: #{binary() => any()}.


%% Example:
%% what_if_point_scenario() :: #{
%%   <<"Date">> => non_neg_integer(),
%%   <<"Value">> => float()
%% }
-type what_if_point_scenario() :: #{binary() => any()}.


%% Example:
%% describe_brand_response() :: #{
%%   <<"BrandDefinition">> => brand_definition(),
%%   <<"BrandDetail">> => brand_detail(),
%%   <<"RequestId">> => string()
%% }
-type describe_brand_response() :: #{binary() => any()}.


%% Example:
%% exasol_parameters() :: #{
%%   <<"Host">> => string(),
%%   <<"Port">> => integer()
%% }
-type exasol_parameters() :: #{binary() => any()}.


%% Example:
%% update_theme_alias_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"ThemeAlias">> => theme_alias()
%% }
-type update_theme_alias_response() :: #{binary() => any()}.


%% Example:
%% dashboard_publish_options() :: #{
%%   <<"AdHocFilteringOption">> => ad_hoc_filtering_option(),
%%   <<"DataPointDrillUpDownOption">> => data_point_drill_up_down_option(),
%%   <<"DataPointMenuLabelOption">> => data_point_menu_label_option(),
%%   <<"DataPointTooltipOption">> => data_point_tooltip_option(),
%%   <<"DataQAEnabledOption">> => data_q_a_enabled_option(),
%%   <<"DataStoriesSharingOption">> => data_stories_sharing_option(),
%%   <<"ExecutiveSummaryOption">> => executive_summary_option(),
%%   <<"ExportToCSVOption">> => export_to_csv_option(),
%%   <<"ExportWithHiddenFieldsOption">> => export_with_hidden_fields_option(),
%%   <<"QuickSuiteActionsOption">> => quick_suite_actions_option(),
%%   <<"SheetControlsOption">> => sheet_controls_option(),
%%   <<"SheetLayoutElementMaximizationOption">> => sheet_layout_element_maximization_option(),
%%   <<"VisualAxisSortOption">> => visual_axis_sort_option(),
%%   <<"VisualMenuOption">> => visual_menu_option(),
%%   <<"VisualPublishOptions">> => dashboard_visual_publish_options()
%% }
-type dashboard_publish_options() :: #{binary() => any()}.


%% Example:
%% list_template_aliases_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_template_aliases_request() :: #{binary() => any()}.


%% Example:
%% bar_chart_field_wells() :: #{
%%   <<"BarChartAggregatedFieldWells">> => bar_chart_aggregated_field_wells()
%% }
-type bar_chart_field_wells() :: #{binary() => any()}.

%% Example:
%% delete_folder_membership_request() :: #{}
-type delete_folder_membership_request() :: #{}.

%% Example:
%% delete_role_membership_request() :: #{}
-type delete_role_membership_request() :: #{}.


%% Example:
%% describe_action_connector_response() :: #{
%%   <<"ActionConnector">> => action_connector(),
%%   <<"RequestId">> => [string()],
%%   <<"Status">> => integer()
%% }
-type describe_action_connector_response() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_dashboard_override_parameters() :: #{
%%   <<"DashboardId">> => string(),
%%   <<"Name">> => string()
%% }
-type asset_bundle_import_job_dashboard_override_parameters() :: #{binary() => any()}.

%% Example:
%% delete_template_alias_request() :: #{}
-type delete_template_alias_request() :: #{}.


%% Example:
%% explicit_hierarchy() :: #{
%%   <<"Columns">> => list(column_identifier()),
%%   <<"DrillDownFilters">> => list(drill_down_filter()),
%%   <<"HierarchyId">> => string()
%% }
-type explicit_hierarchy() :: #{binary() => any()}.


%% Example:
%% delete_group_membership_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_group_membership_response() :: #{binary() => any()}.


%% Example:
%% geospatial_gradient_step_color() :: #{
%%   <<"Color">> => string(),
%%   <<"DataValue">> => float()
%% }
-type geospatial_gradient_step_color() :: #{binary() => any()}.


%% Example:
%% exclude_period_configuration() :: #{
%%   <<"Amount">> => integer(),
%%   <<"Granularity">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type exclude_period_configuration() :: #{binary() => any()}.


%% Example:
%% delete_group_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_group_response() :: #{binary() => any()}.


%% Example:
%% maximum_label_type() :: #{
%%   <<"Visibility">> => list(any())
%% }
-type maximum_label_type() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% registered_user_embedding_experience_configuration() :: #{
%%   <<"Dashboard">> => registered_user_dashboard_embedding_configuration(),
%%   <<"DashboardVisual">> => registered_user_dashboard_visual_embedding_configuration(),
%%   <<"GenerativeQnA">> => registered_user_generative_qn_a_embedding_configuration(),
%%   <<"QSearchBar">> => registered_user_q_search_bar_embedding_configuration(),
%%   <<"QuickSightConsole">> => registered_user_quick_sight_console_embedding_configuration()
%% }
-type registered_user_embedding_experience_configuration() :: #{binary() => any()}.


%% Example:
%% categorical_dimension_field() :: #{
%%   <<"Column">> => column_identifier(),
%%   <<"FieldId">> => string(),
%%   <<"FormatConfiguration">> => string_format_configuration(),
%%   <<"HierarchyId">> => string()
%% }
-type categorical_dimension_field() :: #{binary() => any()}.


%% Example:
%% asset_bundle_export_job_analysis_override_properties() :: #{
%%   <<"Arn">> => string(),
%%   <<"Properties">> => list(list(any())())
%% }
-type asset_bundle_export_job_analysis_override_properties() :: #{binary() => any()}.


%% Example:
%% brand_detail() :: #{
%%   <<"Arn">> => string(),
%%   <<"BrandId">> => string(),
%%   <<"BrandStatus">> => list(any()),
%%   <<"CreatedTime">> => [non_neg_integer()],
%%   <<"Errors">> => list(string()),
%%   <<"LastUpdatedTime">> => [non_neg_integer()],
%%   <<"Logo">> => logo(),
%%   <<"VersionId">> => string(),
%%   <<"VersionStatus">> => list(any())
%% }
-type brand_detail() :: #{binary() => any()}.


%% Example:
%% table_pinned_field_options() :: #{
%%   <<"PinnedLeftFields">> => list(string())
%% }
-type table_pinned_field_options() :: #{binary() => any()}.


%% Example:
%% parameter_selectable_values() :: #{
%%   <<"LinkToDataSetColumn">> => column_identifier(),
%%   <<"Values">> => list(string())
%% }
-type parameter_selectable_values() :: #{binary() => any()}.


%% Example:
%% reference_line_dynamic_data_configuration() :: #{
%%   <<"Calculation">> => numerical_aggregation_function(),
%%   <<"Column">> => column_identifier(),
%%   <<"MeasureAggregationFunction">> => aggregation_function()
%% }
-type reference_line_dynamic_data_configuration() :: #{binary() => any()}.


%% Example:
%% describe_ingestion_response() :: #{
%%   <<"Ingestion">> => ingestion(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_ingestion_response() :: #{binary() => any()}.


%% Example:
%% default_date_time_picker_control_options() :: #{
%%   <<"CommitMode">> => list(any()),
%%   <<"DisplayOptions">> => date_time_picker_control_display_options(),
%%   <<"Type">> => list(any())
%% }
-type default_date_time_picker_control_options() :: #{binary() => any()}.


%% Example:
%% time_equality_filter() :: #{
%%   <<"Column">> => column_identifier(),
%%   <<"DefaultFilterControlConfiguration">> => default_filter_control_configuration(),
%%   <<"FilterId">> => string(),
%%   <<"ParameterName">> => string(),
%%   <<"RollingDate">> => rolling_date_configuration(),
%%   <<"TimeGranularity">> => list(any()),
%%   <<"Value">> => non_neg_integer()
%% }
-type time_equality_filter() :: #{binary() => any()}.


%% Example:
%% forecast_scenario() :: #{
%%   <<"WhatIfPointScenario">> => what_if_point_scenario(),
%%   <<"WhatIfRangeScenario">> => what_if_range_scenario()
%% }
-type forecast_scenario() :: #{binary() => any()}.


%% Example:
%% update_action_connector_permissions_response() :: #{
%%   <<"ActionConnectorId">> => string(),
%%   <<"Arn">> => [string()],
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"RequestId">> => [string()],
%%   <<"Status">> => integer()
%% }
-type update_action_connector_permissions_response() :: #{binary() => any()}.


%% Example:
%% table_conditional_formatting_option() :: #{
%%   <<"Cell">> => table_cell_conditional_formatting(),
%%   <<"Row">> => table_row_conditional_formatting()
%% }
-type table_conditional_formatting_option() :: #{binary() => any()}.


%% Example:
%% topic_relative_date_filter() :: #{
%%   <<"Constant">> => topic_singular_filter_constant(),
%%   <<"RelativeDateFilterFunction">> => list(any()),
%%   <<"TimeGranularity">> => list(any())
%% }
-type topic_relative_date_filter() :: #{binary() => any()}.


%% Example:
%% describe_asset_bundle_import_job_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssetBundleImportJobId">> => string(),
%%   <<"AssetBundleImportSource">> => asset_bundle_import_source_description(),
%%   <<"AwsAccountId">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Errors">> => list(asset_bundle_import_job_error()),
%%   <<"FailureAction">> => list(any()),
%%   <<"JobStatus">> => list(any()),
%%   <<"OverrideParameters">> => asset_bundle_import_job_override_parameters(),
%%   <<"OverridePermissions">> => asset_bundle_import_job_override_permissions(),
%%   <<"OverrideTags">> => asset_bundle_import_job_override_tags(),
%%   <<"OverrideValidationStrategy">> => asset_bundle_import_job_override_validation_strategy(),
%%   <<"RequestId">> => string(),
%%   <<"RollbackErrors">> => list(asset_bundle_import_job_error()),
%%   <<"Status">> => integer(),
%%   <<"Warnings">> => list(asset_bundle_import_job_warning())
%% }
-type describe_asset_bundle_import_job_response() :: #{binary() => any()}.


%% Example:
%% update_folder_request() :: #{
%%   <<"Name">> := string()
%% }
-type update_folder_request() :: #{binary() => any()}.


%% Example:
%% filled_map_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => filled_map_configuration(),
%%   <<"ColumnHierarchies">> => list(column_hierarchy()),
%%   <<"ConditionalFormatting">> => filled_map_conditional_formatting(),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type filled_map_visual() :: #{binary() => any()}.


%% Example:
%% table_configuration() :: #{
%%   <<"FieldOptions">> => table_field_options(),
%%   <<"FieldWells">> => table_field_wells(),
%%   <<"Interactions">> => visual_interaction_options(),
%%   <<"PaginatedReportOptions">> => table_paginated_report_options(),
%%   <<"SortConfiguration">> => table_sort_configuration(),
%%   <<"TableInlineVisualizations">> => list(table_inline_visualization()),
%%   <<"TableOptions">> => table_options(),
%%   <<"TotalOptions">> => total_options()
%% }
-type table_configuration() :: #{binary() => any()}.


%% Example:
%% contribution_analysis_default() :: #{
%%   <<"ContributorDimensions">> => list(column_identifier()),
%%   <<"MeasureFieldId">> => string()
%% }
-type contribution_analysis_default() :: #{binary() => any()}.


%% Example:
%% word_cloud_field_wells() :: #{
%%   <<"WordCloudAggregatedFieldWells">> => word_cloud_aggregated_field_wells()
%% }
-type word_cloud_field_wells() :: #{binary() => any()}.


%% Example:
%% gauge_chart_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => gauge_chart_configuration(),
%%   <<"ConditionalFormatting">> => gauge_chart_conditional_formatting(),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type gauge_chart_visual() :: #{binary() => any()}.


%% Example:
%% plugin_visual_table_query_sort() :: #{
%%   <<"ItemsLimitConfiguration">> => plugin_visual_items_limit_configuration(),
%%   <<"RowSort">> => list(field_sort_options())
%% }
-type plugin_visual_table_query_sort() :: #{binary() => any()}.


%% Example:
%% date_time_value_when_unset_configuration() :: #{
%%   <<"CustomValue">> => non_neg_integer(),
%%   <<"ValueWhenUnsetOption">> => list(any())
%% }
-type date_time_value_when_unset_configuration() :: #{binary() => any()}.


%% Example:
%% percent_visible_range() :: #{
%%   <<"From">> => float(),
%%   <<"To">> => float()
%% }
-type percent_visible_range() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_vpc_connection_override_parameters() :: #{
%%   <<"DnsResolvers">> => list(string()),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SubnetIds">> => list(string()),
%%   <<"VPCConnectionId">> => string()
%% }
-type asset_bundle_import_job_vpc_connection_override_parameters() :: #{binary() => any()}.


%% Example:
%% histogram_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => histogram_configuration(),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type histogram_visual() :: #{binary() => any()}.


%% Example:
%% gradient_stop() :: #{
%%   <<"Color">> => string(),
%%   <<"DataValue">> => float(),
%%   <<"GradientOffset">> => float()
%% }
-type gradient_stop() :: #{binary() => any()}.


%% Example:
%% update_action_connector_request() :: #{
%%   <<"AuthenticationConfig">> := auth_config(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"VpcConnectionArn">> => string()
%% }
-type update_action_connector_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type tag_resource_response() :: #{binary() => any()}.


%% Example:
%% update_brand_assignment_response() :: #{
%%   <<"BrandArn">> => string(),
%%   <<"RequestId">> => string()
%% }
-type update_brand_assignment_response() :: #{binary() => any()}.


%% Example:
%% box_plot_chart_configuration() :: #{
%%   <<"BoxPlotOptions">> => box_plot_options(),
%%   <<"CategoryAxis">> => axis_display_options(),
%%   <<"CategoryLabelOptions">> => chart_axis_label_options(),
%%   <<"FieldWells">> => box_plot_field_wells(),
%%   <<"Interactions">> => visual_interaction_options(),
%%   <<"Legend">> => legend_options(),
%%   <<"PrimaryYAxisDisplayOptions">> => axis_display_options(),
%%   <<"PrimaryYAxisLabelOptions">> => chart_axis_label_options(),
%%   <<"ReferenceLines">> => list(reference_line()),
%%   <<"SortConfiguration">> => box_plot_sort_configuration(),
%%   <<"Tooltip">> => tooltip_options(),
%%   <<"VisualPalette">> => visual_palette()
%% }
-type box_plot_chart_configuration() :: #{binary() => any()}.


%% Example:
%% dashboard_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DashboardId">> => string(),
%%   <<"LastPublishedTime">> => non_neg_integer(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"PublishedVersionNumber">> => float()
%% }
-type dashboard_summary() :: #{binary() => any()}.


%% Example:
%% date_time_format_configuration() :: #{
%%   <<"DateTimeFormat">> => string(),
%%   <<"NullValueFormatConfiguration">> => null_value_format_configuration(),
%%   <<"NumericFormatConfiguration">> => numeric_format_configuration()
%% }
-type date_time_format_configuration() :: #{binary() => any()}.


%% Example:
%% delete_template_alias_response() :: #{
%%   <<"AliasName">> => string(),
%%   <<"Arn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TemplateId">> => string()
%% }
-type delete_template_alias_response() :: #{binary() => any()}.


%% Example:
%% short_format_text() :: #{
%%   <<"PlainText">> => string(),
%%   <<"RichText">> => string()
%% }
-type short_format_text() :: #{binary() => any()}.


%% Example:
%% tree_map_aggregated_field_wells() :: #{
%%   <<"Colors">> => list(measure_field()),
%%   <<"Groups">> => list(dimension_field()),
%%   <<"Sizes">> => list(measure_field())
%% }
-type tree_map_aggregated_field_wells() :: #{binary() => any()}.


%% Example:
%% big_query_parameters() :: #{
%%   <<"DataSetRegion">> => string(),
%%   <<"ProjectId">> => string()
%% }
-type big_query_parameters() :: #{binary() => any()}.


%% Example:
%% start_dashboard_snapshot_job_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"SnapshotJobId">> => string(),
%%   <<"Status">> => integer()
%% }
-type start_dashboard_snapshot_job_response() :: #{binary() => any()}.


%% Example:
%% field_series_item() :: #{
%%   <<"AxisBinding">> => list(any()),
%%   <<"FieldId">> => string(),
%%   <<"Settings">> => line_chart_series_settings()
%% }
-type field_series_item() :: #{binary() => any()}.


%% Example:
%% visual_title_label_options() :: #{
%%   <<"FormatText">> => short_format_text(),
%%   <<"Visibility">> => list(any())
%% }
-type visual_title_label_options() :: #{binary() => any()}.


%% Example:
%% default_slider_control_options() :: #{
%%   <<"DisplayOptions">> => slider_control_display_options(),
%%   <<"MaximumValue">> => float(),
%%   <<"MinimumValue">> => float(),
%%   <<"StepSize">> => float(),
%%   <<"Type">> => list(any())
%% }
-type default_slider_control_options() :: #{binary() => any()}.


%% Example:
%% read_none_connection_metadata() :: #{
%%   <<"BaseEndpoint">> => string()
%% }
-type read_none_connection_metadata() :: #{binary() => any()}.


%% Example:
%% join_key_properties() :: #{
%%   <<"UniqueKey">> => boolean()
%% }
-type join_key_properties() :: #{binary() => any()}.

%% Example:
%% describe_dashboard_permissions_request() :: #{}
-type describe_dashboard_permissions_request() :: #{}.


%% Example:
%% delete_theme_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"ThemeId">> => string()
%% }
-type delete_theme_response() :: #{binary() => any()}.


%% Example:
%% theme_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"LatestVersionNumber">> => float(),
%%   <<"Name">> => string(),
%%   <<"ThemeId">> => string()
%% }
-type theme_summary() :: #{binary() => any()}.


%% Example:
%% topic_column() :: #{
%%   <<"Aggregation">> => list(any()),
%%   <<"AllowedAggregations">> => list(list(any())()),
%%   <<"CellValueSynonyms">> => list(cell_value_synonym()),
%%   <<"ColumnDataRole">> => list(any()),
%%   <<"ColumnDescription">> => string(),
%%   <<"ColumnFriendlyName">> => string(),
%%   <<"ColumnName">> => string(),
%%   <<"ColumnSynonyms">> => list(string()),
%%   <<"ComparativeOrder">> => comparative_order(),
%%   <<"DefaultFormatting">> => default_formatting(),
%%   <<"DisableIndexing">> => boolean(),
%%   <<"IsIncludedInTopic">> => boolean(),
%%   <<"NeverAggregateInFilter">> => boolean(),
%%   <<"NonAdditive">> => boolean(),
%%   <<"NotAllowedAggregations">> => list(list(any())()),
%%   <<"SemanticType">> => semantic_type(),
%%   <<"TimeGranularity">> => list(any())
%% }
-type topic_column() :: #{binary() => any()}.


%% Example:
%% asset_options() :: #{
%%   <<"CustomActionDefaults">> => visual_custom_action_defaults(),
%%   <<"ExcludedDataSetArns">> => list(string()),
%%   <<"QBusinessInsightsStatus">> => list(any()),
%%   <<"Timezone">> => string(),
%%   <<"WeekStart">> => list(any())
%% }
-type asset_options() :: #{binary() => any()}.


%% Example:
%% presto_parameters() :: #{
%%   <<"Catalog">> => string(),
%%   <<"Host">> => string(),
%%   <<"Port">> => integer()
%% }
-type presto_parameters() :: #{binary() => any()}.


%% Example:
%% pivot_table_sort_by() :: #{
%%   <<"Column">> => column_sort(),
%%   <<"DataPath">> => data_path_sort(),
%%   <<"Field">> => field_sort()
%% }
-type pivot_table_sort_by() :: #{binary() => any()}.

%% Example:
%% describe_user_request() :: #{}
-type describe_user_request() :: #{}.


%% Example:
%% period_over_period_computation() :: #{
%%   <<"ComputationId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Time">> => dimension_field(),
%%   <<"Value">> => measure_field()
%% }
-type period_over_period_computation() :: #{binary() => any()}.


%% Example:
%% chart_axis_label_options() :: #{
%%   <<"AxisLabelOptions">> => list(axis_label_options()),
%%   <<"SortIconVisibility">> => list(any()),
%%   <<"Visibility">> => list(any())
%% }
-type chart_axis_label_options() :: #{binary() => any()}.


%% Example:
%% visual_options() :: #{
%%   <<"type">> => string()
%% }
-type visual_options() :: #{binary() => any()}.


%% Example:
%% update_data_set_permissions_response() :: #{
%%   <<"DataSetArn">> => string(),
%%   <<"DataSetId">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_data_set_permissions_response() :: #{binary() => any()}.


%% Example:
%% update_topic_permissions_request() :: #{
%%   <<"GrantPermissions">> => list(resource_permission()),
%%   <<"RevokePermissions">> => list(resource_permission())
%% }
-type update_topic_permissions_request() :: #{binary() => any()}.


%% Example:
%% waterfall_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => waterfall_chart_configuration(),
%%   <<"ColumnHierarchies">> => list(column_hierarchy()),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type waterfall_visual() :: #{binary() => any()}.


%% Example:
%% text_box_menu_option() :: #{
%%   <<"AvailabilityStatus">> => list(any())
%% }
-type text_box_menu_option() :: #{binary() => any()}.


%% Example:
%% plugin_visual_property() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type plugin_visual_property() :: #{binary() => any()}.


%% Example:
%% sheet_element_configuration_overrides() :: #{
%%   <<"Visibility">> => list(any())
%% }
-type sheet_element_configuration_overrides() :: #{binary() => any()}.


%% Example:
%% account_settings() :: #{
%%   <<"AccountName">> => string(),
%%   <<"DefaultNamespace">> => string(),
%%   <<"Edition">> => list(any()),
%%   <<"NotificationEmail">> => string(),
%%   <<"PublicSharingEnabled">> => boolean(),
%%   <<"TerminationProtectionEnabled">> => boolean()
%% }
-type account_settings() :: #{binary() => any()}.


%% Example:
%% number_display_format_configuration() :: #{
%%   <<"DecimalPlacesConfiguration">> => decimal_places_configuration(),
%%   <<"NegativeValueConfiguration">> => negative_value_configuration(),
%%   <<"NullValueFormatConfiguration">> => null_value_format_configuration(),
%%   <<"NumberScale">> => list(any()),
%%   <<"Prefix">> => string(),
%%   <<"SeparatorConfiguration">> => numeric_separator_configuration(),
%%   <<"Suffix">> => string()
%% }
-type number_display_format_configuration() :: #{binary() => any()}.


%% Example:
%% failed_key_registration_entry() :: #{
%%   <<"KeyArn">> => string(),
%%   <<"Message">> => string(),
%%   <<"SenderFault">> => boolean(),
%%   <<"StatusCode">> => integer()
%% }
-type failed_key_registration_entry() :: #{binary() => any()}.


%% Example:
%% calculated_measure_field() :: #{
%%   <<"Expression">> => string(),
%%   <<"FieldId">> => string()
%% }
-type calculated_measure_field() :: #{binary() => any()}.


%% Example:
%% category_filter() :: #{
%%   <<"Column">> => column_identifier(),
%%   <<"Configuration">> => category_filter_configuration(),
%%   <<"DefaultFilterControlConfiguration">> => default_filter_control_configuration(),
%%   <<"FilterId">> => string()
%% }
-type category_filter() :: #{binary() => any()}.


%% Example:
%% vpc_connection_properties() :: #{
%%   <<"VpcConnectionArn">> => string()
%% }
-type vpc_connection_properties() :: #{binary() => any()}.


%% Example:
%% percentage_display_format_configuration() :: #{
%%   <<"DecimalPlacesConfiguration">> => decimal_places_configuration(),
%%   <<"NegativeValueConfiguration">> => negative_value_configuration(),
%%   <<"NullValueFormatConfiguration">> => null_value_format_configuration(),
%%   <<"Prefix">> => string(),
%%   <<"SeparatorConfiguration">> => numeric_separator_configuration(),
%%   <<"Suffix">> => string()
%% }
-type percentage_display_format_configuration() :: #{binary() => any()}.


%% Example:
%% create_namespace_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CapacityRegion">> => string(),
%%   <<"CreationStatus">> => list(any()),
%%   <<"IdentityStore">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type create_namespace_response() :: #{binary() => any()}.


%% Example:
%% list_flows_output() :: #{
%%   <<"FlowSummaryList">> => list(flow_summary()),
%%   <<"NextToken">> => [string()],
%%   <<"RequestId">> => [string()],
%%   <<"Status">> => integer()
%% }
-type list_flows_output() :: #{binary() => any()}.


%% Example:
%% update_user_request() :: #{
%%   <<"CustomFederationProviderUrl">> => string(),
%%   <<"CustomPermissionsName">> => string(),
%%   <<"Email">> := string(),
%%   <<"ExternalLoginFederationProviderType">> => string(),
%%   <<"ExternalLoginId">> => string(),
%%   <<"Role">> := list(any()),
%%   <<"UnapplyCustomPermissions">> => boolean()
%% }
-type update_user_request() :: #{binary() => any()}.


%% Example:
%% topic_i_r_group_by() :: #{
%%   <<"DisplayFormat">> => list(any()),
%%   <<"DisplayFormatOptions">> => display_format_options(),
%%   <<"FieldName">> => identifier(),
%%   <<"NamedEntity">> => named_entity_ref(),
%%   <<"Sort">> => topic_sort_clause(),
%%   <<"TimeGranularity">> => list(any())
%% }
-type topic_i_r_group_by() :: #{binary() => any()}.


%% Example:
%% create_role_membership_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type create_role_membership_response() :: #{binary() => any()}.


%% Example:
%% sheet_control_info_icon_label_options() :: #{
%%   <<"InfoIconText">> => string(),
%%   <<"Visibility">> => list(any())
%% }
-type sheet_control_info_icon_label_options() :: #{binary() => any()}.


%% Example:
%% list_templates_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TemplateSummaryList">> => list(template_summary())
%% }
-type list_templates_response() :: #{binary() => any()}.


%% Example:
%% update_data_source_permissions_response() :: #{
%%   <<"DataSourceArn">> => string(),
%%   <<"DataSourceId">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_data_source_permissions_response() :: #{binary() => any()}.


%% Example:
%% auth_config() :: #{
%%   <<"AuthenticationMetadata">> => list(),
%%   <<"AuthenticationType">> => list(any())
%% }
-type auth_config() :: #{binary() => any()}.


%% Example:
%% delete_analysis_response() :: #{
%%   <<"AnalysisId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"DeletionTime">> => non_neg_integer(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_analysis_response() :: #{binary() => any()}.


%% Example:
%% s3_bucket_configuration() :: #{
%%   <<"BucketName">> => string(),
%%   <<"BucketPrefix">> => string(),
%%   <<"BucketRegion">> => string()
%% }
-type s3_bucket_configuration() :: #{binary() => any()}.


%% Example:
%% credential_pair() :: #{
%%   <<"AlternateDataSourceParameters">> => list(list()),
%%   <<"Password">> => string(),
%%   <<"Username">> => string()
%% }
-type credential_pair() :: #{binary() => any()}.


%% Example:
%% column_group_schema() :: #{
%%   <<"ColumnGroupColumnSchemaList">> => list(column_group_column_schema()),
%%   <<"Name">> => string()
%% }
-type column_group_schema() :: #{binary() => any()}.


%% Example:
%% amazon_open_search_parameters() :: #{
%%   <<"Domain">> => string()
%% }
-type amazon_open_search_parameters() :: #{binary() => any()}.


%% Example:
%% sheet() :: #{
%%   <<"Images">> => list(sheet_image()),
%%   <<"Name">> => string(),
%%   <<"SheetId">> => string()
%% }
-type sheet() :: #{binary() => any()}.


%% Example:
%% heat_map_configuration() :: #{
%%   <<"ColorScale">> => color_scale(),
%%   <<"ColumnAxisDisplayOptions">> => axis_display_options(),
%%   <<"ColumnLabelOptions">> => chart_axis_label_options(),
%%   <<"DataLabels">> => data_label_options(),
%%   <<"FieldWells">> => heat_map_field_wells(),
%%   <<"Interactions">> => visual_interaction_options(),
%%   <<"Legend">> => legend_options(),
%%   <<"RowAxisDisplayOptions">> => axis_display_options(),
%%   <<"RowLabelOptions">> => chart_axis_label_options(),
%%   <<"SortConfiguration">> => heat_map_sort_configuration(),
%%   <<"Tooltip">> => tooltip_options()
%% }
-type heat_map_configuration() :: #{binary() => any()}.


%% Example:
%% update_custom_permissions_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_custom_permissions_response() :: #{binary() => any()}.


%% Example:
%% image_static_file() :: #{
%%   <<"Source">> => static_file_source(),
%%   <<"StaticFileId">> => string()
%% }
-type image_static_file() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_folders_for_resource_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_folders_for_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_action_connector_request() :: #{}
-type delete_action_connector_request() :: #{}.


%% Example:
%% group_search_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Operator">> => list(any()),
%%   <<"Value">> => string()
%% }
-type group_search_filter() :: #{binary() => any()}.


%% Example:
%% decimal_parameter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(float())
%% }
-type decimal_parameter() :: #{binary() => any()}.


%% Example:
%% categorical_measure_field() :: #{
%%   <<"AggregationFunction">> => list(any()),
%%   <<"Column">> => column_identifier(),
%%   <<"FieldId">> => string(),
%%   <<"FormatConfiguration">> => string_format_configuration()
%% }
-type categorical_measure_field() :: #{binary() => any()}.


%% Example:
%% gradient_color() :: #{
%%   <<"Stops">> => list(gradient_stop())
%% }
-type gradient_color() :: #{binary() => any()}.


%% Example:
%% topic_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Name">> => string(),
%%   <<"TopicId">> => string(),
%%   <<"UserExperienceVersion">> => list(any())
%% }
-type topic_summary() :: #{binary() => any()}.


%% Example:
%% delete_account_custom_permission_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_account_custom_permission_response() :: #{binary() => any()}.


%% Example:
%% delete_folder_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"FolderId">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_folder_response() :: #{binary() => any()}.


%% Example:
%% get_session_embed_url_request() :: #{
%%   <<"EntryPoint">> => string(),
%%   <<"SessionLifetimeInMinutes">> => float(),
%%   <<"UserArn">> => string()
%% }
-type get_session_embed_url_request() :: #{binary() => any()}.


%% Example:
%% snapshot_user_configuration_redacted() :: #{
%%   <<"AnonymousUsers">> => list(snapshot_anonymous_user_redacted())
%% }
-type snapshot_user_configuration_redacted() :: #{binary() => any()}.


%% Example:
%% border_style() :: #{
%%   <<"Show">> => boolean()
%% }
-type border_style() :: #{binary() => any()}.


%% Example:
%% plugin_visual_items_limit_configuration() :: #{
%%   <<"ItemsLimit">> => float()
%% }
-type plugin_visual_items_limit_configuration() :: #{binary() => any()}.


%% Example:
%% logical_table_source() :: #{
%%   <<"DataSetArn">> => string(),
%%   <<"JoinInstruction">> => join_instruction(),
%%   <<"PhysicalTableId">> => string()
%% }
-type logical_table_source() :: #{binary() => any()}.

%% Example:
%% describe_topic_refresh_request() :: #{}
-type describe_topic_refresh_request() :: #{}.


%% Example:
%% sankey_diagram_aggregated_field_wells() :: #{
%%   <<"Destination">> => list(dimension_field()),
%%   <<"Source">> => list(dimension_field()),
%%   <<"Weight">> => list(measure_field())
%% }
-type sankey_diagram_aggregated_field_wells() :: #{binary() => any()}.

%% Example:
%% delete_group_membership_request() :: #{}
-type delete_group_membership_request() :: #{}.


%% Example:
%% pivot_table_data_path_option() :: #{
%%   <<"DataPathList">> => list(data_path_value()),
%%   <<"Width">> => string()
%% }
-type pivot_table_data_path_option() :: #{binary() => any()}.


%% Example:
%% identity_center_configuration() :: #{
%%   <<"EnableIdentityPropagation">> => boolean()
%% }
-type identity_center_configuration() :: #{binary() => any()}.


%% Example:
%% describe_iam_policy_assignment_response() :: #{
%%   <<"IAMPolicyAssignment">> => iam_policy_assignment(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_iam_policy_assignment_response() :: #{binary() => any()}.


%% Example:
%% pivot_table_options() :: #{
%%   <<"CellStyle">> => table_cell_style(),
%%   <<"CollapsedRowDimensionsVisibility">> => list(any()),
%%   <<"ColumnHeaderStyle">> => table_cell_style(),
%%   <<"ColumnNamesVisibility">> => list(any()),
%%   <<"DefaultCellWidth">> => string(),
%%   <<"MetricPlacement">> => list(any()),
%%   <<"RowAlternateColorOptions">> => row_alternate_color_options(),
%%   <<"RowFieldNamesStyle">> => table_cell_style(),
%%   <<"RowHeaderStyle">> => table_cell_style(),
%%   <<"RowsLabelOptions">> => pivot_table_rows_label_options(),
%%   <<"RowsLayout">> => list(any()),
%%   <<"SingleMetricVisibility">> => list(any()),
%%   <<"ToggleButtonsVisibility">> => list(any())
%% }
-type pivot_table_options() :: #{binary() => any()}.


%% Example:
%% successful_key_registration_entry() :: #{
%%   <<"KeyArn">> => string(),
%%   <<"StatusCode">> => integer()
%% }
-type successful_key_registration_entry() :: #{binary() => any()}.


%% Example:
%% delete_topic_refresh_schedule_response() :: #{
%%   <<"DatasetArn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TopicArn">> => string(),
%%   <<"TopicId">> => string()
%% }
-type delete_topic_refresh_schedule_response() :: #{binary() => any()}.


%% Example:
%% table_field_url_configuration() :: #{
%%   <<"ImageConfiguration">> => table_field_image_configuration(),
%%   <<"LinkConfiguration">> => table_field_link_configuration()
%% }
-type table_field_url_configuration() :: #{binary() => any()}.


%% Example:
%% collective_constant() :: #{
%%   <<"ValueList">> => list(string())
%% }
-type collective_constant() :: #{binary() => any()}.


%% Example:
%% section_layout_configuration() :: #{
%%   <<"FreeFormLayout">> => free_form_section_layout_configuration()
%% }
-type section_layout_configuration() :: #{binary() => any()}.


%% Example:
%% k_p_i_conditional_formatting() :: #{
%%   <<"ConditionalFormattingOptions">> => list(k_p_i_conditional_formatting_option())
%% }
-type k_p_i_conditional_formatting() :: #{binary() => any()}.


%% Example:
%% describe_template_alias_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TemplateAlias">> => template_alias()
%% }
-type describe_template_alias_response() :: #{binary() => any()}.


%% Example:
%% sheet_style() :: #{
%%   <<"Tile">> => tile_style(),
%%   <<"TileLayout">> => tile_layout_style()
%% }
-type sheet_style() :: #{binary() => any()}.


%% Example:
%% update_data_source_request() :: #{
%%   <<"Credentials">> => data_source_credentials(),
%%   <<"DataSourceParameters">> => list(),
%%   <<"Name">> := string(),
%%   <<"SslProperties">> => ssl_properties(),
%%   <<"VpcConnectionProperties">> => vpc_connection_properties()
%% }
-type update_data_source_request() :: #{binary() => any()}.


%% Example:
%% custom_instructions() :: #{
%%   <<"CustomInstructionsString">> => string()
%% }
-type custom_instructions() :: #{binary() => any()}.


%% Example:
%% update_s_p_i_c_e_capacity_configuration_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_s_p_i_c_e_capacity_configuration_response() :: #{binary() => any()}.


%% Example:
%% time_range_filter() :: #{
%%   <<"Column">> => column_identifier(),
%%   <<"DefaultFilterControlConfiguration">> => default_filter_control_configuration(),
%%   <<"ExcludePeriodConfiguration">> => exclude_period_configuration(),
%%   <<"FilterId">> => string(),
%%   <<"IncludeMaximum">> => boolean(),
%%   <<"IncludeMinimum">> => boolean(),
%%   <<"NullOption">> => list(any()),
%%   <<"RangeMaximumValue">> => time_range_filter_value(),
%%   <<"RangeMinimumValue">> => time_range_filter_value(),
%%   <<"TimeGranularity">> => list(any())
%% }
-type time_range_filter() :: #{binary() => any()}.


%% Example:
%% describe_topic_refresh_schedule_response() :: #{
%%   <<"DatasetArn">> => string(),
%%   <<"RefreshSchedule">> => topic_refresh_schedule(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TopicArn">> => string(),
%%   <<"TopicId">> => string()
%% }
-type describe_topic_refresh_schedule_response() :: #{binary() => any()}.


%% Example:
%% describe_default_q_business_application_request() :: #{
%%   <<"Namespace">> => string()
%% }
-type describe_default_q_business_application_request() :: #{binary() => any()}.


%% Example:
%% cancel_ingestion_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"IngestionId">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type cancel_ingestion_response() :: #{binary() => any()}.


%% Example:
%% list_control_search_options() :: #{
%%   <<"Visibility">> => list(any())
%% }
-type list_control_search_options() :: #{binary() => any()}.


%% Example:
%% list_theme_aliases_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_theme_aliases_request() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_folder_override_tags() :: #{
%%   <<"FolderIds">> => list(string()),
%%   <<"Tags">> => list(tag())
%% }
-type asset_bundle_import_job_folder_override_tags() :: #{binary() => any()}.


%% Example:
%% table_cell_style() :: #{
%%   <<"BackgroundColor">> => string(),
%%   <<"Border">> => global_table_border_options(),
%%   <<"FontConfiguration">> => font_configuration(),
%%   <<"Height">> => integer(),
%%   <<"HorizontalTextAlignment">> => list(any()),
%%   <<"TextWrap">> => list(any()),
%%   <<"VerticalTextAlignment">> => list(any()),
%%   <<"Visibility">> => list(any())
%% }
-type table_cell_style() :: #{binary() => any()}.


%% Example:
%% geospatial_line_symbol_style() :: #{
%%   <<"FillColor">> => geospatial_color(),
%%   <<"LineWidth">> => geospatial_line_width()
%% }
-type geospatial_line_symbol_style() :: #{binary() => any()}.


%% Example:
%% list_namespaces_response() :: #{
%%   <<"Namespaces">> => list(namespace_info_v2()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type list_namespaces_response() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% data_color() :: #{
%%   <<"Color">> => string(),
%%   <<"DataValue">> => float()
%% }
-type data_color() :: #{binary() => any()}.


%% Example:
%% font_weight() :: #{
%%   <<"Name">> => list(any())
%% }
-type font_weight() :: #{binary() => any()}.


%% Example:
%% group() :: #{
%%   <<"Arn">> => string(),
%%   <<"Description">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"PrincipalId">> => string()
%% }
-type group() :: #{binary() => any()}.


%% Example:
%% delete_topic_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TopicId">> => string()
%% }
-type delete_topic_response() :: #{binary() => any()}.


%% Example:
%% dashboard_source_template() :: #{
%%   <<"Arn">> => string(),
%%   <<"DataSetReferences">> => list(data_set_reference())
%% }
-type dashboard_source_template() :: #{binary() => any()}.


%% Example:
%% list_folder_members_response() :: #{
%%   <<"FolderMemberList">> => list(member_id_arn_pair()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type list_folder_members_response() :: #{binary() => any()}.


%% Example:
%% word_cloud_sort_configuration() :: #{
%%   <<"CategoryItemsLimit">> => items_limit_configuration(),
%%   <<"CategorySort">> => list(field_sort_options())
%% }
-type word_cloud_sort_configuration() :: #{binary() => any()}.


%% Example:
%% user() :: #{
%%   <<"Active">> => boolean(),
%%   <<"Arn">> => string(),
%%   <<"CustomPermissionsName">> => string(),
%%   <<"Email">> => string(),
%%   <<"ExternalLoginFederationProviderType">> => string(),
%%   <<"ExternalLoginFederationProviderUrl">> => string(),
%%   <<"ExternalLoginId">> => string(),
%%   <<"IdentityType">> => list(any()),
%%   <<"PrincipalId">> => string(),
%%   <<"Role">> => list(any()),
%%   <<"UserName">> => string()
%% }
-type user() :: #{binary() => any()}.


%% Example:
%% arc_axis_configuration() :: #{
%%   <<"Range">> => arc_axis_display_range(),
%%   <<"ReserveRange">> => integer()
%% }
-type arc_axis_configuration() :: #{binary() => any()}.


%% Example:
%% visual_custom_action_defaults() :: #{
%%   <<"highlightOperation">> => visual_highlight_operation()
%% }
-type visual_custom_action_defaults() :: #{binary() => any()}.


%% Example:
%% snapshot_job_result_error_info() :: #{
%%   <<"ErrorMessage">> => string(),
%%   <<"ErrorType">> => string()
%% }
-type snapshot_job_result_error_info() :: #{binary() => any()}.

%% Example:
%% describe_group_request() :: #{}
-type describe_group_request() :: #{}.


%% Example:
%% web_proxy_credentials() :: #{
%%   <<"WebProxyPassword">> => string(),
%%   <<"WebProxyUsername">> => string()
%% }
-type web_proxy_credentials() :: #{binary() => any()}.


%% Example:
%% list_user_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_user_groups_request() :: #{binary() => any()}.


%% Example:
%% radar_chart_area_style_settings() :: #{
%%   <<"Visibility">> => list(any())
%% }
-type radar_chart_area_style_settings() :: #{binary() => any()}.


%% Example:
%% update_folder_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"FolderId">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_folder_response() :: #{binary() => any()}.


%% Example:
%% databricks_parameters() :: #{
%%   <<"Host">> => string(),
%%   <<"Port">> => integer(),
%%   <<"SqlEndpointPath">> => string()
%% }
-type databricks_parameters() :: #{binary() => any()}.


%% Example:
%% sankey_diagram_sort_configuration() :: #{
%%   <<"DestinationItemsLimit">> => items_limit_configuration(),
%%   <<"SourceItemsLimit">> => items_limit_configuration(),
%%   <<"WeightSort">> => list(field_sort_options())
%% }
-type sankey_diagram_sort_configuration() :: #{binary() => any()}.


%% Example:
%% layer_custom_action_operation() :: #{
%%   <<"FilterOperation">> => custom_action_filter_operation(),
%%   <<"NavigationOperation">> => custom_action_navigation_operation(),
%%   <<"SetParametersOperation">> => custom_action_set_parameters_operation(),
%%   <<"URLOperation">> => custom_action_url_operation()
%% }
-type layer_custom_action_operation() :: #{binary() => any()}.


%% Example:
%% describe_account_settings_response() :: #{
%%   <<"AccountSettings">> => account_settings(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_account_settings_response() :: #{binary() => any()}.


%% Example:
%% data_stories_sharing_option() :: #{
%%   <<"AvailabilityStatus">> => list(any())
%% }
-type data_stories_sharing_option() :: #{binary() => any()}.


%% Example:
%% update_ip_restriction_request() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"IpRestrictionRuleMap">> => map(),
%%   <<"VpcEndpointIdRestrictionRuleMap">> => map(),
%%   <<"VpcIdRestrictionRuleMap">> => map()
%% }
-type update_ip_restriction_request() :: #{binary() => any()}.


%% Example:
%% folder() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"FolderId">> => string(),
%%   <<"FolderPath">> => list(string()),
%%   <<"FolderType">> => list(any()),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"SharingModel">> => list(any())
%% }
-type folder() :: #{binary() => any()}.


%% Example:
%% filter_scope_configuration() :: #{
%%   <<"AllSheets">> => all_sheets_filter_scope_configuration(),
%%   <<"SelectedSheets">> => selected_sheets_filter_scope_configuration()
%% }
-type filter_scope_configuration() :: #{binary() => any()}.

%% Example:
%% delete_namespace_request() :: #{}
-type delete_namespace_request() :: #{}.


%% Example:
%% geospatial_map_aggregated_field_wells() :: #{
%%   <<"Colors">> => list(dimension_field()),
%%   <<"Geospatial">> => list(dimension_field()),
%%   <<"Values">> => list(measure_field())
%% }
-type geospatial_map_aggregated_field_wells() :: #{binary() => any()}.


%% Example:
%% create_dashboard_request() :: #{
%%   <<"DashboardPublishOptions">> => dashboard_publish_options(),
%%   <<"Definition">> => dashboard_version_definition(),
%%   <<"FolderArns">> => list(string()),
%%   <<"LinkEntities">> => list(string()),
%%   <<"LinkSharingConfiguration">> => link_sharing_configuration(),
%%   <<"Name">> := string(),
%%   <<"Parameters">> => parameters(),
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"SourceEntity">> => dashboard_source_entity(),
%%   <<"Tags">> => list(tag()),
%%   <<"ThemeArn">> => string(),
%%   <<"ValidationStrategy">> => validation_strategy(),
%%   <<"VersionDescription">> => string()
%% }
-type create_dashboard_request() :: #{binary() => any()}.

%% Example:
%% delete_brand_assignment_request() :: #{}
-type delete_brand_assignment_request() :: #{}.


%% Example:
%% iam_policy_assignment_summary() :: #{
%%   <<"AssignmentName">> => string(),
%%   <<"AssignmentStatus">> => list(any())
%% }
-type iam_policy_assignment_summary() :: #{binary() => any()}.


%% Example:
%% visual_custom_action() :: #{
%%   <<"ActionOperations">> => list(visual_custom_action_operation()),
%%   <<"CustomActionId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Trigger">> => list(any())
%% }
-type visual_custom_action() :: #{binary() => any()}.


%% Example:
%% visual_custom_action_operation() :: #{
%%   <<"FilterOperation">> => custom_action_filter_operation(),
%%   <<"NavigationOperation">> => custom_action_navigation_operation(),
%%   <<"SetParametersOperation">> => custom_action_set_parameters_operation(),
%%   <<"URLOperation">> => custom_action_url_operation()
%% }
-type visual_custom_action_operation() :: #{binary() => any()}.


%% Example:
%% measure_field() :: #{
%%   <<"CalculatedMeasureField">> => calculated_measure_field(),
%%   <<"CategoricalMeasureField">> => categorical_measure_field(),
%%   <<"DateMeasureField">> => date_measure_field(),
%%   <<"NumericalMeasureField">> => numerical_measure_field()
%% }
-type measure_field() :: #{binary() => any()}.


%% Example:
%% decimal_default_values() :: #{
%%   <<"DynamicValue">> => dynamic_default_value(),
%%   <<"StaticValues">> => list(float())
%% }
-type decimal_default_values() :: #{binary() => any()}.


%% Example:
%% list_refresh_schedules_response() :: #{
%%   <<"RefreshSchedules">> => list(refresh_schedule()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type list_refresh_schedules_response() :: #{binary() => any()}.

%% Example:
%% delete_group_request() :: #{}
-type delete_group_request() :: #{}.


%% Example:
%% list_control_select_all_options() :: #{
%%   <<"Visibility">> => list(any())
%% }
-type list_control_select_all_options() :: #{binary() => any()}.


%% Example:
%% numerical_dimension_field() :: #{
%%   <<"Column">> => column_identifier(),
%%   <<"FieldId">> => string(),
%%   <<"FormatConfiguration">> => number_format_configuration(),
%%   <<"HierarchyId">> => string()
%% }
-type numerical_dimension_field() :: #{binary() => any()}.


%% Example:
%% restore_analysis_response() :: #{
%%   <<"AnalysisId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"RestorationFailedFolderArns">> => list(string()),
%%   <<"Status">> => integer()
%% }
-type restore_analysis_response() :: #{binary() => any()}.


%% Example:
%% twitter_parameters() :: #{
%%   <<"MaxRows">> => integer(),
%%   <<"Query">> => string()
%% }
-type twitter_parameters() :: #{binary() => any()}.


%% Example:
%% data_set_usage_configuration() :: #{
%%   <<"DisableUseAsDirectQuerySource">> => boolean(),
%%   <<"DisableUseAsImportedSource">> => boolean()
%% }
-type data_set_usage_configuration() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_dashboard_override_permissions() :: #{
%%   <<"DashboardIds">> => list(string()),
%%   <<"LinkSharingConfiguration">> => asset_bundle_resource_link_sharing_configuration(),
%%   <<"Permissions">> => asset_bundle_resource_permissions()
%% }
-type asset_bundle_import_job_dashboard_override_permissions() :: #{binary() => any()}.


%% Example:
%% heat_map_sort_configuration() :: #{
%%   <<"HeatMapColumnItemsLimitConfiguration">> => items_limit_configuration(),
%%   <<"HeatMapColumnSort">> => list(field_sort_options()),
%%   <<"HeatMapRowItemsLimitConfiguration">> => items_limit_configuration(),
%%   <<"HeatMapRowSort">> => list(field_sort_options())
%% }
-type heat_map_sort_configuration() :: #{binary() => any()}.


%% Example:
%% table_style_target() :: #{
%%   <<"CellType">> => list(any())
%% }
-type table_style_target() :: #{binary() => any()}.


%% Example:
%% numeric_equality_filter() :: #{
%%   <<"AggregationFunction">> => aggregation_function(),
%%   <<"Column">> => column_identifier(),
%%   <<"DefaultFilterControlConfiguration">> => default_filter_control_configuration(),
%%   <<"FilterId">> => string(),
%%   <<"MatchOperator">> => list(any()),
%%   <<"NullOption">> => list(any()),
%%   <<"ParameterName">> => string(),
%%   <<"SelectAllOptions">> => list(any()),
%%   <<"Value">> => float()
%% }
-type numeric_equality_filter() :: #{binary() => any()}.


%% Example:
%% funnel_chart_field_wells() :: #{
%%   <<"FunnelChartAggregatedFieldWells">> => funnel_chart_aggregated_field_wells()
%% }
-type funnel_chart_field_wells() :: #{binary() => any()}.


%% Example:
%% spark_parameters() :: #{
%%   <<"Host">> => string(),
%%   <<"Port">> => integer()
%% }
-type spark_parameters() :: #{binary() => any()}.


%% Example:
%% update_analysis_permissions_response() :: #{
%%   <<"AnalysisArn">> => string(),
%%   <<"AnalysisId">> => string(),
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_analysis_permissions_response() :: #{binary() => any()}.


%% Example:
%% theme_error() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => list(any())
%% }
-type theme_error() :: #{binary() => any()}.


%% Example:
%% line_chart_line_style_settings() :: #{
%%   <<"LineInterpolation">> => list(any()),
%%   <<"LineStyle">> => list(any()),
%%   <<"LineVisibility">> => list(any()),
%%   <<"LineWidth">> => string()
%% }
-type line_chart_line_style_settings() :: #{binary() => any()}.


%% Example:
%% reference_line_style_configuration() :: #{
%%   <<"Color">> => string(),
%%   <<"Pattern">> => list(any())
%% }
-type reference_line_style_configuration() :: #{binary() => any()}.


%% Example:
%% date_dimension_field() :: #{
%%   <<"Column">> => column_identifier(),
%%   <<"DateGranularity">> => list(any()),
%%   <<"FieldId">> => string(),
%%   <<"FormatConfiguration">> => date_time_format_configuration(),
%%   <<"HierarchyId">> => string()
%% }
-type date_dimension_field() :: #{binary() => any()}.


%% Example:
%% create_account_customization_response() :: #{
%%   <<"AccountCustomization">> => account_customization(),
%%   <<"Arn">> => string(),
%%   <<"AwsAccountId">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type create_account_customization_response() :: #{binary() => any()}.


%% Example:
%% session_tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type session_tag() :: #{binary() => any()}.


%% Example:
%% pie_chart_configuration() :: #{
%%   <<"CategoryLabelOptions">> => chart_axis_label_options(),
%%   <<"ContributionAnalysisDefaults">> => list(contribution_analysis_default()),
%%   <<"DataLabels">> => data_label_options(),
%%   <<"DonutOptions">> => donut_options(),
%%   <<"FieldWells">> => pie_chart_field_wells(),
%%   <<"Interactions">> => visual_interaction_options(),
%%   <<"Legend">> => legend_options(),
%%   <<"SmallMultiplesOptions">> => small_multiples_options(),
%%   <<"SortConfiguration">> => pie_chart_sort_configuration(),
%%   <<"Tooltip">> => tooltip_options(),
%%   <<"ValueLabelOptions">> => chart_axis_label_options(),
%%   <<"VisualPalette">> => visual_palette()
%% }
-type pie_chart_configuration() :: #{binary() => any()}.


%% Example:
%% generate_embed_url_for_anonymous_user_response() :: #{
%%   <<"AnonymousUserArn">> => string(),
%%   <<"EmbedUrl">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type generate_embed_url_for_anonymous_user_response() :: #{binary() => any()}.


%% Example:
%% list_users_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_users_request() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_theme_override_tags() :: #{
%%   <<"Tags">> => list(tag()),
%%   <<"ThemeIds">> => list(string())
%% }
-type asset_bundle_import_job_theme_override_tags() :: #{binary() => any()}.


%% Example:
%% search_dashboards_request() :: #{
%%   <<"Filters">> := list(dashboard_search_filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type search_dashboards_request() :: #{binary() => any()}.

%% Example:
%% all_sheets_filter_scope_configuration() :: #{}
-type all_sheets_filter_scope_configuration() :: #{}.


%% Example:
%% asset_bundle_import_job_data_set_override_permissions() :: #{
%%   <<"DataSetIds">> => list(string()),
%%   <<"Permissions">> => asset_bundle_resource_permissions()
%% }
-type asset_bundle_import_job_data_set_override_permissions() :: #{binary() => any()}.


%% Example:
%% delete_vpc_connection_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AvailabilityStatus">> => list(any()),
%%   <<"DeletionStatus">> => list(any()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"VPCConnectionId">> => string()
%% }
-type delete_vpc_connection_response() :: #{binary() => any()}.


%% Example:
%% bin_width_options() :: #{
%%   <<"BinCountLimit">> => float(),
%%   <<"Value">> => float()
%% }
-type bin_width_options() :: #{binary() => any()}.


%% Example:
%% pagination_configuration() :: #{
%%   <<"PageNumber">> => float(),
%%   <<"PageSize">> => float()
%% }
-type pagination_configuration() :: #{binary() => any()}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% describe_default_q_business_application_response() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_default_q_business_application_response() :: #{binary() => any()}.


%% Example:
%% update_vpc_connection_request() :: #{
%%   <<"DnsResolvers">> => list(string()),
%%   <<"Name">> := string(),
%%   <<"RoleArn">> := string(),
%%   <<"SecurityGroupIds">> := list(string()),
%%   <<"SubnetIds">> := list(string())
%% }
-type update_vpc_connection_request() :: #{binary() => any()}.


%% Example:
%% scatter_plot_configuration() :: #{
%%   <<"DataLabels">> => data_label_options(),
%%   <<"FieldWells">> => scatter_plot_field_wells(),
%%   <<"Interactions">> => visual_interaction_options(),
%%   <<"Legend">> => legend_options(),
%%   <<"SortConfiguration">> => scatter_plot_sort_configuration(),
%%   <<"Tooltip">> => tooltip_options(),
%%   <<"VisualPalette">> => visual_palette(),
%%   <<"XAxisDisplayOptions">> => axis_display_options(),
%%   <<"XAxisLabelOptions">> => chart_axis_label_options(),
%%   <<"YAxisDisplayOptions">> => axis_display_options(),
%%   <<"YAxisLabelOptions">> => chart_axis_label_options()
%% }
-type scatter_plot_configuration() :: #{binary() => any()}.


%% Example:
%% table_conditional_formatting() :: #{
%%   <<"ConditionalFormattingOptions">> => list(table_conditional_formatting_option())
%% }
-type table_conditional_formatting() :: #{binary() => any()}.


%% Example:
%% describe_folder_response() :: #{
%%   <<"Folder">> => folder(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_folder_response() :: #{binary() => any()}.


%% Example:
%% create_account_customization_request() :: #{
%%   <<"AccountCustomization">> := account_customization(),
%%   <<"Namespace">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_account_customization_request() :: #{binary() => any()}.


%% Example:
%% geospatial_map_field_wells() :: #{
%%   <<"GeospatialMapAggregatedFieldWells">> => geospatial_map_aggregated_field_wells()
%% }
-type geospatial_map_field_wells() :: #{binary() => any()}.


%% Example:
%% delete_brand_response() :: #{
%%   <<"RequestId">> => string()
%% }
-type delete_brand_response() :: #{binary() => any()}.


%% Example:
%% cascading_control_source() :: #{
%%   <<"ColumnToMatch">> => column_identifier(),
%%   <<"SourceSheetControlId">> => string()
%% }
-type cascading_control_source() :: #{binary() => any()}.


%% Example:
%% single_axis_options() :: #{
%%   <<"YAxisOptions">> => y_axis_options()
%% }
-type single_axis_options() :: #{binary() => any()}.


%% Example:
%% vpc_connection_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"AvailabilityStatus">> => list(any()),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DnsResolvers">> => list(string()),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"NetworkInterfaces">> => list(network_interface()),
%%   <<"RoleArn">> => string(),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"Status">> => list(any()),
%%   <<"VPCConnectionId">> => string(),
%%   <<"VPCId">> => string()
%% }
-type vpc_connection_summary() :: #{binary() => any()}.


%% Example:
%% pivot_table_aggregated_field_wells() :: #{
%%   <<"Columns">> => list(dimension_field()),
%%   <<"Rows">> => list(dimension_field()),
%%   <<"Values">> => list(measure_field())
%% }
-type pivot_table_aggregated_field_wells() :: #{binary() => any()}.


%% Example:
%% local_navigation_configuration() :: #{
%%   <<"TargetSheetId">> => string()
%% }
-type local_navigation_configuration() :: #{binary() => any()}.

%% Example:
%% describe_analysis_permissions_request() :: #{}
-type describe_analysis_permissions_request() :: #{}.


%% Example:
%% asset_bundle_export_job_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssetBundleExportJobId">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"ExportFormat">> => list(any()),
%%   <<"IncludeAllDependencies">> => boolean(),
%%   <<"IncludePermissions">> => boolean(),
%%   <<"IncludeTags">> => boolean(),
%%   <<"JobStatus">> => list(any())
%% }
-type asset_bundle_export_job_summary() :: #{binary() => any()}.

%% Example:
%% describe_topic_refresh_schedule_request() :: #{}
-type describe_topic_refresh_schedule_request() :: #{}.


%% Example:
%% margin_style() :: #{
%%   <<"Show">> => boolean()
%% }
-type margin_style() :: #{binary() => any()}.


%% Example:
%% asset_bundle_export_job_dashboard_override_properties() :: #{
%%   <<"Arn">> => string(),
%%   <<"Properties">> => list(list(any())())
%% }
-type asset_bundle_export_job_dashboard_override_properties() :: #{binary() => any()}.

%% Example:
%% describe_ingestion_request() :: #{}
-type describe_ingestion_request() :: #{}.


%% Example:
%% default_text_field_control_options() :: #{
%%   <<"DisplayOptions">> => text_field_control_display_options()
%% }
-type default_text_field_control_options() :: #{binary() => any()}.


%% Example:
%% plugin_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => plugin_visual_configuration(),
%%   <<"PluginArn">> => string(),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type plugin_visual() :: #{binary() => any()}.


%% Example:
%% anonymous_user_embedding_experience_configuration() :: #{
%%   <<"Dashboard">> => anonymous_user_dashboard_embedding_configuration(),
%%   <<"DashboardVisual">> => anonymous_user_dashboard_visual_embedding_configuration(),
%%   <<"GenerativeQnA">> => anonymous_user_generative_qn_a_embedding_configuration(),
%%   <<"QSearchBar">> => anonymous_user_q_search_bar_embedding_configuration()
%% }
-type anonymous_user_embedding_experience_configuration() :: #{binary() => any()}.


%% Example:
%% y_axis_options() :: #{
%%   <<"YAxis">> => list(any())
%% }
-type y_axis_options() :: #{binary() => any()}.


%% Example:
%% create_topic_refresh_schedule_request() :: #{
%%   <<"DatasetArn">> := string(),
%%   <<"DatasetName">> => string(),
%%   <<"RefreshSchedule">> := topic_refresh_schedule()
%% }
-type create_topic_refresh_schedule_request() :: #{binary() => any()}.


%% Example:
%% column_schema() :: #{
%%   <<"DataType">> => string(),
%%   <<"GeographicRole">> => string(),
%%   <<"Name">> => string()
%% }
-type column_schema() :: #{binary() => any()}.


%% Example:
%% update_account_custom_permission_request() :: #{
%%   <<"CustomPermissionsName">> := string()
%% }
-type update_account_custom_permission_request() :: #{binary() => any()}.


%% Example:
%% application_theme() :: #{
%%   <<"BrandColorPalette">> => brand_color_palette(),
%%   <<"BrandElementStyle">> => brand_element_style(),
%%   <<"ContextualAccentPalette">> => contextual_accent_palette()
%% }
-type application_theme() :: #{binary() => any()}.


%% Example:
%% update_ip_restriction_response() :: #{
%%   <<"AwsAccountId">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_ip_restriction_response() :: #{binary() => any()}.


%% Example:
%% k_p_i_sparkline_options() :: #{
%%   <<"Color">> => string(),
%%   <<"TooltipVisibility">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"Visibility">> => list(any())
%% }
-type k_p_i_sparkline_options() :: #{binary() => any()}.


%% Example:
%% update_theme_permissions_response() :: #{
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"ThemeArn">> => string(),
%%   <<"ThemeId">> => string()
%% }
-type update_theme_permissions_response() :: #{binary() => any()}.


%% Example:
%% waterfall_chart_sort_configuration() :: #{
%%   <<"BreakdownItemsLimit">> => items_limit_configuration(),
%%   <<"CategorySort">> => list(field_sort_options())
%% }
-type waterfall_chart_sort_configuration() :: #{binary() => any()}.


%% Example:
%% date_time_default_values() :: #{
%%   <<"DynamicValue">> => dynamic_default_value(),
%%   <<"RollingDate">> => rolling_date_configuration(),
%%   <<"StaticValues">> => list(non_neg_integer())
%% }
-type date_time_default_values() :: #{binary() => any()}.


%% Example:
%% data_set_schema() :: #{
%%   <<"ColumnSchemaList">> => list(column_schema())
%% }
-type data_set_schema() :: #{binary() => any()}.


%% Example:
%% table_field_image_configuration() :: #{
%%   <<"SizingOptions">> => table_cell_image_sizing_configuration()
%% }
-type table_field_image_configuration() :: #{binary() => any()}.


%% Example:
%% topic_refresh_schedule_summary() :: #{
%%   <<"DatasetArn">> => string(),
%%   <<"DatasetId">> => string(),
%%   <<"DatasetName">> => string(),
%%   <<"RefreshSchedule">> => topic_refresh_schedule()
%% }
-type topic_refresh_schedule_summary() :: #{binary() => any()}.


%% Example:
%% update_flow_permissions_input() :: #{
%%   <<"GrantPermissions">> => list(permission()),
%%   <<"RevokePermissions">> => list(permission())
%% }
-type update_flow_permissions_input() :: #{binary() => any()}.


%% Example:
%% update_data_set_permissions_request() :: #{
%%   <<"GrantPermissions">> => list(resource_permission()),
%%   <<"RevokePermissions">> => list(resource_permission())
%% }
-type update_data_set_permissions_request() :: #{binary() => any()}.


%% Example:
%% custom_color() :: #{
%%   <<"Color">> => string(),
%%   <<"FieldValue">> => string(),
%%   <<"SpecialValue">> => list(any())
%% }
-type custom_color() :: #{binary() => any()}.

%% Example:
%% get_flow_metadata_input() :: #{}
-type get_flow_metadata_input() :: #{}.


%% Example:
%% aggregation_function() :: #{
%%   <<"AttributeAggregationFunction">> => attribute_aggregation_function(),
%%   <<"CategoricalAggregationFunction">> => list(any()),
%%   <<"DateAggregationFunction">> => list(any()),
%%   <<"NumericalAggregationFunction">> => numerical_aggregation_function()
%% }
-type aggregation_function() :: #{binary() => any()}.


%% Example:
%% describe_dashboard_request() :: #{
%%   <<"AliasName">> => string(),
%%   <<"VersionNumber">> => float()
%% }
-type describe_dashboard_request() :: #{binary() => any()}.


%% Example:
%% total_options() :: #{
%%   <<"CustomLabel">> => string(),
%%   <<"Placement">> => list(any()),
%%   <<"ScrollStatus">> => list(any()),
%%   <<"TotalAggregationOptions">> => list(total_aggregation_option()),
%%   <<"TotalCellStyle">> => table_cell_style(),
%%   <<"TotalsVisibility">> => list(any())
%% }
-type total_options() :: #{binary() => any()}.


%% Example:
%% search_dashboards_response() :: #{
%%   <<"DashboardSummaryList">> => list(dashboard_summary()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type search_dashboards_response() :: #{binary() => any()}.


%% Example:
%% identity_type_not_supported_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type identity_type_not_supported_exception() :: #{binary() => any()}.


%% Example:
%% navbar_style() :: #{
%%   <<"ContextualNavbar">> => palette(),
%%   <<"GlobalNavbar">> => palette()
%% }
-type navbar_style() :: #{binary() => any()}.


%% Example:
%% box_plot_options() :: #{
%%   <<"AllDataPointsVisibility">> => list(any()),
%%   <<"OutlierVisibility">> => list(any()),
%%   <<"StyleOptions">> => box_plot_style_options()
%% }
-type box_plot_options() :: #{binary() => any()}.


%% Example:
%% create_template_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationStatus">> => list(any()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TemplateId">> => string(),
%%   <<"VersionArn">> => string()
%% }
-type create_template_response() :: #{binary() => any()}.


%% Example:
%% describe_group_response() :: #{
%%   <<"Group">> => group(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_group_response() :: #{binary() => any()}.


%% Example:
%% funnel_chart_configuration() :: #{
%%   <<"CategoryLabelOptions">> => chart_axis_label_options(),
%%   <<"DataLabelOptions">> => funnel_chart_data_label_options(),
%%   <<"FieldWells">> => funnel_chart_field_wells(),
%%   <<"Interactions">> => visual_interaction_options(),
%%   <<"SortConfiguration">> => funnel_chart_sort_configuration(),
%%   <<"Tooltip">> => tooltip_options(),
%%   <<"ValueLabelOptions">> => chart_axis_label_options(),
%%   <<"VisualPalette">> => visual_palette()
%% }
-type funnel_chart_configuration() :: #{binary() => any()}.


%% Example:
%% visual() :: #{
%%   <<"BarChartVisual">> => bar_chart_visual(),
%%   <<"BoxPlotVisual">> => box_plot_visual(),
%%   <<"ComboChartVisual">> => combo_chart_visual(),
%%   <<"CustomContentVisual">> => custom_content_visual(),
%%   <<"EmptyVisual">> => empty_visual(),
%%   <<"FilledMapVisual">> => filled_map_visual(),
%%   <<"FunnelChartVisual">> => funnel_chart_visual(),
%%   <<"GaugeChartVisual">> => gauge_chart_visual(),
%%   <<"GeospatialMapVisual">> => geospatial_map_visual(),
%%   <<"HeatMapVisual">> => heat_map_visual(),
%%   <<"HistogramVisual">> => histogram_visual(),
%%   <<"InsightVisual">> => insight_visual(),
%%   <<"KPIVisual">> => k_p_i_visual(),
%%   <<"LayerMapVisual">> => layer_map_visual(),
%%   <<"LineChartVisual">> => line_chart_visual(),
%%   <<"PieChartVisual">> => pie_chart_visual(),
%%   <<"PivotTableVisual">> => pivot_table_visual(),
%%   <<"PluginVisual">> => plugin_visual(),
%%   <<"RadarChartVisual">> => radar_chart_visual(),
%%   <<"SankeyDiagramVisual">> => sankey_diagram_visual(),
%%   <<"ScatterPlotVisual">> => scatter_plot_visual(),
%%   <<"TableVisual">> => table_visual(),
%%   <<"TreeMapVisual">> => tree_map_visual(),
%%   <<"WaterfallVisual">> => waterfall_visual(),
%%   <<"WordCloudVisual">> => word_cloud_visual()
%% }
-type visual() :: #{binary() => any()}.


%% Example:
%% resource_permission() :: #{
%%   <<"Actions">> => list(string()),
%%   <<"Principal">> => string()
%% }
-type resource_permission() :: #{binary() => any()}.


%% Example:
%% registered_user_quick_sight_console_embedding_configuration() :: #{
%%   <<"FeatureConfigurations">> => registered_user_console_feature_configurations(),
%%   <<"InitialPath">> => string()
%% }
-type registered_user_quick_sight_console_embedding_configuration() :: #{binary() => any()}.


%% Example:
%% delete_template_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TemplateId">> => string()
%% }
-type delete_template_response() :: #{binary() => any()}.


%% Example:
%% table_options() :: #{
%%   <<"CellStyle">> => table_cell_style(),
%%   <<"HeaderStyle">> => table_cell_style(),
%%   <<"Orientation">> => list(any()),
%%   <<"RowAlternateColorOptions">> => row_alternate_color_options()
%% }
-type table_options() :: #{binary() => any()}.


%% Example:
%% redshift_iam_parameters() :: #{
%%   <<"AutoCreateDatabaseUser">> => boolean(),
%%   <<"DatabaseGroups">> => list(string()),
%%   <<"DatabaseUser">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type redshift_iam_parameters() :: #{binary() => any()}.


%% Example:
%% delete_action_connector_response() :: #{
%%   <<"ActionConnectorId">> => string(),
%%   <<"Arn">> => string(),
%%   <<"RequestId">> => [string()],
%%   <<"Status">> => integer()
%% }
-type delete_action_connector_response() :: #{binary() => any()}.


%% Example:
%% asset_bundle_export_job_warning() :: #{
%%   <<"Arn">> => string(),
%%   <<"Message">> => string()
%% }
-type asset_bundle_export_job_warning() :: #{binary() => any()}.


%% Example:
%% update_folder_permissions_request() :: #{
%%   <<"GrantPermissions">> => list(resource_permission()),
%%   <<"RevokePermissions">> => list(resource_permission())
%% }
-type update_folder_permissions_request() :: #{binary() => any()}.


%% Example:
%% typography() :: #{
%%   <<"FontFamilies">> => list(font())
%% }
-type typography() :: #{binary() => any()}.


%% Example:
%% template() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"TemplateId">> => string(),
%%   <<"Version">> => template_version()
%% }
-type template() :: #{binary() => any()}.


%% Example:
%% filled_map_aggregated_field_wells() :: #{
%%   <<"Geospatial">> => list(dimension_field()),
%%   <<"Values">> => list(measure_field())
%% }
-type filled_map_aggregated_field_wells() :: #{binary() => any()}.


%% Example:
%% dashboard_source_entity() :: #{
%%   <<"SourceTemplate">> => dashboard_source_template()
%% }
-type dashboard_source_entity() :: #{binary() => any()}.

%% Example:
%% describe_ip_restriction_request() :: #{}
-type describe_ip_restriction_request() :: #{}.


%% Example:
%% table_cell_conditional_formatting() :: #{
%%   <<"FieldId">> => string(),
%%   <<"TextFormat">> => text_conditional_format()
%% }
-type table_cell_conditional_formatting() :: #{binary() => any()}.


%% Example:
%% histogram_bin_options() :: #{
%%   <<"BinCount">> => bin_count_options(),
%%   <<"BinWidth">> => bin_width_options(),
%%   <<"SelectedBinType">> => list(any()),
%%   <<"StartValue">> => float()
%% }
-type histogram_bin_options() :: #{binary() => any()}.


%% Example:
%% trino_parameters() :: #{
%%   <<"Catalog">> => string(),
%%   <<"Host">> => string(),
%%   <<"Port">> => integer()
%% }
-type trino_parameters() :: #{binary() => any()}.


%% Example:
%% create_group_membership_response() :: #{
%%   <<"GroupMember">> => group_member(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type create_group_membership_response() :: #{binary() => any()}.


%% Example:
%% describe_data_set_response() :: #{
%%   <<"DataSet">> => data_set(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_data_set_response() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_override_permissions() :: #{
%%   <<"Analyses">> => list(asset_bundle_import_job_analysis_override_permissions()),
%%   <<"Dashboards">> => list(asset_bundle_import_job_dashboard_override_permissions()),
%%   <<"DataSets">> => list(asset_bundle_import_job_data_set_override_permissions()),
%%   <<"DataSources">> => list(asset_bundle_import_job_data_source_override_permissions()),
%%   <<"Folders">> => list(asset_bundle_import_job_folder_override_permissions()),
%%   <<"Themes">> => list(asset_bundle_import_job_theme_override_permissions())
%% }
-type asset_bundle_import_job_override_permissions() :: #{binary() => any()}.


%% Example:
%% column_hierarchy() :: #{
%%   <<"DateTimeHierarchy">> => date_time_hierarchy(),
%%   <<"ExplicitHierarchy">> => explicit_hierarchy(),
%%   <<"PredefinedHierarchy">> => predefined_hierarchy()
%% }
-type column_hierarchy() :: #{binary() => any()}.


%% Example:
%% simple_cluster_marker() :: #{
%%   <<"Color">> => string()
%% }
-type simple_cluster_marker() :: #{binary() => any()}.


%% Example:
%% font_size() :: #{
%%   <<"Absolute">> => string(),
%%   <<"Relative">> => list(any())
%% }
-type font_size() :: #{binary() => any()}.


%% Example:
%% waterfall_chart_field_wells() :: #{
%%   <<"WaterfallChartAggregatedFieldWells">> => waterfall_chart_aggregated_field_wells()
%% }
-type waterfall_chart_field_wells() :: #{binary() => any()}.


%% Example:
%% calculated_field() :: #{
%%   <<"DataSetIdentifier">> => string(),
%%   <<"Expression">> => string(),
%%   <<"Name">> => string()
%% }
-type calculated_field() :: #{binary() => any()}.


%% Example:
%% export_with_hidden_fields_option() :: #{
%%   <<"AvailabilityStatus">> => list(any())
%% }
-type export_with_hidden_fields_option() :: #{binary() => any()}.


%% Example:
%% decimal_dataset_parameter_default_values() :: #{
%%   <<"StaticValues">> => list(float())
%% }
-type decimal_dataset_parameter_default_values() :: #{binary() => any()}.


%% Example:
%% incremental_refresh() :: #{
%%   <<"LookbackWindow">> => lookback_window()
%% }
-type incremental_refresh() :: #{binary() => any()}.


%% Example:
%% pivot_table_paginated_report_options() :: #{
%%   <<"OverflowColumnHeaderVisibility">> => list(any()),
%%   <<"VerticalOverflowVisibility">> => list(any())
%% }
-type pivot_table_paginated_report_options() :: #{binary() => any()}.


%% Example:
%% k_p_iprimary_value_conditional_formatting() :: #{
%%   <<"Icon">> => conditional_formatting_icon(),
%%   <<"TextColor">> => conditional_formatting_color()
%% }
-type k_p_iprimary_value_conditional_formatting() :: #{binary() => any()}.


%% Example:
%% topic_range_filter_constant() :: #{
%%   <<"ConstantType">> => list(any()),
%%   <<"RangeConstant">> => range_constant()
%% }
-type topic_range_filter_constant() :: #{binary() => any()}.


%% Example:
%% data_source() :: #{
%%   <<"AlternateDataSourceParameters">> => list(list()),
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DataSourceId">> => string(),
%%   <<"DataSourceParameters">> => list(),
%%   <<"ErrorInfo">> => data_source_error_info(),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"SecretArn">> => string(),
%%   <<"SslProperties">> => ssl_properties(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"VpcConnectionProperties">> => vpc_connection_properties()
%% }
-type data_source() :: #{binary() => any()}.


%% Example:
%% search_groups_response() :: #{
%%   <<"GroupList">> => list(group()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type search_groups_response() :: #{binary() => any()}.


%% Example:
%% calculated_column() :: #{
%%   <<"ColumnId">> => string(),
%%   <<"ColumnName">> => string(),
%%   <<"Expression">> => string()
%% }
-type calculated_column() :: #{binary() => any()}.


%% Example:
%% dimension_field() :: #{
%%   <<"CategoricalDimensionField">> => categorical_dimension_field(),
%%   <<"DateDimensionField">> => date_dimension_field(),
%%   <<"NumericalDimensionField">> => numerical_dimension_field()
%% }
-type dimension_field() :: #{binary() => any()}.


%% Example:
%% waterfall_chart_group_color_configuration() :: #{
%%   <<"NegativeBarColor">> => string(),
%%   <<"PositiveBarColor">> => string(),
%%   <<"TotalBarColor">> => string()
%% }
-type waterfall_chart_group_color_configuration() :: #{binary() => any()}.


%% Example:
%% string_parameter_declaration() :: #{
%%   <<"DefaultValues">> => string_default_values(),
%%   <<"MappedDataSetParameters">> => list(mapped_data_set_parameter()),
%%   <<"Name">> => string(),
%%   <<"ParameterValueType">> => list(any()),
%%   <<"ValueWhenUnset">> => string_value_when_unset_configuration()
%% }
-type string_parameter_declaration() :: #{binary() => any()}.


%% Example:
%% data_set_reference() :: #{
%%   <<"DataSetArn">> => string(),
%%   <<"DataSetPlaceholder">> => string()
%% }
-type data_set_reference() :: #{binary() => any()}.


%% Example:
%% list_group_memberships_response() :: #{
%%   <<"GroupMemberList">> => list(group_member()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type list_group_memberships_response() :: #{binary() => any()}.


%% Example:
%% combo_chart_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => combo_chart_configuration(),
%%   <<"ColumnHierarchies">> => list(column_hierarchy()),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type combo_chart_visual() :: #{binary() => any()}.


%% Example:
%% comparison_configuration() :: #{
%%   <<"ComparisonFormat">> => comparison_format_configuration(),
%%   <<"ComparisonMethod">> => list(any())
%% }
-type comparison_configuration() :: #{binary() => any()}.


%% Example:
%% numeric_axis_options() :: #{
%%   <<"Range">> => axis_display_range(),
%%   <<"Scale">> => axis_scale()
%% }
-type numeric_axis_options() :: #{binary() => any()}.


%% Example:
%% forecast_configuration() :: #{
%%   <<"ForecastProperties">> => time_based_forecast_properties(),
%%   <<"Scenario">> => forecast_scenario()
%% }
-type forecast_configuration() :: #{binary() => any()}.


%% Example:
%% create_folder_membership_response() :: #{
%%   <<"FolderMember">> => folder_member(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type create_folder_membership_response() :: #{binary() => any()}.


%% Example:
%% create_action_connector_request() :: #{
%%   <<"ActionConnectorId">> := string(),
%%   <<"AuthenticationConfig">> := auth_config(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"Tags">> => list(tag()),
%%   <<"Type">> := list(any()),
%%   <<"VpcConnectionArn">> => string()
%% }
-type create_action_connector_request() :: #{binary() => any()}.


%% Example:
%% sql_server_parameters() :: #{
%%   <<"Database">> => string(),
%%   <<"Host">> => string(),
%%   <<"Port">> => integer()
%% }
-type sql_server_parameters() :: #{binary() => any()}.


%% Example:
%% list_groups_response() :: #{
%%   <<"GroupList">> => list(group()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type list_groups_response() :: #{binary() => any()}.


%% Example:
%% start_asset_bundle_export_job_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssetBundleExportJobId">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type start_asset_bundle_export_job_response() :: #{binary() => any()}.


%% Example:
%% action_connector_error() :: #{
%%   <<"Message">> => [string()],
%%   <<"Type">> => list(any())
%% }
-type action_connector_error() :: #{binary() => any()}.


%% Example:
%% filter_text_area_control() :: #{
%%   <<"Delimiter">> => string(),
%%   <<"DisplayOptions">> => text_area_control_display_options(),
%%   <<"FilterControlId">> => string(),
%%   <<"SourceFilterId">> => string(),
%%   <<"Title">> => string()
%% }
-type filter_text_area_control() :: #{binary() => any()}.


%% Example:
%% describe_custom_permissions_response() :: #{
%%   <<"CustomPermissions">> => custom_permissions(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_custom_permissions_response() :: #{binary() => any()}.


%% Example:
%% conditional_formatting_solid_color() :: #{
%%   <<"Color">> => string(),
%%   <<"Expression">> => string()
%% }
-type conditional_formatting_solid_color() :: #{binary() => any()}.


%% Example:
%% image_set() :: #{
%%   <<"Height32">> => image(),
%%   <<"Height64">> => image(),
%%   <<"Original">> => image()
%% }
-type image_set() :: #{binary() => any()}.


%% Example:
%% snapshot_anonymous_user() :: #{
%%   <<"RowLevelPermissionTags">> => list(session_tag())
%% }
-type snapshot_anonymous_user() :: #{binary() => any()}.


%% Example:
%% rolling_date_configuration() :: #{
%%   <<"DataSetIdentifier">> => string(),
%%   <<"Expression">> => string()
%% }
-type rolling_date_configuration() :: #{binary() => any()}.


%% Example:
%% conditional_formatting_gradient_color() :: #{
%%   <<"Color">> => gradient_color(),
%%   <<"Expression">> => string()
%% }
-type conditional_formatting_gradient_color() :: #{binary() => any()}.


%% Example:
%% shared_view_configurations() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type shared_view_configurations() :: #{binary() => any()}.


%% Example:
%% ui_color_palette() :: #{
%%   <<"Accent">> => string(),
%%   <<"AccentForeground">> => string(),
%%   <<"Danger">> => string(),
%%   <<"DangerForeground">> => string(),
%%   <<"Dimension">> => string(),
%%   <<"DimensionForeground">> => string(),
%%   <<"Measure">> => string(),
%%   <<"MeasureForeground">> => string(),
%%   <<"PrimaryBackground">> => string(),
%%   <<"PrimaryForeground">> => string(),
%%   <<"SecondaryBackground">> => string(),
%%   <<"SecondaryForeground">> => string(),
%%   <<"Success">> => string(),
%%   <<"SuccessForeground">> => string(),
%%   <<"Warning">> => string(),
%%   <<"WarningForeground">> => string()
%% }
-type ui_color_palette() :: #{binary() => any()}.


%% Example:
%% manifest_file_location() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Key">> => string()
%% }
-type manifest_file_location() :: #{binary() => any()}.


%% Example:
%% geospatial_circle_radius() :: #{
%%   <<"Radius">> => float()
%% }
-type geospatial_circle_radius() :: #{binary() => any()}.


%% Example:
%% relative_date_time_control_display_options() :: #{
%%   <<"DateTimeFormat">> => string(),
%%   <<"InfoIconLabelOptions">> => sheet_control_info_icon_label_options(),
%%   <<"TitleOptions">> => label_options()
%% }
-type relative_date_time_control_display_options() :: #{binary() => any()}.

%% Example:
%% delete_user_by_principal_id_request() :: #{}
-type delete_user_by_principal_id_request() :: #{}.


%% Example:
%% snapshot_file() :: #{
%%   <<"FormatType">> => list(any()),
%%   <<"SheetSelections">> => list(snapshot_file_sheet_selection())
%% }
-type snapshot_file() :: #{binary() => any()}.


%% Example:
%% read_api_key_connection_metadata() :: #{
%%   <<"BaseEndpoint">> => string(),
%%   <<"Email">> => string()
%% }
-type read_api_key_connection_metadata() :: #{binary() => any()}.


%% Example:
%% color_scale() :: #{
%%   <<"ColorFillType">> => list(any()),
%%   <<"Colors">> => list(data_color()),
%%   <<"NullValueColor">> => data_color()
%% }
-type color_scale() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_data_source_credentials() :: #{
%%   <<"CredentialPair">> => asset_bundle_import_job_data_source_credential_pair(),
%%   <<"SecretArn">> => string()
%% }
-type asset_bundle_import_job_data_source_credentials() :: #{binary() => any()}.


%% Example:
%% same_sheet_target_visual_configuration() :: #{
%%   <<"TargetVisualOptions">> => list(any()),
%%   <<"TargetVisuals">> => list(string())
%% }
-type same_sheet_target_visual_configuration() :: #{binary() => any()}.


%% Example:
%% delete_user_by_principal_id_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_user_by_principal_id_response() :: #{binary() => any()}.


%% Example:
%% pivot_table_conditional_formatting() :: #{
%%   <<"ConditionalFormattingOptions">> => list(pivot_table_conditional_formatting_option())
%% }
-type pivot_table_conditional_formatting() :: #{binary() => any()}.


%% Example:
%% image_configuration() :: #{
%%   <<"Source">> => list()
%% }
-type image_configuration() :: #{binary() => any()}.


%% Example:
%% data_field_series_item() :: #{
%%   <<"AxisBinding">> => list(any()),
%%   <<"FieldId">> => string(),
%%   <<"FieldValue">> => string(),
%%   <<"Settings">> => line_chart_series_settings()
%% }
-type data_field_series_item() :: #{binary() => any()}.

%% Example:
%% describe_account_custom_permission_request() :: #{}
-type describe_account_custom_permission_request() :: #{}.


%% Example:
%% custom_narrative_options() :: #{
%%   <<"Narrative">> => string()
%% }
-type custom_narrative_options() :: #{binary() => any()}.


%% Example:
%% delete_iam_policy_assignment_response() :: #{
%%   <<"AssignmentName">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_iam_policy_assignment_response() :: #{binary() => any()}.


%% Example:
%% snapshot_job_error_info() :: #{
%%   <<"ErrorMessage">> => string(),
%%   <<"ErrorType">> => string()
%% }
-type snapshot_job_error_info() :: #{binary() => any()}.


%% Example:
%% create_folder_request() :: #{
%%   <<"FolderType">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"ParentFolderArn">> => string(),
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"SharingModel">> => list(any()),
%%   <<"Tags">> => list(tag())
%% }
-type create_folder_request() :: #{binary() => any()}.


%% Example:
%% list_themes_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"ThemeSummaryList">> => list(theme_summary())
%% }
-type list_themes_response() :: #{binary() => any()}.


%% Example:
%% list_theme_versions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"ThemeVersionSummaryList">> => list(theme_version_summary())
%% }
-type list_theme_versions_response() :: #{binary() => any()}.


%% Example:
%% date_time_hierarchy() :: #{
%%   <<"DrillDownFilters">> => list(drill_down_filter()),
%%   <<"HierarchyId">> => string()
%% }
-type date_time_hierarchy() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_override_validation_strategy() :: #{
%%   <<"StrictModeForAllResources">> => boolean()
%% }
-type asset_bundle_import_job_override_validation_strategy() :: #{binary() => any()}.


%% Example:
%% body_section_configuration() :: #{
%%   <<"Content">> => body_section_content(),
%%   <<"PageBreakConfiguration">> => section_page_break_configuration(),
%%   <<"RepeatConfiguration">> => body_section_repeat_configuration(),
%%   <<"SectionId">> => string(),
%%   <<"Style">> => section_style()
%% }
-type body_section_configuration() :: #{binary() => any()}.


%% Example:
%% list_dashboards_response() :: #{
%%   <<"DashboardSummaryList">> => list(dashboard_summary()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type list_dashboards_response() :: #{binary() => any()}.


%% Example:
%% pivot_table_field_subtotal_options() :: #{
%%   <<"FieldId">> => string()
%% }
-type pivot_table_field_subtotal_options() :: #{binary() => any()}.


%% Example:
%% asset_bundle_export_job_validation_strategy() :: #{
%%   <<"StrictModeForAllResources">> => boolean()
%% }
-type asset_bundle_export_job_validation_strategy() :: #{binary() => any()}.


%% Example:
%% aggregation_partition_by() :: #{
%%   <<"FieldName">> => string(),
%%   <<"TimeGranularity">> => list(any())
%% }
-type aggregation_partition_by() :: #{binary() => any()}.


%% Example:
%% analysis_defaults() :: #{
%%   <<"DefaultNewSheetConfiguration">> => default_new_sheet_configuration()
%% }
-type analysis_defaults() :: #{binary() => any()}.


%% Example:
%% create_topic_refresh_schedule_response() :: #{
%%   <<"DatasetArn">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"TopicArn">> => string(),
%%   <<"TopicId">> => string()
%% }
-type create_topic_refresh_schedule_response() :: #{binary() => any()}.


%% Example:
%% small_multiples_options() :: #{
%%   <<"MaxVisibleColumns">> => float(),
%%   <<"MaxVisibleRows">> => float(),
%%   <<"PanelConfiguration">> => panel_configuration(),
%%   <<"XAxis">> => small_multiples_axis_properties(),
%%   <<"YAxis">> => small_multiples_axis_properties()
%% }
-type small_multiples_options() :: #{binary() => any()}.


%% Example:
%% list_groups_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_groups_request() :: #{binary() => any()}.


%% Example:
%% reference_line_value_label_configuration() :: #{
%%   <<"FormatConfiguration">> => numeric_format_configuration(),
%%   <<"RelativePosition">> => list(any())
%% }
-type reference_line_value_label_configuration() :: #{binary() => any()}.


%% Example:
%% describe_folder_resolved_permissions_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"FolderId">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_folder_resolved_permissions_response() :: #{binary() => any()}.


%% Example:
%% reference_line() :: #{
%%   <<"DataConfiguration">> => reference_line_data_configuration(),
%%   <<"LabelConfiguration">> => reference_line_label_configuration(),
%%   <<"Status">> => list(any()),
%%   <<"StyleConfiguration">> => reference_line_style_configuration()
%% }
-type reference_line() :: #{binary() => any()}.


%% Example:
%% body_section_dynamic_category_dimension_configuration() :: #{
%%   <<"Column">> => column_identifier(),
%%   <<"Limit">> => integer(),
%%   <<"SortByMetrics">> => list(column_sort())
%% }
-type body_section_dynamic_category_dimension_configuration() :: #{binary() => any()}.


%% Example:
%% section_page_break_configuration() :: #{
%%   <<"After">> => section_after_page_break()
%% }
-type section_page_break_configuration() :: #{binary() => any()}.


%% Example:
%% snapshot_job_s3_result() :: #{
%%   <<"ErrorInfo">> => list(snapshot_job_result_error_info()),
%%   <<"S3DestinationConfiguration">> => snapshot_s3_destination_configuration(),
%%   <<"S3Uri">> => string()
%% }
-type snapshot_job_s3_result() :: #{binary() => any()}.


%% Example:
%% schedules_configurations() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type schedules_configurations() :: #{binary() => any()}.


%% Example:
%% precondition_not_met_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"RequestId">> => string()
%% }
-type precondition_not_met_exception() :: #{binary() => any()}.


%% Example:
%% read_authorization_code_grant_metadata() :: #{
%%   <<"AuthorizationCodeGrantCredentialsSource">> => list(any()),
%%   <<"BaseEndpoint">> => string(),
%%   <<"ReadAuthorizationCodeGrantCredentialsDetails">> => list(),
%%   <<"RedirectUrl">> => string()
%% }
-type read_authorization_code_grant_metadata() :: #{binary() => any()}.


%% Example:
%% sankey_diagram_chart_configuration() :: #{
%%   <<"DataLabels">> => data_label_options(),
%%   <<"FieldWells">> => sankey_diagram_field_wells(),
%%   <<"Interactions">> => visual_interaction_options(),
%%   <<"SortConfiguration">> => sankey_diagram_sort_configuration()
%% }
-type sankey_diagram_chart_configuration() :: #{binary() => any()}.


%% Example:
%% delete_data_set_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"DataSetId">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_data_set_response() :: #{binary() => any()}.


%% Example:
%% filter_operation_target_visuals_configuration() :: #{
%%   <<"SameSheetTargetVisualConfiguration">> => same_sheet_target_visual_configuration()
%% }
-type filter_operation_target_visuals_configuration() :: #{binary() => any()}.


%% Example:
%% batch_delete_topic_reviewed_answer_response() :: #{
%%   <<"InvalidAnswers">> => list(invalid_topic_reviewed_answer()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"SucceededAnswers">> => list(succeeded_topic_reviewed_answer()),
%%   <<"TopicArn">> => string(),
%%   <<"TopicId">> => string()
%% }
-type batch_delete_topic_reviewed_answer_response() :: #{binary() => any()}.


%% Example:
%% free_form_layout_element_background_style() :: #{
%%   <<"Color">> => string(),
%%   <<"Visibility">> => list(any())
%% }
-type free_form_layout_element_background_style() :: #{binary() => any()}.


%% Example:
%% output_column() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"SubType">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type output_column() :: #{binary() => any()}.


%% Example:
%% generate_embed_url_for_registered_user_with_identity_response() :: #{
%%   <<"EmbedUrl">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type generate_embed_url_for_registered_user_with_identity_response() :: #{binary() => any()}.


%% Example:
%% insight_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"DataSetIdentifier">> => string(),
%%   <<"InsightConfiguration">> => insight_configuration(),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type insight_visual() :: #{binary() => any()}.


%% Example:
%% drop_down_control_display_options() :: #{
%%   <<"InfoIconLabelOptions">> => sheet_control_info_icon_label_options(),
%%   <<"SelectAllOptions">> => list_control_select_all_options(),
%%   <<"TitleOptions">> => label_options()
%% }
-type drop_down_control_display_options() :: #{binary() => any()}.


%% Example:
%% pivot_table_configuration() :: #{
%%   <<"FieldOptions">> => pivot_table_field_options(),
%%   <<"FieldWells">> => pivot_table_field_wells(),
%%   <<"Interactions">> => visual_interaction_options(),
%%   <<"PaginatedReportOptions">> => pivot_table_paginated_report_options(),
%%   <<"SortConfiguration">> => pivot_table_sort_configuration(),
%%   <<"TableOptions">> => pivot_table_options(),
%%   <<"TotalOptions">> => pivot_table_total_options()
%% }
-type pivot_table_configuration() :: #{binary() => any()}.


%% Example:
%% register_user_request() :: #{
%%   <<"CustomFederationProviderUrl">> => string(),
%%   <<"CustomPermissionsName">> => string(),
%%   <<"Email">> := string(),
%%   <<"ExternalLoginFederationProviderType">> => string(),
%%   <<"ExternalLoginId">> => string(),
%%   <<"IamArn">> => string(),
%%   <<"IdentityType">> := list(any()),
%%   <<"SessionName">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"UserName">> => string(),
%%   <<"UserRole">> := list(any())
%% }
-type register_user_request() :: #{binary() => any()}.


%% Example:
%% create_refresh_schedule_request() :: #{
%%   <<"Schedule">> := refresh_schedule()
%% }
-type create_refresh_schedule_request() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_override_parameters() :: #{
%%   <<"Analyses">> => list(asset_bundle_import_job_analysis_override_parameters()),
%%   <<"Dashboards">> => list(asset_bundle_import_job_dashboard_override_parameters()),
%%   <<"DataSets">> => list(asset_bundle_import_job_data_set_override_parameters()),
%%   <<"DataSources">> => list(asset_bundle_import_job_data_source_override_parameters()),
%%   <<"Folders">> => list(asset_bundle_import_job_folder_override_parameters()),
%%   <<"RefreshSchedules">> => list(asset_bundle_import_job_refresh_schedule_override_parameters()),
%%   <<"ResourceIdOverrideConfiguration">> => asset_bundle_import_job_resource_id_override_configuration(),
%%   <<"Themes">> => list(asset_bundle_import_job_theme_override_parameters()),
%%   <<"VPCConnections">> => list(asset_bundle_import_job_vpc_connection_override_parameters())
%% }
-type asset_bundle_import_job_override_parameters() :: #{binary() => any()}.


%% Example:
%% data_source_error_info() :: #{
%%   <<"Message">> => string(),
%%   <<"Type">> => list(any())
%% }
-type data_source_error_info() :: #{binary() => any()}.


%% Example:
%% custom_action_set_parameters_operation() :: #{
%%   <<"ParameterValueConfigurations">> => list(set_parameter_value_configuration())
%% }
-type custom_action_set_parameters_operation() :: #{binary() => any()}.


%% Example:
%% amazon_q_in_quick_sight_console_configurations() :: #{
%%   <<"DataQnA">> => data_qn_a_configurations(),
%%   <<"DataStories">> => data_stories_configurations(),
%%   <<"ExecutiveSummary">> => executive_summary_configurations(),
%%   <<"GenerativeAuthoring">> => generative_authoring_configurations()
%% }
-type amazon_q_in_quick_sight_console_configurations() :: #{binary() => any()}.


%% Example:
%% comparative_order() :: #{
%%   <<"SpecifedOrder">> => list(string()),
%%   <<"TreatUndefinedSpecifiedValues">> => list(any()),
%%   <<"UseOrdering">> => list(any())
%% }
-type comparative_order() :: #{binary() => any()}.


%% Example:
%% scatter_plot_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => scatter_plot_configuration(),
%%   <<"ColumnHierarchies">> => list(column_hierarchy()),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type scatter_plot_visual() :: #{binary() => any()}.

%% Example:
%% describe_analysis_definition_request() :: #{}
-type describe_analysis_definition_request() :: #{}.


%% Example:
%% heat_map_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => heat_map_configuration(),
%%   <<"ColumnHierarchies">> => list(column_hierarchy()),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type heat_map_visual() :: #{binary() => any()}.


%% Example:
%% decimal_parameter_declaration() :: #{
%%   <<"DefaultValues">> => decimal_default_values(),
%%   <<"MappedDataSetParameters">> => list(mapped_data_set_parameter()),
%%   <<"Name">> => string(),
%%   <<"ParameterValueType">> => list(any()),
%%   <<"ValueWhenUnset">> => decimal_value_when_unset_configuration()
%% }
-type decimal_parameter_declaration() :: #{binary() => any()}.


%% Example:
%% create_analysis_request() :: #{
%%   <<"Definition">> => analysis_definition(),
%%   <<"FolderArns">> => list(string()),
%%   <<"Name">> := string(),
%%   <<"Parameters">> => parameters(),
%%   <<"Permissions">> => list(resource_permission()),
%%   <<"SourceEntity">> => analysis_source_entity(),
%%   <<"Tags">> => list(tag()),
%%   <<"ThemeArn">> => string(),
%%   <<"ValidationStrategy">> => validation_strategy()
%% }
-type create_analysis_request() :: #{binary() => any()}.


%% Example:
%% brand_definition() :: #{
%%   <<"ApplicationTheme">> => application_theme(),
%%   <<"BrandName">> => string(),
%%   <<"Description">> => string(),
%%   <<"LogoConfiguration">> => logo_configuration()
%% }
-type brand_definition() :: #{binary() => any()}.


%% Example:
%% oracle_parameters() :: #{
%%   <<"Database">> => string(),
%%   <<"Host">> => string(),
%%   <<"Port">> => integer(),
%%   <<"UseServiceName">> => boolean()
%% }
-type oracle_parameters() :: #{binary() => any()}.


%% Example:
%% top_bottom_ranked_computation() :: #{
%%   <<"Category">> => dimension_field(),
%%   <<"ComputationId">> => string(),
%%   <<"Name">> => string(),
%%   <<"ResultSize">> => integer(),
%%   <<"Type">> => list(any()),
%%   <<"Value">> => measure_field()
%% }
-type top_bottom_ranked_computation() :: #{binary() => any()}.


%% Example:
%% read_basic_auth_connection_metadata() :: #{
%%   <<"BaseEndpoint">> => string(),
%%   <<"Username">> => string()
%% }
-type read_basic_auth_connection_metadata() :: #{binary() => any()}.


%% Example:
%% cascading_control_configuration() :: #{
%%   <<"SourceControls">> => list(cascading_control_source())
%% }
-type cascading_control_configuration() :: #{binary() => any()}.


%% Example:
%% data_color_palette() :: #{
%%   <<"Colors">> => list(string()),
%%   <<"EmptyFillColor">> => string(),
%%   <<"MinMaxGradient">> => list(string())
%% }
-type data_color_palette() :: #{binary() => any()}.


%% Example:
%% custom_parameter_values() :: #{
%%   <<"DateTimeValues">> => list(non_neg_integer()),
%%   <<"DecimalValues">> => list(float()),
%%   <<"IntegerValues">> => list(float()),
%%   <<"StringValues">> => list(string())
%% }
-type custom_parameter_values() :: #{binary() => any()}.


%% Example:
%% update_group_response() :: #{
%%   <<"Group">> => group(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_group_response() :: #{binary() => any()}.


%% Example:
%% create_brand_response() :: #{
%%   <<"BrandDefinition">> => brand_definition(),
%%   <<"BrandDetail">> => brand_detail(),
%%   <<"RequestId">> => string()
%% }
-type create_brand_response() :: #{binary() => any()}.

%% Example:
%% delete_iam_policy_assignment_request() :: #{}
-type delete_iam_policy_assignment_request() :: #{}.


%% Example:
%% delete_identity_propagation_config_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type delete_identity_propagation_config_response() :: #{binary() => any()}.


%% Example:
%% free_form_layout_element() :: #{
%%   <<"BackgroundStyle">> => free_form_layout_element_background_style(),
%%   <<"BorderStyle">> => free_form_layout_element_border_style(),
%%   <<"ElementId">> => string(),
%%   <<"ElementType">> => list(any()),
%%   <<"Height">> => string(),
%%   <<"LoadingAnimation">> => loading_animation(),
%%   <<"RenderingRules">> => list(sheet_element_rendering_rule()),
%%   <<"SelectedBorderStyle">> => free_form_layout_element_border_style(),
%%   <<"Visibility">> => list(any()),
%%   <<"Width">> => string(),
%%   <<"XAxisLocation">> => string(),
%%   <<"YAxisLocation">> => string()
%% }
-type free_form_layout_element() :: #{binary() => any()}.


%% Example:
%% filled_map_conditional_formatting() :: #{
%%   <<"ConditionalFormattingOptions">> => list(filled_map_conditional_formatting_option())
%% }
-type filled_map_conditional_formatting() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_override_tags() :: #{
%%   <<"Analyses">> => list(asset_bundle_import_job_analysis_override_tags()),
%%   <<"Dashboards">> => list(asset_bundle_import_job_dashboard_override_tags()),
%%   <<"DataSets">> => list(asset_bundle_import_job_data_set_override_tags()),
%%   <<"DataSources">> => list(asset_bundle_import_job_data_source_override_tags()),
%%   <<"Folders">> => list(asset_bundle_import_job_folder_override_tags()),
%%   <<"Themes">> => list(asset_bundle_import_job_theme_override_tags()),
%%   <<"VPCConnections">> => list(asset_bundle_import_job_vpc_connection_override_tags())
%% }
-type asset_bundle_import_job_override_tags() :: #{binary() => any()}.


%% Example:
%% dataset_metadata() :: #{
%%   <<"CalculatedFields">> => list(topic_calculated_field()),
%%   <<"Columns">> => list(topic_column()),
%%   <<"DataAggregation">> => data_aggregation(),
%%   <<"DatasetArn">> => string(),
%%   <<"DatasetDescription">> => string(),
%%   <<"DatasetName">> => string(),
%%   <<"Filters">> => list(topic_filter()),
%%   <<"NamedEntities">> => list(topic_named_entity())
%% }
-type dataset_metadata() :: #{binary() => any()}.


%% Example:
%% word_cloud_aggregated_field_wells() :: #{
%%   <<"GroupBy">> => list(dimension_field()),
%%   <<"Size">> => list(measure_field())
%% }
-type word_cloud_aggregated_field_wells() :: #{binary() => any()}.


%% Example:
%% template_version_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"VersionNumber">> => float()
%% }
-type template_version_summary() :: #{binary() => any()}.


%% Example:
%% agg_function() :: #{
%%   <<"Aggregation">> => list(any()),
%%   <<"AggregationFunctionParameters">> => map(),
%%   <<"Period">> => list(any()),
%%   <<"PeriodField">> => string()
%% }
-type agg_function() :: #{binary() => any()}.


%% Example:
%% geospatial_null_symbol_style() :: #{
%%   <<"FillColor">> => string(),
%%   <<"StrokeColor">> => string(),
%%   <<"StrokeWidth">> => float()
%% }
-type geospatial_null_symbol_style() :: #{binary() => any()}.


%% Example:
%% text_box_interaction_options() :: #{
%%   <<"TextBoxMenuOption">> => text_box_menu_option()
%% }
-type text_box_interaction_options() :: #{binary() => any()}.


%% Example:
%% update_role_custom_permission_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_role_custom_permission_response() :: #{binary() => any()}.


%% Example:
%% reference_line_label_configuration() :: #{
%%   <<"CustomLabelConfiguration">> => reference_line_custom_label_configuration(),
%%   <<"FontColor">> => string(),
%%   <<"FontConfiguration">> => font_configuration(),
%%   <<"HorizontalPosition">> => list(any()),
%%   <<"ValueLabelConfiguration">> => reference_line_value_label_configuration(),
%%   <<"VerticalPosition">> => list(any())
%% }
-type reference_line_label_configuration() :: #{binary() => any()}.


%% Example:
%% section_based_layout_canvas_size_options() :: #{
%%   <<"PaperCanvasSizeOptions">> => section_based_layout_paper_canvas_size_options()
%% }
-type section_based_layout_canvas_size_options() :: #{binary() => any()}.


%% Example:
%% topic_calculated_field() :: #{
%%   <<"Aggregation">> => list(any()),
%%   <<"AllowedAggregations">> => list(list(any())()),
%%   <<"CalculatedFieldDescription">> => string(),
%%   <<"CalculatedFieldName">> => string(),
%%   <<"CalculatedFieldSynonyms">> => list(string()),
%%   <<"CellValueSynonyms">> => list(cell_value_synonym()),
%%   <<"ColumnDataRole">> => list(any()),
%%   <<"ComparativeOrder">> => comparative_order(),
%%   <<"DefaultFormatting">> => default_formatting(),
%%   <<"DisableIndexing">> => boolean(),
%%   <<"Expression">> => string(),
%%   <<"IsIncludedInTopic">> => boolean(),
%%   <<"NeverAggregateInFilter">> => boolean(),
%%   <<"NonAdditive">> => boolean(),
%%   <<"NotAllowedAggregations">> => list(list(any())()),
%%   <<"SemanticType">> => semantic_type(),
%%   <<"TimeGranularity">> => list(any())
%% }
-type topic_calculated_field() :: #{binary() => any()}.


%% Example:
%% data_path_value() :: #{
%%   <<"DataPathType">> => data_path_type(),
%%   <<"FieldId">> => string(),
%%   <<"FieldValue">> => string()
%% }
-type data_path_value() :: #{binary() => any()}.


%% Example:
%% succeeded_topic_reviewed_answer() :: #{
%%   <<"AnswerId">> => string()
%% }
-type succeeded_topic_reviewed_answer() :: #{binary() => any()}.

%% Example:
%% describe_quick_sight_q_search_configuration_request() :: #{}
-type describe_quick_sight_q_search_configuration_request() :: #{}.


%% Example:
%% describe_template_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer(),
%%   <<"Template">> => template()
%% }
-type describe_template_response() :: #{binary() => any()}.


%% Example:
%% line_chart_marker_style_settings() :: #{
%%   <<"MarkerColor">> => string(),
%%   <<"MarkerShape">> => list(any()),
%%   <<"MarkerSize">> => string(),
%%   <<"MarkerVisibility">> => list(any())
%% }
-type line_chart_marker_style_settings() :: #{binary() => any()}.


%% Example:
%% brand_color_palette() :: #{
%%   <<"Accent">> => palette(),
%%   <<"Danger">> => palette(),
%%   <<"Dimension">> => palette(),
%%   <<"Info">> => palette(),
%%   <<"Measure">> => palette(),
%%   <<"Primary">> => palette(),
%%   <<"Secondary">> => palette(),
%%   <<"Success">> => palette(),
%%   <<"Warning">> => palette()
%% }
-type brand_color_palette() :: #{binary() => any()}.


%% Example:
%% list_asset_bundle_export_jobs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_asset_bundle_export_jobs_request() :: #{binary() => any()}.


%% Example:
%% permission() :: #{
%%   <<"Actions">> => list(string()),
%%   <<"Principal">> => string()
%% }
-type permission() :: #{binary() => any()}.


%% Example:
%% decimal_places_configuration() :: #{
%%   <<"DecimalPlaces">> => float()
%% }
-type decimal_places_configuration() :: #{binary() => any()}.


%% Example:
%% update_data_set_request() :: #{
%%   <<"ColumnGroups">> => list(column_group()),
%%   <<"ColumnLevelPermissionRules">> => list(column_level_permission_rule()),
%%   <<"DataSetUsageConfiguration">> => data_set_usage_configuration(),
%%   <<"DatasetParameters">> => list(dataset_parameter()),
%%   <<"FieldFolders">> => map(),
%%   <<"ImportMode">> := list(any()),
%%   <<"LogicalTableMap">> => map(),
%%   <<"Name">> := string(),
%%   <<"PerformanceConfiguration">> => performance_configuration(),
%%   <<"PhysicalTableMap">> := map(),
%%   <<"RowLevelPermissionDataSet">> => row_level_permission_data_set(),
%%   <<"RowLevelPermissionTagConfiguration">> => row_level_permission_tag_configuration()
%% }
-type update_data_set_request() :: #{binary() => any()}.


%% Example:
%% list_theme_versions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_theme_versions_request() :: #{binary() => any()}.

%% Example:
%% delete_brand_request() :: #{}
-type delete_brand_request() :: #{}.


%% Example:
%% body_section_content() :: #{
%%   <<"Layout">> => section_layout_configuration()
%% }
-type body_section_content() :: #{binary() => any()}.


%% Example:
%% pivot_table_conditional_formatting_scope() :: #{
%%   <<"Role">> => list(any())
%% }
-type pivot_table_conditional_formatting_scope() :: #{binary() => any()}.


%% Example:
%% delete_account_customization_request() :: #{
%%   <<"Namespace">> => string()
%% }
-type delete_account_customization_request() :: #{binary() => any()}.


%% Example:
%% create_group_response() :: #{
%%   <<"Group">> => group(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type create_group_response() :: #{binary() => any()}.


%% Example:
%% geospatial_solid_color() :: #{
%%   <<"Color">> => string(),
%%   <<"State">> => list(any())
%% }
-type geospatial_solid_color() :: #{binary() => any()}.

%% Example:
%% describe_theme_alias_request() :: #{}
-type describe_theme_alias_request() :: #{}.


%% Example:
%% k_p_i_comparison_value_conditional_formatting() :: #{
%%   <<"Icon">> => conditional_formatting_icon(),
%%   <<"TextColor">> => conditional_formatting_color()
%% }
-type k_p_i_comparison_value_conditional_formatting() :: #{binary() => any()}.


%% Example:
%% box_plot_sort_configuration() :: #{
%%   <<"CategorySort">> => list(field_sort_options()),
%%   <<"PaginationConfiguration">> => pagination_configuration()
%% }
-type box_plot_sort_configuration() :: #{binary() => any()}.


%% Example:
%% list_folder_members_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_folder_members_request() :: #{binary() => any()}.


%% Example:
%% asset_bundle_cloud_formation_override_property_configuration() :: #{
%%   <<"Analyses">> => list(asset_bundle_export_job_analysis_override_properties()),
%%   <<"Dashboards">> => list(asset_bundle_export_job_dashboard_override_properties()),
%%   <<"DataSets">> => list(asset_bundle_export_job_data_set_override_properties()),
%%   <<"DataSources">> => list(asset_bundle_export_job_data_source_override_properties()),
%%   <<"Folders">> => list(asset_bundle_export_job_folder_override_properties()),
%%   <<"RefreshSchedules">> => list(asset_bundle_export_job_refresh_schedule_override_properties()),
%%   <<"ResourceIdOverrideConfiguration">> => asset_bundle_export_job_resource_id_override_configuration(),
%%   <<"Themes">> => list(asset_bundle_export_job_theme_override_properties()),
%%   <<"VPCConnections">> => list(asset_bundle_export_job_vpc_connection_override_properties())
%% }
-type asset_bundle_cloud_formation_override_property_configuration() :: #{binary() => any()}.


%% Example:
%% box_plot_aggregated_field_wells() :: #{
%%   <<"GroupBy">> => list(dimension_field()),
%%   <<"Values">> => list(measure_field())
%% }
-type box_plot_aggregated_field_wells() :: #{binary() => any()}.


%% Example:
%% sheet_image_source() :: #{
%%   <<"SheetImageStaticFileSource">> => sheet_image_static_file_source()
%% }
-type sheet_image_source() :: #{binary() => any()}.


%% Example:
%% capabilities() :: #{
%%   <<"ExportToPdfInScheduledReports">> => list(any()),
%%   <<"Flow">> => list(any()),
%%   <<"ShareDatasets">> => list(any()),
%%   <<"ShareDashboards">> => list(any()),
%%   <<"IncludeContentInScheduledReportsEmail">> => list(any()),
%%   <<"CreateAndUpdateThemes">> => list(any()),
%%   <<"RenameSharedFolders">> => list(any()),
%%   <<"AddOrRunAnomalyDetectionForAnalyses">> => list(any()),
%%   <<"SubscribeDashboardEmailReports">> => list(any()),
%%   <<"CreateAndUpdateDataSources">> => list(any()),
%%   <<"PrintReports">> => list(any()),
%%   <<"KnowledgeBase">> => list(any()),
%%   <<"ExportToExcel">> => list(any()),
%%   <<"Space">> => list(any()),
%%   <<"PublishWithoutApproval">> => list(any()),
%%   <<"CreateChatAgents">> => list(any()),
%%   <<"PerformFlowUiTask">> => list(any()),
%%   <<"CreateSharedFolders">> => list(any()),
%%   <<"Analysis">> => list(any()),
%%   <<"ExportToExcelInScheduledReports">> => list(any()),
%%   <<"Research">> => list(any()),
%%   <<"Dashboard">> => list(any()),
%%   <<"Action">> => list(any()),
%%   <<"ChatAgent">> => list(any()),
%%   <<"CreateSPICEDataset">> => list(any()),
%%   <<"ShareAnalyses">> => list(any()),
%%   <<"UseBedrockModels">> => list(any()),
%%   <<"ExportToPdf">> => list(any()),
%%   <<"CreateAndUpdateDashboardEmailReports">> => list(any()),
%%   <<"ShareDataSources">> => list(any()),
%%   <<"ViewAccountSPICECapacity">> => list(any()),
%%   <<"CreateAndUpdateThresholdAlerts">> => list(any()),
%%   <<"ExportToCsvInScheduledReports">> => list(any()),
%%   <<"Automate">> => list(any()),
%%   <<"ExportToCsv">> => list(any()),
%%   <<"UseAgentWebSearch">> => list(any()),
%%   <<"CreateAndUpdateDatasets">> => list(any())
%% }
-type capabilities() :: #{binary() => any()}.


%% Example:
%% k_p_i_visual_standard_layout() :: #{
%%   <<"Type">> => list(any())
%% }
-type k_p_i_visual_standard_layout() :: #{binary() => any()}.

%% Example:
%% create_role_membership_request() :: #{}
-type create_role_membership_request() :: #{}.


%% Example:
%% layout_configuration() :: #{
%%   <<"FreeFormLayout">> => free_form_layout_configuration(),
%%   <<"GridLayout">> => grid_layout_configuration(),
%%   <<"SectionBasedLayout">> => section_based_layout_configuration()
%% }
-type layout_configuration() :: #{binary() => any()}.


%% Example:
%% data_path_color() :: #{
%%   <<"Color">> => string(),
%%   <<"Element">> => data_path_value(),
%%   <<"TimeGranularity">> => list(any())
%% }
-type data_path_color() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_data_set_override_parameters() :: #{
%%   <<"DataSetId">> => string(),
%%   <<"DataSetRefreshProperties">> => data_set_refresh_properties(),
%%   <<"Name">> => string()
%% }
-type asset_bundle_import_job_data_set_override_parameters() :: #{binary() => any()}.


%% Example:
%% topic_filter() :: #{
%%   <<"CategoryFilter">> => topic_category_filter(),
%%   <<"DateRangeFilter">> => topic_date_range_filter(),
%%   <<"FilterClass">> => list(any()),
%%   <<"FilterDescription">> => string(),
%%   <<"FilterName">> => string(),
%%   <<"FilterSynonyms">> => list(string()),
%%   <<"FilterType">> => list(any()),
%%   <<"NullFilter">> => topic_null_filter(),
%%   <<"NumericEqualityFilter">> => topic_numeric_equality_filter(),
%%   <<"NumericRangeFilter">> => topic_numeric_range_filter(),
%%   <<"OperandFieldName">> => string(),
%%   <<"RelativeDateFilter">> => topic_relative_date_filter()
%% }
-type topic_filter() :: #{binary() => any()}.


%% Example:
%% redshift_parameters() :: #{
%%   <<"ClusterId">> => string(),
%%   <<"Database">> => string(),
%%   <<"Host">> => string(),
%%   <<"IAMParameters">> => redshift_iam_parameters(),
%%   <<"IdentityCenterConfiguration">> => identity_center_configuration(),
%%   <<"Port">> => integer()
%% }
-type redshift_parameters() :: #{binary() => any()}.


%% Example:
%% histogram_aggregated_field_wells() :: #{
%%   <<"Values">> => list(measure_field())
%% }
-type histogram_aggregated_field_wells() :: #{binary() => any()}.


%% Example:
%% predict_q_a_results_response() :: #{
%%   <<"AdditionalResults">> => list(q_a_result()),
%%   <<"PrimaryResult">> => q_a_result(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type predict_q_a_results_response() :: #{binary() => any()}.


%% Example:
%% describe_folder_resolved_permissions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"Namespace">> => string(),
%%   <<"NextToken">> => string()
%% }
-type describe_folder_resolved_permissions_request() :: #{binary() => any()}.


%% Example:
%% update_public_sharing_settings_response() :: #{
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_public_sharing_settings_response() :: #{binary() => any()}.


%% Example:
%% performance_configuration() :: #{
%%   <<"UniqueKeys">> => list(unique_key())
%% }
-type performance_configuration() :: #{binary() => any()}.


%% Example:
%% scatter_plot_field_wells() :: #{
%%   <<"ScatterPlotCategoricallyAggregatedFieldWells">> => scatter_plot_categorically_aggregated_field_wells(),
%%   <<"ScatterPlotUnaggregatedFieldWells">> => scatter_plot_unaggregated_field_wells()
%% }
-type scatter_plot_field_wells() :: #{binary() => any()}.


%% Example:
%% update_data_source_permissions_request() :: #{
%%   <<"GrantPermissions">> => list(resource_permission()),
%%   <<"RevokePermissions">> => list(resource_permission())
%% }
-type update_data_source_permissions_request() :: #{binary() => any()}.


%% Example:
%% topic_refresh_details() :: #{
%%   <<"RefreshArn">> => string(),
%%   <<"RefreshId">> => string(),
%%   <<"RefreshStatus">> => list(any())
%% }
-type topic_refresh_details() :: #{binary() => any()}.


%% Example:
%% anonymous_user_generative_qn_a_embedding_configuration() :: #{
%%   <<"InitialTopicId">> => string()
%% }
-type anonymous_user_generative_qn_a_embedding_configuration() :: #{binary() => any()}.


%% Example:
%% custom_values_configuration() :: #{
%%   <<"CustomValues">> => custom_parameter_values(),
%%   <<"IncludeNullValue">> => boolean()
%% }
-type custom_values_configuration() :: #{binary() => any()}.


%% Example:
%% describe_quick_sight_q_search_configuration_response() :: #{
%%   <<"QSearchStatus">> => list(any()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_quick_sight_q_search_configuration_response() :: #{binary() => any()}.


%% Example:
%% data_qn_a_configurations() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type data_qn_a_configurations() :: #{binary() => any()}.


%% Example:
%% table_sort_configuration() :: #{
%%   <<"PaginationConfiguration">> => pagination_configuration(),
%%   <<"RowSort">> => list(field_sort_options())
%% }
-type table_sort_configuration() :: #{binary() => any()}.


%% Example:
%% s3_parameters() :: #{
%%   <<"ManifestFileLocation">> => manifest_file_location(),
%%   <<"RoleArn">> => string()
%% }
-type s3_parameters() :: #{binary() => any()}.


%% Example:
%% list_iam_policy_assignments_request() :: #{
%%   <<"AssignmentStatus">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_iam_policy_assignments_request() :: #{binary() => any()}.


%% Example:
%% asset_bundle_import_job_data_source_override_permissions() :: #{
%%   <<"DataSourceIds">> => list(string()),
%%   <<"Permissions">> => asset_bundle_resource_permissions()
%% }
-type asset_bundle_import_job_data_source_override_permissions() :: #{binary() => any()}.


%% Example:
%% default_new_sheet_configuration() :: #{
%%   <<"InteractiveLayoutConfiguration">> => default_interactive_layout_configuration(),
%%   <<"PaginatedLayoutConfiguration">> => default_paginated_layout_configuration(),
%%   <<"SheetContentType">> => list(any())
%% }
-type default_new_sheet_configuration() :: #{binary() => any()}.


%% Example:
%% describe_account_customization_response() :: #{
%%   <<"AccountCustomization">> => account_customization(),
%%   <<"Arn">> => string(),
%%   <<"AwsAccountId">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type describe_account_customization_response() :: #{binary() => any()}.

%% Example:
%% delete_topic_request() :: #{}
-type delete_topic_request() :: #{}.


%% Example:
%% default_text_area_control_options() :: #{
%%   <<"Delimiter">> => string(),
%%   <<"DisplayOptions">> => text_area_control_display_options()
%% }
-type default_text_area_control_options() :: #{binary() => any()}.


%% Example:
%% update_quick_sight_q_search_configuration_response() :: #{
%%   <<"QSearchStatus">> => list(any()),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type update_quick_sight_q_search_configuration_response() :: #{binary() => any()}.


%% Example:
%% custom_action_filter_operation() :: #{
%%   <<"SelectedFieldsConfiguration">> => filter_operation_selected_fields_configuration(),
%%   <<"TargetVisualsConfiguration">> => filter_operation_target_visuals_configuration()
%% }
-type custom_action_filter_operation() :: #{binary() => any()}.


%% Example:
%% word_cloud_visual() :: #{
%%   <<"Actions">> => list(visual_custom_action()),
%%   <<"ChartConfiguration">> => word_cloud_chart_configuration(),
%%   <<"ColumnHierarchies">> => list(column_hierarchy()),
%%   <<"Subtitle">> => visual_subtitle_label_options(),
%%   <<"Title">> => visual_title_label_options(),
%%   <<"VisualContentAltText">> => string(),
%%   <<"VisualId">> => string()
%% }
-type word_cloud_visual() :: #{binary() => any()}.


%% Example:
%% format_configuration() :: #{
%%   <<"DateTimeFormatConfiguration">> => date_time_format_configuration(),
%%   <<"NumberFormatConfiguration">> => number_format_configuration(),
%%   <<"StringFormatConfiguration">> => string_format_configuration()
%% }
-type format_configuration() :: #{binary() => any()}.


%% Example:
%% read_authorization_code_grant_details() :: #{
%%   <<"AuthorizationEndpoint">> => string(),
%%   <<"ClientId">> => string(),
%%   <<"TokenEndpoint">> => string()
%% }
-type read_authorization_code_grant_details() :: #{binary() => any()}.


%% Example:
%% update_brand_published_version_request() :: #{
%%   <<"VersionId">> := string()
%% }
-type update_brand_published_version_request() :: #{binary() => any()}.


%% Example:
%% list_dashboard_versions_response() :: #{
%%   <<"DashboardVersionSummaryList">> => list(dashboard_version_summary()),
%%   <<"NextToken">> => string(),
%%   <<"RequestId">> => string(),
%%   <<"Status">> => integer()
%% }
-type list_dashboard_versions_response() :: #{binary() => any()}.


%% Example:
%% geospatial_map_configuration() :: #{
%%   <<"FieldWells">> => geospatial_map_field_wells(),
%%   <<"Interactions">> => visual_interaction_options(),
%%   <<"Legend">> => legend_options(),
%%   <<"MapStyleOptions">> => geospatial_map_style_options(),
%%   <<"PointStyleOptions">> => geospatial_point_style_options(),
%%   <<"Tooltip">> => tooltip_options(),
%%   <<"VisualPalette">> => visual_palette(),
%%   <<"WindowOptions">> => geospatial_window_options()
%% }
-type geospatial_map_configuration() :: #{binary() => any()}.


%% Example:
%% section_based_layout_configuration() :: #{
%%   <<"BodySections">> => list(body_section_configuration()),
%%   <<"CanvasSizeOptions">> => section_based_layout_canvas_size_options(),
%%   <<"FooterSections">> => list(header_footer_section_configuration()),
%%   <<"HeaderSections">> => list(header_footer_section_configuration())
%% }
-type section_based_layout_configuration() :: #{binary() => any()}.

-type batch_create_topic_reviewed_answer_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type batch_delete_topic_reviewed_answer_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type cancel_ingestion_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type create_account_customization_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type create_account_subscription_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type create_action_connector_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type create_analysis_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type create_brand_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    conflict_exception().

-type create_custom_permissions_errors() ::
    precondition_not_met_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type create_dashboard_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type create_data_set_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type create_data_source_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    customer_managed_key_unavailable_exception() | 
    internal_failure_exception().

-type create_folder_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type create_folder_membership_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type create_group_errors() ::
    precondition_not_met_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type create_group_membership_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type create_iam_policy_assignment_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    concurrent_updating_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type create_ingestion_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type create_namespace_errors() ::
    precondition_not_met_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type create_refresh_schedule_errors() ::
    precondition_not_met_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type create_role_membership_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type create_template_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type create_template_alias_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    resource_exists_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type create_theme_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type create_theme_alias_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type create_topic_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type create_topic_refresh_schedule_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type create_vpc_connection_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type delete_account_custom_permission_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type delete_account_customization_errors() ::
    precondition_not_met_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type delete_account_subscription_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type delete_action_connector_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type delete_analysis_errors() ::
    throttling_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type delete_brand_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_brand_assignment_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_custom_permissions_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type delete_dashboard_errors() ::
    throttling_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type delete_data_set_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type delete_data_set_refresh_properties_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type delete_data_source_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type delete_default_q_business_application_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type delete_folder_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type delete_folder_membership_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type delete_group_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type delete_group_membership_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type delete_iam_policy_assignment_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    concurrent_updating_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type delete_identity_propagation_config_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type delete_namespace_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type delete_refresh_schedule_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type delete_role_custom_permission_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type delete_role_membership_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type delete_template_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type delete_template_alias_errors() ::
    throttling_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type delete_theme_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type delete_theme_alias_errors() ::
    throttling_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type delete_topic_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type delete_topic_refresh_schedule_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type delete_user_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type delete_user_by_principal_id_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type delete_user_custom_permission_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type delete_vpc_connection_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type describe_account_custom_permission_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_account_customization_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type describe_account_settings_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type describe_account_subscription_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type describe_action_connector_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_action_connector_permissions_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_analysis_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type describe_analysis_definition_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type describe_analysis_permissions_errors() ::
    throttling_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type describe_asset_bundle_export_job_errors() ::
    throttling_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception().

-type describe_asset_bundle_import_job_errors() ::
    throttling_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception().

-type describe_brand_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_brand_assignment_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_brand_published_version_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_custom_permissions_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type describe_dashboard_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type describe_dashboard_definition_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type describe_dashboard_permissions_errors() ::
    throttling_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type describe_dashboard_snapshot_job_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type describe_dashboard_snapshot_job_result_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type describe_dashboards_q_a_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type describe_data_set_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_data_set_permissions_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_data_set_refresh_properties_errors() ::
    precondition_not_met_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_data_source_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_data_source_permissions_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_default_q_business_application_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_folder_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type describe_folder_permissions_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type describe_folder_resolved_permissions_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type describe_group_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type describe_group_membership_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type describe_iam_policy_assignment_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_ingestion_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_ip_restriction_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_key_registration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    internal_failure_exception().

-type describe_namespace_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type describe_q_personalization_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type describe_quick_sight_q_search_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type describe_refresh_schedule_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_role_custom_permission_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type describe_template_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type describe_template_alias_errors() ::
    throttling_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type describe_template_definition_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type describe_template_permissions_errors() ::
    throttling_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type describe_theme_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type describe_theme_alias_errors() ::
    throttling_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type describe_theme_permissions_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type describe_topic_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_topic_permissions_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_topic_refresh_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_topic_refresh_schedule_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type describe_user_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type describe_vpc_connection_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type generate_embed_url_for_anonymous_user_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    session_lifetime_in_minutes_invalid_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    unsupported_pricing_plan_exception() | 
    internal_failure_exception().

-type generate_embed_url_for_registered_user_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    session_lifetime_in_minutes_invalid_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    unsupported_pricing_plan_exception() | 
    quick_sight_user_not_found_exception() | 
    internal_failure_exception().

-type generate_embed_url_for_registered_user_with_identity_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    session_lifetime_in_minutes_invalid_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    unsupported_pricing_plan_exception() | 
    quick_sight_user_not_found_exception() | 
    internal_failure_exception().

-type get_dashboard_embed_url_errors() ::
    identity_type_not_supported_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    session_lifetime_in_minutes_invalid_exception() | 
    invalid_parameter_value_exception() | 
    domain_not_whitelisted_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    unsupported_pricing_plan_exception() | 
    quick_sight_user_not_found_exception() | 
    internal_failure_exception().

-type get_flow_metadata_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    internal_failure_exception().

-type get_flow_permissions_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    internal_failure_exception().

-type get_session_embed_url_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    session_lifetime_in_minutes_invalid_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    quick_sight_user_not_found_exception() | 
    internal_failure_exception().

-type list_action_connectors_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    internal_failure_exception().

-type list_analyses_errors() ::
    throttling_exception() | 
    invalid_next_token_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type list_asset_bundle_export_jobs_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception().

-type list_asset_bundle_import_jobs_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception().

-type list_brands_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_request_exception().

-type list_custom_permissions_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type list_dashboard_versions_errors() ::
    throttling_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type list_dashboards_errors() ::
    throttling_exception() | 
    invalid_next_token_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type list_data_sets_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    internal_failure_exception().

-type list_data_sources_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    internal_failure_exception().

-type list_flows_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    internal_failure_exception().

-type list_folder_members_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type list_folders_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type list_folders_for_resource_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type list_group_memberships_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type list_groups_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type list_iam_policy_assignments_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_iam_policy_assignments_for_user_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    concurrent_updating_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_identity_propagation_configs_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_ingestions_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_namespaces_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type list_refresh_schedules_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_role_memberships_errors() ::
    precondition_not_met_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_template_aliases_errors() ::
    throttling_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type list_template_versions_errors() ::
    throttling_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type list_templates_errors() ::
    throttling_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type list_theme_aliases_errors() ::
    throttling_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type list_theme_versions_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type list_themes_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type list_topic_refresh_schedules_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type list_topic_reviewed_answers_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_topics_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    internal_failure_exception().

-type list_user_groups_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type list_users_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type list_vpc_connections_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type predict_q_a_results_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    internal_failure_exception().

-type put_data_set_refresh_properties_errors() ::
    precondition_not_met_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type register_user_errors() ::
    precondition_not_met_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type restore_analysis_errors() ::
    precondition_not_met_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type search_action_connectors_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception().

-type search_analyses_errors() ::
    throttling_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type search_dashboards_errors() ::
    throttling_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type search_data_sets_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type search_data_sources_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type search_flows_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    internal_failure_exception().

-type search_folders_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type search_groups_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type search_topics_errors() ::
    throttling_exception() | 
    invalid_parameter_value_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type start_asset_bundle_export_job_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception().

-type start_asset_bundle_import_job_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception().

-type start_dashboard_snapshot_job_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    unsupported_pricing_plan_exception() | 
    internal_failure_exception().

-type start_dashboard_snapshot_job_schedule_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type tag_resource_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_account_custom_permission_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_account_customization_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type update_account_settings_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type update_action_connector_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type update_action_connector_permissions_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type update_analysis_errors() ::
    throttling_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type update_analysis_permissions_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type update_application_with_token_exchange_grant_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_brand_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_brand_assignment_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_brand_published_version_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_custom_permissions_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type update_dashboard_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type update_dashboard_links_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type update_dashboard_permissions_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type update_dashboard_published_version_errors() ::
    throttling_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type update_dashboards_q_a_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type update_data_set_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type update_data_set_permissions_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type update_data_source_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    customer_managed_key_unavailable_exception() | 
    internal_failure_exception().

-type update_data_source_permissions_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type update_default_q_business_application_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type update_flow_permissions_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    internal_failure_exception().

-type update_folder_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type update_folder_permissions_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type update_group_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type update_iam_policy_assignment_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    concurrent_updating_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_identity_propagation_config_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_ip_restriction_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_key_registration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    internal_failure_exception().

-type update_public_sharing_settings_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_pricing_plan_exception() | 
    internal_failure_exception().

-type update_q_personalization_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type update_quick_sight_q_search_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type update_refresh_schedule_errors() ::
    precondition_not_met_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_role_custom_permission_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type update_s_p_i_c_e_capacity_configuration_errors() ::
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_template_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type update_template_alias_errors() ::
    throttling_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type update_template_permissions_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type update_theme_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type update_theme_alias_errors() ::
    throttling_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type update_theme_permissions_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type update_topic_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type update_topic_permissions_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

-type update_topic_refresh_schedule_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    resource_exists_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    internal_failure_exception().

-type update_user_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type update_user_custom_permission_errors() ::
    precondition_not_met_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    resource_unavailable_exception() | 
    internal_failure_exception().

-type update_vpc_connection_errors() ::
    limit_exceeded_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    unsupported_user_edition_exception() | 
    internal_failure_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates new reviewed answers for a Q Topic.
-spec batch_create_topic_reviewed_answer(aws_client:aws_client(), binary() | list(), binary() | list(), batch_create_topic_reviewed_answer_request()) ->
    {ok, batch_create_topic_reviewed_answer_response(), tuple()} |
    {error, any()} |
    {error, batch_create_topic_reviewed_answer_errors(), tuple()}.
batch_create_topic_reviewed_answer(Client, AwsAccountId, TopicId, Input) ->
    batch_create_topic_reviewed_answer(Client, AwsAccountId, TopicId, Input, []).

-spec batch_create_topic_reviewed_answer(aws_client:aws_client(), binary() | list(), binary() | list(), batch_create_topic_reviewed_answer_request(), proplists:proplist()) ->
    {ok, batch_create_topic_reviewed_answer_response(), tuple()} |
    {error, any()} |
    {error, batch_create_topic_reviewed_answer_errors(), tuple()}.
batch_create_topic_reviewed_answer(Client, AwsAccountId, TopicId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), "/batch-create-reviewed-answers"],
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

%% @doc Deletes reviewed answers for Q Topic.
-spec batch_delete_topic_reviewed_answer(aws_client:aws_client(), binary() | list(), binary() | list(), batch_delete_topic_reviewed_answer_request()) ->
    {ok, batch_delete_topic_reviewed_answer_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_topic_reviewed_answer_errors(), tuple()}.
batch_delete_topic_reviewed_answer(Client, AwsAccountId, TopicId, Input) ->
    batch_delete_topic_reviewed_answer(Client, AwsAccountId, TopicId, Input, []).

-spec batch_delete_topic_reviewed_answer(aws_client:aws_client(), binary() | list(), binary() | list(), batch_delete_topic_reviewed_answer_request(), proplists:proplist()) ->
    {ok, batch_delete_topic_reviewed_answer_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_topic_reviewed_answer_errors(), tuple()}.
batch_delete_topic_reviewed_answer(Client, AwsAccountId, TopicId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), "/batch-delete-reviewed-answers"],
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

%% @doc Cancels an ongoing ingestion of data into SPICE.
-spec cancel_ingestion(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), cancel_ingestion_request()) ->
    {ok, cancel_ingestion_response(), tuple()} |
    {error, any()} |
    {error, cancel_ingestion_errors(), tuple()}.
cancel_ingestion(Client, AwsAccountId, DataSetId, IngestionId, Input) ->
    cancel_ingestion(Client, AwsAccountId, DataSetId, IngestionId, Input, []).

-spec cancel_ingestion(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), cancel_ingestion_request(), proplists:proplist()) ->
    {ok, cancel_ingestion_response(), tuple()} |
    {error, any()} |
    {error, cancel_ingestion_errors(), tuple()}.
cancel_ingestion(Client, AwsAccountId, DataSetId, IngestionId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/ingestions/", aws_util:encode_uri(IngestionId), ""],
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

%% @doc Creates Amazon Quick Sight customizations.
%%
%% Currently, you can add a custom default theme by using the
%% `CreateAccountCustomization' or `UpdateAccountCustomization'
%% API operation. To further customize Amazon Quick Sight by removing Amazon
%% Quick Sight
%% sample assets and videos for all new users, see Customizing Quick Sight:
%% https://docs.aws.amazon.com/quicksight/latest/user/customizing-quicksight.html
%% in the Amazon Quick Sight User Guide.
%%
%% You can create customizations for your Amazon Web Services account or, if
%% you specify a namespace, for
%% a Quick Sight namespace instead. Customizations that apply to a namespace
%% always override
%% customizations that apply to an Amazon Web Services account. To find out
%% which customizations apply, use
%% the `DescribeAccountCustomization' API operation.
%%
%% Before you use the `CreateAccountCustomization' API operation to add a
%% theme
%% as the namespace default, make sure that you first share the theme with
%% the namespace.
%% If you don't share it with the namespace, the theme isn't visible
%% to your users
%% even if you make it the default theme.
%% To check if the theme is shared, view the current permissions by using the
%%
%% ```
%% DescribeThemePermissions:
%% https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeThemePermissions.html
%% '''
%% API operation.
%% To share the theme, grant permissions by using the
%%
%% ```
%% UpdateThemePermissions:
%% https://docs.aws.amazon.com/quicksight/latest/APIReference/API_UpdateThemePermissions.html
%% '''
%% API operation.
-spec create_account_customization(aws_client:aws_client(), binary() | list(), create_account_customization_request()) ->
    {ok, create_account_customization_response(), tuple()} |
    {error, any()} |
    {error, create_account_customization_errors(), tuple()}.
create_account_customization(Client, AwsAccountId, Input) ->
    create_account_customization(Client, AwsAccountId, Input, []).

-spec create_account_customization(aws_client:aws_client(), binary() | list(), create_account_customization_request(), proplists:proplist()) ->
    {ok, create_account_customization_response(), tuple()} |
    {error, any()} |
    {error, create_account_customization_errors(), tuple()}.
create_account_customization(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/customizations"],
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

    QueryMapping = [
                     {<<"namespace">>, <<"Namespace">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Amazon Quick Sight account, or subscribes to Amazon Quick
%% Sight Q.
%%
%% The Amazon Web Services Region for the account is derived from what is
%% configured in the
%% CLI or SDK.
%%
%% Before you use this operation, make sure that you can connect to an
%% existing Amazon Web Services account. If you don't have an Amazon Web
%% Services account, see Sign
%% up for Amazon Web Services:
%% https://docs.aws.amazon.com/quicksight/latest/user/setting-up-aws-sign-up.html
%% in the Amazon Quick Sight User
%% Guide. The person who signs up for Amazon Quick Sight needs to have the
%% correct Identity and Access Management (IAM) permissions. For more
%% information,
%% see IAM Policy Examples for Amazon Quick Sight:
%% https://docs.aws.amazon.com/quicksight/latest/user/iam-policy-examples.html
%% in the
%% Amazon Quick Sight User Guide.
%%
%% If your IAM policy includes both the `Subscribe' and
%% `CreateAccountSubscription' actions, make sure that both actions are
%% set
%% to `Allow'. If either action is set to `Deny', the
%% `Deny' action prevails and your API call fails.
%%
%% You can't pass an existing IAM role to access other Amazon Web
%% Services services using this API operation. To pass your existing IAM role
%% to
%% Amazon Quick Sight, see Passing IAM roles to Amazon Quick Sight:
%% https://docs.aws.amazon.com/quicksight/latest/user/security_iam_service-with-iam.html#security-create-iam-role
%% in the
%% Amazon Quick Sight User Guide.
%%
%% You can't set default resource access on the new account from the
%% Amazon Quick Sight
%% API. Instead, add default resource access from the Amazon Quick Sight
%% console. For more
%% information about setting default resource access to Amazon Web Services
%% services, see
%% Setting default resource
%% access to Amazon Web Services services:
%% https://docs.aws.amazon.com/quicksight/latest/user/scoping-policies-defaults.html
%% in the Amazon Quick Sight
%% User Guide.
-spec create_account_subscription(aws_client:aws_client(), binary() | list(), create_account_subscription_request()) ->
    {ok, create_account_subscription_response(), tuple()} |
    {error, any()} |
    {error, create_account_subscription_errors(), tuple()}.
create_account_subscription(Client, AwsAccountId, Input) ->
    create_account_subscription(Client, AwsAccountId, Input, []).

-spec create_account_subscription(aws_client:aws_client(), binary() | list(), create_account_subscription_request(), proplists:proplist()) ->
    {ok, create_account_subscription_response(), tuple()} |
    {error, any()} |
    {error, create_account_subscription_errors(), tuple()}.
create_account_subscription(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/account/", aws_util:encode_uri(AwsAccountId), ""],
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

%% @doc Creates an action connector that enables Amazon Quick Sight to
%% connect to external services and perform actions.
%%
%% Action connectors support various authentication methods and can be
%% configured with specific actions from supported connector types
%% like Amazon S3, Salesforce, JIRA.
-spec create_action_connector(aws_client:aws_client(), binary() | list(), create_action_connector_request()) ->
    {ok, create_action_connector_response(), tuple()} |
    {error, any()} |
    {error, create_action_connector_errors(), tuple()}.
create_action_connector(Client, AwsAccountId, Input) ->
    create_action_connector(Client, AwsAccountId, Input, []).

-spec create_action_connector(aws_client:aws_client(), binary() | list(), create_action_connector_request(), proplists:proplist()) ->
    {ok, create_action_connector_response(), tuple()} |
    {error, any()} |
    {error, create_action_connector_errors(), tuple()}.
create_action_connector(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/action-connectors"],
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

%% @doc Creates an analysis in Amazon Quick Sight.
%%
%% Analyses can be created either from a template or from an
%% `AnalysisDefinition'.
-spec create_analysis(aws_client:aws_client(), binary() | list(), binary() | list(), create_analysis_request()) ->
    {ok, create_analysis_response(), tuple()} |
    {error, any()} |
    {error, create_analysis_errors(), tuple()}.
create_analysis(Client, AnalysisId, AwsAccountId, Input) ->
    create_analysis(Client, AnalysisId, AwsAccountId, Input, []).

-spec create_analysis(aws_client:aws_client(), binary() | list(), binary() | list(), create_analysis_request(), proplists:proplist()) ->
    {ok, create_analysis_response(), tuple()} |
    {error, any()} |
    {error, create_analysis_errors(), tuple()}.
create_analysis(Client, AnalysisId, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/analyses/", aws_util:encode_uri(AnalysisId), ""],
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

%% @doc Creates an Quick Sight brand.
-spec create_brand(aws_client:aws_client(), binary() | list(), binary() | list(), create_brand_request()) ->
    {ok, create_brand_response(), tuple()} |
    {error, any()} |
    {error, create_brand_errors(), tuple()}.
create_brand(Client, AwsAccountId, BrandId, Input) ->
    create_brand(Client, AwsAccountId, BrandId, Input, []).

-spec create_brand(aws_client:aws_client(), binary() | list(), binary() | list(), create_brand_request(), proplists:proplist()) ->
    {ok, create_brand_response(), tuple()} |
    {error, any()} |
    {error, create_brand_errors(), tuple()}.
create_brand(Client, AwsAccountId, BrandId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/brands/", aws_util:encode_uri(BrandId), ""],
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

%% @doc Creates a custom permissions profile.
-spec create_custom_permissions(aws_client:aws_client(), binary() | list(), create_custom_permissions_request()) ->
    {ok, create_custom_permissions_response(), tuple()} |
    {error, any()} |
    {error, create_custom_permissions_errors(), tuple()}.
create_custom_permissions(Client, AwsAccountId, Input) ->
    create_custom_permissions(Client, AwsAccountId, Input, []).

-spec create_custom_permissions(aws_client:aws_client(), binary() | list(), create_custom_permissions_request(), proplists:proplist()) ->
    {ok, create_custom_permissions_response(), tuple()} |
    {error, any()} |
    {error, create_custom_permissions_errors(), tuple()}.
create_custom_permissions(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/custom-permissions"],
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

%% @doc Creates a dashboard from either a template or directly with a
%% `DashboardDefinition'.
%%
%% To first create a template, see the
%% ```
%% CreateTemplate:
%% https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateTemplate.html
%% ''' API operation.
%%
%% A dashboard is an entity in Amazon Quick Sight that identifies Amazon
%% Quick Sight
%% reports, created from analyses. You can share Amazon Quick Sight
%% dashboards. With the
%% right permissions, you can create scheduled email reports from them. If
%% you have the
%% correct permissions, you can create a dashboard from a template that
%% exists in a
%% different Amazon Web Services account.
-spec create_dashboard(aws_client:aws_client(), binary() | list(), binary() | list(), create_dashboard_request()) ->
    {ok, create_dashboard_response(), tuple()} |
    {error, any()} |
    {error, create_dashboard_errors(), tuple()}.
create_dashboard(Client, AwsAccountId, DashboardId, Input) ->
    create_dashboard(Client, AwsAccountId, DashboardId, Input, []).

-spec create_dashboard(aws_client:aws_client(), binary() | list(), binary() | list(), create_dashboard_request(), proplists:proplist()) ->
    {ok, create_dashboard_response(), tuple()} |
    {error, any()} |
    {error, create_dashboard_errors(), tuple()}.
create_dashboard(Client, AwsAccountId, DashboardId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), ""],
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

%% @doc Creates a dataset.
%%
%% This operation doesn't support datasets that include uploaded files
%% as a source.
-spec create_data_set(aws_client:aws_client(), binary() | list(), create_data_set_request()) ->
    {ok, create_data_set_response(), tuple()} |
    {error, any()} |
    {error, create_data_set_errors(), tuple()}.
create_data_set(Client, AwsAccountId, Input) ->
    create_data_set(Client, AwsAccountId, Input, []).

-spec create_data_set(aws_client:aws_client(), binary() | list(), create_data_set_request(), proplists:proplist()) ->
    {ok, create_data_set_response(), tuple()} |
    {error, any()} |
    {error, create_data_set_errors(), tuple()}.
create_data_set(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets"],
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

%% @doc Creates a data source.
-spec create_data_source(aws_client:aws_client(), binary() | list(), create_data_source_request()) ->
    {ok, create_data_source_response(), tuple()} |
    {error, any()} |
    {error, create_data_source_errors(), tuple()}.
create_data_source(Client, AwsAccountId, Input) ->
    create_data_source(Client, AwsAccountId, Input, []).

-spec create_data_source(aws_client:aws_client(), binary() | list(), create_data_source_request(), proplists:proplist()) ->
    {ok, create_data_source_response(), tuple()} |
    {error, any()} |
    {error, create_data_source_errors(), tuple()}.
create_data_source(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sources"],
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

%% @doc Creates an empty shared folder.
-spec create_folder(aws_client:aws_client(), binary() | list(), binary() | list(), create_folder_request()) ->
    {ok, create_folder_response(), tuple()} |
    {error, any()} |
    {error, create_folder_errors(), tuple()}.
create_folder(Client, AwsAccountId, FolderId, Input) ->
    create_folder(Client, AwsAccountId, FolderId, Input, []).

-spec create_folder(aws_client:aws_client(), binary() | list(), binary() | list(), create_folder_request(), proplists:proplist()) ->
    {ok, create_folder_response(), tuple()} |
    {error, any()} |
    {error, create_folder_errors(), tuple()}.
create_folder(Client, AwsAccountId, FolderId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), ""],
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

%% @doc Adds an asset, such as a dashboard, analysis, or dataset into a
%% folder.
-spec create_folder_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), create_folder_membership_request()) ->
    {ok, create_folder_membership_response(), tuple()} |
    {error, any()} |
    {error, create_folder_membership_errors(), tuple()}.
create_folder_membership(Client, AwsAccountId, FolderId, MemberId, MemberType, Input) ->
    create_folder_membership(Client, AwsAccountId, FolderId, MemberId, MemberType, Input, []).

-spec create_folder_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), create_folder_membership_request(), proplists:proplist()) ->
    {ok, create_folder_membership_response(), tuple()} |
    {error, any()} |
    {error, create_folder_membership_errors(), tuple()}.
create_folder_membership(Client, AwsAccountId, FolderId, MemberId, MemberType, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), "/members/", aws_util:encode_uri(MemberType), "/", aws_util:encode_uri(MemberId), ""],
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

%% @doc Use the `CreateGroup' operation to create a group in Quick Sight.
%%
%% You can create up to 10,000 groups in a namespace. If you want to create
%% more than 10,000 groups in a namespace, contact Amazon Web Services
%% Support.
%%
%% The permissions resource is
%%
%% ```
%% arn:aws:quicksight:::group/default/ '''.
%%
%% The response is a group object.
-spec create_group(aws_client:aws_client(), binary() | list(), binary() | list(), create_group_request()) ->
    {ok, create_group_response(), tuple()} |
    {error, any()} |
    {error, create_group_errors(), tuple()}.
create_group(Client, AwsAccountId, Namespace, Input) ->
    create_group(Client, AwsAccountId, Namespace, Input, []).

-spec create_group(aws_client:aws_client(), binary() | list(), binary() | list(), create_group_request(), proplists:proplist()) ->
    {ok, create_group_response(), tuple()} |
    {error, any()} |
    {error, create_group_errors(), tuple()}.
create_group(Client, AwsAccountId, Namespace, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/groups"],
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

%% @doc Adds an Amazon Quick Sight user to an Amazon Quick Sight group.
-spec create_group_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), create_group_membership_request()) ->
    {ok, create_group_membership_response(), tuple()} |
    {error, any()} |
    {error, create_group_membership_errors(), tuple()}.
create_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, Input) ->
    create_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, Input, []).

-spec create_group_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), create_group_membership_request(), proplists:proplist()) ->
    {ok, create_group_membership_response(), tuple()} |
    {error, any()} |
    {error, create_group_membership_errors(), tuple()}.
create_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/groups/", aws_util:encode_uri(GroupName), "/members/", aws_util:encode_uri(MemberName), ""],
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

%% @doc Creates an assignment with one specified IAM policy, identified by
%% its
%% Amazon Resource Name (ARN).
%%
%% This policy assignment is attached to the specified groups
%% or users of Amazon Quick Sight. Assignment names are unique per Amazon Web
%% Services
%% account. To avoid overwriting rules in other namespaces, use assignment
%% names that are
%% unique.
-spec create_iam_policy_assignment(aws_client:aws_client(), binary() | list(), binary() | list(), create_iam_policy_assignment_request()) ->
    {ok, create_iam_policy_assignment_response(), tuple()} |
    {error, any()} |
    {error, create_iam_policy_assignment_errors(), tuple()}.
create_iam_policy_assignment(Client, AwsAccountId, Namespace, Input) ->
    create_iam_policy_assignment(Client, AwsAccountId, Namespace, Input, []).

-spec create_iam_policy_assignment(aws_client:aws_client(), binary() | list(), binary() | list(), create_iam_policy_assignment_request(), proplists:proplist()) ->
    {ok, create_iam_policy_assignment_response(), tuple()} |
    {error, any()} |
    {error, create_iam_policy_assignment_errors(), tuple()}.
create_iam_policy_assignment(Client, AwsAccountId, Namespace, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/iam-policy-assignments"],
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

%% @doc Creates and starts a new SPICE ingestion for a dataset.
%%
%% You can manually refresh datasets in
%% an Enterprise edition account 32 times in a 24-hour period. You can
%% manually refresh
%% datasets in a Standard edition account 8 times in a 24-hour period. Each
%% 24-hour period
%% is measured starting 24 hours before the current date and time.
%%
%% Any ingestions operating on tagged datasets inherit the same tags
%% automatically for use in
%% access control. For an example, see How do I create an IAM policy to
%% control access to Amazon EC2 resources using
%% tags?:
%% http://aws.amazon.com/premiumsupport/knowledge-center/iam-ec2-resource-tags/
%% in the Amazon Web Services Knowledge Center. Tags are visible on the
%% tagged dataset, but not on the ingestion resource.
-spec create_ingestion(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), create_ingestion_request()) ->
    {ok, create_ingestion_response(), tuple()} |
    {error, any()} |
    {error, create_ingestion_errors(), tuple()}.
create_ingestion(Client, AwsAccountId, DataSetId, IngestionId, Input) ->
    create_ingestion(Client, AwsAccountId, DataSetId, IngestionId, Input, []).

-spec create_ingestion(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), create_ingestion_request(), proplists:proplist()) ->
    {ok, create_ingestion_response(), tuple()} |
    {error, any()} |
    {error, create_ingestion_errors(), tuple()}.
create_ingestion(Client, AwsAccountId, DataSetId, IngestionId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/ingestions/", aws_util:encode_uri(IngestionId), ""],
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

%% @doc (Enterprise edition only) Creates a new namespace for you to use with
%% Amazon Quick Sight.
%%
%% A namespace allows you to isolate the Quick Sight users and groups that
%% are registered
%% for that namespace. Users that access the namespace can share assets only
%% with other
%% users or groups in the same namespace. They can't see users and groups
%% in other
%% namespaces. You can create a namespace after your Amazon Web Services
%% account is subscribed to
%% Quick Sight. The namespace must be unique within the Amazon Web Services
%% account. By default, there is a
%% limit of 100 namespaces per Amazon Web Services account. To increase your
%% limit, create a ticket with
%% Amazon Web Services Support.
-spec create_namespace(aws_client:aws_client(), binary() | list(), create_namespace_request()) ->
    {ok, create_namespace_response(), tuple()} |
    {error, any()} |
    {error, create_namespace_errors(), tuple()}.
create_namespace(Client, AwsAccountId, Input) ->
    create_namespace(Client, AwsAccountId, Input, []).

-spec create_namespace(aws_client:aws_client(), binary() | list(), create_namespace_request(), proplists:proplist()) ->
    {ok, create_namespace_response(), tuple()} |
    {error, any()} |
    {error, create_namespace_errors(), tuple()}.
create_namespace(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), ""],
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

%% @doc Creates a refresh schedule for a dataset.
%%
%% You can create up to 5 different schedules for a single dataset.
-spec create_refresh_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), create_refresh_schedule_request()) ->
    {ok, create_refresh_schedule_response(), tuple()} |
    {error, any()} |
    {error, create_refresh_schedule_errors(), tuple()}.
create_refresh_schedule(Client, AwsAccountId, DataSetId, Input) ->
    create_refresh_schedule(Client, AwsAccountId, DataSetId, Input, []).

-spec create_refresh_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), create_refresh_schedule_request(), proplists:proplist()) ->
    {ok, create_refresh_schedule_response(), tuple()} |
    {error, any()} |
    {error, create_refresh_schedule_errors(), tuple()}.
create_refresh_schedule(Client, AwsAccountId, DataSetId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/refresh-schedules"],
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

%% @doc Use `CreateRoleMembership' to add an existing Quick Sight group
%% to an existing role.
-spec create_role_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), create_role_membership_request()) ->
    {ok, create_role_membership_response(), tuple()} |
    {error, any()} |
    {error, create_role_membership_errors(), tuple()}.
create_role_membership(Client, AwsAccountId, MemberName, Namespace, Role, Input) ->
    create_role_membership(Client, AwsAccountId, MemberName, Namespace, Role, Input, []).

-spec create_role_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), create_role_membership_request(), proplists:proplist()) ->
    {ok, create_role_membership_response(), tuple()} |
    {error, any()} |
    {error, create_role_membership_errors(), tuple()}.
create_role_membership(Client, AwsAccountId, MemberName, Namespace, Role, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/roles/", aws_util:encode_uri(Role), "/members/", aws_util:encode_uri(MemberName), ""],
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

%% @doc Creates a template either from a `TemplateDefinition' or from an
%% existing Quick Sight analysis or template.
%%
%% You can use the resulting
%% template to create additional dashboards, templates, or analyses.
%%
%% A template is an entity in Quick Sight that encapsulates the metadata
%% required to create an analysis and that you can use to create s dashboard.
%% A template adds
%% a layer of abstraction by using placeholders to replace the dataset
%% associated with the
%% analysis. You can use templates to create dashboards by replacing dataset
%% placeholders
%% with datasets that follow the same schema that was used to create the
%% source analysis
%% and template.
-spec create_template(aws_client:aws_client(), binary() | list(), binary() | list(), create_template_request()) ->
    {ok, create_template_response(), tuple()} |
    {error, any()} |
    {error, create_template_errors(), tuple()}.
create_template(Client, AwsAccountId, TemplateId, Input) ->
    create_template(Client, AwsAccountId, TemplateId, Input, []).

-spec create_template(aws_client:aws_client(), binary() | list(), binary() | list(), create_template_request(), proplists:proplist()) ->
    {ok, create_template_response(), tuple()} |
    {error, any()} |
    {error, create_template_errors(), tuple()}.
create_template(Client, AwsAccountId, TemplateId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), ""],
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

%% @doc Creates a template alias for a template.
-spec create_template_alias(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), create_template_alias_request()) ->
    {ok, create_template_alias_response(), tuple()} |
    {error, any()} |
    {error, create_template_alias_errors(), tuple()}.
create_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input) ->
    create_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input, []).

-spec create_template_alias(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), create_template_alias_request(), proplists:proplist()) ->
    {ok, create_template_alias_response(), tuple()} |
    {error, any()} |
    {error, create_template_alias_errors(), tuple()}.
create_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), "/aliases/", aws_util:encode_uri(AliasName), ""],
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

%% @doc Creates a theme.
%%
%% A theme is set of configuration options for color and layout.
%% Themes apply to analyses and dashboards. For more information, see Using
%% Themes in Amazon Quick Sight:
%% https://docs.aws.amazon.com/quicksight/latest/user/themes-in-quicksight.html
%% in the Amazon Quick Sight User Guide.
-spec create_theme(aws_client:aws_client(), binary() | list(), binary() | list(), create_theme_request()) ->
    {ok, create_theme_response(), tuple()} |
    {error, any()} |
    {error, create_theme_errors(), tuple()}.
create_theme(Client, AwsAccountId, ThemeId, Input) ->
    create_theme(Client, AwsAccountId, ThemeId, Input, []).

-spec create_theme(aws_client:aws_client(), binary() | list(), binary() | list(), create_theme_request(), proplists:proplist()) ->
    {ok, create_theme_response(), tuple()} |
    {error, any()} |
    {error, create_theme_errors(), tuple()}.
create_theme(Client, AwsAccountId, ThemeId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), ""],
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

%% @doc Creates a theme alias for a theme.
-spec create_theme_alias(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), create_theme_alias_request()) ->
    {ok, create_theme_alias_response(), tuple()} |
    {error, any()} |
    {error, create_theme_alias_errors(), tuple()}.
create_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input) ->
    create_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input, []).

-spec create_theme_alias(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), create_theme_alias_request(), proplists:proplist()) ->
    {ok, create_theme_alias_response(), tuple()} |
    {error, any()} |
    {error, create_theme_alias_errors(), tuple()}.
create_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), "/aliases/", aws_util:encode_uri(AliasName), ""],
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

%% @doc Creates a new Q topic.
-spec create_topic(aws_client:aws_client(), binary() | list(), create_topic_request()) ->
    {ok, create_topic_response(), tuple()} |
    {error, any()} |
    {error, create_topic_errors(), tuple()}.
create_topic(Client, AwsAccountId, Input) ->
    create_topic(Client, AwsAccountId, Input, []).

-spec create_topic(aws_client:aws_client(), binary() | list(), create_topic_request(), proplists:proplist()) ->
    {ok, create_topic_response(), tuple()} |
    {error, any()} |
    {error, create_topic_errors(), tuple()}.
create_topic(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics"],
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

%% @doc Creates a topic refresh schedule.
-spec create_topic_refresh_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), create_topic_refresh_schedule_request()) ->
    {ok, create_topic_refresh_schedule_response(), tuple()} |
    {error, any()} |
    {error, create_topic_refresh_schedule_errors(), tuple()}.
create_topic_refresh_schedule(Client, AwsAccountId, TopicId, Input) ->
    create_topic_refresh_schedule(Client, AwsAccountId, TopicId, Input, []).

-spec create_topic_refresh_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), create_topic_refresh_schedule_request(), proplists:proplist()) ->
    {ok, create_topic_refresh_schedule_response(), tuple()} |
    {error, any()} |
    {error, create_topic_refresh_schedule_errors(), tuple()}.
create_topic_refresh_schedule(Client, AwsAccountId, TopicId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), "/schedules"],
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

%% @doc Creates a new VPC connection.
-spec create_vpc_connection(aws_client:aws_client(), binary() | list(), create_vpc_connection_request()) ->
    {ok, create_vpc_connection_response(), tuple()} |
    {error, any()} |
    {error, create_vpc_connection_errors(), tuple()}.
create_vpc_connection(Client, AwsAccountId, Input) ->
    create_vpc_connection(Client, AwsAccountId, Input, []).

-spec create_vpc_connection(aws_client:aws_client(), binary() | list(), create_vpc_connection_request(), proplists:proplist()) ->
    {ok, create_vpc_connection_response(), tuple()} |
    {error, any()} |
    {error, create_vpc_connection_errors(), tuple()}.
create_vpc_connection(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/vpc-connections"],
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

%% @doc Unapplies a custom permissions profile from an account.
-spec delete_account_custom_permission(aws_client:aws_client(), binary() | list(), delete_account_custom_permission_request()) ->
    {ok, delete_account_custom_permission_response(), tuple()} |
    {error, any()} |
    {error, delete_account_custom_permission_errors(), tuple()}.
delete_account_custom_permission(Client, AwsAccountId, Input) ->
    delete_account_custom_permission(Client, AwsAccountId, Input, []).

-spec delete_account_custom_permission(aws_client:aws_client(), binary() | list(), delete_account_custom_permission_request(), proplists:proplist()) ->
    {ok, delete_account_custom_permission_response(), tuple()} |
    {error, any()} |
    {error, delete_account_custom_permission_errors(), tuple()}.
delete_account_custom_permission(Client, AwsAccountId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/custom-permission"],
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

%% @doc
%% This API permanently deletes all Quick Sight customizations for the
%% specified Amazon Web Services account and namespace.
%%
%% When you delete account customizations:
%%
%% All customizations are removed including themes, branding, and visual
%% settings
%%
%% This action cannot be undone through the API
%%
%% Users will see default Quick Sight styling after customizations are
%% deleted
%%
%% Before proceeding: Ensure you have backups of any custom themes or
%% branding elements you may want to recreate.
%%
%% Deletes all Amazon Quick Sight customizations for the specified Amazon Web
%% Services account and Quick Sight namespace.
-spec delete_account_customization(aws_client:aws_client(), binary() | list(), delete_account_customization_request()) ->
    {ok, delete_account_customization_response(), tuple()} |
    {error, any()} |
    {error, delete_account_customization_errors(), tuple()}.
delete_account_customization(Client, AwsAccountId, Input) ->
    delete_account_customization(Client, AwsAccountId, Input, []).

-spec delete_account_customization(aws_client:aws_client(), binary() | list(), delete_account_customization_request(), proplists:proplist()) ->
    {ok, delete_account_customization_response(), tuple()} |
    {error, any()} |
    {error, delete_account_customization_errors(), tuple()}.
delete_account_customization(Client, AwsAccountId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/customizations"],
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

    QueryMapping = [
                     {<<"namespace">>, <<"Namespace">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% Deleting your Quick Sight account subscription has permanent, irreversible
%% consequences across all Amazon Web Services regions:
%%
%% Global deletion – Running this operation from any single region will
%% delete your Quick Sight account and all data in every Amazon Web Services
%% region where you have Quick Sight resources.
%%
%% Complete data loss – All dashboards, analyses, datasets, data sources, and
%% custom visuals will be permanently deleted across all regions.
%%
%% Embedded content failure – All embedded dashboards and visuals in your
%% applications will immediately stop working and display errors to end
%% users.
%%
%% Shared resources removed – All shared dashboards, folders, and resources
%% will become inaccessible to other users and external recipients.
%%
%% User access terminated – All Quick Sight users in your account will lose
%% access immediately, including authors, readers, and administrators.
%%
%% No recovery possible – Once deleted, your Quick Sight account and all
%% associated data cannot be restored.
%%
%% Consider exporting critical dashboards and data before proceeding with
%% account deletion.
%%
%% Use the `DeleteAccountSubscription' operation to delete an Quick Sight
%% account. This operation will result in an error message if you have
%% configured your account termination protection settings to `True'. To
%% change this setting and delete your account, call the
%% `UpdateAccountSettings' API and set the value of the
%% `TerminationProtectionEnabled' parameter to `False', then make
%% another call to the `DeleteAccountSubscription' API.
-spec delete_account_subscription(aws_client:aws_client(), binary() | list(), delete_account_subscription_request()) ->
    {ok, delete_account_subscription_response(), tuple()} |
    {error, any()} |
    {error, delete_account_subscription_errors(), tuple()}.
delete_account_subscription(Client, AwsAccountId, Input) ->
    delete_account_subscription(Client, AwsAccountId, Input, []).

-spec delete_account_subscription(aws_client:aws_client(), binary() | list(), delete_account_subscription_request(), proplists:proplist()) ->
    {ok, delete_account_subscription_response(), tuple()} |
    {error, any()} |
    {error, delete_account_subscription_errors(), tuple()}.
delete_account_subscription(Client, AwsAccountId, Input0, Options0) ->
    Method = delete,
    Path = ["/account/", aws_util:encode_uri(AwsAccountId), ""],
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

%% @doc Hard deletes an action connector, making it unrecoverable.
%%
%% This operation removes the connector and all its associated
%% configurations. Any resources currently using this action connector will
%% no longer be able to perform actions through it.
-spec delete_action_connector(aws_client:aws_client(), binary() | list(), binary() | list(), delete_action_connector_request()) ->
    {ok, delete_action_connector_response(), tuple()} |
    {error, any()} |
    {error, delete_action_connector_errors(), tuple()}.
delete_action_connector(Client, ActionConnectorId, AwsAccountId, Input) ->
    delete_action_connector(Client, ActionConnectorId, AwsAccountId, Input, []).

-spec delete_action_connector(aws_client:aws_client(), binary() | list(), binary() | list(), delete_action_connector_request(), proplists:proplist()) ->
    {ok, delete_action_connector_response(), tuple()} |
    {error, any()} |
    {error, delete_action_connector_errors(), tuple()}.
delete_action_connector(Client, ActionConnectorId, AwsAccountId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/action-connectors/", aws_util:encode_uri(ActionConnectorId), ""],
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

%% @doc Deletes an analysis from Amazon Quick Sight.
%%
%% You can optionally include a recovery window during
%% which you can restore the analysis. If you don't specify a recovery
%% window value, the
%% operation defaults to 30 days. Amazon Quick Sight attaches a
%% `DeletionTime' stamp to
%% the response that specifies the end of the recovery window. At the end of
%% the recovery
%% window, Amazon Quick Sight deletes the analysis permanently.
%%
%% At any time before recovery window ends, you can use the
%% `RestoreAnalysis'
%% API operation to remove the `DeletionTime' stamp and cancel the
%% deletion of
%% the analysis. The analysis remains visible in the API until it's
%% deleted, so you can
%% describe it but you can't make a template from it.
%%
%% An analysis that's scheduled for deletion isn't accessible in the
%% Amazon Quick Sight console.
%% To access it in the console, restore it. Deleting an analysis doesn't
%% delete the
%% dashboards that you publish from it.
-spec delete_analysis(aws_client:aws_client(), binary() | list(), binary() | list(), delete_analysis_request()) ->
    {ok, delete_analysis_response(), tuple()} |
    {error, any()} |
    {error, delete_analysis_errors(), tuple()}.
delete_analysis(Client, AnalysisId, AwsAccountId, Input) ->
    delete_analysis(Client, AnalysisId, AwsAccountId, Input, []).

-spec delete_analysis(aws_client:aws_client(), binary() | list(), binary() | list(), delete_analysis_request(), proplists:proplist()) ->
    {ok, delete_analysis_response(), tuple()} |
    {error, any()} |
    {error, delete_analysis_errors(), tuple()}.
delete_analysis(Client, AnalysisId, AwsAccountId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/analyses/", aws_util:encode_uri(AnalysisId), ""],
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

    QueryMapping = [
                     {<<"force-delete-without-recovery">>, <<"ForceDeleteWithoutRecovery">>},
                     {<<"recovery-window-in-days">>, <<"RecoveryWindowInDays">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc
%% This API permanently deletes the specified Quick Sight brand.
%%
%% When you delete a brand:
%%
%% The brand and all its associated branding elements are permanently removed
%%
%% Any applications or dashboards using this brand will revert to default
%% styling
%%
%% This action cannot be undone through the API
%%
%% Before proceeding: Verify that the brand is no longer needed and consider
%% the impact on any applications currently using this brand.
%%
%% Deletes an Quick Sight brand.
-spec delete_brand(aws_client:aws_client(), binary() | list(), binary() | list(), delete_brand_request()) ->
    {ok, delete_brand_response(), tuple()} |
    {error, any()} |
    {error, delete_brand_errors(), tuple()}.
delete_brand(Client, AwsAccountId, BrandId, Input) ->
    delete_brand(Client, AwsAccountId, BrandId, Input, []).

-spec delete_brand(aws_client:aws_client(), binary() | list(), binary() | list(), delete_brand_request(), proplists:proplist()) ->
    {ok, delete_brand_response(), tuple()} |
    {error, any()} |
    {error, delete_brand_errors(), tuple()}.
delete_brand(Client, AwsAccountId, BrandId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/brands/", aws_util:encode_uri(BrandId), ""],
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

%% @doc Deletes a brand assignment.
-spec delete_brand_assignment(aws_client:aws_client(), binary() | list(), delete_brand_assignment_request()) ->
    {ok, delete_brand_assignment_response(), tuple()} |
    {error, any()} |
    {error, delete_brand_assignment_errors(), tuple()}.
delete_brand_assignment(Client, AwsAccountId, Input) ->
    delete_brand_assignment(Client, AwsAccountId, Input, []).

-spec delete_brand_assignment(aws_client:aws_client(), binary() | list(), delete_brand_assignment_request(), proplists:proplist()) ->
    {ok, delete_brand_assignment_response(), tuple()} |
    {error, any()} |
    {error, delete_brand_assignment_errors(), tuple()}.
delete_brand_assignment(Client, AwsAccountId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/brandassignments"],
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

%% @doc Deletes a custom permissions profile.
-spec delete_custom_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), delete_custom_permissions_request()) ->
    {ok, delete_custom_permissions_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_permissions_errors(), tuple()}.
delete_custom_permissions(Client, AwsAccountId, CustomPermissionsName, Input) ->
    delete_custom_permissions(Client, AwsAccountId, CustomPermissionsName, Input, []).

-spec delete_custom_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), delete_custom_permissions_request(), proplists:proplist()) ->
    {ok, delete_custom_permissions_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_permissions_errors(), tuple()}.
delete_custom_permissions(Client, AwsAccountId, CustomPermissionsName, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/custom-permissions/", aws_util:encode_uri(CustomPermissionsName), ""],
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

%% @doc Deletes a dashboard.
-spec delete_dashboard(aws_client:aws_client(), binary() | list(), binary() | list(), delete_dashboard_request()) ->
    {ok, delete_dashboard_response(), tuple()} |
    {error, any()} |
    {error, delete_dashboard_errors(), tuple()}.
delete_dashboard(Client, AwsAccountId, DashboardId, Input) ->
    delete_dashboard(Client, AwsAccountId, DashboardId, Input, []).

-spec delete_dashboard(aws_client:aws_client(), binary() | list(), binary() | list(), delete_dashboard_request(), proplists:proplist()) ->
    {ok, delete_dashboard_response(), tuple()} |
    {error, any()} |
    {error, delete_dashboard_errors(), tuple()}.
delete_dashboard(Client, AwsAccountId, DashboardId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), ""],
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

    QueryMapping = [
                     {<<"version-number">>, <<"VersionNumber">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a dataset.
-spec delete_data_set(aws_client:aws_client(), binary() | list(), binary() | list(), delete_data_set_request()) ->
    {ok, delete_data_set_response(), tuple()} |
    {error, any()} |
    {error, delete_data_set_errors(), tuple()}.
delete_data_set(Client, AwsAccountId, DataSetId, Input) ->
    delete_data_set(Client, AwsAccountId, DataSetId, Input, []).

-spec delete_data_set(aws_client:aws_client(), binary() | list(), binary() | list(), delete_data_set_request(), proplists:proplist()) ->
    {ok, delete_data_set_response(), tuple()} |
    {error, any()} |
    {error, delete_data_set_errors(), tuple()}.
delete_data_set(Client, AwsAccountId, DataSetId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), ""],
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

%% @doc Deletes the dataset refresh properties of the dataset.
-spec delete_data_set_refresh_properties(aws_client:aws_client(), binary() | list(), binary() | list(), delete_data_set_refresh_properties_request()) ->
    {ok, delete_data_set_refresh_properties_response(), tuple()} |
    {error, any()} |
    {error, delete_data_set_refresh_properties_errors(), tuple()}.
delete_data_set_refresh_properties(Client, AwsAccountId, DataSetId, Input) ->
    delete_data_set_refresh_properties(Client, AwsAccountId, DataSetId, Input, []).

-spec delete_data_set_refresh_properties(aws_client:aws_client(), binary() | list(), binary() | list(), delete_data_set_refresh_properties_request(), proplists:proplist()) ->
    {ok, delete_data_set_refresh_properties_response(), tuple()} |
    {error, any()} |
    {error, delete_data_set_refresh_properties_errors(), tuple()}.
delete_data_set_refresh_properties(Client, AwsAccountId, DataSetId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/refresh-properties"],
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

%% @doc Deletes the data source permanently.
%%
%% This operation breaks all the datasets that
%% reference the deleted data source.
-spec delete_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), delete_data_source_request()) ->
    {ok, delete_data_source_response(), tuple()} |
    {error, any()} |
    {error, delete_data_source_errors(), tuple()}.
delete_data_source(Client, AwsAccountId, DataSourceId, Input) ->
    delete_data_source(Client, AwsAccountId, DataSourceId, Input, []).

-spec delete_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), delete_data_source_request(), proplists:proplist()) ->
    {ok, delete_data_source_response(), tuple()} |
    {error, any()} |
    {error, delete_data_source_errors(), tuple()}.
delete_data_source(Client, AwsAccountId, DataSourceId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sources/", aws_util:encode_uri(DataSourceId), ""],
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

%% @doc Deletes a linked Amazon Q Business application from an Quick Sight
%% account
-spec delete_default_q_business_application(aws_client:aws_client(), binary() | list(), delete_default_q_business_application_request()) ->
    {ok, delete_default_q_business_application_response(), tuple()} |
    {error, any()} |
    {error, delete_default_q_business_application_errors(), tuple()}.
delete_default_q_business_application(Client, AwsAccountId, Input) ->
    delete_default_q_business_application(Client, AwsAccountId, Input, []).

-spec delete_default_q_business_application(aws_client:aws_client(), binary() | list(), delete_default_q_business_application_request(), proplists:proplist()) ->
    {ok, delete_default_q_business_application_response(), tuple()} |
    {error, any()} |
    {error, delete_default_q_business_application_errors(), tuple()}.
delete_default_q_business_application(Client, AwsAccountId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/default-qbusiness-application"],
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

    QueryMapping = [
                     {<<"namespace">>, <<"Namespace">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an empty folder.
-spec delete_folder(aws_client:aws_client(), binary() | list(), binary() | list(), delete_folder_request()) ->
    {ok, delete_folder_response(), tuple()} |
    {error, any()} |
    {error, delete_folder_errors(), tuple()}.
delete_folder(Client, AwsAccountId, FolderId, Input) ->
    delete_folder(Client, AwsAccountId, FolderId, Input, []).

-spec delete_folder(aws_client:aws_client(), binary() | list(), binary() | list(), delete_folder_request(), proplists:proplist()) ->
    {ok, delete_folder_response(), tuple()} |
    {error, any()} |
    {error, delete_folder_errors(), tuple()}.
delete_folder(Client, AwsAccountId, FolderId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), ""],
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

%% @doc Removes an asset, such as a dashboard, analysis, or dataset, from a
%% folder.
-spec delete_folder_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), delete_folder_membership_request()) ->
    {ok, delete_folder_membership_response(), tuple()} |
    {error, any()} |
    {error, delete_folder_membership_errors(), tuple()}.
delete_folder_membership(Client, AwsAccountId, FolderId, MemberId, MemberType, Input) ->
    delete_folder_membership(Client, AwsAccountId, FolderId, MemberId, MemberType, Input, []).

-spec delete_folder_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), delete_folder_membership_request(), proplists:proplist()) ->
    {ok, delete_folder_membership_response(), tuple()} |
    {error, any()} |
    {error, delete_folder_membership_errors(), tuple()}.
delete_folder_membership(Client, AwsAccountId, FolderId, MemberId, MemberType, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), "/members/", aws_util:encode_uri(MemberType), "/", aws_util:encode_uri(MemberId), ""],
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

%% @doc Removes a user group from Amazon Quick Sight.
-spec delete_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_group_request()) ->
    {ok, delete_group_response(), tuple()} |
    {error, any()} |
    {error, delete_group_errors(), tuple()}.
delete_group(Client, AwsAccountId, GroupName, Namespace, Input) ->
    delete_group(Client, AwsAccountId, GroupName, Namespace, Input, []).

-spec delete_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_group_request(), proplists:proplist()) ->
    {ok, delete_group_response(), tuple()} |
    {error, any()} |
    {error, delete_group_errors(), tuple()}.
delete_group(Client, AwsAccountId, GroupName, Namespace, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/groups/", aws_util:encode_uri(GroupName), ""],
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

%% @doc Removes a user from a group so that the user is no longer a member of
%% the group.
-spec delete_group_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), delete_group_membership_request()) ->
    {ok, delete_group_membership_response(), tuple()} |
    {error, any()} |
    {error, delete_group_membership_errors(), tuple()}.
delete_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, Input) ->
    delete_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, Input, []).

-spec delete_group_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), delete_group_membership_request(), proplists:proplist()) ->
    {ok, delete_group_membership_response(), tuple()} |
    {error, any()} |
    {error, delete_group_membership_errors(), tuple()}.
delete_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/groups/", aws_util:encode_uri(GroupName), "/members/", aws_util:encode_uri(MemberName), ""],
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

%% @doc Deletes an existing IAM policy assignment.
-spec delete_iam_policy_assignment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_iam_policy_assignment_request()) ->
    {ok, delete_iam_policy_assignment_response(), tuple()} |
    {error, any()} |
    {error, delete_iam_policy_assignment_errors(), tuple()}.
delete_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Input) ->
    delete_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Input, []).

-spec delete_iam_policy_assignment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_iam_policy_assignment_request(), proplists:proplist()) ->
    {ok, delete_iam_policy_assignment_response(), tuple()} |
    {error, any()} |
    {error, delete_iam_policy_assignment_errors(), tuple()}.
delete_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespace/", aws_util:encode_uri(Namespace), "/iam-policy-assignments/", aws_util:encode_uri(AssignmentName), ""],
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

%% @doc Deletes all access scopes and authorized targets that are associated
%% with a service from the Quick Sight IAM Identity Center application.
%%
%% This operation is only supported for Quick Sight accounts that use IAM
%% Identity Center.
-spec delete_identity_propagation_config(aws_client:aws_client(), binary() | list(), binary() | list(), delete_identity_propagation_config_request()) ->
    {ok, delete_identity_propagation_config_response(), tuple()} |
    {error, any()} |
    {error, delete_identity_propagation_config_errors(), tuple()}.
delete_identity_propagation_config(Client, AwsAccountId, Service, Input) ->
    delete_identity_propagation_config(Client, AwsAccountId, Service, Input, []).

-spec delete_identity_propagation_config(aws_client:aws_client(), binary() | list(), binary() | list(), delete_identity_propagation_config_request(), proplists:proplist()) ->
    {ok, delete_identity_propagation_config_response(), tuple()} |
    {error, any()} |
    {error, delete_identity_propagation_config_errors(), tuple()}.
delete_identity_propagation_config(Client, AwsAccountId, Service, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/identity-propagation-config/", aws_util:encode_uri(Service), ""],
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

%% @doc Deletes a namespace and the users and groups that are associated with
%% the namespace.
%%
%% This is an asynchronous process. Assets including dashboards, analyses,
%% datasets and data sources are not
%% deleted. To delete these assets, you use the API operations for the
%% relevant asset.
-spec delete_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), delete_namespace_request()) ->
    {ok, delete_namespace_response(), tuple()} |
    {error, any()} |
    {error, delete_namespace_errors(), tuple()}.
delete_namespace(Client, AwsAccountId, Namespace, Input) ->
    delete_namespace(Client, AwsAccountId, Namespace, Input, []).

-spec delete_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), delete_namespace_request(), proplists:proplist()) ->
    {ok, delete_namespace_response(), tuple()} |
    {error, any()} |
    {error, delete_namespace_errors(), tuple()}.
delete_namespace(Client, AwsAccountId, Namespace, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), ""],
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

%% @doc Deletes a refresh schedule from a dataset.
-spec delete_refresh_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_refresh_schedule_request()) ->
    {ok, delete_refresh_schedule_response(), tuple()} |
    {error, any()} |
    {error, delete_refresh_schedule_errors(), tuple()}.
delete_refresh_schedule(Client, AwsAccountId, DataSetId, ScheduleId, Input) ->
    delete_refresh_schedule(Client, AwsAccountId, DataSetId, ScheduleId, Input, []).

-spec delete_refresh_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_refresh_schedule_request(), proplists:proplist()) ->
    {ok, delete_refresh_schedule_response(), tuple()} |
    {error, any()} |
    {error, delete_refresh_schedule_errors(), tuple()}.
delete_refresh_schedule(Client, AwsAccountId, DataSetId, ScheduleId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/refresh-schedules/", aws_util:encode_uri(ScheduleId), ""],
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

%% @doc Removes custom permissions from the role.
-spec delete_role_custom_permission(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_role_custom_permission_request()) ->
    {ok, delete_role_custom_permission_response(), tuple()} |
    {error, any()} |
    {error, delete_role_custom_permission_errors(), tuple()}.
delete_role_custom_permission(Client, AwsAccountId, Namespace, Role, Input) ->
    delete_role_custom_permission(Client, AwsAccountId, Namespace, Role, Input, []).

-spec delete_role_custom_permission(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_role_custom_permission_request(), proplists:proplist()) ->
    {ok, delete_role_custom_permission_response(), tuple()} |
    {error, any()} |
    {error, delete_role_custom_permission_errors(), tuple()}.
delete_role_custom_permission(Client, AwsAccountId, Namespace, Role, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/roles/", aws_util:encode_uri(Role), "/custom-permission"],
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

%% @doc Removes a group from a role.
-spec delete_role_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), delete_role_membership_request()) ->
    {ok, delete_role_membership_response(), tuple()} |
    {error, any()} |
    {error, delete_role_membership_errors(), tuple()}.
delete_role_membership(Client, AwsAccountId, MemberName, Namespace, Role, Input) ->
    delete_role_membership(Client, AwsAccountId, MemberName, Namespace, Role, Input, []).

-spec delete_role_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), delete_role_membership_request(), proplists:proplist()) ->
    {ok, delete_role_membership_response(), tuple()} |
    {error, any()} |
    {error, delete_role_membership_errors(), tuple()}.
delete_role_membership(Client, AwsAccountId, MemberName, Namespace, Role, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/roles/", aws_util:encode_uri(Role), "/members/", aws_util:encode_uri(MemberName), ""],
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

%% @doc Deletes a template.
-spec delete_template(aws_client:aws_client(), binary() | list(), binary() | list(), delete_template_request()) ->
    {ok, delete_template_response(), tuple()} |
    {error, any()} |
    {error, delete_template_errors(), tuple()}.
delete_template(Client, AwsAccountId, TemplateId, Input) ->
    delete_template(Client, AwsAccountId, TemplateId, Input, []).

-spec delete_template(aws_client:aws_client(), binary() | list(), binary() | list(), delete_template_request(), proplists:proplist()) ->
    {ok, delete_template_response(), tuple()} |
    {error, any()} |
    {error, delete_template_errors(), tuple()}.
delete_template(Client, AwsAccountId, TemplateId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), ""],
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

    QueryMapping = [
                     {<<"version-number">>, <<"VersionNumber">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the item that the specified template alias points to.
%%
%% If you provide a specific
%% alias, you delete the version of the template that the alias points to.
-spec delete_template_alias(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_template_alias_request()) ->
    {ok, delete_template_alias_response(), tuple()} |
    {error, any()} |
    {error, delete_template_alias_errors(), tuple()}.
delete_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input) ->
    delete_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input, []).

-spec delete_template_alias(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_template_alias_request(), proplists:proplist()) ->
    {ok, delete_template_alias_response(), tuple()} |
    {error, any()} |
    {error, delete_template_alias_errors(), tuple()}.
delete_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), "/aliases/", aws_util:encode_uri(AliasName), ""],
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

%% @doc Deletes a theme.
-spec delete_theme(aws_client:aws_client(), binary() | list(), binary() | list(), delete_theme_request()) ->
    {ok, delete_theme_response(), tuple()} |
    {error, any()} |
    {error, delete_theme_errors(), tuple()}.
delete_theme(Client, AwsAccountId, ThemeId, Input) ->
    delete_theme(Client, AwsAccountId, ThemeId, Input, []).

-spec delete_theme(aws_client:aws_client(), binary() | list(), binary() | list(), delete_theme_request(), proplists:proplist()) ->
    {ok, delete_theme_response(), tuple()} |
    {error, any()} |
    {error, delete_theme_errors(), tuple()}.
delete_theme(Client, AwsAccountId, ThemeId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), ""],
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

    QueryMapping = [
                     {<<"version-number">>, <<"VersionNumber">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the version of the theme that the specified theme alias
%% points to.
%%
%% If you provide a specific alias, you delete the version of the theme
%% that the alias points to.
-spec delete_theme_alias(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_theme_alias_request()) ->
    {ok, delete_theme_alias_response(), tuple()} |
    {error, any()} |
    {error, delete_theme_alias_errors(), tuple()}.
delete_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input) ->
    delete_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input, []).

-spec delete_theme_alias(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_theme_alias_request(), proplists:proplist()) ->
    {ok, delete_theme_alias_response(), tuple()} |
    {error, any()} |
    {error, delete_theme_alias_errors(), tuple()}.
delete_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), "/aliases/", aws_util:encode_uri(AliasName), ""],
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

%% @doc Deletes a topic.
-spec delete_topic(aws_client:aws_client(), binary() | list(), binary() | list(), delete_topic_request()) ->
    {ok, delete_topic_response(), tuple()} |
    {error, any()} |
    {error, delete_topic_errors(), tuple()}.
delete_topic(Client, AwsAccountId, TopicId, Input) ->
    delete_topic(Client, AwsAccountId, TopicId, Input, []).

-spec delete_topic(aws_client:aws_client(), binary() | list(), binary() | list(), delete_topic_request(), proplists:proplist()) ->
    {ok, delete_topic_response(), tuple()} |
    {error, any()} |
    {error, delete_topic_errors(), tuple()}.
delete_topic(Client, AwsAccountId, TopicId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), ""],
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

%% @doc Deletes a topic refresh schedule.
-spec delete_topic_refresh_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_topic_refresh_schedule_request()) ->
    {ok, delete_topic_refresh_schedule_response(), tuple()} |
    {error, any()} |
    {error, delete_topic_refresh_schedule_errors(), tuple()}.
delete_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId, Input) ->
    delete_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId, Input, []).

-spec delete_topic_refresh_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_topic_refresh_schedule_request(), proplists:proplist()) ->
    {ok, delete_topic_refresh_schedule_response(), tuple()} |
    {error, any()} |
    {error, delete_topic_refresh_schedule_errors(), tuple()}.
delete_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), "/schedules/", aws_util:encode_uri(DatasetId), ""],
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

%% @doc Deletes the Amazon Quick Sight user that is associated with the
%% identity of the
%% IAM user or role that's making the call.
%%
%% The IAM user
%% isn't deleted as a result of this call.
-spec delete_user(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_user_request()) ->
    {ok, delete_user_response(), tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, AwsAccountId, Namespace, UserName, Input) ->
    delete_user(Client, AwsAccountId, Namespace, UserName, Input, []).

-spec delete_user(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_user_request(), proplists:proplist()) ->
    {ok, delete_user_response(), tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, AwsAccountId, Namespace, UserName, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/users/", aws_util:encode_uri(UserName), ""],
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

%% @doc Deletes a user identified by its principal ID.
-spec delete_user_by_principal_id(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_user_by_principal_id_request()) ->
    {ok, delete_user_by_principal_id_response(), tuple()} |
    {error, any()} |
    {error, delete_user_by_principal_id_errors(), tuple()}.
delete_user_by_principal_id(Client, AwsAccountId, Namespace, PrincipalId, Input) ->
    delete_user_by_principal_id(Client, AwsAccountId, Namespace, PrincipalId, Input, []).

-spec delete_user_by_principal_id(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_user_by_principal_id_request(), proplists:proplist()) ->
    {ok, delete_user_by_principal_id_response(), tuple()} |
    {error, any()} |
    {error, delete_user_by_principal_id_errors(), tuple()}.
delete_user_by_principal_id(Client, AwsAccountId, Namespace, PrincipalId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/user-principals/", aws_util:encode_uri(PrincipalId), ""],
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

%% @doc Deletes a custom permissions profile from a user.
-spec delete_user_custom_permission(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_user_custom_permission_request()) ->
    {ok, delete_user_custom_permission_response(), tuple()} |
    {error, any()} |
    {error, delete_user_custom_permission_errors(), tuple()}.
delete_user_custom_permission(Client, AwsAccountId, Namespace, UserName, Input) ->
    delete_user_custom_permission(Client, AwsAccountId, Namespace, UserName, Input, []).

-spec delete_user_custom_permission(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_user_custom_permission_request(), proplists:proplist()) ->
    {ok, delete_user_custom_permission_response(), tuple()} |
    {error, any()} |
    {error, delete_user_custom_permission_errors(), tuple()}.
delete_user_custom_permission(Client, AwsAccountId, Namespace, UserName, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/users/", aws_util:encode_uri(UserName), "/custom-permission"],
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

%% @doc Deletes a VPC connection.
-spec delete_vpc_connection(aws_client:aws_client(), binary() | list(), binary() | list(), delete_vpc_connection_request()) ->
    {ok, delete_vpc_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_vpc_connection_errors(), tuple()}.
delete_vpc_connection(Client, AwsAccountId, VPCConnectionId, Input) ->
    delete_vpc_connection(Client, AwsAccountId, VPCConnectionId, Input, []).

-spec delete_vpc_connection(aws_client:aws_client(), binary() | list(), binary() | list(), delete_vpc_connection_request(), proplists:proplist()) ->
    {ok, delete_vpc_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_vpc_connection_errors(), tuple()}.
delete_vpc_connection(Client, AwsAccountId, VPCConnectionId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/vpc-connections/", aws_util:encode_uri(VPCConnectionId), ""],
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

%% @doc Describes the custom permissions profile that is applied to an
%% account.
-spec describe_account_custom_permission(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_account_custom_permission_response(), tuple()} |
    {error, any()} |
    {error, describe_account_custom_permission_errors(), tuple()}.
describe_account_custom_permission(Client, AwsAccountId)
  when is_map(Client) ->
    describe_account_custom_permission(Client, AwsAccountId, #{}, #{}).

-spec describe_account_custom_permission(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_account_custom_permission_response(), tuple()} |
    {error, any()} |
    {error, describe_account_custom_permission_errors(), tuple()}.
describe_account_custom_permission(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_account_custom_permission(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec describe_account_custom_permission(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_account_custom_permission_response(), tuple()} |
    {error, any()} |
    {error, describe_account_custom_permission_errors(), tuple()}.
describe_account_custom_permission(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/custom-permission"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the customizations associated with the provided Amazon Web
%% Services account and Amazon
%% Quick Sight namespace.
%%
%% The Quick Sight console evaluates which
%% customizations to apply by running this API operation with the
%% `Resolved' flag
%% included.
%%
%% To determine what customizations display when you run this command, it can
%% help to
%% visualize the relationship of the entities involved.
%%
%% `Amazon Web Services account' - The Amazon Web Services account exists
%% at the top of the hierarchy.
%% It has the potential to use all of the Amazon Web Services Regions and
%% Amazon Web Services Services. When you
%% subscribe to Quick Sight, you choose one Amazon Web Services Region to use
%% as your home Region.
%% That's where your free SPICE capacity is located. You can use Quick
%% Sight in any
%% supported Amazon Web Services Region.
%%
%% `Amazon Web Services Region' - You can sign in to Quick Sight in any
%% Amazon Web Services Region. If
%% you have a user directory, it resides in us-east-1, which is US East (N.
%% Virginia). Generally speaking, these users have access to Quick Sight in
%% any
%% Amazon Web Services Region, unless they are constrained to a namespace.
%%
%% To run the command in a different Amazon Web Services Region, you change
%% your Region settings.
%% If you're using the CLI, you can use one of the following options:
%%
%% Use command line options:
%% https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-options.html.
%%
%% Use named profiles:
%% https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html.
%%
%% Run `aws configure' to change your default Amazon Web Services Region.
%% Use
%% Enter to key the same settings for your keys. For more information, see
%% Configuring the CLI:
%% https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html.
%%
%% `Namespace' - A Quick Sight namespace is a partition that contains
%% users and assets (data sources, datasets, dashboards, and so on). To
%% access
%% assets that are in a specific namespace, users and groups must also be
%% part of
%% the same namespace. People who share a namespace are completely isolated
%% from
%% users and assets in other namespaces, even if they are in the same Amazon
%% Web Services account
%% and Amazon Web Services Region.
%%
%% `Applied customizations' - Quick Sight customizations can apply to an
%% Amazon Web Services account or to a namespace.
%% Settings that you apply to a namespace override settings that you apply to
%% an
%% Amazon Web Services account.
-spec describe_account_customization(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_account_customization_response(), tuple()} |
    {error, any()} |
    {error, describe_account_customization_errors(), tuple()}.
describe_account_customization(Client, AwsAccountId)
  when is_map(Client) ->
    describe_account_customization(Client, AwsAccountId, #{}, #{}).

-spec describe_account_customization(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_account_customization_response(), tuple()} |
    {error, any()} |
    {error, describe_account_customization_errors(), tuple()}.
describe_account_customization(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_account_customization(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec describe_account_customization(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_account_customization_response(), tuple()} |
    {error, any()} |
    {error, describe_account_customization_errors(), tuple()}.
describe_account_customization(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/customizations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"namespace">>, maps:get(<<"namespace">>, QueryMap, undefined)},
        {<<"resolved">>, maps:get(<<"resolved">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the settings that were used when your Quick Sight
%% subscription was first
%% created in this Amazon Web Services account.
-spec describe_account_settings(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_account_settings_response(), tuple()} |
    {error, any()} |
    {error, describe_account_settings_errors(), tuple()}.
describe_account_settings(Client, AwsAccountId)
  when is_map(Client) ->
    describe_account_settings(Client, AwsAccountId, #{}, #{}).

-spec describe_account_settings(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_account_settings_response(), tuple()} |
    {error, any()} |
    {error, describe_account_settings_errors(), tuple()}.
describe_account_settings(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_account_settings(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec describe_account_settings(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_account_settings_response(), tuple()} |
    {error, any()} |
    {error, describe_account_settings_errors(), tuple()}.
describe_account_settings(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/settings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Use the DescribeAccountSubscription operation to receive a
%% description of an Quick Sight account's subscription.
%%
%% A successful API call returns an `AccountInfo' object that includes an
%% account's name, subscription status, authentication type, edition, and
%% notification email address.
-spec describe_account_subscription(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_account_subscription_response(), tuple()} |
    {error, any()} |
    {error, describe_account_subscription_errors(), tuple()}.
describe_account_subscription(Client, AwsAccountId)
  when is_map(Client) ->
    describe_account_subscription(Client, AwsAccountId, #{}, #{}).

-spec describe_account_subscription(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_account_subscription_response(), tuple()} |
    {error, any()} |
    {error, describe_account_subscription_errors(), tuple()}.
describe_account_subscription(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_account_subscription(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec describe_account_subscription(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_account_subscription_response(), tuple()} |
    {error, any()} |
    {error, describe_account_subscription_errors(), tuple()}.
describe_account_subscription(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/account/", aws_util:encode_uri(AwsAccountId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves detailed information about an action connector, including
%% its configuration, authentication settings, enabled actions, and current
%% status.
-spec describe_action_connector(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_action_connector_response(), tuple()} |
    {error, any()} |
    {error, describe_action_connector_errors(), tuple()}.
describe_action_connector(Client, ActionConnectorId, AwsAccountId)
  when is_map(Client) ->
    describe_action_connector(Client, ActionConnectorId, AwsAccountId, #{}, #{}).

-spec describe_action_connector(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_action_connector_response(), tuple()} |
    {error, any()} |
    {error, describe_action_connector_errors(), tuple()}.
describe_action_connector(Client, ActionConnectorId, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_action_connector(Client, ActionConnectorId, AwsAccountId, QueryMap, HeadersMap, []).

-spec describe_action_connector(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_action_connector_response(), tuple()} |
    {error, any()} |
    {error, describe_action_connector_errors(), tuple()}.
describe_action_connector(Client, ActionConnectorId, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/action-connectors/", aws_util:encode_uri(ActionConnectorId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the permissions configuration for an action connector,
%% showing which users, groups, and namespaces have access and what
%% operations they can perform.
-spec describe_action_connector_permissions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_action_connector_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_action_connector_permissions_errors(), tuple()}.
describe_action_connector_permissions(Client, ActionConnectorId, AwsAccountId)
  when is_map(Client) ->
    describe_action_connector_permissions(Client, ActionConnectorId, AwsAccountId, #{}, #{}).

-spec describe_action_connector_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_action_connector_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_action_connector_permissions_errors(), tuple()}.
describe_action_connector_permissions(Client, ActionConnectorId, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_action_connector_permissions(Client, ActionConnectorId, AwsAccountId, QueryMap, HeadersMap, []).

-spec describe_action_connector_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_action_connector_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_action_connector_permissions_errors(), tuple()}.
describe_action_connector_permissions(Client, ActionConnectorId, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/action-connectors/", aws_util:encode_uri(ActionConnectorId), "/permissions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a summary of the metadata for an analysis.
-spec describe_analysis(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_analysis_response(), tuple()} |
    {error, any()} |
    {error, describe_analysis_errors(), tuple()}.
describe_analysis(Client, AnalysisId, AwsAccountId)
  when is_map(Client) ->
    describe_analysis(Client, AnalysisId, AwsAccountId, #{}, #{}).

-spec describe_analysis(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_analysis_response(), tuple()} |
    {error, any()} |
    {error, describe_analysis_errors(), tuple()}.
describe_analysis(Client, AnalysisId, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_analysis(Client, AnalysisId, AwsAccountId, QueryMap, HeadersMap, []).

-spec describe_analysis(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_analysis_response(), tuple()} |
    {error, any()} |
    {error, describe_analysis_errors(), tuple()}.
describe_analysis(Client, AnalysisId, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/analyses/", aws_util:encode_uri(AnalysisId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a detailed description of the definition of an analysis.
%%
%% If you do not need to know details about the content of an Analysis, for
%% instance if you
%% are trying to check the status of a recently created or updated Analysis,
%% use the
%%
%% `DescribeAnalysis'
%% :
%% https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeAnalysis.html
%% instead.
-spec describe_analysis_definition(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_analysis_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_analysis_definition_errors(), tuple()}.
describe_analysis_definition(Client, AnalysisId, AwsAccountId)
  when is_map(Client) ->
    describe_analysis_definition(Client, AnalysisId, AwsAccountId, #{}, #{}).

-spec describe_analysis_definition(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_analysis_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_analysis_definition_errors(), tuple()}.
describe_analysis_definition(Client, AnalysisId, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_analysis_definition(Client, AnalysisId, AwsAccountId, QueryMap, HeadersMap, []).

-spec describe_analysis_definition(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_analysis_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_analysis_definition_errors(), tuple()}.
describe_analysis_definition(Client, AnalysisId, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/analyses/", aws_util:encode_uri(AnalysisId), "/definition"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides the read and write permissions for an analysis.
-spec describe_analysis_permissions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_analysis_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_analysis_permissions_errors(), tuple()}.
describe_analysis_permissions(Client, AnalysisId, AwsAccountId)
  when is_map(Client) ->
    describe_analysis_permissions(Client, AnalysisId, AwsAccountId, #{}, #{}).

-spec describe_analysis_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_analysis_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_analysis_permissions_errors(), tuple()}.
describe_analysis_permissions(Client, AnalysisId, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_analysis_permissions(Client, AnalysisId, AwsAccountId, QueryMap, HeadersMap, []).

-spec describe_analysis_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_analysis_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_analysis_permissions_errors(), tuple()}.
describe_analysis_permissions(Client, AnalysisId, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/analyses/", aws_util:encode_uri(AnalysisId), "/permissions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing export job.
%%
%% Poll job descriptions after a job starts to know the status of the job.
%% When a job
%% succeeds, a URL is provided to download the exported assets' data
%% from. Download URLs
%% are valid for five minutes after they are generated. You can call the
%% `DescribeAssetBundleExportJob' API for a new download URL as needed.
%%
%% Job descriptions are available for 14 days after the job starts.
-spec describe_asset_bundle_export_job(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_asset_bundle_export_job_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_bundle_export_job_errors(), tuple()}.
describe_asset_bundle_export_job(Client, AssetBundleExportJobId, AwsAccountId)
  when is_map(Client) ->
    describe_asset_bundle_export_job(Client, AssetBundleExportJobId, AwsAccountId, #{}, #{}).

-spec describe_asset_bundle_export_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_asset_bundle_export_job_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_bundle_export_job_errors(), tuple()}.
describe_asset_bundle_export_job(Client, AssetBundleExportJobId, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_asset_bundle_export_job(Client, AssetBundleExportJobId, AwsAccountId, QueryMap, HeadersMap, []).

-spec describe_asset_bundle_export_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_asset_bundle_export_job_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_bundle_export_job_errors(), tuple()}.
describe_asset_bundle_export_job(Client, AssetBundleExportJobId, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/asset-bundle-export-jobs/", aws_util:encode_uri(AssetBundleExportJobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing import job.
%%
%% Poll job descriptions after starting a job to know when it has succeeded
%% or failed. Job
%% descriptions are available for 14 days after job starts.
-spec describe_asset_bundle_import_job(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_asset_bundle_import_job_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_bundle_import_job_errors(), tuple()}.
describe_asset_bundle_import_job(Client, AssetBundleImportJobId, AwsAccountId)
  when is_map(Client) ->
    describe_asset_bundle_import_job(Client, AssetBundleImportJobId, AwsAccountId, #{}, #{}).

-spec describe_asset_bundle_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_asset_bundle_import_job_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_bundle_import_job_errors(), tuple()}.
describe_asset_bundle_import_job(Client, AssetBundleImportJobId, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_asset_bundle_import_job(Client, AssetBundleImportJobId, AwsAccountId, QueryMap, HeadersMap, []).

-spec describe_asset_bundle_import_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_asset_bundle_import_job_response(), tuple()} |
    {error, any()} |
    {error, describe_asset_bundle_import_job_errors(), tuple()}.
describe_asset_bundle_import_job(Client, AssetBundleImportJobId, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/asset-bundle-import-jobs/", aws_util:encode_uri(AssetBundleImportJobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a brand.
-spec describe_brand(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_brand_response(), tuple()} |
    {error, any()} |
    {error, describe_brand_errors(), tuple()}.
describe_brand(Client, AwsAccountId, BrandId)
  when is_map(Client) ->
    describe_brand(Client, AwsAccountId, BrandId, #{}, #{}).

-spec describe_brand(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_brand_response(), tuple()} |
    {error, any()} |
    {error, describe_brand_errors(), tuple()}.
describe_brand(Client, AwsAccountId, BrandId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_brand(Client, AwsAccountId, BrandId, QueryMap, HeadersMap, []).

-spec describe_brand(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_brand_response(), tuple()} |
    {error, any()} |
    {error, describe_brand_errors(), tuple()}.
describe_brand(Client, AwsAccountId, BrandId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/brands/", aws_util:encode_uri(BrandId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"versionId">>, maps:get(<<"versionId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a brand assignment.
-spec describe_brand_assignment(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_brand_assignment_response(), tuple()} |
    {error, any()} |
    {error, describe_brand_assignment_errors(), tuple()}.
describe_brand_assignment(Client, AwsAccountId)
  when is_map(Client) ->
    describe_brand_assignment(Client, AwsAccountId, #{}, #{}).

-spec describe_brand_assignment(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_brand_assignment_response(), tuple()} |
    {error, any()} |
    {error, describe_brand_assignment_errors(), tuple()}.
describe_brand_assignment(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_brand_assignment(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec describe_brand_assignment(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_brand_assignment_response(), tuple()} |
    {error, any()} |
    {error, describe_brand_assignment_errors(), tuple()}.
describe_brand_assignment(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/brandassignments"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the published version of the brand.
-spec describe_brand_published_version(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_brand_published_version_response(), tuple()} |
    {error, any()} |
    {error, describe_brand_published_version_errors(), tuple()}.
describe_brand_published_version(Client, AwsAccountId, BrandId)
  when is_map(Client) ->
    describe_brand_published_version(Client, AwsAccountId, BrandId, #{}, #{}).

-spec describe_brand_published_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_brand_published_version_response(), tuple()} |
    {error, any()} |
    {error, describe_brand_published_version_errors(), tuple()}.
describe_brand_published_version(Client, AwsAccountId, BrandId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_brand_published_version(Client, AwsAccountId, BrandId, QueryMap, HeadersMap, []).

-spec describe_brand_published_version(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_brand_published_version_response(), tuple()} |
    {error, any()} |
    {error, describe_brand_published_version_errors(), tuple()}.
describe_brand_published_version(Client, AwsAccountId, BrandId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/brands/", aws_util:encode_uri(BrandId), "/publishedversion"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a custom permissions profile.
-spec describe_custom_permissions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_custom_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_permissions_errors(), tuple()}.
describe_custom_permissions(Client, AwsAccountId, CustomPermissionsName)
  when is_map(Client) ->
    describe_custom_permissions(Client, AwsAccountId, CustomPermissionsName, #{}, #{}).

-spec describe_custom_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_custom_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_permissions_errors(), tuple()}.
describe_custom_permissions(Client, AwsAccountId, CustomPermissionsName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_custom_permissions(Client, AwsAccountId, CustomPermissionsName, QueryMap, HeadersMap, []).

-spec describe_custom_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_custom_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_permissions_errors(), tuple()}.
describe_custom_permissions(Client, AwsAccountId, CustomPermissionsName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/custom-permissions/", aws_util:encode_uri(CustomPermissionsName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a summary for a dashboard.
-spec describe_dashboard(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_dashboard_response(), tuple()} |
    {error, any()} |
    {error, describe_dashboard_errors(), tuple()}.
describe_dashboard(Client, AwsAccountId, DashboardId)
  when is_map(Client) ->
    describe_dashboard(Client, AwsAccountId, DashboardId, #{}, #{}).

-spec describe_dashboard(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_dashboard_response(), tuple()} |
    {error, any()} |
    {error, describe_dashboard_errors(), tuple()}.
describe_dashboard(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dashboard(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap, []).

-spec describe_dashboard(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_dashboard_response(), tuple()} |
    {error, any()} |
    {error, describe_dashboard_errors(), tuple()}.
describe_dashboard(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"alias-name">>, maps:get(<<"alias-name">>, QueryMap, undefined)},
        {<<"version-number">>, maps:get(<<"version-number">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a detailed description of the definition of a dashboard.
%%
%% If you do not need to know details about the content of a dashboard, for
%% instance
%% if you are trying to check the status of a recently created or updated
%% dashboard,
%% use the
%% `DescribeDashboard'
%% :
%% https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeDashboard.html
%% instead.
-spec describe_dashboard_definition(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_dashboard_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_dashboard_definition_errors(), tuple()}.
describe_dashboard_definition(Client, AwsAccountId, DashboardId)
  when is_map(Client) ->
    describe_dashboard_definition(Client, AwsAccountId, DashboardId, #{}, #{}).

-spec describe_dashboard_definition(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_dashboard_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_dashboard_definition_errors(), tuple()}.
describe_dashboard_definition(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dashboard_definition(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap, []).

-spec describe_dashboard_definition(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_dashboard_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_dashboard_definition_errors(), tuple()}.
describe_dashboard_definition(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/definition"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"alias-name">>, maps:get(<<"alias-name">>, QueryMap, undefined)},
        {<<"version-number">>, maps:get(<<"version-number">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes read and write permissions for a dashboard.
-spec describe_dashboard_permissions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_dashboard_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_dashboard_permissions_errors(), tuple()}.
describe_dashboard_permissions(Client, AwsAccountId, DashboardId)
  when is_map(Client) ->
    describe_dashboard_permissions(Client, AwsAccountId, DashboardId, #{}, #{}).

-spec describe_dashboard_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_dashboard_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_dashboard_permissions_errors(), tuple()}.
describe_dashboard_permissions(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dashboard_permissions(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap, []).

-spec describe_dashboard_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_dashboard_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_dashboard_permissions_errors(), tuple()}.
describe_dashboard_permissions(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/permissions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing snapshot job.
%%
%% Poll job descriptions after a job starts to know the status of the job.
%% For information on available status codes, see `JobStatus'.
-spec describe_dashboard_snapshot_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_dashboard_snapshot_job_response(), tuple()} |
    {error, any()} |
    {error, describe_dashboard_snapshot_job_errors(), tuple()}.
describe_dashboard_snapshot_job(Client, AwsAccountId, DashboardId, SnapshotJobId)
  when is_map(Client) ->
    describe_dashboard_snapshot_job(Client, AwsAccountId, DashboardId, SnapshotJobId, #{}, #{}).

-spec describe_dashboard_snapshot_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_dashboard_snapshot_job_response(), tuple()} |
    {error, any()} |
    {error, describe_dashboard_snapshot_job_errors(), tuple()}.
describe_dashboard_snapshot_job(Client, AwsAccountId, DashboardId, SnapshotJobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dashboard_snapshot_job(Client, AwsAccountId, DashboardId, SnapshotJobId, QueryMap, HeadersMap, []).

-spec describe_dashboard_snapshot_job(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_dashboard_snapshot_job_response(), tuple()} |
    {error, any()} |
    {error, describe_dashboard_snapshot_job_errors(), tuple()}.
describe_dashboard_snapshot_job(Client, AwsAccountId, DashboardId, SnapshotJobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/snapshot-jobs/", aws_util:encode_uri(SnapshotJobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the result of an existing snapshot job that has finished
%% running.
%%
%% A finished snapshot job will return a `COMPLETED' or `FAILED'
%% status when you poll the job with a `DescribeDashboardSnapshotJob' API
%% call.
%%
%% If the job has not finished running, this operation returns a message that
%% says `Dashboard Snapshot Job with id has not reached a terminal
%% state.'.
-spec describe_dashboard_snapshot_job_result(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_dashboard_snapshot_job_result_response(), tuple()} |
    {error, any()} |
    {error, describe_dashboard_snapshot_job_result_errors(), tuple()}.
describe_dashboard_snapshot_job_result(Client, AwsAccountId, DashboardId, SnapshotJobId)
  when is_map(Client) ->
    describe_dashboard_snapshot_job_result(Client, AwsAccountId, DashboardId, SnapshotJobId, #{}, #{}).

-spec describe_dashboard_snapshot_job_result(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_dashboard_snapshot_job_result_response(), tuple()} |
    {error, any()} |
    {error, describe_dashboard_snapshot_job_result_errors(), tuple()}.
describe_dashboard_snapshot_job_result(Client, AwsAccountId, DashboardId, SnapshotJobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dashboard_snapshot_job_result(Client, AwsAccountId, DashboardId, SnapshotJobId, QueryMap, HeadersMap, []).

-spec describe_dashboard_snapshot_job_result(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_dashboard_snapshot_job_result_response(), tuple()} |
    {error, any()} |
    {error, describe_dashboard_snapshot_job_result_errors(), tuple()}.
describe_dashboard_snapshot_job_result(Client, AwsAccountId, DashboardId, SnapshotJobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/snapshot-jobs/", aws_util:encode_uri(SnapshotJobId), "/result"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing dashboard QA configuration.
-spec describe_dashboards_q_a_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_dashboards_q_a_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_dashboards_q_a_configuration_errors(), tuple()}.
describe_dashboards_q_a_configuration(Client, AwsAccountId)
  when is_map(Client) ->
    describe_dashboards_q_a_configuration(Client, AwsAccountId, #{}, #{}).

-spec describe_dashboards_q_a_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_dashboards_q_a_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_dashboards_q_a_configuration_errors(), tuple()}.
describe_dashboards_q_a_configuration(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dashboards_q_a_configuration(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec describe_dashboards_q_a_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_dashboards_q_a_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_dashboards_q_a_configuration_errors(), tuple()}.
describe_dashboards_q_a_configuration(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards-qa-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a dataset.
%%
%% This operation doesn't support datasets that include uploaded
%% files as a source.
-spec describe_data_set(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_data_set_response(), tuple()} |
    {error, any()} |
    {error, describe_data_set_errors(), tuple()}.
describe_data_set(Client, AwsAccountId, DataSetId)
  when is_map(Client) ->
    describe_data_set(Client, AwsAccountId, DataSetId, #{}, #{}).

-spec describe_data_set(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_data_set_response(), tuple()} |
    {error, any()} |
    {error, describe_data_set_errors(), tuple()}.
describe_data_set(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_data_set(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap, []).

-spec describe_data_set(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_data_set_response(), tuple()} |
    {error, any()} |
    {error, describe_data_set_errors(), tuple()}.
describe_data_set(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the permissions on a dataset.
%%
%% The permissions resource is
%% `arn:aws:quicksight:region:aws-account-id:dataset/data-set-id'.
-spec describe_data_set_permissions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_data_set_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_data_set_permissions_errors(), tuple()}.
describe_data_set_permissions(Client, AwsAccountId, DataSetId)
  when is_map(Client) ->
    describe_data_set_permissions(Client, AwsAccountId, DataSetId, #{}, #{}).

-spec describe_data_set_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_data_set_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_data_set_permissions_errors(), tuple()}.
describe_data_set_permissions(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_data_set_permissions(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap, []).

-spec describe_data_set_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_data_set_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_data_set_permissions_errors(), tuple()}.
describe_data_set_permissions(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/permissions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the refresh properties of a dataset.
-spec describe_data_set_refresh_properties(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_data_set_refresh_properties_response(), tuple()} |
    {error, any()} |
    {error, describe_data_set_refresh_properties_errors(), tuple()}.
describe_data_set_refresh_properties(Client, AwsAccountId, DataSetId)
  when is_map(Client) ->
    describe_data_set_refresh_properties(Client, AwsAccountId, DataSetId, #{}, #{}).

-spec describe_data_set_refresh_properties(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_data_set_refresh_properties_response(), tuple()} |
    {error, any()} |
    {error, describe_data_set_refresh_properties_errors(), tuple()}.
describe_data_set_refresh_properties(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_data_set_refresh_properties(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap, []).

-spec describe_data_set_refresh_properties(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_data_set_refresh_properties_response(), tuple()} |
    {error, any()} |
    {error, describe_data_set_refresh_properties_errors(), tuple()}.
describe_data_set_refresh_properties(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/refresh-properties"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a data source.
-spec describe_data_source(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_data_source_response(), tuple()} |
    {error, any()} |
    {error, describe_data_source_errors(), tuple()}.
describe_data_source(Client, AwsAccountId, DataSourceId)
  when is_map(Client) ->
    describe_data_source(Client, AwsAccountId, DataSourceId, #{}, #{}).

-spec describe_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_data_source_response(), tuple()} |
    {error, any()} |
    {error, describe_data_source_errors(), tuple()}.
describe_data_source(Client, AwsAccountId, DataSourceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_data_source(Client, AwsAccountId, DataSourceId, QueryMap, HeadersMap, []).

-spec describe_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_data_source_response(), tuple()} |
    {error, any()} |
    {error, describe_data_source_errors(), tuple()}.
describe_data_source(Client, AwsAccountId, DataSourceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sources/", aws_util:encode_uri(DataSourceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the resource permissions for a data source.
-spec describe_data_source_permissions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_data_source_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_data_source_permissions_errors(), tuple()}.
describe_data_source_permissions(Client, AwsAccountId, DataSourceId)
  when is_map(Client) ->
    describe_data_source_permissions(Client, AwsAccountId, DataSourceId, #{}, #{}).

-spec describe_data_source_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_data_source_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_data_source_permissions_errors(), tuple()}.
describe_data_source_permissions(Client, AwsAccountId, DataSourceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_data_source_permissions(Client, AwsAccountId, DataSourceId, QueryMap, HeadersMap, []).

-spec describe_data_source_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_data_source_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_data_source_permissions_errors(), tuple()}.
describe_data_source_permissions(Client, AwsAccountId, DataSourceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sources/", aws_util:encode_uri(DataSourceId), "/permissions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a Amazon Q Business application that is linked to an Quick
%% Sight account.
-spec describe_default_q_business_application(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_default_q_business_application_response(), tuple()} |
    {error, any()} |
    {error, describe_default_q_business_application_errors(), tuple()}.
describe_default_q_business_application(Client, AwsAccountId)
  when is_map(Client) ->
    describe_default_q_business_application(Client, AwsAccountId, #{}, #{}).

-spec describe_default_q_business_application(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_default_q_business_application_response(), tuple()} |
    {error, any()} |
    {error, describe_default_q_business_application_errors(), tuple()}.
describe_default_q_business_application(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_default_q_business_application(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec describe_default_q_business_application(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_default_q_business_application_response(), tuple()} |
    {error, any()} |
    {error, describe_default_q_business_application_errors(), tuple()}.
describe_default_q_business_application(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/default-qbusiness-application"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"namespace">>, maps:get(<<"namespace">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a folder.
-spec describe_folder(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_folder_response(), tuple()} |
    {error, any()} |
    {error, describe_folder_errors(), tuple()}.
describe_folder(Client, AwsAccountId, FolderId)
  when is_map(Client) ->
    describe_folder(Client, AwsAccountId, FolderId, #{}, #{}).

-spec describe_folder(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_folder_response(), tuple()} |
    {error, any()} |
    {error, describe_folder_errors(), tuple()}.
describe_folder(Client, AwsAccountId, FolderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_folder(Client, AwsAccountId, FolderId, QueryMap, HeadersMap, []).

-spec describe_folder(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_folder_response(), tuple()} |
    {error, any()} |
    {error, describe_folder_errors(), tuple()}.
describe_folder(Client, AwsAccountId, FolderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes permissions for a folder.
-spec describe_folder_permissions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_folder_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_folder_permissions_errors(), tuple()}.
describe_folder_permissions(Client, AwsAccountId, FolderId)
  when is_map(Client) ->
    describe_folder_permissions(Client, AwsAccountId, FolderId, #{}, #{}).

-spec describe_folder_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_folder_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_folder_permissions_errors(), tuple()}.
describe_folder_permissions(Client, AwsAccountId, FolderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_folder_permissions(Client, AwsAccountId, FolderId, QueryMap, HeadersMap, []).

-spec describe_folder_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_folder_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_folder_permissions_errors(), tuple()}.
describe_folder_permissions(Client, AwsAccountId, FolderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), "/permissions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"namespace">>, maps:get(<<"namespace">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the folder resolved permissions.
%%
%% Permissions consists of both folder direct permissions and the inherited
%% permissions from the ancestor folders.
-spec describe_folder_resolved_permissions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_folder_resolved_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_folder_resolved_permissions_errors(), tuple()}.
describe_folder_resolved_permissions(Client, AwsAccountId, FolderId)
  when is_map(Client) ->
    describe_folder_resolved_permissions(Client, AwsAccountId, FolderId, #{}, #{}).

-spec describe_folder_resolved_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_folder_resolved_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_folder_resolved_permissions_errors(), tuple()}.
describe_folder_resolved_permissions(Client, AwsAccountId, FolderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_folder_resolved_permissions(Client, AwsAccountId, FolderId, QueryMap, HeadersMap, []).

-spec describe_folder_resolved_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_folder_resolved_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_folder_resolved_permissions_errors(), tuple()}.
describe_folder_resolved_permissions(Client, AwsAccountId, FolderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), "/resolved-permissions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"namespace">>, maps:get(<<"namespace">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an Amazon Quick Sight group's description and Amazon
%% Resource Name (ARN).
-spec describe_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_group_response(), tuple()} |
    {error, any()} |
    {error, describe_group_errors(), tuple()}.
describe_group(Client, AwsAccountId, GroupName, Namespace)
  when is_map(Client) ->
    describe_group(Client, AwsAccountId, GroupName, Namespace, #{}, #{}).

-spec describe_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_group_response(), tuple()} |
    {error, any()} |
    {error, describe_group_errors(), tuple()}.
describe_group(Client, AwsAccountId, GroupName, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_group(Client, AwsAccountId, GroupName, Namespace, QueryMap, HeadersMap, []).

-spec describe_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_group_response(), tuple()} |
    {error, any()} |
    {error, describe_group_errors(), tuple()}.
describe_group(Client, AwsAccountId, GroupName, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/groups/", aws_util:encode_uri(GroupName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Use the `DescribeGroupMembership' operation to determine if a
%% user is a
%% member of the specified group.
%%
%% If the user exists and is a member of the specified
%% group, an associated `GroupMember' object is returned.
-spec describe_group_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_group_membership_response(), tuple()} |
    {error, any()} |
    {error, describe_group_membership_errors(), tuple()}.
describe_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace)
  when is_map(Client) ->
    describe_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, #{}, #{}).

-spec describe_group_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_group_membership_response(), tuple()} |
    {error, any()} |
    {error, describe_group_membership_errors(), tuple()}.
describe_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, QueryMap, HeadersMap, []).

-spec describe_group_membership(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_group_membership_response(), tuple()} |
    {error, any()} |
    {error, describe_group_membership_errors(), tuple()}.
describe_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/groups/", aws_util:encode_uri(GroupName), "/members/", aws_util:encode_uri(MemberName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing IAM policy assignment, as specified by the
%% assignment name.
-spec describe_iam_policy_assignment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_iam_policy_assignment_response(), tuple()} |
    {error, any()} |
    {error, describe_iam_policy_assignment_errors(), tuple()}.
describe_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace)
  when is_map(Client) ->
    describe_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, #{}, #{}).

-spec describe_iam_policy_assignment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_iam_policy_assignment_response(), tuple()} |
    {error, any()} |
    {error, describe_iam_policy_assignment_errors(), tuple()}.
describe_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, QueryMap, HeadersMap, []).

-spec describe_iam_policy_assignment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_iam_policy_assignment_response(), tuple()} |
    {error, any()} |
    {error, describe_iam_policy_assignment_errors(), tuple()}.
describe_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/iam-policy-assignments/", aws_util:encode_uri(AssignmentName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a SPICE ingestion.
-spec describe_ingestion(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_ingestion_response(), tuple()} |
    {error, any()} |
    {error, describe_ingestion_errors(), tuple()}.
describe_ingestion(Client, AwsAccountId, DataSetId, IngestionId)
  when is_map(Client) ->
    describe_ingestion(Client, AwsAccountId, DataSetId, IngestionId, #{}, #{}).

-spec describe_ingestion(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_ingestion_response(), tuple()} |
    {error, any()} |
    {error, describe_ingestion_errors(), tuple()}.
describe_ingestion(Client, AwsAccountId, DataSetId, IngestionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_ingestion(Client, AwsAccountId, DataSetId, IngestionId, QueryMap, HeadersMap, []).

-spec describe_ingestion(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_ingestion_response(), tuple()} |
    {error, any()} |
    {error, describe_ingestion_errors(), tuple()}.
describe_ingestion(Client, AwsAccountId, DataSetId, IngestionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/ingestions/", aws_util:encode_uri(IngestionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a summary and status of IP rules.
-spec describe_ip_restriction(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_ip_restriction_response(), tuple()} |
    {error, any()} |
    {error, describe_ip_restriction_errors(), tuple()}.
describe_ip_restriction(Client, AwsAccountId)
  when is_map(Client) ->
    describe_ip_restriction(Client, AwsAccountId, #{}, #{}).

-spec describe_ip_restriction(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_ip_restriction_response(), tuple()} |
    {error, any()} |
    {error, describe_ip_restriction_errors(), tuple()}.
describe_ip_restriction(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_ip_restriction(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec describe_ip_restriction(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_ip_restriction_response(), tuple()} |
    {error, any()} |
    {error, describe_ip_restriction_errors(), tuple()}.
describe_ip_restriction(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/ip-restriction"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes all customer managed key registrations in a Quick Sight
%% account.
-spec describe_key_registration(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_key_registration_response(), tuple()} |
    {error, any()} |
    {error, describe_key_registration_errors(), tuple()}.
describe_key_registration(Client, AwsAccountId)
  when is_map(Client) ->
    describe_key_registration(Client, AwsAccountId, #{}, #{}).

-spec describe_key_registration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_key_registration_response(), tuple()} |
    {error, any()} |
    {error, describe_key_registration_errors(), tuple()}.
describe_key_registration(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_key_registration(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec describe_key_registration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_key_registration_response(), tuple()} |
    {error, any()} |
    {error, describe_key_registration_errors(), tuple()}.
describe_key_registration(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/key-registration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"default-key-only">>, maps:get(<<"default-key-only">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the current namespace.
-spec describe_namespace(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_namespace_response(), tuple()} |
    {error, any()} |
    {error, describe_namespace_errors(), tuple()}.
describe_namespace(Client, AwsAccountId, Namespace)
  when is_map(Client) ->
    describe_namespace(Client, AwsAccountId, Namespace, #{}, #{}).

-spec describe_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_namespace_response(), tuple()} |
    {error, any()} |
    {error, describe_namespace_errors(), tuple()}.
describe_namespace(Client, AwsAccountId, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_namespace(Client, AwsAccountId, Namespace, QueryMap, HeadersMap, []).

-spec describe_namespace(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_namespace_response(), tuple()} |
    {error, any()} |
    {error, describe_namespace_errors(), tuple()}.
describe_namespace(Client, AwsAccountId, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a personalization configuration.
-spec describe_q_personalization_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_q_personalization_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_q_personalization_configuration_errors(), tuple()}.
describe_q_personalization_configuration(Client, AwsAccountId)
  when is_map(Client) ->
    describe_q_personalization_configuration(Client, AwsAccountId, #{}, #{}).

-spec describe_q_personalization_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_q_personalization_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_q_personalization_configuration_errors(), tuple()}.
describe_q_personalization_configuration(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_q_personalization_configuration(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec describe_q_personalization_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_q_personalization_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_q_personalization_configuration_errors(), tuple()}.
describe_q_personalization_configuration(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/q-personalization-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the state of a Quick Sight Q Search configuration.
-spec describe_quick_sight_q_search_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_quick_sight_q_search_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_quick_sight_q_search_configuration_errors(), tuple()}.
describe_quick_sight_q_search_configuration(Client, AwsAccountId)
  when is_map(Client) ->
    describe_quick_sight_q_search_configuration(Client, AwsAccountId, #{}, #{}).

-spec describe_quick_sight_q_search_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_quick_sight_q_search_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_quick_sight_q_search_configuration_errors(), tuple()}.
describe_quick_sight_q_search_configuration(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_quick_sight_q_search_configuration(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec describe_quick_sight_q_search_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_quick_sight_q_search_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_quick_sight_q_search_configuration_errors(), tuple()}.
describe_quick_sight_q_search_configuration(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/quicksight-q-search-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a summary of a refresh schedule.
-spec describe_refresh_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_refresh_schedule_response(), tuple()} |
    {error, any()} |
    {error, describe_refresh_schedule_errors(), tuple()}.
describe_refresh_schedule(Client, AwsAccountId, DataSetId, ScheduleId)
  when is_map(Client) ->
    describe_refresh_schedule(Client, AwsAccountId, DataSetId, ScheduleId, #{}, #{}).

-spec describe_refresh_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_refresh_schedule_response(), tuple()} |
    {error, any()} |
    {error, describe_refresh_schedule_errors(), tuple()}.
describe_refresh_schedule(Client, AwsAccountId, DataSetId, ScheduleId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_refresh_schedule(Client, AwsAccountId, DataSetId, ScheduleId, QueryMap, HeadersMap, []).

-spec describe_refresh_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_refresh_schedule_response(), tuple()} |
    {error, any()} |
    {error, describe_refresh_schedule_errors(), tuple()}.
describe_refresh_schedule(Client, AwsAccountId, DataSetId, ScheduleId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/refresh-schedules/", aws_util:encode_uri(ScheduleId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes all custom permissions that are mapped to a role.
-spec describe_role_custom_permission(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_role_custom_permission_response(), tuple()} |
    {error, any()} |
    {error, describe_role_custom_permission_errors(), tuple()}.
describe_role_custom_permission(Client, AwsAccountId, Namespace, Role)
  when is_map(Client) ->
    describe_role_custom_permission(Client, AwsAccountId, Namespace, Role, #{}, #{}).

-spec describe_role_custom_permission(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_role_custom_permission_response(), tuple()} |
    {error, any()} |
    {error, describe_role_custom_permission_errors(), tuple()}.
describe_role_custom_permission(Client, AwsAccountId, Namespace, Role, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_role_custom_permission(Client, AwsAccountId, Namespace, Role, QueryMap, HeadersMap, []).

-spec describe_role_custom_permission(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_role_custom_permission_response(), tuple()} |
    {error, any()} |
    {error, describe_role_custom_permission_errors(), tuple()}.
describe_role_custom_permission(Client, AwsAccountId, Namespace, Role, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/roles/", aws_util:encode_uri(Role), "/custom-permission"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a template's metadata.
-spec describe_template(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_template_response(), tuple()} |
    {error, any()} |
    {error, describe_template_errors(), tuple()}.
describe_template(Client, AwsAccountId, TemplateId)
  when is_map(Client) ->
    describe_template(Client, AwsAccountId, TemplateId, #{}, #{}).

-spec describe_template(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_template_response(), tuple()} |
    {error, any()} |
    {error, describe_template_errors(), tuple()}.
describe_template(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_template(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap, []).

-spec describe_template(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_template_response(), tuple()} |
    {error, any()} |
    {error, describe_template_errors(), tuple()}.
describe_template(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"alias-name">>, maps:get(<<"alias-name">>, QueryMap, undefined)},
        {<<"version-number">>, maps:get(<<"version-number">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the template alias for a template.
-spec describe_template_alias(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_template_alias_response(), tuple()} |
    {error, any()} |
    {error, describe_template_alias_errors(), tuple()}.
describe_template_alias(Client, AliasName, AwsAccountId, TemplateId)
  when is_map(Client) ->
    describe_template_alias(Client, AliasName, AwsAccountId, TemplateId, #{}, #{}).

-spec describe_template_alias(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_template_alias_response(), tuple()} |
    {error, any()} |
    {error, describe_template_alias_errors(), tuple()}.
describe_template_alias(Client, AliasName, AwsAccountId, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_template_alias(Client, AliasName, AwsAccountId, TemplateId, QueryMap, HeadersMap, []).

-spec describe_template_alias(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_template_alias_response(), tuple()} |
    {error, any()} |
    {error, describe_template_alias_errors(), tuple()}.
describe_template_alias(Client, AliasName, AwsAccountId, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), "/aliases/", aws_util:encode_uri(AliasName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a detailed description of the definition of a template.
%%
%% If you do not need to know details about the content of a template, for
%% instance if you
%% are trying to check the status of a recently created or updated template,
%% use the
%%
%% `DescribeTemplate'
%% :
%% https://docs.aws.amazon.com/quicksight/latest/APIReference/API_DescribeTemplate.html
%% instead.
-spec describe_template_definition(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_template_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_template_definition_errors(), tuple()}.
describe_template_definition(Client, AwsAccountId, TemplateId)
  when is_map(Client) ->
    describe_template_definition(Client, AwsAccountId, TemplateId, #{}, #{}).

-spec describe_template_definition(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_template_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_template_definition_errors(), tuple()}.
describe_template_definition(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_template_definition(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap, []).

-spec describe_template_definition(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_template_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_template_definition_errors(), tuple()}.
describe_template_definition(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), "/definition"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"alias-name">>, maps:get(<<"alias-name">>, QueryMap, undefined)},
        {<<"version-number">>, maps:get(<<"version-number">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes read and write permissions on a template.
-spec describe_template_permissions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_template_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_template_permissions_errors(), tuple()}.
describe_template_permissions(Client, AwsAccountId, TemplateId)
  when is_map(Client) ->
    describe_template_permissions(Client, AwsAccountId, TemplateId, #{}, #{}).

-spec describe_template_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_template_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_template_permissions_errors(), tuple()}.
describe_template_permissions(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_template_permissions(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap, []).

-spec describe_template_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_template_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_template_permissions_errors(), tuple()}.
describe_template_permissions(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), "/permissions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a theme.
-spec describe_theme(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_theme_response(), tuple()} |
    {error, any()} |
    {error, describe_theme_errors(), tuple()}.
describe_theme(Client, AwsAccountId, ThemeId)
  when is_map(Client) ->
    describe_theme(Client, AwsAccountId, ThemeId, #{}, #{}).

-spec describe_theme(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_theme_response(), tuple()} |
    {error, any()} |
    {error, describe_theme_errors(), tuple()}.
describe_theme(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_theme(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap, []).

-spec describe_theme(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_theme_response(), tuple()} |
    {error, any()} |
    {error, describe_theme_errors(), tuple()}.
describe_theme(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"alias-name">>, maps:get(<<"alias-name">>, QueryMap, undefined)},
        {<<"version-number">>, maps:get(<<"version-number">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the alias for a theme.
-spec describe_theme_alias(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_theme_alias_response(), tuple()} |
    {error, any()} |
    {error, describe_theme_alias_errors(), tuple()}.
describe_theme_alias(Client, AliasName, AwsAccountId, ThemeId)
  when is_map(Client) ->
    describe_theme_alias(Client, AliasName, AwsAccountId, ThemeId, #{}, #{}).

-spec describe_theme_alias(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_theme_alias_response(), tuple()} |
    {error, any()} |
    {error, describe_theme_alias_errors(), tuple()}.
describe_theme_alias(Client, AliasName, AwsAccountId, ThemeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_theme_alias(Client, AliasName, AwsAccountId, ThemeId, QueryMap, HeadersMap, []).

-spec describe_theme_alias(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_theme_alias_response(), tuple()} |
    {error, any()} |
    {error, describe_theme_alias_errors(), tuple()}.
describe_theme_alias(Client, AliasName, AwsAccountId, ThemeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), "/aliases/", aws_util:encode_uri(AliasName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the read and write permissions for a theme.
-spec describe_theme_permissions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_theme_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_theme_permissions_errors(), tuple()}.
describe_theme_permissions(Client, AwsAccountId, ThemeId)
  when is_map(Client) ->
    describe_theme_permissions(Client, AwsAccountId, ThemeId, #{}, #{}).

-spec describe_theme_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_theme_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_theme_permissions_errors(), tuple()}.
describe_theme_permissions(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_theme_permissions(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap, []).

-spec describe_theme_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_theme_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_theme_permissions_errors(), tuple()}.
describe_theme_permissions(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), "/permissions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a topic.
-spec describe_topic(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_topic_response(), tuple()} |
    {error, any()} |
    {error, describe_topic_errors(), tuple()}.
describe_topic(Client, AwsAccountId, TopicId)
  when is_map(Client) ->
    describe_topic(Client, AwsAccountId, TopicId, #{}, #{}).

-spec describe_topic(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_topic_response(), tuple()} |
    {error, any()} |
    {error, describe_topic_errors(), tuple()}.
describe_topic(Client, AwsAccountId, TopicId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_topic(Client, AwsAccountId, TopicId, QueryMap, HeadersMap, []).

-spec describe_topic(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_topic_response(), tuple()} |
    {error, any()} |
    {error, describe_topic_errors(), tuple()}.
describe_topic(Client, AwsAccountId, TopicId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the permissions of a topic.
-spec describe_topic_permissions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_topic_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_topic_permissions_errors(), tuple()}.
describe_topic_permissions(Client, AwsAccountId, TopicId)
  when is_map(Client) ->
    describe_topic_permissions(Client, AwsAccountId, TopicId, #{}, #{}).

-spec describe_topic_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_topic_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_topic_permissions_errors(), tuple()}.
describe_topic_permissions(Client, AwsAccountId, TopicId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_topic_permissions(Client, AwsAccountId, TopicId, QueryMap, HeadersMap, []).

-spec describe_topic_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_topic_permissions_response(), tuple()} |
    {error, any()} |
    {error, describe_topic_permissions_errors(), tuple()}.
describe_topic_permissions(Client, AwsAccountId, TopicId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), "/permissions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the status of a topic refresh.
-spec describe_topic_refresh(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_topic_refresh_response(), tuple()} |
    {error, any()} |
    {error, describe_topic_refresh_errors(), tuple()}.
describe_topic_refresh(Client, AwsAccountId, RefreshId, TopicId)
  when is_map(Client) ->
    describe_topic_refresh(Client, AwsAccountId, RefreshId, TopicId, #{}, #{}).

-spec describe_topic_refresh(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_topic_refresh_response(), tuple()} |
    {error, any()} |
    {error, describe_topic_refresh_errors(), tuple()}.
describe_topic_refresh(Client, AwsAccountId, RefreshId, TopicId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_topic_refresh(Client, AwsAccountId, RefreshId, TopicId, QueryMap, HeadersMap, []).

-spec describe_topic_refresh(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_topic_refresh_response(), tuple()} |
    {error, any()} |
    {error, describe_topic_refresh_errors(), tuple()}.
describe_topic_refresh(Client, AwsAccountId, RefreshId, TopicId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), "/refresh/", aws_util:encode_uri(RefreshId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Deletes a topic refresh schedule.
-spec describe_topic_refresh_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_topic_refresh_schedule_response(), tuple()} |
    {error, any()} |
    {error, describe_topic_refresh_schedule_errors(), tuple()}.
describe_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId)
  when is_map(Client) ->
    describe_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId, #{}, #{}).

-spec describe_topic_refresh_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_topic_refresh_schedule_response(), tuple()} |
    {error, any()} |
    {error, describe_topic_refresh_schedule_errors(), tuple()}.
describe_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId, QueryMap, HeadersMap, []).

-spec describe_topic_refresh_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_topic_refresh_schedule_response(), tuple()} |
    {error, any()} |
    {error, describe_topic_refresh_schedule_errors(), tuple()}.
describe_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), "/schedules/", aws_util:encode_uri(DatasetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a user, given the user name.
-spec describe_user(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, describe_user_response(), tuple()} |
    {error, any()} |
    {error, describe_user_errors(), tuple()}.
describe_user(Client, AwsAccountId, Namespace, UserName)
  when is_map(Client) ->
    describe_user(Client, AwsAccountId, Namespace, UserName, #{}, #{}).

-spec describe_user(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_user_response(), tuple()} |
    {error, any()} |
    {error, describe_user_errors(), tuple()}.
describe_user(Client, AwsAccountId, Namespace, UserName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_user(Client, AwsAccountId, Namespace, UserName, QueryMap, HeadersMap, []).

-spec describe_user(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_user_response(), tuple()} |
    {error, any()} |
    {error, describe_user_errors(), tuple()}.
describe_user(Client, AwsAccountId, Namespace, UserName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/users/", aws_util:encode_uri(UserName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a VPC connection.
-spec describe_vpc_connection(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_vpc_connection_response(), tuple()} |
    {error, any()} |
    {error, describe_vpc_connection_errors(), tuple()}.
describe_vpc_connection(Client, AwsAccountId, VPCConnectionId)
  when is_map(Client) ->
    describe_vpc_connection(Client, AwsAccountId, VPCConnectionId, #{}, #{}).

-spec describe_vpc_connection(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_vpc_connection_response(), tuple()} |
    {error, any()} |
    {error, describe_vpc_connection_errors(), tuple()}.
describe_vpc_connection(Client, AwsAccountId, VPCConnectionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_vpc_connection(Client, AwsAccountId, VPCConnectionId, QueryMap, HeadersMap, []).

-spec describe_vpc_connection(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_vpc_connection_response(), tuple()} |
    {error, any()} |
    {error, describe_vpc_connection_errors(), tuple()}.
describe_vpc_connection(Client, AwsAccountId, VPCConnectionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/vpc-connections/", aws_util:encode_uri(VPCConnectionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Generates an embed URL that you can use to embed an Amazon QuickSight
%% dashboard or
%% visual in your website, without having to register any reader users.
%%
%% Before you use this
%% action, make sure that you have configured the dashboards and permissions.
%%
%% The following rules apply to the generated URL:
%%
%% It contains a temporary bearer token. It is valid for 5 minutes after it
%% is
%% generated. Once redeemed within this period, it cannot be re-used again.
%%
%% The URL validity period should not be confused with the actual session
%% lifetime that can be customized using the
%% ```
%% SessionLifetimeInMinutes:
%% https://docs.aws.amazon.com/quicksight/latest/APIReference/API_GenerateEmbedUrlForAnonymousUser.html#QS-GenerateEmbedUrlForAnonymousUser-request-SessionLifetimeInMinutes
%% ''' parameter. The resulting user
%% session is valid for 15 minutes (minimum) to 10 hours (maximum). The
%% default
%% session duration is 10 hours.
%%
%% You are charged only when the URL is used or there is interaction with
%% Amazon QuickSight.
%%
%% For more information, see Embedded Analytics:
%% https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html
%% in
%% the Amazon QuickSight User Guide.
%%
%% For more information about the high-level steps for embedding and for an
%% interactive
%% demo of the ways you can customize embedding, visit the Amazon QuickSight
%% Developer Portal:
%% https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html.
-spec generate_embed_url_for_anonymous_user(aws_client:aws_client(), binary() | list(), generate_embed_url_for_anonymous_user_request()) ->
    {ok, generate_embed_url_for_anonymous_user_response(), tuple()} |
    {error, any()} |
    {error, generate_embed_url_for_anonymous_user_errors(), tuple()}.
generate_embed_url_for_anonymous_user(Client, AwsAccountId, Input) ->
    generate_embed_url_for_anonymous_user(Client, AwsAccountId, Input, []).

-spec generate_embed_url_for_anonymous_user(aws_client:aws_client(), binary() | list(), generate_embed_url_for_anonymous_user_request(), proplists:proplist()) ->
    {ok, generate_embed_url_for_anonymous_user_response(), tuple()} |
    {error, any()} |
    {error, generate_embed_url_for_anonymous_user_errors(), tuple()}.
generate_embed_url_for_anonymous_user(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/embed-url/anonymous-user"],
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

%% @doc Generates an embed URL that you can use to embed an Amazon QuickSight
%% experience
%% in your website.
%%
%% This action can be used for any type of user registered in an Amazon
%% QuickSight account. Before you use this action, make sure that you have
%% configured the relevant Amazon QuickSight resource and permissions.
%%
%% The following rules apply to the generated URL:
%%
%% It contains a temporary bearer token. It is valid for 5 minutes after it
%% is
%% generated. Once redeemed within this period, it cannot be re-used again.
%%
%% The URL validity period should not be confused with the actual session
%% lifetime that can be customized using the
%% ```
%% SessionLifetimeInMinutes:
%% https://docs.aws.amazon.com/quicksight/latest/APIReference/API_GenerateEmbedUrlForRegisteredUser.html#QS-GenerateEmbedUrlForRegisteredUser-request-SessionLifetimeInMinutes
%% ''' parameter.
%%
%% The resulting user session is valid for 15 minutes (minimum) to 10 hours
%% (maximum). The default session duration is 10 hours.
%%
%% You are charged only when the URL is used or there is interaction with
%% Amazon QuickSight.
%%
%% For more information, see Embedded Analytics:
%% https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html
%% in
%% the Amazon QuickSight User Guide.
%%
%% For more information about the high-level steps for embedding and for an
%% interactive
%% demo of the ways you can customize embedding, visit the Amazon QuickSight
%% Developer Portal:
%% https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html.
-spec generate_embed_url_for_registered_user(aws_client:aws_client(), binary() | list(), generate_embed_url_for_registered_user_request()) ->
    {ok, generate_embed_url_for_registered_user_response(), tuple()} |
    {error, any()} |
    {error, generate_embed_url_for_registered_user_errors(), tuple()}.
generate_embed_url_for_registered_user(Client, AwsAccountId, Input) ->
    generate_embed_url_for_registered_user(Client, AwsAccountId, Input, []).

-spec generate_embed_url_for_registered_user(aws_client:aws_client(), binary() | list(), generate_embed_url_for_registered_user_request(), proplists:proplist()) ->
    {ok, generate_embed_url_for_registered_user_response(), tuple()} |
    {error, any()} |
    {error, generate_embed_url_for_registered_user_errors(), tuple()}.
generate_embed_url_for_registered_user(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/embed-url/registered-user"],
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

%% @doc Generates an embed URL that you can use to embed an Amazon Quick
%% Sight experience in
%% your website.
%%
%% This action can be used for any type of user that is registered in an
%% Amazon Quick Sight account that uses IAM Identity Center for
%% authentication. This API
%% requires identity-enhanced IAM Role sessions:
%% https://docs.aws.amazon.com/singlesignon/latest/userguide/trustedidentitypropagation-overview.html#types-identity-enhanced-iam-role-sessions
%% for the authenticated
%% user that the API call is being made for.
%%
%% This API uses trusted identity
%% propagation:
%% https://docs.aws.amazon.com/singlesignon/latest/userguide/trustedidentitypropagation.html
%% to ensure that an end user is authenticated and receives the
%% embed URL that is specific to that user. The IAM Identity Center
%% application that the
%% user has logged into needs to have trusted Identity Propagation enabled
%% for Amazon Quick Sight:
%% https://docs.aws.amazon.com/singlesignon/latest/userguide/trustedidentitypropagation-using-customermanagedapps-specify-trusted-apps.html
%% with the scope
%% value set to `quicksight:read'. Before you use this action, make sure
%% that
%% you have configured the relevant Amazon Quick Sight resource and
%% permissions.
-spec generate_embed_url_for_registered_user_with_identity(aws_client:aws_client(), binary() | list(), generate_embed_url_for_registered_user_with_identity_request()) ->
    {ok, generate_embed_url_for_registered_user_with_identity_response(), tuple()} |
    {error, any()} |
    {error, generate_embed_url_for_registered_user_with_identity_errors(), tuple()}.
generate_embed_url_for_registered_user_with_identity(Client, AwsAccountId, Input) ->
    generate_embed_url_for_registered_user_with_identity(Client, AwsAccountId, Input, []).

-spec generate_embed_url_for_registered_user_with_identity(aws_client:aws_client(), binary() | list(), generate_embed_url_for_registered_user_with_identity_request(), proplists:proplist()) ->
    {ok, generate_embed_url_for_registered_user_with_identity_response(), tuple()} |
    {error, any()} |
    {error, generate_embed_url_for_registered_user_with_identity_errors(), tuple()}.
generate_embed_url_for_registered_user_with_identity(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/embed-url/registered-user-with-identity"],
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

%% @doc Generates a temporary session URL and authorization code(bearer
%% token) that you can
%% use to embed an Amazon Quick Sight read-only dashboard in your website or
%% application.
%%
%% Before you use this command, make sure that you have configured the
%% dashboards and
%% permissions.
%%
%% Currently, you can use `GetDashboardEmbedURL' only from the server,
%% not
%% from the user's browser. The following rules apply to the generated
%% URL:
%%
%% They must be used together.
%%
%% They can be used one time only.
%%
%% They are valid for 5 minutes after you run this command.
%%
%% You are charged only when the URL is used or there is interaction with
%% QuickSight.
%%
%% The resulting user session is valid for 15 minutes (default) up to 10
%% hours
%% (maximum). You can use the optional `SessionLifetimeInMinutes'
%% parameter to customize session duration.
%%
%% For more information, see Embedding Analytics
%% Using GetDashboardEmbedUrl:
%% https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics-deprecated.html
%% in the Amazon QuickSight User
%% Guide.
%%
%% For more information about the high-level steps for embedding and for an
%% interactive
%% demo of the ways you can customize embedding, visit the Amazon QuickSight
%% Developer Portal:
%% https://docs.aws.amazon.com/quicksight/latest/user/quicksight-dev-portal.html.
-spec get_dashboard_embed_url(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_dashboard_embed_url_response(), tuple()} |
    {error, any()} |
    {error, get_dashboard_embed_url_errors(), tuple()}.
get_dashboard_embed_url(Client, AwsAccountId, DashboardId, IdentityType)
  when is_map(Client) ->
    get_dashboard_embed_url(Client, AwsAccountId, DashboardId, IdentityType, #{}, #{}).

-spec get_dashboard_embed_url(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_dashboard_embed_url_response(), tuple()} |
    {error, any()} |
    {error, get_dashboard_embed_url_errors(), tuple()}.
get_dashboard_embed_url(Client, AwsAccountId, DashboardId, IdentityType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_dashboard_embed_url(Client, AwsAccountId, DashboardId, IdentityType, QueryMap, HeadersMap, []).

-spec get_dashboard_embed_url(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_dashboard_embed_url_response(), tuple()} |
    {error, any()} |
    {error, get_dashboard_embed_url_errors(), tuple()}.
get_dashboard_embed_url(Client, AwsAccountId, DashboardId, IdentityType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/embed-url"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"additional-dashboard-ids">>, maps:get(<<"additional-dashboard-ids">>, QueryMap, undefined)},
        {<<"creds-type">>, IdentityType},
        {<<"namespace">>, maps:get(<<"namespace">>, QueryMap, undefined)},
        {<<"reset-disabled">>, maps:get(<<"reset-disabled">>, QueryMap, undefined)},
        {<<"session-lifetime">>, maps:get(<<"session-lifetime">>, QueryMap, undefined)},
        {<<"state-persistence-enabled">>, maps:get(<<"state-persistence-enabled">>, QueryMap, undefined)},
        {<<"undo-redo-disabled">>, maps:get(<<"undo-redo-disabled">>, QueryMap, undefined)},
        {<<"user-arn">>, maps:get(<<"user-arn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the metadata of a flow, not including its definition
%% specifying the steps.
-spec get_flow_metadata(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_flow_metadata_output(), tuple()} |
    {error, any()} |
    {error, get_flow_metadata_errors(), tuple()}.
get_flow_metadata(Client, AwsAccountId, FlowId)
  when is_map(Client) ->
    get_flow_metadata(Client, AwsAccountId, FlowId, #{}, #{}).

-spec get_flow_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_flow_metadata_output(), tuple()} |
    {error, any()} |
    {error, get_flow_metadata_errors(), tuple()}.
get_flow_metadata(Client, AwsAccountId, FlowId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_flow_metadata(Client, AwsAccountId, FlowId, QueryMap, HeadersMap, []).

-spec get_flow_metadata(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_flow_metadata_output(), tuple()} |
    {error, any()} |
    {error, get_flow_metadata_errors(), tuple()}.
get_flow_metadata(Client, AwsAccountId, FlowId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/flows/", aws_util:encode_uri(FlowId), "/metadata"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get permissions for a flow.
-spec get_flow_permissions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_flow_permissions_output(), tuple()} |
    {error, any()} |
    {error, get_flow_permissions_errors(), tuple()}.
get_flow_permissions(Client, AwsAccountId, FlowId)
  when is_map(Client) ->
    get_flow_permissions(Client, AwsAccountId, FlowId, #{}, #{}).

-spec get_flow_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_flow_permissions_output(), tuple()} |
    {error, any()} |
    {error, get_flow_permissions_errors(), tuple()}.
get_flow_permissions(Client, AwsAccountId, FlowId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_flow_permissions(Client, AwsAccountId, FlowId, QueryMap, HeadersMap, []).

-spec get_flow_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_flow_permissions_output(), tuple()} |
    {error, any()} |
    {error, get_flow_permissions_errors(), tuple()}.
get_flow_permissions(Client, AwsAccountId, FlowId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/flows/", aws_util:encode_uri(FlowId), "/permissions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Generates a session URL and authorization code that you can use to
%% embed the Amazon
%% Amazon Quick Sight console in your web server code.
%%
%% Use
%% `GetSessionEmbedUrl' where you want to provide an authoring portal
%% that
%% allows users to create data sources, datasets, analyses, and dashboards.
%% The users who
%% access an embedded Amazon Quick Sight console need belong to the author or
%% admin security
%% cohort. If you want to restrict permissions to some of these features, add
%% a custom
%% permissions profile to the user with the
%% ```
%% UpdateUser:
%% https://docs.aws.amazon.com/quicksight/latest/APIReference/API_UpdateUser.html
%% ''' API operation. Use
%% ```
%% RegisterUser:
%% https://docs.aws.amazon.com/quicksight/latest/APIReference/API_RegisterUser.html
%% ''' API operation to add a new user with a custom
%% permission profile attached. For more information, see the following
%% sections in the
%% Amazon QuickSight User Guide:
%%
%% Embedding
%% Analytics:
%% https://docs.aws.amazon.com/quicksight/latest/user/embedded-analytics.html
%%
%% Customizing Access to the Amazon QuickSight Console:
%% https://docs.aws.amazon.com/quicksight/latest/user/customizing-permissions-to-the-quicksight-console.html
-spec get_session_embed_url(aws_client:aws_client(), binary() | list()) ->
    {ok, get_session_embed_url_response(), tuple()} |
    {error, any()} |
    {error, get_session_embed_url_errors(), tuple()}.
get_session_embed_url(Client, AwsAccountId)
  when is_map(Client) ->
    get_session_embed_url(Client, AwsAccountId, #{}, #{}).

-spec get_session_embed_url(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_session_embed_url_response(), tuple()} |
    {error, any()} |
    {error, get_session_embed_url_errors(), tuple()}.
get_session_embed_url(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_session_embed_url(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec get_session_embed_url(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_session_embed_url_response(), tuple()} |
    {error, any()} |
    {error, get_session_embed_url_errors(), tuple()}.
get_session_embed_url(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/session-embed-url"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"entry-point">>, maps:get(<<"entry-point">>, QueryMap, undefined)},
        {<<"session-lifetime">>, maps:get(<<"session-lifetime">>, QueryMap, undefined)},
        {<<"user-arn">>, maps:get(<<"user-arn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all action connectors in the specified Amazon Web Services
%% account.
%%
%% Returns summary information for each connector including its name, type,
%% creation time, and status.
-spec list_action_connectors(aws_client:aws_client(), binary() | list()) ->
    {ok, list_action_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_action_connectors_errors(), tuple()}.
list_action_connectors(Client, AwsAccountId)
  when is_map(Client) ->
    list_action_connectors(Client, AwsAccountId, #{}, #{}).

-spec list_action_connectors(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_action_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_action_connectors_errors(), tuple()}.
list_action_connectors(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_action_connectors(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec list_action_connectors(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_action_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_action_connectors_errors(), tuple()}.
list_action_connectors(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/action-connectors"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Amazon Quick Sight analyses that exist in the specified Amazon
%% Web Services account.
-spec list_analyses(aws_client:aws_client(), binary() | list()) ->
    {ok, list_analyses_response(), tuple()} |
    {error, any()} |
    {error, list_analyses_errors(), tuple()}.
list_analyses(Client, AwsAccountId)
  when is_map(Client) ->
    list_analyses(Client, AwsAccountId, #{}, #{}).

-spec list_analyses(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_analyses_response(), tuple()} |
    {error, any()} |
    {error, list_analyses_errors(), tuple()}.
list_analyses(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_analyses(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec list_analyses(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_analyses_response(), tuple()} |
    {error, any()} |
    {error, list_analyses_errors(), tuple()}.
list_analyses(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/analyses"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all asset bundle export jobs that have been taken place in the
%% last 14 days.
%%
%% Jobs
%% created more than 14 days ago are deleted forever and are not returned. If
%% you are using
%% the same job ID for multiple jobs, `ListAssetBundleExportJobs' only
%% returns the
%% most recent job that uses the repeated job ID.
-spec list_asset_bundle_export_jobs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_asset_bundle_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_asset_bundle_export_jobs_errors(), tuple()}.
list_asset_bundle_export_jobs(Client, AwsAccountId)
  when is_map(Client) ->
    list_asset_bundle_export_jobs(Client, AwsAccountId, #{}, #{}).

-spec list_asset_bundle_export_jobs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_asset_bundle_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_asset_bundle_export_jobs_errors(), tuple()}.
list_asset_bundle_export_jobs(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_asset_bundle_export_jobs(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec list_asset_bundle_export_jobs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_asset_bundle_export_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_asset_bundle_export_jobs_errors(), tuple()}.
list_asset_bundle_export_jobs(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/asset-bundle-export-jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all asset bundle import jobs that have taken place in the last
%% 14 days.
%%
%% Jobs
%% created more than 14 days ago are deleted forever and are not returned. If
%% you are using
%% the same job ID for multiple jobs, `ListAssetBundleImportJobs' only
%% returns the
%% most recent job that uses the repeated job ID.
-spec list_asset_bundle_import_jobs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_asset_bundle_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_asset_bundle_import_jobs_errors(), tuple()}.
list_asset_bundle_import_jobs(Client, AwsAccountId)
  when is_map(Client) ->
    list_asset_bundle_import_jobs(Client, AwsAccountId, #{}, #{}).

-spec list_asset_bundle_import_jobs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_asset_bundle_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_asset_bundle_import_jobs_errors(), tuple()}.
list_asset_bundle_import_jobs(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_asset_bundle_import_jobs(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec list_asset_bundle_import_jobs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_asset_bundle_import_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_asset_bundle_import_jobs_errors(), tuple()}.
list_asset_bundle_import_jobs(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/asset-bundle-import-jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all brands in an Quick Sight account.
-spec list_brands(aws_client:aws_client(), binary() | list()) ->
    {ok, list_brands_response(), tuple()} |
    {error, any()} |
    {error, list_brands_errors(), tuple()}.
list_brands(Client, AwsAccountId)
  when is_map(Client) ->
    list_brands(Client, AwsAccountId, #{}, #{}).

-spec list_brands(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_brands_response(), tuple()} |
    {error, any()} |
    {error, list_brands_errors(), tuple()}.
list_brands(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_brands(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec list_brands(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_brands_response(), tuple()} |
    {error, any()} |
    {error, list_brands_errors(), tuple()}.
list_brands(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/brands"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the custom permissions profiles.
-spec list_custom_permissions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_custom_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_custom_permissions_errors(), tuple()}.
list_custom_permissions(Client, AwsAccountId)
  when is_map(Client) ->
    list_custom_permissions(Client, AwsAccountId, #{}, #{}).

-spec list_custom_permissions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_custom_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_custom_permissions_errors(), tuple()}.
list_custom_permissions(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_custom_permissions(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec list_custom_permissions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_custom_permissions_response(), tuple()} |
    {error, any()} |
    {error, list_custom_permissions_errors(), tuple()}.
list_custom_permissions(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/custom-permissions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the versions of the dashboards in the Amazon Quick Sight
%% subscription.
-spec list_dashboard_versions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_dashboard_versions_response(), tuple()} |
    {error, any()} |
    {error, list_dashboard_versions_errors(), tuple()}.
list_dashboard_versions(Client, AwsAccountId, DashboardId)
  when is_map(Client) ->
    list_dashboard_versions(Client, AwsAccountId, DashboardId, #{}, #{}).

-spec list_dashboard_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_dashboard_versions_response(), tuple()} |
    {error, any()} |
    {error, list_dashboard_versions_errors(), tuple()}.
list_dashboard_versions(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_dashboard_versions(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap, []).

-spec list_dashboard_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_dashboard_versions_response(), tuple()} |
    {error, any()} |
    {error, list_dashboard_versions_errors(), tuple()}.
list_dashboard_versions(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists dashboards in an Amazon Web Services account.
-spec list_dashboards(aws_client:aws_client(), binary() | list()) ->
    {ok, list_dashboards_response(), tuple()} |
    {error, any()} |
    {error, list_dashboards_errors(), tuple()}.
list_dashboards(Client, AwsAccountId)
  when is_map(Client) ->
    list_dashboards(Client, AwsAccountId, #{}, #{}).

-spec list_dashboards(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_dashboards_response(), tuple()} |
    {error, any()} |
    {error, list_dashboards_errors(), tuple()}.
list_dashboards(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_dashboards(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec list_dashboards(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_dashboards_response(), tuple()} |
    {error, any()} |
    {error, list_dashboards_errors(), tuple()}.
list_dashboards(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the datasets belonging to the current Amazon Web
%% Services account in an
%% Amazon Web Services Region.
%%
%% The permissions resource is
%% `arn:aws:quicksight:region:aws-account-id:dataset/*'.
-spec list_data_sets(aws_client:aws_client(), binary() | list()) ->
    {ok, list_data_sets_response(), tuple()} |
    {error, any()} |
    {error, list_data_sets_errors(), tuple()}.
list_data_sets(Client, AwsAccountId)
  when is_map(Client) ->
    list_data_sets(Client, AwsAccountId, #{}, #{}).

-spec list_data_sets(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_data_sets_response(), tuple()} |
    {error, any()} |
    {error, list_data_sets_errors(), tuple()}.
list_data_sets(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_sets(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec list_data_sets(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_data_sets_response(), tuple()} |
    {error, any()} |
    {error, list_data_sets_errors(), tuple()}.
list_data_sets(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists data sources in current Amazon Web Services Region that belong
%% to this Amazon Web Services account.
-spec list_data_sources(aws_client:aws_client(), binary() | list()) ->
    {ok, list_data_sources_response(), tuple()} |
    {error, any()} |
    {error, list_data_sources_errors(), tuple()}.
list_data_sources(Client, AwsAccountId)
  when is_map(Client) ->
    list_data_sources(Client, AwsAccountId, #{}, #{}).

-spec list_data_sources(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_data_sources_response(), tuple()} |
    {error, any()} |
    {error, list_data_sources_errors(), tuple()}.
list_data_sources(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_sources(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec list_data_sources(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_data_sources_response(), tuple()} |
    {error, any()} |
    {error, list_data_sources_errors(), tuple()}.
list_data_sources(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sources"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists flows in an Amazon Web Services account.
-spec list_flows(aws_client:aws_client(), binary() | list()) ->
    {ok, list_flows_output(), tuple()} |
    {error, any()} |
    {error, list_flows_errors(), tuple()}.
list_flows(Client, AwsAccountId)
  when is_map(Client) ->
    list_flows(Client, AwsAccountId, #{}, #{}).

-spec list_flows(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_flows_output(), tuple()} |
    {error, any()} |
    {error, list_flows_errors(), tuple()}.
list_flows(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_flows(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec list_flows(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_flows_output(), tuple()} |
    {error, any()} |
    {error, list_flows_errors(), tuple()}.
list_flows(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/flows"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all assets (`DASHBOARD', `ANALYSIS', and `DATASET')
%% in a folder.
-spec list_folder_members(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_folder_members_response(), tuple()} |
    {error, any()} |
    {error, list_folder_members_errors(), tuple()}.
list_folder_members(Client, AwsAccountId, FolderId)
  when is_map(Client) ->
    list_folder_members(Client, AwsAccountId, FolderId, #{}, #{}).

-spec list_folder_members(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_folder_members_response(), tuple()} |
    {error, any()} |
    {error, list_folder_members_errors(), tuple()}.
list_folder_members(Client, AwsAccountId, FolderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_folder_members(Client, AwsAccountId, FolderId, QueryMap, HeadersMap, []).

-spec list_folder_members(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_folder_members_response(), tuple()} |
    {error, any()} |
    {error, list_folder_members_errors(), tuple()}.
list_folder_members(Client, AwsAccountId, FolderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), "/members"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all folders in an account.
-spec list_folders(aws_client:aws_client(), binary() | list()) ->
    {ok, list_folders_response(), tuple()} |
    {error, any()} |
    {error, list_folders_errors(), tuple()}.
list_folders(Client, AwsAccountId)
  when is_map(Client) ->
    list_folders(Client, AwsAccountId, #{}, #{}).

-spec list_folders(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_folders_response(), tuple()} |
    {error, any()} |
    {error, list_folders_errors(), tuple()}.
list_folders(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_folders(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec list_folders(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_folders_response(), tuple()} |
    {error, any()} |
    {error, list_folders_errors(), tuple()}.
list_folders(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all folders that a resource is a member of.
-spec list_folders_for_resource(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_folders_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_folders_for_resource_errors(), tuple()}.
list_folders_for_resource(Client, AwsAccountId, ResourceArn)
  when is_map(Client) ->
    list_folders_for_resource(Client, AwsAccountId, ResourceArn, #{}, #{}).

-spec list_folders_for_resource(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_folders_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_folders_for_resource_errors(), tuple()}.
list_folders_for_resource(Client, AwsAccountId, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_folders_for_resource(Client, AwsAccountId, ResourceArn, QueryMap, HeadersMap, []).

-spec list_folders_for_resource(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_folders_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_folders_for_resource_errors(), tuple()}.
list_folders_for_resource(Client, AwsAccountId, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/resource/", aws_util:encode_uri(ResourceArn), "/folders"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists member users in a group.
-spec list_group_memberships(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_group_memberships_response(), tuple()} |
    {error, any()} |
    {error, list_group_memberships_errors(), tuple()}.
list_group_memberships(Client, AwsAccountId, GroupName, Namespace)
  when is_map(Client) ->
    list_group_memberships(Client, AwsAccountId, GroupName, Namespace, #{}, #{}).

-spec list_group_memberships(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_group_memberships_response(), tuple()} |
    {error, any()} |
    {error, list_group_memberships_errors(), tuple()}.
list_group_memberships(Client, AwsAccountId, GroupName, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_group_memberships(Client, AwsAccountId, GroupName, Namespace, QueryMap, HeadersMap, []).

-spec list_group_memberships(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_group_memberships_response(), tuple()} |
    {error, any()} |
    {error, list_group_memberships_errors(), tuple()}.
list_group_memberships(Client, AwsAccountId, GroupName, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/groups/", aws_util:encode_uri(GroupName), "/members"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all user groups in Amazon Quick Sight.
-spec list_groups(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_groups_response(), tuple()} |
    {error, any()} |
    {error, list_groups_errors(), tuple()}.
list_groups(Client, AwsAccountId, Namespace)
  when is_map(Client) ->
    list_groups(Client, AwsAccountId, Namespace, #{}, #{}).

-spec list_groups(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_groups_response(), tuple()} |
    {error, any()} |
    {error, list_groups_errors(), tuple()}.
list_groups(Client, AwsAccountId, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_groups(Client, AwsAccountId, Namespace, QueryMap, HeadersMap, []).

-spec list_groups(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_groups_response(), tuple()} |
    {error, any()} |
    {error, list_groups_errors(), tuple()}.
list_groups(Client, AwsAccountId, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/groups"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the
%% IAM policy assignments in the current Amazon Quick Sight
%% account.
-spec list_iam_policy_assignments(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_iam_policy_assignments_response(), tuple()} |
    {error, any()} |
    {error, list_iam_policy_assignments_errors(), tuple()}.
list_iam_policy_assignments(Client, AwsAccountId, Namespace)
  when is_map(Client) ->
    list_iam_policy_assignments(Client, AwsAccountId, Namespace, #{}, #{}).

-spec list_iam_policy_assignments(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_iam_policy_assignments_response(), tuple()} |
    {error, any()} |
    {error, list_iam_policy_assignments_errors(), tuple()}.
list_iam_policy_assignments(Client, AwsAccountId, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_iam_policy_assignments(Client, AwsAccountId, Namespace, QueryMap, HeadersMap, []).

-spec list_iam_policy_assignments(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_iam_policy_assignments_response(), tuple()} |
    {error, any()} |
    {error, list_iam_policy_assignments_errors(), tuple()}.
list_iam_policy_assignments(Client, AwsAccountId, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/v2/iam-policy-assignments"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"assignment-status">>, maps:get(<<"assignment-status">>, QueryMap, undefined)},
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of
%% the IAM policy assignments, including the Amazon
%% Resource Names
%% (ARNs),
%% for the IAM policies assigned to the specified user and
%% group,
%% or groups that the user belongs to.
-spec list_iam_policy_assignments_for_user(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_iam_policy_assignments_for_user_response(), tuple()} |
    {error, any()} |
    {error, list_iam_policy_assignments_for_user_errors(), tuple()}.
list_iam_policy_assignments_for_user(Client, AwsAccountId, Namespace, UserName)
  when is_map(Client) ->
    list_iam_policy_assignments_for_user(Client, AwsAccountId, Namespace, UserName, #{}, #{}).

-spec list_iam_policy_assignments_for_user(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_iam_policy_assignments_for_user_response(), tuple()} |
    {error, any()} |
    {error, list_iam_policy_assignments_for_user_errors(), tuple()}.
list_iam_policy_assignments_for_user(Client, AwsAccountId, Namespace, UserName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_iam_policy_assignments_for_user(Client, AwsAccountId, Namespace, UserName, QueryMap, HeadersMap, []).

-spec list_iam_policy_assignments_for_user(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_iam_policy_assignments_for_user_response(), tuple()} |
    {error, any()} |
    {error, list_iam_policy_assignments_for_user_errors(), tuple()}.
list_iam_policy_assignments_for_user(Client, AwsAccountId, Namespace, UserName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/users/", aws_util:encode_uri(UserName), "/iam-policy-assignments"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all services and authorized targets that the Quick Sight IAM
%% Identity Center application can access.
%%
%% This operation is only supported for Quick Sight accounts that use IAM
%% Identity Center.
-spec list_identity_propagation_configs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_identity_propagation_configs_response(), tuple()} |
    {error, any()} |
    {error, list_identity_propagation_configs_errors(), tuple()}.
list_identity_propagation_configs(Client, AwsAccountId)
  when is_map(Client) ->
    list_identity_propagation_configs(Client, AwsAccountId, #{}, #{}).

-spec list_identity_propagation_configs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_identity_propagation_configs_response(), tuple()} |
    {error, any()} |
    {error, list_identity_propagation_configs_errors(), tuple()}.
list_identity_propagation_configs(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_identity_propagation_configs(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec list_identity_propagation_configs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_identity_propagation_configs_response(), tuple()} |
    {error, any()} |
    {error, list_identity_propagation_configs_errors(), tuple()}.
list_identity_propagation_configs(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/identity-propagation-config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the history of SPICE ingestions for a dataset.
%%
%% Limited to 5 TPS per user and 25 TPS per account.
-spec list_ingestions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_ingestions_response(), tuple()} |
    {error, any()} |
    {error, list_ingestions_errors(), tuple()}.
list_ingestions(Client, AwsAccountId, DataSetId)
  when is_map(Client) ->
    list_ingestions(Client, AwsAccountId, DataSetId, #{}, #{}).

-spec list_ingestions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_ingestions_response(), tuple()} |
    {error, any()} |
    {error, list_ingestions_errors(), tuple()}.
list_ingestions(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ingestions(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap, []).

-spec list_ingestions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_ingestions_response(), tuple()} |
    {error, any()} |
    {error, list_ingestions_errors(), tuple()}.
list_ingestions(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/ingestions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the namespaces for the specified Amazon Web Services account.
%%
%% This operation doesn't list deleted namespaces.
-spec list_namespaces(aws_client:aws_client(), binary() | list()) ->
    {ok, list_namespaces_response(), tuple()} |
    {error, any()} |
    {error, list_namespaces_errors(), tuple()}.
list_namespaces(Client, AwsAccountId)
  when is_map(Client) ->
    list_namespaces(Client, AwsAccountId, #{}, #{}).

-spec list_namespaces(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_namespaces_response(), tuple()} |
    {error, any()} |
    {error, list_namespaces_errors(), tuple()}.
list_namespaces(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_namespaces(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec list_namespaces(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_namespaces_response(), tuple()} |
    {error, any()} |
    {error, list_namespaces_errors(), tuple()}.
list_namespaces(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the refresh schedules of a dataset.
%%
%% Each dataset can have up to 5 schedules.
-spec list_refresh_schedules(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_refresh_schedules_response(), tuple()} |
    {error, any()} |
    {error, list_refresh_schedules_errors(), tuple()}.
list_refresh_schedules(Client, AwsAccountId, DataSetId)
  when is_map(Client) ->
    list_refresh_schedules(Client, AwsAccountId, DataSetId, #{}, #{}).

-spec list_refresh_schedules(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_refresh_schedules_response(), tuple()} |
    {error, any()} |
    {error, list_refresh_schedules_errors(), tuple()}.
list_refresh_schedules(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_refresh_schedules(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap, []).

-spec list_refresh_schedules(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_refresh_schedules_response(), tuple()} |
    {error, any()} |
    {error, list_refresh_schedules_errors(), tuple()}.
list_refresh_schedules(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/refresh-schedules"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all groups that are associated with a role.
-spec list_role_memberships(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_role_memberships_response(), tuple()} |
    {error, any()} |
    {error, list_role_memberships_errors(), tuple()}.
list_role_memberships(Client, AwsAccountId, Namespace, Role)
  when is_map(Client) ->
    list_role_memberships(Client, AwsAccountId, Namespace, Role, #{}, #{}).

-spec list_role_memberships(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_role_memberships_response(), tuple()} |
    {error, any()} |
    {error, list_role_memberships_errors(), tuple()}.
list_role_memberships(Client, AwsAccountId, Namespace, Role, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_role_memberships(Client, AwsAccountId, Namespace, Role, QueryMap, HeadersMap, []).

-spec list_role_memberships(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_role_memberships_response(), tuple()} |
    {error, any()} |
    {error, list_role_memberships_errors(), tuple()}.
list_role_memberships(Client, AwsAccountId, Namespace, Role, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/roles/", aws_util:encode_uri(Role), "/members"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags assigned to a resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resources/", aws_util:encode_uri(ResourceArn), "/tags"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the aliases of a template.
-spec list_template_aliases(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_template_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_template_aliases_errors(), tuple()}.
list_template_aliases(Client, AwsAccountId, TemplateId)
  when is_map(Client) ->
    list_template_aliases(Client, AwsAccountId, TemplateId, #{}, #{}).

-spec list_template_aliases(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_template_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_template_aliases_errors(), tuple()}.
list_template_aliases(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_template_aliases(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap, []).

-spec list_template_aliases(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_template_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_template_aliases_errors(), tuple()}.
list_template_aliases(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), "/aliases"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-result">>, maps:get(<<"max-result">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the versions of the templates in the current Amazon Quick
%% Sight account.
-spec list_template_versions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_template_versions_response(), tuple()} |
    {error, any()} |
    {error, list_template_versions_errors(), tuple()}.
list_template_versions(Client, AwsAccountId, TemplateId)
  when is_map(Client) ->
    list_template_versions(Client, AwsAccountId, TemplateId, #{}, #{}).

-spec list_template_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_template_versions_response(), tuple()} |
    {error, any()} |
    {error, list_template_versions_errors(), tuple()}.
list_template_versions(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_template_versions(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap, []).

-spec list_template_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_template_versions_response(), tuple()} |
    {error, any()} |
    {error, list_template_versions_errors(), tuple()}.
list_template_versions(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), "/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the templates in the current Amazon Quick Sight account.
-spec list_templates(aws_client:aws_client(), binary() | list()) ->
    {ok, list_templates_response(), tuple()} |
    {error, any()} |
    {error, list_templates_errors(), tuple()}.
list_templates(Client, AwsAccountId)
  when is_map(Client) ->
    list_templates(Client, AwsAccountId, #{}, #{}).

-spec list_templates(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_templates_response(), tuple()} |
    {error, any()} |
    {error, list_templates_errors(), tuple()}.
list_templates(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_templates(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec list_templates(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_templates_response(), tuple()} |
    {error, any()} |
    {error, list_templates_errors(), tuple()}.
list_templates(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-result">>, maps:get(<<"max-result">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the aliases of a theme.
-spec list_theme_aliases(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_theme_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_theme_aliases_errors(), tuple()}.
list_theme_aliases(Client, AwsAccountId, ThemeId)
  when is_map(Client) ->
    list_theme_aliases(Client, AwsAccountId, ThemeId, #{}, #{}).

-spec list_theme_aliases(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_theme_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_theme_aliases_errors(), tuple()}.
list_theme_aliases(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_theme_aliases(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap, []).

-spec list_theme_aliases(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_theme_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_theme_aliases_errors(), tuple()}.
list_theme_aliases(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), "/aliases"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-result">>, maps:get(<<"max-result">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the versions of the themes in the current Amazon Web
%% Services account.
-spec list_theme_versions(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_theme_versions_response(), tuple()} |
    {error, any()} |
    {error, list_theme_versions_errors(), tuple()}.
list_theme_versions(Client, AwsAccountId, ThemeId)
  when is_map(Client) ->
    list_theme_versions(Client, AwsAccountId, ThemeId, #{}, #{}).

-spec list_theme_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_theme_versions_response(), tuple()} |
    {error, any()} |
    {error, list_theme_versions_errors(), tuple()}.
list_theme_versions(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_theme_versions(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap, []).

-spec list_theme_versions(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_theme_versions_response(), tuple()} |
    {error, any()} |
    {error, list_theme_versions_errors(), tuple()}.
list_theme_versions(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), "/versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the themes in the current Amazon Web Services account.
-spec list_themes(aws_client:aws_client(), binary() | list()) ->
    {ok, list_themes_response(), tuple()} |
    {error, any()} |
    {error, list_themes_errors(), tuple()}.
list_themes(Client, AwsAccountId)
  when is_map(Client) ->
    list_themes(Client, AwsAccountId, #{}, #{}).

-spec list_themes(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_themes_response(), tuple()} |
    {error, any()} |
    {error, list_themes_errors(), tuple()}.
list_themes(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_themes(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec list_themes(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_themes_response(), tuple()} |
    {error, any()} |
    {error, list_themes_errors(), tuple()}.
list_themes(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the refresh schedules for a topic.
-spec list_topic_refresh_schedules(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_topic_refresh_schedules_response(), tuple()} |
    {error, any()} |
    {error, list_topic_refresh_schedules_errors(), tuple()}.
list_topic_refresh_schedules(Client, AwsAccountId, TopicId)
  when is_map(Client) ->
    list_topic_refresh_schedules(Client, AwsAccountId, TopicId, #{}, #{}).

-spec list_topic_refresh_schedules(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_topic_refresh_schedules_response(), tuple()} |
    {error, any()} |
    {error, list_topic_refresh_schedules_errors(), tuple()}.
list_topic_refresh_schedules(Client, AwsAccountId, TopicId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_topic_refresh_schedules(Client, AwsAccountId, TopicId, QueryMap, HeadersMap, []).

-spec list_topic_refresh_schedules(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_topic_refresh_schedules_response(), tuple()} |
    {error, any()} |
    {error, list_topic_refresh_schedules_errors(), tuple()}.
list_topic_refresh_schedules(Client, AwsAccountId, TopicId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), "/schedules"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all reviewed answers for a Q Topic.
-spec list_topic_reviewed_answers(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_topic_reviewed_answers_response(), tuple()} |
    {error, any()} |
    {error, list_topic_reviewed_answers_errors(), tuple()}.
list_topic_reviewed_answers(Client, AwsAccountId, TopicId)
  when is_map(Client) ->
    list_topic_reviewed_answers(Client, AwsAccountId, TopicId, #{}, #{}).

-spec list_topic_reviewed_answers(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_topic_reviewed_answers_response(), tuple()} |
    {error, any()} |
    {error, list_topic_reviewed_answers_errors(), tuple()}.
list_topic_reviewed_answers(Client, AwsAccountId, TopicId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_topic_reviewed_answers(Client, AwsAccountId, TopicId, QueryMap, HeadersMap, []).

-spec list_topic_reviewed_answers(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_topic_reviewed_answers_response(), tuple()} |
    {error, any()} |
    {error, list_topic_reviewed_answers_errors(), tuple()}.
list_topic_reviewed_answers(Client, AwsAccountId, TopicId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), "/reviewed-answers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the topics within an account.
-spec list_topics(aws_client:aws_client(), binary() | list()) ->
    {ok, list_topics_response(), tuple()} |
    {error, any()} |
    {error, list_topics_errors(), tuple()}.
list_topics(Client, AwsAccountId)
  when is_map(Client) ->
    list_topics(Client, AwsAccountId, #{}, #{}).

-spec list_topics(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_topics_response(), tuple()} |
    {error, any()} |
    {error, list_topics_errors(), tuple()}.
list_topics(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_topics(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec list_topics(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_topics_response(), tuple()} |
    {error, any()} |
    {error, list_topics_errors(), tuple()}.
list_topics(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon Quick Sight groups that an Amazon Quick Sight user
%% is a member of.
-spec list_user_groups(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, list_user_groups_response(), tuple()} |
    {error, any()} |
    {error, list_user_groups_errors(), tuple()}.
list_user_groups(Client, AwsAccountId, Namespace, UserName)
  when is_map(Client) ->
    list_user_groups(Client, AwsAccountId, Namespace, UserName, #{}, #{}).

-spec list_user_groups(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_user_groups_response(), tuple()} |
    {error, any()} |
    {error, list_user_groups_errors(), tuple()}.
list_user_groups(Client, AwsAccountId, Namespace, UserName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_user_groups(Client, AwsAccountId, Namespace, UserName, QueryMap, HeadersMap, []).

-spec list_user_groups(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_user_groups_response(), tuple()} |
    {error, any()} |
    {error, list_user_groups_errors(), tuple()}.
list_user_groups(Client, AwsAccountId, Namespace, UserName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/users/", aws_util:encode_uri(UserName), "/groups"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all of the Amazon Quick Sight users belonging to
%% this account.
-spec list_users(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, AwsAccountId, Namespace)
  when is_map(Client) ->
    list_users(Client, AwsAccountId, Namespace, #{}, #{}).

-spec list_users(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, AwsAccountId, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_users(Client, AwsAccountId, Namespace, QueryMap, HeadersMap, []).

-spec list_users(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, AwsAccountId, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/users"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the VPC connections in the current set Amazon Web
%% Services Region of an
%% Amazon Web Services account.
-spec list_vpc_connections(aws_client:aws_client(), binary() | list()) ->
    {ok, list_vpc_connections_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_connections_errors(), tuple()}.
list_vpc_connections(Client, AwsAccountId)
  when is_map(Client) ->
    list_vpc_connections(Client, AwsAccountId, #{}, #{}).

-spec list_vpc_connections(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_vpc_connections_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_connections_errors(), tuple()}.
list_vpc_connections(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_vpc_connections(Client, AwsAccountId, QueryMap, HeadersMap, []).

-spec list_vpc_connections(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_vpc_connections_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_connections_errors(), tuple()}.
list_vpc_connections(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/vpc-connections"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Predicts existing visuals or generates new visuals to answer a given
%% query.
%%
%% This API uses trusted identity propagation:
%% https://docs.aws.amazon.com/singlesignon/latest/userguide/trustedidentitypropagation.html
%% to ensure that an end user is authenticated and receives the embed URL
%% that is specific to that user. The IAM Identity Center application that
%% the user has logged into needs to have trusted Identity Propagation
%% enabled for QuickSight:
%% https://docs.aws.amazon.com/singlesignon/latest/userguide/trustedidentitypropagation-using-customermanagedapps-specify-trusted-apps.html
%% with the scope value set to `quicksight:read'. Before you use this
%% action, make sure that you have configured the relevant QuickSight
%% resource and permissions.
%%
%% We recommend enabling the `QSearchStatus' API to unlock the full
%% potential of `PredictQnA'. When `QSearchStatus' is enabled, it
%% first checks the specified dashboard for any existing visuals that match
%% the question. If no matching visuals are found, `PredictQnA' uses
%% generative Q&amp;A to provide an answer. To update the
%% `QSearchStatus', see UpdateQuickSightQSearchConfiguration:
%% https://docs.aws.amazon.com/quicksight/latest/APIReference/API_UpdateQuickSightQSearchConfiguration.html.
-spec predict_q_a_results(aws_client:aws_client(), binary() | list(), predict_q_a_results_request()) ->
    {ok, predict_q_a_results_response(), tuple()} |
    {error, any()} |
    {error, predict_q_a_results_errors(), tuple()}.
predict_q_a_results(Client, AwsAccountId, Input) ->
    predict_q_a_results(Client, AwsAccountId, Input, []).

-spec predict_q_a_results(aws_client:aws_client(), binary() | list(), predict_q_a_results_request(), proplists:proplist()) ->
    {ok, predict_q_a_results_response(), tuple()} |
    {error, any()} |
    {error, predict_q_a_results_errors(), tuple()}.
predict_q_a_results(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/qa/predict"],
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

%% @doc Creates or updates the dataset refresh properties for the dataset.
-spec put_data_set_refresh_properties(aws_client:aws_client(), binary() | list(), binary() | list(), put_data_set_refresh_properties_request()) ->
    {ok, put_data_set_refresh_properties_response(), tuple()} |
    {error, any()} |
    {error, put_data_set_refresh_properties_errors(), tuple()}.
put_data_set_refresh_properties(Client, AwsAccountId, DataSetId, Input) ->
    put_data_set_refresh_properties(Client, AwsAccountId, DataSetId, Input, []).

-spec put_data_set_refresh_properties(aws_client:aws_client(), binary() | list(), binary() | list(), put_data_set_refresh_properties_request(), proplists:proplist()) ->
    {ok, put_data_set_refresh_properties_response(), tuple()} |
    {error, any()} |
    {error, put_data_set_refresh_properties_errors(), tuple()}.
put_data_set_refresh_properties(Client, AwsAccountId, DataSetId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/refresh-properties"],
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

%% @doc Creates an Amazon Quick Sight user whose identity is associated with
%% the Identity and Access Management (IAM) identity or role specified in the
%% request.
%%
%% When you register a new user from the Quick Sight API, Quick Sight
%% generates a registration URL. The user accesses this registration URL to
%% create their account. Quick Sight doesn't send a registration email to
%% users who are registered from the Quick Sight API. If you want new users
%% to receive a registration email, then add those users in the Quick Sight
%% console. For more information on registering a new user in the Quick Sight
%% console, see Inviting users to access Quick Sight:
%% https://docs.aws.amazon.com/quicksight/latest/user/managing-users.html#inviting-users.
-spec register_user(aws_client:aws_client(), binary() | list(), binary() | list(), register_user_request()) ->
    {ok, register_user_response(), tuple()} |
    {error, any()} |
    {error, register_user_errors(), tuple()}.
register_user(Client, AwsAccountId, Namespace, Input) ->
    register_user(Client, AwsAccountId, Namespace, Input, []).

-spec register_user(aws_client:aws_client(), binary() | list(), binary() | list(), register_user_request(), proplists:proplist()) ->
    {ok, register_user_response(), tuple()} |
    {error, any()} |
    {error, register_user_errors(), tuple()}.
register_user(Client, AwsAccountId, Namespace, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/users"],
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

%% @doc Restores an analysis.
-spec restore_analysis(aws_client:aws_client(), binary() | list(), binary() | list(), restore_analysis_request()) ->
    {ok, restore_analysis_response(), tuple()} |
    {error, any()} |
    {error, restore_analysis_errors(), tuple()}.
restore_analysis(Client, AnalysisId, AwsAccountId, Input) ->
    restore_analysis(Client, AnalysisId, AwsAccountId, Input, []).

-spec restore_analysis(aws_client:aws_client(), binary() | list(), binary() | list(), restore_analysis_request(), proplists:proplist()) ->
    {ok, restore_analysis_response(), tuple()} |
    {error, any()} |
    {error, restore_analysis_errors(), tuple()}.
restore_analysis(Client, AnalysisId, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/restore/analyses/", aws_util:encode_uri(AnalysisId), ""],
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

    QueryMapping = [
                     {<<"restore-to-folders">>, <<"RestoreToFolders">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches for action connectors in the specified Amazon Web Services
%% account using filters.
%%
%% You can search by connector name, type, or user permissions.
-spec search_action_connectors(aws_client:aws_client(), binary() | list(), search_action_connectors_request()) ->
    {ok, search_action_connectors_response(), tuple()} |
    {error, any()} |
    {error, search_action_connectors_errors(), tuple()}.
search_action_connectors(Client, AwsAccountId, Input) ->
    search_action_connectors(Client, AwsAccountId, Input, []).

-spec search_action_connectors(aws_client:aws_client(), binary() | list(), search_action_connectors_request(), proplists:proplist()) ->
    {ok, search_action_connectors_response(), tuple()} |
    {error, any()} |
    {error, search_action_connectors_errors(), tuple()}.
search_action_connectors(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/search/action-connectors"],
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

    QueryMapping = [
                     {<<"max-results">>, <<"MaxResults">>},
                     {<<"next-token">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches for analyses that belong to the user specified in the
%% filter.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
-spec search_analyses(aws_client:aws_client(), binary() | list(), search_analyses_request()) ->
    {ok, search_analyses_response(), tuple()} |
    {error, any()} |
    {error, search_analyses_errors(), tuple()}.
search_analyses(Client, AwsAccountId, Input) ->
    search_analyses(Client, AwsAccountId, Input, []).

-spec search_analyses(aws_client:aws_client(), binary() | list(), search_analyses_request(), proplists:proplist()) ->
    {ok, search_analyses_response(), tuple()} |
    {error, any()} |
    {error, search_analyses_errors(), tuple()}.
search_analyses(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/search/analyses"],
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

%% @doc Searches for dashboards that belong to a user.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not
%% reflect very recent updates and changes.
-spec search_dashboards(aws_client:aws_client(), binary() | list(), search_dashboards_request()) ->
    {ok, search_dashboards_response(), tuple()} |
    {error, any()} |
    {error, search_dashboards_errors(), tuple()}.
search_dashboards(Client, AwsAccountId, Input) ->
    search_dashboards(Client, AwsAccountId, Input, []).

-spec search_dashboards(aws_client:aws_client(), binary() | list(), search_dashboards_request(), proplists:proplist()) ->
    {ok, search_dashboards_response(), tuple()} |
    {error, any()} |
    {error, search_dashboards_errors(), tuple()}.
search_dashboards(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/search/dashboards"],
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

%% @doc Use the `SearchDataSets' operation to search for datasets that
%% belong to an
%% account.
-spec search_data_sets(aws_client:aws_client(), binary() | list(), search_data_sets_request()) ->
    {ok, search_data_sets_response(), tuple()} |
    {error, any()} |
    {error, search_data_sets_errors(), tuple()}.
search_data_sets(Client, AwsAccountId, Input) ->
    search_data_sets(Client, AwsAccountId, Input, []).

-spec search_data_sets(aws_client:aws_client(), binary() | list(), search_data_sets_request(), proplists:proplist()) ->
    {ok, search_data_sets_response(), tuple()} |
    {error, any()} |
    {error, search_data_sets_errors(), tuple()}.
search_data_sets(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/search/data-sets"],
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

%% @doc Use the `SearchDataSources' operation to search for data sources
%% that
%% belong to an account.
-spec search_data_sources(aws_client:aws_client(), binary() | list(), search_data_sources_request()) ->
    {ok, search_data_sources_response(), tuple()} |
    {error, any()} |
    {error, search_data_sources_errors(), tuple()}.
search_data_sources(Client, AwsAccountId, Input) ->
    search_data_sources(Client, AwsAccountId, Input, []).

-spec search_data_sources(aws_client:aws_client(), binary() | list(), search_data_sources_request(), proplists:proplist()) ->
    {ok, search_data_sources_response(), tuple()} |
    {error, any()} |
    {error, search_data_sources_errors(), tuple()}.
search_data_sources(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/search/data-sources"],
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

%% @doc Search for the flows in an Amazon Web Services account.
-spec search_flows(aws_client:aws_client(), binary() | list(), search_flows_input()) ->
    {ok, search_flows_output(), tuple()} |
    {error, any()} |
    {error, search_flows_errors(), tuple()}.
search_flows(Client, AwsAccountId, Input) ->
    search_flows(Client, AwsAccountId, Input, []).

-spec search_flows(aws_client:aws_client(), binary() | list(), search_flows_input(), proplists:proplist()) ->
    {ok, search_flows_output(), tuple()} |
    {error, any()} |
    {error, search_flows_errors(), tuple()}.
search_flows(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/flows/searchFlows"],
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

%% @doc Searches the subfolders in a folder.
-spec search_folders(aws_client:aws_client(), binary() | list(), search_folders_request()) ->
    {ok, search_folders_response(), tuple()} |
    {error, any()} |
    {error, search_folders_errors(), tuple()}.
search_folders(Client, AwsAccountId, Input) ->
    search_folders(Client, AwsAccountId, Input, []).

-spec search_folders(aws_client:aws_client(), binary() | list(), search_folders_request(), proplists:proplist()) ->
    {ok, search_folders_response(), tuple()} |
    {error, any()} |
    {error, search_folders_errors(), tuple()}.
search_folders(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/search/folders"],
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

%% @doc Use the `SearchGroups' operation to search groups in a specified
%% Quick Sight namespace using the supplied filters.
-spec search_groups(aws_client:aws_client(), binary() | list(), binary() | list(), search_groups_request()) ->
    {ok, search_groups_response(), tuple()} |
    {error, any()} |
    {error, search_groups_errors(), tuple()}.
search_groups(Client, AwsAccountId, Namespace, Input) ->
    search_groups(Client, AwsAccountId, Namespace, Input, []).

-spec search_groups(aws_client:aws_client(), binary() | list(), binary() | list(), search_groups_request(), proplists:proplist()) ->
    {ok, search_groups_response(), tuple()} |
    {error, any()} |
    {error, search_groups_errors(), tuple()}.
search_groups(Client, AwsAccountId, Namespace, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/groups-search"],
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

    QueryMapping = [
                     {<<"max-results">>, <<"MaxResults">>},
                     {<<"next-token">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches for any Q topic that exists in an QuickSight account.
-spec search_topics(aws_client:aws_client(), binary() | list(), search_topics_request()) ->
    {ok, search_topics_response(), tuple()} |
    {error, any()} |
    {error, search_topics_errors(), tuple()}.
search_topics(Client, AwsAccountId, Input) ->
    search_topics(Client, AwsAccountId, Input, []).

-spec search_topics(aws_client:aws_client(), binary() | list(), search_topics_request(), proplists:proplist()) ->
    {ok, search_topics_response(), tuple()} |
    {error, any()} |
    {error, search_topics_errors(), tuple()}.
search_topics(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/search/topics"],
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

%% @doc Starts an Asset Bundle export job.
%%
%% An Asset Bundle export job exports specified Amazon Quick Sight assets.
%% You can also choose to
%% export any asset dependencies in the same job. Export jobs run
%% asynchronously and can be
%% polled with a `DescribeAssetBundleExportJob' API call. When a job is
%% successfully completed, a download URL that contains the exported assets
%% is returned. The
%% URL is valid for 5 minutes and can be refreshed with a
%% `DescribeAssetBundleExportJob' API call. Each Amazon Quick Sight
%% account can
%% run up to 5 export jobs concurrently.
%%
%% The API caller must have the necessary permissions in their IAM role to
%% access each resource before the resources can be exported.
-spec start_asset_bundle_export_job(aws_client:aws_client(), binary() | list(), start_asset_bundle_export_job_request()) ->
    {ok, start_asset_bundle_export_job_response(), tuple()} |
    {error, any()} |
    {error, start_asset_bundle_export_job_errors(), tuple()}.
start_asset_bundle_export_job(Client, AwsAccountId, Input) ->
    start_asset_bundle_export_job(Client, AwsAccountId, Input, []).

-spec start_asset_bundle_export_job(aws_client:aws_client(), binary() | list(), start_asset_bundle_export_job_request(), proplists:proplist()) ->
    {ok, start_asset_bundle_export_job_response(), tuple()} |
    {error, any()} |
    {error, start_asset_bundle_export_job_errors(), tuple()}.
start_asset_bundle_export_job(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/asset-bundle-export-jobs/export"],
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

%% @doc Starts an Asset Bundle import job.
%%
%% An Asset Bundle import job imports specified Amazon Quick Sight assets
%% into an Amazon Quick
%% Sight account. You can also choose to import a naming prefix and specified
%% configuration
%% overrides. The assets that are contained in the bundle file that you
%% provide are used to
%% create or update a new or existing asset in your Amazon Quick Sight
%% account. Each Amazon
%% Quick Sight account can run up to 5 import jobs concurrently.
%%
%% The API caller must have the necessary `&quot;create&quot;',
%% `&quot;describe&quot;',
%% and `&quot;update&quot;' permissions in their IAM role to access each
%% resource type that is contained in the bundle file before the resources
%% can be
%% imported.
-spec start_asset_bundle_import_job(aws_client:aws_client(), binary() | list(), start_asset_bundle_import_job_request()) ->
    {ok, start_asset_bundle_import_job_response(), tuple()} |
    {error, any()} |
    {error, start_asset_bundle_import_job_errors(), tuple()}.
start_asset_bundle_import_job(Client, AwsAccountId, Input) ->
    start_asset_bundle_import_job(Client, AwsAccountId, Input, []).

-spec start_asset_bundle_import_job(aws_client:aws_client(), binary() | list(), start_asset_bundle_import_job_request(), proplists:proplist()) ->
    {ok, start_asset_bundle_import_job_response(), tuple()} |
    {error, any()} |
    {error, start_asset_bundle_import_job_errors(), tuple()}.
start_asset_bundle_import_job(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/asset-bundle-import-jobs/import"],
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

%% @doc Starts an asynchronous job that generates a snapshot of a
%% dashboard's output.
%%
%% You can request one or several of the following format configurations in
%% each API call.
%%
%% 1 Paginated PDF
%%
%% 1 Excel workbook that includes up to 5 table or pivot table visuals
%%
%% 5 CSVs from table or pivot table visuals
%%
%% The status of a submitted job can be polled with the
%% `DescribeDashboardSnapshotJob' API. When you call the
%% `DescribeDashboardSnapshotJob' API, check the `JobStatus' field in
%% the response. Once the job reaches a `COMPLETED' or `FAILED'
%% status, use the `DescribeDashboardSnapshotJobResult' API to obtain the
%% URLs for the generated files. If the job fails, the
%% `DescribeDashboardSnapshotJobResult' API returns detailed information
%% about the error that occurred.
%%
%% StartDashboardSnapshotJob API throttling
%%
%% Quick Sight utilizes API throttling to create a more consistent user
%% experience within a time span for customers when they call the
%% `StartDashboardSnapshotJob'. By default, 12 jobs can run
%% simlutaneously in one Amazon Web Services account and users can submit up
%% 10 API requests per second before an account is throttled. If an
%% overwhelming number of API requests are made by the same user in a short
%% period of time, Quick Sight throttles the API calls to maintin an optimal
%% experience and reliability for all Quick Sight users.
%%
%% Common throttling scenarios
%%
%% The following list provides information about the most commin throttling
%% scenarios that can occur.
%%
%% A large number of `SnapshotExport' API jobs are running simultaneously
%% on an Amazon Web Services account. When a new
%% `StartDashboardSnapshotJob' is created and there are already 12 jobs
%% with the `RUNNING' status, the new job request fails and returns a
%% `LimitExceededException' error. Wait for a current job to comlpete
%% before you resubmit the new job.
%%
%% A large number of API requests are submitted on an Amazon Web Services
%% account. When a user makes more than 10 API calls to the Quick Sight API
%% in one second, a `ThrottlingException' is returned.
%%
%% If your use case requires a higher throttling limit, contact your account
%% admin or Amazon Web ServicesSupport: http://aws.amazon.com/contact-us/ to
%% explore options to tailor a more optimal expereince for your account.
%%
%% Best practices to handle throttling
%%
%% If your use case projects high levels of API traffic, try to reduce the
%% degree of frequency and parallelism of API calls as much as you can to
%% avoid throttling. You can also perform a timing test to calculate an
%% estimate for the total processing time of your projected load that stays
%% within the throttling limits of the Quick Sight APIs. For example, if your
%% projected traffic is 100 snapshot jobs before 12:00 PM per day, start 12
%% jobs in parallel and measure the amount of time it takes to proccess all
%% 12 jobs. Once you obtain the result, multiply the duration by 9, for
%% example `(12 minutes * 9 = 108 minutes)'. Use the new result to
%% determine the latest time at which the jobs need to be started to meet
%% your target deadline.
%%
%% The time that it takes to process a job can be impacted by the following
%% factors:
%%
%% The dataset type (Direct Query or SPICE).
%%
%% The size of the dataset.
%%
%% The complexity of the calculated fields that are used in the dashboard.
%%
%% The number of visuals that are on a sheet.
%%
%% The types of visuals that are on the sheet.
%%
%% The number of formats and snapshots that are requested in the job
%% configuration.
%%
%% The size of the generated snapshots.
-spec start_dashboard_snapshot_job(aws_client:aws_client(), binary() | list(), binary() | list(), start_dashboard_snapshot_job_request()) ->
    {ok, start_dashboard_snapshot_job_response(), tuple()} |
    {error, any()} |
    {error, start_dashboard_snapshot_job_errors(), tuple()}.
start_dashboard_snapshot_job(Client, AwsAccountId, DashboardId, Input) ->
    start_dashboard_snapshot_job(Client, AwsAccountId, DashboardId, Input, []).

-spec start_dashboard_snapshot_job(aws_client:aws_client(), binary() | list(), binary() | list(), start_dashboard_snapshot_job_request(), proplists:proplist()) ->
    {ok, start_dashboard_snapshot_job_response(), tuple()} |
    {error, any()} |
    {error, start_dashboard_snapshot_job_errors(), tuple()}.
start_dashboard_snapshot_job(Client, AwsAccountId, DashboardId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/snapshot-jobs"],
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

%% @doc Starts an asynchronous job that runs an existing dashboard schedule
%% and sends the dashboard snapshot through email.
%%
%% Only one job can run simultaneously in a given schedule. Repeated requests
%% are skipped with a `202' HTTP status code.
%%
%% For more information, see Scheduling and sending Amazon Quick Sight
%% reports by email:
%% https://docs.aws.amazon.com/quicksight/latest/user/sending-reports.html
%% and Configuring email report settings for a Amazon Quick Sight dashboard:
%% https://docs.aws.amazon.com/quicksight/latest/user/email-reports-from-dashboard.html
%% in the Amazon Quick Sight User Guide.
-spec start_dashboard_snapshot_job_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), start_dashboard_snapshot_job_schedule_request()) ->
    {ok, start_dashboard_snapshot_job_schedule_response(), tuple()} |
    {error, any()} |
    {error, start_dashboard_snapshot_job_schedule_errors(), tuple()}.
start_dashboard_snapshot_job_schedule(Client, AwsAccountId, DashboardId, ScheduleId, Input) ->
    start_dashboard_snapshot_job_schedule(Client, AwsAccountId, DashboardId, ScheduleId, Input, []).

-spec start_dashboard_snapshot_job_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), start_dashboard_snapshot_job_schedule_request(), proplists:proplist()) ->
    {ok, start_dashboard_snapshot_job_schedule_response(), tuple()} |
    {error, any()} |
    {error, start_dashboard_snapshot_job_schedule_errors(), tuple()}.
start_dashboard_snapshot_job_schedule(Client, AwsAccountId, DashboardId, ScheduleId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/schedules/", aws_util:encode_uri(ScheduleId), ""],
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

%% @doc Assigns one or more tags (key-value pairs) to the specified Amazon
%% Quick Sight
%% resource.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to
%% scope user permissions, by granting a user permission to access or change
%% only resources
%% with certain tag values. You can use the `TagResource' operation with
%% a
%% resource that already has tags. If you specify a new tag key for the
%% resource, this tag
%% is appended to the list of tags associated with the resource. If you
%% specify a tag key
%% that is already associated with the resource, the new tag value that you
%% specify
%% replaces the previous value for that tag.
%%
%% You can associate as many as 50 tags with a resource. Amazon Quick Sight
%% supports
%% tagging on data set, data source, dashboard, template, topic, and user.
%%
%% Tagging for Amazon Quick Sight works in a similar way to tagging for other
%% Amazon Web Services services, except for the following:
%%
%% Tags are used to track costs for users in Amazon Quick Sight. You
%% can't
%% tag other resources that Amazon Quick Sight costs are based on, such as
%% storage
%% capacoty (SPICE), session usage, alert consumption, or reporting units.
%%
%% Amazon Quick Sight doesn't currently support the tag editor for
%% Resource Groups.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/resources/", aws_util:encode_uri(ResourceArn), "/tags"],
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

%% @doc Removes a tag or tags from a resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/resources/", aws_util:encode_uri(ResourceArn), "/tags"],
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

    QueryMapping = [
                     {<<"keys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Applies a custom permissions profile to an account.
-spec update_account_custom_permission(aws_client:aws_client(), binary() | list(), update_account_custom_permission_request()) ->
    {ok, update_account_custom_permission_response(), tuple()} |
    {error, any()} |
    {error, update_account_custom_permission_errors(), tuple()}.
update_account_custom_permission(Client, AwsAccountId, Input) ->
    update_account_custom_permission(Client, AwsAccountId, Input, []).

-spec update_account_custom_permission(aws_client:aws_client(), binary() | list(), update_account_custom_permission_request(), proplists:proplist()) ->
    {ok, update_account_custom_permission_response(), tuple()} |
    {error, any()} |
    {error, update_account_custom_permission_errors(), tuple()}.
update_account_custom_permission(Client, AwsAccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/custom-permission"],
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

%% @doc Updates Amazon Quick Sight customizations.
%%
%% Currently, the only customization that you can use is a theme.
%%
%% You can use customizations for your Amazon Web Services account or, if you
%% specify a namespace, for a
%% Quick Sight namespace instead. Customizations that apply to a namespace
%% override
%% customizations that apply to an Amazon Web Services account. To find out
%% which customizations apply, use
%% the `DescribeAccountCustomization' API operation.
-spec update_account_customization(aws_client:aws_client(), binary() | list(), update_account_customization_request()) ->
    {ok, update_account_customization_response(), tuple()} |
    {error, any()} |
    {error, update_account_customization_errors(), tuple()}.
update_account_customization(Client, AwsAccountId, Input) ->
    update_account_customization(Client, AwsAccountId, Input, []).

-spec update_account_customization(aws_client:aws_client(), binary() | list(), update_account_customization_request(), proplists:proplist()) ->
    {ok, update_account_customization_response(), tuple()} |
    {error, any()} |
    {error, update_account_customization_errors(), tuple()}.
update_account_customization(Client, AwsAccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/customizations"],
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

    QueryMapping = [
                     {<<"namespace">>, <<"Namespace">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the Amazon Quick Sight settings in your Amazon Web Services
%% account.
-spec update_account_settings(aws_client:aws_client(), binary() | list(), update_account_settings_request()) ->
    {ok, update_account_settings_response(), tuple()} |
    {error, any()} |
    {error, update_account_settings_errors(), tuple()}.
update_account_settings(Client, AwsAccountId, Input) ->
    update_account_settings(Client, AwsAccountId, Input, []).

-spec update_account_settings(aws_client:aws_client(), binary() | list(), update_account_settings_request(), proplists:proplist()) ->
    {ok, update_account_settings_response(), tuple()} |
    {error, any()} |
    {error, update_account_settings_errors(), tuple()}.
update_account_settings(Client, AwsAccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/settings"],
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

%% @doc Updates an existing action connector with new configuration details,
%% authentication settings, or enabled actions.
%%
%% You can modify the connector's name, description, authentication
%% configuration, and which actions are enabled. For more information,
%% [https://docs.aws.amazon.com/quicksuite/latest/userguide/quick-action-auth.html].
-spec update_action_connector(aws_client:aws_client(), binary() | list(), binary() | list(), update_action_connector_request()) ->
    {ok, update_action_connector_response(), tuple()} |
    {error, any()} |
    {error, update_action_connector_errors(), tuple()}.
update_action_connector(Client, ActionConnectorId, AwsAccountId, Input) ->
    update_action_connector(Client, ActionConnectorId, AwsAccountId, Input, []).

-spec update_action_connector(aws_client:aws_client(), binary() | list(), binary() | list(), update_action_connector_request(), proplists:proplist()) ->
    {ok, update_action_connector_response(), tuple()} |
    {error, any()} |
    {error, update_action_connector_errors(), tuple()}.
update_action_connector(Client, ActionConnectorId, AwsAccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/action-connectors/", aws_util:encode_uri(ActionConnectorId), ""],
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

%% @doc Updates the permissions for an action connector by granting or
%% revoking access for specific users and groups.
%%
%% You can control who can view, use, or manage the action connector.
-spec update_action_connector_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_action_connector_permissions_request()) ->
    {ok, update_action_connector_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_action_connector_permissions_errors(), tuple()}.
update_action_connector_permissions(Client, ActionConnectorId, AwsAccountId, Input) ->
    update_action_connector_permissions(Client, ActionConnectorId, AwsAccountId, Input, []).

-spec update_action_connector_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_action_connector_permissions_request(), proplists:proplist()) ->
    {ok, update_action_connector_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_action_connector_permissions_errors(), tuple()}.
update_action_connector_permissions(Client, ActionConnectorId, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/action-connectors/", aws_util:encode_uri(ActionConnectorId), "/permissions"],
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

%% @doc Updates an analysis in Amazon Quick Sight
-spec update_analysis(aws_client:aws_client(), binary() | list(), binary() | list(), update_analysis_request()) ->
    {ok, update_analysis_response(), tuple()} |
    {error, any()} |
    {error, update_analysis_errors(), tuple()}.
update_analysis(Client, AnalysisId, AwsAccountId, Input) ->
    update_analysis(Client, AnalysisId, AwsAccountId, Input, []).

-spec update_analysis(aws_client:aws_client(), binary() | list(), binary() | list(), update_analysis_request(), proplists:proplist()) ->
    {ok, update_analysis_response(), tuple()} |
    {error, any()} |
    {error, update_analysis_errors(), tuple()}.
update_analysis(Client, AnalysisId, AwsAccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/analyses/", aws_util:encode_uri(AnalysisId), ""],
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

%% @doc Updates the read and write permissions for an analysis.
-spec update_analysis_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_analysis_permissions_request()) ->
    {ok, update_analysis_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_analysis_permissions_errors(), tuple()}.
update_analysis_permissions(Client, AnalysisId, AwsAccountId, Input) ->
    update_analysis_permissions(Client, AnalysisId, AwsAccountId, Input, []).

-spec update_analysis_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_analysis_permissions_request(), proplists:proplist()) ->
    {ok, update_analysis_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_analysis_permissions_errors(), tuple()}.
update_analysis_permissions(Client, AnalysisId, AwsAccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/analyses/", aws_util:encode_uri(AnalysisId), "/permissions"],
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

%% @doc Updates an QuickSight application with a token exchange grant.
%%
%% This operation only supports QuickSight applications that are registered
%% with IAM Identity Center.
-spec update_application_with_token_exchange_grant(aws_client:aws_client(), binary() | list(), update_application_with_token_exchange_grant_request()) ->
    {ok, update_application_with_token_exchange_grant_response(), tuple()} |
    {error, any()} |
    {error, update_application_with_token_exchange_grant_errors(), tuple()}.
update_application_with_token_exchange_grant(Client, AwsAccountId, Input) ->
    update_application_with_token_exchange_grant(Client, AwsAccountId, Input, []).

-spec update_application_with_token_exchange_grant(aws_client:aws_client(), binary() | list(), update_application_with_token_exchange_grant_request(), proplists:proplist()) ->
    {ok, update_application_with_token_exchange_grant_response(), tuple()} |
    {error, any()} |
    {error, update_application_with_token_exchange_grant_errors(), tuple()}.
update_application_with_token_exchange_grant(Client, AwsAccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/application-with-token-exchange-grant"],
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

    QueryMapping = [
                     {<<"namespace">>, <<"Namespace">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a brand.
-spec update_brand(aws_client:aws_client(), binary() | list(), binary() | list(), update_brand_request()) ->
    {ok, update_brand_response(), tuple()} |
    {error, any()} |
    {error, update_brand_errors(), tuple()}.
update_brand(Client, AwsAccountId, BrandId, Input) ->
    update_brand(Client, AwsAccountId, BrandId, Input, []).

-spec update_brand(aws_client:aws_client(), binary() | list(), binary() | list(), update_brand_request(), proplists:proplist()) ->
    {ok, update_brand_response(), tuple()} |
    {error, any()} |
    {error, update_brand_errors(), tuple()}.
update_brand(Client, AwsAccountId, BrandId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/brands/", aws_util:encode_uri(BrandId), ""],
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

%% @doc Updates a brand assignment.
-spec update_brand_assignment(aws_client:aws_client(), binary() | list(), update_brand_assignment_request()) ->
    {ok, update_brand_assignment_response(), tuple()} |
    {error, any()} |
    {error, update_brand_assignment_errors(), tuple()}.
update_brand_assignment(Client, AwsAccountId, Input) ->
    update_brand_assignment(Client, AwsAccountId, Input, []).

-spec update_brand_assignment(aws_client:aws_client(), binary() | list(), update_brand_assignment_request(), proplists:proplist()) ->
    {ok, update_brand_assignment_response(), tuple()} |
    {error, any()} |
    {error, update_brand_assignment_errors(), tuple()}.
update_brand_assignment(Client, AwsAccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/brandassignments"],
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

%% @doc Updates the published version of a brand.
-spec update_brand_published_version(aws_client:aws_client(), binary() | list(), binary() | list(), update_brand_published_version_request()) ->
    {ok, update_brand_published_version_response(), tuple()} |
    {error, any()} |
    {error, update_brand_published_version_errors(), tuple()}.
update_brand_published_version(Client, AwsAccountId, BrandId, Input) ->
    update_brand_published_version(Client, AwsAccountId, BrandId, Input, []).

-spec update_brand_published_version(aws_client:aws_client(), binary() | list(), binary() | list(), update_brand_published_version_request(), proplists:proplist()) ->
    {ok, update_brand_published_version_response(), tuple()} |
    {error, any()} |
    {error, update_brand_published_version_errors(), tuple()}.
update_brand_published_version(Client, AwsAccountId, BrandId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/brands/", aws_util:encode_uri(BrandId), "/publishedversion"],
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

%% @doc Updates a custom permissions profile.
-spec update_custom_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_custom_permissions_request()) ->
    {ok, update_custom_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_custom_permissions_errors(), tuple()}.
update_custom_permissions(Client, AwsAccountId, CustomPermissionsName, Input) ->
    update_custom_permissions(Client, AwsAccountId, CustomPermissionsName, Input, []).

-spec update_custom_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_custom_permissions_request(), proplists:proplist()) ->
    {ok, update_custom_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_custom_permissions_errors(), tuple()}.
update_custom_permissions(Client, AwsAccountId, CustomPermissionsName, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/custom-permissions/", aws_util:encode_uri(CustomPermissionsName), ""],
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

%% @doc Updates a dashboard in an Amazon Web Services account.
%%
%% Updating a Dashboard creates a new dashboard version but does not
%% immediately
%% publish the new version. You can update the published version of a
%% dashboard by
%% using the
%% ```
%% UpdateDashboardPublishedVersion:
%% https://docs.aws.amazon.com/quicksight/latest/APIReference/API_UpdateDashboardPublishedVersion.html
%% ''' API operation.
-spec update_dashboard(aws_client:aws_client(), binary() | list(), binary() | list(), update_dashboard_request()) ->
    {ok, update_dashboard_response(), tuple()} |
    {error, any()} |
    {error, update_dashboard_errors(), tuple()}.
update_dashboard(Client, AwsAccountId, DashboardId, Input) ->
    update_dashboard(Client, AwsAccountId, DashboardId, Input, []).

-spec update_dashboard(aws_client:aws_client(), binary() | list(), binary() | list(), update_dashboard_request(), proplists:proplist()) ->
    {ok, update_dashboard_response(), tuple()} |
    {error, any()} |
    {error, update_dashboard_errors(), tuple()}.
update_dashboard(Client, AwsAccountId, DashboardId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), ""],
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

%% @doc Updates the linked analyses on a dashboard.
-spec update_dashboard_links(aws_client:aws_client(), binary() | list(), binary() | list(), update_dashboard_links_request()) ->
    {ok, update_dashboard_links_response(), tuple()} |
    {error, any()} |
    {error, update_dashboard_links_errors(), tuple()}.
update_dashboard_links(Client, AwsAccountId, DashboardId, Input) ->
    update_dashboard_links(Client, AwsAccountId, DashboardId, Input, []).

-spec update_dashboard_links(aws_client:aws_client(), binary() | list(), binary() | list(), update_dashboard_links_request(), proplists:proplist()) ->
    {ok, update_dashboard_links_response(), tuple()} |
    {error, any()} |
    {error, update_dashboard_links_errors(), tuple()}.
update_dashboard_links(Client, AwsAccountId, DashboardId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/linked-entities"],
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

%% @doc Updates read and write permissions on a dashboard.
-spec update_dashboard_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_dashboard_permissions_request()) ->
    {ok, update_dashboard_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_dashboard_permissions_errors(), tuple()}.
update_dashboard_permissions(Client, AwsAccountId, DashboardId, Input) ->
    update_dashboard_permissions(Client, AwsAccountId, DashboardId, Input, []).

-spec update_dashboard_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_dashboard_permissions_request(), proplists:proplist()) ->
    {ok, update_dashboard_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_dashboard_permissions_errors(), tuple()}.
update_dashboard_permissions(Client, AwsAccountId, DashboardId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/permissions"],
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

%% @doc Updates the published version of a dashboard.
-spec update_dashboard_published_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_dashboard_published_version_request()) ->
    {ok, update_dashboard_published_version_response(), tuple()} |
    {error, any()} |
    {error, update_dashboard_published_version_errors(), tuple()}.
update_dashboard_published_version(Client, AwsAccountId, DashboardId, VersionNumber, Input) ->
    update_dashboard_published_version(Client, AwsAccountId, DashboardId, VersionNumber, Input, []).

-spec update_dashboard_published_version(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_dashboard_published_version_request(), proplists:proplist()) ->
    {ok, update_dashboard_published_version_response(), tuple()} |
    {error, any()} |
    {error, update_dashboard_published_version_errors(), tuple()}.
update_dashboard_published_version(Client, AwsAccountId, DashboardId, VersionNumber, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/versions/", aws_util:encode_uri(VersionNumber), ""],
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

%% @doc Updates a Dashboard QA configuration.
-spec update_dashboards_q_a_configuration(aws_client:aws_client(), binary() | list(), update_dashboards_q_a_configuration_request()) ->
    {ok, update_dashboards_q_a_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_dashboards_q_a_configuration_errors(), tuple()}.
update_dashboards_q_a_configuration(Client, AwsAccountId, Input) ->
    update_dashboards_q_a_configuration(Client, AwsAccountId, Input, []).

-spec update_dashboards_q_a_configuration(aws_client:aws_client(), binary() | list(), update_dashboards_q_a_configuration_request(), proplists:proplist()) ->
    {ok, update_dashboards_q_a_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_dashboards_q_a_configuration_errors(), tuple()}.
update_dashboards_q_a_configuration(Client, AwsAccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards-qa-configuration"],
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

%% @doc Updates a dataset.
%%
%% This operation doesn't support datasets that include uploaded files
%% as a source. Partial updates are not supported by this operation.
-spec update_data_set(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_set_request()) ->
    {ok, update_data_set_response(), tuple()} |
    {error, any()} |
    {error, update_data_set_errors(), tuple()}.
update_data_set(Client, AwsAccountId, DataSetId, Input) ->
    update_data_set(Client, AwsAccountId, DataSetId, Input, []).

-spec update_data_set(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_set_request(), proplists:proplist()) ->
    {ok, update_data_set_response(), tuple()} |
    {error, any()} |
    {error, update_data_set_errors(), tuple()}.
update_data_set(Client, AwsAccountId, DataSetId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), ""],
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

%% @doc Updates the permissions on a dataset.
%%
%% The permissions resource is
%% `arn:aws:quicksight:region:aws-account-id:dataset/data-set-id'.
-spec update_data_set_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_set_permissions_request()) ->
    {ok, update_data_set_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_data_set_permissions_errors(), tuple()}.
update_data_set_permissions(Client, AwsAccountId, DataSetId, Input) ->
    update_data_set_permissions(Client, AwsAccountId, DataSetId, Input, []).

-spec update_data_set_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_set_permissions_request(), proplists:proplist()) ->
    {ok, update_data_set_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_data_set_permissions_errors(), tuple()}.
update_data_set_permissions(Client, AwsAccountId, DataSetId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/permissions"],
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

%% @doc Updates a data source.
-spec update_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_source_request()) ->
    {ok, update_data_source_response(), tuple()} |
    {error, any()} |
    {error, update_data_source_errors(), tuple()}.
update_data_source(Client, AwsAccountId, DataSourceId, Input) ->
    update_data_source(Client, AwsAccountId, DataSourceId, Input, []).

-spec update_data_source(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_source_request(), proplists:proplist()) ->
    {ok, update_data_source_response(), tuple()} |
    {error, any()} |
    {error, update_data_source_errors(), tuple()}.
update_data_source(Client, AwsAccountId, DataSourceId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sources/", aws_util:encode_uri(DataSourceId), ""],
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

%% @doc Updates the permissions to a data source.
-spec update_data_source_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_source_permissions_request()) ->
    {ok, update_data_source_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_data_source_permissions_errors(), tuple()}.
update_data_source_permissions(Client, AwsAccountId, DataSourceId, Input) ->
    update_data_source_permissions(Client, AwsAccountId, DataSourceId, Input, []).

-spec update_data_source_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_data_source_permissions_request(), proplists:proplist()) ->
    {ok, update_data_source_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_data_source_permissions_errors(), tuple()}.
update_data_source_permissions(Client, AwsAccountId, DataSourceId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sources/", aws_util:encode_uri(DataSourceId), "/permissions"],
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

%% @doc Updates a Amazon Q Business application that is linked to a Quick
%% Sight account.
-spec update_default_q_business_application(aws_client:aws_client(), binary() | list(), update_default_q_business_application_request()) ->
    {ok, update_default_q_business_application_response(), tuple()} |
    {error, any()} |
    {error, update_default_q_business_application_errors(), tuple()}.
update_default_q_business_application(Client, AwsAccountId, Input) ->
    update_default_q_business_application(Client, AwsAccountId, Input, []).

-spec update_default_q_business_application(aws_client:aws_client(), binary() | list(), update_default_q_business_application_request(), proplists:proplist()) ->
    {ok, update_default_q_business_application_response(), tuple()} |
    {error, any()} |
    {error, update_default_q_business_application_errors(), tuple()}.
update_default_q_business_application(Client, AwsAccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/default-qbusiness-application"],
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

    QueryMapping = [
                     {<<"namespace">>, <<"Namespace">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates permissions against principals on a flow.
-spec update_flow_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_flow_permissions_input()) ->
    {ok, update_flow_permissions_output(), tuple()} |
    {error, any()} |
    {error, update_flow_permissions_errors(), tuple()}.
update_flow_permissions(Client, AwsAccountId, FlowId, Input) ->
    update_flow_permissions(Client, AwsAccountId, FlowId, Input, []).

-spec update_flow_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_flow_permissions_input(), proplists:proplist()) ->
    {ok, update_flow_permissions_output(), tuple()} |
    {error, any()} |
    {error, update_flow_permissions_errors(), tuple()}.
update_flow_permissions(Client, AwsAccountId, FlowId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/flows/", aws_util:encode_uri(FlowId), "/permissions"],
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

%% @doc Updates the name of a folder.
-spec update_folder(aws_client:aws_client(), binary() | list(), binary() | list(), update_folder_request()) ->
    {ok, update_folder_response(), tuple()} |
    {error, any()} |
    {error, update_folder_errors(), tuple()}.
update_folder(Client, AwsAccountId, FolderId, Input) ->
    update_folder(Client, AwsAccountId, FolderId, Input, []).

-spec update_folder(aws_client:aws_client(), binary() | list(), binary() | list(), update_folder_request(), proplists:proplist()) ->
    {ok, update_folder_response(), tuple()} |
    {error, any()} |
    {error, update_folder_errors(), tuple()}.
update_folder(Client, AwsAccountId, FolderId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), ""],
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

%% @doc Updates permissions of a folder.
-spec update_folder_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_folder_permissions_request()) ->
    {ok, update_folder_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_folder_permissions_errors(), tuple()}.
update_folder_permissions(Client, AwsAccountId, FolderId, Input) ->
    update_folder_permissions(Client, AwsAccountId, FolderId, Input, []).

-spec update_folder_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_folder_permissions_request(), proplists:proplist()) ->
    {ok, update_folder_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_folder_permissions_errors(), tuple()}.
update_folder_permissions(Client, AwsAccountId, FolderId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), "/permissions"],
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

%% @doc Changes a group description.
-spec update_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_group_request()) ->
    {ok, update_group_response(), tuple()} |
    {error, any()} |
    {error, update_group_errors(), tuple()}.
update_group(Client, AwsAccountId, GroupName, Namespace, Input) ->
    update_group(Client, AwsAccountId, GroupName, Namespace, Input, []).

-spec update_group(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_group_request(), proplists:proplist()) ->
    {ok, update_group_response(), tuple()} |
    {error, any()} |
    {error, update_group_errors(), tuple()}.
update_group(Client, AwsAccountId, GroupName, Namespace, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/groups/", aws_util:encode_uri(GroupName), ""],
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

%% @doc Updates an existing IAM policy assignment.
%%
%% This operation updates only
%% the optional parameter or parameters that are specified in the request.
%% This overwrites
%% all of the users included in `Identities'.
-spec update_iam_policy_assignment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_iam_policy_assignment_request()) ->
    {ok, update_iam_policy_assignment_response(), tuple()} |
    {error, any()} |
    {error, update_iam_policy_assignment_errors(), tuple()}.
update_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Input) ->
    update_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Input, []).

-spec update_iam_policy_assignment(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_iam_policy_assignment_request(), proplists:proplist()) ->
    {ok, update_iam_policy_assignment_response(), tuple()} |
    {error, any()} |
    {error, update_iam_policy_assignment_errors(), tuple()}.
update_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/iam-policy-assignments/", aws_util:encode_uri(AssignmentName), ""],
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

%% @doc Adds or updates services and authorized targets to configure what the
%% Quick Sight IAM Identity Center application can access.
%%
%% This operation is only supported for Quick Sight accounts using IAM
%% Identity Center
-spec update_identity_propagation_config(aws_client:aws_client(), binary() | list(), binary() | list(), update_identity_propagation_config_request()) ->
    {ok, update_identity_propagation_config_response(), tuple()} |
    {error, any()} |
    {error, update_identity_propagation_config_errors(), tuple()}.
update_identity_propagation_config(Client, AwsAccountId, Service, Input) ->
    update_identity_propagation_config(Client, AwsAccountId, Service, Input, []).

-spec update_identity_propagation_config(aws_client:aws_client(), binary() | list(), binary() | list(), update_identity_propagation_config_request(), proplists:proplist()) ->
    {ok, update_identity_propagation_config_response(), tuple()} |
    {error, any()} |
    {error, update_identity_propagation_config_errors(), tuple()}.
update_identity_propagation_config(Client, AwsAccountId, Service, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/identity-propagation-config/", aws_util:encode_uri(Service), ""],
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

%% @doc Updates the content and status of IP rules.
%%
%% Traffic from a source is allowed when the source satisfies either the
%% `IpRestrictionRule', `VpcIdRestrictionRule', or
%% `VpcEndpointIdRestrictionRule'. To use this operation, you must
%% provide the entire map of rules. You can use the
%% `DescribeIpRestriction' operation to get the current rule map.
-spec update_ip_restriction(aws_client:aws_client(), binary() | list(), update_ip_restriction_request()) ->
    {ok, update_ip_restriction_response(), tuple()} |
    {error, any()} |
    {error, update_ip_restriction_errors(), tuple()}.
update_ip_restriction(Client, AwsAccountId, Input) ->
    update_ip_restriction(Client, AwsAccountId, Input, []).

-spec update_ip_restriction(aws_client:aws_client(), binary() | list(), update_ip_restriction_request(), proplists:proplist()) ->
    {ok, update_ip_restriction_response(), tuple()} |
    {error, any()} |
    {error, update_ip_restriction_errors(), tuple()}.
update_ip_restriction(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/ip-restriction"],
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

%% @doc Updates a customer managed key in a Quick Sight account.
-spec update_key_registration(aws_client:aws_client(), binary() | list(), update_key_registration_request()) ->
    {ok, update_key_registration_response(), tuple()} |
    {error, any()} |
    {error, update_key_registration_errors(), tuple()}.
update_key_registration(Client, AwsAccountId, Input) ->
    update_key_registration(Client, AwsAccountId, Input, []).

-spec update_key_registration(aws_client:aws_client(), binary() | list(), update_key_registration_request(), proplists:proplist()) ->
    {ok, update_key_registration_response(), tuple()} |
    {error, any()} |
    {error, update_key_registration_errors(), tuple()}.
update_key_registration(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/key-registration"],
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

%% @doc
%% This API controls public sharing settings for your entire Quick Sight
%% account, affecting
%% data security and access.
%%
%% When you enable public sharing:
%%
%% Dashboards can be shared publicly
%%
%% This setting affects your entire Amazon Web Services account and all Quick
%% Sight
%% users
%%
%% Before proceeding: Ensure you understand the
%% security implications and have proper IAM permissions
%% configured.
%%
%% Use the `UpdatePublicSharingSettings' operation to turn on or turn off
%% the
%% public sharing settings of an Amazon Quick Sight dashboard.
%%
%% To use this operation, turn on session capacity pricing for your Amazon
%% Quick Sight
%% account.
%%
%% Before you can turn on public sharing on your account, make sure to give
%% public
%% sharing permissions to an administrative user in the Identity and Access
%% Management (IAM) console. For more information on using IAM with Amazon
%% Quick Sight, see Using QuickSight with IAM:
%% https://docs.aws.amazon.com/quicksight/latest/user/security_iam_service-with-iam.html
%% in the Amazon Quick Sight
%% User Guide.
-spec update_public_sharing_settings(aws_client:aws_client(), binary() | list(), update_public_sharing_settings_request()) ->
    {ok, update_public_sharing_settings_response(), tuple()} |
    {error, any()} |
    {error, update_public_sharing_settings_errors(), tuple()}.
update_public_sharing_settings(Client, AwsAccountId, Input) ->
    update_public_sharing_settings(Client, AwsAccountId, Input, []).

-spec update_public_sharing_settings(aws_client:aws_client(), binary() | list(), update_public_sharing_settings_request(), proplists:proplist()) ->
    {ok, update_public_sharing_settings_response(), tuple()} |
    {error, any()} |
    {error, update_public_sharing_settings_errors(), tuple()}.
update_public_sharing_settings(Client, AwsAccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/public-sharing-settings"],
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

%% @doc Updates a personalization configuration.
-spec update_q_personalization_configuration(aws_client:aws_client(), binary() | list(), update_q_personalization_configuration_request()) ->
    {ok, update_q_personalization_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_q_personalization_configuration_errors(), tuple()}.
update_q_personalization_configuration(Client, AwsAccountId, Input) ->
    update_q_personalization_configuration(Client, AwsAccountId, Input, []).

-spec update_q_personalization_configuration(aws_client:aws_client(), binary() | list(), update_q_personalization_configuration_request(), proplists:proplist()) ->
    {ok, update_q_personalization_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_q_personalization_configuration_errors(), tuple()}.
update_q_personalization_configuration(Client, AwsAccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/q-personalization-configuration"],
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

%% @doc Updates the state of a Quick Sight Q Search configuration.
-spec update_quick_sight_q_search_configuration(aws_client:aws_client(), binary() | list(), update_quick_sight_q_search_configuration_request()) ->
    {ok, update_quick_sight_q_search_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_quick_sight_q_search_configuration_errors(), tuple()}.
update_quick_sight_q_search_configuration(Client, AwsAccountId, Input) ->
    update_quick_sight_q_search_configuration(Client, AwsAccountId, Input, []).

-spec update_quick_sight_q_search_configuration(aws_client:aws_client(), binary() | list(), update_quick_sight_q_search_configuration_request(), proplists:proplist()) ->
    {ok, update_quick_sight_q_search_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_quick_sight_q_search_configuration_errors(), tuple()}.
update_quick_sight_q_search_configuration(Client, AwsAccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/quicksight-q-search-configuration"],
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

%% @doc Updates a refresh schedule for a dataset.
-spec update_refresh_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), update_refresh_schedule_request()) ->
    {ok, update_refresh_schedule_response(), tuple()} |
    {error, any()} |
    {error, update_refresh_schedule_errors(), tuple()}.
update_refresh_schedule(Client, AwsAccountId, DataSetId, Input) ->
    update_refresh_schedule(Client, AwsAccountId, DataSetId, Input, []).

-spec update_refresh_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), update_refresh_schedule_request(), proplists:proplist()) ->
    {ok, update_refresh_schedule_response(), tuple()} |
    {error, any()} |
    {error, update_refresh_schedule_errors(), tuple()}.
update_refresh_schedule(Client, AwsAccountId, DataSetId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/refresh-schedules"],
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

%% @doc Updates the custom permissions that are associated with a role.
-spec update_role_custom_permission(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_role_custom_permission_request()) ->
    {ok, update_role_custom_permission_response(), tuple()} |
    {error, any()} |
    {error, update_role_custom_permission_errors(), tuple()}.
update_role_custom_permission(Client, AwsAccountId, Namespace, Role, Input) ->
    update_role_custom_permission(Client, AwsAccountId, Namespace, Role, Input, []).

-spec update_role_custom_permission(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_role_custom_permission_request(), proplists:proplist()) ->
    {ok, update_role_custom_permission_response(), tuple()} |
    {error, any()} |
    {error, update_role_custom_permission_errors(), tuple()}.
update_role_custom_permission(Client, AwsAccountId, Namespace, Role, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/roles/", aws_util:encode_uri(Role), "/custom-permission"],
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

%% @doc Updates the SPICE capacity configuration for a Quick Sight account.
-spec update_s_p_i_c_e_capacity_configuration(aws_client:aws_client(), binary() | list(), update_s_p_i_c_e_capacity_configuration_request()) ->
    {ok, update_s_p_i_c_e_capacity_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_s_p_i_c_e_capacity_configuration_errors(), tuple()}.
update_s_p_i_c_e_capacity_configuration(Client, AwsAccountId, Input) ->
    update_s_p_i_c_e_capacity_configuration(Client, AwsAccountId, Input, []).

-spec update_s_p_i_c_e_capacity_configuration(aws_client:aws_client(), binary() | list(), update_s_p_i_c_e_capacity_configuration_request(), proplists:proplist()) ->
    {ok, update_s_p_i_c_e_capacity_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_s_p_i_c_e_capacity_configuration_errors(), tuple()}.
update_s_p_i_c_e_capacity_configuration(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/spice-capacity-configuration"],
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

%% @doc Updates a template from an existing Amazon Quick Sight analysis or
%% another template.
-spec update_template(aws_client:aws_client(), binary() | list(), binary() | list(), update_template_request()) ->
    {ok, update_template_response(), tuple()} |
    {error, any()} |
    {error, update_template_errors(), tuple()}.
update_template(Client, AwsAccountId, TemplateId, Input) ->
    update_template(Client, AwsAccountId, TemplateId, Input, []).

-spec update_template(aws_client:aws_client(), binary() | list(), binary() | list(), update_template_request(), proplists:proplist()) ->
    {ok, update_template_response(), tuple()} |
    {error, any()} |
    {error, update_template_errors(), tuple()}.
update_template(Client, AwsAccountId, TemplateId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), ""],
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

%% @doc Updates the template alias of a template.
-spec update_template_alias(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_template_alias_request()) ->
    {ok, update_template_alias_response(), tuple()} |
    {error, any()} |
    {error, update_template_alias_errors(), tuple()}.
update_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input) ->
    update_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input, []).

-spec update_template_alias(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_template_alias_request(), proplists:proplist()) ->
    {ok, update_template_alias_response(), tuple()} |
    {error, any()} |
    {error, update_template_alias_errors(), tuple()}.
update_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), "/aliases/", aws_util:encode_uri(AliasName), ""],
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

%% @doc Updates the resource permissions for a template.
-spec update_template_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_template_permissions_request()) ->
    {ok, update_template_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_template_permissions_errors(), tuple()}.
update_template_permissions(Client, AwsAccountId, TemplateId, Input) ->
    update_template_permissions(Client, AwsAccountId, TemplateId, Input, []).

-spec update_template_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_template_permissions_request(), proplists:proplist()) ->
    {ok, update_template_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_template_permissions_errors(), tuple()}.
update_template_permissions(Client, AwsAccountId, TemplateId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), "/permissions"],
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

%% @doc Updates a theme.
-spec update_theme(aws_client:aws_client(), binary() | list(), binary() | list(), update_theme_request()) ->
    {ok, update_theme_response(), tuple()} |
    {error, any()} |
    {error, update_theme_errors(), tuple()}.
update_theme(Client, AwsAccountId, ThemeId, Input) ->
    update_theme(Client, AwsAccountId, ThemeId, Input, []).

-spec update_theme(aws_client:aws_client(), binary() | list(), binary() | list(), update_theme_request(), proplists:proplist()) ->
    {ok, update_theme_response(), tuple()} |
    {error, any()} |
    {error, update_theme_errors(), tuple()}.
update_theme(Client, AwsAccountId, ThemeId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), ""],
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

%% @doc Updates an alias of a theme.
-spec update_theme_alias(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_theme_alias_request()) ->
    {ok, update_theme_alias_response(), tuple()} |
    {error, any()} |
    {error, update_theme_alias_errors(), tuple()}.
update_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input) ->
    update_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input, []).

-spec update_theme_alias(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_theme_alias_request(), proplists:proplist()) ->
    {ok, update_theme_alias_response(), tuple()} |
    {error, any()} |
    {error, update_theme_alias_errors(), tuple()}.
update_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), "/aliases/", aws_util:encode_uri(AliasName), ""],
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

%% @doc Updates the resource permissions for a theme.
%%
%% Permissions apply to the action to grant or
%% revoke permissions on, for example
%% `&quot;quicksight:DescribeTheme&quot;'.
%%
%% Theme permissions apply in groupings. Valid groupings include the
%% following for the three
%% levels of permissions, which are user, owner, or no permissions:
%%
%% User
%%
%% `&quot;quicksight:DescribeTheme&quot;'
%%
%% `&quot;quicksight:DescribeThemeAlias&quot;'
%%
%% `&quot;quicksight:ListThemeAliases&quot;'
%%
%% `&quot;quicksight:ListThemeVersions&quot;'
%%
%% Owner
%%
%% `&quot;quicksight:DescribeTheme&quot;'
%%
%% `&quot;quicksight:DescribeThemeAlias&quot;'
%%
%% `&quot;quicksight:ListThemeAliases&quot;'
%%
%% `&quot;quicksight:ListThemeVersions&quot;'
%%
%% `&quot;quicksight:DeleteTheme&quot;'
%%
%% `&quot;quicksight:UpdateTheme&quot;'
%%
%% `&quot;quicksight:CreateThemeAlias&quot;'
%%
%% `&quot;quicksight:DeleteThemeAlias&quot;'
%%
%% `&quot;quicksight:UpdateThemeAlias&quot;'
%%
%% `&quot;quicksight:UpdateThemePermissions&quot;'
%%
%% `&quot;quicksight:DescribeThemePermissions&quot;'
%%
%% To specify no permissions, omit the permissions list.
-spec update_theme_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_theme_permissions_request()) ->
    {ok, update_theme_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_theme_permissions_errors(), tuple()}.
update_theme_permissions(Client, AwsAccountId, ThemeId, Input) ->
    update_theme_permissions(Client, AwsAccountId, ThemeId, Input, []).

-spec update_theme_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_theme_permissions_request(), proplists:proplist()) ->
    {ok, update_theme_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_theme_permissions_errors(), tuple()}.
update_theme_permissions(Client, AwsAccountId, ThemeId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), "/permissions"],
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

%% @doc Updates a topic.
-spec update_topic(aws_client:aws_client(), binary() | list(), binary() | list(), update_topic_request()) ->
    {ok, update_topic_response(), tuple()} |
    {error, any()} |
    {error, update_topic_errors(), tuple()}.
update_topic(Client, AwsAccountId, TopicId, Input) ->
    update_topic(Client, AwsAccountId, TopicId, Input, []).

-spec update_topic(aws_client:aws_client(), binary() | list(), binary() | list(), update_topic_request(), proplists:proplist()) ->
    {ok, update_topic_response(), tuple()} |
    {error, any()} |
    {error, update_topic_errors(), tuple()}.
update_topic(Client, AwsAccountId, TopicId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), ""],
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

%% @doc Updates the permissions of a topic.
-spec update_topic_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_topic_permissions_request()) ->
    {ok, update_topic_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_topic_permissions_errors(), tuple()}.
update_topic_permissions(Client, AwsAccountId, TopicId, Input) ->
    update_topic_permissions(Client, AwsAccountId, TopicId, Input, []).

-spec update_topic_permissions(aws_client:aws_client(), binary() | list(), binary() | list(), update_topic_permissions_request(), proplists:proplist()) ->
    {ok, update_topic_permissions_response(), tuple()} |
    {error, any()} |
    {error, update_topic_permissions_errors(), tuple()}.
update_topic_permissions(Client, AwsAccountId, TopicId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), "/permissions"],
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

%% @doc Updates a topic refresh schedule.
-spec update_topic_refresh_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_topic_refresh_schedule_request()) ->
    {ok, update_topic_refresh_schedule_response(), tuple()} |
    {error, any()} |
    {error, update_topic_refresh_schedule_errors(), tuple()}.
update_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId, Input) ->
    update_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId, Input, []).

-spec update_topic_refresh_schedule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_topic_refresh_schedule_request(), proplists:proplist()) ->
    {ok, update_topic_refresh_schedule_response(), tuple()} |
    {error, any()} |
    {error, update_topic_refresh_schedule_errors(), tuple()}.
update_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), "/schedules/", aws_util:encode_uri(DatasetId), ""],
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

%% @doc Updates an Amazon Quick Sight user.
-spec update_user(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_user_request()) ->
    {ok, update_user_response(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, AwsAccountId, Namespace, UserName, Input) ->
    update_user(Client, AwsAccountId, Namespace, UserName, Input, []).

-spec update_user(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_user_request(), proplists:proplist()) ->
    {ok, update_user_response(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, AwsAccountId, Namespace, UserName, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/users/", aws_util:encode_uri(UserName), ""],
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

%% @doc Updates a custom permissions profile for a user.
-spec update_user_custom_permission(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_user_custom_permission_request()) ->
    {ok, update_user_custom_permission_response(), tuple()} |
    {error, any()} |
    {error, update_user_custom_permission_errors(), tuple()}.
update_user_custom_permission(Client, AwsAccountId, Namespace, UserName, Input) ->
    update_user_custom_permission(Client, AwsAccountId, Namespace, UserName, Input, []).

-spec update_user_custom_permission(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_user_custom_permission_request(), proplists:proplist()) ->
    {ok, update_user_custom_permission_response(), tuple()} |
    {error, any()} |
    {error, update_user_custom_permission_errors(), tuple()}.
update_user_custom_permission(Client, AwsAccountId, Namespace, UserName, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/users/", aws_util:encode_uri(UserName), "/custom-permission"],
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

%% @doc Updates a VPC connection.
-spec update_vpc_connection(aws_client:aws_client(), binary() | list(), binary() | list(), update_vpc_connection_request()) ->
    {ok, update_vpc_connection_response(), tuple()} |
    {error, any()} |
    {error, update_vpc_connection_errors(), tuple()}.
update_vpc_connection(Client, AwsAccountId, VPCConnectionId, Input) ->
    update_vpc_connection(Client, AwsAccountId, VPCConnectionId, Input, []).

-spec update_vpc_connection(aws_client:aws_client(), binary() | list(), binary() | list(), update_vpc_connection_request(), proplists:proplist()) ->
    {ok, update_vpc_connection_response(), tuple()} |
    {error, any()} |
    {error, update_vpc_connection_errors(), tuple()}.
update_vpc_connection(Client, AwsAccountId, VPCConnectionId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/vpc-connections/", aws_util:encode_uri(VPCConnectionId), ""],
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
    Client1 = Client#{service => <<"quicksight">>},
    Host = build_host(<<"quicksight">>, Client1),
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
