%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Well-Architected Tool
%%
%% This is the Well-Architected Tool API Reference.
%%
%% The WA Tool API provides programmatic access to the
%% Well-Architected Tool: http://aws.amazon.com/well-architected-tool in the
%% Amazon Web Services Management Console:
%% https://console.aws.amazon.com/wellarchitected. For information
%% about the Well-Architected Tool, see the
%% Well-Architected Tool User Guide:
%% https://docs.aws.amazon.com/wellarchitected/latest/userguide/intro.html.
-module(aws_wellarchitected).

-export([associate_lenses/3,
         associate_lenses/4,
         associate_profiles/3,
         associate_profiles/4,
         create_lens_share/3,
         create_lens_share/4,
         create_lens_version/3,
         create_lens_version/4,
         create_milestone/3,
         create_milestone/4,
         create_profile/2,
         create_profile/3,
         create_profile_share/3,
         create_profile_share/4,
         create_review_template/2,
         create_review_template/3,
         create_template_share/3,
         create_template_share/4,
         create_workload/2,
         create_workload/3,
         create_workload_share/3,
         create_workload_share/4,
         delete_lens/3,
         delete_lens/4,
         delete_lens_share/4,
         delete_lens_share/5,
         delete_profile/3,
         delete_profile/4,
         delete_profile_share/4,
         delete_profile_share/5,
         delete_review_template/3,
         delete_review_template/4,
         delete_template_share/4,
         delete_template_share/5,
         delete_workload/3,
         delete_workload/4,
         delete_workload_share/4,
         delete_workload_share/5,
         disassociate_lenses/3,
         disassociate_lenses/4,
         disassociate_profiles/3,
         disassociate_profiles/4,
         export_lens/2,
         export_lens/4,
         export_lens/5,
         get_answer/4,
         get_answer/6,
         get_answer/7,
         get_consolidated_report/2,
         get_consolidated_report/4,
         get_consolidated_report/5,
         get_global_settings/1,
         get_global_settings/3,
         get_global_settings/4,
         get_lens/2,
         get_lens/4,
         get_lens/5,
         get_lens_review/3,
         get_lens_review/5,
         get_lens_review/6,
         get_lens_review_report/3,
         get_lens_review_report/5,
         get_lens_review_report/6,
         get_lens_version_difference/2,
         get_lens_version_difference/4,
         get_lens_version_difference/5,
         get_milestone/3,
         get_milestone/5,
         get_milestone/6,
         get_profile/2,
         get_profile/4,
         get_profile/5,
         get_profile_template/1,
         get_profile_template/3,
         get_profile_template/4,
         get_review_template/2,
         get_review_template/4,
         get_review_template/5,
         get_review_template_answer/4,
         get_review_template_answer/6,
         get_review_template_answer/7,
         get_review_template_lens_review/3,
         get_review_template_lens_review/5,
         get_review_template_lens_review/6,
         get_workload/2,
         get_workload/4,
         get_workload/5,
         import_lens/2,
         import_lens/3,
         list_answers/3,
         list_answers/5,
         list_answers/6,
         list_check_details/3,
         list_check_details/4,
         list_check_summaries/3,
         list_check_summaries/4,
         list_lens_review_improvements/3,
         list_lens_review_improvements/5,
         list_lens_review_improvements/6,
         list_lens_reviews/2,
         list_lens_reviews/4,
         list_lens_reviews/5,
         list_lens_shares/2,
         list_lens_shares/4,
         list_lens_shares/5,
         list_lenses/1,
         list_lenses/3,
         list_lenses/4,
         list_milestones/3,
         list_milestones/4,
         list_notifications/2,
         list_notifications/3,
         list_profile_notifications/1,
         list_profile_notifications/3,
         list_profile_notifications/4,
         list_profile_shares/2,
         list_profile_shares/4,
         list_profile_shares/5,
         list_profiles/1,
         list_profiles/3,
         list_profiles/4,
         list_review_template_answers/3,
         list_review_template_answers/5,
         list_review_template_answers/6,
         list_review_templates/1,
         list_review_templates/3,
         list_review_templates/4,
         list_share_invitations/1,
         list_share_invitations/3,
         list_share_invitations/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_template_shares/2,
         list_template_shares/4,
         list_template_shares/5,
         list_workload_shares/2,
         list_workload_shares/4,
         list_workload_shares/5,
         list_workloads/2,
         list_workloads/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_answer/5,
         update_answer/6,
         update_global_settings/2,
         update_global_settings/3,
         update_integration/3,
         update_integration/4,
         update_lens_review/4,
         update_lens_review/5,
         update_profile/3,
         update_profile/4,
         update_review_template/3,
         update_review_template/4,
         update_review_template_answer/5,
         update_review_template_answer/6,
         update_review_template_lens_review/4,
         update_review_template_lens_review/5,
         update_share_invitation/3,
         update_share_invitation/4,
         update_workload/3,
         update_workload/4,
         update_workload_share/4,
         update_workload_share/5,
         upgrade_lens_review/4,
         upgrade_lens_review/5,
         upgrade_profile_version/4,
         upgrade_profile_version/5,
         upgrade_review_template_lens_review/4,
         upgrade_review_template_lens_review/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% import_lens_input() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"JSONString">> := string(),
%%   <<"LensAlias">> => string(),
%%   <<"Tags">> => map()
%% }
-type import_lens_input() :: #{binary() => any()}.


%% Example:
%% profile() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Owner">> => string(),
%%   <<"ProfileArn">> => string(),
%%   <<"ProfileDescription">> => string(),
%%   <<"ProfileName">> => string(),
%%   <<"ProfileQuestions">> => list(profile_question()),
%%   <<"ProfileVersion">> => string(),
%%   <<"ShareInvitationId">> => string(),
%%   <<"Tags">> => map(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type profile() :: #{binary() => any()}.


%% Example:
%% update_answer_input() :: #{
%%   <<"ChoiceUpdates">> => map(),
%%   <<"IsApplicable">> => boolean(),
%%   <<"Notes">> => string(),
%%   <<"Reason">> => list(any()),
%%   <<"SelectedChoices">> => list(string())
%% }
-type update_answer_input() :: #{binary() => any()}.


%% Example:
%% profile_question() :: #{
%%   <<"MaxSelectedChoices">> => integer(),
%%   <<"MinSelectedChoices">> => integer(),
%%   <<"QuestionChoices">> => list(profile_choice()),
%%   <<"QuestionDescription">> => string(),
%%   <<"QuestionId">> => string(),
%%   <<"QuestionTitle">> => string(),
%%   <<"SelectedChoiceIds">> => list(string())
%% }
-type profile_question() :: #{binary() => any()}.


%% Example:
%% choice_answer_summary() :: #{
%%   <<"ChoiceId">> => string(),
%%   <<"Reason">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type choice_answer_summary() :: #{binary() => any()}.


%% Example:
%% list_lenses_output() :: #{
%%   <<"LensSummaries">> => list(lens_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_lenses_output() :: #{binary() => any()}.


%% Example:
%% get_profile_output() :: #{
%%   <<"Profile">> => profile()
%% }
-type get_profile_output() :: #{binary() => any()}.


%% Example:
%% question_metric() :: #{
%%   <<"BestPractices">> => list(best_practice()),
%%   <<"QuestionId">> => string(),
%%   <<"Risk">> => list(any())
%% }
-type question_metric() :: #{binary() => any()}.


%% Example:
%% update_workload_share_output() :: #{
%%   <<"WorkloadId">> => string(),
%%   <<"WorkloadShare">> => workload_share()
%% }
-type update_workload_share_output() :: #{binary() => any()}.


%% Example:
%% lens_review() :: #{
%%   <<"JiraConfiguration">> => jira_selected_question_configuration(),
%%   <<"LensAlias">> => string(),
%%   <<"LensArn">> => string(),
%%   <<"LensName">> => string(),
%%   <<"LensStatus">> => list(any()),
%%   <<"LensVersion">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Notes">> => string(),
%%   <<"PillarReviewSummaries">> => list(pillar_review_summary()),
%%   <<"PrioritizedRiskCounts">> => map(),
%%   <<"Profiles">> => list(workload_profile()),
%%   <<"RiskCounts">> => map(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type lens_review() :: #{binary() => any()}.


%% Example:
%% get_workload_output() :: #{
%%   <<"Workload">> => workload()
%% }
-type get_workload_output() :: #{binary() => any()}.

%% Example:
%% get_review_template_input() :: #{}
-type get_review_template_input() :: #{}.


%% Example:
%% workload_share_summary() :: #{
%%   <<"PermissionType">> => list(any()),
%%   <<"ShareId">> => string(),
%%   <<"SharedWith">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type workload_share_summary() :: #{binary() => any()}.


%% Example:
%% workload_summary() :: #{
%%   <<"ImprovementStatus">> => list(any()),
%%   <<"Lenses">> => list(string()),
%%   <<"Owner">> => string(),
%%   <<"PrioritizedRiskCounts">> => map(),
%%   <<"Profiles">> => list(workload_profile()),
%%   <<"RiskCounts">> => map(),
%%   <<"UpdatedAt">> => non_neg_integer(),
%%   <<"WorkloadArn">> => string(),
%%   <<"WorkloadId">> => string(),
%%   <<"WorkloadName">> => string()
%% }
-type workload_summary() :: #{binary() => any()}.


%% Example:
%% list_lens_review_improvements_output() :: #{
%%   <<"ImprovementSummaries">> => list(improvement_summary()),
%%   <<"LensAlias">> => string(),
%%   <<"LensArn">> => string(),
%%   <<"MilestoneNumber">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"WorkloadId">> => string()
%% }
-type list_lens_review_improvements_output() :: #{binary() => any()}.


%% Example:
%% best_practice() :: #{
%%   <<"ChoiceId">> => string(),
%%   <<"ChoiceTitle">> => string()
%% }
-type best_practice() :: #{binary() => any()}.


%% Example:
%% workload_jira_configuration_output() :: #{
%%   <<"IssueManagementStatus">> => list(any()),
%%   <<"IssueManagementType">> => list(any()),
%%   <<"JiraProjectKey">> => string(),
%%   <<"StatusMessage">> => string()
%% }
-type workload_jira_configuration_output() :: #{binary() => any()}.


%% Example:
%% account_jira_configuration_output() :: #{
%%   <<"IntegrationStatus">> => list(any()),
%%   <<"IssueManagementStatus">> => list(any()),
%%   <<"IssueManagementType">> => list(any()),
%%   <<"JiraProjectKey">> => string(),
%%   <<"StatusMessage">> => string(),
%%   <<"Subdomain">> => string()
%% }
-type account_jira_configuration_output() :: #{binary() => any()}.


%% Example:
%% get_lens_review_output() :: #{
%%   <<"LensReview">> => lens_review(),
%%   <<"MilestoneNumber">> => integer(),
%%   <<"WorkloadId">> => string()
%% }
-type get_lens_review_output() :: #{binary() => any()}.


%% Example:
%% list_workloads_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"WorkloadNamePrefix">> => string()
%% }
-type list_workloads_input() :: #{binary() => any()}.


%% Example:
%% jira_selected_question_configuration() :: #{
%%   <<"SelectedPillars">> => list(selected_pillar())
%% }
-type jira_selected_question_configuration() :: #{binary() => any()}.


%% Example:
%% list_check_details_output() :: #{
%%   <<"CheckDetails">> => list(check_detail()),
%%   <<"NextToken">> => string()
%% }
-type list_check_details_output() :: #{binary() => any()}.


%% Example:
%% associate_profiles_input() :: #{
%%   <<"ProfileArns">> := list(string())
%% }
-type associate_profiles_input() :: #{binary() => any()}.


%% Example:
%% check_detail() :: #{
%%   <<"AccountId">> => string(),
%%   <<"ChoiceId">> => string(),
%%   <<"Description">> => string(),
%%   <<"FlaggedResources">> => integer(),
%%   <<"Id">> => string(),
%%   <<"LensArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"PillarId">> => string(),
%%   <<"Provider">> => list(any()),
%%   <<"QuestionId">> => string(),
%%   <<"Reason">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type check_detail() :: #{binary() => any()}.


%% Example:
%% get_consolidated_report_input() :: #{
%%   <<"Format">> := list(any()),
%%   <<"IncludeSharedResources">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_consolidated_report_input() :: #{binary() => any()}.


%% Example:
%% create_profile_output() :: #{
%%   <<"ProfileArn">> => string(),
%%   <<"ProfileVersion">> => string()
%% }
-type create_profile_output() :: #{binary() => any()}.


%% Example:
%% review_template_pillar_review_summary() :: #{
%%   <<"Notes">> => string(),
%%   <<"PillarId">> => string(),
%%   <<"PillarName">> => string(),
%%   <<"QuestionCounts">> => map()
%% }
-type review_template_pillar_review_summary() :: #{binary() => any()}.


%% Example:
%% template_share_summary() :: #{
%%   <<"ShareId">> => string(),
%%   <<"SharedWith">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type template_share_summary() :: #{binary() => any()}.


%% Example:
%% create_lens_version_output() :: #{
%%   <<"LensArn">> => string(),
%%   <<"LensVersion">> => string()
%% }
-type create_lens_version_output() :: #{binary() => any()}.


%% Example:
%% share_invitation_summary() :: #{
%%   <<"LensArn">> => string(),
%%   <<"LensName">> => string(),
%%   <<"PermissionType">> => list(any()),
%%   <<"ProfileArn">> => string(),
%%   <<"ProfileName">> => string(),
%%   <<"ShareInvitationId">> => string(),
%%   <<"ShareResourceType">> => list(any()),
%%   <<"SharedBy">> => string(),
%%   <<"SharedWith">> => string(),
%%   <<"TemplateArn">> => string(),
%%   <<"TemplateName">> => string(),
%%   <<"WorkloadId">> => string(),
%%   <<"WorkloadName">> => string()
%% }
-type share_invitation_summary() :: #{binary() => any()}.


%% Example:
%% update_share_invitation_output() :: #{
%%   <<"ShareInvitation">> => share_invitation()
%% }
-type update_share_invitation_output() :: #{binary() => any()}.


%% Example:
%% profile_share_summary() :: #{
%%   <<"ShareId">> => string(),
%%   <<"SharedWith">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type profile_share_summary() :: #{binary() => any()}.


%% Example:
%% create_review_template_output() :: #{
%%   <<"TemplateArn">> => string()
%% }
-type create_review_template_output() :: #{binary() => any()}.


%% Example:
%% list_lens_shares_output() :: #{
%%   <<"LensShareSummaries">> => list(lens_share_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_lens_shares_output() :: #{binary() => any()}.


%% Example:
%% update_integration_input() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"IntegratingService">> := list(any())
%% }
-type update_integration_input() :: #{binary() => any()}.


%% Example:
%% list_check_details_input() :: #{
%%   <<"ChoiceId">> := string(),
%%   <<"LensArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PillarId">> := string(),
%%   <<"QuestionId">> := string()
%% }
-type list_check_details_input() :: #{binary() => any()}.


%% Example:
%% list_lens_shares_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SharedWithPrefix">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_lens_shares_input() :: #{binary() => any()}.


%% Example:
%% update_lens_review_output() :: #{
%%   <<"LensReview">> => lens_review(),
%%   <<"WorkloadId">> => string()
%% }
-type update_lens_review_output() :: #{binary() => any()}.


%% Example:
%% list_milestones_output() :: #{
%%   <<"MilestoneSummaries">> => list(milestone_summary()),
%%   <<"NextToken">> => string(),
%%   <<"WorkloadId">> => string()
%% }
-type list_milestones_output() :: #{binary() => any()}.


%% Example:
%% get_answer_input() :: #{
%%   <<"MilestoneNumber">> => integer()
%% }
-type get_answer_input() :: #{binary() => any()}.


%% Example:
%% create_lens_version_input() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"IsMajorVersion">> => boolean(),
%%   <<"LensVersion">> := string()
%% }
-type create_lens_version_input() :: #{binary() => any()}.


%% Example:
%% list_notifications_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"WorkloadId">> => string()
%% }
-type list_notifications_input() :: #{binary() => any()}.


%% Example:
%% create_milestone_output() :: #{
%%   <<"MilestoneNumber">> => integer(),
%%   <<"WorkloadId">> => string()
%% }
-type create_milestone_output() :: #{binary() => any()}.


%% Example:
%% delete_lens_input() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"LensStatus">> := list(any())
%% }
-type delete_lens_input() :: #{binary() => any()}.


%% Example:
%% profile_question_update() :: #{
%%   <<"QuestionId">> => string(),
%%   <<"SelectedChoiceIds">> => list(string())
%% }
-type profile_question_update() :: #{binary() => any()}.


%% Example:
%% delete_lens_share_input() :: #{
%%   <<"ClientRequestToken">> := string()
%% }
-type delete_lens_share_input() :: #{binary() => any()}.


%% Example:
%% list_profile_shares_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProfileShareSummaries">> => list(profile_share_summary())
%% }
-type list_profile_shares_output() :: #{binary() => any()}.


%% Example:
%% share_invitation() :: #{
%%   <<"LensAlias">> => string(),
%%   <<"LensArn">> => string(),
%%   <<"ProfileArn">> => string(),
%%   <<"ShareInvitationId">> => string(),
%%   <<"ShareResourceType">> => list(any()),
%%   <<"TemplateArn">> => string(),
%%   <<"WorkloadId">> => string()
%% }
-type share_invitation() :: #{binary() => any()}.


%% Example:
%% create_profile_input() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"ProfileDescription">> := string(),
%%   <<"ProfileName">> := string(),
%%   <<"ProfileQuestions">> := list(profile_question_update()),
%%   <<"Tags">> => map()
%% }
-type create_profile_input() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% list_profiles_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProfileSummaries">> => list(profile_summary())
%% }
-type list_profiles_output() :: #{binary() => any()}.


%% Example:
%% list_milestones_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_milestones_input() :: #{binary() => any()}.


%% Example:
%% update_lens_review_input() :: #{
%%   <<"JiraConfiguration">> => jira_selected_question_configuration(),
%%   <<"LensNotes">> => string(),
%%   <<"PillarNotes">> => map()
%% }
-type update_lens_review_input() :: #{binary() => any()}.


%% Example:
%% associate_lenses_input() :: #{
%%   <<"LensAliases">> := list(string())
%% }
-type associate_lenses_input() :: #{binary() => any()}.


%% Example:
%% update_review_template_output() :: #{
%%   <<"ReviewTemplate">> => review_template()
%% }
-type update_review_template_output() :: #{binary() => any()}.

%% Example:
%% get_workload_input() :: #{}
-type get_workload_input() :: #{}.


%% Example:
%% lens_review_summary() :: #{
%%   <<"LensAlias">> => string(),
%%   <<"LensArn">> => string(),
%%   <<"LensName">> => string(),
%%   <<"LensStatus">> => list(any()),
%%   <<"LensVersion">> => string(),
%%   <<"PrioritizedRiskCounts">> => map(),
%%   <<"Profiles">> => list(workload_profile()),
%%   <<"RiskCounts">> => map(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type lens_review_summary() :: #{binary() => any()}.


%% Example:
%% list_template_shares_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TemplateArn">> => string(),
%%   <<"TemplateShareSummaries">> => list(template_share_summary())
%% }
-type list_template_shares_output() :: #{binary() => any()}.


%% Example:
%% delete_profile_input() :: #{
%%   <<"ClientRequestToken">> := string()
%% }
-type delete_profile_input() :: #{binary() => any()}.


%% Example:
%% update_review_template_input() :: #{
%%   <<"Description">> => string(),
%%   <<"LensesToAssociate">> => list(string()),
%%   <<"LensesToDisassociate">> => list(string()),
%%   <<"Notes">> => string(),
%%   <<"TemplateName">> => string()
%% }
-type update_review_template_input() :: #{binary() => any()}.


%% Example:
%% list_workload_shares_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SharedWithPrefix">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_workload_shares_input() :: #{binary() => any()}.


%% Example:
%% import_lens_output() :: #{
%%   <<"LensArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type import_lens_output() :: #{binary() => any()}.


%% Example:
%% get_milestone_output() :: #{
%%   <<"Milestone">> => milestone(),
%%   <<"WorkloadId">> => string()
%% }
-type get_milestone_output() :: #{binary() => any()}.


%% Example:
%% lens_share_summary() :: #{
%%   <<"ShareId">> => string(),
%%   <<"SharedWith">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type lens_share_summary() :: #{binary() => any()}.


%% Example:
%% consolidated_report_metric() :: #{
%%   <<"Lenses">> => list(lens_metric()),
%%   <<"LensesAppliedCount">> => integer(),
%%   <<"MetricType">> => list(any()),
%%   <<"RiskCounts">> => map(),
%%   <<"UpdatedAt">> => non_neg_integer(),
%%   <<"WorkloadArn">> => string(),
%%   <<"WorkloadId">> => string(),
%%   <<"WorkloadName">> => string()
%% }
-type consolidated_report_metric() :: #{binary() => any()}.


%% Example:
%% profile_choice() :: #{
%%   <<"ChoiceDescription">> => string(),
%%   <<"ChoiceId">> => string(),
%%   <<"ChoiceTitle">> => string()
%% }
-type profile_choice() :: #{binary() => any()}.


%% Example:
%% workload_discovery_config() :: #{
%%   <<"TrustedAdvisorIntegrationStatus">> => list(any()),
%%   <<"WorkloadResourceDefinition">> => list(list(any())())
%% }
-type workload_discovery_config() :: #{binary() => any()}.


%% Example:
%% upgrade_lens_review_input() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"MilestoneName">> := string()
%% }
-type upgrade_lens_review_input() :: #{binary() => any()}.


%% Example:
%% create_review_template_input() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"Description">> := string(),
%%   <<"Lenses">> := list(string()),
%%   <<"Notes">> => string(),
%%   <<"Tags">> => map(),
%%   <<"TemplateName">> := string()
%% }
-type create_review_template_input() :: #{binary() => any()}.


%% Example:
%% workload_jira_configuration_input() :: #{
%%   <<"IssueManagementStatus">> => list(any()),
%%   <<"IssueManagementType">> => list(any()),
%%   <<"JiraProjectKey">> => string()
%% }
-type workload_jira_configuration_input() :: #{binary() => any()}.


%% Example:
%% update_workload_share_input() :: #{
%%   <<"PermissionType">> := list(any())
%% }
-type update_workload_share_input() :: #{binary() => any()}.


%% Example:
%% disassociate_profiles_input() :: #{
%%   <<"ProfileArns">> := list(string())
%% }
-type disassociate_profiles_input() :: #{binary() => any()}.


%% Example:
%% profile_template_choice() :: #{
%%   <<"ChoiceDescription">> => string(),
%%   <<"ChoiceId">> => string(),
%%   <<"ChoiceTitle">> => string()
%% }
-type profile_template_choice() :: #{binary() => any()}.


%% Example:
%% list_review_template_answers_output() :: #{
%%   <<"AnswerSummaries">> => list(review_template_answer_summary()),
%%   <<"LensAlias">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"TemplateArn">> => string()
%% }
-type list_review_template_answers_output() :: #{binary() => any()}.


%% Example:
%% workload() :: #{
%%   <<"AccountIds">> => list(string()),
%%   <<"Applications">> => list(string()),
%%   <<"ArchitecturalDesign">> => string(),
%%   <<"AwsRegions">> => list(string()),
%%   <<"Description">> => string(),
%%   <<"DiscoveryConfig">> => workload_discovery_config(),
%%   <<"Environment">> => list(any()),
%%   <<"ImprovementStatus">> => list(any()),
%%   <<"Industry">> => string(),
%%   <<"IndustryType">> => string(),
%%   <<"IsReviewOwnerUpdateAcknowledged">> => boolean(),
%%   <<"JiraConfiguration">> => workload_jira_configuration_output(),
%%   <<"Lenses">> => list(string()),
%%   <<"NonAwsRegions">> => list(string()),
%%   <<"Notes">> => string(),
%%   <<"Owner">> => string(),
%%   <<"PillarPriorities">> => list(string()),
%%   <<"PrioritizedRiskCounts">> => map(),
%%   <<"Profiles">> => list(workload_profile()),
%%   <<"ReviewOwner">> => string(),
%%   <<"ReviewRestrictionDate">> => non_neg_integer(),
%%   <<"RiskCounts">> => map(),
%%   <<"ShareInvitationId">> => string(),
%%   <<"Tags">> => map(),
%%   <<"UpdatedAt">> => non_neg_integer(),
%%   <<"WorkloadArn">> => string(),
%%   <<"WorkloadId">> => string(),
%%   <<"WorkloadName">> => string()
%% }
-type workload() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% get_answer_output() :: #{
%%   <<"Answer">> => answer(),
%%   <<"LensAlias">> => string(),
%%   <<"LensArn">> => string(),
%%   <<"MilestoneNumber">> => integer(),
%%   <<"WorkloadId">> => string()
%% }
-type get_answer_output() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% review_template_summary() :: #{
%%   <<"Description">> => string(),
%%   <<"Lenses">> => list(string()),
%%   <<"Owner">> => string(),
%%   <<"TemplateArn">> => string(),
%%   <<"TemplateName">> => string(),
%%   <<"UpdateStatus">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type review_template_summary() :: #{binary() => any()}.


%% Example:
%% answer() :: #{
%%   <<"ChoiceAnswers">> => list(choice_answer()),
%%   <<"Choices">> => list(choice()),
%%   <<"HelpfulResourceDisplayText">> => string(),
%%   <<"HelpfulResourceUrl">> => string(),
%%   <<"ImprovementPlanUrl">> => string(),
%%   <<"IsApplicable">> => boolean(),
%%   <<"JiraConfiguration">> => jira_configuration(),
%%   <<"Notes">> => string(),
%%   <<"PillarId">> => string(),
%%   <<"QuestionDescription">> => string(),
%%   <<"QuestionId">> => string(),
%%   <<"QuestionTitle">> => string(),
%%   <<"Reason">> => list(any()),
%%   <<"Risk">> => list(any()),
%%   <<"SelectedChoices">> => list(string())
%% }
-type answer() :: #{binary() => any()}.


%% Example:
%% review_template_answer_summary() :: #{
%%   <<"AnswerStatus">> => list(any()),
%%   <<"ChoiceAnswerSummaries">> => list(choice_answer_summary()),
%%   <<"Choices">> => list(choice()),
%%   <<"IsApplicable">> => boolean(),
%%   <<"PillarId">> => string(),
%%   <<"QuestionId">> => string(),
%%   <<"QuestionTitle">> => string(),
%%   <<"QuestionType">> => list(any()),
%%   <<"Reason">> => list(any()),
%%   <<"SelectedChoices">> => list(string())
%% }
-type review_template_answer_summary() :: #{binary() => any()}.


%% Example:
%% create_workload_share_output() :: #{
%%   <<"ShareId">> => string(),
%%   <<"WorkloadId">> => string()
%% }
-type create_workload_share_output() :: #{binary() => any()}.


%% Example:
%% update_review_template_lens_review_input() :: #{
%%   <<"LensNotes">> => string(),
%%   <<"PillarNotes">> => map()
%% }
-type update_review_template_lens_review_input() :: #{binary() => any()}.


%% Example:
%% delete_workload_share_input() :: #{
%%   <<"ClientRequestToken">> := string()
%% }
-type delete_workload_share_input() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"QuotaCode">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string(),
%%   <<"ServiceCode">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% get_review_template_lens_review_output() :: #{
%%   <<"LensReview">> => review_template_lens_review(),
%%   <<"TemplateArn">> => string()
%% }
-type get_review_template_lens_review_output() :: #{binary() => any()}.


%% Example:
%% lens_review_report() :: #{
%%   <<"Base64String">> => string(),
%%   <<"LensAlias">> => string(),
%%   <<"LensArn">> => string()
%% }
-type lens_review_report() :: #{binary() => any()}.


%% Example:
%% get_profile_template_output() :: #{
%%   <<"ProfileTemplate">> => profile_template()
%% }
-type get_profile_template_output() :: #{binary() => any()}.


%% Example:
%% list_review_templates_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ReviewTemplates">> => list(review_template_summary())
%% }
-type list_review_templates_output() :: #{binary() => any()}.


%% Example:
%% lens_upgrade_summary() :: #{
%%   <<"CurrentLensVersion">> => string(),
%%   <<"LatestLensVersion">> => string(),
%%   <<"LensAlias">> => string(),
%%   <<"LensArn">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceName">> => string(),
%%   <<"WorkloadId">> => string(),
%%   <<"WorkloadName">> => string()
%% }
-type lens_upgrade_summary() :: #{binary() => any()}.


%% Example:
%% milestone() :: #{
%%   <<"MilestoneName">> => string(),
%%   <<"MilestoneNumber">> => integer(),
%%   <<"RecordedAt">> => non_neg_integer(),
%%   <<"Workload">> => workload()
%% }
-type milestone() :: #{binary() => any()}.


%% Example:
%% get_lens_review_report_input() :: #{
%%   <<"MilestoneNumber">> => integer()
%% }
-type get_lens_review_report_input() :: #{binary() => any()}.


%% Example:
%% export_lens_input() :: #{
%%   <<"LensVersion">> => string()
%% }
-type export_lens_input() :: #{binary() => any()}.

%% Example:
%% get_profile_template_input() :: #{}
-type get_profile_template_input() :: #{}.


%% Example:
%% review_template_lens_review() :: #{
%%   <<"LensAlias">> => string(),
%%   <<"LensArn">> => string(),
%%   <<"LensName">> => string(),
%%   <<"LensStatus">> => list(any()),
%%   <<"LensVersion">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"Notes">> => string(),
%%   <<"PillarReviewSummaries">> => list(review_template_pillar_review_summary()),
%%   <<"QuestionCounts">> => map(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type review_template_lens_review() :: #{binary() => any()}.


%% Example:
%% create_milestone_input() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"MilestoneName">> := string()
%% }
-type create_milestone_input() :: #{binary() => any()}.


%% Example:
%% delete_review_template_input() :: #{
%%   <<"ClientRequestToken">> := string()
%% }
-type delete_review_template_input() :: #{binary() => any()}.


%% Example:
%% validation_exception_field() :: #{
%%   <<"Message">> => string(),
%%   <<"Name">> => string()
%% }
-type validation_exception_field() :: #{binary() => any()}.


%% Example:
%% create_template_share_input() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"SharedWith">> := string()
%% }
-type create_template_share_input() :: #{binary() => any()}.


%% Example:
%% create_template_share_output() :: #{
%%   <<"ShareId">> => string(),
%%   <<"TemplateArn">> => string()
%% }
-type create_template_share_output() :: #{binary() => any()}.


%% Example:
%% review_template() :: #{
%%   <<"Description">> => string(),
%%   <<"Lenses">> => list(string()),
%%   <<"Notes">> => string(),
%%   <<"Owner">> => string(),
%%   <<"QuestionCounts">> => map(),
%%   <<"ShareInvitationId">> => string(),
%%   <<"Tags">> => map(),
%%   <<"TemplateArn">> => string(),
%%   <<"TemplateName">> => string(),
%%   <<"UpdateStatus">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type review_template() :: #{binary() => any()}.


%% Example:
%% list_workload_shares_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WorkloadId">> => string(),
%%   <<"WorkloadShareSummaries">> => list(workload_share_summary())
%% }
-type list_workload_shares_output() :: #{binary() => any()}.


%% Example:
%% get_lens_review_report_output() :: #{
%%   <<"LensReviewReport">> => lens_review_report(),
%%   <<"MilestoneNumber">> => integer(),
%%   <<"WorkloadId">> => string()
%% }
-type get_lens_review_report_output() :: #{binary() => any()}.


%% Example:
%% choice() :: #{
%%   <<"AdditionalResources">> => list(additional_resources()),
%%   <<"ChoiceId">> => string(),
%%   <<"Description">> => string(),
%%   <<"HelpfulResource">> => choice_content(),
%%   <<"ImprovementPlan">> => choice_content(),
%%   <<"Title">> => string()
%% }
-type choice() :: #{binary() => any()}.


%% Example:
%% list_profile_shares_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SharedWithPrefix">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_profile_shares_input() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% update_review_template_answer_input() :: #{
%%   <<"ChoiceUpdates">> => map(),
%%   <<"IsApplicable">> => boolean(),
%%   <<"Notes">> => string(),
%%   <<"Reason">> => list(any()),
%%   <<"SelectedChoices">> => list(string())
%% }
-type update_review_template_answer_input() :: #{binary() => any()}.


%% Example:
%% pillar_metric() :: #{
%%   <<"PillarId">> => string(),
%%   <<"Questions">> => list(question_metric()),
%%   <<"RiskCounts">> => map()
%% }
-type pillar_metric() :: #{binary() => any()}.


%% Example:
%% list_profiles_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ProfileNamePrefix">> => string(),
%%   <<"ProfileOwnerType">> => list(any())
%% }
-type list_profiles_input() :: #{binary() => any()}.


%% Example:
%% milestone_summary() :: #{
%%   <<"MilestoneName">> => string(),
%%   <<"MilestoneNumber">> => integer(),
%%   <<"RecordedAt">> => non_neg_integer(),
%%   <<"WorkloadSummary">> => workload_summary()
%% }
-type milestone_summary() :: #{binary() => any()}.

%% Example:
%% get_milestone_input() :: #{}
-type get_milestone_input() :: #{}.


%% Example:
%% question_difference() :: #{
%%   <<"DifferenceStatus">> => list(any()),
%%   <<"QuestionId">> => string(),
%%   <<"QuestionTitle">> => string()
%% }
-type question_difference() :: #{binary() => any()}.


%% Example:
%% create_profile_share_input() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"SharedWith">> := string()
%% }
-type create_profile_share_input() :: #{binary() => any()}.


%% Example:
%% list_review_templates_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_review_templates_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% pillar_review_summary() :: #{
%%   <<"Notes">> => string(),
%%   <<"PillarId">> => string(),
%%   <<"PillarName">> => string(),
%%   <<"PrioritizedRiskCounts">> => map(),
%%   <<"RiskCounts">> => map()
%% }
-type pillar_review_summary() :: #{binary() => any()}.


%% Example:
%% update_share_invitation_input() :: #{
%%   <<"ShareInvitationAction">> := list(any())
%% }
-type update_share_invitation_input() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% pillar_difference() :: #{
%%   <<"DifferenceStatus">> => list(any()),
%%   <<"PillarId">> => string(),
%%   <<"PillarName">> => string(),
%%   <<"QuestionDifferences">> => list(question_difference())
%% }
-type pillar_difference() :: #{binary() => any()}.


%% Example:
%% lens_metric() :: #{
%%   <<"LensArn">> => string(),
%%   <<"Pillars">> => list(pillar_metric()),
%%   <<"RiskCounts">> => map()
%% }
-type lens_metric() :: #{binary() => any()}.


%% Example:
%% choice_content() :: #{
%%   <<"DisplayText">> => string(),
%%   <<"Url">> => string()
%% }
-type choice_content() :: #{binary() => any()}.


%% Example:
%% list_review_template_answers_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PillarId">> => string()
%% }
-type list_review_template_answers_input() :: #{binary() => any()}.


%% Example:
%% list_share_invitations_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ShareInvitationSummaries">> => list(share_invitation_summary())
%% }
-type list_share_invitations_output() :: #{binary() => any()}.


%% Example:
%% selected_pillar() :: #{
%%   <<"PillarId">> => string(),
%%   <<"SelectedQuestionIds">> => list(string())
%% }
-type selected_pillar() :: #{binary() => any()}.


%% Example:
%% get_profile_input() :: #{
%%   <<"ProfileVersion">> => string()
%% }
-type get_profile_input() :: #{binary() => any()}.


%% Example:
%% get_lens_input() :: #{
%%   <<"LensVersion">> => string()
%% }
-type get_lens_input() :: #{binary() => any()}.


%% Example:
%% upgrade_profile_version_input() :: #{
%%   <<"ClientRequestToken">> => string(),
%%   <<"MilestoneName">> => string()
%% }
-type upgrade_profile_version_input() :: #{binary() => any()}.


%% Example:
%% additional_resources() :: #{
%%   <<"Content">> => list(choice_content()),
%%   <<"Type">> => list(any())
%% }
-type additional_resources() :: #{binary() => any()}.


%% Example:
%% list_notifications_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"NotificationSummaries">> => list(notification_summary())
%% }
-type list_notifications_output() :: #{binary() => any()}.


%% Example:
%% update_answer_output() :: #{
%%   <<"Answer">> => answer(),
%%   <<"LensAlias">> => string(),
%%   <<"LensArn">> => string(),
%%   <<"WorkloadId">> => string()
%% }
-type update_answer_output() :: #{binary() => any()}.


%% Example:
%% profile_template() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"TemplateName">> => string(),
%%   <<"TemplateQuestions">> => list(profile_template_question()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type profile_template() :: #{binary() => any()}.


%% Example:
%% choice_answer() :: #{
%%   <<"ChoiceId">> => string(),
%%   <<"Notes">> => string(),
%%   <<"Reason">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type choice_answer() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% delete_template_share_input() :: #{
%%   <<"ClientRequestToken">> := string()
%% }
-type delete_template_share_input() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% update_workload_output() :: #{
%%   <<"Workload">> => workload()
%% }
-type update_workload_output() :: #{binary() => any()}.


%% Example:
%% delete_profile_share_input() :: #{
%%   <<"ClientRequestToken">> := string()
%% }
-type delete_profile_share_input() :: #{binary() => any()}.


%% Example:
%% get_lens_version_difference_output() :: #{
%%   <<"BaseLensVersion">> => string(),
%%   <<"LatestLensVersion">> => string(),
%%   <<"LensAlias">> => string(),
%%   <<"LensArn">> => string(),
%%   <<"TargetLensVersion">> => string(),
%%   <<"VersionDifferences">> => version_differences()
%% }
-type get_lens_version_difference_output() :: #{binary() => any()}.


%% Example:
%% list_workloads_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WorkloadSummaries">> => list(workload_summary())
%% }
-type list_workloads_output() :: #{binary() => any()}.


%% Example:
%% update_review_template_answer_output() :: #{
%%   <<"Answer">> => review_template_answer(),
%%   <<"LensAlias">> => string(),
%%   <<"TemplateArn">> => string()
%% }
-type update_review_template_answer_output() :: #{binary() => any()}.


%% Example:
%% update_global_settings_input() :: #{
%%   <<"DiscoveryIntegrationStatus">> => list(any()),
%%   <<"JiraConfiguration">> => account_jira_configuration_input(),
%%   <<"OrganizationSharingStatus">> => list(any())
%% }
-type update_global_settings_input() :: #{binary() => any()}.


%% Example:
%% list_profile_notifications_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"NotificationSummaries">> => list(profile_notification_summary())
%% }
-type list_profile_notifications_output() :: #{binary() => any()}.


%% Example:
%% improvement_summary() :: #{
%%   <<"ImprovementPlanUrl">> => string(),
%%   <<"ImprovementPlans">> => list(choice_improvement_plan()),
%%   <<"JiraConfiguration">> => jira_configuration(),
%%   <<"PillarId">> => string(),
%%   <<"QuestionId">> => string(),
%%   <<"QuestionTitle">> => string(),
%%   <<"Risk">> => list(any())
%% }
-type improvement_summary() :: #{binary() => any()}.


%% Example:
%% list_lens_reviews_output() :: #{
%%   <<"LensReviewSummaries">> => list(lens_review_summary()),
%%   <<"MilestoneNumber">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"WorkloadId">> => string()
%% }
-type list_lens_reviews_output() :: #{binary() => any()}.


%% Example:
%% disassociate_lenses_input() :: #{
%%   <<"LensAliases">> := list(string())
%% }
-type disassociate_lenses_input() :: #{binary() => any()}.


%% Example:
%% list_lens_review_improvements_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"MilestoneNumber">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PillarId">> => string(),
%%   <<"QuestionPriority">> => list(any())
%% }
-type list_lens_review_improvements_input() :: #{binary() => any()}.


%% Example:
%% update_profile_output() :: #{
%%   <<"Profile">> => profile()
%% }
-type update_profile_output() :: #{binary() => any()}.


%% Example:
%% upgrade_review_template_lens_review_input() :: #{
%%   <<"ClientRequestToken">> => string()
%% }
-type upgrade_review_template_lens_review_input() :: #{binary() => any()}.


%% Example:
%% account_jira_configuration_input() :: #{
%%   <<"IntegrationStatus">> => list(any()),
%%   <<"IssueManagementStatus">> => list(any()),
%%   <<"IssueManagementType">> => list(any()),
%%   <<"JiraProjectKey">> => string()
%% }
-type account_jira_configuration_input() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Fields">> => list(validation_exception_field()),
%%   <<"Message">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.


%% Example:
%% list_check_summaries_input() :: #{
%%   <<"ChoiceId">> := string(),
%%   <<"LensArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PillarId">> := string(),
%%   <<"QuestionId">> := string()
%% }
-type list_check_summaries_input() :: #{binary() => any()}.


%% Example:
%% create_workload_input() :: #{
%%   <<"AccountIds">> => list(string()),
%%   <<"Applications">> => list(string()),
%%   <<"ArchitecturalDesign">> => string(),
%%   <<"AwsRegions">> => list(string()),
%%   <<"ClientRequestToken">> := string(),
%%   <<"Description">> := string(),
%%   <<"DiscoveryConfig">> => workload_discovery_config(),
%%   <<"Environment">> := list(any()),
%%   <<"Industry">> => string(),
%%   <<"IndustryType">> => string(),
%%   <<"JiraConfiguration">> => workload_jira_configuration_input(),
%%   <<"Lenses">> := list(string()),
%%   <<"NonAwsRegions">> => list(string()),
%%   <<"Notes">> => string(),
%%   <<"PillarPriorities">> => list(string()),
%%   <<"ProfileArns">> => list(string()),
%%   <<"ReviewOwner">> => string(),
%%   <<"ReviewTemplateArns">> => list(string()),
%%   <<"Tags">> => map(),
%%   <<"WorkloadName">> := string()
%% }
-type create_workload_input() :: #{binary() => any()}.


%% Example:
%% list_lens_reviews_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"MilestoneNumber">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_lens_reviews_input() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"QuotaCode">> => string(),
%%   <<"ServiceCode">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% list_profile_notifications_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"WorkloadId">> => string()
%% }
-type list_profile_notifications_input() :: #{binary() => any()}.


%% Example:
%% create_lens_share_input() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"SharedWith">> := string()
%% }
-type create_lens_share_input() :: #{binary() => any()}.


%% Example:
%% get_lens_output() :: #{
%%   <<"Lens">> => lens()
%% }
-type get_lens_output() :: #{binary() => any()}.


%% Example:
%% create_profile_share_output() :: #{
%%   <<"ProfileArn">> => string(),
%%   <<"ShareId">> => string()
%% }
-type create_profile_share_output() :: #{binary() => any()}.


%% Example:
%% jira_configuration() :: #{
%%   <<"JiraIssueUrl">> => string(),
%%   <<"LastSyncedTime">> => non_neg_integer()
%% }
-type jira_configuration() :: #{binary() => any()}.


%% Example:
%% get_lens_review_input() :: #{
%%   <<"MilestoneNumber">> => integer()
%% }
-type get_lens_review_input() :: #{binary() => any()}.


%% Example:
%% choice_update() :: #{
%%   <<"Notes">> => string(),
%%   <<"Reason">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type choice_update() :: #{binary() => any()}.


%% Example:
%% get_consolidated_report_output() :: #{
%%   <<"Base64String">> => string(),
%%   <<"Metrics">> => list(consolidated_report_metric()),
%%   <<"NextToken">> => string()
%% }
-type get_consolidated_report_output() :: #{binary() => any()}.


%% Example:
%% create_lens_share_output() :: #{
%%   <<"ShareId">> => string()
%% }
-type create_lens_share_output() :: #{binary() => any()}.


%% Example:
%% create_workload_share_input() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"PermissionType">> := list(any()),
%%   <<"SharedWith">> := string()
%% }
-type create_workload_share_input() :: #{binary() => any()}.


%% Example:
%% get_lens_version_difference_input() :: #{
%%   <<"BaseLensVersion">> => string(),
%%   <<"TargetLensVersion">> => string()
%% }
-type get_lens_version_difference_input() :: #{binary() => any()}.


%% Example:
%% update_review_template_lens_review_output() :: #{
%%   <<"LensReview">> => review_template_lens_review(),
%%   <<"TemplateArn">> => string()
%% }
-type update_review_template_lens_review_output() :: #{binary() => any()}.

%% Example:
%% get_review_template_answer_input() :: #{}
-type get_review_template_answer_input() :: #{}.

%% Example:
%% get_review_template_lens_review_input() :: #{}
-type get_review_template_lens_review_input() :: #{}.


%% Example:
%% create_workload_output() :: #{
%%   <<"WorkloadArn">> => string(),
%%   <<"WorkloadId">> => string()
%% }
-type create_workload_output() :: #{binary() => any()}.


%% Example:
%% check_summary() :: #{
%%   <<"AccountSummary">> => map(),
%%   <<"ChoiceId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"LensArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"PillarId">> => string(),
%%   <<"Provider">> => list(any()),
%%   <<"QuestionId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type check_summary() :: #{binary() => any()}.


%% Example:
%% get_global_settings_output() :: #{
%%   <<"DiscoveryIntegrationStatus">> => list(any()),
%%   <<"JiraConfiguration">> => account_jira_configuration_output(),
%%   <<"OrganizationSharingStatus">> => list(any())
%% }
-type get_global_settings_output() :: #{binary() => any()}.


%% Example:
%% version_differences() :: #{
%%   <<"PillarDifferences">> => list(pillar_difference())
%% }
-type version_differences() :: #{binary() => any()}.


%% Example:
%% list_answers_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"MilestoneNumber">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PillarId">> => string(),
%%   <<"QuestionPriority">> => list(any())
%% }
-type list_answers_input() :: #{binary() => any()}.


%% Example:
%% list_check_summaries_output() :: #{
%%   <<"CheckSummaries">> => list(check_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_check_summaries_output() :: #{binary() => any()}.


%% Example:
%% lens_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LensAlias">> => string(),
%%   <<"LensArn">> => string(),
%%   <<"LensName">> => string(),
%%   <<"LensStatus">> => list(any()),
%%   <<"LensType">> => list(any()),
%%   <<"LensVersion">> => string(),
%%   <<"Owner">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type lens_summary() :: #{binary() => any()}.


%% Example:
%% list_answers_output() :: #{
%%   <<"AnswerSummaries">> => list(answer_summary()),
%%   <<"LensAlias">> => string(),
%%   <<"LensArn">> => string(),
%%   <<"MilestoneNumber">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"WorkloadId">> => string()
%% }
-type list_answers_output() :: #{binary() => any()}.


%% Example:
%% notification_summary() :: #{
%%   <<"LensUpgradeSummary">> => lens_upgrade_summary(),
%%   <<"Type">> => list(any())
%% }
-type notification_summary() :: #{binary() => any()}.


%% Example:
%% choice_improvement_plan() :: #{
%%   <<"ChoiceId">> => string(),
%%   <<"DisplayText">> => string(),
%%   <<"ImprovementPlanUrl">> => string()
%% }
-type choice_improvement_plan() :: #{binary() => any()}.


%% Example:
%% workload_share() :: #{
%%   <<"PermissionType">> => list(any()),
%%   <<"ShareId">> => string(),
%%   <<"SharedBy">> => string(),
%%   <<"SharedWith">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"WorkloadId">> => string(),
%%   <<"WorkloadName">> => string()
%% }
-type workload_share() :: #{binary() => any()}.


%% Example:
%% profile_notification_summary() :: #{
%%   <<"CurrentProfileVersion">> => string(),
%%   <<"LatestProfileVersion">> => string(),
%%   <<"ProfileArn">> => string(),
%%   <<"ProfileName">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"WorkloadId">> => string(),
%%   <<"WorkloadName">> => string()
%% }
-type profile_notification_summary() :: #{binary() => any()}.


%% Example:
%% lens() :: #{
%%   <<"Description">> => string(),
%%   <<"LensArn">> => string(),
%%   <<"LensVersion">> => string(),
%%   <<"Name">> => string(),
%%   <<"Owner">> => string(),
%%   <<"ShareInvitationId">> => string(),
%%   <<"Tags">> => map()
%% }
-type lens() :: #{binary() => any()}.


%% Example:
%% update_workload_input() :: #{
%%   <<"AccountIds">> => list(string()),
%%   <<"Applications">> => list(string()),
%%   <<"ArchitecturalDesign">> => string(),
%%   <<"AwsRegions">> => list(string()),
%%   <<"Description">> => string(),
%%   <<"DiscoveryConfig">> => workload_discovery_config(),
%%   <<"Environment">> => list(any()),
%%   <<"ImprovementStatus">> => list(any()),
%%   <<"Industry">> => string(),
%%   <<"IndustryType">> => string(),
%%   <<"IsReviewOwnerUpdateAcknowledged">> => boolean(),
%%   <<"JiraConfiguration">> => workload_jira_configuration_input(),
%%   <<"NonAwsRegions">> => list(string()),
%%   <<"Notes">> => string(),
%%   <<"PillarPriorities">> => list(string()),
%%   <<"ReviewOwner">> => string(),
%%   <<"WorkloadName">> => string()
%% }
-type update_workload_input() :: #{binary() => any()}.


%% Example:
%% delete_workload_input() :: #{
%%   <<"ClientRequestToken">> := string()
%% }
-type delete_workload_input() :: #{binary() => any()}.


%% Example:
%% export_lens_output() :: #{
%%   <<"LensJSON">> => string()
%% }
-type export_lens_output() :: #{binary() => any()}.


%% Example:
%% profile_template_question() :: #{
%%   <<"MaxSelectedChoices">> => integer(),
%%   <<"MinSelectedChoices">> => integer(),
%%   <<"QuestionChoices">> => list(profile_template_choice()),
%%   <<"QuestionDescription">> => string(),
%%   <<"QuestionId">> => string(),
%%   <<"QuestionTitle">> => string()
%% }
-type profile_template_question() :: #{binary() => any()}.


%% Example:
%% review_template_answer() :: #{
%%   <<"AnswerStatus">> => list(any()),
%%   <<"ChoiceAnswers">> => list(choice_answer()),
%%   <<"Choices">> => list(choice()),
%%   <<"HelpfulResourceDisplayText">> => string(),
%%   <<"HelpfulResourceUrl">> => string(),
%%   <<"ImprovementPlanUrl">> => string(),
%%   <<"IsApplicable">> => boolean(),
%%   <<"Notes">> => string(),
%%   <<"PillarId">> => string(),
%%   <<"QuestionDescription">> => string(),
%%   <<"QuestionId">> => string(),
%%   <<"QuestionTitle">> => string(),
%%   <<"Reason">> => list(any()),
%%   <<"SelectedChoices">> => list(string())
%% }
-type review_template_answer() :: #{binary() => any()}.


%% Example:
%% update_profile_input() :: #{
%%   <<"ProfileDescription">> => string(),
%%   <<"ProfileQuestions">> => list(profile_question_update())
%% }
-type update_profile_input() :: #{binary() => any()}.


%% Example:
%% get_review_template_output() :: #{
%%   <<"ReviewTemplate">> => review_template()
%% }
-type get_review_template_output() :: #{binary() => any()}.


%% Example:
%% list_share_invitations_input() :: #{
%%   <<"LensNamePrefix">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ProfileNamePrefix">> => string(),
%%   <<"ShareResourceType">> => list(any()),
%%   <<"TemplateNamePrefix">> => string(),
%%   <<"WorkloadNamePrefix">> => string()
%% }
-type list_share_invitations_input() :: #{binary() => any()}.


%% Example:
%% answer_summary() :: #{
%%   <<"ChoiceAnswerSummaries">> => list(choice_answer_summary()),
%%   <<"Choices">> => list(choice()),
%%   <<"IsApplicable">> => boolean(),
%%   <<"JiraConfiguration">> => jira_configuration(),
%%   <<"PillarId">> => string(),
%%   <<"QuestionId">> => string(),
%%   <<"QuestionTitle">> => string(),
%%   <<"QuestionType">> => list(any()),
%%   <<"Reason">> => list(any()),
%%   <<"Risk">> => list(any()),
%%   <<"SelectedChoices">> => list(string())
%% }
-type answer_summary() :: #{binary() => any()}.


%% Example:
%% list_lenses_input() :: #{
%%   <<"LensName">> => string(),
%%   <<"LensStatus">> => list(any()),
%%   <<"LensType">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_lenses_input() :: #{binary() => any()}.


%% Example:
%% profile_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Owner">> => string(),
%%   <<"ProfileArn">> => string(),
%%   <<"ProfileDescription">> => string(),
%%   <<"ProfileName">> => string(),
%%   <<"ProfileVersion">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type profile_summary() :: #{binary() => any()}.


%% Example:
%% get_review_template_answer_output() :: #{
%%   <<"Answer">> => review_template_answer(),
%%   <<"LensAlias">> => string(),
%%   <<"TemplateArn">> => string()
%% }
-type get_review_template_answer_output() :: #{binary() => any()}.


%% Example:
%% workload_profile() :: #{
%%   <<"ProfileArn">> => string(),
%%   <<"ProfileVersion">> => string()
%% }
-type workload_profile() :: #{binary() => any()}.


%% Example:
%% list_template_shares_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SharedWithPrefix">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_template_shares_input() :: #{binary() => any()}.

-type associate_lenses_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_profiles_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_lens_share_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_lens_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_milestone_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_profile_share_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_review_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_template_share_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_workload_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_workload_share_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_lens_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_lens_share_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_profile_share_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_review_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_template_share_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_workload_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_workload_share_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_lenses_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_profiles_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type export_lens_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_answer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_consolidated_report_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type get_global_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_lens_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_lens_review_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_lens_review_report_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_lens_version_difference_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_milestone_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_profile_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_review_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_review_template_answer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_review_template_lens_review_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_workload_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type import_lens_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_answers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_check_details_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_check_summaries_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_lens_review_improvements_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_lens_reviews_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_lens_shares_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_lenses_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_milestones_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_notifications_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_profile_notifications_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_profile_shares_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_profiles_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_review_template_answers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_review_templates_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_share_invitations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    internal_server_exception() | 
    resource_not_found_exception().

-type list_template_shares_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_workload_shares_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_workloads_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type tag_resource_errors() ::
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    internal_server_exception() | 
    resource_not_found_exception().

-type update_answer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_global_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type update_integration_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_lens_review_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_profile_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_review_template_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_review_template_answer_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_review_template_lens_review_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_share_invitation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_workload_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_workload_share_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type upgrade_lens_review_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type upgrade_profile_version_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type upgrade_review_template_lens_review_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associate a lens to a workload.
%%
%% Up to 10 lenses can be associated with a workload in a single API
%% operation. A
%% maximum of 20 lenses can be associated with a workload.
%%
%% Disclaimer
%%
%% By accessing and/or applying custom lenses created by another Amazon Web
%% Services user or account,
%% you acknowledge that custom lenses created by other users and shared with
%% you are
%% Third Party Content as defined in the Amazon Web Services Customer
%% Agreement.
-spec associate_lenses(aws_client:aws_client(), binary() | list(), associate_lenses_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_lenses_errors(), tuple()}.
associate_lenses(Client, WorkloadId, Input) ->
    associate_lenses(Client, WorkloadId, Input, []).

-spec associate_lenses(aws_client:aws_client(), binary() | list(), associate_lenses_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_lenses_errors(), tuple()}.
associate_lenses(Client, WorkloadId, Input0, Options0) ->
    Method = patch,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/associateLenses"],
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

%% @doc Associate a profile with a workload.
-spec associate_profiles(aws_client:aws_client(), binary() | list(), associate_profiles_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_profiles_errors(), tuple()}.
associate_profiles(Client, WorkloadId, Input) ->
    associate_profiles(Client, WorkloadId, Input, []).

-spec associate_profiles(aws_client:aws_client(), binary() | list(), associate_profiles_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_profiles_errors(), tuple()}.
associate_profiles(Client, WorkloadId, Input0, Options0) ->
    Method = patch,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/associateProfiles"],
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

%% @doc Create a lens share.
%%
%% The owner of a lens can share it with other Amazon Web Services accounts,
%% users, an organization,
%% and organizational units (OUs) in the same Amazon Web Services Region.
%% Lenses provided by Amazon Web Services (Amazon Web Services Official
%% Content) cannot be shared.
%%
%% Shared access to a lens is not removed until the lens invitation is
%% deleted.
%%
%% If you share a lens with an organization or OU, all accounts in the
%% organization or OU
%% are granted access to the lens.
%%
%% For more information, see Sharing a custom lens:
%% https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-sharing.html
%% in the
%% Well-Architected Tool User Guide.
%%
%% Disclaimer
%%
%% By sharing your custom lenses with other Amazon Web Services accounts,
%% you acknowledge that Amazon Web Services will make your custom lenses
%% available to those
%% other accounts. Those other accounts may continue to access and use your
%% shared custom lenses even if you delete the custom lenses
%% from your own Amazon Web Services account or terminate
%% your Amazon Web Services account.
-spec create_lens_share(aws_client:aws_client(), binary() | list(), create_lens_share_input()) ->
    {ok, create_lens_share_output(), tuple()} |
    {error, any()} |
    {error, create_lens_share_errors(), tuple()}.
create_lens_share(Client, LensAlias, Input) ->
    create_lens_share(Client, LensAlias, Input, []).

-spec create_lens_share(aws_client:aws_client(), binary() | list(), create_lens_share_input(), proplists:proplist()) ->
    {ok, create_lens_share_output(), tuple()} |
    {error, any()} |
    {error, create_lens_share_errors(), tuple()}.
create_lens_share(Client, LensAlias, Input0, Options0) ->
    Method = post,
    Path = ["/lenses/", aws_util:encode_uri(LensAlias), "/shares"],
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

%% @doc Create a new lens version.
%%
%% A lens can have up to 100 versions.
%%
%% Use this operation to publish a new lens version after you have imported a
%% lens. The `LensAlias'
%% is used to identify the lens to be published.
%% The owner of a lens can share the lens with other
%% Amazon Web Services accounts and users in the same Amazon Web Services
%% Region. Only the owner of a lens can delete it.
-spec create_lens_version(aws_client:aws_client(), binary() | list(), create_lens_version_input()) ->
    {ok, create_lens_version_output(), tuple()} |
    {error, any()} |
    {error, create_lens_version_errors(), tuple()}.
create_lens_version(Client, LensAlias, Input) ->
    create_lens_version(Client, LensAlias, Input, []).

-spec create_lens_version(aws_client:aws_client(), binary() | list(), create_lens_version_input(), proplists:proplist()) ->
    {ok, create_lens_version_output(), tuple()} |
    {error, any()} |
    {error, create_lens_version_errors(), tuple()}.
create_lens_version(Client, LensAlias, Input0, Options0) ->
    Method = post,
    Path = ["/lenses/", aws_util:encode_uri(LensAlias), "/versions"],
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

%% @doc Create a milestone for an existing workload.
-spec create_milestone(aws_client:aws_client(), binary() | list(), create_milestone_input()) ->
    {ok, create_milestone_output(), tuple()} |
    {error, any()} |
    {error, create_milestone_errors(), tuple()}.
create_milestone(Client, WorkloadId, Input) ->
    create_milestone(Client, WorkloadId, Input, []).

-spec create_milestone(aws_client:aws_client(), binary() | list(), create_milestone_input(), proplists:proplist()) ->
    {ok, create_milestone_output(), tuple()} |
    {error, any()} |
    {error, create_milestone_errors(), tuple()}.
create_milestone(Client, WorkloadId, Input0, Options0) ->
    Method = post,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/milestones"],
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

%% @doc Create a profile.
-spec create_profile(aws_client:aws_client(), create_profile_input()) ->
    {ok, create_profile_output(), tuple()} |
    {error, any()} |
    {error, create_profile_errors(), tuple()}.
create_profile(Client, Input) ->
    create_profile(Client, Input, []).

-spec create_profile(aws_client:aws_client(), create_profile_input(), proplists:proplist()) ->
    {ok, create_profile_output(), tuple()} |
    {error, any()} |
    {error, create_profile_errors(), tuple()}.
create_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/profiles"],
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

%% @doc Create a profile share.
-spec create_profile_share(aws_client:aws_client(), binary() | list(), create_profile_share_input()) ->
    {ok, create_profile_share_output(), tuple()} |
    {error, any()} |
    {error, create_profile_share_errors(), tuple()}.
create_profile_share(Client, ProfileArn, Input) ->
    create_profile_share(Client, ProfileArn, Input, []).

-spec create_profile_share(aws_client:aws_client(), binary() | list(), create_profile_share_input(), proplists:proplist()) ->
    {ok, create_profile_share_output(), tuple()} |
    {error, any()} |
    {error, create_profile_share_errors(), tuple()}.
create_profile_share(Client, ProfileArn, Input0, Options0) ->
    Method = post,
    Path = ["/profiles/", aws_util:encode_uri(ProfileArn), "/shares"],
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

%% @doc Create a review template.
%%
%% Disclaimer
%%
%% Do not include or gather personal identifiable information (PII) of end
%% users or
%% other identifiable individuals in or via your review templates. If your
%% review
%% template or those shared with you and used in your account do include or
%% collect PII
%% you are responsible for: ensuring that the included PII is processed in
%% accordance
%% with applicable law, providing adequate privacy notices, and obtaining
%% necessary
%% consents for processing such data.
-spec create_review_template(aws_client:aws_client(), create_review_template_input()) ->
    {ok, create_review_template_output(), tuple()} |
    {error, any()} |
    {error, create_review_template_errors(), tuple()}.
create_review_template(Client, Input) ->
    create_review_template(Client, Input, []).

-spec create_review_template(aws_client:aws_client(), create_review_template_input(), proplists:proplist()) ->
    {ok, create_review_template_output(), tuple()} |
    {error, any()} |
    {error, create_review_template_errors(), tuple()}.
create_review_template(Client, Input0, Options0) ->
    Method = post,
    Path = ["/reviewTemplates"],
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

%% @doc Create a review template share.
%%
%% The owner of a review template can share it with other Amazon Web Services
%% accounts,
%% users, an organization, and organizational units (OUs) in the same Amazon
%% Web Services Region.
%%
%% Shared access to a review template is not removed until the review
%% template share
%% invitation is deleted.
%%
%% If you share a review template with an organization or OU, all accounts in
%% the
%% organization or OU are granted access to the review template.
%%
%% Disclaimer
%%
%% By sharing your review template with other Amazon Web Services accounts,
%% you
%% acknowledge that Amazon Web Services will make your review template
%% available to
%% those other accounts.
-spec create_template_share(aws_client:aws_client(), binary() | list(), create_template_share_input()) ->
    {ok, create_template_share_output(), tuple()} |
    {error, any()} |
    {error, create_template_share_errors(), tuple()}.
create_template_share(Client, TemplateArn, Input) ->
    create_template_share(Client, TemplateArn, Input, []).

-spec create_template_share(aws_client:aws_client(), binary() | list(), create_template_share_input(), proplists:proplist()) ->
    {ok, create_template_share_output(), tuple()} |
    {error, any()} |
    {error, create_template_share_errors(), tuple()}.
create_template_share(Client, TemplateArn, Input0, Options0) ->
    Method = post,
    Path = ["/templates/shares/", aws_util:encode_uri(TemplateArn), ""],
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

%% @doc Create a new workload.
%%
%% The owner of a workload can share the workload with other Amazon Web
%% Services accounts, users,
%% an organization, and organizational units (OUs)
%% in the same Amazon Web Services Region. Only the owner of a workload can
%% delete it.
%%
%% For more information, see Defining a Workload:
%% https://docs.aws.amazon.com/wellarchitected/latest/userguide/define-workload.html
%% in the
%% Well-Architected Tool User Guide.
%%
%% Either `AwsRegions', `NonAwsRegions', or both must be specified
%% when
%% creating a workload.
%%
%% You also must specify `ReviewOwner', even though the
%% parameter is listed as not being required in the following section.
%%
%% When creating a workload using a review template, you must have the
%% following IAM permissions:
%%
%% `wellarchitected:GetReviewTemplate'
%%
%% `wellarchitected:GetReviewTemplateAnswer'
%%
%% `wellarchitected:ListReviewTemplateAnswers'
%%
%% `wellarchitected:GetReviewTemplateLensReview'
-spec create_workload(aws_client:aws_client(), create_workload_input()) ->
    {ok, create_workload_output(), tuple()} |
    {error, any()} |
    {error, create_workload_errors(), tuple()}.
create_workload(Client, Input) ->
    create_workload(Client, Input, []).

-spec create_workload(aws_client:aws_client(), create_workload_input(), proplists:proplist()) ->
    {ok, create_workload_output(), tuple()} |
    {error, any()} |
    {error, create_workload_errors(), tuple()}.
create_workload(Client, Input0, Options0) ->
    Method = post,
    Path = ["/workloads"],
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

%% @doc Create a workload share.
%%
%% The owner of a workload can share it with other Amazon Web Services
%% accounts and users in the same
%% Amazon Web Services Region. Shared access to a workload is not removed
%% until the workload invitation is
%% deleted.
%%
%% If you share a workload with an organization or OU, all accounts in the
%% organization or OU
%% are granted access to the workload.
%%
%% For more information, see Sharing a workload:
%% https://docs.aws.amazon.com/wellarchitected/latest/userguide/workloads-sharing.html
%% in the
%% Well-Architected Tool User Guide.
-spec create_workload_share(aws_client:aws_client(), binary() | list(), create_workload_share_input()) ->
    {ok, create_workload_share_output(), tuple()} |
    {error, any()} |
    {error, create_workload_share_errors(), tuple()}.
create_workload_share(Client, WorkloadId, Input) ->
    create_workload_share(Client, WorkloadId, Input, []).

-spec create_workload_share(aws_client:aws_client(), binary() | list(), create_workload_share_input(), proplists:proplist()) ->
    {ok, create_workload_share_output(), tuple()} |
    {error, any()} |
    {error, create_workload_share_errors(), tuple()}.
create_workload_share(Client, WorkloadId, Input0, Options0) ->
    Method = post,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/shares"],
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

%% @doc Delete an existing lens.
%%
%% Only the owner of a lens can delete it. After the lens is deleted, Amazon
%% Web Services accounts and users
%% that you shared the lens with can continue to use it, but they will no
%% longer be able to apply it to new workloads.
%%
%% Disclaimer
%%
%% By sharing your custom lenses with other Amazon Web Services accounts,
%% you acknowledge that Amazon Web Services will make your custom lenses
%% available to those
%% other accounts. Those other accounts may continue to access and use your
%% shared custom lenses even if you delete the custom lenses
%% from your own Amazon Web Services account or terminate
%% your Amazon Web Services account.
-spec delete_lens(aws_client:aws_client(), binary() | list(), delete_lens_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_lens_errors(), tuple()}.
delete_lens(Client, LensAlias, Input) ->
    delete_lens(Client, LensAlias, Input, []).

-spec delete_lens(aws_client:aws_client(), binary() | list(), delete_lens_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_lens_errors(), tuple()}.
delete_lens(Client, LensAlias, Input0, Options0) ->
    Method = delete,
    Path = ["/lenses/", aws_util:encode_uri(LensAlias), ""],
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
                     {<<"ClientRequestToken">>, <<"ClientRequestToken">>},
                     {<<"LensStatus">>, <<"LensStatus">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a lens share.
%%
%% After the lens share is deleted, Amazon Web Services accounts, users,
%% organizations,
%% and organizational units (OUs)
%% that you shared the lens with can continue to use it, but they will no
%% longer be able to apply it to new workloads.
%%
%% Disclaimer
%%
%% By sharing your custom lenses with other Amazon Web Services accounts,
%% you acknowledge that Amazon Web Services will make your custom lenses
%% available to those
%% other accounts. Those other accounts may continue to access and use your
%% shared custom lenses even if you delete the custom lenses
%% from your own Amazon Web Services account or terminate
%% your Amazon Web Services account.
-spec delete_lens_share(aws_client:aws_client(), binary() | list(), binary() | list(), delete_lens_share_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_lens_share_errors(), tuple()}.
delete_lens_share(Client, LensAlias, ShareId, Input) ->
    delete_lens_share(Client, LensAlias, ShareId, Input, []).

-spec delete_lens_share(aws_client:aws_client(), binary() | list(), binary() | list(), delete_lens_share_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_lens_share_errors(), tuple()}.
delete_lens_share(Client, LensAlias, ShareId, Input0, Options0) ->
    Method = delete,
    Path = ["/lenses/", aws_util:encode_uri(LensAlias), "/shares/", aws_util:encode_uri(ShareId), ""],
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
                     {<<"ClientRequestToken">>, <<"ClientRequestToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a profile.
%%
%% Disclaimer
%%
%% By sharing your profile with other Amazon Web Services accounts,
%% you acknowledge that Amazon Web Services will make your profile available
%% to those
%% other accounts. Those other accounts may continue to access and use your
%% shared profile even if you delete the profile
%% from your own Amazon Web Services account or terminate
%% your Amazon Web Services account.
-spec delete_profile(aws_client:aws_client(), binary() | list(), delete_profile_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_profile_errors(), tuple()}.
delete_profile(Client, ProfileArn, Input) ->
    delete_profile(Client, ProfileArn, Input, []).

-spec delete_profile(aws_client:aws_client(), binary() | list(), delete_profile_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_profile_errors(), tuple()}.
delete_profile(Client, ProfileArn, Input0, Options0) ->
    Method = delete,
    Path = ["/profiles/", aws_util:encode_uri(ProfileArn), ""],
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
                     {<<"ClientRequestToken">>, <<"ClientRequestToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a profile share.
-spec delete_profile_share(aws_client:aws_client(), binary() | list(), binary() | list(), delete_profile_share_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_profile_share_errors(), tuple()}.
delete_profile_share(Client, ProfileArn, ShareId, Input) ->
    delete_profile_share(Client, ProfileArn, ShareId, Input, []).

-spec delete_profile_share(aws_client:aws_client(), binary() | list(), binary() | list(), delete_profile_share_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_profile_share_errors(), tuple()}.
delete_profile_share(Client, ProfileArn, ShareId, Input0, Options0) ->
    Method = delete,
    Path = ["/profiles/", aws_util:encode_uri(ProfileArn), "/shares/", aws_util:encode_uri(ShareId), ""],
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
                     {<<"ClientRequestToken">>, <<"ClientRequestToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a review template.
%%
%% Only the owner of a review template can delete it.
%%
%% After the review template is deleted, Amazon Web Services accounts, users,
%% organizations, and organizational units (OUs) that you shared the review
%% template with
%% will no longer be able to apply it to new workloads.
-spec delete_review_template(aws_client:aws_client(), binary() | list(), delete_review_template_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_review_template_errors(), tuple()}.
delete_review_template(Client, TemplateArn, Input) ->
    delete_review_template(Client, TemplateArn, Input, []).

-spec delete_review_template(aws_client:aws_client(), binary() | list(), delete_review_template_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_review_template_errors(), tuple()}.
delete_review_template(Client, TemplateArn, Input0, Options0) ->
    Method = delete,
    Path = ["/reviewTemplates/", aws_util:encode_uri(TemplateArn), ""],
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
                     {<<"ClientRequestToken">>, <<"ClientRequestToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a review template share.
%%
%% After the review template share is deleted, Amazon Web Services accounts,
%% users,
%% organizations, and organizational units (OUs) that you shared the review
%% template with
%% will no longer be able to apply it to new workloads.
-spec delete_template_share(aws_client:aws_client(), binary() | list(), binary() | list(), delete_template_share_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_template_share_errors(), tuple()}.
delete_template_share(Client, ShareId, TemplateArn, Input) ->
    delete_template_share(Client, ShareId, TemplateArn, Input, []).

-spec delete_template_share(aws_client:aws_client(), binary() | list(), binary() | list(), delete_template_share_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_template_share_errors(), tuple()}.
delete_template_share(Client, ShareId, TemplateArn, Input0, Options0) ->
    Method = delete,
    Path = ["/templates/shares/", aws_util:encode_uri(TemplateArn), "/", aws_util:encode_uri(ShareId), ""],
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
                     {<<"ClientRequestToken">>, <<"ClientRequestToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete an existing workload.
-spec delete_workload(aws_client:aws_client(), binary() | list(), delete_workload_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_workload_errors(), tuple()}.
delete_workload(Client, WorkloadId, Input) ->
    delete_workload(Client, WorkloadId, Input, []).

-spec delete_workload(aws_client:aws_client(), binary() | list(), delete_workload_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_workload_errors(), tuple()}.
delete_workload(Client, WorkloadId, Input0, Options0) ->
    Method = delete,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), ""],
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
                     {<<"ClientRequestToken">>, <<"ClientRequestToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a workload share.
-spec delete_workload_share(aws_client:aws_client(), binary() | list(), binary() | list(), delete_workload_share_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_workload_share_errors(), tuple()}.
delete_workload_share(Client, ShareId, WorkloadId, Input) ->
    delete_workload_share(Client, ShareId, WorkloadId, Input, []).

-spec delete_workload_share(aws_client:aws_client(), binary() | list(), binary() | list(), delete_workload_share_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_workload_share_errors(), tuple()}.
delete_workload_share(Client, ShareId, WorkloadId, Input0, Options0) ->
    Method = delete,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/shares/", aws_util:encode_uri(ShareId), ""],
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
                     {<<"ClientRequestToken">>, <<"ClientRequestToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociate a lens from a workload.
%%
%% Up to 10 lenses can be disassociated from a workload in a single API
%% operation.
%%
%% The Amazon Web Services Well-Architected Framework lens
%% (`wellarchitected') cannot be
%% removed from a workload.
-spec disassociate_lenses(aws_client:aws_client(), binary() | list(), disassociate_lenses_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_lenses_errors(), tuple()}.
disassociate_lenses(Client, WorkloadId, Input) ->
    disassociate_lenses(Client, WorkloadId, Input, []).

-spec disassociate_lenses(aws_client:aws_client(), binary() | list(), disassociate_lenses_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_lenses_errors(), tuple()}.
disassociate_lenses(Client, WorkloadId, Input0, Options0) ->
    Method = patch,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/disassociateLenses"],
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

%% @doc Disassociate a profile from a workload.
-spec disassociate_profiles(aws_client:aws_client(), binary() | list(), disassociate_profiles_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_profiles_errors(), tuple()}.
disassociate_profiles(Client, WorkloadId, Input) ->
    disassociate_profiles(Client, WorkloadId, Input, []).

-spec disassociate_profiles(aws_client:aws_client(), binary() | list(), disassociate_profiles_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_profiles_errors(), tuple()}.
disassociate_profiles(Client, WorkloadId, Input0, Options0) ->
    Method = patch,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/disassociateProfiles"],
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

%% @doc Export an existing lens.
%%
%% Only the owner of a lens can export it. Lenses provided by Amazon Web
%% Services (Amazon Web Services Official Content)
%% cannot be exported.
%%
%% Lenses are defined in JSON. For more information, see JSON format
%% specification:
%% https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-format-specification.html
%% in the Well-Architected Tool User Guide.
%%
%% Disclaimer
%%
%% Do not include or gather personal identifiable information (PII) of end
%% users or
%% other identifiable individuals in or via your custom lenses. If your
%% custom
%% lens or those shared with you and used in your account do include or
%% collect
%% PII you are responsible for: ensuring that the included PII is processed
%% in accordance
%% with applicable law, providing adequate privacy notices, and obtaining
%% necessary
%% consents for processing such data.
-spec export_lens(aws_client:aws_client(), binary() | list()) ->
    {ok, export_lens_output(), tuple()} |
    {error, any()} |
    {error, export_lens_errors(), tuple()}.
export_lens(Client, LensAlias)
  when is_map(Client) ->
    export_lens(Client, LensAlias, #{}, #{}).

-spec export_lens(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, export_lens_output(), tuple()} |
    {error, any()} |
    {error, export_lens_errors(), tuple()}.
export_lens(Client, LensAlias, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    export_lens(Client, LensAlias, QueryMap, HeadersMap, []).

-spec export_lens(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, export_lens_output(), tuple()} |
    {error, any()} |
    {error, export_lens_errors(), tuple()}.
export_lens(Client, LensAlias, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/lenses/", aws_util:encode_uri(LensAlias), "/export"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"LensVersion">>, maps:get(<<"LensVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the answer to a specific question in a workload review.
-spec get_answer(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_answer_output(), tuple()} |
    {error, any()} |
    {error, get_answer_errors(), tuple()}.
get_answer(Client, LensAlias, QuestionId, WorkloadId)
  when is_map(Client) ->
    get_answer(Client, LensAlias, QuestionId, WorkloadId, #{}, #{}).

-spec get_answer(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_answer_output(), tuple()} |
    {error, any()} |
    {error, get_answer_errors(), tuple()}.
get_answer(Client, LensAlias, QuestionId, WorkloadId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_answer(Client, LensAlias, QuestionId, WorkloadId, QueryMap, HeadersMap, []).

-spec get_answer(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_answer_output(), tuple()} |
    {error, any()} |
    {error, get_answer_errors(), tuple()}.
get_answer(Client, LensAlias, QuestionId, WorkloadId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/lensReviews/", aws_util:encode_uri(LensAlias), "/answers/", aws_util:encode_uri(QuestionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MilestoneNumber">>, maps:get(<<"MilestoneNumber">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a consolidated report of your workloads.
%%
%% You can optionally choose to include workloads that have been shared with
%% you.
-spec get_consolidated_report(aws_client:aws_client(), binary() | list()) ->
    {ok, get_consolidated_report_output(), tuple()} |
    {error, any()} |
    {error, get_consolidated_report_errors(), tuple()}.
get_consolidated_report(Client, Format)
  when is_map(Client) ->
    get_consolidated_report(Client, Format, #{}, #{}).

-spec get_consolidated_report(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_consolidated_report_output(), tuple()} |
    {error, any()} |
    {error, get_consolidated_report_errors(), tuple()}.
get_consolidated_report(Client, Format, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_consolidated_report(Client, Format, QueryMap, HeadersMap, []).

-spec get_consolidated_report(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_consolidated_report_output(), tuple()} |
    {error, any()} |
    {error, get_consolidated_report_errors(), tuple()}.
get_consolidated_report(Client, Format, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/consolidatedReport"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"Format">>, Format},
        {<<"IncludeSharedResources">>, maps:get(<<"IncludeSharedResources">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Global settings for all workloads.
-spec get_global_settings(aws_client:aws_client()) ->
    {ok, get_global_settings_output(), tuple()} |
    {error, any()} |
    {error, get_global_settings_errors(), tuple()}.
get_global_settings(Client)
  when is_map(Client) ->
    get_global_settings(Client, #{}, #{}).

-spec get_global_settings(aws_client:aws_client(), map(), map()) ->
    {ok, get_global_settings_output(), tuple()} |
    {error, any()} |
    {error, get_global_settings_errors(), tuple()}.
get_global_settings(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_global_settings(Client, QueryMap, HeadersMap, []).

-spec get_global_settings(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_global_settings_output(), tuple()} |
    {error, any()} |
    {error, get_global_settings_errors(), tuple()}.
get_global_settings(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/global-settings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get an existing lens.
-spec get_lens(aws_client:aws_client(), binary() | list()) ->
    {ok, get_lens_output(), tuple()} |
    {error, any()} |
    {error, get_lens_errors(), tuple()}.
get_lens(Client, LensAlias)
  when is_map(Client) ->
    get_lens(Client, LensAlias, #{}, #{}).

-spec get_lens(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_lens_output(), tuple()} |
    {error, any()} |
    {error, get_lens_errors(), tuple()}.
get_lens(Client, LensAlias, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_lens(Client, LensAlias, QueryMap, HeadersMap, []).

-spec get_lens(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_lens_output(), tuple()} |
    {error, any()} |
    {error, get_lens_errors(), tuple()}.
get_lens(Client, LensAlias, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/lenses/", aws_util:encode_uri(LensAlias), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"LensVersion">>, maps:get(<<"LensVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get lens review.
-spec get_lens_review(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_lens_review_output(), tuple()} |
    {error, any()} |
    {error, get_lens_review_errors(), tuple()}.
get_lens_review(Client, LensAlias, WorkloadId)
  when is_map(Client) ->
    get_lens_review(Client, LensAlias, WorkloadId, #{}, #{}).

-spec get_lens_review(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_lens_review_output(), tuple()} |
    {error, any()} |
    {error, get_lens_review_errors(), tuple()}.
get_lens_review(Client, LensAlias, WorkloadId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_lens_review(Client, LensAlias, WorkloadId, QueryMap, HeadersMap, []).

-spec get_lens_review(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_lens_review_output(), tuple()} |
    {error, any()} |
    {error, get_lens_review_errors(), tuple()}.
get_lens_review(Client, LensAlias, WorkloadId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/lensReviews/", aws_util:encode_uri(LensAlias), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MilestoneNumber">>, maps:get(<<"MilestoneNumber">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get lens review report.
-spec get_lens_review_report(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_lens_review_report_output(), tuple()} |
    {error, any()} |
    {error, get_lens_review_report_errors(), tuple()}.
get_lens_review_report(Client, LensAlias, WorkloadId)
  when is_map(Client) ->
    get_lens_review_report(Client, LensAlias, WorkloadId, #{}, #{}).

-spec get_lens_review_report(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_lens_review_report_output(), tuple()} |
    {error, any()} |
    {error, get_lens_review_report_errors(), tuple()}.
get_lens_review_report(Client, LensAlias, WorkloadId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_lens_review_report(Client, LensAlias, WorkloadId, QueryMap, HeadersMap, []).

-spec get_lens_review_report(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_lens_review_report_output(), tuple()} |
    {error, any()} |
    {error, get_lens_review_report_errors(), tuple()}.
get_lens_review_report(Client, LensAlias, WorkloadId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/lensReviews/", aws_util:encode_uri(LensAlias), "/report"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MilestoneNumber">>, maps:get(<<"MilestoneNumber">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get lens version differences.
-spec get_lens_version_difference(aws_client:aws_client(), binary() | list()) ->
    {ok, get_lens_version_difference_output(), tuple()} |
    {error, any()} |
    {error, get_lens_version_difference_errors(), tuple()}.
get_lens_version_difference(Client, LensAlias)
  when is_map(Client) ->
    get_lens_version_difference(Client, LensAlias, #{}, #{}).

-spec get_lens_version_difference(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_lens_version_difference_output(), tuple()} |
    {error, any()} |
    {error, get_lens_version_difference_errors(), tuple()}.
get_lens_version_difference(Client, LensAlias, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_lens_version_difference(Client, LensAlias, QueryMap, HeadersMap, []).

-spec get_lens_version_difference(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_lens_version_difference_output(), tuple()} |
    {error, any()} |
    {error, get_lens_version_difference_errors(), tuple()}.
get_lens_version_difference(Client, LensAlias, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/lenses/", aws_util:encode_uri(LensAlias), "/versionDifference"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"BaseLensVersion">>, maps:get(<<"BaseLensVersion">>, QueryMap, undefined)},
        {<<"TargetLensVersion">>, maps:get(<<"TargetLensVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a milestone for an existing workload.
-spec get_milestone(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_milestone_output(), tuple()} |
    {error, any()} |
    {error, get_milestone_errors(), tuple()}.
get_milestone(Client, MilestoneNumber, WorkloadId)
  when is_map(Client) ->
    get_milestone(Client, MilestoneNumber, WorkloadId, #{}, #{}).

-spec get_milestone(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_milestone_output(), tuple()} |
    {error, any()} |
    {error, get_milestone_errors(), tuple()}.
get_milestone(Client, MilestoneNumber, WorkloadId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_milestone(Client, MilestoneNumber, WorkloadId, QueryMap, HeadersMap, []).

-spec get_milestone(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_milestone_output(), tuple()} |
    {error, any()} |
    {error, get_milestone_errors(), tuple()}.
get_milestone(Client, MilestoneNumber, WorkloadId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/milestones/", aws_util:encode_uri(MilestoneNumber), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get profile information.
-spec get_profile(aws_client:aws_client(), binary() | list()) ->
    {ok, get_profile_output(), tuple()} |
    {error, any()} |
    {error, get_profile_errors(), tuple()}.
get_profile(Client, ProfileArn)
  when is_map(Client) ->
    get_profile(Client, ProfileArn, #{}, #{}).

-spec get_profile(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_profile_output(), tuple()} |
    {error, any()} |
    {error, get_profile_errors(), tuple()}.
get_profile(Client, ProfileArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_profile(Client, ProfileArn, QueryMap, HeadersMap, []).

-spec get_profile(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_profile_output(), tuple()} |
    {error, any()} |
    {error, get_profile_errors(), tuple()}.
get_profile(Client, ProfileArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profiles/", aws_util:encode_uri(ProfileArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"ProfileVersion">>, maps:get(<<"ProfileVersion">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get profile template.
-spec get_profile_template(aws_client:aws_client()) ->
    {ok, get_profile_template_output(), tuple()} |
    {error, any()} |
    {error, get_profile_template_errors(), tuple()}.
get_profile_template(Client)
  when is_map(Client) ->
    get_profile_template(Client, #{}, #{}).

-spec get_profile_template(aws_client:aws_client(), map(), map()) ->
    {ok, get_profile_template_output(), tuple()} |
    {error, any()} |
    {error, get_profile_template_errors(), tuple()}.
get_profile_template(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_profile_template(Client, QueryMap, HeadersMap, []).

-spec get_profile_template(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_profile_template_output(), tuple()} |
    {error, any()} |
    {error, get_profile_template_errors(), tuple()}.
get_profile_template(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profileTemplate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get review template.
-spec get_review_template(aws_client:aws_client(), binary() | list()) ->
    {ok, get_review_template_output(), tuple()} |
    {error, any()} |
    {error, get_review_template_errors(), tuple()}.
get_review_template(Client, TemplateArn)
  when is_map(Client) ->
    get_review_template(Client, TemplateArn, #{}, #{}).

-spec get_review_template(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_review_template_output(), tuple()} |
    {error, any()} |
    {error, get_review_template_errors(), tuple()}.
get_review_template(Client, TemplateArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_review_template(Client, TemplateArn, QueryMap, HeadersMap, []).

-spec get_review_template(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_review_template_output(), tuple()} |
    {error, any()} |
    {error, get_review_template_errors(), tuple()}.
get_review_template(Client, TemplateArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/reviewTemplates/", aws_util:encode_uri(TemplateArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get review template answer.
-spec get_review_template_answer(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_review_template_answer_output(), tuple()} |
    {error, any()} |
    {error, get_review_template_answer_errors(), tuple()}.
get_review_template_answer(Client, LensAlias, QuestionId, TemplateArn)
  when is_map(Client) ->
    get_review_template_answer(Client, LensAlias, QuestionId, TemplateArn, #{}, #{}).

-spec get_review_template_answer(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_review_template_answer_output(), tuple()} |
    {error, any()} |
    {error, get_review_template_answer_errors(), tuple()}.
get_review_template_answer(Client, LensAlias, QuestionId, TemplateArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_review_template_answer(Client, LensAlias, QuestionId, TemplateArn, QueryMap, HeadersMap, []).

-spec get_review_template_answer(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_review_template_answer_output(), tuple()} |
    {error, any()} |
    {error, get_review_template_answer_errors(), tuple()}.
get_review_template_answer(Client, LensAlias, QuestionId, TemplateArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/reviewTemplates/", aws_util:encode_uri(TemplateArn), "/lensReviews/", aws_util:encode_uri(LensAlias), "/answers/", aws_util:encode_uri(QuestionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a lens review associated with a review template.
-spec get_review_template_lens_review(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_review_template_lens_review_output(), tuple()} |
    {error, any()} |
    {error, get_review_template_lens_review_errors(), tuple()}.
get_review_template_lens_review(Client, LensAlias, TemplateArn)
  when is_map(Client) ->
    get_review_template_lens_review(Client, LensAlias, TemplateArn, #{}, #{}).

-spec get_review_template_lens_review(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_review_template_lens_review_output(), tuple()} |
    {error, any()} |
    {error, get_review_template_lens_review_errors(), tuple()}.
get_review_template_lens_review(Client, LensAlias, TemplateArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_review_template_lens_review(Client, LensAlias, TemplateArn, QueryMap, HeadersMap, []).

-spec get_review_template_lens_review(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_review_template_lens_review_output(), tuple()} |
    {error, any()} |
    {error, get_review_template_lens_review_errors(), tuple()}.
get_review_template_lens_review(Client, LensAlias, TemplateArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/reviewTemplates/", aws_util:encode_uri(TemplateArn), "/lensReviews/", aws_util:encode_uri(LensAlias), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get an existing workload.
-spec get_workload(aws_client:aws_client(), binary() | list()) ->
    {ok, get_workload_output(), tuple()} |
    {error, any()} |
    {error, get_workload_errors(), tuple()}.
get_workload(Client, WorkloadId)
  when is_map(Client) ->
    get_workload(Client, WorkloadId, #{}, #{}).

-spec get_workload(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_workload_output(), tuple()} |
    {error, any()} |
    {error, get_workload_errors(), tuple()}.
get_workload(Client, WorkloadId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_workload(Client, WorkloadId, QueryMap, HeadersMap, []).

-spec get_workload(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_workload_output(), tuple()} |
    {error, any()} |
    {error, get_workload_errors(), tuple()}.
get_workload(Client, WorkloadId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Import a new custom lens or update an existing custom lens.
%%
%% To update an existing custom lens, specify its ARN as the `LensAlias'.
%% If
%% no ARN is specified, a new custom lens is created.
%%
%% The new or updated lens will have a status of `DRAFT'. The lens cannot
%% be
%% applied to workloads or shared with other Amazon Web Services accounts
%% until it's
%% published with `CreateLensVersion'.
%%
%% Lenses are defined in JSON. For more information, see JSON format
%% specification:
%% https://docs.aws.amazon.com/wellarchitected/latest/userguide/lenses-format-specification.html
%% in the Well-Architected Tool User Guide.
%%
%% A custom lens cannot exceed 500 KB in size.
%%
%% Disclaimer
%%
%% Do not include or gather personal identifiable information (PII) of end
%% users or
%% other identifiable individuals in or via your custom lenses. If your
%% custom
%% lens or those shared with you and used in your account do include or
%% collect
%% PII you are responsible for: ensuring that the included PII is processed
%% in accordance
%% with applicable law, providing adequate privacy notices, and obtaining
%% necessary
%% consents for processing such data.
-spec import_lens(aws_client:aws_client(), import_lens_input()) ->
    {ok, import_lens_output(), tuple()} |
    {error, any()} |
    {error, import_lens_errors(), tuple()}.
import_lens(Client, Input) ->
    import_lens(Client, Input, []).

-spec import_lens(aws_client:aws_client(), import_lens_input(), proplists:proplist()) ->
    {ok, import_lens_output(), tuple()} |
    {error, any()} |
    {error, import_lens_errors(), tuple()}.
import_lens(Client, Input0, Options0) ->
    Method = put,
    Path = ["/importLens"],
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

%% @doc List of answers for a particular workload and lens.
-spec list_answers(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_answers_output(), tuple()} |
    {error, any()} |
    {error, list_answers_errors(), tuple()}.
list_answers(Client, LensAlias, WorkloadId)
  when is_map(Client) ->
    list_answers(Client, LensAlias, WorkloadId, #{}, #{}).

-spec list_answers(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_answers_output(), tuple()} |
    {error, any()} |
    {error, list_answers_errors(), tuple()}.
list_answers(Client, LensAlias, WorkloadId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_answers(Client, LensAlias, WorkloadId, QueryMap, HeadersMap, []).

-spec list_answers(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_answers_output(), tuple()} |
    {error, any()} |
    {error, list_answers_errors(), tuple()}.
list_answers(Client, LensAlias, WorkloadId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/lensReviews/", aws_util:encode_uri(LensAlias), "/answers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"MilestoneNumber">>, maps:get(<<"MilestoneNumber">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PillarId">>, maps:get(<<"PillarId">>, QueryMap, undefined)},
        {<<"QuestionPriority">>, maps:get(<<"QuestionPriority">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List of Trusted Advisor check details by account related to the
%% workload.
-spec list_check_details(aws_client:aws_client(), binary() | list(), list_check_details_input()) ->
    {ok, list_check_details_output(), tuple()} |
    {error, any()} |
    {error, list_check_details_errors(), tuple()}.
list_check_details(Client, WorkloadId, Input) ->
    list_check_details(Client, WorkloadId, Input, []).

-spec list_check_details(aws_client:aws_client(), binary() | list(), list_check_details_input(), proplists:proplist()) ->
    {ok, list_check_details_output(), tuple()} |
    {error, any()} |
    {error, list_check_details_errors(), tuple()}.
list_check_details(Client, WorkloadId, Input0, Options0) ->
    Method = post,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/checks"],
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

%% @doc List of Trusted Advisor checks summarized for all accounts related to
%% the workload.
-spec list_check_summaries(aws_client:aws_client(), binary() | list(), list_check_summaries_input()) ->
    {ok, list_check_summaries_output(), tuple()} |
    {error, any()} |
    {error, list_check_summaries_errors(), tuple()}.
list_check_summaries(Client, WorkloadId, Input) ->
    list_check_summaries(Client, WorkloadId, Input, []).

-spec list_check_summaries(aws_client:aws_client(), binary() | list(), list_check_summaries_input(), proplists:proplist()) ->
    {ok, list_check_summaries_output(), tuple()} |
    {error, any()} |
    {error, list_check_summaries_errors(), tuple()}.
list_check_summaries(Client, WorkloadId, Input0, Options0) ->
    Method = post,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/checkSummaries"],
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

%% @doc List the improvements of a particular lens review.
-spec list_lens_review_improvements(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_lens_review_improvements_output(), tuple()} |
    {error, any()} |
    {error, list_lens_review_improvements_errors(), tuple()}.
list_lens_review_improvements(Client, LensAlias, WorkloadId)
  when is_map(Client) ->
    list_lens_review_improvements(Client, LensAlias, WorkloadId, #{}, #{}).

-spec list_lens_review_improvements(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_lens_review_improvements_output(), tuple()} |
    {error, any()} |
    {error, list_lens_review_improvements_errors(), tuple()}.
list_lens_review_improvements(Client, LensAlias, WorkloadId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_lens_review_improvements(Client, LensAlias, WorkloadId, QueryMap, HeadersMap, []).

-spec list_lens_review_improvements(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_lens_review_improvements_output(), tuple()} |
    {error, any()} |
    {error, list_lens_review_improvements_errors(), tuple()}.
list_lens_review_improvements(Client, LensAlias, WorkloadId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/lensReviews/", aws_util:encode_uri(LensAlias), "/improvements"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"MilestoneNumber">>, maps:get(<<"MilestoneNumber">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PillarId">>, maps:get(<<"PillarId">>, QueryMap, undefined)},
        {<<"QuestionPriority">>, maps:get(<<"QuestionPriority">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List lens reviews for a particular workload.
-spec list_lens_reviews(aws_client:aws_client(), binary() | list()) ->
    {ok, list_lens_reviews_output(), tuple()} |
    {error, any()} |
    {error, list_lens_reviews_errors(), tuple()}.
list_lens_reviews(Client, WorkloadId)
  when is_map(Client) ->
    list_lens_reviews(Client, WorkloadId, #{}, #{}).

-spec list_lens_reviews(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_lens_reviews_output(), tuple()} |
    {error, any()} |
    {error, list_lens_reviews_errors(), tuple()}.
list_lens_reviews(Client, WorkloadId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_lens_reviews(Client, WorkloadId, QueryMap, HeadersMap, []).

-spec list_lens_reviews(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_lens_reviews_output(), tuple()} |
    {error, any()} |
    {error, list_lens_reviews_errors(), tuple()}.
list_lens_reviews(Client, WorkloadId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/lensReviews"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"MilestoneNumber">>, maps:get(<<"MilestoneNumber">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the lens shares associated with the lens.
-spec list_lens_shares(aws_client:aws_client(), binary() | list()) ->
    {ok, list_lens_shares_output(), tuple()} |
    {error, any()} |
    {error, list_lens_shares_errors(), tuple()}.
list_lens_shares(Client, LensAlias)
  when is_map(Client) ->
    list_lens_shares(Client, LensAlias, #{}, #{}).

-spec list_lens_shares(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_lens_shares_output(), tuple()} |
    {error, any()} |
    {error, list_lens_shares_errors(), tuple()}.
list_lens_shares(Client, LensAlias, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_lens_shares(Client, LensAlias, QueryMap, HeadersMap, []).

-spec list_lens_shares(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_lens_shares_output(), tuple()} |
    {error, any()} |
    {error, list_lens_shares_errors(), tuple()}.
list_lens_shares(Client, LensAlias, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/lenses/", aws_util:encode_uri(LensAlias), "/shares"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"SharedWithPrefix">>, maps:get(<<"SharedWithPrefix">>, QueryMap, undefined)},
        {<<"Status">>, maps:get(<<"Status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the available lenses.
-spec list_lenses(aws_client:aws_client()) ->
    {ok, list_lenses_output(), tuple()} |
    {error, any()} |
    {error, list_lenses_errors(), tuple()}.
list_lenses(Client)
  when is_map(Client) ->
    list_lenses(Client, #{}, #{}).

-spec list_lenses(aws_client:aws_client(), map(), map()) ->
    {ok, list_lenses_output(), tuple()} |
    {error, any()} |
    {error, list_lenses_errors(), tuple()}.
list_lenses(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_lenses(Client, QueryMap, HeadersMap, []).

-spec list_lenses(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_lenses_output(), tuple()} |
    {error, any()} |
    {error, list_lenses_errors(), tuple()}.
list_lenses(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/lenses"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"LensName">>, maps:get(<<"LensName">>, QueryMap, undefined)},
        {<<"LensStatus">>, maps:get(<<"LensStatus">>, QueryMap, undefined)},
        {<<"LensType">>, maps:get(<<"LensType">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all milestones for an existing workload.
-spec list_milestones(aws_client:aws_client(), binary() | list(), list_milestones_input()) ->
    {ok, list_milestones_output(), tuple()} |
    {error, any()} |
    {error, list_milestones_errors(), tuple()}.
list_milestones(Client, WorkloadId, Input) ->
    list_milestones(Client, WorkloadId, Input, []).

-spec list_milestones(aws_client:aws_client(), binary() | list(), list_milestones_input(), proplists:proplist()) ->
    {ok, list_milestones_output(), tuple()} |
    {error, any()} |
    {error, list_milestones_errors(), tuple()}.
list_milestones(Client, WorkloadId, Input0, Options0) ->
    Method = post,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/milestonesSummaries"],
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

%% @doc List lens notifications.
-spec list_notifications(aws_client:aws_client(), list_notifications_input()) ->
    {ok, list_notifications_output(), tuple()} |
    {error, any()} |
    {error, list_notifications_errors(), tuple()}.
list_notifications(Client, Input) ->
    list_notifications(Client, Input, []).

-spec list_notifications(aws_client:aws_client(), list_notifications_input(), proplists:proplist()) ->
    {ok, list_notifications_output(), tuple()} |
    {error, any()} |
    {error, list_notifications_errors(), tuple()}.
list_notifications(Client, Input0, Options0) ->
    Method = post,
    Path = ["/notifications"],
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

%% @doc List profile notifications.
-spec list_profile_notifications(aws_client:aws_client()) ->
    {ok, list_profile_notifications_output(), tuple()} |
    {error, any()} |
    {error, list_profile_notifications_errors(), tuple()}.
list_profile_notifications(Client)
  when is_map(Client) ->
    list_profile_notifications(Client, #{}, #{}).

-spec list_profile_notifications(aws_client:aws_client(), map(), map()) ->
    {ok, list_profile_notifications_output(), tuple()} |
    {error, any()} |
    {error, list_profile_notifications_errors(), tuple()}.
list_profile_notifications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profile_notifications(Client, QueryMap, HeadersMap, []).

-spec list_profile_notifications(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_profile_notifications_output(), tuple()} |
    {error, any()} |
    {error, list_profile_notifications_errors(), tuple()}.
list_profile_notifications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profileNotifications"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"WorkloadId">>, maps:get(<<"WorkloadId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List profile shares.
-spec list_profile_shares(aws_client:aws_client(), binary() | list()) ->
    {ok, list_profile_shares_output(), tuple()} |
    {error, any()} |
    {error, list_profile_shares_errors(), tuple()}.
list_profile_shares(Client, ProfileArn)
  when is_map(Client) ->
    list_profile_shares(Client, ProfileArn, #{}, #{}).

-spec list_profile_shares(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_profile_shares_output(), tuple()} |
    {error, any()} |
    {error, list_profile_shares_errors(), tuple()}.
list_profile_shares(Client, ProfileArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profile_shares(Client, ProfileArn, QueryMap, HeadersMap, []).

-spec list_profile_shares(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_profile_shares_output(), tuple()} |
    {error, any()} |
    {error, list_profile_shares_errors(), tuple()}.
list_profile_shares(Client, ProfileArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profiles/", aws_util:encode_uri(ProfileArn), "/shares"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"SharedWithPrefix">>, maps:get(<<"SharedWithPrefix">>, QueryMap, undefined)},
        {<<"Status">>, maps:get(<<"Status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List profiles.
-spec list_profiles(aws_client:aws_client()) ->
    {ok, list_profiles_output(), tuple()} |
    {error, any()} |
    {error, list_profiles_errors(), tuple()}.
list_profiles(Client)
  when is_map(Client) ->
    list_profiles(Client, #{}, #{}).

-spec list_profiles(aws_client:aws_client(), map(), map()) ->
    {ok, list_profiles_output(), tuple()} |
    {error, any()} |
    {error, list_profiles_errors(), tuple()}.
list_profiles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profiles(Client, QueryMap, HeadersMap, []).

-spec list_profiles(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_profiles_output(), tuple()} |
    {error, any()} |
    {error, list_profiles_errors(), tuple()}.
list_profiles(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profileSummaries"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"ProfileNamePrefix">>, maps:get(<<"ProfileNamePrefix">>, QueryMap, undefined)},
        {<<"ProfileOwnerType">>, maps:get(<<"ProfileOwnerType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the answers of a review template.
-spec list_review_template_answers(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_review_template_answers_output(), tuple()} |
    {error, any()} |
    {error, list_review_template_answers_errors(), tuple()}.
list_review_template_answers(Client, LensAlias, TemplateArn)
  when is_map(Client) ->
    list_review_template_answers(Client, LensAlias, TemplateArn, #{}, #{}).

-spec list_review_template_answers(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_review_template_answers_output(), tuple()} |
    {error, any()} |
    {error, list_review_template_answers_errors(), tuple()}.
list_review_template_answers(Client, LensAlias, TemplateArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_review_template_answers(Client, LensAlias, TemplateArn, QueryMap, HeadersMap, []).

-spec list_review_template_answers(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_review_template_answers_output(), tuple()} |
    {error, any()} |
    {error, list_review_template_answers_errors(), tuple()}.
list_review_template_answers(Client, LensAlias, TemplateArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/reviewTemplates/", aws_util:encode_uri(TemplateArn), "/lensReviews/", aws_util:encode_uri(LensAlias), "/answers"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"PillarId">>, maps:get(<<"PillarId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List review templates.
-spec list_review_templates(aws_client:aws_client()) ->
    {ok, list_review_templates_output(), tuple()} |
    {error, any()} |
    {error, list_review_templates_errors(), tuple()}.
list_review_templates(Client)
  when is_map(Client) ->
    list_review_templates(Client, #{}, #{}).

-spec list_review_templates(aws_client:aws_client(), map(), map()) ->
    {ok, list_review_templates_output(), tuple()} |
    {error, any()} |
    {error, list_review_templates_errors(), tuple()}.
list_review_templates(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_review_templates(Client, QueryMap, HeadersMap, []).

-spec list_review_templates(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_review_templates_output(), tuple()} |
    {error, any()} |
    {error, list_review_templates_errors(), tuple()}.
list_review_templates(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/reviewTemplates"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the share invitations.
%%
%% `WorkloadNamePrefix', `LensNamePrefix',
%% `ProfileNamePrefix', and `TemplateNamePrefix' are mutually
%% exclusive. Use the parameter that matches your `ShareResourceType'.
-spec list_share_invitations(aws_client:aws_client()) ->
    {ok, list_share_invitations_output(), tuple()} |
    {error, any()} |
    {error, list_share_invitations_errors(), tuple()}.
list_share_invitations(Client)
  when is_map(Client) ->
    list_share_invitations(Client, #{}, #{}).

-spec list_share_invitations(aws_client:aws_client(), map(), map()) ->
    {ok, list_share_invitations_output(), tuple()} |
    {error, any()} |
    {error, list_share_invitations_errors(), tuple()}.
list_share_invitations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_share_invitations(Client, QueryMap, HeadersMap, []).

-spec list_share_invitations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_share_invitations_output(), tuple()} |
    {error, any()} |
    {error, list_share_invitations_errors(), tuple()}.
list_share_invitations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/shareInvitations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"LensNamePrefix">>, maps:get(<<"LensNamePrefix">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"ProfileNamePrefix">>, maps:get(<<"ProfileNamePrefix">>, QueryMap, undefined)},
        {<<"ShareResourceType">>, maps:get(<<"ShareResourceType">>, QueryMap, undefined)},
        {<<"TemplateNamePrefix">>, maps:get(<<"TemplateNamePrefix">>, QueryMap, undefined)},
        {<<"WorkloadNamePrefix">>, maps:get(<<"WorkloadNamePrefix">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the tags for a resource.
%%
%% The WorkloadArn parameter can be a workload ARN, a custom lens ARN, a
%% profile ARN, or review template ARN.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, WorkloadArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, WorkloadArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, WorkloadArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, WorkloadArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, WorkloadArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(WorkloadArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List review template shares.
-spec list_template_shares(aws_client:aws_client(), binary() | list()) ->
    {ok, list_template_shares_output(), tuple()} |
    {error, any()} |
    {error, list_template_shares_errors(), tuple()}.
list_template_shares(Client, TemplateArn)
  when is_map(Client) ->
    list_template_shares(Client, TemplateArn, #{}, #{}).

-spec list_template_shares(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_template_shares_output(), tuple()} |
    {error, any()} |
    {error, list_template_shares_errors(), tuple()}.
list_template_shares(Client, TemplateArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_template_shares(Client, TemplateArn, QueryMap, HeadersMap, []).

-spec list_template_shares(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_template_shares_output(), tuple()} |
    {error, any()} |
    {error, list_template_shares_errors(), tuple()}.
list_template_shares(Client, TemplateArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/templates/shares/", aws_util:encode_uri(TemplateArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"SharedWithPrefix">>, maps:get(<<"SharedWithPrefix">>, QueryMap, undefined)},
        {<<"Status">>, maps:get(<<"Status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the workload shares associated with the workload.
-spec list_workload_shares(aws_client:aws_client(), binary() | list()) ->
    {ok, list_workload_shares_output(), tuple()} |
    {error, any()} |
    {error, list_workload_shares_errors(), tuple()}.
list_workload_shares(Client, WorkloadId)
  when is_map(Client) ->
    list_workload_shares(Client, WorkloadId, #{}, #{}).

-spec list_workload_shares(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_workload_shares_output(), tuple()} |
    {error, any()} |
    {error, list_workload_shares_errors(), tuple()}.
list_workload_shares(Client, WorkloadId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_workload_shares(Client, WorkloadId, QueryMap, HeadersMap, []).

-spec list_workload_shares(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_workload_shares_output(), tuple()} |
    {error, any()} |
    {error, list_workload_shares_errors(), tuple()}.
list_workload_shares(Client, WorkloadId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/shares"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"SharedWithPrefix">>, maps:get(<<"SharedWithPrefix">>, QueryMap, undefined)},
        {<<"Status">>, maps:get(<<"Status">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Paginated list of workloads.
-spec list_workloads(aws_client:aws_client(), list_workloads_input()) ->
    {ok, list_workloads_output(), tuple()} |
    {error, any()} |
    {error, list_workloads_errors(), tuple()}.
list_workloads(Client, Input) ->
    list_workloads(Client, Input, []).

-spec list_workloads(aws_client:aws_client(), list_workloads_input(), proplists:proplist()) ->
    {ok, list_workloads_output(), tuple()} |
    {error, any()} |
    {error, list_workloads_errors(), tuple()}.
list_workloads(Client, Input0, Options0) ->
    Method = post,
    Path = ["/workloadsSummaries"],
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

%% @doc Adds one or more tags to the specified resource.
%%
%% The WorkloadArn parameter can be a workload ARN, a custom lens ARN, a
%% profile ARN, or review template ARN.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, WorkloadArn, Input) ->
    tag_resource(Client, WorkloadArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, WorkloadArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(WorkloadArn), ""],
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

%% @doc Deletes specified tags from a resource.
%%
%% The WorkloadArn parameter can be a workload ARN, a custom lens ARN, a
%% profile ARN, or review template ARN.
%%
%% To specify multiple tags, use separate tagKeys parameters, for example:
%%
%% `DELETE /tags/WorkloadArn?tagKeys=key1&amp;tagKeys=key2'
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, WorkloadArn, Input) ->
    untag_resource(Client, WorkloadArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, WorkloadArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(WorkloadArn), ""],
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update the answer to a specific question in a workload review.
-spec update_answer(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_answer_input()) ->
    {ok, update_answer_output(), tuple()} |
    {error, any()} |
    {error, update_answer_errors(), tuple()}.
update_answer(Client, LensAlias, QuestionId, WorkloadId, Input) ->
    update_answer(Client, LensAlias, QuestionId, WorkloadId, Input, []).

-spec update_answer(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_answer_input(), proplists:proplist()) ->
    {ok, update_answer_output(), tuple()} |
    {error, any()} |
    {error, update_answer_errors(), tuple()}.
update_answer(Client, LensAlias, QuestionId, WorkloadId, Input0, Options0) ->
    Method = patch,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/lensReviews/", aws_util:encode_uri(LensAlias), "/answers/", aws_util:encode_uri(QuestionId), ""],
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

%% @doc Update whether the Amazon Web Services account is opted into
%% organization sharing and discovery integration features.
-spec update_global_settings(aws_client:aws_client(), update_global_settings_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_global_settings_errors(), tuple()}.
update_global_settings(Client, Input) ->
    update_global_settings(Client, Input, []).

-spec update_global_settings(aws_client:aws_client(), update_global_settings_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_global_settings_errors(), tuple()}.
update_global_settings(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/global-settings"],
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

%% @doc Update integration features.
-spec update_integration(aws_client:aws_client(), binary() | list(), update_integration_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_integration_errors(), tuple()}.
update_integration(Client, WorkloadId, Input) ->
    update_integration(Client, WorkloadId, Input, []).

-spec update_integration(aws_client:aws_client(), binary() | list(), update_integration_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_integration_errors(), tuple()}.
update_integration(Client, WorkloadId, Input0, Options0) ->
    Method = post,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/updateIntegration"],
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

%% @doc Update lens review for a particular workload.
-spec update_lens_review(aws_client:aws_client(), binary() | list(), binary() | list(), update_lens_review_input()) ->
    {ok, update_lens_review_output(), tuple()} |
    {error, any()} |
    {error, update_lens_review_errors(), tuple()}.
update_lens_review(Client, LensAlias, WorkloadId, Input) ->
    update_lens_review(Client, LensAlias, WorkloadId, Input, []).

-spec update_lens_review(aws_client:aws_client(), binary() | list(), binary() | list(), update_lens_review_input(), proplists:proplist()) ->
    {ok, update_lens_review_output(), tuple()} |
    {error, any()} |
    {error, update_lens_review_errors(), tuple()}.
update_lens_review(Client, LensAlias, WorkloadId, Input0, Options0) ->
    Method = patch,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/lensReviews/", aws_util:encode_uri(LensAlias), ""],
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

%% @doc Update a profile.
-spec update_profile(aws_client:aws_client(), binary() | list(), update_profile_input()) ->
    {ok, update_profile_output(), tuple()} |
    {error, any()} |
    {error, update_profile_errors(), tuple()}.
update_profile(Client, ProfileArn, Input) ->
    update_profile(Client, ProfileArn, Input, []).

-spec update_profile(aws_client:aws_client(), binary() | list(), update_profile_input(), proplists:proplist()) ->
    {ok, update_profile_output(), tuple()} |
    {error, any()} |
    {error, update_profile_errors(), tuple()}.
update_profile(Client, ProfileArn, Input0, Options0) ->
    Method = patch,
    Path = ["/profiles/", aws_util:encode_uri(ProfileArn), ""],
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

%% @doc Update a review template.
-spec update_review_template(aws_client:aws_client(), binary() | list(), update_review_template_input()) ->
    {ok, update_review_template_output(), tuple()} |
    {error, any()} |
    {error, update_review_template_errors(), tuple()}.
update_review_template(Client, TemplateArn, Input) ->
    update_review_template(Client, TemplateArn, Input, []).

-spec update_review_template(aws_client:aws_client(), binary() | list(), update_review_template_input(), proplists:proplist()) ->
    {ok, update_review_template_output(), tuple()} |
    {error, any()} |
    {error, update_review_template_errors(), tuple()}.
update_review_template(Client, TemplateArn, Input0, Options0) ->
    Method = patch,
    Path = ["/reviewTemplates/", aws_util:encode_uri(TemplateArn), ""],
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

%% @doc Update a review template answer.
-spec update_review_template_answer(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_review_template_answer_input()) ->
    {ok, update_review_template_answer_output(), tuple()} |
    {error, any()} |
    {error, update_review_template_answer_errors(), tuple()}.
update_review_template_answer(Client, LensAlias, QuestionId, TemplateArn, Input) ->
    update_review_template_answer(Client, LensAlias, QuestionId, TemplateArn, Input, []).

-spec update_review_template_answer(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_review_template_answer_input(), proplists:proplist()) ->
    {ok, update_review_template_answer_output(), tuple()} |
    {error, any()} |
    {error, update_review_template_answer_errors(), tuple()}.
update_review_template_answer(Client, LensAlias, QuestionId, TemplateArn, Input0, Options0) ->
    Method = patch,
    Path = ["/reviewTemplates/", aws_util:encode_uri(TemplateArn), "/lensReviews/", aws_util:encode_uri(LensAlias), "/answers/", aws_util:encode_uri(QuestionId), ""],
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

%% @doc Update a lens review associated with a review template.
-spec update_review_template_lens_review(aws_client:aws_client(), binary() | list(), binary() | list(), update_review_template_lens_review_input()) ->
    {ok, update_review_template_lens_review_output(), tuple()} |
    {error, any()} |
    {error, update_review_template_lens_review_errors(), tuple()}.
update_review_template_lens_review(Client, LensAlias, TemplateArn, Input) ->
    update_review_template_lens_review(Client, LensAlias, TemplateArn, Input, []).

-spec update_review_template_lens_review(aws_client:aws_client(), binary() | list(), binary() | list(), update_review_template_lens_review_input(), proplists:proplist()) ->
    {ok, update_review_template_lens_review_output(), tuple()} |
    {error, any()} |
    {error, update_review_template_lens_review_errors(), tuple()}.
update_review_template_lens_review(Client, LensAlias, TemplateArn, Input0, Options0) ->
    Method = patch,
    Path = ["/reviewTemplates/", aws_util:encode_uri(TemplateArn), "/lensReviews/", aws_util:encode_uri(LensAlias), ""],
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

%% @doc Update a workload or custom lens share invitation.
%%
%% This API operation can be called independently of any resource. Previous
%% documentation implied that a workload ARN must be specified.
-spec update_share_invitation(aws_client:aws_client(), binary() | list(), update_share_invitation_input()) ->
    {ok, update_share_invitation_output(), tuple()} |
    {error, any()} |
    {error, update_share_invitation_errors(), tuple()}.
update_share_invitation(Client, ShareInvitationId, Input) ->
    update_share_invitation(Client, ShareInvitationId, Input, []).

-spec update_share_invitation(aws_client:aws_client(), binary() | list(), update_share_invitation_input(), proplists:proplist()) ->
    {ok, update_share_invitation_output(), tuple()} |
    {error, any()} |
    {error, update_share_invitation_errors(), tuple()}.
update_share_invitation(Client, ShareInvitationId, Input0, Options0) ->
    Method = patch,
    Path = ["/shareInvitations/", aws_util:encode_uri(ShareInvitationId), ""],
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

%% @doc Update an existing workload.
-spec update_workload(aws_client:aws_client(), binary() | list(), update_workload_input()) ->
    {ok, update_workload_output(), tuple()} |
    {error, any()} |
    {error, update_workload_errors(), tuple()}.
update_workload(Client, WorkloadId, Input) ->
    update_workload(Client, WorkloadId, Input, []).

-spec update_workload(aws_client:aws_client(), binary() | list(), update_workload_input(), proplists:proplist()) ->
    {ok, update_workload_output(), tuple()} |
    {error, any()} |
    {error, update_workload_errors(), tuple()}.
update_workload(Client, WorkloadId, Input0, Options0) ->
    Method = patch,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), ""],
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

%% @doc Update a workload share.
-spec update_workload_share(aws_client:aws_client(), binary() | list(), binary() | list(), update_workload_share_input()) ->
    {ok, update_workload_share_output(), tuple()} |
    {error, any()} |
    {error, update_workload_share_errors(), tuple()}.
update_workload_share(Client, ShareId, WorkloadId, Input) ->
    update_workload_share(Client, ShareId, WorkloadId, Input, []).

-spec update_workload_share(aws_client:aws_client(), binary() | list(), binary() | list(), update_workload_share_input(), proplists:proplist()) ->
    {ok, update_workload_share_output(), tuple()} |
    {error, any()} |
    {error, update_workload_share_errors(), tuple()}.
update_workload_share(Client, ShareId, WorkloadId, Input0, Options0) ->
    Method = patch,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/shares/", aws_util:encode_uri(ShareId), ""],
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

%% @doc Upgrade lens review for a particular workload.
-spec upgrade_lens_review(aws_client:aws_client(), binary() | list(), binary() | list(), upgrade_lens_review_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, upgrade_lens_review_errors(), tuple()}.
upgrade_lens_review(Client, LensAlias, WorkloadId, Input) ->
    upgrade_lens_review(Client, LensAlias, WorkloadId, Input, []).

-spec upgrade_lens_review(aws_client:aws_client(), binary() | list(), binary() | list(), upgrade_lens_review_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, upgrade_lens_review_errors(), tuple()}.
upgrade_lens_review(Client, LensAlias, WorkloadId, Input0, Options0) ->
    Method = put,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/lensReviews/", aws_util:encode_uri(LensAlias), "/upgrade"],
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

%% @doc Upgrade a profile.
-spec upgrade_profile_version(aws_client:aws_client(), binary() | list(), binary() | list(), upgrade_profile_version_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, upgrade_profile_version_errors(), tuple()}.
upgrade_profile_version(Client, ProfileArn, WorkloadId, Input) ->
    upgrade_profile_version(Client, ProfileArn, WorkloadId, Input, []).

-spec upgrade_profile_version(aws_client:aws_client(), binary() | list(), binary() | list(), upgrade_profile_version_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, upgrade_profile_version_errors(), tuple()}.
upgrade_profile_version(Client, ProfileArn, WorkloadId, Input0, Options0) ->
    Method = put,
    Path = ["/workloads/", aws_util:encode_uri(WorkloadId), "/profiles/", aws_util:encode_uri(ProfileArn), "/upgrade"],
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

%% @doc Upgrade the lens review of a review template.
-spec upgrade_review_template_lens_review(aws_client:aws_client(), binary() | list(), binary() | list(), upgrade_review_template_lens_review_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, upgrade_review_template_lens_review_errors(), tuple()}.
upgrade_review_template_lens_review(Client, LensAlias, TemplateArn, Input) ->
    upgrade_review_template_lens_review(Client, LensAlias, TemplateArn, Input, []).

-spec upgrade_review_template_lens_review(aws_client:aws_client(), binary() | list(), binary() | list(), upgrade_review_template_lens_review_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, upgrade_review_template_lens_review_errors(), tuple()}.
upgrade_review_template_lens_review(Client, LensAlias, TemplateArn, Input0, Options0) ->
    Method = put,
    Path = ["/reviewTemplates/", aws_util:encode_uri(TemplateArn), "/lensReviews/", aws_util:encode_uri(LensAlias), "/upgrade"],
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
    Client1 = Client#{service => <<"wellarchitected">>},
    Host = build_host(<<"wellarchitected">>, Client1),
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
