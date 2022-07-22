%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Kendra is a service for indexing large document sets.
-module(aws_kendra).

-export([associate_entities_to_experience/2,
         associate_entities_to_experience/3,
         associate_personas_to_entities/2,
         associate_personas_to_entities/3,
         batch_delete_document/2,
         batch_delete_document/3,
         batch_get_document_status/2,
         batch_get_document_status/3,
         batch_put_document/2,
         batch_put_document/3,
         clear_query_suggestions/2,
         clear_query_suggestions/3,
         create_access_control_configuration/2,
         create_access_control_configuration/3,
         create_data_source/2,
         create_data_source/3,
         create_experience/2,
         create_experience/3,
         create_faq/2,
         create_faq/3,
         create_index/2,
         create_index/3,
         create_query_suggestions_block_list/2,
         create_query_suggestions_block_list/3,
         create_thesaurus/2,
         create_thesaurus/3,
         delete_access_control_configuration/2,
         delete_access_control_configuration/3,
         delete_data_source/2,
         delete_data_source/3,
         delete_experience/2,
         delete_experience/3,
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
         describe_access_control_configuration/2,
         describe_access_control_configuration/3,
         describe_data_source/2,
         describe_data_source/3,
         describe_experience/2,
         describe_experience/3,
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
         disassociate_entities_from_experience/2,
         disassociate_entities_from_experience/3,
         disassociate_personas_from_entities/2,
         disassociate_personas_from_entities/3,
         get_query_suggestions/2,
         get_query_suggestions/3,
         get_snapshots/2,
         get_snapshots/3,
         list_access_control_configurations/2,
         list_access_control_configurations/3,
         list_data_source_sync_jobs/2,
         list_data_source_sync_jobs/3,
         list_data_sources/2,
         list_data_sources/3,
         list_entity_personas/2,
         list_entity_personas/3,
         list_experience_entities/2,
         list_experience_entities/3,
         list_experiences/2,
         list_experiences/3,
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
         update_access_control_configuration/2,
         update_access_control_configuration/3,
         update_data_source/2,
         update_data_source/3,
         update_experience/2,
         update_experience/3,
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

%% @doc Grants users or groups in your Amazon Web Services SSO identity
%% source access to your Amazon Kendra experience.
%%
%% You can create an Amazon Kendra experience such as a search application.
%% For more information on creating a search application experience, see
%% Building a search experience with no code.
associate_entities_to_experience(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_entities_to_experience(Client, Input, []).
associate_entities_to_experience(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateEntitiesToExperience">>, Input, Options).

%% @doc Defines the specific permissions of users or groups in your Amazon
%% Web Services SSO identity source with access to your Amazon Kendra
%% experience.
%%
%% You can create an Amazon Kendra experience such as a search application.
%% For more information on creating a search application experience, see
%% Building a search experience with no code.
associate_personas_to_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_personas_to_entities(Client, Input, []).
associate_personas_to_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociatePersonasToEntities">>, Input, Options).

%% @doc Removes one or more documents from an index.
%%
%% The documents must have been added with the `BatchPutDocument' API.
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
%% the BatchPutDocument API.
%%
%% When you use the `BatchPutDocument' API, documents are indexed
%% asynchronously. You can use the `BatchGetDocumentStatus' API to get the
%% current status of a list of documents so that you can determine if they
%% have been successfully indexed.
%%
%% You can also use the `BatchGetDocumentStatus' API to check the status of
%% the BatchDeleteDocument API. When a document is deleted from the index,
%% Amazon Kendra returns `NOT_FOUND' as the status.
batch_get_document_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_document_status(Client, Input, []).
batch_get_document_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetDocumentStatus">>, Input, Options).

%% @doc Adds one or more documents to an index.
%%
%% The `BatchPutDocument' API enables you to ingest inline documents or a set
%% of documents stored in an Amazon S3 bucket. Use this API to ingest your
%% text and unstructured text into an index, add custom attributes to the
%% documents, and to attach an access control list to the documents added to
%% the index.
%%
%% The documents are indexed asynchronously. You can see the progress of the
%% batch using Amazon Web Services CloudWatch. Any error messages related to
%% processing the batch are sent to your Amazon Web Services CloudWatch log.
%%
%% For an example of ingesting inline documents using Python and Java SDKs,
%% see Adding files directly to an index.
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
%%
%% `ClearQuerySuggestions' is currently not supported in the Amazon Web
%% Services GovCloud (US-West) region.
clear_query_suggestions(Client, Input)
  when is_map(Client), is_map(Input) ->
    clear_query_suggestions(Client, Input, []).
clear_query_suggestions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ClearQuerySuggestions">>, Input, Options).

%% @doc Creates an access configuration for your documents.
%%
%% This includes user and group access information for your documents. This
%% is useful for user context filtering, where search results are filtered
%% based on the user or their group access to documents.
%%
%% You can use this to re-configure your existing document level access
%% control without indexing all of your documents again. For example, your
%% index contains top-secret company documents that only certain employees or
%% users should access. One of these users leaves the company or switches to
%% a team that should be blocked from accessing top-secret documents. The
%% user still has access to top-secret documents because the user had access
%% when your documents were previously indexed. You can create a specific
%% access control configuration for the user with deny access. You can later
%% update the access control configuration to allow access if the user
%% returns to the company and re-joins the 'top-secret' team. You can
%% re-configure access control for your documents as circumstances change.
%%
%% To apply your access control configuration to certain documents, you call
%% the BatchPutDocument API with the `AccessControlConfigurationId' included
%% in the Document object. If you use an S3 bucket as a data source, you
%% update the `.metadata.json' with the `AccessControlConfigurationId' and
%% synchronize your data source. Amazon Kendra currently only supports access
%% control configuration for S3 data sources and documents indexed using the
%% `BatchPutDocument' API.
create_access_control_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_access_control_configuration(Client, Input, []).
create_access_control_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAccessControlConfiguration">>, Input, Options).

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
%%
%% Amazon S3 and custom data sources are the only supported data sources in
%% the Amazon Web Services GovCloud (US-West) region.
%%
%% For an example of creating an index and data source using the Python SDK,
%% see Getting started with Python SDK. For an example of creating an index
%% and data source using the Java SDK, see Getting started with Java SDK.
create_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_source(Client, Input, []).
create_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataSource">>, Input, Options).

%% @doc Creates an Amazon Kendra experience such as a search application.
%%
%% For more information on creating a search application experience,
%% including using the Python and Java SDKs, see Building a search experience
%% with no code.
create_experience(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_experience(Client, Input, []).
create_experience(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateExperience">>, Input, Options).

%% @doc Creates an new set of frequently asked question (FAQ) questions and
%% answers.
%%
%% Adding FAQs to an index is an asynchronous operation.
%%
%% For an example of adding an FAQ to an index using Python and Java SDKs,
%% see Using your FAQ file.
create_faq(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_faq(Client, Input, []).
create_faq(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFaq">>, Input, Options).

%% @doc Creates an Amazon Kendra index.
%%
%% Index creation is an asynchronous API. To determine if index creation has
%% completed, check the `Status' field returned from a call to
%% `DescribeIndex'. The `Status' field is set to `ACTIVE' when the index is
%% ready to use.
%%
%% Once the index is active you can index your documents using the
%% `BatchPutDocument' API or using one of the supported data sources.
%%
%% For an example of creating an index and data source using the Python SDK,
%% see Getting started with Python SDK. For an example of creating an index
%% and data source using the Java SDK, see Getting started with Java SDK.
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
%%
%% `CreateQuerySuggestionsBlockList' is currently not supported in the Amazon
%% Web Services GovCloud (US-West) region.
%%
%% For an example of creating a block list for query suggestions using the
%% Python SDK, see Query suggestions block list.
create_query_suggestions_block_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_query_suggestions_block_list(Client, Input, []).
create_query_suggestions_block_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateQuerySuggestionsBlockList">>, Input, Options).

%% @doc Creates a thesaurus for an index.
%%
%% The thesaurus contains a list of synonyms in Solr format.
%%
%% For an example of adding a thesaurus file to an index, see Adding custom
%% synonyms to an index.
create_thesaurus(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_thesaurus(Client, Input, []).
create_thesaurus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateThesaurus">>, Input, Options).

%% @doc Deletes an access control configuration that you created for your
%% documents in an index.
%%
%% This includes user and group access information for your documents. This
%% is useful for user context filtering, where search results are filtered
%% based on the user or their group access to documents.
delete_access_control_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_access_control_configuration(Client, Input, []).
delete_access_control_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccessControlConfiguration">>, Input, Options).

%% @doc Deletes an Amazon Kendra data source.
%%
%% An exception is not thrown if the data source is already being deleted.
%% While the data source is being deleted, the `Status' field returned by a
%% call to the `DescribeDataSource' API is set to `DELETING'. For more
%% information, see Deleting Data Sources.
delete_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_data_source(Client, Input, []).
delete_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataSource">>, Input, Options).

%% @doc Deletes your Amazon Kendra experience such as a search application.
%%
%% For more information on creating a search application experience, see
%% Building a search experience with no code.
delete_experience(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_experience(Client, Input, []).
delete_experience(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteExperience">>, Input, Options).

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
%% `DescribeIndex' API is set to `DELETING'.
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
%%
%% `DeletePrincipalMapping' is currently not supported in the Amazon Web
%% Services GovCloud (US-West) region.
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
%%
%% `DeleteQuerySuggestionsBlockList' is currently not supported in the Amazon
%% Web Services GovCloud (US-West) region.
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

%% @doc Gets information about an access control configuration that you
%% created for your documents in an index.
%%
%% This includes user and group access information for your documents. This
%% is useful for user context filtering, where search results are filtered
%% based on the user or their group access to documents.
describe_access_control_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_access_control_configuration(Client, Input, []).
describe_access_control_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccessControlConfiguration">>, Input, Options).

%% @doc Gets information about an Amazon Kendra data source.
describe_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_source(Client, Input, []).
describe_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataSource">>, Input, Options).

%% @doc Gets information about your Amazon Kendra experience such as a search
%% application.
%%
%% For more information on creating a search application experience, see
%% Building a search experience with no code.
describe_experience(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_experience(Client, Input, []).
describe_experience(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExperience">>, Input, Options).

%% @doc Gets information about an FAQ list.
describe_faq(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_faq(Client, Input, []).
describe_faq(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFaq">>, Input, Options).

%% @doc Gets information about an existing Amazon Kendra index.
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
%%
%% `DescribePrincipalMapping' is currently not supported in the Amazon Web
%% Services GovCloud (US-West) region.
describe_principal_mapping(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_principal_mapping(Client, Input, []).
describe_principal_mapping(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePrincipalMapping">>, Input, Options).

%% @doc Gets information about a block list used for query suggestions for an
%% index.
%%
%% This is used to check the current settings that are applied to a block
%% list.
%%
%% `DescribeQuerySuggestionsBlockList' is currently not supported in the
%% Amazon Web Services GovCloud (US-West) region.
describe_query_suggestions_block_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_query_suggestions_block_list(Client, Input, []).
describe_query_suggestions_block_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeQuerySuggestionsBlockList">>, Input, Options).

%% @doc Gets information on the settings of query suggestions for an index.
%%
%% This is used to check the current settings applied to query suggestions.
%%
%% `DescribeQuerySuggestionsConfig' is currently not supported in the Amazon
%% Web Services GovCloud (US-West) region.
describe_query_suggestions_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_query_suggestions_config(Client, Input, []).
describe_query_suggestions_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeQuerySuggestionsConfig">>, Input, Options).

%% @doc Gets information about an existing Amazon Kendra thesaurus.
describe_thesaurus(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_thesaurus(Client, Input, []).
describe_thesaurus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeThesaurus">>, Input, Options).

%% @doc Prevents users or groups in your Amazon Web Services SSO identity
%% source from accessing your Amazon Kendra experience.
%%
%% You can create an Amazon Kendra experience such as a search application.
%% For more information on creating a search application experience, see
%% Building a search experience with no code.
disassociate_entities_from_experience(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_entities_from_experience(Client, Input, []).
disassociate_entities_from_experience(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateEntitiesFromExperience">>, Input, Options).

%% @doc Removes the specific permissions of users or groups in your Amazon
%% Web Services SSO identity source with access to your Amazon Kendra
%% experience.
%%
%% You can create an Amazon Kendra experience such as a search application.
%% For more information on creating a search application experience, see
%% Building a search experience with no code.
disassociate_personas_from_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_personas_from_entities(Client, Input, []).
disassociate_personas_from_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociatePersonasFromEntities">>, Input, Options).

%% @doc Fetches the queries that are suggested to your users.
%%
%% `GetQuerySuggestions' is currently not supported in the Amazon Web
%% Services GovCloud (US-West) region.
get_query_suggestions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_query_suggestions(Client, Input, []).
get_query_suggestions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQuerySuggestions">>, Input, Options).

%% @doc Retrieves search metrics data.
%%
%% The data provides a snapshot of how your users interact with your search
%% application and how effective the application is.
get_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_snapshots(Client, Input, []).
get_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSnapshots">>, Input, Options).

%% @doc Lists one or more access control configurations for an index.
%%
%% This includes user and group access information for your documents. This
%% is useful for user context filtering, where search results are filtered
%% based on the user or their group access to documents.
list_access_control_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_access_control_configurations(Client, Input, []).
list_access_control_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccessControlConfigurations">>, Input, Options).

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

%% @doc Lists specific permissions of users and groups with access to your
%% Amazon Kendra experience.
list_entity_personas(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_entity_personas(Client, Input, []).
list_entity_personas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEntityPersonas">>, Input, Options).

%% @doc Lists users or groups in your Amazon Web Services SSO identity source
%% that are granted access to your Amazon Kendra experience.
%%
%% You can create an Amazon Kendra experience such as a search application.
%% For more information on creating a search application experience, see
%% Building a search experience with no code.
list_experience_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_experience_entities(Client, Input, []).
list_experience_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExperienceEntities">>, Input, Options).

%% @doc Lists one or more Amazon Kendra experiences.
%%
%% You can create an Amazon Kendra experience such as a search application.
%% For more information on creating a search application experience, see
%% Building a search experience with no code.
list_experiences(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_experiences(Client, Input, []).
list_experiences(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExperiences">>, Input, Options).

%% @doc Gets a list of FAQ lists associated with an index.
list_faqs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_faqs(Client, Input, []).
list_faqs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFaqs">>, Input, Options).

%% @doc Provides a list of groups that are mapped to users before a given
%% ordering or timestamp identifier.
%%
%% `ListGroupsOlderThanOrderingId' is currently not supported in the Amazon
%% Web Services GovCloud (US-West) region.
list_groups_older_than_ordering_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_groups_older_than_ordering_id(Client, Input, []).
list_groups_older_than_ordering_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroupsOlderThanOrderingId">>, Input, Options).

%% @doc Lists the Amazon Kendra indexes that you created.
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
%%
%% `ListQuerySuggestionsBlockLists' is currently not supported in the Amazon
%% Web Services GovCloud (US-West) region.
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

%% @doc Lists the thesauri for an index.
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
%% This is useful for user context filtering, where search results are
%% filtered based on the user or their group access to documents. For more
%% information, see Filtering on user context.
%%
%% If more than five `PUT' actions for a group are currently processing, a
%% validation exception is thrown.
%%
%% `PutPrincipalMapping' is currently not supported in the Amazon Web
%% Services GovCloud (US-West) region.
put_principal_mapping(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_principal_mapping(Client, Input, []).
put_principal_mapping(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPrincipalMapping">>, Input, Options).

%% @doc Searches an active index.
%%
%% Use this API to search your documents using query. The `Query' API enables
%% to do faceted search and to filter results based on document attributes.
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

%% @doc Stops a synchronization job that is currently running.
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
%%
%% `SubmitFeedback' is currently not supported in the Amazon Web Services
%% GovCloud (US-West) region.
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

%% @doc Updates an access control configuration for your documents in an
%% index.
%%
%% This includes user and group access information for your documents. This
%% is useful for user context filtering, where search results are filtered
%% based on the user or their group access to documents.
%%
%% You can update an access control configuration you created without
%% indexing all of your documents again. For example, your index contains
%% top-secret company documents that only certain employees or users should
%% access. You created an 'allow' access control configuration for one user
%% who recently joined the 'top-secret' team, switching from a team with
%% 'deny' access to top-secret documents. However, the user suddenly returns
%% to their previous team and should no longer have access to top secret
%% documents. You can update the access control configuration to re-configure
%% access control for your documents as circumstances change.
%%
%% You call the BatchPutDocument API to apply the updated access control
%% configuration, with the `AccessControlConfigurationId' included in the
%% Document object. If you use an S3 bucket as a data source, you synchronize
%% your data source to apply the `AccessControlConfigurationId' in the
%% `.metadata.json' file. Amazon Kendra currently only supports access
%% control configuration for S3 data sources and documents indexed using the
%% `BatchPutDocument' API.
update_access_control_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_access_control_configuration(Client, Input, []).
update_access_control_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAccessControlConfiguration">>, Input, Options).

%% @doc Updates an existing Amazon Kendra data source.
update_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_data_source(Client, Input, []).
update_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDataSource">>, Input, Options).

%% @doc Updates your Amazon Kendra experience such as a search application.
%%
%% For more information on creating a search application experience, see
%% Building a search experience with no code.
update_experience(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_experience(Client, Input, []).
update_experience(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateExperience">>, Input, Options).

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
%%
%% `UpdateQuerySuggestionsBlockList' is currently not supported in the Amazon
%% Web Services GovCloud (US-West) region.
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
%%
%% `UpdateQuerySuggestionsConfig' is currently not supported in the Amazon
%% Web Services GovCloud (US-West) region.
update_query_suggestions_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_query_suggestions_config(Client, Input, []).
update_query_suggestions_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateQuerySuggestionsConfig">>, Input, Options).

%% @doc Updates a thesaurus for an index.
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
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
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
