%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Clean Rooms API Reference.
%%
%% Clean Rooms is an Amazon Web Services service that helps multiple parties
%% to join their data together in a secure collaboration workspace. In the
%% collaboration, members who can run queries and jobs and receive results
%% can get insights into the collective datasets without either party getting
%% access to the other party's raw data.
%%
%% To learn more about Clean Rooms concepts, procedures, and best practices,
%% see the Clean Rooms User Guide:
%% https://docs.aws.amazon.com/clean-rooms/latest/userguide/what-is.html.
%%
%% To learn more about SQL commands, functions, and conditions supported in
%% Clean Rooms, see the Clean Rooms SQL Reference:
%% https://docs.aws.amazon.com/clean-rooms/latest/sql-reference/sql-reference.html.
-module(aws_cleanrooms).

-export([batch_get_collaboration_analysis_template/3,
         batch_get_collaboration_analysis_template/4,
         batch_get_schema/3,
         batch_get_schema/4,
         batch_get_schema_analysis_rule/3,
         batch_get_schema_analysis_rule/4,
         create_analysis_template/3,
         create_analysis_template/4,
         create_collaboration/2,
         create_collaboration/3,
         create_configured_audience_model_association/3,
         create_configured_audience_model_association/4,
         create_configured_table/2,
         create_configured_table/3,
         create_configured_table_analysis_rule/3,
         create_configured_table_analysis_rule/4,
         create_configured_table_association/3,
         create_configured_table_association/4,
         create_configured_table_association_analysis_rule/4,
         create_configured_table_association_analysis_rule/5,
         create_id_mapping_table/3,
         create_id_mapping_table/4,
         create_id_namespace_association/3,
         create_id_namespace_association/4,
         create_membership/2,
         create_membership/3,
         create_privacy_budget_template/3,
         create_privacy_budget_template/4,
         delete_analysis_template/4,
         delete_analysis_template/5,
         delete_collaboration/3,
         delete_collaboration/4,
         delete_configured_audience_model_association/4,
         delete_configured_audience_model_association/5,
         delete_configured_table/3,
         delete_configured_table/4,
         delete_configured_table_analysis_rule/4,
         delete_configured_table_analysis_rule/5,
         delete_configured_table_association/4,
         delete_configured_table_association/5,
         delete_configured_table_association_analysis_rule/5,
         delete_configured_table_association_analysis_rule/6,
         delete_id_mapping_table/4,
         delete_id_mapping_table/5,
         delete_id_namespace_association/4,
         delete_id_namespace_association/5,
         delete_member/4,
         delete_member/5,
         delete_membership/3,
         delete_membership/4,
         delete_privacy_budget_template/4,
         delete_privacy_budget_template/5,
         get_analysis_template/3,
         get_analysis_template/5,
         get_analysis_template/6,
         get_collaboration/2,
         get_collaboration/4,
         get_collaboration/5,
         get_collaboration_analysis_template/3,
         get_collaboration_analysis_template/5,
         get_collaboration_analysis_template/6,
         get_collaboration_configured_audience_model_association/3,
         get_collaboration_configured_audience_model_association/5,
         get_collaboration_configured_audience_model_association/6,
         get_collaboration_id_namespace_association/3,
         get_collaboration_id_namespace_association/5,
         get_collaboration_id_namespace_association/6,
         get_collaboration_privacy_budget_template/3,
         get_collaboration_privacy_budget_template/5,
         get_collaboration_privacy_budget_template/6,
         get_configured_audience_model_association/3,
         get_configured_audience_model_association/5,
         get_configured_audience_model_association/6,
         get_configured_table/2,
         get_configured_table/4,
         get_configured_table/5,
         get_configured_table_analysis_rule/3,
         get_configured_table_analysis_rule/5,
         get_configured_table_analysis_rule/6,
         get_configured_table_association/3,
         get_configured_table_association/5,
         get_configured_table_association/6,
         get_configured_table_association_analysis_rule/4,
         get_configured_table_association_analysis_rule/6,
         get_configured_table_association_analysis_rule/7,
         get_id_mapping_table/3,
         get_id_mapping_table/5,
         get_id_mapping_table/6,
         get_id_namespace_association/3,
         get_id_namespace_association/5,
         get_id_namespace_association/6,
         get_membership/2,
         get_membership/4,
         get_membership/5,
         get_privacy_budget_template/3,
         get_privacy_budget_template/5,
         get_privacy_budget_template/6,
         get_protected_job/3,
         get_protected_job/5,
         get_protected_job/6,
         get_protected_query/3,
         get_protected_query/5,
         get_protected_query/6,
         get_schema/3,
         get_schema/5,
         get_schema/6,
         get_schema_analysis_rule/4,
         get_schema_analysis_rule/6,
         get_schema_analysis_rule/7,
         list_analysis_templates/2,
         list_analysis_templates/4,
         list_analysis_templates/5,
         list_collaboration_analysis_templates/2,
         list_collaboration_analysis_templates/4,
         list_collaboration_analysis_templates/5,
         list_collaboration_configured_audience_model_associations/2,
         list_collaboration_configured_audience_model_associations/4,
         list_collaboration_configured_audience_model_associations/5,
         list_collaboration_id_namespace_associations/2,
         list_collaboration_id_namespace_associations/4,
         list_collaboration_id_namespace_associations/5,
         list_collaboration_privacy_budget_templates/2,
         list_collaboration_privacy_budget_templates/4,
         list_collaboration_privacy_budget_templates/5,
         list_collaboration_privacy_budgets/3,
         list_collaboration_privacy_budgets/5,
         list_collaboration_privacy_budgets/6,
         list_collaborations/1,
         list_collaborations/3,
         list_collaborations/4,
         list_configured_audience_model_associations/2,
         list_configured_audience_model_associations/4,
         list_configured_audience_model_associations/5,
         list_configured_table_associations/2,
         list_configured_table_associations/4,
         list_configured_table_associations/5,
         list_configured_tables/1,
         list_configured_tables/3,
         list_configured_tables/4,
         list_id_mapping_tables/2,
         list_id_mapping_tables/4,
         list_id_mapping_tables/5,
         list_id_namespace_associations/2,
         list_id_namespace_associations/4,
         list_id_namespace_associations/5,
         list_members/2,
         list_members/4,
         list_members/5,
         list_memberships/1,
         list_memberships/3,
         list_memberships/4,
         list_privacy_budget_templates/2,
         list_privacy_budget_templates/4,
         list_privacy_budget_templates/5,
         list_privacy_budgets/3,
         list_privacy_budgets/5,
         list_privacy_budgets/6,
         list_protected_jobs/2,
         list_protected_jobs/4,
         list_protected_jobs/5,
         list_protected_queries/2,
         list_protected_queries/4,
         list_protected_queries/5,
         list_schemas/2,
         list_schemas/4,
         list_schemas/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         populate_id_mapping_table/4,
         populate_id_mapping_table/5,
         preview_privacy_impact/3,
         preview_privacy_impact/4,
         start_protected_job/3,
         start_protected_job/4,
         start_protected_query/3,
         start_protected_query/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_analysis_template/4,
         update_analysis_template/5,
         update_collaboration/3,
         update_collaboration/4,
         update_configured_audience_model_association/4,
         update_configured_audience_model_association/5,
         update_configured_table/3,
         update_configured_table/4,
         update_configured_table_analysis_rule/4,
         update_configured_table_analysis_rule/5,
         update_configured_table_association/4,
         update_configured_table_association/5,
         update_configured_table_association_analysis_rule/5,
         update_configured_table_association_analysis_rule/6,
         update_id_mapping_table/4,
         update_id_mapping_table/5,
         update_id_namespace_association/4,
         update_id_namespace_association/5,
         update_membership/3,
         update_membership/4,
         update_privacy_budget_template/4,
         update_privacy_budget_template/5,
         update_protected_job/4,
         update_protected_job/5,
         update_protected_query/4,
         update_protected_query/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% protected_query_distribute_output_configuration() :: #{
%%   <<"locations">> => list(list()())
%% }
-type protected_query_distribute_output_configuration() :: #{binary() => any()}.


%% Example:
%% configured_table_summary() :: #{
%%   <<"analysisMethod">> => list(any()),
%%   <<"analysisRuleTypes">> => list(list(any())()),
%%   <<"arn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"selectedAnalysisMethods">> => list(list(any())()),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type configured_table_summary() :: #{binary() => any()}.


%% Example:
%% list_schemas_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"schemaType">> => list(any())
%% }
-type list_schemas_input() :: #{binary() => any()}.

%% Example:
%% get_configured_table_association_input() :: #{}
-type get_configured_table_association_input() :: #{}.


%% Example:
%% list_configured_audience_model_associations_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_configured_audience_model_associations_input() :: #{binary() => any()}.


%% Example:
%% list_protected_jobs_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any())
%% }
-type list_protected_jobs_input() :: #{binary() => any()}.

%% Example:
%% delete_configured_audience_model_association_output() :: #{}
-type delete_configured_audience_model_association_output() :: #{}.


%% Example:
%% list_analysis_templates_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_analysis_templates_input() :: #{binary() => any()}.


%% Example:
%% list_collaboration_analysis_templates_output() :: #{
%%   <<"collaborationAnalysisTemplateSummaries">> := list(collaboration_analysis_template_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_collaboration_analysis_templates_output() :: #{binary() => any()}.


%% Example:
%% create_configured_table_output() :: #{
%%   <<"configuredTable">> := configured_table()
%% }
-type create_configured_table_output() :: #{binary() => any()}.


%% Example:
%% create_privacy_budget_template_output() :: #{
%%   <<"privacyBudgetTemplate">> => privacy_budget_template()
%% }
-type create_privacy_budget_template_output() :: #{binary() => any()}.


%% Example:
%% differential_privacy_preview_parameters_input() :: #{
%%   <<"epsilon">> => integer(),
%%   <<"usersNoisePerQuery">> => integer()
%% }
-type differential_privacy_preview_parameters_input() :: #{binary() => any()}.

%% Example:
%% delete_configured_table_input() :: #{}
-type delete_configured_table_input() :: #{}.


%% Example:
%% list_id_mapping_tables_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_id_mapping_tables_input() :: #{binary() => any()}.


%% Example:
%% list_members_output() :: #{
%%   <<"memberSummaries">> := list(member_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_members_output() :: #{binary() => any()}.


%% Example:
%% list_collaboration_id_namespace_associations_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_collaboration_id_namespace_associations_input() :: #{binary() => any()}.


%% Example:
%% create_membership_input() :: #{
%%   <<"collaborationIdentifier">> := string(),
%%   <<"defaultJobResultConfiguration">> => membership_protected_job_result_configuration(),
%%   <<"defaultResultConfiguration">> => membership_protected_query_result_configuration(),
%%   <<"jobLogStatus">> => list(any()),
%%   <<"paymentConfiguration">> => membership_payment_configuration(),
%%   <<"queryLogStatus">> := list(any()),
%%   <<"tags">> => map()
%% }
-type create_membership_input() :: #{binary() => any()}.


%% Example:
%% batch_get_collaboration_analysis_template_input() :: #{
%%   <<"analysisTemplateArns">> := list(string()())
%% }
-type batch_get_collaboration_analysis_template_input() :: #{binary() => any()}.


%% Example:
%% get_configured_table_analysis_rule_output() :: #{
%%   <<"analysisRule">> := configured_table_analysis_rule()
%% }
-type get_configured_table_analysis_rule_output() :: #{binary() => any()}.


%% Example:
%% create_configured_table_association_analysis_rule_input() :: #{
%%   <<"analysisRulePolicy">> := list(),
%%   <<"analysisRuleType">> := list(any())
%% }
-type create_configured_table_association_analysis_rule_input() :: #{binary() => any()}.


%% Example:
%% create_configured_table_input() :: #{
%%   <<"allowedColumns">> := list(string()()),
%%   <<"analysisMethod">> := list(any()),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"selectedAnalysisMethods">> => list(list(any())()),
%%   <<"tableReference">> := list(),
%%   <<"tags">> => map()
%% }
-type create_configured_table_input() :: #{binary() => any()}.


%% Example:
%% analysis_rule() :: #{
%%   <<"collaborationId">> => string(),
%%   <<"collaborationPolicy">> => list(),
%%   <<"consolidatedPolicy">> => list(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"name">> => string(),
%%   <<"policy">> => list(),
%%   <<"type">> => list(any()),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type analysis_rule() :: #{binary() => any()}.


%% Example:
%% get_protected_query_output() :: #{
%%   <<"protectedQuery">> := protected_query()
%% }
-type get_protected_query_output() :: #{binary() => any()}.


%% Example:
%% analysis_template_artifacts() :: #{
%%   <<"additionalArtifacts">> => list(analysis_template_artifact()()),
%%   <<"entryPoint">> => analysis_template_artifact(),
%%   <<"roleArn">> => string()
%% }
-type analysis_template_artifacts() :: #{binary() => any()}.


%% Example:
%% list_configured_table_associations_output() :: #{
%%   <<"configuredTableAssociationSummaries">> := list(configured_table_association_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_configured_table_associations_output() :: #{binary() => any()}.


%% Example:
%% collaboration_analysis_template() :: #{
%%   <<"analysisParameters">> => list(analysis_parameter()()),
%%   <<"arn">> => string(),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"creatorAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"format">> => list(any()),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"schema">> => analysis_schema(),
%%   <<"source">> => list(),
%%   <<"sourceMetadata">> => list(),
%%   <<"updateTime">> => [non_neg_integer()],
%%   <<"validations">> => list(analysis_template_validation_status_detail()())
%% }
-type collaboration_analysis_template() :: #{binary() => any()}.

%% Example:
%% get_analysis_template_input() :: #{}
-type get_analysis_template_input() :: #{}.


%% Example:
%% protected_query_member_output_configuration() :: #{
%%   <<"accountId">> => string()
%% }
-type protected_query_member_output_configuration() :: #{binary() => any()}.


%% Example:
%% protected_job() :: #{
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"error">> => protected_job_error(),
%%   <<"id">> => string(),
%%   <<"jobParameters">> => protected_job_parameters(),
%%   <<"membershipArn">> => string(),
%%   <<"membershipId">> => string(),
%%   <<"result">> => protected_job_result(),
%%   <<"resultConfiguration">> => protected_job_result_configuration_output(),
%%   <<"statistics">> => protected_job_statistics(),
%%   <<"status">> => list(any())
%% }
-type protected_job() :: #{binary() => any()}.


%% Example:
%% list_analysis_templates_output() :: #{
%%   <<"analysisTemplateSummaries">> := list(analysis_template_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_analysis_templates_output() :: #{binary() => any()}.

%% Example:
%% delete_id_namespace_association_output() :: #{}
-type delete_id_namespace_association_output() :: #{}.


%% Example:
%% collaboration_id_namespace_association_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"creatorAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"inputReferenceConfig">> => id_namespace_association_input_reference_config(),
%%   <<"inputReferenceProperties">> => id_namespace_association_input_reference_properties_summary(),
%%   <<"name">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type collaboration_id_namespace_association_summary() :: #{binary() => any()}.


%% Example:
%% protected_query_summary() :: #{
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"membershipArn">> => string(),
%%   <<"membershipId">> => string(),
%%   <<"receiverConfigurations">> => list(receiver_configuration()()),
%%   <<"status">> => string()
%% }
-type protected_query_summary() :: #{binary() => any()}.

%% Example:
%% get_collaboration_analysis_template_input() :: #{}
-type get_collaboration_analysis_template_input() :: #{}.


%% Example:
%% list_configured_table_associations_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_configured_table_associations_input() :: #{binary() => any()}.

%% Example:
%% delete_privacy_budget_template_input() :: #{}
-type delete_privacy_budget_template_input() :: #{}.

%% Example:
%% delete_id_mapping_table_input() :: #{}
-type delete_id_mapping_table_input() :: #{}.

%% Example:
%% delete_membership_output() :: #{}
-type delete_membership_output() :: #{}.


%% Example:
%% receiver_configuration() :: #{
%%   <<"analysisType">> => list(any()),
%%   <<"configurationDetails">> => list()
%% }
-type receiver_configuration() :: #{binary() => any()}.


%% Example:
%% update_analysis_template_input() :: #{
%%   <<"description">> => string()
%% }
-type update_analysis_template_input() :: #{binary() => any()}.


%% Example:
%% column() :: #{
%%   <<"name">> => string(),
%%   <<"type">> => string()
%% }
-type column() :: #{binary() => any()}.


%% Example:
%% id_namespace_association_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"inputReferenceConfig">> => id_namespace_association_input_reference_config(),
%%   <<"inputReferenceProperties">> => id_namespace_association_input_reference_properties_summary(),
%%   <<"membershipArn">> => string(),
%%   <<"membershipId">> => string(),
%%   <<"name">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type id_namespace_association_summary() :: #{binary() => any()}.


%% Example:
%% protected_job_s3_output() :: #{
%%   <<"location">> => [string()]
%% }
-type protected_job_s3_output() :: #{binary() => any()}.

%% Example:
%% get_collaboration_id_namespace_association_input() :: #{}
-type get_collaboration_id_namespace_association_input() :: #{}.


%% Example:
%% list_configured_tables_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_configured_tables_input() :: #{binary() => any()}.


%% Example:
%% create_collaboration_output() :: #{
%%   <<"collaboration">> := collaboration()
%% }
-type create_collaboration_output() :: #{binary() => any()}.


%% Example:
%% id_namespace_association_input_reference_config() :: #{
%%   <<"inputReferenceArn">> => string(),
%%   <<"manageResourcePolicies">> => [boolean()]
%% }
-type id_namespace_association_input_reference_config() :: #{binary() => any()}.


%% Example:
%% list_memberships_output() :: #{
%%   <<"membershipSummaries">> := list(membership_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_memberships_output() :: #{binary() => any()}.


%% Example:
%% protected_job_error() :: #{
%%   <<"code">> => [string()],
%%   <<"message">> => [string()]
%% }
-type protected_job_error() :: #{binary() => any()}.


%% Example:
%% configured_audience_model_association_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"configuredAudienceModelArn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"membershipArn">> => string(),
%%   <<"membershipId">> => string(),
%%   <<"name">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type configured_audience_model_association_summary() :: #{binary() => any()}.


%% Example:
%% update_configured_table_analysis_rule_output() :: #{
%%   <<"analysisRule">> := configured_table_analysis_rule()
%% }
-type update_configured_table_analysis_rule_output() :: #{binary() => any()}.


%% Example:
%% analysis_template_validation_status_detail() :: #{
%%   <<"reasons">> => list(analysis_template_validation_status_reason()()),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type analysis_template_validation_status_detail() :: #{binary() => any()}.


%% Example:
%% list_protected_queries_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"protectedQueries">> := list(protected_query_summary()())
%% }
-type list_protected_queries_output() :: #{binary() => any()}.


%% Example:
%% protected_query_distribute_output() :: #{
%%   <<"memberList">> => list(protected_query_single_member_output()()),
%%   <<"s3">> => protected_query_s3_output()
%% }
-type protected_query_distribute_output() :: #{binary() => any()}.


%% Example:
%% list_protected_queries_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => string()
%% }
-type list_protected_queries_input() :: #{binary() => any()}.


%% Example:
%% update_configured_table_analysis_rule_input() :: #{
%%   <<"analysisRulePolicy">> := list()
%% }
-type update_configured_table_analysis_rule_input() :: #{binary() => any()}.


%% Example:
%% differential_privacy_parameters() :: #{
%%   <<"sensitivityParameters">> => list(differential_privacy_sensitivity_parameters()())
%% }
-type differential_privacy_parameters() :: #{binary() => any()}.

%% Example:
%% get_collaboration_privacy_budget_template_input() :: #{}
-type get_collaboration_privacy_budget_template_input() :: #{}.

%% Example:
%% delete_configured_audience_model_association_input() :: #{}
-type delete_configured_audience_model_association_input() :: #{}.


%% Example:
%% update_configured_table_output() :: #{
%%   <<"configuredTable">> := configured_table()
%% }
-type update_configured_table_output() :: #{binary() => any()}.


%% Example:
%% configured_table_association() :: #{
%%   <<"analysisRuleTypes">> => list(list(any())()),
%%   <<"arn">> => string(),
%%   <<"configuredTableArn">> => string(),
%%   <<"configuredTableId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"membershipArn">> => string(),
%%   <<"membershipId">> => string(),
%%   <<"name">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type configured_table_association() :: #{binary() => any()}.


%% Example:
%% get_membership_output() :: #{
%%   <<"membership">> := membership()
%% }
-type get_membership_output() :: #{binary() => any()}.

%% Example:
%% delete_configured_table_association_analysis_rule_output() :: #{}
-type delete_configured_table_association_analysis_rule_output() :: #{}.


%% Example:
%% differential_privacy_privacy_budget_aggregation() :: #{
%%   <<"maxCount">> => [integer()],
%%   <<"remainingCount">> => [integer()],
%%   <<"type">> => list(any())
%% }
-type differential_privacy_privacy_budget_aggregation() :: #{binary() => any()}.


%% Example:
%% collaboration() :: #{
%%   <<"analyticsEngine">> => list(any()),
%%   <<"arn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"creatorAccountId">> => string(),
%%   <<"creatorDisplayName">> => string(),
%%   <<"dataEncryptionMetadata">> => data_encryption_metadata(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"jobLogStatus">> => list(any()),
%%   <<"memberStatus">> => string(),
%%   <<"membershipArn">> => string(),
%%   <<"membershipId">> => string(),
%%   <<"name">> => string(),
%%   <<"queryLogStatus">> => list(any()),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type collaboration() :: #{binary() => any()}.


%% Example:
%% analysis_rule_aggregation() :: #{
%%   <<"additionalAnalyses">> => list(any()),
%%   <<"aggregateColumns">> => list(aggregate_column()()),
%%   <<"allowedJoinOperators">> => list(string()()),
%%   <<"dimensionColumns">> => list(string()()),
%%   <<"joinColumns">> => list(string()()),
%%   <<"joinRequired">> => string(),
%%   <<"outputConstraints">> => list(aggregation_constraint()()),
%%   <<"scalarFunctions">> => list(string()())
%% }
-type analysis_rule_aggregation() :: #{binary() => any()}.


%% Example:
%% differential_privacy_privacy_budget() :: #{
%%   <<"aggregations">> => list(differential_privacy_privacy_budget_aggregation()()),
%%   <<"epsilon">> => integer()
%% }
-type differential_privacy_privacy_budget() :: #{binary() => any()}.


%% Example:
%% list_privacy_budget_templates_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_privacy_budget_templates_input() :: #{binary() => any()}.


%% Example:
%% update_analysis_template_output() :: #{
%%   <<"analysisTemplate">> := analysis_template()
%% }
-type update_analysis_template_output() :: #{binary() => any()}.


%% Example:
%% analysis_schema() :: #{
%%   <<"referencedTables">> => list(string()())
%% }
-type analysis_schema() :: #{binary() => any()}.


%% Example:
%% protected_job_receiver_configuration() :: #{
%%   <<"analysisType">> => list(any()),
%%   <<"configurationDetails">> => list()
%% }
-type protected_job_receiver_configuration() :: #{binary() => any()}.


%% Example:
%% update_id_mapping_table_input() :: #{
%%   <<"description">> => string(),
%%   <<"kmsKeyArn">> => string()
%% }
-type update_id_mapping_table_input() :: #{binary() => any()}.


%% Example:
%% update_id_namespace_association_input() :: #{
%%   <<"description">> => string(),
%%   <<"idMappingConfig">> => id_mapping_config(),
%%   <<"name">> => string()
%% }
-type update_id_namespace_association_input() :: #{binary() => any()}.


%% Example:
%% update_collaboration_output() :: #{
%%   <<"collaboration">> := collaboration()
%% }
-type update_collaboration_output() :: #{binary() => any()}.


%% Example:
%% create_id_mapping_table_output() :: #{
%%   <<"idMappingTable">> => id_mapping_table()
%% }
-type create_id_mapping_table_output() :: #{binary() => any()}.


%% Example:
%% list_collaboration_privacy_budgets_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"privacyBudgetType">> := list(any())
%% }
-type list_collaboration_privacy_budgets_input() :: #{binary() => any()}.


%% Example:
%% schema_status_detail() :: #{
%%   <<"analysisRuleType">> => list(any()),
%%   <<"analysisType">> => list(any()),
%%   <<"configurations">> => list(list(any())()),
%%   <<"reasons">> => list(schema_status_reason()()),
%%   <<"status">> => list(any())
%% }
-type schema_status_detail() :: #{binary() => any()}.


%% Example:
%% update_configured_table_association_input() :: #{
%%   <<"description">> => string(),
%%   <<"roleArn">> => string()
%% }
-type update_configured_table_association_input() :: #{binary() => any()}.


%% Example:
%% differential_privacy_preview_aggregation() :: #{
%%   <<"maxCount">> => [integer()],
%%   <<"type">> => list(any())
%% }
-type differential_privacy_preview_aggregation() :: #{binary() => any()}.


%% Example:
%% model_inference_payment_config() :: #{
%%   <<"isResponsible">> => [boolean()]
%% }
-type model_inference_payment_config() :: #{binary() => any()}.


%% Example:
%% protected_job_result_configuration_output() :: #{
%%   <<"outputConfiguration">> => list()
%% }
-type protected_job_result_configuration_output() :: #{binary() => any()}.


%% Example:
%% ml_member_abilities() :: #{
%%   <<"customMLMemberAbilities">> => list(list(any())())
%% }
-type ml_member_abilities() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% job_compute_payment_config() :: #{
%%   <<"isResponsible">> => [boolean()]
%% }
-type job_compute_payment_config() :: #{binary() => any()}.


%% Example:
%% update_collaboration_input() :: #{
%%   <<"analyticsEngine">> => list(any()),
%%   <<"description">> => string(),
%%   <<"name">> => string()
%% }
-type update_collaboration_input() :: #{binary() => any()}.


%% Example:
%% preview_privacy_impact_input() :: #{
%%   <<"parameters">> := list()
%% }
-type preview_privacy_impact_input() :: #{binary() => any()}.


%% Example:
%% id_mapping_table_schema_type_properties() :: #{
%%   <<"idMappingTableInputSource">> => list(id_mapping_table_input_source()())
%% }
-type id_mapping_table_schema_type_properties() :: #{binary() => any()}.


%% Example:
%% list_memberships_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => string()
%% }
-type list_memberships_input() :: #{binary() => any()}.


%% Example:
%% get_id_namespace_association_output() :: #{
%%   <<"idNamespaceAssociation">> => id_namespace_association()
%% }
-type get_id_namespace_association_output() :: #{binary() => any()}.


%% Example:
%% list_schemas_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"schemaSummaries">> := list(schema_summary()())
%% }
-type list_schemas_output() :: #{binary() => any()}.

%% Example:
%% delete_analysis_template_input() :: #{}
-type delete_analysis_template_input() :: #{}.


%% Example:
%% consolidated_policy_list() :: #{
%%   <<"additionalAnalyses">> => list(any()),
%%   <<"allowedAdditionalAnalyses">> => list(string()()),
%%   <<"allowedJoinOperators">> => list(string()()),
%%   <<"allowedResultReceivers">> => list(string()()),
%%   <<"joinColumns">> => list(string()()),
%%   <<"listColumns">> => list(string()())
%% }
-type consolidated_policy_list() :: #{binary() => any()}.


%% Example:
%% get_collaboration_privacy_budget_template_output() :: #{
%%   <<"collaborationPrivacyBudgetTemplate">> => collaboration_privacy_budget_template()
%% }
-type get_collaboration_privacy_budget_template_output() :: #{binary() => any()}.

%% Example:
%% delete_configured_table_analysis_rule_output() :: #{}
-type delete_configured_table_analysis_rule_output() :: #{}.


%% Example:
%% update_privacy_budget_template_input() :: #{
%%   <<"parameters">> => list(),
%%   <<"privacyBudgetType">> := list(any())
%% }
-type update_privacy_budget_template_input() :: #{binary() => any()}.


%% Example:
%% analysis_rule_custom() :: #{
%%   <<"additionalAnalyses">> => list(any()),
%%   <<"allowedAnalyses">> => list(string()()),
%%   <<"allowedAnalysisProviders">> => list(string()()),
%%   <<"differentialPrivacy">> => differential_privacy_configuration(),
%%   <<"disallowedOutputColumns">> => list(string()())
%% }
-type analysis_rule_custom() :: #{binary() => any()}.

%% Example:
%% delete_member_output() :: #{}
-type delete_member_output() :: #{}.


%% Example:
%% schema_analysis_rule_request() :: #{
%%   <<"name">> => string(),
%%   <<"type">> => list(any())
%% }
-type schema_analysis_rule_request() :: #{binary() => any()}.

%% Example:
%% delete_configured_table_association_output() :: #{}
-type delete_configured_table_association_output() :: #{}.


%% Example:
%% athena_table_reference() :: #{
%%   <<"databaseName">> => string(),
%%   <<"outputLocation">> => string(),
%%   <<"tableName">> => string(),
%%   <<"workGroup">> => string()
%% }
-type athena_table_reference() :: #{binary() => any()}.


%% Example:
%% create_analysis_template_output() :: #{
%%   <<"analysisTemplate">> := analysis_template()
%% }
-type create_analysis_template_output() :: #{binary() => any()}.

%% Example:
%% get_collaboration_input() :: #{}
-type get_collaboration_input() :: #{}.

%% Example:
%% get_protected_query_input() :: #{}
-type get_protected_query_input() :: #{}.


%% Example:
%% membership_model_inference_payment_config() :: #{
%%   <<"isResponsible">> => [boolean()]
%% }
-type membership_model_inference_payment_config() :: #{binary() => any()}.


%% Example:
%% billed_job_resource_utilization() :: #{
%%   <<"units">> => [float()]
%% }
-type billed_job_resource_utilization() :: #{binary() => any()}.


%% Example:
%% privacy_budget_template_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"membershipArn">> => string(),
%%   <<"membershipId">> => string(),
%%   <<"privacyBudgetType">> => list(any()),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type privacy_budget_template_summary() :: #{binary() => any()}.


%% Example:
%% create_configured_table_association_analysis_rule_output() :: #{
%%   <<"analysisRule">> => configured_table_association_analysis_rule()
%% }
-type create_configured_table_association_analysis_rule_output() :: #{binary() => any()}.

%% Example:
%% delete_collaboration_input() :: #{}
-type delete_collaboration_input() :: #{}.


%% Example:
%% update_protected_query_input() :: #{
%%   <<"targetStatus">> := string()
%% }
-type update_protected_query_input() :: #{binary() => any()}.


%% Example:
%% configured_table_association_analysis_rule_custom() :: #{
%%   <<"allowedAdditionalAnalyses">> => list(string()()),
%%   <<"allowedResultReceivers">> => list(string()())
%% }
-type configured_table_association_analysis_rule_custom() :: #{binary() => any()}.


%% Example:
%% membership_protected_query_result_configuration() :: #{
%%   <<"outputConfiguration">> => list(),
%%   <<"roleArn">> => string()
%% }
-type membership_protected_query_result_configuration() :: #{binary() => any()}.

%% Example:
%% delete_member_input() :: #{}
-type delete_member_input() :: #{}.


%% Example:
%% get_configured_audience_model_association_output() :: #{
%%   <<"configuredAudienceModelAssociation">> => configured_audience_model_association()
%% }
-type get_configured_audience_model_association_output() :: #{binary() => any()}.


%% Example:
%% list_configured_audience_model_associations_output() :: #{
%%   <<"configuredAudienceModelAssociationSummaries">> => list(configured_audience_model_association_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_configured_audience_model_associations_output() :: #{binary() => any()}.


%% Example:
%% consolidated_policy_custom() :: #{
%%   <<"additionalAnalyses">> => list(any()),
%%   <<"allowedAdditionalAnalyses">> => list(string()()),
%%   <<"allowedAnalyses">> => list(string()()),
%%   <<"allowedAnalysisProviders">> => list(string()()),
%%   <<"allowedResultReceivers">> => list(string()()),
%%   <<"differentialPrivacy">> => differential_privacy_configuration(),
%%   <<"disallowedOutputColumns">> => list(string()())
%% }
-type consolidated_policy_custom() :: #{binary() => any()}.


%% Example:
%% list_collaboration_privacy_budget_templates_output() :: #{
%%   <<"collaborationPrivacyBudgetTemplateSummaries">> => list(collaboration_privacy_budget_template_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_collaboration_privacy_budget_templates_output() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"reason">> => string(),
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% create_id_mapping_table_input() :: #{
%%   <<"description">> => string(),
%%   <<"inputReferenceConfig">> := id_mapping_table_input_reference_config(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_id_mapping_table_input() :: #{binary() => any()}.


%% Example:
%% create_configured_table_analysis_rule_input() :: #{
%%   <<"analysisRulePolicy">> := list(),
%%   <<"analysisRuleType">> := list(any())
%% }
-type create_configured_table_analysis_rule_input() :: #{binary() => any()}.


%% Example:
%% update_id_namespace_association_output() :: #{
%%   <<"idNamespaceAssociation">> => id_namespace_association()
%% }
-type update_id_namespace_association_output() :: #{binary() => any()}.


%% Example:
%% query_constraint_require_overlap() :: #{
%%   <<"columns">> => list(string()())
%% }
-type query_constraint_require_overlap() :: #{binary() => any()}.


%% Example:
%% protected_query() :: #{
%%   <<"computeConfiguration">> => list(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"differentialPrivacy">> => differential_privacy_parameters(),
%%   <<"error">> => protected_query_error(),
%%   <<"id">> => string(),
%%   <<"membershipArn">> => string(),
%%   <<"membershipId">> => string(),
%%   <<"result">> => protected_query_result(),
%%   <<"resultConfiguration">> => protected_query_result_configuration(),
%%   <<"sqlParameters">> => protected_query_s_q_l_parameters(),
%%   <<"statistics">> => protected_query_statistics(),
%%   <<"status">> => string()
%% }
-type protected_query() :: #{binary() => any()}.


%% Example:
%% protected_job_result_configuration_input() :: #{
%%   <<"outputConfiguration">> => list()
%% }
-type protected_job_result_configuration_input() :: #{binary() => any()}.


%% Example:
%% id_namespace_association_input_reference_properties() :: #{
%%   <<"idMappingWorkflowsSupported">> => list([any()]()),
%%   <<"idNamespaceType">> => list(any())
%% }
-type id_namespace_association_input_reference_properties() :: #{binary() => any()}.


%% Example:
%% protected_query_result_configuration() :: #{
%%   <<"outputConfiguration">> => list()
%% }
-type protected_query_result_configuration() :: #{binary() => any()}.


%% Example:
%% update_configured_table_association_output() :: #{
%%   <<"configuredTableAssociation">> := configured_table_association()
%% }
-type update_configured_table_association_output() :: #{binary() => any()}.


%% Example:
%% protected_job_result() :: #{
%%   <<"output">> => list()
%% }
-type protected_job_result() :: #{binary() => any()}.


%% Example:
%% update_configured_table_association_analysis_rule_input() :: #{
%%   <<"analysisRulePolicy">> := list()
%% }
-type update_configured_table_association_analysis_rule_input() :: #{binary() => any()}.


%% Example:
%% protected_job_statistics() :: #{
%%   <<"billedResourceUtilization">> => billed_job_resource_utilization(),
%%   <<"totalDurationInMillis">> => [float()]
%% }
-type protected_job_statistics() :: #{binary() => any()}.


%% Example:
%% batch_get_schema_analysis_rule_output() :: #{
%%   <<"analysisRules">> => list(analysis_rule()()),
%%   <<"errors">> => list(batch_get_schema_analysis_rule_error()())
%% }
-type batch_get_schema_analysis_rule_output() :: #{binary() => any()}.


%% Example:
%% protected_job_s3_output_configuration_input() :: #{
%%   <<"bucket">> => [string()],
%%   <<"keyPrefix">> => string()
%% }
-type protected_job_s3_output_configuration_input() :: #{binary() => any()}.


%% Example:
%% protected_job_summary() :: #{
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"membershipArn">> => string(),
%%   <<"membershipId">> => string(),
%%   <<"receiverConfigurations">> => list(protected_job_receiver_configuration()()),
%%   <<"status">> => list(any())
%% }
-type protected_job_summary() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaName">> => [string()],
%%   <<"quotaValue">> => [float()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% collaboration_configured_audience_model_association() :: #{
%%   <<"arn">> => string(),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"configuredAudienceModelArn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"creatorAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type collaboration_configured_audience_model_association() :: #{binary() => any()}.


%% Example:
%% create_configured_audience_model_association_input() :: #{
%%   <<"configuredAudienceModelArn">> := string(),
%%   <<"configuredAudienceModelAssociationName">> := string(),
%%   <<"description">> => string(),
%%   <<"manageResourcePolicies">> := [boolean()],
%%   <<"tags">> => map()
%% }
-type create_configured_audience_model_association_input() :: #{binary() => any()}.


%% Example:
%% differential_privacy_template_parameters_input() :: #{
%%   <<"epsilon">> => integer(),
%%   <<"usersNoisePerQuery">> => integer()
%% }
-type differential_privacy_template_parameters_input() :: #{binary() => any()}.


%% Example:
%% membership_query_compute_payment_config() :: #{
%%   <<"isResponsible">> => [boolean()]
%% }
-type membership_query_compute_payment_config() :: #{binary() => any()}.


%% Example:
%% protected_query_result() :: #{
%%   <<"output">> => list()
%% }
-type protected_query_result() :: #{binary() => any()}.


%% Example:
%% schema_summary() :: #{
%%   <<"analysisMethod">> => list(any()),
%%   <<"analysisRuleTypes">> => list(list(any())()),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"creatorAccountId">> => string(),
%%   <<"name">> => string(),
%%   <<"selectedAnalysisMethods">> => list(list(any())()),
%%   <<"type">> => list(any()),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type schema_summary() :: #{binary() => any()}.


%% Example:
%% start_protected_job_input() :: #{
%%   <<"jobParameters">> := protected_job_parameters(),
%%   <<"resultConfiguration">> => protected_job_result_configuration_input(),
%%   <<"type">> := list(any())
%% }
-type start_protected_job_input() :: #{binary() => any()}.

%% Example:
%% delete_configured_table_analysis_rule_input() :: #{}
-type delete_configured_table_analysis_rule_input() :: #{}.


%% Example:
%% populate_id_mapping_table_output() :: #{
%%   <<"idMappingJobId">> => string()
%% }
-type populate_id_mapping_table_output() :: #{binary() => any()}.


%% Example:
%% privacy_budget_template() :: #{
%%   <<"arn">> => string(),
%%   <<"autoRefresh">> => list(any()),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"membershipArn">> => string(),
%%   <<"membershipId">> => string(),
%%   <<"parameters">> => list(),
%%   <<"privacyBudgetType">> => list(any()),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type privacy_budget_template() :: #{binary() => any()}.


%% Example:
%% configured_table_association_analysis_rule_aggregation() :: #{
%%   <<"allowedAdditionalAnalyses">> => list(string()()),
%%   <<"allowedResultReceivers">> => list(string()())
%% }
-type configured_table_association_analysis_rule_aggregation() :: #{binary() => any()}.


%% Example:
%% privacy_budget_summary() :: #{
%%   <<"budget">> => list(),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"membershipArn">> => string(),
%%   <<"membershipId">> => string(),
%%   <<"privacyBudgetTemplateArn">> => string(),
%%   <<"privacyBudgetTemplateId">> => string(),
%%   <<"type">> => list(any()),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type privacy_budget_summary() :: #{binary() => any()}.


%% Example:
%% get_schema_output() :: #{
%%   <<"schema">> := schema()
%% }
-type get_schema_output() :: #{binary() => any()}.


%% Example:
%% hash() :: #{
%%   <<"sha256">> => [string()]
%% }
-type hash() :: #{binary() => any()}.


%% Example:
%% protected_job_single_member_output() :: #{
%%   <<"accountId">> => string()
%% }
-type protected_job_single_member_output() :: #{binary() => any()}.


%% Example:
%% get_collaboration_configured_audience_model_association_output() :: #{
%%   <<"collaborationConfiguredAudienceModelAssociation">> => collaboration_configured_audience_model_association()
%% }
-type get_collaboration_configured_audience_model_association_output() :: #{binary() => any()}.


%% Example:
%% batch_get_schema_output() :: #{
%%   <<"errors">> := list(batch_get_schema_error()()),
%%   <<"schemas">> := list(schema()())
%% }
-type batch_get_schema_output() :: #{binary() => any()}.


%% Example:
%% collaboration_summary() :: #{
%%   <<"analyticsEngine">> => list(any()),
%%   <<"arn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"creatorAccountId">> => string(),
%%   <<"creatorDisplayName">> => string(),
%%   <<"id">> => string(),
%%   <<"memberStatus">> => string(),
%%   <<"membershipArn">> => string(),
%%   <<"membershipId">> => string(),
%%   <<"name">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type collaboration_summary() :: #{binary() => any()}.


%% Example:
%% schema() :: #{
%%   <<"analysisMethod">> => list(any()),
%%   <<"analysisRuleTypes">> => list(list(any())()),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"columns">> => list(column()()),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"creatorAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"partitionKeys">> => list(column()()),
%%   <<"schemaStatusDetails">> => list(schema_status_detail()()),
%%   <<"schemaTypeProperties">> => list(),
%%   <<"selectedAnalysisMethods">> => list(list(any())()),
%%   <<"type">> => list(any()),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type schema() :: #{binary() => any()}.

%% Example:
%% get_configured_table_association_analysis_rule_input() :: #{}
-type get_configured_table_association_analysis_rule_input() :: #{}.


%% Example:
%% differential_privacy_column() :: #{
%%   <<"name">> => [string()]
%% }
-type differential_privacy_column() :: #{binary() => any()}.


%% Example:
%% membership_protected_job_result_configuration() :: #{
%%   <<"outputConfiguration">> => list(),
%%   <<"roleArn">> => string()
%% }
-type membership_protected_job_result_configuration() :: #{binary() => any()}.


%% Example:
%% list_collaboration_privacy_budget_templates_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_collaboration_privacy_budget_templates_input() :: #{binary() => any()}.


%% Example:
%% get_configured_table_association_analysis_rule_output() :: #{
%%   <<"analysisRule">> => configured_table_association_analysis_rule()
%% }
-type get_configured_table_association_analysis_rule_output() :: #{binary() => any()}.


%% Example:
%% list_privacy_budgets_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"privacyBudgetType">> := list(any())
%% }
-type list_privacy_budgets_input() :: #{binary() => any()}.


%% Example:
%% list_collaboration_configured_audience_model_associations_output() :: #{
%%   <<"collaborationConfiguredAudienceModelAssociationSummaries">> => list(collaboration_configured_audience_model_association_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_collaboration_configured_audience_model_associations_output() :: #{binary() => any()}.

%% Example:
%% delete_configured_table_association_input() :: #{}
-type delete_configured_table_association_input() :: #{}.


%% Example:
%% list_privacy_budget_templates_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"privacyBudgetTemplateSummaries">> => list(privacy_budget_template_summary()())
%% }
-type list_privacy_budget_templates_output() :: #{binary() => any()}.


%% Example:
%% id_mapping_config() :: #{
%%   <<"allowUseAsDimensionColumn">> => [boolean()]
%% }
-type id_mapping_config() :: #{binary() => any()}.


%% Example:
%% analysis_rule_list() :: #{
%%   <<"additionalAnalyses">> => list(any()),
%%   <<"allowedJoinOperators">> => list(string()()),
%%   <<"joinColumns">> => list(string()()),
%%   <<"listColumns">> => list(string()())
%% }
-type analysis_rule_list() :: #{binary() => any()}.


%% Example:
%% update_protected_job_output() :: #{
%%   <<"protectedJob">> => protected_job()
%% }
-type update_protected_job_output() :: #{binary() => any()}.


%% Example:
%% membership_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationCreatorAccountId">> => string(),
%%   <<"collaborationCreatorDisplayName">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"collaborationName">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"memberAbilities">> => list(list(any())()),
%%   <<"mlMemberAbilities">> => ml_member_abilities(),
%%   <<"paymentConfiguration">> => membership_payment_configuration(),
%%   <<"status">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type membership_summary() :: #{binary() => any()}.


%% Example:
%% create_id_namespace_association_input() :: #{
%%   <<"description">> => string(),
%%   <<"idMappingConfig">> => id_mapping_config(),
%%   <<"inputReferenceConfig">> := id_namespace_association_input_reference_config(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_id_namespace_association_input() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% get_configured_table_analysis_rule_input() :: #{}
-type get_configured_table_analysis_rule_input() :: #{}.


%% Example:
%% analysis_rule_id_mapping_table() :: #{
%%   <<"dimensionColumns">> => list(string()()),
%%   <<"joinColumns">> => list(string()()),
%%   <<"queryConstraints">> => list(list()())
%% }
-type analysis_rule_id_mapping_table() :: #{binary() => any()}.


%% Example:
%% protected_job_direct_analysis_configuration_details() :: #{
%%   <<"receiverAccountIds">> => list(string()())
%% }
-type protected_job_direct_analysis_configuration_details() :: #{binary() => any()}.


%% Example:
%% s3_location() :: #{
%%   <<"bucket">> => [string()],
%%   <<"key">> => [string()]
%% }
-type s3_location() :: #{binary() => any()}.


%% Example:
%% list_collaboration_analysis_templates_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_collaboration_analysis_templates_input() :: #{binary() => any()}.


%% Example:
%% protected_query_s3_output() :: #{
%%   <<"location">> => [string()]
%% }
-type protected_query_s3_output() :: #{binary() => any()}.


%% Example:
%% collaboration_privacy_budget_summary() :: #{
%%   <<"budget">> => list(),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"creatorAccountId">> => string(),
%%   <<"id">> => string(),
%%   <<"privacyBudgetTemplateArn">> => string(),
%%   <<"privacyBudgetTemplateId">> => string(),
%%   <<"type">> => list(any()),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type collaboration_privacy_budget_summary() :: #{binary() => any()}.


%% Example:
%% update_configured_audience_model_association_input() :: #{
%%   <<"description">> => string(),
%%   <<"name">> => string()
%% }
-type update_configured_audience_model_association_input() :: #{binary() => any()}.


%% Example:
%% list_collaboration_configured_audience_model_associations_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_collaboration_configured_audience_model_associations_input() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% create_privacy_budget_template_input() :: #{
%%   <<"autoRefresh">> := list(any()),
%%   <<"parameters">> := list(),
%%   <<"privacyBudgetType">> := list(any()),
%%   <<"tags">> => map()
%% }
-type create_privacy_budget_template_input() :: #{binary() => any()}.


%% Example:
%% get_privacy_budget_template_output() :: #{
%%   <<"privacyBudgetTemplate">> => privacy_budget_template()
%% }
-type get_privacy_budget_template_output() :: #{binary() => any()}.


%% Example:
%% update_protected_query_output() :: #{
%%   <<"protectedQuery">> := protected_query()
%% }
-type update_protected_query_output() :: #{binary() => any()}.


%% Example:
%% create_configured_table_association_output() :: #{
%%   <<"configuredTableAssociation">> := configured_table_association()
%% }
-type create_configured_table_association_output() :: #{binary() => any()}.


%% Example:
%% differential_privacy_privacy_impact() :: #{
%%   <<"aggregations">> => list(differential_privacy_preview_aggregation()())
%% }
-type differential_privacy_privacy_impact() :: #{binary() => any()}.


%% Example:
%% analysis_parameter() :: #{
%%   <<"defaultValue">> => string(),
%%   <<"name">> => string(),
%%   <<"type">> => list(any())
%% }
-type analysis_parameter() :: #{binary() => any()}.


%% Example:
%% id_mapping_table() :: #{
%%   <<"arn">> => string(),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"inputReferenceConfig">> => id_mapping_table_input_reference_config(),
%%   <<"inputReferenceProperties">> => id_mapping_table_input_reference_properties(),
%%   <<"kmsKeyArn">> => string(),
%%   <<"membershipArn">> => string(),
%%   <<"membershipId">> => string(),
%%   <<"name">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type id_mapping_table() :: #{binary() => any()}.

%% Example:
%% delete_id_mapping_table_output() :: #{}
-type delete_id_mapping_table_output() :: #{}.


%% Example:
%% create_collaboration_input() :: #{
%%   <<"analyticsEngine">> => list(any()),
%%   <<"creatorDisplayName">> := string(),
%%   <<"creatorMLMemberAbilities">> => ml_member_abilities(),
%%   <<"creatorMemberAbilities">> := list(list(any())()),
%%   <<"creatorPaymentConfiguration">> => payment_configuration(),
%%   <<"dataEncryptionMetadata">> => data_encryption_metadata(),
%%   <<"description">> := string(),
%%   <<"jobLogStatus">> => list(any()),
%%   <<"members">> := list(member_specification()()),
%%   <<"name">> := string(),
%%   <<"queryLogStatus">> := list(any()),
%%   <<"tags">> => map()
%% }
-type create_collaboration_input() :: #{binary() => any()}.


%% Example:
%% configured_table_analysis_rule() :: #{
%%   <<"configuredTableArn">> => string(),
%%   <<"configuredTableId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"policy">> => list(),
%%   <<"type">> => list(any()),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type configured_table_analysis_rule() :: #{binary() => any()}.


%% Example:
%% update_id_mapping_table_output() :: #{
%%   <<"idMappingTable">> => id_mapping_table()
%% }
-type update_id_mapping_table_output() :: #{binary() => any()}.


%% Example:
%% query_compute_payment_config() :: #{
%%   <<"isResponsible">> => [boolean()]
%% }
-type query_compute_payment_config() :: #{binary() => any()}.


%% Example:
%% list_members_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_members_input() :: #{binary() => any()}.


%% Example:
%% differential_privacy_template_update_parameters() :: #{
%%   <<"epsilon">> => integer(),
%%   <<"usersNoisePerQuery">> => integer()
%% }
-type differential_privacy_template_update_parameters() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% get_id_mapping_table_output() :: #{
%%   <<"idMappingTable">> => id_mapping_table()
%% }
-type get_id_mapping_table_output() :: #{binary() => any()}.


%% Example:
%% aggregation_constraint() :: #{
%%   <<"columnName">> => string(),
%%   <<"minimum">> => [integer()],
%%   <<"type">> => string()
%% }
-type aggregation_constraint() :: #{binary() => any()}.


%% Example:
%% get_collaboration_id_namespace_association_output() :: #{
%%   <<"collaborationIdNamespaceAssociation">> => collaboration_id_namespace_association()
%% }
-type get_collaboration_id_namespace_association_output() :: #{binary() => any()}.


%% Example:
%% list_collaboration_privacy_budgets_output() :: #{
%%   <<"collaborationPrivacyBudgetSummaries">> => list(collaboration_privacy_budget_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_collaboration_privacy_budgets_output() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% collaboration_privacy_budget_template() :: #{
%%   <<"arn">> => string(),
%%   <<"autoRefresh">> => list(any()),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"creatorAccountId">> => string(),
%%   <<"id">> => string(),
%%   <<"parameters">> => list(),
%%   <<"privacyBudgetType">> => list(any()),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type collaboration_privacy_budget_template() :: #{binary() => any()}.


%% Example:
%% analysis_template_artifact_metadata() :: #{
%%   <<"additionalArtifactHashes">> => list(hash()()),
%%   <<"entryPointHash">> => hash()
%% }
-type analysis_template_artifact_metadata() :: #{binary() => any()}.


%% Example:
%% list_id_namespace_associations_output() :: #{
%%   <<"idNamespaceAssociationSummaries">> => list(id_namespace_association_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_id_namespace_associations_output() :: #{binary() => any()}.


%% Example:
%% membership_job_compute_payment_config() :: #{
%%   <<"isResponsible">> => [boolean()]
%% }
-type membership_job_compute_payment_config() :: #{binary() => any()}.


%% Example:
%% billed_resource_utilization() :: #{
%%   <<"units">> => [float()]
%% }
-type billed_resource_utilization() :: #{binary() => any()}.

%% Example:
%% get_schema_analysis_rule_input() :: #{}
-type get_schema_analysis_rule_input() :: #{}.


%% Example:
%% protected_job_member_output_configuration_output() :: #{
%%   <<"accountId">> => string()
%% }
-type protected_job_member_output_configuration_output() :: #{binary() => any()}.


%% Example:
%% configured_audience_model_association() :: #{
%%   <<"arn">> => string(),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"configuredAudienceModelArn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"manageResourcePolicies">> => [boolean()],
%%   <<"membershipArn">> => string(),
%%   <<"membershipId">> => string(),
%%   <<"name">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type configured_audience_model_association() :: #{binary() => any()}.


%% Example:
%% update_privacy_budget_template_output() :: #{
%%   <<"privacyBudgetTemplate">> => privacy_budget_template()
%% }
-type update_privacy_budget_template_output() :: #{binary() => any()}.


%% Example:
%% schema_status_reason() :: #{
%%   <<"code">> => list(any()),
%%   <<"message">> => [string()]
%% }
-type schema_status_reason() :: #{binary() => any()}.


%% Example:
%% protected_query_single_member_output() :: #{
%%   <<"accountId">> => string()
%% }
-type protected_query_single_member_output() :: #{binary() => any()}.


%% Example:
%% create_id_namespace_association_output() :: #{
%%   <<"idNamespaceAssociation">> => id_namespace_association()
%% }
-type create_id_namespace_association_output() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"reason">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% differential_privacy_configuration() :: #{
%%   <<"columns">> => list(differential_privacy_column()())
%% }
-type differential_privacy_configuration() :: #{binary() => any()}.


%% Example:
%% direct_analysis_configuration_details() :: #{
%%   <<"receiverAccountIds">> => list(string()())
%% }
-type direct_analysis_configuration_details() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% batch_get_schema_analysis_rule_input() :: #{
%%   <<"schemaAnalysisRuleRequests">> := list(schema_analysis_rule_request()())
%% }
-type batch_get_schema_analysis_rule_input() :: #{binary() => any()}.


%% Example:
%% start_protected_query_output() :: #{
%%   <<"protectedQuery">> := protected_query()
%% }
-type start_protected_query_output() :: #{binary() => any()}.


%% Example:
%% create_configured_table_analysis_rule_output() :: #{
%%   <<"analysisRule">> := configured_table_analysis_rule()
%% }
-type create_configured_table_analysis_rule_output() :: #{binary() => any()}.


%% Example:
%% analysis_template() :: #{
%%   <<"analysisParameters">> => list(analysis_parameter()()),
%%   <<"arn">> => string(),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"format">> => list(any()),
%%   <<"id">> => string(),
%%   <<"membershipArn">> => string(),
%%   <<"membershipId">> => string(),
%%   <<"name">> => string(),
%%   <<"schema">> => analysis_schema(),
%%   <<"source">> => list(),
%%   <<"sourceMetadata">> => list(),
%%   <<"updateTime">> => [non_neg_integer()],
%%   <<"validations">> => list(analysis_template_validation_status_detail()())
%% }
-type analysis_template() :: #{binary() => any()}.


%% Example:
%% worker_compute_configuration() :: #{
%%   <<"number">> => [integer()],
%%   <<"type">> => list(any())
%% }
-type worker_compute_configuration() :: #{binary() => any()}.


%% Example:
%% get_analysis_template_output() :: #{
%%   <<"analysisTemplate">> := analysis_template()
%% }
-type get_analysis_template_output() :: #{binary() => any()}.


%% Example:
%% batch_get_schema_analysis_rule_error() :: #{
%%   <<"code">> => [string()],
%%   <<"message">> => [string()],
%%   <<"name">> => string(),
%%   <<"type">> => list(any())
%% }
-type batch_get_schema_analysis_rule_error() :: #{binary() => any()}.


%% Example:
%% update_configured_table_input() :: #{
%%   <<"analysisMethod">> => list(any()),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"selectedAnalysisMethods">> => list(list(any())())
%% }
-type update_configured_table_input() :: #{binary() => any()}.


%% Example:
%% configured_table_association_analysis_rule_list() :: #{
%%   <<"allowedAdditionalAnalyses">> => list(string()()),
%%   <<"allowedResultReceivers">> => list(string()())
%% }
-type configured_table_association_analysis_rule_list() :: #{binary() => any()}.


%% Example:
%% configured_table_association_analysis_rule() :: #{
%%   <<"configuredTableAssociationArn">> => string(),
%%   <<"configuredTableAssociationId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"membershipIdentifier">> => string(),
%%   <<"policy">> => list(),
%%   <<"type">> => list(any()),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type configured_table_association_analysis_rule() :: #{binary() => any()}.

%% Example:
%% get_schema_input() :: #{}
-type get_schema_input() :: #{}.


%% Example:
%% batch_get_collaboration_analysis_template_error() :: #{
%%   <<"arn">> => string(),
%%   <<"code">> => [string()],
%%   <<"message">> => [string()]
%% }
-type batch_get_collaboration_analysis_template_error() :: #{binary() => any()}.

%% Example:
%% get_protected_job_input() :: #{}
-type get_protected_job_input() :: #{}.


%% Example:
%% list_collaborations_output() :: #{
%%   <<"collaborationList">> := list(collaboration_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_collaborations_output() :: #{binary() => any()}.

%% Example:
%% delete_id_namespace_association_input() :: #{}
-type delete_id_namespace_association_input() :: #{}.


%% Example:
%% configured_table_association_summary() :: #{
%%   <<"analysisRuleTypes">> => list(list(any())()),
%%   <<"arn">> => string(),
%%   <<"configuredTableId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"id">> => string(),
%%   <<"membershipArn">> => string(),
%%   <<"membershipId">> => string(),
%%   <<"name">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type configured_table_association_summary() :: #{binary() => any()}.


%% Example:
%% collaboration_configured_audience_model_association_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"creatorAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type collaboration_configured_audience_model_association_summary() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()()),
%%   <<"message">> => [string()],
%%   <<"reason">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.


%% Example:
%% collaboration_id_namespace_association() :: #{
%%   <<"arn">> => string(),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"creatorAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"idMappingConfig">> => id_mapping_config(),
%%   <<"inputReferenceConfig">> => id_namespace_association_input_reference_config(),
%%   <<"inputReferenceProperties">> => id_namespace_association_input_reference_properties(),
%%   <<"name">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type collaboration_id_namespace_association() :: #{binary() => any()}.


%% Example:
%% differential_privacy_template_parameters_output() :: #{
%%   <<"epsilon">> => integer(),
%%   <<"usersNoisePerQuery">> => integer()
%% }
-type differential_privacy_template_parameters_output() :: #{binary() => any()}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.

%% Example:
%% delete_collaboration_output() :: #{}
-type delete_collaboration_output() :: #{}.


%% Example:
%% snowflake_table_reference() :: #{
%%   <<"accountIdentifier">> => string(),
%%   <<"databaseName">> => string(),
%%   <<"schemaName">> => string(),
%%   <<"secretArn">> => string(),
%%   <<"tableName">> => string(),
%%   <<"tableSchema">> => list()
%% }
-type snowflake_table_reference() :: #{binary() => any()}.


%% Example:
%% list_protected_jobs_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"protectedJobs">> => list(protected_job_summary()())
%% }
-type list_protected_jobs_output() :: #{binary() => any()}.


%% Example:
%% get_protected_job_output() :: #{
%%   <<"protectedJob">> => protected_job()
%% }
-type get_protected_job_output() :: #{binary() => any()}.


%% Example:
%% get_schema_analysis_rule_output() :: #{
%%   <<"analysisRule">> := analysis_rule()
%% }
-type get_schema_analysis_rule_output() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% collaboration_analysis_template_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"creatorAccountId">> => string(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type collaboration_analysis_template_summary() :: #{binary() => any()}.


%% Example:
%% protected_query_s_q_l_parameters() :: #{
%%   <<"analysisTemplateArn">> => string(),
%%   <<"parameters">> => map(),
%%   <<"queryString">> => [string()]
%% }
-type protected_query_s_q_l_parameters() :: #{binary() => any()}.

%% Example:
%% get_id_namespace_association_input() :: #{}
-type get_id_namespace_association_input() :: #{}.


%% Example:
%% update_protected_job_input() :: #{
%%   <<"targetStatus">> := list(any())
%% }
-type update_protected_job_input() :: #{binary() => any()}.


%% Example:
%% protected_job_member_output_configuration_input() :: #{
%%   <<"accountId">> => string()
%% }
-type protected_job_member_output_configuration_input() :: #{binary() => any()}.


%% Example:
%% get_collaboration_output() :: #{
%%   <<"collaboration">> := collaboration()
%% }
-type get_collaboration_output() :: #{binary() => any()}.

%% Example:
%% get_id_mapping_table_input() :: #{}
-type get_id_mapping_table_input() :: #{}.

%% Example:
%% delete_configured_table_association_analysis_rule_input() :: #{}
-type delete_configured_table_association_analysis_rule_input() :: #{}.


%% Example:
%% protected_query_statistics() :: #{
%%   <<"billedResourceUtilization">> => billed_resource_utilization(),
%%   <<"totalDurationInMillis">> => [float()]
%% }
-type protected_query_statistics() :: #{binary() => any()}.


%% Example:
%% analysis_template_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"membershipArn">> => string(),
%%   <<"membershipId">> => string(),
%%   <<"name">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type analysis_template_summary() :: #{binary() => any()}.


%% Example:
%% update_configured_audience_model_association_output() :: #{
%%   <<"configuredAudienceModelAssociation">> => configured_audience_model_association()
%% }
-type update_configured_audience_model_association_output() :: #{binary() => any()}.


%% Example:
%% update_membership_output() :: #{
%%   <<"membership">> := membership()
%% }
-type update_membership_output() :: #{binary() => any()}.


%% Example:
%% update_membership_input() :: #{
%%   <<"defaultJobResultConfiguration">> => membership_protected_job_result_configuration(),
%%   <<"defaultResultConfiguration">> => membership_protected_query_result_configuration(),
%%   <<"jobLogStatus">> => list(any()),
%%   <<"queryLogStatus">> => list(any())
%% }
-type update_membership_input() :: #{binary() => any()}.


%% Example:
%% member_summary() :: #{
%%   <<"abilities">> => list(list(any())()),
%%   <<"accountId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"displayName">> => string(),
%%   <<"membershipArn">> => string(),
%%   <<"membershipId">> => string(),
%%   <<"mlAbilities">> => ml_member_abilities(),
%%   <<"paymentConfiguration">> => payment_configuration(),
%%   <<"status">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type member_summary() :: #{binary() => any()}.


%% Example:
%% batch_get_collaboration_analysis_template_output() :: #{
%%   <<"collaborationAnalysisTemplates">> := list(collaboration_analysis_template()()),
%%   <<"errors">> := list(batch_get_collaboration_analysis_template_error()())
%% }
-type batch_get_collaboration_analysis_template_output() :: #{binary() => any()}.


%% Example:
%% batch_get_schema_input() :: #{
%%   <<"names">> := list(string()())
%% }
-type batch_get_schema_input() :: #{binary() => any()}.


%% Example:
%% glue_table_reference() :: #{
%%   <<"databaseName">> => string(),
%%   <<"tableName">> => string()
%% }
-type glue_table_reference() :: #{binary() => any()}.


%% Example:
%% protected_query_error() :: #{
%%   <<"code">> => [string()],
%%   <<"message">> => [string()]
%% }
-type protected_query_error() :: #{binary() => any()}.

%% Example:
%% delete_analysis_template_output() :: #{}
-type delete_analysis_template_output() :: #{}.


%% Example:
%% get_configured_table_association_output() :: #{
%%   <<"configuredTableAssociation">> := configured_table_association()
%% }
-type get_configured_table_association_output() :: #{binary() => any()}.


%% Example:
%% create_membership_output() :: #{
%%   <<"membership">> := membership()
%% }
-type create_membership_output() :: #{binary() => any()}.


%% Example:
%% membership_payment_configuration() :: #{
%%   <<"jobCompute">> => membership_job_compute_payment_config(),
%%   <<"machineLearning">> => membership_ml_payment_config(),
%%   <<"queryCompute">> => membership_query_compute_payment_config()
%% }
-type membership_payment_configuration() :: #{binary() => any()}.

%% Example:
%% get_membership_input() :: #{}
-type get_membership_input() :: #{}.


%% Example:
%% consolidated_policy_aggregation() :: #{
%%   <<"additionalAnalyses">> => list(any()),
%%   <<"aggregateColumns">> => list(aggregate_column()()),
%%   <<"allowedAdditionalAnalyses">> => list(string()()),
%%   <<"allowedJoinOperators">> => list(string()()),
%%   <<"allowedResultReceivers">> => list(string()()),
%%   <<"dimensionColumns">> => list(string()()),
%%   <<"joinColumns">> => list(string()()),
%%   <<"joinRequired">> => string(),
%%   <<"outputConstraints">> => list(aggregation_constraint()()),
%%   <<"scalarFunctions">> => list(string()())
%% }
-type consolidated_policy_aggregation() :: #{binary() => any()}.


%% Example:
%% membership_ml_payment_config() :: #{
%%   <<"modelInference">> => membership_model_inference_payment_config(),
%%   <<"modelTraining">> => membership_model_training_payment_config()
%% }
-type membership_ml_payment_config() :: #{binary() => any()}.

%% Example:
%% get_configured_audience_model_association_input() :: #{}
-type get_configured_audience_model_association_input() :: #{}.


%% Example:
%% create_configured_audience_model_association_output() :: #{
%%   <<"configuredAudienceModelAssociation">> => configured_audience_model_association()
%% }
-type create_configured_audience_model_association_output() :: #{binary() => any()}.


%% Example:
%% id_mapping_table_input_source() :: #{
%%   <<"idNamespaceAssociationId">> => [string()],
%%   <<"type">> => list(any())
%% }
-type id_mapping_table_input_source() :: #{binary() => any()}.


%% Example:
%% start_protected_query_input() :: #{
%%   <<"computeConfiguration">> => list(),
%%   <<"resultConfiguration">> => protected_query_result_configuration(),
%%   <<"sqlParameters">> := protected_query_s_q_l_parameters(),
%%   <<"type">> := string()
%% }
-type start_protected_query_input() :: #{binary() => any()}.


%% Example:
%% collaboration_privacy_budget_template_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"creatorAccountId">> => string(),
%%   <<"id">> => string(),
%%   <<"privacyBudgetType">> => list(any()),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type collaboration_privacy_budget_template_summary() :: #{binary() => any()}.


%% Example:
%% payment_configuration() :: #{
%%   <<"jobCompute">> => job_compute_payment_config(),
%%   <<"machineLearning">> => ml_payment_config(),
%%   <<"queryCompute">> => query_compute_payment_config()
%% }
-type payment_configuration() :: #{binary() => any()}.


%% Example:
%% configured_table() :: #{
%%   <<"allowedColumns">> => list(string()()),
%%   <<"analysisMethod">> => list(any()),
%%   <<"analysisRuleTypes">> => list(list(any())()),
%%   <<"arn">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"selectedAnalysisMethods">> => list(list(any())()),
%%   <<"tableReference">> => list(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type configured_table() :: #{binary() => any()}.


%% Example:
%% get_collaboration_analysis_template_output() :: #{
%%   <<"collaborationAnalysisTemplate">> := collaboration_analysis_template()
%% }
-type get_collaboration_analysis_template_output() :: #{binary() => any()}.


%% Example:
%% ml_payment_config() :: #{
%%   <<"modelInference">> => model_inference_payment_config(),
%%   <<"modelTraining">> => model_training_payment_config()
%% }
-type ml_payment_config() :: #{binary() => any()}.


%% Example:
%% protected_job_s3_output_configuration_output() :: #{
%%   <<"bucket">> => [string()],
%%   <<"keyPrefix">> => string()
%% }
-type protected_job_s3_output_configuration_output() :: #{binary() => any()}.


%% Example:
%% analysis_template_validation_status_reason() :: #{
%%   <<"message">> => [string()]
%% }
-type analysis_template_validation_status_reason() :: #{binary() => any()}.


%% Example:
%% snowflake_table_schema_v1() :: #{
%%   <<"columnName">> => string(),
%%   <<"columnType">> => string()
%% }
-type snowflake_table_schema_v1() :: #{binary() => any()}.

%% Example:
%% get_configured_table_input() :: #{}
-type get_configured_table_input() :: #{}.


%% Example:
%% model_training_payment_config() :: #{
%%   <<"isResponsible">> => [boolean()]
%% }
-type model_training_payment_config() :: #{binary() => any()}.


%% Example:
%% aggregate_column() :: #{
%%   <<"columnNames">> => list(string()()),
%%   <<"function">> => string()
%% }
-type aggregate_column() :: #{binary() => any()}.

%% Example:
%% get_privacy_budget_template_input() :: #{}
-type get_privacy_budget_template_input() :: #{}.


%% Example:
%% create_analysis_template_input() :: #{
%%   <<"analysisParameters">> => list(analysis_parameter()()),
%%   <<"description">> => string(),
%%   <<"format">> := list(any()),
%%   <<"name">> := string(),
%%   <<"schema">> => analysis_schema(),
%%   <<"source">> := list(),
%%   <<"tags">> => map()
%% }
-type create_analysis_template_input() :: #{binary() => any()}.


%% Example:
%% list_id_namespace_associations_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_id_namespace_associations_input() :: #{binary() => any()}.


%% Example:
%% list_configured_tables_output() :: #{
%%   <<"configuredTableSummaries">> := list(configured_table_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_configured_tables_output() :: #{binary() => any()}.


%% Example:
%% id_namespace_association() :: #{
%%   <<"arn">> => string(),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"idMappingConfig">> => id_mapping_config(),
%%   <<"inputReferenceConfig">> => id_namespace_association_input_reference_config(),
%%   <<"inputReferenceProperties">> => id_namespace_association_input_reference_properties(),
%%   <<"membershipArn">> => string(),
%%   <<"membershipId">> => string(),
%%   <<"name">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type id_namespace_association() :: #{binary() => any()}.


%% Example:
%% protected_job_parameters() :: #{
%%   <<"analysisTemplateArn">> => string()
%% }
-type protected_job_parameters() :: #{binary() => any()}.

%% Example:
%% get_collaboration_configured_audience_model_association_input() :: #{}
-type get_collaboration_configured_audience_model_association_input() :: #{}.


%% Example:
%% list_collaborations_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"memberStatus">> => string(),
%%   <<"nextToken">> => string()
%% }
-type list_collaborations_input() :: #{binary() => any()}.


%% Example:
%% protected_query_s3_output_configuration() :: #{
%%   <<"bucket">> => [string()],
%%   <<"keyPrefix">> => string(),
%%   <<"resultFormat">> => string(),
%%   <<"singleFileOutput">> => [boolean()]
%% }
-type protected_query_s3_output_configuration() :: #{binary() => any()}.


%% Example:
%% data_encryption_metadata() :: #{
%%   <<"allowCleartext">> => [boolean()],
%%   <<"allowDuplicates">> => [boolean()],
%%   <<"allowJoinsOnColumnsWithDifferentNames">> => [boolean()],
%%   <<"preserveNulls">> => [boolean()]
%% }
-type data_encryption_metadata() :: #{binary() => any()}.


%% Example:
%% membership_model_training_payment_config() :: #{
%%   <<"isResponsible">> => [boolean()]
%% }
-type membership_model_training_payment_config() :: #{binary() => any()}.


%% Example:
%% start_protected_job_output() :: #{
%%   <<"protectedJob">> => protected_job()
%% }
-type start_protected_job_output() :: #{binary() => any()}.


%% Example:
%% id_namespace_association_input_reference_properties_summary() :: #{
%%   <<"idNamespaceType">> => list(any())
%% }
-type id_namespace_association_input_reference_properties_summary() :: #{binary() => any()}.


%% Example:
%% batch_get_schema_error() :: #{
%%   <<"code">> => [string()],
%%   <<"message">> => [string()],
%%   <<"name">> => string()
%% }
-type batch_get_schema_error() :: #{binary() => any()}.


%% Example:
%% preview_privacy_impact_output() :: #{
%%   <<"privacyImpact">> => list()
%% }
-type preview_privacy_impact_output() :: #{binary() => any()}.


%% Example:
%% member_specification() :: #{
%%   <<"accountId">> => string(),
%%   <<"displayName">> => string(),
%%   <<"memberAbilities">> => list(list(any())()),
%%   <<"mlMemberAbilities">> => ml_member_abilities(),
%%   <<"paymentConfiguration">> => payment_configuration()
%% }
-type member_specification() :: #{binary() => any()}.

%% Example:
%% delete_membership_input() :: #{}
-type delete_membership_input() :: #{}.


%% Example:
%% id_mapping_table_input_reference_properties() :: #{
%%   <<"idMappingTableInputSource">> => list(id_mapping_table_input_source()())
%% }
-type id_mapping_table_input_reference_properties() :: #{binary() => any()}.


%% Example:
%% membership() :: #{
%%   <<"arn">> => string(),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationCreatorAccountId">> => string(),
%%   <<"collaborationCreatorDisplayName">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"collaborationName">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"defaultJobResultConfiguration">> => membership_protected_job_result_configuration(),
%%   <<"defaultResultConfiguration">> => membership_protected_query_result_configuration(),
%%   <<"id">> => string(),
%%   <<"jobLogStatus">> => list(any()),
%%   <<"memberAbilities">> => list(list(any())()),
%%   <<"mlMemberAbilities">> => ml_member_abilities(),
%%   <<"paymentConfiguration">> => membership_payment_configuration(),
%%   <<"queryLogStatus">> => list(any()),
%%   <<"status">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type membership() :: #{binary() => any()}.


%% Example:
%% update_configured_table_association_analysis_rule_output() :: #{
%%   <<"analysisRule">> => configured_table_association_analysis_rule()
%% }
-type update_configured_table_association_analysis_rule_output() :: #{binary() => any()}.

%% Example:
%% delete_configured_table_output() :: #{}
-type delete_configured_table_output() :: #{}.


%% Example:
%% id_mapping_table_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"collaborationArn">> => string(),
%%   <<"collaborationId">> => string(),
%%   <<"createTime">> => [non_neg_integer()],
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"inputReferenceConfig">> => id_mapping_table_input_reference_config(),
%%   <<"membershipArn">> => string(),
%%   <<"membershipId">> => string(),
%%   <<"name">> => string(),
%%   <<"updateTime">> => [non_neg_integer()]
%% }
-type id_mapping_table_summary() :: #{binary() => any()}.

%% Example:
%% populate_id_mapping_table_input() :: #{}
-type populate_id_mapping_table_input() :: #{}.


%% Example:
%% create_configured_table_association_input() :: #{
%%   <<"configuredTableIdentifier">> := string(),
%%   <<"description">> => string(),
%%   <<"name">> := string(),
%%   <<"roleArn">> := string(),
%%   <<"tags">> => map()
%% }
-type create_configured_table_association_input() :: #{binary() => any()}.


%% Example:
%% id_mapping_table_input_reference_config() :: #{
%%   <<"inputReferenceArn">> => string(),
%%   <<"manageResourcePolicies">> => [boolean()]
%% }
-type id_mapping_table_input_reference_config() :: #{binary() => any()}.


%% Example:
%% analysis_template_artifact() :: #{
%%   <<"location">> => s3_location()
%% }
-type analysis_template_artifact() :: #{binary() => any()}.


%% Example:
%% differential_privacy_sensitivity_parameters() :: #{
%%   <<"aggregationExpression">> => string(),
%%   <<"aggregationType">> => list(any()),
%%   <<"maxColumnValue">> => [float()],
%%   <<"minColumnValue">> => [float()],
%%   <<"userContributionLimit">> => [integer()]
%% }
-type differential_privacy_sensitivity_parameters() :: #{binary() => any()}.


%% Example:
%% list_id_mapping_tables_output() :: #{
%%   <<"idMappingTableSummaries">> => list(id_mapping_table_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_id_mapping_tables_output() :: #{binary() => any()}.


%% Example:
%% get_configured_table_output() :: #{
%%   <<"configuredTable">> := configured_table()
%% }
-type get_configured_table_output() :: #{binary() => any()}.


%% Example:
%% list_collaboration_id_namespace_associations_output() :: #{
%%   <<"collaborationIdNamespaceAssociationSummaries">> => list(collaboration_id_namespace_association_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_collaboration_id_namespace_associations_output() :: #{binary() => any()}.


%% Example:
%% list_privacy_budgets_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"privacyBudgetSummaries">> => list(privacy_budget_summary()())
%% }
-type list_privacy_budgets_output() :: #{binary() => any()}.

%% Example:
%% delete_privacy_budget_template_output() :: #{}
-type delete_privacy_budget_template_output() :: #{}.

-type batch_get_collaboration_analysis_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_get_schema_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type batch_get_schema_analysis_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_analysis_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_collaboration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type create_configured_audience_model_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_configured_table_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_configured_table_analysis_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_configured_table_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_configured_table_association_analysis_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_id_mapping_table_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_id_namespace_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_membership_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_privacy_budget_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_analysis_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_collaboration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type delete_configured_audience_model_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_configured_table_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_configured_table_analysis_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_configured_table_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_configured_table_association_analysis_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_id_mapping_table_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_id_namespace_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_member_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_membership_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_privacy_budget_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_analysis_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_collaboration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_collaboration_analysis_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_collaboration_configured_audience_model_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_collaboration_id_namespace_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_collaboration_privacy_budget_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_configured_audience_model_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_configured_table_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_configured_table_analysis_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_configured_table_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_configured_table_association_analysis_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_id_mapping_table_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_id_namespace_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_membership_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_privacy_budget_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_protected_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_protected_query_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_schema_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_schema_analysis_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_analysis_templates_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_collaboration_analysis_templates_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_collaboration_configured_audience_model_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_collaboration_id_namespace_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_collaboration_privacy_budget_templates_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_collaboration_privacy_budgets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_collaborations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_configured_audience_model_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_configured_table_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_configured_tables_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_id_mapping_tables_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_id_namespace_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_members_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_memberships_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_privacy_budget_templates_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_privacy_budgets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_protected_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_protected_queries_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_schemas_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type populate_id_mapping_table_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type preview_privacy_impact_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_protected_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type start_protected_query_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type update_analysis_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_collaboration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type update_configured_audience_model_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_configured_table_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_configured_table_analysis_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_configured_table_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_configured_table_association_analysis_rule_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_id_mapping_table_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_id_namespace_association_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_membership_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_privacy_budget_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_protected_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_protected_query_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Retrieves multiple analysis templates within a collaboration by their
%% Amazon Resource Names (ARNs).
-spec batch_get_collaboration_analysis_template(aws_client:aws_client(), binary() | list(), batch_get_collaboration_analysis_template_input()) ->
    {ok, batch_get_collaboration_analysis_template_output(), tuple()} |
    {error, any()} |
    {error, batch_get_collaboration_analysis_template_errors(), tuple()}.
batch_get_collaboration_analysis_template(Client, CollaborationIdentifier, Input) ->
    batch_get_collaboration_analysis_template(Client, CollaborationIdentifier, Input, []).

-spec batch_get_collaboration_analysis_template(aws_client:aws_client(), binary() | list(), batch_get_collaboration_analysis_template_input(), proplists:proplist()) ->
    {ok, batch_get_collaboration_analysis_template_output(), tuple()} |
    {error, any()} |
    {error, batch_get_collaboration_analysis_template_errors(), tuple()}.
batch_get_collaboration_analysis_template(Client, CollaborationIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/batch-analysistemplates"],
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

%% @doc Retrieves multiple schemas by their identifiers.
-spec batch_get_schema(aws_client:aws_client(), binary() | list(), batch_get_schema_input()) ->
    {ok, batch_get_schema_output(), tuple()} |
    {error, any()} |
    {error, batch_get_schema_errors(), tuple()}.
batch_get_schema(Client, CollaborationIdentifier, Input) ->
    batch_get_schema(Client, CollaborationIdentifier, Input, []).

-spec batch_get_schema(aws_client:aws_client(), binary() | list(), batch_get_schema_input(), proplists:proplist()) ->
    {ok, batch_get_schema_output(), tuple()} |
    {error, any()} |
    {error, batch_get_schema_errors(), tuple()}.
batch_get_schema(Client, CollaborationIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/batch-schema"],
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

%% @doc Retrieves multiple analysis rule schemas.
-spec batch_get_schema_analysis_rule(aws_client:aws_client(), binary() | list(), batch_get_schema_analysis_rule_input()) ->
    {ok, batch_get_schema_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, batch_get_schema_analysis_rule_errors(), tuple()}.
batch_get_schema_analysis_rule(Client, CollaborationIdentifier, Input) ->
    batch_get_schema_analysis_rule(Client, CollaborationIdentifier, Input, []).

-spec batch_get_schema_analysis_rule(aws_client:aws_client(), binary() | list(), batch_get_schema_analysis_rule_input(), proplists:proplist()) ->
    {ok, batch_get_schema_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, batch_get_schema_analysis_rule_errors(), tuple()}.
batch_get_schema_analysis_rule(Client, CollaborationIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/batch-schema-analysis-rule"],
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

%% @doc Creates a new analysis template.
-spec create_analysis_template(aws_client:aws_client(), binary() | list(), create_analysis_template_input()) ->
    {ok, create_analysis_template_output(), tuple()} |
    {error, any()} |
    {error, create_analysis_template_errors(), tuple()}.
create_analysis_template(Client, MembershipIdentifier, Input) ->
    create_analysis_template(Client, MembershipIdentifier, Input, []).

-spec create_analysis_template(aws_client:aws_client(), binary() | list(), create_analysis_template_input(), proplists:proplist()) ->
    {ok, create_analysis_template_output(), tuple()} |
    {error, any()} |
    {error, create_analysis_template_errors(), tuple()}.
create_analysis_template(Client, MembershipIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/analysistemplates"],
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

%% @doc Creates a new collaboration.
-spec create_collaboration(aws_client:aws_client(), create_collaboration_input()) ->
    {ok, create_collaboration_output(), tuple()} |
    {error, any()} |
    {error, create_collaboration_errors(), tuple()}.
create_collaboration(Client, Input) ->
    create_collaboration(Client, Input, []).

-spec create_collaboration(aws_client:aws_client(), create_collaboration_input(), proplists:proplist()) ->
    {ok, create_collaboration_output(), tuple()} |
    {error, any()} |
    {error, create_collaboration_errors(), tuple()}.
create_collaboration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/collaborations"],
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

%% @doc Provides the details necessary to create a configured audience model
%% association.
-spec create_configured_audience_model_association(aws_client:aws_client(), binary() | list(), create_configured_audience_model_association_input()) ->
    {ok, create_configured_audience_model_association_output(), tuple()} |
    {error, any()} |
    {error, create_configured_audience_model_association_errors(), tuple()}.
create_configured_audience_model_association(Client, MembershipIdentifier, Input) ->
    create_configured_audience_model_association(Client, MembershipIdentifier, Input, []).

-spec create_configured_audience_model_association(aws_client:aws_client(), binary() | list(), create_configured_audience_model_association_input(), proplists:proplist()) ->
    {ok, create_configured_audience_model_association_output(), tuple()} |
    {error, any()} |
    {error, create_configured_audience_model_association_errors(), tuple()}.
create_configured_audience_model_association(Client, MembershipIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configuredaudiencemodelassociations"],
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

%% @doc Creates a new configured table resource.
-spec create_configured_table(aws_client:aws_client(), create_configured_table_input()) ->
    {ok, create_configured_table_output(), tuple()} |
    {error, any()} |
    {error, create_configured_table_errors(), tuple()}.
create_configured_table(Client, Input) ->
    create_configured_table(Client, Input, []).

-spec create_configured_table(aws_client:aws_client(), create_configured_table_input(), proplists:proplist()) ->
    {ok, create_configured_table_output(), tuple()} |
    {error, any()} |
    {error, create_configured_table_errors(), tuple()}.
create_configured_table(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configuredTables"],
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

%% @doc Creates a new analysis rule for a configured table.
%%
%% Currently, only one analysis rule can be created for a given configured
%% table.
-spec create_configured_table_analysis_rule(aws_client:aws_client(), binary() | list(), create_configured_table_analysis_rule_input()) ->
    {ok, create_configured_table_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, create_configured_table_analysis_rule_errors(), tuple()}.
create_configured_table_analysis_rule(Client, ConfiguredTableIdentifier, Input) ->
    create_configured_table_analysis_rule(Client, ConfiguredTableIdentifier, Input, []).

-spec create_configured_table_analysis_rule(aws_client:aws_client(), binary() | list(), create_configured_table_analysis_rule_input(), proplists:proplist()) ->
    {ok, create_configured_table_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, create_configured_table_analysis_rule_errors(), tuple()}.
create_configured_table_analysis_rule(Client, ConfiguredTableIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/configuredTables/", aws_util:encode_uri(ConfiguredTableIdentifier), "/analysisRule"],
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

%% @doc Creates a configured table association.
%%
%% A configured table association links a configured table with a
%% collaboration.
-spec create_configured_table_association(aws_client:aws_client(), binary() | list(), create_configured_table_association_input()) ->
    {ok, create_configured_table_association_output(), tuple()} |
    {error, any()} |
    {error, create_configured_table_association_errors(), tuple()}.
create_configured_table_association(Client, MembershipIdentifier, Input) ->
    create_configured_table_association(Client, MembershipIdentifier, Input, []).

-spec create_configured_table_association(aws_client:aws_client(), binary() | list(), create_configured_table_association_input(), proplists:proplist()) ->
    {ok, create_configured_table_association_output(), tuple()} |
    {error, any()} |
    {error, create_configured_table_association_errors(), tuple()}.
create_configured_table_association(Client, MembershipIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configuredTableAssociations"],
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

%% @doc Creates a new analysis rule for an associated configured table.
-spec create_configured_table_association_analysis_rule(aws_client:aws_client(), binary() | list(), binary() | list(), create_configured_table_association_analysis_rule_input()) ->
    {ok, create_configured_table_association_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, create_configured_table_association_analysis_rule_errors(), tuple()}.
create_configured_table_association_analysis_rule(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, Input) ->
    create_configured_table_association_analysis_rule(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, Input, []).

-spec create_configured_table_association_analysis_rule(aws_client:aws_client(), binary() | list(), binary() | list(), create_configured_table_association_analysis_rule_input(), proplists:proplist()) ->
    {ok, create_configured_table_association_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, create_configured_table_association_analysis_rule_errors(), tuple()}.
create_configured_table_association_analysis_rule(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configuredTableAssociations/", aws_util:encode_uri(ConfiguredTableAssociationIdentifier), "/analysisRule"],
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

%% @doc Creates an ID mapping table.
-spec create_id_mapping_table(aws_client:aws_client(), binary() | list(), create_id_mapping_table_input()) ->
    {ok, create_id_mapping_table_output(), tuple()} |
    {error, any()} |
    {error, create_id_mapping_table_errors(), tuple()}.
create_id_mapping_table(Client, MembershipIdentifier, Input) ->
    create_id_mapping_table(Client, MembershipIdentifier, Input, []).

-spec create_id_mapping_table(aws_client:aws_client(), binary() | list(), create_id_mapping_table_input(), proplists:proplist()) ->
    {ok, create_id_mapping_table_output(), tuple()} |
    {error, any()} |
    {error, create_id_mapping_table_errors(), tuple()}.
create_id_mapping_table(Client, MembershipIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/idmappingtables"],
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

%% @doc Creates an ID namespace association.
-spec create_id_namespace_association(aws_client:aws_client(), binary() | list(), create_id_namespace_association_input()) ->
    {ok, create_id_namespace_association_output(), tuple()} |
    {error, any()} |
    {error, create_id_namespace_association_errors(), tuple()}.
create_id_namespace_association(Client, MembershipIdentifier, Input) ->
    create_id_namespace_association(Client, MembershipIdentifier, Input, []).

-spec create_id_namespace_association(aws_client:aws_client(), binary() | list(), create_id_namespace_association_input(), proplists:proplist()) ->
    {ok, create_id_namespace_association_output(), tuple()} |
    {error, any()} |
    {error, create_id_namespace_association_errors(), tuple()}.
create_id_namespace_association(Client, MembershipIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/idnamespaceassociations"],
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

%% @doc Creates a membership for a specific collaboration identifier and
%% joins the collaboration.
-spec create_membership(aws_client:aws_client(), create_membership_input()) ->
    {ok, create_membership_output(), tuple()} |
    {error, any()} |
    {error, create_membership_errors(), tuple()}.
create_membership(Client, Input) ->
    create_membership(Client, Input, []).

-spec create_membership(aws_client:aws_client(), create_membership_input(), proplists:proplist()) ->
    {ok, create_membership_output(), tuple()} |
    {error, any()} |
    {error, create_membership_errors(), tuple()}.
create_membership(Client, Input0, Options0) ->
    Method = post,
    Path = ["/memberships"],
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

%% @doc Creates a privacy budget template for a specified membership.
%%
%% Each membership can have only one privacy budget template, but it can be
%% deleted and recreated. If you need to change the privacy budget template
%% for a membership, use the `UpdatePrivacyBudgetTemplate' operation.
-spec create_privacy_budget_template(aws_client:aws_client(), binary() | list(), create_privacy_budget_template_input()) ->
    {ok, create_privacy_budget_template_output(), tuple()} |
    {error, any()} |
    {error, create_privacy_budget_template_errors(), tuple()}.
create_privacy_budget_template(Client, MembershipIdentifier, Input) ->
    create_privacy_budget_template(Client, MembershipIdentifier, Input, []).

-spec create_privacy_budget_template(aws_client:aws_client(), binary() | list(), create_privacy_budget_template_input(), proplists:proplist()) ->
    {ok, create_privacy_budget_template_output(), tuple()} |
    {error, any()} |
    {error, create_privacy_budget_template_errors(), tuple()}.
create_privacy_budget_template(Client, MembershipIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/privacybudgettemplates"],
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

%% @doc Deletes an analysis template.
-spec delete_analysis_template(aws_client:aws_client(), binary() | list(), binary() | list(), delete_analysis_template_input()) ->
    {ok, delete_analysis_template_output(), tuple()} |
    {error, any()} |
    {error, delete_analysis_template_errors(), tuple()}.
delete_analysis_template(Client, AnalysisTemplateIdentifier, MembershipIdentifier, Input) ->
    delete_analysis_template(Client, AnalysisTemplateIdentifier, MembershipIdentifier, Input, []).

-spec delete_analysis_template(aws_client:aws_client(), binary() | list(), binary() | list(), delete_analysis_template_input(), proplists:proplist()) ->
    {ok, delete_analysis_template_output(), tuple()} |
    {error, any()} |
    {error, delete_analysis_template_errors(), tuple()}.
delete_analysis_template(Client, AnalysisTemplateIdentifier, MembershipIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/analysistemplates/", aws_util:encode_uri(AnalysisTemplateIdentifier), ""],
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

%% @doc Deletes a collaboration.
%%
%% It can only be called by the collaboration owner.
-spec delete_collaboration(aws_client:aws_client(), binary() | list(), delete_collaboration_input()) ->
    {ok, delete_collaboration_output(), tuple()} |
    {error, any()} |
    {error, delete_collaboration_errors(), tuple()}.
delete_collaboration(Client, CollaborationIdentifier, Input) ->
    delete_collaboration(Client, CollaborationIdentifier, Input, []).

-spec delete_collaboration(aws_client:aws_client(), binary() | list(), delete_collaboration_input(), proplists:proplist()) ->
    {ok, delete_collaboration_output(), tuple()} |
    {error, any()} |
    {error, delete_collaboration_errors(), tuple()}.
delete_collaboration(Client, CollaborationIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), ""],
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

%% @doc Provides the information necessary to delete a configured audience
%% model association.
-spec delete_configured_audience_model_association(aws_client:aws_client(), binary() | list(), binary() | list(), delete_configured_audience_model_association_input()) ->
    {ok, delete_configured_audience_model_association_output(), tuple()} |
    {error, any()} |
    {error, delete_configured_audience_model_association_errors(), tuple()}.
delete_configured_audience_model_association(Client, ConfiguredAudienceModelAssociationIdentifier, MembershipIdentifier, Input) ->
    delete_configured_audience_model_association(Client, ConfiguredAudienceModelAssociationIdentifier, MembershipIdentifier, Input, []).

-spec delete_configured_audience_model_association(aws_client:aws_client(), binary() | list(), binary() | list(), delete_configured_audience_model_association_input(), proplists:proplist()) ->
    {ok, delete_configured_audience_model_association_output(), tuple()} |
    {error, any()} |
    {error, delete_configured_audience_model_association_errors(), tuple()}.
delete_configured_audience_model_association(Client, ConfiguredAudienceModelAssociationIdentifier, MembershipIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configuredaudiencemodelassociations/", aws_util:encode_uri(ConfiguredAudienceModelAssociationIdentifier), ""],
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

%% @doc Deletes a configured table.
-spec delete_configured_table(aws_client:aws_client(), binary() | list(), delete_configured_table_input()) ->
    {ok, delete_configured_table_output(), tuple()} |
    {error, any()} |
    {error, delete_configured_table_errors(), tuple()}.
delete_configured_table(Client, ConfiguredTableIdentifier, Input) ->
    delete_configured_table(Client, ConfiguredTableIdentifier, Input, []).

-spec delete_configured_table(aws_client:aws_client(), binary() | list(), delete_configured_table_input(), proplists:proplist()) ->
    {ok, delete_configured_table_output(), tuple()} |
    {error, any()} |
    {error, delete_configured_table_errors(), tuple()}.
delete_configured_table(Client, ConfiguredTableIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/configuredTables/", aws_util:encode_uri(ConfiguredTableIdentifier), ""],
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

%% @doc Deletes a configured table analysis rule.
-spec delete_configured_table_analysis_rule(aws_client:aws_client(), binary() | list(), binary() | list(), delete_configured_table_analysis_rule_input()) ->
    {ok, delete_configured_table_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, delete_configured_table_analysis_rule_errors(), tuple()}.
delete_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier, Input) ->
    delete_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier, Input, []).

-spec delete_configured_table_analysis_rule(aws_client:aws_client(), binary() | list(), binary() | list(), delete_configured_table_analysis_rule_input(), proplists:proplist()) ->
    {ok, delete_configured_table_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, delete_configured_table_analysis_rule_errors(), tuple()}.
delete_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/configuredTables/", aws_util:encode_uri(ConfiguredTableIdentifier), "/analysisRule/", aws_util:encode_uri(AnalysisRuleType), ""],
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

%% @doc Deletes a configured table association.
-spec delete_configured_table_association(aws_client:aws_client(), binary() | list(), binary() | list(), delete_configured_table_association_input()) ->
    {ok, delete_configured_table_association_output(), tuple()} |
    {error, any()} |
    {error, delete_configured_table_association_errors(), tuple()}.
delete_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, Input) ->
    delete_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, Input, []).

-spec delete_configured_table_association(aws_client:aws_client(), binary() | list(), binary() | list(), delete_configured_table_association_input(), proplists:proplist()) ->
    {ok, delete_configured_table_association_output(), tuple()} |
    {error, any()} |
    {error, delete_configured_table_association_errors(), tuple()}.
delete_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configuredTableAssociations/", aws_util:encode_uri(ConfiguredTableAssociationIdentifier), ""],
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

%% @doc Deletes an analysis rule for a configured table association.
-spec delete_configured_table_association_analysis_rule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_configured_table_association_analysis_rule_input()) ->
    {ok, delete_configured_table_association_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, delete_configured_table_association_analysis_rule_errors(), tuple()}.
delete_configured_table_association_analysis_rule(Client, AnalysisRuleType, ConfiguredTableAssociationIdentifier, MembershipIdentifier, Input) ->
    delete_configured_table_association_analysis_rule(Client, AnalysisRuleType, ConfiguredTableAssociationIdentifier, MembershipIdentifier, Input, []).

-spec delete_configured_table_association_analysis_rule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_configured_table_association_analysis_rule_input(), proplists:proplist()) ->
    {ok, delete_configured_table_association_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, delete_configured_table_association_analysis_rule_errors(), tuple()}.
delete_configured_table_association_analysis_rule(Client, AnalysisRuleType, ConfiguredTableAssociationIdentifier, MembershipIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configuredTableAssociations/", aws_util:encode_uri(ConfiguredTableAssociationIdentifier), "/analysisRule/", aws_util:encode_uri(AnalysisRuleType), ""],
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

%% @doc Deletes an ID mapping table.
-spec delete_id_mapping_table(aws_client:aws_client(), binary() | list(), binary() | list(), delete_id_mapping_table_input()) ->
    {ok, delete_id_mapping_table_output(), tuple()} |
    {error, any()} |
    {error, delete_id_mapping_table_errors(), tuple()}.
delete_id_mapping_table(Client, IdMappingTableIdentifier, MembershipIdentifier, Input) ->
    delete_id_mapping_table(Client, IdMappingTableIdentifier, MembershipIdentifier, Input, []).

-spec delete_id_mapping_table(aws_client:aws_client(), binary() | list(), binary() | list(), delete_id_mapping_table_input(), proplists:proplist()) ->
    {ok, delete_id_mapping_table_output(), tuple()} |
    {error, any()} |
    {error, delete_id_mapping_table_errors(), tuple()}.
delete_id_mapping_table(Client, IdMappingTableIdentifier, MembershipIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/idmappingtables/", aws_util:encode_uri(IdMappingTableIdentifier), ""],
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

%% @doc Deletes an ID namespace association.
-spec delete_id_namespace_association(aws_client:aws_client(), binary() | list(), binary() | list(), delete_id_namespace_association_input()) ->
    {ok, delete_id_namespace_association_output(), tuple()} |
    {error, any()} |
    {error, delete_id_namespace_association_errors(), tuple()}.
delete_id_namespace_association(Client, IdNamespaceAssociationIdentifier, MembershipIdentifier, Input) ->
    delete_id_namespace_association(Client, IdNamespaceAssociationIdentifier, MembershipIdentifier, Input, []).

-spec delete_id_namespace_association(aws_client:aws_client(), binary() | list(), binary() | list(), delete_id_namespace_association_input(), proplists:proplist()) ->
    {ok, delete_id_namespace_association_output(), tuple()} |
    {error, any()} |
    {error, delete_id_namespace_association_errors(), tuple()}.
delete_id_namespace_association(Client, IdNamespaceAssociationIdentifier, MembershipIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/idnamespaceassociations/", aws_util:encode_uri(IdNamespaceAssociationIdentifier), ""],
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

%% @doc Removes the specified member from a collaboration.
%%
%% The removed member is placed in the Removed status and can't interact
%% with the collaboration. The removed member's data is inaccessible to
%% active members of the collaboration.
-spec delete_member(aws_client:aws_client(), binary() | list(), binary() | list(), delete_member_input()) ->
    {ok, delete_member_output(), tuple()} |
    {error, any()} |
    {error, delete_member_errors(), tuple()}.
delete_member(Client, AccountId, CollaborationIdentifier, Input) ->
    delete_member(Client, AccountId, CollaborationIdentifier, Input, []).

-spec delete_member(aws_client:aws_client(), binary() | list(), binary() | list(), delete_member_input(), proplists:proplist()) ->
    {ok, delete_member_output(), tuple()} |
    {error, any()} |
    {error, delete_member_errors(), tuple()}.
delete_member(Client, AccountId, CollaborationIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/member/", aws_util:encode_uri(AccountId), ""],
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

%% @doc Deletes a specified membership.
%%
%% All resources under a membership must be deleted.
-spec delete_membership(aws_client:aws_client(), binary() | list(), delete_membership_input()) ->
    {ok, delete_membership_output(), tuple()} |
    {error, any()} |
    {error, delete_membership_errors(), tuple()}.
delete_membership(Client, MembershipIdentifier, Input) ->
    delete_membership(Client, MembershipIdentifier, Input, []).

-spec delete_membership(aws_client:aws_client(), binary() | list(), delete_membership_input(), proplists:proplist()) ->
    {ok, delete_membership_output(), tuple()} |
    {error, any()} |
    {error, delete_membership_errors(), tuple()}.
delete_membership(Client, MembershipIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), ""],
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

%% @doc Deletes a privacy budget template for a specified membership.
-spec delete_privacy_budget_template(aws_client:aws_client(), binary() | list(), binary() | list(), delete_privacy_budget_template_input()) ->
    {ok, delete_privacy_budget_template_output(), tuple()} |
    {error, any()} |
    {error, delete_privacy_budget_template_errors(), tuple()}.
delete_privacy_budget_template(Client, MembershipIdentifier, PrivacyBudgetTemplateIdentifier, Input) ->
    delete_privacy_budget_template(Client, MembershipIdentifier, PrivacyBudgetTemplateIdentifier, Input, []).

-spec delete_privacy_budget_template(aws_client:aws_client(), binary() | list(), binary() | list(), delete_privacy_budget_template_input(), proplists:proplist()) ->
    {ok, delete_privacy_budget_template_output(), tuple()} |
    {error, any()} |
    {error, delete_privacy_budget_template_errors(), tuple()}.
delete_privacy_budget_template(Client, MembershipIdentifier, PrivacyBudgetTemplateIdentifier, Input0, Options0) ->
    Method = delete,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/privacybudgettemplates/", aws_util:encode_uri(PrivacyBudgetTemplateIdentifier), ""],
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

%% @doc Retrieves an analysis template.
-spec get_analysis_template(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_analysis_template_output(), tuple()} |
    {error, any()} |
    {error, get_analysis_template_errors(), tuple()}.
get_analysis_template(Client, AnalysisTemplateIdentifier, MembershipIdentifier)
  when is_map(Client) ->
    get_analysis_template(Client, AnalysisTemplateIdentifier, MembershipIdentifier, #{}, #{}).

-spec get_analysis_template(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_analysis_template_output(), tuple()} |
    {error, any()} |
    {error, get_analysis_template_errors(), tuple()}.
get_analysis_template(Client, AnalysisTemplateIdentifier, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_analysis_template(Client, AnalysisTemplateIdentifier, MembershipIdentifier, QueryMap, HeadersMap, []).

-spec get_analysis_template(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_analysis_template_output(), tuple()} |
    {error, any()} |
    {error, get_analysis_template_errors(), tuple()}.
get_analysis_template(Client, AnalysisTemplateIdentifier, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/analysistemplates/", aws_util:encode_uri(AnalysisTemplateIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns metadata about a collaboration.
-spec get_collaboration(aws_client:aws_client(), binary() | list()) ->
    {ok, get_collaboration_output(), tuple()} |
    {error, any()} |
    {error, get_collaboration_errors(), tuple()}.
get_collaboration(Client, CollaborationIdentifier)
  when is_map(Client) ->
    get_collaboration(Client, CollaborationIdentifier, #{}, #{}).

-spec get_collaboration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_collaboration_output(), tuple()} |
    {error, any()} |
    {error, get_collaboration_errors(), tuple()}.
get_collaboration(Client, CollaborationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_collaboration(Client, CollaborationIdentifier, QueryMap, HeadersMap, []).

-spec get_collaboration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_collaboration_output(), tuple()} |
    {error, any()} |
    {error, get_collaboration_errors(), tuple()}.
get_collaboration(Client, CollaborationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves an analysis template within a collaboration.
-spec get_collaboration_analysis_template(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_collaboration_analysis_template_output(), tuple()} |
    {error, any()} |
    {error, get_collaboration_analysis_template_errors(), tuple()}.
get_collaboration_analysis_template(Client, AnalysisTemplateArn, CollaborationIdentifier)
  when is_map(Client) ->
    get_collaboration_analysis_template(Client, AnalysisTemplateArn, CollaborationIdentifier, #{}, #{}).

-spec get_collaboration_analysis_template(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_collaboration_analysis_template_output(), tuple()} |
    {error, any()} |
    {error, get_collaboration_analysis_template_errors(), tuple()}.
get_collaboration_analysis_template(Client, AnalysisTemplateArn, CollaborationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_collaboration_analysis_template(Client, AnalysisTemplateArn, CollaborationIdentifier, QueryMap, HeadersMap, []).

-spec get_collaboration_analysis_template(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_collaboration_analysis_template_output(), tuple()} |
    {error, any()} |
    {error, get_collaboration_analysis_template_errors(), tuple()}.
get_collaboration_analysis_template(Client, AnalysisTemplateArn, CollaborationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/analysistemplates/", aws_util:encode_uri(AnalysisTemplateArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a configured audience model association within a
%% collaboration.
-spec get_collaboration_configured_audience_model_association(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_collaboration_configured_audience_model_association_output(), tuple()} |
    {error, any()} |
    {error, get_collaboration_configured_audience_model_association_errors(), tuple()}.
get_collaboration_configured_audience_model_association(Client, CollaborationIdentifier, ConfiguredAudienceModelAssociationIdentifier)
  when is_map(Client) ->
    get_collaboration_configured_audience_model_association(Client, CollaborationIdentifier, ConfiguredAudienceModelAssociationIdentifier, #{}, #{}).

-spec get_collaboration_configured_audience_model_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_collaboration_configured_audience_model_association_output(), tuple()} |
    {error, any()} |
    {error, get_collaboration_configured_audience_model_association_errors(), tuple()}.
get_collaboration_configured_audience_model_association(Client, CollaborationIdentifier, ConfiguredAudienceModelAssociationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_collaboration_configured_audience_model_association(Client, CollaborationIdentifier, ConfiguredAudienceModelAssociationIdentifier, QueryMap, HeadersMap, []).

-spec get_collaboration_configured_audience_model_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_collaboration_configured_audience_model_association_output(), tuple()} |
    {error, any()} |
    {error, get_collaboration_configured_audience_model_association_errors(), tuple()}.
get_collaboration_configured_audience_model_association(Client, CollaborationIdentifier, ConfiguredAudienceModelAssociationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/configuredaudiencemodelassociations/", aws_util:encode_uri(ConfiguredAudienceModelAssociationIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves an ID namespace association from a specific collaboration.
-spec get_collaboration_id_namespace_association(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_collaboration_id_namespace_association_output(), tuple()} |
    {error, any()} |
    {error, get_collaboration_id_namespace_association_errors(), tuple()}.
get_collaboration_id_namespace_association(Client, CollaborationIdentifier, IdNamespaceAssociationIdentifier)
  when is_map(Client) ->
    get_collaboration_id_namespace_association(Client, CollaborationIdentifier, IdNamespaceAssociationIdentifier, #{}, #{}).

-spec get_collaboration_id_namespace_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_collaboration_id_namespace_association_output(), tuple()} |
    {error, any()} |
    {error, get_collaboration_id_namespace_association_errors(), tuple()}.
get_collaboration_id_namespace_association(Client, CollaborationIdentifier, IdNamespaceAssociationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_collaboration_id_namespace_association(Client, CollaborationIdentifier, IdNamespaceAssociationIdentifier, QueryMap, HeadersMap, []).

-spec get_collaboration_id_namespace_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_collaboration_id_namespace_association_output(), tuple()} |
    {error, any()} |
    {error, get_collaboration_id_namespace_association_errors(), tuple()}.
get_collaboration_id_namespace_association(Client, CollaborationIdentifier, IdNamespaceAssociationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/idnamespaceassociations/", aws_util:encode_uri(IdNamespaceAssociationIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details about a specified privacy budget template.
-spec get_collaboration_privacy_budget_template(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_collaboration_privacy_budget_template_output(), tuple()} |
    {error, any()} |
    {error, get_collaboration_privacy_budget_template_errors(), tuple()}.
get_collaboration_privacy_budget_template(Client, CollaborationIdentifier, PrivacyBudgetTemplateIdentifier)
  when is_map(Client) ->
    get_collaboration_privacy_budget_template(Client, CollaborationIdentifier, PrivacyBudgetTemplateIdentifier, #{}, #{}).

-spec get_collaboration_privacy_budget_template(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_collaboration_privacy_budget_template_output(), tuple()} |
    {error, any()} |
    {error, get_collaboration_privacy_budget_template_errors(), tuple()}.
get_collaboration_privacy_budget_template(Client, CollaborationIdentifier, PrivacyBudgetTemplateIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_collaboration_privacy_budget_template(Client, CollaborationIdentifier, PrivacyBudgetTemplateIdentifier, QueryMap, HeadersMap, []).

-spec get_collaboration_privacy_budget_template(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_collaboration_privacy_budget_template_output(), tuple()} |
    {error, any()} |
    {error, get_collaboration_privacy_budget_template_errors(), tuple()}.
get_collaboration_privacy_budget_template(Client, CollaborationIdentifier, PrivacyBudgetTemplateIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/privacybudgettemplates/", aws_util:encode_uri(PrivacyBudgetTemplateIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about a configured audience model association.
-spec get_configured_audience_model_association(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_configured_audience_model_association_output(), tuple()} |
    {error, any()} |
    {error, get_configured_audience_model_association_errors(), tuple()}.
get_configured_audience_model_association(Client, ConfiguredAudienceModelAssociationIdentifier, MembershipIdentifier)
  when is_map(Client) ->
    get_configured_audience_model_association(Client, ConfiguredAudienceModelAssociationIdentifier, MembershipIdentifier, #{}, #{}).

-spec get_configured_audience_model_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_configured_audience_model_association_output(), tuple()} |
    {error, any()} |
    {error, get_configured_audience_model_association_errors(), tuple()}.
get_configured_audience_model_association(Client, ConfiguredAudienceModelAssociationIdentifier, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configured_audience_model_association(Client, ConfiguredAudienceModelAssociationIdentifier, MembershipIdentifier, QueryMap, HeadersMap, []).

-spec get_configured_audience_model_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_configured_audience_model_association_output(), tuple()} |
    {error, any()} |
    {error, get_configured_audience_model_association_errors(), tuple()}.
get_configured_audience_model_association(Client, ConfiguredAudienceModelAssociationIdentifier, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configuredaudiencemodelassociations/", aws_util:encode_uri(ConfiguredAudienceModelAssociationIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a configured table.
-spec get_configured_table(aws_client:aws_client(), binary() | list()) ->
    {ok, get_configured_table_output(), tuple()} |
    {error, any()} |
    {error, get_configured_table_errors(), tuple()}.
get_configured_table(Client, ConfiguredTableIdentifier)
  when is_map(Client) ->
    get_configured_table(Client, ConfiguredTableIdentifier, #{}, #{}).

-spec get_configured_table(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_configured_table_output(), tuple()} |
    {error, any()} |
    {error, get_configured_table_errors(), tuple()}.
get_configured_table(Client, ConfiguredTableIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configured_table(Client, ConfiguredTableIdentifier, QueryMap, HeadersMap, []).

-spec get_configured_table(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_configured_table_output(), tuple()} |
    {error, any()} |
    {error, get_configured_table_errors(), tuple()}.
get_configured_table(Client, ConfiguredTableIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configuredTables/", aws_util:encode_uri(ConfiguredTableIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a configured table analysis rule.
-spec get_configured_table_analysis_rule(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_configured_table_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, get_configured_table_analysis_rule_errors(), tuple()}.
get_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier)
  when is_map(Client) ->
    get_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier, #{}, #{}).

-spec get_configured_table_analysis_rule(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_configured_table_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, get_configured_table_analysis_rule_errors(), tuple()}.
get_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier, QueryMap, HeadersMap, []).

-spec get_configured_table_analysis_rule(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_configured_table_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, get_configured_table_analysis_rule_errors(), tuple()}.
get_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configuredTables/", aws_util:encode_uri(ConfiguredTableIdentifier), "/analysisRule/", aws_util:encode_uri(AnalysisRuleType), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a configured table association.
-spec get_configured_table_association(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_configured_table_association_output(), tuple()} |
    {error, any()} |
    {error, get_configured_table_association_errors(), tuple()}.
get_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier)
  when is_map(Client) ->
    get_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, #{}, #{}).

-spec get_configured_table_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_configured_table_association_output(), tuple()} |
    {error, any()} |
    {error, get_configured_table_association_errors(), tuple()}.
get_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, QueryMap, HeadersMap, []).

-spec get_configured_table_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_configured_table_association_output(), tuple()} |
    {error, any()} |
    {error, get_configured_table_association_errors(), tuple()}.
get_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configuredTableAssociations/", aws_util:encode_uri(ConfiguredTableAssociationIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the analysis rule for a configured table association.
-spec get_configured_table_association_analysis_rule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_configured_table_association_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, get_configured_table_association_analysis_rule_errors(), tuple()}.
get_configured_table_association_analysis_rule(Client, AnalysisRuleType, ConfiguredTableAssociationIdentifier, MembershipIdentifier)
  when is_map(Client) ->
    get_configured_table_association_analysis_rule(Client, AnalysisRuleType, ConfiguredTableAssociationIdentifier, MembershipIdentifier, #{}, #{}).

-spec get_configured_table_association_analysis_rule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_configured_table_association_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, get_configured_table_association_analysis_rule_errors(), tuple()}.
get_configured_table_association_analysis_rule(Client, AnalysisRuleType, ConfiguredTableAssociationIdentifier, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_configured_table_association_analysis_rule(Client, AnalysisRuleType, ConfiguredTableAssociationIdentifier, MembershipIdentifier, QueryMap, HeadersMap, []).

-spec get_configured_table_association_analysis_rule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_configured_table_association_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, get_configured_table_association_analysis_rule_errors(), tuple()}.
get_configured_table_association_analysis_rule(Client, AnalysisRuleType, ConfiguredTableAssociationIdentifier, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configuredTableAssociations/", aws_util:encode_uri(ConfiguredTableAssociationIdentifier), "/analysisRule/", aws_util:encode_uri(AnalysisRuleType), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves an ID mapping table.
-spec get_id_mapping_table(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_id_mapping_table_output(), tuple()} |
    {error, any()} |
    {error, get_id_mapping_table_errors(), tuple()}.
get_id_mapping_table(Client, IdMappingTableIdentifier, MembershipIdentifier)
  when is_map(Client) ->
    get_id_mapping_table(Client, IdMappingTableIdentifier, MembershipIdentifier, #{}, #{}).

-spec get_id_mapping_table(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_id_mapping_table_output(), tuple()} |
    {error, any()} |
    {error, get_id_mapping_table_errors(), tuple()}.
get_id_mapping_table(Client, IdMappingTableIdentifier, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_id_mapping_table(Client, IdMappingTableIdentifier, MembershipIdentifier, QueryMap, HeadersMap, []).

-spec get_id_mapping_table(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_id_mapping_table_output(), tuple()} |
    {error, any()} |
    {error, get_id_mapping_table_errors(), tuple()}.
get_id_mapping_table(Client, IdMappingTableIdentifier, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/idmappingtables/", aws_util:encode_uri(IdMappingTableIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves an ID namespace association.
-spec get_id_namespace_association(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_id_namespace_association_output(), tuple()} |
    {error, any()} |
    {error, get_id_namespace_association_errors(), tuple()}.
get_id_namespace_association(Client, IdNamespaceAssociationIdentifier, MembershipIdentifier)
  when is_map(Client) ->
    get_id_namespace_association(Client, IdNamespaceAssociationIdentifier, MembershipIdentifier, #{}, #{}).

-spec get_id_namespace_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_id_namespace_association_output(), tuple()} |
    {error, any()} |
    {error, get_id_namespace_association_errors(), tuple()}.
get_id_namespace_association(Client, IdNamespaceAssociationIdentifier, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_id_namespace_association(Client, IdNamespaceAssociationIdentifier, MembershipIdentifier, QueryMap, HeadersMap, []).

-spec get_id_namespace_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_id_namespace_association_output(), tuple()} |
    {error, any()} |
    {error, get_id_namespace_association_errors(), tuple()}.
get_id_namespace_association(Client, IdNamespaceAssociationIdentifier, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/idnamespaceassociations/", aws_util:encode_uri(IdNamespaceAssociationIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a specified membership for an identifier.
-spec get_membership(aws_client:aws_client(), binary() | list()) ->
    {ok, get_membership_output(), tuple()} |
    {error, any()} |
    {error, get_membership_errors(), tuple()}.
get_membership(Client, MembershipIdentifier)
  when is_map(Client) ->
    get_membership(Client, MembershipIdentifier, #{}, #{}).

-spec get_membership(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_membership_output(), tuple()} |
    {error, any()} |
    {error, get_membership_errors(), tuple()}.
get_membership(Client, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_membership(Client, MembershipIdentifier, QueryMap, HeadersMap, []).

-spec get_membership(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_membership_output(), tuple()} |
    {error, any()} |
    {error, get_membership_errors(), tuple()}.
get_membership(Client, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns details for a specified privacy budget template.
-spec get_privacy_budget_template(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_privacy_budget_template_output(), tuple()} |
    {error, any()} |
    {error, get_privacy_budget_template_errors(), tuple()}.
get_privacy_budget_template(Client, MembershipIdentifier, PrivacyBudgetTemplateIdentifier)
  when is_map(Client) ->
    get_privacy_budget_template(Client, MembershipIdentifier, PrivacyBudgetTemplateIdentifier, #{}, #{}).

-spec get_privacy_budget_template(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_privacy_budget_template_output(), tuple()} |
    {error, any()} |
    {error, get_privacy_budget_template_errors(), tuple()}.
get_privacy_budget_template(Client, MembershipIdentifier, PrivacyBudgetTemplateIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_privacy_budget_template(Client, MembershipIdentifier, PrivacyBudgetTemplateIdentifier, QueryMap, HeadersMap, []).

-spec get_privacy_budget_template(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_privacy_budget_template_output(), tuple()} |
    {error, any()} |
    {error, get_privacy_budget_template_errors(), tuple()}.
get_privacy_budget_template(Client, MembershipIdentifier, PrivacyBudgetTemplateIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/privacybudgettemplates/", aws_util:encode_uri(PrivacyBudgetTemplateIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns job processing metadata.
-spec get_protected_job(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_protected_job_output(), tuple()} |
    {error, any()} |
    {error, get_protected_job_errors(), tuple()}.
get_protected_job(Client, MembershipIdentifier, ProtectedJobIdentifier)
  when is_map(Client) ->
    get_protected_job(Client, MembershipIdentifier, ProtectedJobIdentifier, #{}, #{}).

-spec get_protected_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_protected_job_output(), tuple()} |
    {error, any()} |
    {error, get_protected_job_errors(), tuple()}.
get_protected_job(Client, MembershipIdentifier, ProtectedJobIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_protected_job(Client, MembershipIdentifier, ProtectedJobIdentifier, QueryMap, HeadersMap, []).

-spec get_protected_job(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_protected_job_output(), tuple()} |
    {error, any()} |
    {error, get_protected_job_errors(), tuple()}.
get_protected_job(Client, MembershipIdentifier, ProtectedJobIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/protectedJobs/", aws_util:encode_uri(ProtectedJobIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns query processing metadata.
-spec get_protected_query(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_protected_query_output(), tuple()} |
    {error, any()} |
    {error, get_protected_query_errors(), tuple()}.
get_protected_query(Client, MembershipIdentifier, ProtectedQueryIdentifier)
  when is_map(Client) ->
    get_protected_query(Client, MembershipIdentifier, ProtectedQueryIdentifier, #{}, #{}).

-spec get_protected_query(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_protected_query_output(), tuple()} |
    {error, any()} |
    {error, get_protected_query_errors(), tuple()}.
get_protected_query(Client, MembershipIdentifier, ProtectedQueryIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_protected_query(Client, MembershipIdentifier, ProtectedQueryIdentifier, QueryMap, HeadersMap, []).

-spec get_protected_query(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_protected_query_output(), tuple()} |
    {error, any()} |
    {error, get_protected_query_errors(), tuple()}.
get_protected_query(Client, MembershipIdentifier, ProtectedQueryIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/protectedQueries/", aws_util:encode_uri(ProtectedQueryIdentifier), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the schema for a relation within a collaboration.
-spec get_schema(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_schema_output(), tuple()} |
    {error, any()} |
    {error, get_schema_errors(), tuple()}.
get_schema(Client, CollaborationIdentifier, Name)
  when is_map(Client) ->
    get_schema(Client, CollaborationIdentifier, Name, #{}, #{}).

-spec get_schema(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_schema_output(), tuple()} |
    {error, any()} |
    {error, get_schema_errors(), tuple()}.
get_schema(Client, CollaborationIdentifier, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_schema(Client, CollaborationIdentifier, Name, QueryMap, HeadersMap, []).

-spec get_schema(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_schema_output(), tuple()} |
    {error, any()} |
    {error, get_schema_errors(), tuple()}.
get_schema(Client, CollaborationIdentifier, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/schemas/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a schema analysis rule.
-spec get_schema_analysis_rule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_schema_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, get_schema_analysis_rule_errors(), tuple()}.
get_schema_analysis_rule(Client, CollaborationIdentifier, Name, Type)
  when is_map(Client) ->
    get_schema_analysis_rule(Client, CollaborationIdentifier, Name, Type, #{}, #{}).

-spec get_schema_analysis_rule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_schema_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, get_schema_analysis_rule_errors(), tuple()}.
get_schema_analysis_rule(Client, CollaborationIdentifier, Name, Type, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_schema_analysis_rule(Client, CollaborationIdentifier, Name, Type, QueryMap, HeadersMap, []).

-spec get_schema_analysis_rule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_schema_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, get_schema_analysis_rule_errors(), tuple()}.
get_schema_analysis_rule(Client, CollaborationIdentifier, Name, Type, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/schemas/", aws_util:encode_uri(Name), "/analysisRule/", aws_util:encode_uri(Type), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists analysis templates that the caller owns.
-spec list_analysis_templates(aws_client:aws_client(), binary() | list()) ->
    {ok, list_analysis_templates_output(), tuple()} |
    {error, any()} |
    {error, list_analysis_templates_errors(), tuple()}.
list_analysis_templates(Client, MembershipIdentifier)
  when is_map(Client) ->
    list_analysis_templates(Client, MembershipIdentifier, #{}, #{}).

-spec list_analysis_templates(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_analysis_templates_output(), tuple()} |
    {error, any()} |
    {error, list_analysis_templates_errors(), tuple()}.
list_analysis_templates(Client, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_analysis_templates(Client, MembershipIdentifier, QueryMap, HeadersMap, []).

-spec list_analysis_templates(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_analysis_templates_output(), tuple()} |
    {error, any()} |
    {error, list_analysis_templates_errors(), tuple()}.
list_analysis_templates(Client, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/analysistemplates"],
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

%% @doc Lists analysis templates within a collaboration.
-spec list_collaboration_analysis_templates(aws_client:aws_client(), binary() | list()) ->
    {ok, list_collaboration_analysis_templates_output(), tuple()} |
    {error, any()} |
    {error, list_collaboration_analysis_templates_errors(), tuple()}.
list_collaboration_analysis_templates(Client, CollaborationIdentifier)
  when is_map(Client) ->
    list_collaboration_analysis_templates(Client, CollaborationIdentifier, #{}, #{}).

-spec list_collaboration_analysis_templates(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_collaboration_analysis_templates_output(), tuple()} |
    {error, any()} |
    {error, list_collaboration_analysis_templates_errors(), tuple()}.
list_collaboration_analysis_templates(Client, CollaborationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_collaboration_analysis_templates(Client, CollaborationIdentifier, QueryMap, HeadersMap, []).

-spec list_collaboration_analysis_templates(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_collaboration_analysis_templates_output(), tuple()} |
    {error, any()} |
    {error, list_collaboration_analysis_templates_errors(), tuple()}.
list_collaboration_analysis_templates(Client, CollaborationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/analysistemplates"],
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

%% @doc Lists configured audience model associations within a collaboration.
-spec list_collaboration_configured_audience_model_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_collaboration_configured_audience_model_associations_output(), tuple()} |
    {error, any()} |
    {error, list_collaboration_configured_audience_model_associations_errors(), tuple()}.
list_collaboration_configured_audience_model_associations(Client, CollaborationIdentifier)
  when is_map(Client) ->
    list_collaboration_configured_audience_model_associations(Client, CollaborationIdentifier, #{}, #{}).

-spec list_collaboration_configured_audience_model_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_collaboration_configured_audience_model_associations_output(), tuple()} |
    {error, any()} |
    {error, list_collaboration_configured_audience_model_associations_errors(), tuple()}.
list_collaboration_configured_audience_model_associations(Client, CollaborationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_collaboration_configured_audience_model_associations(Client, CollaborationIdentifier, QueryMap, HeadersMap, []).

-spec list_collaboration_configured_audience_model_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_collaboration_configured_audience_model_associations_output(), tuple()} |
    {error, any()} |
    {error, list_collaboration_configured_audience_model_associations_errors(), tuple()}.
list_collaboration_configured_audience_model_associations(Client, CollaborationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/configuredaudiencemodelassociations"],
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

%% @doc Returns a list of the ID namespace associations in a collaboration.
-spec list_collaboration_id_namespace_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_collaboration_id_namespace_associations_output(), tuple()} |
    {error, any()} |
    {error, list_collaboration_id_namespace_associations_errors(), tuple()}.
list_collaboration_id_namespace_associations(Client, CollaborationIdentifier)
  when is_map(Client) ->
    list_collaboration_id_namespace_associations(Client, CollaborationIdentifier, #{}, #{}).

-spec list_collaboration_id_namespace_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_collaboration_id_namespace_associations_output(), tuple()} |
    {error, any()} |
    {error, list_collaboration_id_namespace_associations_errors(), tuple()}.
list_collaboration_id_namespace_associations(Client, CollaborationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_collaboration_id_namespace_associations(Client, CollaborationIdentifier, QueryMap, HeadersMap, []).

-spec list_collaboration_id_namespace_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_collaboration_id_namespace_associations_output(), tuple()} |
    {error, any()} |
    {error, list_collaboration_id_namespace_associations_errors(), tuple()}.
list_collaboration_id_namespace_associations(Client, CollaborationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/idnamespaceassociations"],
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

%% @doc Returns an array that summarizes each privacy budget template in a
%% specified collaboration.
-spec list_collaboration_privacy_budget_templates(aws_client:aws_client(), binary() | list()) ->
    {ok, list_collaboration_privacy_budget_templates_output(), tuple()} |
    {error, any()} |
    {error, list_collaboration_privacy_budget_templates_errors(), tuple()}.
list_collaboration_privacy_budget_templates(Client, CollaborationIdentifier)
  when is_map(Client) ->
    list_collaboration_privacy_budget_templates(Client, CollaborationIdentifier, #{}, #{}).

-spec list_collaboration_privacy_budget_templates(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_collaboration_privacy_budget_templates_output(), tuple()} |
    {error, any()} |
    {error, list_collaboration_privacy_budget_templates_errors(), tuple()}.
list_collaboration_privacy_budget_templates(Client, CollaborationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_collaboration_privacy_budget_templates(Client, CollaborationIdentifier, QueryMap, HeadersMap, []).

-spec list_collaboration_privacy_budget_templates(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_collaboration_privacy_budget_templates_output(), tuple()} |
    {error, any()} |
    {error, list_collaboration_privacy_budget_templates_errors(), tuple()}.
list_collaboration_privacy_budget_templates(Client, CollaborationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/privacybudgettemplates"],
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

%% @doc Returns an array that summarizes each privacy budget in a specified
%% collaboration.
%%
%% The summary includes the collaboration ARN, creation time, creating
%% account, and privacy budget details.
-spec list_collaboration_privacy_budgets(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_collaboration_privacy_budgets_output(), tuple()} |
    {error, any()} |
    {error, list_collaboration_privacy_budgets_errors(), tuple()}.
list_collaboration_privacy_budgets(Client, CollaborationIdentifier, PrivacyBudgetType)
  when is_map(Client) ->
    list_collaboration_privacy_budgets(Client, CollaborationIdentifier, PrivacyBudgetType, #{}, #{}).

-spec list_collaboration_privacy_budgets(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_collaboration_privacy_budgets_output(), tuple()} |
    {error, any()} |
    {error, list_collaboration_privacy_budgets_errors(), tuple()}.
list_collaboration_privacy_budgets(Client, CollaborationIdentifier, PrivacyBudgetType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_collaboration_privacy_budgets(Client, CollaborationIdentifier, PrivacyBudgetType, QueryMap, HeadersMap, []).

-spec list_collaboration_privacy_budgets(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_collaboration_privacy_budgets_output(), tuple()} |
    {error, any()} |
    {error, list_collaboration_privacy_budgets_errors(), tuple()}.
list_collaboration_privacy_budgets(Client, CollaborationIdentifier, PrivacyBudgetType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/privacybudgets"],
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
        {<<"privacyBudgetType">>, PrivacyBudgetType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists collaborations the caller owns, is active in, or has been
%% invited to.
-spec list_collaborations(aws_client:aws_client()) ->
    {ok, list_collaborations_output(), tuple()} |
    {error, any()} |
    {error, list_collaborations_errors(), tuple()}.
list_collaborations(Client)
  when is_map(Client) ->
    list_collaborations(Client, #{}, #{}).

-spec list_collaborations(aws_client:aws_client(), map(), map()) ->
    {ok, list_collaborations_output(), tuple()} |
    {error, any()} |
    {error, list_collaborations_errors(), tuple()}.
list_collaborations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_collaborations(Client, QueryMap, HeadersMap, []).

-spec list_collaborations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_collaborations_output(), tuple()} |
    {error, any()} |
    {error, list_collaborations_errors(), tuple()}.
list_collaborations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations"],
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
        {<<"memberStatus">>, maps:get(<<"memberStatus">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists information about requested configured audience model
%% associations.
-spec list_configured_audience_model_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_configured_audience_model_associations_output(), tuple()} |
    {error, any()} |
    {error, list_configured_audience_model_associations_errors(), tuple()}.
list_configured_audience_model_associations(Client, MembershipIdentifier)
  when is_map(Client) ->
    list_configured_audience_model_associations(Client, MembershipIdentifier, #{}, #{}).

-spec list_configured_audience_model_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_configured_audience_model_associations_output(), tuple()} |
    {error, any()} |
    {error, list_configured_audience_model_associations_errors(), tuple()}.
list_configured_audience_model_associations(Client, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configured_audience_model_associations(Client, MembershipIdentifier, QueryMap, HeadersMap, []).

-spec list_configured_audience_model_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_configured_audience_model_associations_output(), tuple()} |
    {error, any()} |
    {error, list_configured_audience_model_associations_errors(), tuple()}.
list_configured_audience_model_associations(Client, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configuredaudiencemodelassociations"],
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

%% @doc Lists configured table associations for a membership.
-spec list_configured_table_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_configured_table_associations_output(), tuple()} |
    {error, any()} |
    {error, list_configured_table_associations_errors(), tuple()}.
list_configured_table_associations(Client, MembershipIdentifier)
  when is_map(Client) ->
    list_configured_table_associations(Client, MembershipIdentifier, #{}, #{}).

-spec list_configured_table_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_configured_table_associations_output(), tuple()} |
    {error, any()} |
    {error, list_configured_table_associations_errors(), tuple()}.
list_configured_table_associations(Client, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configured_table_associations(Client, MembershipIdentifier, QueryMap, HeadersMap, []).

-spec list_configured_table_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_configured_table_associations_output(), tuple()} |
    {error, any()} |
    {error, list_configured_table_associations_errors(), tuple()}.
list_configured_table_associations(Client, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configuredTableAssociations"],
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

%% @doc Lists configured tables.
-spec list_configured_tables(aws_client:aws_client()) ->
    {ok, list_configured_tables_output(), tuple()} |
    {error, any()} |
    {error, list_configured_tables_errors(), tuple()}.
list_configured_tables(Client)
  when is_map(Client) ->
    list_configured_tables(Client, #{}, #{}).

-spec list_configured_tables(aws_client:aws_client(), map(), map()) ->
    {ok, list_configured_tables_output(), tuple()} |
    {error, any()} |
    {error, list_configured_tables_errors(), tuple()}.
list_configured_tables(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configured_tables(Client, QueryMap, HeadersMap, []).

-spec list_configured_tables(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_configured_tables_output(), tuple()} |
    {error, any()} |
    {error, list_configured_tables_errors(), tuple()}.
list_configured_tables(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/configuredTables"],
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

%% @doc Returns a list of ID mapping tables.
-spec list_id_mapping_tables(aws_client:aws_client(), binary() | list()) ->
    {ok, list_id_mapping_tables_output(), tuple()} |
    {error, any()} |
    {error, list_id_mapping_tables_errors(), tuple()}.
list_id_mapping_tables(Client, MembershipIdentifier)
  when is_map(Client) ->
    list_id_mapping_tables(Client, MembershipIdentifier, #{}, #{}).

-spec list_id_mapping_tables(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_id_mapping_tables_output(), tuple()} |
    {error, any()} |
    {error, list_id_mapping_tables_errors(), tuple()}.
list_id_mapping_tables(Client, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_id_mapping_tables(Client, MembershipIdentifier, QueryMap, HeadersMap, []).

-spec list_id_mapping_tables(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_id_mapping_tables_output(), tuple()} |
    {error, any()} |
    {error, list_id_mapping_tables_errors(), tuple()}.
list_id_mapping_tables(Client, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/idmappingtables"],
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

%% @doc Returns a list of ID namespace associations.
-spec list_id_namespace_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_id_namespace_associations_output(), tuple()} |
    {error, any()} |
    {error, list_id_namespace_associations_errors(), tuple()}.
list_id_namespace_associations(Client, MembershipIdentifier)
  when is_map(Client) ->
    list_id_namespace_associations(Client, MembershipIdentifier, #{}, #{}).

-spec list_id_namespace_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_id_namespace_associations_output(), tuple()} |
    {error, any()} |
    {error, list_id_namespace_associations_errors(), tuple()}.
list_id_namespace_associations(Client, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_id_namespace_associations(Client, MembershipIdentifier, QueryMap, HeadersMap, []).

-spec list_id_namespace_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_id_namespace_associations_output(), tuple()} |
    {error, any()} |
    {error, list_id_namespace_associations_errors(), tuple()}.
list_id_namespace_associations(Client, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/idnamespaceassociations"],
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

%% @doc Lists all members within a collaboration.
-spec list_members(aws_client:aws_client(), binary() | list()) ->
    {ok, list_members_output(), tuple()} |
    {error, any()} |
    {error, list_members_errors(), tuple()}.
list_members(Client, CollaborationIdentifier)
  when is_map(Client) ->
    list_members(Client, CollaborationIdentifier, #{}, #{}).

-spec list_members(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_members_output(), tuple()} |
    {error, any()} |
    {error, list_members_errors(), tuple()}.
list_members(Client, CollaborationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_members(Client, CollaborationIdentifier, QueryMap, HeadersMap, []).

-spec list_members(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_members_output(), tuple()} |
    {error, any()} |
    {error, list_members_errors(), tuple()}.
list_members(Client, CollaborationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/members"],
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

%% @doc Lists all memberships resources within the caller's account.
-spec list_memberships(aws_client:aws_client()) ->
    {ok, list_memberships_output(), tuple()} |
    {error, any()} |
    {error, list_memberships_errors(), tuple()}.
list_memberships(Client)
  when is_map(Client) ->
    list_memberships(Client, #{}, #{}).

-spec list_memberships(aws_client:aws_client(), map(), map()) ->
    {ok, list_memberships_output(), tuple()} |
    {error, any()} |
    {error, list_memberships_errors(), tuple()}.
list_memberships(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_memberships(Client, QueryMap, HeadersMap, []).

-spec list_memberships(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_memberships_output(), tuple()} |
    {error, any()} |
    {error, list_memberships_errors(), tuple()}.
list_memberships(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships"],
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
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns detailed information about the privacy budget templates in a
%% specified membership.
-spec list_privacy_budget_templates(aws_client:aws_client(), binary() | list()) ->
    {ok, list_privacy_budget_templates_output(), tuple()} |
    {error, any()} |
    {error, list_privacy_budget_templates_errors(), tuple()}.
list_privacy_budget_templates(Client, MembershipIdentifier)
  when is_map(Client) ->
    list_privacy_budget_templates(Client, MembershipIdentifier, #{}, #{}).

-spec list_privacy_budget_templates(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_privacy_budget_templates_output(), tuple()} |
    {error, any()} |
    {error, list_privacy_budget_templates_errors(), tuple()}.
list_privacy_budget_templates(Client, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_privacy_budget_templates(Client, MembershipIdentifier, QueryMap, HeadersMap, []).

-spec list_privacy_budget_templates(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_privacy_budget_templates_output(), tuple()} |
    {error, any()} |
    {error, list_privacy_budget_templates_errors(), tuple()}.
list_privacy_budget_templates(Client, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/privacybudgettemplates"],
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

%% @doc Returns detailed information about the privacy budgets in a specified
%% membership.
-spec list_privacy_budgets(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_privacy_budgets_output(), tuple()} |
    {error, any()} |
    {error, list_privacy_budgets_errors(), tuple()}.
list_privacy_budgets(Client, MembershipIdentifier, PrivacyBudgetType)
  when is_map(Client) ->
    list_privacy_budgets(Client, MembershipIdentifier, PrivacyBudgetType, #{}, #{}).

-spec list_privacy_budgets(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_privacy_budgets_output(), tuple()} |
    {error, any()} |
    {error, list_privacy_budgets_errors(), tuple()}.
list_privacy_budgets(Client, MembershipIdentifier, PrivacyBudgetType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_privacy_budgets(Client, MembershipIdentifier, PrivacyBudgetType, QueryMap, HeadersMap, []).

-spec list_privacy_budgets(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_privacy_budgets_output(), tuple()} |
    {error, any()} |
    {error, list_privacy_budgets_errors(), tuple()}.
list_privacy_budgets(Client, MembershipIdentifier, PrivacyBudgetType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/privacybudgets"],
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
        {<<"privacyBudgetType">>, PrivacyBudgetType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists protected jobs, sorted by most recent job.
-spec list_protected_jobs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_protected_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_protected_jobs_errors(), tuple()}.
list_protected_jobs(Client, MembershipIdentifier)
  when is_map(Client) ->
    list_protected_jobs(Client, MembershipIdentifier, #{}, #{}).

-spec list_protected_jobs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_protected_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_protected_jobs_errors(), tuple()}.
list_protected_jobs(Client, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_protected_jobs(Client, MembershipIdentifier, QueryMap, HeadersMap, []).

-spec list_protected_jobs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_protected_jobs_output(), tuple()} |
    {error, any()} |
    {error, list_protected_jobs_errors(), tuple()}.
list_protected_jobs(Client, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/protectedJobs"],
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
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists protected queries, sorted by the most recent query.
-spec list_protected_queries(aws_client:aws_client(), binary() | list()) ->
    {ok, list_protected_queries_output(), tuple()} |
    {error, any()} |
    {error, list_protected_queries_errors(), tuple()}.
list_protected_queries(Client, MembershipIdentifier)
  when is_map(Client) ->
    list_protected_queries(Client, MembershipIdentifier, #{}, #{}).

-spec list_protected_queries(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_protected_queries_output(), tuple()} |
    {error, any()} |
    {error, list_protected_queries_errors(), tuple()}.
list_protected_queries(Client, MembershipIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_protected_queries(Client, MembershipIdentifier, QueryMap, HeadersMap, []).

-spec list_protected_queries(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_protected_queries_output(), tuple()} |
    {error, any()} |
    {error, list_protected_queries_errors(), tuple()}.
list_protected_queries(Client, MembershipIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/protectedQueries"],
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
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the schemas for relations within a collaboration.
-spec list_schemas(aws_client:aws_client(), binary() | list()) ->
    {ok, list_schemas_output(), tuple()} |
    {error, any()} |
    {error, list_schemas_errors(), tuple()}.
list_schemas(Client, CollaborationIdentifier)
  when is_map(Client) ->
    list_schemas(Client, CollaborationIdentifier, #{}, #{}).

-spec list_schemas(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_schemas_output(), tuple()} |
    {error, any()} |
    {error, list_schemas_errors(), tuple()}.
list_schemas(Client, CollaborationIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_schemas(Client, CollaborationIdentifier, QueryMap, HeadersMap, []).

-spec list_schemas(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_schemas_output(), tuple()} |
    {error, any()} |
    {error, list_schemas_errors(), tuple()}.
list_schemas(Client, CollaborationIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), "/schemas"],
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
        {<<"schemaType">>, maps:get(<<"schemaType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all of the tags that have been added to a resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
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

%% @doc Defines the information that's necessary to populate an ID
%% mapping table.
-spec populate_id_mapping_table(aws_client:aws_client(), binary() | list(), binary() | list(), populate_id_mapping_table_input()) ->
    {ok, populate_id_mapping_table_output(), tuple()} |
    {error, any()} |
    {error, populate_id_mapping_table_errors(), tuple()}.
populate_id_mapping_table(Client, IdMappingTableIdentifier, MembershipIdentifier, Input) ->
    populate_id_mapping_table(Client, IdMappingTableIdentifier, MembershipIdentifier, Input, []).

-spec populate_id_mapping_table(aws_client:aws_client(), binary() | list(), binary() | list(), populate_id_mapping_table_input(), proplists:proplist()) ->
    {ok, populate_id_mapping_table_output(), tuple()} |
    {error, any()} |
    {error, populate_id_mapping_table_errors(), tuple()}.
populate_id_mapping_table(Client, IdMappingTableIdentifier, MembershipIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/idmappingtables/", aws_util:encode_uri(IdMappingTableIdentifier), "/populate"],
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

%% @doc An estimate of the number of aggregation functions that the member
%% who can query can run given epsilon and noise parameters.
-spec preview_privacy_impact(aws_client:aws_client(), binary() | list(), preview_privacy_impact_input()) ->
    {ok, preview_privacy_impact_output(), tuple()} |
    {error, any()} |
    {error, preview_privacy_impact_errors(), tuple()}.
preview_privacy_impact(Client, MembershipIdentifier, Input) ->
    preview_privacy_impact(Client, MembershipIdentifier, Input, []).

-spec preview_privacy_impact(aws_client:aws_client(), binary() | list(), preview_privacy_impact_input(), proplists:proplist()) ->
    {ok, preview_privacy_impact_output(), tuple()} |
    {error, any()} |
    {error, preview_privacy_impact_errors(), tuple()}.
preview_privacy_impact(Client, MembershipIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/previewprivacyimpact"],
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

%% @doc Creates a protected job that is started by Clean Rooms.
-spec start_protected_job(aws_client:aws_client(), binary() | list(), start_protected_job_input()) ->
    {ok, start_protected_job_output(), tuple()} |
    {error, any()} |
    {error, start_protected_job_errors(), tuple()}.
start_protected_job(Client, MembershipIdentifier, Input) ->
    start_protected_job(Client, MembershipIdentifier, Input, []).

-spec start_protected_job(aws_client:aws_client(), binary() | list(), start_protected_job_input(), proplists:proplist()) ->
    {ok, start_protected_job_output(), tuple()} |
    {error, any()} |
    {error, start_protected_job_errors(), tuple()}.
start_protected_job(Client, MembershipIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/protectedJobs"],
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

%% @doc Creates a protected query that is started by Clean Rooms.
-spec start_protected_query(aws_client:aws_client(), binary() | list(), start_protected_query_input()) ->
    {ok, start_protected_query_output(), tuple()} |
    {error, any()} |
    {error, start_protected_query_errors(), tuple()}.
start_protected_query(Client, MembershipIdentifier, Input) ->
    start_protected_query(Client, MembershipIdentifier, Input, []).

-spec start_protected_query(aws_client:aws_client(), binary() | list(), start_protected_query_input(), proplists:proplist()) ->
    {ok, start_protected_query_output(), tuple()} |
    {error, any()} |
    {error, start_protected_query_errors(), tuple()}.
start_protected_query(Client, MembershipIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/protectedQueries"],
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

%% @doc Tags a resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
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

%% @doc Removes a tag or list of tags from a resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
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

%% @doc Updates the analysis template metadata.
-spec update_analysis_template(aws_client:aws_client(), binary() | list(), binary() | list(), update_analysis_template_input()) ->
    {ok, update_analysis_template_output(), tuple()} |
    {error, any()} |
    {error, update_analysis_template_errors(), tuple()}.
update_analysis_template(Client, AnalysisTemplateIdentifier, MembershipIdentifier, Input) ->
    update_analysis_template(Client, AnalysisTemplateIdentifier, MembershipIdentifier, Input, []).

-spec update_analysis_template(aws_client:aws_client(), binary() | list(), binary() | list(), update_analysis_template_input(), proplists:proplist()) ->
    {ok, update_analysis_template_output(), tuple()} |
    {error, any()} |
    {error, update_analysis_template_errors(), tuple()}.
update_analysis_template(Client, AnalysisTemplateIdentifier, MembershipIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/analysistemplates/", aws_util:encode_uri(AnalysisTemplateIdentifier), ""],
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

%% @doc Updates collaboration metadata and can only be called by the
%% collaboration owner.
-spec update_collaboration(aws_client:aws_client(), binary() | list(), update_collaboration_input()) ->
    {ok, update_collaboration_output(), tuple()} |
    {error, any()} |
    {error, update_collaboration_errors(), tuple()}.
update_collaboration(Client, CollaborationIdentifier, Input) ->
    update_collaboration(Client, CollaborationIdentifier, Input, []).

-spec update_collaboration(aws_client:aws_client(), binary() | list(), update_collaboration_input(), proplists:proplist()) ->
    {ok, update_collaboration_output(), tuple()} |
    {error, any()} |
    {error, update_collaboration_errors(), tuple()}.
update_collaboration(Client, CollaborationIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/collaborations/", aws_util:encode_uri(CollaborationIdentifier), ""],
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

%% @doc Provides the details necessary to update a configured audience model
%% association.
-spec update_configured_audience_model_association(aws_client:aws_client(), binary() | list(), binary() | list(), update_configured_audience_model_association_input()) ->
    {ok, update_configured_audience_model_association_output(), tuple()} |
    {error, any()} |
    {error, update_configured_audience_model_association_errors(), tuple()}.
update_configured_audience_model_association(Client, ConfiguredAudienceModelAssociationIdentifier, MembershipIdentifier, Input) ->
    update_configured_audience_model_association(Client, ConfiguredAudienceModelAssociationIdentifier, MembershipIdentifier, Input, []).

-spec update_configured_audience_model_association(aws_client:aws_client(), binary() | list(), binary() | list(), update_configured_audience_model_association_input(), proplists:proplist()) ->
    {ok, update_configured_audience_model_association_output(), tuple()} |
    {error, any()} |
    {error, update_configured_audience_model_association_errors(), tuple()}.
update_configured_audience_model_association(Client, ConfiguredAudienceModelAssociationIdentifier, MembershipIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configuredaudiencemodelassociations/", aws_util:encode_uri(ConfiguredAudienceModelAssociationIdentifier), ""],
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

%% @doc Updates a configured table.
-spec update_configured_table(aws_client:aws_client(), binary() | list(), update_configured_table_input()) ->
    {ok, update_configured_table_output(), tuple()} |
    {error, any()} |
    {error, update_configured_table_errors(), tuple()}.
update_configured_table(Client, ConfiguredTableIdentifier, Input) ->
    update_configured_table(Client, ConfiguredTableIdentifier, Input, []).

-spec update_configured_table(aws_client:aws_client(), binary() | list(), update_configured_table_input(), proplists:proplist()) ->
    {ok, update_configured_table_output(), tuple()} |
    {error, any()} |
    {error, update_configured_table_errors(), tuple()}.
update_configured_table(Client, ConfiguredTableIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/configuredTables/", aws_util:encode_uri(ConfiguredTableIdentifier), ""],
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

%% @doc Updates a configured table analysis rule.
-spec update_configured_table_analysis_rule(aws_client:aws_client(), binary() | list(), binary() | list(), update_configured_table_analysis_rule_input()) ->
    {ok, update_configured_table_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, update_configured_table_analysis_rule_errors(), tuple()}.
update_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier, Input) ->
    update_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier, Input, []).

-spec update_configured_table_analysis_rule(aws_client:aws_client(), binary() | list(), binary() | list(), update_configured_table_analysis_rule_input(), proplists:proplist()) ->
    {ok, update_configured_table_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, update_configured_table_analysis_rule_errors(), tuple()}.
update_configured_table_analysis_rule(Client, AnalysisRuleType, ConfiguredTableIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/configuredTables/", aws_util:encode_uri(ConfiguredTableIdentifier), "/analysisRule/", aws_util:encode_uri(AnalysisRuleType), ""],
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

%% @doc Updates a configured table association.
-spec update_configured_table_association(aws_client:aws_client(), binary() | list(), binary() | list(), update_configured_table_association_input()) ->
    {ok, update_configured_table_association_output(), tuple()} |
    {error, any()} |
    {error, update_configured_table_association_errors(), tuple()}.
update_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, Input) ->
    update_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, Input, []).

-spec update_configured_table_association(aws_client:aws_client(), binary() | list(), binary() | list(), update_configured_table_association_input(), proplists:proplist()) ->
    {ok, update_configured_table_association_output(), tuple()} |
    {error, any()} |
    {error, update_configured_table_association_errors(), tuple()}.
update_configured_table_association(Client, ConfiguredTableAssociationIdentifier, MembershipIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configuredTableAssociations/", aws_util:encode_uri(ConfiguredTableAssociationIdentifier), ""],
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

%% @doc Updates the analysis rule for a configured table association.
-spec update_configured_table_association_analysis_rule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_configured_table_association_analysis_rule_input()) ->
    {ok, update_configured_table_association_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, update_configured_table_association_analysis_rule_errors(), tuple()}.
update_configured_table_association_analysis_rule(Client, AnalysisRuleType, ConfiguredTableAssociationIdentifier, MembershipIdentifier, Input) ->
    update_configured_table_association_analysis_rule(Client, AnalysisRuleType, ConfiguredTableAssociationIdentifier, MembershipIdentifier, Input, []).

-spec update_configured_table_association_analysis_rule(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_configured_table_association_analysis_rule_input(), proplists:proplist()) ->
    {ok, update_configured_table_association_analysis_rule_output(), tuple()} |
    {error, any()} |
    {error, update_configured_table_association_analysis_rule_errors(), tuple()}.
update_configured_table_association_analysis_rule(Client, AnalysisRuleType, ConfiguredTableAssociationIdentifier, MembershipIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/configuredTableAssociations/", aws_util:encode_uri(ConfiguredTableAssociationIdentifier), "/analysisRule/", aws_util:encode_uri(AnalysisRuleType), ""],
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

%% @doc Provides the details that are necessary to update an ID mapping
%% table.
-spec update_id_mapping_table(aws_client:aws_client(), binary() | list(), binary() | list(), update_id_mapping_table_input()) ->
    {ok, update_id_mapping_table_output(), tuple()} |
    {error, any()} |
    {error, update_id_mapping_table_errors(), tuple()}.
update_id_mapping_table(Client, IdMappingTableIdentifier, MembershipIdentifier, Input) ->
    update_id_mapping_table(Client, IdMappingTableIdentifier, MembershipIdentifier, Input, []).

-spec update_id_mapping_table(aws_client:aws_client(), binary() | list(), binary() | list(), update_id_mapping_table_input(), proplists:proplist()) ->
    {ok, update_id_mapping_table_output(), tuple()} |
    {error, any()} |
    {error, update_id_mapping_table_errors(), tuple()}.
update_id_mapping_table(Client, IdMappingTableIdentifier, MembershipIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/idmappingtables/", aws_util:encode_uri(IdMappingTableIdentifier), ""],
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

%% @doc Provides the details that are necessary to update an ID namespace
%% association.
-spec update_id_namespace_association(aws_client:aws_client(), binary() | list(), binary() | list(), update_id_namespace_association_input()) ->
    {ok, update_id_namespace_association_output(), tuple()} |
    {error, any()} |
    {error, update_id_namespace_association_errors(), tuple()}.
update_id_namespace_association(Client, IdNamespaceAssociationIdentifier, MembershipIdentifier, Input) ->
    update_id_namespace_association(Client, IdNamespaceAssociationIdentifier, MembershipIdentifier, Input, []).

-spec update_id_namespace_association(aws_client:aws_client(), binary() | list(), binary() | list(), update_id_namespace_association_input(), proplists:proplist()) ->
    {ok, update_id_namespace_association_output(), tuple()} |
    {error, any()} |
    {error, update_id_namespace_association_errors(), tuple()}.
update_id_namespace_association(Client, IdNamespaceAssociationIdentifier, MembershipIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/idnamespaceassociations/", aws_util:encode_uri(IdNamespaceAssociationIdentifier), ""],
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

%% @doc Updates a membership.
-spec update_membership(aws_client:aws_client(), binary() | list(), update_membership_input()) ->
    {ok, update_membership_output(), tuple()} |
    {error, any()} |
    {error, update_membership_errors(), tuple()}.
update_membership(Client, MembershipIdentifier, Input) ->
    update_membership(Client, MembershipIdentifier, Input, []).

-spec update_membership(aws_client:aws_client(), binary() | list(), update_membership_input(), proplists:proplist()) ->
    {ok, update_membership_output(), tuple()} |
    {error, any()} |
    {error, update_membership_errors(), tuple()}.
update_membership(Client, MembershipIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), ""],
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

%% @doc Updates the privacy budget template for the specified membership.
-spec update_privacy_budget_template(aws_client:aws_client(), binary() | list(), binary() | list(), update_privacy_budget_template_input()) ->
    {ok, update_privacy_budget_template_output(), tuple()} |
    {error, any()} |
    {error, update_privacy_budget_template_errors(), tuple()}.
update_privacy_budget_template(Client, MembershipIdentifier, PrivacyBudgetTemplateIdentifier, Input) ->
    update_privacy_budget_template(Client, MembershipIdentifier, PrivacyBudgetTemplateIdentifier, Input, []).

-spec update_privacy_budget_template(aws_client:aws_client(), binary() | list(), binary() | list(), update_privacy_budget_template_input(), proplists:proplist()) ->
    {ok, update_privacy_budget_template_output(), tuple()} |
    {error, any()} |
    {error, update_privacy_budget_template_errors(), tuple()}.
update_privacy_budget_template(Client, MembershipIdentifier, PrivacyBudgetTemplateIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/privacybudgettemplates/", aws_util:encode_uri(PrivacyBudgetTemplateIdentifier), ""],
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

%% @doc Updates the processing of a currently running job.
-spec update_protected_job(aws_client:aws_client(), binary() | list(), binary() | list(), update_protected_job_input()) ->
    {ok, update_protected_job_output(), tuple()} |
    {error, any()} |
    {error, update_protected_job_errors(), tuple()}.
update_protected_job(Client, MembershipIdentifier, ProtectedJobIdentifier, Input) ->
    update_protected_job(Client, MembershipIdentifier, ProtectedJobIdentifier, Input, []).

-spec update_protected_job(aws_client:aws_client(), binary() | list(), binary() | list(), update_protected_job_input(), proplists:proplist()) ->
    {ok, update_protected_job_output(), tuple()} |
    {error, any()} |
    {error, update_protected_job_errors(), tuple()}.
update_protected_job(Client, MembershipIdentifier, ProtectedJobIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/protectedJobs/", aws_util:encode_uri(ProtectedJobIdentifier), ""],
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

%% @doc Updates the processing of a currently running query.
-spec update_protected_query(aws_client:aws_client(), binary() | list(), binary() | list(), update_protected_query_input()) ->
    {ok, update_protected_query_output(), tuple()} |
    {error, any()} |
    {error, update_protected_query_errors(), tuple()}.
update_protected_query(Client, MembershipIdentifier, ProtectedQueryIdentifier, Input) ->
    update_protected_query(Client, MembershipIdentifier, ProtectedQueryIdentifier, Input, []).

-spec update_protected_query(aws_client:aws_client(), binary() | list(), binary() | list(), update_protected_query_input(), proplists:proplist()) ->
    {ok, update_protected_query_output(), tuple()} |
    {error, any()} |
    {error, update_protected_query_errors(), tuple()}.
update_protected_query(Client, MembershipIdentifier, ProtectedQueryIdentifier, Input0, Options0) ->
    Method = patch,
    Path = ["/memberships/", aws_util:encode_uri(MembershipIdentifier), "/protectedQueries/", aws_util:encode_uri(ProtectedQueryIdentifier), ""],
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

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
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
