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
         batch_delete_featured_results_set/2,
         batch_delete_featured_results_set/3,
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
         create_featured_results_set/2,
         create_featured_results_set/3,
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
         describe_featured_results_set/2,
         describe_featured_results_set/3,
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
         list_featured_results_sets/2,
         list_featured_results_sets/3,
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
         retrieve/2,
         retrieve/3,
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
         update_featured_results_set/2,
         update_featured_results_set/3,
         update_index/2,
         update_index/3,
         update_query_suggestions_block_list/2,
         update_query_suggestions_block_list/3,
         update_query_suggestions_config/2,
         update_query_suggestions_config/3,
         update_thesaurus/2,
         update_thesaurus/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% one_drive_users() :: #{
%%   <<"OneDriveUserList">> => list(string()),
%%   <<"OneDriveUserS3Path">> => s3_path()
%% }
-type one_drive_users() :: #{binary() => any()}.

%% Example:
%% saa_s_configuration() :: #{
%%   <<"HostUrl">> => string(),
%%   <<"OrganizationName">> => string()
%% }
-type saa_s_configuration() :: #{binary() => any()}.

%% Example:
%% delete_experience_request() :: #{
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string()
%% }
-type delete_experience_request() :: #{binary() => any()}.

%% Example:
%% salesforce_knowledge_article_configuration() :: #{
%%   <<"CustomKnowledgeArticleTypeConfigurations">> => list(salesforce_custom_knowledge_article_type_configuration()),
%%   <<"IncludedStates">> => list(list(any())()),
%%   <<"StandardKnowledgeArticleTypeConfiguration">> => salesforce_standard_knowledge_article_type_configuration()
%% }
-type salesforce_knowledge_article_configuration() :: #{binary() => any()}.

%% Example:
%% entity_persona_configuration() :: #{
%%   <<"EntityId">> => string(),
%%   <<"Persona">> => list(any())
%% }
-type entity_persona_configuration() :: #{binary() => any()}.

%% Example:
%% access_control_configuration_summary() :: #{
%%   <<"Id">> => string()
%% }
-type access_control_configuration_summary() :: #{binary() => any()}.

%% Example:
%% suggestion_value() :: #{
%%   <<"Text">> => suggestion_text_with_highlights()
%% }
-type suggestion_value() :: #{binary() => any()}.

%% Example:
%% featured_results_item() :: #{
%%   <<"AdditionalAttributes">> => list(additional_result_attribute()),
%%   <<"DocumentAttributes">> => list(document_attribute()),
%%   <<"DocumentExcerpt">> => text_with_highlights(),
%%   <<"DocumentId">> => string(),
%%   <<"DocumentTitle">> => text_with_highlights(),
%%   <<"DocumentURI">> => string(),
%%   <<"FeedbackToken">> => string(),
%%   <<"Id">> => string(),
%%   <<"Type">> => list(any())
%% }
-type featured_results_item() :: #{binary() => any()}.

%% Example:
%% update_query_suggestions_block_list_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"SourceS3Path">> => s3_path()
%% }
-type update_query_suggestions_block_list_request() :: #{binary() => any()}.

%% Example:
%% retrieve_result_item() :: #{
%%   <<"Content">> => string(),
%%   <<"DocumentAttributes">> => list(document_attribute()),
%%   <<"DocumentId">> => string(),
%%   <<"DocumentTitle">> => string(),
%%   <<"DocumentURI">> => string(),
%%   <<"Id">> => string(),
%%   <<"ScoreAttributes">> => score_attributes()
%% }
-type retrieve_result_item() :: #{binary() => any()}.

%% Example:
%% box_configuration() :: #{
%%   <<"CommentFieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"CrawlComments">> => boolean(),
%%   <<"CrawlTasks">> => boolean(),
%%   <<"CrawlWebLinks">> => boolean(),
%%   <<"EnterpriseId">> => string(),
%%   <<"ExclusionPatterns">> => list(string()),
%%   <<"FileFieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"InclusionPatterns">> => list(string()),
%%   <<"SecretArn">> => string(),
%%   <<"TaskFieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"UseChangeLog">> => boolean(),
%%   <<"VpcConfiguration">> => data_source_vpc_configuration(),
%%   <<"WebLinkFieldMappings">> => list(data_source_to_index_field_mapping())
%% }
-type box_configuration() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% update_access_control_configuration_request() :: #{
%%   <<"AccessControlList">> => list(principal()),
%%   <<"Description">> => string(),
%%   <<"HierarchicalAccessControlList">> => list(hierarchical_principal()),
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string(),
%%   <<"Name">> => string()
%% }
-type update_access_control_configuration_request() :: #{binary() => any()}.

%% Example:
%% data_source_vpc_configuration() :: #{
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SubnetIds">> => list(string())
%% }
-type data_source_vpc_configuration() :: #{binary() => any()}.

%% Example:
%% describe_data_source_request() :: #{
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string()
%% }
-type describe_data_source_request() :: #{binary() => any()}.

%% Example:
%% s3_path() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Key">> => string()
%% }
-type s3_path() :: #{binary() => any()}.

%% Example:
%% data_source_sync_job_metric_target() :: #{
%%   <<"DataSourceId">> => string(),
%%   <<"DataSourceSyncJobId">> => string()
%% }
-type data_source_sync_job_metric_target() :: #{binary() => any()}.

%% Example:
%% document_attribute() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => document_attribute_value()
%% }
-type document_attribute() :: #{binary() => any()}.

%% Example:
%% describe_experience_request() :: #{
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string()
%% }
-type describe_experience_request() :: #{binary() => any()}.

%% Example:
%% text_with_highlights() :: #{
%%   <<"Highlights">> => list(highlight()),
%%   <<"Text">> => string()
%% }
-type text_with_highlights() :: #{binary() => any()}.

%% Example:
%% proxy_configuration() :: #{
%%   <<"Credentials">> => string(),
%%   <<"Host">> => string(),
%%   <<"Port">> => integer()
%% }
-type proxy_configuration() :: #{binary() => any()}.

%% Example:
%% create_data_source_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Configuration">> => data_source_configuration(),
%%   <<"CustomDocumentEnrichmentConfiguration">> => custom_document_enrichment_configuration(),
%%   <<"Description">> => string(),
%%   <<"IndexId">> := string(),
%%   <<"LanguageCode">> => string(),
%%   <<"Name">> := string(),
%%   <<"RoleArn">> => string(),
%%   <<"Schedule">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"Type">> := list(any()),
%%   <<"VpcConfiguration">> => data_source_vpc_configuration()
%% }
-type create_data_source_request() :: #{binary() => any()}.

%% Example:
%% confluence_page_to_index_field_mapping() :: #{
%%   <<"DataSourceFieldName">> => list(any()),
%%   <<"DateFieldFormat">> => string(),
%%   <<"IndexFieldName">> => string()
%% }
-type confluence_page_to_index_field_mapping() :: #{binary() => any()}.

%% Example:
%% site_maps_configuration() :: #{
%%   <<"SiteMaps">> => list(string())
%% }
-type site_maps_configuration() :: #{binary() => any()}.

%% Example:
%% data_source_configuration() :: #{
%%   <<"AlfrescoConfiguration">> => alfresco_configuration(),
%%   <<"BoxConfiguration">> => box_configuration(),
%%   <<"ConfluenceConfiguration">> => confluence_configuration(),
%%   <<"DatabaseConfiguration">> => database_configuration(),
%%   <<"FsxConfiguration">> => fsx_configuration(),
%%   <<"GitHubConfiguration">> => git_hub_configuration(),
%%   <<"GoogleDriveConfiguration">> => google_drive_configuration(),
%%   <<"JiraConfiguration">> => jira_configuration(),
%%   <<"OneDriveConfiguration">> => one_drive_configuration(),
%%   <<"QuipConfiguration">> => quip_configuration(),
%%   <<"S3Configuration">> => s3_data_source_configuration(),
%%   <<"SalesforceConfiguration">> => salesforce_configuration(),
%%   <<"ServiceNowConfiguration">> => service_now_configuration(),
%%   <<"SharePointConfiguration">> => share_point_configuration(),
%%   <<"SlackConfiguration">> => slack_configuration(),
%%   <<"TemplateConfiguration">> => template_configuration(),
%%   <<"WebCrawlerConfiguration">> => web_crawler_configuration(),
%%   <<"WorkDocsConfiguration">> => work_docs_configuration()
%% }
-type data_source_configuration() :: #{binary() => any()}.

%% Example:
%% content_source_configuration() :: #{
%%   <<"DataSourceIds">> => list(string()),
%%   <<"DirectPutContent">> => boolean(),
%%   <<"FaqIds">> => list(string())
%% }
-type content_source_configuration() :: #{binary() => any()}.

%% Example:
%% list_thesauri_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ThesaurusSummaryItems">> => list(thesaurus_summary())
%% }
-type list_thesauri_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% conflicting_item() :: #{
%%   <<"QueryText">> => string(),
%%   <<"SetId">> => string(),
%%   <<"SetName">> => string()
%% }
-type conflicting_item() :: #{binary() => any()}.

%% Example:
%% custom_document_enrichment_configuration() :: #{
%%   <<"InlineConfigurations">> => list(inline_custom_document_enrichment_configuration()),
%%   <<"PostExtractionHookConfiguration">> => hook_configuration(),
%%   <<"PreExtractionHookConfiguration">> => hook_configuration(),
%%   <<"RoleArn">> => string()
%% }
-type custom_document_enrichment_configuration() :: #{binary() => any()}.

%% Example:
%% git_hub_configuration() :: #{
%%   <<"ExclusionFileNamePatterns">> => list(string()),
%%   <<"ExclusionFileTypePatterns">> => list(string()),
%%   <<"ExclusionFolderNamePatterns">> => list(string()),
%%   <<"GitHubCommitConfigurationFieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"GitHubDocumentCrawlProperties">> => git_hub_document_crawl_properties(),
%%   <<"GitHubIssueAttachmentConfigurationFieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"GitHubIssueCommentConfigurationFieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"GitHubIssueDocumentConfigurationFieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"GitHubPullRequestCommentConfigurationFieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"GitHubPullRequestDocumentAttachmentConfigurationFieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"GitHubPullRequestDocumentConfigurationFieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"GitHubRepositoryConfigurationFieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"InclusionFileNamePatterns">> => list(string()),
%%   <<"InclusionFileTypePatterns">> => list(string()),
%%   <<"InclusionFolderNamePatterns">> => list(string()),
%%   <<"OnPremiseConfiguration">> => on_premise_configuration(),
%%   <<"RepositoryFilter">> => list(string()),
%%   <<"SaaSConfiguration">> => saa_s_configuration(),
%%   <<"SecretArn">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"UseChangeLog">> => boolean(),
%%   <<"VpcConfiguration">> => data_source_vpc_configuration()
%% }
-type git_hub_configuration() :: #{binary() => any()}.

%% Example:
%% member_group() :: #{
%%   <<"DataSourceId">> => string(),
%%   <<"GroupId">> => string()
%% }
-type member_group() :: #{binary() => any()}.

%% Example:
%% json_token_type_configuration() :: #{
%%   <<"GroupAttributeField">> => string(),
%%   <<"UserNameAttributeField">> => string()
%% }
-type json_token_type_configuration() :: #{binary() => any()}.

%% Example:
%% highlight() :: #{
%%   <<"BeginOffset">> => integer(),
%%   <<"EndOffset">> => integer(),
%%   <<"TopAnswer">> => boolean(),
%%   <<"Type">> => list(any())
%% }
-type highlight() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% describe_query_suggestions_config_response() :: #{
%%   <<"AttributeSuggestionsConfig">> => attribute_suggestions_describe_config(),
%%   <<"IncludeQueriesWithoutUserInformation">> => boolean(),
%%   <<"LastClearTime">> => non_neg_integer(),
%%   <<"LastSuggestionsBuildTime">> => non_neg_integer(),
%%   <<"MinimumNumberOfQueryingUsers">> => integer(),
%%   <<"MinimumQueryCount">> => integer(),
%%   <<"Mode">> => list(any()),
%%   <<"QueryLogLookBackWindowInDays">> => integer(),
%%   <<"Status">> => list(any()),
%%   <<"TotalSuggestionsCount">> => integer()
%% }
-type describe_query_suggestions_config_response() :: #{binary() => any()}.

%% Example:
%% delete_index_request() :: #{
%%   <<"Id">> := string()
%% }
-type delete_index_request() :: #{binary() => any()}.

%% Example:
%% index_configuration_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Edition">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type index_configuration_summary() :: #{binary() => any()}.

%% Example:
%% create_access_control_configuration_response() :: #{
%%   <<"Id">> => string()
%% }
-type create_access_control_configuration_response() :: #{binary() => any()}.

%% Example:
%% faq_statistics() :: #{
%%   <<"IndexedQuestionAnswersCount">> => integer()
%% }
-type faq_statistics() :: #{binary() => any()}.

%% Example:
%% user_group_resolution_configuration() :: #{
%%   <<"UserGroupResolutionMode">> => list(any())
%% }
-type user_group_resolution_configuration() :: #{binary() => any()}.

%% Example:
%% get_query_suggestions_request() :: #{
%%   <<"AttributeSuggestionsConfig">> => attribute_suggestions_get_config(),
%%   <<"IndexId">> := string(),
%%   <<"MaxSuggestionsCount">> => integer(),
%%   <<"QueryText">> := string(),
%%   <<"SuggestionTypes">> => list(list(any())())
%% }
-type get_query_suggestions_request() :: #{binary() => any()}.

%% Example:
%% create_experience_response() :: #{
%%   <<"Id">> => string()
%% }
-type create_experience_response() :: #{binary() => any()}.

%% Example:
%% document_attribute_target() :: #{
%%   <<"TargetDocumentAttributeKey">> => string(),
%%   <<"TargetDocumentAttributeValue">> => document_attribute_value(),
%%   <<"TargetDocumentAttributeValueDeletion">> => boolean()
%% }
-type document_attribute_target() :: #{binary() => any()}.

%% Example:
%% click_feedback() :: #{
%%   <<"ClickTime">> => non_neg_integer(),
%%   <<"ResultId">> => string()
%% }
-type click_feedback() :: #{binary() => any()}.

%% Example:
%% delete_query_suggestions_block_list_request() :: #{
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string()
%% }
-type delete_query_suggestions_block_list_request() :: #{binary() => any()}.

%% Example:
%% data_source_group() :: #{
%%   <<"DataSourceId">> => string(),
%%   <<"GroupId">> => string()
%% }
-type data_source_group() :: #{binary() => any()}.

%% Example:
%% resource_unavailable_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_unavailable_exception() :: #{binary() => any()}.

%% Example:
%% create_query_suggestions_block_list_response() :: #{
%%   <<"Id">> => string()
%% }
-type create_query_suggestions_block_list_response() :: #{binary() => any()}.

%% Example:
%% data_source_sync_job_metrics() :: #{
%%   <<"DocumentsAdded">> => string(),
%%   <<"DocumentsDeleted">> => string(),
%%   <<"DocumentsFailed">> => string(),
%%   <<"DocumentsModified">> => string(),
%%   <<"DocumentsScanned">> => string()
%% }
-type data_source_sync_job_metrics() :: #{binary() => any()}.

%% Example:
%% connection_configuration() :: #{
%%   <<"DatabaseHost">> => string(),
%%   <<"DatabaseName">> => string(),
%%   <<"DatabasePort">> => integer(),
%%   <<"SecretArn">> => string(),
%%   <<"TableName">> => string()
%% }
-type connection_configuration() :: #{binary() => any()}.

%% Example:
%% batch_delete_featured_results_set_error() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"Id">> => string()
%% }
-type batch_delete_featured_results_set_error() :: #{binary() => any()}.

%% Example:
%% salesforce_standard_knowledge_article_type_configuration() :: #{
%%   <<"DocumentDataFieldName">> => string(),
%%   <<"DocumentTitleFieldName">> => string(),
%%   <<"FieldMappings">> => list(data_source_to_index_field_mapping())
%% }
-type salesforce_standard_knowledge_article_type_configuration() :: #{binary() => any()}.

%% Example:
%% clear_query_suggestions_request() :: #{
%%   <<"IndexId">> := string()
%% }
-type clear_query_suggestions_request() :: #{binary() => any()}.

%% Example:
%% list_access_control_configurations_request() :: #{
%%   <<"IndexId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_access_control_configurations_request() :: #{binary() => any()}.

%% Example:
%% salesforce_standard_object_attachment_configuration() :: #{
%%   <<"DocumentTitleFieldName">> => string(),
%%   <<"FieldMappings">> => list(data_source_to_index_field_mapping())
%% }
-type salesforce_standard_object_attachment_configuration() :: #{binary() => any()}.

%% Example:
%% failed_entity() :: #{
%%   <<"EntityId">> => string(),
%%   <<"ErrorMessage">> => string()
%% }
-type failed_entity() :: #{binary() => any()}.

%% Example:
%% git_hub_document_crawl_properties() :: #{
%%   <<"CrawlIssue">> => boolean(),
%%   <<"CrawlIssueComment">> => boolean(),
%%   <<"CrawlIssueCommentAttachment">> => boolean(),
%%   <<"CrawlPullRequest">> => boolean(),
%%   <<"CrawlPullRequestComment">> => boolean(),
%%   <<"CrawlPullRequestCommentAttachment">> => boolean(),
%%   <<"CrawlRepositoryDocuments">> => boolean()
%% }
-type git_hub_document_crawl_properties() :: #{binary() => any()}.

%% Example:
%% list_experience_entities_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SummaryItems">> => list(experience_entities_summary())
%% }
-type list_experience_entities_response() :: #{binary() => any()}.

%% Example:
%% salesforce_standard_object_configuration() :: #{
%%   <<"DocumentDataFieldName">> => string(),
%%   <<"DocumentTitleFieldName">> => string(),
%%   <<"FieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"Name">> => list(any())
%% }
-type salesforce_standard_object_configuration() :: #{binary() => any()}.

%% Example:
%% document_metadata_configuration() :: #{
%%   <<"Name">> => string(),
%%   <<"Relevance">> => relevance(),
%%   <<"Search">> => search(),
%%   <<"Type">> => list(any())
%% }
-type document_metadata_configuration() :: #{binary() => any()}.

%% Example:
%% confluence_space_to_index_field_mapping() :: #{
%%   <<"DataSourceFieldName">> => list(any()),
%%   <<"DateFieldFormat">> => string(),
%%   <<"IndexFieldName">> => string()
%% }
-type confluence_space_to_index_field_mapping() :: #{binary() => any()}.

%% Example:
%% query_result() :: #{
%%   <<"FacetResults">> => list(facet_result()),
%%   <<"FeaturedResultsItems">> => list(featured_results_item()),
%%   <<"QueryId">> => string(),
%%   <<"ResultItems">> => list(query_result_item()),
%%   <<"SpellCorrectedQueries">> => list(spell_corrected_query()),
%%   <<"TotalNumberOfResults">> => integer(),
%%   <<"Warnings">> => list(warning())
%% }
-type query_result() :: #{binary() => any()}.

%% Example:
%% confluence_attachment_configuration() :: #{
%%   <<"AttachmentFieldMappings">> => list(confluence_attachment_to_index_field_mapping()),
%%   <<"CrawlAttachments">> => boolean()
%% }
-type confluence_attachment_configuration() :: #{binary() => any()}.

%% Example:
%% describe_featured_results_set_response() :: #{
%%   <<"CreationTimestamp">> => float(),
%%   <<"Description">> => string(),
%%   <<"FeaturedDocumentsMissing">> => list(featured_document_missing()),
%%   <<"FeaturedDocumentsWithMetadata">> => list(featured_document_with_metadata()),
%%   <<"FeaturedResultsSetId">> => string(),
%%   <<"FeaturedResultsSetName">> => string(),
%%   <<"LastUpdatedTimestamp">> => float(),
%%   <<"QueryTexts">> => list(string()),
%%   <<"Status">> => list(any())
%% }
-type describe_featured_results_set_response() :: #{binary() => any()}.

%% Example:
%% principal() :: #{
%%   <<"Access">> => list(any()),
%%   <<"DataSourceId">> => string(),
%%   <<"Name">> => string(),
%%   <<"Type">> => list(any())
%% }
-type principal() :: #{binary() => any()}.

%% Example:
%% describe_query_suggestions_block_list_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"FileSizeBytes">> => float(),
%%   <<"Id">> => string(),
%%   <<"IndexId">> => string(),
%%   <<"ItemCount">> => integer(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"SourceS3Path">> => s3_path(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type describe_query_suggestions_block_list_response() :: #{binary() => any()}.

%% Example:
%% delete_experience_response() :: #{

%% }
-type delete_experience_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% describe_index_request() :: #{
%%   <<"Id">> := string()
%% }
-type describe_index_request() :: #{binary() => any()}.

%% Example:
%% on_premise_configuration() :: #{
%%   <<"HostUrl">> => string(),
%%   <<"OrganizationName">> => string(),
%%   <<"SslCertificateS3Path">> => s3_path()
%% }
-type on_premise_configuration() :: #{binary() => any()}.

%% Example:
%% create_experience_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Configuration">> => experience_configuration(),
%%   <<"Description">> => string(),
%%   <<"IndexId">> := string(),
%%   <<"Name">> := string(),
%%   <<"RoleArn">> => string()
%% }
-type create_experience_request() :: #{binary() => any()}.

%% Example:
%% document_attribute_value_count_pair() :: #{
%%   <<"Count">> => integer(),
%%   <<"DocumentAttributeValue">> => document_attribute_value(),
%%   <<"FacetResults">> => list(facet_result())
%% }
-type document_attribute_value_count_pair() :: #{binary() => any()}.

%% Example:
%% describe_index_response() :: #{
%%   <<"CapacityUnits">> => capacity_units_configuration(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DocumentMetadataConfigurations">> => list(document_metadata_configuration()),
%%   <<"Edition">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"Id">> => string(),
%%   <<"IndexStatistics">> => index_statistics(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"ServerSideEncryptionConfiguration">> => server_side_encryption_configuration(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer(),
%%   <<"UserContextPolicy">> => list(any()),
%%   <<"UserGroupResolutionConfiguration">> => user_group_resolution_configuration(),
%%   <<"UserTokenConfigurations">> => list(user_token_configuration())
%% }
-type describe_index_response() :: #{binary() => any()}.

%% Example:
%% resource_already_exist_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_already_exist_exception() :: #{binary() => any()}.

%% Example:
%% table_row() :: #{
%%   <<"Cells">> => list(table_cell())
%% }
-type table_row() :: #{binary() => any()}.

%% Example:
%% disassociate_entities_from_experience_response() :: #{
%%   <<"FailedEntityList">> => list(failed_entity())
%% }
-type disassociate_entities_from_experience_response() :: #{binary() => any()}.

%% Example:
%% confluence_attachment_to_index_field_mapping() :: #{
%%   <<"DataSourceFieldName">> => list(any()),
%%   <<"DateFieldFormat">> => string(),
%%   <<"IndexFieldName">> => string()
%% }
-type confluence_attachment_to_index_field_mapping() :: #{binary() => any()}.

%% Example:
%% user_identity_configuration() :: #{
%%   <<"IdentityAttributeName">> => string()
%% }
-type user_identity_configuration() :: #{binary() => any()}.

%% Example:
%% document_attribute_condition() :: #{
%%   <<"ConditionDocumentAttributeKey">> => string(),
%%   <<"ConditionOnValue">> => document_attribute_value(),
%%   <<"Operator">> => list(any())
%% }
-type document_attribute_condition() :: #{binary() => any()}.

%% Example:
%% list_indices_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_indices_request() :: #{binary() => any()}.

%% Example:
%% salesforce_configuration() :: #{
%%   <<"ChatterFeedConfiguration">> => salesforce_chatter_feed_configuration(),
%%   <<"CrawlAttachments">> => boolean(),
%%   <<"ExcludeAttachmentFilePatterns">> => list(string()),
%%   <<"IncludeAttachmentFilePatterns">> => list(string()),
%%   <<"KnowledgeArticleConfiguration">> => salesforce_knowledge_article_configuration(),
%%   <<"SecretArn">> => string(),
%%   <<"ServerUrl">> => string(),
%%   <<"StandardObjectAttachmentConfiguration">> => salesforce_standard_object_attachment_configuration(),
%%   <<"StandardObjectConfigurations">> => list(salesforce_standard_object_configuration())
%% }
-type salesforce_configuration() :: #{binary() => any()}.

%% Example:
%% sorting_configuration() :: #{
%%   <<"DocumentAttributeKey">> => string(),
%%   <<"SortOrder">> => list(any())
%% }
-type sorting_configuration() :: #{binary() => any()}.

%% Example:
%% thesaurus_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type thesaurus_summary() :: #{binary() => any()}.

%% Example:
%% list_thesauri_request() :: #{
%%   <<"IndexId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_thesauri_request() :: #{binary() => any()}.

%% Example:
%% additional_result_attribute() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => additional_result_attribute_value(),
%%   <<"ValueType">> => list(any())
%% }
-type additional_result_attribute() :: #{binary() => any()}.

%% Example:
%% describe_data_source_response() :: #{
%%   <<"Configuration">> => data_source_configuration(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CustomDocumentEnrichmentConfiguration">> => custom_document_enrichment_configuration(),
%%   <<"Description">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"Id">> => string(),
%%   <<"IndexId">> => string(),
%%   <<"LanguageCode">> => string(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Schedule">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer(),
%%   <<"VpcConfiguration">> => data_source_vpc_configuration()
%% }
-type describe_data_source_response() :: #{binary() => any()}.

%% Example:
%% confluence_configuration() :: #{
%%   <<"AttachmentConfiguration">> => confluence_attachment_configuration(),
%%   <<"AuthenticationType">> => list(any()),
%%   <<"BlogConfiguration">> => confluence_blog_configuration(),
%%   <<"ExclusionPatterns">> => list(string()),
%%   <<"InclusionPatterns">> => list(string()),
%%   <<"PageConfiguration">> => confluence_page_configuration(),
%%   <<"ProxyConfiguration">> => proxy_configuration(),
%%   <<"SecretArn">> => string(),
%%   <<"ServerUrl">> => string(),
%%   <<"SpaceConfiguration">> => confluence_space_configuration(),
%%   <<"Version">> => list(any()),
%%   <<"VpcConfiguration">> => data_source_vpc_configuration()
%% }
-type confluence_configuration() :: #{binary() => any()}.

%% Example:
%% sql_configuration() :: #{
%%   <<"QueryIdentifiersEnclosingOption">> => list(any())
%% }
-type sql_configuration() :: #{binary() => any()}.

%% Example:
%% describe_featured_results_set_request() :: #{
%%   <<"FeaturedResultsSetId">> := string(),
%%   <<"IndexId">> := string()
%% }
-type describe_featured_results_set_request() :: #{binary() => any()}.

%% Example:
%% search() :: #{
%%   <<"Displayable">> => boolean(),
%%   <<"Facetable">> => boolean(),
%%   <<"Searchable">> => boolean(),
%%   <<"Sortable">> => boolean()
%% }
-type search() :: #{binary() => any()}.

%% Example:
%% collapse_configuration() :: #{
%%   <<"DocumentAttributeKey">> => string(),
%%   <<"Expand">> => boolean(),
%%   <<"ExpandConfiguration">> => expand_configuration(),
%%   <<"MissingAttributeKeyStrategy">> => list(any()),
%%   <<"SortingConfigurations">> => list(sorting_configuration())
%% }
-type collapse_configuration() :: #{binary() => any()}.

%% Example:
%% experiences_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Endpoints">> => list(experience_endpoint()),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type experiences_summary() :: #{binary() => any()}.

%% Example:
%% entity_display_data() :: #{
%%   <<"FirstName">> => string(),
%%   <<"GroupName">> => string(),
%%   <<"IdentifiedUserName">> => string(),
%%   <<"LastName">> => string(),
%%   <<"UserName">> => string()
%% }
-type entity_display_data() :: #{binary() => any()}.

%% Example:
%% basic_authentication_configuration() :: #{
%%   <<"Credentials">> => string(),
%%   <<"Host">> => string(),
%%   <<"Port">> => integer()
%% }
-type basic_authentication_configuration() :: #{binary() => any()}.

%% Example:
%% list_groups_older_than_ordering_id_request() :: #{
%%   <<"DataSourceId">> => string(),
%%   <<"IndexId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrderingId">> := float()
%% }
-type list_groups_older_than_ordering_id_request() :: #{binary() => any()}.

%% Example:
%% slack_configuration() :: #{
%%   <<"CrawlBotMessage">> => boolean(),
%%   <<"ExcludeArchived">> => boolean(),
%%   <<"ExclusionPatterns">> => list(string()),
%%   <<"FieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"InclusionPatterns">> => list(string()),
%%   <<"LookBackPeriod">> => integer(),
%%   <<"PrivateChannelFilter">> => list(string()),
%%   <<"PublicChannelFilter">> => list(string()),
%%   <<"SecretArn">> => string(),
%%   <<"SinceCrawlDate">> => string(),
%%   <<"SlackEntityList">> => list(list(any())()),
%%   <<"TeamId">> => string(),
%%   <<"UseChangeLog">> => boolean(),
%%   <<"VpcConfiguration">> => data_source_vpc_configuration()
%% }
-type slack_configuration() :: #{binary() => any()}.

%% Example:
%% list_data_sources_request() :: #{
%%   <<"IndexId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_data_sources_request() :: #{binary() => any()}.

%% Example:
%% list_experiences_request() :: #{
%%   <<"IndexId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_experiences_request() :: #{binary() => any()}.

%% Example:
%% query_suggestions_block_list_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"ItemCount">> => integer(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type query_suggestions_block_list_summary() :: #{binary() => any()}.

%% Example:
%% update_access_control_configuration_response() :: #{

%% }
-type update_access_control_configuration_response() :: #{binary() => any()}.

%% Example:
%% describe_query_suggestions_block_list_request() :: #{
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string()
%% }
-type describe_query_suggestions_block_list_request() :: #{binary() => any()}.

%% Example:
%% personas_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"EntityId">> => string(),
%%   <<"Persona">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type personas_summary() :: #{binary() => any()}.

%% Example:
%% relevance_feedback() :: #{
%%   <<"RelevanceValue">> => list(any()),
%%   <<"ResultId">> => string()
%% }
-type relevance_feedback() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% start_data_source_sync_job_request() :: #{
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string()
%% }
-type start_data_source_sync_job_request() :: #{binary() => any()}.

%% Example:
%% featured_document() :: #{
%%   <<"Id">> => string()
%% }
-type featured_document() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% work_docs_configuration() :: #{
%%   <<"CrawlComments">> => boolean(),
%%   <<"ExclusionPatterns">> => list(string()),
%%   <<"FieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"InclusionPatterns">> => list(string()),
%%   <<"OrganizationId">> => string(),
%%   <<"UseChangeLog">> => boolean()
%% }
-type work_docs_configuration() :: #{binary() => any()}.

%% Example:
%% delete_principal_mapping_request() :: #{
%%   <<"DataSourceId">> => string(),
%%   <<"GroupId">> := string(),
%%   <<"IndexId">> := string(),
%%   <<"OrderingId">> => float()
%% }
-type delete_principal_mapping_request() :: #{binary() => any()}.

%% Example:
%% start_data_source_sync_job_response() :: #{
%%   <<"ExecutionId">> => string()
%% }
-type start_data_source_sync_job_response() :: #{binary() => any()}.

%% Example:
%% attribute_suggestions_describe_config() :: #{
%%   <<"AttributeSuggestionsMode">> => list(any()),
%%   <<"SuggestableConfigList">> => list(suggestable_config())
%% }
-type attribute_suggestions_describe_config() :: #{binary() => any()}.

%% Example:
%% describe_access_control_configuration_request() :: #{
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string()
%% }
-type describe_access_control_configuration_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% capacity_units_configuration() :: #{
%%   <<"QueryCapacityUnits">> => integer(),
%%   <<"StorageCapacityUnits">> => integer()
%% }
-type capacity_units_configuration() :: #{binary() => any()}.

%% Example:
%% get_snapshots_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SnapShotTimeFilter">> => time_range(),
%%   <<"SnapshotsData">> => list(list(string())()),
%%   <<"SnapshotsDataHeader">> => list(string())
%% }
-type get_snapshots_response() :: #{binary() => any()}.

%% Example:
%% invalid_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.

%% Example:
%% salesforce_custom_knowledge_article_type_configuration() :: #{
%%   <<"DocumentDataFieldName">> => string(),
%%   <<"DocumentTitleFieldName">> => string(),
%%   <<"FieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"Name">> => string()
%% }
-type salesforce_custom_knowledge_article_type_configuration() :: #{binary() => any()}.

%% Example:
%% batch_delete_document_response() :: #{
%%   <<"FailedDocuments">> => list(batch_delete_document_response_failed_document())
%% }
-type batch_delete_document_response() :: #{binary() => any()}.

%% Example:
%% get_query_suggestions_response() :: #{
%%   <<"QuerySuggestionsId">> => string(),
%%   <<"Suggestions">> => list(suggestion())
%% }
-type get_query_suggestions_response() :: #{binary() => any()}.

%% Example:
%% member_user() :: #{
%%   <<"UserId">> => string()
%% }
-type member_user() :: #{binary() => any()}.

%% Example:
%% experience_configuration() :: #{
%%   <<"ContentSourceConfiguration">> => content_source_configuration(),
%%   <<"UserIdentityConfiguration">> => user_identity_configuration()
%% }
-type experience_configuration() :: #{binary() => any()}.

%% Example:
%% table_excerpt() :: #{
%%   <<"Rows">> => list(table_row()),
%%   <<"TotalNumberOfRows">> => integer()
%% }
-type table_excerpt() :: #{binary() => any()}.

%% Example:
%% salesforce_chatter_feed_configuration() :: #{
%%   <<"DocumentDataFieldName">> => string(),
%%   <<"DocumentTitleFieldName">> => string(),
%%   <<"FieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"IncludeFilterTypes">> => list(list(any())())
%% }
-type salesforce_chatter_feed_configuration() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% access_control_list_configuration() :: #{
%%   <<"KeyPath">> => string()
%% }
-type access_control_list_configuration() :: #{binary() => any()}.

%% Example:
%% featured_results_conflict_exception() :: #{
%%   <<"ConflictingItems">> => list(conflicting_item()),
%%   <<"Message">> => string()
%% }
-type featured_results_conflict_exception() :: #{binary() => any()}.

%% Example:
%% create_query_suggestions_block_list_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"IndexId">> := string(),
%%   <<"Name">> := string(),
%%   <<"RoleArn">> := string(),
%%   <<"SourceS3Path">> := s3_path(),
%%   <<"Tags">> => list(tag())
%% }
-type create_query_suggestions_block_list_request() :: #{binary() => any()}.

%% Example:
%% group_ordering_id_summary() :: #{
%%   <<"FailureReason">> => string(),
%%   <<"LastUpdatedAt">> => non_neg_integer(),
%%   <<"OrderingId">> => float(),
%%   <<"ReceivedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type group_ordering_id_summary() :: #{binary() => any()}.

%% Example:
%% update_featured_results_set_request() :: #{
%%   <<"Description">> => string(),
%%   <<"FeaturedDocuments">> => list(featured_document()),
%%   <<"FeaturedResultsSetId">> := string(),
%%   <<"FeaturedResultsSetName">> => string(),
%%   <<"IndexId">> := string(),
%%   <<"QueryTexts">> => list(string()),
%%   <<"Status">> => list(any())
%% }
-type update_featured_results_set_request() :: #{binary() => any()}.

%% Example:
%% inline_custom_document_enrichment_configuration() :: #{
%%   <<"Condition">> => document_attribute_condition(),
%%   <<"DocumentContentDeletion">> => boolean(),
%%   <<"Target">> => document_attribute_target()
%% }
-type inline_custom_document_enrichment_configuration() :: #{binary() => any()}.

%% Example:
%% list_data_sources_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SummaryItems">> => list(data_source_summary())
%% }
-type list_data_sources_response() :: #{binary() => any()}.

%% Example:
%% delete_data_source_request() :: #{
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string()
%% }
-type delete_data_source_request() :: #{binary() => any()}.

%% Example:
%% google_drive_configuration() :: #{
%%   <<"ExcludeMimeTypes">> => list(string()),
%%   <<"ExcludeSharedDrives">> => list(string()),
%%   <<"ExcludeUserAccounts">> => list(string()),
%%   <<"ExclusionPatterns">> => list(string()),
%%   <<"FieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"InclusionPatterns">> => list(string()),
%%   <<"SecretArn">> => string()
%% }
-type google_drive_configuration() :: #{binary() => any()}.

%% Example:
%% update_featured_results_set_response() :: #{
%%   <<"FeaturedResultsSet">> => featured_results_set()
%% }
-type update_featured_results_set_response() :: #{binary() => any()}.

%% Example:
%% seed_url_configuration() :: #{
%%   <<"SeedUrls">> => list(string()),
%%   <<"WebCrawlerMode">> => list(any())
%% }
-type seed_url_configuration() :: #{binary() => any()}.

%% Example:
%% retrieve_result() :: #{
%%   <<"QueryId">> => string(),
%%   <<"ResultItems">> => list(retrieve_result_item())
%% }
-type retrieve_result() :: #{binary() => any()}.

%% Example:
%% delete_thesaurus_request() :: #{
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string()
%% }
-type delete_thesaurus_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% list_access_control_configurations_response() :: #{
%%   <<"AccessControlConfigurations">> => list(access_control_configuration_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_access_control_configurations_response() :: #{binary() => any()}.

%% Example:
%% experience_entities_summary() :: #{
%%   <<"DisplayData">> => entity_display_data(),
%%   <<"EntityId">> => string(),
%%   <<"EntityType">> => list(any())
%% }
-type experience_entities_summary() :: #{binary() => any()}.

%% Example:
%% share_point_configuration() :: #{
%%   <<"AuthenticationType">> => list(any()),
%%   <<"CrawlAttachments">> => boolean(),
%%   <<"DisableLocalGroups">> => boolean(),
%%   <<"DocumentTitleFieldName">> => string(),
%%   <<"ExclusionPatterns">> => list(string()),
%%   <<"FieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"InclusionPatterns">> => list(string()),
%%   <<"ProxyConfiguration">> => proxy_configuration(),
%%   <<"SecretArn">> => string(),
%%   <<"SharePointVersion">> => list(any()),
%%   <<"SslCertificateS3Path">> => s3_path(),
%%   <<"Urls">> => list(string()),
%%   <<"UseChangeLog">> => boolean(),
%%   <<"VpcConfiguration">> => data_source_vpc_configuration()
%% }
-type share_point_configuration() :: #{binary() => any()}.

%% Example:
%% suggestable_config() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"Suggestable">> => boolean()
%% }
-type suggestable_config() :: #{binary() => any()}.

%% Example:
%% create_thesaurus_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"IndexId">> := string(),
%%   <<"Name">> := string(),
%%   <<"RoleArn">> := string(),
%%   <<"SourceS3Path">> := s3_path(),
%%   <<"Tags">> => list(tag())
%% }
-type create_thesaurus_request() :: #{binary() => any()}.

%% Example:
%% hook_configuration() :: #{
%%   <<"InvocationCondition">> => document_attribute_condition(),
%%   <<"LambdaArn">> => string(),
%%   <<"S3Bucket">> => string()
%% }
-type hook_configuration() :: #{binary() => any()}.

%% Example:
%% data_source_to_index_field_mapping() :: #{
%%   <<"DataSourceFieldName">> => string(),
%%   <<"DateFieldFormat">> => string(),
%%   <<"IndexFieldName">> => string()
%% }
-type data_source_to_index_field_mapping() :: #{binary() => any()}.

%% Example:
%% spell_corrected_query() :: #{
%%   <<"Corrections">> => list(correction()),
%%   <<"SuggestedQueryText">> => string()
%% }
-type spell_corrected_query() :: #{binary() => any()}.

%% Example:
%% create_featured_results_set_response() :: #{
%%   <<"FeaturedResultsSet">> => featured_results_set()
%% }
-type create_featured_results_set_response() :: #{binary() => any()}.

%% Example:
%% urls() :: #{
%%   <<"SeedUrlConfiguration">> => seed_url_configuration(),
%%   <<"SiteMapsConfiguration">> => site_maps_configuration()
%% }
-type urls() :: #{binary() => any()}.

%% Example:
%% expanded_result_item() :: #{
%%   <<"DocumentAttributes">> => list(document_attribute()),
%%   <<"DocumentExcerpt">> => text_with_highlights(),
%%   <<"DocumentId">> => string(),
%%   <<"DocumentTitle">> => text_with_highlights(),
%%   <<"DocumentURI">> => string(),
%%   <<"Id">> => string()
%% }
-type expanded_result_item() :: #{binary() => any()}.

%% Example:
%% list_indices_response() :: #{
%%   <<"IndexConfigurationSummaryItems">> => list(index_configuration_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_indices_response() :: #{binary() => any()}.

%% Example:
%% user_token_configuration() :: #{
%%   <<"JsonTokenTypeConfiguration">> => json_token_type_configuration(),
%%   <<"JwtTokenTypeConfiguration">> => jwt_token_type_configuration()
%% }
-type user_token_configuration() :: #{binary() => any()}.

%% Example:
%% data_source_sync_job() :: #{
%%   <<"DataSourceErrorCode">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"ExecutionId">> => string(),
%%   <<"Metrics">> => data_source_sync_job_metrics(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type data_source_sync_job() :: #{binary() => any()}.

%% Example:
%% featured_document_with_metadata() :: #{
%%   <<"Id">> => string(),
%%   <<"Title">> => string(),
%%   <<"URI">> => string()
%% }
-type featured_document_with_metadata() :: #{binary() => any()}.

%% Example:
%% describe_thesaurus_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"FileSizeBytes">> => float(),
%%   <<"Id">> => string(),
%%   <<"IndexId">> => string(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"SourceS3Path">> => s3_path(),
%%   <<"Status">> => list(any()),
%%   <<"SynonymRuleCount">> => float(),
%%   <<"TermCount">> => float(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type describe_thesaurus_response() :: #{binary() => any()}.

%% Example:
%% batch_delete_featured_results_set_response() :: #{
%%   <<"Errors">> => list(batch_delete_featured_results_set_error())
%% }
-type batch_delete_featured_results_set_response() :: #{binary() => any()}.

%% Example:
%% server_side_encryption_configuration() :: #{
%%   <<"KmsKeyId">> => string()
%% }
-type server_side_encryption_configuration() :: #{binary() => any()}.

%% Example:
%% stop_data_source_sync_job_request() :: #{
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string()
%% }
-type stop_data_source_sync_job_request() :: #{binary() => any()}.

%% Example:
%% delete_faq_request() :: #{
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string()
%% }
-type delete_faq_request() :: #{binary() => any()}.

%% Example:
%% suggestion_text_with_highlights() :: #{
%%   <<"Highlights">> => list(suggestion_highlight()),
%%   <<"Text">> => string()
%% }
-type suggestion_text_with_highlights() :: #{binary() => any()}.

%% Example:
%% fsx_configuration() :: #{
%%   <<"ExclusionPatterns">> => list(string()),
%%   <<"FieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"FileSystemId">> => string(),
%%   <<"FileSystemType">> => list(any()),
%%   <<"InclusionPatterns">> => list(string()),
%%   <<"SecretArn">> => string(),
%%   <<"VpcConfiguration">> => data_source_vpc_configuration()
%% }
-type fsx_configuration() :: #{binary() => any()}.

%% Example:
%% score_attributes() :: #{
%%   <<"ScoreConfidence">> => list(any())
%% }
-type score_attributes() :: #{binary() => any()}.

%% Example:
%% describe_principal_mapping_request() :: #{
%%   <<"DataSourceId">> => string(),
%%   <<"GroupId">> := string(),
%%   <<"IndexId">> := string()
%% }
-type describe_principal_mapping_request() :: #{binary() => any()}.

%% Example:
%% source_document() :: #{
%%   <<"AdditionalAttributes">> => list(document_attribute()),
%%   <<"DocumentId">> => string(),
%%   <<"SuggestionAttributes">> => list(string())
%% }
-type source_document() :: #{binary() => any()}.

%% Example:
%% describe_faq_request() :: #{
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string()
%% }
-type describe_faq_request() :: #{binary() => any()}.

%% Example:
%% batch_delete_document_response_failed_document() :: #{
%%   <<"DataSourceId">> => string(),
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"Id">> => string()
%% }
-type batch_delete_document_response_failed_document() :: #{binary() => any()}.

%% Example:
%% service_now_configuration() :: #{
%%   <<"AuthenticationType">> => list(any()),
%%   <<"HostUrl">> => string(),
%%   <<"KnowledgeArticleConfiguration">> => service_now_knowledge_article_configuration(),
%%   <<"SecretArn">> => string(),
%%   <<"ServiceCatalogConfiguration">> => service_now_service_catalog_configuration(),
%%   <<"ServiceNowBuildVersion">> => list(any())
%% }
-type service_now_configuration() :: #{binary() => any()}.

%% Example:
%% service_now_service_catalog_configuration() :: #{
%%   <<"CrawlAttachments">> => boolean(),
%%   <<"DocumentDataFieldName">> => string(),
%%   <<"DocumentTitleFieldName">> => string(),
%%   <<"ExcludeAttachmentFilePatterns">> => list(string()),
%%   <<"FieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"IncludeAttachmentFilePatterns">> => list(string())
%% }
-type service_now_service_catalog_configuration() :: #{binary() => any()}.

%% Example:
%% attribute_suggestions_update_config() :: #{
%%   <<"AttributeSuggestionsMode">> => list(any()),
%%   <<"SuggestableConfigList">> => list(suggestable_config())
%% }
-type attribute_suggestions_update_config() :: #{binary() => any()}.

%% Example:
%% web_crawler_configuration() :: #{
%%   <<"AuthenticationConfiguration">> => authentication_configuration(),
%%   <<"CrawlDepth">> => integer(),
%%   <<"MaxContentSizePerPageInMegaBytes">> => float(),
%%   <<"MaxLinksPerPage">> => integer(),
%%   <<"MaxUrlsPerMinuteCrawlRate">> => integer(),
%%   <<"ProxyConfiguration">> => proxy_configuration(),
%%   <<"UrlExclusionPatterns">> => list(string()),
%%   <<"UrlInclusionPatterns">> => list(string()),
%%   <<"Urls">> => urls()
%% }
-type web_crawler_configuration() :: #{binary() => any()}.

%% Example:
%% additional_result_attribute_value() :: #{
%%   <<"TextWithHighlightsValue">> => text_with_highlights()
%% }
-type additional_result_attribute_value() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% facet_result() :: #{
%%   <<"DocumentAttributeKey">> => string(),
%%   <<"DocumentAttributeValueCountPairs">> => list(document_attribute_value_count_pair()),
%%   <<"DocumentAttributeValueType">> => list(any())
%% }
-type facet_result() :: #{binary() => any()}.

%% Example:
%% list_experiences_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SummaryItems">> => list(experiences_summary())
%% }
-type list_experiences_response() :: #{binary() => any()}.

%% Example:
%% create_data_source_response() :: #{
%%   <<"Id">> => string()
%% }
-type create_data_source_response() :: #{binary() => any()}.

%% Example:
%% batch_delete_document_request() :: #{
%%   <<"DataSourceSyncJobMetricTarget">> => data_source_sync_job_metric_target(),
%%   <<"DocumentIdList">> := list(string()),
%%   <<"IndexId">> := string()
%% }
-type batch_delete_document_request() :: #{binary() => any()}.

%% Example:
%% data_source_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"LanguageCode">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type data_source_summary() :: #{binary() => any()}.

%% Example:
%% batch_put_document_response() :: #{
%%   <<"FailedDocuments">> => list(batch_put_document_response_failed_document())
%% }
-type batch_put_document_response() :: #{binary() => any()}.

%% Example:
%% list_entity_personas_request() :: #{
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_entity_personas_request() :: #{binary() => any()}.

%% Example:
%% suggestion() :: #{
%%   <<"Id">> => string(),
%%   <<"SourceDocuments">> => list(source_document()),
%%   <<"Value">> => suggestion_value()
%% }
-type suggestion() :: #{binary() => any()}.

%% Example:
%% batch_delete_featured_results_set_request() :: #{
%%   <<"FeaturedResultsSetIds">> := list(string()),
%%   <<"IndexId">> := string()
%% }
-type batch_delete_featured_results_set_request() :: #{binary() => any()}.

%% Example:
%% create_index_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"Edition">> => list(any()),
%%   <<"Name">> := string(),
%%   <<"RoleArn">> := string(),
%%   <<"ServerSideEncryptionConfiguration">> => server_side_encryption_configuration(),
%%   <<"Tags">> => list(tag()),
%%   <<"UserContextPolicy">> => list(any()),
%%   <<"UserGroupResolutionConfiguration">> => user_group_resolution_configuration(),
%%   <<"UserTokenConfigurations">> => list(user_token_configuration())
%% }
-type create_index_request() :: #{binary() => any()}.

%% Example:
%% update_index_request() :: #{
%%   <<"CapacityUnits">> => capacity_units_configuration(),
%%   <<"Description">> => string(),
%%   <<"DocumentMetadataConfigurationUpdates">> => list(document_metadata_configuration()),
%%   <<"Id">> := string(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"UserContextPolicy">> => list(any()),
%%   <<"UserGroupResolutionConfiguration">> => user_group_resolution_configuration(),
%%   <<"UserTokenConfigurations">> => list(user_token_configuration())
%% }
-type update_index_request() :: #{binary() => any()}.

%% Example:
%% column_configuration() :: #{
%%   <<"ChangeDetectingColumns">> => list(string()),
%%   <<"DocumentDataColumnName">> => string(),
%%   <<"DocumentIdColumnName">> => string(),
%%   <<"DocumentTitleColumnName">> => string(),
%%   <<"FieldMappings">> => list(data_source_to_index_field_mapping())
%% }
-type column_configuration() :: #{binary() => any()}.

%% Example:
%% hierarchical_principal() :: #{
%%   <<"PrincipalList">> => list(principal())
%% }
-type hierarchical_principal() :: #{binary() => any()}.

%% Example:
%% warning() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type warning() :: #{binary() => any()}.

%% Example:
%% time_range() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type time_range() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% service_now_knowledge_article_configuration() :: #{
%%   <<"CrawlAttachments">> => boolean(),
%%   <<"DocumentDataFieldName">> => string(),
%%   <<"DocumentTitleFieldName">> => string(),
%%   <<"ExcludeAttachmentFilePatterns">> => list(string()),
%%   <<"FieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"FilterQuery">> => string(),
%%   <<"IncludeAttachmentFilePatterns">> => list(string())
%% }
-type service_now_knowledge_article_configuration() :: #{binary() => any()}.

%% Example:
%% delete_access_control_configuration_response() :: #{

%% }
-type delete_access_control_configuration_response() :: #{binary() => any()}.

%% Example:
%% put_principal_mapping_request() :: #{
%%   <<"DataSourceId">> => string(),
%%   <<"GroupId">> := string(),
%%   <<"GroupMembers">> := group_members(),
%%   <<"IndexId">> := string(),
%%   <<"OrderingId">> => float(),
%%   <<"RoleArn">> => string()
%% }
-type put_principal_mapping_request() :: #{binary() => any()}.

%% Example:
%% describe_thesaurus_request() :: #{
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string()
%% }
-type describe_thesaurus_request() :: #{binary() => any()}.

%% Example:
%% document_attribute_value() :: #{
%%   <<"DateValue">> => non_neg_integer(),
%%   <<"LongValue">> => float(),
%%   <<"StringListValue">> => list(string()),
%%   <<"StringValue">> => string()
%% }
-type document_attribute_value() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% create_faq_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"FileFormat">> => list(any()),
%%   <<"IndexId">> := string(),
%%   <<"LanguageCode">> => string(),
%%   <<"Name">> := string(),
%%   <<"RoleArn">> := string(),
%%   <<"S3Path">> := s3_path(),
%%   <<"Tags">> => list(tag())
%% }
-type create_faq_request() :: #{binary() => any()}.

%% Example:
%% experience_endpoint() :: #{
%%   <<"Endpoint">> => string(),
%%   <<"EndpointType">> => list(any())
%% }
-type experience_endpoint() :: #{binary() => any()}.

%% Example:
%% correction() :: #{
%%   <<"BeginOffset">> => integer(),
%%   <<"CorrectedTerm">> => string(),
%%   <<"EndOffset">> => integer(),
%%   <<"Term">> => string()
%% }
-type correction() :: #{binary() => any()}.

%% Example:
%% entity_configuration() :: #{
%%   <<"EntityId">> => string(),
%%   <<"EntityType">> => list(any())
%% }
-type entity_configuration() :: #{binary() => any()}.

%% Example:
%% suggestion_highlight() :: #{
%%   <<"BeginOffset">> => integer(),
%%   <<"EndOffset">> => integer()
%% }
-type suggestion_highlight() :: #{binary() => any()}.

%% Example:
%% relevance() :: #{
%%   <<"Duration">> => string(),
%%   <<"Freshness">> => boolean(),
%%   <<"Importance">> => integer(),
%%   <<"RankOrder">> => list(any()),
%%   <<"ValueImportanceMap">> => map()
%% }
-type relevance() :: #{binary() => any()}.

%% Example:
%% featured_document_missing() :: #{
%%   <<"Id">> => string()
%% }
-type featured_document_missing() :: #{binary() => any()}.

%% Example:
%% disassociate_personas_from_entities_response() :: #{
%%   <<"FailedEntityList">> => list(failed_entity())
%% }
-type disassociate_personas_from_entities_response() :: #{binary() => any()}.

%% Example:
%% documents_metadata_configuration() :: #{
%%   <<"S3Prefix">> => string()
%% }
-type documents_metadata_configuration() :: #{binary() => any()}.

%% Example:
%% get_snapshots_request() :: #{
%%   <<"IndexId">> := string(),
%%   <<"Interval">> := list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"MetricType">> := list(any()),
%%   <<"NextToken">> => string()
%% }
-type get_snapshots_request() :: #{binary() => any()}.

%% Example:
%% list_featured_results_sets_request() :: #{
%%   <<"IndexId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_featured_results_sets_request() :: #{binary() => any()}.

%% Example:
%% describe_experience_response() :: #{
%%   <<"Configuration">> => experience_configuration(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Endpoints">> => list(experience_endpoint()),
%%   <<"ErrorMessage">> => string(),
%%   <<"Id">> => string(),
%%   <<"IndexId">> => string(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type describe_experience_response() :: #{binary() => any()}.

%% Example:
%% associate_entities_to_experience_request() :: #{
%%   <<"EntityList">> := list(entity_configuration()),
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string()
%% }
-type associate_entities_to_experience_request() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% jwt_token_type_configuration() :: #{
%%   <<"ClaimRegex">> => string(),
%%   <<"GroupAttributeField">> => string(),
%%   <<"Issuer">> => string(),
%%   <<"KeyLocation">> => list(any()),
%%   <<"SecretManagerArn">> => string(),
%%   <<"URL">> => string(),
%%   <<"UserNameAttributeField">> => string()
%% }
-type jwt_token_type_configuration() :: #{binary() => any()}.

%% Example:
%% describe_access_control_configuration_response() :: #{
%%   <<"AccessControlList">> => list(principal()),
%%   <<"Description">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"HierarchicalAccessControlList">> => list(hierarchical_principal()),
%%   <<"Name">> => string()
%% }
-type describe_access_control_configuration_response() :: #{binary() => any()}.

%% Example:
%% template_configuration() :: #{
%%   <<"Template">> => any()
%% }
-type template_configuration() :: #{binary() => any()}.

%% Example:
%% facet() :: #{
%%   <<"DocumentAttributeKey">> => string(),
%%   <<"Facets">> => list(facet()),
%%   <<"MaxResults">> => integer()
%% }
-type facet() :: #{binary() => any()}.

%% Example:
%% update_data_source_request() :: #{
%%   <<"Configuration">> => data_source_configuration(),
%%   <<"CustomDocumentEnrichmentConfiguration">> => custom_document_enrichment_configuration(),
%%   <<"Description">> => string(),
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string(),
%%   <<"LanguageCode">> => string(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Schedule">> => string(),
%%   <<"VpcConfiguration">> => data_source_vpc_configuration()
%% }
-type update_data_source_request() :: #{binary() => any()}.

%% Example:
%% expand_configuration() :: #{
%%   <<"MaxExpandedResultsPerItem">> => integer(),
%%   <<"MaxResultItemsToExpand">> => integer()
%% }
-type expand_configuration() :: #{binary() => any()}.

%% Example:
%% batch_put_document_request() :: #{
%%   <<"CustomDocumentEnrichmentConfiguration">> => custom_document_enrichment_configuration(),
%%   <<"Documents">> := list(document()),
%%   <<"IndexId">> := string(),
%%   <<"RoleArn">> => string()
%% }
-type batch_put_document_request() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% list_experience_entities_request() :: #{
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string(),
%%   <<"NextToken">> => string()
%% }
-type list_experience_entities_request() :: #{binary() => any()}.

%% Example:
%% group_members() :: #{
%%   <<"MemberGroups">> => list(member_group()),
%%   <<"MemberUsers">> => list(member_user()),
%%   <<"S3PathforGroupMembers">> => s3_path()
%% }
-type group_members() :: #{binary() => any()}.

%% Example:
%% confluence_blog_to_index_field_mapping() :: #{
%%   <<"DataSourceFieldName">> => list(any()),
%%   <<"DateFieldFormat">> => string(),
%%   <<"IndexFieldName">> => string()
%% }
-type confluence_blog_to_index_field_mapping() :: #{binary() => any()}.

%% Example:
%% describe_faq_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"FileFormat">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"IndexId">> => string(),
%%   <<"LanguageCode">> => string(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"S3Path">> => s3_path(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type describe_faq_response() :: #{binary() => any()}.

%% Example:
%% list_data_source_sync_jobs_response() :: #{
%%   <<"History">> => list(data_source_sync_job()),
%%   <<"NextToken">> => string()
%% }
-type list_data_source_sync_jobs_response() :: #{binary() => any()}.

%% Example:
%% submit_feedback_request() :: #{
%%   <<"ClickFeedbackItems">> => list(click_feedback()),
%%   <<"IndexId">> := string(),
%%   <<"QueryId">> := string(),
%%   <<"RelevanceFeedbackItems">> => list(relevance_feedback())
%% }
-type submit_feedback_request() :: #{binary() => any()}.

%% Example:
%% jira_configuration() :: #{
%%   <<"AttachmentFieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"CommentFieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"ExclusionPatterns">> => list(string()),
%%   <<"InclusionPatterns">> => list(string()),
%%   <<"IssueFieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"IssueSubEntityFilter">> => list(list(any())()),
%%   <<"IssueType">> => list(string()),
%%   <<"JiraAccountUrl">> => string(),
%%   <<"Project">> => list(string()),
%%   <<"ProjectFieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"SecretArn">> => string(),
%%   <<"Status">> => list(string()),
%%   <<"UseChangeLog">> => boolean(),
%%   <<"VpcConfiguration">> => data_source_vpc_configuration(),
%%   <<"WorkLogFieldMappings">> => list(data_source_to_index_field_mapping())
%% }
-type jira_configuration() :: #{binary() => any()}.

%% Example:
%% quip_configuration() :: #{
%%   <<"AttachmentFieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"CrawlAttachments">> => boolean(),
%%   <<"CrawlChatRooms">> => boolean(),
%%   <<"CrawlFileComments">> => boolean(),
%%   <<"Domain">> => string(),
%%   <<"ExclusionPatterns">> => list(string()),
%%   <<"FolderIds">> => list(string()),
%%   <<"InclusionPatterns">> => list(string()),
%%   <<"MessageFieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"SecretArn">> => string(),
%%   <<"ThreadFieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"VpcConfiguration">> => data_source_vpc_configuration()
%% }
-type quip_configuration() :: #{binary() => any()}.

%% Example:
%% list_groups_older_than_ordering_id_response() :: #{
%%   <<"GroupsSummaries">> => list(group_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_groups_older_than_ordering_id_response() :: #{binary() => any()}.

%% Example:
%% confluence_space_configuration() :: #{
%%   <<"CrawlArchivedSpaces">> => boolean(),
%%   <<"CrawlPersonalSpaces">> => boolean(),
%%   <<"ExcludeSpaces">> => list(string()),
%%   <<"IncludeSpaces">> => list(string()),
%%   <<"SpaceFieldMappings">> => list(confluence_space_to_index_field_mapping())
%% }
-type confluence_space_configuration() :: #{binary() => any()}.

%% Example:
%% associate_personas_to_entities_response() :: #{
%%   <<"FailedEntityList">> => list(failed_entity())
%% }
-type associate_personas_to_entities_response() :: #{binary() => any()}.

%% Example:
%% batch_get_document_status_response_error() :: #{
%%   <<"DataSourceId">> => string(),
%%   <<"DocumentId">> => string(),
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string()
%% }
-type batch_get_document_status_response_error() :: #{binary() => any()}.

%% Example:
%% attribute_filter() :: #{
%%   <<"AndAllFilters">> => list(attribute_filter()),
%%   <<"ContainsAll">> => document_attribute(),
%%   <<"ContainsAny">> => document_attribute(),
%%   <<"EqualsTo">> => document_attribute(),
%%   <<"GreaterThan">> => document_attribute(),
%%   <<"GreaterThanOrEquals">> => document_attribute(),
%%   <<"LessThan">> => document_attribute(),
%%   <<"LessThanOrEquals">> => document_attribute(),
%%   <<"NotFilter">> => attribute_filter(),
%%   <<"OrAllFilters">> => list(attribute_filter())
%% }
-type attribute_filter() :: #{binary() => any()}.

%% Example:
%% list_data_source_sync_jobs_request() :: #{
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StartTimeFilter">> => time_range(),
%%   <<"StatusFilter">> => list(any())
%% }
-type list_data_source_sync_jobs_request() :: #{binary() => any()}.

%% Example:
%% describe_principal_mapping_response() :: #{
%%   <<"DataSourceId">> => string(),
%%   <<"GroupId">> => string(),
%%   <<"GroupOrderingIdSummaries">> => list(group_ordering_id_summary()),
%%   <<"IndexId">> => string()
%% }
-type describe_principal_mapping_response() :: #{binary() => any()}.

%% Example:
%% featured_results_set() :: #{
%%   <<"CreationTimestamp">> => float(),
%%   <<"Description">> => string(),
%%   <<"FeaturedDocuments">> => list(featured_document()),
%%   <<"FeaturedResultsSetId">> => string(),
%%   <<"FeaturedResultsSetName">> => string(),
%%   <<"LastUpdatedTimestamp">> => float(),
%%   <<"QueryTexts">> => list(string()),
%%   <<"Status">> => list(any())
%% }
-type featured_results_set() :: #{binary() => any()}.

%% Example:
%% delete_access_control_configuration_request() :: #{
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string()
%% }
-type delete_access_control_configuration_request() :: #{binary() => any()}.

%% Example:
%% collapsed_result_detail() :: #{
%%   <<"DocumentAttribute">> => document_attribute(),
%%   <<"ExpandedResults">> => list(expanded_result_item())
%% }
-type collapsed_result_detail() :: #{binary() => any()}.

%% Example:
%% list_query_suggestions_block_lists_response() :: #{
%%   <<"BlockListSummaryItems">> => list(query_suggestions_block_list_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_query_suggestions_block_lists_response() :: #{binary() => any()}.

%% Example:
%% attribute_suggestions_get_config() :: #{
%%   <<"AdditionalResponseAttributes">> => list(string()),
%%   <<"AttributeFilter">> => attribute_filter(),
%%   <<"SuggestionAttributes">> => list(string()),
%%   <<"UserContext">> => user_context()
%% }
-type attribute_suggestions_get_config() :: #{binary() => any()}.

%% Example:
%% query_request() :: #{
%%   <<"AttributeFilter">> => attribute_filter(),
%%   <<"CollapseConfiguration">> => collapse_configuration(),
%%   <<"DocumentRelevanceOverrideConfigurations">> => list(document_relevance_configuration()),
%%   <<"Facets">> => list(facet()),
%%   <<"IndexId">> := string(),
%%   <<"PageNumber">> => integer(),
%%   <<"PageSize">> => integer(),
%%   <<"QueryResultTypeFilter">> => list(any()),
%%   <<"QueryText">> => string(),
%%   <<"RequestedDocumentAttributes">> => list(string()),
%%   <<"SortingConfiguration">> => sorting_configuration(),
%%   <<"SortingConfigurations">> => list(sorting_configuration()),
%%   <<"SpellCorrectionConfiguration">> => spell_correction_configuration(),
%%   <<"UserContext">> => user_context(),
%%   <<"VisitorId">> => string()
%% }
-type query_request() :: #{binary() => any()}.

%% Example:
%% user_context() :: #{
%%   <<"DataSourceGroups">> => list(data_source_group()),
%%   <<"Groups">> => list(string()),
%%   <<"Token">> => string(),
%%   <<"UserId">> => string()
%% }
-type user_context() :: #{binary() => any()}.

%% Example:
%% group_summary() :: #{
%%   <<"GroupId">> => string(),
%%   <<"OrderingId">> => float()
%% }
-type group_summary() :: #{binary() => any()}.

%% Example:
%% one_drive_configuration() :: #{
%%   <<"DisableLocalGroups">> => boolean(),
%%   <<"ExclusionPatterns">> => list(string()),
%%   <<"FieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"InclusionPatterns">> => list(string()),
%%   <<"OneDriveUsers">> => one_drive_users(),
%%   <<"SecretArn">> => string(),
%%   <<"TenantDomain">> => string()
%% }
-type one_drive_configuration() :: #{binary() => any()}.

%% Example:
%% query_result_item() :: #{
%%   <<"AdditionalAttributes">> => list(additional_result_attribute()),
%%   <<"CollapsedResultDetail">> => collapsed_result_detail(),
%%   <<"DocumentAttributes">> => list(document_attribute()),
%%   <<"DocumentExcerpt">> => text_with_highlights(),
%%   <<"DocumentId">> => string(),
%%   <<"DocumentTitle">> => text_with_highlights(),
%%   <<"DocumentURI">> => string(),
%%   <<"FeedbackToken">> => string(),
%%   <<"Format">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"ScoreAttributes">> => score_attributes(),
%%   <<"TableExcerpt">> => table_excerpt(),
%%   <<"Type">> => list(any())
%% }
-type query_result_item() :: #{binary() => any()}.

%% Example:
%% associate_entities_to_experience_response() :: #{
%%   <<"FailedEntityList">> => list(failed_entity())
%% }
-type associate_entities_to_experience_response() :: #{binary() => any()}.

%% Example:
%% create_index_response() :: #{
%%   <<"Id">> => string()
%% }
-type create_index_response() :: #{binary() => any()}.

%% Example:
%% confluence_blog_configuration() :: #{
%%   <<"BlogFieldMappings">> => list(confluence_blog_to_index_field_mapping())
%% }
-type confluence_blog_configuration() :: #{binary() => any()}.

%% Example:
%% update_query_suggestions_config_request() :: #{
%%   <<"AttributeSuggestionsConfig">> => attribute_suggestions_update_config(),
%%   <<"IncludeQueriesWithoutUserInformation">> => boolean(),
%%   <<"IndexId">> := string(),
%%   <<"MinimumNumberOfQueryingUsers">> => integer(),
%%   <<"MinimumQueryCount">> => integer(),
%%   <<"Mode">> => list(any()),
%%   <<"QueryLogLookBackWindowInDays">> => integer()
%% }
-type update_query_suggestions_config_request() :: #{binary() => any()}.

%% Example:
%% list_query_suggestions_block_lists_request() :: #{
%%   <<"IndexId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_query_suggestions_block_lists_request() :: #{binary() => any()}.

%% Example:
%% status() :: #{
%%   <<"DocumentId">> => string(),
%%   <<"DocumentStatus">> => list(any()),
%%   <<"FailureCode">> => string(),
%%   <<"FailureReason">> => string()
%% }
-type status() :: #{binary() => any()}.

%% Example:
%% authentication_configuration() :: #{
%%   <<"BasicAuthentication">> => list(basic_authentication_configuration())
%% }
-type authentication_configuration() :: #{binary() => any()}.

%% Example:
%% create_faq_response() :: #{
%%   <<"Id">> => string()
%% }
-type create_faq_response() :: #{binary() => any()}.

%% Example:
%% alfresco_configuration() :: #{
%%   <<"BlogFieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"CrawlComments">> => boolean(),
%%   <<"CrawlSystemFolders">> => boolean(),
%%   <<"DocumentLibraryFieldMappings">> => list(data_source_to_index_field_mapping()),
%%   <<"EntityFilter">> => list(list(any())()),
%%   <<"ExclusionPatterns">> => list(string()),
%%   <<"InclusionPatterns">> => list(string()),
%%   <<"SecretArn">> => string(),
%%   <<"SiteId">> => string(),
%%   <<"SiteUrl">> => string(),
%%   <<"SslCertificateS3Path">> => s3_path(),
%%   <<"VpcConfiguration">> => data_source_vpc_configuration(),
%%   <<"WikiFieldMappings">> => list(data_source_to_index_field_mapping())
%% }
-type alfresco_configuration() :: #{binary() => any()}.

%% Example:
%% batch_get_document_status_response() :: #{
%%   <<"DocumentStatusList">> => list(status()),
%%   <<"Errors">> => list(batch_get_document_status_response_error())
%% }
-type batch_get_document_status_response() :: #{binary() => any()}.

%% Example:
%% confluence_page_configuration() :: #{
%%   <<"PageFieldMappings">> => list(confluence_page_to_index_field_mapping())
%% }
-type confluence_page_configuration() :: #{binary() => any()}.

%% Example:
%% disassociate_personas_from_entities_request() :: #{
%%   <<"EntityIds">> := list(string()),
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string()
%% }
-type disassociate_personas_from_entities_request() :: #{binary() => any()}.

%% Example:
%% text_document_statistics() :: #{
%%   <<"IndexedTextBytes">> => float(),
%%   <<"IndexedTextDocumentsCount">> => integer()
%% }
-type text_document_statistics() :: #{binary() => any()}.

%% Example:
%% update_experience_request() :: #{
%%   <<"Configuration">> => experience_configuration(),
%%   <<"Description">> => string(),
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type update_experience_request() :: #{binary() => any()}.

%% Example:
%% retrieve_request() :: #{
%%   <<"AttributeFilter">> => attribute_filter(),
%%   <<"DocumentRelevanceOverrideConfigurations">> => list(document_relevance_configuration()),
%%   <<"IndexId">> := string(),
%%   <<"PageNumber">> => integer(),
%%   <<"PageSize">> => integer(),
%%   <<"QueryText">> := string(),
%%   <<"RequestedDocumentAttributes">> => list(string()),
%%   <<"UserContext">> => user_context()
%% }
-type retrieve_request() :: #{binary() => any()}.

%% Example:
%% list_featured_results_sets_response() :: #{
%%   <<"FeaturedResultsSetSummaryItems">> => list(featured_results_set_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_featured_results_sets_response() :: #{binary() => any()}.

%% Example:
%% acl_configuration() :: #{
%%   <<"AllowedGroupsColumnName">> => string()
%% }
-type acl_configuration() :: #{binary() => any()}.

%% Example:
%% update_thesaurus_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"SourceS3Path">> => s3_path()
%% }
-type update_thesaurus_request() :: #{binary() => any()}.

%% Example:
%% table_cell() :: #{
%%   <<"Header">> => boolean(),
%%   <<"Highlighted">> => boolean(),
%%   <<"TopAnswer">> => boolean(),
%%   <<"Value">> => string()
%% }
-type table_cell() :: #{binary() => any()}.

%% Example:
%% create_access_control_configuration_request() :: #{
%%   <<"AccessControlList">> => list(principal()),
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"HierarchicalAccessControlList">> => list(hierarchical_principal()),
%%   <<"IndexId">> := string(),
%%   <<"Name">> := string()
%% }
-type create_access_control_configuration_request() :: #{binary() => any()}.

%% Example:
%% document_info() :: #{
%%   <<"Attributes">> => list(document_attribute()),
%%   <<"DocumentId">> => string()
%% }
-type document_info() :: #{binary() => any()}.

%% Example:
%% list_entity_personas_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SummaryItems">> => list(personas_summary())
%% }
-type list_entity_personas_response() :: #{binary() => any()}.

%% Example:
%% list_faqs_request() :: #{
%%   <<"IndexId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_faqs_request() :: #{binary() => any()}.

%% Example:
%% create_thesaurus_response() :: #{
%%   <<"Id">> => string()
%% }
-type create_thesaurus_response() :: #{binary() => any()}.

%% Example:
%% document() :: #{
%%   <<"AccessControlConfigurationId">> => string(),
%%   <<"AccessControlList">> => list(principal()),
%%   <<"Attributes">> => list(document_attribute()),
%%   <<"Blob">> => binary(),
%%   <<"ContentType">> => list(any()),
%%   <<"HierarchicalAccessControlList">> => list(hierarchical_principal()),
%%   <<"Id">> => string(),
%%   <<"S3Path">> => s3_path(),
%%   <<"Title">> => string()
%% }
-type document() :: #{binary() => any()}.

%% Example:
%% list_faqs_response() :: #{
%%   <<"FaqSummaryItems">> => list(faq_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_faqs_response() :: #{binary() => any()}.

%% Example:
%% database_configuration() :: #{
%%   <<"AclConfiguration">> => acl_configuration(),
%%   <<"ColumnConfiguration">> => column_configuration(),
%%   <<"ConnectionConfiguration">> => connection_configuration(),
%%   <<"DatabaseEngineType">> => list(any()),
%%   <<"SqlConfiguration">> => sql_configuration(),
%%   <<"VpcConfiguration">> => data_source_vpc_configuration()
%% }
-type database_configuration() :: #{binary() => any()}.

%% Example:
%% batch_get_document_status_request() :: #{
%%   <<"DocumentInfoList">> := list(document_info()),
%%   <<"IndexId">> := string()
%% }
-type batch_get_document_status_request() :: #{binary() => any()}.

%% Example:
%% disassociate_entities_from_experience_request() :: #{
%%   <<"EntityList">> := list(entity_configuration()),
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string()
%% }
-type disassociate_entities_from_experience_request() :: #{binary() => any()}.

%% Example:
%% create_featured_results_set_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Description">> => string(),
%%   <<"FeaturedDocuments">> => list(featured_document()),
%%   <<"FeaturedResultsSetName">> := string(),
%%   <<"IndexId">> := string(),
%%   <<"QueryTexts">> => list(string()),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => list(tag())
%% }
-type create_featured_results_set_request() :: #{binary() => any()}.

%% Example:
%% featured_results_set_summary() :: #{
%%   <<"CreationTimestamp">> => float(),
%%   <<"FeaturedResultsSetId">> => string(),
%%   <<"FeaturedResultsSetName">> => string(),
%%   <<"LastUpdatedTimestamp">> => float(),
%%   <<"Status">> => list(any())
%% }
-type featured_results_set_summary() :: #{binary() => any()}.

%% Example:
%% faq_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"FileFormat">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"LanguageCode">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type faq_summary() :: #{binary() => any()}.

%% Example:
%% s3_data_source_configuration() :: #{
%%   <<"AccessControlListConfiguration">> => access_control_list_configuration(),
%%   <<"BucketName">> => string(),
%%   <<"DocumentsMetadataConfiguration">> => documents_metadata_configuration(),
%%   <<"ExclusionPatterns">> => list(string()),
%%   <<"InclusionPatterns">> => list(string()),
%%   <<"InclusionPrefixes">> => list(string())
%% }
-type s3_data_source_configuration() :: #{binary() => any()}.

%% Example:
%% index_statistics() :: #{
%%   <<"FaqStatistics">> => faq_statistics(),
%%   <<"TextDocumentStatistics">> => text_document_statistics()
%% }
-type index_statistics() :: #{binary() => any()}.

%% Example:
%% document_relevance_configuration() :: #{
%%   <<"Name">> => string(),
%%   <<"Relevance">> => relevance()
%% }
-type document_relevance_configuration() :: #{binary() => any()}.

%% Example:
%% associate_personas_to_entities_request() :: #{
%%   <<"Id">> := string(),
%%   <<"IndexId">> := string(),
%%   <<"Personas">> := list(entity_persona_configuration())
%% }
-type associate_personas_to_entities_request() :: #{binary() => any()}.

%% Example:
%% describe_query_suggestions_config_request() :: #{
%%   <<"IndexId">> := string()
%% }
-type describe_query_suggestions_config_request() :: #{binary() => any()}.

%% Example:
%% spell_correction_configuration() :: #{
%%   <<"IncludeQuerySpellCheckSuggestions">> => boolean()
%% }
-type spell_correction_configuration() :: #{binary() => any()}.

%% Example:
%% batch_put_document_response_failed_document() :: #{
%%   <<"DataSourceId">> => string(),
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"Id">> => string()
%% }
-type batch_put_document_response_failed_document() :: #{binary() => any()}.

-type associate_entities_to_experience_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    resource_already_exist_exception().

-type associate_personas_to_entities_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    resource_already_exist_exception().

-type batch_delete_document_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_delete_featured_results_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_get_document_status_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type batch_put_document_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type clear_query_suggestions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_access_control_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_data_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    resource_already_exist_exception().

-type create_experience_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_faq_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_featured_results_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    featured_results_conflict_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_index_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    resource_already_exist_exception().

-type create_query_suggestions_block_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_thesaurus_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_access_control_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_data_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_experience_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_faq_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_index_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_principal_mapping_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_query_suggestions_block_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_thesaurus_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type describe_access_control_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_data_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_experience_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_faq_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_featured_results_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_index_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_principal_mapping_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_query_suggestions_block_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_query_suggestions_config_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type describe_thesaurus_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disassociate_entities_from_experience_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type disassociate_personas_from_entities_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_query_suggestions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_snapshots_errors() ::
    access_denied_exception() | 
    internal_server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_access_control_configurations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_data_source_sync_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_data_sources_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_entity_personas_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_experience_entities_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_experiences_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_faqs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_featured_results_sets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_groups_older_than_ordering_id_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_indices_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_query_suggestions_block_lists_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_unavailable_exception().

-type list_thesauri_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_principal_mapping_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type query_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type retrieve_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_data_source_sync_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    resource_in_use_exception().

-type stop_data_source_sync_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type submit_feedback_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    resource_unavailable_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_unavailable_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_unavailable_exception().

-type update_access_control_configuration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_data_source_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_experience_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_featured_results_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    featured_results_conflict_exception() | 
    resource_not_found_exception().

-type update_index_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_query_suggestions_block_list_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_query_suggestions_config_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_thesaurus_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Grants users or groups in your IAM Identity Center identity source
%% access
%% to your Amazon Kendra experience.
%%
%% You can create an Amazon Kendra experience such as a
%% search application. For more information on creating a search application
%% experience, see Building
%% a search experience with no code:
%% https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html.
-spec associate_entities_to_experience(aws_client:aws_client(), associate_entities_to_experience_request()) ->
    {ok, associate_entities_to_experience_response(), tuple()} |
    {error, any()} |
    {error, associate_entities_to_experience_errors(), tuple()}.
associate_entities_to_experience(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_entities_to_experience(Client, Input, []).

-spec associate_entities_to_experience(aws_client:aws_client(), associate_entities_to_experience_request(), proplists:proplist()) ->
    {ok, associate_entities_to_experience_response(), tuple()} |
    {error, any()} |
    {error, associate_entities_to_experience_errors(), tuple()}.
associate_entities_to_experience(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateEntitiesToExperience">>, Input, Options).

%% @doc Defines the specific permissions of users or groups in your IAM
%% Identity Center
%% identity source with access to your Amazon Kendra experience.
%%
%% You can create an Amazon Kendra
%% experience such as a search application. For more information on creating
%% a
%% search application experience, see Building
%% a search experience with no code:
%% https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html.
-spec associate_personas_to_entities(aws_client:aws_client(), associate_personas_to_entities_request()) ->
    {ok, associate_personas_to_entities_response(), tuple()} |
    {error, any()} |
    {error, associate_personas_to_entities_errors(), tuple()}.
associate_personas_to_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_personas_to_entities(Client, Input, []).

-spec associate_personas_to_entities(aws_client:aws_client(), associate_personas_to_entities_request(), proplists:proplist()) ->
    {ok, associate_personas_to_entities_response(), tuple()} |
    {error, any()} |
    {error, associate_personas_to_entities_errors(), tuple()}.
associate_personas_to_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociatePersonasToEntities">>, Input, Options).

%% @doc Removes one or more documents from an index.
%%
%% The documents must have been added with
%% the `BatchPutDocument' API.
%%
%% The documents are deleted asynchronously. You can see the progress of the
%% deletion by
%% using Amazon Web Services
%% CloudWatch. Any error messages related to the processing of the batch are
%% sent to
%% your Amazon Web Services
%% CloudWatch log. You can also use the `BatchGetDocumentStatus' API to
%% monitor the progress of deleting your documents.
%%
%% Deleting documents from an index using `BatchDeleteDocument' could
%% take up
%% to an hour or more, depending on the number of documents you want to
%% delete.
-spec batch_delete_document(aws_client:aws_client(), batch_delete_document_request()) ->
    {ok, batch_delete_document_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_document_errors(), tuple()}.
batch_delete_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_document(Client, Input, []).

-spec batch_delete_document(aws_client:aws_client(), batch_delete_document_request(), proplists:proplist()) ->
    {ok, batch_delete_document_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_document_errors(), tuple()}.
batch_delete_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteDocument">>, Input, Options).

%% @doc Removes one or more sets of featured results.
%%
%% Features results are placed
%% above all other results for certain queries. If there's an exact match
%% of a
%% query, then one or more specific documents are featured in the search
%% results.
-spec batch_delete_featured_results_set(aws_client:aws_client(), batch_delete_featured_results_set_request()) ->
    {ok, batch_delete_featured_results_set_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_featured_results_set_errors(), tuple()}.
batch_delete_featured_results_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_featured_results_set(Client, Input, []).

-spec batch_delete_featured_results_set(aws_client:aws_client(), batch_delete_featured_results_set_request(), proplists:proplist()) ->
    {ok, batch_delete_featured_results_set_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_featured_results_set_errors(), tuple()}.
batch_delete_featured_results_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteFeaturedResultsSet">>, Input, Options).

%% @doc Returns the indexing status for one or more documents submitted with
%% the
%% BatchPutDocument:
%% https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html
%% API.
%%
%% When you use the `BatchPutDocument' API, documents are indexed
%% asynchronously. You can use the `BatchGetDocumentStatus' API to get
%% the
%% current status of a list of documents so that you can determine if they
%% have been
%% successfully indexed.
%%
%% You can also use the `BatchGetDocumentStatus' API to check the status
%% of
%% the
%% BatchDeleteDocument:
%% https://docs.aws.amazon.com/kendra/latest/dg/API_BatchDeleteDocument.html
%% API. When a document is deleted from the index, Amazon Kendra returns
%% `NOT_FOUND' as the status.
-spec batch_get_document_status(aws_client:aws_client(), batch_get_document_status_request()) ->
    {ok, batch_get_document_status_response(), tuple()} |
    {error, any()} |
    {error, batch_get_document_status_errors(), tuple()}.
batch_get_document_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_document_status(Client, Input, []).

-spec batch_get_document_status(aws_client:aws_client(), batch_get_document_status_request(), proplists:proplist()) ->
    {ok, batch_get_document_status_response(), tuple()} |
    {error, any()} |
    {error, batch_get_document_status_errors(), tuple()}.
batch_get_document_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetDocumentStatus">>, Input, Options).

%% @doc Adds one or more documents to an index.
%%
%% The `BatchPutDocument' API enables you to ingest inline documents or a
%% set
%% of documents stored in an Amazon S3 bucket. Use this API to ingest your
%% text and
%% unstructured text into an index, add custom attributes to the documents,
%% and to attach
%% an access control list to the documents added to the index.
%%
%% The documents are indexed asynchronously. You can see the progress of the
%% batch using
%% Amazon Web Services
%% CloudWatch. Any error messages related to processing the batch are sent to
%% your
%% Amazon Web Services
%% CloudWatch log. You can also use the `BatchGetDocumentStatus' API to
%% monitor the progress of indexing your documents.
%%
%% For an example of ingesting inline documents using Python and Java SDKs,
%% see Adding files
%% directly to an index:
%% https://docs.aws.amazon.com/kendra/latest/dg/in-adding-binary-doc.html.
-spec batch_put_document(aws_client:aws_client(), batch_put_document_request()) ->
    {ok, batch_put_document_response(), tuple()} |
    {error, any()} |
    {error, batch_put_document_errors(), tuple()}.
batch_put_document(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_put_document(Client, Input, []).

-spec batch_put_document(aws_client:aws_client(), batch_put_document_request(), proplists:proplist()) ->
    {ok, batch_put_document_response(), tuple()} |
    {error, any()} |
    {error, batch_put_document_errors(), tuple()}.
batch_put_document(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchPutDocument">>, Input, Options).

%% @doc Clears existing query suggestions from an index.
%%
%% This deletes existing suggestions only, not the queries
%% in the query log. After you clear suggestions, Amazon Kendra learns
%% new suggestions based on new queries added to the query log
%% from the time you cleared suggestions. If you do not see any
%% new suggestions, then please allow Amazon Kendra to collect
%% enough queries to learn new suggestions.
%%
%% `ClearQuerySuggestions' is currently not supported in the
%% Amazon Web Services GovCloud (US-West) region.
-spec clear_query_suggestions(aws_client:aws_client(), clear_query_suggestions_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, clear_query_suggestions_errors(), tuple()}.
clear_query_suggestions(Client, Input)
  when is_map(Client), is_map(Input) ->
    clear_query_suggestions(Client, Input, []).

-spec clear_query_suggestions(aws_client:aws_client(), clear_query_suggestions_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, clear_query_suggestions_errors(), tuple()}.
clear_query_suggestions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ClearQuerySuggestions">>, Input, Options).

%% @doc Creates an access configuration for your documents.
%%
%% This includes user and group
%% access information for your documents. This is useful for user context
%% filtering, where
%% search results are filtered based on the user or their group access to
%% documents.
%%
%% You can use this to re-configure your existing document level access
%% control without
%% indexing all of your documents again. For example, your index contains
%% top-secret
%% company documents that only certain employees or users should access. One
%% of these users
%% leaves the company or switches to a team that should be blocked from
%% accessing
%% top-secret documents. The user still has access to top-secret documents
%% because the user
%% had access when your documents were previously indexed. You can create a
%% specific access
%% control configuration for the user with deny access. You can later update
%% the access
%% control configuration to allow access if the user returns to the company
%% and re-joins
%% the 'top-secret' team. You can re-configure access control for
%% your documents as
%% circumstances change.
%%
%% To apply your access control configuration to certain documents, you call
%% the BatchPutDocument:
%% https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html API
%% with the `AccessControlConfigurationId'
%% included in the Document:
%% https://docs.aws.amazon.com/kendra/latest/dg/API_Document.html object. If
%% you use an S3 bucket as a data source, you update the
%% `.metadata.json' with the `AccessControlConfigurationId' and
%% synchronize your data source. Amazon Kendra currently only supports access
%% control
%% configuration for S3 data sources and documents indexed using the
%% `BatchPutDocument' API.
%%
%% You can't configure access control using
%% `CreateAccessControlConfiguration' for an Amazon Kendra Gen AI
%% Enterprise
%% Edition index. Amazon Kendra will return a `ValidationException' error
%% for a
%% `Gen_AI_ENTERPRISE_EDITION' index.
-spec create_access_control_configuration(aws_client:aws_client(), create_access_control_configuration_request()) ->
    {ok, create_access_control_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_access_control_configuration_errors(), tuple()}.
create_access_control_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_access_control_configuration(Client, Input, []).

-spec create_access_control_configuration(aws_client:aws_client(), create_access_control_configuration_request(), proplists:proplist()) ->
    {ok, create_access_control_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_access_control_configuration_errors(), tuple()}.
create_access_control_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAccessControlConfiguration">>, Input, Options).

%% @doc Creates a data source connector that you want to use with an Amazon
%% Kendra
%% index.
%%
%% You specify a name, data source connector type and description for your
%% data source. You
%% also specify configuration information for the data source connector.
%%
%% `CreateDataSource' is a synchronous operation. The operation returns
%% 200 if the
%% data source was successfully created. Otherwise, an exception is raised.
%%
%% For an example of creating an index and data source using the Python SDK,
%% see Getting started with Python
%% SDK: https://docs.aws.amazon.com/kendra/latest/dg/gs-python.html. For an
%% example of creating an index and data source using the Java SDK, see
%% Getting started with Java
%% SDK: https://docs.aws.amazon.com/kendra/latest/dg/gs-java.html.
-spec create_data_source(aws_client:aws_client(), create_data_source_request()) ->
    {ok, create_data_source_response(), tuple()} |
    {error, any()} |
    {error, create_data_source_errors(), tuple()}.
create_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_source(Client, Input, []).

-spec create_data_source(aws_client:aws_client(), create_data_source_request(), proplists:proplist()) ->
    {ok, create_data_source_response(), tuple()} |
    {error, any()} |
    {error, create_data_source_errors(), tuple()}.
create_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataSource">>, Input, Options).

%% @doc Creates an Amazon Kendra experience such as a search application.
%%
%% For more information
%% on creating a search application experience, including using the Python
%% and Java SDKs,
%% see Building a
%% search experience with no code:
%% https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html.
-spec create_experience(aws_client:aws_client(), create_experience_request()) ->
    {ok, create_experience_response(), tuple()} |
    {error, any()} |
    {error, create_experience_errors(), tuple()}.
create_experience(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_experience(Client, Input, []).

-spec create_experience(aws_client:aws_client(), create_experience_request(), proplists:proplist()) ->
    {ok, create_experience_response(), tuple()} |
    {error, any()} |
    {error, create_experience_errors(), tuple()}.
create_experience(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateExperience">>, Input, Options).

%% @doc Creates a set of frequently ask questions (FAQs) using a specified
%% FAQ file stored
%% in an Amazon S3 bucket.
%%
%% Adding FAQs to an index is an asynchronous operation.
%%
%% For an example of adding an FAQ to an index using Python and Java SDKs,
%% see Using your FAQ file:
%% https://docs.aws.amazon.com/kendra/latest/dg/in-creating-faq.html#using-faq-file.
-spec create_faq(aws_client:aws_client(), create_faq_request()) ->
    {ok, create_faq_response(), tuple()} |
    {error, any()} |
    {error, create_faq_errors(), tuple()}.
create_faq(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_faq(Client, Input, []).

-spec create_faq(aws_client:aws_client(), create_faq_request(), proplists:proplist()) ->
    {ok, create_faq_response(), tuple()} |
    {error, any()} |
    {error, create_faq_errors(), tuple()}.
create_faq(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFaq">>, Input, Options).

%% @doc Creates a set of featured results to display at the top of the search
%% results page.
%%
%% Featured results are placed above all other results for certain queries.
%% You map
%% specific queries to specific documents for featuring in the results. If a
%% query
%% contains an exact match, then one or more specific documents are featured
%% in the
%% search results.
%%
%% You can create up to 50 sets of featured results per index. You can
%% request to
%% increase this limit by contacting Support:
%% http://aws.amazon.com/contact-us/.
-spec create_featured_results_set(aws_client:aws_client(), create_featured_results_set_request()) ->
    {ok, create_featured_results_set_response(), tuple()} |
    {error, any()} |
    {error, create_featured_results_set_errors(), tuple()}.
create_featured_results_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_featured_results_set(Client, Input, []).

-spec create_featured_results_set(aws_client:aws_client(), create_featured_results_set_request(), proplists:proplist()) ->
    {ok, create_featured_results_set_response(), tuple()} |
    {error, any()} |
    {error, create_featured_results_set_errors(), tuple()}.
create_featured_results_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFeaturedResultsSet">>, Input, Options).

%% @doc Creates an Amazon Kendra index.
%%
%% Index creation is an asynchronous API. To determine
%% if index creation has completed, check the `Status' field returned
%% from a call to
%% `DescribeIndex'. The `Status' field is set to `ACTIVE' when
%% the index is ready to use.
%%
%% Once the index is active, you can index your documents using the
%% `BatchPutDocument' API or using one of the supported data sources:
%% https://docs.aws.amazon.com/kendra/latest/dg/data-sources.html.
%%
%% For an example of creating an index and data source using the Python SDK,
%% see Getting started with Python
%% SDK: https://docs.aws.amazon.com/kendra/latest/dg/gs-python.html. For an
%% example of creating an index and data source using the Java SDK, see
%% Getting started with Java
%% SDK: https://docs.aws.amazon.com/kendra/latest/dg/gs-java.html.
-spec create_index(aws_client:aws_client(), create_index_request()) ->
    {ok, create_index_response(), tuple()} |
    {error, any()} |
    {error, create_index_errors(), tuple()}.
create_index(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_index(Client, Input, []).

-spec create_index(aws_client:aws_client(), create_index_request(), proplists:proplist()) ->
    {ok, create_index_response(), tuple()} |
    {error, any()} |
    {error, create_index_errors(), tuple()}.
create_index(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIndex">>, Input, Options).

%% @doc Creates a block list to exlcude certain queries from suggestions.
%%
%% Any query that contains words or phrases specified in the block
%% list is blocked or filtered out from being shown as a suggestion.
%%
%% You need to provide the file location of your block list text file
%% in your S3 bucket. In your text file, enter each block word or phrase
%% on a separate line.
%%
%% For information on the current quota limits for block lists, see
%% Quotas
%% for Amazon Kendra:
%% https://docs.aws.amazon.com/kendra/latest/dg/quotas.html.
%%
%% `CreateQuerySuggestionsBlockList' is currently not supported in the
%% Amazon Web Services GovCloud (US-West) region.
%%
%% For an example of creating a block list for query suggestions using the
%% Python SDK, see Query
%% suggestions block list:
%% https://docs.aws.amazon.com/kendra/latest/dg/query-suggestions.html#query-suggestions-blocklist.
-spec create_query_suggestions_block_list(aws_client:aws_client(), create_query_suggestions_block_list_request()) ->
    {ok, create_query_suggestions_block_list_response(), tuple()} |
    {error, any()} |
    {error, create_query_suggestions_block_list_errors(), tuple()}.
create_query_suggestions_block_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_query_suggestions_block_list(Client, Input, []).

-spec create_query_suggestions_block_list(aws_client:aws_client(), create_query_suggestions_block_list_request(), proplists:proplist()) ->
    {ok, create_query_suggestions_block_list_response(), tuple()} |
    {error, any()} |
    {error, create_query_suggestions_block_list_errors(), tuple()}.
create_query_suggestions_block_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateQuerySuggestionsBlockList">>, Input, Options).

%% @doc Creates a thesaurus for an index.
%%
%% The thesaurus
%% contains a list of synonyms in Solr format.
%%
%% For an example of adding a thesaurus file to an index, see
%% Adding
%% custom synonyms to an index:
%% https://docs.aws.amazon.com/kendra/latest/dg/index-synonyms-adding-thesaurus-file.html.
-spec create_thesaurus(aws_client:aws_client(), create_thesaurus_request()) ->
    {ok, create_thesaurus_response(), tuple()} |
    {error, any()} |
    {error, create_thesaurus_errors(), tuple()}.
create_thesaurus(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_thesaurus(Client, Input, []).

-spec create_thesaurus(aws_client:aws_client(), create_thesaurus_request(), proplists:proplist()) ->
    {ok, create_thesaurus_response(), tuple()} |
    {error, any()} |
    {error, create_thesaurus_errors(), tuple()}.
create_thesaurus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateThesaurus">>, Input, Options).

%% @doc Deletes an access control configuration that you created for your
%% documents in an
%% index.
%%
%% This includes user and group access information for your documents. This
%% is
%% useful for user context filtering, where search results are filtered based
%% on the user
%% or their group access to documents.
-spec delete_access_control_configuration(aws_client:aws_client(), delete_access_control_configuration_request()) ->
    {ok, delete_access_control_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_access_control_configuration_errors(), tuple()}.
delete_access_control_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_access_control_configuration(Client, Input, []).

-spec delete_access_control_configuration(aws_client:aws_client(), delete_access_control_configuration_request(), proplists:proplist()) ->
    {ok, delete_access_control_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_access_control_configuration_errors(), tuple()}.
delete_access_control_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAccessControlConfiguration">>, Input, Options).

%% @doc Deletes an Amazon Kendra data source connector.
%%
%% An exception is not thrown if the
%% data source is already being deleted. While the data source is being
%% deleted, the
%% `Status' field returned by a call to the `DescribeDataSource' API
%% is
%% set to `DELETING'. For more information, see Deleting Data Sources:
%% https://docs.aws.amazon.com/kendra/latest/dg/delete-data-source.html.
%%
%% Deleting an entire data source or re-syncing your index after deleting
%% specific documents
%% from a data source could take up to an hour or more, depending on the
%% number of documents you
%% want to delete.
-spec delete_data_source(aws_client:aws_client(), delete_data_source_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_data_source_errors(), tuple()}.
delete_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_data_source(Client, Input, []).

-spec delete_data_source(aws_client:aws_client(), delete_data_source_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_data_source_errors(), tuple()}.
delete_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataSource">>, Input, Options).

%% @doc Deletes your Amazon Kendra experience such as a search application.
%%
%% For more information on
%% creating a search application experience, see Building a search
%% experience with no code:
%% https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html.
-spec delete_experience(aws_client:aws_client(), delete_experience_request()) ->
    {ok, delete_experience_response(), tuple()} |
    {error, any()} |
    {error, delete_experience_errors(), tuple()}.
delete_experience(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_experience(Client, Input, []).

-spec delete_experience(aws_client:aws_client(), delete_experience_request(), proplists:proplist()) ->
    {ok, delete_experience_response(), tuple()} |
    {error, any()} |
    {error, delete_experience_errors(), tuple()}.
delete_experience(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteExperience">>, Input, Options).

%% @doc Removes a FAQ from an index.
-spec delete_faq(aws_client:aws_client(), delete_faq_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_faq_errors(), tuple()}.
delete_faq(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_faq(Client, Input, []).

-spec delete_faq(aws_client:aws_client(), delete_faq_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_faq_errors(), tuple()}.
delete_faq(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFaq">>, Input, Options).

%% @doc Deletes an Amazon Kendra index.
%%
%% An exception is not thrown if the index is already
%% being deleted. While the index is being deleted, the `Status' field
%% returned by a
%% call to the `DescribeIndex' API is set to `DELETING'.
-spec delete_index(aws_client:aws_client(), delete_index_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_index_errors(), tuple()}.
delete_index(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_index(Client, Input, []).

-spec delete_index(aws_client:aws_client(), delete_index_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_index_errors(), tuple()}.
delete_index(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIndex">>, Input, Options).

%% @doc Deletes a group so that all users that belong to the group can no
%% longer access documents only available to that group.
%%
%% For example, after deleting the group &quot;Summer Interns&quot;, all
%% interns who belonged to
%% that group no longer see intern-only documents in their search results.
%%
%% If you want to delete or replace users or sub groups of a group, you need
%% to use the
%% `PutPrincipalMapping' operation. For example, if a user in the group
%% &quot;Engineering&quot; leaves the engineering team and another user takes
%% their place, you
%% provide an updated list of users or sub groups that belong to the
%% &quot;Engineering&quot; group
%% when calling `PutPrincipalMapping'. You can update your internal list
%% of
%% users or sub groups and input this list when calling
%% `PutPrincipalMapping'.
%%
%% `DeletePrincipalMapping' is currently not supported in the Amazon Web
%% Services GovCloud (US-West) region.
-spec delete_principal_mapping(aws_client:aws_client(), delete_principal_mapping_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_principal_mapping_errors(), tuple()}.
delete_principal_mapping(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_principal_mapping(Client, Input, []).

-spec delete_principal_mapping(aws_client:aws_client(), delete_principal_mapping_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_principal_mapping_errors(), tuple()}.
delete_principal_mapping(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePrincipalMapping">>, Input, Options).

%% @doc Deletes a block list used for query suggestions for an index.
%%
%% A deleted block list might not take effect right away. Amazon Kendra
%% needs to refresh the entire suggestions list to add back the
%% queries that were previously blocked.
%%
%% `DeleteQuerySuggestionsBlockList' is currently not supported in the
%% Amazon Web Services GovCloud (US-West) region.
-spec delete_query_suggestions_block_list(aws_client:aws_client(), delete_query_suggestions_block_list_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_query_suggestions_block_list_errors(), tuple()}.
delete_query_suggestions_block_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_query_suggestions_block_list(Client, Input, []).

-spec delete_query_suggestions_block_list(aws_client:aws_client(), delete_query_suggestions_block_list_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_query_suggestions_block_list_errors(), tuple()}.
delete_query_suggestions_block_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteQuerySuggestionsBlockList">>, Input, Options).

%% @doc Deletes an Amazon Kendra thesaurus.
-spec delete_thesaurus(aws_client:aws_client(), delete_thesaurus_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_thesaurus_errors(), tuple()}.
delete_thesaurus(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_thesaurus(Client, Input, []).

-spec delete_thesaurus(aws_client:aws_client(), delete_thesaurus_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_thesaurus_errors(), tuple()}.
delete_thesaurus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteThesaurus">>, Input, Options).

%% @doc Gets information about an access control configuration that you
%% created for your
%% documents in an index.
%%
%% This includes user and group access information for your
%% documents. This is useful for user context filtering, where search results
%% are filtered
%% based on the user or their group access to documents.
-spec describe_access_control_configuration(aws_client:aws_client(), describe_access_control_configuration_request()) ->
    {ok, describe_access_control_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_access_control_configuration_errors(), tuple()}.
describe_access_control_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_access_control_configuration(Client, Input, []).

-spec describe_access_control_configuration(aws_client:aws_client(), describe_access_control_configuration_request(), proplists:proplist()) ->
    {ok, describe_access_control_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_access_control_configuration_errors(), tuple()}.
describe_access_control_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccessControlConfiguration">>, Input, Options).

%% @doc Gets information about an Amazon Kendra data source connector.
-spec describe_data_source(aws_client:aws_client(), describe_data_source_request()) ->
    {ok, describe_data_source_response(), tuple()} |
    {error, any()} |
    {error, describe_data_source_errors(), tuple()}.
describe_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_source(Client, Input, []).

-spec describe_data_source(aws_client:aws_client(), describe_data_source_request(), proplists:proplist()) ->
    {ok, describe_data_source_response(), tuple()} |
    {error, any()} |
    {error, describe_data_source_errors(), tuple()}.
describe_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataSource">>, Input, Options).

%% @doc Gets information about your Amazon Kendra experience such as a search
%% application.
%%
%% For more information on creating a search application experience,
%% see Building
%% a search experience with no code:
%% https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html.
-spec describe_experience(aws_client:aws_client(), describe_experience_request()) ->
    {ok, describe_experience_response(), tuple()} |
    {error, any()} |
    {error, describe_experience_errors(), tuple()}.
describe_experience(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_experience(Client, Input, []).

-spec describe_experience(aws_client:aws_client(), describe_experience_request(), proplists:proplist()) ->
    {ok, describe_experience_response(), tuple()} |
    {error, any()} |
    {error, describe_experience_errors(), tuple()}.
describe_experience(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExperience">>, Input, Options).

%% @doc Gets information about a FAQ.
-spec describe_faq(aws_client:aws_client(), describe_faq_request()) ->
    {ok, describe_faq_response(), tuple()} |
    {error, any()} |
    {error, describe_faq_errors(), tuple()}.
describe_faq(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_faq(Client, Input, []).

-spec describe_faq(aws_client:aws_client(), describe_faq_request(), proplists:proplist()) ->
    {ok, describe_faq_response(), tuple()} |
    {error, any()} |
    {error, describe_faq_errors(), tuple()}.
describe_faq(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFaq">>, Input, Options).

%% @doc Gets information about a set of featured results.
%%
%% Features results are placed
%% above all other results for certain queries. If there's an exact match
%% of a query,
%% then one or more specific documents are featured in the search results.
-spec describe_featured_results_set(aws_client:aws_client(), describe_featured_results_set_request()) ->
    {ok, describe_featured_results_set_response(), tuple()} |
    {error, any()} |
    {error, describe_featured_results_set_errors(), tuple()}.
describe_featured_results_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_featured_results_set(Client, Input, []).

-spec describe_featured_results_set(aws_client:aws_client(), describe_featured_results_set_request(), proplists:proplist()) ->
    {ok, describe_featured_results_set_response(), tuple()} |
    {error, any()} |
    {error, describe_featured_results_set_errors(), tuple()}.
describe_featured_results_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFeaturedResultsSet">>, Input, Options).

%% @doc Gets information about an Amazon Kendra index.
-spec describe_index(aws_client:aws_client(), describe_index_request()) ->
    {ok, describe_index_response(), tuple()} |
    {error, any()} |
    {error, describe_index_errors(), tuple()}.
describe_index(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_index(Client, Input, []).

-spec describe_index(aws_client:aws_client(), describe_index_request(), proplists:proplist()) ->
    {ok, describe_index_response(), tuple()} |
    {error, any()} |
    {error, describe_index_errors(), tuple()}.
describe_index(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIndex">>, Input, Options).

%% @doc Describes the processing of `PUT' and `DELETE' actions for
%% mapping users to their groups.
%%
%% This includes information on the status of actions
%% currently processing or yet to be processed, when actions were last
%% updated, when
%% actions were received by Amazon Kendra, the latest action that should
%% process and
%% apply after other actions, and useful error messages if an action could
%% not be
%% processed.
%%
%% `DescribePrincipalMapping' is currently not supported in the Amazon
%% Web Services GovCloud (US-West) region.
-spec describe_principal_mapping(aws_client:aws_client(), describe_principal_mapping_request()) ->
    {ok, describe_principal_mapping_response(), tuple()} |
    {error, any()} |
    {error, describe_principal_mapping_errors(), tuple()}.
describe_principal_mapping(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_principal_mapping(Client, Input, []).

-spec describe_principal_mapping(aws_client:aws_client(), describe_principal_mapping_request(), proplists:proplist()) ->
    {ok, describe_principal_mapping_response(), tuple()} |
    {error, any()} |
    {error, describe_principal_mapping_errors(), tuple()}.
describe_principal_mapping(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePrincipalMapping">>, Input, Options).

%% @doc Gets information about a block list used for query suggestions for
%% an index.
%%
%% This is used to check the current settings that are applied to a
%% block list.
%%
%% `DescribeQuerySuggestionsBlockList' is currently not supported in the
%% Amazon Web Services GovCloud (US-West) region.
-spec describe_query_suggestions_block_list(aws_client:aws_client(), describe_query_suggestions_block_list_request()) ->
    {ok, describe_query_suggestions_block_list_response(), tuple()} |
    {error, any()} |
    {error, describe_query_suggestions_block_list_errors(), tuple()}.
describe_query_suggestions_block_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_query_suggestions_block_list(Client, Input, []).

-spec describe_query_suggestions_block_list(aws_client:aws_client(), describe_query_suggestions_block_list_request(), proplists:proplist()) ->
    {ok, describe_query_suggestions_block_list_response(), tuple()} |
    {error, any()} |
    {error, describe_query_suggestions_block_list_errors(), tuple()}.
describe_query_suggestions_block_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeQuerySuggestionsBlockList">>, Input, Options).

%% @doc Gets information on the settings of query suggestions for an index.
%%
%% This is used to check the current settings applied
%% to query suggestions.
%%
%% `DescribeQuerySuggestionsConfig' is currently not supported in the
%% Amazon Web Services GovCloud (US-West) region.
-spec describe_query_suggestions_config(aws_client:aws_client(), describe_query_suggestions_config_request()) ->
    {ok, describe_query_suggestions_config_response(), tuple()} |
    {error, any()} |
    {error, describe_query_suggestions_config_errors(), tuple()}.
describe_query_suggestions_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_query_suggestions_config(Client, Input, []).

-spec describe_query_suggestions_config(aws_client:aws_client(), describe_query_suggestions_config_request(), proplists:proplist()) ->
    {ok, describe_query_suggestions_config_response(), tuple()} |
    {error, any()} |
    {error, describe_query_suggestions_config_errors(), tuple()}.
describe_query_suggestions_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeQuerySuggestionsConfig">>, Input, Options).

%% @doc Gets information about an Amazon Kendra thesaurus.
-spec describe_thesaurus(aws_client:aws_client(), describe_thesaurus_request()) ->
    {ok, describe_thesaurus_response(), tuple()} |
    {error, any()} |
    {error, describe_thesaurus_errors(), tuple()}.
describe_thesaurus(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_thesaurus(Client, Input, []).

-spec describe_thesaurus(aws_client:aws_client(), describe_thesaurus_request(), proplists:proplist()) ->
    {ok, describe_thesaurus_response(), tuple()} |
    {error, any()} |
    {error, describe_thesaurus_errors(), tuple()}.
describe_thesaurus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeThesaurus">>, Input, Options).

%% @doc Prevents users or groups in your IAM Identity Center identity source
%% from accessing your Amazon Kendra experience.
%%
%% You can create an Amazon Kendra experience
%% such as a search application. For more information on creating a search
%% application experience, see Building
%% a search experience with no code:
%% https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html.
-spec disassociate_entities_from_experience(aws_client:aws_client(), disassociate_entities_from_experience_request()) ->
    {ok, disassociate_entities_from_experience_response(), tuple()} |
    {error, any()} |
    {error, disassociate_entities_from_experience_errors(), tuple()}.
disassociate_entities_from_experience(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_entities_from_experience(Client, Input, []).

-spec disassociate_entities_from_experience(aws_client:aws_client(), disassociate_entities_from_experience_request(), proplists:proplist()) ->
    {ok, disassociate_entities_from_experience_response(), tuple()} |
    {error, any()} |
    {error, disassociate_entities_from_experience_errors(), tuple()}.
disassociate_entities_from_experience(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateEntitiesFromExperience">>, Input, Options).

%% @doc Removes the specific permissions of users or groups in your IAM
%% Identity Center
%% identity source with access to your Amazon Kendra experience.
%%
%% You can create an Amazon Kendra
%% experience such as a search application. For more information on creating
%% a
%% search application experience, see Building a
%% search experience with no code:
%% https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html.
-spec disassociate_personas_from_entities(aws_client:aws_client(), disassociate_personas_from_entities_request()) ->
    {ok, disassociate_personas_from_entities_response(), tuple()} |
    {error, any()} |
    {error, disassociate_personas_from_entities_errors(), tuple()}.
disassociate_personas_from_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_personas_from_entities(Client, Input, []).

-spec disassociate_personas_from_entities(aws_client:aws_client(), disassociate_personas_from_entities_request(), proplists:proplist()) ->
    {ok, disassociate_personas_from_entities_response(), tuple()} |
    {error, any()} |
    {error, disassociate_personas_from_entities_errors(), tuple()}.
disassociate_personas_from_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociatePersonasFromEntities">>, Input, Options).

%% @doc Fetches the queries that are suggested to your users.
%%
%% `GetQuerySuggestions' is currently not supported in the
%% Amazon Web Services GovCloud (US-West) region.
-spec get_query_suggestions(aws_client:aws_client(), get_query_suggestions_request()) ->
    {ok, get_query_suggestions_response(), tuple()} |
    {error, any()} |
    {error, get_query_suggestions_errors(), tuple()}.
get_query_suggestions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_query_suggestions(Client, Input, []).

-spec get_query_suggestions(aws_client:aws_client(), get_query_suggestions_request(), proplists:proplist()) ->
    {ok, get_query_suggestions_response(), tuple()} |
    {error, any()} |
    {error, get_query_suggestions_errors(), tuple()}.
get_query_suggestions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQuerySuggestions">>, Input, Options).

%% @doc Retrieves search metrics data.
%%
%% The data provides a snapshot of how your users interact
%% with your search application and how effective the application is.
-spec get_snapshots(aws_client:aws_client(), get_snapshots_request()) ->
    {ok, get_snapshots_response(), tuple()} |
    {error, any()} |
    {error, get_snapshots_errors(), tuple()}.
get_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_snapshots(Client, Input, []).

-spec get_snapshots(aws_client:aws_client(), get_snapshots_request(), proplists:proplist()) ->
    {ok, get_snapshots_response(), tuple()} |
    {error, any()} |
    {error, get_snapshots_errors(), tuple()}.
get_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSnapshots">>, Input, Options).

%% @doc Lists one or more access control configurations for an index.
%%
%% This includes user and
%% group access information for your documents. This is useful for user
%% context filtering,
%% where search results are filtered based on the user or their group access
%% to
%% documents.
-spec list_access_control_configurations(aws_client:aws_client(), list_access_control_configurations_request()) ->
    {ok, list_access_control_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_access_control_configurations_errors(), tuple()}.
list_access_control_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_access_control_configurations(Client, Input, []).

-spec list_access_control_configurations(aws_client:aws_client(), list_access_control_configurations_request(), proplists:proplist()) ->
    {ok, list_access_control_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_access_control_configurations_errors(), tuple()}.
list_access_control_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAccessControlConfigurations">>, Input, Options).

%% @doc Gets statistics about synchronizing a data source connector.
-spec list_data_source_sync_jobs(aws_client:aws_client(), list_data_source_sync_jobs_request()) ->
    {ok, list_data_source_sync_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_data_source_sync_jobs_errors(), tuple()}.
list_data_source_sync_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_data_source_sync_jobs(Client, Input, []).

-spec list_data_source_sync_jobs(aws_client:aws_client(), list_data_source_sync_jobs_request(), proplists:proplist()) ->
    {ok, list_data_source_sync_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_data_source_sync_jobs_errors(), tuple()}.
list_data_source_sync_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDataSourceSyncJobs">>, Input, Options).

%% @doc Lists the data source connectors that you have created.
-spec list_data_sources(aws_client:aws_client(), list_data_sources_request()) ->
    {ok, list_data_sources_response(), tuple()} |
    {error, any()} |
    {error, list_data_sources_errors(), tuple()}.
list_data_sources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_data_sources(Client, Input, []).

-spec list_data_sources(aws_client:aws_client(), list_data_sources_request(), proplists:proplist()) ->
    {ok, list_data_sources_response(), tuple()} |
    {error, any()} |
    {error, list_data_sources_errors(), tuple()}.
list_data_sources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDataSources">>, Input, Options).

%% @doc Lists specific permissions of users and groups with access to your
%% Amazon Kendra experience.
-spec list_entity_personas(aws_client:aws_client(), list_entity_personas_request()) ->
    {ok, list_entity_personas_response(), tuple()} |
    {error, any()} |
    {error, list_entity_personas_errors(), tuple()}.
list_entity_personas(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_entity_personas(Client, Input, []).

-spec list_entity_personas(aws_client:aws_client(), list_entity_personas_request(), proplists:proplist()) ->
    {ok, list_entity_personas_response(), tuple()} |
    {error, any()} |
    {error, list_entity_personas_errors(), tuple()}.
list_entity_personas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEntityPersonas">>, Input, Options).

%% @doc Lists users or groups in your IAM Identity Center identity source
%% that are
%% granted access to your Amazon Kendra experience.
%%
%% You can create an Amazon Kendra experience
%% such as a search application. For more information on creating a search
%% application experience, see Building
%% a search experience with no code:
%% https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html.
-spec list_experience_entities(aws_client:aws_client(), list_experience_entities_request()) ->
    {ok, list_experience_entities_response(), tuple()} |
    {error, any()} |
    {error, list_experience_entities_errors(), tuple()}.
list_experience_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_experience_entities(Client, Input, []).

-spec list_experience_entities(aws_client:aws_client(), list_experience_entities_request(), proplists:proplist()) ->
    {ok, list_experience_entities_response(), tuple()} |
    {error, any()} |
    {error, list_experience_entities_errors(), tuple()}.
list_experience_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExperienceEntities">>, Input, Options).

%% @doc Lists one or more Amazon Kendra experiences.
%%
%% You can create an Amazon Kendra experience such
%% as a search application. For more information on creating a search
%% application
%% experience, see Building a
%% search experience with no code:
%% https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html.
-spec list_experiences(aws_client:aws_client(), list_experiences_request()) ->
    {ok, list_experiences_response(), tuple()} |
    {error, any()} |
    {error, list_experiences_errors(), tuple()}.
list_experiences(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_experiences(Client, Input, []).

-spec list_experiences(aws_client:aws_client(), list_experiences_request(), proplists:proplist()) ->
    {ok, list_experiences_response(), tuple()} |
    {error, any()} |
    {error, list_experiences_errors(), tuple()}.
list_experiences(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExperiences">>, Input, Options).

%% @doc Gets a list of FAQs associated with an index.
-spec list_faqs(aws_client:aws_client(), list_faqs_request()) ->
    {ok, list_faqs_response(), tuple()} |
    {error, any()} |
    {error, list_faqs_errors(), tuple()}.
list_faqs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_faqs(Client, Input, []).

-spec list_faqs(aws_client:aws_client(), list_faqs_request(), proplists:proplist()) ->
    {ok, list_faqs_response(), tuple()} |
    {error, any()} |
    {error, list_faqs_errors(), tuple()}.
list_faqs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFaqs">>, Input, Options).

%% @doc Lists all your sets of featured results for a given index.
%%
%% Features results
%% are placed above all other results for certain queries. If there's an
%% exact match
%% of a query, then one or more specific documents are featured in the search
%% results.
-spec list_featured_results_sets(aws_client:aws_client(), list_featured_results_sets_request()) ->
    {ok, list_featured_results_sets_response(), tuple()} |
    {error, any()} |
    {error, list_featured_results_sets_errors(), tuple()}.
list_featured_results_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_featured_results_sets(Client, Input, []).

-spec list_featured_results_sets(aws_client:aws_client(), list_featured_results_sets_request(), proplists:proplist()) ->
    {ok, list_featured_results_sets_response(), tuple()} |
    {error, any()} |
    {error, list_featured_results_sets_errors(), tuple()}.
list_featured_results_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFeaturedResultsSets">>, Input, Options).

%% @doc Provides a list of groups that are mapped to users before a given
%% ordering or
%% timestamp identifier.
%%
%% `ListGroupsOlderThanOrderingId' is currently not supported in the
%% Amazon Web Services GovCloud (US-West) region.
-spec list_groups_older_than_ordering_id(aws_client:aws_client(), list_groups_older_than_ordering_id_request()) ->
    {ok, list_groups_older_than_ordering_id_response(), tuple()} |
    {error, any()} |
    {error, list_groups_older_than_ordering_id_errors(), tuple()}.
list_groups_older_than_ordering_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_groups_older_than_ordering_id(Client, Input, []).

-spec list_groups_older_than_ordering_id(aws_client:aws_client(), list_groups_older_than_ordering_id_request(), proplists:proplist()) ->
    {ok, list_groups_older_than_ordering_id_response(), tuple()} |
    {error, any()} |
    {error, list_groups_older_than_ordering_id_errors(), tuple()}.
list_groups_older_than_ordering_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListGroupsOlderThanOrderingId">>, Input, Options).

%% @doc Lists the Amazon Kendra indexes that you created.
-spec list_indices(aws_client:aws_client(), list_indices_request()) ->
    {ok, list_indices_response(), tuple()} |
    {error, any()} |
    {error, list_indices_errors(), tuple()}.
list_indices(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_indices(Client, Input, []).

-spec list_indices(aws_client:aws_client(), list_indices_request(), proplists:proplist()) ->
    {ok, list_indices_response(), tuple()} |
    {error, any()} |
    {error, list_indices_errors(), tuple()}.
list_indices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIndices">>, Input, Options).

%% @doc Lists the block lists used for query suggestions for an index.
%%
%% For information on the current quota limits for block lists, see
%% Quotas
%% for Amazon Kendra:
%% https://docs.aws.amazon.com/kendra/latest/dg/quotas.html.
%%
%% `ListQuerySuggestionsBlockLists' is currently not supported in the
%% Amazon Web Services GovCloud (US-West) region.
-spec list_query_suggestions_block_lists(aws_client:aws_client(), list_query_suggestions_block_lists_request()) ->
    {ok, list_query_suggestions_block_lists_response(), tuple()} |
    {error, any()} |
    {error, list_query_suggestions_block_lists_errors(), tuple()}.
list_query_suggestions_block_lists(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_query_suggestions_block_lists(Client, Input, []).

-spec list_query_suggestions_block_lists(aws_client:aws_client(), list_query_suggestions_block_lists_request(), proplists:proplist()) ->
    {ok, list_query_suggestions_block_lists_response(), tuple()} |
    {error, any()} |
    {error, list_query_suggestions_block_lists_errors(), tuple()}.
list_query_suggestions_block_lists(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListQuerySuggestionsBlockLists">>, Input, Options).

%% @doc Gets a list of tags associated with a resource.
%%
%% Indexes, FAQs, data sources, and
%% other resources can have tags associated with them.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Lists the thesauri for an index.
-spec list_thesauri(aws_client:aws_client(), list_thesauri_request()) ->
    {ok, list_thesauri_response(), tuple()} |
    {error, any()} |
    {error, list_thesauri_errors(), tuple()}.
list_thesauri(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_thesauri(Client, Input, []).

-spec list_thesauri(aws_client:aws_client(), list_thesauri_request(), proplists:proplist()) ->
    {ok, list_thesauri_response(), tuple()} |
    {error, any()} |
    {error, list_thesauri_errors(), tuple()}.
list_thesauri(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListThesauri">>, Input, Options).

%% @doc Maps users to their groups so that you only need to provide the user
%% ID when you issue
%% the query.
%%
%% You can also map sub groups to groups. For example, the group
%% &quot;Company Intellectual
%% Property Teams&quot; includes sub groups &quot;Research&quot; and
%% &quot;Engineering&quot;. These sub groups
%% include their own list of users or people who work in these teams. Only
%% users who work
%% in research and engineering, and therefore belong in the intellectual
%% property group,
%% can see top-secret company documents in their search results.
%%
%% This is useful for user context filtering, where search results are
%% filtered based on
%% the user or their group access to documents. For more information, see
%% Filtering on
%% user context:
%% https://docs.aws.amazon.com/kendra/latest/dg/user-context-filter.html.
%%
%% If more than five `PUT' actions for a group are currently processing,
%% a
%% validation exception is thrown.
-spec put_principal_mapping(aws_client:aws_client(), put_principal_mapping_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_principal_mapping_errors(), tuple()}.
put_principal_mapping(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_principal_mapping(Client, Input, []).

-spec put_principal_mapping(aws_client:aws_client(), put_principal_mapping_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, put_principal_mapping_errors(), tuple()}.
put_principal_mapping(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPrincipalMapping">>, Input, Options).

%% @doc Searches an index given an input query.
%%
%% If you are working with large language models (LLMs) or implementing
%% retrieval
%% augmented generation (RAG) systems, you can use Amazon Kendra's
%% Retrieve:
%% https://docs.aws.amazon.com/kendra/latest/APIReference/API_Retrieve.html
%% API, which can return longer semantically relevant passages. We
%% recommend using the `Retrieve' API instead of filing a service limit
%% increase
%% to increase the `Query' API document excerpt length.
%%
%% You can configure boosting or relevance tuning at the query level to
%% override boosting
%% at the index level, filter based on document fields/attributes and faceted
%% search, and
%% filter based on the user or their group access to documents. You can also
%% include certain
%% fields in the response that might provide useful additional information.
%%
%% A query response contains three types of results.
%%
%% Relevant suggested answers. The answers can be either a text excerpt or
%% table
%% excerpt. The answer can be highlighted in the excerpt.
%%
%% Matching FAQs or questions-answer from your FAQ file.
%%
%% Relevant documents. This result type includes an excerpt of the document
%% with the
%% document title. The searched terms can be highlighted in the excerpt.
%%
%% You can specify that the query return only one type of result using the
%% `QueryResultTypeFilter' parameter. Each query returns the 100 most
%% relevant
%% results. If you filter result type to only question-answers, a maximum of
%% four results are
%% returned. If you filter result type to only answers, a maximum of three
%% results are
%% returned.
%%
%% If you're using an Amazon Kendra Gen AI Enterprise Edition index, you
%% can only use
%% `ATTRIBUTE_FILTER' to filter search results by user context. If
%% you're
%% using an Amazon Kendra Gen AI Enterprise Edition index and you try to use
%% `USER_TOKEN' to configure user context policy, Amazon Kendra returns a
%% `ValidationException' error.
-spec query(aws_client:aws_client(), query_request()) ->
    {ok, query_result(), tuple()} |
    {error, any()} |
    {error, query_errors(), tuple()}.
query(Client, Input)
  when is_map(Client), is_map(Input) ->
    query(Client, Input, []).

-spec query(aws_client:aws_client(), query_request(), proplists:proplist()) ->
    {ok, query_result(), tuple()} |
    {error, any()} |
    {error, query_errors(), tuple()}.
query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Query">>, Input, Options).

%% @doc Retrieves relevant passages or text excerpts given an input query.
%%
%% This API is similar to the Query:
%% https://docs.aws.amazon.com/kendra/latest/APIReference/API_Query.html API.
%% However, by
%% default, the `Query' API only returns excerpt passages of up to 100
%% token
%% words. With the `Retrieve' API, you can retrieve longer passages of up
%% to 200
%% token words and up to 100 semantically relevant passages. This doesn't
%% include
%% question-answer or FAQ type responses from your index. The passages are
%% text excerpts
%% that can be semantically extracted from multiple documents and multiple
%% parts of the
%% same document. If in extreme cases your documents produce zero passages
%% using the
%% `Retrieve' API, you can alternatively use the `Query' API and
%% its types of responses.
%%
%% You can also do the following:
%%
%% Override boosting at the index level
%%
%% Filter based on document fields or attributes
%%
%% Filter based on the user or their group access to documents
%%
%% View the confidence score bucket for a retrieved passage result. The
%% confidence bucket provides a relative ranking that indicates how confident
%% Amazon Kendra is that the response is relevant to the query.
%%
%% Confidence score buckets are currently available only for English.
%%
%% You can also include certain fields in the response that might provide
%% useful
%% additional information.
%%
%% The `Retrieve' API shares the number of query capacity
%% units:
%% https://docs.aws.amazon.com/kendra/latest/APIReference/API_CapacityUnitsConfiguration.html
%% that you set for your index. For more information on what's included
%% in a single capacity unit and the default base capacity for an index, see
%% Adjusting
%% capacity:
%% https://docs.aws.amazon.com/kendra/latest/dg/adjusting-capacity.html.
%%
%% If you're using an Amazon Kendra Gen AI Enterprise Edition index, you
%% can only use
%% `ATTRIBUTE_FILTER' to filter search results by user context. If
%% you're using an Amazon Kendra Gen AI Enterprise Edition index and you
%% try to use
%% `USER_TOKEN' to configure user context policy, Amazon Kendra returns a
%% `ValidationException' error.
-spec retrieve(aws_client:aws_client(), retrieve_request()) ->
    {ok, retrieve_result(), tuple()} |
    {error, any()} |
    {error, retrieve_errors(), tuple()}.
retrieve(Client, Input)
  when is_map(Client), is_map(Input) ->
    retrieve(Client, Input, []).

-spec retrieve(aws_client:aws_client(), retrieve_request(), proplists:proplist()) ->
    {ok, retrieve_result(), tuple()} |
    {error, any()} |
    {error, retrieve_errors(), tuple()}.
retrieve(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Retrieve">>, Input, Options).

%% @doc Starts a synchronization job for a data source connector.
%%
%% If a synchronization job is
%% already in progress, Amazon Kendra returns a `ResourceInUseException'
%% exception.
%%
%% Re-syncing your data source with your index after modifying, adding, or
%% deleting
%% documents from your data source respository could take up to an hour or
%% more, depending on
%% the number of documents to sync.
-spec start_data_source_sync_job(aws_client:aws_client(), start_data_source_sync_job_request()) ->
    {ok, start_data_source_sync_job_response(), tuple()} |
    {error, any()} |
    {error, start_data_source_sync_job_errors(), tuple()}.
start_data_source_sync_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_data_source_sync_job(Client, Input, []).

-spec start_data_source_sync_job(aws_client:aws_client(), start_data_source_sync_job_request(), proplists:proplist()) ->
    {ok, start_data_source_sync_job_response(), tuple()} |
    {error, any()} |
    {error, start_data_source_sync_job_errors(), tuple()}.
start_data_source_sync_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDataSourceSyncJob">>, Input, Options).

%% @doc Stops a synchronization job that is currently running.
%%
%% You can't stop a scheduled
%% synchronization job.
-spec stop_data_source_sync_job(aws_client:aws_client(), stop_data_source_sync_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_data_source_sync_job_errors(), tuple()}.
stop_data_source_sync_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_data_source_sync_job(Client, Input, []).

-spec stop_data_source_sync_job(aws_client:aws_client(), stop_data_source_sync_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_data_source_sync_job_errors(), tuple()}.
stop_data_source_sync_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopDataSourceSyncJob">>, Input, Options).

%% @doc Enables you to provide feedback to Amazon Kendra to improve the
%% performance of your index.
%%
%% `SubmitFeedback' is currently not supported in the
%% Amazon Web Services GovCloud (US-West) region.
-spec submit_feedback(aws_client:aws_client(), submit_feedback_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, submit_feedback_errors(), tuple()}.
submit_feedback(Client, Input)
  when is_map(Client), is_map(Input) ->
    submit_feedback(Client, Input, []).

-spec submit_feedback(aws_client:aws_client(), submit_feedback_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, submit_feedback_errors(), tuple()}.
submit_feedback(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SubmitFeedback">>, Input, Options).

%% @doc Adds the specified tag to the specified index, FAQ, data source, or
%% other resource.
%%
%% If
%% the tag already exists, the existing value is replaced with the new value.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes a tag from an index, FAQ, data source, or other resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an access control configuration for your documents in an
%% index.
%%
%% This includes
%% user and group access information for your documents. This is useful for
%% user context
%% filtering, where search results are filtered based on the user or their
%% group access to
%% documents.
%%
%% You can update an access control configuration you created without
%% indexing all of
%% your documents again. For example, your index contains top-secret company
%% documents that
%% only certain employees or users should access. You created an
%% 'allow' access control
%% configuration for one user who recently joined the 'top-secret'
%% team, switching from a
%% team with 'deny' access to top-secret documents. However, the user
%% suddenly returns to
%% their previous team and should no longer have access to top secret
%% documents. You can
%% update the access control configuration to re-configure access control for
%% your
%% documents as circumstances change.
%%
%% You call the BatchPutDocument:
%% https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html API
%% to
%% apply the updated access control configuration, with the
%% `AccessControlConfigurationId' included in the Document:
%% https://docs.aws.amazon.com/kendra/latest/dg/API_Document.html
%% object. If you use an S3 bucket as a data source, you synchronize your
%% data source to
%% apply the `AccessControlConfigurationId' in the `.metadata.json'
%% file. Amazon Kendra currently only supports access control configuration
%% for S3
%% data sources and documents indexed using the `BatchPutDocument' API.
%%
%% You can't configure access control using
%% `CreateAccessControlConfiguration' for an Amazon Kendra Gen AI
%% Enterprise
%% Edition index. Amazon Kendra will return a `ValidationException' error
%% for a
%% `Gen_AI_ENTERPRISE_EDITION' index.
-spec update_access_control_configuration(aws_client:aws_client(), update_access_control_configuration_request()) ->
    {ok, update_access_control_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_access_control_configuration_errors(), tuple()}.
update_access_control_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_access_control_configuration(Client, Input, []).

-spec update_access_control_configuration(aws_client:aws_client(), update_access_control_configuration_request(), proplists:proplist()) ->
    {ok, update_access_control_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_access_control_configuration_errors(), tuple()}.
update_access_control_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAccessControlConfiguration">>, Input, Options).

%% @doc Updates an Amazon Kendra data source connector.
-spec update_data_source(aws_client:aws_client(), update_data_source_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_data_source_errors(), tuple()}.
update_data_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_data_source(Client, Input, []).

-spec update_data_source(aws_client:aws_client(), update_data_source_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_data_source_errors(), tuple()}.
update_data_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDataSource">>, Input, Options).

%% @doc Updates your Amazon Kendra experience such as a search application.
%%
%% For more information on
%% creating a search application experience, see Building a
%% search experience with no code:
%% https://docs.aws.amazon.com/kendra/latest/dg/deploying-search-experience-no-code.html.
-spec update_experience(aws_client:aws_client(), update_experience_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_experience_errors(), tuple()}.
update_experience(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_experience(Client, Input, []).

-spec update_experience(aws_client:aws_client(), update_experience_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_experience_errors(), tuple()}.
update_experience(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateExperience">>, Input, Options).

%% @doc Updates a set of featured results.
%%
%% Features results are placed
%% above
%% all other results for certain queries. You map specific queries to
%% specific documents
%% for featuring in the results. If a query contains an exact match of a
%% query, then one
%% or more specific documents are featured in the search results.
-spec update_featured_results_set(aws_client:aws_client(), update_featured_results_set_request()) ->
    {ok, update_featured_results_set_response(), tuple()} |
    {error, any()} |
    {error, update_featured_results_set_errors(), tuple()}.
update_featured_results_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_featured_results_set(Client, Input, []).

-spec update_featured_results_set(aws_client:aws_client(), update_featured_results_set_request(), proplists:proplist()) ->
    {ok, update_featured_results_set_response(), tuple()} |
    {error, any()} |
    {error, update_featured_results_set_errors(), tuple()}.
update_featured_results_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFeaturedResultsSet">>, Input, Options).

%% @doc Updates an Amazon Kendra index.
-spec update_index(aws_client:aws_client(), update_index_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_index_errors(), tuple()}.
update_index(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_index(Client, Input, []).

-spec update_index(aws_client:aws_client(), update_index_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_index_errors(), tuple()}.
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
%% fields
%% you want to update.
%%
%% `UpdateQuerySuggestionsBlockList' is currently not supported in the
%% Amazon Web Services GovCloud (US-West) region.
-spec update_query_suggestions_block_list(aws_client:aws_client(), update_query_suggestions_block_list_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_query_suggestions_block_list_errors(), tuple()}.
update_query_suggestions_block_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_query_suggestions_block_list(Client, Input, []).

-spec update_query_suggestions_block_list(aws_client:aws_client(), update_query_suggestions_block_list_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_query_suggestions_block_list_errors(), tuple()}.
update_query_suggestions_block_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateQuerySuggestionsBlockList">>, Input, Options).

%% @doc Updates the settings of query suggestions for an index.
%%
%% Amazon Kendra supports partial updates, so you only need to provide
%% the fields you want to update.
%%
%% If an update is currently processing, you
%% need to wait for the update to finish before making another update.
%%
%% Updates to query suggestions settings might not take effect right away.
%% The time for your updated settings to take effect depends on the updates
%% made and the number of search queries in your index.
%%
%% You can still enable/disable query suggestions at any time.
%%
%% `UpdateQuerySuggestionsConfig' is currently not supported in the
%% Amazon Web Services GovCloud (US-West) region.
-spec update_query_suggestions_config(aws_client:aws_client(), update_query_suggestions_config_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_query_suggestions_config_errors(), tuple()}.
update_query_suggestions_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_query_suggestions_config(Client, Input, []).

-spec update_query_suggestions_config(aws_client:aws_client(), update_query_suggestions_config_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_query_suggestions_config_errors(), tuple()}.
update_query_suggestions_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateQuerySuggestionsConfig">>, Input, Options).

%% @doc Updates a thesaurus for an index.
-spec update_thesaurus(aws_client:aws_client(), update_thesaurus_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_thesaurus_errors(), tuple()}.
update_thesaurus(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_thesaurus(Client, Input, []).

-spec update_thesaurus(aws_client:aws_client(), update_thesaurus_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_thesaurus_errors(), tuple()}.
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
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
