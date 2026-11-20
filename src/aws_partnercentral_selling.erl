%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Partner Central
%%
%% This Amazon Web Services (AWS) Partner Central API reference is designed
%% to help AWS Partners: http://aws.amazon.com/partners/programs/ integrate
%% Customer Relationship Management (CRM) systems with AWS Partner Central.
%%
%% Partners can automate interactions with AWS Partner Central, which helps
%% to ensure effective engagements in joint business activities.
%%
%% The API provides standard AWS API functionality. Access it by either using
%% API Actions:
%% https://docs.aws.amazon.com/partner-central/latest/selling-api/API_Operations.html
%% or by using an AWS SDK that's tailored to your programming language or
%% platform. For more information, see Getting Started with AWS:
%% http://aws.amazon.com/getting-started and Tools to Build on AWS:
%% http://aws.amazon.com/developer/tools/.
%%
%% == Features offered by AWS Partner Central API ==
%%
%% Opportunity management: Manages coselling opportunities through API
%% actions such as `CreateOpportunity', `UpdateOpportunity',
%% `ListOpportunities', `GetOpportunity', and
%% `AssignOpportunity'.
%%
%% AWS referral management: Manages referrals shared by AWS using actions
%% such as `ListEngagementInvitations', `GetEngagementInvitation',
%% `StartEngagementByAcceptingInvitation', and
%% `RejectEngagementInvitation'.
%%
%% Entity association: Associates related entities such as AWS Products,
%% Partner Solutions, and AWS Marketplace Private Offers with opportunities
%% using the actions `AssociateOpportunity', and
%% `DisassociateOpportunity'.
%%
%% View AWS opportunity details: Retrieves real-time summaries of AWS
%% opportunities using the `GetAWSOpportunitySummary' action.
%%
%% List solutions: Provides list APIs for listing partner offers using
%% `ListSolutions'.
%%
%% Event subscription: Subscribe to real-time opportunity updates through AWS
%% EventBridge by using actions such as Opportunity Created, Opportunity
%% Updated, Engagement Invitation Accepted, Engagement Invitation Rejected,
%% and Engagement Invitation Created.
-module(aws_partnercentral_selling).

-export([accept_engagement_invitation/2,
         accept_engagement_invitation/3,
         assign_opportunity/2,
         assign_opportunity/3,
         associate_opportunity/2,
         associate_opportunity/3,
         create_customer_account/2,
         create_customer_account/3,
         create_engagement/2,
         create_engagement/3,
         create_engagement_context/2,
         create_engagement_context/3,
         create_engagement_invitation/2,
         create_engagement_invitation/3,
         create_opportunity/2,
         create_opportunity/3,
         create_resource_snapshot/2,
         create_resource_snapshot/3,
         create_resource_snapshot_job/2,
         create_resource_snapshot_job/3,
         delete_customer_account/2,
         delete_customer_account/3,
         delete_resource_snapshot_job/2,
         delete_resource_snapshot_job/3,
         disassociate_opportunity/2,
         disassociate_opportunity/3,
         get_aws_opportunity_summary/2,
         get_aws_opportunity_summary/3,
         get_customer_account/2,
         get_customer_account/3,
         get_customer_account_bulk_job/2,
         get_customer_account_bulk_job/3,
         get_customer_account_bulk_job_report_url/2,
         get_customer_account_bulk_job_report_url/3,
         get_customer_account_statistics/2,
         get_customer_account_statistics/3,
         get_engagement/2,
         get_engagement/3,
         get_engagement_invitation/2,
         get_engagement_invitation/3,
         get_opportunity/2,
         get_opportunity/3,
         get_opportunity_bulk_job_report_url/2,
         get_opportunity_bulk_job_report_url/3,
         get_prospecting_from_engagement_task/2,
         get_prospecting_from_engagement_task/3,
         get_resource_snapshot/2,
         get_resource_snapshot/3,
         get_resource_snapshot_job/2,
         get_resource_snapshot_job/3,
         get_selling_system_settings/2,
         get_selling_system_settings/3,
         list_customer_account_bulk_job_results/2,
         list_customer_account_bulk_job_results/3,
         list_customer_account_bulk_jobs/2,
         list_customer_account_bulk_jobs/3,
         list_engagement_by_accepting_invitation_tasks/2,
         list_engagement_by_accepting_invitation_tasks/3,
         list_engagement_from_opportunity_tasks/2,
         list_engagement_from_opportunity_tasks/3,
         list_engagement_groups/2,
         list_engagement_groups/3,
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
         list_opportunity_bulk_job_results/2,
         list_opportunity_bulk_job_results/3,
         list_opportunity_bulk_jobs/2,
         list_opportunity_bulk_jobs/3,
         list_opportunity_from_engagement_tasks/2,
         list_opportunity_from_engagement_tasks/3,
         list_prospecting_from_engagement_tasks/2,
         list_prospecting_from_engagement_tasks/3,
         list_resource_snapshot_jobs/2,
         list_resource_snapshot_jobs/3,
         list_resource_snapshots/2,
         list_resource_snapshots/3,
         list_solutions/2,
         list_solutions/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_selling_system_settings/2,
         put_selling_system_settings/3,
         reject_engagement_invitation/2,
         reject_engagement_invitation/3,
         search_customer_accounts/2,
         search_customer_accounts/3,
         search_engagements/2,
         search_engagements/3,
         search_opportunities/2,
         search_opportunities/3,
         start_customer_account_bulk_job/2,
         start_customer_account_bulk_job/3,
         start_engagement_by_accepting_invitation_task/2,
         start_engagement_by_accepting_invitation_task/3,
         start_engagement_from_opportunity_task/2,
         start_engagement_from_opportunity_task/3,
         start_opportunity_bulk_job/2,
         start_opportunity_bulk_job/3,
         start_opportunity_from_engagement_task/2,
         start_opportunity_from_engagement_task/3,
         start_prospecting_from_engagement_task/2,
         start_prospecting_from_engagement_task/3,
         start_resource_snapshot_job/2,
         start_resource_snapshot_job/3,
         stop_resource_snapshot_job/2,
         stop_resource_snapshot_job/3,
         submit_opportunity/2,
         submit_opportunity/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_customer_account/2,
         update_customer_account/3,
         update_engagement_context/2,
         update_engagement_context/3,
         update_opportunity/2,
         update_opportunity/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%% hackney:body/1 is only called with hackney versions that still export it.
-ignore_xref([{hackney, body, 1}]).


%% Example:
%% accept_engagement_invitation_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type accept_engagement_invitation_request() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"Reason">> => list(any())
%% }
-type access_denied_exception() :: #{binary() => any()}.

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
%% account_customer() :: #{
%%   <<"CompanyName">> => string(),
%%   <<"CountryCode">> => list(any()),
%%   <<"Industry">> => string(),
%%   <<"WebsiteUrl">> => string()
%% }
-type account_customer() :: #{binary() => any()}.

%% Example:
%% account_planning_invitation_payload() :: #{
%%   <<"AccountIdentifier">> => string(),
%%   <<"Customer">> => account_customer(),
%%   <<"PreferredContact">> => preferred_contact_window(),
%%   <<"SenderContacts">> => list(sender_contact())
%% }
-type account_planning_invitation_payload() :: #{binary() => any()}.

%% Example:
%% account_receiver() :: #{
%%   <<"Alias">> => string(),
%%   <<"AwsAccountId">> => string()
%% }
-type account_receiver() :: #{binary() => any()}.

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
%% address() :: #{
%%   <<"City">> => string(),
%%   <<"CountryCode">> => list(any()),
%%   <<"PostalCode">> => string(),
%%   <<"StateOrRegion">> => string(),
%%   <<"StreetAddress">> => string()
%% }
-type address() :: #{binary() => any()}.

%% Example:
%% address_summary() :: #{
%%   <<"City">> => string(),
%%   <<"CountryCode">> => list(any()),
%%   <<"PostalCode">> => string(),
%%   <<"StateOrRegion">> => string()
%% }
-type address_summary() :: #{binary() => any()}.

%% Example:
%% aggregation_request() :: #{
%%   <<"GroupBy">> => list(list(any())())
%% }
-type aggregation_request() :: #{binary() => any()}.

%% Example:
%% aggregation_result() :: #{
%%   <<"Buckets">> => list(bucket()),
%%   <<"GroupBy">> => list(list(any())()),
%%   <<"OtherCount">> => [integer()]
%% }
-type aggregation_result() :: #{binary() => any()}.

%% Example:
%% assign_opportunity_request() :: #{
%%   <<"Assignee">> := assignee_contact(),
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type assign_opportunity_request() :: #{binary() => any()}.

%% Example:
%% assignee_contact() :: #{
%%   <<"BusinessTitle">> => string(),
%%   <<"Email">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"LastName">> => string(),
%%   <<"Phone">> => string()
%% }
-type assignee_contact() :: #{binary() => any()}.

%% Example:
%% associate_opportunity_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"OpportunityIdentifier">> := string(),
%%   <<"RelatedEntityIdentifier">> := [string()],
%%   <<"RelatedEntityType">> := list(any())
%% }
-type associate_opportunity_request() :: #{binary() => any()}.

%% Example:
%% aws_enrichment() :: #{
%%   <<"Customer">> => aws_enrichment_customer(),
%%   <<"Insights">> => aws_enrichment_insights()
%% }
-type aws_enrichment() :: #{binary() => any()}.

%% Example:
%% aws_enrichment_customer() :: #{
%%   <<"AccountName">> => [string()],
%%   <<"CompanySize">> => [string()],
%%   <<"Country">> => [string()],
%%   <<"CustomerAccountPlanningQualification">> => [string()],
%%   <<"EligiblePrograms">> => list([string()]()),
%%   <<"Geo">> => [string()],
%%   <<"Industry">> => [string()],
%%   <<"Region">> => [string()],
%%   <<"Sector">> => [string()],
%%   <<"Segment">> => [string()],
%%   <<"SubIndustry">> => [string()],
%%   <<"SubRegion">> => [string()]
%% }
-type aws_enrichment_customer() :: #{binary() => any()}.

%% Example:
%% aws_enrichment_customer_summary() :: #{
%%   <<"AccountPlanningQualification">> => string(),
%%   <<"Country">> => [string()],
%%   <<"EligiblePrograms">> => list([string()]()),
%%   <<"Geo">> => [string()],
%%   <<"Industry">> => [string()],
%%   <<"Segment">> => [string()]
%% }
-type aws_enrichment_customer_summary() :: #{binary() => any()}.

%% Example:
%% aws_enrichment_insights() :: #{
%%   <<"MarketplaceEngagementScore">> => [string()],
%%   <<"SolutionCategory">> => [string()],
%%   <<"SolutionScore">> => [string()],
%%   <<"SolutionSubCategory">> => [string()]
%% }
-type aws_enrichment_insights() :: #{binary() => any()}.

%% Example:
%% aws_enrichment_insights_summary() :: #{
%%   <<"MarketplaceEngagementScore">> => [string()],
%%   <<"SolutionCategory">> => [string()],
%%   <<"SolutionScore">> => [string()]
%% }
-type aws_enrichment_insights_summary() :: #{binary() => any()}.

%% Example:
%% aws_enrichment_summary() :: #{
%%   <<"Customer">> => aws_enrichment_customer_summary(),
%%   <<"Insights">> => aws_enrichment_insights_summary()
%% }
-type aws_enrichment_summary() :: #{binary() => any()}.

%% Example:
%% aws_opportunity_customer() :: #{
%%   <<"Contacts">> => list(contact())
%% }
-type aws_opportunity_customer() :: #{binary() => any()}.

%% Example:
%% aws_opportunity_insights() :: #{
%%   <<"AwsProductsSpendInsightsBySource">> => aws_products_spend_insights_by_source(),
%%   <<"EngagementScore">> => list(any()),
%%   <<"NextBestActions">> => [string()],
%%   <<"OpportunityQuality">> => opportunity_quality(),
%%   <<"Recommendations">> => list(recommendation())
%% }
-type aws_opportunity_insights() :: #{binary() => any()}.

%% Example:
%% aws_opportunity_life_cycle() :: #{
%%   <<"ClosedLostReason">> => list(any()),
%%   <<"NextSteps">> => string(),
%%   <<"NextStepsHistory">> => list(profile_next_steps_history()),
%%   <<"Stage">> => list(any()),
%%   <<"TargetCloseDate">> => string()
%% }
-type aws_opportunity_life_cycle() :: #{binary() => any()}.

%% Example:
%% aws_opportunity_project() :: #{
%%   <<"AwsPartition">> => list(any()),
%%   <<"ExpectedCustomerSpend">> => list(expected_customer_spend())
%% }
-type aws_opportunity_project() :: #{binary() => any()}.

%% Example:
%% aws_opportunity_related_entities() :: #{
%%   <<"AwsMarketplaceProducts">> => list(string()),
%%   <<"AwsMarketplaceSolutions">> => list(string()),
%%   <<"AwsProducts">> => list(string()),
%%   <<"Solutions">> => list(string())
%% }
-type aws_opportunity_related_entities() :: #{binary() => any()}.

%% Example:
%% aws_opportunity_summary_full_view() :: #{
%%   <<"CosellMotion">> => [string()],
%%   <<"CosellMotionReason">> => [string()],
%%   <<"Customer">> => aws_opportunity_customer(),
%%   <<"Insights">> => aws_opportunity_insights(),
%%   <<"InvolvementType">> => list(any()),
%%   <<"InvolvementTypeChangeReason">> => list(any()),
%%   <<"LifeCycle">> => aws_opportunity_life_cycle(),
%%   <<"OpportunityTeam">> => list(aws_team_member()),
%%   <<"Origin">> => list(any()),
%%   <<"Project">> => aws_opportunity_project(),
%%   <<"RelatedEntityIds">> => aws_opportunity_related_entities(),
%%   <<"RelatedOpportunityId">> => string(),
%%   <<"SoftwareRevenue">> => aws_software_revenue(),
%%   <<"Visibility">> => list(any())
%% }
-type aws_opportunity_summary_full_view() :: #{binary() => any()}.

%% Example:
%% aws_product_details() :: #{
%%   <<"Amount">> => string(),
%%   <<"Categories">> => list([string()]()),
%%   <<"Optimizations">> => list(aws_product_optimization()),
%%   <<"OptimizedAmount">> => string(),
%%   <<"PotentialSavingsAmount">> => string(),
%%   <<"ProductCode">> => [string()],
%%   <<"ServiceCode">> => [string()]
%% }
-type aws_product_details() :: #{binary() => any()}.

%% Example:
%% aws_product_insights() :: #{
%%   <<"AwsProducts">> => list(aws_product_details()),
%%   <<"CurrencyCode">> => list(any()),
%%   <<"Frequency">> => list(any()),
%%   <<"TotalAmount">> => string(),
%%   <<"TotalAmountByCategory">> => map(),
%%   <<"TotalOptimizedAmount">> => string(),
%%   <<"TotalPotentialSavingsAmount">> => string()
%% }
-type aws_product_insights() :: #{binary() => any()}.

%% Example:
%% aws_product_optimization() :: #{
%%   <<"Description">> => [string()],
%%   <<"SavingsAmount">> => string()
%% }
-type aws_product_optimization() :: #{binary() => any()}.

%% Example:
%% aws_products_spend_insights_by_source() :: #{
%%   <<"AWS">> => aws_product_insights(),
%%   <<"Partner">> => aws_product_insights()
%% }
-type aws_products_spend_insights_by_source() :: #{binary() => any()}.

%% Example:
%% aws_software_revenue() :: #{
%%   <<"Discount">> => [string()],
%%   <<"EffectiveDate">> => [string()],
%%   <<"ExpirationDate">> => [string()],
%%   <<"Value">> => monetary_value()
%% }
-type aws_software_revenue() :: #{binary() => any()}.

%% Example:
%% aws_submission() :: #{
%%   <<"InvolvementType">> => list(any()),
%%   <<"Visibility">> => list(any())
%% }
-type aws_submission() :: #{binary() => any()}.

%% Example:
%% aws_team_member() :: #{
%%   <<"BusinessTitle">> => list(any()),
%%   <<"Email">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"LastName">> => string()
%% }
-type aws_team_member() :: #{binary() => any()}.

%% Example:
%% best_outreach_window() :: #{
%%   <<"Day">> => list(any()),
%%   <<"EndTimeUtc">> => string(),
%%   <<"StartTimeUtc">> => string()
%% }
-type best_outreach_window() :: #{binary() => any()}.

%% Example:
%% bucket() :: #{
%%   <<"Count">> => [integer()],
%%   <<"Values">> => list([string()]())
%% }
-type bucket() :: #{binary() => any()}.

%% Example:
%% bulk_job_result() :: #{
%%   <<"ErrorCode">> => [string()],
%%   <<"ErrorMessage">> => [string()],
%%   <<"RequestId">> => [string()],
%%   <<"ResourceIdentifier">> => [string()],
%%   <<"Status">> => list(any())
%% }
-type bulk_job_result() :: #{binary() => any()}.

%% Example:
%% channel_recommendation() :: #{
%%   <<"BestOutreachWindows">> => list(best_outreach_window()),
%%   <<"RecommendedChannel">> => string()
%% }
-type channel_recommendation() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.

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
%% create_customer_account_request() :: #{
%%   <<"Account">> := customer_account_data(),
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"PartnerAccountIdentifier">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_customer_account_request() :: #{binary() => any()}.

%% Example:
%% create_customer_account_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"PartnerAccountIdentifier">> => string(),
%%   <<"Status">> => list(any())
%% }
-type create_customer_account_response() :: #{binary() => any()}.

%% Example:
%% create_engagement_context_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"EngagementIdentifier">> := string(),
%%   <<"Payload">> := list(),
%%   <<"Type">> := list(any())
%% }
-type create_engagement_context_request() :: #{binary() => any()}.

%% Example:
%% create_engagement_context_response() :: #{
%%   <<"ContextId">> => string(),
%%   <<"EngagementArn">> => string(),
%%   <<"EngagementId">> => string(),
%%   <<"EngagementLastModifiedAt">> => non_neg_integer()
%% }
-type create_engagement_context_response() :: #{binary() => any()}.

%% Example:
%% create_engagement_invitation_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"EngagementIdentifier">> := string(),
%%   <<"Invitation">> := invitation()
%% }
-type create_engagement_invitation_request() :: #{binary() => any()}.

%% Example:
%% create_engagement_invitation_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type create_engagement_invitation_response() :: #{binary() => any()}.

%% Example:
%% create_engagement_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"Contexts">> => list(engagement_context_details()),
%%   <<"Description">> => string(),
%%   <<"Title">> => string()
%% }
-type create_engagement_request() :: #{binary() => any()}.

%% Example:
%% create_engagement_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string(),
%%   <<"ModifiedAt">> => non_neg_integer()
%% }
-type create_engagement_response() :: #{binary() => any()}.

%% Example:
%% create_opportunity_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"Customer">> => customer(),
%%   <<"LifeCycle">> => life_cycle(),
%%   <<"Marketing">> => marketing(),
%%   <<"NationalSecurity">> => list(any()),
%%   <<"OpportunityTeam">> => list(contact()),
%%   <<"OpportunityType">> => list(any()),
%%   <<"Origin">> => list(any()),
%%   <<"PartnerOpportunityIdentifier">> => [string()],
%%   <<"PrimaryNeedsFromAws">> => list(list(any())()),
%%   <<"Project">> => project(),
%%   <<"SoftwareRevenue">> => software_revenue(),
%%   <<"Tags">> => list(tag())
%% }
-type create_opportunity_request() :: #{binary() => any()}.

%% Example:
%% create_opportunity_response() :: #{
%%   <<"Id">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"PartnerOpportunityIdentifier">> => [string()]
%% }
-type create_opportunity_response() :: #{binary() => any()}.

%% Example:
%% create_resource_snapshot_job_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"EngagementIdentifier">> := string(),
%%   <<"ResourceIdentifier">> := string(),
%%   <<"ResourceSnapshotTemplateIdentifier">> := string(),
%%   <<"ResourceType">> := list(any()),
%%   <<"Tags">> => list(tag())
%% }
-type create_resource_snapshot_job_request() :: #{binary() => any()}.

%% Example:
%% create_resource_snapshot_job_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Id">> => string()
%% }
-type create_resource_snapshot_job_response() :: #{binary() => any()}.

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
%% create_resource_snapshot_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Revision">> => integer()
%% }
-type create_resource_snapshot_response() :: #{binary() => any()}.

%% Example:
%% created_date_filter() :: #{
%%   <<"AfterCreatedDate">> => non_neg_integer(),
%%   <<"BeforeCreatedDate">> => non_neg_integer()
%% }
-type created_date_filter() :: #{binary() => any()}.

%% Example:
%% customer() :: #{
%%   <<"Account">> => account(),
%%   <<"Contacts">> => list(contact())
%% }
-type customer() :: #{binary() => any()}.

%% Example:
%% customer_account_bulk_job_filter() :: #{
%%   <<"Identifier">> => string(),
%%   <<"Status">> => list(any())
%% }
-type customer_account_bulk_job_filter() :: #{binary() => any()}.

%% Example:
%% customer_account_bulk_job_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CompletedAt">> => non_neg_integer(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DeletedCount">> => [integer()],
%%   <<"FailureCount">> => [integer()],
%%   <<"FailureReason">> => [string()],
%%   <<"FileName">> => string(),
%%   <<"Id">> => string(),
%%   <<"ProcessedRecords">> => [integer()],
%%   <<"Status">> => list(any()),
%%   <<"SuccessCount">> => [integer()],
%%   <<"TotalRecords">> => [integer()]
%% }
-type customer_account_bulk_job_summary() :: #{binary() => any()}.

%% Example:
%% customer_account_context() :: #{
%%   <<"AccountIdentifier">> => string(),
%%   <<"Customer">> => account_customer()
%% }
-type customer_account_context() :: #{binary() => any()}.

%% Example:
%% customer_account_data() :: #{
%%   <<"Address">> => address(),
%%   <<"CompanyName">> => string(),
%%   <<"Domain">> => string(),
%%   <<"Duns">> => string(),
%%   <<"Industry">> => [string()],
%%   <<"OtherIndustry">> => [string()],
%%   <<"ParentCompanyName">> => string(),
%%   <<"WebsiteUrl">> => string()
%% }
-type customer_account_data() :: #{binary() => any()}.

%% Example:
%% customer_account_details_summary() :: #{
%%   <<"CompanyName">> => string()
%% }
-type customer_account_details_summary() :: #{binary() => any()}.

%% Example:
%% customer_account_sort() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type customer_account_sort() :: #{binary() => any()}.

%% Example:
%% customer_account_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"AwsEnrichment">> => aws_enrichment_summary(),
%%   <<"Catalog">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"CustomerAccount">> => customer_account_details_summary(),
%%   <<"EnrichmentStatus">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"PartnerAccountIdentifier">> => string()
%% }
-type customer_account_summary() :: #{binary() => any()}.

%% Example:
%% customer_projects_context() :: #{
%%   <<"Customer">> => engagement_customer(),
%%   <<"Project">> => engagement_customer_project_details()
%% }
-type customer_projects_context() :: #{binary() => any()}.

%% Example:
%% customer_summary() :: #{
%%   <<"Account">> => account_summary()
%% }
-type customer_summary() :: #{binary() => any()}.

%% Example:
%% delete_customer_account_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type delete_customer_account_request() :: #{binary() => any()}.

%% Example:
%% delete_customer_account_response() :: #{

%% }
-type delete_customer_account_response() :: #{binary() => any()}.

%% Example:
%% delete_resource_snapshot_job_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ResourceSnapshotJobIdentifier">> := string()
%% }
-type delete_resource_snapshot_job_request() :: #{binary() => any()}.

%% Example:
%% disassociate_opportunity_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"OpportunityIdentifier">> := string(),
%%   <<"RelatedEntityIdentifier">> := [string()],
%%   <<"RelatedEntityType">> := list(any())
%% }
-type disassociate_opportunity_request() :: #{binary() => any()}.

%% Example:
%% engagement_context_details() :: #{
%%   <<"Id">> => string(),
%%   <<"Payload">> => list(),
%%   <<"Type">> => list(any())
%% }
-type engagement_context_details() :: #{binary() => any()}.

%% Example:
%% engagement_customer() :: #{
%%   <<"CompanyName">> => string(),
%%   <<"CountryCode">> => list(any()),
%%   <<"Industry">> => list(any()),
%%   <<"WebsiteUrl">> => string()
%% }
-type engagement_customer() :: #{binary() => any()}.

%% Example:
%% engagement_customer_project_details() :: #{
%%   <<"BusinessProblem">> => string(),
%%   <<"TargetCompletionDate">> => [string()],
%%   <<"Title">> => string()
%% }
-type engagement_customer_project_details() :: #{binary() => any()}.

%% Example:
%% engagement_group_sort() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type engagement_group_sort() :: #{binary() => any()}.

%% Example:
%% engagement_group_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"Count">> => [integer()],
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ReadinessLevel">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type engagement_group_summary() :: #{binary() => any()}.

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
%% engagement_member() :: #{
%%   <<"AccountId">> => string(),
%%   <<"CompanyName">> => string(),
%%   <<"WebsiteUrl">> => [string()]
%% }
-type engagement_member() :: #{binary() => any()}.

%% Example:
%% engagement_member_summary() :: #{
%%   <<"CompanyName">> => string(),
%%   <<"WebsiteUrl">> => [string()]
%% }
-type engagement_member_summary() :: #{binary() => any()}.

%% Example:
%% engagement_prospecting_result() :: #{
%%   <<"EngagementContextId">> => [string()],
%%   <<"EngagementIdentifier">> => string(),
%%   <<"Message">> => [string()],
%%   <<"ReasonCode">> => [string()],
%%   <<"Status">> => list(any())
%% }
-type engagement_prospecting_result() :: #{binary() => any()}.

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
%% engagement_search_filter() :: #{
%%   <<"AndAllFilters">> => list(engagement_search_filter()),
%%   <<"ContainsAll">> => engagement_search_predicate(),
%%   <<"ContainsAny">> => engagement_search_predicate(),
%%   <<"EqualsTo">> => engagement_search_predicate(),
%%   <<"GreaterThan">> => engagement_search_predicate(),
%%   <<"GreaterThanOrEquals">> => engagement_search_predicate(),
%%   <<"LessThan">> => engagement_search_predicate(),
%%   <<"LessThanOrEquals">> => engagement_search_predicate(),
%%   <<"NotFilter">> => engagement_search_filter(),
%%   <<"OrAllFilters">> => list(engagement_search_filter())
%% }
-type engagement_search_filter() :: #{binary() => any()}.

%% Example:
%% engagement_search_predicate() :: #{
%%   <<"Key">> => list(any()),
%%   <<"Value">> => list()
%% }
-type engagement_search_predicate() :: #{binary() => any()}.

%% Example:
%% engagement_search_sort() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type engagement_search_sort() :: #{binary() => any()}.

%% Example:
%% engagement_search_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Contexts">> => list(engagement_context_details()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"MemberCount">> => [integer()],
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"ModifiedBy">> => string(),
%%   <<"Title">> => string()
%% }
-type engagement_search_summary() :: #{binary() => any()}.

%% Example:
%% engagement_sort() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type engagement_sort() :: #{binary() => any()}.

%% Example:
%% engagement_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"ContextTypes">> => list(list(any())()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"Id">> => string(),
%%   <<"MemberCount">> => [integer()],
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"ModifiedBy">> => string(),
%%   <<"Title">> => string()
%% }
-type engagement_summary() :: #{binary() => any()}.

%% Example:
%% enrichment_context() :: #{
%%   <<"LeadInsights">> => lead_insights(),
%%   <<"ProspectingResultAws">> => invitation_prospecting_result_aws()
%% }
-type enrichment_context() :: #{binary() => any()}.

%% Example:
%% expected_contract_duration() :: #{
%%   <<"Term">> => list(any()),
%%   <<"Value">> => [string()]
%% }
-type expected_contract_duration() :: #{binary() => any()}.

%% Example:
%% expected_customer_spend() :: #{
%%   <<"Amount">> => string(),
%%   <<"CurrencyCode">> => list(any()),
%%   <<"EstimationUrl">> => string(),
%%   <<"Frequency">> => list(any()),
%%   <<"TargetCompany">> => [string()]
%% }
-type expected_customer_spend() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"AndAllFilters">> => list(filter()),
%%   <<"ContainsAll">> => filter_condition(),
%%   <<"ContainsAny">> => filter_condition(),
%%   <<"EqualsTo">> => filter_condition(),
%%   <<"GreaterThan">> => filter_condition(),
%%   <<"GreaterThanOrEquals">> => filter_condition(),
%%   <<"LessThan">> => filter_condition(),
%%   <<"LessThanOrEquals">> => filter_condition(),
%%   <<"NotFilter">> => filter(),
%%   <<"OrAllFilters">> => list(filter())
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% filter_condition() :: #{
%%   <<"Key">> => list(any()),
%%   <<"Value">> => list()
%% }
-type filter_condition() :: #{binary() => any()}.

%% Example:
%% get_aws_opportunity_summary_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"RelatedOpportunityIdentifier">> := string()
%% }
-type get_aws_opportunity_summary_request() :: #{binary() => any()}.

%% Example:
%% get_aws_opportunity_summary_response() :: #{
%%   <<"Catalog">> => string(),
%%   <<"CosellMotion">> => [string()],
%%   <<"CosellMotionReason">> => [string()],
%%   <<"Customer">> => aws_opportunity_customer(),
%%   <<"Insights">> => aws_opportunity_insights(),
%%   <<"InvolvementType">> => list(any()),
%%   <<"InvolvementTypeChangeReason">> => list(any()),
%%   <<"LifeCycle">> => aws_opportunity_life_cycle(),
%%   <<"OpportunityTeam">> => list(aws_team_member()),
%%   <<"Origin">> => list(any()),
%%   <<"Project">> => aws_opportunity_project(),
%%   <<"RelatedEntityIds">> => aws_opportunity_related_entities(),
%%   <<"RelatedOpportunityId">> => string(),
%%   <<"SoftwareRevenue">> => aws_software_revenue(),
%%   <<"Visibility">> => list(any())
%% }
-type get_aws_opportunity_summary_response() :: #{binary() => any()}.

%% Example:
%% get_customer_account_bulk_job_report_url_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string(),
%%   <<"ReportType">> => list(any())
%% }
-type get_customer_account_bulk_job_report_url_request() :: #{binary() => any()}.

%% Example:
%% get_customer_account_bulk_job_report_url_response() :: #{
%%   <<"ExpiresAt">> => non_neg_integer(),
%%   <<"FailureReason">> => [string()],
%%   <<"ReportStatus">> => list(any()),
%%   <<"ReportType">> => list(any()),
%%   <<"Url">> => string()
%% }
-type get_customer_account_bulk_job_report_url_response() :: #{binary() => any()}.

%% Example:
%% get_customer_account_bulk_job_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type get_customer_account_bulk_job_request() :: #{binary() => any()}.

%% Example:
%% get_customer_account_bulk_job_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CompletedAt">> => non_neg_integer(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DeletedCount">> => [integer()],
%%   <<"FailureCount">> => [integer()],
%%   <<"FailureReason">> => [string()],
%%   <<"FileName">> => string(),
%%   <<"Id">> => string(),
%%   <<"ProcessedRecords">> => [integer()],
%%   <<"Status">> => list(any()),
%%   <<"SuccessCount">> => [integer()],
%%   <<"TotalRecords">> => [integer()]
%% }
-type get_customer_account_bulk_job_response() :: #{binary() => any()}.

%% Example:
%% get_customer_account_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type get_customer_account_request() :: #{binary() => any()}.

%% Example:
%% get_customer_account_response() :: #{
%%   <<"Account">> => customer_account_data(),
%%   <<"Arn">> => string(),
%%   <<"AwsEnrichment">> => aws_enrichment(),
%%   <<"Catalog">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"EnrichmentStatus">> => list(any()),
%%   <<"ExistingCustomerAccountArn">> => string(),
%%   <<"Id">> => string(),
%%   <<"Issues">> => list(issue()),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"Message">> => [string()],
%%   <<"PartnerAccountIdentifier">> => string(),
%%   <<"ReasonCode">> => list(any()),
%%   <<"Tags">> => list(tag())
%% }
-type get_customer_account_response() :: #{binary() => any()}.

%% Example:
%% get_customer_account_statistics_request() :: #{
%%   <<"Aggregations">> => list(aggregation_request()),
%%   <<"Catalog">> := string(),
%%   <<"Filter">> => filter(),
%%   <<"IncludeMissing">> => [boolean()]
%% }
-type get_customer_account_statistics_request() :: #{binary() => any()}.

%% Example:
%% get_customer_account_statistics_response() :: #{
%%   <<"Aggregations">> => list(aggregation_result()),
%%   <<"TotalCount">> => [integer()]
%% }
-type get_customer_account_statistics_response() :: #{binary() => any()}.

%% Example:
%% get_engagement_invitation_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type get_engagement_invitation_request() :: #{binary() => any()}.

%% Example:
%% get_engagement_invitation_response() :: #{
%%   <<"Arn">> => [string()],
%%   <<"Catalog">> => string(),
%%   <<"EngagementDescription">> => string(),
%%   <<"EngagementId">> => string(),
%%   <<"EngagementTitle">> => string(),
%%   <<"EnrichmentContext">> => enrichment_context(),
%%   <<"ExistingMembers">> => list(engagement_member_summary()),
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
%% get_engagement_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type get_engagement_request() :: #{binary() => any()}.

%% Example:
%% get_engagement_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Contexts">> => list(engagement_context_details()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CreatedBy">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"MemberCount">> => [integer()],
%%   <<"ModifiedAt">> => non_neg_integer(),
%%   <<"ModifiedBy">> => string(),
%%   <<"Title">> => string()
%% }
-type get_engagement_response() :: #{binary() => any()}.

%% Example:
%% get_opportunity_bulk_job_report_url_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"JobId">> := string(),
%%   <<"ReportFormat">> := list(any()),
%%   <<"ReportType">> => list(any())
%% }
-type get_opportunity_bulk_job_report_url_request() :: #{binary() => any()}.

%% Example:
%% get_opportunity_bulk_job_report_url_response() :: #{
%%   <<"ExpiresAt">> => non_neg_integer(),
%%   <<"FailureReason">> => [string()],
%%   <<"ReportFormat">> => list(any()),
%%   <<"ReportStatus">> => list(any()),
%%   <<"ReportType">> => list(any()),
%%   <<"Url">> => string()
%% }
-type get_opportunity_bulk_job_report_url_response() :: #{binary() => any()}.

%% Example:
%% get_opportunity_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type get_opportunity_request() :: #{binary() => any()}.

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
%%   <<"OpportunityTeam">> => list(contact()),
%%   <<"OpportunityType">> => list(any()),
%%   <<"PartnerOpportunityIdentifier">> => [string()],
%%   <<"PrimaryNeedsFromAws">> => list(list(any())()),
%%   <<"Project">> => project(),
%%   <<"RelatedEntityIdentifiers">> => related_entity_identifiers(),
%%   <<"SoftwareRevenue">> => software_revenue()
%% }
-type get_opportunity_response() :: #{binary() => any()}.

%% Example:
%% get_prospecting_from_engagement_task_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"TaskIdentifier">> := string()
%% }
-type get_prospecting_from_engagement_task_request() :: #{binary() => any()}.

%% Example:
%% get_prospecting_from_engagement_task_response() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"Engagements">> => list(engagement_prospecting_result()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TaskArn">> => string(),
%%   <<"TaskId">> => string(),
%%   <<"TaskName">> => string()
%% }
-type get_prospecting_from_engagement_task_response() :: #{binary() => any()}.

%% Example:
%% get_resource_snapshot_job_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ResourceSnapshotJobIdentifier">> := string()
%% }
-type get_resource_snapshot_job_request() :: #{binary() => any()}.

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
%%   <<"Revision">> => integer(),
%%   <<"TargetMemberAccounts">> => list(string())
%% }
-type get_resource_snapshot_response() :: #{binary() => any()}.

%% Example:
%% get_selling_system_settings_request() :: #{
%%   <<"Catalog">> := string()
%% }
-type get_selling_system_settings_request() :: #{binary() => any()}.

%% Example:
%% get_selling_system_settings_response() :: #{
%%   <<"Catalog">> => string(),
%%   <<"ResourceSnapshotJobRoleArn">> => string()
%% }
-type get_selling_system_settings_response() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% invitation() :: #{
%%   <<"Message">> => string(),
%%   <<"Payload">> => list(),
%%   <<"Receiver">> => list()
%% }
-type invitation() :: #{binary() => any()}.

%% Example:
%% invitation_prospecting_result_aws() :: #{
%%   <<"Customer">> => prospecting_result_customer(),
%%   <<"Insights">> => prospecting_insights()
%% }
-type invitation_prospecting_result_aws() :: #{binary() => any()}.

%% Example:
%% issue() :: #{
%%   <<"Code">> => [string()],
%%   <<"Message">> => [string()],
%%   <<"Severity">> => [string()]
%% }
-type issue() :: #{binary() => any()}.

%% Example:
%% last_modified_date() :: #{
%%   <<"AfterLastModifiedDate">> => non_neg_integer(),
%%   <<"BeforeLastModifiedDate">> => non_neg_integer()
%% }
-type last_modified_date() :: #{binary() => any()}.

%% Example:
%% lead_address() :: #{
%%   <<"City">> => [string()],
%%   <<"CountryCode">> => string(),
%%   <<"PostalCode">> => [string()],
%%   <<"StateOrRegion">> => [string()]
%% }
-type lead_address() :: #{binary() => any()}.

%% Example:
%% lead_contact() :: #{
%%   <<"BusinessTitle">> => string(),
%%   <<"Email">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"LastName">> => string(),
%%   <<"Phone">> => string()
%% }
-type lead_contact() :: #{binary() => any()}.

%% Example:
%% lead_context() :: #{
%%   <<"Customer">> => lead_customer(),
%%   <<"Insights">> => lead_insights(),
%%   <<"Interactions">> => list(lead_interaction()),
%%   <<"QualificationStatus">> => string()
%% }
-type lead_context() :: #{binary() => any()}.

%% Example:
%% lead_customer() :: #{
%%   <<"Address">> => lead_address(),
%%   <<"AwsMaturity">> => string(),
%%   <<"CompanyName">> => string(),
%%   <<"Industry">> => string(),
%%   <<"MarketSegment">> => string(),
%%   <<"WebsiteUrl">> => string()
%% }
-type lead_customer() :: #{binary() => any()}.

%% Example:
%% lead_insights() :: #{
%%   <<"ChannelRecommendation">> => channel_recommendation(),
%%   <<"LeadReadinessScore">> => [string()]
%% }
-type lead_insights() :: #{binary() => any()}.

%% Example:
%% lead_interaction() :: #{
%%   <<"BusinessProblem">> => string(),
%%   <<"Contact">> => lead_contact(),
%%   <<"CustomerAction">> => string(),
%%   <<"InteractionDate">> => non_neg_integer(),
%%   <<"SourceId">> => string(),
%%   <<"SourceName">> => string(),
%%   <<"SourceType">> => string(),
%%   <<"Usecase">> => string()
%% }
-type lead_interaction() :: #{binary() => any()}.

%% Example:
%% lead_invitation_customer() :: #{
%%   <<"AwsMaturity">> => string(),
%%   <<"CompanyName">> => string(),
%%   <<"CountryCode">> => string(),
%%   <<"Industry">> => string(),
%%   <<"MarketSegment">> => string(),
%%   <<"WebsiteUrl">> => string()
%% }
-type lead_invitation_customer() :: #{binary() => any()}.

%% Example:
%% lead_invitation_interaction() :: #{
%%   <<"ContactBusinessTitle">> => string(),
%%   <<"SourceId">> => string(),
%%   <<"SourceName">> => string(),
%%   <<"SourceType">> => string(),
%%   <<"Usecase">> => string()
%% }
-type lead_invitation_interaction() :: #{binary() => any()}.

%% Example:
%% lead_invitation_payload() :: #{
%%   <<"Customer">> => lead_invitation_customer(),
%%   <<"Interaction">> => lead_invitation_interaction()
%% }
-type lead_invitation_payload() :: #{binary() => any()}.

%% Example:
%% life_cycle() :: #{
%%   <<"ClosedLostReason">> => list(any()),
%%   <<"NextSteps">> => string(),
%%   <<"NextStepsHistory">> => list(next_steps_history()),
%%   <<"ReviewComments">> => [string()],
%%   <<"ReviewStatus">> => list(any()),
%%   <<"ReviewStatusReason">> => [string()],
%%   <<"Stage">> => list(any()),
%%   <<"TargetCloseDate">> => string()
%% }
-type life_cycle() :: #{binary() => any()}.

%% Example:
%% life_cycle_for_view() :: #{
%%   <<"NextSteps">> => string(),
%%   <<"ReviewStatus">> => list(any()),
%%   <<"Stage">> => list(any()),
%%   <<"TargetCloseDate">> => string()
%% }
-type life_cycle_for_view() :: #{binary() => any()}.

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
%% list_customer_account_bulk_job_results_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_customer_account_bulk_job_results_request() :: #{binary() => any()}.

%% Example:
%% list_customer_account_bulk_job_results_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Results">> => list(bulk_job_result())
%% }
-type list_customer_account_bulk_job_results_response() :: #{binary() => any()}.

%% Example:
%% list_customer_account_bulk_jobs_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Filter">> => customer_account_bulk_job_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_customer_account_bulk_jobs_request() :: #{binary() => any()}.

%% Example:
%% list_customer_account_bulk_jobs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"items">> => list(customer_account_bulk_job_summary())
%% }
-type list_customer_account_bulk_jobs_response() :: #{binary() => any()}.

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
%% list_engagement_by_accepting_invitation_tasks_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"EngagementInvitationIdentifier">> => list(string()),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()],
%%   <<"OpportunityIdentifier">> => list(string()),
%%   <<"Sort">> => list_tasks_sort_base(),
%%   <<"TaskIdentifier">> => list(string()),
%%   <<"TaskStatus">> => list(list(any())())
%% }
-type list_engagement_by_accepting_invitation_tasks_request() :: #{binary() => any()}.

%% Example:
%% list_engagement_by_accepting_invitation_tasks_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"TaskSummaries">> => list(list_engagement_by_accepting_invitation_task_summary())
%% }
-type list_engagement_by_accepting_invitation_tasks_response() :: #{binary() => any()}.

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
%% list_engagement_from_opportunity_tasks_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"EngagementIdentifier">> => list(string()),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()],
%%   <<"OpportunityIdentifier">> => list(string()),
%%   <<"Sort">> => list_tasks_sort_base(),
%%   <<"TaskIdentifier">> => list(string()),
%%   <<"TaskStatus">> => list(list(any())())
%% }
-type list_engagement_from_opportunity_tasks_request() :: #{binary() => any()}.

%% Example:
%% list_engagement_from_opportunity_tasks_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"TaskSummaries">> => list(list_engagement_from_opportunity_task_summary())
%% }
-type list_engagement_from_opportunity_tasks_response() :: #{binary() => any()}.

%% Example:
%% list_engagement_groups_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"EngagementGroupIdentifiers">> => list(string()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ReadinessLevel">> => list(any()),
%%   <<"Sort">> => engagement_group_sort()
%% }
-type list_engagement_groups_request() :: #{binary() => any()}.

%% Example:
%% list_engagement_groups_response() :: #{
%%   <<"EngagementGroupSummaries">> => list(engagement_group_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_engagement_groups_response() :: #{binary() => any()}.

%% Example:
%% list_engagement_invitations_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"EngagementIdentifier">> => list(string()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()],
%%   <<"ParticipantType">> := list(any()),
%%   <<"PayloadType">> => list(list(any())()),
%%   <<"SenderAwsAccountId">> => list(string()),
%%   <<"Sort">> => opportunity_engagement_invitation_sort(),
%%   <<"Status">> => list(list(any())())
%% }
-type list_engagement_invitations_request() :: #{binary() => any()}.

%% Example:
%% list_engagement_invitations_response() :: #{
%%   <<"EngagementInvitationSummaries">> => list(engagement_invitation_summary()),
%%   <<"NextToken">> => [string()]
%% }
-type list_engagement_invitations_response() :: #{binary() => any()}.

%% Example:
%% list_engagement_members_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_engagement_members_request() :: #{binary() => any()}.

%% Example:
%% list_engagement_members_response() :: #{
%%   <<"EngagementMemberList">> => list(engagement_member()),
%%   <<"NextToken">> => [string()]
%% }
-type list_engagement_members_response() :: #{binary() => any()}.

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
%% list_engagement_resource_associations_response() :: #{
%%   <<"EngagementResourceAssociationSummaries">> => list(engagement_resource_association_summary()),
%%   <<"NextToken">> => [string()]
%% }
-type list_engagement_resource_associations_response() :: #{binary() => any()}.

%% Example:
%% list_engagements_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ContextTypes">> => list(list(any())()),
%%   <<"CreatedBy">> => list(string()),
%%   <<"EngagementIdentifier">> => list(string()),
%%   <<"ExcludeContextTypes">> => list(list(any())()),
%%   <<"ExcludeCreatedBy">> => list(string()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()],
%%   <<"Sort">> => engagement_sort()
%% }
-type list_engagements_request() :: #{binary() => any()}.

%% Example:
%% list_engagements_response() :: #{
%%   <<"EngagementSummaryList">> => list(engagement_summary()),
%%   <<"NextToken">> => [string()]
%% }
-type list_engagements_response() :: #{binary() => any()}.

%% Example:
%% list_opportunities_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"CreatedDate">> => created_date_filter(),
%%   <<"CustomerCompanyName">> => list([string()]()),
%%   <<"Identifier">> => list(string()),
%%   <<"LastModifiedDate">> => last_modified_date(),
%%   <<"LifeCycleReviewStatus">> => list(list(any())()),
%%   <<"LifeCycleStage">> => list(list(any())()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()],
%%   <<"Sort">> => opportunity_sort(),
%%   <<"TargetCloseDate">> => target_close_date_filter()
%% }
-type list_opportunities_request() :: #{binary() => any()}.

%% Example:
%% list_opportunities_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"OpportunitySummaries">> => list(opportunity_summary())
%% }
-type list_opportunities_response() :: #{binary() => any()}.

%% Example:
%% list_opportunity_bulk_job_results_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"JobId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()],
%%   <<"Status">> => list(any())
%% }
-type list_opportunity_bulk_job_results_request() :: #{binary() => any()}.

%% Example:
%% list_opportunity_bulk_job_results_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"Results">> => list(bulk_job_result())
%% }
-type list_opportunity_bulk_job_results_response() :: #{binary() => any()}.

%% Example:
%% list_opportunity_bulk_jobs_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"JobId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()],
%%   <<"Status">> => list(any())
%% }
-type list_opportunity_bulk_jobs_request() :: #{binary() => any()}.

%% Example:
%% list_opportunity_bulk_jobs_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"OpportunityBulkJobSummaries">> => list(opportunity_bulk_job_summary())
%% }
-type list_opportunity_bulk_jobs_response() :: #{binary() => any()}.

%% Example:
%% list_opportunity_from_engagement_task_summary() :: #{
%%   <<"ContextId">> => string(),
%%   <<"EngagementId">> => string(),
%%   <<"Message">> => [string()],
%%   <<"OpportunityId">> => string(),
%%   <<"ReasonCode">> => list(any()),
%%   <<"ResourceSnapshotJobId">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TaskArn">> => string(),
%%   <<"TaskId">> => string(),
%%   <<"TaskStatus">> => list(any())
%% }
-type list_opportunity_from_engagement_task_summary() :: #{binary() => any()}.

%% Example:
%% list_opportunity_from_engagement_tasks_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ContextIdentifier">> => list(string()),
%%   <<"EngagementIdentifier">> => list(string()),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()],
%%   <<"OpportunityIdentifier">> => list(string()),
%%   <<"Sort">> => list_tasks_sort_base(),
%%   <<"TaskIdentifier">> => list(string()),
%%   <<"TaskStatus">> => list(list(any())())
%% }
-type list_opportunity_from_engagement_tasks_request() :: #{binary() => any()}.

%% Example:
%% list_opportunity_from_engagement_tasks_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"TaskSummaries">> => list(list_opportunity_from_engagement_task_summary())
%% }
-type list_opportunity_from_engagement_tasks_response() :: #{binary() => any()}.

%% Example:
%% list_prospecting_from_engagement_tasks_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()],
%%   <<"Sort">> => prospecting_from_engagement_task_sort(),
%%   <<"StartAfter">> => non_neg_integer(),
%%   <<"StartBefore">> => non_neg_integer(),
%%   <<"TaskIdentifier">> => list(string()),
%%   <<"TaskName">> => list(string())
%% }
-type list_prospecting_from_engagement_tasks_request() :: #{binary() => any()}.

%% Example:
%% list_prospecting_from_engagement_tasks_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"TaskSummaries">> => list(prospecting_task_summary())
%% }
-type list_prospecting_from_engagement_tasks_response() :: #{binary() => any()}.

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
%% list_resource_snapshot_jobs_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"ResourceSnapshotJobSummaries">> => list(resource_snapshot_job_summary())
%% }
-type list_resource_snapshot_jobs_response() :: #{binary() => any()}.

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
%% list_resource_snapshots_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"ResourceSnapshotSummaries">> => list(resource_snapshot_summary())
%% }
-type list_resource_snapshots_response() :: #{binary() => any()}.

%% Example:
%% list_solutions_request() :: #{
%%   <<"AwsMarketplaceSolutionArn">> => list(string()),
%%   <<"Catalog">> := string(),
%%   <<"Category">> => list([string()]()),
%%   <<"Identifier">> => list(string()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()],
%%   <<"Sort">> => solution_sort(),
%%   <<"Status">> => list(list(any())())
%% }
-type list_solutions_request() :: #{binary() => any()}.

%% Example:
%% list_solutions_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"SolutionSummaries">> => list(solution_base())
%% }
-type list_solutions_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% list_tasks_sort_base() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_tasks_sort_base() :: #{binary() => any()}.

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
%% monetary_value() :: #{
%%   <<"Amount">> => [string()],
%%   <<"CurrencyCode">> => list(any())
%% }
-type monetary_value() :: #{binary() => any()}.

%% Example:
%% next_steps_history() :: #{
%%   <<"Time">> => non_neg_integer(),
%%   <<"Value">> => [string()]
%% }
-type next_steps_history() :: #{binary() => any()}.

%% Example:
%% opportunity_bulk_job_summary() :: #{
%%   <<"CompletedAt">> => non_neg_integer(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"FailureCount">> => [integer()],
%%   <<"FailureReason">> => [string()],
%%   <<"FileName">> => string(),
%%   <<"JobId">> => string(),
%%   <<"OperationType">> => list(any()),
%%   <<"ProcessedRecords">> => [integer()],
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"SuccessCount">> => [integer()],
%%   <<"TotalRecords">> => [integer()]
%% }
-type opportunity_bulk_job_summary() :: #{binary() => any()}.

%% Example:
%% opportunity_engagement_invitation_sort() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type opportunity_engagement_invitation_sort() :: #{binary() => any()}.

%% Example:
%% opportunity_invitation_payload() :: #{
%%   <<"Customer">> => engagement_customer(),
%%   <<"OpportunityType">> => list(any()),
%%   <<"Project">> => project_details(),
%%   <<"ReceiverResponsibilities">> => list(list(any())()),
%%   <<"SenderContacts">> => list(sender_contact())
%% }
-type opportunity_invitation_payload() :: #{binary() => any()}.

%% Example:
%% opportunity_quality() :: #{
%%   <<"Score">> => [integer()],
%%   <<"Trend">> => [string()]
%% }
-type opportunity_quality() :: #{binary() => any()}.

%% Example:
%% opportunity_search_account() :: #{
%%   <<"Address">> => opportunity_search_address(),
%%   <<"AwsAccountId">> => string(),
%%   <<"CompanyName">> => string(),
%%   <<"Industry">> => list(any())
%% }
-type opportunity_search_account() :: #{binary() => any()}.

%% Example:
%% opportunity_search_address() :: #{
%%   <<"CountryCode">> => list(any())
%% }
-type opportunity_search_address() :: #{binary() => any()}.

%% Example:
%% opportunity_search_aws_summary() :: #{
%%   <<"CosellMotion">> => string(),
%%   <<"Insights">> => opportunity_search_insights(),
%%   <<"Origin">> => list(any())
%% }
-type opportunity_search_aws_summary() :: #{binary() => any()}.

%% Example:
%% opportunity_search_customer() :: #{
%%   <<"Account">> => opportunity_search_account()
%% }
-type opportunity_search_customer() :: #{binary() => any()}.

%% Example:
%% opportunity_search_expected_customer_spend() :: #{
%%   <<"Amount">> => string(),
%%   <<"CurrencyCode">> => list(any())
%% }
-type opportunity_search_expected_customer_spend() :: #{binary() => any()}.

%% Example:
%% opportunity_search_filter() :: #{
%%   <<"AndAllFilters">> => list(opportunity_search_filter()),
%%   <<"ContainsAll">> => opportunity_search_predicate(),
%%   <<"ContainsAny">> => opportunity_search_predicate(),
%%   <<"EqualsTo">> => opportunity_search_predicate(),
%%   <<"GreaterThan">> => opportunity_search_predicate(),
%%   <<"GreaterThanOrEquals">> => opportunity_search_predicate(),
%%   <<"LessThan">> => opportunity_search_predicate(),
%%   <<"LessThanOrEquals">> => opportunity_search_predicate(),
%%   <<"NotFilter">> => opportunity_search_filter(),
%%   <<"OrAllFilters">> => list(opportunity_search_filter())
%% }
-type opportunity_search_filter() :: #{binary() => any()}.

%% Example:
%% opportunity_search_insights() :: #{
%%   <<"EngagementScore">> => list(any()),
%%   <<"OpportunityQuality">> => opportunity_search_opportunity_quality()
%% }
-type opportunity_search_insights() :: #{binary() => any()}.

%% Example:
%% opportunity_search_life_cycle() :: #{
%%   <<"NextSteps">> => string(),
%%   <<"ReviewStatus">> => list(any()),
%%   <<"Stage">> => list(any()),
%%   <<"TargetCloseDate">> => string()
%% }
-type opportunity_search_life_cycle() :: #{binary() => any()}.

%% Example:
%% opportunity_search_opportunity_quality() :: #{
%%   <<"Score">> => [integer()]
%% }
-type opportunity_search_opportunity_quality() :: #{binary() => any()}.

%% Example:
%% opportunity_search_predicate() :: #{
%%   <<"Key">> => list(any()),
%%   <<"Value">> => list()
%% }
-type opportunity_search_predicate() :: #{binary() => any()}.

%% Example:
%% opportunity_search_project() :: #{
%%   <<"ApnPrograms">> => list([string()]()),
%%   <<"ExpectedCustomerSpend">> => list(opportunity_search_expected_customer_spend()),
%%   <<"Title">> => string()
%% }
-type opportunity_search_project() :: #{binary() => any()}.

%% Example:
%% opportunity_search_related_entity_identifiers() :: #{
%%   <<"AwsMarketplaceOfferSets">> => list(string()),
%%   <<"AwsMarketplaceOffers">> => list(string()),
%%   <<"AwsMarketplaceSolutions">> => list(string()),
%%   <<"Solutions">> => list(string())
%% }
-type opportunity_search_related_entity_identifiers() :: #{binary() => any()}.

%% Example:
%% opportunity_search_sort() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type opportunity_search_sort() :: #{binary() => any()}.

%% Example:
%% opportunity_search_summary() :: #{
%%   <<"AwsOpportunitySummary">> => opportunity_search_aws_summary(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Customer">> => opportunity_search_customer(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"LifeCycle">> => opportunity_search_life_cycle(),
%%   <<"OpportunityTeam">> => list(opportunity_search_team_member()),
%%   <<"OpportunityType">> => list(any()),
%%   <<"PartnerOpportunityIdentifier">> => [string()],
%%   <<"Project">> => opportunity_search_project(),
%%   <<"RelatedEntityIdentifiers">> => opportunity_search_related_entity_identifiers(),
%%   <<"Tags">> => list(tag())
%% }
-type opportunity_search_summary() :: #{binary() => any()}.

%% Example:
%% opportunity_search_team_member() :: #{
%%   <<"BusinessTitle">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"LastName">> => string()
%% }
-type opportunity_search_team_member() :: #{binary() => any()}.

%% Example:
%% opportunity_sort() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type opportunity_sort() :: #{binary() => any()}.

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
%% opportunity_summary_view() :: #{
%%   <<"Customer">> => customer(),
%%   <<"Lifecycle">> => life_cycle_for_view(),
%%   <<"OpportunityTeam">> => list(contact()),
%%   <<"OpportunityType">> => list(any()),
%%   <<"PrimaryNeedsFromAws">> => list(list(any())()),
%%   <<"Project">> => project_view(),
%%   <<"RelatedEntityIdentifiers">> => related_entity_identifiers()
%% }
-type opportunity_summary_view() :: #{binary() => any()}.

%% Example:
%% preferred_contact_window() :: #{
%%   <<"Timezone">> => [string()],
%%   <<"Window">> => list(any())
%% }
-type preferred_contact_window() :: #{binary() => any()}.

%% Example:
%% profile_next_steps_history() :: #{
%%   <<"Time">> => non_neg_integer(),
%%   <<"Value">> => [string()]
%% }
-type profile_next_steps_history() :: #{binary() => any()}.

%% Example:
%% project() :: #{
%%   <<"AdditionalComments">> => [string()],
%%   <<"ApnPrograms">> => list([string()]()),
%%   <<"AwsPartition">> => list(any()),
%%   <<"CompetitorName">> => list(any()),
%%   <<"CustomerBusinessProblem">> => string(),
%%   <<"CustomerUseCase">> => [string()],
%%   <<"DeliveryModels">> => list(list(any())()),
%%   <<"ExpectedContractDuration">> => expected_contract_duration(),
%%   <<"ExpectedCustomerSpend">> => list(expected_customer_spend()),
%%   <<"OtherCompetitorNames">> => [string()],
%%   <<"OtherSolutionDescription">> => string(),
%%   <<"RelatedOpportunityIdentifier">> => string(),
%%   <<"SalesActivities">> => list(list(any())()),
%%   <<"Title">> => string()
%% }
-type project() :: #{binary() => any()}.

%% Example:
%% project_details() :: #{
%%   <<"BusinessProblem">> => string(),
%%   <<"ExpectedCustomerSpend">> => list(expected_customer_spend()),
%%   <<"TargetCompletionDate">> => string(),
%%   <<"Title">> => [string()]
%% }
-type project_details() :: #{binary() => any()}.

%% Example:
%% project_summary() :: #{
%%   <<"DeliveryModels">> => list(list(any())()),
%%   <<"ExpectedContractDuration">> => expected_contract_duration(),
%%   <<"ExpectedCustomerSpend">> => list(expected_customer_spend())
%% }
-type project_summary() :: #{binary() => any()}.

%% Example:
%% project_view() :: #{
%%   <<"CustomerUseCase">> => [string()],
%%   <<"DeliveryModels">> => list(list(any())()),
%%   <<"ExpectedContractDuration">> => expected_contract_duration(),
%%   <<"ExpectedCustomerSpend">> => list(expected_customer_spend()),
%%   <<"OtherSolutionDescription">> => string(),
%%   <<"SalesActivities">> => list(list(any())())
%% }
-type project_view() :: #{binary() => any()}.

%% Example:
%% prospecting_from_engagement_task_sort() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type prospecting_from_engagement_task_sort() :: #{binary() => any()}.

%% Example:
%% prospecting_insights() :: #{
%%   <<"MarketplaceEngagementScore">> => string(),
%%   <<"SolutionCategory">> => [string()],
%%   <<"SolutionScore">> => [string()],
%%   <<"SolutionSubCategory">> => [string()]
%% }
-type prospecting_insights() :: #{binary() => any()}.

%% Example:
%% prospecting_result() :: #{
%%   <<"Aws">> => prospecting_result_aws()
%% }
-type prospecting_result() :: #{binary() => any()}.

%% Example:
%% prospecting_result_aws() :: #{
%%   <<"Customer">> => prospecting_result_customer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"Insights">> => prospecting_insights(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TaskArn">> => string(),
%%   <<"TaskId">> => string(),
%%   <<"TaskName">> => string()
%% }
-type prospecting_result_aws() :: #{binary() => any()}.

%% Example:
%% prospecting_result_customer() :: #{
%%   <<"AccountName">> => string(),
%%   <<"CompanySize">> => string(),
%%   <<"Country">> => list(any()),
%%   <<"EligiblePrograms">> => list([string()]()),
%%   <<"Geo">> => string(),
%%   <<"Industry">> => list(any()),
%%   <<"PublicProfileSummary">> => string(),
%%   <<"Region">> => string(),
%%   <<"Segment">> => string(),
%%   <<"SubIndustry">> => string(),
%%   <<"SubRegion">> => string()
%% }
-type prospecting_result_customer() :: #{binary() => any()}.

%% Example:
%% prospecting_task_summary() :: #{
%%   <<"CompletedEngagementCount">> => [integer()],
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"FailedEngagementCount">> => [integer()],
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TaskArn">> => string(),
%%   <<"TaskId">> => string(),
%%   <<"TaskName">> => string(),
%%   <<"TotalEngagementCount">> => [integer()]
%% }
-type prospecting_task_summary() :: #{binary() => any()}.

%% Example:
%% put_selling_system_settings_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ResourceSnapshotJobRoleIdentifier">> => string()
%% }
-type put_selling_system_settings_request() :: #{binary() => any()}.

%% Example:
%% put_selling_system_settings_response() :: #{
%%   <<"Catalog">> => string(),
%%   <<"ResourceSnapshotJobRoleArn">> => string()
%% }
-type put_selling_system_settings_response() :: #{binary() => any()}.

%% Example:
%% recommendation() :: #{
%%   <<"Attributes">> => map(),
%%   <<"Details">> => [string()],
%%   <<"Type">> => [string()]
%% }
-type recommendation() :: #{binary() => any()}.

%% Example:
%% reject_engagement_invitation_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string(),
%%   <<"RejectionReason">> => string()
%% }
-type reject_engagement_invitation_request() :: #{binary() => any()}.

%% Example:
%% related_entity_identifiers() :: #{
%%   <<"AwsMarketplaceOfferSets">> => list(string()),
%%   <<"AwsMarketplaceOffers">> => list(string()),
%%   <<"AwsMarketplaceProducts">> => list(string()),
%%   <<"AwsMarketplaceSolutions">> => list(string()),
%%   <<"AwsProducts">> => list(string()),
%%   <<"Solutions">> => list(string())
%% }
-type related_entity_identifiers() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% resource_snapshot_job_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"EngagementId">> => string(),
%%   <<"Id">> => string(),
%%   <<"Status">> => list(any())
%% }
-type resource_snapshot_job_summary() :: #{binary() => any()}.

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
%% search_customer_accounts_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Filter">> => filter(),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string(),
%%   <<"Sort">> => customer_account_sort()
%% }
-type search_customer_accounts_request() :: #{binary() => any()}.

%% Example:
%% search_customer_accounts_response() :: #{
%%   <<"CustomerAccountSummaries">> => list(customer_account_summary()),
%%   <<"NextToken">> => string()
%% }
-type search_customer_accounts_response() :: #{binary() => any()}.

%% Example:
%% search_engagements_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Filter">> => engagement_search_filter(),
%%   <<"GroupId">> => string(),
%%   <<"Keyword">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Sort">> => engagement_search_sort()
%% }
-type search_engagements_request() :: #{binary() => any()}.

%% Example:
%% search_engagements_response() :: #{
%%   <<"EngagementSearchSummaries">> => list(engagement_search_summary()),
%%   <<"NextToken">> => string()
%% }
-type search_engagements_response() :: #{binary() => any()}.

%% Example:
%% search_opportunities_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Filter">> => opportunity_search_filter(),
%%   <<"Keyword">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()],
%%   <<"Sort">> => opportunity_search_sort()
%% }
-type search_opportunities_request() :: #{binary() => any()}.

%% Example:
%% search_opportunities_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"OpportunitySearchSummaries">> => list(opportunity_search_summary())
%% }
-type search_opportunities_response() :: #{binary() => any()}.

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
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% software_revenue() :: #{
%%   <<"DeliveryModel">> => list(any()),
%%   <<"EffectiveDate">> => string(),
%%   <<"ExpirationDate">> => string(),
%%   <<"Value">> => monetary_value()
%% }
-type software_revenue() :: #{binary() => any()}.

%% Example:
%% solution_base() :: #{
%%   <<"Arn">> => string(),
%%   <<"AwsMarketplaceSolutionArn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"Category">> => [string()],
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"Name">> => [string()],
%%   <<"Status">> => list(any())
%% }
-type solution_base() :: #{binary() => any()}.

%% Example:
%% solution_sort() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type solution_sort() :: #{binary() => any()}.

%% Example:
%% sort_object() :: #{
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type sort_object() :: #{binary() => any()}.

%% Example:
%% start_customer_account_bulk_job_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"FileUri">> := string()
%% }
-type start_customer_account_bulk_job_request() :: #{binary() => any()}.

%% Example:
%% start_customer_account_bulk_job_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"Status">> => list(any())
%% }
-type start_customer_account_bulk_job_response() :: #{binary() => any()}.

%% Example:
%% start_engagement_by_accepting_invitation_task_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"Identifier">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type start_engagement_by_accepting_invitation_task_request() :: #{binary() => any()}.

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
%% start_engagement_from_opportunity_task_request() :: #{
%%   <<"AwsSubmission">> := aws_submission(),
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"Identifier">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type start_engagement_from_opportunity_task_request() :: #{binary() => any()}.

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
%% start_opportunity_bulk_job_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"FileFormat">> := list(any()),
%%   <<"FileURI">> := string()
%% }
-type start_opportunity_bulk_job_request() :: #{binary() => any()}.

%% Example:
%% start_opportunity_bulk_job_response() :: #{
%%   <<"JobId">> => string()
%% }
-type start_opportunity_bulk_job_response() :: #{binary() => any()}.

%% Example:
%% start_opportunity_from_engagement_task_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"ContextIdentifier">> := string(),
%%   <<"Identifier">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type start_opportunity_from_engagement_task_request() :: #{binary() => any()}.

%% Example:
%% start_opportunity_from_engagement_task_response() :: #{
%%   <<"ContextId">> => string(),
%%   <<"EngagementId">> => string(),
%%   <<"Message">> => [string()],
%%   <<"OpportunityId">> => string(),
%%   <<"ReasonCode">> => list(any()),
%%   <<"ResourceSnapshotJobId">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TaskArn">> => string(),
%%   <<"TaskId">> => string(),
%%   <<"TaskStatus">> => list(any())
%% }
-type start_opportunity_from_engagement_task_response() :: #{binary() => any()}.

%% Example:
%% start_prospecting_from_engagement_task_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"Identifiers">> := list(string()),
%%   <<"TaskName">> := string()
%% }
-type start_prospecting_from_engagement_task_request() :: #{binary() => any()}.

%% Example:
%% start_prospecting_from_engagement_task_response() :: #{
%%   <<"Identifiers">> => list(string()),
%%   <<"Message">> => [string()],
%%   <<"ReasonCode">> => [string()],
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"TaskArn">> => string(),
%%   <<"TaskId">> => string(),
%%   <<"TaskName">> => string(),
%%   <<"TaskStatus">> => list(any())
%% }
-type start_prospecting_from_engagement_task_response() :: #{binary() => any()}.

%% Example:
%% start_resource_snapshot_job_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ResourceSnapshotJobIdentifier">> := string()
%% }
-type start_resource_snapshot_job_request() :: #{binary() => any()}.

%% Example:
%% stop_resource_snapshot_job_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ResourceSnapshotJobIdentifier">> := string()
%% }
-type stop_resource_snapshot_job_request() :: #{binary() => any()}.

%% Example:
%% submit_opportunity_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string(),
%%   <<"InvolvementType">> := list(any()),
%%   <<"Visibility">> => list(any())
%% }
-type submit_opportunity_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% target_close_date_filter() :: #{
%%   <<"AfterTargetCloseDate">> => string(),
%%   <<"BeforeTargetCloseDate">> => string()
%% }
-type target_close_date_filter() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% update_customer_account_request() :: #{
%%   <<"Account">> := customer_account_data(),
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string(),
%%   <<"LastModifiedDate">> := non_neg_integer(),
%%   <<"PartnerAccountIdentifier">> => string()
%% }
-type update_customer_account_request() :: #{binary() => any()}.

%% Example:
%% update_customer_account_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"CreatedDate">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"PartnerAccountIdentifier">> => string(),
%%   <<"Status">> => list(any())
%% }
-type update_customer_account_response() :: #{binary() => any()}.

%% Example:
%% update_engagement_context_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ContextIdentifier">> := string(),
%%   <<"EngagementIdentifier">> := string(),
%%   <<"EngagementLastModifiedAt">> := non_neg_integer(),
%%   <<"Payload">> := list(),
%%   <<"Type">> := list(any())
%% }
-type update_engagement_context_request() :: #{binary() => any()}.

%% Example:
%% update_engagement_context_response() :: #{
%%   <<"ContextId">> => string(),
%%   <<"EngagementArn">> => string(),
%%   <<"EngagementId">> => string(),
%%   <<"EngagementLastModifiedAt">> => non_neg_integer()
%% }
-type update_engagement_context_response() :: #{binary() => any()}.

%% Example:
%% update_lead_context() :: #{
%%   <<"Customer">> => lead_customer(),
%%   <<"Insights">> => lead_insights(),
%%   <<"Interaction">> => lead_interaction(),
%%   <<"QualificationStatus">> => string()
%% }
-type update_lead_context() :: #{binary() => any()}.

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
%% update_opportunity_response() :: #{
%%   <<"Id">> => string(),
%%   <<"LastModifiedDate">> => non_neg_integer()
%% }
-type update_opportunity_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"ErrorList">> => list(validation_exception_error()),
%%   <<"Message">> => [string()],
%%   <<"Reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% validation_exception_error() :: #{
%%   <<"Code">> => list(any()),
%%   <<"FieldName">> => [string()],
%%   <<"Message">> => [string()]
%% }
-type validation_exception_error() :: #{binary() => any()}.

-type accept_engagement_invitation_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type assign_opportunity_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type associate_opportunity_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type create_customer_account_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_engagement_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_engagement_context_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_engagement_invitation_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_opportunity_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_resource_snapshot_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type create_resource_snapshot_job_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type delete_customer_account_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type delete_resource_snapshot_job_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type disassociate_opportunity_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_aws_opportunity_summary_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_customer_account_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_customer_account_bulk_job_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_customer_account_bulk_job_report_url_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type get_customer_account_statistics_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_engagement_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_engagement_invitation_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_opportunity_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_opportunity_bulk_job_report_url_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type get_prospecting_from_engagement_task_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_resource_snapshot_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_resource_snapshot_job_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type get_selling_system_settings_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_customer_account_bulk_job_results_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_customer_account_bulk_jobs_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_engagement_by_accepting_invitation_tasks_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_engagement_from_opportunity_tasks_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_engagement_groups_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_engagement_invitations_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_engagement_members_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_engagement_resource_associations_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_engagements_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_opportunities_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_opportunity_bulk_job_results_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_opportunity_bulk_jobs_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_opportunity_from_engagement_tasks_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_prospecting_from_engagement_tasks_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_resource_snapshot_jobs_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_resource_snapshots_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_solutions_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type put_selling_system_settings_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type reject_engagement_invitation_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type search_customer_accounts_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type search_engagements_errors() ::
    validation_exception() | 
    throttling_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type search_opportunities_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type start_customer_account_bulk_job_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type start_engagement_by_accepting_invitation_task_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type start_engagement_from_opportunity_task_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type start_opportunity_bulk_job_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type start_opportunity_from_engagement_task_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type start_prospecting_from_engagement_task_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type start_resource_snapshot_job_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type stop_resource_snapshot_job_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type submit_opportunity_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    access_denied_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_customer_account_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_engagement_context_errors() ::
    validation_exception() | 
    throttling_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

-type update_opportunity_errors() ::
    validation_exception() | 
    throttling_exception() | 
    resource_not_found_exception() | 
    internal_server_exception() | 
    conflict_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Use the `AcceptEngagementInvitation' action to accept an
%% engagement invitation shared by AWS.
%%
%% Accepting the invitation indicates your willingness to participate in the
%% engagement, granting you access to all engagement-related data.
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
%% within your Partner Central account.
%%
%% The specified user receives the opportunity, and it appears on their
%% Partner Central dashboard, allowing them to take necessary actions or
%% proceed with the opportunity.
%%
%% This is useful for distributing opportunities to the appropriate team
%% members or departments within your organization, ensuring that each
%% opportunity is handled by the right person. By default, the opportunity
%% owner is the one who creates it. Currently, there's no API to
%% enumerate the list of available users.
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
%% `Opportunity' and various related entities, enriching the context and
%% details of the opportunity for better collaboration and decision making.
%%
%% You can associate an opportunity with the following entity types:
%%
%% Partner Solution: A software product or consulting practice created and
%% delivered by Partners. Partner Solutions help customers address business
%% challenges using Amazon Web Services services.
%%
%% Amazon Web Services Products: Amazon Web Services offers many products and
%% services that provide scalable, reliable, and cost-effective
%% infrastructure solutions. For the latest list of Amazon Web Services
%% products, see Amazon Web Services products:
%% https://github.com/aws-samples/partner-crm-integration-samples/blob/main/resources/aws_products.json.
%%
%% Amazon Web Services Marketplace private offer: Allows Amazon Web Services
%% Marketplace sellers to extend custom pricing and terms to individual
%% Amazon Web Services customers. Sellers can negotiate custom prices,
%% payment schedules, and end user license terms through private offers,
%% enabling Amazon Web Services customers to acquire software solutions
%% tailored to their specific needs. For more information, see Private offers
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
%% to list entities. Specifically, use the `ListEntities' operation to
%% retrieve a list of private offers. The request returns the details of
%% available private offers. For more information, see ListEntities:
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

%% @doc Use `CreateCustomerAccount' to map a customer account from your
%% records to an AWS customer.
%%
%% Provide details about the customer, such as the company name and website.
%% AWS then matches the account to a customer and adds enrichment information
%% about it.
%%
%% Matching runs asynchronously. The response returns the new customer
%% account with a status of `PENDING'. Use `GetCustomerAccount' to
%% check the result and read the enrichment information.
-spec create_customer_account(aws_client:aws_client(), create_customer_account_request()) ->
    {ok, create_customer_account_response(), tuple()} |
    {error, any()} |
    {error, create_customer_account_errors(), tuple()}.
create_customer_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_customer_account(Client, Input, []).

-spec create_customer_account(aws_client:aws_client(), create_customer_account_request(), proplists:proplist()) ->
    {ok, create_customer_account_response(), tuple()} |
    {error, any()} |
    {error, create_customer_account_errors(), tuple()}.
create_customer_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCustomerAccount">>, Input, Options).

%% @doc The `CreateEngagement' action allows you to create an
%% `Engagement', which serves as a collaborative space between different
%% parties such as AWS Partners and AWS Sellers.
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

%% @doc Creates a new context within an existing engagement.
%%
%% This action allows you to add contextual information such as customer
%% projects or documents to an engagement, providing additional details that
%% help facilitate collaboration between engagement members.
-spec create_engagement_context(aws_client:aws_client(), create_engagement_context_request()) ->
    {ok, create_engagement_context_response(), tuple()} |
    {error, any()} |
    {error, create_engagement_context_errors(), tuple()}.
create_engagement_context(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_engagement_context(Client, Input, []).

-spec create_engagement_context(aws_client:aws_client(), create_engagement_context_request(), proplists:proplist()) ->
    {ok, create_engagement_context_response(), tuple()} |
    {error, any()} |
    {error, create_engagement_context_errors(), tuple()}.
create_engagement_context(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEngagementContext">>, Input, Options).

%% @doc This action creates an invitation from a sender to a single receiver
%% to join an engagement.
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
%% Use this operation to create a potential business opportunity for
%% submission to Amazon Web Services. Creating an opportunity sets
%% `Lifecycle.ReviewStatus' to `Pending Submission'.
%%
%% To submit an opportunity, follow these steps:
%%
%% To create the opportunity, use `CreateOpportunity'.
%%
%% To associate a solution with the opportunity, use
%% `AssociateOpportunity'.
%%
%% To start the engagement with AWS, use
%% `StartEngagementFromOpportunity'.
%%
%% After submission, you can't edit the opportunity until the review is
%% complete. But opportunities in the `Pending Submission' state must
%% have complete details. You can update the opportunity while it's in
%% the `Pending Submission' state.
%%
%% There's a set of mandatory fields to create opportunities, but
%% consider providing optional fields to enrich the opportunity record.
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

%% @doc This action allows you to create an immutable snapshot of a specific
%% resource, such as an opportunity, within the context of an engagement.
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

%% @doc Use this action to create a job to generate a snapshot of the
%% specified resource within an engagement.
%%
%% It initiates an asynchronous process to create a resource snapshot. The
%% job creates a new snapshot only if the resource state has changed,
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

%% @doc Use `DeleteCustomerAccount' to delete a customer account.
%%
%% This operation is idempotent. Deleting a customer account that was already
%% deleted succeeds.
-spec delete_customer_account(aws_client:aws_client(), delete_customer_account_request()) ->
    {ok, delete_customer_account_response(), tuple()} |
    {error, any()} |
    {error, delete_customer_account_errors(), tuple()}.
delete_customer_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_customer_account(Client, Input, []).

-spec delete_customer_account(aws_client:aws_client(), delete_customer_account_request(), proplists:proplist()) ->
    {ok, delete_customer_account_response(), tuple()} |
    {error, any()} |
    {error, delete_customer_account_errors(), tuple()}.
delete_customer_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCustomerAccount">>, Input, Options).

%% @doc Use this action to deletes a previously created resource snapshot
%% job.
%%
%% The job must be in a stopped state before it can be deleted.
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
%% `Opportunity' and related entities, such as a Partner Solution, Amazon
%% Web Services product, or an Amazon Web Services Marketplace offer.
%%
%% This operation is the counterpart to `AssociateOpportunity', and it
%% provides flexibility to manage associations as business needs change.
%%
%% Use this operation to update the associations of an `Opportunity' due
%% to changes in the related entities, or if an association was made in
%% error. Ensuring accurate associations helps maintain clarity and accuracy
%% to track and manage business opportunities. When you replace an entity,
%% first attach the new entity and then disassociate the one to be removed,
%% especially if it's the last remaining entity that's required.
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
%% This summary includes high-level details about the opportunity sourced
%% from AWS, such as lifecycle information, customer details, and involvement
%% type. It is useful for tracking updates on the AWS opportunity
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

%% @doc Use `GetCustomerAccount' to retrieve the details of a customer
%% account, including the customer information that you provided, the
%% enrichment status, and the enrichment information that AWS provides when
%% the status is `ENRICHED'.
-spec get_customer_account(aws_client:aws_client(), get_customer_account_request()) ->
    {ok, get_customer_account_response(), tuple()} |
    {error, any()} |
    {error, get_customer_account_errors(), tuple()}.
get_customer_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_customer_account(Client, Input, []).

-spec get_customer_account(aws_client:aws_client(), get_customer_account_request(), proplists:proplist()) ->
    {ok, get_customer_account_response(), tuple()} |
    {error, any()} |
    {error, get_customer_account_errors(), tuple()}.
get_customer_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCustomerAccount">>, Input, Options).

%% @doc Use `GetCustomerAccountBulkJob' to retrieve the status and record
%% counts of a bulk job.
-spec get_customer_account_bulk_job(aws_client:aws_client(), get_customer_account_bulk_job_request()) ->
    {ok, get_customer_account_bulk_job_response(), tuple()} |
    {error, any()} |
    {error, get_customer_account_bulk_job_errors(), tuple()}.
get_customer_account_bulk_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_customer_account_bulk_job(Client, Input, []).

-spec get_customer_account_bulk_job(aws_client:aws_client(), get_customer_account_bulk_job_request(), proplists:proplist()) ->
    {ok, get_customer_account_bulk_job_response(), tuple()} |
    {error, any()} |
    {error, get_customer_account_bulk_job_errors(), tuple()}.
get_customer_account_bulk_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCustomerAccountBulkJob">>, Input, Options).

%% @doc Use `GetCustomerAccountBulkJobReportUrl' to get a temporary URL
%% for downloading the report of a bulk job, such as the list of records that
%% failed.
%%
%% A report is available only after the job is `COMPLETED' or
%% `FAILED'. For a job that is still running, the request fails with a
%% `ConflictException'.
%%
%% The report is generated on request. If `ReportStatus' is not
%% `AVAILABLE', call the operation again later.
-spec get_customer_account_bulk_job_report_url(aws_client:aws_client(), get_customer_account_bulk_job_report_url_request()) ->
    {ok, get_customer_account_bulk_job_report_url_response(), tuple()} |
    {error, any()} |
    {error, get_customer_account_bulk_job_report_url_errors(), tuple()}.
get_customer_account_bulk_job_report_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_customer_account_bulk_job_report_url(Client, Input, []).

-spec get_customer_account_bulk_job_report_url(aws_client:aws_client(), get_customer_account_bulk_job_report_url_request(), proplists:proplist()) ->
    {ok, get_customer_account_bulk_job_report_url_response(), tuple()} |
    {error, any()} |
    {error, get_customer_account_bulk_job_report_url_errors(), tuple()}.
get_customer_account_bulk_job_report_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCustomerAccountBulkJobReportUrl">>, Input, Options).

%% @doc Use `GetCustomerAccountStatistics' to count your customer
%% accounts and group them by fields such as industry, geography, or
%% enrichment status.
%%
%% You can use the same filters as `SearchCustomerAccounts'.
-spec get_customer_account_statistics(aws_client:aws_client(), get_customer_account_statistics_request()) ->
    {ok, get_customer_account_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_customer_account_statistics_errors(), tuple()}.
get_customer_account_statistics(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_customer_account_statistics(Client, Input, []).

-spec get_customer_account_statistics(aws_client:aws_client(), get_customer_account_statistics_request(), proplists:proplist()) ->
    {ok, get_customer_account_statistics_response(), tuple()} |
    {error, any()} |
    {error, get_customer_account_statistics_errors(), tuple()}.
get_customer_account_statistics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCustomerAccountStatistics">>, Input, Options).

%% @doc Use this action to retrieve the engagement record for a given
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
%% The information includes aspects such as customer, project details, and
%% lifecycle information. To connect an engagement invitation with an
%% opportunity, match the invitation’s `Payload.Project.Title' with
%% opportunity `Project.Title'.
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

%% @doc Gets the status of the failed-records report for a finished
%% opportunity bulk job and, when the report is ready, a temporary URL to
%% download it.
%%
%% A report is available only after the job is `COMPLETED' or
%% `FAILED'. The URL expires after 15 minutes, and the report expires
%% after about 7 days.
-spec get_opportunity_bulk_job_report_url(aws_client:aws_client(), get_opportunity_bulk_job_report_url_request()) ->
    {ok, get_opportunity_bulk_job_report_url_response(), tuple()} |
    {error, any()} |
    {error, get_opportunity_bulk_job_report_url_errors(), tuple()}.
get_opportunity_bulk_job_report_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_opportunity_bulk_job_report_url(Client, Input, []).

-spec get_opportunity_bulk_job_report_url(aws_client:aws_client(), get_opportunity_bulk_job_report_url_request(), proplists:proplist()) ->
    {ok, get_opportunity_bulk_job_report_url_response(), tuple()} |
    {error, any()} |
    {error, get_opportunity_bulk_job_report_url_errors(), tuple()}.
get_opportunity_bulk_job_report_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOpportunityBulkJobReportUrl">>, Input, Options).

%% @doc Retrieves the details and current status of a prospecting task
%% previously started with `StartProspectingFromEngagementTask' to enable
%% polling for completion and access to per-engagement processing results.
-spec get_prospecting_from_engagement_task(aws_client:aws_client(), get_prospecting_from_engagement_task_request()) ->
    {ok, get_prospecting_from_engagement_task_response(), tuple()} |
    {error, any()} |
    {error, get_prospecting_from_engagement_task_errors(), tuple()}.
get_prospecting_from_engagement_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_prospecting_from_engagement_task(Client, Input, []).

-spec get_prospecting_from_engagement_task(aws_client:aws_client(), get_prospecting_from_engagement_task_request(), proplists:proplist()) ->
    {ok, get_prospecting_from_engagement_task_response(), tuple()} |
    {error, any()} |
    {error, get_prospecting_from_engagement_task_errors(), tuple()}.
get_prospecting_from_engagement_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProspectingFromEngagementTask">>, Input, Options).

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

%% @doc Use this action to retrieves information about a specific resource
%% snapshot job.
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

%% @doc Use `ListCustomerAccountBulkJobResults' to list the outcome of
%% each record in a bulk job.
%%
%% You can filter the results to records that succeeded or failed. A job that
%% failed before it processed any records returns an empty list.
%%
%% Results are paginated. Use `NextToken' to retrieve additional results.
-spec list_customer_account_bulk_job_results(aws_client:aws_client(), list_customer_account_bulk_job_results_request()) ->
    {ok, list_customer_account_bulk_job_results_response(), tuple()} |
    {error, any()} |
    {error, list_customer_account_bulk_job_results_errors(), tuple()}.
list_customer_account_bulk_job_results(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_customer_account_bulk_job_results(Client, Input, []).

-spec list_customer_account_bulk_job_results(aws_client:aws_client(), list_customer_account_bulk_job_results_request(), proplists:proplist()) ->
    {ok, list_customer_account_bulk_job_results_response(), tuple()} |
    {error, any()} |
    {error, list_customer_account_bulk_job_results_errors(), tuple()}.
list_customer_account_bulk_job_results(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCustomerAccountBulkJobResults">>, Input, Options).

%% @doc Use `ListCustomerAccountBulkJobs' to list the bulk jobs in the
%% specified catalog.
%%
%% You can filter the results by job identifier or status.
%%
%% Results are paginated. Use `NextToken' to retrieve additional results.
-spec list_customer_account_bulk_jobs(aws_client:aws_client(), list_customer_account_bulk_jobs_request()) ->
    {ok, list_customer_account_bulk_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_customer_account_bulk_jobs_errors(), tuple()}.
list_customer_account_bulk_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_customer_account_bulk_jobs(Client, Input, []).

-spec list_customer_account_bulk_jobs(aws_client:aws_client(), list_customer_account_bulk_jobs_request(), proplists:proplist()) ->
    {ok, list_customer_account_bulk_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_customer_account_bulk_jobs_errors(), tuple()}.
list_customer_account_bulk_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCustomerAccountBulkJobs">>, Input, Options).

%% @doc Lists all in-progress, completed, or failed
%% StartEngagementByAcceptingInvitationTask tasks that were initiated by the
%% caller's account.
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

%% @doc Lists all in-progress, completed, or failed EngagementFromOpportunity
%% tasks that were initiated by the caller's account.
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

%% @doc Lists the active, fully curated AWS Partner Central engagement groups
%% that are available to you in the specified catalog.
%%
%% An engagement group is a curated set of engagements that share common
%% characteristics, such as customer geography, industry, or solution
%% category. To retrieve the engagements in a group, pass the group `Id'
%% to `SearchEngagements' as `GroupId', and use `NextToken' to
%% retrieve additional pages of groups.
-spec list_engagement_groups(aws_client:aws_client(), list_engagement_groups_request()) ->
    {ok, list_engagement_groups_response(), tuple()} |
    {error, any()} |
    {error, list_engagement_groups_errors(), tuple()}.
list_engagement_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_engagement_groups(Client, Input, []).

-spec list_engagement_groups(aws_client:aws_client(), list_engagement_groups_request(), proplists:proplist()) ->
    {ok, list_engagement_groups_response(), tuple()} |
    {error, any()} |
    {error, list_engagement_groups_errors(), tuple()}.
list_engagement_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEngagementGroups">>, Input, Options).

%% @doc Retrieves a list of engagement invitations sent to the partner.
%%
%% This allows partners to view all pending or past engagement invitations,
%% helping them track opportunities shared by AWS.
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

%% @doc Retrieves the details of member partners in an Engagement.
%%
%% This operation can only be invoked by members of the Engagement. The
%% `ListEngagementMembers' operation allows you to fetch information
%% about the members of a specific Engagement. This action is restricted to
%% members of the Engagement being queried.
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

%% @doc Lists the associations between resources and engagements where the
%% caller is a member and has at least one snapshot in the engagement.
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

%% @doc This action allows users to retrieve a list of Engagement records
%% from Partner Central.
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
%% subsets as well as sort options.
%%
%% This feature is available to partners from Partner Central:
%% https://partnercentral.awspartner.com/ using the `ListOpportunities'
%% API action.
%%
%% To synchronize your system with Amazon Web Services, list only the
%% opportunities that were newly created or updated. We recommend you rely on
%% events emitted by the service into your Amazon Web Services account’s
%% Amazon EventBridge default event bus. You can also use the
%% `ListOpportunities' action.
%%
%% We recommend the following approach:
%%
%% Find the latest `LastModifiedDate' that you stored, and only use the
%% values that came from Amazon Web Services. Don’t use values generated by
%% your system.
%%
%% When you send a `ListOpportunities' request, submit the date in ISO
%% 8601 format in the `AfterLastModifiedDate' filter.
%%
%% Amazon Web Services only returns opportunities created or updated on or
%% after that date and time. Use `NextToken' to iterate over all pages.
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

%% @doc Lists the outcome of each record in an opportunity bulk job.
%%
%% You can filter the results by record status.
%%
%% Results are paginated. Use `NextToken' to retrieve additional results.
-spec list_opportunity_bulk_job_results(aws_client:aws_client(), list_opportunity_bulk_job_results_request()) ->
    {ok, list_opportunity_bulk_job_results_response(), tuple()} |
    {error, any()} |
    {error, list_opportunity_bulk_job_results_errors(), tuple()}.
list_opportunity_bulk_job_results(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_opportunity_bulk_job_results(Client, Input, []).

-spec list_opportunity_bulk_job_results(aws_client:aws_client(), list_opportunity_bulk_job_results_request(), proplists:proplist()) ->
    {ok, list_opportunity_bulk_job_results_response(), tuple()} |
    {error, any()} |
    {error, list_opportunity_bulk_job_results_errors(), tuple()}.
list_opportunity_bulk_job_results(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOpportunityBulkJobResults">>, Input, Options).

%% @doc Lists the opportunity bulk jobs in the specified catalog, newest
%% first.
%%
%% You can filter the results by job identifier or status.
%%
%% Results are paginated. Use `NextToken' to retrieve additional results.
-spec list_opportunity_bulk_jobs(aws_client:aws_client(), list_opportunity_bulk_jobs_request()) ->
    {ok, list_opportunity_bulk_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_opportunity_bulk_jobs_errors(), tuple()}.
list_opportunity_bulk_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_opportunity_bulk_jobs(Client, Input, []).

-spec list_opportunity_bulk_jobs(aws_client:aws_client(), list_opportunity_bulk_jobs_request(), proplists:proplist()) ->
    {ok, list_opportunity_bulk_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_opportunity_bulk_jobs_errors(), tuple()}.
list_opportunity_bulk_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOpportunityBulkJobs">>, Input, Options).

%% @doc Lists all in-progress, completed, or failed opportunity creation
%% tasks from engagements that were initiated by the caller's account.
-spec list_opportunity_from_engagement_tasks(aws_client:aws_client(), list_opportunity_from_engagement_tasks_request()) ->
    {ok, list_opportunity_from_engagement_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_opportunity_from_engagement_tasks_errors(), tuple()}.
list_opportunity_from_engagement_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_opportunity_from_engagement_tasks(Client, Input, []).

-spec list_opportunity_from_engagement_tasks(aws_client:aws_client(), list_opportunity_from_engagement_tasks_request(), proplists:proplist()) ->
    {ok, list_opportunity_from_engagement_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_opportunity_from_engagement_tasks_errors(), tuple()}.
list_opportunity_from_engagement_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOpportunityFromEngagementTasks">>, Input, Options).

%% @doc Lists all prospecting tasks initiated by the caller's account.
%%
%% Supports optional filters by task identifier, task name, or start time
%% range. Results can be sorted using configurable options. The response is
%% paginated. Use the `NextToken' value from each response to retrieve
%% subsequent pages.
-spec list_prospecting_from_engagement_tasks(aws_client:aws_client(), list_prospecting_from_engagement_tasks_request()) ->
    {ok, list_prospecting_from_engagement_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_prospecting_from_engagement_tasks_errors(), tuple()}.
list_prospecting_from_engagement_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_prospecting_from_engagement_tasks(Client, Input, []).

-spec list_prospecting_from_engagement_tasks(aws_client:aws_client(), list_prospecting_from_engagement_tasks_request(), proplists:proplist()) ->
    {ok, list_prospecting_from_engagement_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_prospecting_from_engagement_tasks_errors(), tuple()}.
list_prospecting_from_engagement_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProspectingFromEngagementTasks">>, Input, Options).

%% @doc Lists resource snapshot jobs owned by the customer.
%%
%% This operation supports various filtering scenarios, including listing all
%% jobs owned by the caller, jobs for a specific engagement, jobs with a
%% specific status, or any combination of these filters.
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

%% @doc Retrieves a list of resource view snapshots based on specified
%% criteria.
%%
%% This operation supports various use cases, including:
%%
%% Fetching all snapshots associated with an engagement.
%%
%% Retrieving snapshots of a specific resource type within an engagement.
%%
%% Obtaining snapshots for a particular resource using a specified template.
%%
%% Accessing the latest snapshot of a resource within an engagement.
%%
%% Filtering snapshots by resource owner.
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
%% from for association with an opportunity.
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

%% @doc Returns a list of tags for a resource.
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
%% Rejecting an invitation indicates that the partner doesn't want to
%% pursue the opportunity, and all related data will become inaccessible
%% thereafter.
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

%% @doc Use `SearchCustomerAccounts' to find customer accounts in the
%% specified catalog.
%%
%% You can filter the results by fields such as enrichment status, industry,
%% geography, and creation date, and sort them by company name, date, or
%% score.
%%
%% Results are paginated. Use `NextToken' to retrieve additional results.
-spec search_customer_accounts(aws_client:aws_client(), search_customer_accounts_request()) ->
    {ok, search_customer_accounts_response(), tuple()} |
    {error, any()} |
    {error, search_customer_accounts_errors(), tuple()}.
search_customer_accounts(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_customer_accounts(Client, Input, []).

-spec search_customer_accounts(aws_client:aws_client(), search_customer_accounts_request(), proplists:proplist()) ->
    {ok, search_customer_accounts_response(), tuple()} |
    {error, any()} |
    {error, search_customer_accounts_errors(), tuple()}.
search_customer_accounts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchCustomerAccounts">>, Input, Options).

%% @doc Searches the engagements in AWS Partner Central that match your
%% criteria, such as customer industry or geography.
%%
%% You can combine a free-text `Keyword', a structured `Filter' tree,
%% an engagement group (`GroupId'), and `Sort' options, and each
%% search criterion that you specify narrows the results. Results are
%% paginated, so use `NextToken' to retrieve additional results.
-spec search_engagements(aws_client:aws_client(), search_engagements_request()) ->
    {ok, search_engagements_response(), tuple()} |
    {error, any()} |
    {error, search_engagements_errors(), tuple()}.
search_engagements(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_engagements(Client, Input, []).

-spec search_engagements(aws_client:aws_client(), search_engagements_request(), proplists:proplist()) ->
    {ok, search_engagements_response(), tuple()} |
    {error, any()} |
    {error, search_engagements_errors(), tuple()}.
search_engagements(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchEngagements">>, Input, Options).

%% @doc The `SearchOpportunities' operation in the AWS Partner Central
%% Selling API searches and filters the opportunities available to you in AWS
%% Partner Central.
%%
%% You can optionally provide a free-text `Keyword', a structured
%% `Filter' tree, and `Sort' options. The operation returns a curated
%% summary view of each matching opportunity. If you supply both
%% `Keyword' and `Filter', the operation combines them with a logical
%% AND, so each one narrows the result set.
%%
%% Results are paginated. Use the `NextToken' parameter to retrieve
%% additional pages of results.
-spec search_opportunities(aws_client:aws_client(), search_opportunities_request()) ->
    {ok, search_opportunities_response(), tuple()} |
    {error, any()} |
    {error, search_opportunities_errors(), tuple()}.
search_opportunities(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_opportunities(Client, Input, []).

-spec search_opportunities(aws_client:aws_client(), search_opportunities_request(), proplists:proplist()) ->
    {ok, search_opportunities_response(), tuple()} |
    {error, any()} |
    {error, search_opportunities_errors(), tuple()}.
search_opportunities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchOpportunities">>, Input, Options).

%% @doc Use `StartCustomerAccountBulkJob' to create many customer
%% accounts from a single file.
%%
%% The job starts processing as soon as it is created.
%%
%% Use `GetCustomerAccountBulkJob' to track progress,
%% `ListCustomerAccountBulkJobResults' to review the outcome of each
%% record, and `GetCustomerAccountBulkJobReportUrl' to download a report
%% when the job finishes.
-spec start_customer_account_bulk_job(aws_client:aws_client(), start_customer_account_bulk_job_request()) ->
    {ok, start_customer_account_bulk_job_response(), tuple()} |
    {error, any()} |
    {error, start_customer_account_bulk_job_errors(), tuple()}.
start_customer_account_bulk_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_customer_account_bulk_job(Client, Input, []).

-spec start_customer_account_bulk_job(aws_client:aws_client(), start_customer_account_bulk_job_request(), proplists:proplist()) ->
    {ok, start_customer_account_bulk_job_response(), tuple()} |
    {error, any()} |
    {error, start_customer_account_bulk_job_errors(), tuple()}.
start_customer_account_bulk_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartCustomerAccountBulkJob">>, Input, Options).

%% @doc This action starts the engagement by accepting an
%% `EngagementInvitation'.
%%
%% The task is asynchronous and involves the following steps: accepting the
%% invitation, creating an opportunity in the partner’s account from the AWS
%% opportunity, and copying details for tracking. When completed, an
%% `Opportunity Created' event is generated, indicating that the
%% opportunity has been successfully created in the partner's account.
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

%% @doc Similar to `StartEngagementByAcceptingInvitationTask', this
%% action is asynchronous and performs multiple steps before completion.
%%
%% This action orchestrates a comprehensive workflow that combines multiple
%% API operations into a single task to create and initiate an engagement
%% from an existing opportunity. It automatically executes a sequence of
%% operations including `GetOpportunity', `CreateEngagement' (if it
%% doesn't exist), `CreateResourceSnapshot',
%% `CreateResourceSnapshotJob', `CreateEngagementInvitation' (if not
%% already invited/accepted), and `SubmitOpportunity'.
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

%% @doc The `StartOpportunityBulkJob' operation creates or updates many
%% opportunities in AWS Partner Central (Partner Central) from a single CSV
%% file.
%%
%% The column headers in the file determine whether the job creates or
%% updates opportunities.
%%
%% Returns a `JobId' for the job. Use `ListOpportunityBulkJobs' to
%% track the job, `ListOpportunityBulkJobResults' to review each record,
%% and `GetOpportunityBulkJobReportUrl' to download a report of the
%% failed records.
-spec start_opportunity_bulk_job(aws_client:aws_client(), start_opportunity_bulk_job_request()) ->
    {ok, start_opportunity_bulk_job_response(), tuple()} |
    {error, any()} |
    {error, start_opportunity_bulk_job_errors(), tuple()}.
start_opportunity_bulk_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_opportunity_bulk_job(Client, Input, []).

-spec start_opportunity_bulk_job(aws_client:aws_client(), start_opportunity_bulk_job_request(), proplists:proplist()) ->
    {ok, start_opportunity_bulk_job_response(), tuple()} |
    {error, any()} |
    {error, start_opportunity_bulk_job_errors(), tuple()}.
start_opportunity_bulk_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartOpportunityBulkJob">>, Input, Options).

%% @doc This action creates an opportunity from an existing engagement
%% context.
%%
%% The task is asynchronous and orchestrates the process of converting
%% engagement contextual information into a structured opportunity record
%% within the partner's account.
-spec start_opportunity_from_engagement_task(aws_client:aws_client(), start_opportunity_from_engagement_task_request()) ->
    {ok, start_opportunity_from_engagement_task_response(), tuple()} |
    {error, any()} |
    {error, start_opportunity_from_engagement_task_errors(), tuple()}.
start_opportunity_from_engagement_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_opportunity_from_engagement_task(Client, Input, []).

-spec start_opportunity_from_engagement_task(aws_client:aws_client(), start_opportunity_from_engagement_task_request(), proplists:proplist()) ->
    {ok, start_opportunity_from_engagement_task_response(), tuple()} |
    {error, any()} |
    {error, start_opportunity_from_engagement_task_errors(), tuple()}.
start_opportunity_from_engagement_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartOpportunityFromEngagementTask">>, Input, Options).

%% @doc Starts a task to convert one or more engagement contexts into new
%% prospecting leads.
%%
%% The task runs asynchronously. To poll for status, use
%% `GetProspectingFromEngagementTask', or use
%% `ListProspectingFromEngagementTasks' to monitor multiple tasks.
-spec start_prospecting_from_engagement_task(aws_client:aws_client(), start_prospecting_from_engagement_task_request()) ->
    {ok, start_prospecting_from_engagement_task_response(), tuple()} |
    {error, any()} |
    {error, start_prospecting_from_engagement_task_errors(), tuple()}.
start_prospecting_from_engagement_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_prospecting_from_engagement_task(Client, Input, []).

-spec start_prospecting_from_engagement_task(aws_client:aws_client(), start_prospecting_from_engagement_task_request(), proplists:proplist()) ->
    {ok, start_prospecting_from_engagement_task_response(), tuple()} |
    {error, any()} |
    {error, start_prospecting_from_engagement_task_errors(), tuple()}.
start_prospecting_from_engagement_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartProspectingFromEngagementTask">>, Input, Options).

%% @doc Starts a resource snapshot job that has been previously created.
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

%% @doc Stops a resource snapshot job.
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

%% @doc Use this action to submit an Opportunity that was previously created
%% by partner for AWS review.
%%
%% After you perform this action, the Opportunity becomes non-editable until
%% it is reviewed by AWS and has ` LifeCycle.ReviewStatus ' as either
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

%% @doc Assigns one or more tags (key-value pairs) to the specified resource.
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

%% @doc Removes a tag or tags from a resource.
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

%% @doc Use `UpdateCustomerAccount' to replace the customer information
%% on an existing customer account.
%%
%% AWS matches the account again with the updated information.
%%
%% To prevent concurrent changes from overwriting each other, specify the
%% `LastModifiedDate' value that you last read for the account. If the
%% account changed since then, the request fails with a
%% `ConflictException'.
-spec update_customer_account(aws_client:aws_client(), update_customer_account_request()) ->
    {ok, update_customer_account_response(), tuple()} |
    {error, any()} |
    {error, update_customer_account_errors(), tuple()}.
update_customer_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_customer_account(Client, Input, []).

-spec update_customer_account(aws_client:aws_client(), update_customer_account_request(), proplists:proplist()) ->
    {ok, update_customer_account_response(), tuple()} |
    {error, any()} |
    {error, update_customer_account_errors(), tuple()}.
update_customer_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCustomerAccount">>, Input, Options).

%% @doc Updates the context information for an existing engagement with new
%% or modified data.
-spec update_engagement_context(aws_client:aws_client(), update_engagement_context_request()) ->
    {ok, update_engagement_context_response(), tuple()} |
    {error, any()} |
    {error, update_engagement_context_errors(), tuple()}.
update_engagement_context(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_engagement_context(Client, Input, []).

-spec update_engagement_context(aws_client:aws_client(), update_engagement_context_request(), proplists:proplist()) ->
    {ok, update_engagement_context_response(), tuple()} |
    {error, any()} |
    {error, update_engagement_context_errors(), tuple()}.
update_engagement_context(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEngagementContext">>, Input, Options).

%% @doc Updates the `Opportunity' record identified by a given
%% `Identifier'.
%%
%% This operation allows you to modify the details of an existing opportunity
%% to reflect the latest information and progress. Use this action to keep
%% the opportunity record up-to-date and accurate.
%%
%% When you perform updates, include the entire payload with each request. If
%% any field is omitted, the API assumes that the field is set to `null'.
%% The best practice is to always perform a `GetOpportunity' to retrieve
%% the latest values, then send the complete payload with the updated values
%% to be changed.
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
    {ok, Result, {integer(), list(), term()}} |
    {error, Error, {integer(), list(), term()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"partnercentral-selling">>},
    DefaultHost = build_host(<<"partnercentral-selling">>, Client1),
    {URL, Host} = aws_util:apply_endpoint_url_override(build_url(DefaultHost, Client1), DefaultHost, <<"/">>, <<"AWS_ENDPOINT_URL_PARTNERCENTRAL_SELLING">>),
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
    case response_body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = response_body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

%% hackney 1.x and 2.x return a client reference that is read with
%% hackney:body/1. hackney 3.0 removed hackney:body/1 and returns the body in
%% the response tuple, so a binary is already the body.
response_body(Body) when is_binary(Body) ->
    {ok, Body};
response_body(Client) ->
    apply(hackney, body, [Client]).

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
