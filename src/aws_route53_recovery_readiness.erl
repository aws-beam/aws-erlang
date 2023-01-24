%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Recovery readiness
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

%% @doc Creates a cell in an account.
create_cell(Client, Input) ->
    create_cell(Client, Input, []).
create_cell(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cells"],
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

%% @doc Creates a cross-account readiness authorization.
%%
%% This lets you authorize another account to work with Route 53 Application
%% Recovery Controller, for example, to check the readiness status of
%% resources in a separate account.
create_cross_account_authorization(Client, Input) ->
    create_cross_account_authorization(Client, Input, []).
create_cross_account_authorization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/crossaccountauthorizations"],
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

%% @doc Creates a readiness check in an account.
%%
%% A readiness check monitors a resource set in your application, such as a
%% set of Amazon Aurora instances, that Application Recovery Controller is
%% auditing recovery readiness for. The audits run once every minute on every
%% resource that's associated with a readiness check.
create_readiness_check(Client, Input) ->
    create_readiness_check(Client, Input, []).
create_readiness_check(Client, Input0, Options0) ->
    Method = post,
    Path = ["/readinesschecks"],
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

%% @doc Creates a recovery group in an account.
%%
%% A recovery group corresponds to an application and includes a list of the
%% cells that make up the application.
create_recovery_group(Client, Input) ->
    create_recovery_group(Client, Input, []).
create_recovery_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/recoverygroups"],
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

%% @doc Creates a resource set.
%%
%% A resource set is a set of resources of one type that span multiple cells.
%% You can associate a resource set with a readiness check to monitor the
%% resources for failover readiness.
create_resource_set(Client, Input) ->
    create_resource_set(Client, Input, []).
create_resource_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/resourcesets"],
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

%% @doc Delete a cell.
%%
%% When successful, the response code is 204, with no response body.
delete_cell(Client, CellName, Input) ->
    delete_cell(Client, CellName, Input, []).
delete_cell(Client, CellName, Input0, Options0) ->
    Method = delete,
    Path = ["/cells/", aws_util:encode_uri(CellName), ""],
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

%% @doc Deletes cross account readiness authorization.
delete_cross_account_authorization(Client, CrossAccountAuthorization, Input) ->
    delete_cross_account_authorization(Client, CrossAccountAuthorization, Input, []).
delete_cross_account_authorization(Client, CrossAccountAuthorization, Input0, Options0) ->
    Method = delete,
    Path = ["/crossaccountauthorizations/", aws_util:encode_uri(CrossAccountAuthorization), ""],
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

%% @doc Deletes a readiness check.
delete_readiness_check(Client, ReadinessCheckName, Input) ->
    delete_readiness_check(Client, ReadinessCheckName, Input, []).
delete_readiness_check(Client, ReadinessCheckName, Input0, Options0) ->
    Method = delete,
    Path = ["/readinesschecks/", aws_util:encode_uri(ReadinessCheckName), ""],
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

%% @doc Deletes a recovery group.
delete_recovery_group(Client, RecoveryGroupName, Input) ->
    delete_recovery_group(Client, RecoveryGroupName, Input, []).
delete_recovery_group(Client, RecoveryGroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/recoverygroups/", aws_util:encode_uri(RecoveryGroupName), ""],
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

%% @doc Deletes a resource set.
delete_resource_set(Client, ResourceSetName, Input) ->
    delete_resource_set(Client, ResourceSetName, Input, []).
delete_resource_set(Client, ResourceSetName, Input0, Options0) ->
    Method = delete,
    Path = ["/resourcesets/", aws_util:encode_uri(ResourceSetName), ""],
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

%% @doc Gets recommendations about architecture designs for improving
%% resiliency for an application, based on a recovery group.
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

%% @doc Gets information about a cell including cell name, cell Amazon
%% Resource Name (ARN), ARNs of nested cells for this cell, and a list of
%% those cell ARNs with their associated recovery group ARNs.
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

%% @doc Gets readiness for a cell.
%%
%% Aggregates the readiness of all the resources that are associated with the
%% cell into a single value.
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

%% @doc Gets details about a readiness check.
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

%% @doc Gets individual readiness status for a readiness check.
%%
%% To see the overall readiness status for a recovery group, that considers
%% the readiness status for all the readiness checks in the recovery group,
%% use GetRecoveryGroupReadinessSummary.
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

%% @doc Gets the readiness status for an individual readiness check.
%%
%% To see the overall readiness status for a recovery group, that considers
%% the readiness status for all the readiness checks in a recovery group, use
%% GetRecoveryGroupReadinessSummary.
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

%% @doc Gets details about a recovery group, including a list of the cells
%% that are included in it.
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

%% @doc Displays a summary of information about a recovery group's readiness
%% status.
%%
%% Includes the readiness checks for resources in the recovery group and the
%% readiness status of each one.
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

%% @doc Displays the details about a resource set, including a list of the
%% resources in the set.
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

%% @doc Lists the cells for an account.
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

%% @doc Lists the cross-account readiness authorizations that are in place
%% for an account.
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

%% @doc Lists the readiness checks for an account.
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

%% @doc Lists the recovery groups in an account.
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

%% @doc Lists the resource sets in an account.
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

%% @doc Lists all readiness rules, or lists the readiness rules for a
%% specific resource type.
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

%% @doc Lists the tags for a resource.
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

%% @doc Adds a tag to a resource.
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

%% @doc Removes a tag from a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a cell to replace the list of nested cells with a new list of
%% nested cells.
update_cell(Client, CellName, Input) ->
    update_cell(Client, CellName, Input, []).
update_cell(Client, CellName, Input0, Options0) ->
    Method = put,
    Path = ["/cells/", aws_util:encode_uri(CellName), ""],
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

%% @doc Updates a readiness check.
update_readiness_check(Client, ReadinessCheckName, Input) ->
    update_readiness_check(Client, ReadinessCheckName, Input, []).
update_readiness_check(Client, ReadinessCheckName, Input0, Options0) ->
    Method = put,
    Path = ["/readinesschecks/", aws_util:encode_uri(ReadinessCheckName), ""],
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

%% @doc Updates a recovery group.
update_recovery_group(Client, RecoveryGroupName, Input) ->
    update_recovery_group(Client, RecoveryGroupName, Input, []).
update_recovery_group(Client, RecoveryGroupName, Input0, Options0) ->
    Method = put,
    Path = ["/recoverygroups/", aws_util:encode_uri(RecoveryGroupName), ""],
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

%% @doc Updates a resource set.
update_resource_set(Client, ResourceSetName, Input) ->
    update_resource_set(Client, ResourceSetName, Input, []).
update_resource_set(Client, ResourceSetName, Input0, Options0) ->
    Method = put,
    Path = ["/resourcesets/", aws_util:encode_uri(ResourceSetName), ""],
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
    Client1 = Client#{service => <<"route53-recovery-readiness">>},
    Host = build_host(<<"route53-recovery-readiness">>, Client1),
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
