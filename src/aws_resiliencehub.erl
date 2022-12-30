%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Resilience Hub helps you proactively prepare and protect your
%% Amazon Web Services applications from disruptions.
%%
%% Resilience Hub offers continuous resiliency assessment and validation that
%% integrates into your software development lifecycle. This enables you to
%% uncover resiliency weaknesses, ensure recovery time objective (RTO) and
%% recovery point objective (RPO) targets for your applications are met, and
%% resolve issues before they are released into production.
-module(aws_resiliencehub).

-export([add_draft_app_version_resource_mappings/2,
         add_draft_app_version_resource_mappings/3,
         create_app/2,
         create_app/3,
         create_recommendation_template/2,
         create_recommendation_template/3,
         create_resiliency_policy/2,
         create_resiliency_policy/3,
         delete_app/2,
         delete_app/3,
         delete_app_assessment/2,
         delete_app_assessment/3,
         delete_recommendation_template/2,
         delete_recommendation_template/3,
         delete_resiliency_policy/2,
         delete_resiliency_policy/3,
         describe_app/2,
         describe_app/3,
         describe_app_assessment/2,
         describe_app_assessment/3,
         describe_app_version_resources_resolution_status/2,
         describe_app_version_resources_resolution_status/3,
         describe_app_version_template/2,
         describe_app_version_template/3,
         describe_draft_app_version_resources_import_status/2,
         describe_draft_app_version_resources_import_status/3,
         describe_resiliency_policy/2,
         describe_resiliency_policy/3,
         import_resources_to_draft_app_version/2,
         import_resources_to_draft_app_version/3,
         list_alarm_recommendations/2,
         list_alarm_recommendations/3,
         list_app_assessments/1,
         list_app_assessments/3,
         list_app_assessments/4,
         list_app_component_compliances/2,
         list_app_component_compliances/3,
         list_app_component_recommendations/2,
         list_app_component_recommendations/3,
         list_app_version_resource_mappings/2,
         list_app_version_resource_mappings/3,
         list_app_version_resources/2,
         list_app_version_resources/3,
         list_app_versions/2,
         list_app_versions/3,
         list_apps/1,
         list_apps/3,
         list_apps/4,
         list_recommendation_templates/2,
         list_recommendation_templates/4,
         list_recommendation_templates/5,
         list_resiliency_policies/1,
         list_resiliency_policies/3,
         list_resiliency_policies/4,
         list_sop_recommendations/2,
         list_sop_recommendations/3,
         list_suggested_resiliency_policies/1,
         list_suggested_resiliency_policies/3,
         list_suggested_resiliency_policies/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_test_recommendations/2,
         list_test_recommendations/3,
         list_unsupported_app_version_resources/2,
         list_unsupported_app_version_resources/3,
         publish_app_version/2,
         publish_app_version/3,
         put_draft_app_version_template/2,
         put_draft_app_version_template/3,
         remove_draft_app_version_resource_mappings/2,
         remove_draft_app_version_resource_mappings/3,
         resolve_app_version_resources/2,
         resolve_app_version_resources/3,
         start_app_assessment/2,
         start_app_assessment/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_app/2,
         update_app/3,
         update_resiliency_policy/2,
         update_resiliency_policy/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds the resource mapping for the draft application version.
add_draft_app_version_resource_mappings(Client, Input) ->
    add_draft_app_version_resource_mappings(Client, Input, []).
add_draft_app_version_resource_mappings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/add-draft-app-version-resource-mappings"],
    SuccessStatusCode = 200,
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

%% @doc Creates a Resilience Hub application.
%%
%% A Resilience Hub application is a collection of Amazon Web Services
%% resources structured to prevent and recover Amazon Web Services
%% application disruptions. To describe a Resilience Hub application, you
%% provide an application name, resources from one or more–up to
%% five–CloudFormation stacks, and an appropriate resiliency policy.
%%
%% After you create a Resilience Hub application, you publish it so that you
%% can run a resiliency assessment on it. You can then use recommendations
%% from the assessment to improve resiliency by running another assessment,
%% comparing results, and then iterating the process until you achieve your
%% goals for recovery time objective (RTO) and recovery point objective
%% (RPO).
create_app(Client, Input) ->
    create_app(Client, Input, []).
create_app(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-app"],
    SuccessStatusCode = 200,
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

%% @doc Creates a new recommendation template.
create_recommendation_template(Client, Input) ->
    create_recommendation_template(Client, Input, []).
create_recommendation_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-recommendation-template"],
    SuccessStatusCode = 200,
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

%% @doc Creates a resiliency policy for an application.
create_resiliency_policy(Client, Input) ->
    create_resiliency_policy(Client, Input, []).
create_resiliency_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-resiliency-policy"],
    SuccessStatusCode = 200,
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

%% @doc Deletes an AWS Resilience Hub application.
%%
%% This is a destructive action that can't be undone.
delete_app(Client, Input) ->
    delete_app(Client, Input, []).
delete_app(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-app"],
    SuccessStatusCode = 200,
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

%% @doc Deletes an AWS Resilience Hub application assessment.
%%
%% This is a destructive action that can't be undone.
delete_app_assessment(Client, Input) ->
    delete_app_assessment(Client, Input, []).
delete_app_assessment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-app-assessment"],
    SuccessStatusCode = 200,
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

%% @doc Deletes a recommendation template.
%%
%% This is a destructive action that can't be undone.
delete_recommendation_template(Client, Input) ->
    delete_recommendation_template(Client, Input, []).
delete_recommendation_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-recommendation-template"],
    SuccessStatusCode = 200,
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

%% @doc Deletes a resiliency policy.
%%
%% This is a destructive action that can't be undone.
delete_resiliency_policy(Client, Input) ->
    delete_resiliency_policy(Client, Input, []).
delete_resiliency_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-resiliency-policy"],
    SuccessStatusCode = 200,
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

%% @doc Describes an AWS Resilience Hub application.
describe_app(Client, Input) ->
    describe_app(Client, Input, []).
describe_app(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-app"],
    SuccessStatusCode = 200,
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

%% @doc Describes an assessment for an AWS Resilience Hub application.
describe_app_assessment(Client, Input) ->
    describe_app_assessment(Client, Input, []).
describe_app_assessment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-app-assessment"],
    SuccessStatusCode = 200,
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

%% @doc Returns the resolution status for the specified resolution identifier
%% for an application version.
%%
%% If `resolutionId' is not specified, the current resolution status is
%% returned.
describe_app_version_resources_resolution_status(Client, Input) ->
    describe_app_version_resources_resolution_status(Client, Input, []).
describe_app_version_resources_resolution_status(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-app-version-resources-resolution-status"],
    SuccessStatusCode = 200,
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

%% @doc Describes details about an AWS Resilience Hub
describe_app_version_template(Client, Input) ->
    describe_app_version_template(Client, Input, []).
describe_app_version_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-app-version-template"],
    SuccessStatusCode = 200,
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

%% @doc Describes the status of importing resources to an application
%% version.
describe_draft_app_version_resources_import_status(Client, Input) ->
    describe_draft_app_version_resources_import_status(Client, Input, []).
describe_draft_app_version_resources_import_status(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-draft-app-version-resources-import-status"],
    SuccessStatusCode = 200,
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

%% @doc Describes a specified resiliency policy for an AWS Resilience Hub
%% application.
%%
%% The returned policy object includes creation time, data location
%% constraints, the Amazon Resource Name (ARN) for the policy, tags, tier,
%% and more.
describe_resiliency_policy(Client, Input) ->
    describe_resiliency_policy(Client, Input, []).
describe_resiliency_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-resiliency-policy"],
    SuccessStatusCode = 200,
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

%% @doc Imports resources from sources such as a CloudFormation stack,
%% resource-groups, or application registry app to a draft application
%% version.
import_resources_to_draft_app_version(Client, Input) ->
    import_resources_to_draft_app_version(Client, Input, []).
import_resources_to_draft_app_version(Client, Input0, Options0) ->
    Method = post,
    Path = ["/import-resources-to-draft-app-version"],
    SuccessStatusCode = 200,
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

%% @doc Lists the alarm recommendations for a AWS Resilience Hub application.
list_alarm_recommendations(Client, Input) ->
    list_alarm_recommendations(Client, Input, []).
list_alarm_recommendations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-alarm-recommendations"],
    SuccessStatusCode = 200,
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

%% @doc Lists the assessments for an AWS Resilience Hub application.
%%
%% You can use request parameters to refine the results for the response
%% object.
list_app_assessments(Client)
  when is_map(Client) ->
    list_app_assessments(Client, #{}, #{}).

list_app_assessments(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_app_assessments(Client, QueryMap, HeadersMap, []).

list_app_assessments(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/list-app-assessments"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"appArn">>, maps:get(<<"appArn">>, QueryMap, undefined)},
        {<<"assessmentName">>, maps:get(<<"assessmentName">>, QueryMap, undefined)},
        {<<"assessmentStatus">>, maps:get(<<"assessmentStatus">>, QueryMap, undefined)},
        {<<"complianceStatus">>, maps:get(<<"complianceStatus">>, QueryMap, undefined)},
        {<<"invoker">>, maps:get(<<"invoker">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"reverseOrder">>, maps:get(<<"reverseOrder">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the compliances for an AWS Resilience Hub component.
list_app_component_compliances(Client, Input) ->
    list_app_component_compliances(Client, Input, []).
list_app_component_compliances(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-app-component-compliances"],
    SuccessStatusCode = 200,
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

%% @doc Lists the recommendations for an AWS Resilience Hub component.
list_app_component_recommendations(Client, Input) ->
    list_app_component_recommendations(Client, Input, []).
list_app_component_recommendations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-app-component-recommendations"],
    SuccessStatusCode = 200,
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

%% @doc Lists how the resources in an application version are mapped/sourced
%% from.
%%
%% Mappings can be physical resource identifiers, CloudFormation stacks,
%% resource-groups, or an application registry app.
list_app_version_resource_mappings(Client, Input) ->
    list_app_version_resource_mappings(Client, Input, []).
list_app_version_resource_mappings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-app-version-resource-mappings"],
    SuccessStatusCode = 200,
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

%% @doc Lists all the resources in an application version.
list_app_version_resources(Client, Input) ->
    list_app_version_resources(Client, Input, []).
list_app_version_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-app-version-resources"],
    SuccessStatusCode = 200,
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

%% @doc Lists the different versions for the Resilience Hub applications.
list_app_versions(Client, Input) ->
    list_app_versions(Client, Input, []).
list_app_versions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-app-versions"],
    SuccessStatusCode = 200,
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

%% @doc Lists your Resilience Hub applications.
list_apps(Client)
  when is_map(Client) ->
    list_apps(Client, #{}, #{}).

list_apps(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_apps(Client, QueryMap, HeadersMap, []).

list_apps(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/list-apps"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"appArn">>, maps:get(<<"appArn">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the recommendation templates for the Resilience Hub
%% applications.
list_recommendation_templates(Client, AssessmentArn)
  when is_map(Client) ->
    list_recommendation_templates(Client, AssessmentArn, #{}, #{}).

list_recommendation_templates(Client, AssessmentArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_recommendation_templates(Client, AssessmentArn, QueryMap, HeadersMap, []).

list_recommendation_templates(Client, AssessmentArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/list-recommendation-templates"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"assessmentArn">>, AssessmentArn},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"recommendationTemplateArn">>, maps:get(<<"recommendationTemplateArn">>, QueryMap, undefined)},
        {<<"reverseOrder">>, maps:get(<<"reverseOrder">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the resiliency policies for the Resilience Hub applications.
list_resiliency_policies(Client)
  when is_map(Client) ->
    list_resiliency_policies(Client, #{}, #{}).

list_resiliency_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resiliency_policies(Client, QueryMap, HeadersMap, []).

list_resiliency_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/list-resiliency-policies"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"policyName">>, maps:get(<<"policyName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the standard operating procedure (SOP) recommendations for the
%% Resilience Hub applications.
list_sop_recommendations(Client, Input) ->
    list_sop_recommendations(Client, Input, []).
list_sop_recommendations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-sop-recommendations"],
    SuccessStatusCode = 200,
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

%% @doc Lists the suggested resiliency policies for the Resilience Hub
%% applications.
list_suggested_resiliency_policies(Client)
  when is_map(Client) ->
    list_suggested_resiliency_policies(Client, #{}, #{}).

list_suggested_resiliency_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_suggested_resiliency_policies(Client, QueryMap, HeadersMap, []).

list_suggested_resiliency_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/list-suggested-resiliency-policies"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags for your resources in your Resilience Hub
%% applications.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the test recommendations for the Resilience Hub application.
list_test_recommendations(Client, Input) ->
    list_test_recommendations(Client, Input, []).
list_test_recommendations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-test-recommendations"],
    SuccessStatusCode = 200,
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

%% @doc Lists the resources that are not currently supported in AWS
%% Resilience Hub.
%%
%% An unsupported resource is a resource that exists in the object that was
%% used to create an app, but is not supported by Resilience Hub.
list_unsupported_app_version_resources(Client, Input) ->
    list_unsupported_app_version_resources(Client, Input, []).
list_unsupported_app_version_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-unsupported-app-version-resources"],
    SuccessStatusCode = 200,
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

%% @doc Publishes a new version of a specific Resilience Hub application.
publish_app_version(Client, Input) ->
    publish_app_version(Client, Input, []).
publish_app_version(Client, Input0, Options0) ->
    Method = post,
    Path = ["/publish-app-version"],
    SuccessStatusCode = 200,
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

%% @doc Adds or updates the app template for a draft version of a Resilience
%% Hub app.
put_draft_app_version_template(Client, Input) ->
    put_draft_app_version_template(Client, Input, []).
put_draft_app_version_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/put-draft-app-version-template"],
    SuccessStatusCode = 200,
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

%% @doc Removes resource mappings from a draft application version.
remove_draft_app_version_resource_mappings(Client, Input) ->
    remove_draft_app_version_resource_mappings(Client, Input, []).
remove_draft_app_version_resource_mappings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/remove-draft-app-version-resource-mappings"],
    SuccessStatusCode = 200,
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

%% @doc Resolves the resources for an application version.
resolve_app_version_resources(Client, Input) ->
    resolve_app_version_resources(Client, Input, []).
resolve_app_version_resources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/resolve-app-version-resources"],
    SuccessStatusCode = 200,
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

%% @doc Creates a new application assessment for an application.
start_app_assessment(Client, Input) ->
    start_app_assessment(Client, Input, []).
start_app_assessment(Client, Input0, Options0) ->
    Method = post,
    Path = ["/start-app-assessment"],
    SuccessStatusCode = 200,
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

%% @doc Applies one or more tags to a resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
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

%% @doc Removes one or more tags from a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an application.
update_app(Client, Input) ->
    update_app(Client, Input, []).
update_app(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-app"],
    SuccessStatusCode = 200,
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

%% @doc Updates a resiliency policy.
update_resiliency_policy(Client, Input) ->
    update_resiliency_policy(Client, Input, []).
update_resiliency_policy(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-resiliency-policy"],
    SuccessStatusCode = 200,
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
    Client1 = Client#{service => <<"resiliencehub">>},
    Host = build_host(<<"resiliencehub">>, Client1),
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
