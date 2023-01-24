%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amplify enables developers to develop and deploy cloud-powered mobile
%% and web apps.
%%
%% The Amplify Console provides a continuous delivery and hosting service for
%% web applications. For more information, see the Amplify Console User
%% Guide. The Amplify Framework is a comprehensive set of SDKs, libraries,
%% tools, and documentation for client app development. For more information,
%% see the Amplify Framework.
-module(aws_amplify).

-export([create_app/2,
         create_app/3,
         create_backend_environment/3,
         create_backend_environment/4,
         create_branch/3,
         create_branch/4,
         create_deployment/4,
         create_deployment/5,
         create_domain_association/3,
         create_domain_association/4,
         create_webhook/3,
         create_webhook/4,
         delete_app/3,
         delete_app/4,
         delete_backend_environment/4,
         delete_backend_environment/5,
         delete_branch/4,
         delete_branch/5,
         delete_domain_association/4,
         delete_domain_association/5,
         delete_job/5,
         delete_job/6,
         delete_webhook/3,
         delete_webhook/4,
         generate_access_logs/3,
         generate_access_logs/4,
         get_app/2,
         get_app/4,
         get_app/5,
         get_artifact_url/2,
         get_artifact_url/4,
         get_artifact_url/5,
         get_backend_environment/3,
         get_backend_environment/5,
         get_backend_environment/6,
         get_branch/3,
         get_branch/5,
         get_branch/6,
         get_domain_association/3,
         get_domain_association/5,
         get_domain_association/6,
         get_job/4,
         get_job/6,
         get_job/7,
         get_webhook/2,
         get_webhook/4,
         get_webhook/5,
         list_apps/1,
         list_apps/3,
         list_apps/4,
         list_artifacts/4,
         list_artifacts/6,
         list_artifacts/7,
         list_backend_environments/2,
         list_backend_environments/4,
         list_backend_environments/5,
         list_branches/2,
         list_branches/4,
         list_branches/5,
         list_domain_associations/2,
         list_domain_associations/4,
         list_domain_associations/5,
         list_jobs/3,
         list_jobs/5,
         list_jobs/6,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_webhooks/2,
         list_webhooks/4,
         list_webhooks/5,
         start_deployment/4,
         start_deployment/5,
         start_job/4,
         start_job/5,
         stop_job/5,
         stop_job/6,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_app/3,
         update_app/4,
         update_branch/4,
         update_branch/5,
         update_domain_association/4,
         update_domain_association/5,
         update_webhook/3,
         update_webhook/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new Amplify app.
create_app(Client, Input) ->
    create_app(Client, Input, []).
create_app(Client, Input0, Options0) ->
    Method = post,
    Path = ["/apps"],
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

%% @doc Creates a new backend environment for an Amplify app.
create_backend_environment(Client, AppId, Input) ->
    create_backend_environment(Client, AppId, Input, []).
create_backend_environment(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/backendenvironments"],
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

%% @doc Creates a new branch for an Amplify app.
create_branch(Client, AppId, Input) ->
    create_branch(Client, AppId, Input, []).
create_branch(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches"],
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

%% @doc Creates a deployment for a manually deployed Amplify app.
%%
%% Manually deployed apps are not connected to a repository.
create_deployment(Client, AppId, BranchName, Input) ->
    create_deployment(Client, AppId, BranchName, Input, []).
create_deployment(Client, AppId, BranchName, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), "/deployments"],
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

%% @doc Creates a new domain association for an Amplify app.
%%
%% This action associates a custom domain with the Amplify app
create_domain_association(Client, AppId, Input) ->
    create_domain_association(Client, AppId, Input, []).
create_domain_association(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/domains"],
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

%% @doc Creates a new webhook on an Amplify app.
create_webhook(Client, AppId, Input) ->
    create_webhook(Client, AppId, Input, []).
create_webhook(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/webhooks"],
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

%% @doc Deletes an existing Amplify app specified by an app ID.
delete_app(Client, AppId, Input) ->
    delete_app(Client, AppId, Input, []).
delete_app(Client, AppId, Input0, Options0) ->
    Method = delete,
    Path = ["/apps/", aws_util:encode_uri(AppId), ""],
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

%% @doc Deletes a backend environment for an Amplify app.
delete_backend_environment(Client, AppId, EnvironmentName, Input) ->
    delete_backend_environment(Client, AppId, EnvironmentName, Input, []).
delete_backend_environment(Client, AppId, EnvironmentName, Input0, Options0) ->
    Method = delete,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/backendenvironments/", aws_util:encode_uri(EnvironmentName), ""],
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

%% @doc Deletes a branch for an Amplify app.
delete_branch(Client, AppId, BranchName, Input) ->
    delete_branch(Client, AppId, BranchName, Input, []).
delete_branch(Client, AppId, BranchName, Input0, Options0) ->
    Method = delete,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), ""],
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

%% @doc Deletes a domain association for an Amplify app.
delete_domain_association(Client, AppId, DomainName, Input) ->
    delete_domain_association(Client, AppId, DomainName, Input, []).
delete_domain_association(Client, AppId, DomainName, Input0, Options0) ->
    Method = delete,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/domains/", aws_util:encode_uri(DomainName), ""],
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

%% @doc Deletes a job for a branch of an Amplify app.
delete_job(Client, AppId, BranchName, JobId, Input) ->
    delete_job(Client, AppId, BranchName, JobId, Input, []).
delete_job(Client, AppId, BranchName, JobId, Input0, Options0) ->
    Method = delete,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), "/jobs/", aws_util:encode_uri(JobId), ""],
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

%% @doc Deletes a webhook.
delete_webhook(Client, WebhookId, Input) ->
    delete_webhook(Client, WebhookId, Input, []).
delete_webhook(Client, WebhookId, Input0, Options0) ->
    Method = delete,
    Path = ["/webhooks/", aws_util:encode_uri(WebhookId), ""],
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

%% @doc Returns the website access logs for a specific time range using a
%% presigned URL.
generate_access_logs(Client, AppId, Input) ->
    generate_access_logs(Client, AppId, Input, []).
generate_access_logs(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/accesslogs"],
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

%% @doc Returns an existing Amplify app by appID.
get_app(Client, AppId)
  when is_map(Client) ->
    get_app(Client, AppId, #{}, #{}).

get_app(Client, AppId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_app(Client, AppId, QueryMap, HeadersMap, []).

get_app(Client, AppId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the artifact info that corresponds to an artifact id.
get_artifact_url(Client, ArtifactId)
  when is_map(Client) ->
    get_artifact_url(Client, ArtifactId, #{}, #{}).

get_artifact_url(Client, ArtifactId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_artifact_url(Client, ArtifactId, QueryMap, HeadersMap, []).

get_artifact_url(Client, ArtifactId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/artifacts/", aws_util:encode_uri(ArtifactId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a backend environment for an Amplify app.
get_backend_environment(Client, AppId, EnvironmentName)
  when is_map(Client) ->
    get_backend_environment(Client, AppId, EnvironmentName, #{}, #{}).

get_backend_environment(Client, AppId, EnvironmentName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_backend_environment(Client, AppId, EnvironmentName, QueryMap, HeadersMap, []).

get_backend_environment(Client, AppId, EnvironmentName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), "/backendenvironments/", aws_util:encode_uri(EnvironmentName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a branch for an Amplify app.
get_branch(Client, AppId, BranchName)
  when is_map(Client) ->
    get_branch(Client, AppId, BranchName, #{}, #{}).

get_branch(Client, AppId, BranchName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_branch(Client, AppId, BranchName, QueryMap, HeadersMap, []).

get_branch(Client, AppId, BranchName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the domain information for an Amplify app.
get_domain_association(Client, AppId, DomainName)
  when is_map(Client) ->
    get_domain_association(Client, AppId, DomainName, #{}, #{}).

get_domain_association(Client, AppId, DomainName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_domain_association(Client, AppId, DomainName, QueryMap, HeadersMap, []).

get_domain_association(Client, AppId, DomainName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), "/domains/", aws_util:encode_uri(DomainName), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a job for a branch of an Amplify app.
get_job(Client, AppId, BranchName, JobId)
  when is_map(Client) ->
    get_job(Client, AppId, BranchName, JobId, #{}, #{}).

get_job(Client, AppId, BranchName, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_job(Client, AppId, BranchName, JobId, QueryMap, HeadersMap, []).

get_job(Client, AppId, BranchName, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), "/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the webhook information that corresponds to a specified
%% webhook ID.
get_webhook(Client, WebhookId)
  when is_map(Client) ->
    get_webhook(Client, WebhookId, #{}, #{}).

get_webhook(Client, WebhookId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_webhook(Client, WebhookId, QueryMap, HeadersMap, []).

get_webhook(Client, WebhookId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/webhooks/", aws_util:encode_uri(WebhookId), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the existing Amplify apps.
list_apps(Client)
  when is_map(Client) ->
    list_apps(Client, #{}, #{}).

list_apps(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_apps(Client, QueryMap, HeadersMap, []).

list_apps(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps"],
    SuccessStatusCode = undefined,
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

%% @doc Returns a list of artifacts for a specified app, branch, and job.
list_artifacts(Client, AppId, BranchName, JobId)
  when is_map(Client) ->
    list_artifacts(Client, AppId, BranchName, JobId, #{}, #{}).

list_artifacts(Client, AppId, BranchName, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_artifacts(Client, AppId, BranchName, JobId, QueryMap, HeadersMap, []).

list_artifacts(Client, AppId, BranchName, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), "/jobs/", aws_util:encode_uri(JobId), "/artifacts"],
    SuccessStatusCode = undefined,
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

%% @doc Lists the backend environments for an Amplify app.
list_backend_environments(Client, AppId)
  when is_map(Client) ->
    list_backend_environments(Client, AppId, #{}, #{}).

list_backend_environments(Client, AppId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_backend_environments(Client, AppId, QueryMap, HeadersMap, []).

list_backend_environments(Client, AppId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), "/backendenvironments"],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"environmentName">>, maps:get(<<"environmentName">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the branches of an Amplify app.
list_branches(Client, AppId)
  when is_map(Client) ->
    list_branches(Client, AppId, #{}, #{}).

list_branches(Client, AppId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_branches(Client, AppId, QueryMap, HeadersMap, []).

list_branches(Client, AppId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches"],
    SuccessStatusCode = undefined,
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

%% @doc Returns the domain associations for an Amplify app.
list_domain_associations(Client, AppId)
  when is_map(Client) ->
    list_domain_associations(Client, AppId, #{}, #{}).

list_domain_associations(Client, AppId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_domain_associations(Client, AppId, QueryMap, HeadersMap, []).

list_domain_associations(Client, AppId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), "/domains"],
    SuccessStatusCode = undefined,
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

%% @doc Lists the jobs for a branch of an Amplify app.
list_jobs(Client, AppId, BranchName)
  when is_map(Client) ->
    list_jobs(Client, AppId, BranchName, #{}, #{}).

list_jobs(Client, AppId, BranchName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_jobs(Client, AppId, BranchName, QueryMap, HeadersMap, []).

list_jobs(Client, AppId, BranchName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), "/jobs"],
    SuccessStatusCode = undefined,
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

%% @doc Returns a list of tags for a specified Amazon Resource Name (ARN).
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of webhooks for an Amplify app.
list_webhooks(Client, AppId)
  when is_map(Client) ->
    list_webhooks(Client, AppId, #{}, #{}).

list_webhooks(Client, AppId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_webhooks(Client, AppId, QueryMap, HeadersMap, []).

list_webhooks(Client, AppId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/apps/", aws_util:encode_uri(AppId), "/webhooks"],
    SuccessStatusCode = undefined,
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

%% @doc Starts a deployment for a manually deployed app.
%%
%% Manually deployed apps are not connected to a repository.
start_deployment(Client, AppId, BranchName, Input) ->
    start_deployment(Client, AppId, BranchName, Input, []).
start_deployment(Client, AppId, BranchName, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), "/deployments/start"],
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

%% @doc Starts a new job for a branch of an Amplify app.
start_job(Client, AppId, BranchName, Input) ->
    start_job(Client, AppId, BranchName, Input, []).
start_job(Client, AppId, BranchName, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), "/jobs"],
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

%% @doc Stops a job that is in progress for a branch of an Amplify app.
stop_job(Client, AppId, BranchName, JobId, Input) ->
    stop_job(Client, AppId, BranchName, JobId, Input, []).
stop_job(Client, AppId, BranchName, JobId, Input0, Options0) ->
    Method = delete,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), "/jobs/", aws_util:encode_uri(JobId), "/stop"],
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

%% @doc Tags the resource with a tag key and value.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Untags a resource with a specified Amazon Resource Name (ARN).
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing Amplify app.
update_app(Client, AppId, Input) ->
    update_app(Client, AppId, Input, []).
update_app(Client, AppId, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), ""],
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

%% @doc Updates a branch for an Amplify app.
update_branch(Client, AppId, BranchName, Input) ->
    update_branch(Client, AppId, BranchName, Input, []).
update_branch(Client, AppId, BranchName, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/branches/", aws_util:encode_uri(BranchName), ""],
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

%% @doc Creates a new domain association for an Amplify app.
update_domain_association(Client, AppId, DomainName, Input) ->
    update_domain_association(Client, AppId, DomainName, Input, []).
update_domain_association(Client, AppId, DomainName, Input0, Options0) ->
    Method = post,
    Path = ["/apps/", aws_util:encode_uri(AppId), "/domains/", aws_util:encode_uri(DomainName), ""],
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

%% @doc Updates a webhook.
update_webhook(Client, WebhookId, Input) ->
    update_webhook(Client, WebhookId, Input, []).
update_webhook(Client, WebhookId, Input0, Options0) ->
    Method = post,
    Path = ["/webhooks/", aws_util:encode_uri(WebhookId), ""],
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
    Client1 = Client#{service => <<"amplify">>},
    Host = build_host(<<"amplify">>, Client1),
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
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
