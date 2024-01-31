%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon DataZone is a data management service that enables you to
%% catalog, discover, govern, share, and analyze your data.
%%
%% With Amazon DataZone, you can share and access your data across accounts
%% and supported regions. Amazon DataZone simplifies your experience across
%% Amazon Web Services services, including, but not limited to, Amazon
%% Redshift, Amazon Athena, Amazon Web Services Glue, and Amazon Web Services
%% Lake Formation.
-module(aws_datazone).

-export([accept_predictions/4,
         accept_predictions/5,
         accept_subscription_request/4,
         accept_subscription_request/5,
         cancel_subscription/4,
         cancel_subscription/5,
         create_asset/3,
         create_asset/4,
         create_asset_revision/4,
         create_asset_revision/5,
         create_asset_type/3,
         create_asset_type/4,
         create_data_source/3,
         create_data_source/4,
         create_domain/2,
         create_domain/3,
         create_environment/3,
         create_environment/4,
         create_environment_profile/3,
         create_environment_profile/4,
         create_form_type/3,
         create_form_type/4,
         create_glossary/3,
         create_glossary/4,
         create_glossary_term/3,
         create_glossary_term/4,
         create_group_profile/3,
         create_group_profile/4,
         create_listing_change_set/3,
         create_listing_change_set/4,
         create_project/3,
         create_project/4,
         create_project_membership/4,
         create_project_membership/5,
         create_subscription_grant/3,
         create_subscription_grant/4,
         create_subscription_request/3,
         create_subscription_request/4,
         create_subscription_target/4,
         create_subscription_target/5,
         create_user_profile/3,
         create_user_profile/4,
         delete_asset/4,
         delete_asset/5,
         delete_asset_type/4,
         delete_asset_type/5,
         delete_data_source/4,
         delete_data_source/5,
         delete_domain/3,
         delete_domain/4,
         delete_environment/4,
         delete_environment/5,
         delete_environment_blueprint_configuration/4,
         delete_environment_blueprint_configuration/5,
         delete_environment_profile/4,
         delete_environment_profile/5,
         delete_form_type/4,
         delete_form_type/5,
         delete_glossary/4,
         delete_glossary/5,
         delete_glossary_term/4,
         delete_glossary_term/5,
         delete_listing/4,
         delete_listing/5,
         delete_project/4,
         delete_project/5,
         delete_project_membership/4,
         delete_project_membership/5,
         delete_subscription_grant/4,
         delete_subscription_grant/5,
         delete_subscription_request/4,
         delete_subscription_request/5,
         delete_subscription_target/5,
         delete_subscription_target/6,
         get_asset/3,
         get_asset/5,
         get_asset/6,
         get_asset_type/3,
         get_asset_type/5,
         get_asset_type/6,
         get_data_source/3,
         get_data_source/5,
         get_data_source/6,
         get_data_source_run/3,
         get_data_source_run/5,
         get_data_source_run/6,
         get_domain/2,
         get_domain/4,
         get_domain/5,
         get_environment/3,
         get_environment/5,
         get_environment/6,
         get_environment_blueprint/3,
         get_environment_blueprint/5,
         get_environment_blueprint/6,
         get_environment_blueprint_configuration/3,
         get_environment_blueprint_configuration/5,
         get_environment_blueprint_configuration/6,
         get_environment_profile/3,
         get_environment_profile/5,
         get_environment_profile/6,
         get_form_type/3,
         get_form_type/5,
         get_form_type/6,
         get_glossary/3,
         get_glossary/5,
         get_glossary/6,
         get_glossary_term/3,
         get_glossary_term/5,
         get_glossary_term/6,
         get_group_profile/3,
         get_group_profile/5,
         get_group_profile/6,
         get_iam_portal_login_url/3,
         get_iam_portal_login_url/4,
         get_listing/3,
         get_listing/5,
         get_listing/6,
         get_project/3,
         get_project/5,
         get_project/6,
         get_subscription/3,
         get_subscription/5,
         get_subscription/6,
         get_subscription_grant/3,
         get_subscription_grant/5,
         get_subscription_grant/6,
         get_subscription_request_details/3,
         get_subscription_request_details/5,
         get_subscription_request_details/6,
         get_subscription_target/4,
         get_subscription_target/6,
         get_subscription_target/7,
         get_user_profile/3,
         get_user_profile/5,
         get_user_profile/6,
         list_asset_revisions/3,
         list_asset_revisions/5,
         list_asset_revisions/6,
         list_data_source_run_activities/3,
         list_data_source_run_activities/5,
         list_data_source_run_activities/6,
         list_data_source_runs/3,
         list_data_source_runs/5,
         list_data_source_runs/6,
         list_data_sources/3,
         list_data_sources/5,
         list_data_sources/6,
         list_domains/1,
         list_domains/3,
         list_domains/4,
         list_environment_blueprint_configurations/2,
         list_environment_blueprint_configurations/4,
         list_environment_blueprint_configurations/5,
         list_environment_blueprints/2,
         list_environment_blueprints/4,
         list_environment_blueprints/5,
         list_environment_profiles/2,
         list_environment_profiles/4,
         list_environment_profiles/5,
         list_environments/3,
         list_environments/5,
         list_environments/6,
         list_notifications/3,
         list_notifications/5,
         list_notifications/6,
         list_project_memberships/3,
         list_project_memberships/5,
         list_project_memberships/6,
         list_projects/2,
         list_projects/4,
         list_projects/5,
         list_subscription_grants/2,
         list_subscription_grants/4,
         list_subscription_grants/5,
         list_subscription_requests/2,
         list_subscription_requests/4,
         list_subscription_requests/5,
         list_subscription_targets/3,
         list_subscription_targets/5,
         list_subscription_targets/6,
         list_subscriptions/2,
         list_subscriptions/4,
         list_subscriptions/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_environment_blueprint_configuration/4,
         put_environment_blueprint_configuration/5,
         reject_predictions/4,
         reject_predictions/5,
         reject_subscription_request/4,
         reject_subscription_request/5,
         revoke_subscription/4,
         revoke_subscription/5,
         search/3,
         search/4,
         search_group_profiles/3,
         search_group_profiles/4,
         search_listings/3,
         search_listings/4,
         search_types/3,
         search_types/4,
         search_user_profiles/3,
         search_user_profiles/4,
         start_data_source_run/4,
         start_data_source_run/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_data_source/4,
         update_data_source/5,
         update_domain/3,
         update_domain/4,
         update_environment/4,
         update_environment/5,
         update_environment_profile/4,
         update_environment_profile/5,
         update_glossary/4,
         update_glossary/5,
         update_glossary_term/4,
         update_glossary_term/5,
         update_group_profile/4,
         update_group_profile/5,
         update_project/4,
         update_project/5,
         update_subscription_grant_status/5,
         update_subscription_grant_status/6,
         update_subscription_request/4,
         update_subscription_request/5,
         update_subscription_target/5,
         update_subscription_target/6,
         update_user_profile/4,
         update_user_profile/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts automatically generated business-friendly metadata for your
%% Amazon DataZone assets.
accept_predictions(Client, DomainIdentifier, Identifier, Input) ->
    accept_predictions(Client, DomainIdentifier, Identifier, Input, []).
accept_predictions(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/assets/", aws_util:encode_uri(Identifier), "/accept-predictions"],
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
                     {<<"revision">>, <<"revision">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Accepts a subscription request to a specific asset.
accept_subscription_request(Client, DomainIdentifier, Identifier, Input) ->
    accept_subscription_request(Client, DomainIdentifier, Identifier, Input, []).
accept_subscription_request(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-requests/", aws_util:encode_uri(Identifier), "/accept"],
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

%% @doc Cancels the subscription to the specified asset.
cancel_subscription(Client, DomainIdentifier, Identifier, Input) ->
    cancel_subscription(Client, DomainIdentifier, Identifier, Input, []).
cancel_subscription(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscriptions/", aws_util:encode_uri(Identifier), "/cancel"],
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

%% @doc Creates an asset in Amazon DataZone catalog.
create_asset(Client, DomainIdentifier, Input) ->
    create_asset(Client, DomainIdentifier, Input, []).
create_asset(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/assets"],
    SuccessStatusCode = 201,
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

%% @doc Creates a revision of the asset.
create_asset_revision(Client, DomainIdentifier, Identifier, Input) ->
    create_asset_revision(Client, DomainIdentifier, Identifier, Input, []).
create_asset_revision(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/assets/", aws_util:encode_uri(Identifier), "/revisions"],
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

%% @doc Creates a custom asset type.
create_asset_type(Client, DomainIdentifier, Input) ->
    create_asset_type(Client, DomainIdentifier, Input, []).
create_asset_type(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/asset-types"],
    SuccessStatusCode = 201,
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

%% @doc Creates an Amazon DataZone data source.
create_data_source(Client, DomainIdentifier, Input) ->
    create_data_source(Client, DomainIdentifier, Input, []).
create_data_source(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-sources"],
    SuccessStatusCode = 201,
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

%% @doc Creates an Amazon DataZone domain.
create_domain(Client, Input) ->
    create_domain(Client, Input, []).
create_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains"],
    SuccessStatusCode = 201,
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

%% @doc Create an Amazon DataZone environment.
create_environment(Client, DomainIdentifier, Input) ->
    create_environment(Client, DomainIdentifier, Input, []).
create_environment(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments"],
    SuccessStatusCode = 201,
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

%% @doc Creates an Amazon DataZone environment profile.
create_environment_profile(Client, DomainIdentifier, Input) ->
    create_environment_profile(Client, DomainIdentifier, Input, []).
create_environment_profile(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-profiles"],
    SuccessStatusCode = 201,
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

%% @doc Creates a metadata form type.
create_form_type(Client, DomainIdentifier, Input) ->
    create_form_type(Client, DomainIdentifier, Input, []).
create_form_type(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/form-types"],
    SuccessStatusCode = 201,
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

%% @doc Creates an Amazon DataZone business glossary.
create_glossary(Client, DomainIdentifier, Input) ->
    create_glossary(Client, DomainIdentifier, Input, []).
create_glossary(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/glossaries"],
    SuccessStatusCode = 201,
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

%% @doc Creates a business glossary term.
create_glossary_term(Client, DomainIdentifier, Input) ->
    create_glossary_term(Client, DomainIdentifier, Input, []).
create_glossary_term(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/glossary-terms"],
    SuccessStatusCode = 201,
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

%% @doc Creates a group profile in Amazon DataZone.
create_group_profile(Client, DomainIdentifier, Input) ->
    create_group_profile(Client, DomainIdentifier, Input, []).
create_group_profile(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/group-profiles"],
    SuccessStatusCode = 201,
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

%% @doc
create_listing_change_set(Client, DomainIdentifier, Input) ->
    create_listing_change_set(Client, DomainIdentifier, Input, []).
create_listing_change_set(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/listings/change-set"],
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

%% @doc Creates an Amazon DataZone project.
create_project(Client, DomainIdentifier, Input) ->
    create_project(Client, DomainIdentifier, Input, []).
create_project(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/projects"],
    SuccessStatusCode = 201,
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

%% @doc Creates a project membership in Amazon DataZone.
create_project_membership(Client, DomainIdentifier, ProjectIdentifier, Input) ->
    create_project_membership(Client, DomainIdentifier, ProjectIdentifier, Input, []).
create_project_membership(Client, DomainIdentifier, ProjectIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/projects/", aws_util:encode_uri(ProjectIdentifier), "/createMembership"],
    SuccessStatusCode = 201,
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

%% @doc Creates a subsscription grant in Amazon DataZone.
create_subscription_grant(Client, DomainIdentifier, Input) ->
    create_subscription_grant(Client, DomainIdentifier, Input, []).
create_subscription_grant(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-grants"],
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

%% @doc Creates a subscription request in Amazon DataZone.
create_subscription_request(Client, DomainIdentifier, Input) ->
    create_subscription_request(Client, DomainIdentifier, Input, []).
create_subscription_request(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-requests"],
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

%% @doc Creates a subscription target in Amazon DataZone.
create_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Input) ->
    create_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Input, []).
create_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/subscription-targets"],
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

%% @doc Creates a user profile in Amazon DataZone.
create_user_profile(Client, DomainIdentifier, Input) ->
    create_user_profile(Client, DomainIdentifier, Input, []).
create_user_profile(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/user-profiles"],
    SuccessStatusCode = 201,
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

%% @doc Delets an asset in Amazon DataZone.
delete_asset(Client, DomainIdentifier, Identifier, Input) ->
    delete_asset(Client, DomainIdentifier, Identifier, Input, []).
delete_asset(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/assets/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes an asset type in Amazon DataZone.
delete_asset_type(Client, DomainIdentifier, Identifier, Input) ->
    delete_asset_type(Client, DomainIdentifier, Identifier, Input, []).
delete_asset_type(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/asset-types/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes a data source in Amazon DataZone.
delete_data_source(Client, DomainIdentifier, Identifier, Input) ->
    delete_data_source(Client, DomainIdentifier, Identifier, Input, []).
delete_data_source(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-sources/", aws_util:encode_uri(Identifier), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a Amazon DataZone domain.
delete_domain(Client, Identifier, Input) ->
    delete_domain(Client, Identifier, Input, []).
delete_domain(Client, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 202,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"clientToken">>, <<"clientToken">>},
                     {<<"skipDeletionCheck">>, <<"skipDeletionCheck">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an environment in Amazon DataZone.
delete_environment(Client, DomainIdentifier, Identifier, Input) ->
    delete_environment(Client, DomainIdentifier, Identifier, Input, []).
delete_environment(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes the blueprint configuration in Amazon DataZone.
delete_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier, Input) ->
    delete_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier, Input, []).
delete_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-blueprint-configurations/", aws_util:encode_uri(EnvironmentBlueprintIdentifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes an environment profile in Amazon DataZone.
delete_environment_profile(Client, DomainIdentifier, Identifier, Input) ->
    delete_environment_profile(Client, DomainIdentifier, Identifier, Input, []).
delete_environment_profile(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-profiles/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Delets and metadata form type in Amazon DataZone.
delete_form_type(Client, DomainIdentifier, FormTypeIdentifier, Input) ->
    delete_form_type(Client, DomainIdentifier, FormTypeIdentifier, Input, []).
delete_form_type(Client, DomainIdentifier, FormTypeIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/form-types/", aws_util:encode_uri(FormTypeIdentifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes a business glossary in Amazon DataZone.
delete_glossary(Client, DomainIdentifier, Identifier, Input) ->
    delete_glossary(Client, DomainIdentifier, Identifier, Input, []).
delete_glossary(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/glossaries/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes a business glossary term in Amazon DataZone.
delete_glossary_term(Client, DomainIdentifier, Identifier, Input) ->
    delete_glossary_term(Client, DomainIdentifier, Identifier, Input, []).
delete_glossary_term(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/glossary-terms/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 204,
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

%% @doc
delete_listing(Client, DomainIdentifier, Identifier, Input) ->
    delete_listing(Client, DomainIdentifier, Identifier, Input, []).
delete_listing(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/listings/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes a project in Amazon DataZone.
delete_project(Client, DomainIdentifier, Identifier, Input) ->
    delete_project(Client, DomainIdentifier, Identifier, Input, []).
delete_project(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/projects/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"skipDeletionCheck">>, <<"skipDeletionCheck">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes project membership in Amazon DataZone.
delete_project_membership(Client, DomainIdentifier, ProjectIdentifier, Input) ->
    delete_project_membership(Client, DomainIdentifier, ProjectIdentifier, Input, []).
delete_project_membership(Client, DomainIdentifier, ProjectIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/projects/", aws_util:encode_uri(ProjectIdentifier), "/deleteMembership"],
    SuccessStatusCode = 204,
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

%% @doc Deletes and subscription grant in Amazon DataZone.
delete_subscription_grant(Client, DomainIdentifier, Identifier, Input) ->
    delete_subscription_grant(Client, DomainIdentifier, Identifier, Input, []).
delete_subscription_grant(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-grants/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Deletes a subscription request in Amazon DataZone.
delete_subscription_request(Client, DomainIdentifier, Identifier, Input) ->
    delete_subscription_request(Client, DomainIdentifier, Identifier, Input, []).
delete_subscription_request(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-requests/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes a subscription target in Amazon DataZone.
delete_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, Input) ->
    delete_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, Input, []).
delete_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, Input0, Options0) ->
    Method = delete,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/subscription-targets/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 204,
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

%% @doc Gets an Amazon DataZone asset.
get_asset(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_asset(Client, DomainIdentifier, Identifier, #{}, #{}).

get_asset(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_asset(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

get_asset(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/assets/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"revision">>, maps:get(<<"revision">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon DataZone asset type.
get_asset_type(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_asset_type(Client, DomainIdentifier, Identifier, #{}, #{}).

get_asset_type(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_asset_type(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

get_asset_type(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/asset-types/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"revision">>, maps:get(<<"revision">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon DataZone data source.
get_data_source(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_data_source(Client, DomainIdentifier, Identifier, #{}, #{}).

get_data_source(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_source(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

get_data_source(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-sources/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon DataZone data source run.
get_data_source_run(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_data_source_run(Client, DomainIdentifier, Identifier, #{}, #{}).

get_data_source_run(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_source_run(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

get_data_source_run(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-source-runs/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon DataZone domain.
get_domain(Client, Identifier)
  when is_map(Client) ->
    get_domain(Client, Identifier, #{}, #{}).

get_domain(Client, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain(Client, Identifier, QueryMap, HeadersMap, []).

get_domain(Client, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon DataZone environment.
get_environment(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_environment(Client, DomainIdentifier, Identifier, #{}, #{}).

get_environment(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_environment(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

get_environment(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an Amazon DataZone blueprint.
get_environment_blueprint(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_environment_blueprint(Client, DomainIdentifier, Identifier, #{}, #{}).

get_environment_blueprint(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_environment_blueprint(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

get_environment_blueprint(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-blueprints/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the blueprint configuration in Amazon DataZone.
get_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier)
  when is_map(Client) ->
    get_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier, #{}, #{}).

get_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier, QueryMap, HeadersMap, []).

get_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-blueprint-configurations/", aws_util:encode_uri(EnvironmentBlueprintIdentifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets an evinronment profile in Amazon DataZone.
get_environment_profile(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_environment_profile(Client, DomainIdentifier, Identifier, #{}, #{}).

get_environment_profile(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_environment_profile(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

get_environment_profile(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-profiles/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a metadata form type in Amazon DataZone.
get_form_type(Client, DomainIdentifier, FormTypeIdentifier)
  when is_map(Client) ->
    get_form_type(Client, DomainIdentifier, FormTypeIdentifier, #{}, #{}).

get_form_type(Client, DomainIdentifier, FormTypeIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_form_type(Client, DomainIdentifier, FormTypeIdentifier, QueryMap, HeadersMap, []).

get_form_type(Client, DomainIdentifier, FormTypeIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/form-types/", aws_util:encode_uri(FormTypeIdentifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"revision">>, maps:get(<<"revision">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a business glossary in Amazon DataZone.
get_glossary(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_glossary(Client, DomainIdentifier, Identifier, #{}, #{}).

get_glossary(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_glossary(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

get_glossary(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/glossaries/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a business glossary term in Amazon DataZone.
get_glossary_term(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_glossary_term(Client, DomainIdentifier, Identifier, #{}, #{}).

get_glossary_term(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_glossary_term(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

get_glossary_term(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/glossary-terms/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a group profile in Amazon DataZone.
get_group_profile(Client, DomainIdentifier, GroupIdentifier)
  when is_map(Client) ->
    get_group_profile(Client, DomainIdentifier, GroupIdentifier, #{}, #{}).

get_group_profile(Client, DomainIdentifier, GroupIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_group_profile(Client, DomainIdentifier, GroupIdentifier, QueryMap, HeadersMap, []).

get_group_profile(Client, DomainIdentifier, GroupIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/group-profiles/", aws_util:encode_uri(GroupIdentifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the data portal URL for the specified Amazon DataZone domain.
get_iam_portal_login_url(Client, DomainIdentifier, Input) ->
    get_iam_portal_login_url(Client, DomainIdentifier, Input, []).
get_iam_portal_login_url(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/get-portal-login-url"],
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

%% @doc
get_listing(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_listing(Client, DomainIdentifier, Identifier, #{}, #{}).

get_listing(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_listing(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

get_listing(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/listings/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"listingRevision">>, maps:get(<<"listingRevision">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a project in Amazon DataZone.
get_project(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_project(Client, DomainIdentifier, Identifier, #{}, #{}).

get_project(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_project(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

get_project(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/projects/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a subscription in Amazon DataZone.
get_subscription(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_subscription(Client, DomainIdentifier, Identifier, #{}, #{}).

get_subscription(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_subscription(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

get_subscription(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscriptions/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the subscription grant in Amazon DataZone.
get_subscription_grant(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_subscription_grant(Client, DomainIdentifier, Identifier, #{}, #{}).

get_subscription_grant(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_subscription_grant(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

get_subscription_grant(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-grants/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the details of the specified subscription request.
get_subscription_request_details(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    get_subscription_request_details(Client, DomainIdentifier, Identifier, #{}, #{}).

get_subscription_request_details(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_subscription_request_details(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

get_subscription_request_details(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-requests/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the subscription target in Amazon DataZone.
get_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier)
  when is_map(Client) ->
    get_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, #{}, #{}).

get_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, QueryMap, HeadersMap, []).

get_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/subscription-targets/", aws_util:encode_uri(Identifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a user profile in Amazon DataZone.
get_user_profile(Client, DomainIdentifier, UserIdentifier)
  when is_map(Client) ->
    get_user_profile(Client, DomainIdentifier, UserIdentifier, #{}, #{}).

get_user_profile(Client, DomainIdentifier, UserIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_user_profile(Client, DomainIdentifier, UserIdentifier, QueryMap, HeadersMap, []).

get_user_profile(Client, DomainIdentifier, UserIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/user-profiles/", aws_util:encode_uri(UserIdentifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the revisions for the asset.
list_asset_revisions(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    list_asset_revisions(Client, DomainIdentifier, Identifier, #{}, #{}).

list_asset_revisions(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_asset_revisions(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

list_asset_revisions(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/assets/", aws_util:encode_uri(Identifier), "/revisions"],
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

%% @doc Lists data source run activities.
list_data_source_run_activities(Client, DomainIdentifier, Identifier)
  when is_map(Client) ->
    list_data_source_run_activities(Client, DomainIdentifier, Identifier, #{}, #{}).

list_data_source_run_activities(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_source_run_activities(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, []).

list_data_source_run_activities(Client, DomainIdentifier, Identifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-source-runs/", aws_util:encode_uri(Identifier), "/activities"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists data source runs in Amazon DataZone.
list_data_source_runs(Client, DataSourceIdentifier, DomainIdentifier)
  when is_map(Client) ->
    list_data_source_runs(Client, DataSourceIdentifier, DomainIdentifier, #{}, #{}).

list_data_source_runs(Client, DataSourceIdentifier, DomainIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_source_runs(Client, DataSourceIdentifier, DomainIdentifier, QueryMap, HeadersMap, []).

list_data_source_runs(Client, DataSourceIdentifier, DomainIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-sources/", aws_util:encode_uri(DataSourceIdentifier), "/runs"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists data sources in Amazon DataZone.
list_data_sources(Client, DomainIdentifier, ProjectIdentifier)
  when is_map(Client) ->
    list_data_sources(Client, DomainIdentifier, ProjectIdentifier, #{}, #{}).

list_data_sources(Client, DomainIdentifier, ProjectIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_sources(Client, DomainIdentifier, ProjectIdentifier, QueryMap, HeadersMap, []).

list_data_sources(Client, DomainIdentifier, ProjectIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-sources"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"environmentIdentifier">>, maps:get(<<"environmentIdentifier">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"projectIdentifier">>, ProjectIdentifier},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)},
        {<<"type">>, maps:get(<<"type">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Amazon DataZone domains.
list_domains(Client)
  when is_map(Client) ->
    list_domains(Client, #{}, #{}).

list_domains(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domains(Client, QueryMap, HeadersMap, []).

list_domains(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists blueprint configurations for a Amazon DataZone environment.
list_environment_blueprint_configurations(Client, DomainIdentifier)
  when is_map(Client) ->
    list_environment_blueprint_configurations(Client, DomainIdentifier, #{}, #{}).

list_environment_blueprint_configurations(Client, DomainIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environment_blueprint_configurations(Client, DomainIdentifier, QueryMap, HeadersMap, []).

list_environment_blueprint_configurations(Client, DomainIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-blueprint-configurations"],
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

%% @doc Lists blueprints in an Amazon DataZone environment.
list_environment_blueprints(Client, DomainIdentifier)
  when is_map(Client) ->
    list_environment_blueprints(Client, DomainIdentifier, #{}, #{}).

list_environment_blueprints(Client, DomainIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environment_blueprints(Client, DomainIdentifier, QueryMap, HeadersMap, []).

list_environment_blueprints(Client, DomainIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-blueprints"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"managed">>, maps:get(<<"managed">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Amazon DataZone environment profiles.
list_environment_profiles(Client, DomainIdentifier)
  when is_map(Client) ->
    list_environment_profiles(Client, DomainIdentifier, #{}, #{}).

list_environment_profiles(Client, DomainIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environment_profiles(Client, DomainIdentifier, QueryMap, HeadersMap, []).

list_environment_profiles(Client, DomainIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-profiles"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"awsAccountId">>, maps:get(<<"awsAccountId">>, QueryMap, undefined)},
        {<<"awsAccountRegion">>, maps:get(<<"awsAccountRegion">>, QueryMap, undefined)},
        {<<"environmentBlueprintIdentifier">>, maps:get(<<"environmentBlueprintIdentifier">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"projectIdentifier">>, maps:get(<<"projectIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Amazon DataZone environments.
list_environments(Client, DomainIdentifier, ProjectIdentifier)
  when is_map(Client) ->
    list_environments(Client, DomainIdentifier, ProjectIdentifier, #{}, #{}).

list_environments(Client, DomainIdentifier, ProjectIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_environments(Client, DomainIdentifier, ProjectIdentifier, QueryMap, HeadersMap, []).

list_environments(Client, DomainIdentifier, ProjectIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"awsAccountId">>, maps:get(<<"awsAccountId">>, QueryMap, undefined)},
        {<<"awsAccountRegion">>, maps:get(<<"awsAccountRegion">>, QueryMap, undefined)},
        {<<"environmentBlueprintIdentifier">>, maps:get(<<"environmentBlueprintIdentifier">>, QueryMap, undefined)},
        {<<"environmentProfileIdentifier">>, maps:get(<<"environmentProfileIdentifier">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"projectIdentifier">>, ProjectIdentifier},
        {<<"provider">>, maps:get(<<"provider">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all Amazon DataZone notifications.
list_notifications(Client, DomainIdentifier, Type)
  when is_map(Client) ->
    list_notifications(Client, DomainIdentifier, Type, #{}, #{}).

list_notifications(Client, DomainIdentifier, Type, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_notifications(Client, DomainIdentifier, Type, QueryMap, HeadersMap, []).

list_notifications(Client, DomainIdentifier, Type, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/notifications"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"afterTimestamp">>, maps:get(<<"afterTimestamp">>, QueryMap, undefined)},
        {<<"beforeTimestamp">>, maps:get(<<"beforeTimestamp">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"subjects">>, maps:get(<<"subjects">>, QueryMap, undefined)},
        {<<"taskStatus">>, maps:get(<<"taskStatus">>, QueryMap, undefined)},
        {<<"type">>, Type}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all members of the specified project.
list_project_memberships(Client, DomainIdentifier, ProjectIdentifier)
  when is_map(Client) ->
    list_project_memberships(Client, DomainIdentifier, ProjectIdentifier, #{}, #{}).

list_project_memberships(Client, DomainIdentifier, ProjectIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_project_memberships(Client, DomainIdentifier, ProjectIdentifier, QueryMap, HeadersMap, []).

list_project_memberships(Client, DomainIdentifier, ProjectIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/projects/", aws_util:encode_uri(ProjectIdentifier), "/memberships"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Amazon DataZone projects.
list_projects(Client, DomainIdentifier)
  when is_map(Client) ->
    list_projects(Client, DomainIdentifier, #{}, #{}).

list_projects(Client, DomainIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_projects(Client, DomainIdentifier, QueryMap, HeadersMap, []).

list_projects(Client, DomainIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/projects"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"groupIdentifier">>, maps:get(<<"groupIdentifier">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"userIdentifier">>, maps:get(<<"userIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists subscription grants.
list_subscription_grants(Client, DomainIdentifier)
  when is_map(Client) ->
    list_subscription_grants(Client, DomainIdentifier, #{}, #{}).

list_subscription_grants(Client, DomainIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_subscription_grants(Client, DomainIdentifier, QueryMap, HeadersMap, []).

list_subscription_grants(Client, DomainIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-grants"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"environmentId">>, maps:get(<<"environmentId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)},
        {<<"subscribedListingId">>, maps:get(<<"subscribedListingId">>, QueryMap, undefined)},
        {<<"subscriptionId">>, maps:get(<<"subscriptionId">>, QueryMap, undefined)},
        {<<"subscriptionTargetId">>, maps:get(<<"subscriptionTargetId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Amazon DataZone subscription requests.
list_subscription_requests(Client, DomainIdentifier)
  when is_map(Client) ->
    list_subscription_requests(Client, DomainIdentifier, #{}, #{}).

list_subscription_requests(Client, DomainIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_subscription_requests(Client, DomainIdentifier, QueryMap, HeadersMap, []).

list_subscription_requests(Client, DomainIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-requests"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"approverProjectId">>, maps:get(<<"approverProjectId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"owningProjectId">>, maps:get(<<"owningProjectId">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)},
        {<<"subscribedListingId">>, maps:get(<<"subscribedListingId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists subscription targets in Amazon DataZone.
list_subscription_targets(Client, DomainIdentifier, EnvironmentIdentifier)
  when is_map(Client) ->
    list_subscription_targets(Client, DomainIdentifier, EnvironmentIdentifier, #{}, #{}).

list_subscription_targets(Client, DomainIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_subscription_targets(Client, DomainIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap, []).

list_subscription_targets(Client, DomainIdentifier, EnvironmentIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/subscription-targets"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists subscriptions in Amazon DataZone.
list_subscriptions(Client, DomainIdentifier)
  when is_map(Client) ->
    list_subscriptions(Client, DomainIdentifier, #{}, #{}).

list_subscriptions(Client, DomainIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_subscriptions(Client, DomainIdentifier, QueryMap, HeadersMap, []).

list_subscriptions(Client, DomainIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscriptions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"approverProjectId">>, maps:get(<<"approverProjectId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"owningProjectId">>, maps:get(<<"owningProjectId">>, QueryMap, undefined)},
        {<<"sortBy">>, maps:get(<<"sortBy">>, QueryMap, undefined)},
        {<<"sortOrder">>, maps:get(<<"sortOrder">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)},
        {<<"subscribedListingId">>, maps:get(<<"subscribedListingId">>, QueryMap, undefined)},
        {<<"subscriptionRequestIdentifier">>, maps:get(<<"subscriptionRequestIdentifier">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists tags for the specified resource in Amazon DataZone.
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

%% @doc Writes the configuration for the specified environment blueprint in
%% Amazon DataZone.
put_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier, Input) ->
    put_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier, Input, []).
put_environment_blueprint_configuration(Client, DomainIdentifier, EnvironmentBlueprintIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-blueprint-configurations/", aws_util:encode_uri(EnvironmentBlueprintIdentifier), ""],
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

%% @doc Rejects automatically generated business-friendly metadata for your
%% Amazon DataZone assets.
reject_predictions(Client, DomainIdentifier, Identifier, Input) ->
    reject_predictions(Client, DomainIdentifier, Identifier, Input, []).
reject_predictions(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/assets/", aws_util:encode_uri(Identifier), "/reject-predictions"],
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
                     {<<"revision">>, <<"revision">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Rejects the specified subscription request.
reject_subscription_request(Client, DomainIdentifier, Identifier, Input) ->
    reject_subscription_request(Client, DomainIdentifier, Identifier, Input, []).
reject_subscription_request(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-requests/", aws_util:encode_uri(Identifier), "/reject"],
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

%% @doc Revokes a specified subscription in Amazon DataZone.
revoke_subscription(Client, DomainIdentifier, Identifier, Input) ->
    revoke_subscription(Client, DomainIdentifier, Identifier, Input, []).
revoke_subscription(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscriptions/", aws_util:encode_uri(Identifier), "/revoke"],
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

%% @doc Searches for assets in Amazon DataZone.
search(Client, DomainIdentifier, Input) ->
    search(Client, DomainIdentifier, Input, []).
search(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/search"],
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

%% @doc Searches group profiles in Amazon DataZone.
search_group_profiles(Client, DomainIdentifier, Input) ->
    search_group_profiles(Client, DomainIdentifier, Input, []).
search_group_profiles(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/search-group-profiles"],
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

%% @doc Searches listings in Amazon DataZone.
search_listings(Client, DomainIdentifier, Input) ->
    search_listings(Client, DomainIdentifier, Input, []).
search_listings(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/listings/search"],
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

%% @doc Searches for types in Amazon DataZone.
search_types(Client, DomainIdentifier, Input) ->
    search_types(Client, DomainIdentifier, Input, []).
search_types(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/types-search"],
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

%% @doc Searches user profiles in Amazon DataZone.
search_user_profiles(Client, DomainIdentifier, Input) ->
    search_user_profiles(Client, DomainIdentifier, Input, []).
search_user_profiles(Client, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/search-user-profiles"],
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

%% @doc Start the run of the specified data source in Amazon DataZone.
start_data_source_run(Client, DataSourceIdentifier, DomainIdentifier, Input) ->
    start_data_source_run(Client, DataSourceIdentifier, DomainIdentifier, Input, []).
start_data_source_run(Client, DataSourceIdentifier, DomainIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-sources/", aws_util:encode_uri(DataSourceIdentifier), "/runs"],
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

%% @doc Tags a resource in Amazon DataZone.
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

%% @doc Untags a resource in Amazon DataZone.
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

%% @doc Updates the specified data source in Amazon DataZone.
update_data_source(Client, DomainIdentifier, Identifier, Input) ->
    update_data_source(Client, DomainIdentifier, Identifier, Input, []).
update_data_source(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/data-sources/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates a Amazon DataZone domain.
update_domain(Client, Identifier, Input) ->
    update_domain(Client, Identifier, Input, []).
update_domain(Client, Identifier, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(Identifier), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified environment in Amazon DataZone.
update_environment(Client, DomainIdentifier, Identifier, Input) ->
    update_environment(Client, DomainIdentifier, Identifier, Input, []).
update_environment(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates the specified environment profile in Amazon DataZone.
update_environment_profile(Client, DomainIdentifier, Identifier, Input) ->
    update_environment_profile(Client, DomainIdentifier, Identifier, Input, []).
update_environment_profile(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environment-profiles/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates the business glossary in Amazon DataZone.
update_glossary(Client, DomainIdentifier, Identifier, Input) ->
    update_glossary(Client, DomainIdentifier, Identifier, Input, []).
update_glossary(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/glossaries/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates a business glossary term in Amazon DataZone.
update_glossary_term(Client, DomainIdentifier, Identifier, Input) ->
    update_glossary_term(Client, DomainIdentifier, Identifier, Input, []).
update_glossary_term(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/glossary-terms/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates the specified group profile in Amazon DataZone.
update_group_profile(Client, DomainIdentifier, GroupIdentifier, Input) ->
    update_group_profile(Client, DomainIdentifier, GroupIdentifier, Input, []).
update_group_profile(Client, DomainIdentifier, GroupIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/group-profiles/", aws_util:encode_uri(GroupIdentifier), ""],
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

%% @doc Updates the specified project in Amazon DataZone.
update_project(Client, DomainIdentifier, Identifier, Input) ->
    update_project(Client, DomainIdentifier, Identifier, Input, []).
update_project(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/projects/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates the status of the specified subscription grant status in
%% Amazon DataZone.
update_subscription_grant_status(Client, AssetIdentifier, DomainIdentifier, Identifier, Input) ->
    update_subscription_grant_status(Client, AssetIdentifier, DomainIdentifier, Identifier, Input, []).
update_subscription_grant_status(Client, AssetIdentifier, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-grants/", aws_util:encode_uri(Identifier), "/status/", aws_util:encode_uri(AssetIdentifier), ""],
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

%% @doc Updates a specified subscription request in Amazon DataZone.
update_subscription_request(Client, DomainIdentifier, Identifier, Input) ->
    update_subscription_request(Client, DomainIdentifier, Identifier, Input, []).
update_subscription_request(Client, DomainIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/subscription-requests/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates the specified subscription target in Amazon DataZone.
update_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, Input) ->
    update_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, Input, []).
update_subscription_target(Client, DomainIdentifier, EnvironmentIdentifier, Identifier, Input0, Options0) ->
    Method = patch,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/environments/", aws_util:encode_uri(EnvironmentIdentifier), "/subscription-targets/", aws_util:encode_uri(Identifier), ""],
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

%% @doc Updates the specified user profile in Amazon DataZone.
update_user_profile(Client, DomainIdentifier, UserIdentifier, Input) ->
    update_user_profile(Client, DomainIdentifier, UserIdentifier, Input, []).
update_user_profile(Client, DomainIdentifier, UserIdentifier, Input0, Options0) ->
    Method = put,
    Path = ["/v2/domains/", aws_util:encode_uri(DomainIdentifier), "/user-profiles/", aws_util:encode_uri(UserIdentifier), ""],
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
    Client1 = Client#{service => <<"datazone">>},
    Host = build_host(<<"datazone">>, Client1),
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
