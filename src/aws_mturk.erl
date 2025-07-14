%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Mechanical Turk API Reference
-module(aws_mturk).

-export([accept_qualification_request/2,
         accept_qualification_request/3,
         approve_assignment/2,
         approve_assignment/3,
         associate_qualification_with_worker/2,
         associate_qualification_with_worker/3,
         create_additional_assignments_for_hit/2,
         create_additional_assignments_for_hit/3,
         create_hit/2,
         create_hit/3,
         create_hit_type/2,
         create_hit_type/3,
         create_hit_with_hit_type/2,
         create_hit_with_hit_type/3,
         create_qualification_type/2,
         create_qualification_type/3,
         create_worker_block/2,
         create_worker_block/3,
         delete_hit/2,
         delete_hit/3,
         delete_qualification_type/2,
         delete_qualification_type/3,
         delete_worker_block/2,
         delete_worker_block/3,
         disassociate_qualification_from_worker/2,
         disassociate_qualification_from_worker/3,
         get_account_balance/2,
         get_account_balance/3,
         get_assignment/2,
         get_assignment/3,
         get_file_upload_url/2,
         get_file_upload_url/3,
         get_hit/2,
         get_hit/3,
         get_qualification_score/2,
         get_qualification_score/3,
         get_qualification_type/2,
         get_qualification_type/3,
         list_assignments_for_hit/2,
         list_assignments_for_hit/3,
         list_bonus_payments/2,
         list_bonus_payments/3,
         list_hits/2,
         list_hits/3,
         list_hits_for_qualification_type/2,
         list_hits_for_qualification_type/3,
         list_qualification_requests/2,
         list_qualification_requests/3,
         list_qualification_types/2,
         list_qualification_types/3,
         list_review_policy_results_for_hit/2,
         list_review_policy_results_for_hit/3,
         list_reviewable_hits/2,
         list_reviewable_hits/3,
         list_worker_blocks/2,
         list_worker_blocks/3,
         list_workers_with_qualification_type/2,
         list_workers_with_qualification_type/3,
         notify_workers/2,
         notify_workers/3,
         reject_assignment/2,
         reject_assignment/3,
         reject_qualification_request/2,
         reject_qualification_request/3,
         send_bonus/2,
         send_bonus/3,
         send_test_event_notification/2,
         send_test_event_notification/3,
         update_expiration_for_hit/2,
         update_expiration_for_hit/3,
         update_hit_review_status/2,
         update_hit_review_status/3,
         update_hit_type_of_hit/2,
         update_hit_type_of_hit/3,
         update_notification_settings/2,
         update_notification_settings/3,
         update_qualification_type/2,
         update_qualification_type/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% approve_assignment_request() :: #{
%%   <<"AssignmentId">> := string(),
%%   <<"OverrideRejection">> => boolean(),
%%   <<"RequesterFeedback">> => string()
%% }
-type approve_assignment_request() :: #{binary() => any()}.

%% Example:
%% delete_hit_response() :: #{

%% }
-type delete_hit_response() :: #{binary() => any()}.

%% Example:
%% notify_workers_request() :: #{
%%   <<"MessageText">> := string(),
%%   <<"Subject">> := string(),
%%   <<"WorkerIds">> := list(string())
%% }
-type notify_workers_request() :: #{binary() => any()}.

%% Example:
%% qualification_requirement() :: #{
%%   <<"ActionsGuarded">> => list(any()),
%%   <<"Comparator">> => list(any()),
%%   <<"IntegerValues">> => list(integer()),
%%   <<"LocaleValues">> => list(locale()),
%%   <<"QualificationTypeId">> => string(),
%%   <<"RequiredToPreview">> => boolean()
%% }
-type qualification_requirement() :: #{binary() => any()}.

%% Example:
%% review_policy() :: #{
%%   <<"Parameters">> => list(policy_parameter()),
%%   <<"PolicyName">> => string()
%% }
-type review_policy() :: #{binary() => any()}.

%% Example:
%% delete_worker_block_request() :: #{
%%   <<"Reason">> => string(),
%%   <<"WorkerId">> := string()
%% }
-type delete_worker_block_request() :: #{binary() => any()}.

%% Example:
%% get_qualification_type_request() :: #{
%%   <<"QualificationTypeId">> := string()
%% }
-type get_qualification_type_request() :: #{binary() => any()}.

%% Example:
%% create_qualification_type_request() :: #{
%%   <<"AnswerKey">> => string(),
%%   <<"AutoGranted">> => boolean(),
%%   <<"AutoGrantedValue">> => integer(),
%%   <<"Description">> := string(),
%%   <<"Keywords">> => string(),
%%   <<"Name">> := string(),
%%   <<"QualificationTypeStatus">> := list(any()),
%%   <<"RetryDelayInSeconds">> => float(),
%%   <<"Test">> => string(),
%%   <<"TestDurationInSeconds">> => float()
%% }
-type create_qualification_type_request() :: #{binary() => any()}.

%% Example:
%% assignment() :: #{
%%   <<"AcceptTime">> => non_neg_integer(),
%%   <<"Answer">> => string(),
%%   <<"ApprovalTime">> => non_neg_integer(),
%%   <<"AssignmentId">> => string(),
%%   <<"AssignmentStatus">> => list(any()),
%%   <<"AutoApprovalTime">> => non_neg_integer(),
%%   <<"Deadline">> => non_neg_integer(),
%%   <<"HITId">> => string(),
%%   <<"RejectionTime">> => non_neg_integer(),
%%   <<"RequesterFeedback">> => string(),
%%   <<"SubmitTime">> => non_neg_integer(),
%%   <<"WorkerId">> => string()
%% }
-type assignment() :: #{binary() => any()}.

%% Example:
%% reject_assignment_request() :: #{
%%   <<"AssignmentId">> := string(),
%%   <<"RequesterFeedback">> := string()
%% }
-type reject_assignment_request() :: #{binary() => any()}.

%% Example:
%% get_account_balance_response() :: #{
%%   <<"AvailableBalance">> => string(),
%%   <<"OnHoldBalance">> => string()
%% }
-type get_account_balance_response() :: #{binary() => any()}.

%% Example:
%% list_reviewable_hits_request() :: #{
%%   <<"HITTypeId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_reviewable_hits_request() :: #{binary() => any()}.

%% Example:
%% get_file_upload_url_response() :: #{
%%   <<"FileUploadURL">> => string()
%% }
-type get_file_upload_url_response() :: #{binary() => any()}.

%% Example:
%% list_qualification_types_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"MustBeOwnedByCaller">> => boolean(),
%%   <<"MustBeRequestable">> := boolean(),
%%   <<"NextToken">> => string(),
%%   <<"Query">> => string()
%% }
-type list_qualification_types_request() :: #{binary() => any()}.

%% Example:
%% accept_qualification_request_request() :: #{
%%   <<"IntegerValue">> => integer(),
%%   <<"QualificationRequestId">> := string()
%% }
-type accept_qualification_request_request() :: #{binary() => any()}.

%% Example:
%% create_hit_type_response() :: #{
%%   <<"HITTypeId">> => string()
%% }
-type create_hit_type_response() :: #{binary() => any()}.

%% Example:
%% create_worker_block_response() :: #{

%% }
-type create_worker_block_response() :: #{binary() => any()}.

%% Example:
%% service_fault() :: #{
%%   <<"Message">> => string(),
%%   <<"TurkErrorCode">> => string()
%% }
-type service_fault() :: #{binary() => any()}.

%% Example:
%% create_additional_assignments_for_hit_response() :: #{

%% }
-type create_additional_assignments_for_hit_response() :: #{binary() => any()}.

%% Example:
%% delete_qualification_type_request() :: #{
%%   <<"QualificationTypeId">> := string()
%% }
-type delete_qualification_type_request() :: #{binary() => any()}.

%% Example:
%% locale() :: #{
%%   <<"Country">> => string(),
%%   <<"Subdivision">> => string()
%% }
-type locale() :: #{binary() => any()}.

%% Example:
%% review_result_detail() :: #{
%%   <<"ActionId">> => string(),
%%   <<"Key">> => string(),
%%   <<"QuestionId">> => string(),
%%   <<"SubjectId">> => string(),
%%   <<"SubjectType">> => string(),
%%   <<"Value">> => string()
%% }
-type review_result_detail() :: #{binary() => any()}.

%% Example:
%% list_hits_for_qualification_type_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"QualificationTypeId">> := string()
%% }
-type list_hits_for_qualification_type_request() :: #{binary() => any()}.

%% Example:
%% send_bonus_response() :: #{

%% }
-type send_bonus_response() :: #{binary() => any()}.

%% Example:
%% get_file_upload_url_request() :: #{
%%   <<"AssignmentId">> := string(),
%%   <<"QuestionIdentifier">> := string()
%% }
-type get_file_upload_url_request() :: #{binary() => any()}.

%% Example:
%% get_qualification_score_request() :: #{
%%   <<"QualificationTypeId">> := string(),
%%   <<"WorkerId">> := string()
%% }
-type get_qualification_score_request() :: #{binary() => any()}.

%% Example:
%% update_hit_type_of_hit_request() :: #{
%%   <<"HITId">> := string(),
%%   <<"HITTypeId">> := string()
%% }
-type update_hit_type_of_hit_request() :: #{binary() => any()}.

%% Example:
%% approve_assignment_response() :: #{

%% }
-type approve_assignment_response() :: #{binary() => any()}.

%% Example:
%% list_review_policy_results_for_hit_request() :: #{
%%   <<"HITId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PolicyLevels">> => list(list(any())()),
%%   <<"RetrieveActions">> => boolean(),
%%   <<"RetrieveResults">> => boolean()
%% }
-type list_review_policy_results_for_hit_request() :: #{binary() => any()}.

%% Example:
%% list_worker_blocks_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_worker_blocks_request() :: #{binary() => any()}.

%% Example:
%% send_bonus_request() :: #{
%%   <<"AssignmentId">> := string(),
%%   <<"BonusAmount">> := string(),
%%   <<"Reason">> := string(),
%%   <<"UniqueRequestToken">> => string(),
%%   <<"WorkerId">> := string()
%% }
-type send_bonus_request() :: #{binary() => any()}.

%% Example:
%% reject_assignment_response() :: #{

%% }
-type reject_assignment_response() :: #{binary() => any()}.

%% Example:
%% notification_specification() :: #{
%%   <<"Destination">> => string(),
%%   <<"EventTypes">> => list(list(any())()),
%%   <<"Transport">> => list(any()),
%%   <<"Version">> => string()
%% }
-type notification_specification() :: #{binary() => any()}.

%% Example:
%% list_bonus_payments_response() :: #{
%%   <<"BonusPayments">> => list(bonus_payment()),
%%   <<"NextToken">> => string(),
%%   <<"NumResults">> => integer()
%% }
-type list_bonus_payments_response() :: #{binary() => any()}.

%% Example:
%% send_test_event_notification_request() :: #{
%%   <<"Notification">> := notification_specification(),
%%   <<"TestEventType">> := list(any())
%% }
-type send_test_event_notification_request() :: #{binary() => any()}.

%% Example:
%% notify_workers_failure_status() :: #{
%%   <<"NotifyWorkersFailureCode">> => list(any()),
%%   <<"NotifyWorkersFailureMessage">> => string(),
%%   <<"WorkerId">> => string()
%% }
-type notify_workers_failure_status() :: #{binary() => any()}.

%% Example:
%% list_hits_for_qualification_type_response() :: #{
%%   <<"HITs">> => list(hit()),
%%   <<"NextToken">> => string(),
%%   <<"NumResults">> => integer()
%% }
-type list_hits_for_qualification_type_response() :: #{binary() => any()}.

%% Example:
%% get_account_balance_request() :: #{

%% }
-type get_account_balance_request() :: #{binary() => any()}.

%% Example:
%% update_notification_settings_response() :: #{

%% }
-type update_notification_settings_response() :: #{binary() => any()}.

%% Example:
%% reject_qualification_request_response() :: #{

%% }
-type reject_qualification_request_response() :: #{binary() => any()}.

%% Example:
%% update_qualification_type_response() :: #{
%%   <<"QualificationType">> => qualification_type()
%% }
-type update_qualification_type_response() :: #{binary() => any()}.

%% Example:
%% get_hit_response() :: #{
%%   <<"HIT">> => hit()
%% }
-type get_hit_response() :: #{binary() => any()}.

%% Example:
%% get_assignment_response() :: #{
%%   <<"Assignment">> => assignment(),
%%   <<"HIT">> => hit()
%% }
-type get_assignment_response() :: #{binary() => any()}.

%% Example:
%% reject_qualification_request_request() :: #{
%%   <<"QualificationRequestId">> := string(),
%%   <<"Reason">> => string()
%% }
-type reject_qualification_request_request() :: #{binary() => any()}.

%% Example:
%% create_worker_block_request() :: #{
%%   <<"Reason">> := string(),
%%   <<"WorkerId">> := string()
%% }
-type create_worker_block_request() :: #{binary() => any()}.

%% Example:
%% delete_qualification_type_response() :: #{

%% }
-type delete_qualification_type_response() :: #{binary() => any()}.

%% Example:
%% list_worker_blocks_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"NumResults">> => integer(),
%%   <<"WorkerBlocks">> => list(worker_block())
%% }
-type list_worker_blocks_response() :: #{binary() => any()}.

%% Example:
%% associate_qualification_with_worker_response() :: #{

%% }
-type associate_qualification_with_worker_response() :: #{binary() => any()}.

%% Example:
%% qualification() :: #{
%%   <<"GrantTime">> => non_neg_integer(),
%%   <<"IntegerValue">> => integer(),
%%   <<"LocaleValue">> => locale(),
%%   <<"QualificationTypeId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"WorkerId">> => string()
%% }
-type qualification() :: #{binary() => any()}.

%% Example:
%% update_hit_review_status_response() :: #{

%% }
-type update_hit_review_status_response() :: #{binary() => any()}.

%% Example:
%% notify_workers_response() :: #{
%%   <<"NotifyWorkersFailureStatuses">> => list(notify_workers_failure_status())
%% }
-type notify_workers_response() :: #{binary() => any()}.

%% Example:
%% worker_block() :: #{
%%   <<"Reason">> => string(),
%%   <<"WorkerId">> => string()
%% }
-type worker_block() :: #{binary() => any()}.

%% Example:
%% update_notification_settings_request() :: #{
%%   <<"Active">> => boolean(),
%%   <<"HITTypeId">> := string(),
%%   <<"Notification">> => notification_specification()
%% }
-type update_notification_settings_request() :: #{binary() => any()}.

%% Example:
%% request_error() :: #{
%%   <<"Message">> => string(),
%%   <<"TurkErrorCode">> => string()
%% }
-type request_error() :: #{binary() => any()}.

%% Example:
%% accept_qualification_request_response() :: #{

%% }
-type accept_qualification_request_response() :: #{binary() => any()}.

%% Example:
%% disassociate_qualification_from_worker_response() :: #{

%% }
-type disassociate_qualification_from_worker_response() :: #{binary() => any()}.

%% Example:
%% list_qualification_requests_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"QualificationTypeId">> => string()
%% }
-type list_qualification_requests_request() :: #{binary() => any()}.

%% Example:
%% update_expiration_for_hit_response() :: #{

%% }
-type update_expiration_for_hit_response() :: #{binary() => any()}.

%% Example:
%% hit() :: #{
%%   <<"AssignmentDurationInSeconds">> => float(),
%%   <<"AutoApprovalDelayInSeconds">> => float(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Expiration">> => non_neg_integer(),
%%   <<"HITGroupId">> => string(),
%%   <<"HITId">> => string(),
%%   <<"HITLayoutId">> => string(),
%%   <<"HITReviewStatus">> => list(any()),
%%   <<"HITStatus">> => list(any()),
%%   <<"HITTypeId">> => string(),
%%   <<"Keywords">> => string(),
%%   <<"MaxAssignments">> => integer(),
%%   <<"NumberOfAssignmentsAvailable">> => integer(),
%%   <<"NumberOfAssignmentsCompleted">> => integer(),
%%   <<"NumberOfAssignmentsPending">> => integer(),
%%   <<"QualificationRequirements">> => list(qualification_requirement()),
%%   <<"Question">> => string(),
%%   <<"RequesterAnnotation">> => string(),
%%   <<"Reward">> => string(),
%%   <<"Title">> => string()
%% }
-type hit() :: #{binary() => any()}.

%% Example:
%% get_hit_request() :: #{
%%   <<"HITId">> := string()
%% }
-type get_hit_request() :: #{binary() => any()}.

%% Example:
%% policy_parameter() :: #{
%%   <<"Key">> => string(),
%%   <<"MapEntries">> => list(parameter_map_entry()),
%%   <<"Values">> => list(string())
%% }
-type policy_parameter() :: #{binary() => any()}.

%% Example:
%% bonus_payment() :: #{
%%   <<"AssignmentId">> => string(),
%%   <<"BonusAmount">> => string(),
%%   <<"GrantTime">> => non_neg_integer(),
%%   <<"Reason">> => string(),
%%   <<"WorkerId">> => string()
%% }
-type bonus_payment() :: #{binary() => any()}.

%% Example:
%% list_workers_with_qualification_type_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"QualificationTypeId">> := string(),
%%   <<"Status">> => list(any())
%% }
-type list_workers_with_qualification_type_request() :: #{binary() => any()}.

%% Example:
%% list_bonus_payments_request() :: #{
%%   <<"AssignmentId">> => string(),
%%   <<"HITId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_bonus_payments_request() :: #{binary() => any()}.

%% Example:
%% create_hit_request() :: #{
%%   <<"AssignmentDurationInSeconds">> := float(),
%%   <<"AssignmentReviewPolicy">> => review_policy(),
%%   <<"AutoApprovalDelayInSeconds">> => float(),
%%   <<"Description">> := string(),
%%   <<"HITLayoutId">> => string(),
%%   <<"HITLayoutParameters">> => list(hit_layout_parameter()),
%%   <<"HITReviewPolicy">> => review_policy(),
%%   <<"Keywords">> => string(),
%%   <<"LifetimeInSeconds">> := float(),
%%   <<"MaxAssignments">> => integer(),
%%   <<"QualificationRequirements">> => list(qualification_requirement()),
%%   <<"Question">> => string(),
%%   <<"RequesterAnnotation">> => string(),
%%   <<"Reward">> := string(),
%%   <<"Title">> := string(),
%%   <<"UniqueRequestToken">> => string()
%% }
-type create_hit_request() :: #{binary() => any()}.

%% Example:
%% associate_qualification_with_worker_request() :: #{
%%   <<"IntegerValue">> => integer(),
%%   <<"QualificationTypeId">> := string(),
%%   <<"SendNotification">> => boolean(),
%%   <<"WorkerId">> := string()
%% }
-type associate_qualification_with_worker_request() :: #{binary() => any()}.

%% Example:
%% list_qualification_requests_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"NumResults">> => integer(),
%%   <<"QualificationRequests">> => list(qualification_request())
%% }
-type list_qualification_requests_response() :: #{binary() => any()}.

%% Example:
%% hit_layout_parameter() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type hit_layout_parameter() :: #{binary() => any()}.

%% Example:
%% review_action_detail() :: #{
%%   <<"ActionId">> => string(),
%%   <<"ActionName">> => string(),
%%   <<"CompleteTime">> => non_neg_integer(),
%%   <<"ErrorCode">> => string(),
%%   <<"Result">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"TargetId">> => string(),
%%   <<"TargetType">> => string()
%% }
-type review_action_detail() :: #{binary() => any()}.

%% Example:
%% create_hit_with_hit_type_response() :: #{
%%   <<"HIT">> => hit()
%% }
-type create_hit_with_hit_type_response() :: #{binary() => any()}.

%% Example:
%% list_hits_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_hits_request() :: #{binary() => any()}.

%% Example:
%% send_test_event_notification_response() :: #{

%% }
-type send_test_event_notification_response() :: #{binary() => any()}.

%% Example:
%% update_hit_review_status_request() :: #{
%%   <<"HITId">> := string(),
%%   <<"Revert">> => boolean()
%% }
-type update_hit_review_status_request() :: #{binary() => any()}.

%% Example:
%% list_workers_with_qualification_type_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"NumResults">> => integer(),
%%   <<"Qualifications">> => list(qualification())
%% }
-type list_workers_with_qualification_type_response() :: #{binary() => any()}.

%% Example:
%% list_review_policy_results_for_hit_response() :: #{
%%   <<"AssignmentReviewPolicy">> => review_policy(),
%%   <<"AssignmentReviewReport">> => review_report(),
%%   <<"HITId">> => string(),
%%   <<"HITReviewPolicy">> => review_policy(),
%%   <<"HITReviewReport">> => review_report(),
%%   <<"NextToken">> => string()
%% }
-type list_review_policy_results_for_hit_response() :: #{binary() => any()}.

%% Example:
%% create_additional_assignments_for_hit_request() :: #{
%%   <<"HITId">> := string(),
%%   <<"NumberOfAdditionalAssignments">> := integer(),
%%   <<"UniqueRequestToken">> => string()
%% }
-type create_additional_assignments_for_hit_request() :: #{binary() => any()}.

%% Example:
%% review_report() :: #{
%%   <<"ReviewActions">> => list(review_action_detail()),
%%   <<"ReviewResults">> => list(review_result_detail())
%% }
-type review_report() :: #{binary() => any()}.

%% Example:
%% get_assignment_request() :: #{
%%   <<"AssignmentId">> := string()
%% }
-type get_assignment_request() :: #{binary() => any()}.

%% Example:
%% list_assignments_for_hit_response() :: #{
%%   <<"Assignments">> => list(assignment()),
%%   <<"NextToken">> => string(),
%%   <<"NumResults">> => integer()
%% }
-type list_assignments_for_hit_response() :: #{binary() => any()}.

%% Example:
%% qualification_type() :: #{
%%   <<"AnswerKey">> => string(),
%%   <<"AutoGranted">> => boolean(),
%%   <<"AutoGrantedValue">> => integer(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"IsRequestable">> => boolean(),
%%   <<"Keywords">> => string(),
%%   <<"Name">> => string(),
%%   <<"QualificationTypeId">> => string(),
%%   <<"QualificationTypeStatus">> => list(any()),
%%   <<"RetryDelayInSeconds">> => float(),
%%   <<"Test">> => string(),
%%   <<"TestDurationInSeconds">> => float()
%% }
-type qualification_type() :: #{binary() => any()}.

%% Example:
%% qualification_request() :: #{
%%   <<"Answer">> => string(),
%%   <<"QualificationRequestId">> => string(),
%%   <<"QualificationTypeId">> => string(),
%%   <<"SubmitTime">> => non_neg_integer(),
%%   <<"Test">> => string(),
%%   <<"WorkerId">> => string()
%% }
-type qualification_request() :: #{binary() => any()}.

%% Example:
%% get_qualification_score_response() :: #{
%%   <<"Qualification">> => qualification()
%% }
-type get_qualification_score_response() :: #{binary() => any()}.

%% Example:
%% create_qualification_type_response() :: #{
%%   <<"QualificationType">> => qualification_type()
%% }
-type create_qualification_type_response() :: #{binary() => any()}.

%% Example:
%% update_hit_type_of_hit_response() :: #{

%% }
-type update_hit_type_of_hit_response() :: #{binary() => any()}.

%% Example:
%% create_hit_with_hit_type_request() :: #{
%%   <<"AssignmentReviewPolicy">> => review_policy(),
%%   <<"HITLayoutId">> => string(),
%%   <<"HITLayoutParameters">> => list(hit_layout_parameter()),
%%   <<"HITReviewPolicy">> => review_policy(),
%%   <<"HITTypeId">> := string(),
%%   <<"LifetimeInSeconds">> := float(),
%%   <<"MaxAssignments">> => integer(),
%%   <<"Question">> => string(),
%%   <<"RequesterAnnotation">> => string(),
%%   <<"UniqueRequestToken">> => string()
%% }
-type create_hit_with_hit_type_request() :: #{binary() => any()}.

%% Example:
%% list_hits_response() :: #{
%%   <<"HITs">> => list(hit()),
%%   <<"NextToken">> => string(),
%%   <<"NumResults">> => integer()
%% }
-type list_hits_response() :: #{binary() => any()}.

%% Example:
%% update_expiration_for_hit_request() :: #{
%%   <<"ExpireAt">> := non_neg_integer(),
%%   <<"HITId">> := string()
%% }
-type update_expiration_for_hit_request() :: #{binary() => any()}.

%% Example:
%% delete_hit_request() :: #{
%%   <<"HITId">> := string()
%% }
-type delete_hit_request() :: #{binary() => any()}.

%% Example:
%% list_reviewable_hits_response() :: #{
%%   <<"HITs">> => list(hit()),
%%   <<"NextToken">> => string(),
%%   <<"NumResults">> => integer()
%% }
-type list_reviewable_hits_response() :: #{binary() => any()}.

%% Example:
%% get_qualification_type_response() :: #{
%%   <<"QualificationType">> => qualification_type()
%% }
-type get_qualification_type_response() :: #{binary() => any()}.

%% Example:
%% create_hit_response() :: #{
%%   <<"HIT">> => hit()
%% }
-type create_hit_response() :: #{binary() => any()}.

%% Example:
%% disassociate_qualification_from_worker_request() :: #{
%%   <<"QualificationTypeId">> := string(),
%%   <<"Reason">> => string(),
%%   <<"WorkerId">> := string()
%% }
-type disassociate_qualification_from_worker_request() :: #{binary() => any()}.

%% Example:
%% update_qualification_type_request() :: #{
%%   <<"AnswerKey">> => string(),
%%   <<"AutoGranted">> => boolean(),
%%   <<"AutoGrantedValue">> => integer(),
%%   <<"Description">> => string(),
%%   <<"QualificationTypeId">> := string(),
%%   <<"QualificationTypeStatus">> => list(any()),
%%   <<"RetryDelayInSeconds">> => float(),
%%   <<"Test">> => string(),
%%   <<"TestDurationInSeconds">> => float()
%% }
-type update_qualification_type_request() :: #{binary() => any()}.

%% Example:
%% parameter_map_entry() :: #{
%%   <<"Key">> => string(),
%%   <<"Values">> => list(string())
%% }
-type parameter_map_entry() :: #{binary() => any()}.

%% Example:
%% list_assignments_for_hit_request() :: #{
%%   <<"AssignmentStatuses">> => list(list(any())()),
%%   <<"HITId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_assignments_for_hit_request() :: #{binary() => any()}.

%% Example:
%% list_qualification_types_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"NumResults">> => integer(),
%%   <<"QualificationTypes">> => list(qualification_type())
%% }
-type list_qualification_types_response() :: #{binary() => any()}.

%% Example:
%% create_hit_type_request() :: #{
%%   <<"AssignmentDurationInSeconds">> := float(),
%%   <<"AutoApprovalDelayInSeconds">> => float(),
%%   <<"Description">> := string(),
%%   <<"Keywords">> => string(),
%%   <<"QualificationRequirements">> => list(qualification_requirement()),
%%   <<"Reward">> := string(),
%%   <<"Title">> := string()
%% }
-type create_hit_type_request() :: #{binary() => any()}.

%% Example:
%% delete_worker_block_response() :: #{

%% }
-type delete_worker_block_response() :: #{binary() => any()}.

-type accept_qualification_request_errors() ::
    request_error() | 
    service_fault().

-type approve_assignment_errors() ::
    request_error() | 
    service_fault().

-type associate_qualification_with_worker_errors() ::
    request_error() | 
    service_fault().

-type create_additional_assignments_for_hit_errors() ::
    request_error() | 
    service_fault().

-type create_hit_errors() ::
    request_error() | 
    service_fault().

-type create_hit_type_errors() ::
    request_error() | 
    service_fault().

-type create_hit_with_hit_type_errors() ::
    request_error() | 
    service_fault().

-type create_qualification_type_errors() ::
    request_error() | 
    service_fault().

-type create_worker_block_errors() ::
    request_error() | 
    service_fault().

-type delete_hit_errors() ::
    request_error() | 
    service_fault().

-type delete_qualification_type_errors() ::
    request_error() | 
    service_fault().

-type delete_worker_block_errors() ::
    request_error() | 
    service_fault().

-type disassociate_qualification_from_worker_errors() ::
    request_error() | 
    service_fault().

-type get_account_balance_errors() ::
    request_error() | 
    service_fault().

-type get_assignment_errors() ::
    request_error() | 
    service_fault().

-type get_file_upload_url_errors() ::
    request_error() | 
    service_fault().

-type get_hit_errors() ::
    request_error() | 
    service_fault().

-type get_qualification_score_errors() ::
    request_error() | 
    service_fault().

-type get_qualification_type_errors() ::
    request_error() | 
    service_fault().

-type list_assignments_for_hit_errors() ::
    request_error() | 
    service_fault().

-type list_bonus_payments_errors() ::
    request_error() | 
    service_fault().

-type list_hits_errors() ::
    request_error() | 
    service_fault().

-type list_hits_for_qualification_type_errors() ::
    request_error() | 
    service_fault().

-type list_qualification_requests_errors() ::
    request_error() | 
    service_fault().

-type list_qualification_types_errors() ::
    request_error() | 
    service_fault().

-type list_review_policy_results_for_hit_errors() ::
    request_error() | 
    service_fault().

-type list_reviewable_hits_errors() ::
    request_error() | 
    service_fault().

-type list_worker_blocks_errors() ::
    request_error() | 
    service_fault().

-type list_workers_with_qualification_type_errors() ::
    request_error() | 
    service_fault().

-type notify_workers_errors() ::
    request_error() | 
    service_fault().

-type reject_assignment_errors() ::
    request_error() | 
    service_fault().

-type reject_qualification_request_errors() ::
    request_error() | 
    service_fault().

-type send_bonus_errors() ::
    request_error() | 
    service_fault().

-type send_test_event_notification_errors() ::
    request_error() | 
    service_fault().

-type update_expiration_for_hit_errors() ::
    request_error() | 
    service_fault().

-type update_hit_review_status_errors() ::
    request_error() | 
    service_fault().

-type update_hit_type_of_hit_errors() ::
    request_error() | 
    service_fault().

-type update_notification_settings_errors() ::
    request_error() | 
    service_fault().

-type update_qualification_type_errors() ::
    request_error() | 
    service_fault().

%%====================================================================
%% API
%%====================================================================

%% @doc
%% The `AcceptQualificationRequest' operation approves a Worker's
%% request for a Qualification.
%%
%% Only the owner of the Qualification type can grant a Qualification request
%% for that type.
%%
%% A successful request for the `AcceptQualificationRequest' operation
%% returns with no errors and an empty body.
-spec accept_qualification_request(aws_client:aws_client(), accept_qualification_request_request()) ->
    {ok, accept_qualification_request_response(), tuple()} |
    {error, any()} |
    {error, accept_qualification_request_errors(), tuple()}.
accept_qualification_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_qualification_request(Client, Input, []).

-spec accept_qualification_request(aws_client:aws_client(), accept_qualification_request_request(), proplists:proplist()) ->
    {ok, accept_qualification_request_response(), tuple()} |
    {error, any()} |
    {error, accept_qualification_request_errors(), tuple()}.
accept_qualification_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptQualificationRequest">>, Input, Options).

%% @doc
%% The `ApproveAssignment' operation approves the results of a completed
%% assignment.
%%
%% Approving an assignment initiates two payments from the Requester's
%% Amazon.com account
%%
%% The Worker who submitted the results is paid the reward specified in the
%% HIT.
%%
%% Amazon Mechanical Turk fees are debited.
%%
%% If the Requester's account does not have adequate funds for these
%% payments,
%% the call to ApproveAssignment returns an exception, and the approval is
%% not processed.
%% You can include an optional feedback message with the approval,
%% which the Worker can see in the Status section of the web site.
%%
%% You can also call this operation for assignments that were previous
%% rejected
%% and approve them by explicitly overriding the previous rejection.
%% This only works on rejected assignments that were submitted within the
%% previous 30 days
%% and only if the assignment's related HIT has not been deleted.
-spec approve_assignment(aws_client:aws_client(), approve_assignment_request()) ->
    {ok, approve_assignment_response(), tuple()} |
    {error, any()} |
    {error, approve_assignment_errors(), tuple()}.
approve_assignment(Client, Input)
  when is_map(Client), is_map(Input) ->
    approve_assignment(Client, Input, []).

-spec approve_assignment(aws_client:aws_client(), approve_assignment_request(), proplists:proplist()) ->
    {ok, approve_assignment_response(), tuple()} |
    {error, any()} |
    {error, approve_assignment_errors(), tuple()}.
approve_assignment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ApproveAssignment">>, Input, Options).

%% @doc
%% The `AssociateQualificationWithWorker' operation gives a Worker a
%% Qualification.
%%
%% `AssociateQualificationWithWorker' does not require that the Worker
%% submit a Qualification request. It gives the Qualification directly to the
%% Worker.
%%
%% You can only assign a Qualification of a Qualification type that you
%% created (using
%% the `CreateQualificationType' operation).
%%
%% Note: `AssociateQualificationWithWorker' does not affect any pending
%% Qualification
%% requests for the Qualification by the Worker. If you assign a
%% Qualification to a
%% Worker, then later grant a Qualification request made by the Worker, the
%% granting of
%% the request may modify the Qualification score. To resolve a pending
%% Qualification
%% request without affecting the Qualification the Worker already has, reject
%% the
%% request with the `RejectQualificationRequest' operation.
-spec associate_qualification_with_worker(aws_client:aws_client(), associate_qualification_with_worker_request()) ->
    {ok, associate_qualification_with_worker_response(), tuple()} |
    {error, any()} |
    {error, associate_qualification_with_worker_errors(), tuple()}.
associate_qualification_with_worker(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_qualification_with_worker(Client, Input, []).

-spec associate_qualification_with_worker(aws_client:aws_client(), associate_qualification_with_worker_request(), proplists:proplist()) ->
    {ok, associate_qualification_with_worker_response(), tuple()} |
    {error, any()} |
    {error, associate_qualification_with_worker_errors(), tuple()}.
associate_qualification_with_worker(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateQualificationWithWorker">>, Input, Options).

%% @doc
%% The
%% `CreateAdditionalAssignmentsForHIT'
%% operation increases the maximum number of assignments of an existing HIT.
%%
%% To extend the maximum number of assignments, specify the number of
%% additional assignments.
%%
%% HITs created with fewer than 10 assignments cannot be extended to have 10
%% or more assignments. Attempting to add assignments in a way that brings
%% the total number of assignments for a HIT from fewer than 10 assignments
%% to 10 or more
%% assignments will result in an
%% `AWS.MechanicalTurk.InvalidMaximumAssignmentsIncrease'
%% exception.
%%
%% HITs that were created before July 22, 2015 cannot be extended. Attempting
%% to extend HITs that were created before July 22, 2015 will result in an
%% `AWS.MechanicalTurk.HITTooOldForExtension'
%% exception.
-spec create_additional_assignments_for_hit(aws_client:aws_client(), create_additional_assignments_for_hit_request()) ->
    {ok, create_additional_assignments_for_hit_response(), tuple()} |
    {error, any()} |
    {error, create_additional_assignments_for_hit_errors(), tuple()}.
create_additional_assignments_for_hit(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_additional_assignments_for_hit(Client, Input, []).

-spec create_additional_assignments_for_hit(aws_client:aws_client(), create_additional_assignments_for_hit_request(), proplists:proplist()) ->
    {ok, create_additional_assignments_for_hit_response(), tuple()} |
    {error, any()} |
    {error, create_additional_assignments_for_hit_errors(), tuple()}.
create_additional_assignments_for_hit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAdditionalAssignmentsForHIT">>, Input, Options).

%% @doc The `CreateHIT' operation creates a new Human Intelligence Task
%% (HIT).
%%
%% The new HIT is made available for Workers to find and accept on the Amazon
%% Mechanical
%% Turk website.
%%
%% This operation allows you to specify a new HIT by passing in values for
%% the properties of the HIT, such as its title, reward amount and number of
%% assignments. When you pass these values to `CreateHIT', a new HIT is
%% created for you, with a new `HITTypeID'. The HITTypeID can be used to
%% create additional HITs in the future without needing to specify common
%% parameters such as the title, description and reward amount each time.
%%
%% An alternative way to create HITs is to first generate a HITTypeID using
%% the `CreateHITType' operation and then call the
%% `CreateHITWithHITType' operation. This is the recommended best
%% practice for Requesters who are creating large numbers of HITs.
%%
%% CreateHIT also supports several ways to provide question data: by
%% providing a value
%% for the `Question' parameter that fully specifies the contents of the
%% HIT, or by providing
%% a `HitLayoutId' and associated `HitLayoutParameters'.
%%
%% If a HIT is created with 10 or more maximum assignments, there is an
%% additional fee. For more information, see
%% Amazon Mechanical Turk Pricing: https://requester.mturk.com/pricing.
-spec create_hit(aws_client:aws_client(), create_hit_request()) ->
    {ok, create_hit_response(), tuple()} |
    {error, any()} |
    {error, create_hit_errors(), tuple()}.
create_hit(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hit(Client, Input, []).

-spec create_hit(aws_client:aws_client(), create_hit_request(), proplists:proplist()) ->
    {ok, create_hit_response(), tuple()} |
    {error, any()} |
    {error, create_hit_errors(), tuple()}.
create_hit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHIT">>, Input, Options).

%% @doc
%% The `CreateHITType' operation creates a new HIT type.
%%
%% This operation
%% allows you to define a standard set of HIT properties to use when creating
%% HITs.
%% If you register a HIT type with values that match an existing HIT type,
%% the HIT type
%% ID of the existing type will be returned.
-spec create_hit_type(aws_client:aws_client(), create_hit_type_request()) ->
    {ok, create_hit_type_response(), tuple()} |
    {error, any()} |
    {error, create_hit_type_errors(), tuple()}.
create_hit_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hit_type(Client, Input, []).

-spec create_hit_type(aws_client:aws_client(), create_hit_type_request(), proplists:proplist()) ->
    {ok, create_hit_type_response(), tuple()} |
    {error, any()} |
    {error, create_hit_type_errors(), tuple()}.
create_hit_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHITType">>, Input, Options).

%% @doc
%% The `CreateHITWithHITType' operation creates a new Human Intelligence
%% Task (HIT)
%% using an existing HITTypeID generated by the `CreateHITType'
%% operation.
%%
%% This is an alternative way to create HITs from the `CreateHIT'
%% operation.
%% This is the recommended best practice for Requesters who are creating
%% large numbers of HITs.
%%
%% CreateHITWithHITType also supports several ways to provide question data:
%% by providing a value for the `Question' parameter that fully specifies
%% the contents of the HIT,
%% or by providing a `HitLayoutId' and associated
%% `HitLayoutParameters'.
%%
%% If a HIT is created with 10 or more maximum assignments, there is an
%% additional fee.
%% For more information, see Amazon Mechanical Turk Pricing:
%% https://requester.mturk.com/pricing.
-spec create_hit_with_hit_type(aws_client:aws_client(), create_hit_with_hit_type_request()) ->
    {ok, create_hit_with_hit_type_response(), tuple()} |
    {error, any()} |
    {error, create_hit_with_hit_type_errors(), tuple()}.
create_hit_with_hit_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hit_with_hit_type(Client, Input, []).

-spec create_hit_with_hit_type(aws_client:aws_client(), create_hit_with_hit_type_request(), proplists:proplist()) ->
    {ok, create_hit_with_hit_type_response(), tuple()} |
    {error, any()} |
    {error, create_hit_with_hit_type_errors(), tuple()}.
create_hit_with_hit_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHITWithHITType">>, Input, Options).

%% @doc
%% The
%% `CreateQualificationType'
%% operation creates a new Qualification type, which is represented by a
%% `QualificationType'
%% data structure.
-spec create_qualification_type(aws_client:aws_client(), create_qualification_type_request()) ->
    {ok, create_qualification_type_response(), tuple()} |
    {error, any()} |
    {error, create_qualification_type_errors(), tuple()}.
create_qualification_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_qualification_type(Client, Input, []).

-spec create_qualification_type(aws_client:aws_client(), create_qualification_type_request(), proplists:proplist()) ->
    {ok, create_qualification_type_response(), tuple()} |
    {error, any()} |
    {error, create_qualification_type_errors(), tuple()}.
create_qualification_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateQualificationType">>, Input, Options).

%% @doc The `CreateWorkerBlock' operation allows you to prevent a Worker
%% from working on your HITs.
%%
%% For example, you can block a Worker who is producing poor quality work.
%% You can block up to 100,000 Workers.
-spec create_worker_block(aws_client:aws_client(), create_worker_block_request()) ->
    {ok, create_worker_block_response(), tuple()} |
    {error, any()} |
    {error, create_worker_block_errors(), tuple()}.
create_worker_block(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_worker_block(Client, Input, []).

-spec create_worker_block(aws_client:aws_client(), create_worker_block_request(), proplists:proplist()) ->
    {ok, create_worker_block_response(), tuple()} |
    {error, any()} |
    {error, create_worker_block_errors(), tuple()}.
create_worker_block(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkerBlock">>, Input, Options).

%% @doc
%% The `DeleteHIT' operation is used to delete HIT that is no longer
%% needed.
%%
%% Only the Requester who created the HIT can delete it.
%%
%% You can only dispose of HITs that are in the `Reviewable' state,
%% with all of their submitted assignments already either approved or
%% rejected.
%% If you call the DeleteHIT operation on a HIT that is not in the
%% `Reviewable' state
%% (for example, that has not expired, or still has active assignments),
%% or on a HIT that is Reviewable but without all of its submitted
%% assignments
%% already approved or rejected, the service will return an error.
%%
%% HITs are automatically disposed of after 120 days.
%%
%% After you dispose of a HIT, you can no longer approve the HIT's
%% rejected assignments.
%%
%% Disposed HITs are not returned in results for the ListHITs operation.
%%
%% Disposing HITs can improve the performance of operations such as
%% ListReviewableHITs and ListHITs.
-spec delete_hit(aws_client:aws_client(), delete_hit_request()) ->
    {ok, delete_hit_response(), tuple()} |
    {error, any()} |
    {error, delete_hit_errors(), tuple()}.
delete_hit(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_hit(Client, Input, []).

-spec delete_hit(aws_client:aws_client(), delete_hit_request(), proplists:proplist()) ->
    {ok, delete_hit_response(), tuple()} |
    {error, any()} |
    {error, delete_hit_errors(), tuple()}.
delete_hit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHIT">>, Input, Options).

%% @doc
%% The
%% `DeleteQualificationType'
%% deletes a Qualification type and deletes any HIT types that are
%% associated with the Qualification type.
%%
%% This operation does not revoke Qualifications already assigned
%% to Workers because the Qualifications might be needed for active HITs.
%% If there are any pending requests for the Qualification type, Amazon
%% Mechanical Turk rejects those requests. After you delete a
%% Qualification type, you can no longer use it to create HITs or HIT
%% types.
%%
%% DeleteQualificationType must wait for all the HITs that use
%% the deleted Qualification type to be deleted before completing. It
%% may take up to 48 hours before DeleteQualificationType completes and
%% the unique name of the Qualification type is available for reuse with
%% CreateQualificationType.
-spec delete_qualification_type(aws_client:aws_client(), delete_qualification_type_request()) ->
    {ok, delete_qualification_type_response(), tuple()} |
    {error, any()} |
    {error, delete_qualification_type_errors(), tuple()}.
delete_qualification_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_qualification_type(Client, Input, []).

-spec delete_qualification_type(aws_client:aws_client(), delete_qualification_type_request(), proplists:proplist()) ->
    {ok, delete_qualification_type_response(), tuple()} |
    {error, any()} |
    {error, delete_qualification_type_errors(), tuple()}.
delete_qualification_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteQualificationType">>, Input, Options).

%% @doc The `DeleteWorkerBlock' operation allows you to reinstate a
%% blocked Worker to work on your HITs.
%%
%% This operation reverses the effects of the CreateWorkerBlock operation.
%% You need the Worker ID to use this operation. If the Worker ID is missing
%% or invalid, this operation fails and returns the message “WorkerId is
%% invalid.” If the specified Worker is not blocked, this operation returns
%% successfully.
-spec delete_worker_block(aws_client:aws_client(), delete_worker_block_request()) ->
    {ok, delete_worker_block_response(), tuple()} |
    {error, any()} |
    {error, delete_worker_block_errors(), tuple()}.
delete_worker_block(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_worker_block(Client, Input, []).

-spec delete_worker_block(aws_client:aws_client(), delete_worker_block_request(), proplists:proplist()) ->
    {ok, delete_worker_block_response(), tuple()} |
    {error, any()} |
    {error, delete_worker_block_errors(), tuple()}.
delete_worker_block(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkerBlock">>, Input, Options).

%% @doc
%% The `DisassociateQualificationFromWorker'
%% revokes a previously granted Qualification from a user.
%%
%% You can provide a text message explaining why the Qualification was
%% revoked. The user who had the Qualification can see this message.
-spec disassociate_qualification_from_worker(aws_client:aws_client(), disassociate_qualification_from_worker_request()) ->
    {ok, disassociate_qualification_from_worker_response(), tuple()} |
    {error, any()} |
    {error, disassociate_qualification_from_worker_errors(), tuple()}.
disassociate_qualification_from_worker(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_qualification_from_worker(Client, Input, []).

-spec disassociate_qualification_from_worker(aws_client:aws_client(), disassociate_qualification_from_worker_request(), proplists:proplist()) ->
    {ok, disassociate_qualification_from_worker_response(), tuple()} |
    {error, any()} |
    {error, disassociate_qualification_from_worker_errors(), tuple()}.
disassociate_qualification_from_worker(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateQualificationFromWorker">>, Input, Options).

%% @doc The `GetAccountBalance' operation retrieves the Prepaid HITs
%% balance in your Amazon Mechanical Turk account if you are a Prepaid
%% Requester.
%%
%% Alternatively, this operation will retrieve the remaining available AWS
%% Billing usage if you have enabled AWS Billing.
%% Note: If you have enabled AWS Billing and still have a remaining Prepaid
%% HITs balance, this balance can be viewed on the My Account page in the
%% Requester console.
-spec get_account_balance(aws_client:aws_client(), get_account_balance_request()) ->
    {ok, get_account_balance_response(), tuple()} |
    {error, any()} |
    {error, get_account_balance_errors(), tuple()}.
get_account_balance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_balance(Client, Input, []).

-spec get_account_balance(aws_client:aws_client(), get_account_balance_request(), proplists:proplist()) ->
    {ok, get_account_balance_response(), tuple()} |
    {error, any()} |
    {error, get_account_balance_errors(), tuple()}.
get_account_balance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountBalance">>, Input, Options).

%% @doc
%% The `GetAssignment' operation retrieves the details of the specified
%% Assignment.
-spec get_assignment(aws_client:aws_client(), get_assignment_request()) ->
    {ok, get_assignment_response(), tuple()} |
    {error, any()} |
    {error, get_assignment_errors(), tuple()}.
get_assignment(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_assignment(Client, Input, []).

-spec get_assignment(aws_client:aws_client(), get_assignment_request(), proplists:proplist()) ->
    {ok, get_assignment_response(), tuple()} |
    {error, any()} |
    {error, get_assignment_errors(), tuple()}.
get_assignment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAssignment">>, Input, Options).

%% @doc
%% The
%% `GetFileUploadURL'
%% operation generates and returns a temporary URL.
%%
%% You use the
%% temporary URL to retrieve a file uploaded by a Worker as an answer to
%% a FileUploadAnswer question for a HIT. The temporary URL is generated
%% the instant the GetFileUploadURL operation is called, and is valid
%% for 60 seconds. You can get a temporary file upload URL any time
%% until the HIT is disposed. After the HIT is disposed, any uploaded
%% files are deleted, and cannot be retrieved.
%%
%% Pending Deprecation on December 12, 2017. The Answer Specification
%% structure will no longer support the `FileUploadAnswer'
%% element to be used for the QuestionForm data structure.
%% Instead, we recommend that Requesters who want to create HITs asking
%% Workers to upload files to use Amazon S3.
-spec get_file_upload_url(aws_client:aws_client(), get_file_upload_url_request()) ->
    {ok, get_file_upload_url_response(), tuple()} |
    {error, any()} |
    {error, get_file_upload_url_errors(), tuple()}.
get_file_upload_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_file_upload_url(Client, Input, []).

-spec get_file_upload_url(aws_client:aws_client(), get_file_upload_url_request(), proplists:proplist()) ->
    {ok, get_file_upload_url_response(), tuple()} |
    {error, any()} |
    {error, get_file_upload_url_errors(), tuple()}.
get_file_upload_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFileUploadURL">>, Input, Options).

%% @doc
%% The `GetHIT' operation retrieves the details of the specified HIT.
-spec get_hit(aws_client:aws_client(), get_hit_request()) ->
    {ok, get_hit_response(), tuple()} |
    {error, any()} |
    {error, get_hit_errors(), tuple()}.
get_hit(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_hit(Client, Input, []).

-spec get_hit(aws_client:aws_client(), get_hit_request(), proplists:proplist()) ->
    {ok, get_hit_response(), tuple()} |
    {error, any()} |
    {error, get_hit_errors(), tuple()}.
get_hit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetHIT">>, Input, Options).

%% @doc
%% The
%% `GetQualificationScore'
%% operation returns the value of a Worker's Qualification for a given
%% Qualification type.
%%
%% To get a Worker's Qualification, you must know the Worker's ID.
%% The
%% Worker's ID is included in the assignment data returned by the
%% `ListAssignmentsForHIT'
%% operation.
%%
%% Only the owner of a Qualification type can query the value of
%% a Worker's Qualification of that type.
-spec get_qualification_score(aws_client:aws_client(), get_qualification_score_request()) ->
    {ok, get_qualification_score_response(), tuple()} |
    {error, any()} |
    {error, get_qualification_score_errors(), tuple()}.
get_qualification_score(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_qualification_score(Client, Input, []).

-spec get_qualification_score(aws_client:aws_client(), get_qualification_score_request(), proplists:proplist()) ->
    {ok, get_qualification_score_response(), tuple()} |
    {error, any()} |
    {error, get_qualification_score_errors(), tuple()}.
get_qualification_score(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQualificationScore">>, Input, Options).

%% @doc
%% The `GetQualificationType'operation retrieves information about a
%% Qualification type using its ID.
-spec get_qualification_type(aws_client:aws_client(), get_qualification_type_request()) ->
    {ok, get_qualification_type_response(), tuple()} |
    {error, any()} |
    {error, get_qualification_type_errors(), tuple()}.
get_qualification_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_qualification_type(Client, Input, []).

-spec get_qualification_type(aws_client:aws_client(), get_qualification_type_request(), proplists:proplist()) ->
    {ok, get_qualification_type_response(), tuple()} |
    {error, any()} |
    {error, get_qualification_type_errors(), tuple()}.
get_qualification_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQualificationType">>, Input, Options).

%% @doc
%% The
%% `ListAssignmentsForHIT'
%% operation retrieves completed assignments for a HIT.
%%
%% You can use this
%% operation to retrieve the results for a HIT.
%%
%% You can get assignments for a HIT at any time, even if the
%% HIT is not yet Reviewable. If a HIT requested multiple assignments,
%% and has received some results but has not yet become Reviewable, you
%% can still retrieve the partial results with this operation.
%%
%% Use the AssignmentStatus parameter to control which set of
%% assignments for a HIT are returned. The ListAssignmentsForHIT
%% operation
%% can return submitted assignments awaiting approval, or it can return
%% assignments that have already been approved or rejected. You can set
%% AssignmentStatus=Approved,Rejected to get assignments that have
%% already been approved and rejected together in one result set.
%%
%% Only the Requester who created the HIT can retrieve the
%% assignments for that HIT.
%%
%% Results are sorted and divided into numbered pages and the
%% operation returns a single page of results. You can use the
%% parameters
%% of the operation to control sorting and pagination.
-spec list_assignments_for_hit(aws_client:aws_client(), list_assignments_for_hit_request()) ->
    {ok, list_assignments_for_hit_response(), tuple()} |
    {error, any()} |
    {error, list_assignments_for_hit_errors(), tuple()}.
list_assignments_for_hit(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_assignments_for_hit(Client, Input, []).

-spec list_assignments_for_hit(aws_client:aws_client(), list_assignments_for_hit_request(), proplists:proplist()) ->
    {ok, list_assignments_for_hit_response(), tuple()} |
    {error, any()} |
    {error, list_assignments_for_hit_errors(), tuple()}.
list_assignments_for_hit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssignmentsForHIT">>, Input, Options).

%% @doc
%% The
%% `ListBonusPayments'
%% operation retrieves the amounts of bonuses you have paid to Workers
%% for a given HIT or assignment.
-spec list_bonus_payments(aws_client:aws_client(), list_bonus_payments_request()) ->
    {ok, list_bonus_payments_response(), tuple()} |
    {error, any()} |
    {error, list_bonus_payments_errors(), tuple()}.
list_bonus_payments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_bonus_payments(Client, Input, []).

-spec list_bonus_payments(aws_client:aws_client(), list_bonus_payments_request(), proplists:proplist()) ->
    {ok, list_bonus_payments_response(), tuple()} |
    {error, any()} |
    {error, list_bonus_payments_errors(), tuple()}.
list_bonus_payments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBonusPayments">>, Input, Options).

%% @doc
%% The
%% `ListHITs'
%% operation returns all of a Requester's HITs.
%%
%% The operation returns
%% HITs of any status, except for HITs that have been deleted of with
%% the DeleteHIT operation or that have been auto-deleted.
-spec list_hits(aws_client:aws_client(), list_hits_request()) ->
    {ok, list_hits_response(), tuple()} |
    {error, any()} |
    {error, list_hits_errors(), tuple()}.
list_hits(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hits(Client, Input, []).

-spec list_hits(aws_client:aws_client(), list_hits_request(), proplists:proplist()) ->
    {ok, list_hits_response(), tuple()} |
    {error, any()} |
    {error, list_hits_errors(), tuple()}.
list_hits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHITs">>, Input, Options).

%% @doc
%% The `ListHITsForQualificationType' operation returns the HITs that use
%% the given Qualification type for a Qualification requirement.
%%
%% The operation returns HITs of any status, except for HITs that have been
%% deleted
%% with the `DeleteHIT' operation or that have been auto-deleted.
-spec list_hits_for_qualification_type(aws_client:aws_client(), list_hits_for_qualification_type_request()) ->
    {ok, list_hits_for_qualification_type_response(), tuple()} |
    {error, any()} |
    {error, list_hits_for_qualification_type_errors(), tuple()}.
list_hits_for_qualification_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hits_for_qualification_type(Client, Input, []).

-spec list_hits_for_qualification_type(aws_client:aws_client(), list_hits_for_qualification_type_request(), proplists:proplist()) ->
    {ok, list_hits_for_qualification_type_response(), tuple()} |
    {error, any()} |
    {error, list_hits_for_qualification_type_errors(), tuple()}.
list_hits_for_qualification_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHITsForQualificationType">>, Input, Options).

%% @doc
%% The
%% `ListQualificationRequests'
%% operation retrieves requests for Qualifications of a particular
%% Qualification type.
%%
%% The owner of the Qualification type calls this
%% operation to poll for pending requests, and accepts them using the
%% AcceptQualification operation.
-spec list_qualification_requests(aws_client:aws_client(), list_qualification_requests_request()) ->
    {ok, list_qualification_requests_response(), tuple()} |
    {error, any()} |
    {error, list_qualification_requests_errors(), tuple()}.
list_qualification_requests(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_qualification_requests(Client, Input, []).

-spec list_qualification_requests(aws_client:aws_client(), list_qualification_requests_request(), proplists:proplist()) ->
    {ok, list_qualification_requests_response(), tuple()} |
    {error, any()} |
    {error, list_qualification_requests_errors(), tuple()}.
list_qualification_requests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListQualificationRequests">>, Input, Options).

%% @doc
%% The
%% `ListQualificationTypes'
%% operation returns a list of Qualification types, filtered by
%% an optional search term.
-spec list_qualification_types(aws_client:aws_client(), list_qualification_types_request()) ->
    {ok, list_qualification_types_response(), tuple()} |
    {error, any()} |
    {error, list_qualification_types_errors(), tuple()}.
list_qualification_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_qualification_types(Client, Input, []).

-spec list_qualification_types(aws_client:aws_client(), list_qualification_types_request(), proplists:proplist()) ->
    {ok, list_qualification_types_response(), tuple()} |
    {error, any()} |
    {error, list_qualification_types_errors(), tuple()}.
list_qualification_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListQualificationTypes">>, Input, Options).

%% @doc
%% The `ListReviewPolicyResultsForHIT' operation retrieves the computed
%% results
%% and the actions taken in the course of executing your Review Policies for
%% a given HIT.
%%
%% For information about how to specify Review Policies when you call
%% CreateHIT,
%% see Review Policies. The ListReviewPolicyResultsForHIT operation can
%% return results for both
%% Assignment-level and HIT-level review results.
-spec list_review_policy_results_for_hit(aws_client:aws_client(), list_review_policy_results_for_hit_request()) ->
    {ok, list_review_policy_results_for_hit_response(), tuple()} |
    {error, any()} |
    {error, list_review_policy_results_for_hit_errors(), tuple()}.
list_review_policy_results_for_hit(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_review_policy_results_for_hit(Client, Input, []).

-spec list_review_policy_results_for_hit(aws_client:aws_client(), list_review_policy_results_for_hit_request(), proplists:proplist()) ->
    {ok, list_review_policy_results_for_hit_response(), tuple()} |
    {error, any()} |
    {error, list_review_policy_results_for_hit_errors(), tuple()}.
list_review_policy_results_for_hit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReviewPolicyResultsForHIT">>, Input, Options).

%% @doc
%% The `ListReviewableHITs' operation retrieves the HITs with Status
%% equal to
%% Reviewable or Status equal to Reviewing that belong to the Requester
%% calling the operation.
-spec list_reviewable_hits(aws_client:aws_client(), list_reviewable_hits_request()) ->
    {ok, list_reviewable_hits_response(), tuple()} |
    {error, any()} |
    {error, list_reviewable_hits_errors(), tuple()}.
list_reviewable_hits(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_reviewable_hits(Client, Input, []).

-spec list_reviewable_hits(aws_client:aws_client(), list_reviewable_hits_request(), proplists:proplist()) ->
    {ok, list_reviewable_hits_response(), tuple()} |
    {error, any()} |
    {error, list_reviewable_hits_errors(), tuple()}.
list_reviewable_hits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReviewableHITs">>, Input, Options).

%% @doc The `ListWorkersBlocks' operation retrieves a list of Workers who
%% are blocked from working on your HITs.
-spec list_worker_blocks(aws_client:aws_client(), list_worker_blocks_request()) ->
    {ok, list_worker_blocks_response(), tuple()} |
    {error, any()} |
    {error, list_worker_blocks_errors(), tuple()}.
list_worker_blocks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_worker_blocks(Client, Input, []).

-spec list_worker_blocks(aws_client:aws_client(), list_worker_blocks_request(), proplists:proplist()) ->
    {ok, list_worker_blocks_response(), tuple()} |
    {error, any()} |
    {error, list_worker_blocks_errors(), tuple()}.
list_worker_blocks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkerBlocks">>, Input, Options).

%% @doc
%% The `ListWorkersWithQualificationType' operation returns all of the
%% Workers
%% that have been associated with a given Qualification type.
-spec list_workers_with_qualification_type(aws_client:aws_client(), list_workers_with_qualification_type_request()) ->
    {ok, list_workers_with_qualification_type_response(), tuple()} |
    {error, any()} |
    {error, list_workers_with_qualification_type_errors(), tuple()}.
list_workers_with_qualification_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workers_with_qualification_type(Client, Input, []).

-spec list_workers_with_qualification_type(aws_client:aws_client(), list_workers_with_qualification_type_request(), proplists:proplist()) ->
    {ok, list_workers_with_qualification_type_response(), tuple()} |
    {error, any()} |
    {error, list_workers_with_qualification_type_errors(), tuple()}.
list_workers_with_qualification_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkersWithQualificationType">>, Input, Options).

%% @doc
%% The
%% `NotifyWorkers'
%% operation sends an email to one or more Workers that you specify with
%% the Worker ID.
%%
%% You can specify up to 100 Worker IDs to send the same
%% message with a single call to the NotifyWorkers operation. The
%% NotifyWorkers operation will send a notification email to a Worker
%% only if you have previously approved or rejected work from the
%% Worker.
-spec notify_workers(aws_client:aws_client(), notify_workers_request()) ->
    {ok, notify_workers_response(), tuple()} |
    {error, any()} |
    {error, notify_workers_errors(), tuple()}.
notify_workers(Client, Input)
  when is_map(Client), is_map(Input) ->
    notify_workers(Client, Input, []).

-spec notify_workers(aws_client:aws_client(), notify_workers_request(), proplists:proplist()) ->
    {ok, notify_workers_response(), tuple()} |
    {error, any()} |
    {error, notify_workers_errors(), tuple()}.
notify_workers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"NotifyWorkers">>, Input, Options).

%% @doc
%% The `RejectAssignment' operation rejects the results of a completed
%% assignment.
%%
%% You can include an optional feedback message with the rejection,
%% which the Worker can see in the Status section of the web site.
%% When you include a feedback message with the rejection,
%% it helps the Worker understand why the assignment was rejected,
%% and can improve the quality of the results the Worker submits in the
%% future.
%%
%% Only the Requester who created the HIT can reject an assignment for the
%% HIT.
-spec reject_assignment(aws_client:aws_client(), reject_assignment_request()) ->
    {ok, reject_assignment_response(), tuple()} |
    {error, any()} |
    {error, reject_assignment_errors(), tuple()}.
reject_assignment(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_assignment(Client, Input, []).

-spec reject_assignment(aws_client:aws_client(), reject_assignment_request(), proplists:proplist()) ->
    {ok, reject_assignment_response(), tuple()} |
    {error, any()} |
    {error, reject_assignment_errors(), tuple()}.
reject_assignment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectAssignment">>, Input, Options).

%% @doc
%% The
%% `RejectQualificationRequest'
%% operation rejects a user's request for a Qualification.
%%
%% You can provide a text message explaining why the request was
%% rejected. The Worker who made the request can see this message.
-spec reject_qualification_request(aws_client:aws_client(), reject_qualification_request_request()) ->
    {ok, reject_qualification_request_response(), tuple()} |
    {error, any()} |
    {error, reject_qualification_request_errors(), tuple()}.
reject_qualification_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_qualification_request(Client, Input, []).

-spec reject_qualification_request(aws_client:aws_client(), reject_qualification_request_request(), proplists:proplist()) ->
    {ok, reject_qualification_request_response(), tuple()} |
    {error, any()} |
    {error, reject_qualification_request_errors(), tuple()}.
reject_qualification_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectQualificationRequest">>, Input, Options).

%% @doc
%% The
%% `SendBonus'
%% operation issues a payment of money from your account to a Worker.
%%
%% This payment happens separately from the reward you pay to the Worker
%% when you approve the Worker's assignment. The SendBonus operation
%% requires the Worker's ID and the assignment ID as parameters to
%% initiate payment of the bonus. You must include a message that
%% explains the reason for the bonus payment, as the Worker may not be
%% expecting the payment. Amazon Mechanical Turk collects a fee for
%% bonus payments, similar to the HIT listing fee. This operation fails
%% if your account does not have enough funds to pay for both the bonus
%% and the fees.
-spec send_bonus(aws_client:aws_client(), send_bonus_request()) ->
    {ok, send_bonus_response(), tuple()} |
    {error, any()} |
    {error, send_bonus_errors(), tuple()}.
send_bonus(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_bonus(Client, Input, []).

-spec send_bonus(aws_client:aws_client(), send_bonus_request(), proplists:proplist()) ->
    {ok, send_bonus_response(), tuple()} |
    {error, any()} |
    {error, send_bonus_errors(), tuple()}.
send_bonus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendBonus">>, Input, Options).

%% @doc
%% The `SendTestEventNotification' operation causes Amazon Mechanical
%% Turk to send
%% a notification message as if a HIT event occurred, according to the
%% provided
%% notification specification.
%%
%% This allows you to test notifications without
%% setting up notifications for a real HIT type and trying to trigger them
%% using the website.
%% When you call this operation, the service attempts to send the test
%% notification immediately.
-spec send_test_event_notification(aws_client:aws_client(), send_test_event_notification_request()) ->
    {ok, send_test_event_notification_response(), tuple()} |
    {error, any()} |
    {error, send_test_event_notification_errors(), tuple()}.
send_test_event_notification(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_test_event_notification(Client, Input, []).

-spec send_test_event_notification(aws_client:aws_client(), send_test_event_notification_request(), proplists:proplist()) ->
    {ok, send_test_event_notification_response(), tuple()} |
    {error, any()} |
    {error, send_test_event_notification_errors(), tuple()}.
send_test_event_notification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendTestEventNotification">>, Input, Options).

%% @doc
%% The `UpdateExpirationForHIT' operation allows you update the
%% expiration time of a HIT.
%%
%% If you update it to a time in the past, the HIT will be immediately
%% expired.
-spec update_expiration_for_hit(aws_client:aws_client(), update_expiration_for_hit_request()) ->
    {ok, update_expiration_for_hit_response(), tuple()} |
    {error, any()} |
    {error, update_expiration_for_hit_errors(), tuple()}.
update_expiration_for_hit(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_expiration_for_hit(Client, Input, []).

-spec update_expiration_for_hit(aws_client:aws_client(), update_expiration_for_hit_request(), proplists:proplist()) ->
    {ok, update_expiration_for_hit_response(), tuple()} |
    {error, any()} |
    {error, update_expiration_for_hit_errors(), tuple()}.
update_expiration_for_hit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateExpirationForHIT">>, Input, Options).

%% @doc
%% The `UpdateHITReviewStatus' operation updates the status of a HIT.
%%
%% If the status is Reviewable, this operation can update the status to
%% Reviewing,
%% or it can revert a Reviewing HIT back to the Reviewable status.
-spec update_hit_review_status(aws_client:aws_client(), update_hit_review_status_request()) ->
    {ok, update_hit_review_status_response(), tuple()} |
    {error, any()} |
    {error, update_hit_review_status_errors(), tuple()}.
update_hit_review_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_hit_review_status(Client, Input, []).

-spec update_hit_review_status(aws_client:aws_client(), update_hit_review_status_request(), proplists:proplist()) ->
    {ok, update_hit_review_status_response(), tuple()} |
    {error, any()} |
    {error, update_hit_review_status_errors(), tuple()}.
update_hit_review_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateHITReviewStatus">>, Input, Options).

%% @doc
%% The
%% `UpdateHITTypeOfHIT'
%% operation allows you to change the HITType properties of a HIT.
%%
%% This
%% operation disassociates the HIT from its old HITType properties and
%% associates it with the new HITType properties. The HIT takes on the
%% properties of the new HITType in place of the old ones.
-spec update_hit_type_of_hit(aws_client:aws_client(), update_hit_type_of_hit_request()) ->
    {ok, update_hit_type_of_hit_response(), tuple()} |
    {error, any()} |
    {error, update_hit_type_of_hit_errors(), tuple()}.
update_hit_type_of_hit(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_hit_type_of_hit(Client, Input, []).

-spec update_hit_type_of_hit(aws_client:aws_client(), update_hit_type_of_hit_request(), proplists:proplist()) ->
    {ok, update_hit_type_of_hit_response(), tuple()} |
    {error, any()} |
    {error, update_hit_type_of_hit_errors(), tuple()}.
update_hit_type_of_hit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateHITTypeOfHIT">>, Input, Options).

%% @doc
%% The `UpdateNotificationSettings' operation creates, updates,
%% disables or re-enables notifications for a HIT type.
%%
%% If you call the UpdateNotificationSettings operation for a HIT type that
%% already has a
%% notification specification, the operation replaces the old specification
%% with a new one.
%% You can call the UpdateNotificationSettings operation to enable or disable
%% notifications
%% for the HIT type, without having to modify the notification specification
%% itself by providing
%% updates to the Active status without specifying a new notification
%% specification.
%% To change the Active status of a HIT type's notifications,
%% the HIT type must already have a notification specification,
%% or one must be provided in the same call to
%% `UpdateNotificationSettings'.
-spec update_notification_settings(aws_client:aws_client(), update_notification_settings_request()) ->
    {ok, update_notification_settings_response(), tuple()} |
    {error, any()} |
    {error, update_notification_settings_errors(), tuple()}.
update_notification_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_notification_settings(Client, Input, []).

-spec update_notification_settings(aws_client:aws_client(), update_notification_settings_request(), proplists:proplist()) ->
    {ok, update_notification_settings_response(), tuple()} |
    {error, any()} |
    {error, update_notification_settings_errors(), tuple()}.
update_notification_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNotificationSettings">>, Input, Options).

%% @doc
%% The
%% `UpdateQualificationType'
%% operation modifies the attributes of an existing Qualification type,
%% which is represented by a QualificationType data structure.
%%
%% Only the
%% owner of a Qualification type can modify its attributes.
%%
%% Most attributes of a Qualification type can be changed after
%% the type has been created. However, the Name and Keywords fields
%% cannot be modified. The RetryDelayInSeconds parameter can be modified
%% or added to change the delay or to enable retries, but
%% RetryDelayInSeconds cannot be used to disable retries.
%%
%% You can use this operation to update the test for a
%% Qualification type. The test is updated based on the values specified
%% for the Test, TestDurationInSeconds and AnswerKey parameters. All
%% three parameters specify the updated test. If you are updating the
%% test for a type, you must specify the Test and TestDurationInSeconds
%% parameters. The AnswerKey parameter is optional; omitting it specifies
%% that the updated test does not have an answer key.
%%
%% If you omit the Test parameter, the test for the
%% Qualification type is unchanged. There is no way to remove a test from
%% a Qualification type that has one. If the type already has a test, you
%% cannot update it to be AutoGranted. If the Qualification type does not
%% have a test and one is provided by an update, the type will henceforth
%% have a test.
%%
%% If you want to update the test duration or answer key for an
%% existing test without changing the questions, you must specify a Test
%% parameter with the original questions, along with the updated values.
%%
%% If you provide an updated Test but no AnswerKey, the new test
%% will not have an answer key. Requests for such Qualifications must be
%% granted manually.
%%
%% You can also update the AutoGranted and AutoGrantedValue
%% attributes of the Qualification type.
-spec update_qualification_type(aws_client:aws_client(), update_qualification_type_request()) ->
    {ok, update_qualification_type_response(), tuple()} |
    {error, any()} |
    {error, update_qualification_type_errors(), tuple()}.
update_qualification_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_qualification_type(Client, Input, []).

-spec update_qualification_type(aws_client:aws_client(), update_qualification_type_request(), proplists:proplist()) ->
    {ok, update_qualification_type_response(), tuple()} |
    {error, any()} |
    {error, update_qualification_type_errors(), tuple()}.
update_qualification_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateQualificationType">>, Input, Options).

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
    Client1 = Client#{service => <<"mturk-requester">>,
                      region => <<"">>},
    Host = build_host(<<"mturk-requester">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"MTurkRequesterServiceV20170117.", Action/binary>>}
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
build_host(EndpointPrefix, #{endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
