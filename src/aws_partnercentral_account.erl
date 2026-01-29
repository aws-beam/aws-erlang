%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Partner Central Account service provides APIs for managing
%% partner accounts, connections, and profiles within the AWS Partner
%% Network.
%%
%% This service enables partners to create and manage their partner profiles,
%% establish connections with other partners, and maintain their account
%% information.
-module(aws_partnercentral_account).

-export([accept_connection_invitation/2,
         accept_connection_invitation/3,
         associate_aws_training_certification_email_domain/2,
         associate_aws_training_certification_email_domain/3,
         cancel_connection/2,
         cancel_connection/3,
         cancel_connection_invitation/2,
         cancel_connection_invitation/3,
         cancel_profile_update_task/2,
         cancel_profile_update_task/3,
         create_connection_invitation/2,
         create_connection_invitation/3,
         create_partner/2,
         create_partner/3,
         disassociate_aws_training_certification_email_domain/2,
         disassociate_aws_training_certification_email_domain/3,
         get_alliance_lead_contact/2,
         get_alliance_lead_contact/3,
         get_connection/2,
         get_connection/3,
         get_connection_invitation/2,
         get_connection_invitation/3,
         get_connection_preferences/2,
         get_connection_preferences/3,
         get_partner/2,
         get_partner/3,
         get_profile_update_task/2,
         get_profile_update_task/3,
         get_profile_visibility/2,
         get_profile_visibility/3,
         get_verification/2,
         get_verification/3,
         list_connection_invitations/2,
         list_connection_invitations/3,
         list_connections/2,
         list_connections/3,
         list_partners/2,
         list_partners/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_alliance_lead_contact/2,
         put_alliance_lead_contact/3,
         put_profile_visibility/2,
         put_profile_visibility/3,
         reject_connection_invitation/2,
         reject_connection_invitation/3,
         send_email_verification_code/2,
         send_email_verification_code/3,
         start_profile_update_task/2,
         start_profile_update_task/3,
         start_verification/2,
         start_verification/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_connection_preferences/2,
         update_connection_preferences/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% get_profile_update_task_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type get_profile_update_task_request() :: #{binary() => any()}.

%% Example:
%% get_connection_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type get_connection_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% cancel_connection_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"ConnectionType">> := list(any()),
%%   <<"Identifier">> := string(),
%%   <<"Reason">> := [string()]
%% }
-type cancel_connection_request() :: #{binary() => any()}.

%% Example:
%% start_verification_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"VerificationDetails">> => list()
%% }
-type start_verification_request() :: #{binary() => any()}.

%% Example:
%% put_profile_visibility_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"Id">> => string(),
%%   <<"ProfileId">> => string(),
%%   <<"Visibility">> => list(any())
%% }
-type put_profile_visibility_response() :: #{binary() => any()}.

%% Example:
%% partner_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"LegalName">> => string()
%% }
-type partner_summary() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% get_connection_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"ConnectionTypes">> => map(),
%%   <<"Id">> => string(),
%%   <<"OtherParticipantAccountId">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type get_connection_response() :: #{binary() => any()}.

%% Example:
%% accept_connection_invitation_response() :: #{
%%   <<"Connection">> => connection()
%% }
-type accept_connection_invitation_response() :: #{binary() => any()}.

%% Example:
%% business_verification_details() :: #{
%%   <<"CountryCode">> => string(),
%%   <<"JurisdictionOfIncorporation">> => string(),
%%   <<"LegalName">> => string(),
%%   <<"RegistrationId">> => string()
%% }
-type business_verification_details() :: #{binary() => any()}.

%% Example:
%% list_connection_invitations_response() :: #{
%%   <<"ConnectionInvitationSummaries">> => list(connection_invitation_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_connection_invitations_response() :: #{binary() => any()}.

%% Example:
%% list_connections_response() :: #{
%%   <<"ConnectionSummaries">> => list(connection_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_connections_response() :: #{binary() => any()}.

%% Example:
%% create_partner_request() :: #{
%%   <<"AllianceLeadContact">> := alliance_lead_contact(),
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"EmailVerificationCode">> := string(),
%%   <<"LegalName">> := string(),
%%   <<"PrimarySolutionType">> := list(any()),
%%   <<"Tags">> => list(tag())
%% }
-type create_partner_request() :: #{binary() => any()}.

%% Example:
%% get_connection_invitation_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type get_connection_invitation_request() :: #{binary() => any()}.

%% Example:
%% connection_type_summary() :: #{
%%   <<"OtherParticipant">> => list(),
%%   <<"Status">> => list(any())
%% }
-type connection_type_summary() :: #{binary() => any()}.

%% Example:
%% connection_type_detail() :: #{
%%   <<"CanceledAt">> => non_neg_integer(),
%%   <<"CanceledBy">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"InviterEmail">> => string(),
%%   <<"InviterName">> => string(),
%%   <<"OtherParticipant">> => list(),
%%   <<"Status">> => list(any())
%% }
-type connection_type_detail() :: #{binary() => any()}.

%% Example:
%% disassociate_aws_training_certification_email_domain_response() :: #{

%% }
-type disassociate_aws_training_certification_email_domain_response() :: #{binary() => any()}.

%% Example:
%% associate_aws_training_certification_email_domain_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"Email">> := string(),
%%   <<"EmailVerificationCode">> := string(),
%%   <<"Identifier">> := string()
%% }
-type associate_aws_training_certification_email_domain_request() :: #{binary() => any()}.

%% Example:
%% list_partners_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"NextToken">> => string()
%% }
-type list_partners_request() :: #{binary() => any()}.

%% Example:
%% partner_profile() :: #{
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"IndustrySegments">> => list(list(any())()),
%%   <<"LocalizedContents">> => list(localized_content()),
%%   <<"LogoUrl">> => string(),
%%   <<"PrimarySolutionType">> => list(any()),
%%   <<"ProfileId">> => string(),
%%   <<"TranslationSourceLocale">> => string(),
%%   <<"WebsiteUrl">> => string()
%% }
-type partner_profile() :: #{binary() => any()}.

%% Example:
%% get_connection_preferences_request() :: #{
%%   <<"Catalog">> := string()
%% }
-type get_connection_preferences_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% business_validation_error() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => [string()]
%% }
-type business_validation_error() :: #{binary() => any()}.

%% Example:
%% business_verification_response() :: #{
%%   <<"BusinessVerificationDetails">> => business_verification_details()
%% }
-type business_verification_response() :: #{binary() => any()}.

%% Example:
%% put_profile_visibility_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string(),
%%   <<"Visibility">> := list(any())
%% }
-type put_profile_visibility_request() :: #{binary() => any()}.

%% Example:
%% list_partners_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PartnerSummaryList">> => list(partner_summary())
%% }
-type list_partners_response() :: #{binary() => any()}.

%% Example:
%% start_profile_update_task_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"Identifier">> := string(),
%%   <<"TaskDetails">> := task_details()
%% }
-type start_profile_update_task_request() :: #{binary() => any()}.

%% Example:
%% accept_connection_invitation_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"Identifier">> := string()
%% }
-type accept_connection_invitation_request() :: #{binary() => any()}.

%% Example:
%% reject_connection_invitation_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"ConnectionId">> => string(),
%%   <<"ConnectionType">> => list(any()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"ExpiresAt">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"InvitationMessage">> => string(),
%%   <<"InviterEmail">> => string(),
%%   <<"InviterName">> => string(),
%%   <<"OtherParticipantIdentifier">> => string(),
%%   <<"ParticipantType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type reject_connection_invitation_response() :: #{binary() => any()}.

%% Example:
%% registrant_verification_details() :: #{

%% }
-type registrant_verification_details() :: #{binary() => any()}.

%% Example:
%% create_connection_invitation_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"ConnectionId">> => string(),
%%   <<"ConnectionType">> => list(any()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"ExpiresAt">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"InvitationMessage">> => string(),
%%   <<"InviterEmail">> => string(),
%%   <<"InviterName">> => string(),
%%   <<"OtherParticipantIdentifier">> => string(),
%%   <<"ParticipantType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type create_connection_invitation_response() :: #{binary() => any()}.

%% Example:
%% list_connections_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ConnectionType">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OtherParticipantIdentifiers">> => list(string())
%% }
-type list_connections_request() :: #{binary() => any()}.

%% Example:
%% partner_domain() :: #{
%%   <<"DomainName">> => string(),
%%   <<"RegisteredAt">> => non_neg_integer()
%% }
-type partner_domain() :: #{binary() => any()}.

%% Example:
%% put_alliance_lead_contact_request() :: #{
%%   <<"AllianceLeadContact">> := alliance_lead_contact(),
%%   <<"Catalog">> := string(),
%%   <<"EmailVerificationCode">> => string(),
%%   <<"Identifier">> := string()
%% }
-type put_alliance_lead_contact_request() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"Reason">> => list(any())
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"Reason">> => list(any())
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% cancel_connection_invitation_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"ConnectionId">> => string(),
%%   <<"ConnectionType">> => list(any()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"ExpiresAt">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"InvitationMessage">> => string(),
%%   <<"InviterEmail">> => string(),
%%   <<"InviterName">> => string(),
%%   <<"OtherParticipantIdentifier">> => string(),
%%   <<"ParticipantType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type cancel_connection_invitation_response() :: #{binary() => any()}.

%% Example:
%% create_connection_invitation_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"ConnectionType">> := list(any()),
%%   <<"Email">> := string(),
%%   <<"Message">> := string(),
%%   <<"Name">> := string(),
%%   <<"ReceiverIdentifier">> := string()
%% }
-type create_connection_invitation_request() :: #{binary() => any()}.

%% Example:
%% send_email_verification_code_response() :: #{

%% }
-type send_email_verification_code_response() :: #{binary() => any()}.

%% Example:
%% connection() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"ConnectionTypes">> => map(),
%%   <<"Id">> => string(),
%%   <<"OtherParticipantAccountId">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type connection() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"Reason">> => list(any())
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% get_partner_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type get_partner_request() :: #{binary() => any()}.

%% Example:
%% cancel_profile_update_task_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"Identifier">> := string(),
%%   <<"TaskId">> := string()
%% }
-type cancel_profile_update_task_request() :: #{binary() => any()}.

%% Example:
%% create_partner_response() :: #{
%%   <<"AllianceLeadContact">> => alliance_lead_contact(),
%%   <<"Arn">> => string(),
%%   <<"AwsTrainingCertificationEmailDomains">> => list(partner_domain()),
%%   <<"Catalog">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"LegalName">> => string(),
%%   <<"Profile">> => partner_profile()
%% }
-type create_partner_response() :: #{binary() => any()}.

%% Example:
%% partner_profile_summary() :: #{
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type partner_profile_summary() :: #{binary() => any()}.

%% Example:
%% get_profile_update_task_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"EndedAt">> => non_neg_integer(),
%%   <<"ErrorDetailList">> => list(error_detail()),
%%   <<"Id">> => string(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"TaskDetails">> => task_details(),
%%   <<"TaskId">> => string()
%% }
-type get_profile_update_task_response() :: #{binary() => any()}.

%% Example:
%% get_connection_invitation_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"ConnectionId">> => string(),
%%   <<"ConnectionType">> => list(any()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"ExpiresAt">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"InvitationMessage">> => string(),
%%   <<"InviterEmail">> => string(),
%%   <<"InviterName">> => string(),
%%   <<"OtherParticipantIdentifier">> => string(),
%%   <<"ParticipantType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type get_connection_invitation_response() :: #{binary() => any()}.

%% Example:
%% alliance_lead_contact() :: #{
%%   <<"BusinessTitle">> => string(),
%%   <<"Email">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"LastName">> => string()
%% }
-type alliance_lead_contact() :: #{binary() => any()}.

%% Example:
%% associate_aws_training_certification_email_domain_response() :: #{

%% }
-type associate_aws_training_certification_email_domain_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"ResourceArn">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% put_alliance_lead_contact_response() :: #{
%%   <<"AllianceLeadContact">> => alliance_lead_contact(),
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"Id">> => string()
%% }
-type put_alliance_lead_contact_response() :: #{binary() => any()}.

%% Example:
%% get_profile_visibility_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"Id">> => string(),
%%   <<"ProfileId">> => string(),
%%   <<"Visibility">> => list(any())
%% }
-type get_profile_visibility_response() :: #{binary() => any()}.

%% Example:
%% start_profile_update_task_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"EndedAt">> => non_neg_integer(),
%%   <<"ErrorDetailList">> => list(error_detail()),
%%   <<"Id">> => string(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"TaskDetails">> => task_details(),
%%   <<"TaskId">> => string()
%% }
-type start_profile_update_task_response() :: #{binary() => any()}.

%% Example:
%% account_summary() :: #{
%%   <<"Name">> => string()
%% }
-type account_summary() :: #{binary() => any()}.

%% Example:
%% disassociate_aws_training_certification_email_domain_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"DomainName">> := string(),
%%   <<"Identifier">> := string()
%% }
-type disassociate_aws_training_certification_email_domain_request() :: #{binary() => any()}.

%% Example:
%% get_profile_visibility_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type get_profile_visibility_request() :: #{binary() => any()}.

%% Example:
%% localized_content() :: #{
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"Locale">> => string(),
%%   <<"LogoUrl">> => string(),
%%   <<"WebsiteUrl">> => string()
%% }
-type localized_content() :: #{binary() => any()}.

%% Example:
%% registrant_verification_response() :: #{
%%   <<"CompletionUrl">> => string(),
%%   <<"CompletionUrlExpiresAt">> => non_neg_integer()
%% }
-type registrant_verification_response() :: #{binary() => any()}.

%% Example:
%% cancel_profile_update_task_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"EndedAt">> => non_neg_integer(),
%%   <<"ErrorDetailList">> => list(error_detail()),
%%   <<"Id">> => string(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"TaskDetails">> => task_details(),
%%   <<"TaskId">> => string()
%% }
-type cancel_profile_update_task_response() :: #{binary() => any()}.

%% Example:
%% reject_connection_invitation_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"Identifier">> := string(),
%%   <<"Reason">> => [string()]
%% }
-type reject_connection_invitation_request() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% start_verification_response() :: #{
%%   <<"CompletedAt">> => non_neg_integer(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"VerificationResponseDetails">> => list(),
%%   <<"VerificationStatus">> => list(any()),
%%   <<"VerificationStatusReason">> => string(),
%%   <<"VerificationType">> => list(any())
%% }
-type start_verification_response() :: #{binary() => any()}.

%% Example:
%% error_detail() :: #{
%%   <<"Locale">> => [string()],
%%   <<"Message">> => [string()],
%%   <<"Reason">> => list(any())
%% }
-type error_detail() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"Reason">> => list(any())
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% get_alliance_lead_contact_response() :: #{
%%   <<"AllianceLeadContact">> => alliance_lead_contact(),
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"Id">> => string()
%% }
-type get_alliance_lead_contact_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% get_verification_response() :: #{
%%   <<"CompletedAt">> => non_neg_integer(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"VerificationResponseDetails">> => list(),
%%   <<"VerificationStatus">> => list(any()),
%%   <<"VerificationStatusReason">> => string(),
%%   <<"VerificationType">> => list(any())
%% }
-type get_verification_response() :: #{binary() => any()}.

%% Example:
%% connection_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"ConnectionTypes">> => map(),
%%   <<"Id">> => string(),
%%   <<"OtherParticipantAccountId">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type connection_summary() :: #{binary() => any()}.

%% Example:
%% get_alliance_lead_contact_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type get_alliance_lead_contact_request() :: #{binary() => any()}.

%% Example:
%% field_validation_error() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => [string()],
%%   <<"Name">> => [string()]
%% }
-type field_validation_error() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"ErrorDetails">> => list(list()),
%%   <<"Message">> => [string()],
%%   <<"Reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"QuotaCode">> => [string()],
%%   <<"ServiceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% seller_profile_summary() :: #{
%%   <<"Id">> => string(),
%%   <<"Name">> => string()
%% }
-type seller_profile_summary() :: #{binary() => any()}.

%% Example:
%% get_verification_request() :: #{
%%   <<"VerificationType">> := list(any())
%% }
-type get_verification_request() :: #{binary() => any()}.

%% Example:
%% cancel_connection_invitation_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"Identifier">> := string()
%% }
-type cancel_connection_invitation_request() :: #{binary() => any()}.

%% Example:
%% update_connection_preferences_request() :: #{
%%   <<"AccessType">> := list(any()),
%%   <<"Catalog">> := string(),
%%   <<"ExcludedParticipantIdentifiers">> => list(string()),
%%   <<"Revision">> := float()
%% }
-type update_connection_preferences_request() :: #{binary() => any()}.

%% Example:
%% cancel_connection_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"ConnectionTypes">> => map(),
%%   <<"Id">> => string(),
%%   <<"OtherParticipantAccountId">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type cancel_connection_response() :: #{binary() => any()}.

%% Example:
%% get_partner_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AwsTrainingCertificationEmailDomains">> => list(partner_domain()),
%%   <<"Catalog">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"LegalName">> => string(),
%%   <<"Profile">> => partner_profile()
%% }
-type get_partner_response() :: #{binary() => any()}.

%% Example:
%% send_email_verification_code_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Email">> := string()
%% }
-type send_email_verification_code_request() :: #{binary() => any()}.

%% Example:
%% connection_invitation_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"ConnectionId">> => string(),
%%   <<"ConnectionType">> => list(any()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"ExpiresAt">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"OtherParticipantIdentifier">> => string(),
%%   <<"ParticipantType">> => list(any()),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type connection_invitation_summary() :: #{binary() => any()}.

%% Example:
%% list_connection_invitations_request() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ConnectionType">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OtherParticipantIdentifiers">> => list(string()),
%%   <<"ParticipantType">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type list_connection_invitations_request() :: #{binary() => any()}.

%% Example:
%% get_connection_preferences_response() :: #{
%%   <<"AccessType">> => list(any()),
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"ExcludedParticipantIds">> => list(string()),
%%   <<"Revision">> => float(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type get_connection_preferences_response() :: #{binary() => any()}.

%% Example:
%% task_details() :: #{
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"IndustrySegments">> => list(list(any())()),
%%   <<"LocalizedContents">> => list(localized_content()),
%%   <<"LogoUrl">> => string(),
%%   <<"PrimarySolutionType">> => list(any()),
%%   <<"TranslationSourceLocale">> => string(),
%%   <<"WebsiteUrl">> => string()
%% }
-type task_details() :: #{binary() => any()}.

%% Example:
%% update_connection_preferences_response() :: #{
%%   <<"AccessType">> => list(any()),
%%   <<"Arn">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"ExcludedParticipantIds">> => list(string()),
%%   <<"Revision">> => float(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type update_connection_preferences_response() :: #{binary() => any()}.

-type accept_connection_invitation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_aws_training_certification_email_domain_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type cancel_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type cancel_connection_invitation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type cancel_profile_update_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_connection_invitation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_partner_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type disassociate_aws_training_certification_email_domain_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_alliance_lead_contact_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_connection_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_connection_invitation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_connection_preferences_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_partner_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_profile_update_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_profile_visibility_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_verification_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_connection_invitations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_connections_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_partners_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_alliance_lead_contact_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_profile_visibility_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type reject_connection_invitation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type send_email_verification_code_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type start_profile_update_task_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_verification_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_connection_preferences_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts a connection invitation from another partner, establishing a
%% formal partnership connection between the two parties.
-spec accept_connection_invitation(aws_client:aws_client(), accept_connection_invitation_request()) ->
    {ok, accept_connection_invitation_response(), tuple()} |
    {error, any()} |
    {error, accept_connection_invitation_errors(), tuple()}.
accept_connection_invitation(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_connection_invitation(Client, Input, []).

-spec accept_connection_invitation(aws_client:aws_client(), accept_connection_invitation_request(), proplists:proplist()) ->
    {ok, accept_connection_invitation_response(), tuple()} |
    {error, any()} |
    {error, accept_connection_invitation_errors(), tuple()}.
accept_connection_invitation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptConnectionInvitation">>, Input, Options).

%% @doc Associates an email domain with AWS training and certification for
%% the partner account, enabling automatic verification of employee
%% certifications.
-spec associate_aws_training_certification_email_domain(aws_client:aws_client(), associate_aws_training_certification_email_domain_request()) ->
    {ok, associate_aws_training_certification_email_domain_response(), tuple()} |
    {error, any()} |
    {error, associate_aws_training_certification_email_domain_errors(), tuple()}.
associate_aws_training_certification_email_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_aws_training_certification_email_domain(Client, Input, []).

-spec associate_aws_training_certification_email_domain(aws_client:aws_client(), associate_aws_training_certification_email_domain_request(), proplists:proplist()) ->
    {ok, associate_aws_training_certification_email_domain_response(), tuple()} |
    {error, any()} |
    {error, associate_aws_training_certification_email_domain_errors(), tuple()}.
associate_aws_training_certification_email_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateAwsTrainingCertificationEmailDomain">>, Input, Options).

%% @doc Cancels an existing connection between partners, terminating the
%% partnership relationship.
-spec cancel_connection(aws_client:aws_client(), cancel_connection_request()) ->
    {ok, cancel_connection_response(), tuple()} |
    {error, any()} |
    {error, cancel_connection_errors(), tuple()}.
cancel_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_connection(Client, Input, []).

-spec cancel_connection(aws_client:aws_client(), cancel_connection_request(), proplists:proplist()) ->
    {ok, cancel_connection_response(), tuple()} |
    {error, any()} |
    {error, cancel_connection_errors(), tuple()}.
cancel_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelConnection">>, Input, Options).

%% @doc Cancels a pending connection invitation before it has been accepted
%% or rejected.
-spec cancel_connection_invitation(aws_client:aws_client(), cancel_connection_invitation_request()) ->
    {ok, cancel_connection_invitation_response(), tuple()} |
    {error, any()} |
    {error, cancel_connection_invitation_errors(), tuple()}.
cancel_connection_invitation(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_connection_invitation(Client, Input, []).

-spec cancel_connection_invitation(aws_client:aws_client(), cancel_connection_invitation_request(), proplists:proplist()) ->
    {ok, cancel_connection_invitation_response(), tuple()} |
    {error, any()} |
    {error, cancel_connection_invitation_errors(), tuple()}.
cancel_connection_invitation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelConnectionInvitation">>, Input, Options).

%% @doc Cancels an in-progress profile update task, stopping any pending
%% changes to the partner profile.
-spec cancel_profile_update_task(aws_client:aws_client(), cancel_profile_update_task_request()) ->
    {ok, cancel_profile_update_task_response(), tuple()} |
    {error, any()} |
    {error, cancel_profile_update_task_errors(), tuple()}.
cancel_profile_update_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_profile_update_task(Client, Input, []).

-spec cancel_profile_update_task(aws_client:aws_client(), cancel_profile_update_task_request(), proplists:proplist()) ->
    {ok, cancel_profile_update_task_response(), tuple()} |
    {error, any()} |
    {error, cancel_profile_update_task_errors(), tuple()}.
cancel_profile_update_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelProfileUpdateTask">>, Input, Options).

%% @doc Creates a new connection invitation to establish a partnership with
%% another organization.
-spec create_connection_invitation(aws_client:aws_client(), create_connection_invitation_request()) ->
    {ok, create_connection_invitation_response(), tuple()} |
    {error, any()} |
    {error, create_connection_invitation_errors(), tuple()}.
create_connection_invitation(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_connection_invitation(Client, Input, []).

-spec create_connection_invitation(aws_client:aws_client(), create_connection_invitation_request(), proplists:proplist()) ->
    {ok, create_connection_invitation_response(), tuple()} |
    {error, any()} |
    {error, create_connection_invitation_errors(), tuple()}.
create_connection_invitation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConnectionInvitation">>, Input, Options).

%% @doc Creates a new partner account in the AWS Partner Network with the
%% specified details and configuration.
-spec create_partner(aws_client:aws_client(), create_partner_request()) ->
    {ok, create_partner_response(), tuple()} |
    {error, any()} |
    {error, create_partner_errors(), tuple()}.
create_partner(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_partner(Client, Input, []).

-spec create_partner(aws_client:aws_client(), create_partner_request(), proplists:proplist()) ->
    {ok, create_partner_response(), tuple()} |
    {error, any()} |
    {error, create_partner_errors(), tuple()}.
create_partner(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePartner">>, Input, Options).

%% @doc Removes the association between an email domain and AWS training and
%% certification for the partner account.
-spec disassociate_aws_training_certification_email_domain(aws_client:aws_client(), disassociate_aws_training_certification_email_domain_request()) ->
    {ok, disassociate_aws_training_certification_email_domain_response(), tuple()} |
    {error, any()} |
    {error, disassociate_aws_training_certification_email_domain_errors(), tuple()}.
disassociate_aws_training_certification_email_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_aws_training_certification_email_domain(Client, Input, []).

-spec disassociate_aws_training_certification_email_domain(aws_client:aws_client(), disassociate_aws_training_certification_email_domain_request(), proplists:proplist()) ->
    {ok, disassociate_aws_training_certification_email_domain_response(), tuple()} |
    {error, any()} |
    {error, disassociate_aws_training_certification_email_domain_errors(), tuple()}.
disassociate_aws_training_certification_email_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateAwsTrainingCertificationEmailDomain">>, Input, Options).

%% @doc Retrieves the alliance lead contact information for a partner
%% account.
-spec get_alliance_lead_contact(aws_client:aws_client(), get_alliance_lead_contact_request()) ->
    {ok, get_alliance_lead_contact_response(), tuple()} |
    {error, any()} |
    {error, get_alliance_lead_contact_errors(), tuple()}.
get_alliance_lead_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_alliance_lead_contact(Client, Input, []).

-spec get_alliance_lead_contact(aws_client:aws_client(), get_alliance_lead_contact_request(), proplists:proplist()) ->
    {ok, get_alliance_lead_contact_response(), tuple()} |
    {error, any()} |
    {error, get_alliance_lead_contact_errors(), tuple()}.
get_alliance_lead_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAllianceLeadContact">>, Input, Options).

%% @doc Retrieves detailed information about a specific connection between
%% partners.
-spec get_connection(aws_client:aws_client(), get_connection_request()) ->
    {ok, get_connection_response(), tuple()} |
    {error, any()} |
    {error, get_connection_errors(), tuple()}.
get_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_connection(Client, Input, []).

-spec get_connection(aws_client:aws_client(), get_connection_request(), proplists:proplist()) ->
    {ok, get_connection_response(), tuple()} |
    {error, any()} |
    {error, get_connection_errors(), tuple()}.
get_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConnection">>, Input, Options).

%% @doc Retrieves detailed information about a specific connection
%% invitation.
-spec get_connection_invitation(aws_client:aws_client(), get_connection_invitation_request()) ->
    {ok, get_connection_invitation_response(), tuple()} |
    {error, any()} |
    {error, get_connection_invitation_errors(), tuple()}.
get_connection_invitation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_connection_invitation(Client, Input, []).

-spec get_connection_invitation(aws_client:aws_client(), get_connection_invitation_request(), proplists:proplist()) ->
    {ok, get_connection_invitation_response(), tuple()} |
    {error, any()} |
    {error, get_connection_invitation_errors(), tuple()}.
get_connection_invitation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConnectionInvitation">>, Input, Options).

%% @doc Retrieves the connection preferences for a partner account, including
%% access settings and exclusions.
-spec get_connection_preferences(aws_client:aws_client(), get_connection_preferences_request()) ->
    {ok, get_connection_preferences_response(), tuple()} |
    {error, any()} |
    {error, get_connection_preferences_errors(), tuple()}.
get_connection_preferences(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_connection_preferences(Client, Input, []).

-spec get_connection_preferences(aws_client:aws_client(), get_connection_preferences_request(), proplists:proplist()) ->
    {ok, get_connection_preferences_response(), tuple()} |
    {error, any()} |
    {error, get_connection_preferences_errors(), tuple()}.
get_connection_preferences(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConnectionPreferences">>, Input, Options).

%% @doc Retrieves detailed information about a specific partner account.
-spec get_partner(aws_client:aws_client(), get_partner_request()) ->
    {ok, get_partner_response(), tuple()} |
    {error, any()} |
    {error, get_partner_errors(), tuple()}.
get_partner(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_partner(Client, Input, []).

-spec get_partner(aws_client:aws_client(), get_partner_request(), proplists:proplist()) ->
    {ok, get_partner_response(), tuple()} |
    {error, any()} |
    {error, get_partner_errors(), tuple()}.
get_partner(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPartner">>, Input, Options).

%% @doc Retrieves information about a specific profile update task.
-spec get_profile_update_task(aws_client:aws_client(), get_profile_update_task_request()) ->
    {ok, get_profile_update_task_response(), tuple()} |
    {error, any()} |
    {error, get_profile_update_task_errors(), tuple()}.
get_profile_update_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_profile_update_task(Client, Input, []).

-spec get_profile_update_task(aws_client:aws_client(), get_profile_update_task_request(), proplists:proplist()) ->
    {ok, get_profile_update_task_response(), tuple()} |
    {error, any()} |
    {error, get_profile_update_task_errors(), tuple()}.
get_profile_update_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProfileUpdateTask">>, Input, Options).

%% @doc Retrieves the visibility settings for a partner profile, determining
%% who can see the profile information.
-spec get_profile_visibility(aws_client:aws_client(), get_profile_visibility_request()) ->
    {ok, get_profile_visibility_response(), tuple()} |
    {error, any()} |
    {error, get_profile_visibility_errors(), tuple()}.
get_profile_visibility(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_profile_visibility(Client, Input, []).

-spec get_profile_visibility(aws_client:aws_client(), get_profile_visibility_request(), proplists:proplist()) ->
    {ok, get_profile_visibility_response(), tuple()} |
    {error, any()} |
    {error, get_profile_visibility_errors(), tuple()}.
get_profile_visibility(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetProfileVisibility">>, Input, Options).

%% @doc Retrieves the current status and details of a verification process
%% for a partner account.
%%
%% This operation allows partners to check the progress and results of
%% business or registrant verification processes.
-spec get_verification(aws_client:aws_client(), get_verification_request()) ->
    {ok, get_verification_response(), tuple()} |
    {error, any()} |
    {error, get_verification_errors(), tuple()}.
get_verification(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_verification(Client, Input, []).

-spec get_verification(aws_client:aws_client(), get_verification_request(), proplists:proplist()) ->
    {ok, get_verification_response(), tuple()} |
    {error, any()} |
    {error, get_verification_errors(), tuple()}.
get_verification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVerification">>, Input, Options).

%% @doc Lists connection invitations for the partner account, with optional
%% filtering by status, type, and other criteria.
-spec list_connection_invitations(aws_client:aws_client(), list_connection_invitations_request()) ->
    {ok, list_connection_invitations_response(), tuple()} |
    {error, any()} |
    {error, list_connection_invitations_errors(), tuple()}.
list_connection_invitations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_connection_invitations(Client, Input, []).

-spec list_connection_invitations(aws_client:aws_client(), list_connection_invitations_request(), proplists:proplist()) ->
    {ok, list_connection_invitations_response(), tuple()} |
    {error, any()} |
    {error, list_connection_invitations_errors(), tuple()}.
list_connection_invitations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConnectionInvitations">>, Input, Options).

%% @doc Lists active connections for the partner account, with optional
%% filtering by connection type and participant.
-spec list_connections(aws_client:aws_client(), list_connections_request()) ->
    {ok, list_connections_response(), tuple()} |
    {error, any()} |
    {error, list_connections_errors(), tuple()}.
list_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_connections(Client, Input, []).

-spec list_connections(aws_client:aws_client(), list_connections_request(), proplists:proplist()) ->
    {ok, list_connections_response(), tuple()} |
    {error, any()} |
    {error, list_connections_errors(), tuple()}.
list_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListConnections">>, Input, Options).

%% @doc Lists partner accounts in the catalog, providing a summary view of
%% all partners.
-spec list_partners(aws_client:aws_client(), list_partners_request()) ->
    {ok, list_partners_response(), tuple()} |
    {error, any()} |
    {error, list_partners_errors(), tuple()}.
list_partners(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_partners(Client, Input, []).

-spec list_partners(aws_client:aws_client(), list_partners_request(), proplists:proplist()) ->
    {ok, list_partners_response(), tuple()} |
    {error, any()} |
    {error, list_partners_errors(), tuple()}.
list_partners(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPartners">>, Input, Options).

%% @doc Lists all tags associated with a specific AWS Partner Central Account
%% resource.
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

%% @doc Creates or updates the alliance lead contact information for a
%% partner account.
-spec put_alliance_lead_contact(aws_client:aws_client(), put_alliance_lead_contact_request()) ->
    {ok, put_alliance_lead_contact_response(), tuple()} |
    {error, any()} |
    {error, put_alliance_lead_contact_errors(), tuple()}.
put_alliance_lead_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_alliance_lead_contact(Client, Input, []).

-spec put_alliance_lead_contact(aws_client:aws_client(), put_alliance_lead_contact_request(), proplists:proplist()) ->
    {ok, put_alliance_lead_contact_response(), tuple()} |
    {error, any()} |
    {error, put_alliance_lead_contact_errors(), tuple()}.
put_alliance_lead_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAllianceLeadContact">>, Input, Options).

%% @doc Sets the visibility level for a partner profile, controlling who can
%% view the profile information.
-spec put_profile_visibility(aws_client:aws_client(), put_profile_visibility_request()) ->
    {ok, put_profile_visibility_response(), tuple()} |
    {error, any()} |
    {error, put_profile_visibility_errors(), tuple()}.
put_profile_visibility(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_profile_visibility(Client, Input, []).

-spec put_profile_visibility(aws_client:aws_client(), put_profile_visibility_request(), proplists:proplist()) ->
    {ok, put_profile_visibility_response(), tuple()} |
    {error, any()} |
    {error, put_profile_visibility_errors(), tuple()}.
put_profile_visibility(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutProfileVisibility">>, Input, Options).

%% @doc Rejects a connection invitation from another partner, declining the
%% partnership request.
-spec reject_connection_invitation(aws_client:aws_client(), reject_connection_invitation_request()) ->
    {ok, reject_connection_invitation_response(), tuple()} |
    {error, any()} |
    {error, reject_connection_invitation_errors(), tuple()}.
reject_connection_invitation(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_connection_invitation(Client, Input, []).

-spec reject_connection_invitation(aws_client:aws_client(), reject_connection_invitation_request(), proplists:proplist()) ->
    {ok, reject_connection_invitation_response(), tuple()} |
    {error, any()} |
    {error, reject_connection_invitation_errors(), tuple()}.
reject_connection_invitation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectConnectionInvitation">>, Input, Options).

%% @doc Sends an email verification code to the specified email address for
%% account verification purposes.
-spec send_email_verification_code(aws_client:aws_client(), send_email_verification_code_request()) ->
    {ok, send_email_verification_code_response(), tuple()} |
    {error, any()} |
    {error, send_email_verification_code_errors(), tuple()}.
send_email_verification_code(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_email_verification_code(Client, Input, []).

-spec send_email_verification_code(aws_client:aws_client(), send_email_verification_code_request(), proplists:proplist()) ->
    {ok, send_email_verification_code_response(), tuple()} |
    {error, any()} |
    {error, send_email_verification_code_errors(), tuple()}.
send_email_verification_code(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendEmailVerificationCode">>, Input, Options).

%% @doc Initiates a profile update task to modify partner profile information
%% asynchronously.
-spec start_profile_update_task(aws_client:aws_client(), start_profile_update_task_request()) ->
    {ok, start_profile_update_task_response(), tuple()} |
    {error, any()} |
    {error, start_profile_update_task_errors(), tuple()}.
start_profile_update_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_profile_update_task(Client, Input, []).

-spec start_profile_update_task(aws_client:aws_client(), start_profile_update_task_request(), proplists:proplist()) ->
    {ok, start_profile_update_task_response(), tuple()} |
    {error, any()} |
    {error, start_profile_update_task_errors(), tuple()}.
start_profile_update_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartProfileUpdateTask">>, Input, Options).

%% @doc Initiates a new verification process for a partner account.
%%
%% This operation begins the verification workflow for either business
%% registration or individual registrant identity verification as required by
%% AWS Partner Central.
-spec start_verification(aws_client:aws_client(), start_verification_request()) ->
    {ok, start_verification_response(), tuple()} |
    {error, any()} |
    {error, start_verification_errors(), tuple()}.
start_verification(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_verification(Client, Input, []).

-spec start_verification(aws_client:aws_client(), start_verification_request(), proplists:proplist()) ->
    {ok, start_verification_response(), tuple()} |
    {error, any()} |
    {error, start_verification_errors(), tuple()}.
start_verification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartVerification">>, Input, Options).

%% @doc Adds or updates tags for a specified AWS Partner Central Account
%% resource.
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

%% @doc Removes specified tags from an AWS Partner Central Account resource.
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

%% @doc Updates the connection preferences for a partner account, modifying
%% access settings and exclusions.
-spec update_connection_preferences(aws_client:aws_client(), update_connection_preferences_request()) ->
    {ok, update_connection_preferences_response(), tuple()} |
    {error, any()} |
    {error, update_connection_preferences_errors(), tuple()}.
update_connection_preferences(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_connection_preferences(Client, Input, []).

-spec update_connection_preferences(aws_client:aws_client(), update_connection_preferences_request(), proplists:proplist()) ->
    {ok, update_connection_preferences_response(), tuple()} |
    {error, any()} |
    {error, update_connection_preferences_errors(), tuple()}.
update_connection_preferences(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConnectionPreferences">>, Input, Options).

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
    Client1 = Client#{service => <<"partnercentral-account">>},
    Host = build_host(<<"partnercentral-account">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"PartnerCentralAccount.", Action/binary>>}
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
