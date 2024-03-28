%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Describes the API operations for creating and managing Amazon Bedrock
%% agents.
-module(aws_bedrock_agent).

-export([associate_agent_knowledge_base/4,
         associate_agent_knowledge_base/5,
         create_agent/2,
         create_agent/3,
         create_agent_action_group/4,
         create_agent_action_group/5,
         create_agent_alias/3,
         create_agent_alias/4,
         create_data_source/3,
         create_data_source/4,
         create_knowledge_base/2,
         create_knowledge_base/3,
         delete_agent/3,
         delete_agent/4,
         delete_agent_action_group/5,
         delete_agent_action_group/6,
         delete_agent_alias/4,
         delete_agent_alias/5,
         delete_agent_version/4,
         delete_agent_version/5,
         delete_data_source/4,
         delete_data_source/5,
         delete_knowledge_base/3,
         delete_knowledge_base/4,
         disassociate_agent_knowledge_base/5,
         disassociate_agent_knowledge_base/6,
         get_agent/2,
         get_agent/4,
         get_agent/5,
         get_agent_action_group/4,
         get_agent_action_group/6,
         get_agent_action_group/7,
         get_agent_alias/3,
         get_agent_alias/5,
         get_agent_alias/6,
         get_agent_knowledge_base/4,
         get_agent_knowledge_base/6,
         get_agent_knowledge_base/7,
         get_agent_version/3,
         get_agent_version/5,
         get_agent_version/6,
         get_data_source/3,
         get_data_source/5,
         get_data_source/6,
         get_ingestion_job/4,
         get_ingestion_job/6,
         get_ingestion_job/7,
         get_knowledge_base/2,
         get_knowledge_base/4,
         get_knowledge_base/5,
         list_agent_action_groups/4,
         list_agent_action_groups/5,
         list_agent_aliases/3,
         list_agent_aliases/4,
         list_agent_knowledge_bases/4,
         list_agent_knowledge_bases/5,
         list_agent_versions/3,
         list_agent_versions/4,
         list_agents/2,
         list_agents/3,
         list_data_sources/3,
         list_data_sources/4,
         list_ingestion_jobs/4,
         list_ingestion_jobs/5,
         list_knowledge_bases/2,
         list_knowledge_bases/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         prepare_agent/3,
         prepare_agent/4,
         start_ingestion_job/4,
         start_ingestion_job/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_agent/3,
         update_agent/4,
         update_agent_action_group/5,
         update_agent_action_group/6,
         update_agent_alias/4,
         update_agent_alias/5,
         update_agent_knowledge_base/5,
         update_agent_knowledge_base/6,
         update_data_source/4,
         update_data_source/5,
         update_knowledge_base/3,
         update_knowledge_base/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a knowledge base with an agent.
%%
%% If a knowledge base is associated and its `indexState' is set to
%% `Enabled', the agent queries the knowledge base for information to
%% augment its response to the user.
associate_agent_knowledge_base(Client, AgentId, AgentVersion, Input) ->
    associate_agent_knowledge_base(Client, AgentId, AgentVersion, Input, []).
associate_agent_knowledge_base(Client, AgentId, AgentVersion, Input0, Options0) ->
    Method = put,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/knowledgebases/"],
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

%% @doc Creates an agent that orchestrates interactions between foundation
%% models, data sources, software applications, user conversations, and APIs
%% to carry out tasks to help customers.
%%
%% Specify the following fields for security purposes.
%%
%% `agentResourceRoleArn' – The ARN of the role with permissions to
%% create an agent.
%%
%% (Optional) `customerEncryptionKeyArn' – The ARN of a KMS key to
%% encrypt the creation of the agent.
%%
%% (Optional) `idleSessionTTLinSeconds' – Specify the number of seconds
%% for which the agent should maintain session information. After this time
%% expires, the subsequent `InvokeAgent' request begins a new session.
%%
%% To override the default prompt behavior for agent orchestration and to use
%% advanced prompts, include a `promptOverrideConfiguration' object. For
%% more information, see Advanced prompts:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/advanced-prompts.html.
%%
%% If you agent fails to be created, the response returns a list of
%% `failureReasons' alongside a list of `recommendedActions' for you
%% to troubleshoot.
create_agent(Client, Input) ->
    create_agent(Client, Input, []).
create_agent(Client, Input0, Options0) ->
    Method = put,
    Path = ["/agents/"],
    SuccessStatusCode = 202,
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

%% @doc Creates an action group for an agent.
%%
%% An action group represents the actions that an agent can carry out for the
%% customer by defining the APIs that an agent can call and the logic for
%% calling them.
%%
%% To allow your agent to request the user for additional information when
%% trying to complete a task, add an action group with the
%% `parentActionGroupSignature' field set to `AMAZON.UserInput'. You
%% must leave the `description', `apiSchema', and
%% `actionGroupExecutor' fields blank for this action group. During
%% orchestration, if your agent determines that it needs to invoke an API in
%% an action group, but doesn't have enough information to complete the
%% API request, it will invoke this action group instead and return an
%% Observation:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Observation.html
%% reprompting the user for more information.
create_agent_action_group(Client, AgentId, AgentVersion, Input) ->
    create_agent_action_group(Client, AgentId, AgentVersion, Input, []).
create_agent_action_group(Client, AgentId, AgentVersion, Input0, Options0) ->
    Method = put,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/actiongroups/"],
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

%% @doc Creates an alias of an agent that can be used to deploy the agent.
create_agent_alias(Client, AgentId, Input) ->
    create_agent_alias(Client, AgentId, Input, []).
create_agent_alias(Client, AgentId, Input0, Options0) ->
    Method = put,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentaliases/"],
    SuccessStatusCode = 202,
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

%% @doc Sets up a data source to be added to a knowledge base.
%%
%% You can't change the `chunkingConfiguration' after you create the
%% data source.
create_data_source(Client, KnowledgeBaseId, Input) ->
    create_data_source(Client, KnowledgeBaseId, Input, []).
create_data_source(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = put,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/datasources/"],
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

%% @doc Creates a knowledge base that contains data sources from which
%% information can be queried and used by LLMs.
%%
%% To create a knowledge base, you must first set up your data sources and
%% configure a supported vector store. For more information, see Set up your
%% data for ingestion:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup.html.
%%
%% If you prefer to let Amazon Bedrock create and manage a vector store for
%% you in Amazon OpenSearch Service, use the console. For more information,
%% see Create a knowledge base:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-create.
%%
%% Provide the `name' and an optional `description'.
%%
%% Provide the ARN with permissions to create a knowledge base in the
%% `roleArn' field.
%%
%% Provide the embedding model to use in the `embeddingModelArn' field in
%% the `knowledgeBaseConfiguration' object.
%%
%% Provide the configuration for your vector store in the
%% `storageConfiguration' object.
%%
%% For an Amazon OpenSearch Service database, use the
%% `opensearchServerlessConfiguration' object. For more information, see
%% Create a vector store in Amazon OpenSearch Service:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-oss.html.
%%
%% For an Amazon Aurora database, use the `RdsConfiguration' object. For
%% more information, see Create a vector store in Amazon Aurora:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-rds.html.
%%
%% For a Pinecone database, use the `pineconeConfiguration' object. For
%% more information, see Create a vector store in Pinecone:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-pinecone.html.
%%
%% For a Redis Enterprise Cloud database, use the
%% `redisEnterpriseCloudConfiguration' object. For more information, see
%% Create a vector store in Redis Enterprise Cloud:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-redis.html.
create_knowledge_base(Client, Input) ->
    create_knowledge_base(Client, Input, []).
create_knowledge_base(Client, Input0, Options0) ->
    Method = put,
    Path = ["/knowledgebases/"],
    SuccessStatusCode = 202,
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

%% @doc Deletes an agent.
delete_agent(Client, AgentId, Input) ->
    delete_agent(Client, AgentId, Input, []).
delete_agent(Client, AgentId, Input0, Options0) ->
    Method = delete,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/"],
    SuccessStatusCode = 202,
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
                     {<<"skipResourceInUseCheck">>, <<"skipResourceInUseCheck">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an action group in an agent.
delete_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion, Input) ->
    delete_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion, Input, []).
delete_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion, Input0, Options0) ->
    Method = delete,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/actiongroups/", aws_util:encode_uri(ActionGroupId), "/"],
    SuccessStatusCode = 204,
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
                     {<<"skipResourceInUseCheck">>, <<"skipResourceInUseCheck">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an alias of an agent.
delete_agent_alias(Client, AgentAliasId, AgentId, Input) ->
    delete_agent_alias(Client, AgentAliasId, AgentId, Input, []).
delete_agent_alias(Client, AgentAliasId, AgentId, Input0, Options0) ->
    Method = delete,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentaliases/", aws_util:encode_uri(AgentAliasId), "/"],
    SuccessStatusCode = 202,
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

%% @doc Deletes a version of an agent.
delete_agent_version(Client, AgentId, AgentVersion, Input) ->
    delete_agent_version(Client, AgentId, AgentVersion, Input, []).
delete_agent_version(Client, AgentId, AgentVersion, Input0, Options0) ->
    Method = delete,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/"],
    SuccessStatusCode = 202,
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
                     {<<"skipResourceInUseCheck">>, <<"skipResourceInUseCheck">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a data source from a knowledge base.
delete_data_source(Client, DataSourceId, KnowledgeBaseId, Input) ->
    delete_data_source(Client, DataSourceId, KnowledgeBaseId, Input, []).
delete_data_source(Client, DataSourceId, KnowledgeBaseId, Input0, Options0) ->
    Method = delete,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/datasources/", aws_util:encode_uri(DataSourceId), ""],
    SuccessStatusCode = 202,
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

%% @doc Deletes a knowledge base.
%%
%% Before deleting a knowledge base, you should disassociate the knowledge
%% base from any agents that it is associated with by making a
%% DisassociateAgentKnowledgeBase:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_DisassociateAgentKnowledgeBase.html
%% request.
delete_knowledge_base(Client, KnowledgeBaseId, Input) ->
    delete_knowledge_base(Client, KnowledgeBaseId, Input, []).
delete_knowledge_base(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = delete,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), ""],
    SuccessStatusCode = 202,
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

%% @doc Disassociates a knowledge base from an agent.
disassociate_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId, Input) ->
    disassociate_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId, Input, []).
disassociate_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId, Input0, Options0) ->
    Method = delete,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/"],
    SuccessStatusCode = 204,
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

%% @doc Gets information about an agent.
get_agent(Client, AgentId)
  when is_map(Client) ->
    get_agent(Client, AgentId, #{}, #{}).

get_agent(Client, AgentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_agent(Client, AgentId, QueryMap, HeadersMap, []).

get_agent(Client, AgentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an action group for an agent.
get_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion)
  when is_map(Client) ->
    get_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion, #{}, #{}).

get_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion, QueryMap, HeadersMap, []).

get_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/actiongroups/", aws_util:encode_uri(ActionGroupId), "/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an alias of an agent.
get_agent_alias(Client, AgentAliasId, AgentId)
  when is_map(Client) ->
    get_agent_alias(Client, AgentAliasId, AgentId, #{}, #{}).

get_agent_alias(Client, AgentAliasId, AgentId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_agent_alias(Client, AgentAliasId, AgentId, QueryMap, HeadersMap, []).

get_agent_alias(Client, AgentAliasId, AgentId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentaliases/", aws_util:encode_uri(AgentAliasId), "/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a knowledge base associated with an agent.
get_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId)
  when is_map(Client) ->
    get_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId, #{}, #{}).

get_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId, QueryMap, HeadersMap, []).

get_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets details about a version of an agent.
get_agent_version(Client, AgentId, AgentVersion)
  when is_map(Client) ->
    get_agent_version(Client, AgentId, AgentVersion, #{}, #{}).

get_agent_version(Client, AgentId, AgentVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_agent_version(Client, AgentId, AgentVersion, QueryMap, HeadersMap, []).

get_agent_version(Client, AgentId, AgentVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a data source.
get_data_source(Client, DataSourceId, KnowledgeBaseId)
  when is_map(Client) ->
    get_data_source(Client, DataSourceId, KnowledgeBaseId, #{}, #{}).

get_data_source(Client, DataSourceId, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_source(Client, DataSourceId, KnowledgeBaseId, QueryMap, HeadersMap, []).

get_data_source(Client, DataSourceId, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/datasources/", aws_util:encode_uri(DataSourceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a ingestion job, in which a data source is
%% added to a knowledge base.
get_ingestion_job(Client, DataSourceId, IngestionJobId, KnowledgeBaseId)
  when is_map(Client) ->
    get_ingestion_job(Client, DataSourceId, IngestionJobId, KnowledgeBaseId, #{}, #{}).

get_ingestion_job(Client, DataSourceId, IngestionJobId, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ingestion_job(Client, DataSourceId, IngestionJobId, KnowledgeBaseId, QueryMap, HeadersMap, []).

get_ingestion_job(Client, DataSourceId, IngestionJobId, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/datasources/", aws_util:encode_uri(DataSourceId), "/ingestionjobs/", aws_util:encode_uri(IngestionJobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about a knoweldge base.
get_knowledge_base(Client, KnowledgeBaseId)
  when is_map(Client) ->
    get_knowledge_base(Client, KnowledgeBaseId, #{}, #{}).

get_knowledge_base(Client, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_knowledge_base(Client, KnowledgeBaseId, QueryMap, HeadersMap, []).

get_knowledge_base(Client, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the action groups for an agent and information about each one.
list_agent_action_groups(Client, AgentId, AgentVersion, Input) ->
    list_agent_action_groups(Client, AgentId, AgentVersion, Input, []).
list_agent_action_groups(Client, AgentId, AgentVersion, Input0, Options0) ->
    Method = post,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/actiongroups/"],
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

%% @doc Lists the aliases of an agent and information about each one.
list_agent_aliases(Client, AgentId, Input) ->
    list_agent_aliases(Client, AgentId, Input, []).
list_agent_aliases(Client, AgentId, Input0, Options0) ->
    Method = post,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentaliases/"],
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

%% @doc Lists knowledge bases associated with an agent and information about
%% each one.
list_agent_knowledge_bases(Client, AgentId, AgentVersion, Input) ->
    list_agent_knowledge_bases(Client, AgentId, AgentVersion, Input, []).
list_agent_knowledge_bases(Client, AgentId, AgentVersion, Input0, Options0) ->
    Method = post,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/knowledgebases/"],
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

%% @doc Lists the versions of an agent and information about each version.
list_agent_versions(Client, AgentId, Input) ->
    list_agent_versions(Client, AgentId, Input, []).
list_agent_versions(Client, AgentId, Input0, Options0) ->
    Method = post,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/"],
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

%% @doc Lists the agents belonging to an account and information about each
%% agent.
list_agents(Client, Input) ->
    list_agents(Client, Input, []).
list_agents(Client, Input0, Options0) ->
    Method = post,
    Path = ["/agents/"],
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

%% @doc Lists the data sources in a knowledge base and information about each
%% one.
list_data_sources(Client, KnowledgeBaseId, Input) ->
    list_data_sources(Client, KnowledgeBaseId, Input, []).
list_data_sources(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/datasources/"],
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

%% @doc Lists the ingestion jobs for a data source and information about each
%% of them.
list_ingestion_jobs(Client, DataSourceId, KnowledgeBaseId, Input) ->
    list_ingestion_jobs(Client, DataSourceId, KnowledgeBaseId, Input, []).
list_ingestion_jobs(Client, DataSourceId, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/datasources/", aws_util:encode_uri(DataSourceId), "/ingestionjobs/"],
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

%% @doc Lists the knowledge bases in an account and information about each of
%% them.
list_knowledge_bases(Client, Input) ->
    list_knowledge_bases(Client, Input, []).
list_knowledge_bases(Client, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgebases/"],
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

%% @doc List all the tags for the resource you specify.
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

%% @doc Creates a `DRAFT' version of the agent that can be used for
%% internal testing.
prepare_agent(Client, AgentId, Input) ->
    prepare_agent(Client, AgentId, Input, []).
prepare_agent(Client, AgentId, Input0, Options0) ->
    Method = post,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/"],
    SuccessStatusCode = 202,
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

%% @doc Begins an ingestion job, in which a data source is added to a
%% knowledge base.
start_ingestion_job(Client, DataSourceId, KnowledgeBaseId, Input) ->
    start_ingestion_job(Client, DataSourceId, KnowledgeBaseId, Input, []).
start_ingestion_job(Client, DataSourceId, KnowledgeBaseId, Input0, Options0) ->
    Method = put,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/datasources/", aws_util:encode_uri(DataSourceId), "/ingestionjobs/"],
    SuccessStatusCode = 202,
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

%% @doc Associate tags with a resource.
%%
%% For more information, see Tagging resources:
%% https://docs.aws.amazon.com/bedrock/latest/userguide/what-is-service.html
%% in the Amazon Bedrock User Guide.
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

%% @doc Remove tags from a resource.
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

%% @doc Updates the configuration of an agent.
update_agent(Client, AgentId, Input) ->
    update_agent(Client, AgentId, Input, []).
update_agent(Client, AgentId, Input0, Options0) ->
    Method = put,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/"],
    SuccessStatusCode = 202,
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

%% @doc Updates the configuration for an action group for an agent.
update_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion, Input) ->
    update_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion, Input, []).
update_agent_action_group(Client, ActionGroupId, AgentId, AgentVersion, Input0, Options0) ->
    Method = put,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/actiongroups/", aws_util:encode_uri(ActionGroupId), "/"],
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

%% @doc Updates configurations for an alias of an agent.
update_agent_alias(Client, AgentAliasId, AgentId, Input) ->
    update_agent_alias(Client, AgentAliasId, AgentId, Input, []).
update_agent_alias(Client, AgentAliasId, AgentId, Input0, Options0) ->
    Method = put,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentaliases/", aws_util:encode_uri(AgentAliasId), "/"],
    SuccessStatusCode = 202,
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

%% @doc Updates the configuration for a knowledge base that has been
%% associated with an agent.
update_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId, Input) ->
    update_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId, Input, []).
update_agent_knowledge_base(Client, AgentId, AgentVersion, KnowledgeBaseId, Input0, Options0) ->
    Method = put,
    Path = ["/agents/", aws_util:encode_uri(AgentId), "/agentversions/", aws_util:encode_uri(AgentVersion), "/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/"],
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

%% @doc Updates configurations for a data source.
%%
%% You can't change the `chunkingConfiguration' after you create the
%% data source. Specify the existing `chunkingConfiguration'.
update_data_source(Client, DataSourceId, KnowledgeBaseId, Input) ->
    update_data_source(Client, DataSourceId, KnowledgeBaseId, Input, []).
update_data_source(Client, DataSourceId, KnowledgeBaseId, Input0, Options0) ->
    Method = put,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), "/datasources/", aws_util:encode_uri(DataSourceId), ""],
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

%% @doc Updates the configuration of a knowledge base with the fields that
%% you specify.
%%
%% Because all fields will be overwritten, you must include the same values
%% for fields that you want to keep the same.
%%
%% You can change the following fields:
%%
%% `name'
%%
%% `description'
%%
%% `roleArn'
%%
%% You can't change the `knowledgeBaseConfiguration' or
%% `storageConfiguration' fields, so you must specify the same
%% configurations as when you created the knowledge base. You can send a
%% GetKnowledgeBase:
%% https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent_GetKnowledgeBase.html
%% request and copy the same configurations.
update_knowledge_base(Client, KnowledgeBaseId, Input) ->
    update_knowledge_base(Client, KnowledgeBaseId, Input, []).
update_knowledge_base(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = put,
    Path = ["/knowledgebases/", aws_util:encode_uri(KnowledgeBaseId), ""],
    SuccessStatusCode = 202,
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
    Client1 = Client#{service => <<"bedrock">>},
    Host = build_host(<<"bedrock-agent">>, Client1),
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
