%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Route53 Recovery Readiness
-module(aws_route53_recovery_readiness).

-export([create_cell/2,
         create_cell/3,
         create_cross_account_authorization/2,
         create_cross_account_authorization/3,
         create_readiness_check/2,
         create_readiness_check/3,
         create_recovery_group/2,
         create_recovery_group/3,
         create_resource_set/2,
         create_resource_set/3,
         delete_cell/3,
         delete_cell/4,
         delete_cross_account_authorization/3,
         delete_cross_account_authorization/4,
         delete_readiness_check/3,
         delete_readiness_check/4,
         delete_recovery_group/3,
         delete_recovery_group/4,
         delete_resource_set/3,
         delete_resource_set/4,
         get_architecture_recommendations/2,
         get_architecture_recommendations/4,
         get_architecture_recommendations/5,
         get_cell/2,
         get_cell/4,
         get_cell/5,
         get_cell_readiness_summary/2,
         get_cell_readiness_summary/4,
         get_cell_readiness_summary/5,
         get_readiness_check/2,
         get_readiness_check/4,
         get_readiness_check/5,
         get_readiness_check_resource_status/3,
         get_readiness_check_resource_status/5,
         get_readiness_check_resource_status/6,
         get_readiness_check_status/2,
         get_readiness_check_status/4,
         get_readiness_check_status/5,
         get_recovery_group/2,
         get_recovery_group/4,
         get_recovery_group/5,
         get_recovery_group_readiness_summary/2,
         get_recovery_group_readiness_summary/4,
         get_recovery_group_readiness_summary/5,
         get_resource_set/2,
         get_resource_set/4,
         get_resource_set/5,
         list_cells/1,
         list_cells/3,
         list_cells/4,
         list_cross_account_authorizations/1,
         list_cross_account_authorizations/3,
         list_cross_account_authorizations/4,
         list_readiness_checks/1,
         list_readiness_checks/3,
         list_readiness_checks/4,
         list_recovery_groups/1,
         list_recovery_groups/3,
         list_recovery_groups/4,
         list_resource_sets/1,
         list_resource_sets/3,
         list_resource_sets/4,
         list_rules/1,
         list_rules/3,
         list_rules/4,
         list_tags_for_resources/2,
         list_tags_for_resources/4,
         list_tags_for_resources/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_cell/3,
         update_cell/4,
         update_readiness_check/3,
         update_readiness_check/4,
         update_recovery_group/3,
         update_recovery_group/4,
         update_resource_set/3,
         update_resource_set/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new Cell.
create_cell(Client, Input) ->
    create_cell(Client, Input, []).
create_cell(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cells"],
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

%% @doc Create a new cross account readiness authorization.
create_cross_account_authorization(Client, Input) ->
    create_cross_account_authorization(Client, Input, []).
create_cross_account_authorization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/crossaccountauthorizations"],
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

%% @doc Creates a new Readiness Check.
create_readiness_check(Client, Input) ->
    create_readiness_check(Client, Input, []).
create_readiness_check(Client, Input0, Options0) ->
    Method = post,
    Path = ["/readinesschecks"],
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

%% @doc Creates a new Recovery Group.
create_recovery_group(Client, Input) ->
    create_recovery_group(Client, Input, []).
create_recovery_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/recoverygroups"],
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

%% @doc Creates a new Resource Set.
create_resource_set(Client, Input) ->
    create_resource_set(Client, Input, []).
create_resource_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/resourcesets"],
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

%% @doc Deletes an existing Cell.
delete_cell(Client, CellName, Input) ->
    delete_cell(Client, CellName, Input, []).
delete_cell(Client, CellName, Input0, Options0) ->
    Method = delete,
    Path = ["/cells/", aws_util:encode_uri(CellName), ""],
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

%% @doc Delete cross account readiness authorization
delete_cross_account_authorization(Client, CrossAccountAuthorization, Input) ->
    delete_cross_account_authorization(Client, CrossAccountAuthorization, Input, []).
delete_cross_account_authorization(Client, CrossAccountAuthorization, Input0, Options0) ->
    Method = delete,
    Path = ["/crossaccountauthorizations/", aws_util:encode_uri(CrossAccountAuthorization), ""],
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

%% @doc Deletes an existing Readiness Check.
delete_readiness_check(Client, ReadinessCheckName, Input) ->
    delete_readiness_check(Client, ReadinessCheckName, Input, []).
delete_readiness_check(Client, ReadinessCheckName, Input0, Options0) ->
    Method = delete,
    Path = ["/readinesschecks/", aws_util:encode_uri(ReadinessCheckName), ""],
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

%% @doc Deletes an existing Recovery Group.
delete_recovery_group(Client, RecoveryGroupName, Input) ->
    delete_recovery_group(Client, RecoveryGroupName, Input, []).
delete_recovery_group(Client, RecoveryGroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/recoverygroups/", aws_util:encode_uri(RecoveryGroupName), ""],
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

%% @doc Deletes an existing Resource Set.
delete_resource_set(Client, ResourceSetName, Input) ->
    delete_resource_set(Client, ResourceSetName, Input, []).
delete_resource_set(Client, ResourceSetName, Input0, Options0) ->
    Method = delete,
    Path = ["/resourcesets/", aws_util:encode_uri(ResourceSetName), ""],
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

%% @doc Returns a collection of recommendations to improve resilliance and
%% readiness check quality for a Recovery Group.
get_architecture_recommendations(Client, RecoveryGroupName)
  when is_map(Client) ->
    get_architecture_recommendations(Client, RecoveryGroupName, #{}, #{}).

get_architecture_recommendations(Client, RecoveryGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_architecture_recommendations(Client, RecoveryGroupName, QueryMap, HeadersMap, []).

get_architecture_recommendations(Client, RecoveryGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/recoverygroups/", aws_util:encode_uri(RecoveryGroupName), "/architectureRecommendations"],
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

%% @doc Returns information about a Cell.
get_cell(Client, CellName)
  when is_map(Client) ->
    get_cell(Client, CellName, #{}, #{}).

get_cell(Client, CellName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cell(Client, CellName, QueryMap, HeadersMap, []).

get_cell(Client, CellName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cells/", aws_util:encode_uri(CellName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about readiness of a Cell.
get_cell_readiness_summary(Client, CellName)
  when is_map(Client) ->
    get_cell_readiness_summary(Client, CellName, #{}, #{}).

get_cell_readiness_summary(Client, CellName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_cell_readiness_summary(Client, CellName, QueryMap, HeadersMap, []).

get_cell_readiness_summary(Client, CellName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cellreadiness/", aws_util:encode_uri(CellName), ""],
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

%% @doc Returns information about a ReadinessCheck.
get_readiness_check(Client, ReadinessCheckName)
  when is_map(Client) ->
    get_readiness_check(Client, ReadinessCheckName, #{}, #{}).

get_readiness_check(Client, ReadinessCheckName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_readiness_check(Client, ReadinessCheckName, QueryMap, HeadersMap, []).

get_readiness_check(Client, ReadinessCheckName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/readinesschecks/", aws_util:encode_uri(ReadinessCheckName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns detailed information about the status of an individual
%% resource within a Readiness Check's Resource Set.
get_readiness_check_resource_status(Client, ReadinessCheckName, ResourceIdentifier)
  when is_map(Client) ->
    get_readiness_check_resource_status(Client, ReadinessCheckName, ResourceIdentifier, #{}, #{}).

get_readiness_check_resource_status(Client, ReadinessCheckName, ResourceIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_readiness_check_resource_status(Client, ReadinessCheckName, ResourceIdentifier, QueryMap, HeadersMap, []).

get_readiness_check_resource_status(Client, ReadinessCheckName, ResourceIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/readinesschecks/", aws_util:encode_uri(ReadinessCheckName), "/resource/", aws_util:encode_uri(ResourceIdentifier), "/status"],
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

%% @doc Returns information about the status of a Readiness Check.
get_readiness_check_status(Client, ReadinessCheckName)
  when is_map(Client) ->
    get_readiness_check_status(Client, ReadinessCheckName, #{}, #{}).

get_readiness_check_status(Client, ReadinessCheckName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_readiness_check_status(Client, ReadinessCheckName, QueryMap, HeadersMap, []).

get_readiness_check_status(Client, ReadinessCheckName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/readinesschecks/", aws_util:encode_uri(ReadinessCheckName), "/status"],
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

%% @doc Returns information about a Recovery Group.
get_recovery_group(Client, RecoveryGroupName)
  when is_map(Client) ->
    get_recovery_group(Client, RecoveryGroupName, #{}, #{}).

get_recovery_group(Client, RecoveryGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_recovery_group(Client, RecoveryGroupName, QueryMap, HeadersMap, []).

get_recovery_group(Client, RecoveryGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/recoverygroups/", aws_util:encode_uri(RecoveryGroupName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a Recovery Group.
get_recovery_group_readiness_summary(Client, RecoveryGroupName)
  when is_map(Client) ->
    get_recovery_group_readiness_summary(Client, RecoveryGroupName, #{}, #{}).

get_recovery_group_readiness_summary(Client, RecoveryGroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_recovery_group_readiness_summary(Client, RecoveryGroupName, QueryMap, HeadersMap, []).

get_recovery_group_readiness_summary(Client, RecoveryGroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/recoverygroupreadiness/", aws_util:encode_uri(RecoveryGroupName), ""],
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

%% @doc Returns information about a Resource Set.
get_resource_set(Client, ResourceSetName)
  when is_map(Client) ->
    get_resource_set(Client, ResourceSetName, #{}, #{}).

get_resource_set(Client, ResourceSetName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_resource_set(Client, ResourceSetName, QueryMap, HeadersMap, []).

get_resource_set(Client, ResourceSetName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resourcesets/", aws_util:encode_uri(ResourceSetName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a collection of Cells.
list_cells(Client)
  when is_map(Client) ->
    list_cells(Client, #{}, #{}).

list_cells(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_cells(Client, QueryMap, HeadersMap, []).

list_cells(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cells"],
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

%% @doc Returns a collection of cross account readiness authorizations.
list_cross_account_authorizations(Client)
  when is_map(Client) ->
    list_cross_account_authorizations(Client, #{}, #{}).

list_cross_account_authorizations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_cross_account_authorizations(Client, QueryMap, HeadersMap, []).

list_cross_account_authorizations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/crossaccountauthorizations"],
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

%% @doc Returns a collection of Readiness Checks.
list_readiness_checks(Client)
  when is_map(Client) ->
    list_readiness_checks(Client, #{}, #{}).

list_readiness_checks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_readiness_checks(Client, QueryMap, HeadersMap, []).

list_readiness_checks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/readinesschecks"],
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

%% @doc Returns a collection of Recovery Groups.
list_recovery_groups(Client)
  when is_map(Client) ->
    list_recovery_groups(Client, #{}, #{}).

list_recovery_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_recovery_groups(Client, QueryMap, HeadersMap, []).

list_recovery_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/recoverygroups"],
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

%% @doc Returns a collection of Resource Sets.
list_resource_sets(Client)
  when is_map(Client) ->
    list_resource_sets(Client, #{}, #{}).

list_resource_sets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_resource_sets(Client, QueryMap, HeadersMap, []).

list_resource_sets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/resourcesets"],
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

%% @doc Returns a collection of rules that are applied as part of Readiness
%% Checks.
list_rules(Client)
  when is_map(Client) ->
    list_rules(Client, #{}, #{}).

list_rules(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_rules(Client, QueryMap, HeadersMap, []).

list_rules(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/rules"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"resourceType">>, maps:get(<<"resourceType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the tags assigned to the specified resource.
list_tags_for_resources(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resources(Client, ResourceArn, #{}, #{}).

list_tags_for_resources(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resources(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resources(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Adds tags to the specified resource.
%%
%% You can specify one or more tags to add.
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

%% @doc Removes tags from the specified resource.
%%
%% You can specify one or more tags to remove.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Updates an existing Cell.
update_cell(Client, CellName, Input) ->
    update_cell(Client, CellName, Input, []).
update_cell(Client, CellName, Input0, Options0) ->
    Method = put,
    Path = ["/cells/", aws_util:encode_uri(CellName), ""],
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

%% @doc Updates an exisiting Readiness Check.
update_readiness_check(Client, ReadinessCheckName, Input) ->
    update_readiness_check(Client, ReadinessCheckName, Input, []).
update_readiness_check(Client, ReadinessCheckName, Input0, Options0) ->
    Method = put,
    Path = ["/readinesschecks/", aws_util:encode_uri(ReadinessCheckName), ""],
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

%% @doc Updates an existing Recovery Group.
update_recovery_group(Client, RecoveryGroupName, Input) ->
    update_recovery_group(Client, RecoveryGroupName, Input, []).
update_recovery_group(Client, RecoveryGroupName, Input0, Options0) ->
    Method = put,
    Path = ["/recoverygroups/", aws_util:encode_uri(RecoveryGroupName), ""],
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

%% @doc Updates an existing Resource Set.
update_resource_set(Client, ResourceSetName, Input) ->
    update_resource_set(Client, ResourceSetName, Input, []).
update_resource_set(Client, ResourceSetName, Input0, Options0) ->
    Method = put,
    Path = ["/resourcesets/", aws_util:encode_uri(ResourceSetName), ""],
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
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"route53-recovery-readiness">>},
    Host = build_host(<<"route53-recovery-readiness">>, Client1),
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
