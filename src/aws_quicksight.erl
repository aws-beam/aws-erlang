%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>Amazon QuickSight API Reference</fullname>
%%
%% Amazon QuickSight is a fully managed, serverless business intelligence
%% service for the AWS Cloud that makes it easy to extend data and insights
%% to every user in your organization. This API reference contains
%% documentation for a programming interface that you can use to manage
%% Amazon QuickSight.
-module(aws_quicksight).

-export([cancel_ingestion/5,
         cancel_ingestion/6,
         create_account_customization/3,
         create_account_customization/4,
         create_dashboard/4,
         create_dashboard/5,
         create_data_set/3,
         create_data_set/4,
         create_data_source/3,
         create_data_source/4,
         create_group/4,
         create_group/5,
         create_group_membership/6,
         create_group_membership/7,
         create_i_a_m_policy_assignment/4,
         create_i_a_m_policy_assignment/5,
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
         delete_dashboard/4,
         delete_dashboard/5,
         delete_data_set/4,
         delete_data_set/5,
         delete_data_source/4,
         delete_data_source/5,
         delete_group/5,
         delete_group/6,
         delete_group_membership/6,
         delete_group_membership/7,
         delete_i_a_m_policy_assignment/5,
         delete_i_a_m_policy_assignment/6,
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
         describe_account_customization/4,
         describe_account_customization/5,
         describe_account_settings/2,
         describe_account_settings/3,
         describe_dashboard/5,
         describe_dashboard/6,
         describe_dashboard_permissions/3,
         describe_dashboard_permissions/4,
         describe_data_set/3,
         describe_data_set/4,
         describe_data_set_permissions/3,
         describe_data_set_permissions/4,
         describe_data_source/3,
         describe_data_source/4,
         describe_data_source_permissions/3,
         describe_data_source_permissions/4,
         describe_group/4,
         describe_group/5,
         describe_i_a_m_policy_assignment/4,
         describe_i_a_m_policy_assignment/5,
         describe_ingestion/4,
         describe_ingestion/5,
         describe_namespace/3,
         describe_namespace/4,
         describe_template/5,
         describe_template/6,
         describe_template_alias/4,
         describe_template_alias/5,
         describe_template_permissions/3,
         describe_template_permissions/4,
         describe_theme/5,
         describe_theme/6,
         describe_theme_alias/4,
         describe_theme_alias/5,
         describe_theme_permissions/3,
         describe_theme_permissions/4,
         describe_user/4,
         describe_user/5,
         get_dashboard_embed_url/8,
         get_dashboard_embed_url/9,
         get_session_embed_url/5,
         get_session_embed_url/6,
         list_dashboard_versions/5,
         list_dashboard_versions/6,
         list_dashboards/4,
         list_dashboards/5,
         list_data_sets/4,
         list_data_sets/5,
         list_data_sources/4,
         list_data_sources/5,
         list_group_memberships/6,
         list_group_memberships/7,
         list_groups/5,
         list_groups/6,
         list_i_a_m_policy_assignments/5,
         list_i_a_m_policy_assignments/6,
         list_i_a_m_policy_assignments_for_user/6,
         list_i_a_m_policy_assignments_for_user/7,
         list_ingestions/5,
         list_ingestions/6,
         list_namespaces/4,
         list_namespaces/5,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_template_aliases/5,
         list_template_aliases/6,
         list_template_versions/5,
         list_template_versions/6,
         list_templates/4,
         list_templates/5,
         list_theme_aliases/5,
         list_theme_aliases/6,
         list_theme_versions/5,
         list_theme_versions/6,
         list_themes/5,
         list_themes/6,
         list_user_groups/6,
         list_user_groups/7,
         list_users/5,
         list_users/6,
         register_user/4,
         register_user/5,
         search_dashboards/3,
         search_dashboards/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_account_customization/3,
         update_account_customization/4,
         update_account_settings/3,
         update_account_settings/4,
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
         update_group/5,
         update_group/6,
         update_i_a_m_policy_assignment/5,
         update_i_a_m_policy_assignment/6,
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
cancel_ingestion(Client, AwsAccountId, DataSetId, IngestionId, Input0, Options) ->
    Method = delete,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/data-sets/", http_uri:encode(DataSetId), "/ingestions/", http_uri:encode(IngestionId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a customization for the Amazon QuickSight subscription
%% associated with your AWS account.
create_account_customization(Client, AwsAccountId, Input) ->
    create_account_customization(Client, AwsAccountId, Input, []).
create_account_customization(Client, AwsAccountId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/customizations"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"namespace">>, <<"Namespace">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a dashboard from a template. To first create a template, see
%% the <a>CreateTemplate</a> API operation.
%%
%% A dashboard is an entity in QuickSight that identifies QuickSight reports,
%% created from analyses. You can share QuickSight dashboards. With the right
%% permissions, you can create scheduled email reports from them. The
%% <code>CreateDashboard</code>, <code>DescribeDashboard</code>, and
%% <code>ListDashboardsByUser</code> API operations act on the dashboard
%% entity. If you have the correct permissions, you can create a dashboard
%% from a template that exists in a different AWS account.
create_dashboard(Client, AwsAccountId, DashboardId, Input) ->
    create_dashboard(Client, AwsAccountId, DashboardId, Input, []).
create_dashboard(Client, AwsAccountId, DashboardId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/dashboards/", http_uri:encode(DashboardId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a dataset.
create_data_set(Client, AwsAccountId, Input) ->
    create_data_set(Client, AwsAccountId, Input, []).
create_data_set(Client, AwsAccountId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/data-sets"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a data source.
create_data_source(Client, AwsAccountId, Input) ->
    create_data_source(Client, AwsAccountId, Input, []).
create_data_source(Client, AwsAccountId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/data-sources"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Amazon QuickSight group.
%%
%% The permissions resource is
%% <code>arn:aws:quicksight:us-east-1:<i>&lt;relevant-aws-account-id&gt;</i>:group/default/<i>&lt;group-name&gt;</i>
%% </code>.
%%
%% The response is a group object.
create_group(Client, AwsAccountId, Namespace, Input) ->
    create_group(Client, AwsAccountId, Namespace, Input, []).
create_group(Client, AwsAccountId, Namespace, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), "/groups"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds an Amazon QuickSight user to an Amazon QuickSight group.
create_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, Input) ->
    create_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, Input, []).
create_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), "/groups/", http_uri:encode(GroupName), "/members/", http_uri:encode(MemberName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an assignment with one specified IAM policy, identified by
%% its Amazon Resource Name (ARN). This policy will be assigned to specified
%% groups or users of Amazon QuickSight. The users and groups need to be in
%% the same namespace.
create_i_a_m_policy_assignment(Client, AwsAccountId, Namespace, Input) ->
    create_i_a_m_policy_assignment(Client, AwsAccountId, Namespace, Input, []).
create_i_a_m_policy_assignment(Client, AwsAccountId, Namespace, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), "/iam-policy-assignments/"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates and starts a new SPICE ingestion on a dataset
%%
%% Any ingestions operating on tagged datasets inherit the same tags
%% automatically for use in access control. For an example, see <a
%% href="https://aws.amazon.com/premiumsupport/knowledge-center/iam-ec2-resource-tags/">How
%% do I create an IAM policy to control access to Amazon EC2 resources using
%% tags?</a> in the AWS Knowledge Center. Tags are visible on the tagged
%% dataset, but not on the ingestion resource.
create_ingestion(Client, AwsAccountId, DataSetId, IngestionId, Input) ->
    create_ingestion(Client, AwsAccountId, DataSetId, IngestionId, Input, []).
create_ingestion(Client, AwsAccountId, DataSetId, IngestionId, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/data-sets/", http_uri:encode(DataSetId), "/ingestions/", http_uri:encode(IngestionId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc (Enterprise edition only) Creates a new namespace for you to use with
%% Amazon QuickSight.
%%
%% A namespace allows you to isolate the QuickSight users and groups that are
%% registered for that namespace. Users that access the namespace can share
%% assets only with other users or groups in the same namespace. They can't
%% see users and groups in other namespaces. You can create a namespace after
%% your AWS account is subscribed to QuickSight. The namespace must be unique
%% within the AWS account. By default, there is a limit of 100 namespaces per
%% AWS account. To increase your limit, create a ticket with AWS Support.
create_namespace(Client, AwsAccountId, Input) ->
    create_namespace(Client, AwsAccountId, Input, []).
create_namespace(Client, AwsAccountId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a template from an existing QuickSight analysis or template.
%% You can use the resulting template to create a dashboard.
%%
%% A <i>template</i> is an entity in QuickSight that encapsulates the
%% metadata required to create an analysis and that you can use to create s
%% dashboard. A template adds a layer of abstraction by using placeholders to
%% replace the dataset associated with the analysis. You can use templates to
%% create dashboards by replacing dataset placeholders with datasets that
%% follow the same schema that was used to create the source analysis and
%% template.
create_template(Client, AwsAccountId, TemplateId, Input) ->
    create_template(Client, AwsAccountId, TemplateId, Input, []).
create_template(Client, AwsAccountId, TemplateId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/templates/", http_uri:encode(TemplateId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a template alias for a template.
create_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input) ->
    create_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input, []).
create_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/templates/", http_uri:encode(TemplateId), "/aliases/", http_uri:encode(AliasName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a theme.
%%
%% A <i>theme</i> is set of configuration options for color and layout.
%% Themes apply to analyses and dashboards. For more information, see <a
%% href="https://docs.aws.amazon.com/quicksight/latest/user/themes-in-quicksight.html">Using
%% Themes in Amazon QuickSight</a> in the <i>Amazon QuickSight User
%% Guide</i>.
create_theme(Client, AwsAccountId, ThemeId, Input) ->
    create_theme(Client, AwsAccountId, ThemeId, Input, []).
create_theme(Client, AwsAccountId, ThemeId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/themes/", http_uri:encode(ThemeId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a theme alias for a theme.
create_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input) ->
    create_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input, []).
create_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/themes/", http_uri:encode(ThemeId), "/aliases/", http_uri:encode(AliasName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes customizations for the QuickSight subscription on your AWS
%% account.
delete_account_customization(Client, AwsAccountId, Input) ->
    delete_account_customization(Client, AwsAccountId, Input, []).
delete_account_customization(Client, AwsAccountId, Input0, Options) ->
    Method = delete,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/customizations"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"namespace">>, <<"Namespace">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a dashboard.
delete_dashboard(Client, AwsAccountId, DashboardId, Input) ->
    delete_dashboard(Client, AwsAccountId, DashboardId, Input, []).
delete_dashboard(Client, AwsAccountId, DashboardId, Input0, Options) ->
    Method = delete,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/dashboards/", http_uri:encode(DashboardId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"version-number">>, <<"VersionNumber">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a dataset.
delete_data_set(Client, AwsAccountId, DataSetId, Input) ->
    delete_data_set(Client, AwsAccountId, DataSetId, Input, []).
delete_data_set(Client, AwsAccountId, DataSetId, Input0, Options) ->
    Method = delete,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/data-sets/", http_uri:encode(DataSetId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the data source permanently. This action breaks all the
%% datasets that reference the deleted data source.
delete_data_source(Client, AwsAccountId, DataSourceId, Input) ->
    delete_data_source(Client, AwsAccountId, DataSourceId, Input, []).
delete_data_source(Client, AwsAccountId, DataSourceId, Input0, Options) ->
    Method = delete,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/data-sources/", http_uri:encode(DataSourceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a user group from Amazon QuickSight.
delete_group(Client, AwsAccountId, GroupName, Namespace, Input) ->
    delete_group(Client, AwsAccountId, GroupName, Namespace, Input, []).
delete_group(Client, AwsAccountId, GroupName, Namespace, Input0, Options) ->
    Method = delete,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), "/groups/", http_uri:encode(GroupName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a user from a group so that the user is no longer a member of
%% the group.
delete_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, Input) ->
    delete_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, Input, []).
delete_group_membership(Client, AwsAccountId, GroupName, MemberName, Namespace, Input0, Options) ->
    Method = delete,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), "/groups/", http_uri:encode(GroupName), "/members/", http_uri:encode(MemberName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing IAM policy assignment.
delete_i_a_m_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Input) ->
    delete_i_a_m_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Input, []).
delete_i_a_m_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Input0, Options) ->
    Method = delete,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespace/", http_uri:encode(Namespace), "/iam-policy-assignments/", http_uri:encode(AssignmentName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a namespace and the users and groups that are associated with
%% the namespace. This is an asynchronous process. Assets including
%% dashboards, analyses, datasets and data sources are not deleted. To delete
%% these assets, you use the APIs for the relevant asset.
delete_namespace(Client, AwsAccountId, Namespace, Input) ->
    delete_namespace(Client, AwsAccountId, Namespace, Input, []).
delete_namespace(Client, AwsAccountId, Namespace, Input0, Options) ->
    Method = delete,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a template.
delete_template(Client, AwsAccountId, TemplateId, Input) ->
    delete_template(Client, AwsAccountId, TemplateId, Input, []).
delete_template(Client, AwsAccountId, TemplateId, Input0, Options) ->
    Method = delete,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/templates/", http_uri:encode(TemplateId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"version-number">>, <<"VersionNumber">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the item that the specified template alias points to. If you
%% provide a specific alias, you delete the version of the template that the
%% alias points to.
delete_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input) ->
    delete_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input, []).
delete_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input0, Options) ->
    Method = delete,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/templates/", http_uri:encode(TemplateId), "/aliases/", http_uri:encode(AliasName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a theme.
delete_theme(Client, AwsAccountId, ThemeId, Input) ->
    delete_theme(Client, AwsAccountId, ThemeId, Input, []).
delete_theme(Client, AwsAccountId, ThemeId, Input0, Options) ->
    Method = delete,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/themes/", http_uri:encode(ThemeId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"version-number">>, <<"VersionNumber">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the version of the theme that the specified theme alias
%% points to. If you provide a specific alias, you delete the version of the
%% theme that the alias points to.
delete_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input) ->
    delete_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input, []).
delete_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input0, Options) ->
    Method = delete,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/themes/", http_uri:encode(ThemeId), "/aliases/", http_uri:encode(AliasName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the Amazon QuickSight user that is associated with the
%% identity of the AWS Identity and Access Management (IAM) user or role
%% that's making the call. The IAM user isn't deleted as a result of this
%% call.
delete_user(Client, AwsAccountId, Namespace, UserName, Input) ->
    delete_user(Client, AwsAccountId, Namespace, UserName, Input, []).
delete_user(Client, AwsAccountId, Namespace, UserName, Input0, Options) ->
    Method = delete,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), "/users/", http_uri:encode(UserName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a user identified by its principal ID.
delete_user_by_principal_id(Client, AwsAccountId, Namespace, PrincipalId, Input) ->
    delete_user_by_principal_id(Client, AwsAccountId, Namespace, PrincipalId, Input, []).
delete_user_by_principal_id(Client, AwsAccountId, Namespace, PrincipalId, Input0, Options) ->
    Method = delete,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), "/user-principals/", http_uri:encode(PrincipalId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes the customizations associated with your AWS account.
describe_account_customization(Client, AwsAccountId, Namespace, Resolved)
  when is_map(Client) ->
    describe_account_customization(Client, AwsAccountId, Namespace, Resolved, []).
describe_account_customization(Client, AwsAccountId, Namespace, Resolved, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/customizations"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"namespace">>, Namespace},
        {<<"resolved">>, Resolved}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the settings that were used when your QuickSight
%% subscription was first created in this AWS Account.
describe_account_settings(Client, AwsAccountId)
  when is_map(Client) ->
    describe_account_settings(Client, AwsAccountId, []).
describe_account_settings(Client, AwsAccountId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/settings"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a summary for a dashboard.
describe_dashboard(Client, AwsAccountId, DashboardId, AliasName, VersionNumber)
  when is_map(Client) ->
    describe_dashboard(Client, AwsAccountId, DashboardId, AliasName, VersionNumber, []).
describe_dashboard(Client, AwsAccountId, DashboardId, AliasName, VersionNumber, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/dashboards/", http_uri:encode(DashboardId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"alias-name">>, AliasName},
        {<<"version-number">>, VersionNumber}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes read and write permissions for a dashboard.
describe_dashboard_permissions(Client, AwsAccountId, DashboardId)
  when is_map(Client) ->
    describe_dashboard_permissions(Client, AwsAccountId, DashboardId, []).
describe_dashboard_permissions(Client, AwsAccountId, DashboardId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/dashboards/", http_uri:encode(DashboardId), "/permissions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a dataset.
describe_data_set(Client, AwsAccountId, DataSetId)
  when is_map(Client) ->
    describe_data_set(Client, AwsAccountId, DataSetId, []).
describe_data_set(Client, AwsAccountId, DataSetId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/data-sets/", http_uri:encode(DataSetId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the permissions on a dataset.
%%
%% The permissions resource is
%% <code>arn:aws:quicksight:region:aws-account-id:dataset/data-set-id</code>.
describe_data_set_permissions(Client, AwsAccountId, DataSetId)
  when is_map(Client) ->
    describe_data_set_permissions(Client, AwsAccountId, DataSetId, []).
describe_data_set_permissions(Client, AwsAccountId, DataSetId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/data-sets/", http_uri:encode(DataSetId), "/permissions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a data source.
describe_data_source(Client, AwsAccountId, DataSourceId)
  when is_map(Client) ->
    describe_data_source(Client, AwsAccountId, DataSourceId, []).
describe_data_source(Client, AwsAccountId, DataSourceId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/data-sources/", http_uri:encode(DataSourceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the resource permissions for a data source.
describe_data_source_permissions(Client, AwsAccountId, DataSourceId)
  when is_map(Client) ->
    describe_data_source_permissions(Client, AwsAccountId, DataSourceId, []).
describe_data_source_permissions(Client, AwsAccountId, DataSourceId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/data-sources/", http_uri:encode(DataSourceId), "/permissions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an Amazon QuickSight group's description and Amazon Resource
%% Name (ARN).
describe_group(Client, AwsAccountId, GroupName, Namespace)
  when is_map(Client) ->
    describe_group(Client, AwsAccountId, GroupName, Namespace, []).
describe_group(Client, AwsAccountId, GroupName, Namespace, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), "/groups/", http_uri:encode(GroupName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an existing IAM policy assignment, as specified by the
%% assignment name.
describe_i_a_m_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace)
  when is_map(Client) ->
    describe_i_a_m_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, []).
describe_i_a_m_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), "/iam-policy-assignments/", http_uri:encode(AssignmentName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a SPICE ingestion.
describe_ingestion(Client, AwsAccountId, DataSetId, IngestionId)
  when is_map(Client) ->
    describe_ingestion(Client, AwsAccountId, DataSetId, IngestionId, []).
describe_ingestion(Client, AwsAccountId, DataSetId, IngestionId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/data-sets/", http_uri:encode(DataSetId), "/ingestions/", http_uri:encode(IngestionId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the current namespace.
describe_namespace(Client, AwsAccountId, Namespace)
  when is_map(Client) ->
    describe_namespace(Client, AwsAccountId, Namespace, []).
describe_namespace(Client, AwsAccountId, Namespace, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a template's metadata.
describe_template(Client, AwsAccountId, TemplateId, AliasName, VersionNumber)
  when is_map(Client) ->
    describe_template(Client, AwsAccountId, TemplateId, AliasName, VersionNumber, []).
describe_template(Client, AwsAccountId, TemplateId, AliasName, VersionNumber, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/templates/", http_uri:encode(TemplateId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"alias-name">>, AliasName},
        {<<"version-number">>, VersionNumber}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the template alias for a template.
describe_template_alias(Client, AliasName, AwsAccountId, TemplateId)
  when is_map(Client) ->
    describe_template_alias(Client, AliasName, AwsAccountId, TemplateId, []).
describe_template_alias(Client, AliasName, AwsAccountId, TemplateId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/templates/", http_uri:encode(TemplateId), "/aliases/", http_uri:encode(AliasName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes read and write permissions on a template.
describe_template_permissions(Client, AwsAccountId, TemplateId)
  when is_map(Client) ->
    describe_template_permissions(Client, AwsAccountId, TemplateId, []).
describe_template_permissions(Client, AwsAccountId, TemplateId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/templates/", http_uri:encode(TemplateId), "/permissions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a theme.
describe_theme(Client, AwsAccountId, ThemeId, AliasName, VersionNumber)
  when is_map(Client) ->
    describe_theme(Client, AwsAccountId, ThemeId, AliasName, VersionNumber, []).
describe_theme(Client, AwsAccountId, ThemeId, AliasName, VersionNumber, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/themes/", http_uri:encode(ThemeId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"alias-name">>, AliasName},
        {<<"version-number">>, VersionNumber}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the alias for a theme.
describe_theme_alias(Client, AliasName, AwsAccountId, ThemeId)
  when is_map(Client) ->
    describe_theme_alias(Client, AliasName, AwsAccountId, ThemeId, []).
describe_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/themes/", http_uri:encode(ThemeId), "/aliases/", http_uri:encode(AliasName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the read and write permissions for a theme.
describe_theme_permissions(Client, AwsAccountId, ThemeId)
  when is_map(Client) ->
    describe_theme_permissions(Client, AwsAccountId, ThemeId, []).
describe_theme_permissions(Client, AwsAccountId, ThemeId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/themes/", http_uri:encode(ThemeId), "/permissions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a user, given the user name.
describe_user(Client, AwsAccountId, Namespace, UserName)
  when is_map(Client) ->
    describe_user(Client, AwsAccountId, Namespace, UserName, []).
describe_user(Client, AwsAccountId, Namespace, UserName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), "/users/", http_uri:encode(UserName), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Generates a URL and authorization code that you can embed in your web
%% server code. Before you use this command, make sure that you have
%% configured the dashboards and permissions.
%%
%% Currently, you can use <code>GetDashboardEmbedURL</code> only from the
%% server, not from the user's browser. The following rules apply to the
%% combination of URL and authorization code:
%%
%% <ul> <li> They must be used together.
%%
%% </li> <li> They can be used one time only.
%%
%% </li> <li> They are valid for 5 minutes after you run this command.
%%
%% </li> <li> The resulting user session is valid for 10 hours.
%%
%% </li> </ul> For more information, see <a
%% href="https://docs.aws.amazon.com/quicksight/latest/user/embedding-dashboards.html">Embedding
%% Amazon QuickSight Dashboards</a> in the <i>Amazon QuickSight User
%% Guide</i> or <a
%% href="https://docs.aws.amazon.com/quicksight/latest/APIReference/qs-dev-embedded-dashboards.html">Embedding
%% Amazon QuickSight Dashboards</a> in the <i>Amazon QuickSight API
%% Reference</i>.
get_dashboard_embed_url(Client, AwsAccountId, DashboardId, IdentityType, ResetDisabled, SessionLifetimeInMinutes, UndoRedoDisabled, UserArn)
  when is_map(Client) ->
    get_dashboard_embed_url(Client, AwsAccountId, DashboardId, IdentityType, ResetDisabled, SessionLifetimeInMinutes, UndoRedoDisabled, UserArn, []).
get_dashboard_embed_url(Client, AwsAccountId, DashboardId, IdentityType, ResetDisabled, SessionLifetimeInMinutes, UndoRedoDisabled, UserArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/dashboards/", http_uri:encode(DashboardId), "/embed-url"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"creds-type">>, IdentityType},
        {<<"reset-disabled">>, ResetDisabled},
        {<<"session-lifetime">>, SessionLifetimeInMinutes},
        {<<"undo-redo-disabled">>, UndoRedoDisabled},
        {<<"user-arn">>, UserArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Generates a session URL and authorization code that you can embed in
%% your web server code.
get_session_embed_url(Client, AwsAccountId, EntryPoint, SessionLifetimeInMinutes, UserArn)
  when is_map(Client) ->
    get_session_embed_url(Client, AwsAccountId, EntryPoint, SessionLifetimeInMinutes, UserArn, []).
get_session_embed_url(Client, AwsAccountId, EntryPoint, SessionLifetimeInMinutes, UserArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/session-embed-url"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"entry-point">>, EntryPoint},
        {<<"session-lifetime">>, SessionLifetimeInMinutes},
        {<<"user-arn">>, UserArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the versions of the dashboards in the QuickSight
%% subscription.
list_dashboard_versions(Client, AwsAccountId, DashboardId, MaxResults, NextToken)
  when is_map(Client) ->
    list_dashboard_versions(Client, AwsAccountId, DashboardId, MaxResults, NextToken, []).
list_dashboard_versions(Client, AwsAccountId, DashboardId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/dashboards/", http_uri:encode(DashboardId), "/versions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists dashboards in an AWS account.
list_dashboards(Client, AwsAccountId, MaxResults, NextToken)
  when is_map(Client) ->
    list_dashboards(Client, AwsAccountId, MaxResults, NextToken, []).
list_dashboards(Client, AwsAccountId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/dashboards"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the datasets belonging to the current AWS account in an
%% AWS Region.
%%
%% The permissions resource is
%% <code>arn:aws:quicksight:region:aws-account-id:dataset/*</code>.
list_data_sets(Client, AwsAccountId, MaxResults, NextToken)
  when is_map(Client) ->
    list_data_sets(Client, AwsAccountId, MaxResults, NextToken, []).
list_data_sets(Client, AwsAccountId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/data-sets"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists data sources in current AWS Region that belong to this AWS
%% account.
list_data_sources(Client, AwsAccountId, MaxResults, NextToken)
  when is_map(Client) ->
    list_data_sources(Client, AwsAccountId, MaxResults, NextToken, []).
list_data_sources(Client, AwsAccountId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/data-sources"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists member users in a group.
list_group_memberships(Client, AwsAccountId, GroupName, Namespace, MaxResults, NextToken)
  when is_map(Client) ->
    list_group_memberships(Client, AwsAccountId, GroupName, Namespace, MaxResults, NextToken, []).
list_group_memberships(Client, AwsAccountId, GroupName, Namespace, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), "/groups/", http_uri:encode(GroupName), "/members"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all user groups in Amazon QuickSight.
list_groups(Client, AwsAccountId, Namespace, MaxResults, NextToken)
  when is_map(Client) ->
    list_groups(Client, AwsAccountId, Namespace, MaxResults, NextToken, []).
list_groups(Client, AwsAccountId, Namespace, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), "/groups"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists IAM policy assignments in the current Amazon QuickSight
%% account.
list_i_a_m_policy_assignments(Client, AwsAccountId, Namespace, MaxResults, NextToken)
  when is_map(Client) ->
    list_i_a_m_policy_assignments(Client, AwsAccountId, Namespace, MaxResults, NextToken, []).
list_i_a_m_policy_assignments(Client, AwsAccountId, Namespace, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), "/iam-policy-assignments"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the IAM policy assignments, including the Amazon Resource
%% Names (ARNs) for the IAM policies assigned to the specified user and group
%% or groups that the user belongs to.
list_i_a_m_policy_assignments_for_user(Client, AwsAccountId, Namespace, UserName, MaxResults, NextToken)
  when is_map(Client) ->
    list_i_a_m_policy_assignments_for_user(Client, AwsAccountId, Namespace, UserName, MaxResults, NextToken, []).
list_i_a_m_policy_assignments_for_user(Client, AwsAccountId, Namespace, UserName, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), "/users/", http_uri:encode(UserName), "/iam-policy-assignments"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the history of SPICE ingestions for a dataset.
list_ingestions(Client, AwsAccountId, DataSetId, MaxResults, NextToken)
  when is_map(Client) ->
    list_ingestions(Client, AwsAccountId, DataSetId, MaxResults, NextToken, []).
list_ingestions(Client, AwsAccountId, DataSetId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/data-sets/", http_uri:encode(DataSetId), "/ingestions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the namespaces for the specified AWS account.
list_namespaces(Client, AwsAccountId, MaxResults, NextToken)
  when is_map(Client) ->
    list_namespaces(Client, AwsAccountId, MaxResults, NextToken, []).
list_namespaces(Client, AwsAccountId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags assigned to a resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/resources/", http_uri:encode(ResourceArn), "/tags"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the aliases of a template.
list_template_aliases(Client, AwsAccountId, TemplateId, MaxResults, NextToken)
  when is_map(Client) ->
    list_template_aliases(Client, AwsAccountId, TemplateId, MaxResults, NextToken, []).
list_template_aliases(Client, AwsAccountId, TemplateId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/templates/", http_uri:encode(TemplateId), "/aliases"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max-result">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the versions of the templates in the current Amazon
%% QuickSight account.
list_template_versions(Client, AwsAccountId, TemplateId, MaxResults, NextToken)
  when is_map(Client) ->
    list_template_versions(Client, AwsAccountId, TemplateId, MaxResults, NextToken, []).
list_template_versions(Client, AwsAccountId, TemplateId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/templates/", http_uri:encode(TemplateId), "/versions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the templates in the current Amazon QuickSight account.
list_templates(Client, AwsAccountId, MaxResults, NextToken)
  when is_map(Client) ->
    list_templates(Client, AwsAccountId, MaxResults, NextToken, []).
list_templates(Client, AwsAccountId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/templates"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max-result">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the aliases of a theme.
list_theme_aliases(Client, AwsAccountId, ThemeId, MaxResults, NextToken)
  when is_map(Client) ->
    list_theme_aliases(Client, AwsAccountId, ThemeId, MaxResults, NextToken, []).
list_theme_aliases(Client, AwsAccountId, ThemeId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/themes/", http_uri:encode(ThemeId), "/aliases"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max-result">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the versions of the themes in the current AWS account.
list_theme_versions(Client, AwsAccountId, ThemeId, MaxResults, NextToken)
  when is_map(Client) ->
    list_theme_versions(Client, AwsAccountId, ThemeId, MaxResults, NextToken, []).
list_theme_versions(Client, AwsAccountId, ThemeId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/themes/", http_uri:encode(ThemeId), "/versions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the themes in the current AWS account.
list_themes(Client, AwsAccountId, MaxResults, NextToken, Type)
  when is_map(Client) ->
    list_themes(Client, AwsAccountId, MaxResults, NextToken, Type, []).
list_themes(Client, AwsAccountId, MaxResults, NextToken, Type, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/themes"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken},
        {<<"type">>, Type}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon QuickSight groups that an Amazon QuickSight user is
%% a member of.
list_user_groups(Client, AwsAccountId, Namespace, UserName, MaxResults, NextToken)
  when is_map(Client) ->
    list_user_groups(Client, AwsAccountId, Namespace, UserName, MaxResults, NextToken, []).
list_user_groups(Client, AwsAccountId, Namespace, UserName, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), "/users/", http_uri:encode(UserName), "/groups"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all of the Amazon QuickSight users belonging to
%% this account.
list_users(Client, AwsAccountId, Namespace, MaxResults, NextToken)
  when is_map(Client) ->
    list_users(Client, AwsAccountId, Namespace, MaxResults, NextToken, []).
list_users(Client, AwsAccountId, Namespace, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), "/users"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"max-results">>, MaxResults},
        {<<"next-token">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates an Amazon QuickSight user, whose identity is associated with
%% the AWS Identity and Access Management (IAM) identity or role specified in
%% the request.
register_user(Client, AwsAccountId, Namespace, Input) ->
    register_user(Client, AwsAccountId, Namespace, Input, []).
register_user(Client, AwsAccountId, Namespace, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), "/users"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Searchs for dashboards that belong to a user.
search_dashboards(Client, AwsAccountId, Input) ->
    search_dashboards(Client, AwsAccountId, Input, []).
search_dashboards(Client, AwsAccountId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/search/dashboards"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Assigns one or more tags (key-value pairs) to the specified
%% QuickSight resource.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope user permissions, by granting a user permission to access or
%% change only resources with certain tag values. You can use the
%% <code>TagResource</code> operation with a resource that already has tags.
%% If you specify a new tag key for the resource, this tag is appended to the
%% list of tags associated with the resource. If you specify a tag key that
%% is already associated with the resource, the new tag value that you
%% specify replaces the previous value for that tag.
%%
%% You can associate as many as 50 tags with a resource. QuickSight supports
%% tagging on data set, data source, dashboard, and template.
%%
%% Tagging for QuickSight works in a similar way to tagging for other AWS
%% services, except for the following:
%%
%% <ul> <li> You can't use tags to track AWS costs for QuickSight. This
%% restriction is because QuickSight costs are based on users and SPICE
%% capacity, which aren't taggable resources.
%%
%% </li> <li> QuickSight doesn't currently support the Tag Editor for AWS
%% Resource Groups.
%%
%% </li> </ul>
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/resources/", http_uri:encode(ResourceArn), "/tags"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a tag or tags from a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/resources/", http_uri:encode(ResourceArn), "/tags"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"keys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates customizations associated with the QuickSight subscription on
%% your AWS account.
update_account_customization(Client, AwsAccountId, Input) ->
    update_account_customization(Client, AwsAccountId, Input, []).
update_account_customization(Client, AwsAccountId, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/customizations"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"namespace">>, <<"Namespace">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the settings for the Amazon QuickSight subscription in your
%% AWS Account.
update_account_settings(Client, AwsAccountId, Input) ->
    update_account_settings(Client, AwsAccountId, Input, []).
update_account_settings(Client, AwsAccountId, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/settings"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a dashboard in an AWS account.
update_dashboard(Client, AwsAccountId, DashboardId, Input) ->
    update_dashboard(Client, AwsAccountId, DashboardId, Input, []).
update_dashboard(Client, AwsAccountId, DashboardId, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/dashboards/", http_uri:encode(DashboardId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates read and write permissions on a dashboard.
update_dashboard_permissions(Client, AwsAccountId, DashboardId, Input) ->
    update_dashboard_permissions(Client, AwsAccountId, DashboardId, Input, []).
update_dashboard_permissions(Client, AwsAccountId, DashboardId, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/dashboards/", http_uri:encode(DashboardId), "/permissions"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the published version of a dashboard.
update_dashboard_published_version(Client, AwsAccountId, DashboardId, VersionNumber, Input) ->
    update_dashboard_published_version(Client, AwsAccountId, DashboardId, VersionNumber, Input, []).
update_dashboard_published_version(Client, AwsAccountId, DashboardId, VersionNumber, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/dashboards/", http_uri:encode(DashboardId), "/versions/", http_uri:encode(VersionNumber), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a dataset.
update_data_set(Client, AwsAccountId, DataSetId, Input) ->
    update_data_set(Client, AwsAccountId, DataSetId, Input, []).
update_data_set(Client, AwsAccountId, DataSetId, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/data-sets/", http_uri:encode(DataSetId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the permissions on a dataset.
%%
%% The permissions resource is
%% <code>arn:aws:quicksight:region:aws-account-id:dataset/data-set-id</code>.
update_data_set_permissions(Client, AwsAccountId, DataSetId, Input) ->
    update_data_set_permissions(Client, AwsAccountId, DataSetId, Input, []).
update_data_set_permissions(Client, AwsAccountId, DataSetId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/data-sets/", http_uri:encode(DataSetId), "/permissions"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a data source.
update_data_source(Client, AwsAccountId, DataSourceId, Input) ->
    update_data_source(Client, AwsAccountId, DataSourceId, Input, []).
update_data_source(Client, AwsAccountId, DataSourceId, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/data-sources/", http_uri:encode(DataSourceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the permissions to a data source.
update_data_source_permissions(Client, AwsAccountId, DataSourceId, Input) ->
    update_data_source_permissions(Client, AwsAccountId, DataSourceId, Input, []).
update_data_source_permissions(Client, AwsAccountId, DataSourceId, Input0, Options) ->
    Method = post,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/data-sources/", http_uri:encode(DataSourceId), "/permissions"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Changes a group description.
update_group(Client, AwsAccountId, GroupName, Namespace, Input) ->
    update_group(Client, AwsAccountId, GroupName, Namespace, Input, []).
update_group(Client, AwsAccountId, GroupName, Namespace, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), "/groups/", http_uri:encode(GroupName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing IAM policy assignment. This operation updates
%% only the optional parameter or parameters that are specified in the
%% request.
update_i_a_m_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Input) ->
    update_i_a_m_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Input, []).
update_i_a_m_policy_assignment(Client, AssignmentName, AwsAccountId, Namespace, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), "/iam-policy-assignments/", http_uri:encode(AssignmentName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a template from an existing Amazon QuickSight analysis or
%% another template.
update_template(Client, AwsAccountId, TemplateId, Input) ->
    update_template(Client, AwsAccountId, TemplateId, Input, []).
update_template(Client, AwsAccountId, TemplateId, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/templates/", http_uri:encode(TemplateId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the template alias of a template.
update_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input) ->
    update_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input, []).
update_template_alias(Client, AliasName, AwsAccountId, TemplateId, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/templates/", http_uri:encode(TemplateId), "/aliases/", http_uri:encode(AliasName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the resource permissions for a template.
update_template_permissions(Client, AwsAccountId, TemplateId, Input) ->
    update_template_permissions(Client, AwsAccountId, TemplateId, Input, []).
update_template_permissions(Client, AwsAccountId, TemplateId, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/templates/", http_uri:encode(TemplateId), "/permissions"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a theme.
update_theme(Client, AwsAccountId, ThemeId, Input) ->
    update_theme(Client, AwsAccountId, ThemeId, Input, []).
update_theme(Client, AwsAccountId, ThemeId, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/themes/", http_uri:encode(ThemeId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an alias of a theme.
update_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input) ->
    update_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input, []).
update_theme_alias(Client, AliasName, AwsAccountId, ThemeId, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/themes/", http_uri:encode(ThemeId), "/aliases/", http_uri:encode(AliasName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the resource permissions for a theme. Permissions apply to
%% the action to grant or revoke permissions on, for example
%% <code>"quicksight:DescribeTheme"</code>.
%%
%% Theme permissions apply in groupings. Valid groupings include the
%% following for the three levels of permissions, which are user, owner, or
%% no permissions:
%%
%% <ul> <li> User
%%
%% <ul> <li> <code>"quicksight:DescribeTheme"</code>
%%
%% </li> <li> <code>"quicksight:DescribeThemeAlias"</code>
%%
%% </li> <li> <code>"quicksight:ListThemeAliases"</code>
%%
%% </li> <li> <code>"quicksight:ListThemeVersions"</code>
%%
%% </li> </ul> </li> <li> Owner
%%
%% <ul> <li> <code>"quicksight:DescribeTheme"</code>
%%
%% </li> <li> <code>"quicksight:DescribeThemeAlias"</code>
%%
%% </li> <li> <code>"quicksight:ListThemeAliases"</code>
%%
%% </li> <li> <code>"quicksight:ListThemeVersions"</code>
%%
%% </li> <li> <code>"quicksight:DeleteTheme"</code>
%%
%% </li> <li> <code>"quicksight:UpdateTheme"</code>
%%
%% </li> <li> <code>"quicksight:CreateThemeAlias"</code>
%%
%% </li> <li> <code>"quicksight:DeleteThemeAlias"</code>
%%
%% </li> <li> <code>"quicksight:UpdateThemeAlias"</code>
%%
%% </li> <li> <code>"quicksight:UpdateThemePermissions"</code>
%%
%% </li> <li> <code>"quicksight:DescribeThemePermissions"</code>
%%
%% </li> </ul> </li> <li> To specify no permissions, omit the permissions
%% list.
%%
%% </li> </ul>
update_theme_permissions(Client, AwsAccountId, ThemeId, Input) ->
    update_theme_permissions(Client, AwsAccountId, ThemeId, Input, []).
update_theme_permissions(Client, AwsAccountId, ThemeId, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/themes/", http_uri:encode(ThemeId), "/permissions"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an Amazon QuickSight user.
update_user(Client, AwsAccountId, Namespace, UserName, Input) ->
    update_user(Client, AwsAccountId, Namespace, UserName, Input, []).
update_user(Client, AwsAccountId, Namespace, UserName, Input0, Options) ->
    Method = put,
    Path = ["/accounts/", http_uri:encode(AwsAccountId), "/namespaces/", http_uri:encode(Namespace), "/users/", http_uri:encode(UserName), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

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
    Client1 = Client#{service => <<"quicksight">>},
    Host = build_host(<<"quicksight">>, Client1),
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
