%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Q is in preview release and is subject to change.
%%
%% This is the Amazon Q (for business use) API Reference. Amazon Q is a fully
%% managed, generative-AI powered enterprise chat assistant that you can
%% deploy within your organization. Amazon Q enhances employee productivity
%% by supporting key tasks such as question-answering, knowledge discovery,
%% writing email messages, summarizing text, drafting document outlines, and
%% brainstorming ideas. Users ask questions of Amazon Q and get answers that
%% are presented in a conversational manner. For an introduction to the
%% service, see the Amazon Q (for business use) Developer Guide :
%% https://docs.aws.amazon.com/amazonq/latest/business-use-dg/what-is.html.
%%
%% For an overview of the Amazon Q APIs, see Overview of Amazon Q API
%% operations:
%% https://docs.aws.amazon.com/amazonq/latest/business-use-dg/api-ref.html#api-overview.
%%
%% For information about the IAM access control permissions you need to use
%% this API, see IAM roles for Amazon Q:
%% https://docs.aws.amazon.com/amazonq/latest/business-use-dg/iam-roles.html
%% in the Amazon Q (for business use) Developer Guide.
%%
%% You can use the following AWS SDKs to access Amazon Q APIs:
%%
%% <ul> <li> AWS SDK for C++: https://docs.aws.amazon.com/sdk-for-cpp
%%
%% </li> <li> AWS SDK for Go: https://docs.aws.amazon.com/sdk-for-go
%%
%% </li> <li> AWS SDK for Java: https://docs.aws.amazon.com/sdk-for-java
%%
%% </li> <li> AWS SDK for JavaScript:
%% https://docs.aws.amazon.com/sdk-for-javascript
%%
%% </li> <li> AWS SDK for .NET: https://docs.aws.amazon.com/sdk-for-net
%%
%% </li> <li> AWS SDK for Python (Boto3):
%% https://docs.aws.amazon.com/pythonsdk
%%
%% </li> <li> AWS SDK for Ruby: https://docs.aws.amazon.com/sdk-for-ruby
%%
%% </li> </ul> The following resources provide additional information about
%% using the Amazon Q API:
%%
%% <ul> <li> Setting up for Amazon Q:
%% https://docs.aws.amazon.com/amazonq/latest/business-use-dg/setting-up.html
%%
%% </li> <li> Amazon Q CLI Reference:
%% https://awscli.amazonaws.com/v2/documentation/api/latest/reference/qbusiness/index.html
%%
%% </li> <li> Amazon Web Services General Reference:
%% https://docs.aws.amazon.com/general/latest/gr/amazonq.html
%%
%% </li> </ul>
-module(aws_qbusiness).

-export([batch_delete_document/4,
         batch_delete_document/5,
         batch_put_document/4,
         batch_put_document/5,
         chat_sync/3,
         chat_sync/4,
         create_application/2,
         create_application/3,
         create_index/3,
         create_index/4,
         create_plugin/3,
         create_plugin/4,
         create_retriever/3,
         create_retriever/4,
         create_user/3,
         create_user/4,
         create_web_experience/3,
         create_web_experience/4,
         delete_application/3,
         delete_application/4,
         delete_chat_controls_configuration/3,
         delete_chat_controls_configuration/4,
         delete_conversation/4,
         delete_conversation/5,
         delete_data_source/5,
         delete_data_source/6,
         delete_group/5,
         delete_group/6,
         delete_index/4,
         delete_index/5,
         delete_plugin/4,
         delete_plugin/5,
         delete_retriever/4,
         delete_retriever/5,
         delete_user/4,
         delete_user/5,
         delete_web_experience/4,
         delete_web_experience/5,
         get_application/2,
         get_application/4,
         get_application/5,
         get_chat_controls_configuration/2,
         get_chat_controls_configuration/4,
         get_chat_controls_configuration/5,
         get_data_source/4,
         get_data_source/6,
         get_data_source/7,
         get_group/4,
         get_group/6,
         get_group/7,
         get_index/3,
         get_index/5,
         get_index/6,
         get_plugin/3,
         get_plugin/5,
         get_plugin/6,
         get_retriever/3,
         get_retriever/5,
         get_retriever/6,
         get_user/3,
         get_user/5,
         get_user/6,
         get_web_experience/3,
         get_web_experience/5,
         get_web_experience/6,
         list_applications/1,
         list_applications/3,
         list_applications/4,
         list_conversations/3,
         list_conversations/5,
         list_conversations/6,
         list_data_source_sync_jobs/4,
         list_data_source_sync_jobs/6,
         list_data_source_sync_jobs/7,
         list_data_sources/3,
         list_data_sources/5,
         list_data_sources/6,
         list_documents/3,
         list_documents/5,
         list_documents/6,
         list_groups/4,
         list_groups/6,
         list_groups/7,
         list_indices/2,
         list_indices/4,
         list_indices/5,
         list_messages/4,
         list_messages/6,
         list_messages/7,
         list_plugins/2,
         list_plugins/4,
         list_plugins/5,
         list_retrievers/2,
         list_retrievers/4,
         list_retrievers/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_web_experiences/2,
         list_web_experiences/4,
         list_web_experiences/5,
         put_feedback/5,
         put_feedback/6,
         put_group/4,
         put_group/5,
         start_data_source_sync_job/5,
         start_data_source_sync_job/6,
         stop_data_source_sync_job/5,
         stop_data_source_sync_job/6,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_application/3,
         update_application/4,
         update_chat_controls_configuration/3,
         update_chat_controls_configuration/4,
         update_data_source/5,
         update_data_source/6,
         update_index/4,
         update_index/5,
         update_plugin/4,
         update_plugin/5,
         update_retriever/4,
         update_retriever/5,
         update_user/4,
         update_user/5,
         update_web_experience/4,
         update_web_experience/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Asynchronously deletes one or more documents added using the
%% `BatchPutDocument' API from an Amazon Q index.
%%
%% You can see the progress of the deletion, and any error messages related
%% to the process, by using CloudWatch.
batch_delete_document(Client, ApplicationId, IndexId, Input) ->
    batch_delete_document(Client, ApplicationId, IndexId, Input, []).
batch_delete_document(Client, ApplicationId, IndexId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/documents/delete"],
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

%% @doc Adds one or more documents to an Amazon Q index.
%%
%% You use this API to:
%%
%% <ul> <li> ingest your structured and unstructured documents and documents
%% stored in an Amazon S3 bucket into an Amazon Q index.
%%
%% </li> <li> add custom attributes to documents in an Amazon Q index.
%%
%% </li> <li> attach an access control list to the documents added to an
%% Amazon Q index.
%%
%% </li> </ul> You can see the progress of the deletion, and any error
%% messages related to the process, by using CloudWatch.
batch_put_document(Client, ApplicationId, IndexId, Input) ->
    batch_put_document(Client, ApplicationId, IndexId, Input, []).
batch_put_document(Client, ApplicationId, IndexId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/documents"],
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

%% @doc Starts or continues a non-streaming Amazon Q conversation.
chat_sync(Client, ApplicationId, Input) ->
    chat_sync(Client, ApplicationId, Input, []).
chat_sync(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/conversations?sync"],
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
                     {<<"userGroups">>, <<"userGroups">>},
                     {<<"userId">>, <<"userId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an Amazon Q application.
create_application(Client, Input) ->
    create_application(Client, Input, []).
create_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/applications"],
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

%% @doc Creates an Amazon Q index.
%%
%% To determine if index creation has completed, check the `Status' field
%% returned from a call to `DescribeIndex'. The `Status' field is set
%% to `ACTIVE' when the index is ready to use.
%%
%% Once the index is active, you can index your documents using the
%% `BatchPutDocument' :
%% https://docs.aws.amazon.com/amazonq/latest/api-reference/API_BatchPutDocument.html
%% API or the `CreateDataSource' :
%% https://docs.aws.amazon.com/amazonq/latest/api-reference/API_CreateDataSource.html
%% API.
create_index(Client, ApplicationId, Input) ->
    create_index(Client, ApplicationId, Input, []).
create_index(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices"],
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

%% @doc Creates an Amazon Q plugin.
create_plugin(Client, ApplicationId, Input) ->
    create_plugin(Client, ApplicationId, Input, []).
create_plugin(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/plugins"],
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

%% @doc Adds a retriever to your Amazon Q application.
create_retriever(Client, ApplicationId, Input) ->
    create_retriever(Client, ApplicationId, Input, []).
create_retriever(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/retrievers"],
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

%% @doc Creates a universally unique identifier (UUID) mapped to a list of
%% local user ids within an application.
create_user(Client, ApplicationId, Input) ->
    create_user(Client, ApplicationId, Input, []).
create_user(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/users"],
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

%% @doc Creates an Amazon Q web experience.
create_web_experience(Client, ApplicationId, Input) ->
    create_web_experience(Client, ApplicationId, Input, []).
create_web_experience(Client, ApplicationId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/experiences"],
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

%% @doc Deletes an Amazon Q application.
delete_application(Client, ApplicationId, Input) ->
    delete_application(Client, ApplicationId, Input, []).
delete_application(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
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

%% @doc Deletes chat controls configured for an existing Amazon Q
%% application.
delete_chat_controls_configuration(Client, ApplicationId, Input) ->
    delete_chat_controls_configuration(Client, ApplicationId, Input, []).
delete_chat_controls_configuration(Client, ApplicationId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/chatcontrols"],
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

%% @doc Deletes an Amazon Q web experience conversation.
delete_conversation(Client, ApplicationId, ConversationId, Input) ->
    delete_conversation(Client, ApplicationId, ConversationId, Input, []).
delete_conversation(Client, ApplicationId, ConversationId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/conversations/", aws_util:encode_uri(ConversationId), ""],
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
                     {<<"userId">>, <<"userId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Amazon Q data source connector.
%%
%% While the data source is being deleted, the `Status' field returned by
%% a call to the `DescribeDataSource' API is set to `DELETING'.
delete_data_source(Client, ApplicationId, DataSourceId, IndexId, Input) ->
    delete_data_source(Client, ApplicationId, DataSourceId, IndexId, Input, []).
delete_data_source(Client, ApplicationId, DataSourceId, IndexId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/datasources/", aws_util:encode_uri(DataSourceId), ""],
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

%% @doc Deletes a group so that all users and sub groups that belong to the
%% group can no longer access documents only available to that group.
%%
%% For example, after deleting the group &quot;Summer Interns&quot;, all
%% interns who belonged to that group no longer see intern-only documents in
%% their chat results.
%%
%% If you want to delete, update, or replace users or sub groups of a group,
%% you need to use the `PutGroup' operation. For example, if a user in
%% the group &quot;Engineering&quot; leaves the engineering team and another
%% user takes their place, you provide an updated list of users or sub groups
%% that belong to the &quot;Engineering&quot; group when calling
%% `PutGroup'.
delete_group(Client, ApplicationId, GroupName, IndexId, Input) ->
    delete_group(Client, ApplicationId, GroupName, IndexId, Input, []).
delete_group(Client, ApplicationId, GroupName, IndexId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/groups/", aws_util:encode_uri(GroupName), ""],
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
                     {<<"dataSourceId">>, <<"dataSourceId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Amazon Q index.
delete_index(Client, ApplicationId, IndexId, Input) ->
    delete_index(Client, ApplicationId, IndexId, Input, []).
delete_index(Client, ApplicationId, IndexId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), ""],
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

%% @doc Deletes an Amazon Q plugin.
delete_plugin(Client, ApplicationId, PluginId, Input) ->
    delete_plugin(Client, ApplicationId, PluginId, Input, []).
delete_plugin(Client, ApplicationId, PluginId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/plugins/", aws_util:encode_uri(PluginId), ""],
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

%% @doc Deletes the retriever used by an Amazon Q application.
delete_retriever(Client, ApplicationId, RetrieverId, Input) ->
    delete_retriever(Client, ApplicationId, RetrieverId, Input, []).
delete_retriever(Client, ApplicationId, RetrieverId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/retrievers/", aws_util:encode_uri(RetrieverId), ""],
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

%% @doc Deletes a user by email id.
delete_user(Client, ApplicationId, UserId, Input) ->
    delete_user(Client, ApplicationId, UserId, Input, []).
delete_user(Client, ApplicationId, UserId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/users/", aws_util:encode_uri(UserId), ""],
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

%% @doc Deletes an Amazon Q web experience.
delete_web_experience(Client, ApplicationId, WebExperienceId, Input) ->
    delete_web_experience(Client, ApplicationId, WebExperienceId, Input, []).
delete_web_experience(Client, ApplicationId, WebExperienceId, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/experiences/", aws_util:encode_uri(WebExperienceId), ""],
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

%% @doc Gets information about an existing Amazon Q application.
get_application(Client, ApplicationId)
  when is_map(Client) ->
    get_application(Client, ApplicationId, #{}, #{}).

get_application(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application(Client, ApplicationId, QueryMap, HeadersMap, []).

get_application(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an chat controls configured for an existing
%% Amazon Q application.
get_chat_controls_configuration(Client, ApplicationId)
  when is_map(Client) ->
    get_chat_controls_configuration(Client, ApplicationId, #{}, #{}).

get_chat_controls_configuration(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_chat_controls_configuration(Client, ApplicationId, QueryMap, HeadersMap, []).

get_chat_controls_configuration(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/chatcontrols"],
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

%% @doc Gets information about an existing Amazon Q data source connector.
get_data_source(Client, ApplicationId, DataSourceId, IndexId)
  when is_map(Client) ->
    get_data_source(Client, ApplicationId, DataSourceId, IndexId, #{}, #{}).

get_data_source(Client, ApplicationId, DataSourceId, IndexId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_source(Client, ApplicationId, DataSourceId, IndexId, QueryMap, HeadersMap, []).

get_data_source(Client, ApplicationId, DataSourceId, IndexId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/datasources/", aws_util:encode_uri(DataSourceId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a group by group name.
get_group(Client, ApplicationId, GroupName, IndexId)
  when is_map(Client) ->
    get_group(Client, ApplicationId, GroupName, IndexId, #{}, #{}).

get_group(Client, ApplicationId, GroupName, IndexId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_group(Client, ApplicationId, GroupName, IndexId, QueryMap, HeadersMap, []).

get_group(Client, ApplicationId, GroupName, IndexId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/groups/", aws_util:encode_uri(GroupName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"dataSourceId">>, maps:get(<<"dataSourceId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an existing Amazon Q index.
get_index(Client, ApplicationId, IndexId)
  when is_map(Client) ->
    get_index(Client, ApplicationId, IndexId, #{}, #{}).

get_index(Client, ApplicationId, IndexId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_index(Client, ApplicationId, IndexId, QueryMap, HeadersMap, []).

get_index(Client, ApplicationId, IndexId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an existing Amazon Q plugin.
get_plugin(Client, ApplicationId, PluginId)
  when is_map(Client) ->
    get_plugin(Client, ApplicationId, PluginId, #{}, #{}).

get_plugin(Client, ApplicationId, PluginId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_plugin(Client, ApplicationId, PluginId, QueryMap, HeadersMap, []).

get_plugin(Client, ApplicationId, PluginId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/plugins/", aws_util:encode_uri(PluginId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an existing retriever used by an Amazon Q
%% application.
get_retriever(Client, ApplicationId, RetrieverId)
  when is_map(Client) ->
    get_retriever(Client, ApplicationId, RetrieverId, #{}, #{}).

get_retriever(Client, ApplicationId, RetrieverId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_retriever(Client, ApplicationId, RetrieverId, QueryMap, HeadersMap, []).

get_retriever(Client, ApplicationId, RetrieverId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/retrievers/", aws_util:encode_uri(RetrieverId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the universally unique identifier (UUID) associated with a
%% local user in a data source.
get_user(Client, ApplicationId, UserId)
  when is_map(Client) ->
    get_user(Client, ApplicationId, UserId, #{}, #{}).

get_user(Client, ApplicationId, UserId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_user(Client, ApplicationId, UserId, QueryMap, HeadersMap, []).

get_user(Client, ApplicationId, UserId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/users/", aws_util:encode_uri(UserId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about an existing Amazon Q web experience.
get_web_experience(Client, ApplicationId, WebExperienceId)
  when is_map(Client) ->
    get_web_experience(Client, ApplicationId, WebExperienceId, #{}, #{}).

get_web_experience(Client, ApplicationId, WebExperienceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_web_experience(Client, ApplicationId, WebExperienceId, QueryMap, HeadersMap, []).

get_web_experience(Client, ApplicationId, WebExperienceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/experiences/", aws_util:encode_uri(WebExperienceId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Amazon Q applications.
list_applications(Client)
  when is_map(Client) ->
    list_applications(Client, #{}, #{}).

list_applications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_applications(Client, QueryMap, HeadersMap, []).

list_applications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications"],
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

%% @doc Lists one or more Amazon Q conversations.
list_conversations(Client, ApplicationId, UserId)
  when is_map(Client) ->
    list_conversations(Client, ApplicationId, UserId, #{}, #{}).

list_conversations(Client, ApplicationId, UserId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_conversations(Client, ApplicationId, UserId, QueryMap, HeadersMap, []).

list_conversations(Client, ApplicationId, UserId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/conversations"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"userId">>, UserId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get information about an Amazon Q data source connector
%% synchronization.
list_data_source_sync_jobs(Client, ApplicationId, DataSourceId, IndexId)
  when is_map(Client) ->
    list_data_source_sync_jobs(Client, ApplicationId, DataSourceId, IndexId, #{}, #{}).

list_data_source_sync_jobs(Client, ApplicationId, DataSourceId, IndexId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_source_sync_jobs(Client, ApplicationId, DataSourceId, IndexId, QueryMap, HeadersMap, []).

list_data_source_sync_jobs(Client, ApplicationId, DataSourceId, IndexId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/datasources/", aws_util:encode_uri(DataSourceId), "/syncjobs"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"endTime">>, maps:get(<<"endTime">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"startTime">>, maps:get(<<"startTime">>, QueryMap, undefined)},
        {<<"syncStatus">>, maps:get(<<"syncStatus">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon Q data source connectors that you have created.
list_data_sources(Client, ApplicationId, IndexId)
  when is_map(Client) ->
    list_data_sources(Client, ApplicationId, IndexId, #{}, #{}).

list_data_sources(Client, ApplicationId, IndexId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_sources(Client, ApplicationId, IndexId, QueryMap, HeadersMap, []).

list_data_sources(Client, ApplicationId, IndexId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/datasources"],
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

%% @doc A list of documents attached to an index.
list_documents(Client, ApplicationId, IndexId)
  when is_map(Client) ->
    list_documents(Client, ApplicationId, IndexId, #{}, #{}).

list_documents(Client, ApplicationId, IndexId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_documents(Client, ApplicationId, IndexId, QueryMap, HeadersMap, []).

list_documents(Client, ApplicationId, IndexId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/index/", aws_util:encode_uri(IndexId), "/documents"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"dataSourceIds">>, maps:get(<<"dataSourceIds">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides a list of groups that are mapped to users.
list_groups(Client, ApplicationId, IndexId, UpdatedEarlierThan)
  when is_map(Client) ->
    list_groups(Client, ApplicationId, IndexId, UpdatedEarlierThan, #{}, #{}).

list_groups(Client, ApplicationId, IndexId, UpdatedEarlierThan, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_groups(Client, ApplicationId, IndexId, UpdatedEarlierThan, QueryMap, HeadersMap, []).

list_groups(Client, ApplicationId, IndexId, UpdatedEarlierThan, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/groups"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"dataSourceId">>, maps:get(<<"dataSourceId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"updatedEarlierThan">>, UpdatedEarlierThan}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon Q indices you have created.
list_indices(Client, ApplicationId)
  when is_map(Client) ->
    list_indices(Client, ApplicationId, #{}, #{}).

list_indices(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_indices(Client, ApplicationId, QueryMap, HeadersMap, []).

list_indices(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices"],
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

%% @doc Gets a list of messages associated with an Amazon Q web experience.
list_messages(Client, ApplicationId, ConversationId, UserId)
  when is_map(Client) ->
    list_messages(Client, ApplicationId, ConversationId, UserId, #{}, #{}).

list_messages(Client, ApplicationId, ConversationId, UserId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_messages(Client, ApplicationId, ConversationId, UserId, QueryMap, HeadersMap, []).

list_messages(Client, ApplicationId, ConversationId, UserId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/conversations/", aws_util:encode_uri(ConversationId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"userId">>, UserId}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists configured Amazon Q plugins.
list_plugins(Client, ApplicationId)
  when is_map(Client) ->
    list_plugins(Client, ApplicationId, #{}, #{}).

list_plugins(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_plugins(Client, ApplicationId, QueryMap, HeadersMap, []).

list_plugins(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/plugins"],
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

%% @doc Lists the retriever used by an Amazon Q application.
list_retrievers(Client, ApplicationId)
  when is_map(Client) ->
    list_retrievers(Client, ApplicationId, #{}, #{}).

list_retrievers(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_retrievers(Client, ApplicationId, QueryMap, HeadersMap, []).

list_retrievers(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/retrievers"],
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

%% @doc Gets a list of tags associated with a specified resource.
%%
%% Amazon Q applications and data sources can have tags associated with them.
list_tags_for_resource(Client, ResourceARN)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceARN, #{}, #{}).

list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceARN, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceARN), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists one or more Amazon Q Web Experiences.
list_web_experiences(Client, ApplicationId)
  when is_map(Client) ->
    list_web_experiences(Client, ApplicationId, #{}, #{}).

list_web_experiences(Client, ApplicationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_web_experiences(Client, ApplicationId, QueryMap, HeadersMap, []).

list_web_experiences(Client, ApplicationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/experiences"],
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

%% @doc Enables your end user to to provide feedback on their Amazon Q
%% generated chat responses.
put_feedback(Client, ApplicationId, ConversationId, MessageId, Input) ->
    put_feedback(Client, ApplicationId, ConversationId, MessageId, Input, []).
put_feedback(Client, ApplicationId, ConversationId, MessageId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/conversations/", aws_util:encode_uri(ConversationId), "/messages/", aws_util:encode_uri(MessageId), "/feedback"],
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
                     {<<"userId">>, <<"userId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create, or updates, a mapping of users—who have access to a
%% document—to groups.
%%
%% You can also map sub groups to groups. For example, the group
%% &quot;Company Intellectual Property Teams&quot; includes sub groups
%% &quot;Research&quot; and &quot;Engineering&quot;. These sub groups include
%% their own list of users or people who work in these teams. Only users who
%% work in research and engineering, and therefore belong in the intellectual
%% property group, can see top-secret company documents in their Amazon Q
%% chat results.
put_group(Client, ApplicationId, IndexId, Input) ->
    put_group(Client, ApplicationId, IndexId, Input, []).
put_group(Client, ApplicationId, IndexId, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/groups"],
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

%% @doc Starts a data source connector synchronization job.
%%
%% If a synchronization job is already in progress, Amazon Q returns a
%% `ConflictException'.
start_data_source_sync_job(Client, ApplicationId, DataSourceId, IndexId, Input) ->
    start_data_source_sync_job(Client, ApplicationId, DataSourceId, IndexId, Input, []).
start_data_source_sync_job(Client, ApplicationId, DataSourceId, IndexId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/datasources/", aws_util:encode_uri(DataSourceId), "/startsync"],
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

%% @doc Stops an Amazon Q data source connector synchronization job already
%% in progress.
stop_data_source_sync_job(Client, ApplicationId, DataSourceId, IndexId, Input) ->
    stop_data_source_sync_job(Client, ApplicationId, DataSourceId, IndexId, Input, []).
stop_data_source_sync_job(Client, ApplicationId, DataSourceId, IndexId, Input0, Options0) ->
    Method = post,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/datasources/", aws_util:encode_uri(DataSourceId), "/stopsync"],
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

%% @doc Adds the specified tag to the specified Amazon Q application or data
%% source resource.
%%
%% If the tag already exists, the existing value is replaced with the new
%% value.
tag_resource(Client, ResourceARN, Input) ->
    tag_resource(Client, ResourceARN, Input, []).
tag_resource(Client, ResourceARN, Input0, Options0) ->
    Method = post,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceARN), ""],
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

%% @doc Removes a tag from an Amazon Q application or a data source.
untag_resource(Client, ResourceARN, Input) ->
    untag_resource(Client, ResourceARN, Input, []).
untag_resource(Client, ResourceARN, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceARN), ""],
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

%% @doc Updates an existing Amazon Q application.
update_application(Client, ApplicationId, Input) ->
    update_application(Client, ApplicationId, Input, []).
update_application(Client, ApplicationId, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), ""],
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

%% @doc Updates an set of chat controls configured for an existing Amazon Q
%% application.
update_chat_controls_configuration(Client, ApplicationId, Input) ->
    update_chat_controls_configuration(Client, ApplicationId, Input, []).
update_chat_controls_configuration(Client, ApplicationId, Input0, Options0) ->
    Method = patch,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/chatcontrols"],
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

%% @doc Updates an existing Amazon Q data source connector.
update_data_source(Client, ApplicationId, DataSourceId, IndexId, Input) ->
    update_data_source(Client, ApplicationId, DataSourceId, IndexId, Input, []).
update_data_source(Client, ApplicationId, DataSourceId, IndexId, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), "/datasources/", aws_util:encode_uri(DataSourceId), ""],
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

%% @doc Updates an Amazon Q index.
update_index(Client, ApplicationId, IndexId, Input) ->
    update_index(Client, ApplicationId, IndexId, Input, []).
update_index(Client, ApplicationId, IndexId, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/indices/", aws_util:encode_uri(IndexId), ""],
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

%% @doc Updates an Amazon Q plugin.
update_plugin(Client, ApplicationId, PluginId, Input) ->
    update_plugin(Client, ApplicationId, PluginId, Input, []).
update_plugin(Client, ApplicationId, PluginId, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/plugins/", aws_util:encode_uri(PluginId), ""],
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

%% @doc Updates the retriever used for your Amazon Q application.
update_retriever(Client, ApplicationId, RetrieverId, Input) ->
    update_retriever(Client, ApplicationId, RetrieverId, Input, []).
update_retriever(Client, ApplicationId, RetrieverId, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/retrievers/", aws_util:encode_uri(RetrieverId), ""],
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

%% @doc Updates a information associated with a user id.
update_user(Client, ApplicationId, UserId, Input) ->
    update_user(Client, ApplicationId, UserId, Input, []).
update_user(Client, ApplicationId, UserId, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/users/", aws_util:encode_uri(UserId), ""],
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

%% @doc Updates an Amazon Q web experience.
update_web_experience(Client, ApplicationId, WebExperienceId, Input) ->
    update_web_experience(Client, ApplicationId, WebExperienceId, Input, []).
update_web_experience(Client, ApplicationId, WebExperienceId, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(ApplicationId), "/experiences/", aws_util:encode_uri(WebExperienceId), ""],
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
    Client1 = Client#{service => <<"qbusiness">>},
    Host = build_host(<<"qbusiness">>, Client1),
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
