%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc With Service Quotas, you can view and manage your quotas easily as
%% your Amazon Web Services workloads grow.
%%
%% Quotas, also referred to as limits, are the maximum number of resources
%% that you can
%% create in your Amazon Web Services account. For more information, see the
%% Service Quotas User Guide:
%% https://docs.aws.amazon.com/servicequotas/latest/userguide/.
%%
%% You need Amazon Web Services CLI version 2.13.20 or higher to view and
%% manage resource-level quotas such as
%% ```
%% Instances per domain''' for Amazon OpenSearch Service.
-module(aws_service_quotas).

-export([associate_service_quota_template/2,
         associate_service_quota_template/3,
         create_support_case/2,
         create_support_case/3,
         delete_service_quota_increase_request_from_template/2,
         delete_service_quota_increase_request_from_template/3,
         disassociate_service_quota_template/2,
         disassociate_service_quota_template/3,
         get_association_for_service_quota_template/2,
         get_association_for_service_quota_template/3,
         get_auto_management_configuration/2,
         get_auto_management_configuration/3,
         get_aws_default_service_quota/2,
         get_aws_default_service_quota/3,
         get_requested_service_quota_change/2,
         get_requested_service_quota_change/3,
         get_service_quota/2,
         get_service_quota/3,
         get_service_quota_increase_request_from_template/2,
         get_service_quota_increase_request_from_template/3,
         list_aws_default_service_quotas/2,
         list_aws_default_service_quotas/3,
         list_requested_service_quota_change_history/2,
         list_requested_service_quota_change_history/3,
         list_requested_service_quota_change_history_by_quota/2,
         list_requested_service_quota_change_history_by_quota/3,
         list_service_quota_increase_requests_in_template/2,
         list_service_quota_increase_requests_in_template/3,
         list_service_quotas/2,
         list_service_quotas/3,
         list_services/2,
         list_services/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_service_quota_increase_request_into_template/2,
         put_service_quota_increase_request_into_template/3,
         request_service_quota_increase/2,
         request_service_quota_increase/3,
         start_auto_management/2,
         start_auto_management/3,
         stop_auto_management/2,
         stop_auto_management/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_auto_management/2,
         update_auto_management/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% request_service_quota_increase_response() :: #{
%%   <<"RequestedQuota">> => requested_service_quota_change()
%% }
-type request_service_quota_increase_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_aws_default_service_quota_request() :: #{
%%   <<"QuotaCode">> := string(),
%%   <<"ServiceCode">> := string()
%% }
-type get_aws_default_service_quota_request() :: #{binary() => any()}.

%% Example:
%% list_service_quotas_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Quotas">> => list(service_quota())
%% }
-type list_service_quotas_response() :: #{binary() => any()}.

%% Example:
%% service_quota_increase_request_in_template() :: #{
%%   <<"AwsRegion">> => string(),
%%   <<"DesiredValue">> => float(),
%%   <<"GlobalQuota">> => boolean(),
%%   <<"QuotaCode">> => string(),
%%   <<"QuotaName">> => string(),
%%   <<"ServiceCode">> => string(),
%%   <<"ServiceName">> => string(),
%%   <<"Unit">> => string()
%% }
-type service_quota_increase_request_in_template() :: #{binary() => any()}.

%% Example:
%% stop_auto_management_request() :: #{

%% }
-type stop_auto_management_request() :: #{binary() => any()}.

%% Example:
%% list_aws_default_service_quotas_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ServiceCode">> := string()
%% }
-type list_aws_default_service_quotas_request() :: #{binary() => any()}.

%% Example:
%% start_auto_management_response() :: #{

%% }
-type start_auto_management_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% get_requested_service_quota_change_response() :: #{
%%   <<"RequestedQuota">> => requested_service_quota_change()
%% }
-type get_requested_service_quota_change_response() :: #{binary() => any()}.

%% Example:
%% associate_service_quota_template_request() :: #{

%% }
-type associate_service_quota_template_request() :: #{binary() => any()}.

%% Example:
%% dependency_access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type dependency_access_denied_exception() :: #{binary() => any()}.

%% Example:
%% put_service_quota_increase_request_into_template_request() :: #{
%%   <<"AwsRegion">> := string(),
%%   <<"DesiredValue">> := float(),
%%   <<"QuotaCode">> := string(),
%%   <<"ServiceCode">> := string()
%% }
-type put_service_quota_increase_request_into_template_request() :: #{binary() => any()}.

%% Example:
%% quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% get_aws_default_service_quota_response() :: #{
%%   <<"Quota">> => service_quota()
%% }
-type get_aws_default_service_quota_response() :: #{binary() => any()}.

%% Example:
%% get_service_quota_increase_request_from_template_response() :: #{
%%   <<"ServiceQuotaIncreaseRequestInTemplate">> => service_quota_increase_request_in_template()
%% }
-type get_service_quota_increase_request_from_template_response() :: #{binary() => any()}.

%% Example:
%% list_service_quota_increase_requests_in_template_request() :: #{
%%   <<"AwsRegion">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ServiceCode">> => string()
%% }
-type list_service_quota_increase_requests_in_template_request() :: #{binary() => any()}.

%% Example:
%% illegal_argument_exception() :: #{
%%   <<"Message">> => string()
%% }
-type illegal_argument_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.

%% Example:
%% delete_service_quota_increase_request_from_template_request() :: #{
%%   <<"AwsRegion">> := string(),
%%   <<"QuotaCode">> := string(),
%%   <<"ServiceCode">> := string()
%% }
-type delete_service_quota_increase_request_from_template_request() :: #{binary() => any()}.

%% Example:
%% delete_service_quota_increase_request_from_template_response() :: #{

%% }
-type delete_service_quota_increase_request_from_template_response() :: #{binary() => any()}.

%% Example:
%% start_auto_management_request() :: #{
%%   <<"ExclusionList">> => map(),
%%   <<"NotificationArn">> => string(),
%%   <<"OptInLevel">> := list(any()),
%%   <<"OptInType">> := list(any())
%% }
-type start_auto_management_request() :: #{binary() => any()}.

%% Example:
%% list_requested_service_quota_change_history_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RequestedQuotas">> => list(requested_service_quota_change())
%% }
-type list_requested_service_quota_change_history_response() :: #{binary() => any()}.

%% Example:
%% list_services_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_services_request() :: #{binary() => any()}.

%% Example:
%% put_service_quota_increase_request_into_template_response() :: #{
%%   <<"ServiceQuotaIncreaseRequestInTemplate">> => service_quota_increase_request_in_template()
%% }
-type put_service_quota_increase_request_into_template_response() :: #{binary() => any()}.

%% Example:
%% metric_info() :: #{
%%   <<"MetricDimensions">> => map(),
%%   <<"MetricName">> => string(),
%%   <<"MetricNamespace">> => string(),
%%   <<"MetricStatisticRecommendation">> => string()
%% }
-type metric_info() :: #{binary() => any()}.

%% Example:
%% stop_auto_management_response() :: #{

%% }
-type stop_auto_management_response() :: #{binary() => any()}.

%% Example:
%% get_association_for_service_quota_template_request() :: #{

%% }
-type get_association_for_service_quota_template_request() :: #{binary() => any()}.

%% Example:
%% requested_service_quota_change() :: #{
%%   <<"CaseId">> => string(),
%%   <<"Created">> => non_neg_integer(),
%%   <<"DesiredValue">> => float(),
%%   <<"GlobalQuota">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"LastUpdated">> => non_neg_integer(),
%%   <<"QuotaArn">> => string(),
%%   <<"QuotaCode">> => string(),
%%   <<"QuotaContext">> => quota_context_info(),
%%   <<"QuotaName">> => string(),
%%   <<"QuotaRequestedAtLevel">> => list(any()),
%%   <<"Requester">> => string(),
%%   <<"ServiceCode">> => string(),
%%   <<"ServiceName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Unit">> => string()
%% }
-type requested_service_quota_change() :: #{binary() => any()}.

%% Example:
%% disassociate_service_quota_template_response() :: #{

%% }
-type disassociate_service_quota_template_response() :: #{binary() => any()}.

%% Example:
%% list_aws_default_service_quotas_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Quotas">> => list(service_quota())
%% }
-type list_aws_default_service_quotas_response() :: #{binary() => any()}.

%% Example:
%% organization_not_in_all_features_mode_exception() :: #{
%%   <<"Message">> => string()
%% }
-type organization_not_in_all_features_mode_exception() :: #{binary() => any()}.

%% Example:
%% associate_service_quota_template_response() :: #{

%% }
-type associate_service_quota_template_response() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% list_requested_service_quota_change_history_by_quota_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"RequestedQuotas">> => list(requested_service_quota_change())
%% }
-type list_requested_service_quota_change_history_by_quota_response() :: #{binary() => any()}.

%% Example:
%% list_services_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Services">> => list(service_info())
%% }
-type list_services_response() :: #{binary() => any()}.

%% Example:
%% quota_context_info() :: #{
%%   <<"ContextId">> => string(),
%%   <<"ContextScope">> => list(any()),
%%   <<"ContextScopeType">> => string()
%% }
-type quota_context_info() :: #{binary() => any()}.

%% Example:
%% get_service_quota_response() :: #{
%%   <<"Quota">> => service_quota()
%% }
-type get_service_quota_response() :: #{binary() => any()}.

%% Example:
%% request_service_quota_increase_request() :: #{
%%   <<"ContextId">> => string(),
%%   <<"DesiredValue">> := float(),
%%   <<"QuotaCode">> := string(),
%%   <<"ServiceCode">> := string(),
%%   <<"SupportCaseAllowed">> => boolean()
%% }
-type request_service_quota_increase_request() :: #{binary() => any()}.

%% Example:
%% service_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_exception() :: #{binary() => any()}.

%% Example:
%% create_support_case_request() :: #{
%%   <<"RequestId">> := string()
%% }
-type create_support_case_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% update_auto_management_response() :: #{

%% }
-type update_auto_management_response() :: #{binary() => any()}.

%% Example:
%% disassociate_service_quota_template_request() :: #{

%% }
-type disassociate_service_quota_template_request() :: #{binary() => any()}.

%% Example:
%% get_association_for_service_quota_template_response() :: #{
%%   <<"ServiceQuotaTemplateAssociationStatus">> => list(any())
%% }
-type get_association_for_service_quota_template_response() :: #{binary() => any()}.

%% Example:
%% invalid_resource_state_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_resource_state_exception() :: #{binary() => any()}.

%% Example:
%% get_auto_management_configuration_request() :: #{

%% }
-type get_auto_management_configuration_request() :: #{binary() => any()}.

%% Example:
%% no_such_resource_exception() :: #{
%%   <<"Message">> => string()
%% }
-type no_such_resource_exception() :: #{binary() => any()}.

%% Example:
%% quota_info() :: #{
%%   <<"QuotaCode">> => string(),
%%   <<"QuotaName">> => string()
%% }
-type quota_info() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% list_service_quotas_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"QuotaAppliedAtLevel">> => list(any()),
%%   <<"QuotaCode">> => string(),
%%   <<"ServiceCode">> := string()
%% }
-type list_service_quotas_request() :: #{binary() => any()}.

%% Example:
%% get_requested_service_quota_change_request() :: #{
%%   <<"RequestId">> := string()
%% }
-type get_requested_service_quota_change_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% service_quota() :: #{
%%   <<"Adjustable">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"ErrorReason">> => error_reason(),
%%   <<"GlobalQuota">> => boolean(),
%%   <<"Period">> => quota_period(),
%%   <<"QuotaAppliedAtLevel">> => list(any()),
%%   <<"QuotaArn">> => string(),
%%   <<"QuotaCode">> => string(),
%%   <<"QuotaContext">> => quota_context_info(),
%%   <<"QuotaName">> => string(),
%%   <<"ServiceCode">> => string(),
%%   <<"ServiceName">> => string(),
%%   <<"Unit">> => string(),
%%   <<"UsageMetric">> => metric_info(),
%%   <<"Value">> => float()
%% }
-type service_quota() :: #{binary() => any()}.

%% Example:
%% list_requested_service_quota_change_history_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"QuotaRequestedAtLevel">> => list(any()),
%%   <<"ServiceCode">> => string(),
%%   <<"Status">> => list(any())
%% }
-type list_requested_service_quota_change_history_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% no_available_organization_exception() :: #{
%%   <<"Message">> => string()
%% }
-type no_available_organization_exception() :: #{binary() => any()}.

%% Example:
%% error_reason() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string()
%% }
-type error_reason() :: #{binary() => any()}.

%% Example:
%% update_auto_management_request() :: #{
%%   <<"ExclusionList">> => map(),
%%   <<"NotificationArn">> => string(),
%%   <<"OptInType">> => list(any())
%% }
-type update_auto_management_request() :: #{binary() => any()}.

%% Example:
%% service_quota_template_not_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_template_not_in_use_exception() :: #{binary() => any()}.

%% Example:
%% create_support_case_response() :: #{

%% }
-type create_support_case_response() :: #{binary() => any()}.

%% Example:
%% get_service_quota_request() :: #{
%%   <<"ContextId">> => string(),
%%   <<"QuotaCode">> := string(),
%%   <<"ServiceCode">> := string()
%% }
-type get_service_quota_request() :: #{binary() => any()}.

%% Example:
%% templates_not_available_in_region_exception() :: #{
%%   <<"Message">> => string()
%% }
-type templates_not_available_in_region_exception() :: #{binary() => any()}.

%% Example:
%% get_service_quota_increase_request_from_template_request() :: #{
%%   <<"AwsRegion">> := string(),
%%   <<"QuotaCode">> := string(),
%%   <<"ServiceCode">> := string()
%% }
-type get_service_quota_increase_request_from_template_request() :: #{binary() => any()}.

%% Example:
%% get_auto_management_configuration_response() :: #{
%%   <<"ExclusionList">> => map(),
%%   <<"NotificationArn">> => string(),
%%   <<"OptInLevel">> => list(any()),
%%   <<"OptInStatus">> => list(any()),
%%   <<"OptInType">> => list(any())
%% }
-type get_auto_management_configuration_response() :: #{binary() => any()}.

%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% service_info() :: #{
%%   <<"ServiceCode">> => string(),
%%   <<"ServiceName">> => string()
%% }
-type service_info() :: #{binary() => any()}.

%% Example:
%% quota_period() :: #{
%%   <<"PeriodUnit">> => list(any()),
%%   <<"PeriodValue">> => integer()
%% }
-type quota_period() :: #{binary() => any()}.

%% Example:
%% aws_service_access_not_enabled_exception() :: #{
%%   <<"Message">> => string()
%% }
-type aws_service_access_not_enabled_exception() :: #{binary() => any()}.

%% Example:
%% list_requested_service_quota_change_history_by_quota_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"QuotaCode">> := string(),
%%   <<"QuotaRequestedAtLevel">> => list(any()),
%%   <<"ServiceCode">> := string(),
%%   <<"Status">> => list(any())
%% }
-type list_requested_service_quota_change_history_by_quota_request() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% tag_policy_violation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type tag_policy_violation_exception() :: #{binary() => any()}.

%% Example:
%% list_service_quota_increase_requests_in_template_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ServiceQuotaIncreaseRequestInTemplateList">> => list(service_quota_increase_request_in_template())
%% }
-type list_service_quota_increase_requests_in_template_response() :: #{binary() => any()}.

%% Example:
%% invalid_pagination_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_pagination_token_exception() :: #{binary() => any()}.

-type associate_service_quota_template_errors() ::
    aws_service_access_not_enabled_exception() | 
    templates_not_available_in_region_exception() | 
    no_available_organization_exception() | 
    access_denied_exception() | 
    service_exception() | 
    organization_not_in_all_features_mode_exception() | 
    too_many_requests_exception() | 
    dependency_access_denied_exception().

-type create_support_case_errors() ::
    resource_already_exists_exception() | 
    access_denied_exception() | 
    no_such_resource_exception() | 
    invalid_resource_state_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    dependency_access_denied_exception().

-type delete_service_quota_increase_request_from_template_errors() ::
    aws_service_access_not_enabled_exception() | 
    templates_not_available_in_region_exception() | 
    no_available_organization_exception() | 
    access_denied_exception() | 
    no_such_resource_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    dependency_access_denied_exception().

-type disassociate_service_quota_template_errors() ::
    aws_service_access_not_enabled_exception() | 
    templates_not_available_in_region_exception() | 
    service_quota_template_not_in_use_exception() | 
    no_available_organization_exception() | 
    access_denied_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    dependency_access_denied_exception().

-type get_association_for_service_quota_template_errors() ::
    aws_service_access_not_enabled_exception() | 
    templates_not_available_in_region_exception() | 
    service_quota_template_not_in_use_exception() | 
    no_available_organization_exception() | 
    access_denied_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    dependency_access_denied_exception().

-type get_auto_management_configuration_errors() ::
    access_denied_exception() | 
    no_such_resource_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception().

-type get_aws_default_service_quota_errors() ::
    access_denied_exception() | 
    no_such_resource_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception().

-type get_requested_service_quota_change_errors() ::
    access_denied_exception() | 
    no_such_resource_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception().

-type get_service_quota_errors() ::
    access_denied_exception() | 
    no_such_resource_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception().

-type get_service_quota_increase_request_from_template_errors() ::
    aws_service_access_not_enabled_exception() | 
    templates_not_available_in_region_exception() | 
    no_available_organization_exception() | 
    access_denied_exception() | 
    no_such_resource_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    dependency_access_denied_exception().

-type list_aws_default_service_quotas_errors() ::
    invalid_pagination_token_exception() | 
    access_denied_exception() | 
    no_such_resource_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception().

-type list_requested_service_quota_change_history_errors() ::
    invalid_pagination_token_exception() | 
    access_denied_exception() | 
    no_such_resource_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception().

-type list_requested_service_quota_change_history_by_quota_errors() ::
    invalid_pagination_token_exception() | 
    access_denied_exception() | 
    no_such_resource_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception().

-type list_service_quota_increase_requests_in_template_errors() ::
    aws_service_access_not_enabled_exception() | 
    templates_not_available_in_region_exception() | 
    no_available_organization_exception() | 
    access_denied_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    dependency_access_denied_exception().

-type list_service_quotas_errors() ::
    invalid_pagination_token_exception() | 
    access_denied_exception() | 
    no_such_resource_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception().

-type list_services_errors() ::
    invalid_pagination_token_exception() | 
    access_denied_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception().

-type list_tags_for_resource_errors() ::
    access_denied_exception() | 
    no_such_resource_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception().

-type put_service_quota_increase_request_into_template_errors() ::
    aws_service_access_not_enabled_exception() | 
    templates_not_available_in_region_exception() | 
    no_available_organization_exception() | 
    access_denied_exception() | 
    no_such_resource_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    quota_exceeded_exception() | 
    dependency_access_denied_exception().

-type request_service_quota_increase_errors() ::
    resource_already_exists_exception() | 
    access_denied_exception() | 
    no_such_resource_exception() | 
    invalid_resource_state_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception() | 
    quota_exceeded_exception() | 
    dependency_access_denied_exception().

-type start_auto_management_errors() ::
    access_denied_exception() | 
    no_such_resource_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception().

-type stop_auto_management_errors() ::
    access_denied_exception() | 
    no_such_resource_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception().

-type tag_resource_errors() ::
    tag_policy_violation_exception() | 
    too_many_tags_exception() | 
    access_denied_exception() | 
    no_such_resource_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception().

-type untag_resource_errors() ::
    access_denied_exception() | 
    no_such_resource_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception().

-type update_auto_management_errors() ::
    access_denied_exception() | 
    no_such_resource_exception() | 
    service_exception() | 
    too_many_requests_exception() | 
    illegal_argument_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates your quota request template with your organization.
%%
%% When a new
%% Amazon Web Services account is created in your organization, the quota
%% increase requests in the
%% template are automatically applied to the account. You can add a quota
%% increase request
%% for any adjustable quota to your template.
-spec associate_service_quota_template(aws_client:aws_client(), associate_service_quota_template_request()) ->
    {ok, associate_service_quota_template_response(), tuple()} |
    {error, any()} |
    {error, associate_service_quota_template_errors(), tuple()}.
associate_service_quota_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_service_quota_template(Client, Input, []).

-spec associate_service_quota_template(aws_client:aws_client(), associate_service_quota_template_request(), proplists:proplist()) ->
    {ok, associate_service_quota_template_response(), tuple()} |
    {error, any()} |
    {error, associate_service_quota_template_errors(), tuple()}.
associate_service_quota_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateServiceQuotaTemplate">>, Input, Options).

%% @doc Creates a Support case for an existing quota increase request.
%%
%% This call only creates
%% a Support case if the request has a `Pending' status.
-spec create_support_case(aws_client:aws_client(), create_support_case_request()) ->
    {ok, create_support_case_response(), tuple()} |
    {error, any()} |
    {error, create_support_case_errors(), tuple()}.
create_support_case(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_support_case(Client, Input, []).

-spec create_support_case(aws_client:aws_client(), create_support_case_request(), proplists:proplist()) ->
    {ok, create_support_case_response(), tuple()} |
    {error, any()} |
    {error, create_support_case_errors(), tuple()}.
create_support_case(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSupportCase">>, Input, Options).

%% @doc Deletes the quota increase request for the specified quota from your
%% quota request
%% template.
-spec delete_service_quota_increase_request_from_template(aws_client:aws_client(), delete_service_quota_increase_request_from_template_request()) ->
    {ok, delete_service_quota_increase_request_from_template_response(), tuple()} |
    {error, any()} |
    {error, delete_service_quota_increase_request_from_template_errors(), tuple()}.
delete_service_quota_increase_request_from_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service_quota_increase_request_from_template(Client, Input, []).

-spec delete_service_quota_increase_request_from_template(aws_client:aws_client(), delete_service_quota_increase_request_from_template_request(), proplists:proplist()) ->
    {ok, delete_service_quota_increase_request_from_template_response(), tuple()} |
    {error, any()} |
    {error, delete_service_quota_increase_request_from_template_errors(), tuple()}.
delete_service_quota_increase_request_from_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServiceQuotaIncreaseRequestFromTemplate">>, Input, Options).

%% @doc Disables your quota request template.
%%
%% After a template is disabled, the quota increase
%% requests in the template are not applied to new Amazon Web Services
%% accounts in your organization.
%% Disabling a quota request template does not apply its quota increase
%% requests.
-spec disassociate_service_quota_template(aws_client:aws_client(), disassociate_service_quota_template_request()) ->
    {ok, disassociate_service_quota_template_response(), tuple()} |
    {error, any()} |
    {error, disassociate_service_quota_template_errors(), tuple()}.
disassociate_service_quota_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_service_quota_template(Client, Input, []).

-spec disassociate_service_quota_template(aws_client:aws_client(), disassociate_service_quota_template_request(), proplists:proplist()) ->
    {ok, disassociate_service_quota_template_response(), tuple()} |
    {error, any()} |
    {error, disassociate_service_quota_template_errors(), tuple()}.
disassociate_service_quota_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateServiceQuotaTemplate">>, Input, Options).

%% @doc Retrieves the status of the association for the quota request
%% template.
-spec get_association_for_service_quota_template(aws_client:aws_client(), get_association_for_service_quota_template_request()) ->
    {ok, get_association_for_service_quota_template_response(), tuple()} |
    {error, any()} |
    {error, get_association_for_service_quota_template_errors(), tuple()}.
get_association_for_service_quota_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_association_for_service_quota_template(Client, Input, []).

-spec get_association_for_service_quota_template(aws_client:aws_client(), get_association_for_service_quota_template_request(), proplists:proplist()) ->
    {ok, get_association_for_service_quota_template_response(), tuple()} |
    {error, any()} |
    {error, get_association_for_service_quota_template_errors(), tuple()}.
get_association_for_service_quota_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAssociationForServiceQuotaTemplate">>, Input, Options).

%% @doc Retrieves information about your Service Quotas Automatic Management:
%% https://docs.aws.amazon.com/servicequotas/latest/userguide/automatic-management.html
%% configuration.
%%
%% Automatic Management monitors your Service Quotas utilization and notifies
%% you before you
%% run out of your allocated quotas.
-spec get_auto_management_configuration(aws_client:aws_client(), get_auto_management_configuration_request()) ->
    {ok, get_auto_management_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_auto_management_configuration_errors(), tuple()}.
get_auto_management_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_auto_management_configuration(Client, Input, []).

-spec get_auto_management_configuration(aws_client:aws_client(), get_auto_management_configuration_request(), proplists:proplist()) ->
    {ok, get_auto_management_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_auto_management_configuration_errors(), tuple()}.
get_auto_management_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAutoManagementConfiguration">>, Input, Options).

%% @doc Retrieves the default value for the specified quota.
%%
%% The default value does not
%% reflect any quota increases.
-spec get_aws_default_service_quota(aws_client:aws_client(), get_aws_default_service_quota_request()) ->
    {ok, get_aws_default_service_quota_response(), tuple()} |
    {error, any()} |
    {error, get_aws_default_service_quota_errors(), tuple()}.
get_aws_default_service_quota(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_aws_default_service_quota(Client, Input, []).

-spec get_aws_default_service_quota(aws_client:aws_client(), get_aws_default_service_quota_request(), proplists:proplist()) ->
    {ok, get_aws_default_service_quota_response(), tuple()} |
    {error, any()} |
    {error, get_aws_default_service_quota_errors(), tuple()}.
get_aws_default_service_quota(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAWSDefaultServiceQuota">>, Input, Options).

%% @doc Retrieves information about the specified quota increase request.
-spec get_requested_service_quota_change(aws_client:aws_client(), get_requested_service_quota_change_request()) ->
    {ok, get_requested_service_quota_change_response(), tuple()} |
    {error, any()} |
    {error, get_requested_service_quota_change_errors(), tuple()}.
get_requested_service_quota_change(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_requested_service_quota_change(Client, Input, []).

-spec get_requested_service_quota_change(aws_client:aws_client(), get_requested_service_quota_change_request(), proplists:proplist()) ->
    {ok, get_requested_service_quota_change_response(), tuple()} |
    {error, any()} |
    {error, get_requested_service_quota_change_errors(), tuple()}.
get_requested_service_quota_change(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRequestedServiceQuotaChange">>, Input, Options).

%% @doc Retrieves the applied quota value for the specified account-level or
%% resource-level
%% quota.
%%
%% For some quotas, only the default values are available. If the applied
%% quota
%% value is not available for a quota, the quota is not retrieved.
-spec get_service_quota(aws_client:aws_client(), get_service_quota_request()) ->
    {ok, get_service_quota_response(), tuple()} |
    {error, any()} |
    {error, get_service_quota_errors(), tuple()}.
get_service_quota(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_quota(Client, Input, []).

-spec get_service_quota(aws_client:aws_client(), get_service_quota_request(), proplists:proplist()) ->
    {ok, get_service_quota_response(), tuple()} |
    {error, any()} |
    {error, get_service_quota_errors(), tuple()}.
get_service_quota(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceQuota">>, Input, Options).

%% @doc Retrieves information about the specified quota increase request in
%% your quota request
%% template.
-spec get_service_quota_increase_request_from_template(aws_client:aws_client(), get_service_quota_increase_request_from_template_request()) ->
    {ok, get_service_quota_increase_request_from_template_response(), tuple()} |
    {error, any()} |
    {error, get_service_quota_increase_request_from_template_errors(), tuple()}.
get_service_quota_increase_request_from_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_quota_increase_request_from_template(Client, Input, []).

-spec get_service_quota_increase_request_from_template(aws_client:aws_client(), get_service_quota_increase_request_from_template_request(), proplists:proplist()) ->
    {ok, get_service_quota_increase_request_from_template_response(), tuple()} |
    {error, any()} |
    {error, get_service_quota_increase_request_from_template_errors(), tuple()}.
get_service_quota_increase_request_from_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceQuotaIncreaseRequestFromTemplate">>, Input, Options).

%% @doc Lists the default values for the quotas for the specified Amazon Web
%% Services service.
%%
%% A default
%% value does not reflect any quota increases.
-spec list_aws_default_service_quotas(aws_client:aws_client(), list_aws_default_service_quotas_request()) ->
    {ok, list_aws_default_service_quotas_response(), tuple()} |
    {error, any()} |
    {error, list_aws_default_service_quotas_errors(), tuple()}.
list_aws_default_service_quotas(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_aws_default_service_quotas(Client, Input, []).

-spec list_aws_default_service_quotas(aws_client:aws_client(), list_aws_default_service_quotas_request(), proplists:proplist()) ->
    {ok, list_aws_default_service_quotas_response(), tuple()} |
    {error, any()} |
    {error, list_aws_default_service_quotas_errors(), tuple()}.
list_aws_default_service_quotas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAWSDefaultServiceQuotas">>, Input, Options).

%% @doc Retrieves the quota increase requests for the specified Amazon Web
%% Services service.
%%
%% Filter
%% responses to return quota requests at either the account level, resource
%% level, or all
%% levels. Responses include any open or closed requests within 90 days.
-spec list_requested_service_quota_change_history(aws_client:aws_client(), list_requested_service_quota_change_history_request()) ->
    {ok, list_requested_service_quota_change_history_response(), tuple()} |
    {error, any()} |
    {error, list_requested_service_quota_change_history_errors(), tuple()}.
list_requested_service_quota_change_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_requested_service_quota_change_history(Client, Input, []).

-spec list_requested_service_quota_change_history(aws_client:aws_client(), list_requested_service_quota_change_history_request(), proplists:proplist()) ->
    {ok, list_requested_service_quota_change_history_response(), tuple()} |
    {error, any()} |
    {error, list_requested_service_quota_change_history_errors(), tuple()}.
list_requested_service_quota_change_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRequestedServiceQuotaChangeHistory">>, Input, Options).

%% @doc Retrieves the quota increase requests for the specified quota.
%%
%% Filter responses to
%% return quota requests at either the account level, resource level, or all
%% levels.
-spec list_requested_service_quota_change_history_by_quota(aws_client:aws_client(), list_requested_service_quota_change_history_by_quota_request()) ->
    {ok, list_requested_service_quota_change_history_by_quota_response(), tuple()} |
    {error, any()} |
    {error, list_requested_service_quota_change_history_by_quota_errors(), tuple()}.
list_requested_service_quota_change_history_by_quota(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_requested_service_quota_change_history_by_quota(Client, Input, []).

-spec list_requested_service_quota_change_history_by_quota(aws_client:aws_client(), list_requested_service_quota_change_history_by_quota_request(), proplists:proplist()) ->
    {ok, list_requested_service_quota_change_history_by_quota_response(), tuple()} |
    {error, any()} |
    {error, list_requested_service_quota_change_history_by_quota_errors(), tuple()}.
list_requested_service_quota_change_history_by_quota(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRequestedServiceQuotaChangeHistoryByQuota">>, Input, Options).

%% @doc Lists the quota increase requests in the specified quota request
%% template.
-spec list_service_quota_increase_requests_in_template(aws_client:aws_client(), list_service_quota_increase_requests_in_template_request()) ->
    {ok, list_service_quota_increase_requests_in_template_response(), tuple()} |
    {error, any()} |
    {error, list_service_quota_increase_requests_in_template_errors(), tuple()}.
list_service_quota_increase_requests_in_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_quota_increase_requests_in_template(Client, Input, []).

-spec list_service_quota_increase_requests_in_template(aws_client:aws_client(), list_service_quota_increase_requests_in_template_request(), proplists:proplist()) ->
    {ok, list_service_quota_increase_requests_in_template_response(), tuple()} |
    {error, any()} |
    {error, list_service_quota_increase_requests_in_template_errors(), tuple()}.
list_service_quota_increase_requests_in_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServiceQuotaIncreaseRequestsInTemplate">>, Input, Options).

%% @doc Lists the applied quota values for the specified Amazon Web Services
%% service.
%%
%% For some quotas, only
%% the default values are available. If the applied quota value is not
%% available for a
%% quota, the quota is not retrieved. Filter responses to return applied
%% quota values at
%% either the account level, resource level, or all levels.
-spec list_service_quotas(aws_client:aws_client(), list_service_quotas_request()) ->
    {ok, list_service_quotas_response(), tuple()} |
    {error, any()} |
    {error, list_service_quotas_errors(), tuple()}.
list_service_quotas(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_quotas(Client, Input, []).

-spec list_service_quotas(aws_client:aws_client(), list_service_quotas_request(), proplists:proplist()) ->
    {ok, list_service_quotas_response(), tuple()} |
    {error, any()} |
    {error, list_service_quotas_errors(), tuple()}.
list_service_quotas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServiceQuotas">>, Input, Options).

%% @doc Lists the names and codes for the Amazon Web Services services
%% integrated with Service Quotas.
-spec list_services(aws_client:aws_client(), list_services_request()) ->
    {ok, list_services_response(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_services(Client, Input, []).

-spec list_services(aws_client:aws_client(), list_services_request(), proplists:proplist()) ->
    {ok, list_services_response(), tuple()} |
    {error, any()} |
    {error, list_services_errors(), tuple()}.
list_services(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServices">>, Input, Options).

%% @doc Returns a list of the tags assigned to the specified applied quota.
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

%% @doc Adds a quota increase request to your quota request template.
-spec put_service_quota_increase_request_into_template(aws_client:aws_client(), put_service_quota_increase_request_into_template_request()) ->
    {ok, put_service_quota_increase_request_into_template_response(), tuple()} |
    {error, any()} |
    {error, put_service_quota_increase_request_into_template_errors(), tuple()}.
put_service_quota_increase_request_into_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_service_quota_increase_request_into_template(Client, Input, []).

-spec put_service_quota_increase_request_into_template(aws_client:aws_client(), put_service_quota_increase_request_into_template_request(), proplists:proplist()) ->
    {ok, put_service_quota_increase_request_into_template_response(), tuple()} |
    {error, any()} |
    {error, put_service_quota_increase_request_into_template_errors(), tuple()}.
put_service_quota_increase_request_into_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutServiceQuotaIncreaseRequestIntoTemplate">>, Input, Options).

%% @doc Submits a quota increase request for the specified quota at the
%% account or resource
%% level.
-spec request_service_quota_increase(aws_client:aws_client(), request_service_quota_increase_request()) ->
    {ok, request_service_quota_increase_response(), tuple()} |
    {error, any()} |
    {error, request_service_quota_increase_errors(), tuple()}.
request_service_quota_increase(Client, Input)
  when is_map(Client), is_map(Input) ->
    request_service_quota_increase(Client, Input, []).

-spec request_service_quota_increase(aws_client:aws_client(), request_service_quota_increase_request(), proplists:proplist()) ->
    {ok, request_service_quota_increase_response(), tuple()} |
    {error, any()} |
    {error, request_service_quota_increase_errors(), tuple()}.
request_service_quota_increase(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RequestServiceQuotaIncrease">>, Input, Options).

%% @doc Starts Service Quotas Automatic Management:
%% https://docs.aws.amazon.com/servicequotas/latest/userguide/automatic-management.html
%% for an Amazon Web Services account, including notification preferences
%% and excluded quotas configurations.
%%
%% Automatic Management monitors your Service Quotas utilization and notifies
%% you before you
%% run out of your allocated quotas.
-spec start_auto_management(aws_client:aws_client(), start_auto_management_request()) ->
    {ok, start_auto_management_response(), tuple()} |
    {error, any()} |
    {error, start_auto_management_errors(), tuple()}.
start_auto_management(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_auto_management(Client, Input, []).

-spec start_auto_management(aws_client:aws_client(), start_auto_management_request(), proplists:proplist()) ->
    {ok, start_auto_management_response(), tuple()} |
    {error, any()} |
    {error, start_auto_management_errors(), tuple()}.
start_auto_management(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartAutoManagement">>, Input, Options).

%% @doc Stops Service Quotas Automatic Management:
%% https://docs.aws.amazon.com/servicequotas/latest/userguide/automatic-management.html
%% for an Amazon Web Services account and removes all associated
%% configurations.
%%
%% Automatic Management monitors your Service Quotas utilization and notifies
%% you before you
%% run out of your allocated quotas.
-spec stop_auto_management(aws_client:aws_client(), stop_auto_management_request()) ->
    {ok, stop_auto_management_response(), tuple()} |
    {error, any()} |
    {error, stop_auto_management_errors(), tuple()}.
stop_auto_management(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_auto_management(Client, Input, []).

-spec stop_auto_management(aws_client:aws_client(), stop_auto_management_request(), proplists:proplist()) ->
    {ok, stop_auto_management_response(), tuple()} |
    {error, any()} |
    {error, stop_auto_management_errors(), tuple()}.
stop_auto_management(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopAutoManagement">>, Input, Options).

%% @doc Adds tags to the specified applied quota.
%%
%% You can include one or more tags to add to
%% the quota.
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

%% @doc Removes tags from the specified applied quota.
%%
%% You can specify one or more tags to
%% remove.
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

%% @doc Updates your Service Quotas Automatic Management:
%% https://docs.aws.amazon.com/servicequotas/latest/userguide/automatic-management.html
%% configuration, including notification preferences and
%% excluded quotas.
%%
%% Automatic Management monitors your Service Quotas utilization and notifies
%% you before you
%% run out of your allocated quotas.
-spec update_auto_management(aws_client:aws_client(), update_auto_management_request()) ->
    {ok, update_auto_management_response(), tuple()} |
    {error, any()} |
    {error, update_auto_management_errors(), tuple()}.
update_auto_management(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_auto_management(Client, Input, []).

-spec update_auto_management(aws_client:aws_client(), update_auto_management_request(), proplists:proplist()) ->
    {ok, update_auto_management_response(), tuple()} |
    {error, any()} |
    {error, update_auto_management_errors(), tuple()}.
update_auto_management(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAutoManagement">>, Input, Options).

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
    Client1 = Client#{service => <<"servicequotas">>},
    Host = build_host(<<"servicequotas">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"ServiceQuotasV20190624.", Action/binary>>}
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
