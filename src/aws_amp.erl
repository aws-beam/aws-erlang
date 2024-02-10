%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Managed Service for Prometheus is a serverless,
%% Prometheus-compatible monitoring service for container metrics that makes
%% it easier to securely monitor container environments at scale.
%%
%% With Amazon Managed Service for Prometheus, you can use the same
%% open-source Prometheus data model and query language that you use today to
%% monitor the performance of your containerized workloads, and also enjoy
%% improved scalability, availability, and security without having to manage
%% the underlying infrastructure.
%%
%% For more information about Amazon Managed Service for Prometheus, see the
%% Amazon Managed Service for Prometheus User Guide.
%%
%% Amazon Managed Service for Prometheus includes two APIs.
%%
%% <ul> <li> Use the Amazon Web Services API described in this guide to
%% manage Amazon Managed Service for Prometheus resources, such as
%% workspaces, rule groups, and alert managers.
%%
%% </li> <li> Use the Prometheus-compatible API to work within your
%% Prometheus workspace.
%%
%% </li> </ul>
-module(aws_amp).

-export([create_alert_manager_definition/3,
         create_alert_manager_definition/4,
         create_logging_configuration/3,
         create_logging_configuration/4,
         create_rule_groups_namespace/3,
         create_rule_groups_namespace/4,
         create_scraper/2,
         create_scraper/3,
         create_workspace/2,
         create_workspace/3,
         delete_alert_manager_definition/3,
         delete_alert_manager_definition/4,
         delete_logging_configuration/3,
         delete_logging_configuration/4,
         delete_rule_groups_namespace/4,
         delete_rule_groups_namespace/5,
         delete_scraper/3,
         delete_scraper/4,
         delete_workspace/3,
         delete_workspace/4,
         describe_alert_manager_definition/2,
         describe_alert_manager_definition/4,
         describe_alert_manager_definition/5,
         describe_logging_configuration/2,
         describe_logging_configuration/4,
         describe_logging_configuration/5,
         describe_rule_groups_namespace/3,
         describe_rule_groups_namespace/5,
         describe_rule_groups_namespace/6,
         describe_scraper/2,
         describe_scraper/4,
         describe_scraper/5,
         describe_workspace/2,
         describe_workspace/4,
         describe_workspace/5,
         get_default_scraper_configuration/1,
         get_default_scraper_configuration/3,
         get_default_scraper_configuration/4,
         list_rule_groups_namespaces/2,
         list_rule_groups_namespaces/4,
         list_rule_groups_namespaces/5,
         list_scrapers/1,
         list_scrapers/3,
         list_scrapers/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_workspaces/1,
         list_workspaces/3,
         list_workspaces/4,
         put_alert_manager_definition/3,
         put_alert_manager_definition/4,
         put_rule_groups_namespace/4,
         put_rule_groups_namespace/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_logging_configuration/3,
         update_logging_configuration/4,
         update_workspace_alias/3,
         update_workspace_alias/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc The `CreateAlertManagerDefinition' operation creates the alert
%% manager definition in a workspace.
%%
%% If a workspace already has an alert manager definition, don't use this
%% operation to update it. Instead, use `PutAlertManagerDefinition'.
create_alert_manager_definition(Client, WorkspaceId, Input) ->
    create_alert_manager_definition(Client, WorkspaceId, Input, []).
create_alert_manager_definition(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/alertmanager/definition"],
    SuccessStatusCode = 202,
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

%% @doc The `CreateLoggingConfiguration' operation creates a logging
%% configuration for the workspace.
%%
%% Use this operation to set the CloudWatch log group to which the logs will
%% be published to.
create_logging_configuration(Client, WorkspaceId, Input) ->
    create_logging_configuration(Client, WorkspaceId, Input, []).
create_logging_configuration(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/logging"],
    SuccessStatusCode = 202,
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

%% @doc The `CreateRuleGroupsNamespace' operation creates a rule groups
%% namespace within a workspace.
%%
%% A rule groups namespace is associated with exactly one rules file. A
%% workspace can have multiple rule groups namespaces.
%%
%% Use this operation only to create new rule groups namespaces. To update an
%% existing rule groups namespace, use `PutRuleGroupsNamespace'.
create_rule_groups_namespace(Client, WorkspaceId, Input) ->
    create_rule_groups_namespace(Client, WorkspaceId, Input, []).
create_rule_groups_namespace(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/rulegroupsnamespaces"],
    SuccessStatusCode = 202,
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

%% @doc The `CreateScraper' operation creates a scraper to collect
%% metrics.
%%
%% A scraper pulls metrics from Prometheus-compatible sources within an
%% Amazon EKS cluster, and sends them to your Amazon Managed Service for
%% Prometheus workspace. You can configure the scraper to control what
%% metrics are collected, and what transformations are applied prior to
%% sending them to your workspace.
%%
%% If needed, an IAM role will be created for you that gives Amazon Managed
%% Service for Prometheus access to the metrics in your cluster. For more
%% information, see Using roles for scraping metrics from EKS in the Amazon
%% Managed Service for Prometheus User Guide.
%%
%% You cannot update a scraper. If you want to change the configuration of
%% the scraper, create a new scraper and delete the old one.
%%
%% The `scrapeConfiguration' parameter contains the base64-encoded
%% version of the YAML configuration file.
%%
%% For more information about collectors, including what metrics are
%% collected, and how to configure the scraper, see Amazon Web Services
%% managed collectors in the Amazon Managed Service for Prometheus User
%% Guide.
create_scraper(Client, Input) ->
    create_scraper(Client, Input, []).
create_scraper(Client, Input0, Options0) ->
    Method = post,
    Path = ["/scrapers"],
    SuccessStatusCode = 202,
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

%% @doc Creates a Prometheus workspace.
%%
%% A workspace is a logical space dedicated to the storage and querying of
%% Prometheus metrics. You can have one or more workspaces in each Region in
%% your account.
create_workspace(Client, Input) ->
    create_workspace(Client, Input, []).
create_workspace(Client, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces"],
    SuccessStatusCode = 202,
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

%% @doc Deletes the alert manager definition from a workspace.
delete_alert_manager_definition(Client, WorkspaceId, Input) ->
    delete_alert_manager_definition(Client, WorkspaceId, Input, []).
delete_alert_manager_definition(Client, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/alertmanager/definition"],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the logging configuration for a workspace.
delete_logging_configuration(Client, WorkspaceId, Input) ->
    delete_logging_configuration(Client, WorkspaceId, Input, []).
delete_logging_configuration(Client, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/logging"],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes one rule groups namespace and its associated rule groups
%% definition.
delete_rule_groups_namespace(Client, Name, WorkspaceId, Input) ->
    delete_rule_groups_namespace(Client, Name, WorkspaceId, Input, []).
delete_rule_groups_namespace(Client, Name, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/rulegroupsnamespaces/", aws_util:encode_uri(Name), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The `DeleteScraper' operation deletes one scraper, and stops any
%% metrics collection that the scraper performs.
delete_scraper(Client, ScraperId, Input) ->
    delete_scraper(Client, ScraperId, Input, []).
delete_scraper(Client, ScraperId, Input0, Options0) ->
    Method = delete,
    Path = ["/scrapers/", aws_util:encode_uri(ScraperId), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an existing workspace.
%%
%% When you delete a workspace, the data that has been ingested into it is
%% not immediately deleted. It will be permanently deleted within one month.
delete_workspace(Client, WorkspaceId, Input) ->
    delete_workspace(Client, WorkspaceId, Input, []).
delete_workspace(Client, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
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
                     {<<"clientToken">>, <<"clientToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the full information about the alert manager definition for
%% a workspace.
describe_alert_manager_definition(Client, WorkspaceId)
  when is_map(Client) ->
    describe_alert_manager_definition(Client, WorkspaceId, #{}, #{}).

describe_alert_manager_definition(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_alert_manager_definition(Client, WorkspaceId, QueryMap, HeadersMap, []).

describe_alert_manager_definition(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/alertmanager/definition"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns complete information about the current logging configuration
%% of the workspace.
describe_logging_configuration(Client, WorkspaceId)
  when is_map(Client) ->
    describe_logging_configuration(Client, WorkspaceId, #{}, #{}).

describe_logging_configuration(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_logging_configuration(Client, WorkspaceId, QueryMap, HeadersMap, []).

describe_logging_configuration(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/logging"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns complete information about one rule groups namespace.
%%
%% To retrieve a list of rule groups namespaces, use
%% `ListRuleGroupsNamespaces'.
describe_rule_groups_namespace(Client, Name, WorkspaceId)
  when is_map(Client) ->
    describe_rule_groups_namespace(Client, Name, WorkspaceId, #{}, #{}).

describe_rule_groups_namespace(Client, Name, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_rule_groups_namespace(Client, Name, WorkspaceId, QueryMap, HeadersMap, []).

describe_rule_groups_namespace(Client, Name, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/rulegroupsnamespaces/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The `DescribeScraper' operation displays information about an
%% existing scraper.
describe_scraper(Client, ScraperId)
  when is_map(Client) ->
    describe_scraper(Client, ScraperId, #{}, #{}).

describe_scraper(Client, ScraperId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_scraper(Client, ScraperId, QueryMap, HeadersMap, []).

describe_scraper(Client, ScraperId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/scrapers/", aws_util:encode_uri(ScraperId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an existing workspace.
describe_workspace(Client, WorkspaceId)
  when is_map(Client) ->
    describe_workspace(Client, WorkspaceId, #{}, #{}).

describe_workspace(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_workspace(Client, WorkspaceId, QueryMap, HeadersMap, []).

describe_workspace(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The `GetDefaultScraperConfiguration' operation returns the
%% default scraper configuration used when Amazon EKS creates a scraper for
%% you.
get_default_scraper_configuration(Client)
  when is_map(Client) ->
    get_default_scraper_configuration(Client, #{}, #{}).

get_default_scraper_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_default_scraper_configuration(Client, QueryMap, HeadersMap, []).

get_default_scraper_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/scraperconfiguration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of rule groups namespaces in a workspace.
list_rule_groups_namespaces(Client, WorkspaceId)
  when is_map(Client) ->
    list_rule_groups_namespaces(Client, WorkspaceId, #{}, #{}).

list_rule_groups_namespaces(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_rule_groups_namespaces(Client, WorkspaceId, QueryMap, HeadersMap, []).

list_rule_groups_namespaces(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/rulegroupsnamespaces"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"name">>, maps:get(<<"name">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The `ListScrapers' operation lists all of the scrapers in your
%% account.
%%
%% This includes scrapers being created or deleted. You can optionally filter
%% the returned list.
list_scrapers(Client)
  when is_map(Client) ->
    list_scrapers(Client, #{}, #{}).

list_scrapers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_scrapers(Client, QueryMap, HeadersMap, []).

list_scrapers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/scrapers"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"">>, maps:get(<<"">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The `ListTagsForResource' operation returns the tags that are
%% associated with an Amazon Managed Service for Prometheus resource.
%%
%% Currently, the only resources that can be tagged are workspaces and rule
%% groups namespaces.
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

%% @doc Lists all of the Amazon Managed Service for Prometheus workspaces in
%% your account.
%%
%% This includes workspaces being created or deleted.
list_workspaces(Client)
  when is_map(Client) ->
    list_workspaces(Client, #{}, #{}).

list_workspaces(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_workspaces(Client, QueryMap, HeadersMap, []).

list_workspaces(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"alias">>, maps:get(<<"alias">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Updates an existing alert manager definition in a workspace.
%%
%% If the workspace does not already have an alert manager definition,
%% don't use this operation to create it. Instead, use
%% `CreateAlertManagerDefinition'.
put_alert_manager_definition(Client, WorkspaceId, Input) ->
    put_alert_manager_definition(Client, WorkspaceId, Input, []).
put_alert_manager_definition(Client, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/alertmanager/definition"],
    SuccessStatusCode = 202,
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

%% @doc Updates an existing rule groups namespace within a workspace.
%%
%% A rule groups namespace is associated with exactly one rules file. A
%% workspace can have multiple rule groups namespaces.
%%
%% Use this operation only to update existing rule groups namespaces. To
%% create a new rule groups namespace, use `CreateRuleGroupsNamespace'.
%%
%% You can't use this operation to add tags to an existing rule groups
%% namespace. Instead, use `TagResource'.
put_rule_groups_namespace(Client, Name, WorkspaceId, Input) ->
    put_rule_groups_namespace(Client, Name, WorkspaceId, Input, []).
put_rule_groups_namespace(Client, Name, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/rulegroupsnamespaces/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 202,
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

%% @doc The `TagResource' operation associates tags with an Amazon
%% Managed Service for Prometheus resource.
%%
%% The only resources that can be tagged are workspaces and rule groups
%% namespaces.
%%
%% If you specify a new tag key for the resource, this tag is appended to the
%% list of tags associated with the resource. If you specify a tag key that
%% is already associated with the resource, the new tag value that you
%% specify replaces the previous value for that tag.
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

%% @doc Removes the specified tags from an Amazon Managed Service for
%% Prometheus resource.
%%
%% The only resources that can be tagged are workspaces and rule groups
%% namespaces.
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

%% @doc Updates the log group ARN or the workspace ID of the current logging
%% configuration.
update_logging_configuration(Client, WorkspaceId, Input) ->
    update_logging_configuration(Client, WorkspaceId, Input, []).
update_logging_configuration(Client, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/logging"],
    SuccessStatusCode = 202,
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

%% @doc Updates the alias of an existing workspace.
update_workspace_alias(Client, WorkspaceId, Input) ->
    update_workspace_alias(Client, WorkspaceId, Input, []).
update_workspace_alias(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/alias"],
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
    Client1 = Client#{service => <<"aps">>},
    Host = build_host(<<"aps">>, Client1),
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
