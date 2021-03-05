%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Kendra is a service for indexing large document sets.
-module(aws_kendra).

-export([batch_delete_document/2,
         batch_delete_document/3,
         batch_put_document/2,
         batch_put_document/3,
         create_data_source/2,
         create_data_source/3,
         create_faq/2,
         create_faq/3,
         create_index/2,
         create_index/3,
         create_thesaurus/2,
         create_thesaurus/3,
         delete_data_source/2,
         delete_data_source/3,
         delete_faq/2,
         delete_faq/3,
         delete_index/2,
         delete_index/3,
         delete_thesaurus/2,
         delete_thesaurus/3,
         describe_data_source/2,
         describe_data_source/3,
         describe_faq/2,
         describe_faq/3,
         describe_index/2,
         describe_index/3,
         describe_thesaurus/2,
         describe_thesaurus/3,
         list_data_source_sync_jobs/2,
         list_data_source_sync_jobs/3,
         list_data_sources/2,
         list_data_sources/3,
         list_faqs/2,
         list_faqs/3,
         list_indices/2,
         list_indices/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_thesauri/2,
         list_thesauri/3,
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
%% deletion by using AWS CloudWatch. Any error messages releated to the
%% processing of the batch are sent to you CloudWatch log.
batch_delete_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_document(Client, Input, []).
batch_delete_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteDocument">>, Input, Options).

%% @doc Adds one or more documents to an index.
%%
%% The `BatchPutDocument' operation enables you to ingest inline documents or
%% a set of documents stored in an Amazon S3 bucket. Use this operation to
%% ingest your text and unstructured text into an index, add custom
%% attributes to the documents, and to attach an access control list to the
%% documents added to the index.
%%
%% The documents are indexed asynchronously. You can see the progress of the
%% batch using AWS CloudWatch. Any error messages related to processing the
%% batch are sent to your AWS CloudWatch log.
batch_put_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_put_document(Client, Input, []).
batch_put_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchPutDocument">>, Input, Options).

%% @doc Creates a data source that you use to with an Amazon Kendra index.
%%
%% You specify a name, data source connector type and description for your
%% data source. You also specify configuration information such as document
%% metadata (author, source URI, and so on) and user context information.
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
%% creation has completed, check the `Status' field returned from a call to .
%% The `Status' field is set to `ACTIVE' when the index is ready to use.
%%
%% Once the index is active you can index your documents using the operation
%% or using one of the supported data sources.
create_index(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_index(Client, Input, []).
create_index(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIndex">>, Input, Options).

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
%% call to the operation is set to `DELETING'. For more information, see
%% Deleting Data Sources.
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

%% @doc Describes an existing Amazon Kendra thesaurus.
describe_thesaurus(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_thesaurus(Client, Input, []).
describe_thesaurus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeThesaurus">>, Input, Options).

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

%% @doc Lists the Amazon Kendra indexes that you have created.
list_indices(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_indices(Client, Input, []).
list_indices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIndices">>, Input, Options).

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
%% performance of the service.
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
