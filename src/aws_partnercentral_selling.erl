%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Partner Central API for Selling
%%
%% AWS Partner Central API for Selling Reference
%% Guide
%%
%% This Amazon Web Services (AWS) Partner Central API reference is designed
%% to help
%% AWS Partners: http://aws.amazon.com/partners/programs/ integrate
%% Customer Relationship Management (CRM) systems with AWS Partner Central.
%%
%% Partners can
%% automate interactions with AWS Partner Central, which helps to ensure
%% effective
%% engagements in joint business activities.
%%
%% The API provides standard AWS API functionality. Access it by either using
%% API Actions:
%% https://docs.aws.amazon.com/partner-central/latest/selling-api/API_Operations.html
%% or by using an AWS SDK that's tailored to your programming language
%% or platform. For more information, see Getting Started with AWS:
%% http://aws.amazon.com/getting-started and Tools to Build on AWS:
%% http://aws.amazon.com/developer/tools/.
%%
%% == Features offered by AWS Partner Central API ==
%%
%% Opportunity management: Manages coselling
%% opportunities through API actions such as `CreateOpportunity',
%% `UpdateOpportunity', `ListOpportunities',
%% `GetOpportunity', and `AssignOpportunity'.
%%
%% AWS referral management: Manages referrals
%% shared by AWS using actions such as `ListEngagementInvitations',
%% `GetEngagementInvitation',
%% `StartEngagementByAcceptingInvitation', and
%% `RejectEngagementInvitation'.
%%
%% Entity association: Associates related
%% entities such as AWS Products, Partner
%% Solutions, and AWS Marketplace Private
%% Offers with opportunities using the actions
%% `AssociateOpportunity', and
%% `DisassociateOpportunity'.
%%
%% View AWS opportunity details: Retrieves
%% real-time summaries of AWS opportunities using the
%% `GetAWSOpportunitySummary' action.
%%
%% List solutions: Provides list APIs for
%% listing partner offers using `ListSolutions'.
%%
%% Event subscription: Subscribe to real-time
%% opportunity updates through AWS EventBridge by using actions such as
%% Opportunity Created, Opportunity
%% Updated, Engagement Invitation Accepted,
%% Engagement Invitation Rejected, and
%% Engagement Invitation Created.
-module(aws_partnercentral_selling).

-export([accept_engagement_invitation/2,
         accept_engagement_invitation/3,
         assign_opportunity/2,
         assign_opportunity/3,
         associate_opportunity/2,
         associate_opportunity/3,
         create_engagement/2,
         create_engagement/3,
         create_engagement_invitation/2,
         create_engagement_invitation/3,
         create_opportunity/2,
         create_opportunity/3,
         create_resource_snapshot/2,
         create_resource_snapshot/3,
         create_resource_snapshot_job/2,
         create_resource_snapshot_job/3,
         delete_resource_snapshot_job/2,
         delete_resource_snapshot_job/3,
         disassociate_opportunity/2,
         disassociate_opportunity/3,
         get_aws_opportunity_summary/2,
         get_aws_opportunity_summary/3,
         get_engagement/2,
         get_engagement/3,
         get_engagement_invitation/2,
         get_engagement_invitation/3,
         get_opportunity/2,
         get_opportunity/3,
         get_resource_snapshot/2,
         get_resource_snapshot/3,
         get_resource_snapshot_job/2,
         get_resource_snapshot_job/3,
         get_selling_system_settings/2,
         get_selling_system_settings/3,
         list_engagement_by_accepting_invitation_tasks/2,
         list_engagement_by_accepting_invitation_tasks/3,
         list_engagement_from_opportunity_tasks/2,
         list_engagement_from_opportunity_tasks/3,
         list_engagement_invitations/2,
         list_engagement_invitations/3,
         list_engagement_members/2,
         list_engagement_members/3,
         list_engagement_resource_associations/2,
         list_engagement_resource_associations/3,
         list_engagements/2,
         list_engagements/3,
         list_opportunities/2,
         list_opportunities/3,
         list_resource_snapshot_jobs/2,
         list_resource_snapshot_jobs/3,
         list_resource_snapshots/2,
         list_resource_snapshots/3,
         list_solutions/2,
         list_solutions/3,
         put_selling_system_settings/2,
         put_selling_system_settings/3,
         reject_engagement_invitation/2,
         reject_engagement_invitation/3,
         start_engagement_by_accepting_invitation_task/2,
         start_engagement_by_accepting_invitation_task/3,
         start_engagement_from_opportunity_task/2,
         start_engagement_from_opportunity_task/3,
         start_resource_snapshot_job/2,
         start_resource_snapshot_job/3,
         stop_resource_snapshot_job/2,
         stop_resource_snapshot_job/3,
         submit_opportunity/2,
         submit_opportunity/3,
         update_opportunity/2,
         update_opportunity/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% list_engagement_members_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_engagement_members_request() :: #{binary() => any()}.

%% Example:
%% list_engagement_resource_associations_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"CreatedBy">> => string(),
%%   <<"EngagementIdentifier">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()],
%%   <<"ResourceIdentifier">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type list_engagement_resource_associations_request() :: #{binary() => any()}.

%% Example:
%% list_engagement_members_response() :: #{
%%   <<"EngagementMemberList">> => list(engagement_member()()),
%%   <<"NextToken">> => [string()]
%% }
-type list_engagement_members_response() :: #{binary() => any()}.

%% Example:
%% opportunity_sort() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type opportunity_sort() :: #{binary() => any()}.

%% Example:
%% life_cycle() :: #{
%%   <<"ClosedLostReason">> => list(any()),
%%   <<"NextSteps">> => string(),
%%   <<"NextStepsHistory">> => list(next_steps_history()()),
%%   <<"ReviewComments">> => [string()],
%%   <<"ReviewStatus">> => list(any()),
%%   <<"ReviewStatusReason">> => [string()],
%%   <<"Stage">> => list(any()),
%%   <<"TargetCloseDate">> => string()
%% }
-type life_cycle() :: #{binary() => any()}.

%% Example:
%% assign_opportunity_request() :: #{
%%   <<"Assignee">> := assignee_contact(),
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type assign_opportunity_request() :: #{binary() => any()}.

%% Example:
%% create_engagement_invitation_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"EngagementIdentifier">> := string(),
%%   <<"Invitation">> := invitation()
%% }
-type create_engagement_invitation_request() :: #{binary() => any()}.

%% Example:
%% aws_team_member() :: #{
%%   <<"BusinessTitle">> => list(any()),
%%   <<"Email">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"LastName">> => string()
%% }
-type aws_team_member() :: #{binary() => any()}.

%% Example:
%% start_engagement_by_accepting_invitation_task_response() :: #{
%%   <<"EngagementInvitationId">> => string(),
%%   <<"Message">> => [string()],
%%   <<"OpportunityId">> => string(),
%%   <<"ReasonCode">> => list(any()),
%%   <<"ResourceSnapshotJobId">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TaskArn">> => string(),
%%   <<"TaskId">> => string(),
%%   <<"TaskStatus">> => list(any())
%% }
-type start_engagement_by_accepting_invitation_task_response() :: #{binary() => any()}.

%% Example:
%% engagement_invitation_summary() :: #{
%%   <<"Arn">> => [string()],
%%   <<"Catalog">> => string(),
%%   <<"EngagementId">> => string(),
%%   <<"EngagementTitle">> => string(),
%%   <<"ExpirationDate">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"InvitationDate">> => non_neg_integer(),
%%   <<"ParticipantType">> => list(any()),
%%   <<"PayloadType">> => list(any()),
%%   <<"Receiver">> => list(),
%%   <<"SenderAwsAccountId">> => string(),
%%   <<"SenderCompanyName">> => [string()],
%%   <<"Status">> => list(any())
%% }
-type engagement_invitation_summary() :: #{binary() => any()}.

%% Example:
%% project_summary() :: #{
%%   <<"DeliveryModels">> => list(list(any())()),
%%   <<"ExpectedCustomerSpend">> => list(expected_customer_spend()())
%% }
-type project_summary() :: #{binary() => any()}.

%% Example:
%% last_modified_date() :: #{
%%   <<"AfterLastModifiedDate">> => non_neg_integer(),
%%   <<"BeforeLastModifiedDate">> => non_neg_integer()
%% }
-type last_modified_date() :: #{binary() => any()}.

%% Example:
%% resource_snapshot_job_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"EngagementId">> => string(),
%%   <<"Id">> => string(),
%%   <<"Status">> => list(any())
%% }
-type resource_snapshot_job_summary() :: #{binary() => any()}.

%% Example:
%% list_engagement_by_accepting_invitation_tasks_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"TaskSummaries">> => list(list_engagement_by_accepting_invitation_task_summary()())
%% }
-type list_engagement_by_accepting_invitation_tasks_response() :: #{binary() => any()}.

%% Example:
%% aws_opportunity_related_entities() :: #{
%%   <<"AwsProducts">> => list(string()()),
%%   <<"Solutions">> => list(string()())
%% }
-type aws_opportunity_related_entities() :: #{binary() => any()}.

%% Example:
%% engagement_customer() :: #{
%%   <<"CompanyName">> => string(),
%%   <<"CountryCode">> => list(any()),
%%   <<"Industry">> => list(any()),
%%   <<"WebsiteUrl">> => string()
%% }
-type engagement_customer() :: #{binary() => any()}.

%% Example:
%% stop_resource_snapshot_job_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ResourceSnapshotJobIdentifier">> := string()
%% }
-type stop_resource_snapshot_job_request() :: #{binary() => any()}.

%% Example:
%% get_aws_opportunity_summary_response() :: #{
%%   <<"Catalog">> => string(),
%%   <<"Customer">> => aws_opportunity_customer(),
%%   <<"Insights">> => aws_opportunity_insights(),
%%   <<"InvolvementType">> => list(any()),
%%   <<"InvolvementTypeChangeReason">> => list(any()),
%%   <<"LifeCycle">> => aws_opportunity_life_cycle(),
%%   <<"OpportunityTeam">> => list(aws_team_member()()),
%%   <<"Origin">> => list(any()),
%%   <<"Project">> => aws_opportunity_project(),
%%   <<"RelatedEntityIds">> => aws_opportunity_related_entities(),
%%   <<"RelatedOpportunityId">> => string(),
%%   <<"Visibility">> => list(any())
%% }
-type get_aws_opportunity_summary_response() :: #{binary() => any()}.

%% Example:
%% aws_opportunity_insights() :: #{
%%   <<"EngagementScore">> => list(any()),
%%   <<"NextBestActions">> => [string()]
%% }
-type aws_opportunity_insights() :: #{binary() => any()}.

%% Example:
%% invitation() :: #{
%%   <<"Message">> => string(),
%%   <<"Payload">> => list(),
%%   <<"Receiver">> => list()
%% }
-type invitation() :: #{binary() => any()}.

%% Example:
%% get_opportunity_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Customer">> => customer(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"LifeCycle">> => life_cycle(),
%%   <<"Marketing">> => marketing(),
%%   <<"NationalSecurity">> => list(any()),
%%   <<"OpportunityTeam">> => list(contact()()),
%%   <<"OpportunityType">> => list(any()),
%%   <<"PartnerOpportunityIdentifier">> => [string()],
%%   <<"PrimaryNeedsFromAws">> => list(list(any())()),
%%   <<"Project">> => project(),
%%   <<"RelatedEntityIdentifiers">> => related_entity_identifiers(),
%%   <<"SoftwareRevenue">> => software_revenue()
%% }
-type get_opportunity_response() :: #{binary() => any()}.

%% Example:
%% put_selling_system_settings_response() :: #{
%%   <<"Catalog">> => string(),
%%   <<"ResourceSnapshotJobRoleArn">> => string()
%% }
-type put_selling_system_settings_response() :: #{binary() => any()}.

%% Example:
%% project_view() :: #{
%%   <<"CustomerUseCase">> => [string()],
%%   <<"DeliveryModels">> => list(list(any())()),
%%   <<"ExpectedCustomerSpend">> => list(expected_customer_spend()()),
%%   <<"OtherSolutionDescription">> => string(),
%%   <<"SalesActivities">> => list(list(any())())
%% }
-type project_view() :: #{binary() => any()}.

%% Example:
%% list_resource_snapshots_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"CreatedBy">> => string(),
%%   <<"EngagementIdentifier">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()],
%%   <<"ResourceIdentifier">> => string(),
%%   <<"ResourceSnapshotTemplateIdentifier">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type list_resource_snapshots_request() :: #{binary() => any()}.

%% Example:
%% solution_sort() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type solution_sort() :: #{binary() => any()}.

%% Example:
%% list_resource_snapshots_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"ResourceSnapshotSummaries">> => list(resource_snapshot_summary()())
%% }
-type list_resource_snapshots_response() :: #{binary() => any()}.

%% Example:
%% get_aws_opportunity_summary_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"RelatedOpportunityIdentifier">> := string()
%% }
-type get_aws_opportunity_summary_request() :: #{binary() => any()}.

%% Example:
%% put_selling_system_settings_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ResourceSnapshotJobRoleIdentifier">> => string()
%% }
-type put_selling_system_settings_request() :: #{binary() => any()}.

%% Example:
%% list_solutions_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Category">> => list([string()]()),
%%   <<"Identifier">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()],
%%   <<"Sort">> => solution_sort(),
%%   <<"Status">> => list(list(any())())
%% }
-type list_solutions_request() :: #{binary() => any()}.

%% Example:
%% list_engagement_from_opportunity_tasks_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"EngagementIdentifier">> => list(string()()),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()],
%%   <<"OpportunityIdentifier">> => list(string()()),
%%   <<"Sort">> => list_tasks_sort_base(),
%%   <<"TaskIdentifier">> => list(string()()),
%%   <<"TaskStatus">> => list(list(any())())
%% }
-type list_engagement_from_opportunity_tasks_request() :: #{binary() => any()}.

%% Example:
%% aws_opportunity_project() :: #{
%%   <<"ExpectedCustomerSpend">> => list(expected_customer_spend()())
%% }
-type aws_opportunity_project() :: #{binary() => any()}.

%% Example:
%% update_opportunity_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Customer">> => customer(),
%%   <<"Identifier">> := string(),
%%   <<"LastModifiedDate">> := non_neg_integer(),
%%   <<"LifeCycle">> => life_cycle(),
%%   <<"Marketing">> => marketing(),
%%   <<"NationalSecurity">> => list(any()),
%%   <<"OpportunityType">> => list(any()),
%%   <<"PartnerOpportunityIdentifier">> => [string()],
%%   <<"PrimaryNeedsFromAws">> => list(list(any())()),
%%   <<"Project">> => project(),
%%   <<"SoftwareRevenue">> => software_revenue()
%% }
-type update_opportunity_request() :: #{binary() => any()}.

%% Example:
%% create_opportunity_response() :: #{
%%   <<"Id">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"PartnerOpportunityIdentifier">> => [string()]
%% }
-type create_opportunity_response() :: #{binary() => any()}.

%% Example:
%% engagement_member() :: #{
%%   <<"AccountId">> => string(),
%%   <<"CompanyName">> => string(),
%%   <<"WebsiteUrl">> => [string()]
%% }
-type engagement_member() :: #{binary() => any()}.

%% Example:
%% engagement_sort() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type engagement_sort() :: #{binary() => any()}.

%% Example:
%% list_engagement_by_accepting_invitation_tasks_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"EngagementInvitationIdentifier">> => list(string()()),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()],
%%   <<"OpportunityIdentifier">> => list(string()()),
%%   <<"Sort">> => list_tasks_sort_base(),
%%   <<"TaskIdentifier">> => list(string()()),
%%   <<"TaskStatus">> => list(list(any())())
%% }
-type list_engagement_by_accepting_invitation_tasks_request() :: #{binary() => any()}.

%% Example:
%% engagement_context_details() :: #{
%%   <<"Payload">> => list(),
%%   <<"Type">> => list(any())
%% }
-type engagement_context_details() :: #{binary() => any()}.

%% Example:
%% list_engagements_response() :: #{
%%   <<"EngagementSummaryList">> => list(engagement_summary()()),
%%   <<"NextToken">> => [string()]
%% }
-type list_engagements_response() :: #{binary() => any()}.

%% Example:
%% associate_opportunity_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"OpportunityIdentifier">> := string(),
%%   <<"RelatedEntityIdentifier">> := [string()],
%%   <<"RelatedEntityType">> := list(any())
%% }
-type associate_opportunity_request() :: #{binary() => any()}.

%% Example:
%% related_entity_identifiers() :: #{
%%   <<"AwsMarketplaceOffers">> => list(string()()),
%%   <<"AwsProducts">> => list(string()()),
%%   <<"Solutions">> => list(string()())
%% }
-type related_entity_identifiers() :: #{binary() => any()}.

%% Example:
%% customer() :: #{
%%   <<"Account">> => account(),
%%   <<"Contacts">> => list(contact()())
%% }
-type customer() :: #{binary() => any()}.

%% Example:
%% life_cycle_for_view() :: #{
%%   <<"NextSteps">> => string(),
%%   <<"ReviewStatus">> => list(any()),
%%   <<"Stage">> => list(any()),
%%   <<"TargetCloseDate">> => string()
%% }
-type life_cycle_for_view() :: #{binary() => any()}.

%% Example:
%% list_engagement_invitations_response() :: #{
%%   <<"EngagementInvitationSummaries">> => list(engagement_invitation_summary()()),
%%   <<"NextToken">> => [string()]
%% }
-type list_engagement_invitations_response() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% opportunity_engagement_invitation_sort() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type opportunity_engagement_invitation_sort() :: #{binary() => any()}.

%% Example:
%% create_resource_snapshot_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Revision">> => integer()
%% }
-type create_resource_snapshot_response() :: #{binary() => any()}.

%% Example:
%% start_engagement_from_opportunity_task_response() :: #{
%%   <<"EngagementId">> => string(),
%%   <<"EngagementInvitationId">> => string(),
%%   <<"Message">> => [string()],
%%   <<"OpportunityId">> => string(),
%%   <<"ReasonCode">> => list(any()),
%%   <<"ResourceSnapshotJobId">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TaskArn">> => string(),
%%   <<"TaskId">> => string(),
%%   <<"TaskStatus">> => list(any())
%% }
-type start_engagement_from_opportunity_task_response() :: #{binary() => any()}.

%% Example:
%% project() :: #{
%%   <<"AdditionalComments">> => [string()],
%%   <<"ApnPrograms">> => list([string()]()),
%%   <<"CompetitorName">> => list(any()),
%%   <<"CustomerBusinessProblem">> => string(),
%%   <<"CustomerUseCase">> => [string()],
%%   <<"DeliveryModels">> => list(list(any())()),
%%   <<"ExpectedCustomerSpend">> => list(expected_customer_spend()()),
%%   <<"OtherCompetitorNames">> => [string()],
%%   <<"OtherSolutionDescription">> => string(),
%%   <<"RelatedOpportunityIdentifier">> => string(),
%%   <<"SalesActivities">> => list(list(any())()),
%%   <<"Title">> => string()
%% }
-type project() :: #{binary() => any()}.

%% Example:
%% list_engagement_by_accepting_invitation_task_summary() :: #{
%%   <<"EngagementInvitationId">> => string(),
%%   <<"Message">> => [string()],
%%   <<"OpportunityId">> => string(),
%%   <<"ReasonCode">> => list(any()),
%%   <<"ResourceSnapshotJobId">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TaskArn">> => string(),
%%   <<"TaskId">> => string(),
%%   <<"TaskStatus">> => list(any())
%% }
-type list_engagement_by_accepting_invitation_task_summary() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% create_engagement_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := [string()],
%%   <<"Contexts">> => list(engagement_context_details()()),
%%   <<"Description">> := string(),
%%   <<"Title">> := string()
%% }
-type create_engagement_request() :: #{binary() => any()}.

%% Example:
%% list_opportunities_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"CustomerCompanyName">> => list([string()]()),
%%   <<"Identifier">> => list(string()()),
%%   <<"LastModifiedDate">> => last_modified_date(),
%%   <<"LifeCycleReviewStatus">> => list(list(any())()),
%%   <<"LifeCycleStage">> => list(list(any())()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()],
%%   <<"Sort">> => opportunity_sort()
%% }
-type list_opportunities_request() :: #{binary() => any()}.

%% Example:
%% get_selling_system_settings_response() :: #{
%%   <<"Catalog">> => string(),
%%   <<"ResourceSnapshotJobRoleArn">> => string()
%% }
-type get_selling_system_settings_response() :: #{binary() => any()}.

%% Example:
%% get_resource_snapshot_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"EngagementIdentifier">> := string(),
%%   <<"ResourceIdentifier">> := string(),
%%   <<"ResourceSnapshotTemplateIdentifier">> := string(),
%%   <<"ResourceType">> := list(any()),
%%   <<"Revision">> => integer()
%% }
-type get_resource_snapshot_request() :: #{binary() => any()}.

%% Example:
%% profile_next_steps_history() :: #{
%%   <<"Time">> => non_neg_integer(),
%%   <<"Value">> => [string()]
%% }
-type profile_next_steps_history() :: #{binary() => any()}.

%% Example:
%% create_resource_snapshot_job_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type create_resource_snapshot_job_response() :: #{binary() => any()}.

%% Example:
%% sender_contact() :: #{
%%   <<"BusinessTitle">> => string(),
%%   <<"Email">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"LastName">> => string(),
%%   <<"Phone">> => string()
%% }
-type sender_contact() :: #{binary() => any()}.

%% Example:
%% account() :: #{
%%   <<"Address">> => address(),
%%   <<"AwsAccountId">> => string(),
%%   <<"CompanyName">> => string(),
%%   <<"Duns">> => string(),
%%   <<"Industry">> => list(any()),
%%   <<"OtherIndustry">> => [string()],
%%   <<"WebsiteUrl">> => string()
%% }
-type account() :: #{binary() => any()}.

%% Example:
%% opportunity_invitation_payload() :: #{
%%   <<"Customer">> => engagement_customer(),
%%   <<"Project">> => project_details(),
%%   <<"ReceiverResponsibilities">> => list(list(any())()),
%%   <<"SenderContacts">> => list(sender_contact()())
%% }
-type opportunity_invitation_payload() :: #{binary() => any()}.

%% Example:
%% submit_opportunity_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string(),
%%   <<"InvolvementType">> := list(any()),
%%   <<"Visibility">> => list(any())
%% }
-type submit_opportunity_request() :: #{binary() => any()}.

%% Example:
%% expected_customer_spend() :: #{
%%   <<"Amount">> => [string()],
%%   <<"CurrencyCode">> => list(any()),
%%   <<"EstimationUrl">> => string(),
%%   <<"Frequency">> => list(any()),
%%   <<"TargetCompany">> => [string()]
%% }
-type expected_customer_spend() :: #{binary() => any()}.

%% Example:
%% life_cycle_summary() :: #{
%%   <<"ClosedLostReason">> => list(any()),
%%   <<"NextSteps">> => string(),
%%   <<"ReviewComments">> => [string()],
%%   <<"ReviewStatus">> => list(any()),
%%   <<"ReviewStatusReason">> => [string()],
%%   <<"Stage">> => list(any()),
%%   <<"TargetCloseDate">> => string()
%% }
-type life_cycle_summary() :: #{binary() => any()}.

%% Example:
%% get_engagement_invitation_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type get_engagement_invitation_request() :: #{binary() => any()}.

%% Example:
%% list_engagement_invitations_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"EngagementIdentifier">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()],
%%   <<"ParticipantType">> := list(any()),
%%   <<"PayloadType">> => list(list(any())()),
%%   <<"SenderAwsAccountId">> => list(string()()),
%%   <<"Sort">> => opportunity_engagement_invitation_sort(),
%%   <<"Status">> => list(list(any())())
%% }
-type list_engagement_invitations_request() :: #{binary() => any()}.

%% Example:
%% delete_resource_snapshot_job_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ResourceSnapshotJobIdentifier">> := string()
%% }
-type delete_resource_snapshot_job_request() :: #{binary() => any()}.

%% Example:
%% account_summary() :: #{
%%   <<"Address">> => address_summary(),
%%   <<"CompanyName">> => string(),
%%   <<"Industry">> => list(any()),
%%   <<"OtherIndustry">> => [string()],
%%   <<"WebsiteUrl">> => string()
%% }
-type account_summary() :: #{binary() => any()}.

%% Example:
%% update_opportunity_response() :: #{
%%   <<"Id">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer()
%% }
-type update_opportunity_response() :: #{binary() => any()}.

%% Example:
%% marketing() :: #{
%%   <<"AwsFundingUsed">> => list(any()),
%%   <<"CampaignName">> => [string()],
%%   <<"Channels">> => list(list(any())()),
%%   <<"Source">> => list(any()),
%%   <<"UseCases">> => list([string()]())
%% }
-type marketing() :: #{binary() => any()}.

%% Example:
%% list_solutions_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"SolutionSummaries">> => list(solution_base()())
%% }
-type list_solutions_response() :: #{binary() => any()}.

%% Example:
%% get_selling_system_settings_request() :: #{
%%   <<"Catalog">> := string()
%% }
-type get_selling_system_settings_request() :: #{binary() => any()}.

%% Example:
%% project_details() :: #{
%%   <<"BusinessProblem">> => string(),
%%   <<"ExpectedCustomerSpend">> => list(expected_customer_spend()()),
%%   <<"TargetCompletionDate">> => string(),
%%   <<"Title">> => [string()]
%% }
-type project_details() :: #{binary() => any()}.

%% Example:
%% create_opportunity_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := [string()],
%%   <<"Customer">> => customer(),
%%   <<"LifeCycle">> => life_cycle(),
%%   <<"Marketing">> => marketing(),
%%   <<"NationalSecurity">> => list(any()),
%%   <<"OpportunityTeam">> => list(contact()()),
%%   <<"OpportunityType">> => list(any()),
%%   <<"Origin">> => list(any()),
%%   <<"PartnerOpportunityIdentifier">> => [string()],
%%   <<"PrimaryNeedsFromAws">> => list(list(any())()),
%%   <<"Project">> => project(),
%%   <<"SoftwareRevenue">> => software_revenue()
%% }
-type create_opportunity_request() :: #{binary() => any()}.

%% Example:
%% contact() :: #{
%%   <<"BusinessTitle">> => string(),
%%   <<"Email">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"LastName">> => string(),
%%   <<"Phone">> => string()
%% }
-type contact() :: #{binary() => any()}.

%% Example:
%% sort_object() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type sort_object() :: #{binary() => any()}.

%% Example:
%% software_revenue() :: #{
%%   <<"DeliveryModel">> => list(any()),
%%   <<"EffectiveDate">> => string(),
%%   <<"ExpirationDate">> => string(),
%%   <<"Value">> => monetary_value()
%% }
-type software_revenue() :: #{binary() => any()}.

%% Example:
%% opportunity_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Customer">> => customer_summary(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"LifeCycle">> => life_cycle_summary(),
%%   <<"OpportunityType">> => list(any()),
%%   <<"PartnerOpportunityIdentifier">> => [string()],
%%   <<"Project">> => project_summary()
%% }
-type opportunity_summary() :: #{binary() => any()}.

%% Example:
%% list_opportunities_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"OpportunitySummaries">> => list(opportunity_summary()())
%% }
-type list_opportunities_response() :: #{binary() => any()}.

%% Example:
%% engagement_member_summary() :: #{
%%   <<"CompanyName">> => string(),
%%   <<"WebsiteUrl">> => [string()]
%% }
-type engagement_member_summary() :: #{binary() => any()}.

%% Example:
%% list_tasks_sort_base() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_tasks_sort_base() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% customer_summary() :: #{
%%   <<"Account">> => account_summary()
%% }
-type customer_summary() :: #{binary() => any()}.

%% Example:
%% list_resource_snapshot_jobs_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"ResourceSnapshotJobSummaries">> => list(resource_snapshot_job_summary()())
%% }
-type list_resource_snapshot_jobs_response() :: #{binary() => any()}.

%% Example:
%% address_summary() :: #{
%%   <<"City">> => string(),
%%   <<"CountryCode">> => list(any()),
%%   <<"PostalCode">> => string(),
%%   <<"StateOrRegion">> => string()
%% }
-type address_summary() :: #{binary() => any()}.

%% Example:
%% reject_engagement_invitation_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string(),
%%   <<"RejectionReason">> => string()
%% }
-type reject_engagement_invitation_request() :: #{binary() => any()}.

%% Example:
%% create_engagement_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type create_engagement_response() :: #{binary() => any()}.

%% Example:
%% list_engagement_resource_associations_response() :: #{
%%   <<"EngagementResourceAssociationSummaries">> => list(engagement_resource_association_summary()()),
%%   <<"NextToken">> => [string()]
%% }
-type list_engagement_resource_associations_response() :: #{binary() => any()}.

%% Example:
%% start_engagement_from_opportunity_task_request() :: #{
%%   <<"AwsSubmission">> := aws_submission(),
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"Identifier">> := string()
%% }
-type start_engagement_from_opportunity_task_request() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% resource_snapshot_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedBy">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceSnapshotTemplateName">> => string(),
%%   <<"ResourceType">> => list(any()),
%%   <<"Revision">> => integer()
%% }
-type resource_snapshot_summary() :: #{binary() => any()}.

%% Example:
%% get_engagement_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type get_engagement_request() :: #{binary() => any()}.

%% Example:
%% aws_opportunity_life_cycle() :: #{
%%   <<"ClosedLostReason">> => list(any()),
%%   <<"NextSteps">> => string(),
%%   <<"NextStepsHistory">> => list(profile_next_steps_history()()),
%%   <<"Stage">> => list(any()),
%%   <<"TargetCloseDate">> => string()
%% }
-type aws_opportunity_life_cycle() :: #{binary() => any()}.

%% Example:
%% engagement_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"Id">> => string(),
%%   <<"MemberCount">> => [integer()],
%%   <<"Title">> => string()
%% }
-type engagement_summary() :: #{binary() => any()}.

%% Example:
%% validation_exception_error() :: #{
%%   <<"Code">> => list(any()),
%%   <<"FieldName">> => [string()],
%%   <<"Message">> => [string()]
%% }
-type validation_exception_error() :: #{binary() => any()}.

%% Example:
%% start_resource_snapshot_job_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ResourceSnapshotJobIdentifier">> := string()
%% }
-type start_resource_snapshot_job_request() :: #{binary() => any()}.

%% Example:
%% list_resource_snapshot_jobs_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"EngagementIdentifier">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()],
%%   <<"Sort">> => sort_object(),
%%   <<"Status">> => list(any())
%% }
-type list_resource_snapshot_jobs_request() :: #{binary() => any()}.

%% Example:
%% list_engagement_from_opportunity_tasks_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"TaskSummaries">> => list(list_engagement_from_opportunity_task_summary()())
%% }
-type list_engagement_from_opportunity_tasks_response() :: #{binary() => any()}.

%% Example:
%% create_resource_snapshot_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"EngagementIdentifier">> := string(),
%%   <<"ResourceIdentifier">> := string(),
%%   <<"ResourceSnapshotTemplateIdentifier">> := string(),
%%   <<"ResourceType">> := list(any())
%% }
-type create_resource_snapshot_request() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"ErrorList">> => list(validation_exception_error()()),
%%   <<"Message">> => [string()],
%%   <<"Reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% customer_projects_context() :: #{
%%   <<"Customer">> => engagement_customer(),
%%   <<"Project">> => engagement_customer_project_details()
%% }
-type customer_projects_context() :: #{binary() => any()}.

%% Example:
%% get_resource_snapshot_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"EngagementId">> => string(),
%%   <<"Payload">> => list(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceSnapshotTemplateName">> => string(),
%%   <<"ResourceType">> => list(any()),
%%   <<"Revision">> => integer()
%% }
-type get_resource_snapshot_response() :: #{binary() => any()}.

%% Example:
%% accept_engagement_invitation_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type accept_engagement_invitation_request() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% create_resource_snapshot_job_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"EngagementIdentifier">> := string(),
%%   <<"ResourceIdentifier">> := string(),
%%   <<"ResourceSnapshotTemplateIdentifier">> := string(),
%%   <<"ResourceType">> := list(any())
%% }
-type create_resource_snapshot_job_request() :: #{binary() => any()}.

%% Example:
%% next_steps_history() :: #{
%%   <<"Time">> => non_neg_integer(),
%%   <<"Value">> => [string()]
%% }
-type next_steps_history() :: #{binary() => any()}.

%% Example:
%% aws_opportunity_customer() :: #{
%%   <<"Contacts">> => list(contact()())
%% }
-type aws_opportunity_customer() :: #{binary() => any()}.

%% Example:
%% create_engagement_invitation_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type create_engagement_invitation_response() :: #{binary() => any()}.

%% Example:
%% account_receiver() :: #{
%%   <<"Alias">> => string(),
%%   <<"AwsAccountId">> => string()
%% }
-type account_receiver() :: #{binary() => any()}.

%% Example:
%% assignee_contact() :: #{
%%   <<"BusinessTitle">> => string(),
%%   <<"Email">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"LastName">> => string()
%% }
-type assignee_contact() :: #{binary() => any()}.

%% Example:
%% disassociate_opportunity_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"OpportunityIdentifier">> := string(),
%%   <<"RelatedEntityIdentifier">> := [string()],
%%   <<"RelatedEntityType">> := list(any())
%% }
-type disassociate_opportunity_request() :: #{binary() => any()}.

%% Example:
%% engagement_customer_project_details() :: #{
%%   <<"BusinessProblem">> => string(),
%%   <<"TargetCompletionDate">> => [string()],
%%   <<"Title">> => string()
%% }
-type engagement_customer_project_details() :: #{binary() => any()}.

%% Example:
%% monetary_value() :: #{
%%   <<"Amount">> => [string()],
%%   <<"CurrencyCode">> => list(any())
%% }
-type monetary_value() :: #{binary() => any()}.

%% Example:
%% address() :: #{
%%   <<"City">> => string(),
%%   <<"CountryCode">> => list(any()),
%%   <<"PostalCode">> => string(),
%%   <<"StateOrRegion">> => string(),
%%   <<"StreetAddress">> => string()
%% }
-type address() :: #{binary() => any()}.

%% Example:
%% solution_base() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"Category">> => [string()],
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"Name">> => [string()],
%%   <<"Status">> => list(any())
%% }
-type solution_base() :: #{binary() => any()}.

%% Example:
%% get_resource_snapshot_job_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ResourceSnapshotJobIdentifier">> := string()
%% }
-type get_resource_snapshot_job_request() :: #{binary() => any()}.

%% Example:
%% engagement_resource_association_summary() :: #{
%%   <<"Catalog">> => string(),
%%   <<"CreatedBy">> => string(),
%%   <<"EngagementId">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type engagement_resource_association_summary() :: #{binary() => any()}.

%% Example:
%% get_engagement_invitation_response() :: #{
%%   <<"Arn">> => [string()],
%%   <<"Catalog">> => string(),
%%   <<"EngagementDescription">> => string(),
%%   <<"EngagementId">> => string(),
%%   <<"EngagementTitle">> => string(),
%%   <<"ExistingMembers">> => list(engagement_member_summary()()),
%%   <<"ExpirationDate">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"InvitationDate">> => non_neg_integer(),
%%   <<"InvitationMessage">> => string(),
%%   <<"Payload">> => list(),
%%   <<"PayloadType">> => list(any()),
%%   <<"Receiver">> => list(),
%%   <<"RejectionReason">> => string(),
%%   <<"SenderAwsAccountId">> => string(),
%%   <<"SenderCompanyName">> => [string()],
%%   <<"Status">> => list(any())
%% }
-type get_engagement_invitation_response() :: #{binary() => any()}.

%% Example:
%% opportunity_summary_view() :: #{
%%   <<"Customer">> => customer(),
%%   <<"Lifecycle">> => life_cycle_for_view(),
%%   <<"OpportunityTeam">> => list(contact()()),
%%   <<"OpportunityType">> => list(any()),
%%   <<"PrimaryNeedsFromAws">> => list(list(any())()),
%%   <<"Project">> => project_view(),
%%   <<"RelatedEntityIdentifiers">> => related_entity_identifiers()
%% }
-type opportunity_summary_view() :: #{binary() => any()}.

%% Example:
%% list_engagements_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"CreatedBy">> => list(string()()),
%%   <<"EngagementIdentifier">> => list(string()()),
%%   <<"ExcludeCreatedBy">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()],
%%   <<"Sort">> => engagement_sort()
%% }
-type list_engagements_request() :: #{binary() => any()}.

%% Example:
%% get_engagement_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Contexts">> => list(engagement_context_details()()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"MemberCount">> => [integer()],
%%   <<"Title">> => string()
%% }
-type get_engagement_response() :: #{binary() => any()}.

%% Example:
%% get_opportunity_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type get_opportunity_request() :: #{binary() => any()}.

%% Example:
%% list_engagement_from_opportunity_task_summary() :: #{
%%   <<"EngagementId">> => string(),
%%   <<"EngagementInvitationId">> => string(),
%%   <<"Message">> => [string()],
%%   <<"OpportunityId">> => string(),
%%   <<"ReasonCode">> => list(any()),
%%   <<"ResourceSnapshotJobId">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TaskArn">> => string(),
%%   <<"TaskId">> => string(),
%%   <<"TaskStatus">> => list(any())
%% }
-type list_engagement_from_opportunity_task_summary() :: #{binary() => any()}.

%% Example:
%% aws_submission() :: #{
%%   <<"InvolvementType">> => list(any()),
%%   <<"Visibility">> => list(any())
%% }
-type aws_submission() :: #{binary() => any()}.

%% Example:
%% get_resource_snapshot_job_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"EngagementId">> => string(),
%%   <<"Id">> => string(),
%%   <<"LastFailure">> => [string()],
%%   <<"LastSuccessfulExecutionDate">> => non_neg_integer(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceSnapshotTemplateName">> => string(),
%%   <<"ResourceType">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type get_resource_snapshot_job_response() :: #{binary() => any()}.

%% Example:
%% start_engagement_by_accepting_invitation_task_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"Identifier">> := string()
%% }
-type start_engagement_by_accepting_invitation_task_request() :: #{binary() => any()}.

-type accept_engagement_invitation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type assign_opportunity_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type associate_opportunity_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_engagement_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_engagement_invitation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_opportunity_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_resource_snapshot_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_resource_snapshot_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_resource_snapshot_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type disassociate_opportunity_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_aws_opportunity_summary_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_engagement_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_engagement_invitation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_opportunity_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_resource_snapshot_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_resource_snapshot_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type get_selling_system_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_engagement_by_accepting_invitation_tasks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_engagement_from_opportunity_tasks_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_engagement_invitations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_engagement_members_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_engagement_resource_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_engagements_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_opportunities_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_resource_snapshot_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception().

-type list_resource_snapshots_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_solutions_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_selling_system_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type reject_engagement_invitation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type start_engagement_by_accepting_invitation_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_engagement_from_opportunity_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_resource_snapshot_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type stop_resource_snapshot_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type submit_opportunity_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_opportunity_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc
%% Use the `AcceptEngagementInvitation' action to accept an engagement
%% invitation shared by AWS.
%%
%% Accepting the invitation indicates your willingness to participate in the
%% engagement,
%% granting you access to all engagement-related data.
-spec accept_engagement_invitation(aws_client:aws_client(), accept_engagement_invitation_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, accept_engagement_invitation_errors(), tuple()}.
accept_engagement_invitation(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_engagement_invitation(Client, Input, []).

-spec accept_engagement_invitation(aws_client:aws_client(), accept_engagement_invitation_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, accept_engagement_invitation_errors(), tuple()}.
accept_engagement_invitation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptEngagementInvitation">>, Input, Options).

%% @doc Enables you to reassign an existing `Opportunity' to another user
%% within
%% your Partner Central account.
%%
%% The specified user receives the opportunity, and it
%% appears on their Partner Central dashboard, allowing them to take
%% necessary actions or
%% proceed with the opportunity.
%%
%% This is useful for distributing opportunities to the appropriate team
%% members or
%% departments within your organization, ensuring that each opportunity is
%% handled by the
%% right person. By default, the opportunity owner is the one who creates it.
%% Currently,
%% there's no API to enumerate the list of available users.
-spec assign_opportunity(aws_client:aws_client(), assign_opportunity_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, assign_opportunity_errors(), tuple()}.
assign_opportunity(Client, Input)
  when is_map(Client), is_map(Input) ->
    assign_opportunity(Client, Input, []).

-spec assign_opportunity(aws_client:aws_client(), assign_opportunity_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, assign_opportunity_errors(), tuple()}.
assign_opportunity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssignOpportunity">>, Input, Options).

%% @doc Enables you to create a formal association between an
%% `Opportunity' and
%% various related entities, enriching the context and details of the
%% opportunity for
%% better collaboration and decision making.
%%
%% You can associate an opportunity with the
%% following entity types:
%%
%% Partner Solution: A software product or consulting practice created and
%% delivered by Partners. Partner Solutions help customers address
%% business challenges using Amazon Web Services services.
%%
%% Amazon Web Services Products: Amazon Web Services offers many products and
%% services that provide scalable, reliable, and cost-effective
%% infrastructure
%% solutions. For the latest list of Amazon Web Services products, see Amazon
%% Web Services products:
%% https://github.com/aws-samples/partner-crm-integration-samples/blob/main/resources/aws_products.json.
%%
%% Amazon Web Services Marketplace private offer: Allows Amazon Web Services
%% Marketplace sellers to extend
%% custom pricing and terms to individual Amazon Web Services customers.
%% Sellers can
%% negotiate custom prices, payment schedules, and end user license terms
%% through
%% private offers, enabling Amazon Web Services customers to acquire software
%% solutions tailored to their specific needs. For more information, see
%% Private offers
%% in Amazon Web Services Marketplace:
%% https://docs.aws.amazon.com/marketplace/latest/buyerguide/buyer-private-offers.html.
%%
%% To obtain identifiers for these entities, use the following methods:
%%
%% Solution: Use the `ListSolutions' operation.
%%
%% AWS Products: For the latest list of Amazon Web Services products, see
%% Amazon Web Services products:
%% https://github.com/aws-samples/partner-crm-integration-samples/blob/main/resources/aws_products.json.
%%
%% Amazon Web Services Marketplace private offer: Use the Using the Amazon
%% Web Services Marketplace Catalog API:
%% https://docs.aws.amazon.com/marketplace/latest/APIReference/catalog-apis.html
%% to list entities. Specifically, use the
%% `ListEntities' operation to retrieve a list of private offers.
%% The request returns the details of available private offers. For more
%% information, see ListEntities:
%% https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_ListEntities.html.
-spec associate_opportunity(aws_client:aws_client(), associate_opportunity_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_opportunity_errors(), tuple()}.
associate_opportunity(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_opportunity(Client, Input, []).

-spec associate_opportunity(aws_client:aws_client(), associate_opportunity_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, associate_opportunity_errors(), tuple()}.
associate_opportunity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateOpportunity">>, Input, Options).

%% @doc
%% The `CreateEngagement' action allows you to create an
%% `Engagement',
%% which serves as a collaborative space between different parties such as
%% AWS Partners and AWS Sellers.
%%
%% This action automatically adds the caller's AWS account as an active
%% member of the newly created `Engagement'.
-spec create_engagement(aws_client:aws_client(), create_engagement_request()) ->
    {ok, create_engagement_response(), tuple()} |
    {error, any()} |
    {error, create_engagement_errors(), tuple()}.
create_engagement(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_engagement(Client, Input, []).

-spec create_engagement(aws_client:aws_client(), create_engagement_request(), proplists:proplist()) ->
    {ok, create_engagement_response(), tuple()} |
    {error, any()} |
    {error, create_engagement_errors(), tuple()}.
create_engagement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEngagement">>, Input, Options).

%% @doc
%% This action creates an invitation from a sender to a single receiver to
%% join an engagement.
-spec create_engagement_invitation(aws_client:aws_client(), create_engagement_invitation_request()) ->
    {ok, create_engagement_invitation_response(), tuple()} |
    {error, any()} |
    {error, create_engagement_invitation_errors(), tuple()}.
create_engagement_invitation(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_engagement_invitation(Client, Input, []).

-spec create_engagement_invitation(aws_client:aws_client(), create_engagement_invitation_request(), proplists:proplist()) ->
    {ok, create_engagement_invitation_response(), tuple()} |
    {error, any()} |
    {error, create_engagement_invitation_errors(), tuple()}.
create_engagement_invitation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEngagementInvitation">>, Input, Options).

%% @doc Creates an `Opportunity' record in Partner Central.
%%
%% Use this operation to
%% create a potential business opportunity for submission to Amazon Web
%% Services. Creating
%% an opportunity sets `Lifecycle.ReviewStatus' to
%% ```
%% Pending Submission'''.
%%
%% To submit an opportunity, follow these steps:
%%
%% To create the opportunity, use `CreateOpportunity'.
%%
%% To associate a solution with the opportunity, use
%% `AssociateOpportunity'.
%%
%% To submit the opportunity, use
%% `StartEngagementFromOpportunityTask'.
%%
%% After submission, you can't edit the opportunity until the review is
%% complete. But
%% opportunities in the `Pending Submission' state must have complete
%% details.
%% You can update the opportunity while it's in the `Pending
%% Submission'
%% state.
%%
%% There's a set of mandatory fields to create opportunities, but
%% consider providing
%% optional fields to enrich the opportunity record.
-spec create_opportunity(aws_client:aws_client(), create_opportunity_request()) ->
    {ok, create_opportunity_response(), tuple()} |
    {error, any()} |
    {error, create_opportunity_errors(), tuple()}.
create_opportunity(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_opportunity(Client, Input, []).

-spec create_opportunity(aws_client:aws_client(), create_opportunity_request(), proplists:proplist()) ->
    {ok, create_opportunity_response(), tuple()} |
    {error, any()} |
    {error, create_opportunity_errors(), tuple()}.
create_opportunity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOpportunity">>, Input, Options).

%% @doc
%% This action allows you to create an immutable snapshot of a specific
%% resource, such as an opportunity,
%% within the context of an engagement.
%%
%% The snapshot captures a subset of the resource's data based on the
%% schema defined by the provided template.
-spec create_resource_snapshot(aws_client:aws_client(), create_resource_snapshot_request()) ->
    {ok, create_resource_snapshot_response(), tuple()} |
    {error, any()} |
    {error, create_resource_snapshot_errors(), tuple()}.
create_resource_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resource_snapshot(Client, Input, []).

-spec create_resource_snapshot(aws_client:aws_client(), create_resource_snapshot_request(), proplists:proplist()) ->
    {ok, create_resource_snapshot_response(), tuple()} |
    {error, any()} |
    {error, create_resource_snapshot_errors(), tuple()}.
create_resource_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResourceSnapshot">>, Input, Options).

%% @doc
%% Use this action to create a job to generate a snapshot of the specified
%% resource
%% within an engagement.
%%
%% It initiates an asynchronous process to create a resource
%% snapshot. The job creates a new snapshot only if the resource state has
%% changed,
%% adhering to the same access control and immutability rules as direct
%% snapshot creation.
-spec create_resource_snapshot_job(aws_client:aws_client(), create_resource_snapshot_job_request()) ->
    {ok, create_resource_snapshot_job_response(), tuple()} |
    {error, any()} |
    {error, create_resource_snapshot_job_errors(), tuple()}.
create_resource_snapshot_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_resource_snapshot_job(Client, Input, []).

-spec create_resource_snapshot_job(aws_client:aws_client(), create_resource_snapshot_job_request(), proplists:proplist()) ->
    {ok, create_resource_snapshot_job_response(), tuple()} |
    {error, any()} |
    {error, create_resource_snapshot_job_errors(), tuple()}.
create_resource_snapshot_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateResourceSnapshotJob">>, Input, Options).

%% @doc
%% Use this action to deletes a previously created resource snapshot job.
%%
%% The job must be
%% in a stopped state before it can be deleted.
-spec delete_resource_snapshot_job(aws_client:aws_client(), delete_resource_snapshot_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_snapshot_job_errors(), tuple()}.
delete_resource_snapshot_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_snapshot_job(Client, Input, []).

-spec delete_resource_snapshot_job(aws_client:aws_client(), delete_resource_snapshot_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_resource_snapshot_job_errors(), tuple()}.
delete_resource_snapshot_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourceSnapshotJob">>, Input, Options).

%% @doc Allows you to remove an existing association between an
%% `Opportunity' and
%% related entities, such as a Partner Solution, Amazon Web Services product,
%% or an Amazon Web Services Marketplace offer.
%%
%% This operation is the counterpart to
%% `AssociateOpportunity', and it provides flexibility to manage
%% associations as business needs change.
%%
%% Use this operation to update the associations of an `Opportunity' due
%% to
%% changes in the related entities, or if an association was made in error.
%% Ensuring
%% accurate associations helps maintain clarity and accuracy to track and
%% manage business
%% opportunities. When you replace an entity, first attach the new entity and
%% then
%% disassociate the one to be removed, especially if it's the last
%% remaining entity that's
%% required.
-spec disassociate_opportunity(aws_client:aws_client(), disassociate_opportunity_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_opportunity_errors(), tuple()}.
disassociate_opportunity(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_opportunity(Client, Input, []).

-spec disassociate_opportunity(aws_client:aws_client(), disassociate_opportunity_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, disassociate_opportunity_errors(), tuple()}.
disassociate_opportunity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateOpportunity">>, Input, Options).

%% @doc Retrieves a summary of an AWS Opportunity.
%%
%% This summary includes high-level details
%% about the opportunity sourced from AWS, such as lifecycle information,
%% customer details,
%% and involvement type. It is useful for tracking updates on the AWS
%% opportunity
%% corresponding to an opportunity in the partner's account.
-spec get_aws_opportunity_summary(aws_client:aws_client(), get_aws_opportunity_summary_request()) ->
    {ok, get_aws_opportunity_summary_response(), tuple()} |
    {error, any()} |
    {error, get_aws_opportunity_summary_errors(), tuple()}.
get_aws_opportunity_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_aws_opportunity_summary(Client, Input, []).

-spec get_aws_opportunity_summary(aws_client:aws_client(), get_aws_opportunity_summary_request(), proplists:proplist()) ->
    {ok, get_aws_opportunity_summary_response(), tuple()} |
    {error, any()} |
    {error, get_aws_opportunity_summary_errors(), tuple()}.
get_aws_opportunity_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAwsOpportunitySummary">>, Input, Options).

%% @doc
%% Use this action to retrieve the engagement record for a given
%% `EngagementIdentifier'.
-spec get_engagement(aws_client:aws_client(), get_engagement_request()) ->
    {ok, get_engagement_response(), tuple()} |
    {error, any()} |
    {error, get_engagement_errors(), tuple()}.
get_engagement(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_engagement(Client, Input, []).

-spec get_engagement(aws_client:aws_client(), get_engagement_request(), proplists:proplist()) ->
    {ok, get_engagement_response(), tuple()} |
    {error, any()} |
    {error, get_engagement_errors(), tuple()}.
get_engagement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEngagement">>, Input, Options).

%% @doc Retrieves the details of an engagement invitation shared by AWS with
%% a partner.
%%
%% The
%% information includes aspects such as customer, project details, and
%% lifecycle
%% information. To connect an engagement invitation with an opportunity,
%% match the
%% invitation’s `Payload.Project.Title' with opportunity
%% `Project.Title'.
-spec get_engagement_invitation(aws_client:aws_client(), get_engagement_invitation_request()) ->
    {ok, get_engagement_invitation_response(), tuple()} |
    {error, any()} |
    {error, get_engagement_invitation_errors(), tuple()}.
get_engagement_invitation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_engagement_invitation(Client, Input, []).

-spec get_engagement_invitation(aws_client:aws_client(), get_engagement_invitation_request(), proplists:proplist()) ->
    {ok, get_engagement_invitation_response(), tuple()} |
    {error, any()} |
    {error, get_engagement_invitation_errors(), tuple()}.
get_engagement_invitation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEngagementInvitation">>, Input, Options).

%% @doc Fetches the `Opportunity' record from Partner Central by a given
%% `Identifier'.
%%
%% Use the `ListOpportunities' action or the event notification (from
%% Amazon EventBridge) to obtain this identifier.
-spec get_opportunity(aws_client:aws_client(), get_opportunity_request()) ->
    {ok, get_opportunity_response(), tuple()} |
    {error, any()} |
    {error, get_opportunity_errors(), tuple()}.
get_opportunity(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_opportunity(Client, Input, []).

-spec get_opportunity(aws_client:aws_client(), get_opportunity_request(), proplists:proplist()) ->
    {ok, get_opportunity_response(), tuple()} |
    {error, any()} |
    {error, get_opportunity_errors(), tuple()}.
get_opportunity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOpportunity">>, Input, Options).

%% @doc Use this action to retrieve a specific snapshot record.
-spec get_resource_snapshot(aws_client:aws_client(), get_resource_snapshot_request()) ->
    {ok, get_resource_snapshot_response(), tuple()} |
    {error, any()} |
    {error, get_resource_snapshot_errors(), tuple()}.
get_resource_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_snapshot(Client, Input, []).

-spec get_resource_snapshot(aws_client:aws_client(), get_resource_snapshot_request(), proplists:proplist()) ->
    {ok, get_resource_snapshot_response(), tuple()} |
    {error, any()} |
    {error, get_resource_snapshot_errors(), tuple()}.
get_resource_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourceSnapshot">>, Input, Options).

%% @doc
%% Use this action to retrieves information about a specific resource
%% snapshot
%% job.
-spec get_resource_snapshot_job(aws_client:aws_client(), get_resource_snapshot_job_request()) ->
    {ok, get_resource_snapshot_job_response(), tuple()} |
    {error, any()} |
    {error, get_resource_snapshot_job_errors(), tuple()}.
get_resource_snapshot_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_snapshot_job(Client, Input, []).

-spec get_resource_snapshot_job(aws_client:aws_client(), get_resource_snapshot_job_request(), proplists:proplist()) ->
    {ok, get_resource_snapshot_job_response(), tuple()} |
    {error, any()} |
    {error, get_resource_snapshot_job_errors(), tuple()}.
get_resource_snapshot_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourceSnapshotJob">>, Input, Options).

%% @doc Retrieves the currently set system settings, which include the IAM
%% Role used for resource snapshot jobs.
-spec get_selling_system_settings(aws_client:aws_client(), get_selling_system_settings_request()) ->
    {ok, get_selling_system_settings_response(), tuple()} |
    {error, any()} |
    {error, get_selling_system_settings_errors(), tuple()}.
get_selling_system_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_selling_system_settings(Client, Input, []).

-spec get_selling_system_settings(aws_client:aws_client(), get_selling_system_settings_request(), proplists:proplist()) ->
    {ok, get_selling_system_settings_response(), tuple()} |
    {error, any()} |
    {error, get_selling_system_settings_errors(), tuple()}.
get_selling_system_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSellingSystemSettings">>, Input, Options).

%% @doc
%% Lists all in-progress, completed, or failed
%% StartEngagementByAcceptingInvitationTask
%% tasks that were initiated by the caller's account.
-spec list_engagement_by_accepting_invitation_tasks(aws_client:aws_client(), list_engagement_by_accepting_invitation_tasks_request()) ->
    {ok, list_engagement_by_accepting_invitation_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_engagement_by_accepting_invitation_tasks_errors(), tuple()}.
list_engagement_by_accepting_invitation_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_engagement_by_accepting_invitation_tasks(Client, Input, []).

-spec list_engagement_by_accepting_invitation_tasks(aws_client:aws_client(), list_engagement_by_accepting_invitation_tasks_request(), proplists:proplist()) ->
    {ok, list_engagement_by_accepting_invitation_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_engagement_by_accepting_invitation_tasks_errors(), tuple()}.
list_engagement_by_accepting_invitation_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEngagementByAcceptingInvitationTasks">>, Input, Options).

%% @doc
%% Lists all in-progress, completed, or failed
%% `EngagementFromOpportunity' tasks that were
%% initiated by the caller's account.
-spec list_engagement_from_opportunity_tasks(aws_client:aws_client(), list_engagement_from_opportunity_tasks_request()) ->
    {ok, list_engagement_from_opportunity_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_engagement_from_opportunity_tasks_errors(), tuple()}.
list_engagement_from_opportunity_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_engagement_from_opportunity_tasks(Client, Input, []).

-spec list_engagement_from_opportunity_tasks(aws_client:aws_client(), list_engagement_from_opportunity_tasks_request(), proplists:proplist()) ->
    {ok, list_engagement_from_opportunity_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_engagement_from_opportunity_tasks_errors(), tuple()}.
list_engagement_from_opportunity_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEngagementFromOpportunityTasks">>, Input, Options).

%% @doc Retrieves a list of engagement invitations sent to the partner.
%%
%% This allows partners
%% to view all pending or past engagement invitations, helping them track
%% opportunities
%% shared by AWS.
-spec list_engagement_invitations(aws_client:aws_client(), list_engagement_invitations_request()) ->
    {ok, list_engagement_invitations_response(), tuple()} |
    {error, any()} |
    {error, list_engagement_invitations_errors(), tuple()}.
list_engagement_invitations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_engagement_invitations(Client, Input, []).

-spec list_engagement_invitations(aws_client:aws_client(), list_engagement_invitations_request(), proplists:proplist()) ->
    {ok, list_engagement_invitations_response(), tuple()} |
    {error, any()} |
    {error, list_engagement_invitations_errors(), tuple()}.
list_engagement_invitations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEngagementInvitations">>, Input, Options).

%% @doc
%% Retrieves the details of member partners in an engagement.
%%
%% This operation can only be
%% invoked by members of the engagement. The `ListEngagementMembers'
%% operation allows you to
%% fetch information about the members of a specific engagement. This action
%% is restricted
%% to members of the engagement being queried.
-spec list_engagement_members(aws_client:aws_client(), list_engagement_members_request()) ->
    {ok, list_engagement_members_response(), tuple()} |
    {error, any()} |
    {error, list_engagement_members_errors(), tuple()}.
list_engagement_members(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_engagement_members(Client, Input, []).

-spec list_engagement_members(aws_client:aws_client(), list_engagement_members_request(), proplists:proplist()) ->
    {ok, list_engagement_members_response(), tuple()} |
    {error, any()} |
    {error, list_engagement_members_errors(), tuple()}.
list_engagement_members(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEngagementMembers">>, Input, Options).

%% @doc
%% Lists the associations between resources and engagements where the caller
%% is a member
%% and has at least one snapshot in the engagement.
-spec list_engagement_resource_associations(aws_client:aws_client(), list_engagement_resource_associations_request()) ->
    {ok, list_engagement_resource_associations_response(), tuple()} |
    {error, any()} |
    {error, list_engagement_resource_associations_errors(), tuple()}.
list_engagement_resource_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_engagement_resource_associations(Client, Input, []).

-spec list_engagement_resource_associations(aws_client:aws_client(), list_engagement_resource_associations_request(), proplists:proplist()) ->
    {ok, list_engagement_resource_associations_response(), tuple()} |
    {error, any()} |
    {error, list_engagement_resource_associations_errors(), tuple()}.
list_engagement_resource_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEngagementResourceAssociations">>, Input, Options).

%% @doc
%% This action allows users to retrieve a list of engagement records from
%% Partner
%% Central.
%%
%% This action can be used to manage and track various engagements across
%% different stages of the partner selling process.
-spec list_engagements(aws_client:aws_client(), list_engagements_request()) ->
    {ok, list_engagements_response(), tuple()} |
    {error, any()} |
    {error, list_engagements_errors(), tuple()}.
list_engagements(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_engagements(Client, Input, []).

-spec list_engagements(aws_client:aws_client(), list_engagements_request(), proplists:proplist()) ->
    {ok, list_engagements_response(), tuple()} |
    {error, any()} |
    {error, list_engagements_errors(), tuple()}.
list_engagements(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEngagements">>, Input, Options).

%% @doc This request accepts a list of filters that retrieve opportunity
%% subsets as well as
%% sort options.
%%
%% This feature is available to partners from Partner Central:
%% https://partnercentral.awspartner.com/ using the
%% `ListOpportunities' API action.
%%
%% To synchronize your system with Amazon Web Services, only list the
%% opportunities that
%% were newly created or updated. We recommend you rely on events emitted by
%% the service
%% into your Amazon Web Services account’s Amazon EventBridge default event
%% bus, you can
%% also use the `ListOpportunities' action.
%%
%% We recommend the following approach:
%%
%% Find the latest `LastModifiedDate' that you stored, and only use
%% the values that came from Amazon Web Services. Don’t use values generated
%% by your
%% system.
%%
%% When you send a `ListOpportunities' request, submit the date in ISO
%% 8601 format in the `AfterLastModifiedDate' filter.
%%
%% Amazon Web Services only returns opportunities created or updated on or
%% after
%% that date and time. Use `NextToken' to iterate over all pages.
-spec list_opportunities(aws_client:aws_client(), list_opportunities_request()) ->
    {ok, list_opportunities_response(), tuple()} |
    {error, any()} |
    {error, list_opportunities_errors(), tuple()}.
list_opportunities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_opportunities(Client, Input, []).

-spec list_opportunities(aws_client:aws_client(), list_opportunities_request(), proplists:proplist()) ->
    {ok, list_opportunities_response(), tuple()} |
    {error, any()} |
    {error, list_opportunities_errors(), tuple()}.
list_opportunities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOpportunities">>, Input, Options).

%% @doc
%% Lists resource snapshot jobs owned by the customer.
%%
%% This operation supports various
%% filtering scenarios, including listing all jobs owned by the caller, jobs
%% for a specific
%% engagement, jobs with a specific status, or any combination of these
%% filters.
-spec list_resource_snapshot_jobs(aws_client:aws_client(), list_resource_snapshot_jobs_request()) ->
    {ok, list_resource_snapshot_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_resource_snapshot_jobs_errors(), tuple()}.
list_resource_snapshot_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_snapshot_jobs(Client, Input, []).

-spec list_resource_snapshot_jobs(aws_client:aws_client(), list_resource_snapshot_jobs_request(), proplists:proplist()) ->
    {ok, list_resource_snapshot_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_resource_snapshot_jobs_errors(), tuple()}.
list_resource_snapshot_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceSnapshotJobs">>, Input, Options).

%% @doc
%% Retrieves a list of resource view snapshots based on specified criteria.
-spec list_resource_snapshots(aws_client:aws_client(), list_resource_snapshots_request()) ->
    {ok, list_resource_snapshots_response(), tuple()} |
    {error, any()} |
    {error, list_resource_snapshots_errors(), tuple()}.
list_resource_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_snapshots(Client, Input, []).

-spec list_resource_snapshots(aws_client:aws_client(), list_resource_snapshots_request(), proplists:proplist()) ->
    {ok, list_resource_snapshots_response(), tuple()} |
    {error, any()} |
    {error, list_resource_snapshots_errors(), tuple()}.
list_resource_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceSnapshots">>, Input, Options).

%% @doc Retrieves a list of Partner Solutions that the partner registered on
%% Partner Central.
%%
%% This API is used to generate a list of solutions that an end user selects
%% from for
%% association with an opportunity.
-spec list_solutions(aws_client:aws_client(), list_solutions_request()) ->
    {ok, list_solutions_response(), tuple()} |
    {error, any()} |
    {error, list_solutions_errors(), tuple()}.
list_solutions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_solutions(Client, Input, []).

-spec list_solutions(aws_client:aws_client(), list_solutions_request(), proplists:proplist()) ->
    {ok, list_solutions_response(), tuple()} |
    {error, any()} |
    {error, list_solutions_errors(), tuple()}.
list_solutions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSolutions">>, Input, Options).

%% @doc Updates the currently set system settings, which include the IAM Role
%% used for resource snapshot jobs.
-spec put_selling_system_settings(aws_client:aws_client(), put_selling_system_settings_request()) ->
    {ok, put_selling_system_settings_response(), tuple()} |
    {error, any()} |
    {error, put_selling_system_settings_errors(), tuple()}.
put_selling_system_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_selling_system_settings(Client, Input, []).

-spec put_selling_system_settings(aws_client:aws_client(), put_selling_system_settings_request(), proplists:proplist()) ->
    {ok, put_selling_system_settings_response(), tuple()} |
    {error, any()} |
    {error, put_selling_system_settings_errors(), tuple()}.
put_selling_system_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutSellingSystemSettings">>, Input, Options).

%% @doc This action rejects an `EngagementInvitation' that AWS shared.
%%
%% Rejecting an
%% invitation indicates that the partner doesn't want to pursue the
%% opportunity, and all
%% related data will become inaccessible thereafter.
-spec reject_engagement_invitation(aws_client:aws_client(), reject_engagement_invitation_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, reject_engagement_invitation_errors(), tuple()}.
reject_engagement_invitation(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_engagement_invitation(Client, Input, []).

-spec reject_engagement_invitation(aws_client:aws_client(), reject_engagement_invitation_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, reject_engagement_invitation_errors(), tuple()}.
reject_engagement_invitation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectEngagementInvitation">>, Input, Options).

%% @doc This action starts the engagement by accepting an
%% `EngagementInvitation'.
%%
%% The task is asynchronous and involves the following steps: accepting the
%% invitation,
%% creating an opportunity in the partner’s account from the AWS opportunity,
%% and copying
%% details for tracking. When completed, an `Opportunity Created' event
%% is
%% generated, indicating that the opportunity has been successfully created
%% in the
%% partner's account.
-spec start_engagement_by_accepting_invitation_task(aws_client:aws_client(), start_engagement_by_accepting_invitation_task_request()) ->
    {ok, start_engagement_by_accepting_invitation_task_response(), tuple()} |
    {error, any()} |
    {error, start_engagement_by_accepting_invitation_task_errors(), tuple()}.
start_engagement_by_accepting_invitation_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_engagement_by_accepting_invitation_task(Client, Input, []).

-spec start_engagement_by_accepting_invitation_task(aws_client:aws_client(), start_engagement_by_accepting_invitation_task_request(), proplists:proplist()) ->
    {ok, start_engagement_by_accepting_invitation_task_response(), tuple()} |
    {error, any()} |
    {error, start_engagement_by_accepting_invitation_task_errors(), tuple()}.
start_engagement_by_accepting_invitation_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartEngagementByAcceptingInvitationTask">>, Input, Options).

%% @doc This action initiates the engagement process from an existing
%% opportunity by accepting
%% the engagement invitation and creating a corresponding opportunity in the
%% partner’s
%% system.
%%
%% Similar to `StartEngagementByAcceptingInvitationTask', this action is
%% asynchronous and performs multiple steps before completion.
-spec start_engagement_from_opportunity_task(aws_client:aws_client(), start_engagement_from_opportunity_task_request()) ->
    {ok, start_engagement_from_opportunity_task_response(), tuple()} |
    {error, any()} |
    {error, start_engagement_from_opportunity_task_errors(), tuple()}.
start_engagement_from_opportunity_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_engagement_from_opportunity_task(Client, Input, []).

-spec start_engagement_from_opportunity_task(aws_client:aws_client(), start_engagement_from_opportunity_task_request(), proplists:proplist()) ->
    {ok, start_engagement_from_opportunity_task_response(), tuple()} |
    {error, any()} |
    {error, start_engagement_from_opportunity_task_errors(), tuple()}.
start_engagement_from_opportunity_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartEngagementFromOpportunityTask">>, Input, Options).

%% @doc
%% Starts a resource snapshot job that has been previously created.
-spec start_resource_snapshot_job(aws_client:aws_client(), start_resource_snapshot_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_resource_snapshot_job_errors(), tuple()}.
start_resource_snapshot_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_resource_snapshot_job(Client, Input, []).

-spec start_resource_snapshot_job(aws_client:aws_client(), start_resource_snapshot_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_resource_snapshot_job_errors(), tuple()}.
start_resource_snapshot_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartResourceSnapshotJob">>, Input, Options).

%% @doc
%% Stops a resource snapshot job.
%%
%% The job must be started prior to being stopped.
-spec stop_resource_snapshot_job(aws_client:aws_client(), stop_resource_snapshot_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_resource_snapshot_job_errors(), tuple()}.
stop_resource_snapshot_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_resource_snapshot_job(Client, Input, []).

-spec stop_resource_snapshot_job(aws_client:aws_client(), stop_resource_snapshot_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_resource_snapshot_job_errors(), tuple()}.
stop_resource_snapshot_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopResourceSnapshotJob">>, Input, Options).

%% @doc
%% Use this action to submit an opportunity that was previously created by
%% partner for
%% AWS review.
%%
%% After you perform this action, the opportunity becomes non-editable until
%% it
%% is reviewed by AWS and has ` LifeCycle.ReviewStatus ' as either
%% `Approved' or `Action Required'.
-spec submit_opportunity(aws_client:aws_client(), submit_opportunity_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, submit_opportunity_errors(), tuple()}.
submit_opportunity(Client, Input)
  when is_map(Client), is_map(Input) ->
    submit_opportunity(Client, Input, []).

-spec submit_opportunity(aws_client:aws_client(), submit_opportunity_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, submit_opportunity_errors(), tuple()}.
submit_opportunity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SubmitOpportunity">>, Input, Options).

%% @doc Updates the `Opportunity' record identified by a given
%% `Identifier'.
%%
%% This operation allows you to modify the details of an
%% existing opportunity to reflect the latest information and progress. Use
%% this action to
%% keep the opportunity record up-to-date and accurate.
%%
%% When you perform updates, include the entire payload with each request. If
%% any field
%% is omitted, the API assumes that the field is set to `null'. The best
%% practice is to always perform a `GetOpportunity' to retrieve the
%% latest
%% values, then send the complete payload with the updated values to be
%% changed.
-spec update_opportunity(aws_client:aws_client(), update_opportunity_request()) ->
    {ok, update_opportunity_response(), tuple()} |
    {error, any()} |
    {error, update_opportunity_errors(), tuple()}.
update_opportunity(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_opportunity(Client, Input, []).

-spec update_opportunity(aws_client:aws_client(), update_opportunity_request(), proplists:proplist()) ->
    {ok, update_opportunity_response(), tuple()} |
    {error, any()} |
    {error, update_opportunity_errors(), tuple()}.
update_opportunity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateOpportunity">>, Input, Options).

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
    Client1 = Client#{service => <<"partnercentral-selling">>},
    Host = build_host(<<"partnercentral-selling">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AWSPartnerCentralSelling.", Action/binary>>}
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
