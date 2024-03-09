%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Entity Resolution API Reference.
%%
%% Entity Resolution is an Amazon Web Services service that provides
%% pre-configured entity
%% resolution capabilities that enable developers and analysts at advertising
%% and marketing
%% companies to build an accurate and complete view of their consumers.
%%
%% With Entity Resolution, you can match source records containing consumer
%% identifiers,
%% such as name, email address, and phone number. This is true even when
%% these records have
%% incomplete or conflicting identifiers. For example, Entity Resolution can
%% effectively match
%% a source record from a customer relationship management (CRM) system with
%% a source record
%% from a marketing system containing campaign information.
%%
%% To learn more about Entity Resolution concepts, procedures, and best
%% practices, see the
%% Entity Resolution User Guide:
%% https://docs.aws.amazon.com/entityresolution/latest/userguide/what-is-service.html.
-module(aws_entityresolution).

-export([create_id_mapping_workflow/2,
         create_id_mapping_workflow/3,
         create_matching_workflow/2,
         create_matching_workflow/3,
         create_schema_mapping/2,
         create_schema_mapping/3,
         delete_id_mapping_workflow/3,
         delete_id_mapping_workflow/4,
         delete_matching_workflow/3,
         delete_matching_workflow/4,
         delete_schema_mapping/3,
         delete_schema_mapping/4,
         get_id_mapping_job/3,
         get_id_mapping_job/5,
         get_id_mapping_job/6,
         get_id_mapping_workflow/2,
         get_id_mapping_workflow/4,
         get_id_mapping_workflow/5,
         get_match_id/3,
         get_match_id/4,
         get_matching_job/3,
         get_matching_job/5,
         get_matching_job/6,
         get_matching_workflow/2,
         get_matching_workflow/4,
         get_matching_workflow/5,
         get_provider_service/3,
         get_provider_service/5,
         get_provider_service/6,
         get_schema_mapping/2,
         get_schema_mapping/4,
         get_schema_mapping/5,
         list_id_mapping_jobs/2,
         list_id_mapping_jobs/4,
         list_id_mapping_jobs/5,
         list_id_mapping_workflows/1,
         list_id_mapping_workflows/3,
         list_id_mapping_workflows/4,
         list_matching_jobs/2,
         list_matching_jobs/4,
         list_matching_jobs/5,
         list_matching_workflows/1,
         list_matching_workflows/3,
         list_matching_workflows/4,
         list_provider_services/1,
         list_provider_services/3,
         list_provider_services/4,
         list_schema_mappings/1,
         list_schema_mappings/3,
         list_schema_mappings/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_id_mapping_job/3,
         start_id_mapping_job/4,
         start_matching_job/3,
         start_matching_job/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_id_mapping_workflow/3,
         update_id_mapping_workflow/4,
         update_matching_workflow/3,
         update_matching_workflow/4,
         update_schema_mapping/3,
         update_schema_mapping/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an `IdMappingWorkflow' object which stores the
%% configuration of the
%% data processing job to be run.
%%
%% Each `IdMappingWorkflow' must have a unique
%% workflow name. To modify an existing workflow, use the
%% `UpdateIdMappingWorkflow'
%% API.
create_id_mapping_workflow(Client, Input) ->
    create_id_mapping_workflow(Client, Input, []).
create_id_mapping_workflow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/idmappingworkflows"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a `MatchingWorkflow' object which stores the
%% configuration of the
%% data processing job to be run.
%%
%% It is important to note that there should not be a
%% pre-existing `MatchingWorkflow' with the same name. To modify an
%% existing
%% workflow, utilize the `UpdateMatchingWorkflow' API.
create_matching_workflow(Client, Input) ->
    create_matching_workflow(Client, Input, []).
create_matching_workflow(Client, Input0, Options0) ->
    Method = post,
    Path = ["/matchingworkflows"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a schema mapping, which defines the schema of the input
%% customer records table.
%%
%% The `SchemaMapping' also provides Entity Resolution with some metadata
%% about the
%% table, such as the attribute types of the columns and which columns to
%% match on.
create_schema_mapping(Client, Input) ->
    create_schema_mapping(Client, Input, []).
create_schema_mapping(Client, Input0, Options0) ->
    Method = post,
    Path = ["/schemas"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the `IdMappingWorkflow' with a given name.
%%
%% This operation will
%% succeed even if a workflow with the given name does not exist.
delete_id_mapping_workflow(Client, WorkflowName, Input) ->
    delete_id_mapping_workflow(Client, WorkflowName, Input, []).
delete_id_mapping_workflow(Client, WorkflowName, Input0, Options0) ->
    Method = delete,
    Path = ["/idmappingworkflows/", aws_util:encode_uri(WorkflowName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the `MatchingWorkflow' with a given name.
%%
%% This operation will succeed
%% even if a workflow with the given name does not exist.
delete_matching_workflow(Client, WorkflowName, Input) ->
    delete_matching_workflow(Client, WorkflowName, Input, []).
delete_matching_workflow(Client, WorkflowName, Input0, Options0) ->
    Method = delete,
    Path = ["/matchingworkflows/", aws_util:encode_uri(WorkflowName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the `SchemaMapping' with a given name.
%%
%% This operation will succeed
%% even if a schema with the given name does not exist. This operation will
%% fail if there is a
%% `MatchingWorkflow' object that references the `SchemaMapping' in
%% the workflow's `InputSourceConfig'.
delete_schema_mapping(Client, SchemaName, Input) ->
    delete_schema_mapping(Client, SchemaName, Input, []).
delete_schema_mapping(Client, SchemaName, Input0, Options0) ->
    Method = delete,
    Path = ["/schemas/", aws_util:encode_uri(SchemaName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the status, metrics, and errors (if there are any) that are
%% associated with a
%% job.
get_id_mapping_job(Client, JobId, WorkflowName)
  when is_map(Client) ->
    get_id_mapping_job(Client, JobId, WorkflowName, #{}, #{}).

get_id_mapping_job(Client, JobId, WorkflowName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_id_mapping_job(Client, JobId, WorkflowName, QueryMap, HeadersMap, []).

get_id_mapping_job(Client, JobId, WorkflowName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/idmappingworkflows/", aws_util:encode_uri(WorkflowName), "/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the `IdMappingWorkflow' with a given name, if it exists.
get_id_mapping_workflow(Client, WorkflowName)
  when is_map(Client) ->
    get_id_mapping_workflow(Client, WorkflowName, #{}, #{}).

get_id_mapping_workflow(Client, WorkflowName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_id_mapping_workflow(Client, WorkflowName, QueryMap, HeadersMap, []).

get_id_mapping_workflow(Client, WorkflowName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/idmappingworkflows/", aws_util:encode_uri(WorkflowName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the corresponding Match ID of a customer record if the record
%% has been
%% processed.
get_match_id(Client, WorkflowName, Input) ->
    get_match_id(Client, WorkflowName, Input, []).
get_match_id(Client, WorkflowName, Input0, Options0) ->
    Method = post,
    Path = ["/matchingworkflows/", aws_util:encode_uri(WorkflowName), "/matches"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the status, metrics, and errors (if there are any) that are
%% associated with a
%% job.
get_matching_job(Client, JobId, WorkflowName)
  when is_map(Client) ->
    get_matching_job(Client, JobId, WorkflowName, #{}, #{}).

get_matching_job(Client, JobId, WorkflowName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_matching_job(Client, JobId, WorkflowName, QueryMap, HeadersMap, []).

get_matching_job(Client, JobId, WorkflowName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/matchingworkflows/", aws_util:encode_uri(WorkflowName), "/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the `MatchingWorkflow' with a given name, if it exists.
get_matching_workflow(Client, WorkflowName)
  when is_map(Client) ->
    get_matching_workflow(Client, WorkflowName, #{}, #{}).

get_matching_workflow(Client, WorkflowName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_matching_workflow(Client, WorkflowName, QueryMap, HeadersMap, []).

get_matching_workflow(Client, WorkflowName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/matchingworkflows/", aws_util:encode_uri(WorkflowName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the `ProviderService' of a given name.
get_provider_service(Client, ProviderName, ProviderServiceName)
  when is_map(Client) ->
    get_provider_service(Client, ProviderName, ProviderServiceName, #{}, #{}).

get_provider_service(Client, ProviderName, ProviderServiceName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_provider_service(Client, ProviderName, ProviderServiceName, QueryMap, HeadersMap, []).

get_provider_service(Client, ProviderName, ProviderServiceName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/providerservices/", aws_util:encode_uri(ProviderName), "/", aws_util:encode_uri(ProviderServiceName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the SchemaMapping of a given name.
get_schema_mapping(Client, SchemaName)
  when is_map(Client) ->
    get_schema_mapping(Client, SchemaName, #{}, #{}).

get_schema_mapping(Client, SchemaName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_schema_mapping(Client, SchemaName, QueryMap, HeadersMap, []).

get_schema_mapping(Client, SchemaName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/schemas/", aws_util:encode_uri(SchemaName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all ID mapping jobs for a given workflow.
list_id_mapping_jobs(Client, WorkflowName)
  when is_map(Client) ->
    list_id_mapping_jobs(Client, WorkflowName, #{}, #{}).

list_id_mapping_jobs(Client, WorkflowName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_id_mapping_jobs(Client, WorkflowName, QueryMap, HeadersMap, []).

list_id_mapping_jobs(Client, WorkflowName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/idmappingworkflows/", aws_util:encode_uri(WorkflowName), "/jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the `IdMappingWorkflows' that have been
%% created for an
%% Amazon Web Services account.
list_id_mapping_workflows(Client)
  when is_map(Client) ->
    list_id_mapping_workflows(Client, #{}, #{}).

list_id_mapping_workflows(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_id_mapping_workflows(Client, QueryMap, HeadersMap, []).

list_id_mapping_workflows(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/idmappingworkflows"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all jobs for a given workflow.
list_matching_jobs(Client, WorkflowName)
  when is_map(Client) ->
    list_matching_jobs(Client, WorkflowName, #{}, #{}).

list_matching_jobs(Client, WorkflowName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_matching_jobs(Client, WorkflowName, QueryMap, HeadersMap, []).

list_matching_jobs(Client, WorkflowName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/matchingworkflows/", aws_util:encode_uri(WorkflowName), "/jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the `MatchingWorkflows' that have been
%% created for an
%% Amazon Web Services account.
list_matching_workflows(Client)
  when is_map(Client) ->
    list_matching_workflows(Client, #{}, #{}).

list_matching_workflows(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_matching_workflows(Client, QueryMap, HeadersMap, []).

list_matching_workflows(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/matchingworkflows"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the `ProviderServices' that are available
%% in this
%% Amazon Web Services Region.
list_provider_services(Client)
  when is_map(Client) ->
    list_provider_services(Client, #{}, #{}).

list_provider_services(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_provider_services(Client, QueryMap, HeadersMap, []).

list_provider_services(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/providerservices"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"providerName">>, maps:get(<<"providerName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all the `SchemaMappings' that have been created
%% for an
%% Amazon Web Services account.
list_schema_mappings(Client)
  when is_map(Client) ->
    list_schema_mappings(Client, #{}, #{}).

list_schema_mappings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_schema_mappings(Client, QueryMap, HeadersMap, []).

list_schema_mappings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/schemas"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays the tags associated with an Entity Resolution resource.
%%
%% In Entity Resolution,
%% `SchemaMapping', and `MatchingWorkflow' can be tagged.
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
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Starts the `IdMappingJob' of a workflow.
%%
%% The workflow must have previously
%% been created using the `CreateIdMappingWorkflow' endpoint.
start_id_mapping_job(Client, WorkflowName, Input) ->
    start_id_mapping_job(Client, WorkflowName, Input, []).
start_id_mapping_job(Client, WorkflowName, Input0, Options0) ->
    Method = post,
    Path = ["/idmappingworkflows/", aws_util:encode_uri(WorkflowName), "/jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts the `MatchingJob' of a workflow.
%%
%% The workflow must have previously
%% been created using the `CreateMatchingWorkflow' endpoint.
start_matching_job(Client, WorkflowName, Input) ->
    start_matching_job(Client, WorkflowName, Input, []).
start_matching_job(Client, WorkflowName, Input0, Options0) ->
    Method = post,
    Path = ["/matchingworkflows/", aws_util:encode_uri(WorkflowName), "/jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Assigns one or more tags (key-value pairs) to the specified Entity
%% Resolution resource.
%%
%% Tags can help you organize and categorize your resources. You can also use
%% them to scope
%% user permissions by granting a user permission to access or change only
%% resources with
%% certain tag values. In Entity Resolution, `SchemaMapping' and
%% `MatchingWorkflow' can be tagged. Tags don't have any semantic
%% meaning to
%% Amazon Web Services and are interpreted strictly as strings of characters.
%% You can use
%% the `TagResource' action with a resource that already has tags. If you
%% specify a
%% new tag key, this tag is appended to the list of tags associated with the
%% resource. If you
%% specify a tag key that is already associated with the resource, the new
%% tag value that you
%% specify replaces the previous value for that tag.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes one or more tags from the specified Entity Resolution
%% resource.
%%
%% In Entity Resolution, `SchemaMapping', and `MatchingWorkflow' can
%% be
%% tagged.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing `IdMappingWorkflow'.
%%
%% This method is identical to
%% `CreateIdMappingWorkflow', except it uses an HTTP `PUT' request
%% instead of a `POST' request, and the `IdMappingWorkflow' must
%% already
%% exist for the method to succeed.
update_id_mapping_workflow(Client, WorkflowName, Input) ->
    update_id_mapping_workflow(Client, WorkflowName, Input, []).
update_id_mapping_workflow(Client, WorkflowName, Input0, Options0) ->
    Method = put,
    Path = ["/idmappingworkflows/", aws_util:encode_uri(WorkflowName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an existing `MatchingWorkflow'.
%%
%% This method is identical to
%% `CreateMatchingWorkflow', except it uses an HTTP `PUT' request
%% instead of a `POST' request, and the `MatchingWorkflow' must
%% already
%% exist for the method to succeed.
update_matching_workflow(Client, WorkflowName, Input) ->
    update_matching_workflow(Client, WorkflowName, Input, []).
update_matching_workflow(Client, WorkflowName, Input0, Options0) ->
    Method = put,
    Path = ["/matchingworkflows/", aws_util:encode_uri(WorkflowName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a schema mapping.
%%
%% A schema is immutable if it is being used by a workflow. Therefore, you
%% can't update
%% a schema mapping if it's associated with a workflow.
update_schema_mapping(Client, SchemaName, Input) ->
    update_schema_mapping(Client, SchemaName, Input, []).
update_schema_mapping(Client, SchemaName, Input0, Options0) ->
    Method = put,
    Path = ["/schemas/", aws_util:encode_uri(SchemaName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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

-spec proplists_take(any(), proplists:proplists(), any()) -> {any(), proplists:proplists()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

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
    Client1 = Client#{service => <<"entityresolution">>},
    Host = build_host(<<"entityresolution">>, Client1),
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
