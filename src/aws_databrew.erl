%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Glue DataBrew is a visual, cloud-scale data-preparation service.
%%
%% DataBrew simplifies data preparation tasks, targeting data issues that are
%% hard to spot and time-consuming to fix. DataBrew empowers users of all
%% technical levels to visualize the data and perform one-click data
%% transformations, with no coding required.
-module(aws_databrew).

-export([batch_delete_recipe_version/3,
         batch_delete_recipe_version/4,
         create_dataset/2,
         create_dataset/3,
         create_profile_job/2,
         create_profile_job/3,
         create_project/2,
         create_project/3,
         create_recipe/2,
         create_recipe/3,
         create_recipe_job/2,
         create_recipe_job/3,
         create_schedule/2,
         create_schedule/3,
         delete_dataset/3,
         delete_dataset/4,
         delete_job/3,
         delete_job/4,
         delete_project/3,
         delete_project/4,
         delete_recipe_version/4,
         delete_recipe_version/5,
         delete_schedule/3,
         delete_schedule/4,
         describe_dataset/2,
         describe_dataset/3,
         describe_job/2,
         describe_job/3,
         describe_project/2,
         describe_project/3,
         describe_recipe/3,
         describe_recipe/4,
         describe_schedule/2,
         describe_schedule/3,
         list_datasets/3,
         list_datasets/4,
         list_job_runs/4,
         list_job_runs/5,
         list_jobs/5,
         list_jobs/6,
         list_projects/3,
         list_projects/4,
         list_recipe_versions/4,
         list_recipe_versions/5,
         list_recipes/4,
         list_recipes/5,
         list_schedules/4,
         list_schedules/5,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         publish_recipe/3,
         publish_recipe/4,
         send_project_session_action/3,
         send_project_session_action/4,
         start_job_run/3,
         start_job_run/4,
         start_project_session/3,
         start_project_session/4,
         stop_job_run/4,
         stop_job_run/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_dataset/3,
         update_dataset/4,
         update_profile_job/3,
         update_profile_job/4,
         update_project/3,
         update_project/4,
         update_recipe/3,
         update_recipe/4,
         update_recipe_job/3,
         update_recipe_job/4,
         update_schedule/3,
         update_schedule/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Deletes one or more versions of a recipe at a time.
batch_delete_recipe_version(Client, Name, Input) ->
    batch_delete_recipe_version(Client, Name, Input, []).
batch_delete_recipe_version(Client, Name, Input0, Options) ->
    Method = post,
    Path = ["/recipes/", aws_util:encode_uri(Name), "/batchDeleteRecipeVersion"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new AWS Glue DataBrew dataset for this AWS account.
create_dataset(Client, Input) ->
    create_dataset(Client, Input, []).
create_dataset(Client, Input0, Options) ->
    Method = post,
    Path = ["/datasets"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new job to profile an AWS Glue DataBrew dataset that exists
%% in the current AWS account.
create_profile_job(Client, Input) ->
    create_profile_job(Client, Input, []).
create_profile_job(Client, Input0, Options) ->
    Method = post,
    Path = ["/profileJobs"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new AWS Glue DataBrew project in the current AWS account.
create_project(Client, Input) ->
    create_project(Client, Input, []).
create_project(Client, Input0, Options) ->
    Method = post,
    Path = ["/projects"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new AWS Glue DataBrew recipe for the current AWS account.
create_recipe(Client, Input) ->
    create_recipe(Client, Input, []).
create_recipe(Client, Input0, Options) ->
    Method = post,
    Path = ["/recipes"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new job for an existing AWS Glue DataBrew recipe in the
%% current AWS account.
%%
%% You can create a standalone job using either a project, or a combination
%% of a recipe and a dataset.
create_recipe_job(Client, Input) ->
    create_recipe_job(Client, Input, []).
create_recipe_job(Client, Input0, Options) ->
    Method = post,
    Path = ["/recipeJobs"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new schedule for one or more AWS Glue DataBrew jobs.
%%
%% Jobs can be run at a specific date and time, or at regular intervals.
create_schedule(Client, Input) ->
    create_schedule(Client, Input, []).
create_schedule(Client, Input0, Options) ->
    Method = post,
    Path = ["/schedules"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a dataset from AWS Glue DataBrew.
delete_dataset(Client, Name, Input) ->
    delete_dataset(Client, Name, Input, []).
delete_dataset(Client, Name, Input0, Options) ->
    Method = delete,
    Path = ["/datasets/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified AWS Glue DataBrew job from the current AWS
%% account.
%%
%% The job can be for a recipe or for a profile.
delete_job(Client, Name, Input) ->
    delete_job(Client, Name, Input, []).
delete_job(Client, Name, Input0, Options) ->
    Method = delete,
    Path = ["/jobs/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing AWS Glue DataBrew project from the current AWS
%% account.
delete_project(Client, Name, Input) ->
    delete_project(Client, Name, Input, []).
delete_project(Client, Name, Input0, Options) ->
    Method = delete,
    Path = ["/projects/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a single version of an AWS Glue DataBrew recipe.
delete_recipe_version(Client, Name, RecipeVersion, Input) ->
    delete_recipe_version(Client, Name, RecipeVersion, Input, []).
delete_recipe_version(Client, Name, RecipeVersion, Input0, Options) ->
    Method = delete,
    Path = ["/recipes/", aws_util:encode_uri(Name), "/recipeVersion/", aws_util:encode_uri(RecipeVersion), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified AWS Glue DataBrew schedule from the current AWS
%% account.
delete_schedule(Client, Name, Input) ->
    delete_schedule(Client, Name, Input, []).
delete_schedule(Client, Name, Input0, Options) ->
    Method = delete,
    Path = ["/schedules/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the definition of a specific AWS Glue DataBrew dataset that
%% is in the current AWS account.
describe_dataset(Client, Name)
  when is_map(Client) ->
    describe_dataset(Client, Name, []).
describe_dataset(Client, Name, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/datasets/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the definition of a specific AWS Glue DataBrew job that is in
%% the current AWS account.
describe_job(Client, Name)
  when is_map(Client) ->
    describe_job(Client, Name, []).
describe_job(Client, Name, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/jobs/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the definition of a specific AWS Glue DataBrew project that
%% is in the current AWS account.
describe_project(Client, Name)
  when is_map(Client) ->
    describe_project(Client, Name, []).
describe_project(Client, Name, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/projects/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the definition of a specific AWS Glue DataBrew recipe that is
%% in the current AWS account.
describe_recipe(Client, Name, RecipeVersion)
  when is_map(Client) ->
    describe_recipe(Client, Name, RecipeVersion, []).
describe_recipe(Client, Name, RecipeVersion, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/recipes/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"recipeVersion">>, RecipeVersion}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the definition of a specific AWS Glue DataBrew schedule that
%% is in the current AWS account.
describe_schedule(Client, Name)
  when is_map(Client) ->
    describe_schedule(Client, Name, []).
describe_schedule(Client, Name, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/schedules/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the AWS Glue DataBrew datasets for the current AWS
%% account.
list_datasets(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_datasets(Client, MaxResults, NextToken, []).
list_datasets(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/datasets"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the previous runs of a particular AWS Glue DataBrew job
%% in the current AWS account.
list_job_runs(Client, Name, MaxResults, NextToken)
  when is_map(Client) ->
    list_job_runs(Client, Name, MaxResults, NextToken, []).
list_job_runs(Client, Name, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/jobs/", aws_util:encode_uri(Name), "/jobRuns"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the AWS Glue DataBrew jobs in the current AWS account.
list_jobs(Client, DatasetName, MaxResults, NextToken, ProjectName)
  when is_map(Client) ->
    list_jobs(Client, DatasetName, MaxResults, NextToken, ProjectName, []).
list_jobs(Client, DatasetName, MaxResults, NextToken, ProjectName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/jobs"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"datasetName">>, DatasetName},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"projectName">>, ProjectName}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the DataBrew projects in the current AWS account.
list_projects(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_projects(Client, MaxResults, NextToken, []).
list_projects(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/projects"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the versions of a particular AWS Glue DataBrew recipe in
%% the current AWS account.
list_recipe_versions(Client, MaxResults, Name, NextToken)
  when is_map(Client) ->
    list_recipe_versions(Client, MaxResults, Name, NextToken, []).
list_recipe_versions(Client, MaxResults, Name, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/recipeVersions"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"name">>, Name},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the AWS Glue DataBrew recipes in the current AWS
%% account.
list_recipes(Client, MaxResults, NextToken, RecipeVersion)
  when is_map(Client) ->
    list_recipes(Client, MaxResults, NextToken, RecipeVersion, []).
list_recipes(Client, MaxResults, NextToken, RecipeVersion, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/recipes"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"recipeVersion">>, RecipeVersion}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the AWS Glue DataBrew schedules in the current AWS account.
list_schedules(Client, JobName, MaxResults, NextToken)
  when is_map(Client) ->
    list_schedules(Client, JobName, MaxResults, NextToken, []).
list_schedules(Client, JobName, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/schedules"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"jobName">>, JobName},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all the tags for an AWS Glue DataBrew resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Publishes a new major version of an AWS Glue DataBrew recipe that
%% exists in the current AWS account.
publish_recipe(Client, Name, Input) ->
    publish_recipe(Client, Name, Input, []).
publish_recipe(Client, Name, Input0, Options) ->
    Method = post,
    Path = ["/recipes/", aws_util:encode_uri(Name), "/publishRecipe"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Performs a recipe step within an interactive AWS Glue DataBrew
%% session that's currently open.
send_project_session_action(Client, Name, Input) ->
    send_project_session_action(Client, Name, Input, []).
send_project_session_action(Client, Name, Input0, Options) ->
    Method = put,
    Path = ["/projects/", aws_util:encode_uri(Name), "/sendProjectSessionAction"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Runs an AWS Glue DataBrew job that exists in the current AWS account.
start_job_run(Client, Name, Input) ->
    start_job_run(Client, Name, Input, []).
start_job_run(Client, Name, Input0, Options) ->
    Method = post,
    Path = ["/jobs/", aws_util:encode_uri(Name), "/startJobRun"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an interactive session, enabling you to manipulate an AWS
%% Glue DataBrew project.
start_project_session(Client, Name, Input) ->
    start_project_session(Client, Name, Input, []).
start_project_session(Client, Name, Input0, Options) ->
    Method = put,
    Path = ["/projects/", aws_util:encode_uri(Name), "/startProjectSession"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Stops the specified job from running in the current AWS account.
stop_job_run(Client, Name, RunId, Input) ->
    stop_job_run(Client, Name, RunId, Input, []).
stop_job_run(Client, Name, RunId, Input0, Options) ->
    Method = post,
    Path = ["/jobs/", aws_util:encode_uri(Name), "/jobRun/", aws_util:encode_uri(RunId), "/stopJobRun"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds metadata tags to an AWS Glue DataBrew resource, such as a
%% dataset, job, project, or recipe.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes metadata tags from an AWS Glue DataBrew resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Modifies the definition of an existing AWS Glue DataBrew dataset in
%% the current AWS account.
update_dataset(Client, Name, Input) ->
    update_dataset(Client, Name, Input, []).
update_dataset(Client, Name, Input0, Options) ->
    Method = put,
    Path = ["/datasets/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Modifies the definition of an existing AWS Glue DataBrew job in the
%% current AWS account.
update_profile_job(Client, Name, Input) ->
    update_profile_job(Client, Name, Input, []).
update_profile_job(Client, Name, Input0, Options) ->
    Method = put,
    Path = ["/profileJobs/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Modifies the definition of an existing AWS Glue DataBrew project in
%% the current AWS account.
update_project(Client, Name, Input) ->
    update_project(Client, Name, Input, []).
update_project(Client, Name, Input0, Options) ->
    Method = put,
    Path = ["/projects/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Modifies the definition of the latest working version of an AWS Glue
%% DataBrew recipe in the current AWS account.
update_recipe(Client, Name, Input) ->
    update_recipe(Client, Name, Input, []).
update_recipe(Client, Name, Input0, Options) ->
    Method = put,
    Path = ["/recipes/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Modifies the definition of an existing AWS Glue DataBrew recipe job
%% in the current AWS account.
update_recipe_job(Client, Name, Input) ->
    update_recipe_job(Client, Name, Input, []).
update_recipe_job(Client, Name, Input0, Options) ->
    Method = put,
    Path = ["/recipeJobs/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Modifies the definition of an existing AWS Glue DataBrew schedule in
%% the current AWS account.
update_schedule(Client, Name, Input) ->
    update_schedule(Client, Name, Input, []).
update_schedule(Client, Name, Input0, Options) ->
    Method = put,
    Path = ["/schedules/", aws_util:encode_uri(Name), ""],
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
    Client1 = Client#{service => <<"databrew">>},
    Host = build_host(<<"databrew">>, Client1),
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
