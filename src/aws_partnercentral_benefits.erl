%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Partner Central Benefits Service provides APIs for managing
%% partner benefits, applications, and allocations within the AWS Partner
%% Network ecosystem.
-module(aws_partnercentral_benefits).

-export([amend_benefit_application/2,
         amend_benefit_application/3,
         associate_benefit_application_resource/2,
         associate_benefit_application_resource/3,
         cancel_benefit_application/2,
         cancel_benefit_application/3,
         create_benefit_application/2,
         create_benefit_application/3,
         disassociate_benefit_application_resource/2,
         disassociate_benefit_application_resource/3,
         get_benefit/2,
         get_benefit/3,
         get_benefit_allocation/2,
         get_benefit_allocation/3,
         get_benefit_application/2,
         get_benefit_application/3,
         list_benefit_allocations/2,
         list_benefit_allocations/3,
         list_benefit_applications/2,
         list_benefit_applications/3,
         list_benefits/2,
         list_benefits/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         recall_benefit_application/2,
         recall_benefit_application/3,
         submit_benefit_application/2,
         submit_benefit_application/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_benefit_application/2,
         update_benefit_application/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% recall_benefit_application_output() :: #{

%% }
-type recall_benefit_application_output() :: #{binary() => any()}.

%% Example:
%% credit_details() :: #{
%%   <<"AllocatedAmount">> => monetary_value(),
%%   <<"Codes">> => list(credit_code()),
%%   <<"IssuedAmount">> => monetary_value()
%% }
-type credit_details() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% update_benefit_application_input() :: #{
%%   <<"BenefitApplicationDetails">> => [any()],
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := [string()],
%%   <<"Description">> => string(),
%%   <<"FileDetails">> => list(file_input()),
%%   <<"Identifier">> := string(),
%%   <<"Name">> => string(),
%%   <<"PartnerContacts">> => list(contact()),
%%   <<"Revision">> := [string()]
%% }
-type update_benefit_application_input() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% file_input() :: #{
%%   <<"BusinessUseCase">> => [string()],
%%   <<"FileURI">> => string()
%% }
-type file_input() :: #{binary() => any()}.

%% Example:
%% list_benefit_allocations_input() :: #{
%%   <<"BenefitApplicationIdentifiers">> => list(string()),
%%   <<"BenefitIdentifiers">> => list(string()),
%%   <<"Catalog">> := string(),
%%   <<"FulfillmentTypes">> => list(list(any())()),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()],
%%   <<"Status">> => list(list(any())())
%% }
-type list_benefit_allocations_input() :: #{binary() => any()}.

%% Example:
%% disassociate_benefit_application_resource_output() :: #{
%%   <<"Arn">> => [string()],
%%   <<"Id">> => string(),
%%   <<"Revision">> => [string()]
%% }
-type disassociate_benefit_application_resource_output() :: #{binary() => any()}.

%% Example:
%% credit_code() :: #{
%%   <<"AwsAccountId">> => [string()],
%%   <<"AwsCreditCode">> => [string()],
%%   <<"ExpiresAt">> => non_neg_integer(),
%%   <<"IssuedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"Value">> => monetary_value()
%% }
-type credit_code() :: #{binary() => any()}.

%% Example:
%% create_benefit_application_input() :: #{
%%   <<"AssociatedResources">> => list(string()),
%%   <<"BenefitApplicationDetails">> => [any()],
%%   <<"BenefitIdentifier">> := [string()],
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := [string()],
%%   <<"Description">> => string(),
%%   <<"FileDetails">> => list(file_input()),
%%   <<"FulfillmentTypes">> => list(list(any())()),
%%   <<"Name">> => string(),
%%   <<"PartnerContacts">> => list(contact()),
%%   <<"Tags">> => list(tag())
%% }
-type create_benefit_application_input() :: #{binary() => any()}.

%% Example:
%% associate_benefit_application_resource_output() :: #{
%%   <<"Arn">> => [string()],
%%   <<"Id">> => string(),
%%   <<"Revision">> => [string()]
%% }
-type associate_benefit_application_resource_output() :: #{binary() => any()}.

%% Example:
%% get_benefit_application_output() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssociatedResources">> => list(string()),
%%   <<"BenefitApplicationDetails">> => [any()],
%%   <<"BenefitId">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"FileDetails">> => list(file_detail()),
%%   <<"FulfillmentTypes">> => list(list(any())()),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"PartnerContacts">> => list(contact()),
%%   <<"Programs">> => list(string()),
%%   <<"Revision">> => [string()],
%%   <<"Stage">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => [string()],
%%   <<"StatusReasonCode">> => string(),
%%   <<"StatusReasonCodes">> => list(string()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type get_benefit_application_output() :: #{binary() => any()}.

%% Example:
%% benefit_summary() :: #{
%%   <<"Arn">> => [string()],
%%   <<"Catalog">> => string(),
%%   <<"Description">> => [string()],
%%   <<"FulfillmentTypes">> => list(list(any())()),
%%   <<"Id">> => [string()],
%%   <<"Name">> => [string()],
%%   <<"Programs">> => list(string()),
%%   <<"Status">> => list(any())
%% }
-type benefit_summary() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_benefit_output() :: #{
%%   <<"Arn">> => [string()],
%%   <<"BenefitRequestSchema">> => [any()],
%%   <<"Catalog">> => string(),
%%   <<"Description">> => [string()],
%%   <<"FulfillmentTypes">> => list(list(any())()),
%%   <<"Id">> => [string()],
%%   <<"Name">> => [string()],
%%   <<"Programs">> => list(string()),
%%   <<"Status">> => list(any())
%% }
-type get_benefit_output() :: #{binary() => any()}.

%% Example:
%% create_benefit_application_output() :: #{
%%   <<"Arn">> => [string()],
%%   <<"Id">> => string(),
%%   <<"Revision">> => [string()]
%% }
-type create_benefit_application_output() :: #{binary() => any()}.

%% Example:
%% update_benefit_application_output() :: #{
%%   <<"Arn">> => [string()],
%%   <<"Id">> => string(),
%%   <<"Revision">> => [string()]
%% }
-type update_benefit_application_output() :: #{binary() => any()}.

%% Example:
%% associate_benefit_application_resource_input() :: #{
%%   <<"BenefitApplicationIdentifier">> := string(),
%%   <<"Catalog">> := string(),
%%   <<"ResourceArn">> := string()
%% }
-type associate_benefit_application_resource_input() :: #{binary() => any()}.

%% Example:
%% get_benefit_input() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := [string()]
%% }
-type get_benefit_input() :: #{binary() => any()}.

%% Example:
%% cancel_benefit_application_input() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := [string()],
%%   <<"Identifier">> := string(),
%%   <<"Reason">> => [string()]
%% }
-type cancel_benefit_application_input() :: #{binary() => any()}.

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
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"QuotaCode">> => [string()],
%%   <<"ResourceId">> => [string()],
%%   <<"ResourceType">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% amendment() :: #{
%%   <<"FieldPath">> => [string()],
%%   <<"NewValue">> => [string()]
%% }
-type amendment() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => [string()],
%%   <<"Name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% consumable_details() :: #{
%%   <<"AllocatedAmount">> => monetary_value(),
%%   <<"IssuanceDetails">> => issuance_detail(),
%%   <<"RemainingAmount">> => monetary_value(),
%%   <<"UtilizedAmount">> => monetary_value()
%% }
-type consumable_details() :: #{binary() => any()}.

%% Example:
%% amend_benefit_application_input() :: #{
%%   <<"AmendmentReason">> := [string()],
%%   <<"Amendments">> := list(amendment()),
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> := [string()],
%%   <<"Identifier">> := string(),
%%   <<"Revision">> := [string()]
%% }
-type amend_benefit_application_input() :: #{binary() => any()}.

%% Example:
%% contact() :: #{
%%   <<"BusinessTitle">> => [string()],
%%   <<"Email">> => string(),
%%   <<"FirstName">> => string(),
%%   <<"LastName">> => string(),
%%   <<"Phone">> => string()
%% }
-type contact() :: #{binary() => any()}.

%% Example:
%% access_details() :: #{
%%   <<"Description">> => [string()]
%% }
-type access_details() :: #{binary() => any()}.

%% Example:
%% file_detail() :: #{
%%   <<"BusinessUseCase">> => [string()],
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CreatedBy">> => [string()],
%%   <<"FileName">> => [string()],
%%   <<"FileStatus">> => [string()],
%%   <<"FileStatusReason">> => [string()],
%%   <<"FileType">> => list(any()),
%%   <<"FileURI">> => string()
%% }
-type file_detail() :: #{binary() => any()}.

%% Example:
%% get_benefit_application_input() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type get_benefit_application_input() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% list_benefit_applications_input() :: #{
%%   <<"AssociatedResourceArns">> => list(string()),
%%   <<"AssociatedResources">> => list(associated_resource()),
%%   <<"BenefitIdentifiers">> => list(string()),
%%   <<"Catalog">> := string(),
%%   <<"FulfillmentTypes">> => list(list(any())()),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()],
%%   <<"Programs">> => list(string()),
%%   <<"Stages">> => list(string()),
%%   <<"Status">> => list(list(any())())
%% }
-type list_benefit_applications_input() :: #{binary() => any()}.

%% Example:
%% list_benefit_applications_output() :: #{
%%   <<"BenefitApplicationSummaries">> => list(benefit_application_summary()),
%%   <<"NextToken">> => [string()]
%% }
-type list_benefit_applications_output() :: #{binary() => any()}.

%% Example:
%% submit_benefit_application_output() :: #{

%% }
-type submit_benefit_application_output() :: #{binary() => any()}.

%% Example:
%% list_benefits_output() :: #{
%%   <<"BenefitSummaries">> => list(benefit_summary()),
%%   <<"NextToken">> => [string()]
%% }
-type list_benefits_output() :: #{binary() => any()}.

%% Example:
%% submit_benefit_application_input() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type submit_benefit_application_input() :: #{binary() => any()}.

%% Example:
%% recall_benefit_application_input() :: #{
%%   <<"Catalog">> := string(),
%%   <<"ClientToken">> => [string()],
%%   <<"Identifier">> := string(),
%%   <<"Reason">> := [string()]
%% }
-type recall_benefit_application_input() :: #{binary() => any()}.

%% Example:
%% cancel_benefit_application_output() :: #{

%% }
-type cancel_benefit_application_output() :: #{binary() => any()}.

%% Example:
%% list_benefits_input() :: #{
%%   <<"Catalog">> := string(),
%%   <<"FulfillmentTypes">> => list(list(any())()),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()],
%%   <<"Programs">> => list(string()),
%%   <<"Status">> => list(list(any())())
%% }
-type list_benefits_input() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% benefit_allocation_summary() :: #{
%%   <<"ApplicableBenefitIds">> => list(string()),
%%   <<"Arn">> => [string()],
%%   <<"BenefitApplicationId">> => string(),
%%   <<"BenefitId">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"ExpiresAt">> => non_neg_integer(),
%%   <<"FulfillmentTypes">> => list(list(any())()),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => [string()]
%% }
-type benefit_allocation_summary() :: #{binary() => any()}.

%% Example:
%% disassociate_benefit_application_resource_input() :: #{
%%   <<"BenefitApplicationIdentifier">> := string(),
%%   <<"Catalog">> := string(),
%%   <<"ResourceArn">> := string()
%% }
-type disassociate_benefit_application_resource_input() :: #{binary() => any()}.

%% Example:
%% associated_resource() :: #{
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceIdentifier">> => [string()],
%%   <<"ResourceType">> => list(any())
%% }
-type associated_resource() :: #{binary() => any()}.

%% Example:
%% benefit_application_summary() :: #{
%%   <<"Arn">> => [string()],
%%   <<"AssociatedResources">> => list(string()),
%%   <<"BenefitApplicationDetails">> => map(),
%%   <<"BenefitId">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"FulfillmentTypes">> => list(list(any())()),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Programs">> => list(string()),
%%   <<"Stage">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type benefit_application_summary() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"FieldList">> => list(validation_exception_field()),
%%   <<"Message">> => [string()],
%%   <<"Reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% get_benefit_allocation_input() :: #{
%%   <<"Catalog">> := string(),
%%   <<"Identifier">> := string()
%% }
-type get_benefit_allocation_input() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% amend_benefit_application_output() :: #{

%% }
-type amend_benefit_application_output() :: #{binary() => any()}.

%% Example:
%% disbursement_details() :: #{
%%   <<"DisbursedAmount">> => monetary_value(),
%%   <<"IssuanceDetails">> => issuance_detail()
%% }
-type disbursement_details() :: #{binary() => any()}.

%% Example:
%% issuance_detail() :: #{
%%   <<"IssuanceAmount">> => monetary_value(),
%%   <<"IssuanceId">> => [string()],
%%   <<"IssuedAt">> => non_neg_integer()
%% }
-type issuance_detail() :: #{binary() => any()}.

%% Example:
%% monetary_value() :: #{
%%   <<"Amount">> => [string()],
%%   <<"CurrencyCode">> => list(any())
%% }
-type monetary_value() :: #{binary() => any()}.

%% Example:
%% list_benefit_allocations_output() :: #{
%%   <<"BenefitAllocationSummaries">> => list(benefit_allocation_summary()),
%%   <<"NextToken">> => [string()]
%% }
-type list_benefit_allocations_output() :: #{binary() => any()}.

%% Example:
%% get_benefit_allocation_output() :: #{
%%   <<"ApplicableBenefitIds">> => list(string()),
%%   <<"Arn">> => string(),
%%   <<"BenefitApplicationId">> => string(),
%%   <<"BenefitId">> => string(),
%%   <<"Catalog">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => [string()],
%%   <<"ExpiresAt">> => non_neg_integer(),
%%   <<"FulfillmentDetail">> => list(),
%%   <<"FulfillmentType">> => list(any()),
%%   <<"Id">> => string(),
%%   <<"Name">> => [string()],
%%   <<"StartsAt">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => [string()],
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type get_benefit_allocation_output() :: #{binary() => any()}.

-type amend_benefit_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type associate_benefit_application_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type cancel_benefit_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_benefit_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_benefit_application_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_benefit_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_benefit_allocation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_benefit_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_benefit_allocations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_benefit_applications_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_benefits_errors() ::
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
    resource_not_found_exception().

-type recall_benefit_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type submit_benefit_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_benefit_application_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Modifies an existing benefit application by applying amendments to
%% specific fields while maintaining revision control.
-spec amend_benefit_application(aws_client:aws_client(), amend_benefit_application_input()) ->
    {ok, amend_benefit_application_output(), tuple()} |
    {error, any()} |
    {error, amend_benefit_application_errors(), tuple()}.
amend_benefit_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    amend_benefit_application(Client, Input, []).

-spec amend_benefit_application(aws_client:aws_client(), amend_benefit_application_input(), proplists:proplist()) ->
    {ok, amend_benefit_application_output(), tuple()} |
    {error, any()} |
    {error, amend_benefit_application_errors(), tuple()}.
amend_benefit_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AmendBenefitApplication">>, Input, Options).

%% @doc Links an AWS resource to an existing benefit application for tracking
%% and management purposes.
-spec associate_benefit_application_resource(aws_client:aws_client(), associate_benefit_application_resource_input()) ->
    {ok, associate_benefit_application_resource_output(), tuple()} |
    {error, any()} |
    {error, associate_benefit_application_resource_errors(), tuple()}.
associate_benefit_application_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_benefit_application_resource(Client, Input, []).

-spec associate_benefit_application_resource(aws_client:aws_client(), associate_benefit_application_resource_input(), proplists:proplist()) ->
    {ok, associate_benefit_application_resource_output(), tuple()} |
    {error, any()} |
    {error, associate_benefit_application_resource_errors(), tuple()}.
associate_benefit_application_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateBenefitApplicationResource">>, Input, Options).

%% @doc Cancels a benefit application that is currently in progress,
%% preventing further processing.
-spec cancel_benefit_application(aws_client:aws_client(), cancel_benefit_application_input()) ->
    {ok, cancel_benefit_application_output(), tuple()} |
    {error, any()} |
    {error, cancel_benefit_application_errors(), tuple()}.
cancel_benefit_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_benefit_application(Client, Input, []).

-spec cancel_benefit_application(aws_client:aws_client(), cancel_benefit_application_input(), proplists:proplist()) ->
    {ok, cancel_benefit_application_output(), tuple()} |
    {error, any()} |
    {error, cancel_benefit_application_errors(), tuple()}.
cancel_benefit_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelBenefitApplication">>, Input, Options).

%% @doc Creates a new benefit application for a partner to request access to
%% AWS benefits and programs.
-spec create_benefit_application(aws_client:aws_client(), create_benefit_application_input()) ->
    {ok, create_benefit_application_output(), tuple()} |
    {error, any()} |
    {error, create_benefit_application_errors(), tuple()}.
create_benefit_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_benefit_application(Client, Input, []).

-spec create_benefit_application(aws_client:aws_client(), create_benefit_application_input(), proplists:proplist()) ->
    {ok, create_benefit_application_output(), tuple()} |
    {error, any()} |
    {error, create_benefit_application_errors(), tuple()}.
create_benefit_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBenefitApplication">>, Input, Options).

%% @doc Removes the association between an AWS resource and a benefit
%% application.
-spec disassociate_benefit_application_resource(aws_client:aws_client(), disassociate_benefit_application_resource_input()) ->
    {ok, disassociate_benefit_application_resource_output(), tuple()} |
    {error, any()} |
    {error, disassociate_benefit_application_resource_errors(), tuple()}.
disassociate_benefit_application_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_benefit_application_resource(Client, Input, []).

-spec disassociate_benefit_application_resource(aws_client:aws_client(), disassociate_benefit_application_resource_input(), proplists:proplist()) ->
    {ok, disassociate_benefit_application_resource_output(), tuple()} |
    {error, any()} |
    {error, disassociate_benefit_application_resource_errors(), tuple()}.
disassociate_benefit_application_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateBenefitApplicationResource">>, Input, Options).

%% @doc Retrieves detailed information about a specific benefit available in
%% the partner catalog.
-spec get_benefit(aws_client:aws_client(), get_benefit_input()) ->
    {ok, get_benefit_output(), tuple()} |
    {error, any()} |
    {error, get_benefit_errors(), tuple()}.
get_benefit(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_benefit(Client, Input, []).

-spec get_benefit(aws_client:aws_client(), get_benefit_input(), proplists:proplist()) ->
    {ok, get_benefit_output(), tuple()} |
    {error, any()} |
    {error, get_benefit_errors(), tuple()}.
get_benefit(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBenefit">>, Input, Options).

%% @doc Retrieves detailed information about a specific benefit allocation
%% that has been granted to a partner.
-spec get_benefit_allocation(aws_client:aws_client(), get_benefit_allocation_input()) ->
    {ok, get_benefit_allocation_output(), tuple()} |
    {error, any()} |
    {error, get_benefit_allocation_errors(), tuple()}.
get_benefit_allocation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_benefit_allocation(Client, Input, []).

-spec get_benefit_allocation(aws_client:aws_client(), get_benefit_allocation_input(), proplists:proplist()) ->
    {ok, get_benefit_allocation_output(), tuple()} |
    {error, any()} |
    {error, get_benefit_allocation_errors(), tuple()}.
get_benefit_allocation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBenefitAllocation">>, Input, Options).

%% @doc Retrieves detailed information about a specific benefit application.
-spec get_benefit_application(aws_client:aws_client(), get_benefit_application_input()) ->
    {ok, get_benefit_application_output(), tuple()} |
    {error, any()} |
    {error, get_benefit_application_errors(), tuple()}.
get_benefit_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_benefit_application(Client, Input, []).

-spec get_benefit_application(aws_client:aws_client(), get_benefit_application_input(), proplists:proplist()) ->
    {ok, get_benefit_application_output(), tuple()} |
    {error, any()} |
    {error, get_benefit_application_errors(), tuple()}.
get_benefit_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBenefitApplication">>, Input, Options).

%% @doc Retrieves a paginated list of benefit allocations based on specified
%% filter criteria.
-spec list_benefit_allocations(aws_client:aws_client(), list_benefit_allocations_input()) ->
    {ok, list_benefit_allocations_output(), tuple()} |
    {error, any()} |
    {error, list_benefit_allocations_errors(), tuple()}.
list_benefit_allocations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_benefit_allocations(Client, Input, []).

-spec list_benefit_allocations(aws_client:aws_client(), list_benefit_allocations_input(), proplists:proplist()) ->
    {ok, list_benefit_allocations_output(), tuple()} |
    {error, any()} |
    {error, list_benefit_allocations_errors(), tuple()}.
list_benefit_allocations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBenefitAllocations">>, Input, Options).

%% @doc Retrieves a paginated list of benefit applications based on specified
%% filter criteria.
-spec list_benefit_applications(aws_client:aws_client(), list_benefit_applications_input()) ->
    {ok, list_benefit_applications_output(), tuple()} |
    {error, any()} |
    {error, list_benefit_applications_errors(), tuple()}.
list_benefit_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_benefit_applications(Client, Input, []).

-spec list_benefit_applications(aws_client:aws_client(), list_benefit_applications_input(), proplists:proplist()) ->
    {ok, list_benefit_applications_output(), tuple()} |
    {error, any()} |
    {error, list_benefit_applications_errors(), tuple()}.
list_benefit_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBenefitApplications">>, Input, Options).

%% @doc Retrieves a paginated list of available benefits based on specified
%% filter criteria.
-spec list_benefits(aws_client:aws_client(), list_benefits_input()) ->
    {ok, list_benefits_output(), tuple()} |
    {error, any()} |
    {error, list_benefits_errors(), tuple()}.
list_benefits(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_benefits(Client, Input, []).

-spec list_benefits(aws_client:aws_client(), list_benefits_input(), proplists:proplist()) ->
    {ok, list_benefits_output(), tuple()} |
    {error, any()} |
    {error, list_benefits_errors(), tuple()}.
list_benefits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBenefits">>, Input, Options).

%% @doc Retrieves all tags associated with a specific resource.
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

%% @doc Recalls a submitted benefit application, returning it to draft status
%% for further modifications.
-spec recall_benefit_application(aws_client:aws_client(), recall_benefit_application_input()) ->
    {ok, recall_benefit_application_output(), tuple()} |
    {error, any()} |
    {error, recall_benefit_application_errors(), tuple()}.
recall_benefit_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    recall_benefit_application(Client, Input, []).

-spec recall_benefit_application(aws_client:aws_client(), recall_benefit_application_input(), proplists:proplist()) ->
    {ok, recall_benefit_application_output(), tuple()} |
    {error, any()} |
    {error, recall_benefit_application_errors(), tuple()}.
recall_benefit_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RecallBenefitApplication">>, Input, Options).

%% @doc Submits a benefit application for review and processing by AWS.
-spec submit_benefit_application(aws_client:aws_client(), submit_benefit_application_input()) ->
    {ok, submit_benefit_application_output(), tuple()} |
    {error, any()} |
    {error, submit_benefit_application_errors(), tuple()}.
submit_benefit_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    submit_benefit_application(Client, Input, []).

-spec submit_benefit_application(aws_client:aws_client(), submit_benefit_application_input(), proplists:proplist()) ->
    {ok, submit_benefit_application_output(), tuple()} |
    {error, any()} |
    {error, submit_benefit_application_errors(), tuple()}.
submit_benefit_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SubmitBenefitApplication">>, Input, Options).

%% @doc Adds or updates tags for a specified resource.
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

%% @doc Removes specified tags from a resource.
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

%% @doc Updates an existing benefit application with new information while
%% maintaining revision control.
-spec update_benefit_application(aws_client:aws_client(), update_benefit_application_input()) ->
    {ok, update_benefit_application_output(), tuple()} |
    {error, any()} |
    {error, update_benefit_application_errors(), tuple()}.
update_benefit_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_benefit_application(Client, Input, []).

-spec update_benefit_application(aws_client:aws_client(), update_benefit_application_input(), proplists:proplist()) ->
    {ok, update_benefit_application_output(), tuple()} |
    {error, any()} |
    {error, update_benefit_application_errors(), tuple()}.
update_benefit_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateBenefitApplication">>, Input, Options).

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
    Client1 = Client#{service => <<"partnercentral-benefits">>},
    Host = build_host(<<"partnercentral-benefits">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"PartnerCentralBenefitsService.", Action/binary>>}
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
