%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc License Manager makes it easier to manage licenses from software
%% vendors across multiple
%% Amazon Web Services accounts and on-premises servers.
-module(aws_license_manager).

-export([accept_grant/2,
         accept_grant/3,
         check_in_license/2,
         check_in_license/3,
         checkout_borrow_license/2,
         checkout_borrow_license/3,
         checkout_license/2,
         checkout_license/3,
         create_grant/2,
         create_grant/3,
         create_grant_version/2,
         create_grant_version/3,
         create_license/2,
         create_license/3,
         create_license_configuration/2,
         create_license_configuration/3,
         create_license_conversion_task_for_resource/2,
         create_license_conversion_task_for_resource/3,
         create_license_manager_report_generator/2,
         create_license_manager_report_generator/3,
         create_license_version/2,
         create_license_version/3,
         create_token/2,
         create_token/3,
         delete_grant/2,
         delete_grant/3,
         delete_license/2,
         delete_license/3,
         delete_license_configuration/2,
         delete_license_configuration/3,
         delete_license_manager_report_generator/2,
         delete_license_manager_report_generator/3,
         delete_token/2,
         delete_token/3,
         extend_license_consumption/2,
         extend_license_consumption/3,
         get_access_token/2,
         get_access_token/3,
         get_grant/2,
         get_grant/3,
         get_license/2,
         get_license/3,
         get_license_configuration/2,
         get_license_configuration/3,
         get_license_conversion_task/2,
         get_license_conversion_task/3,
         get_license_manager_report_generator/2,
         get_license_manager_report_generator/3,
         get_license_usage/2,
         get_license_usage/3,
         get_service_settings/2,
         get_service_settings/3,
         list_associations_for_license_configuration/2,
         list_associations_for_license_configuration/3,
         list_distributed_grants/2,
         list_distributed_grants/3,
         list_failures_for_license_configuration_operations/2,
         list_failures_for_license_configuration_operations/3,
         list_license_configurations/2,
         list_license_configurations/3,
         list_license_conversion_tasks/2,
         list_license_conversion_tasks/3,
         list_license_manager_report_generators/2,
         list_license_manager_report_generators/3,
         list_license_specifications_for_resource/2,
         list_license_specifications_for_resource/3,
         list_license_versions/2,
         list_license_versions/3,
         list_licenses/2,
         list_licenses/3,
         list_received_grants/2,
         list_received_grants/3,
         list_received_grants_for_organization/2,
         list_received_grants_for_organization/3,
         list_received_licenses/2,
         list_received_licenses/3,
         list_received_licenses_for_organization/2,
         list_received_licenses_for_organization/3,
         list_resource_inventory/2,
         list_resource_inventory/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_tokens/2,
         list_tokens/3,
         list_usage_for_license_configuration/2,
         list_usage_for_license_configuration/3,
         reject_grant/2,
         reject_grant/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_license_configuration/2,
         update_license_configuration/3,
         update_license_manager_report_generator/2,
         update_license_manager_report_generator/3,
         update_license_specifications_for_resource/2,
         update_license_specifications_for_resource/3,
         update_service_settings/2,
         update_service_settings/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% checkout_license_response() :: #{
%%   <<"CheckoutType">> => list(any()),
%%   <<"EntitlementsAllowed">> => list(entitlement_data()()),
%%   <<"Expiration">> => string(),
%%   <<"IssuedAt">> => string(),
%%   <<"LicenseArn">> => string(),
%%   <<"LicenseConsumptionToken">> => string(),
%%   <<"NodeId">> => string(),
%%   <<"SignedToken">> => string()
%% }
-type checkout_license_response() :: #{binary() => any()}.

%% Example:
%% check_in_license_request() :: #{
%%   <<"Beneficiary">> => string(),
%%   <<"LicenseConsumptionToken">> := string()
%% }
-type check_in_license_request() :: #{binary() => any()}.

%% Example:
%% report_frequency() :: #{
%%   <<"period">> => list(any()),
%%   <<"value">> => integer()
%% }
-type report_frequency() :: #{binary() => any()}.

%% Example:
%% get_access_token_response() :: #{
%%   <<"AccessToken">> => string()
%% }
-type get_access_token_response() :: #{binary() => any()}.

%% Example:
%% create_grant_version_request() :: #{
%%   <<"AllowedOperations">> => list(list(any())()),
%%   <<"ClientToken">> := string(),
%%   <<"GrantArn">> := string(),
%%   <<"GrantName">> => string(),
%%   <<"Options">> => options(),
%%   <<"SourceVersion">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string()
%% }
-type create_grant_version_request() :: #{binary() => any()}.

%% Example:
%% license_configuration() :: #{
%%   <<"AutomatedDiscoveryInformation">> => automated_discovery_information(),
%%   <<"ConsumedLicenseSummaryList">> => list(consumed_license_summary()()),
%%   <<"ConsumedLicenses">> => float(),
%%   <<"Description">> => string(),
%%   <<"DisassociateWhenNotFound">> => boolean(),
%%   <<"LicenseConfigurationArn">> => string(),
%%   <<"LicenseConfigurationId">> => string(),
%%   <<"LicenseCount">> => float(),
%%   <<"LicenseCountHardLimit">> => boolean(),
%%   <<"LicenseCountingType">> => list(any()),
%%   <<"LicenseRules">> => list(string()()),
%%   <<"ManagedResourceSummaryList">> => list(managed_resource_summary()()),
%%   <<"Name">> => string(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"ProductInformationList">> => list(product_information()()),
%%   <<"Status">> => string()
%% }
-type license_configuration() :: #{binary() => any()}.

%% Example:
%% list_received_grants_for_organization_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"LicenseArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_received_grants_for_organization_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% list_usage_for_license_configuration_response() :: #{
%%   <<"LicenseConfigurationUsageList">> => list(license_configuration_usage()()),
%%   <<"NextToken">> => string()
%% }
-type list_usage_for_license_configuration_response() :: #{binary() => any()}.

%% Example:
%% create_license_configuration_response() :: #{
%%   <<"LicenseConfigurationArn">> => string()
%% }
-type create_license_configuration_response() :: #{binary() => any()}.

%% Example:
%% filter_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type filter_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% get_license_request() :: #{
%%   <<"LicenseArn">> := string(),
%%   <<"Version">> => string()
%% }
-type get_license_request() :: #{binary() => any()}.

%% Example:
%% license_configuration_usage() :: #{
%%   <<"AssociationTime">> => non_neg_integer(),
%%   <<"ConsumedLicenses">> => float(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceOwnerId">> => string(),
%%   <<"ResourceStatus">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type license_configuration_usage() :: #{binary() => any()}.

%% Example:
%% list_license_conversion_tasks_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_license_conversion_tasks_request() :: #{binary() => any()}.

%% Example:
%% license_configuration_association() :: #{
%%   <<"AmiAssociationScope">> => string(),
%%   <<"AssociationTime">> => non_neg_integer(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceOwnerId">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type license_configuration_association() :: #{binary() => any()}.

%% Example:
%% list_license_configurations_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"LicenseConfigurationArns">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_license_configurations_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% license_usage() :: #{
%%   <<"EntitlementUsages">> => list(entitlement_usage()())
%% }
-type license_usage() :: #{binary() => any()}.

%% Example:
%% rate_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type rate_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% entitlement_not_allowed_exception() :: #{
%%   <<"Message">> => string()
%% }
-type entitlement_not_allowed_exception() :: #{binary() => any()}.

%% Example:
%% list_received_licenses_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"LicenseArns">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_received_licenses_request() :: #{binary() => any()}.

%% Example:
%% license_usage_exception() :: #{
%%   <<"Message">> => string()
%% }
-type license_usage_exception() :: #{binary() => any()}.

%% Example:
%% failed_dependency_exception() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type failed_dependency_exception() :: #{binary() => any()}.

%% Example:
%% list_licenses_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"LicenseArns">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_licenses_request() :: #{binary() => any()}.

%% Example:
%% organization_configuration() :: #{
%%   <<"EnableIntegration">> => boolean()
%% }
-type organization_configuration() :: #{binary() => any()}.

%% Example:
%% get_license_conversion_task_response() :: #{
%%   <<"DestinationLicenseContext">> => license_conversion_context(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"LicenseConversionTaskId">> => string(),
%%   <<"LicenseConversionTime">> => non_neg_integer(),
%%   <<"ResourceArn">> => string(),
%%   <<"SourceLicenseContext">> => license_conversion_context(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type get_license_conversion_task_response() :: #{binary() => any()}.

%% Example:
%% license() :: #{
%%   <<"Beneficiary">> => string(),
%%   <<"ConsumptionConfiguration">> => consumption_configuration(),
%%   <<"CreateTime">> => string(),
%%   <<"Entitlements">> => list(entitlement()()),
%%   <<"HomeRegion">> => string(),
%%   <<"Issuer">> => issuer_details(),
%%   <<"LicenseArn">> => string(),
%%   <<"LicenseMetadata">> => list(metadata()()),
%%   <<"LicenseName">> => string(),
%%   <<"ProductName">> => string(),
%%   <<"ProductSKU">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Validity">> => datetime_range(),
%%   <<"Version">> => string()
%% }
-type license() :: #{binary() => any()}.

%% Example:
%% license_specification() :: #{
%%   <<"AmiAssociationScope">> => string(),
%%   <<"LicenseConfigurationArn">> => string()
%% }
-type license_specification() :: #{binary() => any()}.

%% Example:
%% delete_token_response() :: #{

%% }
-type delete_token_response() :: #{binary() => any()}.

%% Example:
%% inventory_filter() :: #{
%%   <<"Condition">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type inventory_filter() :: #{binary() => any()}.

%% Example:
%% metadata() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type metadata() :: #{binary() => any()}.

%% Example:
%% list_license_versions_response() :: #{
%%   <<"Licenses">> => list(license()()),
%%   <<"NextToken">> => string()
%% }
-type list_license_versions_response() :: #{binary() => any()}.

%% Example:
%% list_license_manager_report_generators_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_license_manager_report_generators_request() :: #{binary() => any()}.

%% Example:
%% list_received_licenses_for_organization_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_received_licenses_for_organization_request() :: #{binary() => any()}.

%% Example:
%% list_licenses_response() :: #{
%%   <<"Licenses">> => list(license()()),
%%   <<"NextToken">> => string()
%% }
-type list_licenses_response() :: #{binary() => any()}.

%% Example:
%% create_license_version_request() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"ConsumptionConfiguration">> := consumption_configuration(),
%%   <<"Entitlements">> := list(entitlement()()),
%%   <<"HomeRegion">> := string(),
%%   <<"Issuer">> := issuer(),
%%   <<"LicenseArn">> := string(),
%%   <<"LicenseMetadata">> => list(metadata()()),
%%   <<"LicenseName">> := string(),
%%   <<"ProductName">> := string(),
%%   <<"SourceVersion">> => string(),
%%   <<"Status">> := list(any()),
%%   <<"Validity">> := datetime_range()
%% }
-type create_license_version_request() :: #{binary() => any()}.

%% Example:
%% no_entitlements_allowed_exception() :: #{
%%   <<"Message">> => string()
%% }
-type no_entitlements_allowed_exception() :: #{binary() => any()}.

%% Example:
%% get_license_usage_request() :: #{
%%   <<"LicenseArn">> := string()
%% }
-type get_license_usage_request() :: #{binary() => any()}.

%% Example:
%% list_distributed_grants_response() :: #{
%%   <<"Grants">> => list(grant()()),
%%   <<"NextToken">> => string()
%% }
-type list_distributed_grants_response() :: #{binary() => any()}.

%% Example:
%% update_license_configuration_response() :: #{

%% }
-type update_license_configuration_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% managed_resource_summary() :: #{
%%   <<"AssociationCount">> => float(),
%%   <<"ResourceType">> => list(any())
%% }
-type managed_resource_summary() :: #{binary() => any()}.

%% Example:
%% datetime_range() :: #{
%%   <<"Begin">> => string(),
%%   <<"End">> => string()
%% }
-type datetime_range() :: #{binary() => any()}.

%% Example:
%% update_license_manager_report_generator_response() :: #{

%% }
-type update_license_manager_report_generator_response() :: #{binary() => any()}.

%% Example:
%% consumption_configuration() :: #{
%%   <<"BorrowConfiguration">> => borrow_configuration(),
%%   <<"ProvisionalConfiguration">> => provisional_configuration(),
%%   <<"RenewType">> => list(any())
%% }
-type consumption_configuration() :: #{binary() => any()}.

%% Example:
%% get_grant_response() :: #{
%%   <<"Grant">> => grant()
%% }
-type get_grant_response() :: #{binary() => any()}.

%% Example:
%% list_failures_for_license_configuration_operations_response() :: #{
%%   <<"LicenseOperationFailureList">> => list(license_operation_failure()()),
%%   <<"NextToken">> => string()
%% }
-type list_failures_for_license_configuration_operations_response() :: #{binary() => any()}.

%% Example:
%% update_license_specifications_for_resource_response() :: #{

%% }
-type update_license_specifications_for_resource_response() :: #{binary() => any()}.

%% Example:
%% create_license_request() :: #{
%%   <<"Beneficiary">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"ConsumptionConfiguration">> := consumption_configuration(),
%%   <<"Entitlements">> := list(entitlement()()),
%%   <<"HomeRegion">> := string(),
%%   <<"Issuer">> := issuer(),
%%   <<"LicenseMetadata">> => list(metadata()()),
%%   <<"LicenseName">> := string(),
%%   <<"ProductName">> := string(),
%%   <<"ProductSKU">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Validity">> := datetime_range()
%% }
-type create_license_request() :: #{binary() => any()}.

%% Example:
%% delete_license_manager_report_generator_request() :: #{
%%   <<"LicenseManagerReportGeneratorArn">> := string()
%% }
-type delete_license_manager_report_generator_request() :: #{binary() => any()}.

%% Example:
%% options() :: #{
%%   <<"ActivationOverrideBehavior">> => list(any())
%% }
-type options() :: #{binary() => any()}.

%% Example:
%% received_metadata() :: #{
%%   <<"AllowedOperations">> => list(list(any())()),
%%   <<"ReceivedStatus">> => list(any()),
%%   <<"ReceivedStatusReason">> => string()
%% }
-type received_metadata() :: #{binary() => any()}.

%% Example:
%% reject_grant_request() :: #{
%%   <<"GrantArn">> := string()
%% }
-type reject_grant_request() :: #{binary() => any()}.

%% Example:
%% list_distributed_grants_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"GrantArns">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_distributed_grants_request() :: #{binary() => any()}.

%% Example:
%% reject_grant_response() :: #{
%%   <<"GrantArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Version">> => string()
%% }
-type reject_grant_response() :: #{binary() => any()}.

%% Example:
%% list_received_grants_for_organization_response() :: #{
%%   <<"Grants">> => list(grant()()),
%%   <<"NextToken">> => string()
%% }
-type list_received_grants_for_organization_response() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% list_license_configurations_response() :: #{
%%   <<"LicenseConfigurations">> => list(license_configuration()()),
%%   <<"NextToken">> => string()
%% }
-type list_license_configurations_response() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% redirect_exception() :: #{
%%   <<"Location">> => string(),
%%   <<"Message">> => string()
%% }
-type redirect_exception() :: #{binary() => any()}.

%% Example:
%% get_license_response() :: #{
%%   <<"License">> => license()
%% }
-type get_license_response() :: #{binary() => any()}.

%% Example:
%% grant() :: #{
%%   <<"GrantArn">> => string(),
%%   <<"GrantName">> => string(),
%%   <<"GrantStatus">> => list(any()),
%%   <<"GrantedOperations">> => list(list(any())()),
%%   <<"GranteePrincipalArn">> => string(),
%%   <<"HomeRegion">> => string(),
%%   <<"LicenseArn">> => string(),
%%   <<"Options">> => options(),
%%   <<"ParentArn">> => string(),
%%   <<"StatusReason">> => string(),
%%   <<"Version">> => string()
%% }
-type grant() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% update_service_settings_response() :: #{

%% }
-type update_service_settings_response() :: #{binary() => any()}.

%% Example:
%% create_license_version_response() :: #{
%%   <<"LicenseArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Version">> => string()
%% }
-type create_license_version_response() :: #{binary() => any()}.

%% Example:
%% create_license_response() :: #{
%%   <<"LicenseArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Version">> => string()
%% }
-type create_license_response() :: #{binary() => any()}.

%% Example:
%% get_grant_request() :: #{
%%   <<"GrantArn">> := string(),
%%   <<"Version">> => string()
%% }
-type get_grant_request() :: #{binary() => any()}.

%% Example:
%% update_license_configuration_request() :: #{
%%   <<"Description">> => string(),
%%   <<"DisassociateWhenNotFound">> => boolean(),
%%   <<"LicenseConfigurationArn">> := string(),
%%   <<"LicenseConfigurationStatus">> => list(any()),
%%   <<"LicenseCount">> => float(),
%%   <<"LicenseCountHardLimit">> => boolean(),
%%   <<"LicenseRules">> => list(string()()),
%%   <<"Name">> => string(),
%%   <<"ProductInformationList">> => list(product_information()())
%% }
-type update_license_configuration_request() :: #{binary() => any()}.

%% Example:
%% create_grant_request() :: #{
%%   <<"AllowedOperations">> := list(list(any())()),
%%   <<"ClientToken">> := string(),
%%   <<"GrantName">> := string(),
%%   <<"HomeRegion">> := string(),
%%   <<"LicenseArn">> := string(),
%%   <<"Principals">> := list(string()()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_grant_request() :: #{binary() => any()}.

%% Example:
%% get_license_conversion_task_request() :: #{
%%   <<"LicenseConversionTaskId">> := string()
%% }
-type get_license_conversion_task_request() :: #{binary() => any()}.

%% Example:
%% accept_grant_request() :: #{
%%   <<"GrantArn">> := string()
%% }
-type accept_grant_request() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_value_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_parameter_value_exception() :: #{binary() => any()}.

%% Example:
%% resource_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% automated_discovery_information() :: #{
%%   <<"LastRunTime">> => non_neg_integer()
%% }
-type automated_discovery_information() :: #{binary() => any()}.

%% Example:
%% product_information() :: #{
%%   <<"ProductInformationFilterList">> => list(product_information_filter()()),
%%   <<"ResourceType">> => string()
%% }
-type product_information() :: #{binary() => any()}.

%% Example:
%% token_data() :: #{
%%   <<"ExpirationTime">> => string(),
%%   <<"LicenseArn">> => string(),
%%   <<"RoleArns">> => list(string()()),
%%   <<"Status">> => string(),
%%   <<"TokenId">> => string(),
%%   <<"TokenProperties">> => list(string()()),
%%   <<"TokenType">> => string()
%% }
-type token_data() :: #{binary() => any()}.

%% Example:
%% delete_license_configuration_response() :: #{

%% }
-type delete_license_configuration_response() :: #{binary() => any()}.

%% Example:
%% list_failures_for_license_configuration_operations_request() :: #{
%%   <<"LicenseConfigurationArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_failures_for_license_configuration_operations_request() :: #{binary() => any()}.

%% Example:
%% extend_license_consumption_request() :: #{
%%   <<"DryRun">> => boolean(),
%%   <<"LicenseConsumptionToken">> := string()
%% }
-type extend_license_consumption_request() :: #{binary() => any()}.

%% Example:
%% delete_token_request() :: #{
%%   <<"TokenId">> := string()
%% }
-type delete_token_request() :: #{binary() => any()}.

%% Example:
%% delete_grant_request() :: #{
%%   <<"GrantArn">> := string(),
%%   <<"StatusReason">> => string(),
%%   <<"Version">> := string()
%% }
-type delete_grant_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% list_license_specifications_for_resource_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceArn">> := string()
%% }
-type list_license_specifications_for_resource_request() :: #{binary() => any()}.

%% Example:
%% get_license_manager_report_generator_response() :: #{
%%   <<"ReportGenerator">> => report_generator()
%% }
-type get_license_manager_report_generator_response() :: #{binary() => any()}.

%% Example:
%% consumed_license_summary() :: #{
%%   <<"ConsumedLicenses">> => float(),
%%   <<"ResourceType">> => list(any())
%% }
-type consumed_license_summary() :: #{binary() => any()}.

%% Example:
%% s3_location() :: #{
%%   <<"bucket">> => string(),
%%   <<"keyPrefix">> => string()
%% }
-type s3_location() :: #{binary() => any()}.

%% Example:
%% create_license_manager_report_generator_response() :: #{
%%   <<"LicenseManagerReportGeneratorArn">> => string()
%% }
-type create_license_manager_report_generator_response() :: #{binary() => any()}.

%% Example:
%% license_conversion_context() :: #{
%%   <<"ProductCodes">> => list(product_code_list_item()()),
%%   <<"UsageOperation">> => string()
%% }
-type license_conversion_context() :: #{binary() => any()}.

%% Example:
%% invalid_resource_state_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_resource_state_exception() :: #{binary() => any()}.

%% Example:
%% list_resource_inventory_request() :: #{
%%   <<"Filters">> => list(inventory_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_resource_inventory_request() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% accept_grant_response() :: #{
%%   <<"GrantArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Version">> => string()
%% }
-type accept_grant_response() :: #{binary() => any()}.

%% Example:
%% list_license_conversion_tasks_response() :: #{
%%   <<"LicenseConversionTasks">> => list(license_conversion_task()()),
%%   <<"NextToken">> => string()
%% }
-type list_license_conversion_tasks_response() :: #{binary() => any()}.

%% Example:
%% borrow_configuration() :: #{
%%   <<"AllowEarlyCheckIn">> => boolean(),
%%   <<"MaxTimeToLiveInMinutes">> => integer()
%% }
-type borrow_configuration() :: #{binary() => any()}.

%% Example:
%% list_received_licenses_for_organization_response() :: #{
%%   <<"Licenses">> => list(granted_license()()),
%%   <<"NextToken">> => string()
%% }
-type list_received_licenses_for_organization_response() :: #{binary() => any()}.

%% Example:
%% list_resource_inventory_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceInventoryList">> => list(resource_inventory()())
%% }
-type list_resource_inventory_response() :: #{binary() => any()}.

%% Example:
%% create_license_configuration_request() :: #{
%%   <<"Description">> => string(),
%%   <<"DisassociateWhenNotFound">> => boolean(),
%%   <<"LicenseCount">> => float(),
%%   <<"LicenseCountHardLimit">> => boolean(),
%%   <<"LicenseCountingType">> := list(any()),
%%   <<"LicenseRules">> => list(string()()),
%%   <<"Name">> := string(),
%%   <<"ProductInformationList">> => list(product_information()()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_license_configuration_request() :: #{binary() => any()}.

%% Example:
%% delete_grant_response() :: #{
%%   <<"GrantArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Version">> => string()
%% }
-type delete_grant_response() :: #{binary() => any()}.

%% Example:
%% authorization_exception() :: #{
%%   <<"Message">> => string()
%% }
-type authorization_exception() :: #{binary() => any()}.

%% Example:
%% entitlement() :: #{
%%   <<"AllowCheckIn">> => boolean(),
%%   <<"MaxCount">> => float(),
%%   <<"Name">> => string(),
%%   <<"Overage">> => boolean(),
%%   <<"Unit">> => list(any()),
%%   <<"Value">> => string()
%% }
-type entitlement() :: #{binary() => any()}.

%% Example:
%% checkout_borrow_license_response() :: #{
%%   <<"CheckoutMetadata">> => list(metadata()()),
%%   <<"EntitlementsAllowed">> => list(entitlement_data()()),
%%   <<"Expiration">> => string(),
%%   <<"IssuedAt">> => string(),
%%   <<"LicenseArn">> => string(),
%%   <<"LicenseConsumptionToken">> => string(),
%%   <<"NodeId">> => string(),
%%   <<"SignedToken">> => string()
%% }
-type checkout_borrow_license_response() :: #{binary() => any()}.

%% Example:
%% create_license_manager_report_generator_request() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"Description">> => string(),
%%   <<"ReportContext">> := report_context(),
%%   <<"ReportFrequency">> := report_frequency(),
%%   <<"ReportGeneratorName">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Type">> := list(list(any())())
%% }
-type create_license_manager_report_generator_request() :: #{binary() => any()}.

%% Example:
%% product_code_list_item() :: #{
%%   <<"ProductCodeId">> => string(),
%%   <<"ProductCodeType">> => list(any())
%% }
-type product_code_list_item() :: #{binary() => any()}.

%% Example:
%% get_license_configuration_response() :: #{
%%   <<"AutomatedDiscoveryInformation">> => automated_discovery_information(),
%%   <<"ConsumedLicenseSummaryList">> => list(consumed_license_summary()()),
%%   <<"ConsumedLicenses">> => float(),
%%   <<"Description">> => string(),
%%   <<"DisassociateWhenNotFound">> => boolean(),
%%   <<"LicenseConfigurationArn">> => string(),
%%   <<"LicenseConfigurationId">> => string(),
%%   <<"LicenseCount">> => float(),
%%   <<"LicenseCountHardLimit">> => boolean(),
%%   <<"LicenseCountingType">> => list(any()),
%%   <<"LicenseRules">> => list(string()()),
%%   <<"ManagedResourceSummaryList">> => list(managed_resource_summary()()),
%%   <<"Name">> => string(),
%%   <<"OwnerAccountId">> => string(),
%%   <<"ProductInformationList">> => list(product_information()()),
%%   <<"Status">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type get_license_configuration_response() :: #{binary() => any()}.

%% Example:
%% list_received_licenses_response() :: #{
%%   <<"Licenses">> => list(granted_license()()),
%%   <<"NextToken">> => string()
%% }
-type list_received_licenses_response() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% license_conversion_task() :: #{
%%   <<"DestinationLicenseContext">> => license_conversion_context(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"LicenseConversionTaskId">> => string(),
%%   <<"LicenseConversionTime">> => non_neg_integer(),
%%   <<"ResourceArn">> => string(),
%%   <<"SourceLicenseContext">> => license_conversion_context(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type license_conversion_task() :: #{binary() => any()}.

%% Example:
%% delete_license_response() :: #{
%%   <<"DeletionDate">> => string(),
%%   <<"Status">> => list(any())
%% }
-type delete_license_response() :: #{binary() => any()}.

%% Example:
%% entitlement_usage() :: #{
%%   <<"ConsumedValue">> => string(),
%%   <<"MaxCount">> => string(),
%%   <<"Name">> => string(),
%%   <<"Unit">> => list(any())
%% }
-type entitlement_usage() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% issuer() :: #{
%%   <<"Name">> => string(),
%%   <<"SignKey">> => string()
%% }
-type issuer() :: #{binary() => any()}.

%% Example:
%% report_context() :: #{
%%   <<"licenseConfigurationArns">> => list(string()())
%% }
-type report_context() :: #{binary() => any()}.

%% Example:
%% delete_license_configuration_request() :: #{
%%   <<"LicenseConfigurationArn">> := string()
%% }
-type delete_license_configuration_request() :: #{binary() => any()}.

%% Example:
%% list_usage_for_license_configuration_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"LicenseConfigurationArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_usage_for_license_configuration_request() :: #{binary() => any()}.

%% Example:
%% server_internal_exception() :: #{
%%   <<"Message">> => string()
%% }
-type server_internal_exception() :: #{binary() => any()}.

%% Example:
%% delete_license_request() :: #{
%%   <<"LicenseArn">> := string(),
%%   <<"SourceVersion">> := string()
%% }
-type delete_license_request() :: #{binary() => any()}.

%% Example:
%% report_generator() :: #{
%%   <<"CreateTime">> => string(),
%%   <<"Description">> => string(),
%%   <<"LastReportGenerationTime">> => string(),
%%   <<"LastRunFailureReason">> => string(),
%%   <<"LastRunStatus">> => string(),
%%   <<"LicenseManagerReportGeneratorArn">> => string(),
%%   <<"ReportContext">> => report_context(),
%%   <<"ReportCreatorAccount">> => string(),
%%   <<"ReportFrequency">> => report_frequency(),
%%   <<"ReportGeneratorName">> => string(),
%%   <<"ReportType">> => list(list(any())()),
%%   <<"S3Location">> => s3_location(),
%%   <<"Tags">> => list(tag()())
%% }
-type report_generator() :: #{binary() => any()}.

%% Example:
%% get_license_configuration_request() :: #{
%%   <<"LicenseConfigurationArn">> := string()
%% }
-type get_license_configuration_request() :: #{binary() => any()}.

%% Example:
%% list_received_grants_response() :: #{
%%   <<"Grants">> => list(grant()()),
%%   <<"NextToken">> => string()
%% }
-type list_received_grants_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% check_in_license_response() :: #{

%% }
-type check_in_license_response() :: #{binary() => any()}.

%% Example:
%% extend_license_consumption_response() :: #{
%%   <<"Expiration">> => string(),
%%   <<"LicenseConsumptionToken">> => string()
%% }
-type extend_license_consumption_response() :: #{binary() => any()}.

%% Example:
%% granted_license() :: #{
%%   <<"Beneficiary">> => string(),
%%   <<"ConsumptionConfiguration">> => consumption_configuration(),
%%   <<"CreateTime">> => string(),
%%   <<"Entitlements">> => list(entitlement()()),
%%   <<"HomeRegion">> => string(),
%%   <<"Issuer">> => issuer_details(),
%%   <<"LicenseArn">> => string(),
%%   <<"LicenseMetadata">> => list(metadata()()),
%%   <<"LicenseName">> => string(),
%%   <<"ProductName">> => string(),
%%   <<"ProductSKU">> => string(),
%%   <<"ReceivedMetadata">> => received_metadata(),
%%   <<"Status">> => list(any()),
%%   <<"Validity">> => datetime_range(),
%%   <<"Version">> => string()
%% }
-type granted_license() :: #{binary() => any()}.

%% Example:
%% create_grant_version_response() :: #{
%%   <<"GrantArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Version">> => string()
%% }
-type create_grant_version_response() :: #{binary() => any()}.

%% Example:
%% update_license_specifications_for_resource_request() :: #{
%%   <<"AddLicenseSpecifications">> => list(license_specification()()),
%%   <<"RemoveLicenseSpecifications">> => list(license_specification()()),
%%   <<"ResourceArn">> := string()
%% }
-type update_license_specifications_for_resource_request() :: #{binary() => any()}.

%% Example:
%% license_operation_failure() :: #{
%%   <<"ErrorMessage">> => string(),
%%   <<"FailureTime">> => non_neg_integer(),
%%   <<"MetadataList">> => list(metadata()()),
%%   <<"OperationName">> => string(),
%%   <<"OperationRequestedBy">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceOwnerId">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type license_operation_failure() :: #{binary() => any()}.

%% Example:
%% get_service_settings_response() :: #{
%%   <<"EnableCrossAccountsDiscovery">> => boolean(),
%%   <<"LicenseManagerResourceShareArn">> => string(),
%%   <<"OrganizationConfiguration">> => organization_configuration(),
%%   <<"S3BucketArn">> => string(),
%%   <<"SnsTopicArn">> => string()
%% }
-type get_service_settings_response() :: #{binary() => any()}.

%% Example:
%% get_access_token_request() :: #{
%%   <<"Token">> := string(),
%%   <<"TokenProperties">> => list(string()())
%% }
-type get_access_token_request() :: #{binary() => any()}.

%% Example:
%% list_received_grants_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"GrantArns">> => list(string()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_received_grants_request() :: #{binary() => any()}.

%% Example:
%% create_license_conversion_task_for_resource_response() :: #{
%%   <<"LicenseConversionTaskId">> => string()
%% }
-type create_license_conversion_task_for_resource_response() :: #{binary() => any()}.

%% Example:
%% list_license_specifications_for_resource_response() :: #{
%%   <<"LicenseSpecifications">> => list(license_specification()()),
%%   <<"NextToken">> => string()
%% }
-type list_license_specifications_for_resource_response() :: #{binary() => any()}.

%% Example:
%% checkout_license_request() :: #{
%%   <<"Beneficiary">> => string(),
%%   <<"CheckoutType">> := list(any()),
%%   <<"ClientToken">> := string(),
%%   <<"Entitlements">> := list(entitlement_data()()),
%%   <<"KeyFingerprint">> := string(),
%%   <<"NodeId">> => string(),
%%   <<"ProductSKU">> := string()
%% }
-type checkout_license_request() :: #{binary() => any()}.

%% Example:
%% resource_inventory() :: #{
%%   <<"Platform">> => string(),
%%   <<"PlatformVersion">> => string(),
%%   <<"ResourceArn">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceOwningAccountId">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type resource_inventory() :: #{binary() => any()}.

%% Example:
%% list_associations_for_license_configuration_request() :: #{
%%   <<"LicenseConfigurationArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_associations_for_license_configuration_request() :: #{binary() => any()}.

%% Example:
%% create_license_conversion_task_for_resource_request() :: #{
%%   <<"DestinationLicenseContext">> := license_conversion_context(),
%%   <<"ResourceArn">> := string(),
%%   <<"SourceLicenseContext">> := license_conversion_context()
%% }
-type create_license_conversion_task_for_resource_request() :: #{binary() => any()}.

%% Example:
%% update_license_manager_report_generator_request() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"Description">> => string(),
%%   <<"LicenseManagerReportGeneratorArn">> := string(),
%%   <<"ReportContext">> := report_context(),
%%   <<"ReportFrequency">> := report_frequency(),
%%   <<"ReportGeneratorName">> := string(),
%%   <<"Type">> := list(list(any())())
%% }
-type update_license_manager_report_generator_request() :: #{binary() => any()}.

%% Example:
%% product_information_filter() :: #{
%%   <<"ProductInformationFilterComparator">> => string(),
%%   <<"ProductInformationFilterName">> => string(),
%%   <<"ProductInformationFilterValue">> => list(string()())
%% }
-type product_information_filter() :: #{binary() => any()}.

%% Example:
%% get_service_settings_request() :: #{

%% }
-type get_service_settings_request() :: #{binary() => any()}.

%% Example:
%% create_token_response() :: #{
%%   <<"Token">> => string(),
%%   <<"TokenId">> => string(),
%%   <<"TokenType">> => list(any())
%% }
-type create_token_response() :: #{binary() => any()}.

%% Example:
%% unsupported_digital_signature_method_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_digital_signature_method_exception() :: #{binary() => any()}.

%% Example:
%% issuer_details() :: #{
%%   <<"KeyFingerprint">> => string(),
%%   <<"Name">> => string(),
%%   <<"SignKey">> => string()
%% }
-type issuer_details() :: #{binary() => any()}.

%% Example:
%% get_license_usage_response() :: #{
%%   <<"LicenseUsage">> => license_usage()
%% }
-type get_license_usage_response() :: #{binary() => any()}.

%% Example:
%% list_tokens_request() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TokenIds">> => list(string()())
%% }
-type list_tokens_request() :: #{binary() => any()}.

%% Example:
%% checkout_borrow_license_request() :: #{
%%   <<"CheckoutMetadata">> => list(metadata()()),
%%   <<"ClientToken">> := string(),
%%   <<"DigitalSignatureMethod">> := list(any()),
%%   <<"Entitlements">> := list(entitlement_data()()),
%%   <<"LicenseArn">> := string(),
%%   <<"NodeId">> => string()
%% }
-type checkout_borrow_license_request() :: #{binary() => any()}.

%% Example:
%% create_token_request() :: #{
%%   <<"ClientToken">> := string(),
%%   <<"ExpirationInDays">> => integer(),
%%   <<"LicenseArn">> := string(),
%%   <<"RoleArns">> => list(string()()),
%%   <<"TokenProperties">> => list(string()())
%% }
-type create_token_request() :: #{binary() => any()}.

%% Example:
%% list_license_manager_report_generators_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ReportGenerators">> => list(report_generator()())
%% }
-type list_license_manager_report_generators_response() :: #{binary() => any()}.

%% Example:
%% create_grant_response() :: #{
%%   <<"GrantArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Version">> => string()
%% }
-type create_grant_response() :: #{binary() => any()}.

%% Example:
%% provisional_configuration() :: #{
%%   <<"MaxTimeToLiveInMinutes">> => integer()
%% }
-type provisional_configuration() :: #{binary() => any()}.

%% Example:
%% get_license_manager_report_generator_request() :: #{
%%   <<"LicenseManagerReportGeneratorArn">> := string()
%% }
-type get_license_manager_report_generator_request() :: #{binary() => any()}.

%% Example:
%% delete_license_manager_report_generator_response() :: #{

%% }
-type delete_license_manager_report_generator_response() :: #{binary() => any()}.

%% Example:
%% update_service_settings_request() :: #{
%%   <<"EnableCrossAccountsDiscovery">> => boolean(),
%%   <<"OrganizationConfiguration">> => organization_configuration(),
%%   <<"S3BucketArn">> => string(),
%%   <<"SnsTopicArn">> => string()
%% }
-type update_service_settings_request() :: #{binary() => any()}.

%% Example:
%% entitlement_data() :: #{
%%   <<"Name">> => string(),
%%   <<"Unit">> => list(any()),
%%   <<"Value">> => string()
%% }
-type entitlement_data() :: #{binary() => any()}.

%% Example:
%% list_license_versions_request() :: #{
%%   <<"LicenseArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_license_versions_request() :: #{binary() => any()}.

%% Example:
%% list_tokens_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tokens">> => list(token_data()())
%% }
-type list_tokens_response() :: #{binary() => any()}.

%% Example:
%% list_associations_for_license_configuration_response() :: #{
%%   <<"LicenseConfigurationAssociations">> => list(license_configuration_association()()),
%%   <<"NextToken">> => string()
%% }
-type list_associations_for_license_configuration_response() :: #{binary() => any()}.

-type accept_grant_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type check_in_license_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    rate_limit_exceeded_exception().

-type checkout_borrow_license_errors() ::
    unsupported_digital_signature_method_exception() | 
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    redirect_exception() | 
    resource_not_found_exception() | 
    no_entitlements_allowed_exception() | 
    entitlement_not_allowed_exception() | 
    rate_limit_exceeded_exception().

-type checkout_license_errors() ::
    unsupported_digital_signature_method_exception() | 
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    redirect_exception() | 
    resource_not_found_exception() | 
    no_entitlements_allowed_exception() | 
    rate_limit_exceeded_exception().

-type create_grant_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type create_grant_version_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type create_license_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    redirect_exception() | 
    rate_limit_exceeded_exception().

-type create_license_configuration_errors() ::
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type create_license_conversion_task_for_resource_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type create_license_manager_report_generator_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    rate_limit_exceeded_exception().

-type create_license_version_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    redirect_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    rate_limit_exceeded_exception().

-type create_token_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    resource_limit_exceeded_exception() | 
    redirect_exception() | 
    resource_not_found_exception() | 
    rate_limit_exceeded_exception().

-type delete_grant_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type delete_license_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    redirect_exception() | 
    conflict_exception() | 
    rate_limit_exceeded_exception().

-type delete_license_configuration_errors() ::
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type delete_license_manager_report_generator_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    rate_limit_exceeded_exception().

-type delete_token_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    redirect_exception() | 
    resource_not_found_exception() | 
    rate_limit_exceeded_exception().

-type extend_license_consumption_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    rate_limit_exceeded_exception().

-type get_access_token_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    rate_limit_exceeded_exception().

-type get_grant_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type get_license_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type get_license_configuration_errors() ::
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type get_license_conversion_task_errors() ::
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type get_license_manager_report_generator_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    rate_limit_exceeded_exception().

-type get_license_usage_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type get_service_settings_errors() ::
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    rate_limit_exceeded_exception().

-type list_associations_for_license_configuration_errors() ::
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception() | 
    filter_limit_exceeded_exception().

-type list_distributed_grants_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type list_failures_for_license_configuration_operations_errors() ::
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type list_license_configurations_errors() ::
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception() | 
    filter_limit_exceeded_exception().

-type list_license_conversion_tasks_errors() ::
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type list_license_manager_report_generators_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    rate_limit_exceeded_exception().

-type list_license_specifications_for_resource_errors() ::
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type list_license_versions_errors() ::
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type list_licenses_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type list_received_grants_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type list_received_grants_for_organization_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type list_received_licenses_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type list_received_licenses_for_organization_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type list_resource_inventory_errors() ::
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    failed_dependency_exception() | 
    rate_limit_exceeded_exception() | 
    filter_limit_exceeded_exception().

-type list_tags_for_resource_errors() ::
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type list_tokens_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    rate_limit_exceeded_exception().

-type list_usage_for_license_configuration_errors() ::
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception() | 
    filter_limit_exceeded_exception().

-type reject_grant_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type tag_resource_errors() ::
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type untag_resource_errors() ::
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

-type update_license_configuration_errors() ::
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    conflict_exception() | 
    rate_limit_exceeded_exception().

-type update_license_manager_report_generator_errors() ::
    validation_exception() | 
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_parameter_value_exception() | 
    resource_not_found_exception() | 
    rate_limit_exceeded_exception().

-type update_license_specifications_for_resource_errors() ::
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_resource_state_exception() | 
    invalid_parameter_value_exception() | 
    conflict_exception() | 
    license_usage_exception() | 
    rate_limit_exceeded_exception().

-type update_service_settings_errors() ::
    server_internal_exception() | 
    access_denied_exception() | 
    authorization_exception() | 
    invalid_parameter_value_exception() | 
    rate_limit_exceeded_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts the specified grant.
-spec accept_grant(aws_client:aws_client(), accept_grant_request()) ->
    {ok, accept_grant_response(), tuple()} |
    {error, any()} |
    {error, accept_grant_errors(), tuple()}.
accept_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_grant(Client, Input, []).

-spec accept_grant(aws_client:aws_client(), accept_grant_request(), proplists:proplist()) ->
    {ok, accept_grant_response(), tuple()} |
    {error, any()} |
    {error, accept_grant_errors(), tuple()}.
accept_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptGrant">>, Input, Options).

%% @doc Checks in the specified license.
%%
%% Check in a license when it is no longer in use.
-spec check_in_license(aws_client:aws_client(), check_in_license_request()) ->
    {ok, check_in_license_response(), tuple()} |
    {error, any()} |
    {error, check_in_license_errors(), tuple()}.
check_in_license(Client, Input)
  when is_map(Client), is_map(Input) ->
    check_in_license(Client, Input, []).

-spec check_in_license(aws_client:aws_client(), check_in_license_request(), proplists:proplist()) ->
    {ok, check_in_license_response(), tuple()} |
    {error, any()} |
    {error, check_in_license_errors(), tuple()}.
check_in_license(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CheckInLicense">>, Input, Options).

%% @doc Checks out the specified license for offline use.
-spec checkout_borrow_license(aws_client:aws_client(), checkout_borrow_license_request()) ->
    {ok, checkout_borrow_license_response(), tuple()} |
    {error, any()} |
    {error, checkout_borrow_license_errors(), tuple()}.
checkout_borrow_license(Client, Input)
  when is_map(Client), is_map(Input) ->
    checkout_borrow_license(Client, Input, []).

-spec checkout_borrow_license(aws_client:aws_client(), checkout_borrow_license_request(), proplists:proplist()) ->
    {ok, checkout_borrow_license_response(), tuple()} |
    {error, any()} |
    {error, checkout_borrow_license_errors(), tuple()}.
checkout_borrow_license(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CheckoutBorrowLicense">>, Input, Options).

%% @doc Checks out the specified license.
%%
%% If the account that created the license is the same that is performing the
%% check out, you must
%% specify the account as the beneficiary.
-spec checkout_license(aws_client:aws_client(), checkout_license_request()) ->
    {ok, checkout_license_response(), tuple()} |
    {error, any()} |
    {error, checkout_license_errors(), tuple()}.
checkout_license(Client, Input)
  when is_map(Client), is_map(Input) ->
    checkout_license(Client, Input, []).

-spec checkout_license(aws_client:aws_client(), checkout_license_request(), proplists:proplist()) ->
    {ok, checkout_license_response(), tuple()} |
    {error, any()} |
    {error, checkout_license_errors(), tuple()}.
checkout_license(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CheckoutLicense">>, Input, Options).

%% @doc Creates a grant for the specified license.
%%
%% A grant shares the use of license
%% entitlements with a specific Amazon Web Services account, an organization,
%% or an
%% organizational unit (OU). For more information, see Granted licenses in
%% License Manager:
%% https://docs.aws.amazon.com/license-manager/latest/userguide/granted-licenses.html
%% in the License Manager User Guide.
-spec create_grant(aws_client:aws_client(), create_grant_request()) ->
    {ok, create_grant_response(), tuple()} |
    {error, any()} |
    {error, create_grant_errors(), tuple()}.
create_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_grant(Client, Input, []).

-spec create_grant(aws_client:aws_client(), create_grant_request(), proplists:proplist()) ->
    {ok, create_grant_response(), tuple()} |
    {error, any()} |
    {error, create_grant_errors(), tuple()}.
create_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGrant">>, Input, Options).

%% @doc Creates a new version of the specified grant.
%%
%% For more information, see
%% Granted licenses in License Manager:
%% https://docs.aws.amazon.com/license-manager/latest/userguide/granted-licenses.html
%% in the License Manager User Guide.
-spec create_grant_version(aws_client:aws_client(), create_grant_version_request()) ->
    {ok, create_grant_version_response(), tuple()} |
    {error, any()} |
    {error, create_grant_version_errors(), tuple()}.
create_grant_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_grant_version(Client, Input, []).

-spec create_grant_version(aws_client:aws_client(), create_grant_version_request(), proplists:proplist()) ->
    {ok, create_grant_version_response(), tuple()} |
    {error, any()} |
    {error, create_grant_version_errors(), tuple()}.
create_grant_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateGrantVersion">>, Input, Options).

%% @doc Creates a license.
-spec create_license(aws_client:aws_client(), create_license_request()) ->
    {ok, create_license_response(), tuple()} |
    {error, any()} |
    {error, create_license_errors(), tuple()}.
create_license(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_license(Client, Input, []).

-spec create_license(aws_client:aws_client(), create_license_request(), proplists:proplist()) ->
    {ok, create_license_response(), tuple()} |
    {error, any()} |
    {error, create_license_errors(), tuple()}.
create_license(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLicense">>, Input, Options).

%% @doc Creates a license configuration.
%%
%% A license configuration is an abstraction of a customer license agreement
%% that can be
%% consumed and enforced by License Manager. Components include
%% specifications for the license
%% type (licensing by instance, socket, CPU, or vCPU), allowed tenancy
%% (shared tenancy,
%% Dedicated Instance, Dedicated Host, or all of these), license affinity to
%% host (how long a
%% license must be associated with a host), and the number of licenses
%% purchased and used.
-spec create_license_configuration(aws_client:aws_client(), create_license_configuration_request()) ->
    {ok, create_license_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_license_configuration_errors(), tuple()}.
create_license_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_license_configuration(Client, Input, []).

-spec create_license_configuration(aws_client:aws_client(), create_license_configuration_request(), proplists:proplist()) ->
    {ok, create_license_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_license_configuration_errors(), tuple()}.
create_license_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLicenseConfiguration">>, Input, Options).

%% @doc Creates a new license conversion task.
-spec create_license_conversion_task_for_resource(aws_client:aws_client(), create_license_conversion_task_for_resource_request()) ->
    {ok, create_license_conversion_task_for_resource_response(), tuple()} |
    {error, any()} |
    {error, create_license_conversion_task_for_resource_errors(), tuple()}.
create_license_conversion_task_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_license_conversion_task_for_resource(Client, Input, []).

-spec create_license_conversion_task_for_resource(aws_client:aws_client(), create_license_conversion_task_for_resource_request(), proplists:proplist()) ->
    {ok, create_license_conversion_task_for_resource_response(), tuple()} |
    {error, any()} |
    {error, create_license_conversion_task_for_resource_errors(), tuple()}.
create_license_conversion_task_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLicenseConversionTaskForResource">>, Input, Options).

%% @doc Creates a report generator.
-spec create_license_manager_report_generator(aws_client:aws_client(), create_license_manager_report_generator_request()) ->
    {ok, create_license_manager_report_generator_response(), tuple()} |
    {error, any()} |
    {error, create_license_manager_report_generator_errors(), tuple()}.
create_license_manager_report_generator(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_license_manager_report_generator(Client, Input, []).

-spec create_license_manager_report_generator(aws_client:aws_client(), create_license_manager_report_generator_request(), proplists:proplist()) ->
    {ok, create_license_manager_report_generator_response(), tuple()} |
    {error, any()} |
    {error, create_license_manager_report_generator_errors(), tuple()}.
create_license_manager_report_generator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLicenseManagerReportGenerator">>, Input, Options).

%% @doc Creates a new version of the specified license.
-spec create_license_version(aws_client:aws_client(), create_license_version_request()) ->
    {ok, create_license_version_response(), tuple()} |
    {error, any()} |
    {error, create_license_version_errors(), tuple()}.
create_license_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_license_version(Client, Input, []).

-spec create_license_version(aws_client:aws_client(), create_license_version_request(), proplists:proplist()) ->
    {ok, create_license_version_response(), tuple()} |
    {error, any()} |
    {error, create_license_version_errors(), tuple()}.
create_license_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLicenseVersion">>, Input, Options).

%% @doc Creates a long-lived token.
%%
%% A refresh token is a JWT token used to get an access token. With an access
%% token,
%% you can call AssumeRoleWithWebIdentity to get role credentials that you
%% can use to
%% call License Manager to manage the specified license.
-spec create_token(aws_client:aws_client(), create_token_request()) ->
    {ok, create_token_response(), tuple()} |
    {error, any()} |
    {error, create_token_errors(), tuple()}.
create_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_token(Client, Input, []).

-spec create_token(aws_client:aws_client(), create_token_request(), proplists:proplist()) ->
    {ok, create_token_response(), tuple()} |
    {error, any()} |
    {error, create_token_errors(), tuple()}.
create_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateToken">>, Input, Options).

%% @doc Deletes the specified grant.
-spec delete_grant(aws_client:aws_client(), delete_grant_request()) ->
    {ok, delete_grant_response(), tuple()} |
    {error, any()} |
    {error, delete_grant_errors(), tuple()}.
delete_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_grant(Client, Input, []).

-spec delete_grant(aws_client:aws_client(), delete_grant_request(), proplists:proplist()) ->
    {ok, delete_grant_response(), tuple()} |
    {error, any()} |
    {error, delete_grant_errors(), tuple()}.
delete_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteGrant">>, Input, Options).

%% @doc Deletes the specified license.
-spec delete_license(aws_client:aws_client(), delete_license_request()) ->
    {ok, delete_license_response(), tuple()} |
    {error, any()} |
    {error, delete_license_errors(), tuple()}.
delete_license(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_license(Client, Input, []).

-spec delete_license(aws_client:aws_client(), delete_license_request(), proplists:proplist()) ->
    {ok, delete_license_response(), tuple()} |
    {error, any()} |
    {error, delete_license_errors(), tuple()}.
delete_license(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLicense">>, Input, Options).

%% @doc Deletes the specified license configuration.
%%
%% You cannot delete a license configuration that is in use.
-spec delete_license_configuration(aws_client:aws_client(), delete_license_configuration_request()) ->
    {ok, delete_license_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_license_configuration_errors(), tuple()}.
delete_license_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_license_configuration(Client, Input, []).

-spec delete_license_configuration(aws_client:aws_client(), delete_license_configuration_request(), proplists:proplist()) ->
    {ok, delete_license_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_license_configuration_errors(), tuple()}.
delete_license_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLicenseConfiguration">>, Input, Options).

%% @doc Deletes the specified report generator.
%%
%% This action deletes the report generator, which stops it from generating
%% future reports.
%% The action cannot be reversed. It has no effect on the previous reports
%% from this generator.
-spec delete_license_manager_report_generator(aws_client:aws_client(), delete_license_manager_report_generator_request()) ->
    {ok, delete_license_manager_report_generator_response(), tuple()} |
    {error, any()} |
    {error, delete_license_manager_report_generator_errors(), tuple()}.
delete_license_manager_report_generator(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_license_manager_report_generator(Client, Input, []).

-spec delete_license_manager_report_generator(aws_client:aws_client(), delete_license_manager_report_generator_request(), proplists:proplist()) ->
    {ok, delete_license_manager_report_generator_response(), tuple()} |
    {error, any()} |
    {error, delete_license_manager_report_generator_errors(), tuple()}.
delete_license_manager_report_generator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLicenseManagerReportGenerator">>, Input, Options).

%% @doc Deletes the specified token.
%%
%% Must be called in the license home Region.
-spec delete_token(aws_client:aws_client(), delete_token_request()) ->
    {ok, delete_token_response(), tuple()} |
    {error, any()} |
    {error, delete_token_errors(), tuple()}.
delete_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_token(Client, Input, []).

-spec delete_token(aws_client:aws_client(), delete_token_request(), proplists:proplist()) ->
    {ok, delete_token_response(), tuple()} |
    {error, any()} |
    {error, delete_token_errors(), tuple()}.
delete_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteToken">>, Input, Options).

%% @doc Extends the expiration date for license consumption.
-spec extend_license_consumption(aws_client:aws_client(), extend_license_consumption_request()) ->
    {ok, extend_license_consumption_response(), tuple()} |
    {error, any()} |
    {error, extend_license_consumption_errors(), tuple()}.
extend_license_consumption(Client, Input)
  when is_map(Client), is_map(Input) ->
    extend_license_consumption(Client, Input, []).

-spec extend_license_consumption(aws_client:aws_client(), extend_license_consumption_request(), proplists:proplist()) ->
    {ok, extend_license_consumption_response(), tuple()} |
    {error, any()} |
    {error, extend_license_consumption_errors(), tuple()}.
extend_license_consumption(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExtendLicenseConsumption">>, Input, Options).

%% @doc Gets a temporary access token to use with AssumeRoleWithWebIdentity.
%%
%% Access tokens
%% are valid for one hour.
-spec get_access_token(aws_client:aws_client(), get_access_token_request()) ->
    {ok, get_access_token_response(), tuple()} |
    {error, any()} |
    {error, get_access_token_errors(), tuple()}.
get_access_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_access_token(Client, Input, []).

-spec get_access_token(aws_client:aws_client(), get_access_token_request(), proplists:proplist()) ->
    {ok, get_access_token_response(), tuple()} |
    {error, any()} |
    {error, get_access_token_errors(), tuple()}.
get_access_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccessToken">>, Input, Options).

%% @doc Gets detailed information about the specified grant.
-spec get_grant(aws_client:aws_client(), get_grant_request()) ->
    {ok, get_grant_response(), tuple()} |
    {error, any()} |
    {error, get_grant_errors(), tuple()}.
get_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_grant(Client, Input, []).

-spec get_grant(aws_client:aws_client(), get_grant_request(), proplists:proplist()) ->
    {ok, get_grant_response(), tuple()} |
    {error, any()} |
    {error, get_grant_errors(), tuple()}.
get_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGrant">>, Input, Options).

%% @doc Gets detailed information about the specified license.
-spec get_license(aws_client:aws_client(), get_license_request()) ->
    {ok, get_license_response(), tuple()} |
    {error, any()} |
    {error, get_license_errors(), tuple()}.
get_license(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_license(Client, Input, []).

-spec get_license(aws_client:aws_client(), get_license_request(), proplists:proplist()) ->
    {ok, get_license_response(), tuple()} |
    {error, any()} |
    {error, get_license_errors(), tuple()}.
get_license(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLicense">>, Input, Options).

%% @doc Gets detailed information about the specified license configuration.
-spec get_license_configuration(aws_client:aws_client(), get_license_configuration_request()) ->
    {ok, get_license_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_license_configuration_errors(), tuple()}.
get_license_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_license_configuration(Client, Input, []).

-spec get_license_configuration(aws_client:aws_client(), get_license_configuration_request(), proplists:proplist()) ->
    {ok, get_license_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_license_configuration_errors(), tuple()}.
get_license_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLicenseConfiguration">>, Input, Options).

%% @doc Gets information about the specified license type conversion task.
-spec get_license_conversion_task(aws_client:aws_client(), get_license_conversion_task_request()) ->
    {ok, get_license_conversion_task_response(), tuple()} |
    {error, any()} |
    {error, get_license_conversion_task_errors(), tuple()}.
get_license_conversion_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_license_conversion_task(Client, Input, []).

-spec get_license_conversion_task(aws_client:aws_client(), get_license_conversion_task_request(), proplists:proplist()) ->
    {ok, get_license_conversion_task_response(), tuple()} |
    {error, any()} |
    {error, get_license_conversion_task_errors(), tuple()}.
get_license_conversion_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLicenseConversionTask">>, Input, Options).

%% @doc Gets information about the specified report generator.
-spec get_license_manager_report_generator(aws_client:aws_client(), get_license_manager_report_generator_request()) ->
    {ok, get_license_manager_report_generator_response(), tuple()} |
    {error, any()} |
    {error, get_license_manager_report_generator_errors(), tuple()}.
get_license_manager_report_generator(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_license_manager_report_generator(Client, Input, []).

-spec get_license_manager_report_generator(aws_client:aws_client(), get_license_manager_report_generator_request(), proplists:proplist()) ->
    {ok, get_license_manager_report_generator_response(), tuple()} |
    {error, any()} |
    {error, get_license_manager_report_generator_errors(), tuple()}.
get_license_manager_report_generator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLicenseManagerReportGenerator">>, Input, Options).

%% @doc Gets detailed information about the usage of the specified license.
-spec get_license_usage(aws_client:aws_client(), get_license_usage_request()) ->
    {ok, get_license_usage_response(), tuple()} |
    {error, any()} |
    {error, get_license_usage_errors(), tuple()}.
get_license_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_license_usage(Client, Input, []).

-spec get_license_usage(aws_client:aws_client(), get_license_usage_request(), proplists:proplist()) ->
    {ok, get_license_usage_response(), tuple()} |
    {error, any()} |
    {error, get_license_usage_errors(), tuple()}.
get_license_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLicenseUsage">>, Input, Options).

%% @doc Gets the License Manager settings for the current Region.
-spec get_service_settings(aws_client:aws_client(), get_service_settings_request()) ->
    {ok, get_service_settings_response(), tuple()} |
    {error, any()} |
    {error, get_service_settings_errors(), tuple()}.
get_service_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_settings(Client, Input, []).

-spec get_service_settings(aws_client:aws_client(), get_service_settings_request(), proplists:proplist()) ->
    {ok, get_service_settings_response(), tuple()} |
    {error, any()} |
    {error, get_service_settings_errors(), tuple()}.
get_service_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceSettings">>, Input, Options).

%% @doc Lists the resource associations for the specified license
%% configuration.
%%
%% Resource associations need not consume licenses from a license
%% configuration.
%% For example, an AMI or a stopped instance might not consume a license
%% (depending on
%% the license rules).
-spec list_associations_for_license_configuration(aws_client:aws_client(), list_associations_for_license_configuration_request()) ->
    {ok, list_associations_for_license_configuration_response(), tuple()} |
    {error, any()} |
    {error, list_associations_for_license_configuration_errors(), tuple()}.
list_associations_for_license_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_associations_for_license_configuration(Client, Input, []).

-spec list_associations_for_license_configuration(aws_client:aws_client(), list_associations_for_license_configuration_request(), proplists:proplist()) ->
    {ok, list_associations_for_license_configuration_response(), tuple()} |
    {error, any()} |
    {error, list_associations_for_license_configuration_errors(), tuple()}.
list_associations_for_license_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssociationsForLicenseConfiguration">>, Input, Options).

%% @doc Lists the grants distributed for the specified license.
-spec list_distributed_grants(aws_client:aws_client(), list_distributed_grants_request()) ->
    {ok, list_distributed_grants_response(), tuple()} |
    {error, any()} |
    {error, list_distributed_grants_errors(), tuple()}.
list_distributed_grants(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_distributed_grants(Client, Input, []).

-spec list_distributed_grants(aws_client:aws_client(), list_distributed_grants_request(), proplists:proplist()) ->
    {ok, list_distributed_grants_response(), tuple()} |
    {error, any()} |
    {error, list_distributed_grants_errors(), tuple()}.
list_distributed_grants(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDistributedGrants">>, Input, Options).

%% @doc Lists the license configuration operations that failed.
-spec list_failures_for_license_configuration_operations(aws_client:aws_client(), list_failures_for_license_configuration_operations_request()) ->
    {ok, list_failures_for_license_configuration_operations_response(), tuple()} |
    {error, any()} |
    {error, list_failures_for_license_configuration_operations_errors(), tuple()}.
list_failures_for_license_configuration_operations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_failures_for_license_configuration_operations(Client, Input, []).

-spec list_failures_for_license_configuration_operations(aws_client:aws_client(), list_failures_for_license_configuration_operations_request(), proplists:proplist()) ->
    {ok, list_failures_for_license_configuration_operations_response(), tuple()} |
    {error, any()} |
    {error, list_failures_for_license_configuration_operations_errors(), tuple()}.
list_failures_for_license_configuration_operations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFailuresForLicenseConfigurationOperations">>, Input, Options).

%% @doc Lists the license configurations for your account.
-spec list_license_configurations(aws_client:aws_client(), list_license_configurations_request()) ->
    {ok, list_license_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_license_configurations_errors(), tuple()}.
list_license_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_license_configurations(Client, Input, []).

-spec list_license_configurations(aws_client:aws_client(), list_license_configurations_request(), proplists:proplist()) ->
    {ok, list_license_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_license_configurations_errors(), tuple()}.
list_license_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLicenseConfigurations">>, Input, Options).

%% @doc Lists the license type conversion tasks for your account.
-spec list_license_conversion_tasks(aws_client:aws_client(), list_license_conversion_tasks_request()) ->
    {ok, list_license_conversion_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_license_conversion_tasks_errors(), tuple()}.
list_license_conversion_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_license_conversion_tasks(Client, Input, []).

-spec list_license_conversion_tasks(aws_client:aws_client(), list_license_conversion_tasks_request(), proplists:proplist()) ->
    {ok, list_license_conversion_tasks_response(), tuple()} |
    {error, any()} |
    {error, list_license_conversion_tasks_errors(), tuple()}.
list_license_conversion_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLicenseConversionTasks">>, Input, Options).

%% @doc Lists the report generators for your account.
-spec list_license_manager_report_generators(aws_client:aws_client(), list_license_manager_report_generators_request()) ->
    {ok, list_license_manager_report_generators_response(), tuple()} |
    {error, any()} |
    {error, list_license_manager_report_generators_errors(), tuple()}.
list_license_manager_report_generators(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_license_manager_report_generators(Client, Input, []).

-spec list_license_manager_report_generators(aws_client:aws_client(), list_license_manager_report_generators_request(), proplists:proplist()) ->
    {ok, list_license_manager_report_generators_response(), tuple()} |
    {error, any()} |
    {error, list_license_manager_report_generators_errors(), tuple()}.
list_license_manager_report_generators(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLicenseManagerReportGenerators">>, Input, Options).

%% @doc Describes the license configurations for the specified resource.
-spec list_license_specifications_for_resource(aws_client:aws_client(), list_license_specifications_for_resource_request()) ->
    {ok, list_license_specifications_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_license_specifications_for_resource_errors(), tuple()}.
list_license_specifications_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_license_specifications_for_resource(Client, Input, []).

-spec list_license_specifications_for_resource(aws_client:aws_client(), list_license_specifications_for_resource_request(), proplists:proplist()) ->
    {ok, list_license_specifications_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_license_specifications_for_resource_errors(), tuple()}.
list_license_specifications_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLicenseSpecificationsForResource">>, Input, Options).

%% @doc Lists all versions of the specified license.
-spec list_license_versions(aws_client:aws_client(), list_license_versions_request()) ->
    {ok, list_license_versions_response(), tuple()} |
    {error, any()} |
    {error, list_license_versions_errors(), tuple()}.
list_license_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_license_versions(Client, Input, []).

-spec list_license_versions(aws_client:aws_client(), list_license_versions_request(), proplists:proplist()) ->
    {ok, list_license_versions_response(), tuple()} |
    {error, any()} |
    {error, list_license_versions_errors(), tuple()}.
list_license_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLicenseVersions">>, Input, Options).

%% @doc Lists the licenses for your account.
-spec list_licenses(aws_client:aws_client(), list_licenses_request()) ->
    {ok, list_licenses_response(), tuple()} |
    {error, any()} |
    {error, list_licenses_errors(), tuple()}.
list_licenses(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_licenses(Client, Input, []).

-spec list_licenses(aws_client:aws_client(), list_licenses_request(), proplists:proplist()) ->
    {ok, list_licenses_response(), tuple()} |
    {error, any()} |
    {error, list_licenses_errors(), tuple()}.
list_licenses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLicenses">>, Input, Options).

%% @doc Lists grants that are received.
%%
%% Received grants are grants created while specifying the
%% recipient as this Amazon Web Services account, your organization, or an
%% organizational unit
%% (OU) to which this member account belongs.
-spec list_received_grants(aws_client:aws_client(), list_received_grants_request()) ->
    {ok, list_received_grants_response(), tuple()} |
    {error, any()} |
    {error, list_received_grants_errors(), tuple()}.
list_received_grants(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_received_grants(Client, Input, []).

-spec list_received_grants(aws_client:aws_client(), list_received_grants_request(), proplists:proplist()) ->
    {ok, list_received_grants_response(), tuple()} |
    {error, any()} |
    {error, list_received_grants_errors(), tuple()}.
list_received_grants(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReceivedGrants">>, Input, Options).

%% @doc Lists the grants received for all accounts in the organization.
-spec list_received_grants_for_organization(aws_client:aws_client(), list_received_grants_for_organization_request()) ->
    {ok, list_received_grants_for_organization_response(), tuple()} |
    {error, any()} |
    {error, list_received_grants_for_organization_errors(), tuple()}.
list_received_grants_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_received_grants_for_organization(Client, Input, []).

-spec list_received_grants_for_organization(aws_client:aws_client(), list_received_grants_for_organization_request(), proplists:proplist()) ->
    {ok, list_received_grants_for_organization_response(), tuple()} |
    {error, any()} |
    {error, list_received_grants_for_organization_errors(), tuple()}.
list_received_grants_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReceivedGrantsForOrganization">>, Input, Options).

%% @doc Lists received licenses.
-spec list_received_licenses(aws_client:aws_client(), list_received_licenses_request()) ->
    {ok, list_received_licenses_response(), tuple()} |
    {error, any()} |
    {error, list_received_licenses_errors(), tuple()}.
list_received_licenses(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_received_licenses(Client, Input, []).

-spec list_received_licenses(aws_client:aws_client(), list_received_licenses_request(), proplists:proplist()) ->
    {ok, list_received_licenses_response(), tuple()} |
    {error, any()} |
    {error, list_received_licenses_errors(), tuple()}.
list_received_licenses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReceivedLicenses">>, Input, Options).

%% @doc Lists the licenses received for all accounts in the organization.
-spec list_received_licenses_for_organization(aws_client:aws_client(), list_received_licenses_for_organization_request()) ->
    {ok, list_received_licenses_for_organization_response(), tuple()} |
    {error, any()} |
    {error, list_received_licenses_for_organization_errors(), tuple()}.
list_received_licenses_for_organization(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_received_licenses_for_organization(Client, Input, []).

-spec list_received_licenses_for_organization(aws_client:aws_client(), list_received_licenses_for_organization_request(), proplists:proplist()) ->
    {ok, list_received_licenses_for_organization_response(), tuple()} |
    {error, any()} |
    {error, list_received_licenses_for_organization_errors(), tuple()}.
list_received_licenses_for_organization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReceivedLicensesForOrganization">>, Input, Options).

%% @doc Lists resources managed using Systems Manager inventory.
-spec list_resource_inventory(aws_client:aws_client(), list_resource_inventory_request()) ->
    {ok, list_resource_inventory_response(), tuple()} |
    {error, any()} |
    {error, list_resource_inventory_errors(), tuple()}.
list_resource_inventory(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_inventory(Client, Input, []).

-spec list_resource_inventory(aws_client:aws_client(), list_resource_inventory_request(), proplists:proplist()) ->
    {ok, list_resource_inventory_response(), tuple()} |
    {error, any()} |
    {error, list_resource_inventory_errors(), tuple()}.
list_resource_inventory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceInventory">>, Input, Options).

%% @doc Lists the tags for the specified resource.
%%
%% For more information about tagging support in
%% License Manager, see the TagResource:
%% https://docs.aws.amazon.com/license-manager/latest/APIReference/API_TagResource.html
%% operation.
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

%% @doc Lists your tokens.
-spec list_tokens(aws_client:aws_client(), list_tokens_request()) ->
    {ok, list_tokens_response(), tuple()} |
    {error, any()} |
    {error, list_tokens_errors(), tuple()}.
list_tokens(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tokens(Client, Input, []).

-spec list_tokens(aws_client:aws_client(), list_tokens_request(), proplists:proplist()) ->
    {ok, list_tokens_response(), tuple()} |
    {error, any()} |
    {error, list_tokens_errors(), tuple()}.
list_tokens(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTokens">>, Input, Options).

%% @doc Lists all license usage records for a license configuration,
%% displaying license
%% consumption details by resource at a selected point in time.
%%
%% Use this action to audit the
%% current license consumption for any license inventory and configuration.
-spec list_usage_for_license_configuration(aws_client:aws_client(), list_usage_for_license_configuration_request()) ->
    {ok, list_usage_for_license_configuration_response(), tuple()} |
    {error, any()} |
    {error, list_usage_for_license_configuration_errors(), tuple()}.
list_usage_for_license_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_usage_for_license_configuration(Client, Input, []).

-spec list_usage_for_license_configuration(aws_client:aws_client(), list_usage_for_license_configuration_request(), proplists:proplist()) ->
    {ok, list_usage_for_license_configuration_response(), tuple()} |
    {error, any()} |
    {error, list_usage_for_license_configuration_errors(), tuple()}.
list_usage_for_license_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUsageForLicenseConfiguration">>, Input, Options).

%% @doc Rejects the specified grant.
-spec reject_grant(aws_client:aws_client(), reject_grant_request()) ->
    {ok, reject_grant_response(), tuple()} |
    {error, any()} |
    {error, reject_grant_errors(), tuple()}.
reject_grant(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_grant(Client, Input, []).

-spec reject_grant(aws_client:aws_client(), reject_grant_request(), proplists:proplist()) ->
    {ok, reject_grant_response(), tuple()} |
    {error, any()} |
    {error, reject_grant_errors(), tuple()}.
reject_grant(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectGrant">>, Input, Options).

%% @doc Adds the specified tags to the specified resource.
%%
%% The following resources support
%% tagging in License Manager:
%%
%% Licenses
%%
%% Grants
%%
%% License configurations
%%
%% Report generators
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

%% @doc Removes the specified tags from the specified resource.
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

%% @doc Modifies the attributes of an existing license configuration.
-spec update_license_configuration(aws_client:aws_client(), update_license_configuration_request()) ->
    {ok, update_license_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_license_configuration_errors(), tuple()}.
update_license_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_license_configuration(Client, Input, []).

-spec update_license_configuration(aws_client:aws_client(), update_license_configuration_request(), proplists:proplist()) ->
    {ok, update_license_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_license_configuration_errors(), tuple()}.
update_license_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLicenseConfiguration">>, Input, Options).

%% @doc Updates a report generator.
%%
%% After you make changes to a report generator, it starts generating new
%% reports within 60 minutes of being updated.
-spec update_license_manager_report_generator(aws_client:aws_client(), update_license_manager_report_generator_request()) ->
    {ok, update_license_manager_report_generator_response(), tuple()} |
    {error, any()} |
    {error, update_license_manager_report_generator_errors(), tuple()}.
update_license_manager_report_generator(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_license_manager_report_generator(Client, Input, []).

-spec update_license_manager_report_generator(aws_client:aws_client(), update_license_manager_report_generator_request(), proplists:proplist()) ->
    {ok, update_license_manager_report_generator_response(), tuple()} |
    {error, any()} |
    {error, update_license_manager_report_generator_errors(), tuple()}.
update_license_manager_report_generator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLicenseManagerReportGenerator">>, Input, Options).

%% @doc Adds or removes the specified license configurations for the
%% specified Amazon Web Services resource.
%%
%% You can update the license specifications of AMIs, instances, and hosts.
%% You cannot update the license specifications for launch templates and
%% CloudFormation templates,
%% as they send license configurations to the operation that creates the
%% resource.
-spec update_license_specifications_for_resource(aws_client:aws_client(), update_license_specifications_for_resource_request()) ->
    {ok, update_license_specifications_for_resource_response(), tuple()} |
    {error, any()} |
    {error, update_license_specifications_for_resource_errors(), tuple()}.
update_license_specifications_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_license_specifications_for_resource(Client, Input, []).

-spec update_license_specifications_for_resource(aws_client:aws_client(), update_license_specifications_for_resource_request(), proplists:proplist()) ->
    {ok, update_license_specifications_for_resource_response(), tuple()} |
    {error, any()} |
    {error, update_license_specifications_for_resource_errors(), tuple()}.
update_license_specifications_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLicenseSpecificationsForResource">>, Input, Options).

%% @doc Updates License Manager settings for the current Region.
-spec update_service_settings(aws_client:aws_client(), update_service_settings_request()) ->
    {ok, update_service_settings_response(), tuple()} |
    {error, any()} |
    {error, update_service_settings_errors(), tuple()}.
update_service_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service_settings(Client, Input, []).

-spec update_service_settings(aws_client:aws_client(), update_service_settings_request(), proplists:proplist()) ->
    {ok, update_service_settings_response(), tuple()} |
    {error, any()} |
    {error, update_service_settings_errors(), tuple()}.
update_service_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServiceSettings">>, Input, Options).

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
    Client1 = Client#{service => <<"license-manager">>},
    Host = build_host(<<"license-manager">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSLicenseManager.", Action/binary>>}
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
