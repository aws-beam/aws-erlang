%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Connect Wisdom delivers agents the information they need to
%% solve customer issues as they're actively speaking with customers.
%%
%% Agents can search across connected repositories from within their agent
%% desktop to find answers quickly. Use Amazon Connect Wisdom to create an
%% assistant and a knowledge base, for example, or manage content by
%% uploading custom files.
-module(aws_wisdom).

-export([create_assistant/2,
         create_assistant/3,
         create_assistant_association/3,
         create_assistant_association/4,
         create_content/3,
         create_content/4,
         create_knowledge_base/2,
         create_knowledge_base/3,
         create_quick_response/3,
         create_quick_response/4,
         create_session/3,
         create_session/4,
         delete_assistant/3,
         delete_assistant/4,
         delete_assistant_association/4,
         delete_assistant_association/5,
         delete_content/4,
         delete_content/5,
         delete_import_job/4,
         delete_import_job/5,
         delete_knowledge_base/3,
         delete_knowledge_base/4,
         delete_quick_response/4,
         delete_quick_response/5,
         get_assistant/2,
         get_assistant/4,
         get_assistant/5,
         get_assistant_association/3,
         get_assistant_association/5,
         get_assistant_association/6,
         get_content/3,
         get_content/5,
         get_content/6,
         get_content_summary/3,
         get_content_summary/5,
         get_content_summary/6,
         get_import_job/3,
         get_import_job/5,
         get_import_job/6,
         get_knowledge_base/2,
         get_knowledge_base/4,
         get_knowledge_base/5,
         get_quick_response/3,
         get_quick_response/5,
         get_quick_response/6,
         get_recommendations/3,
         get_recommendations/5,
         get_recommendations/6,
         get_session/3,
         get_session/5,
         get_session/6,
         list_assistant_associations/2,
         list_assistant_associations/4,
         list_assistant_associations/5,
         list_assistants/1,
         list_assistants/3,
         list_assistants/4,
         list_contents/2,
         list_contents/4,
         list_contents/5,
         list_import_jobs/2,
         list_import_jobs/4,
         list_import_jobs/5,
         list_knowledge_bases/1,
         list_knowledge_bases/3,
         list_knowledge_bases/4,
         list_quick_responses/2,
         list_quick_responses/4,
         list_quick_responses/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         notify_recommendations_received/4,
         notify_recommendations_received/5,
         query_assistant/3,
         query_assistant/4,
         remove_knowledge_base_template_uri/3,
         remove_knowledge_base_template_uri/4,
         search_content/3,
         search_content/4,
         search_quick_responses/3,
         search_quick_responses/4,
         search_sessions/3,
         search_sessions/4,
         start_content_upload/3,
         start_content_upload/4,
         start_import_job/3,
         start_import_job/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_content/4,
         update_content/5,
         update_knowledge_base_template_uri/3,
         update_knowledge_base_template_uri/4,
         update_quick_response/4,
         update_quick_response/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an Amazon Connect Wisdom assistant.
create_assistant(Client, Input) ->
    create_assistant(Client, Input, []).
create_assistant(Client, Input0, Options0) ->
    Method = post,
    Path = ["/assistants"],
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

%% @doc Creates an association between an Amazon Connect Wisdom assistant and
%% another resource.
%%
%% Currently, the only supported association is with a knowledge base. An
%% assistant can have only a single association.
create_assistant_association(Client, AssistantId, Input) ->
    create_assistant_association(Client, AssistantId, Input, []).
create_assistant_association(Client, AssistantId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/associations"],
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

%% @doc Creates Wisdom content.
%%
%% Before to calling this API, use StartContentUpload:
%% https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html
%% to upload an asset.
create_content(Client, KnowledgeBaseId, Input) ->
    create_content(Client, KnowledgeBaseId, Input, []).
create_content(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/contents"],
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

%% @doc Creates a knowledge base.
%%
%% When using this API, you cannot reuse Amazon AppIntegrations:
%% https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html
%% DataIntegrations with external knowledge bases such as Salesforce and
%% ServiceNow. If you do, you'll get an `InvalidRequestException'
%% error.
%%
%% For example, you're programmatically managing your external knowledge
%% base, and you want to add or remove one of the fields that is being
%% ingested from Salesforce. Do the following:
%%
%% Call DeleteKnowledgeBase:
%% https://docs.aws.amazon.com/wisdom/latest/APIReference/API_DeleteKnowledgeBase.html.
%%
%% Call DeleteDataIntegration:
%% https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html.
%%
%% Call CreateDataIntegration:
%% https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
%% to recreate the DataIntegration or a create different one.
%%
%% Call CreateKnowledgeBase.
create_knowledge_base(Client, Input) ->
    create_knowledge_base(Client, Input, []).
create_knowledge_base(Client, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases"],
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

%% @doc Creates a Wisdom quick response.
create_quick_response(Client, KnowledgeBaseId, Input) ->
    create_quick_response(Client, KnowledgeBaseId, Input, []).
create_quick_response(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/quickResponses"],
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

%% @doc Creates a session.
%%
%% A session is a contextual container used for generating recommendations.
%% Amazon Connect creates a new Wisdom session for each contact on which
%% Wisdom is enabled.
create_session(Client, AssistantId, Input) ->
    create_session(Client, AssistantId, Input, []).
create_session(Client, AssistantId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/sessions"],
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

%% @doc Deletes an assistant.
delete_assistant(Client, AssistantId, Input) ->
    delete_assistant(Client, AssistantId, Input, []).
delete_assistant(Client, AssistantId, Input0, Options0) ->
    Method = delete,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), ""],
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

%% @doc Deletes an assistant association.
delete_assistant_association(Client, AssistantAssociationId, AssistantId, Input) ->
    delete_assistant_association(Client, AssistantAssociationId, AssistantId, Input, []).
delete_assistant_association(Client, AssistantAssociationId, AssistantId, Input0, Options0) ->
    Method = delete,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/associations/", aws_util:encode_uri(AssistantAssociationId), ""],
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

%% @doc Deletes the content.
delete_content(Client, ContentId, KnowledgeBaseId, Input) ->
    delete_content(Client, ContentId, KnowledgeBaseId, Input, []).
delete_content(Client, ContentId, KnowledgeBaseId, Input0, Options0) ->
    Method = delete,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/contents/", aws_util:encode_uri(ContentId), ""],
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

%% @doc Deletes the quick response import job.
delete_import_job(Client, ImportJobId, KnowledgeBaseId, Input) ->
    delete_import_job(Client, ImportJobId, KnowledgeBaseId, Input, []).
delete_import_job(Client, ImportJobId, KnowledgeBaseId, Input0, Options0) ->
    Method = delete,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/importJobs/", aws_util:encode_uri(ImportJobId), ""],
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

%% @doc Deletes the knowledge base.
%%
%% When you use this API to delete an external knowledge base such as
%% Salesforce or ServiceNow, you must also delete the Amazon AppIntegrations:
%% https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html
%% DataIntegration. This is because you can't reuse the DataIntegration
%% after it's been associated with an external knowledge base. However,
%% you can delete and recreate it. See DeleteDataIntegration:
%% https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html
%% and CreateDataIntegration:
%% https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html
%% in the Amazon AppIntegrations API Reference.
delete_knowledge_base(Client, KnowledgeBaseId, Input) ->
    delete_knowledge_base(Client, KnowledgeBaseId, Input, []).
delete_knowledge_base(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = delete,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), ""],
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

%% @doc Deletes a quick response.
delete_quick_response(Client, KnowledgeBaseId, QuickResponseId, Input) ->
    delete_quick_response(Client, KnowledgeBaseId, QuickResponseId, Input, []).
delete_quick_response(Client, KnowledgeBaseId, QuickResponseId, Input0, Options0) ->
    Method = delete,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/quickResponses/", aws_util:encode_uri(QuickResponseId), ""],
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

%% @doc Retrieves information about an assistant.
get_assistant(Client, AssistantId)
  when is_map(Client) ->
    get_assistant(Client, AssistantId, #{}, #{}).

get_assistant(Client, AssistantId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_assistant(Client, AssistantId, QueryMap, HeadersMap, []).

get_assistant(Client, AssistantId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an assistant association.
get_assistant_association(Client, AssistantAssociationId, AssistantId)
  when is_map(Client) ->
    get_assistant_association(Client, AssistantAssociationId, AssistantId, #{}, #{}).

get_assistant_association(Client, AssistantAssociationId, AssistantId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_assistant_association(Client, AssistantAssociationId, AssistantId, QueryMap, HeadersMap, []).

get_assistant_association(Client, AssistantAssociationId, AssistantId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/associations/", aws_util:encode_uri(AssistantAssociationId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves content, including a pre-signed URL to download the
%% content.
get_content(Client, ContentId, KnowledgeBaseId)
  when is_map(Client) ->
    get_content(Client, ContentId, KnowledgeBaseId, #{}, #{}).

get_content(Client, ContentId, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_content(Client, ContentId, KnowledgeBaseId, QueryMap, HeadersMap, []).

get_content(Client, ContentId, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/contents/", aws_util:encode_uri(ContentId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves summary information about the content.
get_content_summary(Client, ContentId, KnowledgeBaseId)
  when is_map(Client) ->
    get_content_summary(Client, ContentId, KnowledgeBaseId, #{}, #{}).

get_content_summary(Client, ContentId, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_content_summary(Client, ContentId, KnowledgeBaseId, QueryMap, HeadersMap, []).

get_content_summary(Client, ContentId, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/contents/", aws_util:encode_uri(ContentId), "/summary"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the started import job.
get_import_job(Client, ImportJobId, KnowledgeBaseId)
  when is_map(Client) ->
    get_import_job(Client, ImportJobId, KnowledgeBaseId, #{}, #{}).

get_import_job(Client, ImportJobId, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_import_job(Client, ImportJobId, KnowledgeBaseId, QueryMap, HeadersMap, []).

get_import_job(Client, ImportJobId, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/importJobs/", aws_util:encode_uri(ImportJobId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the knowledge base.
get_knowledge_base(Client, KnowledgeBaseId)
  when is_map(Client) ->
    get_knowledge_base(Client, KnowledgeBaseId, #{}, #{}).

get_knowledge_base(Client, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_knowledge_base(Client, KnowledgeBaseId, QueryMap, HeadersMap, []).

get_knowledge_base(Client, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the quick response.
get_quick_response(Client, KnowledgeBaseId, QuickResponseId)
  when is_map(Client) ->
    get_quick_response(Client, KnowledgeBaseId, QuickResponseId, #{}, #{}).

get_quick_response(Client, KnowledgeBaseId, QuickResponseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_quick_response(Client, KnowledgeBaseId, QuickResponseId, QueryMap, HeadersMap, []).

get_quick_response(Client, KnowledgeBaseId, QuickResponseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/quickResponses/", aws_util:encode_uri(QuickResponseId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves recommendations for the specified session.
%%
%% To avoid retrieving the same recommendations in subsequent calls, use
%% NotifyRecommendationsReceived:
%% https://docs.aws.amazon.com/wisdom/latest/APIReference/API_NotifyRecommendationsReceived.html.
%% This API supports long-polling behavior with the `waitTimeSeconds'
%% parameter. Short poll is the default behavior and only returns
%% recommendations already available. To perform a manual query against an
%% assistant, use QueryAssistant:
%% https://docs.aws.amazon.com/wisdom/latest/APIReference/API_QueryAssistant.html.
get_recommendations(Client, AssistantId, SessionId)
  when is_map(Client) ->
    get_recommendations(Client, AssistantId, SessionId, #{}, #{}).

get_recommendations(Client, AssistantId, SessionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_recommendations(Client, AssistantId, SessionId, QueryMap, HeadersMap, []).

get_recommendations(Client, AssistantId, SessionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/sessions/", aws_util:encode_uri(SessionId), "/recommendations"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"waitTimeSeconds">>, maps:get(<<"waitTimeSeconds">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information for a specified session.
get_session(Client, AssistantId, SessionId)
  when is_map(Client) ->
    get_session(Client, AssistantId, SessionId, #{}, #{}).

get_session(Client, AssistantId, SessionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_session(Client, AssistantId, SessionId, QueryMap, HeadersMap, []).

get_session(Client, AssistantId, SessionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/sessions/", aws_util:encode_uri(SessionId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists information about assistant associations.
list_assistant_associations(Client, AssistantId)
  when is_map(Client) ->
    list_assistant_associations(Client, AssistantId, #{}, #{}).

list_assistant_associations(Client, AssistantId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_assistant_associations(Client, AssistantId, QueryMap, HeadersMap, []).

list_assistant_associations(Client, AssistantId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/associations"],
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

%% @doc Lists information about assistants.
list_assistants(Client)
  when is_map(Client) ->
    list_assistants(Client, #{}, #{}).

list_assistants(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_assistants(Client, QueryMap, HeadersMap, []).

list_assistants(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/assistants"],
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

%% @doc Lists the content.
list_contents(Client, KnowledgeBaseId)
  when is_map(Client) ->
    list_contents(Client, KnowledgeBaseId, #{}, #{}).

list_contents(Client, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_contents(Client, KnowledgeBaseId, QueryMap, HeadersMap, []).

list_contents(Client, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/contents"],
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

%% @doc Lists information about import jobs.
list_import_jobs(Client, KnowledgeBaseId)
  when is_map(Client) ->
    list_import_jobs(Client, KnowledgeBaseId, #{}, #{}).

list_import_jobs(Client, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_import_jobs(Client, KnowledgeBaseId, QueryMap, HeadersMap, []).

list_import_jobs(Client, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/importJobs"],
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

%% @doc Lists the knowledge bases.
list_knowledge_bases(Client)
  when is_map(Client) ->
    list_knowledge_bases(Client, #{}, #{}).

list_knowledge_bases(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_knowledge_bases(Client, QueryMap, HeadersMap, []).

list_knowledge_bases(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases"],
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

%% @doc Lists information about quick response.
list_quick_responses(Client, KnowledgeBaseId)
  when is_map(Client) ->
    list_quick_responses(Client, KnowledgeBaseId, #{}, #{}).

list_quick_responses(Client, KnowledgeBaseId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_quick_responses(Client, KnowledgeBaseId, QueryMap, HeadersMap, []).

list_quick_responses(Client, KnowledgeBaseId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/quickResponses"],
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

%% @doc Lists the tags for the specified resource.
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

%% @doc Removes the specified recommendations from the specified
%% assistant's queue of newly available recommendations.
%%
%% You can use this API in conjunction with GetRecommendations:
%% https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetRecommendations.html
%% and a `waitTimeSeconds' input for long-polling behavior and avoiding
%% duplicate recommendations.
notify_recommendations_received(Client, AssistantId, SessionId, Input) ->
    notify_recommendations_received(Client, AssistantId, SessionId, Input, []).
notify_recommendations_received(Client, AssistantId, SessionId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/sessions/", aws_util:encode_uri(SessionId), "/recommendations/notify"],
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

%% @doc Performs a manual search against the specified assistant.
%%
%% To retrieve recommendations for an assistant, use GetRecommendations:
%% https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetRecommendations.html.
query_assistant(Client, AssistantId, Input) ->
    query_assistant(Client, AssistantId, Input, []).
query_assistant(Client, AssistantId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/query"],
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

%% @doc Removes a URI template from a knowledge base.
remove_knowledge_base_template_uri(Client, KnowledgeBaseId, Input) ->
    remove_knowledge_base_template_uri(Client, KnowledgeBaseId, Input, []).
remove_knowledge_base_template_uri(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = delete,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/templateUri"],
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

%% @doc Searches for content in a specified knowledge base.
%%
%% Can be used to get a specific content resource by its name.
search_content(Client, KnowledgeBaseId, Input) ->
    search_content(Client, KnowledgeBaseId, Input, []).
search_content(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/search"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches existing Wisdom quick responses in a Wisdom knowledge base.
search_quick_responses(Client, KnowledgeBaseId, Input) ->
    search_quick_responses(Client, KnowledgeBaseId, Input, []).
search_quick_responses(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/search/quickResponses"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Searches for sessions.
search_sessions(Client, AssistantId, Input) ->
    search_sessions(Client, AssistantId, Input, []).
search_sessions(Client, AssistantId, Input0, Options0) ->
    Method = post,
    Path = ["/assistants/", aws_util:encode_uri(AssistantId), "/searchSessions"],
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
                     {<<"maxResults">>, <<"maxResults">>},
                     {<<"nextToken">>, <<"nextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Get a URL to upload content to a knowledge base.
%%
%% To upload content, first make a PUT request to the returned URL with your
%% file, making sure to include the required headers. Then use CreateContent:
%% https://docs.aws.amazon.com/wisdom/latest/APIReference/API_CreateContent.html
%% to finalize the content creation process or UpdateContent:
%% https://docs.aws.amazon.com/wisdom/latest/APIReference/API_UpdateContent.html
%% to modify an existing resource. You can only upload content to a knowledge
%% base of type CUSTOM.
start_content_upload(Client, KnowledgeBaseId, Input) ->
    start_content_upload(Client, KnowledgeBaseId, Input, []).
start_content_upload(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/upload"],
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

%% @doc Start an asynchronous job to import Wisdom resources from an uploaded
%% source file.
%%
%% Before calling this API, use StartContentUpload:
%% https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html
%% to upload an asset that contains the resource data.
%%
%% <ul> <li> For importing Wisdom quick responses, you need to upload a csv
%% file including the quick responses. For information about how to format
%% the csv file for importing quick responses, see Import quick responses:
%% https://docs.aws.amazon.com/console/connect/quick-responses/add-data.
%%
%% </li> </ul>
start_import_job(Client, KnowledgeBaseId, Input) ->
    start_import_job(Client, KnowledgeBaseId, Input, []).
start_import_job(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/importJobs"],
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

%% @doc Adds the specified tags to the specified resource.
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

%% @doc Removes the specified tags from the specified resource.
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

%% @doc Updates information about the content.
update_content(Client, ContentId, KnowledgeBaseId, Input) ->
    update_content(Client, ContentId, KnowledgeBaseId, Input, []).
update_content(Client, ContentId, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/contents/", aws_util:encode_uri(ContentId), ""],
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

%% @doc Updates the template URI of a knowledge base.
%%
%% This is only supported for knowledge bases of type EXTERNAL. Include a
%% single variable in `${variable}' format; this interpolated by Wisdom
%% using ingested content. For example, if you ingest a Salesforce article,
%% it has an `Id' value, and you can set the template URI to
%% `https://myInstanceName.lightning.force.com/lightning/r/Knowledge__kav/*${Id}*/view'.
update_knowledge_base_template_uri(Client, KnowledgeBaseId, Input) ->
    update_knowledge_base_template_uri(Client, KnowledgeBaseId, Input, []).
update_knowledge_base_template_uri(Client, KnowledgeBaseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/templateUri"],
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

%% @doc Updates an existing Wisdom quick response.
update_quick_response(Client, KnowledgeBaseId, QuickResponseId, Input) ->
    update_quick_response(Client, KnowledgeBaseId, QuickResponseId, Input, []).
update_quick_response(Client, KnowledgeBaseId, QuickResponseId, Input0, Options0) ->
    Method = post,
    Path = ["/knowledgeBases/", aws_util:encode_uri(KnowledgeBaseId), "/quickResponses/", aws_util:encode_uri(QuickResponseId), ""],
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
    Client1 = Client#{service => <<"wisdom">>},
    Host = build_host(<<"wisdom">>, Client1),
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
