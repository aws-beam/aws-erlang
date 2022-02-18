%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc You can use Amazon CloudWatch Evidently to safely validate new
%% features by serving them to a specified percentage of your users while you
%% roll out the feature.
%%
%% You can monitor the performance of the new feature to help you decide when
%% to ramp up traffic to your users. This helps you reduce risk and identify
%% unintended consequences before you fully launch the feature.
%%
%% You can also conduct A/B experiments to make feature design decisions
%% based on evidence and data. An experiment can test as many as five
%% variations at once. Evidently collects experiment data and analyzes it
%% using statistical methods. It also provides clear recommendations about
%% which variations perform better. You can test both user-facing features
%% and backend features.
-module(aws_evidently).

-export([batch_evaluate_feature/3,
         batch_evaluate_feature/4,
         create_experiment/3,
         create_experiment/4,
         create_feature/3,
         create_feature/4,
         create_launch/3,
         create_launch/4,
         create_project/2,
         create_project/3,
         delete_experiment/4,
         delete_experiment/5,
         delete_feature/4,
         delete_feature/5,
         delete_launch/4,
         delete_launch/5,
         delete_project/3,
         delete_project/4,
         evaluate_feature/4,
         evaluate_feature/5,
         get_experiment/3,
         get_experiment/5,
         get_experiment/6,
         get_experiment_results/4,
         get_experiment_results/5,
         get_feature/3,
         get_feature/5,
         get_feature/6,
         get_launch/3,
         get_launch/5,
         get_launch/6,
         get_project/2,
         get_project/4,
         get_project/5,
         list_experiments/2,
         list_experiments/4,
         list_experiments/5,
         list_features/2,
         list_features/4,
         list_features/5,
         list_launches/2,
         list_launches/4,
         list_launches/5,
         list_projects/1,
         list_projects/3,
         list_projects/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_project_events/3,
         put_project_events/4,
         start_experiment/4,
         start_experiment/5,
         start_launch/4,
         start_launch/5,
         stop_experiment/4,
         stop_experiment/5,
         stop_launch/4,
         stop_launch/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_experiment/4,
         update_experiment/5,
         update_feature/4,
         update_feature/5,
         update_launch/4,
         update_launch/5,
         update_project/3,
         update_project/4,
         update_project_data_delivery/3,
         update_project_data_delivery/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc This operation assigns feature variation to user sessions.
%%
%% For each user session, you pass in an `entityID' that represents the user.
%% Evidently then checks the evaluation rules and assigns the variation.
%%
%% The first rules that are evaluated are the override rules. If the user's
%% `entityID' matches an override rule, the user is served the variation
%% specified by that rule.
%%
%% Next, if there is a launch of the feature, the user might be assigned to a
%% variation in the launch. The chance of this depends on the percentage of
%% users that are allocated to that launch. If the user is enrolled in the
%% launch, the variation they are served depends on the allocation of the
%% various feature variations used for the launch.
%%
%% If the user is not assigned to a launch, and there is an ongoing
%% experiment for this feature, the user might be assigned to a variation in
%% the experiment. The chance of this depends on the percentage of users that
%% are allocated to that experiment. If the user is enrolled in the
%% experiment, the variation they are served depends on the allocation of the
%% various feature variations used for the experiment.
%%
%% If the user is not assigned to a launch or experiment, they are served the
%% default variation.
batch_evaluate_feature(Client, Project, Input) ->
    batch_evaluate_feature(Client, Project, Input, []).
batch_evaluate_feature(Client, Project, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(Project), "/evaluations"],
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

%% @doc Creates an Evidently experiment.
%%
%% Before you create an experiment, you must create the feature to use for
%% the experiment.
%%
%% An experiment helps you make feature design decisions based on evidence
%% and data. An experiment can test as many as five variations at once.
%% Evidently collects experiment data and analyzes it by statistical methods,
%% and provides clear recommendations about which variations perform better.
%%
%% Don't use this operation to update an existing experiment. Instead, use
%% UpdateExperiment.
create_experiment(Client, Project, Input) ->
    create_experiment(Client, Project, Input, []).
create_experiment(Client, Project, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(Project), "/experiments"],
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

%% @doc Creates an Evidently feature that you want to launch or test.
%%
%% You can define up to five variations of a feature, and use these
%% variations in your launches and experiments. A feature must be created in
%% a project. For information about creating a project, see CreateProject.
%%
%% Don't use this operation to update an existing feature. Instead, use
%% UpdateFeature.
create_feature(Client, Project, Input) ->
    create_feature(Client, Project, Input, []).
create_feature(Client, Project, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(Project), "/features"],
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

%% @doc Creates a launch of a given feature.
%%
%% Before you create a launch, you must create the feature to use for the
%% launch.
%%
%% You can use a launch to safely validate new features by serving them to a
%% specified percentage of your users while you roll out the feature. You can
%% monitor the performance of the new feature to help you decide when to ramp
%% up traffic to more users. This helps you reduce risk and identify
%% unintended consequences before you fully launch the feature.
%%
%% Don't use this operation to update an existing launch. Instead, use
%% UpdateLaunch.
create_launch(Client, Project, Input) ->
    create_launch(Client, Project, Input, []).
create_launch(Client, Project, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(Project), "/launches"],
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

%% @doc Creates a project, which is the logical object in Evidently that can
%% contain features, launches, and experiments.
%%
%% Use projects to group similar features together.
%%
%% To update an existing project, use UpdateProject.
create_project(Client, Input) ->
    create_project(Client, Input, []).
create_project(Client, Input0, Options0) ->
    Method = post,
    Path = ["/projects"],
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

%% @doc Deletes an Evidently experiment.
%%
%% The feature used for the experiment is not deleted.
%%
%% To stop an experiment without deleting it, use StopExperiment.
delete_experiment(Client, Experiment, Project, Input) ->
    delete_experiment(Client, Experiment, Project, Input, []).
delete_experiment(Client, Experiment, Project, Input0, Options0) ->
    Method = delete,
    Path = ["/projects/", aws_util:encode_uri(Project), "/experiments/", aws_util:encode_uri(Experiment), ""],
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

%% @doc Deletes an Evidently feature.
delete_feature(Client, Feature, Project, Input) ->
    delete_feature(Client, Feature, Project, Input, []).
delete_feature(Client, Feature, Project, Input0, Options0) ->
    Method = delete,
    Path = ["/projects/", aws_util:encode_uri(Project), "/features/", aws_util:encode_uri(Feature), ""],
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

%% @doc Deletes an Evidently launch.
%%
%% The feature used for the launch is not deleted.
%%
%% To stop a launch without deleting it, use StopLaunch.
delete_launch(Client, Launch, Project, Input) ->
    delete_launch(Client, Launch, Project, Input, []).
delete_launch(Client, Launch, Project, Input0, Options0) ->
    Method = delete,
    Path = ["/projects/", aws_util:encode_uri(Project), "/launches/", aws_util:encode_uri(Launch), ""],
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

%% @doc Deletes an Evidently project.
%%
%% Before you can delete a project, you must delete all the features that the
%% project contains. To delete a feature, use DeleteFeature.
delete_project(Client, Project, Input) ->
    delete_project(Client, Project, Input, []).
delete_project(Client, Project, Input0, Options0) ->
    Method = delete,
    Path = ["/projects/", aws_util:encode_uri(Project), ""],
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

%% @doc This operation assigns a feature variation to one given user session.
%%
%% You pass in an `entityID' that represents the user. Evidently then checks
%% the evaluation rules and assigns the variation.
%%
%% The first rules that are evaluated are the override rules. If the user's
%% `entityID' matches an override rule, the user is served the variation
%% specified by that rule.
%%
%% Next, if there is a launch of the feature, the user might be assigned to a
%% variation in the launch. The chance of this depends on the percentage of
%% users that are allocated to that launch. If the user is enrolled in the
%% launch, the variation they are served depends on the allocation of the
%% various feature variations used for the launch.
%%
%% If the user is not assigned to a launch, and there is an ongoing
%% experiment for this feature, the user might be assigned to a variation in
%% the experiment. The chance of this depends on the percentage of users that
%% are allocated to that experiment. If the user is enrolled in the
%% experiment, the variation they are served depends on the allocation of the
%% various feature variations used for the experiment.
%%
%% If the user is not assigned to a launch or experiment, they are served the
%% default variation.
evaluate_feature(Client, Feature, Project, Input) ->
    evaluate_feature(Client, Feature, Project, Input, []).
evaluate_feature(Client, Feature, Project, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(Project), "/evaluations/", aws_util:encode_uri(Feature), ""],
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

%% @doc Returns the details about one experiment.
%%
%% You must already know the experiment name. To retrieve a list of
%% experiments in your account, use ListExperiments.
get_experiment(Client, Experiment, Project)
  when is_map(Client) ->
    get_experiment(Client, Experiment, Project, #{}, #{}).

get_experiment(Client, Experiment, Project, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_experiment(Client, Experiment, Project, QueryMap, HeadersMap, []).

get_experiment(Client, Experiment, Project, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(Project), "/experiments/", aws_util:encode_uri(Experiment), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the results of a running or completed experiment.
get_experiment_results(Client, Experiment, Project, Input) ->
    get_experiment_results(Client, Experiment, Project, Input, []).
get_experiment_results(Client, Experiment, Project, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(Project), "/experiments/", aws_util:encode_uri(Experiment), "/results"],
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

%% @doc Returns the details about one feature.
%%
%% You must already know the feature name. To retrieve a list of features in
%% your account, use ListFeatures.
get_feature(Client, Feature, Project)
  when is_map(Client) ->
    get_feature(Client, Feature, Project, #{}, #{}).

get_feature(Client, Feature, Project, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_feature(Client, Feature, Project, QueryMap, HeadersMap, []).

get_feature(Client, Feature, Project, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(Project), "/features/", aws_util:encode_uri(Feature), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the details about one launch.
%%
%% You must already know the launch name. To retrieve a list of launches in
%% your account, use ListLaunches.
get_launch(Client, Launch, Project)
  when is_map(Client) ->
    get_launch(Client, Launch, Project, #{}, #{}).

get_launch(Client, Launch, Project, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_launch(Client, Launch, Project, QueryMap, HeadersMap, []).

get_launch(Client, Launch, Project, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(Project), "/launches/", aws_util:encode_uri(Launch), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the details about one launch.
%%
%% You must already know the project name. To retrieve a list of projects in
%% your account, use ListProjects.
get_project(Client, Project)
  when is_map(Client) ->
    get_project(Client, Project, #{}, #{}).

get_project(Client, Project, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_project(Client, Project, QueryMap, HeadersMap, []).

get_project(Client, Project, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(Project), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns configuration details about all the experiments in the
%% specified project.
list_experiments(Client, Project)
  when is_map(Client) ->
    list_experiments(Client, Project, #{}, #{}).

list_experiments(Client, Project, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_experiments(Client, Project, QueryMap, HeadersMap, []).

list_experiments(Client, Project, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(Project), "/experiments"],
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

%% @doc Returns configuration details about all the features in the specified
%% project.
list_features(Client, Project)
  when is_map(Client) ->
    list_features(Client, Project, #{}, #{}).

list_features(Client, Project, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_features(Client, Project, QueryMap, HeadersMap, []).

list_features(Client, Project, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(Project), "/features"],
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

%% @doc Returns configuration details about all the launches in the specified
%% project.
list_launches(Client, Project)
  when is_map(Client) ->
    list_launches(Client, Project, #{}, #{}).

list_launches(Client, Project, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_launches(Client, Project, QueryMap, HeadersMap, []).

list_launches(Client, Project, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects/", aws_util:encode_uri(Project), "/launches"],
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

%% @doc Returns configuration details about all the projects in the current
%% Region in your account.
list_projects(Client)
  when is_map(Client) ->
    list_projects(Client, #{}, #{}).

list_projects(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_projects(Client, QueryMap, HeadersMap, []).

list_projects(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/projects"],
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

%% @doc Displays the tags associated with an Evidently resource.
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

%% @doc Sends performance events to Evidently.
%%
%% These events can be used to evaluate a launch or an experiment.
put_project_events(Client, Project, Input) ->
    put_project_events(Client, Project, Input, []).
put_project_events(Client, Project, Input0, Options0) ->
    Method = post,
    Path = ["/events/projects/", aws_util:encode_uri(Project), ""],
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

%% @doc Starts an existing experiment.
%%
%% To create an experiment, use CreateExperiment.
start_experiment(Client, Experiment, Project, Input) ->
    start_experiment(Client, Experiment, Project, Input, []).
start_experiment(Client, Experiment, Project, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(Project), "/experiments/", aws_util:encode_uri(Experiment), "/start"],
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

%% @doc Starts an existing launch.
%%
%% To create a launch, use CreateLaunch.
start_launch(Client, Launch, Project, Input) ->
    start_launch(Client, Launch, Project, Input, []).
start_launch(Client, Launch, Project, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(Project), "/launches/", aws_util:encode_uri(Launch), "/start"],
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

%% @doc Stops an experiment that is currently running.
%%
%% If you stop an experiment, you can't resume it or restart it.
stop_experiment(Client, Experiment, Project, Input) ->
    stop_experiment(Client, Experiment, Project, Input, []).
stop_experiment(Client, Experiment, Project, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(Project), "/experiments/", aws_util:encode_uri(Experiment), "/cancel"],
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

%% @doc Stops a launch that is currently running.
%%
%% After you stop a launch, you will not be able to resume it or restart it.
%% Also, it will not be evaluated as a rule for traffic allocation, and the
%% traffic that was allocated to the launch will instead be available to the
%% feature's experiment, if there is one. Otherwise, all traffic will be
%% served the default variation after the launch is stopped.
stop_launch(Client, Launch, Project, Input) ->
    stop_launch(Client, Launch, Project, Input, []).
stop_launch(Client, Launch, Project, Input0, Options0) ->
    Method = post,
    Path = ["/projects/", aws_util:encode_uri(Project), "/launches/", aws_util:encode_uri(Launch), "/cancel"],
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

%% @doc Assigns one or more tags (key-value pairs) to the specified
%% CloudWatch Evidently resource.
%%
%% Projects, features, launches, and experiments can be tagged.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope user permissions by granting a user permission to access or
%% change only resources with certain tag values.
%%
%% Tags don't have any semantic meaning to Amazon Web Services and are
%% interpreted strictly as strings of characters.
%%
%% You can use the `TagResource' action with a resource that already has
%% tags. If you specify a new tag key for the resource, this tag is appended
%% to the list of tags associated with the alarm. If you specify a tag key
%% that is already associated with the resource, the new tag value that you
%% specify replaces the previous value for that tag.
%%
%% You can associate as many as 50 tags with a resource.
%%
%% For more information, see Tagging Amazon Web Services resources.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes one or more tags from the specified resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
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

%% @doc Updates an Evidently experiment.
%%
%% Don't use this operation to update an experiment's tag. Instead, use
%% TagResource.
update_experiment(Client, Experiment, Project, Input) ->
    update_experiment(Client, Experiment, Project, Input, []).
update_experiment(Client, Experiment, Project, Input0, Options0) ->
    Method = patch,
    Path = ["/projects/", aws_util:encode_uri(Project), "/experiments/", aws_util:encode_uri(Experiment), ""],
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

%% @doc Updates an existing feature.
%%
%% You can't use this operation to update the tags of an existing feature.
%% Instead, use TagResource.
update_feature(Client, Feature, Project, Input) ->
    update_feature(Client, Feature, Project, Input, []).
update_feature(Client, Feature, Project, Input0, Options0) ->
    Method = patch,
    Path = ["/projects/", aws_util:encode_uri(Project), "/features/", aws_util:encode_uri(Feature), ""],
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

%% @doc Updates a launch of a given feature.
%%
%% Don't use this operation to update the tags of an existing launch.
%% Instead, use TagResource.
update_launch(Client, Launch, Project, Input) ->
    update_launch(Client, Launch, Project, Input, []).
update_launch(Client, Launch, Project, Input0, Options0) ->
    Method = patch,
    Path = ["/projects/", aws_util:encode_uri(Project), "/launches/", aws_util:encode_uri(Launch), ""],
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

%% @doc Updates the description of an existing project.
%%
%% To create a new project, use CreateProject.
%%
%% Don't use this operation to update the data storage options of a project.
%% Instead, use UpdateProjectDataDelivery.
%%
%% Don't use this operation to update the tags of a project. Instead, use
%% TagResource.
update_project(Client, Project, Input) ->
    update_project(Client, Project, Input, []).
update_project(Client, Project, Input0, Options0) ->
    Method = patch,
    Path = ["/projects/", aws_util:encode_uri(Project), ""],
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

%% @doc Updates the data storage options for this project.
%%
%% If you store evaluation events, you an keep them and analyze them on your
%% own. If you choose not to store evaluation events, Evidently deletes them
%% after using them to produce metrics and other experiment results that you
%% can view.
%%
%% You can't specify both `cloudWatchLogs' and `s3Destination' in the same
%% operation.
update_project_data_delivery(Client, Project, Input) ->
    update_project_data_delivery(Client, Project, Input, []).
update_project_data_delivery(Client, Project, Input0, Options0) ->
    Method = patch,
    Path = ["/projects/", aws_util:encode_uri(Project), "/data-delivery"],
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
    Client1 = Client#{service => <<"evidently">>},
    Host = build_host(<<"evidently">>, Client1),
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
