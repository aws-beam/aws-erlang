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
         create_template/4,
         create_template/5,
         create_template_alias/5,
         create_template_alias/6,
         create_theme/4,
         create_theme/5,
         create_theme_alias/5,
         create_theme_alias/6,
         delete_account_customization/3,
         delete_account_customization/4,
         delete_analysis/4,
         delete_analysis/5,
         delete_dashboard/4,
         delete_dashboard/5,
         delete_data_set/4,
         delete_data_set/5,
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
         delete_namespace/4,
         delete_namespace/5,
         delete_template/4,
         delete_template/5,
         delete_template_alias/5,
         delete_template_alias/6,
         delete_theme/4,
         delete_theme/5,
         delete_theme_alias/5,
         delete_theme_alias/6,
         delete_user/5,
         delete_user/6,
         delete_user_by_principal_id/5,
         delete_user_by_principal_id/6,
         describe_account_customization/2,
         describe_account_customization/4,
         describe_account_customization/5,
         describe_account_settings/2,
         describe_account_settings/4,
         describe_account_settings/5,
         describe_analysis/3,
         describe_analysis/5,
         describe_analysis/6,
         describe_analysis_permissions/3,
         describe_analysis_permissions/5,
         describe_analysis_permissions/6,
         describe_dashboard/3,
         describe_dashboard/5,
         describe_dashboard/6,
         describe_dashboard_permissions/3,
         describe_dashboard_permissions/5,
         describe_dashboard_permissions/6,
         describe_data_set/3,
         describe_data_set/5,
         describe_data_set/6,
         describe_data_set_permissions/3,
         describe_data_set_permissions/5,
         describe_data_set_permissions/6,
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
         describe_template/3,
         describe_template/5,
         describe_template/6,
         describe_template_alias/4,
         describe_template_alias/6,
         describe_template_alias/7,
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
         describe_user/4,
         describe_user/6,
         describe_user/7,
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
         list_ingestions/3,
         list_ingestions/5,
         list_ingestions/6,
         list_namespaces/2,
         list_namespaces/4,
         list_namespaces/5,
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
         list_user_groups/4,
         list_user_groups/6,
         list_user_groups/7,
         list_users/3,
         list_users/5,
         list_users/6,
         register_user/4,
         register_user/5,
         restore_analysis/4,
         restore_analysis/5,
         search_analyses/3,
         search_analyses/4,
         search_dashboards/3,
         search_dashboards/4,
         search_folders/3,
         search_folders/4,
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
         update_ip_restriction/3,
         update_ip_restriction/4,
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
         update_user/5,
         update_user/6]).

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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates Amazon QuickSight customizations the current Amazon Web
%% Services Region.
%%
%% Currently, you can add a custom default theme by using the
%% `CreateAccountCustomization' or `UpdateAccountCustomization' API
%% operation. To further customize Amazon QuickSight by removing Amazon
%% QuickSight sample assets and videos for all new users, see Customizing
%% Amazon QuickSight in the Amazon QuickSight User Guide.
%%
%% You can create customizations for your Amazon Web Services account or, if
%% you specify a namespace, for a Amazon QuickSight namespace instead.
%% Customizations that apply to a namespace always override customizations
%% that apply to an Amazon Web Services account. To find out which
%% customizations apply, use the `DescribeAccountCustomization' API
%% operation.
%%
%% Before you use the `CreateAccountCustomization' API operation to add a
%% theme as the namespace default, make sure that you first share the theme
%% with the namespace. If you don't share it with the namespace, the theme
%% isn't visible to your users even if you make it the default theme. To
%% check if the theme is shared, view the current permissions by using the `
%% `DescribeThemePermissions' ' API operation. To share the theme, grant
%% permissions by using the ` `UpdateThemePermissions' ' API operation.
create_account_customization(Client, AwsAccountId, Input) ->
    create_account_customization(Client, AwsAccountId, Input, []).
create_account_customization(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/customizations"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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

%% @doc Creates an analysis in Amazon QuickSight.
create_analysis(Client, AnalysisId, AwsAccountId, Input) ->
    create_analysis(Client, AnalysisId, AwsAccountId, Input, []).
create_analysis(Client, AnalysisId, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/analyses/", aws_util:encode_uri(AnalysisId), ""],
    SuccessStatusCode = undefined,
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

%% @doc Creates a dashboard from a template.
%%
%% To first create a template, see the ` `CreateTemplate' ' API operation.
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a dataset.
create_data_set(Client, AwsAccountId, Input) ->
    create_data_set(Client, AwsAccountId, Input, []).
create_data_set(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets"],
    SuccessStatusCode = undefined,
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

%% @doc Creates a data source.
create_data_source(Client, AwsAccountId, Input) ->
    create_data_source(Client, AwsAccountId, Input, []).
create_data_source(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sources"],
    SuccessStatusCode = undefined,
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

%% @doc Creates an empty shared folder.
create_folder(Client, AwsAccountId, FolderId, Input) ->
    create_folder(Client, AwsAccountId, FolderId, Input, []).
create_folder(Client, AwsAccountId, FolderId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), ""],
    SuccessStatusCode = undefined,
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

%% @doc Adds an asset, such as a dashboard, analysis, or dataset into a
%% folder.
create_folder_membership(Client, AwsAccountId, FolderId, MemberId, MemberType, Input) ->
    create_folder_membership(Client, AwsAccountId, FolderId, MemberId, MemberType, Input, []).
create_folder_membership(Client, AwsAccountId, FolderId, MemberId, MemberType, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/folders/", aws_util:encode_uri(FolderId), "/members/", aws_util:encode_uri(MemberType), "/", aws_util:encode_uri(MemberId), ""],
    SuccessStatusCode = undefined,
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

%% @doc Creates an Amazon QuickSight group.
%%
%% The permissions resource is
%% `arn:aws:quicksight:us-east-1:<relevant-aws-account-id>:group/default/<group-name>
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an assignment with one specified IAMpolicy, identified by its
%% Amazon Resource Name (ARN).
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates and starts a new SPICE ingestion on a dataset
%%
%% Any ingestions operating on tagged datasets inherit the same tags
%% automatically for use in access control.
%%
%% For an example, see How do I create an IAM policy to control access to
%% Amazon EC2 resources using tags? in the Amazon Web Services Knowledge
%% Center. Tags are visible on the tagged dataset, but not on the ingestion
%% resource.
create_ingestion(Client, AwsAccountId, DataSetId, IngestionId, Input) ->
    create_ingestion(Client, AwsAccountId, DataSetId, IngestionId, Input, []).
create_ingestion(Client, AwsAccountId, DataSetId, IngestionId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), "/ingestions/", aws_util:encode_uri(IngestionId), ""],
    SuccessStatusCode = undefined,
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a template from an existing Amazon QuickSight analysis or
%% template.
%%
%% You can use the resulting template to create a dashboard.
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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

%% @doc Deletes an analysis from Amazon QuickSight.
%%
%% You can optionally include a recovery window during which you can restore
%% the analysis. If you don't specify a recovery window value, the operation
%% defaults to 30 days. Amazon QuickSight attaches a `DeletionTime' stamp to
%% the response that specifies the end of the recovery window. At the end of
%% the recovery window, Amazon QuickSight deletes the analysis permanently.
%%
%% At any time before recovery window ends, you can use the `RestoreAnalysis'
%% API operation to remove the `DeletionTime' stamp and cancel the deletion
%% of the analysis. The analysis remains visible in the API until it's
%% deleted, so you can describe it but you can't make a template from it.
%%
%% An analysis that's scheduled for deletion isn't accessible in the Amazon
%% QuickSight console. To access it in the console, restore it. Deleting an
%% analysis doesn't delete the dashboards that you publish from it.
delete_analysis(Client, AnalysisId, AwsAccountId, Input) ->
    delete_analysis(Client, AnalysisId, AwsAccountId, Input, []).
delete_analysis(Client, AnalysisId, AwsAccountId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/analyses/", aws_util:encode_uri(AnalysisId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing IAMpolicy assignment.
delete_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Input) ->
    delete_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Input, []).
delete_iam_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespace/", aws_util:encode_uri(Namespace), "/iam-policy-assignments/", aws_util:encode_uri(AssignmentName), ""],
    SuccessStatusCode = undefined,
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the Amazon QuickSight user that is associated with the
%% identity of the Identity and Access Management (IAM) user or role that's
%% making the call.
%%
%% The IAM user isn't deleted as a result of this call.
delete_user(Client, AwsAccountId, Namespace, UserName, Input) ->
    delete_user(Client, AwsAccountId, Namespace, UserName, Input, []).
delete_user(Client, AwsAccountId, Namespace, UserName, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/users/", aws_util:encode_uri(UserName), ""],
    SuccessStatusCode = undefined,
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

%% @doc Deletes a user identified by its principal ID.
delete_user_by_principal_id(Client, AwsAccountId, Namespace, PrincipalId, Input) ->
    delete_user_by_principal_id(Client, AwsAccountId, Namespace, PrincipalId, Input, []).
delete_user_by_principal_id(Client, AwsAccountId, Namespace, PrincipalId, Input0, Options0) ->
    Method = delete,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/user-principals/", aws_util:encode_uri(PrincipalId), ""],
    SuccessStatusCode = undefined,
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
%% <ul> <li> `Amazon Web Services account' - The Amazon Web Services account
%% exists at the top of the hierarchy. It has the potential to use all of the
%% Amazon Web Services Regions and AWS Services. When you subscribe to Amazon
%% QuickSight, you choose one Amazon Web Services Region to use as your home
%% Region. That's where your free SPICE capacity is located. You can use
%% Amazon QuickSight in any supported Amazon Web Services Region.
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
%% your Region settings. If you're using the AWS CLI, you can use one of the
%% following options:
%%
%% <ul> <li> Use command line options.
%%
%% </li> <li> Use named profiles.
%%
%% </li> <li> Run `aws configure' to change your default Amazon Web Services
%% Region. Use Enter to key the same settings for your keys. For more
%% information, see Configuring the AWS CLI.
%%
%% </li> </ul> </li> <li> `Namespace' - A Amazon QuickSight namespace is a
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
%% `CreateAccountCustomization' command in each Amazon Web Services Region
%% where you want to apply the same customizations.
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

%% @doc Describes a dataset.
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

    Query_ = [],

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

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an Amazon QuickSight group's description and Amazon Resource
%% Name (ARN).
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

%% @doc Describes an existing IAMpolicy assignment, as specified by the
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

%% @doc Provides a summary and status of IP Rules.
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

%% @doc Generates an embed URL that you can use to embed an Amazon QuickSight
%% dashboard in your website, without having to register any reader users.
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
%% SessionLifetimeInMinutes ' parameter.
%%
%% The resulting user session is valid for 15 minutes (default) to 10 hours
%% (maximum).
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
               {receive_body_as_binary, false}
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
%% The resulting user session is valid for 15 minutes (default) to 10 hours
%% (maximum).
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Generates a session URL and authorization code that you can use to
%% embed an Amazon Amazon QuickSight read-only dashboard in your web server
%% code.
%%
%% Before you use this command, make sure that you have configured the
%% dashboards and permissions.
%%
%% Currently, you can use `GetDashboardEmbedURL' only from the server, not
%% from the user's browser. The following rules apply to the combination of
%% URL and authorization code:
%%
%% <ul> <li> They must be used together.
%%
%% </li> <li> They can be used one time only.
%%
%% </li> <li> They are valid for 5 minutes after you run this command.
%%
%% </li> <li> The resulting user session is valid for 10 hours.
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
%% profile to the user with the ` `UpdateUser' ' API operation. Use `
%% `RegisterUser' ' API operation to add a new user with a custom permission
%% profile attached. For more information, see the following sections in the
%% Amazon QuickSight User Guide:
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

%% @doc List all assets (`DASHBOARD', `ANALYSIS', and `DATASET') in a folder.
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

%% @doc Lists IAMpolicy assignments in the current Amazon QuickSight account.
list_iam_policy_assignments(Client, AwsAccountId, Namespace)
  when is_map(Client) ->
    list_iam_policy_assignments(Client, AwsAccountId, Namespace, #{}, #{}).

list_iam_policy_assignments(Client, AwsAccountId, Namespace, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_iam_policy_assignments(Client, AwsAccountId, Namespace, QueryMap, HeadersMap, []).

list_iam_policy_assignments(Client, AwsAccountId, Namespace, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/iam-policy-assignments"],
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

%% @doc Lists all the IAMpolicy assignments, including the Amazon Resource
%% Names (ARNs) for the IAM policies assigned to the specified user and group
%% or groups that the user belongs to.
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

%% @doc Creates an Amazon QuickSight user, whose identity is associated with
%% the AWS Identity and Access Management (IAM) identity or role specified in
%% the request.
register_user(Client, AwsAccountId, Namespace, Input) ->
    register_user(Client, AwsAccountId, Namespace, Input, []).
register_user(Client, AwsAccountId, Namespace, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/namespaces/", aws_util:encode_uri(Namespace), "/users"],
    SuccessStatusCode = undefined,
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

%% @doc Restores an analysis.
restore_analysis(Client, AnalysisId, AwsAccountId, Input) ->
    restore_analysis(Client, AnalysisId, AwsAccountId, Input, []).
restore_analysis(Client, AnalysisId, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/restore/analyses/", aws_util:encode_uri(AnalysisId), ""],
    SuccessStatusCode = undefined,
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
%% supports tagging on data set, data source, dashboard, and template.
%%
%% Tagging for Amazon QuickSight works in a similar way to tagging for other
%% AWS services, except for the following:
%%
%% <ul> <li> You can't use tags to track AWS costs for Amazon QuickSight.
%% This restriction is because Amazon QuickSight costs are based on users and
%% SPICE capacity, which aren't taggable resources.
%%
%% </li> <li> Amazon QuickSight doesn't currently support the Tag Editor for
%% Resource Groups.
%%
%% </li> </ul>
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/resources/", aws_util:encode_uri(ResourceArn), "/tags"],
    SuccessStatusCode = undefined,
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

%% @doc Removes a tag or tags from a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/resources/", aws_util:encode_uri(ResourceArn), "/tags"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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

%% @doc Updates Amazon QuickSight customizations the current Amazon Web
%% Services Region.
%%
%% Currently, the only customization you can use is a theme.
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
%% of a dashboard by using the `UpdateDashboardPublishedVersion' API
%% operation.
update_dashboard(Client, AwsAccountId, DashboardId, Input) ->
    update_dashboard(Client, AwsAccountId, DashboardId, Input, []).
update_dashboard(Client, AwsAccountId, DashboardId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), ""],
    SuccessStatusCode = undefined,
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

%% @doc Updates read and write permissions on a dashboard.
update_dashboard_permissions(Client, AwsAccountId, DashboardId, Input) ->
    update_dashboard_permissions(Client, AwsAccountId, DashboardId, Input, []).
update_dashboard_permissions(Client, AwsAccountId, DashboardId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/permissions"],
    SuccessStatusCode = undefined,
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

%% @doc Updates the published version of a dashboard.
update_dashboard_published_version(Client, AwsAccountId, DashboardId, VersionNumber, Input) ->
    update_dashboard_published_version(Client, AwsAccountId, DashboardId, VersionNumber, Input, []).
update_dashboard_published_version(Client, AwsAccountId, DashboardId, VersionNumber, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/dashboards/", aws_util:encode_uri(DashboardId), "/versions/", aws_util:encode_uri(VersionNumber), ""],
    SuccessStatusCode = undefined,
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

%% @doc Updates a dataset.
update_data_set(Client, AwsAccountId, DataSetId, Input) ->
    update_data_set(Client, AwsAccountId, DataSetId, Input, []).
update_data_set(Client, AwsAccountId, DataSetId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/data-sets/", aws_util:encode_uri(DataSetId), ""],
    SuccessStatusCode = undefined,
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing IAMpolicy assignment.
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
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates content and status of IP Rules.
update_ip_restriction(Client, AwsAccountId, Input) ->
    update_ip_restriction(Client, AwsAccountId, Input, []).
update_ip_restriction(Client, AwsAccountId, Input0, Options0) ->
    Method = post,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/ip-restriction"],
    SuccessStatusCode = undefined,
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

%% @doc Updates a template from an existing Amazon QuickSight analysis or
%% another template.
update_template(Client, AwsAccountId, TemplateId, Input) ->
    update_template(Client, AwsAccountId, TemplateId, Input, []).
update_template(Client, AwsAccountId, TemplateId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), ""],
    SuccessStatusCode = undefined,
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

%% @doc Updates the template alias of a template.
update_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input) ->
    update_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input, []).
update_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), "/aliases/", aws_util:encode_uri(AliasName), ""],
    SuccessStatusCode = undefined,
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

%% @doc Updates the resource permissions for a template.
update_template_permissions(Client, AwsAccountId, TemplateId, Input) ->
    update_template_permissions(Client, AwsAccountId, TemplateId, Input, []).
update_template_permissions(Client, AwsAccountId, TemplateId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/templates/", aws_util:encode_uri(TemplateId), "/permissions"],
    SuccessStatusCode = undefined,
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

%% @doc Updates a theme.
update_theme(Client, AwsAccountId, ThemeId, Input) ->
    update_theme(Client, AwsAccountId, ThemeId, Input, []).
update_theme(Client, AwsAccountId, ThemeId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), ""],
    SuccessStatusCode = undefined,
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

%% @doc Updates an alias of a theme.
update_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input) ->
    update_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input, []).
update_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input0, Options0) ->
    Method = put,
    Path = ["/accounts/", aws_util:encode_uri(AwsAccountId), "/themes/", aws_util:encode_uri(ThemeId), "/aliases/", aws_util:encode_uri(AliasName), ""],
    SuccessStatusCode = undefined,
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

%% @doc Updates the resource permissions for a theme.
%%
%% Permissions apply to the action to grant or revoke permissions on, for
%% example `"quicksight:DescribeTheme"'.
%%
%% Theme permissions apply in groupings. Valid groupings include the
%% following for the three levels of permissions, which are user, owner, or
%% no permissions:
%%
%% <ul> <li> User
%%
%% <ul> <li> `"quicksight:DescribeTheme"'
%%
%% </li> <li> `"quicksight:DescribeThemeAlias"'
%%
%% </li> <li> `"quicksight:ListThemeAliases"'
%%
%% </li> <li> `"quicksight:ListThemeVersions"'
%%
%% </li> </ul> </li> <li> Owner
%%
%% <ul> <li> `"quicksight:DescribeTheme"'
%%
%% </li> <li> `"quicksight:DescribeThemeAlias"'
%%
%% </li> <li> `"quicksight:ListThemeAliases"'
%%
%% </li> <li> `"quicksight:ListThemeVersions"'
%%
%% </li> <li> `"quicksight:DeleteTheme"'
%%
%% </li> <li> `"quicksight:UpdateTheme"'
%%
%% </li> <li> `"quicksight:CreateThemeAlias"'
%%
%% </li> <li> `"quicksight:DeleteThemeAlias"'
%%
%% </li> <li> `"quicksight:UpdateThemeAlias"'
%%
%% </li> <li> `"quicksight:UpdateThemePermissions"'
%%
%% </li> <li> `"quicksight:DescribeThemePermissions"'
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
               {receive_body_as_binary, false}
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
    Client1 = Client#{service => <<"quicksight">>},
    Host = build_host(<<"quicksight">>, Client1),
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
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true -> jsx:decode(Body);
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
