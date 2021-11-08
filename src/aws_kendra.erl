%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Kendra is a service for indexing large document sets.
-module(aws_kendra).

-export([batch_delete_document/2,
         batch_delete_document/3,
         batch_get_document_status/2,
         batch_get_document_status/3,
         batch_put_document/2,
         batch_put_document/3,
         clear_query_suggestions/2,
         clear_query_suggestions/3,
         create_data_source/2,
         create_data_source/3,
         create_faq/2,
         create_faq/3,
         create_index/2,
         create_index/3,
         create_query_suggestions_block_list/2,
         create_query_suggestions_block_list/3,
         create_thesaurus/2,
         create_thesaurus/3,
         delete_data_source/2,
         delete_data_source/3,
         delete_faq/2,
         delete_faq/3,
         delete_index/2,
         delete_index/3,
         delete_principal_mapping/2,
         delete_principal_mapping/3,
         delete_query_suggestions_block_list/2,
         delete_query_suggestions_block_list/3,
         delete_thesaurus/2,
         delete_thesaurus/3,
         describe_data_source/2,
         describe_data_source/3,
         describe_faq/2,
         describe_faq/3,
         describe_index/2,
         describe_index/3,
         describe_principal_mapping/2,
         describe_principal_mapping/3,
         describe_query_suggestions_block_list/2,
         describe_query_suggestions_block_list/3,
         describe_query_suggestions_config/2,
         describe_query_suggestions_config/3,
         describe_thesaurus/2,
         describe_thesaurus/3,
         get_query_suggestions/2,
         get_query_suggestions/3,
         list_data_source_sync_jobs/2,
         list_data_source_sync_jobs/3,
         list_data_sources/2,
         list_data_sources/3,
         list_faqs/2,
         list_faqs/3,
         list_groups_older_than_ordering_id/2,
         list_groups_older_than_ordering_id/3,
         list_indices/2,
         list_indices/3,
         list_query_suggestions_block_lists/2,
         list_query_suggestions_block_lists/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_thesauri/2,
         list_thesauri/3,
         put_principal_mapping/2,
         put_principal_mapping/3,
         query/2,
         query/3,
         start_data_source_sync_job/2,
         start_data_source_sync_job/3,
         stop_data_source_sync_job/2,
         stop_data_source_sync_job/3,
         submit_feedback/2,
         submit_feedback/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_data_source/2,
         update_data_source/3,
         update_index/2,
         update_index/3,
         update_query_suggestions_block_list/2,
         update_query_suggestions_block_list/3,
         update_query_suggestions_config/2,
         update_query_suggestions_config/3,
         update_thesaurus/2,
         update_thesaurus/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Removes one or more documents from an index.
%%
%% The documents must have been added with the `BatchPutDocument' operation.
%%
%% The documents are deleted asynchronously. You can see the progress of the
%% deletion by using Amazon Web Services CloudWatch. Any error messages
%% related to the processing of the batch are sent to you CloudWatch log.
batch_delete_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_document(Client, Input, []).
batch_delete_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteDocument">>, Input, Options).

%% @doc Returns the indexing status for one or more documents submitted with
%% the BatchPutDocument operation.
%%
%% When you use the `BatchPutDocument' operation, documents are indexed
%% asynchronously. You can use the `BatchGetDocumentStatus' operation to get
%% the current status of a list of documents so that you can determine if
%% they have been successfully indexed.
%%
%% You can also use the `BatchGetDocumentStatus' operation to check the
%% status of the BatchDeleteDocument operation. When a document is deleted
%% from the index, Amazon Kendra returns `NOT_FOUND' as the status.
batch_get_document_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_document_status(Client, Input, []).
batch_get_document_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetDocumentStatus">>, Input, Options).

%% @doc Adds one or more documents to an index.
%%
%% The `BatchPutDocument' operation enables you to ingest inline documents or
%% a set of documents stored in an Amazon S3 bucket. Use this operation to
%% ingest your text and unstructured text into an index, add custom
%% attributes to the documents, and to attach an access control list to the
%% documents added to the index.
%%
%% The documents are indexed asynchronously. You can see the progress of the
%% batch using Amazon Web Services CloudWatch. Any error messages related to
%% processing the batch are sent to your Amazon Web Services CloudWatch log.
batch_put_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_put_document(Client, Input, []).
batch_put_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchPutDocument">>, Input, Options).

%% @doc Clears existing query suggestions from an index.
%%
%% This deletes existing suggestions only, not the queries in the query log.
%% After you clear suggestions, Amazon Kendra learns new suggestions based on
%% new queries added to the query log from the time you cleared suggestions.
%% If you do not see any new suggestions, then please allow Amazon Kendra to
%% collect enough queries to learn new suggestions.
clear_query_suggestions(Client, Input)
  when is_map(Client), is_map(Input) ->
    clear_query_suggestions(Client, Input, []).
clear_query_suggestions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ClearQuerySuggestions">>, Input, Options).

%% @doc Creates a data source that you want to use with an Amazon Kendra
%% index.
%%
%% You specify a name, data source connector type and description for your
%% data source. You also specify configuration information for the data
%% source connector.
%%
%% `CreateDataSource' is a synchronous operation. The operation returns 200
%% if the data source was successfully created. Otherwise, an exception is
%% raised.
create_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_source(Client, Input, []).
create_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataSource">>, Input, Options).

%% @doc Creates an new set of frequently asked question (FAQ) questions and
%% answers.
create_faq(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_faq(Client, Input, []).
create_faq(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFaq">>, Input, Options).

%% @doc Creates a new Amazon Kendra index.
%%
%% Index creation is an asynchronous operation. To determine if index
%% creation has completed, check the `Status' field returned from a call to
%% `DescribeIndex'. The `Status' field is set to `ACTIVE' when the index is
%% ready to use.
%%
%% Once the index is active you can index your documents using the
%% `BatchPutDocument' operation or using one of the supported data sources.
create_index(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_index(Client, Input, []).
create_index(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIndex">>, Input, Options).

%% @doc Creates a block list to exlcude certain queries from suggestions.
%%
%% Any query that contains words or phrases specified in the block list is
%% blocked or filtered out from being shown as a suggestion.
%%
%% You need to provide the file location of your block list text file in your
%% S3 bucket. In your text file, enter each block word or phrase on a
%% separate line.
%%
%% For information on the current quota limits for block lists, see Quotas
%% for Amazon Kendra.
create_query_suggestions_block_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_query_suggestions_block_list(Client, Input, []).
create_query_suggestions_block_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateQuerySuggestionsBlockList">>, Input, Options).

%% @doc Creates a thesaurus for an index.
%%
%% The thesaurus contains a list of synonyms in Solr format.
create_thesaurus(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_thesaurus(Client, Input, []).
create_thesaurus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateThesaurus">>, Input, Options).

%% @doc Deletes an Amazon Kendra data source.
%%
%% An exception is not thrown if the data source is already being deleted.
%% While the data source is being deleted, the `Status' field returned by a
%% call to the `DescribeDataSource' operation is set to `DELETING'. For more
%% information, see Deleting Data Sources.
delete_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_data_source(Client, Input, []).
delete_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataSource">>, Input, Options).

%% @doc Removes an FAQ from an index.
delete_faq(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_faq(Client, Input, []).
delete_faq(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFaq">>, Input, Options).

%% @doc Deletes an existing Amazon Kendra index.
%%
%% An exception is not thrown if the index is already being deleted. While
%% the index is being deleted, the `Status' field returned by a call to the
%% `DescribeIndex' operation is set to `DELETING'.
delete_index(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_index(Client, Input, []).
delete_index(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIndex">>, Input, Options).

%% @doc Deletes a group so that all users and sub groups that belong to the
%% group can no longer access documents only available to that group.
%%
%% For example, after deleting the group "Summer Interns", all interns who
%% belonged to that group no longer see intern-only documents in their search
%% results.
%%
%% If you want to delete or replace users or sub groups of a group, you need
%% to use the `PutPrincipalMapping' operation. For example, if a user in the
%% group "Engineering" leaves the engineering team and another user takes
%% their place, you provide an updated list of users or sub groups that
%% belong to the "Engineering" group when calling `PutPrincipalMapping'. You
%% can update your internal list of users or sub groups and input this list
%% when calling `PutPrincipalMapping'.
delete_principal_mapping(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_principal_mapping(Client, Input, []).
delete_principal_mapping(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePrincipalMapping">>, Input, Options).

%% @doc Deletes a block list used for query suggestions for an index.
%%
%% A deleted block list might not take effect right away. Amazon Kendra needs
%% to refresh the entire suggestions list to add back the queries that were
%% previously blocked.
delete_query_suggestions_block_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_query_suggestions_block_list(Client, Input, []).
delete_query_suggestions_block_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteQuerySuggestionsBlockList">>, Input, Options).

%% @doc Deletes an existing Amazon Kendra thesaurus.
delete_thesaurus(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_thesaurus(Client, Input, []).
delete_thesaurus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteThesaurus">>, Input, Options).

%% @doc Gets information about a Amazon Kendra data source.
describe_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_source(Client, Input, []).
describe_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataSource">>, Input, Options).

%% @doc Gets information about an FAQ list.
describe_faq(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_faq(Client, Input, []).
describe_faq(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFaq">>, Input, Options).

%% @doc Describes an existing Amazon Kendra index
describe_index(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_index(Client, Input, []).
describe_index(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIndex">>, Input, Options).

%% @doc Describes the processing of `PUT' and `DELETE' actions for mapping
%% users to their groups.
%%
%% This includes information on the status of actions currently processing or
%% yet to be processed, when actions were last updated, when actions were
%% received by Amazon Kendra, the latest action that should process and apply
%% after other actions, and useful error messages if an action could not be
%% processed.
describe_principal_mapping(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_principal_mapping(Client, Input, []).
describe_principal_mapping(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePrincipalMapping">>, Input, Options).

%% @doc Describes a block list used for query suggestions for an index.
%%
%% This is used to check the current settings that are applied to a block
%% list.
describe_query_suggestions_block_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_query_suggestions_block_list(Client, Input, []).
describe_query_suggestions_block_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeQuerySuggestionsBlockList">>, Input, Options).

%% @doc Describes the settings of query suggestions for an index.
%%
%% This is used to check the current settings applied to query suggestions.
describe_query_suggestions_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_query_suggestions_config(Client, Input, []).
describe_query_suggestions_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeQuerySuggestionsConfig">>, Input, Options).

%% @doc Describes an existing Amazon Kendra thesaurus.
describe_thesaurus(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_thesaurus(Client, Input, []).
describe_thesaurus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeThesaurus">>, Input, Options).

%% @doc Fetches the queries that are suggested to your users.
get_query_suggestions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_query_suggestions(Client, Input, []).
get_query_suggestions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQuerySuggestions">>, Input, Options).

%% @doc Gets statistics about synchronizing Amazon Kendra with a data source.
list_data_source_sync_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_data_source_sync_jobs(Client, Input, []).
list_data_source_sync_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDataSourceSyncJobs">>, Input, Options).

%% @doc Lists the data sources that you have created.
list_data_sources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_data_sources(Client, Input, []).
list_data_sources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDataSources">>, Input, Options).

%% @doc Gets a list of FAQ lists associated with an index.
list_faqs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_faqs(Client, Input, []).
list_faqs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFaqs">>, Input, Options).

%% @doc Provides a list of groups that are mapped to users before a given
%% ordering or timestamp identifier.
list_groups_older_than_ordering_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_groups_older_than_ordering_id(Client, Input, []).
list_groups_older_than_ordering_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroupsOlderThanOrderingId">>, Input, Options).

%% @doc Lists the Amazon Kendra indexes that you have created.
list_indices(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_indices(Client, Input, []).
list_indices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIndices">>, Input, Options).

%% @doc Lists the block lists used for query suggestions for an index.
%%
%% For information on the current quota limits for block lists, see Quotas
%% for Amazon Kendra.
list_query_suggestions_block_lists(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_query_suggestions_block_lists(Client, Input, []).
list_query_suggestions_block_lists(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListQuerySuggestionsBlockLists">>, Input, Options).

%% @doc Gets a list of tags associated with a specified resource.
%%
%% Indexes, FAQs, and data sources can have tags associated with them.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists the Amazon Kendra thesauri associated with an index.
list_thesauri(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_thesauri(Client, Input, []).
list_thesauri(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListThesauri">>, Input, Options).

%% @doc Maps users to their groups so that you only need to provide the user
%% ID when you issue the query.
%%
%% You can also map sub groups to groups. For example, the group "Company
%% Intellectual Property Teams" includes sub groups "Research" and
%% "Engineering". These sub groups include their own list of users or people
%% who work in these teams. Only users who work in research and engineering,
%% and therefore belong in the intellectual property group, can see
%% top-secret company documents in their search results.
%%
%% You map users to their groups when you want to filter search results for
%% different users based on their group’s access to documents. For more
%% information on filtering search results for different users, see Filtering
%% on user context.
%%
%% If more than five `PUT' actions for a group are currently processing, a
%% validation exception is thrown.
put_principal_mapping(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_principal_mapping(Client, Input, []).
put_principal_mapping(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPrincipalMapping">>, Input, Options).

%% @doc Searches an active index.
%%
%% Use this API to search your documents using query. The `Query' operation
%% enables to do faceted search and to filter results based on document
%% attributes.
%%
%% It also enables you to provide user context that Amazon Kendra uses to
%% enforce document access control in the search results.
%%
%% Amazon Kendra searches your index for text content and question and answer
%% (FAQ) content. By default the response contains three types of results.
%%
%% <ul> <li> Relevant passages
%%
%% </li> <li> Matching FAQs
%%
%% </li> <li> Relevant documents
%%
%% </li> </ul> You can specify that the query return only one type of result
%% using the `QueryResultTypeConfig' parameter.
%%
%% Each query returns the 100 most relevant results.
query(Client, Input)
  when is_map(Client), is_map(Input) ->
    query(Client, Input, []).
query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Query">>, Input, Options).

%% @doc Starts a synchronization job for a data source.
%%
%% If a synchronization job is already in progress, Amazon Kendra returns a
%% `ResourceInUseException' exception.
start_data_source_sync_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_data_source_sync_job(Client, Input, []).
start_data_source_sync_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDataSourceSyncJob">>, Input, Options).

%% @doc Stops a running synchronization job.
%%
%% You can't stop a scheduled synchronization job.
stop_data_source_sync_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_data_source_sync_job(Client, Input, []).
stop_data_source_sync_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDataSourceSyncJob">>, Input, Options).

%% @doc Enables you to provide feedback to Amazon Kendra to improve the
%% performance of your index.
submit_feedback(Client, Input)
  when is_map(Client), is_map(Input) ->
    submit_feedback(Client, Input, []).
submit_feedback(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SubmitFeedback">>, Input, Options).

%% @doc Adds the specified tag to the specified index, FAQ, or data source
%% resource.
%%
%% If the tag already exists, the existing value is replaced with the new
%% value.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes a tag from an index, FAQ, or a data source.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an existing Amazon Kendra data source.
update_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_data_source(Client, Input, []).
update_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDataSource">>, Input, Options).

%% @doc Updates an existing Amazon Kendra index.
update_index(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_index(Client, Input, []).
update_index(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateIndex">>, Input, Options).

%% @doc Updates a block list used for query suggestions for an index.
%%
%% Updates to a block list might not take effect right away. Amazon Kendra
%% needs to refresh the entire suggestions list to apply any updates to the
%% block list. Other changes not related to the block list apply immediately.
%%
%% If a block list is updating, then you need to wait for the first update to
%% finish before submitting another update.
%%
%% Amazon Kendra supports partial updates, so you only need to provide the
%% fields you want to update.
update_query_suggestions_block_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_query_suggestions_block_list(Client, Input, []).
update_query_suggestions_block_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateQuerySuggestionsBlockList">>, Input, Options).

%% @doc Updates the settings of query suggestions for an index.
%%
%% Amazon Kendra supports partial updates, so you only need to provide the
%% fields you want to update.
%%
%% If an update is currently processing (i.e. 'happening'), you need to wait
%% for the update to finish before making another update.
%%
%% Updates to query suggestions settings might not take effect right away.
%% The time for your updated settings to take effect depends on the updates
%% made and the number of search queries in your index.
%%
%% You can still enable/disable query suggestions at any time.
update_query_suggestions_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_query_suggestions_config(Client, Input, []).
update_query_suggestions_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateQuerySuggestionsConfig">>, Input, Options).

%% @doc Updates a thesaurus file associated with an index.
update_thesaurus(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_thesaurus(Client, Input, []).
update_thesaurus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateThesaurus">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"kendra">>},
    Host = build_host(<<"kendra">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSKendraFrontendService.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
