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

%%====================================================================
%% API
%%====================================================================

%% @doc The `AcceptQualificationRequest' operation approves a
%% Worker's request for a Qualification.
%%
%% Only the owner of the Qualification type can grant a Qualification request
%% for that type.
%%
%% A successful request for the `AcceptQualificationRequest' operation
%% returns with no errors and an empty body.
accept_qualification_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_qualification_request(Client, Input, []).
accept_qualification_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptQualificationRequest">>, Input, Options).

%% @doc The `ApproveAssignment' operation approves the results of a
%% completed assignment.
%%
%% Approving an assignment initiates two payments from the Requester's
%% Amazon.com account
%%
%% <ul> <li> The Worker who submitted the results is paid the reward
%% specified in the HIT.
%%
%% </li> <li> Amazon Mechanical Turk fees are debited.
%%
%% </li> </ul> If the Requester's account does not have adequate funds
%% for these payments, the call to ApproveAssignment returns an exception,
%% and the approval is not processed. You can include an optional feedback
%% message with the approval, which the Worker can see in the Status section
%% of the web site.
%%
%% You can also call this operation for assignments that were previous
%% rejected and approve them by explicitly overriding the previous rejection.
%% This only works on rejected assignments that were submitted within the
%% previous 30 days and only if the assignment's related HIT has not been
%% deleted.
approve_assignment(Client, Input)
  when is_map(Client), is_map(Input) ->
    approve_assignment(Client, Input, []).
approve_assignment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ApproveAssignment">>, Input, Options).

%% @doc The `AssociateQualificationWithWorker' operation gives a Worker a
%% Qualification.
%%
%% `AssociateQualificationWithWorker' does not require that the Worker
%% submit a Qualification request. It gives the Qualification directly to the
%% Worker.
%%
%% You can only assign a Qualification of a Qualification type that you
%% created (using the `CreateQualificationType' operation).
%%
%% Note: `AssociateQualificationWithWorker' does not affect any pending
%% Qualification requests for the Qualification by the Worker. If you assign
%% a Qualification to a Worker, then later grant a Qualification request made
%% by the Worker, the granting of the request may modify the Qualification
%% score. To resolve a pending Qualification request without affecting the
%% Qualification the Worker already has, reject the request with the
%% `RejectQualificationRequest' operation.
associate_qualification_with_worker(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_qualification_with_worker(Client, Input, []).
associate_qualification_with_worker(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateQualificationWithWorker">>, Input, Options).

%% @doc The `CreateAdditionalAssignmentsForHIT' operation increases the
%% maximum number of assignments of an existing HIT.
%%
%% To extend the maximum number of assignments, specify the number of
%% additional assignments.
%%
%% HITs created with fewer than 10 assignments cannot be extended to have 10
%% or more assignments. Attempting to add assignments in a way that brings
%% the total number of assignments for a HIT from fewer than 10 assignments
%% to 10 or more assignments will result in an
%% `AWS.MechanicalTurk.InvalidMaximumAssignmentsIncrease' exception.
%%
%% HITs that were created before July 22, 2015 cannot be extended. Attempting
%% to extend HITs that were created before July 22, 2015 will result in an
%% `AWS.MechanicalTurk.HITTooOldForExtension' exception.
create_additional_assignments_for_hit(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_additional_assignments_for_hit(Client, Input, []).
create_additional_assignments_for_hit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAdditionalAssignmentsForHIT">>, Input, Options).

%% @doc The `CreateHIT' operation creates a new Human Intelligence Task
%% (HIT).
%%
%% The new HIT is made available for Workers to find and accept on the Amazon
%% Mechanical Turk website.
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
%% providing a value for the `Question' parameter that fully specifies
%% the contents of the HIT, or by providing a `HitLayoutId' and
%% associated `HitLayoutParameters'.
%%
%% If a HIT is created with 10 or more maximum assignments, there is an
%% additional fee. For more information, see Amazon Mechanical Turk Pricing.
create_hit(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hit(Client, Input, []).
create_hit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHIT">>, Input, Options).

%% @doc The `CreateHITType' operation creates a new HIT type.
%%
%% This operation allows you to define a standard set of HIT properties to
%% use when creating HITs. If you register a HIT type with values that match
%% an existing HIT type, the HIT type ID of the existing type will be
%% returned.
create_hit_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hit_type(Client, Input, []).
create_hit_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHITType">>, Input, Options).

%% @doc The `CreateHITWithHITType' operation creates a new Human
%% Intelligence Task (HIT) using an existing HITTypeID generated by the
%% `CreateHITType' operation.
%%
%% This is an alternative way to create HITs from the `CreateHIT'
%% operation. This is the recommended best practice for Requesters who are
%% creating large numbers of HITs.
%%
%% CreateHITWithHITType also supports several ways to provide question data:
%% by providing a value for the `Question' parameter that fully specifies
%% the contents of the HIT, or by providing a `HitLayoutId' and
%% associated `HitLayoutParameters'.
%%
%% If a HIT is created with 10 or more maximum assignments, there is an
%% additional fee. For more information, see Amazon Mechanical Turk Pricing.
create_hit_with_hit_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hit_with_hit_type(Client, Input, []).
create_hit_with_hit_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHITWithHITType">>, Input, Options).

%% @doc The `CreateQualificationType' operation creates a new
%% Qualification type, which is represented by a `QualificationType' data
%% structure.
create_qualification_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_qualification_type(Client, Input, []).
create_qualification_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateQualificationType">>, Input, Options).

%% @doc The `CreateWorkerBlock' operation allows you to prevent a Worker
%% from working on your HITs.
%%
%% For example, you can block a Worker who is producing poor quality work.
%% You can block up to 100,000 Workers.
create_worker_block(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_worker_block(Client, Input, []).
create_worker_block(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkerBlock">>, Input, Options).

%% @doc The `DeleteHIT' operation is used to delete HIT that is no longer
%% needed.
%%
%% Only the Requester who created the HIT can delete it.
%%
%% You can only dispose of HITs that are in the `Reviewable' state, with
%% all of their submitted assignments already either approved or rejected. If
%% you call the DeleteHIT operation on a HIT that is not in the
%% `Reviewable' state (for example, that has not expired, or still has
%% active assignments), or on a HIT that is Reviewable but without all of its
%% submitted assignments already approved or rejected, the service will
%% return an error.
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
delete_hit(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_hit(Client, Input, []).
delete_hit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHIT">>, Input, Options).

%% @doc The `DeleteQualificationType' deletes a Qualification type and
%% deletes any HIT types that are associated with the Qualification type.
%%
%% This operation does not revoke Qualifications already assigned to Workers
%% because the Qualifications might be needed for active HITs. If there are
%% any pending requests for the Qualification type, Amazon Mechanical Turk
%% rejects those requests. After you delete a Qualification type, you can no
%% longer use it to create HITs or HIT types.
%%
%% DeleteQualificationType must wait for all the HITs that use the deleted
%% Qualification type to be deleted before completing. It may take up to 48
%% hours before DeleteQualificationType completes and the unique name of the
%% Qualification type is available for reuse with CreateQualificationType.
delete_qualification_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_qualification_type(Client, Input, []).
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
delete_worker_block(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_worker_block(Client, Input, []).
delete_worker_block(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkerBlock">>, Input, Options).

%% @doc The `DisassociateQualificationFromWorker' revokes a previously
%% granted Qualification from a user.
%%
%% You can provide a text message explaining why the Qualification was
%% revoked. The user who had the Qualification can see this message.
disassociate_qualification_from_worker(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_qualification_from_worker(Client, Input, []).
disassociate_qualification_from_worker(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateQualificationFromWorker">>, Input, Options).

%% @doc The `GetAccountBalance' operation retrieves the Prepaid HITs
%% balance in your Amazon Mechanical Turk account if you are a Prepaid
%% Requester.
%%
%% Alternatively, this operation will retrieve the remaining available AWS
%% Billing usage if you have enabled AWS Billing. Note: If you have enabled
%% AWS Billing and still have a remaining Prepaid HITs balance, this balance
%% can be viewed on the My Account page in the Requester console.
get_account_balance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_balance(Client, Input, []).
get_account_balance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountBalance">>, Input, Options).

%% @doc The `GetAssignment' operation retrieves the details of the
%% specified Assignment.
get_assignment(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_assignment(Client, Input, []).
get_assignment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAssignment">>, Input, Options).

%% @doc The `GetFileUploadURL' operation generates and returns a
%% temporary URL.
%%
%% You use the temporary URL to retrieve a file uploaded by a Worker as an
%% answer to a FileUploadAnswer question for a HIT. The temporary URL is
%% generated the instant the GetFileUploadURL operation is called, and is
%% valid for 60 seconds. You can get a temporary file upload URL any time
%% until the HIT is disposed. After the HIT is disposed, any uploaded files
%% are deleted, and cannot be retrieved. Pending Deprecation on December 12,
%% 2017. The Answer Specification structure will no longer support the
%% `FileUploadAnswer' element to be used for the QuestionForm data
%% structure. Instead, we recommend that Requesters who want to create HITs
%% asking Workers to upload files to use Amazon S3.
get_file_upload_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_file_upload_url(Client, Input, []).
get_file_upload_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFileUploadURL">>, Input, Options).

%% @doc The `GetHIT' operation retrieves the details of the specified
%% HIT.
get_hit(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_hit(Client, Input, []).
get_hit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetHIT">>, Input, Options).

%% @doc The `GetQualificationScore' operation returns the value of a
%% Worker's Qualification for a given Qualification type.
%%
%% To get a Worker's Qualification, you must know the Worker's ID.
%% The Worker's ID is included in the assignment data returned by the
%% `ListAssignmentsForHIT' operation.
%%
%% Only the owner of a Qualification type can query the value of a
%% Worker's Qualification of that type.
get_qualification_score(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_qualification_score(Client, Input, []).
get_qualification_score(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQualificationScore">>, Input, Options).

%% @doc The `GetQualificationType'operation retrieves information about a
%% Qualification type using its ID.
get_qualification_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_qualification_type(Client, Input, []).
get_qualification_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetQualificationType">>, Input, Options).

%% @doc The `ListAssignmentsForHIT' operation retrieves completed
%% assignments for a HIT.
%%
%% You can use this operation to retrieve the results for a HIT.
%%
%% You can get assignments for a HIT at any time, even if the HIT is not yet
%% Reviewable. If a HIT requested multiple assignments, and has received some
%% results but has not yet become Reviewable, you can still retrieve the
%% partial results with this operation.
%%
%% Use the AssignmentStatus parameter to control which set of assignments for
%% a HIT are returned. The ListAssignmentsForHIT operation can return
%% submitted assignments awaiting approval, or it can return assignments that
%% have already been approved or rejected. You can set
%% AssignmentStatus=Approved,Rejected to get assignments that have already
%% been approved and rejected together in one result set.
%%
%% Only the Requester who created the HIT can retrieve the assignments for
%% that HIT.
%%
%% Results are sorted and divided into numbered pages and the operation
%% returns a single page of results. You can use the parameters of the
%% operation to control sorting and pagination.
list_assignments_for_hit(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_assignments_for_hit(Client, Input, []).
list_assignments_for_hit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssignmentsForHIT">>, Input, Options).

%% @doc The `ListBonusPayments' operation retrieves the amounts of
%% bonuses you have paid to Workers for a given HIT or assignment.
list_bonus_payments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_bonus_payments(Client, Input, []).
list_bonus_payments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBonusPayments">>, Input, Options).

%% @doc The `ListHITs' operation returns all of a Requester's HITs.
%%
%% The operation returns HITs of any status, except for HITs that have been
%% deleted of with the DeleteHIT operation or that have been auto-deleted.
list_hits(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hits(Client, Input, []).
list_hits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHITs">>, Input, Options).

%% @doc The `ListHITsForQualificationType' operation returns the HITs
%% that use the given Qualification type for a Qualification requirement.
%%
%% The operation returns HITs of any status, except for HITs that have been
%% deleted with the `DeleteHIT' operation or that have been auto-deleted.
list_hits_for_qualification_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hits_for_qualification_type(Client, Input, []).
list_hits_for_qualification_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHITsForQualificationType">>, Input, Options).

%% @doc The `ListQualificationRequests' operation retrieves requests for
%% Qualifications of a particular Qualification type.
%%
%% The owner of the Qualification type calls this operation to poll for
%% pending requests, and accepts them using the AcceptQualification
%% operation.
list_qualification_requests(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_qualification_requests(Client, Input, []).
list_qualification_requests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListQualificationRequests">>, Input, Options).

%% @doc The `ListQualificationTypes' operation returns a list of
%% Qualification types, filtered by an optional search term.
list_qualification_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_qualification_types(Client, Input, []).
list_qualification_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListQualificationTypes">>, Input, Options).

%% @doc The `ListReviewPolicyResultsForHIT' operation retrieves the
%% computed results and the actions taken in the course of executing your
%% Review Policies for a given HIT.
%%
%% For information about how to specify Review Policies when you call
%% CreateHIT, see Review Policies. The ListReviewPolicyResultsForHIT
%% operation can return results for both Assignment-level and HIT-level
%% review results.
list_review_policy_results_for_hit(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_review_policy_results_for_hit(Client, Input, []).
list_review_policy_results_for_hit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReviewPolicyResultsForHIT">>, Input, Options).

%% @doc The `ListReviewableHITs' operation retrieves the HITs with Status
%% equal to Reviewable or Status equal to Reviewing that belong to the
%% Requester calling the operation.
list_reviewable_hits(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_reviewable_hits(Client, Input, []).
list_reviewable_hits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReviewableHITs">>, Input, Options).

%% @doc The `ListWorkersBlocks' operation retrieves a list of Workers who
%% are blocked from working on your HITs.
list_worker_blocks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_worker_blocks(Client, Input, []).
list_worker_blocks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkerBlocks">>, Input, Options).

%% @doc The `ListWorkersWithQualificationType' operation returns all of
%% the Workers that have been associated with a given Qualification type.
list_workers_with_qualification_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workers_with_qualification_type(Client, Input, []).
list_workers_with_qualification_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkersWithQualificationType">>, Input, Options).

%% @doc The `NotifyWorkers' operation sends an email to one or more
%% Workers that you specify with the Worker ID.
%%
%% You can specify up to 100 Worker IDs to send the same message with a
%% single call to the NotifyWorkers operation. The NotifyWorkers operation
%% will send a notification email to a Worker only if you have previously
%% approved or rejected work from the Worker.
notify_workers(Client, Input)
  when is_map(Client), is_map(Input) ->
    notify_workers(Client, Input, []).
notify_workers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"NotifyWorkers">>, Input, Options).

%% @doc The `RejectAssignment' operation rejects the results of a
%% completed assignment.
%%
%% You can include an optional feedback message with the rejection, which the
%% Worker can see in the Status section of the web site. When you include a
%% feedback message with the rejection, it helps the Worker understand why
%% the assignment was rejected, and can improve the quality of the results
%% the Worker submits in the future.
%%
%% Only the Requester who created the HIT can reject an assignment for the
%% HIT.
reject_assignment(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_assignment(Client, Input, []).
reject_assignment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectAssignment">>, Input, Options).

%% @doc The `RejectQualificationRequest' operation rejects a user's
%% request for a Qualification.
%%
%% You can provide a text message explaining why the request was rejected.
%% The Worker who made the request can see this message.
reject_qualification_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_qualification_request(Client, Input, []).
reject_qualification_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectQualificationRequest">>, Input, Options).

%% @doc The `SendBonus' operation issues a payment of money from your
%% account to a Worker.
%%
%% This payment happens separately from the reward you pay to the Worker when
%% you approve the Worker's assignment. The SendBonus operation requires
%% the Worker's ID and the assignment ID as parameters to initiate
%% payment of the bonus. You must include a message that explains the reason
%% for the bonus payment, as the Worker may not be expecting the payment.
%% Amazon Mechanical Turk collects a fee for bonus payments, similar to the
%% HIT listing fee. This operation fails if your account does not have enough
%% funds to pay for both the bonus and the fees.
send_bonus(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_bonus(Client, Input, []).
send_bonus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendBonus">>, Input, Options).

%% @doc The `SendTestEventNotification' operation causes Amazon
%% Mechanical Turk to send a notification message as if a HIT event occurred,
%% according to the provided notification specification.
%%
%% This allows you to test notifications without setting up notifications for
%% a real HIT type and trying to trigger them using the website. When you
%% call this operation, the service attempts to send the test notification
%% immediately.
send_test_event_notification(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_test_event_notification(Client, Input, []).
send_test_event_notification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendTestEventNotification">>, Input, Options).

%% @doc The `UpdateExpirationForHIT' operation allows you update the
%% expiration time of a HIT.
%%
%% If you update it to a time in the past, the HIT will be immediately
%% expired.
update_expiration_for_hit(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_expiration_for_hit(Client, Input, []).
update_expiration_for_hit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateExpirationForHIT">>, Input, Options).

%% @doc The `UpdateHITReviewStatus' operation updates the status of a
%% HIT.
%%
%% If the status is Reviewable, this operation can update the status to
%% Reviewing, or it can revert a Reviewing HIT back to the Reviewable status.
update_hit_review_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_hit_review_status(Client, Input, []).
update_hit_review_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateHITReviewStatus">>, Input, Options).

%% @doc The `UpdateHITTypeOfHIT' operation allows you to change the
%% HITType properties of a HIT.
%%
%% This operation disassociates the HIT from its old HITType properties and
%% associates it with the new HITType properties. The HIT takes on the
%% properties of the new HITType in place of the old ones.
update_hit_type_of_hit(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_hit_type_of_hit(Client, Input, []).
update_hit_type_of_hit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateHITTypeOfHIT">>, Input, Options).

%% @doc The `UpdateNotificationSettings' operation creates, updates,
%% disables or re-enables notifications for a HIT type.
%%
%% If you call the UpdateNotificationSettings operation for a HIT type that
%% already has a notification specification, the operation replaces the old
%% specification with a new one. You can call the UpdateNotificationSettings
%% operation to enable or disable notifications for the HIT type, without
%% having to modify the notification specification itself by providing
%% updates to the Active status without specifying a new notification
%% specification. To change the Active status of a HIT type's
%% notifications, the HIT type must already have a notification
%% specification, or one must be provided in the same call to
%% `UpdateNotificationSettings'.
update_notification_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_notification_settings(Client, Input, []).
update_notification_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNotificationSettings">>, Input, Options).

%% @doc The `UpdateQualificationType' operation modifies the attributes
%% of an existing Qualification type, which is represented by a
%% QualificationType data structure.
%%
%% Only the owner of a Qualification type can modify its attributes.
%%
%% Most attributes of a Qualification type can be changed after the type has
%% been created. However, the Name and Keywords fields cannot be modified.
%% The RetryDelayInSeconds parameter can be modified or added to change the
%% delay or to enable retries, but RetryDelayInSeconds cannot be used to
%% disable retries.
%%
%% You can use this operation to update the test for a Qualification type.
%% The test is updated based on the values specified for the Test,
%% TestDurationInSeconds and AnswerKey parameters. All three parameters
%% specify the updated test. If you are updating the test for a type, you
%% must specify the Test and TestDurationInSeconds parameters. The AnswerKey
%% parameter is optional; omitting it specifies that the updated test does
%% not have an answer key.
%%
%% If you omit the Test parameter, the test for the Qualification type is
%% unchanged. There is no way to remove a test from a Qualification type that
%% has one. If the type already has a test, you cannot update it to be
%% AutoGranted. If the Qualification type does not have a test and one is
%% provided by an update, the type will henceforth have a test.
%%
%% If you want to update the test duration or answer key for an existing test
%% without changing the questions, you must specify a Test parameter with the
%% original questions, along with the updated values.
%%
%% If you provide an updated Test but no AnswerKey, the new test will not
%% have an answer key. Requests for such Qualifications must be granted
%% manually.
%%
%% You can also update the AutoGranted and AutoGrantedValue attributes of the
%% Qualification type.
update_qualification_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_qualification_type(Client, Input, []).
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
