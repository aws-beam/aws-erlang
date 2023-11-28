%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon QuickSight API Reference
%%
%% Amazon QuickSight is a fully managed, serverless business intelligence
%% service for the Amazon Web Services Cloud that makes it easy to extend
%% data and insights to every user in your organization.
%%
%% This API reference contains documentation for a programming interface that
%% you can use to manage Amazon QuickSight.
-module(aws_quicksight).

-export([cancel_ingestion/5,
         cancel_ingestion/6,
         create_account_customization/3,
         create_account_customization/4,
         create_account_subscription/3,
         create_account_subscription/4,
         create_analysis/4,
         create_analysis/5,
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
         delete_account_customization/3,
         delete_account_customization/4,
         delete_account_subscription/3,
         delete_account_subscription/4,
         delete_analysis/4,
         delete_analysis/5,
         delete_dashboard/4,
         delete_dashboard/5,
         delete_data_set/4,
         delete_data_set/5,
         delete_data_set_refresh_properties/4,
         delete_data_set_refresh_properties/5,
         delete_data_source/4,
         delete_data_source/5,
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
         delete_vpc_connection/4,
         delete_vpc_connection/5,
         describe_account_customization/2,
         describe_account_customization/4,
         describe_account_customization/5,
         describe_account_settings/2,
         describe_account_settings/4,
         describe_account_settings/5,
         describe_account_subscription/2,
         describe_account_subscription/4,
         describe_account_subscription/5,
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
         describe_namespace/3,
         describe_namespace/5,
         describe_namespace/6,
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
         get_dashboard_embed_url/4,
         get_dashboard_embed_url/6,
         get_dashboard_embed_url/7,
         get_session_embed_url/2,
         get_session_embed_url/4,
         get_session_embed_url/5,
         list_analyses/2,
         list_analyses/4,
         list_analyses/5,
         list_asset_bundle_export_jobs/2,
         list_asset_bundle_export_jobs/4,
         list_asset_bundle_export_jobs/5,
         list_asset_bundle_import_jobs/2,
         list_asset_bundle_import_jobs/4,
         list_asset_bundle_import_jobs/5,
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
         list_folder_members/3,
         list_folder_members/5,
         list_folder_members/6,
         list_folders/2,
         list_folders/4,
         list_folders/5,
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
         put_data_set_refresh_properties/4,
         put_data_set_refresh_properties/5,
         register_user/4,
         register_user/5,
         restore_analysis/4,
         restore_analysis/5,
         search_analyses/3,
         search_analyses/4,
         search_dashboards/3,
         search_dashboards/4,
         search_data_sets/3,
         search_data_sets/4,
         search_data_sources/3,
         search_data_sources/4,
         search_folders/3,
         search_folders/4,
         search_groups/4,
         search_groups/5,
         start_asset_bundle_export_job/3,
         start_asset_bundle_export_job/4,
         start_asset_bundle_import_job/3,
         start_asset_bundle_import_job/4,
         start_dashboard_snapshot_job/4,
         start_dashboard_snapshot_job/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_account_customization/3,
         update_account_customization/4,
         update_account_settings/3,
         update_account_settings/4,
         update_analysis/4,
         update_analysis/5,
         update_analysis_permissions/4,
         update_analysis_permissions/5,
         update_dashboard/4,
         update_dashboard/5,
         update_dashboard_permissions/4,
         update_dashboard_permissions/5,
         update_dashboard_published_version/5,
         update_dashboard_published_version/6,
         update_data_set/4,
         update_data_set/5,
         update_data_set_permissions/4,
         update_data_set_permissions/5,
         update_data_source/4,
         update_data_source/5,
         update_data_source_permissions/4,
         update_data_source_permissions/5,
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
         update_public_sharing_settings/3,
         update_public_sharing_settings/4,
         update_refresh_schedule/4,
         update_refresh_schedule/5,
         update_role_custom_permission/5,
         update_role_custom_permission/6,
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
         update_vpc_connection/4,
         update_vpc_connection/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels an ongoing ingestion of data into SPICE.
cancel_ingestion(Client, AwsAccountId, DataSetId, IngestionId, Input) ->
    cancel_ingestion(Client, AwsAccountId, DataSetId, IngestionId, Input, []).
cancel_ingestion(Client, AwsAccountId, DataSetId, IngestionId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/ingestions/", aws_util:encode_uri(IngestionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates Amazon QuickSight customizations for the current Amazon Web
%% Services Region.
%%
%% Currently, you can add a custom default theme by using the
%% `CreateAccountCustomization' or `UpdateAccountCustomization' API
%% operation. To further customize Amazon QuickSight by removing Amazon
%% QuickSight sample assets and videos for all new users, see Customizing
%% Amazon QuickSight in the Amazon QuickSight User Guide.
%%
%% You can create customizations for your Amazon Web Services account or, if
%% you specify a namespace, for a QuickSight namespace instead.
%% Customizations that apply to a namespace always override customizations
%% that apply to an Amazon Web Services account. To find out which
%% customizations apply, use the `DescribeAccountCustomization' API
%% operation.
%%
%% Before you use the `CreateAccountCustomization' API operation to add a
%% theme as the namespace default, make sure that you first share the theme
%% with the namespace. If you don't share it with the namespace, the
%% theme isn't visible to your users even if you make it the default
%% theme. To check if the theme is shared, view the current permissions by
%% using the ` DescribeThemePermissions ' API operation. To share the
%% theme, grant permissions by using the ` UpdateThemePermissions ' API
%% operation.
create_account_customization(Client, AwsAccountId, Input) ->
    create_account_customization(Client, AwsAccountId, Input, []).
create_account_customization(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/customizations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"namespace">>, <<"Namespace">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Amazon QuickSight account, or subscribes to Amazon
%% QuickSight Q.
%%
%% The Amazon Web Services Region for the account is derived from what is
%% configured in the CLI or SDK. This operation isn't supported in the US
%% East (Ohio) Region, South America (Sao Paulo) Region, or Asia Pacific
%% (Singapore) Region.
%%
%% Before you use this operation, make sure that you can connect to an
%% existing Amazon Web Services account. If you don't have an Amazon Web
%% Services account, see Sign up for Amazon Web Services in the Amazon
%% QuickSight User Guide. The person who signs up for Amazon QuickSight needs
%% to have the correct Identity and Access Management (IAM) permissions. For
%% more information, see IAM Policy Examples for Amazon QuickSight in the
%% Amazon QuickSight User Guide.
%%
%% If your IAM policy includes both the `Subscribe' and
%% `CreateAccountSubscription' actions, make sure that both actions are
%% set to `Allow'. If either action is set to `Deny', the `Deny'
%% action prevails and your API call fails.
%%
%% You can't pass an existing IAM role to access other Amazon Web
%% Services services using this API operation. To pass your existing IAM role
%% to Amazon QuickSight, see Passing IAM roles to Amazon QuickSight in the
%% Amazon QuickSight User Guide.
%%
%% You can't set default resource access on the new account from the
%% Amazon QuickSight API. Instead, add default resource access from the
%% Amazon QuickSight console. For more information about setting default
%% resource access to Amazon Web Services services, see Setting default
%% resource access to Amazon Web Services services in the Amazon QuickSight
%% User Guide.
create_account_subscription(Client, AwsAccountId, Input) ->
    create_account_subscription(Client, AwsAccountId, Input, []).
create_account_subscription(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/account/", aws_util:encode_uri(AwsAccountId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an analysis in Amazon QuickSight.
%%
%% Analyses can be created either from a template or from an
%% `AnalysisDefinition'.
create_analysis(Client, AnalysisId, AwsAccountId, Input) ->
    create_analysis(Client, AnalysisId, AwsAccountId, Input, []).
create_analysis(Client, AnalysisId, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/analyses/", aws_util:encode_uri(AnalysisId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% To first create a template, see the ` CreateTemplate ' API operation.
%%
%% A dashboard is an entity in Amazon QuickSight that identifies Amazon
%% QuickSight reports, created from analyses. You can share Amazon QuickSight
%% dashboards. With the right permissions, you can create scheduled email
%% reports from them. If you have the correct permissions, you can create a
%% dashboard from a template that exists in a different Amazon Web Services
%% account.
create_dashboard(Client, AwsAccountId, DashboardId, Input) ->
    create_dashboard(Client, AwsAccountId, DashboardId, Input, []).
create_dashboard(Client, AwsAccountId, DashboardId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a dataset.
%%
%% This operation doesn't support datasets that include uploaded files as
%% a source.
create_data_set(Client, AwsAccountId, Input) ->
    create_data_set(Client, AwsAccountId, Input, []).
create_data_set(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a data source.
create_data_source(Client, AwsAccountId, Input) ->
    create_data_source(Client, AwsAccountId, Input, []).
create_data_source(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sources"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an empty shared folder.
create_folder(Client, AwsAccountId, FolderId, Input) ->
    create_folder(Client, AwsAccountId, FolderId, Input, []).
create_folder(Client, AwsAccountId, FolderId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds an asset, such as a dashboard, analysis, or dataset into a
%% folder.
create_folder_membership(Client, AwsAccountId, FolderId, MemberId, MemberType, Input) ->
    create_folder_membership(Client, AwsAccountId, FolderId, MemberId, MemberType, Input, []).
create_folder_membership(Client, AwsAccountId, FolderId, MemberId, MemberType, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), "/members/", aws_util:encode_uri(MemberType), "/", aws_util:encode_uri(MemberId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Use the `CreateGroup' operation to create a group in Amazon
%% QuickSight.
%%
%% You can create up to 10,000 groups in a namespace. If you want to create
%% more than 10,000 groups in a namespace, contact AWS Support.
%%
%% The permissions resource is
%% `arn:aws:quicksight:&lt;your-region&gt;:&lt;relevant-aws-account-id&gt;:group/default/&lt;group-name&gt;
%% '.
%%
%% The response is a group object.
create_group(Client, AwsAccountId, Namespace, Input) ->
    create_group(Client, AwsAccountId, Namespace, Input, []).
create_group(Client, AwsAccountId, Namespace, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/groups"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds an Amazon QuickSight user to an Amazon QuickSight group.
create_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, Input) ->
    create_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, Input, []).
create_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/groups/", aws_util:encode_uri(GroupName), "/members/", aws_util:encode_uri(MemberName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an assignment with one specified IAM policy, identified by
%% its Amazon Resource Name (ARN).
%%
%% This policy assignment is attached to the specified groups or users of
%% Amazon QuickSight. Assignment names are unique per Amazon Web Services
%% account. To avoid overwriting rules in other namespaces, use assignment
%% names that are unique.
create_iam_policy_assignment(Client, AwsAccountId, Namespace, Input) ->
    create_iam_policy_assignment(Client, AwsAccountId, Namespace, Input, []).
create_iam_policy_assignment(Client, AwsAccountId, Namespace, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/iam-policy-assignments/"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates and starts a new SPICE ingestion for a dataset.
%%
%% You can manually refresh datasets in an Enterprise edition account 32
%% times in a 24-hour period. You can manually refresh datasets in a Standard
%% edition account 8 times in a 24-hour period. Each 24-hour period is
%% measured starting 24 hours before the current date and time.
%%
%% Any ingestions operating on tagged datasets inherit the same tags
%% automatically for use in access control. For an example, see How do I
%% create an IAM policy to control access to Amazon EC2 resources using tags?
%% in the Amazon Web Services Knowledge Center. Tags are visible on the
%% tagged dataset, but not on the ingestion resource.
create_ingestion(Client, AwsAccountId, DataSetId, IngestionId, Input) ->
    create_ingestion(Client, AwsAccountId, DataSetId, IngestionId, Input, []).
create_ingestion(Client, AwsAccountId, DataSetId, IngestionId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/ingestions/", aws_util:encode_uri(IngestionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc (Enterprise edition only) Creates a new namespace for you to use with
%% Amazon QuickSight.
%%
%% A namespace allows you to isolate the Amazon QuickSight users and groups
%% that are registered for that namespace. Users that access the namespace
%% can share assets only with other users or groups in the same namespace.
%% They can't see users and groups in other namespaces. You can create a
%% namespace after your Amazon Web Services account is subscribed to Amazon
%% QuickSight. The namespace must be unique within the Amazon Web Services
%% account. By default, there is a limit of 100 namespaces per Amazon Web
%% Services account. To increase your limit, create a ticket with Amazon Web
%% Services Support.
create_namespace(Client, AwsAccountId, Input) ->
    create_namespace(Client, AwsAccountId, Input, []).
create_namespace(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
create_refresh_schedule(Client, AwsAccountId, DataSetId, Input) ->
    create_refresh_schedule(Client, AwsAccountId, DataSetId, Input, []).
create_refresh_schedule(Client, AwsAccountId, DataSetId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/refresh-schedules"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Use `CreateRoleMembership' to add an existing Amazon QuickSight
%% group to an existing role.
create_role_membership(Client, AwsAccountId, MemberName, Namespace, Role, Input) ->
    create_role_membership(Client, AwsAccountId, MemberName, Namespace, Role, Input, []).
create_role_membership(Client, AwsAccountId, MemberName, Namespace, Role, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/roles/", aws_util:encode_uri(Role), "/members/", aws_util:encode_uri(MemberName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a template either from a `TemplateDefinition' or from an
%% existing Amazon QuickSight analysis or template.
%%
%% You can use the resulting template to create additional dashboards,
%% templates, or analyses.
%%
%% A template is an entity in Amazon QuickSight that encapsulates the
%% metadata required to create an analysis and that you can use to create s
%% dashboard. A template adds a layer of abstraction by using placeholders to
%% replace the dataset associated with the analysis. You can use templates to
%% create dashboards by replacing dataset placeholders with datasets that
%% follow the same schema that was used to create the source analysis and
%% template.
create_template(Client, AwsAccountId, TemplateId, Input) ->
    create_template(Client, AwsAccountId, TemplateId, Input, []).
create_template(Client, AwsAccountId, TemplateId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a template alias for a template.
create_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input) ->
    create_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input, []).
create_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), "/aliases/", aws_util:encode_uri(AliasName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a theme.
%%
%% A theme is set of configuration options for color and layout. Themes apply
%% to analyses and dashboards. For more information, see Using Themes in
%% Amazon QuickSight in the Amazon QuickSight User Guide.
create_theme(Client, AwsAccountId, ThemeId, Input) ->
    create_theme(Client, AwsAccountId, ThemeId, Input, []).
create_theme(Client, AwsAccountId, ThemeId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a theme alias for a theme.
create_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input) ->
    create_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input, []).
create_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), "/aliases/", aws_util:encode_uri(AliasName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new Q topic.
create_topic(Client, AwsAccountId, Input) ->
    create_topic(Client, AwsAccountId, Input, []).
create_topic(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a topic refresh schedule.
create_topic_refresh_schedule(Client, AwsAccountId, TopicId, Input) ->
    create_topic_refresh_schedule(Client, AwsAccountId, TopicId, Input, []).
create_topic_refresh_schedule(Client, AwsAccountId, TopicId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), "/schedules"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new VPC connection.
create_vpc_connection(Client, AwsAccountId, Input) ->
    create_vpc_connection(Client, AwsAccountId, Input, []).
create_vpc_connection(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/vpc-connections"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes all Amazon QuickSight customizations in this Amazon Web
%% Services Region for the specified Amazon Web Services account and Amazon
%% QuickSight namespace.
delete_account_customization(Client, AwsAccountId, Input) ->
    delete_account_customization(Client, AwsAccountId, Input, []).
delete_account_customization(Client, AwsAccountId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/customizations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"namespace">>, <<"Namespace">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Use the `DeleteAccountSubscription' operation to delete an Amazon
%% QuickSight account.
%%
%% This operation will result in an error message if you have configured your
%% account termination protection settings to `True'. To change this
%% setting and delete your account, call the `UpdateAccountSettings' API
%% and set the value of the `TerminationProtectionEnabled' parameter to
%% `False', then make another call to the `DeleteAccountSubscription'
%% API.
delete_account_subscription(Client, AwsAccountId, Input) ->
    delete_account_subscription(Client, AwsAccountId, Input, []).
delete_account_subscription(Client, AwsAccountId, Input0, Options0) ->
    Method = delete,
    Path = ["/account/", aws_util:encode_uri(AwsAccountId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an analysis from Amazon QuickSight.
%%
%% You can optionally include a recovery window during which you can restore
%% the analysis. If you don't specify a recovery window value, the
%% operation defaults to 30 days. Amazon QuickSight attaches a
%% `DeletionTime' stamp to the response that specifies the end of the
%% recovery window. At the end of the recovery window, Amazon QuickSight
%% deletes the analysis permanently.
%%
%% At any time before recovery window ends, you can use the
%% `RestoreAnalysis' API operation to remove the `DeletionTime' stamp
%% and cancel the deletion of the analysis. The analysis remains visible in
%% the API until it's deleted, so you can describe it but you can't
%% make a template from it.
%%
%% An analysis that's scheduled for deletion isn't accessible in the
%% Amazon QuickSight console. To access it in the console, restore it.
%% Deleting an analysis doesn't delete the dashboards that you publish
%% from it.
delete_analysis(Client, AnalysisId, AwsAccountId, Input) ->
    delete_analysis(Client, AnalysisId, AwsAccountId, Input, []).
delete_analysis(Client, AnalysisId, AwsAccountId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/analyses/", aws_util:encode_uri(AnalysisId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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

%% @doc Deletes a dashboard.
delete_dashboard(Client, AwsAccountId, DashboardId, Input) ->
    delete_dashboard(Client, AwsAccountId, DashboardId, Input, []).
delete_dashboard(Client, AwsAccountId, DashboardId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
delete_data_set(Client, AwsAccountId, DataSetId, Input) ->
    delete_data_set(Client, AwsAccountId, DataSetId, Input, []).
delete_data_set(Client, AwsAccountId, DataSetId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the dataset refresh properties of the dataset.
delete_data_set_refresh_properties(Client, AwsAccountId, DataSetId, Input) ->
    delete_data_set_refresh_properties(Client, AwsAccountId, DataSetId, Input, []).
delete_data_set_refresh_properties(Client, AwsAccountId, DataSetId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/refresh-properties"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the data source permanently.
%%
%% This operation breaks all the datasets that reference the deleted data
%% source.
delete_data_source(Client, AwsAccountId, DataSourceId, Input) ->
    delete_data_source(Client, AwsAccountId, DataSourceId, Input, []).
delete_data_source(Client, AwsAccountId, DataSourceId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sources/", aws_util:encode_uri(DataSourceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an empty folder.
delete_folder(Client, AwsAccountId, FolderId, Input) ->
    delete_folder(Client, AwsAccountId, FolderId, Input, []).
delete_folder(Client, AwsAccountId, FolderId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes an asset, such as a dashboard, analysis, or dataset, from a
%% folder.
delete_folder_membership(Client, AwsAccountId, FolderId, MemberId, MemberType, Input) ->
    delete_folder_membership(Client, AwsAccountId, FolderId, MemberId, MemberType, Input, []).
delete_folder_membership(Client, AwsAccountId, FolderId, MemberId, MemberType, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), "/members/", aws_util:encode_uri(MemberType), "/", aws_util:encode_uri(MemberId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a user group from Amazon QuickSight.
delete_group(Client, AwsAccountId, GroupName, Namespace, Input) ->
    delete_group(Client, AwsAccountId, GroupName, Namespace, Input, []).
delete_group(Client, AwsAccountId, GroupName, Namespace, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/groups/", aws_util:encode_uri(GroupName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a user from a group so that the user is no longer a member of
%% the group.
delete_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, Input) ->
    delete_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, Input, []).
delete_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/groups/", aws_util:encode_uri(GroupName), "/members/", aws_util:encode_uri(MemberName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing IAM policy assignment.
delete_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Input) ->
    delete_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Input, []).
delete_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespace/", aws_util:encode_uri(Namespace), "/iam-policy-assignments/", aws_util:encode_uri(AssignmentName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes all access scopes and authorized targets that are associated
%% with a service from the Amazon QuickSight IAM Identity Center application.
%%
%% This operation is only supported for Amazon QuickSight accounts that use
%% IAM Identity Center.
delete_identity_propagation_config(Client, AwsAccountId, Service, Input) ->
    delete_identity_propagation_config(Client, AwsAccountId, Service, Input, []).
delete_identity_propagation_config(Client, AwsAccountId, Service, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/identity-propagation-config/", aws_util:encode_uri(Service), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% datasets and data sources are not deleted. To delete these assets, you use
%% the API operations for the relevant asset.
delete_namespace(Client, AwsAccountId, Namespace, Input) ->
    delete_namespace(Client, AwsAccountId, Namespace, Input, []).
delete_namespace(Client, AwsAccountId, Namespace, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a refresh schedule from a dataset.
delete_refresh_schedule(Client, AwsAccountId, DataSetId, ScheduleId, Input) ->
    delete_refresh_schedule(Client, AwsAccountId, DataSetId, ScheduleId, Input, []).
delete_refresh_schedule(Client, AwsAccountId, DataSetId, ScheduleId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/refresh-schedules/", aws_util:encode_uri(ScheduleId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes custom permissions from the role.
delete_role_custom_permission(Client, AwsAccountId, Namespace, Role, Input) ->
    delete_role_custom_permission(Client, AwsAccountId, Namespace, Role, Input, []).
delete_role_custom_permission(Client, AwsAccountId, Namespace, Role, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/roles/", aws_util:encode_uri(Role), "/custom-permission"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a group from a role.
delete_role_membership(Client, AwsAccountId, MemberName, Namespace, Role, Input) ->
    delete_role_membership(Client, AwsAccountId, MemberName, Namespace, Role, Input, []).
delete_role_membership(Client, AwsAccountId, MemberName, Namespace, Role, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/roles/", aws_util:encode_uri(Role), "/members/", aws_util:encode_uri(MemberName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a template.
delete_template(Client, AwsAccountId, TemplateId, Input) ->
    delete_template(Client, AwsAccountId, TemplateId, Input, []).
delete_template(Client, AwsAccountId, TemplateId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% If you provide a specific alias, you delete the version of the template
%% that the alias points to.
delete_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input) ->
    delete_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input, []).
delete_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), "/aliases/", aws_util:encode_uri(AliasName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a theme.
delete_theme(Client, AwsAccountId, ThemeId, Input) ->
    delete_theme(Client, AwsAccountId, ThemeId, Input, []).
delete_theme(Client, AwsAccountId, ThemeId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% If you provide a specific alias, you delete the version of the theme that
%% the alias points to.
delete_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input) ->
    delete_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input, []).
delete_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), "/aliases/", aws_util:encode_uri(AliasName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a topic.
delete_topic(Client, AwsAccountId, TopicId, Input) ->
    delete_topic(Client, AwsAccountId, TopicId, Input, []).
delete_topic(Client, AwsAccountId, TopicId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a topic refresh schedule.
delete_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId, Input) ->
    delete_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId, Input, []).
delete_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), "/schedules/", aws_util:encode_uri(DatasetId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the Amazon QuickSight user that is associated with the
%% identity of the IAM user or role that's making the call.
%%
%% The IAM user isn't deleted as a result of this call.
delete_user(Client, AwsAccountId, Namespace, UserName, Input) ->
    delete_user(Client, AwsAccountId, Namespace, UserName, Input, []).
delete_user(Client, AwsAccountId, Namespace, UserName, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/users/", aws_util:encode_uri(UserName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a user identified by its principal ID.
delete_user_by_principal_id(Client, AwsAccountId, Namespace, PrincipalId, Input) ->
    delete_user_by_principal_id(Client, AwsAccountId, Namespace, PrincipalId, Input, []).
delete_user_by_principal_id(Client, AwsAccountId, Namespace, PrincipalId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/user-principals/", aws_util:encode_uri(PrincipalId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a VPC connection.
delete_vpc_connection(Client, AwsAccountId, VPCConnectionId, Input) ->
    delete_vpc_connection(Client, AwsAccountId, VPCConnectionId, Input, []).
delete_vpc_connection(Client, AwsAccountId, VPCConnectionId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/vpc-connections/", aws_util:encode_uri(VPCConnectionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describes the customizations associated with the provided Amazon Web
%% Services account and Amazon Amazon QuickSight namespace in an Amazon Web
%% Services Region.
%%
%% The Amazon QuickSight console evaluates which customizations to apply by
%% running this API operation with the `Resolved' flag included.
%%
%% To determine what customizations display when you run this command, it can
%% help to visualize the relationship of the entities involved.
%%
%% <ul> <li> `Amazon Web Services account' - The Amazon Web Services
%% account exists at the top of the hierarchy. It has the potential to use
%% all of the Amazon Web Services Regions and Amazon Web Services Services.
%% When you subscribe to Amazon QuickSight, you choose one Amazon Web
%% Services Region to use as your home Region. That's where your free
%% SPICE capacity is located. You can use Amazon QuickSight in any supported
%% Amazon Web Services Region.
%%
%% </li> <li> `Amazon Web Services Region' - In each Amazon Web Services
%% Region where you sign in to Amazon QuickSight at least once, Amazon
%% QuickSight acts as a separate instance of the same service. If you have a
%% user directory, it resides in us-east-1, which is the US East (N.
%% Virginia). Generally speaking, these users have access to Amazon
%% QuickSight in any Amazon Web Services Region, unless they are constrained
%% to a namespace.
%%
%% To run the command in a different Amazon Web Services Region, you change
%% your Region settings. If you're using the CLI, you can use one of the
%% following options:
%%
%% <ul> <li> Use command line options.
%%
%% </li> <li> Use named profiles.
%%
%% </li> <li> Run `aws configure' to change your default Amazon Web
%% Services Region. Use Enter to key the same settings for your keys. For
%% more information, see Configuring the CLI.
%%
%% </li> </ul> </li> <li> `Namespace' - A QuickSight namespace is a
%% partition that contains users and assets (data sources, datasets,
%% dashboards, and so on). To access assets that are in a specific namespace,
%% users and groups must also be part of the same namespace. People who share
%% a namespace are completely isolated from users and assets in other
%% namespaces, even if they are in the same Amazon Web Services account and
%% Amazon Web Services Region.
%%
%% </li> <li> `Applied customizations' - Within an Amazon Web Services
%% Region, a set of Amazon QuickSight customizations can apply to an Amazon
%% Web Services account or to a namespace. Settings that you apply to a
%% namespace override settings that you apply to an Amazon Web Services
%% account. All settings are isolated to a single Amazon Web Services Region.
%% To apply them in other Amazon Web Services Regions, run the
%% `CreateAccountCustomization' command in each Amazon Web Services
%% Region where you want to apply the same customizations.
%%
%% </li> </ul>
describe_account_customization(Client, AwsAccountId)
  when is_map(Client) ->
    describe_account_customization(Client, AwsAccountId, #{}, #{}).

describe_account_customization(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_account_customization(Client, AwsAccountId, QueryMap, HeadersMap, []).

describe_account_customization(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/customizations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"namespace">>, maps:get(<<"namespace">>, QueryMap, undefined)},
        {<<"resolved">>, maps:get(<<"resolved">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the settings that were used when your Amazon QuickSight
%% subscription was first created in this Amazon Web Services account.
describe_account_settings(Client, AwsAccountId)
  when is_map(Client) ->
    describe_account_settings(Client, AwsAccountId, #{}, #{}).

describe_account_settings(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_account_settings(Client, AwsAccountId, QueryMap, HeadersMap, []).

describe_account_settings(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/settings"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Use the DescribeAccountSubscription operation to receive a
%% description of an Amazon QuickSight account's subscription.
%%
%% A successful API call returns an `AccountInfo' object that includes an
%% account's name, subscription status, authentication type, edition, and
%% notification email address.
describe_account_subscription(Client, AwsAccountId)
  when is_map(Client) ->
    describe_account_subscription(Client, AwsAccountId, #{}, #{}).

describe_account_subscription(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_account_subscription(Client, AwsAccountId, QueryMap, HeadersMap, []).

describe_account_subscription(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/account/", aws_util:encode_uri(AwsAccountId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a summary of the metadata for an analysis.
describe_analysis(Client, AnalysisId, AwsAccountId)
  when is_map(Client) ->
    describe_analysis(Client, AnalysisId, AwsAccountId, #{}, #{}).

describe_analysis(Client, AnalysisId, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_analysis(Client, AnalysisId, AwsAccountId, QueryMap, HeadersMap, []).

describe_analysis(Client, AnalysisId, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/analyses/", aws_util:encode_uri(AnalysisId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a detailed description of the definition of an analysis.
%%
%% If you do not need to know details about the content of an Analysis, for
%% instance if you are trying to check the status of a recently created or
%% updated Analysis, use the `DescribeAnalysis' instead.
describe_analysis_definition(Client, AnalysisId, AwsAccountId)
  when is_map(Client) ->
    describe_analysis_definition(Client, AnalysisId, AwsAccountId, #{}, #{}).

describe_analysis_definition(Client, AnalysisId, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_analysis_definition(Client, AnalysisId, AwsAccountId, QueryMap, HeadersMap, []).

describe_analysis_definition(Client, AnalysisId, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/analyses/", aws_util:encode_uri(AnalysisId), "/definition"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides the read and write permissions for an analysis.
describe_analysis_permissions(Client, AnalysisId, AwsAccountId)
  when is_map(Client) ->
    describe_analysis_permissions(Client, AnalysisId, AwsAccountId, #{}, #{}).

describe_analysis_permissions(Client, AnalysisId, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_analysis_permissions(Client, AnalysisId, AwsAccountId, QueryMap, HeadersMap, []).

describe_analysis_permissions(Client, AnalysisId, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/analyses/", aws_util:encode_uri(AnalysisId), "/permissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing export job.
%%
%% Poll job descriptions after a job starts to know the status of the job.
%% When a job succeeds, a URL is provided to download the exported
%% assets' data from. Download URLs are valid for five minutes after they
%% are generated. You can call the `DescribeAssetBundleExportJob' API for
%% a new download URL as needed.
%%
%% Job descriptions are available for 14 days after the job starts.
describe_asset_bundle_export_job(Client, AssetBundleExportJobId, AwsAccountId)
  when is_map(Client) ->
    describe_asset_bundle_export_job(Client, AssetBundleExportJobId, AwsAccountId, #{}, #{}).

describe_asset_bundle_export_job(Client, AssetBundleExportJobId, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_asset_bundle_export_job(Client, AssetBundleExportJobId, AwsAccountId, QueryMap, HeadersMap, []).

describe_asset_bundle_export_job(Client, AssetBundleExportJobId, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/asset-bundle-export-jobs/", aws_util:encode_uri(AssetBundleExportJobId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing import job.
%%
%% Poll job descriptions after starting a job to know when it has succeeded
%% or failed. Job descriptions are available for 14 days after job starts.
describe_asset_bundle_import_job(Client, AssetBundleImportJobId, AwsAccountId)
  when is_map(Client) ->
    describe_asset_bundle_import_job(Client, AssetBundleImportJobId, AwsAccountId, #{}, #{}).

describe_asset_bundle_import_job(Client, AssetBundleImportJobId, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_asset_bundle_import_job(Client, AssetBundleImportJobId, AwsAccountId, QueryMap, HeadersMap, []).

describe_asset_bundle_import_job(Client, AssetBundleImportJobId, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/asset-bundle-import-jobs/", aws_util:encode_uri(AssetBundleImportJobId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a summary for a dashboard.
describe_dashboard(Client, AwsAccountId, DashboardId)
  when is_map(Client) ->
    describe_dashboard(Client, AwsAccountId, DashboardId, #{}, #{}).

describe_dashboard(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dashboard(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap, []).

describe_dashboard(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% instance if you are trying to check the status of a recently created or
%% updated dashboard, use the `DescribeDashboard' instead.
describe_dashboard_definition(Client, AwsAccountId, DashboardId)
  when is_map(Client) ->
    describe_dashboard_definition(Client, AwsAccountId, DashboardId, #{}, #{}).

describe_dashboard_definition(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dashboard_definition(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap, []).

describe_dashboard_definition(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/definition"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"alias-name">>, maps:get(<<"alias-name">>, QueryMap, undefined)},
        {<<"version-number">>, maps:get(<<"version-number">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes read and write permissions for a dashboard.
describe_dashboard_permissions(Client, AwsAccountId, DashboardId)
  when is_map(Client) ->
    describe_dashboard_permissions(Client, AwsAccountId, DashboardId, #{}, #{}).

describe_dashboard_permissions(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dashboard_permissions(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap, []).

describe_dashboard_permissions(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/permissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing snapshot job.
%%
%% Poll job descriptions after a job starts to know the status of the job.
%% For information on available status codes, see `JobStatus'.
describe_dashboard_snapshot_job(Client, AwsAccountId, DashboardId, SnapshotJobId)
  when is_map(Client) ->
    describe_dashboard_snapshot_job(Client, AwsAccountId, DashboardId, SnapshotJobId, #{}, #{}).

describe_dashboard_snapshot_job(Client, AwsAccountId, DashboardId, SnapshotJobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dashboard_snapshot_job(Client, AwsAccountId, DashboardId, SnapshotJobId, QueryMap, HeadersMap, []).

describe_dashboard_snapshot_job(Client, AwsAccountId, DashboardId, SnapshotJobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/snapshot-jobs/", aws_util:encode_uri(SnapshotJobId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% says `Dashboard Snapshot Job with id &lt;SnapshotjobId&gt; has not reached
%% a terminal state.'.
describe_dashboard_snapshot_job_result(Client, AwsAccountId, DashboardId, SnapshotJobId)
  when is_map(Client) ->
    describe_dashboard_snapshot_job_result(Client, AwsAccountId, DashboardId, SnapshotJobId, #{}, #{}).

describe_dashboard_snapshot_job_result(Client, AwsAccountId, DashboardId, SnapshotJobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_dashboard_snapshot_job_result(Client, AwsAccountId, DashboardId, SnapshotJobId, QueryMap, HeadersMap, []).

describe_dashboard_snapshot_job_result(Client, AwsAccountId, DashboardId, SnapshotJobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/snapshot-jobs/", aws_util:encode_uri(SnapshotJobId), "/result"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a dataset.
%%
%% This operation doesn't support datasets that include uploaded files as
%% a source.
describe_data_set(Client, AwsAccountId, DataSetId)
  when is_map(Client) ->
    describe_data_set(Client, AwsAccountId, DataSetId, #{}, #{}).

describe_data_set(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_data_set(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap, []).

describe_data_set(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the permissions on a dataset.
%%
%% The permissions resource is
%% `arn:aws:quicksight:region:aws-account-id:dataset/data-set-id'.
describe_data_set_permissions(Client, AwsAccountId, DataSetId)
  when is_map(Client) ->
    describe_data_set_permissions(Client, AwsAccountId, DataSetId, #{}, #{}).

describe_data_set_permissions(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_data_set_permissions(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap, []).

describe_data_set_permissions(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/permissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the refresh properties of a dataset.
describe_data_set_refresh_properties(Client, AwsAccountId, DataSetId)
  when is_map(Client) ->
    describe_data_set_refresh_properties(Client, AwsAccountId, DataSetId, #{}, #{}).

describe_data_set_refresh_properties(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_data_set_refresh_properties(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap, []).

describe_data_set_refresh_properties(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/refresh-properties"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a data source.
describe_data_source(Client, AwsAccountId, DataSourceId)
  when is_map(Client) ->
    describe_data_source(Client, AwsAccountId, DataSourceId, #{}, #{}).

describe_data_source(Client, AwsAccountId, DataSourceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_data_source(Client, AwsAccountId, DataSourceId, QueryMap, HeadersMap, []).

describe_data_source(Client, AwsAccountId, DataSourceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sources/", aws_util:encode_uri(DataSourceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the resource permissions for a data source.
describe_data_source_permissions(Client, AwsAccountId, DataSourceId)
  when is_map(Client) ->
    describe_data_source_permissions(Client, AwsAccountId, DataSourceId, #{}, #{}).

describe_data_source_permissions(Client, AwsAccountId, DataSourceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_data_source_permissions(Client, AwsAccountId, DataSourceId, QueryMap, HeadersMap, []).

describe_data_source_permissions(Client, AwsAccountId, DataSourceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sources/", aws_util:encode_uri(DataSourceId), "/permissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a folder.
describe_folder(Client, AwsAccountId, FolderId)
  when is_map(Client) ->
    describe_folder(Client, AwsAccountId, FolderId, #{}, #{}).

describe_folder(Client, AwsAccountId, FolderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_folder(Client, AwsAccountId, FolderId, QueryMap, HeadersMap, []).

describe_folder(Client, AwsAccountId, FolderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes permissions for a folder.
describe_folder_permissions(Client, AwsAccountId, FolderId)
  when is_map(Client) ->
    describe_folder_permissions(Client, AwsAccountId, FolderId, #{}, #{}).

describe_folder_permissions(Client, AwsAccountId, FolderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_folder_permissions(Client, AwsAccountId, FolderId, QueryMap, HeadersMap, []).

describe_folder_permissions(Client, AwsAccountId, FolderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), "/permissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
describe_folder_resolved_permissions(Client, AwsAccountId, FolderId)
  when is_map(Client) ->
    describe_folder_resolved_permissions(Client, AwsAccountId, FolderId, #{}, #{}).

describe_folder_resolved_permissions(Client, AwsAccountId, FolderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_folder_resolved_permissions(Client, AwsAccountId, FolderId, QueryMap, HeadersMap, []).

describe_folder_resolved_permissions(Client, AwsAccountId, FolderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), "/resolved-permissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"namespace">>, maps:get(<<"namespace">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an Amazon QuickSight group's description and Amazon
%% Resource Name (ARN).
describe_group(Client, AwsAccountId, GroupName, Namespace)
  when is_map(Client) ->
    describe_group(Client, AwsAccountId, GroupName, Namespace, #{}, #{}).

describe_group(Client, AwsAccountId, GroupName, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_group(Client, AwsAccountId, GroupName, Namespace, QueryMap, HeadersMap, []).

describe_group(Client, AwsAccountId, GroupName, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/groups/", aws_util:encode_uri(GroupName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Use the `DescribeGroupMembership' operation to determine if a
%% user is a member of the specified group.
%%
%% If the user exists and is a member of the specified group, an associated
%% `GroupMember' object is returned.
describe_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace)
  when is_map(Client) ->
    describe_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, #{}, #{}).

describe_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, QueryMap, HeadersMap, []).

describe_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/groups/", aws_util:encode_uri(GroupName), "/members/", aws_util:encode_uri(MemberName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing IAM policy assignment, as specified by the
%% assignment name.
describe_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace)
  when is_map(Client) ->
    describe_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, #{}, #{}).

describe_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, QueryMap, HeadersMap, []).

describe_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/iam-policy-assignments/", aws_util:encode_uri(AssignmentName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a SPICE ingestion.
describe_ingestion(Client, AwsAccountId, DataSetId, IngestionId)
  when is_map(Client) ->
    describe_ingestion(Client, AwsAccountId, DataSetId, IngestionId, #{}, #{}).

describe_ingestion(Client, AwsAccountId, DataSetId, IngestionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_ingestion(Client, AwsAccountId, DataSetId, IngestionId, QueryMap, HeadersMap, []).

describe_ingestion(Client, AwsAccountId, DataSetId, IngestionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/ingestions/", aws_util:encode_uri(IngestionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a summary and status of IP rules.
describe_ip_restriction(Client, AwsAccountId)
  when is_map(Client) ->
    describe_ip_restriction(Client, AwsAccountId, #{}, #{}).

describe_ip_restriction(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_ip_restriction(Client, AwsAccountId, QueryMap, HeadersMap, []).

describe_ip_restriction(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/ip-restriction"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the current namespace.
describe_namespace(Client, AwsAccountId, Namespace)
  when is_map(Client) ->
    describe_namespace(Client, AwsAccountId, Namespace, #{}, #{}).

describe_namespace(Client, AwsAccountId, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_namespace(Client, AwsAccountId, Namespace, QueryMap, HeadersMap, []).

describe_namespace(Client, AwsAccountId, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a summary of a refresh schedule.
describe_refresh_schedule(Client, AwsAccountId, DataSetId, ScheduleId)
  when is_map(Client) ->
    describe_refresh_schedule(Client, AwsAccountId, DataSetId, ScheduleId, #{}, #{}).

describe_refresh_schedule(Client, AwsAccountId, DataSetId, ScheduleId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_refresh_schedule(Client, AwsAccountId, DataSetId, ScheduleId, QueryMap, HeadersMap, []).

describe_refresh_schedule(Client, AwsAccountId, DataSetId, ScheduleId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/refresh-schedules/", aws_util:encode_uri(ScheduleId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes all custom permissions that are mapped to a role.
describe_role_custom_permission(Client, AwsAccountId, Namespace, Role)
  when is_map(Client) ->
    describe_role_custom_permission(Client, AwsAccountId, Namespace, Role, #{}, #{}).

describe_role_custom_permission(Client, AwsAccountId, Namespace, Role, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_role_custom_permission(Client, AwsAccountId, Namespace, Role, QueryMap, HeadersMap, []).

describe_role_custom_permission(Client, AwsAccountId, Namespace, Role, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/roles/", aws_util:encode_uri(Role), "/custom-permission"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a template's metadata.
describe_template(Client, AwsAccountId, TemplateId)
  when is_map(Client) ->
    describe_template(Client, AwsAccountId, TemplateId, #{}, #{}).

describe_template(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_template(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap, []).

describe_template(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"alias-name">>, maps:get(<<"alias-name">>, QueryMap, undefined)},
        {<<"version-number">>, maps:get(<<"version-number">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the template alias for a template.
describe_template_alias(Client, AliasName, AwsAccountId, TemplateId)
  when is_map(Client) ->
    describe_template_alias(Client, AliasName, AwsAccountId, TemplateId, #{}, #{}).

describe_template_alias(Client, AliasName, AwsAccountId, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_template_alias(Client, AliasName, AwsAccountId, TemplateId, QueryMap, HeadersMap, []).

describe_template_alias(Client, AliasName, AwsAccountId, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), "/aliases/", aws_util:encode_uri(AliasName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a detailed description of the definition of a template.
%%
%% If you do not need to know details about the content of a template, for
%% instance if you are trying to check the status of a recently created or
%% updated template, use the `DescribeTemplate' instead.
describe_template_definition(Client, AwsAccountId, TemplateId)
  when is_map(Client) ->
    describe_template_definition(Client, AwsAccountId, TemplateId, #{}, #{}).

describe_template_definition(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_template_definition(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap, []).

describe_template_definition(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), "/definition"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"alias-name">>, maps:get(<<"alias-name">>, QueryMap, undefined)},
        {<<"version-number">>, maps:get(<<"version-number">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes read and write permissions on a template.
describe_template_permissions(Client, AwsAccountId, TemplateId)
  when is_map(Client) ->
    describe_template_permissions(Client, AwsAccountId, TemplateId, #{}, #{}).

describe_template_permissions(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_template_permissions(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap, []).

describe_template_permissions(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), "/permissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a theme.
describe_theme(Client, AwsAccountId, ThemeId)
  when is_map(Client) ->
    describe_theme(Client, AwsAccountId, ThemeId, #{}, #{}).

describe_theme(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_theme(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap, []).

describe_theme(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"alias-name">>, maps:get(<<"alias-name">>, QueryMap, undefined)},
        {<<"version-number">>, maps:get(<<"version-number">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the alias for a theme.
describe_theme_alias(Client, AliasName, AwsAccountId, ThemeId)
  when is_map(Client) ->
    describe_theme_alias(Client, AliasName, AwsAccountId, ThemeId, #{}, #{}).

describe_theme_alias(Client, AliasName, AwsAccountId, ThemeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_theme_alias(Client, AliasName, AwsAccountId, ThemeId, QueryMap, HeadersMap, []).

describe_theme_alias(Client, AliasName, AwsAccountId, ThemeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), "/aliases/", aws_util:encode_uri(AliasName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the read and write permissions for a theme.
describe_theme_permissions(Client, AwsAccountId, ThemeId)
  when is_map(Client) ->
    describe_theme_permissions(Client, AwsAccountId, ThemeId, #{}, #{}).

describe_theme_permissions(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_theme_permissions(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap, []).

describe_theme_permissions(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), "/permissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a topic.
describe_topic(Client, AwsAccountId, TopicId)
  when is_map(Client) ->
    describe_topic(Client, AwsAccountId, TopicId, #{}, #{}).

describe_topic(Client, AwsAccountId, TopicId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_topic(Client, AwsAccountId, TopicId, QueryMap, HeadersMap, []).

describe_topic(Client, AwsAccountId, TopicId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the permissions of a topic.
describe_topic_permissions(Client, AwsAccountId, TopicId)
  when is_map(Client) ->
    describe_topic_permissions(Client, AwsAccountId, TopicId, #{}, #{}).

describe_topic_permissions(Client, AwsAccountId, TopicId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_topic_permissions(Client, AwsAccountId, TopicId, QueryMap, HeadersMap, []).

describe_topic_permissions(Client, AwsAccountId, TopicId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), "/permissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the status of a topic refresh.
describe_topic_refresh(Client, AwsAccountId, RefreshId, TopicId)
  when is_map(Client) ->
    describe_topic_refresh(Client, AwsAccountId, RefreshId, TopicId, #{}, #{}).

describe_topic_refresh(Client, AwsAccountId, RefreshId, TopicId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_topic_refresh(Client, AwsAccountId, RefreshId, TopicId, QueryMap, HeadersMap, []).

describe_topic_refresh(Client, AwsAccountId, RefreshId, TopicId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), "/refresh/", aws_util:encode_uri(RefreshId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Deletes a topic refresh schedule.
describe_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId)
  when is_map(Client) ->
    describe_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId, #{}, #{}).

describe_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId, QueryMap, HeadersMap, []).

describe_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), "/schedules/", aws_util:encode_uri(DatasetId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a user, given the user name.
describe_user(Client, AwsAccountId, Namespace, UserName)
  when is_map(Client) ->
    describe_user(Client, AwsAccountId, Namespace, UserName, #{}, #{}).

describe_user(Client, AwsAccountId, Namespace, UserName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_user(Client, AwsAccountId, Namespace, UserName, QueryMap, HeadersMap, []).

describe_user(Client, AwsAccountId, Namespace, UserName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/users/", aws_util:encode_uri(UserName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a VPC connection.
describe_vpc_connection(Client, AwsAccountId, VPCConnectionId)
  when is_map(Client) ->
    describe_vpc_connection(Client, AwsAccountId, VPCConnectionId, #{}, #{}).

describe_vpc_connection(Client, AwsAccountId, VPCConnectionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_vpc_connection(Client, AwsAccountId, VPCConnectionId, QueryMap, HeadersMap, []).

describe_vpc_connection(Client, AwsAccountId, VPCConnectionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/vpc-connections/", aws_util:encode_uri(VPCConnectionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Generates an embed URL that you can use to embed an Amazon QuickSight
%% dashboard or visual in your website, without having to register any reader
%% users.
%%
%% Before you use this action, make sure that you have configured the
%% dashboards and permissions.
%%
%% The following rules apply to the generated URL:
%%
%% <ul> <li> It contains a temporary bearer token. It is valid for 5 minutes
%% after it is generated. Once redeemed within this period, it cannot be
%% re-used again.
%%
%% </li> <li> The URL validity period should not be confused with the actual
%% session lifetime that can be customized using the `
%% SessionLifetimeInMinutes ' parameter. The resulting user session is
%% valid for 15 minutes (minimum) to 10 hours (maximum). The default session
%% duration is 10 hours.
%%
%% </li> <li> You are charged only when the URL is used or there is
%% interaction with Amazon QuickSight.
%%
%% </li> </ul> For more information, see Embedded Analytics in the Amazon
%% QuickSight User Guide.
%%
%% For more information about the high-level steps for embedding and for an
%% interactive demo of the ways you can customize embedding, visit the Amazon
%% QuickSight Developer Portal.
generate_embed_url_for_anonymous_user(Client, AwsAccountId, Input) ->
    generate_embed_url_for_anonymous_user(Client, AwsAccountId, Input, []).
generate_embed_url_for_anonymous_user(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/embed-url/anonymous-user"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Generates an embed URL that you can use to embed an Amazon QuickSight
%% experience in your website.
%%
%% This action can be used for any type of user registered in an Amazon
%% QuickSight account. Before you use this action, make sure that you have
%% configured the relevant Amazon QuickSight resource and permissions.
%%
%% The following rules apply to the generated URL:
%%
%% <ul> <li> It contains a temporary bearer token. It is valid for 5 minutes
%% after it is generated. Once redeemed within this period, it cannot be
%% re-used again.
%%
%% </li> <li> The URL validity period should not be confused with the actual
%% session lifetime that can be customized using the `
%% SessionLifetimeInMinutes ' parameter.
%%
%% The resulting user session is valid for 15 minutes (minimum) to 10 hours
%% (maximum). The default session duration is 10 hours.
%%
%% </li> <li> You are charged only when the URL is used or there is
%% interaction with Amazon QuickSight.
%%
%% </li> </ul> For more information, see Embedded Analytics in the Amazon
%% QuickSight User Guide.
%%
%% For more information about the high-level steps for embedding and for an
%% interactive demo of the ways you can customize embedding, visit the Amazon
%% QuickSight Developer Portal.
generate_embed_url_for_registered_user(Client, AwsAccountId, Input) ->
    generate_embed_url_for_registered_user(Client, AwsAccountId, Input, []).
generate_embed_url_for_registered_user(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/embed-url/registered-user"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Generates a temporary session URL and authorization code(bearer
%% token) that you can use to embed an Amazon QuickSight read-only dashboard
%% in your website or application.
%%
%% Before you use this command, make sure that you have configured the
%% dashboards and permissions.
%%
%% Currently, you can use `GetDashboardEmbedURL' only from the server,
%% not from the user's browser. The following rules apply to the
%% generated URL:
%%
%% <ul> <li> They must be used together.
%%
%% </li> <li> They can be used one time only.
%%
%% </li> <li> They are valid for 5 minutes after you run this command.
%%
%% </li> <li> You are charged only when the URL is used or there is
%% interaction with Amazon QuickSight.
%%
%% </li> <li> The resulting user session is valid for 15 minutes (default) up
%% to 10 hours (maximum). You can use the optional
%% `SessionLifetimeInMinutes' parameter to customize session duration.
%%
%% </li> </ul> For more information, see Embedding Analytics Using
%% GetDashboardEmbedUrl in the Amazon QuickSight User Guide.
%%
%% For more information about the high-level steps for embedding and for an
%% interactive demo of the ways you can customize embedding, visit the Amazon
%% QuickSight Developer Portal.
get_dashboard_embed_url(Client, AwsAccountId, DashboardId, IdentityType)
  when is_map(Client) ->
    get_dashboard_embed_url(Client, AwsAccountId, DashboardId, IdentityType, #{}, #{}).

get_dashboard_embed_url(Client, AwsAccountId, DashboardId, IdentityType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_dashboard_embed_url(Client, AwsAccountId, DashboardId, IdentityType, QueryMap, HeadersMap, []).

get_dashboard_embed_url(Client, AwsAccountId, DashboardId, IdentityType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/embed-url"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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

%% @doc Generates a session URL and authorization code that you can use to
%% embed the Amazon Amazon QuickSight console in your web server code.
%%
%% Use `GetSessionEmbedUrl' where you want to provide an authoring portal
%% that allows users to create data sources, datasets, analyses, and
%% dashboards. The users who access an embedded Amazon QuickSight console
%% need belong to the author or admin security cohort. If you want to
%% restrict permissions to some of these features, add a custom permissions
%% profile to the user with the ` UpdateUser ' API operation. Use `
%% RegisterUser ' API operation to add a new user with a custom
%% permission profile attached. For more information, see the following
%% sections in the Amazon QuickSight User Guide:
%%
%% <ul> <li> Embedding Analytics
%%
%% </li> <li> Customizing Access to the Amazon QuickSight Console
%%
%% </li> </ul>
get_session_embed_url(Client, AwsAccountId)
  when is_map(Client) ->
    get_session_embed_url(Client, AwsAccountId, #{}, #{}).

get_session_embed_url(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_session_embed_url(Client, AwsAccountId, QueryMap, HeadersMap, []).

get_session_embed_url(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/session-embed-url"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"entry-point">>, maps:get(<<"entry-point">>, QueryMap, undefined)},
        {<<"session-lifetime">>, maps:get(<<"session-lifetime">>, QueryMap, undefined)},
        {<<"user-arn">>, maps:get(<<"user-arn">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Amazon QuickSight analyses that exist in the specified Amazon
%% Web Services account.
list_analyses(Client, AwsAccountId)
  when is_map(Client) ->
    list_analyses(Client, AwsAccountId, #{}, #{}).

list_analyses(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_analyses(Client, AwsAccountId, QueryMap, HeadersMap, []).

list_analyses(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/analyses"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Jobs created more than 14 days ago are deleted forever and are not
%% returned. If you are using the same job ID for multiple jobs,
%% `ListAssetBundleExportJobs' only returns the most recent job that uses
%% the repeated job ID.
list_asset_bundle_export_jobs(Client, AwsAccountId)
  when is_map(Client) ->
    list_asset_bundle_export_jobs(Client, AwsAccountId, #{}, #{}).

list_asset_bundle_export_jobs(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_asset_bundle_export_jobs(Client, AwsAccountId, QueryMap, HeadersMap, []).

list_asset_bundle_export_jobs(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/asset-bundle-export-jobs"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
%% Jobs created more than 14 days ago are deleted forever and are not
%% returned. If you are using the same job ID for multiple jobs,
%% `ListAssetBundleImportJobs' only returns the most recent job that uses
%% the repeated job ID.
list_asset_bundle_import_jobs(Client, AwsAccountId)
  when is_map(Client) ->
    list_asset_bundle_import_jobs(Client, AwsAccountId, #{}, #{}).

list_asset_bundle_import_jobs(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_asset_bundle_import_jobs(Client, AwsAccountId, QueryMap, HeadersMap, []).

list_asset_bundle_import_jobs(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/asset-bundle-import-jobs"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the versions of the dashboards in the Amazon QuickSight
%% subscription.
list_dashboard_versions(Client, AwsAccountId, DashboardId)
  when is_map(Client) ->
    list_dashboard_versions(Client, AwsAccountId, DashboardId, #{}, #{}).

list_dashboard_versions(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_dashboard_versions(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap, []).

list_dashboard_versions(Client, AwsAccountId, DashboardId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/versions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists dashboards in an Amazon Web Services account.
list_dashboards(Client, AwsAccountId)
  when is_map(Client) ->
    list_dashboards(Client, AwsAccountId, #{}, #{}).

list_dashboards(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_dashboards(Client, AwsAccountId, QueryMap, HeadersMap, []).

list_dashboards(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the datasets belonging to the current Amazon Web
%% Services account in an Amazon Web Services Region.
%%
%% The permissions resource is
%% `arn:aws:quicksight:region:aws-account-id:dataset/*'.
list_data_sets(Client, AwsAccountId)
  when is_map(Client) ->
    list_data_sets(Client, AwsAccountId, #{}, #{}).

list_data_sets(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_sets(Client, AwsAccountId, QueryMap, HeadersMap, []).

list_data_sets(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
list_data_sources(Client, AwsAccountId)
  when is_map(Client) ->
    list_data_sources(Client, AwsAccountId, #{}, #{}).

list_data_sources(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_sources(Client, AwsAccountId, QueryMap, HeadersMap, []).

list_data_sources(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sources"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
list_folder_members(Client, AwsAccountId, FolderId)
  when is_map(Client) ->
    list_folder_members(Client, AwsAccountId, FolderId, #{}, #{}).

list_folder_members(Client, AwsAccountId, FolderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_folder_members(Client, AwsAccountId, FolderId, QueryMap, HeadersMap, []).

list_folder_members(Client, AwsAccountId, FolderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), "/members"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all folders in an account.
list_folders(Client, AwsAccountId)
  when is_map(Client) ->
    list_folders(Client, AwsAccountId, #{}, #{}).

list_folders(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_folders(Client, AwsAccountId, QueryMap, HeadersMap, []).

list_folders(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists member users in a group.
list_group_memberships(Client, AwsAccountId, GroupName, Namespace)
  when is_map(Client) ->
    list_group_memberships(Client, AwsAccountId, GroupName, Namespace, #{}, #{}).

list_group_memberships(Client, AwsAccountId, GroupName, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_group_memberships(Client, AwsAccountId, GroupName, Namespace, QueryMap, HeadersMap, []).

list_group_memberships(Client, AwsAccountId, GroupName, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/groups/", aws_util:encode_uri(GroupName), "/members"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all user groups in Amazon QuickSight.
list_groups(Client, AwsAccountId, Namespace)
  when is_map(Client) ->
    list_groups(Client, AwsAccountId, Namespace, #{}, #{}).

list_groups(Client, AwsAccountId, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_groups(Client, AwsAccountId, Namespace, QueryMap, HeadersMap, []).

list_groups(Client, AwsAccountId, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/groups"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the IAM policy assignments in the current Amazon QuickSight
%% account.
list_iam_policy_assignments(Client, AwsAccountId, Namespace)
  when is_map(Client) ->
    list_iam_policy_assignments(Client, AwsAccountId, Namespace, #{}, #{}).

list_iam_policy_assignments(Client, AwsAccountId, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_iam_policy_assignments(Client, AwsAccountId, Namespace, QueryMap, HeadersMap, []).

list_iam_policy_assignments(Client, AwsAccountId, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/v2/iam-policy-assignments"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"assignment-status">>, maps:get(<<"assignment-status">>, QueryMap, undefined)},
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the IAM policy assignments, including the Amazon
%% Resource Names (ARNs), for the IAM policies assigned to the specified user
%% and group, or groups that the user belongs to.
list_iam_policy_assignments_for_user(Client, AwsAccountId, Namespace, UserName)
  when is_map(Client) ->
    list_iam_policy_assignments_for_user(Client, AwsAccountId, Namespace, UserName, #{}, #{}).

list_iam_policy_assignments_for_user(Client, AwsAccountId, Namespace, UserName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_iam_policy_assignments_for_user(Client, AwsAccountId, Namespace, UserName, QueryMap, HeadersMap, []).

list_iam_policy_assignments_for_user(Client, AwsAccountId, Namespace, UserName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/users/", aws_util:encode_uri(UserName), "/iam-policy-assignments"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all services and authorized targets that the Amazon QuickSight
%% IAM Identity Center application can access.
%%
%% This operation is only supported for Amazon QuickSight accounts that use
%% IAM Identity Center.
list_identity_propagation_configs(Client, AwsAccountId)
  when is_map(Client) ->
    list_identity_propagation_configs(Client, AwsAccountId, #{}, #{}).

list_identity_propagation_configs(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_identity_propagation_configs(Client, AwsAccountId, QueryMap, HeadersMap, []).

list_identity_propagation_configs(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/identity-propagation-config"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the history of SPICE ingestions for a dataset.
list_ingestions(Client, AwsAccountId, DataSetId)
  when is_map(Client) ->
    list_ingestions(Client, AwsAccountId, DataSetId, #{}, #{}).

list_ingestions(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ingestions(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap, []).

list_ingestions(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/ingestions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
list_namespaces(Client, AwsAccountId)
  when is_map(Client) ->
    list_namespaces(Client, AwsAccountId, #{}, #{}).

list_namespaces(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_namespaces(Client, AwsAccountId, QueryMap, HeadersMap, []).

list_namespaces(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
list_refresh_schedules(Client, AwsAccountId, DataSetId)
  when is_map(Client) ->
    list_refresh_schedules(Client, AwsAccountId, DataSetId, #{}, #{}).

list_refresh_schedules(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_refresh_schedules(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap, []).

list_refresh_schedules(Client, AwsAccountId, DataSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/refresh-schedules"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all groups that are associated with a role.
list_role_memberships(Client, AwsAccountId, Namespace, Role)
  when is_map(Client) ->
    list_role_memberships(Client, AwsAccountId, Namespace, Role, #{}, #{}).

list_role_memberships(Client, AwsAccountId, Namespace, Role, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_role_memberships(Client, AwsAccountId, Namespace, Role, QueryMap, HeadersMap, []).

list_role_memberships(Client, AwsAccountId, Namespace, Role, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/roles/", aws_util:encode_uri(Role), "/members"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags assigned to a resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resources/", aws_util:encode_uri(ResourceArn), "/tags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the aliases of a template.
list_template_aliases(Client, AwsAccountId, TemplateId)
  when is_map(Client) ->
    list_template_aliases(Client, AwsAccountId, TemplateId, #{}, #{}).

list_template_aliases(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_template_aliases(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap, []).

list_template_aliases(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), "/aliases"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-result">>, maps:get(<<"max-result">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the versions of the templates in the current Amazon
%% QuickSight account.
list_template_versions(Client, AwsAccountId, TemplateId)
  when is_map(Client) ->
    list_template_versions(Client, AwsAccountId, TemplateId, #{}, #{}).

list_template_versions(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_template_versions(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap, []).

list_template_versions(Client, AwsAccountId, TemplateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), "/versions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the templates in the current Amazon QuickSight account.
list_templates(Client, AwsAccountId)
  when is_map(Client) ->
    list_templates(Client, AwsAccountId, #{}, #{}).

list_templates(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_templates(Client, AwsAccountId, QueryMap, HeadersMap, []).

list_templates(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-result">>, maps:get(<<"max-result">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the aliases of a theme.
list_theme_aliases(Client, AwsAccountId, ThemeId)
  when is_map(Client) ->
    list_theme_aliases(Client, AwsAccountId, ThemeId, #{}, #{}).

list_theme_aliases(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_theme_aliases(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap, []).

list_theme_aliases(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), "/aliases"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
list_theme_versions(Client, AwsAccountId, ThemeId)
  when is_map(Client) ->
    list_theme_versions(Client, AwsAccountId, ThemeId, #{}, #{}).

list_theme_versions(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_theme_versions(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap, []).

list_theme_versions(Client, AwsAccountId, ThemeId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), "/versions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the themes in the current Amazon Web Services account.
list_themes(Client, AwsAccountId)
  when is_map(Client) ->
    list_themes(Client, AwsAccountId, #{}, #{}).

list_themes(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_themes(Client, AwsAccountId, QueryMap, HeadersMap, []).

list_themes(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

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
list_topic_refresh_schedules(Client, AwsAccountId, TopicId)
  when is_map(Client) ->
    list_topic_refresh_schedules(Client, AwsAccountId, TopicId, #{}, #{}).

list_topic_refresh_schedules(Client, AwsAccountId, TopicId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_topic_refresh_schedules(Client, AwsAccountId, TopicId, QueryMap, HeadersMap, []).

list_topic_refresh_schedules(Client, AwsAccountId, TopicId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), "/schedules"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the topics within an account.
list_topics(Client, AwsAccountId)
  when is_map(Client) ->
    list_topics(Client, AwsAccountId, #{}, #{}).

list_topics(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_topics(Client, AwsAccountId, QueryMap, HeadersMap, []).

list_topics(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon QuickSight groups that an Amazon QuickSight user is
%% a member of.
list_user_groups(Client, AwsAccountId, Namespace, UserName)
  when is_map(Client) ->
    list_user_groups(Client, AwsAccountId, Namespace, UserName, #{}, #{}).

list_user_groups(Client, AwsAccountId, Namespace, UserName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_user_groups(Client, AwsAccountId, Namespace, UserName, QueryMap, HeadersMap, []).

list_user_groups(Client, AwsAccountId, Namespace, UserName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/users/", aws_util:encode_uri(UserName), "/groups"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all of the Amazon QuickSight users belonging to
%% this account.
list_users(Client, AwsAccountId, Namespace)
  when is_map(Client) ->
    list_users(Client, AwsAccountId, Namespace, #{}, #{}).

list_users(Client, AwsAccountId, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_users(Client, AwsAccountId, Namespace, QueryMap, HeadersMap, []).

list_users(Client, AwsAccountId, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/users"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the VPC connections in the current set Amazon Web
%% Services Region of an Amazon Web Services account.
list_vpc_connections(Client, AwsAccountId)
  when is_map(Client) ->
    list_vpc_connections(Client, AwsAccountId, #{}, #{}).

list_vpc_connections(Client, AwsAccountId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_vpc_connections(Client, AwsAccountId, QueryMap, HeadersMap, []).

list_vpc_connections(Client, AwsAccountId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/vpc-connections"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, maps:get(<<"max-results">>, QueryMap, undefined)},
        {<<"next-token">>, maps:get(<<"next-token">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates or updates the dataset refresh properties for the dataset.
put_data_set_refresh_properties(Client, AwsAccountId, DataSetId, Input) ->
    put_data_set_refresh_properties(Client, AwsAccountId, DataSetId, Input, []).
put_data_set_refresh_properties(Client, AwsAccountId, DataSetId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/refresh-properties"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Amazon QuickSight user whose identity is associated with
%% the Identity and Access Management (IAM) identity or role specified in the
%% request.
%%
%% When you register a new user from the Amazon QuickSight API, Amazon
%% QuickSight generates a registration URL. The user accesses this
%% registration URL to create their account. Amazon QuickSight doesn't
%% send a registration email to users who are registered from the Amazon
%% QuickSight API. If you want new users to receive a registration email,
%% then add those users in the Amazon QuickSight console. For more
%% information on registering a new user in the Amazon QuickSight console,
%% see Inviting users to access Amazon QuickSight.
register_user(Client, AwsAccountId, Namespace, Input) ->
    register_user(Client, AwsAccountId, Namespace, Input, []).
register_user(Client, AwsAccountId, Namespace, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/users"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Restores an analysis.
restore_analysis(Client, AnalysisId, AwsAccountId, Input) ->
    restore_analysis(Client, AnalysisId, AwsAccountId, Input, []).
restore_analysis(Client, AnalysisId, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/restore/analyses/", aws_util:encode_uri(AnalysisId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches for analyses that belong to the user specified in the
%% filter.
%%
%% This operation is eventually consistent. The results are best effort and
%% may not reflect very recent updates and changes.
search_analyses(Client, AwsAccountId, Input) ->
    search_analyses(Client, AwsAccountId, Input, []).
search_analyses(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/search/analyses"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% may not reflect very recent updates and changes.
search_dashboards(Client, AwsAccountId, Input) ->
    search_dashboards(Client, AwsAccountId, Input, []).
search_dashboards(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/search/dashboards"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Use the `SearchDataSets' operation to search for datasets that
%% belong to an account.
search_data_sets(Client, AwsAccountId, Input) ->
    search_data_sets(Client, AwsAccountId, Input, []).
search_data_sets(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/search/data-sets"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Use the `SearchDataSources' operation to search for data sources
%% that belong to an account.
search_data_sources(Client, AwsAccountId, Input) ->
    search_data_sources(Client, AwsAccountId, Input, []).
search_data_sources(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/search/data-sources"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches the subfolders in a folder.
search_folders(Client, AwsAccountId, Input) ->
    search_folders(Client, AwsAccountId, Input, []).
search_folders(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/search/folders"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Use the `SearchGroups' operation to search groups in a specified
%% Amazon QuickSight namespace using the supplied filters.
search_groups(Client, AwsAccountId, Namespace, Input) ->
    search_groups(Client, AwsAccountId, Namespace, Input, []).
search_groups(Client, AwsAccountId, Namespace, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/groups-search"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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

%% @doc Starts an Asset Bundle export job.
%%
%% An Asset Bundle export job exports specified Amazon QuickSight assets. You
%% can also choose to export any asset dependencies in the same job. Export
%% jobs run asynchronously and can be polled with a
%% `DescribeAssetBundleExportJob' API call. When a job is successfully
%% completed, a download URL that contains the exported assets is returned.
%% The URL is valid for 5 minutes and can be refreshed with a
%% `DescribeAssetBundleExportJob' API call. Each Amazon QuickSight
%% account can run up to 5 export jobs concurrently.
%%
%% The API caller must have the necessary permissions in their IAM role to
%% access each resource before the resources can be exported.
start_asset_bundle_export_job(Client, AwsAccountId, Input) ->
    start_asset_bundle_export_job(Client, AwsAccountId, Input, []).
start_asset_bundle_export_job(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/asset-bundle-export-jobs/export"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts an Asset Bundle import job.
%%
%% An Asset Bundle import job imports specified Amazon QuickSight assets into
%% an Amazon QuickSight account. You can also choose to import a naming
%% prefix and specified configuration overrides. The assets that are
%% contained in the bundle file that you provide are used to create or update
%% a new or existing asset in your Amazon QuickSight account. Each Amazon
%% QuickSight account can run up to 5 import jobs concurrently.
%%
%% The API caller must have the necessary `&quot;create&quot;',
%% `&quot;describe&quot;', and `&quot;update&quot;' permissions in
%% their IAM role to access each resource type that is contained in the
%% bundle file before the resources can be imported.
start_asset_bundle_import_job(Client, AwsAccountId, Input) ->
    start_asset_bundle_import_job(Client, AwsAccountId, Input, []).
start_asset_bundle_import_job(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/asset-bundle-import-jobs/import"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts an asynchronous job that generates a dashboard snapshot.
%%
%% You can request one of the following format configurations per API call.
%%
%% <ul> <li> 1 paginated PDF
%%
%% </li> <li> 1 Excel workbook
%%
%% </li> <li> 5 CSVs
%%
%% </li> </ul> Poll job descriptions with a
%% `DescribeDashboardSnapshotJob' API call. Once the job succeeds, use
%% the `DescribeDashboardSnapshotJobResult' API to obtain the download
%% URIs that the job generates.
start_dashboard_snapshot_job(Client, AwsAccountId, DashboardId, Input) ->
    start_dashboard_snapshot_job(Client, AwsAccountId, DashboardId, Input, []).
start_dashboard_snapshot_job(Client, AwsAccountId, DashboardId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/snapshot-jobs"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Assigns one or more tags (key-value pairs) to the specified Amazon
%% QuickSight resource.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope user permissions, by granting a user permission to access or
%% change only resources with certain tag values. You can use the
%% `TagResource' operation with a resource that already has tags. If you
%% specify a new tag key for the resource, this tag is appended to the list
%% of tags associated with the resource. If you specify a tag key that is
%% already associated with the resource, the new tag value that you specify
%% replaces the previous value for that tag.
%%
%% You can associate as many as 50 tags with a resource. Amazon QuickSight
%% supports tagging on data set, data source, dashboard, template, topic, and
%% user.
%%
%% Tagging for Amazon QuickSight works in a similar way to tagging for other
%% Amazon Web Services services, except for the following:
%%
%% <ul> <li> Tags are used to track costs for users in Amazon QuickSight. You
%% can't tag other resources that Amazon QuickSight costs are based on,
%% such as storage capacoty (SPICE), session usage, alert consumption, or
%% reporting units.
%%
%% </li> <li> Amazon QuickSight doesn't currently support the tag editor
%% for Resource Groups.
%%
%% </li> </ul>
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/resources/", aws_util:encode_uri(ResourceArn), "/tags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a tag or tags from a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/resources/", aws_util:encode_uri(ResourceArn), "/tags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"keys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates Amazon QuickSight customizations for the current Amazon Web
%% Services Region.
%%
%% Currently, the only customization that you can use is a theme.
%%
%% You can use customizations for your Amazon Web Services account or, if you
%% specify a namespace, for a Amazon QuickSight namespace instead.
%% Customizations that apply to a namespace override customizations that
%% apply to an Amazon Web Services account. To find out which customizations
%% apply, use the `DescribeAccountCustomization' API operation.
update_account_customization(Client, AwsAccountId, Input) ->
    update_account_customization(Client, AwsAccountId, Input, []).
update_account_customization(Client, AwsAccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/customizations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"namespace">>, <<"Namespace">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the Amazon QuickSight settings in your Amazon Web Services
%% account.
update_account_settings(Client, AwsAccountId, Input) ->
    update_account_settings(Client, AwsAccountId, Input, []).
update_account_settings(Client, AwsAccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/settings"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an analysis in Amazon QuickSight
update_analysis(Client, AnalysisId, AwsAccountId, Input) ->
    update_analysis(Client, AnalysisId, AwsAccountId, Input, []).
update_analysis(Client, AnalysisId, AwsAccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/analyses/", aws_util:encode_uri(AnalysisId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the read and write permissions for an analysis.
update_analysis_permissions(Client, AnalysisId, AwsAccountId, Input) ->
    update_analysis_permissions(Client, AnalysisId, AwsAccountId, Input, []).
update_analysis_permissions(Client, AnalysisId, AwsAccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/analyses/", aws_util:encode_uri(AnalysisId), "/permissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
%% immediately publish the new version. You can update the published version
%% of a dashboard by using the ` UpdateDashboardPublishedVersion ' API
%% operation.
update_dashboard(Client, AwsAccountId, DashboardId, Input) ->
    update_dashboard(Client, AwsAccountId, DashboardId, Input, []).
update_dashboard(Client, AwsAccountId, DashboardId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates read and write permissions on a dashboard.
update_dashboard_permissions(Client, AwsAccountId, DashboardId, Input) ->
    update_dashboard_permissions(Client, AwsAccountId, DashboardId, Input, []).
update_dashboard_permissions(Client, AwsAccountId, DashboardId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/permissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the published version of a dashboard.
update_dashboard_published_version(Client, AwsAccountId, DashboardId, VersionNumber, Input) ->
    update_dashboard_published_version(Client, AwsAccountId, DashboardId, VersionNumber, Input, []).
update_dashboard_published_version(Client, AwsAccountId, DashboardId, VersionNumber, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/versions/", aws_util:encode_uri(VersionNumber), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a dataset.
%%
%% This operation doesn't support datasets that include uploaded files as
%% a source. Partial updates are not supported by this operation.
update_data_set(Client, AwsAccountId, DataSetId, Input) ->
    update_data_set(Client, AwsAccountId, DataSetId, Input, []).
update_data_set(Client, AwsAccountId, DataSetId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
update_data_set_permissions(Client, AwsAccountId, DataSetId, Input) ->
    update_data_set_permissions(Client, AwsAccountId, DataSetId, Input, []).
update_data_set_permissions(Client, AwsAccountId, DataSetId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/permissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a data source.
update_data_source(Client, AwsAccountId, DataSourceId, Input) ->
    update_data_source(Client, AwsAccountId, DataSourceId, Input, []).
update_data_source(Client, AwsAccountId, DataSourceId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sources/", aws_util:encode_uri(DataSourceId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the permissions to a data source.
update_data_source_permissions(Client, AwsAccountId, DataSourceId, Input) ->
    update_data_source_permissions(Client, AwsAccountId, DataSourceId, Input, []).
update_data_source_permissions(Client, AwsAccountId, DataSourceId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sources/", aws_util:encode_uri(DataSourceId), "/permissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the name of a folder.
update_folder(Client, AwsAccountId, FolderId, Input) ->
    update_folder(Client, AwsAccountId, FolderId, Input, []).
update_folder(Client, AwsAccountId, FolderId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates permissions of a folder.
update_folder_permissions(Client, AwsAccountId, FolderId, Input) ->
    update_folder_permissions(Client, AwsAccountId, FolderId, Input, []).
update_folder_permissions(Client, AwsAccountId, FolderId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), "/permissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Changes a group description.
update_group(Client, AwsAccountId, GroupName, Namespace, Input) ->
    update_group(Client, AwsAccountId, GroupName, Namespace, Input, []).
update_group(Client, AwsAccountId, GroupName, Namespace, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/groups/", aws_util:encode_uri(GroupName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing IAM policy assignment.
%%
%% This operation updates only the optional parameter or parameters that are
%% specified in the request. This overwrites all of the users included in
%% `Identities'.
update_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Input) ->
    update_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Input, []).
update_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/iam-policy-assignments/", aws_util:encode_uri(AssignmentName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds or updates services and authorized targets to configure what the
%% Amazon QuickSight IAM Identity Center application can access.
%%
%% This operation is only supported for Amazon QuickSight accounts using IAM
%% Identity Center
update_identity_propagation_config(Client, AwsAccountId, Service, Input) ->
    update_identity_propagation_config(Client, AwsAccountId, Service, Input, []).
update_identity_propagation_config(Client, AwsAccountId, Service, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/identity-propagation-config/", aws_util:encode_uri(Service), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the content and status of IP rules.
%%
%% To use this operation, you must provide the entire map of rules. You can
%% use the `DescribeIpRestriction' operation to get the current rule map.
update_ip_restriction(Client, AwsAccountId, Input) ->
    update_ip_restriction(Client, AwsAccountId, Input, []).
update_ip_restriction(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/ip-restriction"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Use the `UpdatePublicSharingSettings' operation to turn on or
%% turn off the public sharing settings of an Amazon QuickSight dashboard.
%%
%% To use this operation, turn on session capacity pricing for your Amazon
%% QuickSight account.
%%
%% Before you can turn on public sharing on your account, make sure to give
%% public sharing permissions to an administrative user in the Identity and
%% Access Management (IAM) console. For more information on using IAM with
%% Amazon QuickSight, see Using Amazon QuickSight with IAM in the Amazon
%% QuickSight User Guide.
update_public_sharing_settings(Client, AwsAccountId, Input) ->
    update_public_sharing_settings(Client, AwsAccountId, Input, []).
update_public_sharing_settings(Client, AwsAccountId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/public-sharing-settings"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a refresh schedule for a dataset.
update_refresh_schedule(Client, AwsAccountId, DataSetId, Input) ->
    update_refresh_schedule(Client, AwsAccountId, DataSetId, Input, []).
update_refresh_schedule(Client, AwsAccountId, DataSetId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/refresh-schedules"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the custom permissions that are associated with a role.
update_role_custom_permission(Client, AwsAccountId, Namespace, Role, Input) ->
    update_role_custom_permission(Client, AwsAccountId, Namespace, Role, Input, []).
update_role_custom_permission(Client, AwsAccountId, Namespace, Role, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/roles/", aws_util:encode_uri(Role), "/custom-permission"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a template from an existing Amazon QuickSight analysis or
%% another template.
update_template(Client, AwsAccountId, TemplateId, Input) ->
    update_template(Client, AwsAccountId, TemplateId, Input, []).
update_template(Client, AwsAccountId, TemplateId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the template alias of a template.
update_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input) ->
    update_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input, []).
update_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), "/aliases/", aws_util:encode_uri(AliasName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the resource permissions for a template.
update_template_permissions(Client, AwsAccountId, TemplateId, Input) ->
    update_template_permissions(Client, AwsAccountId, TemplateId, Input, []).
update_template_permissions(Client, AwsAccountId, TemplateId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), "/permissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a theme.
update_theme(Client, AwsAccountId, ThemeId, Input) ->
    update_theme(Client, AwsAccountId, ThemeId, Input, []).
update_theme(Client, AwsAccountId, ThemeId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an alias of a theme.
update_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input) ->
    update_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input, []).
update_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), "/aliases/", aws_util:encode_uri(AliasName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the resource permissions for a theme.
%%
%% Permissions apply to the action to grant or revoke permissions on, for
%% example `&quot;quicksight:DescribeTheme&quot;'.
%%
%% Theme permissions apply in groupings. Valid groupings include the
%% following for the three levels of permissions, which are user, owner, or
%% no permissions:
%%
%% <ul> <li> User
%%
%% <ul> <li> `&quot;quicksight:DescribeTheme&quot;'
%%
%% </li> <li> `&quot;quicksight:DescribeThemeAlias&quot;'
%%
%% </li> <li> `&quot;quicksight:ListThemeAliases&quot;'
%%
%% </li> <li> `&quot;quicksight:ListThemeVersions&quot;'
%%
%% </li> </ul> </li> <li> Owner
%%
%% <ul> <li> `&quot;quicksight:DescribeTheme&quot;'
%%
%% </li> <li> `&quot;quicksight:DescribeThemeAlias&quot;'
%%
%% </li> <li> `&quot;quicksight:ListThemeAliases&quot;'
%%
%% </li> <li> `&quot;quicksight:ListThemeVersions&quot;'
%%
%% </li> <li> `&quot;quicksight:DeleteTheme&quot;'
%%
%% </li> <li> `&quot;quicksight:UpdateTheme&quot;'
%%
%% </li> <li> `&quot;quicksight:CreateThemeAlias&quot;'
%%
%% </li> <li> `&quot;quicksight:DeleteThemeAlias&quot;'
%%
%% </li> <li> `&quot;quicksight:UpdateThemeAlias&quot;'
%%
%% </li> <li> `&quot;quicksight:UpdateThemePermissions&quot;'
%%
%% </li> <li> `&quot;quicksight:DescribeThemePermissions&quot;'
%%
%% </li> </ul> </li> <li> To specify no permissions, omit the permissions
%% list.
%%
%% </li> </ul>
update_theme_permissions(Client, AwsAccountId, ThemeId, Input) ->
    update_theme_permissions(Client, AwsAccountId, ThemeId, Input, []).
update_theme_permissions(Client, AwsAccountId, ThemeId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), "/permissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a topic.
update_topic(Client, AwsAccountId, TopicId, Input) ->
    update_topic(Client, AwsAccountId, TopicId, Input, []).
update_topic(Client, AwsAccountId, TopicId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the permissions of a topic.
update_topic_permissions(Client, AwsAccountId, TopicId, Input) ->
    update_topic_permissions(Client, AwsAccountId, TopicId, Input, []).
update_topic_permissions(Client, AwsAccountId, TopicId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), "/permissions"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a topic refresh schedule.
update_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId, Input) ->
    update_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId, Input, []).
update_topic_refresh_schedule(Client, AwsAccountId, DatasetId, TopicId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/topics/", aws_util:encode_uri(TopicId), "/schedules/", aws_util:encode_uri(DatasetId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an Amazon QuickSight user.
update_user(Client, AwsAccountId, Namespace, UserName, Input) ->
    update_user(Client, AwsAccountId, Namespace, UserName, Input, []).
update_user(Client, AwsAccountId, Namespace, UserName, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/users/", aws_util:encode_uri(UserName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a VPC connection.
update_vpc_connection(Client, AwsAccountId, VPCConnectionId, Input) ->
    update_vpc_connection(Client, AwsAccountId, VPCConnectionId, Input, []).
update_vpc_connection(Client, AwsAccountId, VPCConnectionId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/vpc-connections/", aws_util:encode_uri(VPCConnectionId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
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
