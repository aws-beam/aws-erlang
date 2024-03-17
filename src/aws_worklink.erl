%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon WorkLink is a cloud-based service that provides secure access
%% to internal websites and web apps from iOS and Android phones.
%%
%% In a single step, your users, such as
%% employees, can access internal websites as efficiently as they access any
%% other public website.
%% They enter a URL in their web browser, or choose a link to an internal
%% website in an email. Amazon WorkLink
%% authenticates the user's access and securely renders authorized
%% internal web content in a secure
%% rendering service in the AWS cloud. Amazon WorkLink doesn't download
%% or store any internal web content on
%% mobile devices.
-module(aws_worklink).

-export([associate_domain/2,
         associate_domain/3,
         associate_website_authorization_provider/2,
         associate_website_authorization_provider/3,
         associate_website_certificate_authority/2,
         associate_website_certificate_authority/3,
         create_fleet/2,
         create_fleet/3,
         delete_fleet/2,
         delete_fleet/3,
         describe_audit_stream_configuration/2,
         describe_audit_stream_configuration/3,
         describe_company_network_configuration/2,
         describe_company_network_configuration/3,
         describe_device/2,
         describe_device/3,
         describe_device_policy_configuration/2,
         describe_device_policy_configuration/3,
         describe_domain/2,
         describe_domain/3,
         describe_fleet_metadata/2,
         describe_fleet_metadata/3,
         describe_identity_provider_configuration/2,
         describe_identity_provider_configuration/3,
         describe_website_certificate_authority/2,
         describe_website_certificate_authority/3,
         disassociate_domain/2,
         disassociate_domain/3,
         disassociate_website_authorization_provider/2,
         disassociate_website_authorization_provider/3,
         disassociate_website_certificate_authority/2,
         disassociate_website_certificate_authority/3,
         list_devices/2,
         list_devices/3,
         list_domains/2,
         list_domains/3,
         list_fleets/2,
         list_fleets/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_website_authorization_providers/2,
         list_website_authorization_providers/3,
         list_website_certificate_authorities/2,
         list_website_certificate_authorities/3,
         restore_domain_access/2,
         restore_domain_access/3,
         revoke_domain_access/2,
         revoke_domain_access/3,
         sign_out_user/2,
         sign_out_user/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_audit_stream_configuration/2,
         update_audit_stream_configuration/3,
         update_company_network_configuration/2,
         update_company_network_configuration/3,
         update_device_policy_configuration/2,
         update_device_policy_configuration/3,
         update_domain_metadata/2,
         update_domain_metadata/3,
         update_fleet_metadata/2,
         update_fleet_metadata/3,
         update_identity_provider_configuration/2,
         update_identity_provider_configuration/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% associate_domain_request() :: #{
%%   <<"AcmCertificateArn">> := string(),
%%   <<"DisplayName">> => string(),
%%   <<"DomainName">> := string(),
%%   <<"FleetArn">> := string()
%% }
-type associate_domain_request() :: #{binary() => any()}.


%% Example:
%% restore_domain_access_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"FleetArn">> := string()
%% }
-type restore_domain_access_request() :: #{binary() => any()}.


%% Example:
%% list_devices_request() :: #{
%%   <<"FleetArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_devices_request() :: #{binary() => any()}.


%% Example:
%% website_ca_summary() :: #{
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DisplayName">> => string(),
%%   <<"WebsiteCaId">> => string()
%% }
-type website_ca_summary() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_identity_provider_configuration_request() :: #{
%%   <<"FleetArn">> := string(),
%%   <<"IdentityProviderSamlMetadata">> => string(),
%%   <<"IdentityProviderType">> := list(any())
%% }
-type update_identity_provider_configuration_request() :: #{binary() => any()}.


%% Example:
%% delete_fleet_request() :: #{
%%   <<"FleetArn">> := string()
%% }
-type delete_fleet_request() :: #{binary() => any()}.

%% Example:
%% disassociate_website_authorization_provider_response() :: #{}
-type disassociate_website_authorization_provider_response() :: #{}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% update_device_policy_configuration_request() :: #{
%%   <<"DeviceCaCertificate">> => string(),
%%   <<"FleetArn">> := string()
%% }
-type update_device_policy_configuration_request() :: #{binary() => any()}.

%% Example:
%% disassociate_website_certificate_authority_response() :: #{}
-type disassociate_website_certificate_authority_response() :: #{}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.

%% Example:
%% update_audit_stream_configuration_response() :: #{}
-type update_audit_stream_configuration_response() :: #{}.

%% Example:
%% restore_domain_access_response() :: #{}
-type restore_domain_access_response() :: #{}.


%% Example:
%% update_company_network_configuration_request() :: #{
%%   <<"FleetArn">> := string(),
%%   <<"SecurityGroupIds">> := list(string()()),
%%   <<"SubnetIds">> := list(string()()),
%%   <<"VpcId">> := string()
%% }
-type update_company_network_configuration_request() :: #{binary() => any()}.


%% Example:
%% create_fleet_request() :: #{
%%   <<"DisplayName">> => string(),
%%   <<"FleetName">> := string(),
%%   <<"OptimizeForEndUserLocation">> => boolean(),
%%   <<"Tags">> => map()
%% }
-type create_fleet_request() :: #{binary() => any()}.


%% Example:
%% domain_summary() :: #{
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DisplayName">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"DomainStatus">> => list(any())
%% }
-type domain_summary() :: #{binary() => any()}.

%% Example:
%% revoke_domain_access_response() :: #{}
-type revoke_domain_access_response() :: #{}.

%% Example:
%% delete_fleet_response() :: #{}
-type delete_fleet_response() :: #{}.


%% Example:
%% describe_fleet_metadata_response() :: #{
%%   <<"CompanyCode">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DisplayName">> => string(),
%%   <<"FleetName">> => string(),
%%   <<"FleetStatus">> => list(any()),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"OptimizeForEndUserLocation">> => boolean(),
%%   <<"Tags">> => map()
%% }
-type describe_fleet_metadata_response() :: #{binary() => any()}.


%% Example:
%% list_fleets_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_fleets_request() :: #{binary() => any()}.


%% Example:
%% describe_identity_provider_configuration_response() :: #{
%%   <<"IdentityProviderSamlMetadata">> => string(),
%%   <<"IdentityProviderType">> => list(any()),
%%   <<"ServiceProviderSamlMetadata">> => string()
%% }
-type describe_identity_provider_configuration_response() :: #{binary() => any()}.


%% Example:
%% website_authorization_provider_summary() :: #{
%%   <<"AuthorizationProviderId">> => string(),
%%   <<"AuthorizationProviderType">> => list(any()),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DomainName">> => string()
%% }
-type website_authorization_provider_summary() :: #{binary() => any()}.


%% Example:
%% list_website_authorization_providers_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WebsiteAuthorizationProviders">> => list(website_authorization_provider_summary()())
%% }
-type list_website_authorization_providers_response() :: #{binary() => any()}.


%% Example:
%% list_fleets_response() :: #{
%%   <<"FleetSummaryList">> => list(fleet_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_fleets_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% describe_website_certificate_authority_request() :: #{
%%   <<"FleetArn">> := string(),
%%   <<"WebsiteCaId">> := string()
%% }
-type describe_website_certificate_authority_request() :: #{binary() => any()}.


%% Example:
%% describe_company_network_configuration_response() :: #{
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"VpcId">> => string()
%% }
-type describe_company_network_configuration_response() :: #{binary() => any()}.

%% Example:
%% sign_out_user_response() :: #{}
-type sign_out_user_response() :: #{}.


%% Example:
%% update_fleet_metadata_request() :: #{
%%   <<"DisplayName">> => string(),
%%   <<"FleetArn">> := string(),
%%   <<"OptimizeForEndUserLocation">> => boolean()
%% }
-type update_fleet_metadata_request() :: #{binary() => any()}.

%% Example:
%% update_identity_provider_configuration_response() :: #{}
-type update_identity_provider_configuration_response() :: #{}.


%% Example:
%% update_domain_metadata_request() :: #{
%%   <<"DisplayName">> => string(),
%%   <<"DomainName">> := string(),
%%   <<"FleetArn">> := string()
%% }
-type update_domain_metadata_request() :: #{binary() => any()}.


%% Example:
%% describe_audit_stream_configuration_request() :: #{
%%   <<"FleetArn">> := string()
%% }
-type describe_audit_stream_configuration_request() :: #{binary() => any()}.


%% Example:
%% describe_fleet_metadata_request() :: #{
%%   <<"FleetArn">> := string()
%% }
-type describe_fleet_metadata_request() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% disassociate_website_authorization_provider_request() :: #{
%%   <<"AuthorizationProviderId">> := string(),
%%   <<"FleetArn">> := string()
%% }
-type disassociate_website_authorization_provider_request() :: #{binary() => any()}.


%% Example:
%% associate_website_authorization_provider_request() :: #{
%%   <<"AuthorizationProviderType">> := list(any()),
%%   <<"DomainName">> => string(),
%%   <<"FleetArn">> := string()
%% }
-type associate_website_authorization_provider_request() :: #{binary() => any()}.


%% Example:
%% update_audit_stream_configuration_request() :: #{
%%   <<"AuditStreamArn">> => string(),
%%   <<"FleetArn">> := string()
%% }
-type update_audit_stream_configuration_request() :: #{binary() => any()}.


%% Example:
%% disassociate_website_certificate_authority_request() :: #{
%%   <<"FleetArn">> := string(),
%%   <<"WebsiteCaId">> := string()
%% }
-type disassociate_website_certificate_authority_request() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% describe_device_request() :: #{
%%   <<"DeviceId">> := string(),
%%   <<"FleetArn">> := string()
%% }
-type describe_device_request() :: #{binary() => any()}.

%% Example:
%% associate_domain_response() :: #{}
-type associate_domain_response() :: #{}.


%% Example:
%% list_domains_response() :: #{
%%   <<"Domains">> => list(domain_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_domains_response() :: #{binary() => any()}.


%% Example:
%% disassociate_domain_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"FleetArn">> := string()
%% }
-type disassociate_domain_request() :: #{binary() => any()}.


%% Example:
%% list_website_certificate_authorities_request() :: #{
%%   <<"FleetArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_website_certificate_authorities_request() :: #{binary() => any()}.


%% Example:
%% describe_identity_provider_configuration_request() :: #{
%%   <<"FleetArn">> := string()
%% }
-type describe_identity_provider_configuration_request() :: #{binary() => any()}.


%% Example:
%% fleet_summary() :: #{
%%   <<"CompanyCode">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DisplayName">> => string(),
%%   <<"FleetArn">> => string(),
%%   <<"FleetName">> => string(),
%%   <<"FleetStatus">> => list(any()),
%%   <<"LastUpdatedTime">> => non_neg_integer(),
%%   <<"Tags">> => map()
%% }
-type fleet_summary() :: #{binary() => any()}.

%% Example:
%% update_domain_metadata_response() :: #{}
-type update_domain_metadata_response() :: #{}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% describe_domain_response() :: #{
%%   <<"AcmCertificateArn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DisplayName">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"DomainStatus">> => list(any())
%% }
-type describe_domain_response() :: #{binary() => any()}.


%% Example:
%% list_devices_response() :: #{
%%   <<"Devices">> => list(device_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_devices_response() :: #{binary() => any()}.


%% Example:
%% describe_device_policy_configuration_response() :: #{
%%   <<"DeviceCaCertificate">> => string()
%% }
-type describe_device_policy_configuration_response() :: #{binary() => any()}.


%% Example:
%% describe_website_certificate_authority_response() :: #{
%%   <<"Certificate">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DisplayName">> => string()
%% }
-type describe_website_certificate_authority_response() :: #{binary() => any()}.


%% Example:
%% associate_website_certificate_authority_request() :: #{
%%   <<"Certificate">> := string(),
%%   <<"DisplayName">> => string(),
%%   <<"FleetArn">> := string()
%% }
-type associate_website_certificate_authority_request() :: #{binary() => any()}.


%% Example:
%% sign_out_user_request() :: #{
%%   <<"FleetArn">> := string(),
%%   <<"Username">> := string()
%% }
-type sign_out_user_request() :: #{binary() => any()}.


%% Example:
%% device_summary() :: #{
%%   <<"DeviceId">> => string(),
%%   <<"DeviceStatus">> => list(any())
%% }
-type device_summary() :: #{binary() => any()}.


%% Example:
%% list_domains_request() :: #{
%%   <<"FleetArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_domains_request() :: #{binary() => any()}.

%% Example:
%% disassociate_domain_response() :: #{}
-type disassociate_domain_response() :: #{}.


%% Example:
%% describe_domain_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"FleetArn">> := string()
%% }
-type describe_domain_request() :: #{binary() => any()}.


%% Example:
%% revoke_domain_access_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"FleetArn">> := string()
%% }
-type revoke_domain_access_request() :: #{binary() => any()}.


%% Example:
%% describe_audit_stream_configuration_response() :: #{
%%   <<"AuditStreamArn">> => string()
%% }
-type describe_audit_stream_configuration_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% describe_device_policy_configuration_request() :: #{
%%   <<"FleetArn">> := string()
%% }
-type describe_device_policy_configuration_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% associate_website_certificate_authority_response() :: #{
%%   <<"WebsiteCaId">> => string()
%% }
-type associate_website_certificate_authority_response() :: #{binary() => any()}.


%% Example:
%% internal_server_error_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_error_exception() :: #{binary() => any()}.


%% Example:
%% list_website_authorization_providers_request() :: #{
%%   <<"FleetArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_website_authorization_providers_request() :: #{binary() => any()}.


%% Example:
%% associate_website_authorization_provider_response() :: #{
%%   <<"AuthorizationProviderId">> => string()
%% }
-type associate_website_authorization_provider_response() :: #{binary() => any()}.

%% Example:
%% update_fleet_metadata_response() :: #{}
-type update_fleet_metadata_response() :: #{}.


%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% update_company_network_configuration_response() :: #{}
-type update_company_network_configuration_response() :: #{}.


%% Example:
%% describe_company_network_configuration_request() :: #{
%%   <<"FleetArn">> := string()
%% }
-type describe_company_network_configuration_request() :: #{binary() => any()}.


%% Example:
%% list_website_certificate_authorities_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WebsiteCertificateAuthorities">> => list(website_ca_summary()())
%% }
-type list_website_certificate_authorities_response() :: #{binary() => any()}.


%% Example:
%% create_fleet_response() :: #{
%%   <<"FleetArn">> => string()
%% }
-type create_fleet_response() :: #{binary() => any()}.

%% Example:
%% update_device_policy_configuration_response() :: #{}
-type update_device_policy_configuration_response() :: #{}.


%% Example:
%% describe_device_response() :: #{
%%   <<"FirstAccessedTime">> => non_neg_integer(),
%%   <<"LastAccessedTime">> => non_neg_integer(),
%%   <<"Manufacturer">> => string(),
%%   <<"Model">> => string(),
%%   <<"OperatingSystem">> => string(),
%%   <<"OperatingSystemVersion">> => string(),
%%   <<"PatchLevel">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Username">> => string()
%% }
-type describe_device_response() :: #{binary() => any()}.

-type associate_domain_errors() ::
    resource_already_exists_exception() | 
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type associate_website_authorization_provider_errors() ::
    resource_already_exists_exception() | 
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type associate_website_certificate_authority_errors() ::
    resource_already_exists_exception() | 
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type create_fleet_errors() ::
    resource_already_exists_exception() | 
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type delete_fleet_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type describe_audit_stream_configuration_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type describe_company_network_configuration_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type describe_device_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type describe_device_policy_configuration_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type describe_domain_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type describe_fleet_metadata_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type describe_identity_provider_configuration_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type describe_website_certificate_authority_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type disassociate_domain_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type disassociate_website_authorization_provider_errors() ::
    resource_already_exists_exception() | 
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type disassociate_website_certificate_authority_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type list_devices_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type list_domains_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type list_fleets_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type list_tags_for_resource_errors() ::
    invalid_request_exception().

-type list_website_authorization_providers_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type list_website_certificate_authorities_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type restore_domain_access_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type revoke_domain_access_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type sign_out_user_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type tag_resource_errors() ::
    invalid_request_exception().

-type untag_resource_errors() ::
    invalid_request_exception().

-type update_audit_stream_configuration_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_company_network_configuration_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_device_policy_configuration_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_domain_metadata_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_fleet_metadata_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

-type update_identity_provider_configuration_errors() ::
    internal_server_error_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception() | 
    unauthorized_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Specifies a domain to be associated to Amazon WorkLink.
-spec associate_domain(aws_client:aws_client(), associate_domain_request()) ->
    {ok, associate_domain_response(), tuple()} |
    {error, any()} |
    {error, associate_domain_errors(), tuple()}.
associate_domain(Client, Input) ->
    associate_domain(Client, Input, []).

-spec associate_domain(aws_client:aws_client(), associate_domain_request(), proplists:proplist()) ->
    {ok, associate_domain_response(), tuple()} |
    {error, any()} |
    {error, associate_domain_errors(), tuple()}.
associate_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/associateDomain"],
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

%% @doc Associates a website authorization provider with a specified fleet.
%%
%% This is used to authorize users against associated websites in the company
%% network.
-spec associate_website_authorization_provider(aws_client:aws_client(), associate_website_authorization_provider_request()) ->
    {ok, associate_website_authorization_provider_response(), tuple()} |
    {error, any()} |
    {error, associate_website_authorization_provider_errors(), tuple()}.
associate_website_authorization_provider(Client, Input) ->
    associate_website_authorization_provider(Client, Input, []).

-spec associate_website_authorization_provider(aws_client:aws_client(), associate_website_authorization_provider_request(), proplists:proplist()) ->
    {ok, associate_website_authorization_provider_response(), tuple()} |
    {error, any()} |
    {error, associate_website_authorization_provider_errors(), tuple()}.
associate_website_authorization_provider(Client, Input0, Options0) ->
    Method = post,
    Path = ["/associateWebsiteAuthorizationProvider"],
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

%% @doc Imports the root certificate of a certificate authority (CA) used to
%% obtain TLS
%% certificates used by associated websites within the company network.
-spec associate_website_certificate_authority(aws_client:aws_client(), associate_website_certificate_authority_request()) ->
    {ok, associate_website_certificate_authority_response(), tuple()} |
    {error, any()} |
    {error, associate_website_certificate_authority_errors(), tuple()}.
associate_website_certificate_authority(Client, Input) ->
    associate_website_certificate_authority(Client, Input, []).

-spec associate_website_certificate_authority(aws_client:aws_client(), associate_website_certificate_authority_request(), proplists:proplist()) ->
    {ok, associate_website_certificate_authority_response(), tuple()} |
    {error, any()} |
    {error, associate_website_certificate_authority_errors(), tuple()}.
associate_website_certificate_authority(Client, Input0, Options0) ->
    Method = post,
    Path = ["/associateWebsiteCertificateAuthority"],
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

%% @doc Creates a fleet.
%%
%% A fleet consists of resources and the configuration that delivers
%% associated websites to authorized users who download and set up the Amazon
%% WorkLink app.
-spec create_fleet(aws_client:aws_client(), create_fleet_request()) ->
    {ok, create_fleet_response(), tuple()} |
    {error, any()} |
    {error, create_fleet_errors(), tuple()}.
create_fleet(Client, Input) ->
    create_fleet(Client, Input, []).

-spec create_fleet(aws_client:aws_client(), create_fleet_request(), proplists:proplist()) ->
    {ok, create_fleet_response(), tuple()} |
    {error, any()} |
    {error, create_fleet_errors(), tuple()}.
create_fleet(Client, Input0, Options0) ->
    Method = post,
    Path = ["/createFleet"],
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

%% @doc Deletes a fleet.
%%
%% Prevents users from accessing previously associated websites.
-spec delete_fleet(aws_client:aws_client(), delete_fleet_request()) ->
    {ok, delete_fleet_response(), tuple()} |
    {error, any()} |
    {error, delete_fleet_errors(), tuple()}.
delete_fleet(Client, Input) ->
    delete_fleet(Client, Input, []).

-spec delete_fleet(aws_client:aws_client(), delete_fleet_request(), proplists:proplist()) ->
    {ok, delete_fleet_response(), tuple()} |
    {error, any()} |
    {error, delete_fleet_errors(), tuple()}.
delete_fleet(Client, Input0, Options0) ->
    Method = post,
    Path = ["/deleteFleet"],
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

%% @doc Describes the configuration for delivering audit streams to the
%% customer account.
-spec describe_audit_stream_configuration(aws_client:aws_client(), describe_audit_stream_configuration_request()) ->
    {ok, describe_audit_stream_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_audit_stream_configuration_errors(), tuple()}.
describe_audit_stream_configuration(Client, Input) ->
    describe_audit_stream_configuration(Client, Input, []).

-spec describe_audit_stream_configuration(aws_client:aws_client(), describe_audit_stream_configuration_request(), proplists:proplist()) ->
    {ok, describe_audit_stream_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_audit_stream_configuration_errors(), tuple()}.
describe_audit_stream_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeAuditStreamConfiguration"],
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

%% @doc Describes the networking configuration to access the internal
%% websites associated with
%% the specified fleet.
-spec describe_company_network_configuration(aws_client:aws_client(), describe_company_network_configuration_request()) ->
    {ok, describe_company_network_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_company_network_configuration_errors(), tuple()}.
describe_company_network_configuration(Client, Input) ->
    describe_company_network_configuration(Client, Input, []).

-spec describe_company_network_configuration(aws_client:aws_client(), describe_company_network_configuration_request(), proplists:proplist()) ->
    {ok, describe_company_network_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_company_network_configuration_errors(), tuple()}.
describe_company_network_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeCompanyNetworkConfiguration"],
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

%% @doc Provides information about a user's device.
-spec describe_device(aws_client:aws_client(), describe_device_request()) ->
    {ok, describe_device_response(), tuple()} |
    {error, any()} |
    {error, describe_device_errors(), tuple()}.
describe_device(Client, Input) ->
    describe_device(Client, Input, []).

-spec describe_device(aws_client:aws_client(), describe_device_request(), proplists:proplist()) ->
    {ok, describe_device_response(), tuple()} |
    {error, any()} |
    {error, describe_device_errors(), tuple()}.
describe_device(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeDevice"],
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

%% @doc Describes the device policy configuration for the specified fleet.
-spec describe_device_policy_configuration(aws_client:aws_client(), describe_device_policy_configuration_request()) ->
    {ok, describe_device_policy_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_device_policy_configuration_errors(), tuple()}.
describe_device_policy_configuration(Client, Input) ->
    describe_device_policy_configuration(Client, Input, []).

-spec describe_device_policy_configuration(aws_client:aws_client(), describe_device_policy_configuration_request(), proplists:proplist()) ->
    {ok, describe_device_policy_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_device_policy_configuration_errors(), tuple()}.
describe_device_policy_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeDevicePolicyConfiguration"],
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

%% @doc Provides information about the domain.
-spec describe_domain(aws_client:aws_client(), describe_domain_request()) ->
    {ok, describe_domain_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_errors(), tuple()}.
describe_domain(Client, Input) ->
    describe_domain(Client, Input, []).

-spec describe_domain(aws_client:aws_client(), describe_domain_request(), proplists:proplist()) ->
    {ok, describe_domain_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_errors(), tuple()}.
describe_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeDomain"],
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

%% @doc Provides basic information for the specified fleet, excluding
%% identity provider,
%% networking, and device configuration details.
-spec describe_fleet_metadata(aws_client:aws_client(), describe_fleet_metadata_request()) ->
    {ok, describe_fleet_metadata_response(), tuple()} |
    {error, any()} |
    {error, describe_fleet_metadata_errors(), tuple()}.
describe_fleet_metadata(Client, Input) ->
    describe_fleet_metadata(Client, Input, []).

-spec describe_fleet_metadata(aws_client:aws_client(), describe_fleet_metadata_request(), proplists:proplist()) ->
    {ok, describe_fleet_metadata_response(), tuple()} |
    {error, any()} |
    {error, describe_fleet_metadata_errors(), tuple()}.
describe_fleet_metadata(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeFleetMetadata"],
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

%% @doc Describes the identity provider configuration of the specified fleet.
-spec describe_identity_provider_configuration(aws_client:aws_client(), describe_identity_provider_configuration_request()) ->
    {ok, describe_identity_provider_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_identity_provider_configuration_errors(), tuple()}.
describe_identity_provider_configuration(Client, Input) ->
    describe_identity_provider_configuration(Client, Input, []).

-spec describe_identity_provider_configuration(aws_client:aws_client(), describe_identity_provider_configuration_request(), proplists:proplist()) ->
    {ok, describe_identity_provider_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_identity_provider_configuration_errors(), tuple()}.
describe_identity_provider_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeIdentityProviderConfiguration"],
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

%% @doc Provides information about the certificate authority.
-spec describe_website_certificate_authority(aws_client:aws_client(), describe_website_certificate_authority_request()) ->
    {ok, describe_website_certificate_authority_response(), tuple()} |
    {error, any()} |
    {error, describe_website_certificate_authority_errors(), tuple()}.
describe_website_certificate_authority(Client, Input) ->
    describe_website_certificate_authority(Client, Input, []).

-spec describe_website_certificate_authority(aws_client:aws_client(), describe_website_certificate_authority_request(), proplists:proplist()) ->
    {ok, describe_website_certificate_authority_response(), tuple()} |
    {error, any()} |
    {error, describe_website_certificate_authority_errors(), tuple()}.
describe_website_certificate_authority(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describeWebsiteCertificateAuthority"],
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

%% @doc Disassociates a domain from Amazon WorkLink.
%%
%% End users lose the ability to access the domain with Amazon WorkLink.
-spec disassociate_domain(aws_client:aws_client(), disassociate_domain_request()) ->
    {ok, disassociate_domain_response(), tuple()} |
    {error, any()} |
    {error, disassociate_domain_errors(), tuple()}.
disassociate_domain(Client, Input) ->
    disassociate_domain(Client, Input, []).

-spec disassociate_domain(aws_client:aws_client(), disassociate_domain_request(), proplists:proplist()) ->
    {ok, disassociate_domain_response(), tuple()} |
    {error, any()} |
    {error, disassociate_domain_errors(), tuple()}.
disassociate_domain(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disassociateDomain"],
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

%% @doc Disassociates a website authorization provider from a specified
%% fleet.
%%
%% After the
%% disassociation, users can't load any associated websites that require
%% this authorization
%% provider.
-spec disassociate_website_authorization_provider(aws_client:aws_client(), disassociate_website_authorization_provider_request()) ->
    {ok, disassociate_website_authorization_provider_response(), tuple()} |
    {error, any()} |
    {error, disassociate_website_authorization_provider_errors(), tuple()}.
disassociate_website_authorization_provider(Client, Input) ->
    disassociate_website_authorization_provider(Client, Input, []).

-spec disassociate_website_authorization_provider(aws_client:aws_client(), disassociate_website_authorization_provider_request(), proplists:proplist()) ->
    {ok, disassociate_website_authorization_provider_response(), tuple()} |
    {error, any()} |
    {error, disassociate_website_authorization_provider_errors(), tuple()}.
disassociate_website_authorization_provider(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disassociateWebsiteAuthorizationProvider"],
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

%% @doc Removes a certificate authority (CA).
-spec disassociate_website_certificate_authority(aws_client:aws_client(), disassociate_website_certificate_authority_request()) ->
    {ok, disassociate_website_certificate_authority_response(), tuple()} |
    {error, any()} |
    {error, disassociate_website_certificate_authority_errors(), tuple()}.
disassociate_website_certificate_authority(Client, Input) ->
    disassociate_website_certificate_authority(Client, Input, []).

-spec disassociate_website_certificate_authority(aws_client:aws_client(), disassociate_website_certificate_authority_request(), proplists:proplist()) ->
    {ok, disassociate_website_certificate_authority_response(), tuple()} |
    {error, any()} |
    {error, disassociate_website_certificate_authority_errors(), tuple()}.
disassociate_website_certificate_authority(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disassociateWebsiteCertificateAuthority"],
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

%% @doc Retrieves a list of devices registered with the specified fleet.
-spec list_devices(aws_client:aws_client(), list_devices_request()) ->
    {ok, list_devices_response(), tuple()} |
    {error, any()} |
    {error, list_devices_errors(), tuple()}.
list_devices(Client, Input) ->
    list_devices(Client, Input, []).

-spec list_devices(aws_client:aws_client(), list_devices_request(), proplists:proplist()) ->
    {ok, list_devices_response(), tuple()} |
    {error, any()} |
    {error, list_devices_errors(), tuple()}.
list_devices(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listDevices"],
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

%% @doc Retrieves a list of domains associated to a specified fleet.
-spec list_domains(aws_client:aws_client(), list_domains_request()) ->
    {ok, list_domains_response(), tuple()} |
    {error, any()} |
    {error, list_domains_errors(), tuple()}.
list_domains(Client, Input) ->
    list_domains(Client, Input, []).

-spec list_domains(aws_client:aws_client(), list_domains_request(), proplists:proplist()) ->
    {ok, list_domains_response(), tuple()} |
    {error, any()} |
    {error, list_domains_errors(), tuple()}.
list_domains(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listDomains"],
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

%% @doc Retrieves a list of fleets for the current account and Region.
-spec list_fleets(aws_client:aws_client(), list_fleets_request()) ->
    {ok, list_fleets_response(), tuple()} |
    {error, any()} |
    {error, list_fleets_errors(), tuple()}.
list_fleets(Client, Input) ->
    list_fleets(Client, Input, []).

-spec list_fleets(aws_client:aws_client(), list_fleets_request(), proplists:proplist()) ->
    {ok, list_fleets_response(), tuple()} |
    {error, any()} |
    {error, list_fleets_errors(), tuple()}.
list_fleets(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listFleets"],
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

%% @doc Retrieves a list of tags for the specified resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
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

%% @doc Retrieves a list of website authorization providers associated with a
%% specified fleet.
-spec list_website_authorization_providers(aws_client:aws_client(), list_website_authorization_providers_request()) ->
    {ok, list_website_authorization_providers_response(), tuple()} |
    {error, any()} |
    {error, list_website_authorization_providers_errors(), tuple()}.
list_website_authorization_providers(Client, Input) ->
    list_website_authorization_providers(Client, Input, []).

-spec list_website_authorization_providers(aws_client:aws_client(), list_website_authorization_providers_request(), proplists:proplist()) ->
    {ok, list_website_authorization_providers_response(), tuple()} |
    {error, any()} |
    {error, list_website_authorization_providers_errors(), tuple()}.
list_website_authorization_providers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listWebsiteAuthorizationProviders"],
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

%% @doc Retrieves a list of certificate authorities added for the current
%% account and
%% Region.
-spec list_website_certificate_authorities(aws_client:aws_client(), list_website_certificate_authorities_request()) ->
    {ok, list_website_certificate_authorities_response(), tuple()} |
    {error, any()} |
    {error, list_website_certificate_authorities_errors(), tuple()}.
list_website_certificate_authorities(Client, Input) ->
    list_website_certificate_authorities(Client, Input, []).

-spec list_website_certificate_authorities(aws_client:aws_client(), list_website_certificate_authorities_request(), proplists:proplist()) ->
    {ok, list_website_certificate_authorities_response(), tuple()} |
    {error, any()} |
    {error, list_website_certificate_authorities_errors(), tuple()}.
list_website_certificate_authorities(Client, Input0, Options0) ->
    Method = post,
    Path = ["/listWebsiteCertificateAuthorities"],
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

%% @doc Moves a domain to ACTIVE status if it was in the INACTIVE status.
-spec restore_domain_access(aws_client:aws_client(), restore_domain_access_request()) ->
    {ok, restore_domain_access_response(), tuple()} |
    {error, any()} |
    {error, restore_domain_access_errors(), tuple()}.
restore_domain_access(Client, Input) ->
    restore_domain_access(Client, Input, []).

-spec restore_domain_access(aws_client:aws_client(), restore_domain_access_request(), proplists:proplist()) ->
    {ok, restore_domain_access_response(), tuple()} |
    {error, any()} |
    {error, restore_domain_access_errors(), tuple()}.
restore_domain_access(Client, Input0, Options0) ->
    Method = post,
    Path = ["/restoreDomainAccess"],
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

%% @doc Moves a domain to INACTIVE status if it was in the ACTIVE status.
-spec revoke_domain_access(aws_client:aws_client(), revoke_domain_access_request()) ->
    {ok, revoke_domain_access_response(), tuple()} |
    {error, any()} |
    {error, revoke_domain_access_errors(), tuple()}.
revoke_domain_access(Client, Input) ->
    revoke_domain_access(Client, Input, []).

-spec revoke_domain_access(aws_client:aws_client(), revoke_domain_access_request(), proplists:proplist()) ->
    {ok, revoke_domain_access_response(), tuple()} |
    {error, any()} |
    {error, revoke_domain_access_errors(), tuple()}.
revoke_domain_access(Client, Input0, Options0) ->
    Method = post,
    Path = ["/revokeDomainAccess"],
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

%% @doc Signs the user out from all of their devices.
%%
%% The user can sign in again if they have
%% valid credentials.
-spec sign_out_user(aws_client:aws_client(), sign_out_user_request()) ->
    {ok, sign_out_user_response(), tuple()} |
    {error, any()} |
    {error, sign_out_user_errors(), tuple()}.
sign_out_user(Client, Input) ->
    sign_out_user(Client, Input, []).

-spec sign_out_user(aws_client:aws_client(), sign_out_user_request(), proplists:proplist()) ->
    {ok, sign_out_user_response(), tuple()} |
    {error, any()} |
    {error, sign_out_user_errors(), tuple()}.
sign_out_user(Client, Input0, Options0) ->
    Method = post,
    Path = ["/signOutUser"],
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

%% @doc Adds or overwrites one or more tags for the specified resource, such
%% as a fleet.
%%
%% Each tag consists of a key and an optional value. If a resource already
%% has a tag with the same key, this operation updates its value.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
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

%% @doc Removes one or more tags from the specified resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the audit stream configuration for the fleet.
-spec update_audit_stream_configuration(aws_client:aws_client(), update_audit_stream_configuration_request()) ->
    {ok, update_audit_stream_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_audit_stream_configuration_errors(), tuple()}.
update_audit_stream_configuration(Client, Input) ->
    update_audit_stream_configuration(Client, Input, []).

-spec update_audit_stream_configuration(aws_client:aws_client(), update_audit_stream_configuration_request(), proplists:proplist()) ->
    {ok, update_audit_stream_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_audit_stream_configuration_errors(), tuple()}.
update_audit_stream_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateAuditStreamConfiguration"],
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

%% @doc Updates the company network configuration for the fleet.
-spec update_company_network_configuration(aws_client:aws_client(), update_company_network_configuration_request()) ->
    {ok, update_company_network_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_company_network_configuration_errors(), tuple()}.
update_company_network_configuration(Client, Input) ->
    update_company_network_configuration(Client, Input, []).

-spec update_company_network_configuration(aws_client:aws_client(), update_company_network_configuration_request(), proplists:proplist()) ->
    {ok, update_company_network_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_company_network_configuration_errors(), tuple()}.
update_company_network_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateCompanyNetworkConfiguration"],
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

%% @doc Updates the device policy configuration for the fleet.
-spec update_device_policy_configuration(aws_client:aws_client(), update_device_policy_configuration_request()) ->
    {ok, update_device_policy_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_device_policy_configuration_errors(), tuple()}.
update_device_policy_configuration(Client, Input) ->
    update_device_policy_configuration(Client, Input, []).

-spec update_device_policy_configuration(aws_client:aws_client(), update_device_policy_configuration_request(), proplists:proplist()) ->
    {ok, update_device_policy_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_device_policy_configuration_errors(), tuple()}.
update_device_policy_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateDevicePolicyConfiguration"],
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

%% @doc Updates domain metadata, such as DisplayName.
-spec update_domain_metadata(aws_client:aws_client(), update_domain_metadata_request()) ->
    {ok, update_domain_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_domain_metadata_errors(), tuple()}.
update_domain_metadata(Client, Input) ->
    update_domain_metadata(Client, Input, []).

-spec update_domain_metadata(aws_client:aws_client(), update_domain_metadata_request(), proplists:proplist()) ->
    {ok, update_domain_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_domain_metadata_errors(), tuple()}.
update_domain_metadata(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateDomainMetadata"],
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

%% @doc Updates fleet metadata, such as DisplayName.
-spec update_fleet_metadata(aws_client:aws_client(), update_fleet_metadata_request()) ->
    {ok, update_fleet_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_fleet_metadata_errors(), tuple()}.
update_fleet_metadata(Client, Input) ->
    update_fleet_metadata(Client, Input, []).

-spec update_fleet_metadata(aws_client:aws_client(), update_fleet_metadata_request(), proplists:proplist()) ->
    {ok, update_fleet_metadata_response(), tuple()} |
    {error, any()} |
    {error, update_fleet_metadata_errors(), tuple()}.
update_fleet_metadata(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateFleetMetadata"],
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

%% @doc Updates the identity provider configuration for the fleet.
-spec update_identity_provider_configuration(aws_client:aws_client(), update_identity_provider_configuration_request()) ->
    {ok, update_identity_provider_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_identity_provider_configuration_errors(), tuple()}.
update_identity_provider_configuration(Client, Input) ->
    update_identity_provider_configuration(Client, Input, []).

-spec update_identity_provider_configuration(aws_client:aws_client(), update_identity_provider_configuration_request(), proplists:proplist()) ->
    {ok, update_identity_provider_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_identity_provider_configuration_errors(), tuple()}.
update_identity_provider_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/updateIdentityProviderConfiguration"],
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
    Client1 = Client#{service => <<"worklink">>},
    Host = build_host(<<"worklink">>, Client1),
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
