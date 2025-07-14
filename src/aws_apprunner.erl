%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc App Runner
%%
%% App Runner is an application service that provides a fast, simple, and
%% cost-effective way to go directly from an existing container image or
%% source code
%% to a running service in the Amazon Web Services Cloud in seconds.
%%
%% You don't need to learn new technologies, decide which compute service
%% to use, or understand how to
%% provision and configure Amazon Web Services resources.
%%
%% App Runner connects directly to your container registry or source code
%% repository. It provides an automatic delivery pipeline with fully managed
%% operations,
%% high performance, scalability, and security.
%%
%% For more information about App Runner, see the App Runner Developer Guide:
%% https://docs.aws.amazon.com/apprunner/latest/dg/.
%% For release information, see the App Runner Release Notes:
%% https://docs.aws.amazon.com/apprunner/latest/relnotes/.
%%
%% To install the Software Development Kits (SDKs), Integrated
%% Development Environment (IDE) Toolkits, and command line tools that you
%% can use to access the API, see Tools for
%% Amazon Web Services: http://aws.amazon.com/tools/.
%%
%% Endpoints
%%
%% For a list of Region-specific endpoints that App Runner supports, see App
%% Runner
%% endpoints and quotas:
%% https://docs.aws.amazon.com/general/latest/gr/apprunner.html in the Amazon
%% Web Services General Reference.
-module(aws_apprunner).

-export([associate_custom_domain/2,
         associate_custom_domain/3,
         create_auto_scaling_configuration/2,
         create_auto_scaling_configuration/3,
         create_connection/2,
         create_connection/3,
         create_observability_configuration/2,
         create_observability_configuration/3,
         create_service/2,
         create_service/3,
         create_vpc_connector/2,
         create_vpc_connector/3,
         create_vpc_ingress_connection/2,
         create_vpc_ingress_connection/3,
         delete_auto_scaling_configuration/2,
         delete_auto_scaling_configuration/3,
         delete_connection/2,
         delete_connection/3,
         delete_observability_configuration/2,
         delete_observability_configuration/3,
         delete_service/2,
         delete_service/3,
         delete_vpc_connector/2,
         delete_vpc_connector/3,
         delete_vpc_ingress_connection/2,
         delete_vpc_ingress_connection/3,
         describe_auto_scaling_configuration/2,
         describe_auto_scaling_configuration/3,
         describe_custom_domains/2,
         describe_custom_domains/3,
         describe_observability_configuration/2,
         describe_observability_configuration/3,
         describe_service/2,
         describe_service/3,
         describe_vpc_connector/2,
         describe_vpc_connector/3,
         describe_vpc_ingress_connection/2,
         describe_vpc_ingress_connection/3,
         disassociate_custom_domain/2,
         disassociate_custom_domain/3,
         list_auto_scaling_configurations/2,
         list_auto_scaling_configurations/3,
         list_connections/2,
         list_connections/3,
         list_observability_configurations/2,
         list_observability_configurations/3,
         list_operations/2,
         list_operations/3,
         list_services/2,
         list_services/3,
         list_services_for_auto_scaling_configuration/2,
         list_services_for_auto_scaling_configuration/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_vpc_connectors/2,
         list_vpc_connectors/3,
         list_vpc_ingress_connections/2,
         list_vpc_ingress_connections/3,
         pause_service/2,
         pause_service/3,
         resume_service/2,
         resume_service/3,
         start_deployment/2,
         start_deployment/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_default_auto_scaling_configuration/2,
         update_default_auto_scaling_configuration/3,
         update_service/2,
         update_service/3,
         update_vpc_ingress_connection/2,
         update_vpc_ingress_connection/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% custom_domain() :: #{
%%   <<"CertificateValidationRecords">> => list(certificate_validation_record()),
%%   <<"DomainName">> => string(),
%%   <<"EnableWWWSubdomain">> => boolean(),
%%   <<"Status">> => list(any())
%% }
-type custom_domain() :: #{binary() => any()}.

%% Example:
%% encryption_configuration() :: #{
%%   <<"KmsKey">> => string()
%% }
-type encryption_configuration() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_observability_configuration_request() :: #{
%%   <<"ObservabilityConfigurationArn">> := string()
%% }
-type delete_observability_configuration_request() :: #{binary() => any()}.

%% Example:
%% list_observability_configurations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ObservabilityConfigurationSummaryList">> => list(observability_configuration_summary())
%% }
-type list_observability_configurations_response() :: #{binary() => any()}.

%% Example:
%% ingress_vpc_configuration() :: #{
%%   <<"VpcEndpointId">> => string(),
%%   <<"VpcId">> => string()
%% }
-type ingress_vpc_configuration() :: #{binary() => any()}.

%% Example:
%% vpc_ingress_connection_summary() :: #{
%%   <<"ServiceArn">> => string(),
%%   <<"VpcIngressConnectionArn">> => string()
%% }
-type vpc_ingress_connection_summary() :: #{binary() => any()}.

%% Example:
%% create_observability_configuration_request() :: #{
%%   <<"ObservabilityConfigurationName">> := string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TraceConfiguration">> => trace_configuration()
%% }
-type create_observability_configuration_request() :: #{binary() => any()}.

%% Example:
%% describe_auto_scaling_configuration_request() :: #{
%%   <<"AutoScalingConfigurationArn">> := string()
%% }
-type describe_auto_scaling_configuration_request() :: #{binary() => any()}.

%% Example:
%% create_vpc_connector_response() :: #{
%%   <<"VpcConnector">> => vpc_connector()
%% }
-type create_vpc_connector_response() :: #{binary() => any()}.

%% Example:
%% code_configuration() :: #{
%%   <<"CodeConfigurationValues">> => code_configuration_values(),
%%   <<"ConfigurationSource">> => list(any())
%% }
-type code_configuration() :: #{binary() => any()}.

%% Example:
%% describe_observability_configuration_request() :: #{
%%   <<"ObservabilityConfigurationArn">> := string()
%% }
-type describe_observability_configuration_request() :: #{binary() => any()}.

%% Example:
%% update_default_auto_scaling_configuration_response() :: #{
%%   <<"AutoScalingConfiguration">> => auto_scaling_configuration()
%% }
-type update_default_auto_scaling_configuration_response() :: #{binary() => any()}.

%% Example:
%% vpc_dns_target() :: #{
%%   <<"DomainName">> => string(),
%%   <<"VpcId">> => string(),
%%   <<"VpcIngressConnectionArn">> => string()
%% }
-type vpc_dns_target() :: #{binary() => any()}.

%% Example:
%% describe_observability_configuration_response() :: #{
%%   <<"ObservabilityConfiguration">> => observability_configuration()
%% }
-type describe_observability_configuration_response() :: #{binary() => any()}.

%% Example:
%% update_vpc_ingress_connection_response() :: #{
%%   <<"VpcIngressConnection">> => vpc_ingress_connection()
%% }
-type update_vpc_ingress_connection_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% describe_service_request() :: #{
%%   <<"ServiceArn">> := string()
%% }
-type describe_service_request() :: #{binary() => any()}.

%% Example:
%% image_repository() :: #{
%%   <<"ImageConfiguration">> => image_configuration(),
%%   <<"ImageIdentifier">> => string(),
%%   <<"ImageRepositoryType">> => list(any())
%% }
-type image_repository() :: #{binary() => any()}.

%% Example:
%% list_connections_response() :: #{
%%   <<"ConnectionSummaryList">> => list(connection_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_connections_response() :: #{binary() => any()}.

%% Example:
%% source_code_version() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Value">> => string()
%% }
-type source_code_version() :: #{binary() => any()}.

%% Example:
%% create_observability_configuration_response() :: #{
%%   <<"ObservabilityConfiguration">> => observability_configuration()
%% }
-type create_observability_configuration_response() :: #{binary() => any()}.

%% Example:
%% pause_service_request() :: #{
%%   <<"ServiceArn">> := string()
%% }
-type pause_service_request() :: #{binary() => any()}.

%% Example:
%% describe_custom_domains_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ServiceArn">> := string()
%% }
-type describe_custom_domains_request() :: #{binary() => any()}.

%% Example:
%% vpc_connector() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DeletedAt">> => non_neg_integer(),
%%   <<"SecurityGroups">> => list(string()),
%%   <<"Status">> => list(any()),
%%   <<"Subnets">> => list(string()),
%%   <<"VpcConnectorArn">> => string(),
%%   <<"VpcConnectorName">> => string(),
%%   <<"VpcConnectorRevision">> => integer()
%% }
-type vpc_connector() :: #{binary() => any()}.

%% Example:
%% describe_vpc_ingress_connection_request() :: #{
%%   <<"VpcIngressConnectionArn">> := string()
%% }
-type describe_vpc_ingress_connection_request() :: #{binary() => any()}.

%% Example:
%% service() :: #{
%%   <<"AutoScalingConfigurationSummary">> => auto_scaling_configuration_summary(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DeletedAt">> => non_neg_integer(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"HealthCheckConfiguration">> => health_check_configuration(),
%%   <<"InstanceConfiguration">> => instance_configuration(),
%%   <<"NetworkConfiguration">> => network_configuration(),
%%   <<"ObservabilityConfiguration">> => service_observability_configuration(),
%%   <<"ServiceArn">> => string(),
%%   <<"ServiceId">> => string(),
%%   <<"ServiceName">> => string(),
%%   <<"ServiceUrl">> => string(),
%%   <<"SourceConfiguration">> => source_configuration(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type service() :: #{binary() => any()}.

%% Example:
%% list_vpc_connectors_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"VpcConnectors">> => list(vpc_connector())
%% }
-type list_vpc_connectors_response() :: #{binary() => any()}.

%% Example:
%% internal_service_error_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_error_exception() :: #{binary() => any()}.

%% Example:
%% start_deployment_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type start_deployment_response() :: #{binary() => any()}.

%% Example:
%% operation_summary() :: #{
%%   <<"EndedAt">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"StartedAt">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"TargetArn">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type operation_summary() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_vpc_connector_response() :: #{
%%   <<"VpcConnector">> => vpc_connector()
%% }
-type delete_vpc_connector_response() :: #{binary() => any()}.

%% Example:
%% create_vpc_ingress_connection_response() :: #{
%%   <<"VpcIngressConnection">> => vpc_ingress_connection()
%% }
-type create_vpc_ingress_connection_response() :: #{binary() => any()}.

%% Example:
%% list_auto_scaling_configurations_request() :: #{
%%   <<"AutoScalingConfigurationName">> => string(),
%%   <<"LatestOnly">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_auto_scaling_configurations_request() :: #{binary() => any()}.

%% Example:
%% invalid_state_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_state_exception() :: #{binary() => any()}.

%% Example:
%% associate_custom_domain_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"EnableWWWSubdomain">> => boolean(),
%%   <<"ServiceArn">> := string()
%% }
-type associate_custom_domain_request() :: #{binary() => any()}.

%% Example:
%% create_vpc_ingress_connection_request() :: #{
%%   <<"IngressVpcConfiguration">> := ingress_vpc_configuration(),
%%   <<"ServiceArn">> := string(),
%%   <<"Tags">> => list(tag()),
%%   <<"VpcIngressConnectionName">> := string()
%% }
-type create_vpc_ingress_connection_request() :: #{binary() => any()}.

%% Example:
%% list_services_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_services_request() :: #{binary() => any()}.

%% Example:
%% trace_configuration() :: #{
%%   <<"Vendor">> => list(any())
%% }
-type trace_configuration() :: #{binary() => any()}.

%% Example:
%% disassociate_custom_domain_request() :: #{
%%   <<"DomainName">> := string(),
%%   <<"ServiceArn">> := string()
%% }
-type disassociate_custom_domain_request() :: #{binary() => any()}.

%% Example:
%% list_connections_request() :: #{
%%   <<"ConnectionName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_connections_request() :: #{binary() => any()}.

%% Example:
%% list_services_for_auto_scaling_configuration_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ServiceArnList">> => list(string())
%% }
-type list_services_for_auto_scaling_configuration_response() :: #{binary() => any()}.

%% Example:
%% delete_vpc_ingress_connection_response() :: #{
%%   <<"VpcIngressConnection">> => vpc_ingress_connection()
%% }
-type delete_vpc_ingress_connection_response() :: #{binary() => any()}.

%% Example:
%% vpc_ingress_connection() :: #{
%%   <<"AccountId">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DeletedAt">> => non_neg_integer(),
%%   <<"DomainName">> => string(),
%%   <<"IngressVpcConfiguration">> => ingress_vpc_configuration(),
%%   <<"ServiceArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"VpcIngressConnectionArn">> => string(),
%%   <<"VpcIngressConnectionName">> => string()
%% }
-type vpc_ingress_connection() :: #{binary() => any()}.

%% Example:
%% list_operations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ServiceArn">> := string()
%% }
-type list_operations_request() :: #{binary() => any()}.

%% Example:
%% auto_scaling_configuration() :: #{
%%   <<"AutoScalingConfigurationArn">> => string(),
%%   <<"AutoScalingConfigurationName">> => string(),
%%   <<"AutoScalingConfigurationRevision">> => integer(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DeletedAt">> => non_neg_integer(),
%%   <<"HasAssociatedService">> => boolean(),
%%   <<"IsDefault">> => boolean(),
%%   <<"Latest">> => boolean(),
%%   <<"MaxConcurrency">> => integer(),
%%   <<"MaxSize">> => integer(),
%%   <<"MinSize">> => integer(),
%%   <<"Status">> => list(any())
%% }
-type auto_scaling_configuration() :: #{binary() => any()}.

%% Example:
%% certificate_validation_record() :: #{
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => string(),
%%   <<"Value">> => string()
%% }
-type certificate_validation_record() :: #{binary() => any()}.

%% Example:
%% list_vpc_connectors_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_vpc_connectors_request() :: #{binary() => any()}.

%% Example:
%% create_vpc_connector_request() :: #{
%%   <<"SecurityGroups">> => list(string()),
%%   <<"Subnets">> := list(string()),
%%   <<"Tags">> => list(tag()),
%%   <<"VpcConnectorName">> := string()
%% }
-type create_vpc_connector_request() :: #{binary() => any()}.

%% Example:
%% delete_auto_scaling_configuration_request() :: #{
%%   <<"AutoScalingConfigurationArn">> := string(),
%%   <<"DeleteAllRevisions">> => boolean()
%% }
-type delete_auto_scaling_configuration_request() :: #{binary() => any()}.

%% Example:
%% update_vpc_ingress_connection_request() :: #{
%%   <<"IngressVpcConfiguration">> := ingress_vpc_configuration(),
%%   <<"VpcIngressConnectionArn">> := string()
%% }
-type update_vpc_ingress_connection_request() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% invalid_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.

%% Example:
%% connection() :: #{
%%   <<"ConnectionArn">> => string(),
%%   <<"ConnectionName">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"ProviderType">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type connection() :: #{binary() => any()}.

%% Example:
%% list_services_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ServiceSummaryList">> => list(service_summary())
%% }
-type list_services_response() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% service_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"ServiceArn">> => string(),
%%   <<"ServiceId">> => string(),
%%   <<"ServiceName">> => string(),
%%   <<"ServiceUrl">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type service_summary() :: #{binary() => any()}.

%% Example:
%% resume_service_request() :: #{
%%   <<"ServiceArn">> := string()
%% }
-type resume_service_request() :: #{binary() => any()}.

%% Example:
%% create_service_request() :: #{
%%   <<"AutoScalingConfigurationArn">> => string(),
%%   <<"EncryptionConfiguration">> => encryption_configuration(),
%%   <<"HealthCheckConfiguration">> => health_check_configuration(),
%%   <<"InstanceConfiguration">> => instance_configuration(),
%%   <<"NetworkConfiguration">> => network_configuration(),
%%   <<"ObservabilityConfiguration">> => service_observability_configuration(),
%%   <<"ServiceName">> := string(),
%%   <<"SourceConfiguration">> := source_configuration(),
%%   <<"Tags">> => list(tag())
%% }
-type create_service_request() :: #{binary() => any()}.

%% Example:
%% code_repository() :: #{
%%   <<"CodeConfiguration">> => code_configuration(),
%%   <<"RepositoryUrl">> => string(),
%%   <<"SourceCodeVersion">> => source_code_version(),
%%   <<"SourceDirectory">> => string()
%% }
-type code_repository() :: #{binary() => any()}.

%% Example:
%% auto_scaling_configuration_summary() :: #{
%%   <<"AutoScalingConfigurationArn">> => string(),
%%   <<"AutoScalingConfigurationName">> => string(),
%%   <<"AutoScalingConfigurationRevision">> => integer(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"HasAssociatedService">> => boolean(),
%%   <<"IsDefault">> => boolean(),
%%   <<"Status">> => list(any())
%% }
-type auto_scaling_configuration_summary() :: #{binary() => any()}.

%% Example:
%% list_observability_configurations_request() :: #{
%%   <<"LatestOnly">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ObservabilityConfigurationName">> => string()
%% }
-type list_observability_configurations_request() :: #{binary() => any()}.

%% Example:
%% delete_observability_configuration_response() :: #{
%%   <<"ObservabilityConfiguration">> => observability_configuration()
%% }
-type delete_observability_configuration_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% ingress_configuration() :: #{
%%   <<"IsPubliclyAccessible">> => boolean()
%% }
-type ingress_configuration() :: #{binary() => any()}.

%% Example:
%% source_configuration() :: #{
%%   <<"AuthenticationConfiguration">> => authentication_configuration(),
%%   <<"AutoDeploymentsEnabled">> => boolean(),
%%   <<"CodeRepository">> => code_repository(),
%%   <<"ImageRepository">> => image_repository()
%% }
-type source_configuration() :: #{binary() => any()}.

%% Example:
%% describe_vpc_connector_request() :: #{
%%   <<"VpcConnectorArn">> := string()
%% }
-type describe_vpc_connector_request() :: #{binary() => any()}.

%% Example:
%% describe_service_response() :: #{
%%   <<"Service">> => service()
%% }
-type describe_service_response() :: #{binary() => any()}.

%% Example:
%% delete_vpc_connector_request() :: #{
%%   <<"VpcConnectorArn">> := string()
%% }
-type delete_vpc_connector_request() :: #{binary() => any()}.

%% Example:
%% update_default_auto_scaling_configuration_request() :: #{
%%   <<"AutoScalingConfigurationArn">> := string()
%% }
-type update_default_auto_scaling_configuration_request() :: #{binary() => any()}.

%% Example:
%% update_service_request() :: #{
%%   <<"AutoScalingConfigurationArn">> => string(),
%%   <<"HealthCheckConfiguration">> => health_check_configuration(),
%%   <<"InstanceConfiguration">> => instance_configuration(),
%%   <<"NetworkConfiguration">> => network_configuration(),
%%   <<"ObservabilityConfiguration">> => service_observability_configuration(),
%%   <<"ServiceArn">> := string(),
%%   <<"SourceConfiguration">> => source_configuration()
%% }
-type update_service_request() :: #{binary() => any()}.

%% Example:
%% code_configuration_values() :: #{
%%   <<"BuildCommand">> => string(),
%%   <<"Port">> => string(),
%%   <<"Runtime">> => list(any()),
%%   <<"RuntimeEnvironmentSecrets">> => map(),
%%   <<"RuntimeEnvironmentVariables">> => map(),
%%   <<"StartCommand">> => string()
%% }
-type code_configuration_values() :: #{binary() => any()}.

%% Example:
%% describe_auto_scaling_configuration_response() :: #{
%%   <<"AutoScalingConfiguration">> => auto_scaling_configuration()
%% }
-type describe_auto_scaling_configuration_response() :: #{binary() => any()}.

%% Example:
%% list_services_for_auto_scaling_configuration_request() :: #{
%%   <<"AutoScalingConfigurationArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_services_for_auto_scaling_configuration_request() :: #{binary() => any()}.

%% Example:
%% observability_configuration() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DeletedAt">> => non_neg_integer(),
%%   <<"Latest">> => boolean(),
%%   <<"ObservabilityConfigurationArn">> => string(),
%%   <<"ObservabilityConfigurationName">> => string(),
%%   <<"ObservabilityConfigurationRevision">> => integer(),
%%   <<"Status">> => list(any()),
%%   <<"TraceConfiguration">> => trace_configuration()
%% }
-type observability_configuration() :: #{binary() => any()}.

%% Example:
%% list_auto_scaling_configurations_response() :: #{
%%   <<"AutoScalingConfigurationSummaryList">> => list(auto_scaling_configuration_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_auto_scaling_configurations_response() :: #{binary() => any()}.

%% Example:
%% network_configuration() :: #{
%%   <<"EgressConfiguration">> => egress_configuration(),
%%   <<"IngressConfiguration">> => ingress_configuration(),
%%   <<"IpAddressType">> => list(any())
%% }
-type network_configuration() :: #{binary() => any()}.

%% Example:
%% list_operations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"OperationSummaryList">> => list(operation_summary())
%% }
-type list_operations_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% list_vpc_ingress_connections_filter() :: #{
%%   <<"ServiceArn">> => string(),
%%   <<"VpcEndpointId">> => string()
%% }
-type list_vpc_ingress_connections_filter() :: #{binary() => any()}.

%% Example:
%% connection_summary() :: #{
%%   <<"ConnectionArn">> => string(),
%%   <<"ConnectionName">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"ProviderType">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type connection_summary() :: #{binary() => any()}.

%% Example:
%% instance_configuration() :: #{
%%   <<"Cpu">> => string(),
%%   <<"InstanceRoleArn">> => string(),
%%   <<"Memory">> => string()
%% }
-type instance_configuration() :: #{binary() => any()}.

%% Example:
%% delete_connection_response() :: #{
%%   <<"Connection">> => connection()
%% }
-type delete_connection_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% observability_configuration_summary() :: #{
%%   <<"ObservabilityConfigurationArn">> => string(),
%%   <<"ObservabilityConfigurationName">> => string(),
%%   <<"ObservabilityConfigurationRevision">> => integer()
%% }
-type observability_configuration_summary() :: #{binary() => any()}.

%% Example:
%% egress_configuration() :: #{
%%   <<"EgressType">> => list(any()),
%%   <<"VpcConnectorArn">> => string()
%% }
-type egress_configuration() :: #{binary() => any()}.

%% Example:
%% delete_service_request() :: #{
%%   <<"ServiceArn">> := string()
%% }
-type delete_service_request() :: #{binary() => any()}.

%% Example:
%% delete_vpc_ingress_connection_request() :: #{
%%   <<"VpcIngressConnectionArn">> := string()
%% }
-type delete_vpc_ingress_connection_request() :: #{binary() => any()}.

%% Example:
%% create_auto_scaling_configuration_request() :: #{
%%   <<"AutoScalingConfigurationName">> := string(),
%%   <<"MaxConcurrency">> => integer(),
%%   <<"MaxSize">> => integer(),
%%   <<"MinSize">> => integer(),
%%   <<"Tags">> => list(tag())
%% }
-type create_auto_scaling_configuration_request() :: #{binary() => any()}.

%% Example:
%% create_connection_response() :: #{
%%   <<"Connection">> => connection()
%% }
-type create_connection_response() :: #{binary() => any()}.

%% Example:
%% describe_vpc_ingress_connection_response() :: #{
%%   <<"VpcIngressConnection">> => vpc_ingress_connection()
%% }
-type describe_vpc_ingress_connection_response() :: #{binary() => any()}.

%% Example:
%% delete_auto_scaling_configuration_response() :: #{
%%   <<"AutoScalingConfiguration">> => auto_scaling_configuration()
%% }
-type delete_auto_scaling_configuration_response() :: #{binary() => any()}.

%% Example:
%% service_observability_configuration() :: #{
%%   <<"ObservabilityConfigurationArn">> => string(),
%%   <<"ObservabilityEnabled">> => boolean()
%% }
-type service_observability_configuration() :: #{binary() => any()}.

%% Example:
%% describe_vpc_connector_response() :: #{
%%   <<"VpcConnector">> => vpc_connector()
%% }
-type describe_vpc_connector_response() :: #{binary() => any()}.

%% Example:
%% update_service_response() :: #{
%%   <<"OperationId">> => string(),
%%   <<"Service">> => service()
%% }
-type update_service_response() :: #{binary() => any()}.

%% Example:
%% delete_service_response() :: #{
%%   <<"OperationId">> => string(),
%%   <<"Service">> => service()
%% }
-type delete_service_response() :: #{binary() => any()}.

%% Example:
%% authentication_configuration() :: #{
%%   <<"AccessRoleArn">> => string(),
%%   <<"ConnectionArn">> => string()
%% }
-type authentication_configuration() :: #{binary() => any()}.

%% Example:
%% delete_connection_request() :: #{
%%   <<"ConnectionArn">> := string()
%% }
-type delete_connection_request() :: #{binary() => any()}.

%% Example:
%% create_service_response() :: #{
%%   <<"OperationId">> => string(),
%%   <<"Service">> => service()
%% }
-type create_service_response() :: #{binary() => any()}.

%% Example:
%% image_configuration() :: #{
%%   <<"Port">> => string(),
%%   <<"RuntimeEnvironmentSecrets">> => map(),
%%   <<"RuntimeEnvironmentVariables">> => map(),
%%   <<"StartCommand">> => string()
%% }
-type image_configuration() :: #{binary() => any()}.

%% Example:
%% list_vpc_ingress_connections_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"VpcIngressConnectionSummaryList">> => list(vpc_ingress_connection_summary())
%% }
-type list_vpc_ingress_connections_response() :: #{binary() => any()}.

%% Example:
%% create_connection_request() :: #{
%%   <<"ConnectionName">> := string(),
%%   <<"ProviderType">> := list(any()),
%%   <<"Tags">> => list(tag())
%% }
-type create_connection_request() :: #{binary() => any()}.

%% Example:
%% associate_custom_domain_response() :: #{
%%   <<"CustomDomain">> => custom_domain(),
%%   <<"DNSTarget">> => string(),
%%   <<"ServiceArn">> => string(),
%%   <<"VpcDNSTargets">> => list(vpc_dns_target())
%% }
-type associate_custom_domain_response() :: #{binary() => any()}.

%% Example:
%% start_deployment_request() :: #{
%%   <<"ServiceArn">> := string()
%% }
-type start_deployment_request() :: #{binary() => any()}.

%% Example:
%% list_vpc_ingress_connections_request() :: #{
%%   <<"Filter">> => list_vpc_ingress_connections_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_vpc_ingress_connections_request() :: #{binary() => any()}.

%% Example:
%% create_auto_scaling_configuration_response() :: #{
%%   <<"AutoScalingConfiguration">> => auto_scaling_configuration()
%% }
-type create_auto_scaling_configuration_response() :: #{binary() => any()}.

%% Example:
%% resume_service_response() :: #{
%%   <<"OperationId">> => string(),
%%   <<"Service">> => service()
%% }
-type resume_service_response() :: #{binary() => any()}.

%% Example:
%% disassociate_custom_domain_response() :: #{
%%   <<"CustomDomain">> => custom_domain(),
%%   <<"DNSTarget">> => string(),
%%   <<"ServiceArn">> => string(),
%%   <<"VpcDNSTargets">> => list(vpc_dns_target())
%% }
-type disassociate_custom_domain_response() :: #{binary() => any()}.

%% Example:
%% pause_service_response() :: #{
%%   <<"OperationId">> => string(),
%%   <<"Service">> => service()
%% }
-type pause_service_response() :: #{binary() => any()}.

%% Example:
%% health_check_configuration() :: #{
%%   <<"HealthyThreshold">> => integer(),
%%   <<"Interval">> => integer(),
%%   <<"Path">> => string(),
%%   <<"Protocol">> => list(any()),
%%   <<"Timeout">> => integer(),
%%   <<"UnhealthyThreshold">> => integer()
%% }
-type health_check_configuration() :: #{binary() => any()}.

%% Example:
%% describe_custom_domains_response() :: #{
%%   <<"CustomDomains">> => list(custom_domain()),
%%   <<"DNSTarget">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"ServiceArn">> => string(),
%%   <<"VpcDNSTargets">> => list(vpc_dns_target())
%% }
-type describe_custom_domains_response() :: #{binary() => any()}.

-type associate_custom_domain_errors() ::
    invalid_request_exception() | 
    invalid_state_exception() | 
    internal_service_error_exception().

-type create_auto_scaling_configuration_errors() ::
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    internal_service_error_exception().

-type create_connection_errors() ::
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    internal_service_error_exception().

-type create_observability_configuration_errors() ::
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    internal_service_error_exception().

-type create_service_errors() ::
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    internal_service_error_exception().

-type create_vpc_connector_errors() ::
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    internal_service_error_exception().

-type create_vpc_ingress_connection_errors() ::
    service_quota_exceeded_exception() | 
    invalid_request_exception() | 
    invalid_state_exception() | 
    internal_service_error_exception().

-type delete_auto_scaling_configuration_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type delete_connection_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type delete_observability_configuration_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type delete_service_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception() | 
    internal_service_error_exception().

-type delete_vpc_connector_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type delete_vpc_ingress_connection_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception() | 
    internal_service_error_exception().

-type describe_auto_scaling_configuration_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type describe_custom_domains_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type describe_observability_configuration_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type describe_service_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type describe_vpc_connector_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type describe_vpc_ingress_connection_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type disassociate_custom_domain_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception() | 
    internal_service_error_exception().

-type list_auto_scaling_configurations_errors() ::
    invalid_request_exception() | 
    internal_service_error_exception().

-type list_connections_errors() ::
    invalid_request_exception() | 
    internal_service_error_exception().

-type list_observability_configurations_errors() ::
    invalid_request_exception() | 
    internal_service_error_exception().

-type list_operations_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type list_services_errors() ::
    invalid_request_exception() | 
    internal_service_error_exception().

-type list_services_for_auto_scaling_configuration_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type list_tags_for_resource_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception() | 
    internal_service_error_exception().

-type list_vpc_connectors_errors() ::
    invalid_request_exception() | 
    internal_service_error_exception().

-type list_vpc_ingress_connections_errors() ::
    invalid_request_exception() | 
    internal_service_error_exception().

-type pause_service_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception() | 
    internal_service_error_exception().

-type resume_service_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception() | 
    internal_service_error_exception().

-type start_deployment_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type tag_resource_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception() | 
    internal_service_error_exception().

-type untag_resource_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception() | 
    internal_service_error_exception().

-type update_default_auto_scaling_configuration_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_service_error_exception().

-type update_service_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception() | 
    internal_service_error_exception().

-type update_vpc_ingress_connection_errors() ::
    invalid_request_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception() | 
    internal_service_error_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associate your own domain name with the App Runner subdomain URL of
%% your App Runner service.
%%
%% After you call `AssociateCustomDomain' and receive a successful
%% response, use the information in the `CustomDomain' record
%% that's returned to add CNAME records to your Domain Name System (DNS).
%% For each mapped domain name, add a mapping to the target App Runner
%% subdomain and one or
%% more certificate validation records. App Runner then performs DNS
%% validation to verify that you own or control the domain name that you
%% associated. App Runner tracks
%% domain validity in a certificate stored in AWS Certificate Manager (ACM):
%% https://docs.aws.amazon.com/acm/latest/userguide.
-spec associate_custom_domain(aws_client:aws_client(), associate_custom_domain_request()) ->
    {ok, associate_custom_domain_response(), tuple()} |
    {error, any()} |
    {error, associate_custom_domain_errors(), tuple()}.
associate_custom_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_custom_domain(Client, Input, []).

-spec associate_custom_domain(aws_client:aws_client(), associate_custom_domain_request(), proplists:proplist()) ->
    {ok, associate_custom_domain_response(), tuple()} |
    {error, any()} |
    {error, associate_custom_domain_errors(), tuple()}.
associate_custom_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateCustomDomain">>, Input, Options).

%% @doc Create an App Runner automatic scaling configuration resource.
%%
%% App Runner requires this resource when you create or update App Runner
%% services and you require
%% non-default auto scaling settings. You can share an auto scaling
%% configuration across multiple services.
%%
%% Create multiple revisions of a configuration by calling this action
%% multiple times using the same `AutoScalingConfigurationName'. The call
%% returns incremental `AutoScalingConfigurationRevision' values. When
%% you create a service and configure an auto scaling configuration resource,
%% the service uses the latest active revision of the auto scaling
%% configuration by default. You can optionally configure the service to use
%% a specific
%% revision.
%%
%% Configure a higher `MinSize' to increase the spread of your App Runner
%% service over more Availability Zones in the Amazon Web Services Region.
%% The
%% tradeoff is a higher minimal cost.
%%
%% Configure a lower `MaxSize' to control your cost. The tradeoff is
%% lower responsiveness during peak demand.
-spec create_auto_scaling_configuration(aws_client:aws_client(), create_auto_scaling_configuration_request()) ->
    {ok, create_auto_scaling_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_auto_scaling_configuration_errors(), tuple()}.
create_auto_scaling_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_auto_scaling_configuration(Client, Input, []).

-spec create_auto_scaling_configuration(aws_client:aws_client(), create_auto_scaling_configuration_request(), proplists:proplist()) ->
    {ok, create_auto_scaling_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_auto_scaling_configuration_errors(), tuple()}.
create_auto_scaling_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAutoScalingConfiguration">>, Input, Options).

%% @doc Create an App Runner connection resource.
%%
%% App Runner requires a connection resource when you create App Runner
%% services that access private repositories from
%% certain third-party providers. You can share a connection across multiple
%% services.
%%
%% A connection resource is needed to access GitHub and Bitbucket
%% repositories. Both require
%% a user interface approval process through the App Runner console before
%% you can use the
%% connection.
-spec create_connection(aws_client:aws_client(), create_connection_request()) ->
    {ok, create_connection_response(), tuple()} |
    {error, any()} |
    {error, create_connection_errors(), tuple()}.
create_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_connection(Client, Input, []).

-spec create_connection(aws_client:aws_client(), create_connection_request(), proplists:proplist()) ->
    {ok, create_connection_response(), tuple()} |
    {error, any()} |
    {error, create_connection_errors(), tuple()}.
create_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConnection">>, Input, Options).

%% @doc Create an App Runner observability configuration resource.
%%
%% App Runner requires this resource when you create or update App Runner
%% services and you want to enable
%% non-default observability features. You can share an observability
%% configuration across multiple services.
%%
%% Create multiple revisions of a configuration by calling this action
%% multiple times using the same `ObservabilityConfigurationName'. The
%% call returns incremental `ObservabilityConfigurationRevision' values.
%% When you create a service and configure an observability configuration
%% resource, the service uses the latest active revision of the observability
%% configuration by default. You can optionally configure the service to use
%% a
%% specific revision.
%%
%% The observability configuration resource is designed to configure multiple
%% features (currently one feature, tracing). This action takes optional
%% parameters that describe the configuration of these features (currently
%% one parameter, `TraceConfiguration'). If you don't specify a
%% feature
%% parameter, App Runner doesn't enable the feature.
-spec create_observability_configuration(aws_client:aws_client(), create_observability_configuration_request()) ->
    {ok, create_observability_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_observability_configuration_errors(), tuple()}.
create_observability_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_observability_configuration(Client, Input, []).

-spec create_observability_configuration(aws_client:aws_client(), create_observability_configuration_request(), proplists:proplist()) ->
    {ok, create_observability_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_observability_configuration_errors(), tuple()}.
create_observability_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateObservabilityConfiguration">>, Input, Options).

%% @doc Create an App Runner service.
%%
%% After the service is created, the action also automatically starts a
%% deployment.
%%
%% This is an asynchronous operation. On a successful call, you can use the
%% returned `OperationId' and the ListOperations:
%% https://docs.aws.amazon.com/apprunner/latest/api/API_ListOperations.html
%% call to track the operation's progress.
-spec create_service(aws_client:aws_client(), create_service_request()) ->
    {ok, create_service_response(), tuple()} |
    {error, any()} |
    {error, create_service_errors(), tuple()}.
create_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_service(Client, Input, []).

-spec create_service(aws_client:aws_client(), create_service_request(), proplists:proplist()) ->
    {ok, create_service_response(), tuple()} |
    {error, any()} |
    {error, create_service_errors(), tuple()}.
create_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateService">>, Input, Options).

%% @doc Create an App Runner VPC connector resource.
%%
%% App Runner requires this resource when you want to associate your App
%% Runner service to a custom Amazon Virtual Private Cloud
%% (Amazon VPC).
-spec create_vpc_connector(aws_client:aws_client(), create_vpc_connector_request()) ->
    {ok, create_vpc_connector_response(), tuple()} |
    {error, any()} |
    {error, create_vpc_connector_errors(), tuple()}.
create_vpc_connector(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vpc_connector(Client, Input, []).

-spec create_vpc_connector(aws_client:aws_client(), create_vpc_connector_request(), proplists:proplist()) ->
    {ok, create_vpc_connector_response(), tuple()} |
    {error, any()} |
    {error, create_vpc_connector_errors(), tuple()}.
create_vpc_connector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVpcConnector">>, Input, Options).

%% @doc Create an App Runner VPC Ingress Connection resource.
%%
%% App Runner requires this resource when you want to associate your App
%% Runner service with an Amazon VPC endpoint.
-spec create_vpc_ingress_connection(aws_client:aws_client(), create_vpc_ingress_connection_request()) ->
    {ok, create_vpc_ingress_connection_response(), tuple()} |
    {error, any()} |
    {error, create_vpc_ingress_connection_errors(), tuple()}.
create_vpc_ingress_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vpc_ingress_connection(Client, Input, []).

-spec create_vpc_ingress_connection(aws_client:aws_client(), create_vpc_ingress_connection_request(), proplists:proplist()) ->
    {ok, create_vpc_ingress_connection_response(), tuple()} |
    {error, any()} |
    {error, create_vpc_ingress_connection_errors(), tuple()}.
create_vpc_ingress_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVpcIngressConnection">>, Input, Options).

%% @doc Delete an App Runner automatic scaling configuration resource.
%%
%% You can delete a top level auto scaling configuration, a specific revision
%% of one, or all
%% revisions associated with the top level configuration. You can't
%% delete the default auto scaling configuration or a configuration
%% that's used by one or
%% more App Runner services.
-spec delete_auto_scaling_configuration(aws_client:aws_client(), delete_auto_scaling_configuration_request()) ->
    {ok, delete_auto_scaling_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_auto_scaling_configuration_errors(), tuple()}.
delete_auto_scaling_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_auto_scaling_configuration(Client, Input, []).

-spec delete_auto_scaling_configuration(aws_client:aws_client(), delete_auto_scaling_configuration_request(), proplists:proplist()) ->
    {ok, delete_auto_scaling_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_auto_scaling_configuration_errors(), tuple()}.
delete_auto_scaling_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAutoScalingConfiguration">>, Input, Options).

%% @doc Delete an App Runner connection.
%%
%% You must first ensure that there are no running App Runner services that
%% use this connection. If there are any, the
%% `DeleteConnection' action fails.
-spec delete_connection(aws_client:aws_client(), delete_connection_request()) ->
    {ok, delete_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_connection_errors(), tuple()}.
delete_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_connection(Client, Input, []).

-spec delete_connection(aws_client:aws_client(), delete_connection_request(), proplists:proplist()) ->
    {ok, delete_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_connection_errors(), tuple()}.
delete_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConnection">>, Input, Options).

%% @doc Delete an App Runner observability configuration resource.
%%
%% You can delete a specific revision or the latest active revision. You
%% can't delete a
%% configuration that's used by one or more App Runner services.
-spec delete_observability_configuration(aws_client:aws_client(), delete_observability_configuration_request()) ->
    {ok, delete_observability_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_observability_configuration_errors(), tuple()}.
delete_observability_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_observability_configuration(Client, Input, []).

-spec delete_observability_configuration(aws_client:aws_client(), delete_observability_configuration_request(), proplists:proplist()) ->
    {ok, delete_observability_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_observability_configuration_errors(), tuple()}.
delete_observability_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteObservabilityConfiguration">>, Input, Options).

%% @doc Delete an App Runner service.
%%
%% This is an asynchronous operation. On a successful call, you can use the
%% returned `OperationId' and the `ListOperations'
%% call to track the operation's progress.
%%
%% Make sure that you don't have any active VPCIngressConnections
%% associated with the service you want to delete.
-spec delete_service(aws_client:aws_client(), delete_service_request()) ->
    {ok, delete_service_response(), tuple()} |
    {error, any()} |
    {error, delete_service_errors(), tuple()}.
delete_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service(Client, Input, []).

-spec delete_service(aws_client:aws_client(), delete_service_request(), proplists:proplist()) ->
    {ok, delete_service_response(), tuple()} |
    {error, any()} |
    {error, delete_service_errors(), tuple()}.
delete_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteService">>, Input, Options).

%% @doc Delete an App Runner VPC connector resource.
%%
%% You can't delete a
%% connector that's used by one or more App Runner services.
-spec delete_vpc_connector(aws_client:aws_client(), delete_vpc_connector_request()) ->
    {ok, delete_vpc_connector_response(), tuple()} |
    {error, any()} |
    {error, delete_vpc_connector_errors(), tuple()}.
delete_vpc_connector(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vpc_connector(Client, Input, []).

-spec delete_vpc_connector(aws_client:aws_client(), delete_vpc_connector_request(), proplists:proplist()) ->
    {ok, delete_vpc_connector_response(), tuple()} |
    {error, any()} |
    {error, delete_vpc_connector_errors(), tuple()}.
delete_vpc_connector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVpcConnector">>, Input, Options).

%% @doc Delete an App Runner VPC Ingress Connection resource that's
%% associated with an App Runner service.
%%
%% The VPC Ingress Connection must be in one of the following states to be
%% deleted:
%%
%% `AVAILABLE'
%%
%% `FAILED_CREATION'
%%
%% `FAILED_UPDATE'
%%
%% `FAILED_DELETION'
-spec delete_vpc_ingress_connection(aws_client:aws_client(), delete_vpc_ingress_connection_request()) ->
    {ok, delete_vpc_ingress_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_vpc_ingress_connection_errors(), tuple()}.
delete_vpc_ingress_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vpc_ingress_connection(Client, Input, []).

-spec delete_vpc_ingress_connection(aws_client:aws_client(), delete_vpc_ingress_connection_request(), proplists:proplist()) ->
    {ok, delete_vpc_ingress_connection_response(), tuple()} |
    {error, any()} |
    {error, delete_vpc_ingress_connection_errors(), tuple()}.
delete_vpc_ingress_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVpcIngressConnection">>, Input, Options).

%% @doc Return a full description of an App Runner automatic scaling
%% configuration resource.
-spec describe_auto_scaling_configuration(aws_client:aws_client(), describe_auto_scaling_configuration_request()) ->
    {ok, describe_auto_scaling_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_auto_scaling_configuration_errors(), tuple()}.
describe_auto_scaling_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_auto_scaling_configuration(Client, Input, []).

-spec describe_auto_scaling_configuration(aws_client:aws_client(), describe_auto_scaling_configuration_request(), proplists:proplist()) ->
    {ok, describe_auto_scaling_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_auto_scaling_configuration_errors(), tuple()}.
describe_auto_scaling_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAutoScalingConfiguration">>, Input, Options).

%% @doc Return a description of custom domain names that are associated with
%% an App Runner service.
-spec describe_custom_domains(aws_client:aws_client(), describe_custom_domains_request()) ->
    {ok, describe_custom_domains_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_domains_errors(), tuple()}.
describe_custom_domains(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_custom_domains(Client, Input, []).

-spec describe_custom_domains(aws_client:aws_client(), describe_custom_domains_request(), proplists:proplist()) ->
    {ok, describe_custom_domains_response(), tuple()} |
    {error, any()} |
    {error, describe_custom_domains_errors(), tuple()}.
describe_custom_domains(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCustomDomains">>, Input, Options).

%% @doc Return a full description of an App Runner observability
%% configuration resource.
-spec describe_observability_configuration(aws_client:aws_client(), describe_observability_configuration_request()) ->
    {ok, describe_observability_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_observability_configuration_errors(), tuple()}.
describe_observability_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_observability_configuration(Client, Input, []).

-spec describe_observability_configuration(aws_client:aws_client(), describe_observability_configuration_request(), proplists:proplist()) ->
    {ok, describe_observability_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_observability_configuration_errors(), tuple()}.
describe_observability_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeObservabilityConfiguration">>, Input, Options).

%% @doc Return a full description of an App Runner service.
-spec describe_service(aws_client:aws_client(), describe_service_request()) ->
    {ok, describe_service_response(), tuple()} |
    {error, any()} |
    {error, describe_service_errors(), tuple()}.
describe_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_service(Client, Input, []).

-spec describe_service(aws_client:aws_client(), describe_service_request(), proplists:proplist()) ->
    {ok, describe_service_response(), tuple()} |
    {error, any()} |
    {error, describe_service_errors(), tuple()}.
describe_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeService">>, Input, Options).

%% @doc Return a description of an App Runner VPC connector resource.
-spec describe_vpc_connector(aws_client:aws_client(), describe_vpc_connector_request()) ->
    {ok, describe_vpc_connector_response(), tuple()} |
    {error, any()} |
    {error, describe_vpc_connector_errors(), tuple()}.
describe_vpc_connector(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpc_connector(Client, Input, []).

-spec describe_vpc_connector(aws_client:aws_client(), describe_vpc_connector_request(), proplists:proplist()) ->
    {ok, describe_vpc_connector_response(), tuple()} |
    {error, any()} |
    {error, describe_vpc_connector_errors(), tuple()}.
describe_vpc_connector(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpcConnector">>, Input, Options).

%% @doc Return a full description of an App Runner VPC Ingress Connection
%% resource.
-spec describe_vpc_ingress_connection(aws_client:aws_client(), describe_vpc_ingress_connection_request()) ->
    {ok, describe_vpc_ingress_connection_response(), tuple()} |
    {error, any()} |
    {error, describe_vpc_ingress_connection_errors(), tuple()}.
describe_vpc_ingress_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpc_ingress_connection(Client, Input, []).

-spec describe_vpc_ingress_connection(aws_client:aws_client(), describe_vpc_ingress_connection_request(), proplists:proplist()) ->
    {ok, describe_vpc_ingress_connection_response(), tuple()} |
    {error, any()} |
    {error, describe_vpc_ingress_connection_errors(), tuple()}.
describe_vpc_ingress_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpcIngressConnection">>, Input, Options).

%% @doc Disassociate a custom domain name from an App Runner service.
%%
%% Certificates tracking domain validity are associated with a custom domain
%% and are stored in AWS
%% Certificate Manager (ACM):
%% https://docs.aws.amazon.com/acm/latest/userguide. These certificates
%% aren't deleted as part of this action. App Runner delays certificate
%% deletion for
%% 30 days after a domain is disassociated from your service.
-spec disassociate_custom_domain(aws_client:aws_client(), disassociate_custom_domain_request()) ->
    {ok, disassociate_custom_domain_response(), tuple()} |
    {error, any()} |
    {error, disassociate_custom_domain_errors(), tuple()}.
disassociate_custom_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_custom_domain(Client, Input, []).

-spec disassociate_custom_domain(aws_client:aws_client(), disassociate_custom_domain_request(), proplists:proplist()) ->
    {ok, disassociate_custom_domain_response(), tuple()} |
    {error, any()} |
    {error, disassociate_custom_domain_errors(), tuple()}.
disassociate_custom_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateCustomDomain">>, Input, Options).

%% @doc Returns a list of active App Runner automatic scaling configurations
%% in your Amazon Web Services account.
%%
%% You can query the revisions for a specific
%% configuration name or the revisions for all active configurations in your
%% account. You can optionally query only the latest revision of each
%% requested
%% name.
%%
%% To retrieve a full description of a particular configuration revision,
%% call and provide one of
%% the ARNs returned by `ListAutoScalingConfigurations'.
-spec list_auto_scaling_configurations(aws_client:aws_client(), list_auto_scaling_configurations_request()) ->
    {ok, list_auto_scaling_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_auto_scaling_configurations_errors(), tuple()}.
list_auto_scaling_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_auto_scaling_configurations(Client, Input, []).

-spec list_auto_scaling_configurations(aws_client:aws_client(), list_auto_scaling_configurations_request(), proplists:proplist()) ->
    {ok, list_auto_scaling_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_auto_scaling_configurations_errors(), tuple()}.
list_auto_scaling_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAutoScalingConfigurations">>, Input, Options).

%% @doc Returns a list of App Runner connections that are associated with
%% your Amazon Web Services account.
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

%% @doc Returns a list of active App Runner observability configurations in
%% your Amazon Web Services account.
%%
%% You can query the revisions for a specific
%% configuration name or the revisions for all active configurations in your
%% account. You can optionally query only the latest revision of each
%% requested
%% name.
%%
%% To retrieve a full description of a particular configuration revision,
%% call and provide one
%% of the ARNs returned by `ListObservabilityConfigurations'.
-spec list_observability_configurations(aws_client:aws_client(), list_observability_configurations_request()) ->
    {ok, list_observability_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_observability_configurations_errors(), tuple()}.
list_observability_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_observability_configurations(Client, Input, []).

-spec list_observability_configurations(aws_client:aws_client(), list_observability_configurations_request(), proplists:proplist()) ->
    {ok, list_observability_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_observability_configurations_errors(), tuple()}.
list_observability_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListObservabilityConfigurations">>, Input, Options).

%% @doc Return a list of operations that occurred on an App Runner service.
%%
%% The resulting list of `OperationSummary' objects is sorted in reverse
%% chronological order. The first object on the list represents the
%% last started operation.
-spec list_operations(aws_client:aws_client(), list_operations_request()) ->
    {ok, list_operations_response(), tuple()} |
    {error, any()} |
    {error, list_operations_errors(), tuple()}.
list_operations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_operations(Client, Input, []).

-spec list_operations(aws_client:aws_client(), list_operations_request(), proplists:proplist()) ->
    {ok, list_operations_response(), tuple()} |
    {error, any()} |
    {error, list_operations_errors(), tuple()}.
list_operations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOperations">>, Input, Options).

%% @doc Returns a list of running App Runner services in your Amazon Web
%% Services account.
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

%% @doc Returns a list of the associated App Runner services using an auto
%% scaling configuration.
-spec list_services_for_auto_scaling_configuration(aws_client:aws_client(), list_services_for_auto_scaling_configuration_request()) ->
    {ok, list_services_for_auto_scaling_configuration_response(), tuple()} |
    {error, any()} |
    {error, list_services_for_auto_scaling_configuration_errors(), tuple()}.
list_services_for_auto_scaling_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_services_for_auto_scaling_configuration(Client, Input, []).

-spec list_services_for_auto_scaling_configuration(aws_client:aws_client(), list_services_for_auto_scaling_configuration_request(), proplists:proplist()) ->
    {ok, list_services_for_auto_scaling_configuration_response(), tuple()} |
    {error, any()} |
    {error, list_services_for_auto_scaling_configuration_errors(), tuple()}.
list_services_for_auto_scaling_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServicesForAutoScalingConfiguration">>, Input, Options).

%% @doc List tags that are associated with for an App Runner resource.
%%
%% The response contains a list of tag key-value pairs.
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

%% @doc Returns a list of App Runner VPC connectors in your Amazon Web
%% Services account.
-spec list_vpc_connectors(aws_client:aws_client(), list_vpc_connectors_request()) ->
    {ok, list_vpc_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_connectors_errors(), tuple()}.
list_vpc_connectors(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_vpc_connectors(Client, Input, []).

-spec list_vpc_connectors(aws_client:aws_client(), list_vpc_connectors_request(), proplists:proplist()) ->
    {ok, list_vpc_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_connectors_errors(), tuple()}.
list_vpc_connectors(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVpcConnectors">>, Input, Options).

%% @doc Return a list of App Runner VPC Ingress Connections in your Amazon
%% Web Services account.
-spec list_vpc_ingress_connections(aws_client:aws_client(), list_vpc_ingress_connections_request()) ->
    {ok, list_vpc_ingress_connections_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_ingress_connections_errors(), tuple()}.
list_vpc_ingress_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_vpc_ingress_connections(Client, Input, []).

-spec list_vpc_ingress_connections(aws_client:aws_client(), list_vpc_ingress_connections_request(), proplists:proplist()) ->
    {ok, list_vpc_ingress_connections_response(), tuple()} |
    {error, any()} |
    {error, list_vpc_ingress_connections_errors(), tuple()}.
list_vpc_ingress_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListVpcIngressConnections">>, Input, Options).

%% @doc Pause an active App Runner service.
%%
%% App Runner reduces compute capacity for the service to zero and loses
%% state (for example, ephemeral storage is
%% removed).
%%
%% This is an asynchronous operation. On a successful call, you can use the
%% returned `OperationId' and the `ListOperations'
%% call to track the operation's progress.
-spec pause_service(aws_client:aws_client(), pause_service_request()) ->
    {ok, pause_service_response(), tuple()} |
    {error, any()} |
    {error, pause_service_errors(), tuple()}.
pause_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    pause_service(Client, Input, []).

-spec pause_service(aws_client:aws_client(), pause_service_request(), proplists:proplist()) ->
    {ok, pause_service_response(), tuple()} |
    {error, any()} |
    {error, pause_service_errors(), tuple()}.
pause_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PauseService">>, Input, Options).

%% @doc Resume an active App Runner service.
%%
%% App Runner provisions compute capacity for the service.
%%
%% This is an asynchronous operation. On a successful call, you can use the
%% returned `OperationId' and the `ListOperations'
%% call to track the operation's progress.
-spec resume_service(aws_client:aws_client(), resume_service_request()) ->
    {ok, resume_service_response(), tuple()} |
    {error, any()} |
    {error, resume_service_errors(), tuple()}.
resume_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    resume_service(Client, Input, []).

-spec resume_service(aws_client:aws_client(), resume_service_request(), proplists:proplist()) ->
    {ok, resume_service_response(), tuple()} |
    {error, any()} |
    {error, resume_service_errors(), tuple()}.
resume_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResumeService">>, Input, Options).

%% @doc Initiate a manual deployment of the latest commit in a source code
%% repository or the latest image in a source image repository to an App
%% Runner
%% service.
%%
%% For a source code repository, App Runner retrieves the commit and builds a
%% Docker image. For a source image repository, App Runner retrieves the
%% latest Docker
%% image. In both cases, App Runner then deploys the new image to your
%% service and starts a new container instance.
%%
%% This is an asynchronous operation. On a successful call, you can use the
%% returned `OperationId' and the `ListOperations'
%% call to track the operation's progress.
-spec start_deployment(aws_client:aws_client(), start_deployment_request()) ->
    {ok, start_deployment_response(), tuple()} |
    {error, any()} |
    {error, start_deployment_errors(), tuple()}.
start_deployment(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_deployment(Client, Input, []).

-spec start_deployment(aws_client:aws_client(), start_deployment_request(), proplists:proplist()) ->
    {ok, start_deployment_response(), tuple()} |
    {error, any()} |
    {error, start_deployment_errors(), tuple()}.
start_deployment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartDeployment">>, Input, Options).

%% @doc Add tags to, or update the tag values of, an App Runner resource.
%%
%% A tag is a key-value pair.
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

%% @doc Remove tags from an App Runner resource.
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

%% @doc Update an auto scaling configuration to be the default.
%%
%% The existing default auto scaling configuration will be set to non-default
%% automatically.
-spec update_default_auto_scaling_configuration(aws_client:aws_client(), update_default_auto_scaling_configuration_request()) ->
    {ok, update_default_auto_scaling_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_default_auto_scaling_configuration_errors(), tuple()}.
update_default_auto_scaling_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_default_auto_scaling_configuration(Client, Input, []).

-spec update_default_auto_scaling_configuration(aws_client:aws_client(), update_default_auto_scaling_configuration_request(), proplists:proplist()) ->
    {ok, update_default_auto_scaling_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_default_auto_scaling_configuration_errors(), tuple()}.
update_default_auto_scaling_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDefaultAutoScalingConfiguration">>, Input, Options).

%% @doc Update an App Runner service.
%%
%% You can update the source configuration and instance configuration of the
%% service. You can also update the ARN of the auto
%% scaling configuration resource that's associated with the service.
%% However, you can't change the name or the encryption configuration of
%% the service.
%% These can be set only when you create the service.
%%
%% To update the tags applied to your service, use the separate actions
%% `TagResource' and `UntagResource'.
%%
%% This is an asynchronous operation. On a successful call, you can use the
%% returned `OperationId' and the `ListOperations'
%% call to track the operation's progress.
-spec update_service(aws_client:aws_client(), update_service_request()) ->
    {ok, update_service_response(), tuple()} |
    {error, any()} |
    {error, update_service_errors(), tuple()}.
update_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service(Client, Input, []).

-spec update_service(aws_client:aws_client(), update_service_request(), proplists:proplist()) ->
    {ok, update_service_response(), tuple()} |
    {error, any()} |
    {error, update_service_errors(), tuple()}.
update_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateService">>, Input, Options).

%% @doc Update an existing App Runner VPC Ingress Connection resource.
%%
%% The VPC Ingress Connection must be in one of the following states to be
%% updated:
%%
%% AVAILABLE
%%
%% FAILED_CREATION
%%
%% FAILED_UPDATE
-spec update_vpc_ingress_connection(aws_client:aws_client(), update_vpc_ingress_connection_request()) ->
    {ok, update_vpc_ingress_connection_response(), tuple()} |
    {error, any()} |
    {error, update_vpc_ingress_connection_errors(), tuple()}.
update_vpc_ingress_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_vpc_ingress_connection(Client, Input, []).

-spec update_vpc_ingress_connection(aws_client:aws_client(), update_vpc_ingress_connection_request(), proplists:proplist()) ->
    {ok, update_vpc_ingress_connection_response(), tuple()} |
    {error, any()} |
    {error, update_vpc_ingress_connection_errors(), tuple()}.
update_vpc_ingress_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateVpcIngressConnection">>, Input, Options).

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
    Client1 = Client#{service => <<"apprunner">>},
    Host = build_host(<<"apprunner">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"AppRunner.", Action/binary>>}
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
