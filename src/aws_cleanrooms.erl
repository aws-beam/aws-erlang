%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Clean Rooms API Reference.
%%
%% Clean Rooms is an Amazon Web Services service that helps multiple parties
%% to join their data together in a secure collaboration workspace. In the
%% collaboration, members who can query and receive results can get insights
%% into the collective datasets without either party getting access to the
%% other party's raw data.
%%
%% To learn more about Clean Rooms concepts, procedures, and best practices,
%% see the Clean Rooms User Guide.
-module(aws_cleanrooms).

-export([batch_get_schema/3,
         batch_get_schema/4,
         create_collaboration/2,
         create_collaboration/3,
         create_configured_table/2,
         create_configured_table/3,
         create_configured_table_analysis_rule/3,
         create_configured_table_analysis_rule/4,
         create_configured_table_association/3,
         create_configured_table_association/4,
         create_membership/2,
         create_membership/3,
         delete_collaboration/3,
         delete_collaboration/4,
         delete_configured_table/3,
         delete_configured_table/4,
         delete_configured_table_analysis_rule/4,
         delete_configured_table_analysis_rule/5,
         delete_configured_table_association/4,
         delete_configured_table_association/5,
         delete_member/4,
         delete_member/5,
         delete_membership/3,
         delete_membership/4,
         get_collaboration/2,
         get_collaboration/4,
         get_collaboration/5,
         get_configured_table/2,
         get_configured_table/4,
         get_configured_table/5,
         get_configured_table_analysis_rule/3,
         get_configured_table_analysis_rule/5,
         get_configured_table_analysis_rule/6,
         get_configured_table_association/3,
         get_configured_table_association/5,
         get_configured_table_association/6,
         get_membership/2,
         get_membership/4,
         get_membership/5,
         get_protected_query/3,
         get_protected_query/5,
         get_protected_query/6,
         get_schema/3,
         get_schema/5,
         get_schema/6,
         get_schema_analysis_rule/4,
         get_schema_analysis_rule/6,
         get_schema_analysis_rule/7,
         list_collaborations/1,
         list_collaborations/3,
         list_collaborations/4,
         list_configured_table_associations/2,
         list_configured_table_associations/4,
         list_configured_table_associations/5,
         list_configured_tables/1,
         list_configured_tables/3,
         list_configured_tables/4,
         list_members/2,
         list_members/4,
         list_members/5,
         list_memberships/1,
         list_memberships/3,
         list_memberships/4,
         list_protected_queries/2,
         list_protected_queries/4,
         list_protected_queries/5,
         list_schemas/2,
         list_schemas/4,
         list_schemas/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_protected_query/3,
         start_protected_query/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_collaboration/3,
         update_collaboration/4,
         update_configured_table/3,
         update_configured_table/4,
         update_configured_table_analysis_rule/4,
         update_configured_table_analysis_rule/5,
         update_configured_table_association/4,
         update_configured_table_association/5,
         update_membership/3,
         update_membership/4,
         update_protected_query/4,
         update_protected_query/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Retrieves multiple schemas by their identifiers.
batch_get_schema(Client, CollaborationIdentifier, Input) ->
    batch_get_schema(Client, CollaborationIdentifier, Input, []).
batch_get_schema(Client, CollaborationIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/batch-schema"],
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

%% @doc Creates a new collaboration.
create_collaboration(Client, Input) ->
    create_collaboration(Client, Input, []).
create_collaboration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/collaborations"],
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

%% @doc Creates a new configured table resource.
create_configured_table(Client, Input) ->
    create_configured_table(Client, Input, []).
create_configured_table(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configuredTables"],
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

%% @doc Creates a new analysis rule for a configured table.
%%
%% Currently, only one analysis rule can be created for a given configured
%% table.
create_configured_table_analysis_rule(Client, ConfiguredTableIdentifier, Input) ->
    create_configured_table_analysis_rule(Client, ConfiguredTableIdentifier, Input, []).
create_configured_table_analysis_rule(Client, ConfiguredTableIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/configuredTables/", aws_util:encode_uri(ConfiguredTableIdentifier), "/analysisRule"],
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

%% @doc Creates a configured table association.
%%
%% A configured table association links a configured table with a
%% collaboration.
create_configured_table_association(Client, MembershipIdentifier, Input) ->
    create_configured_table_association(Client, MembershipIdentifier, Input, []).
create_configured_table_association(Client, MembershipIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configuredTableAssociations"],
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

%% @doc Creates a membership for a specific collaboration identifier and
%% joins the collaboration.
create_membership(Client, Input) ->
    create_membership(Client, Input, []).
create_membership(Client, Input0, Options0) ->
    Method = post,
    Path = ["/memberships"],
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

%% @doc Deletes a collaboration.
%%
%% It can only be called by the collaboration owner.
delete_collaboration(Client, CollaborationIdentifier, Input) ->
    delete_collaboration(Client, CollaborationIdentifier, Input, []).
delete_collaboration(Client, CollaborationIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), ""],
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

%% @doc Deletes a configured table.
delete_configured_table(Client, ConfiguredTableIdentifier, Input) ->
    delete_configured_table(Client, ConfiguredTableIdentifier, Input, []).
delete_configured_table(Client, ConfiguredTableIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/configuredTables/", aws_util:encode_uri(ConfiguredTableIdentifier), ""],
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

%% @doc Deletes a configured table analysis rule.
delete_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier, Input) ->
    delete_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier, Input, []).
delete_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/configuredTables/", aws_util:encode_uri(ConfiguredTableIdentifier), "/analysisRule/", aws_util:encode_uri(AnalysisRuleType), ""],
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

%% @doc Deletes a configured table association.
delete_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, Input) ->
    delete_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, Input, []).
delete_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configuredTableAssociations/", aws_util:encode_uri(ConfiguredTableAssociationIdentifier), ""],
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

%% @doc Removes the specified member from a collaboration.
%%
%% The removed member is placed in the Removed status and can't interact
%% with the collaboration. The removed member's data is inaccessible to
%% active members of the collaboration.
delete_member(Client, AccountId, CollaborationIdentifier, Input) ->
    delete_member(Client, AccountId, CollaborationIdentifier, Input, []).
delete_member(Client, AccountId, CollaborationIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/member/", aws_util:encode_uri(AccountId), ""],
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

%% @doc Deletes a specified membership.
%%
%% All resources under a membership must be deleted.
delete_membership(Client, MembershipIdentifier, Input) ->
    delete_membership(Client, MembershipIdentifier, Input, []).
delete_membership(Client, MembershipIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), ""],
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

%% @doc Returns metadata about a collaboration.
get_collaboration(Client, CollaborationIdentifier)
  when is_map(Client) ->
    get_collaboration(Client, CollaborationIdentifier, #{}, #{}).

get_collaboration(Client, CollaborationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_collaboration(Client, CollaborationIdentifier, QueryMap, HeadersMap, []).

get_collaboration(Client, CollaborationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a configured table.
get_configured_table(Client, ConfiguredTableIdentifier)
  when is_map(Client) ->
    get_configured_table(Client, ConfiguredTableIdentifier, #{}, #{}).

get_configured_table(Client, ConfiguredTableIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configured_table(Client, ConfiguredTableIdentifier, QueryMap, HeadersMap, []).

get_configured_table(Client, ConfiguredTableIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configuredTables/", aws_util:encode_uri(ConfiguredTableIdentifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a configured table analysis rule.
get_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier)
  when is_map(Client) ->
    get_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier, #{}, #{}).

get_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier, QueryMap, HeadersMap, []).

get_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configuredTables/", aws_util:encode_uri(ConfiguredTableIdentifier), "/analysisRule/", aws_util:encode_uri(AnalysisRuleType), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a configured table association.
get_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier)
  when is_map(Client) ->
    get_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, #{}, #{}).

get_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, QueryMap, HeadersMap, []).

get_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configuredTableAssociations/", aws_util:encode_uri(ConfiguredTableAssociationIdentifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a specified membership for an identifier.
get_membership(Client, MembershipIdentifier)
  when is_map(Client) ->
    get_membership(Client, MembershipIdentifier, #{}, #{}).

get_membership(Client, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_membership(Client, MembershipIdentifier, QueryMap, HeadersMap, []).

get_membership(Client, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns query processing metadata.
get_protected_query(Client, MembershipIdentifier, ProtectedQueryIdentifier)
  when is_map(Client) ->
    get_protected_query(Client, MembershipIdentifier, ProtectedQueryIdentifier, #{}, #{}).

get_protected_query(Client, MembershipIdentifier, ProtectedQueryIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_protected_query(Client, MembershipIdentifier, ProtectedQueryIdentifier, QueryMap, HeadersMap, []).

get_protected_query(Client, MembershipIdentifier, ProtectedQueryIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/protectedQueries/", aws_util:encode_uri(ProtectedQueryIdentifier), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the schema for a relation within a collaboration.
get_schema(Client, CollaborationIdentifier, Name)
  when is_map(Client) ->
    get_schema(Client, CollaborationIdentifier, Name, #{}, #{}).

get_schema(Client, CollaborationIdentifier, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_schema(Client, CollaborationIdentifier, Name, QueryMap, HeadersMap, []).

get_schema(Client, CollaborationIdentifier, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/schemas/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a schema analysis rule.
get_schema_analysis_rule(Client, CollaborationIdentifier, Name, Type)
  when is_map(Client) ->
    get_schema_analysis_rule(Client, CollaborationIdentifier, Name, Type, #{}, #{}).

get_schema_analysis_rule(Client, CollaborationIdentifier, Name, Type, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_schema_analysis_rule(Client, CollaborationIdentifier, Name, Type, QueryMap, HeadersMap, []).

get_schema_analysis_rule(Client, CollaborationIdentifier, Name, Type, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/schemas/", aws_util:encode_uri(Name), "/analysisRule/", aws_util:encode_uri(Type), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists collaborations the caller owns, is active in, or has been
%% invited to.
list_collaborations(Client)
  when is_map(Client) ->
    list_collaborations(Client, #{}, #{}).

list_collaborations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_collaborations(Client, QueryMap, HeadersMap, []).

list_collaborations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"memberStatus">>, maps:get(<<"memberStatus">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists configured table associations for a membership.
list_configured_table_associations(Client, MembershipIdentifier)
  when is_map(Client) ->
    list_configured_table_associations(Client, MembershipIdentifier, #{}, #{}).

list_configured_table_associations(Client, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configured_table_associations(Client, MembershipIdentifier, QueryMap, HeadersMap, []).

list_configured_table_associations(Client, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configuredTableAssociations"],
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

%% @doc Lists configured tables.
list_configured_tables(Client)
  when is_map(Client) ->
    list_configured_tables(Client, #{}, #{}).

list_configured_tables(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configured_tables(Client, QueryMap, HeadersMap, []).

list_configured_tables(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configuredTables"],
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

%% @doc Lists all members within a collaboration.
list_members(Client, CollaborationIdentifier)
  when is_map(Client) ->
    list_members(Client, CollaborationIdentifier, #{}, #{}).

list_members(Client, CollaborationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_members(Client, CollaborationIdentifier, QueryMap, HeadersMap, []).

list_members(Client, CollaborationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/members"],
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

%% @doc Lists all memberships resources within the caller's account.
list_memberships(Client)
  when is_map(Client) ->
    list_memberships(Client, #{}, #{}).

list_memberships(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_memberships(Client, QueryMap, HeadersMap, []).

list_memberships(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships"],
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

%% @doc Lists protected queries, sorted by the most recent query.
list_protected_queries(Client, MembershipIdentifier)
  when is_map(Client) ->
    list_protected_queries(Client, MembershipIdentifier, #{}, #{}).

list_protected_queries(Client, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_protected_queries(Client, MembershipIdentifier, QueryMap, HeadersMap, []).

list_protected_queries(Client, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/protectedQueries"],
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

%% @doc Lists the schemas for relations within a collaboration.
list_schemas(Client, CollaborationIdentifier)
  when is_map(Client) ->
    list_schemas(Client, CollaborationIdentifier, #{}, #{}).

list_schemas(Client, CollaborationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_schemas(Client, CollaborationIdentifier, QueryMap, HeadersMap, []).

list_schemas(Client, CollaborationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/schemas"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"schemaType">>, maps:get(<<"schemaType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the tags that have been added to a resource.
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

%% @doc Creates a protected query that is started by Clean Rooms .
start_protected_query(Client, MembershipIdentifier, Input) ->
    start_protected_query(Client, MembershipIdentifier, Input, []).
start_protected_query(Client, MembershipIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/protectedQueries"],
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

%% @doc Tags a resource.
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

%% @doc Removes a tag or list of tags from a resource.
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

%% @doc Updates collaboration metadata and can only be called by the
%% collaboration owner.
update_collaboration(Client, CollaborationIdentifier, Input) ->
    update_collaboration(Client, CollaborationIdentifier, Input, []).
update_collaboration(Client, CollaborationIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), ""],
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

%% @doc Updates a configured table.
update_configured_table(Client, ConfiguredTableIdentifier, Input) ->
    update_configured_table(Client, ConfiguredTableIdentifier, Input, []).
update_configured_table(Client, ConfiguredTableIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/configuredTables/", aws_util:encode_uri(ConfiguredTableIdentifier), ""],
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

%% @doc Updates a configured table analysis rule.
update_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier, Input) ->
    update_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier, Input, []).
update_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/configuredTables/", aws_util:encode_uri(ConfiguredTableIdentifier), "/analysisRule/", aws_util:encode_uri(AnalysisRuleType), ""],
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

%% @doc Updates a configured table association.
update_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, Input) ->
    update_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, Input, []).
update_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configuredTableAssociations/", aws_util:encode_uri(ConfiguredTableAssociationIdentifier), ""],
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

%% @doc Updates a membership.
update_membership(Client, MembershipIdentifier, Input) ->
    update_membership(Client, MembershipIdentifier, Input, []).
update_membership(Client, MembershipIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), ""],
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

%% @doc Updates the processing of a currently running query.
update_protected_query(Client, MembershipIdentifier, ProtectedQueryIdentifier, Input) ->
    update_protected_query(Client, MembershipIdentifier, ProtectedQueryIdentifier, Input, []).
update_protected_query(Client, MembershipIdentifier, ProtectedQueryIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/protectedQueries/", aws_util:encode_uri(ProtectedQueryIdentifier), ""],
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
    Client1 = Client#{service => <<"cleanrooms">>},
    Host = build_host(<<"cleanrooms">>, Client1),
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
