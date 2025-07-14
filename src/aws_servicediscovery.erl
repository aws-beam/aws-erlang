%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Cloud Map
%%
%% With Cloud Map, you can configure public DNS, private DNS, or HTTP
%% namespaces that your microservice
%% applications run in.
%%
%% When an instance becomes available, you can call the Cloud Map API to
%% register the
%% instance with Cloud Map. For public or private DNS namespaces, Cloud Map
%% automatically creates DNS records and
%% an optional health check. Clients that submit public or private DNS
%% queries, or HTTP requests, for the service
%% receive an answer that contains up to eight healthy records.
-module(aws_servicediscovery).

-export([create_http_namespace/2,
         create_http_namespace/3,
         create_private_dns_namespace/2,
         create_private_dns_namespace/3,
         create_public_dns_namespace/2,
         create_public_dns_namespace/3,
         create_service/2,
         create_service/3,
         delete_namespace/2,
         delete_namespace/3,
         delete_service/2,
         delete_service/3,
         delete_service_attributes/2,
         delete_service_attributes/3,
         deregister_instance/2,
         deregister_instance/3,
         discover_instances/2,
         discover_instances/3,
         discover_instances_revision/2,
         discover_instances_revision/3,
         get_instance/2,
         get_instance/3,
         get_instances_health_status/2,
         get_instances_health_status/3,
         get_namespace/2,
         get_namespace/3,
         get_operation/2,
         get_operation/3,
         get_service/2,
         get_service/3,
         get_service_attributes/2,
         get_service_attributes/3,
         list_instances/2,
         list_instances/3,
         list_namespaces/2,
         list_namespaces/3,
         list_operations/2,
         list_operations/3,
         list_services/2,
         list_services/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         register_instance/2,
         register_instance/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_http_namespace/2,
         update_http_namespace/3,
         update_instance_custom_health_status/2,
         update_instance_custom_health_status/3,
         update_private_dns_namespace/2,
         update_private_dns_namespace/3,
         update_public_dns_namespace/2,
         update_public_dns_namespace/3,
         update_service/2,
         update_service/3,
         update_service_attributes/2,
         update_service_attributes/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% update_public_dns_namespace_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type update_public_dns_namespace_response() :: #{binary() => any()}.

%% Example:
%% dns_properties() :: #{
%%   <<"HostedZoneId">> => string(),
%%   <<"SOA">> => s_o_a()
%% }
-type dns_properties() :: #{binary() => any()}.

%% Example:
%% operation() :: #{
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string(),
%%   <<"Id">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Targets">> => map(),
%%   <<"Type">> => list(any()),
%%   <<"UpdateDate">> => non_neg_integer()
%% }
-type operation() :: #{binary() => any()}.

%% Example:
%% delete_namespace_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type delete_namespace_response() :: #{binary() => any()}.

%% Example:
%% private_dns_properties_mutable() :: #{
%%   <<"SOA">> => s_o_a()
%% }
-type private_dns_properties_mutable() :: #{binary() => any()}.

%% Example:
%% create_http_namespace_request() :: #{
%%   <<"CreatorRequestId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_http_namespace_request() :: #{binary() => any()}.

%% Example:
%% update_private_dns_namespace_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type update_private_dns_namespace_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% update_http_namespace_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type update_http_namespace_response() :: #{binary() => any()}.

%% Example:
%% get_service_attributes_response() :: #{
%%   <<"ServiceAttributes">> => service_attributes()
%% }
-type get_service_attributes_response() :: #{binary() => any()}.

%% Example:
%% private_dns_namespace_properties() :: #{
%%   <<"DnsProperties">> => private_dns_properties_mutable()
%% }
-type private_dns_namespace_properties() :: #{binary() => any()}.

%% Example:
%% invalid_input() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_input() :: #{binary() => any()}.

%% Example:
%% custom_health_not_found() :: #{
%%   <<"Message">> => string()
%% }
-type custom_health_not_found() :: #{binary() => any()}.

%% Example:
%% get_service_response() :: #{
%%   <<"Service">> => service()
%% }
-type get_service_response() :: #{binary() => any()}.

%% Example:
%% service_change() :: #{
%%   <<"Description">> => string(),
%%   <<"DnsConfig">> => dns_config_change(),
%%   <<"HealthCheckConfig">> => health_check_config()
%% }
-type service_change() :: #{binary() => any()}.

%% Example:
%% http_instance_summary() :: #{
%%   <<"Attributes">> => map(),
%%   <<"HealthStatus">> => list(any()),
%%   <<"InstanceId">> => string(),
%%   <<"NamespaceName">> => string(),
%%   <<"ServiceName">> => string()
%% }
-type http_instance_summary() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% list_namespaces_request() :: #{
%%   <<"Filters">> => list(namespace_filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_namespaces_request() :: #{binary() => any()}.

%% Example:
%% private_dns_properties_mutable_change() :: #{
%%   <<"SOA">> => s_o_a_change()
%% }
-type private_dns_properties_mutable_change() :: #{binary() => any()}.

%% Example:
%% namespace_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Properties">> => namespace_properties(),
%%   <<"ServiceCount">> => integer(),
%%   <<"Type">> => list(any())
%% }
-type namespace_summary() :: #{binary() => any()}.

%% Example:
%% update_instance_custom_health_status_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"ServiceId">> := string(),
%%   <<"Status">> := list(any())
%% }
-type update_instance_custom_health_status_request() :: #{binary() => any()}.

%% Example:
%% resource_in_use() :: #{
%%   <<"Message">> => string()
%% }
-type resource_in_use() :: #{binary() => any()}.

%% Example:
%% get_instances_health_status_request() :: #{
%%   <<"Instances">> => list(string()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ServiceId">> := string()
%% }
-type get_instances_health_status_request() :: #{binary() => any()}.

%% Example:
%% create_public_dns_namespace_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type create_public_dns_namespace_response() :: #{binary() => any()}.

%% Example:
%% get_operation_response() :: #{
%%   <<"Operation">> => operation()
%% }
-type get_operation_response() :: #{binary() => any()}.

%% Example:
%% public_dns_properties_mutable_change() :: #{
%%   <<"SOA">> => s_o_a_change()
%% }
-type public_dns_properties_mutable_change() :: #{binary() => any()}.

%% Example:
%% discover_instances_response() :: #{
%%   <<"Instances">> => list(http_instance_summary()),
%%   <<"InstancesRevision">> => float()
%% }
-type discover_instances_response() :: #{binary() => any()}.

%% Example:
%% public_dns_properties_mutable() :: #{
%%   <<"SOA">> => s_o_a()
%% }
-type public_dns_properties_mutable() :: #{binary() => any()}.

%% Example:
%% public_dns_namespace_properties() :: #{
%%   <<"DnsProperties">> => public_dns_properties_mutable()
%% }
-type public_dns_namespace_properties() :: #{binary() => any()}.

%% Example:
%% service() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"Description">> => string(),
%%   <<"DnsConfig">> => dns_config(),
%%   <<"HealthCheckConfig">> => health_check_config(),
%%   <<"HealthCheckCustomConfig">> => health_check_custom_config(),
%%   <<"Id">> => string(),
%%   <<"InstanceCount">> => integer(),
%%   <<"Name">> => string(),
%%   <<"NamespaceId">> => string(),
%%   <<"Type">> => list(any())
%% }
-type service() :: #{binary() => any()}.

%% Example:
%% operation_summary() :: #{
%%   <<"Id">> => string(),
%%   <<"Status">> => list(any())
%% }
-type operation_summary() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% discover_instances_request() :: #{
%%   <<"HealthStatus">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NamespaceName">> := string(),
%%   <<"OptionalParameters">> => map(),
%%   <<"QueryParameters">> => map(),
%%   <<"ServiceName">> := string()
%% }
-type discover_instances_request() :: #{binary() => any()}.

%% Example:
%% private_dns_namespace_properties_change() :: #{
%%   <<"DnsProperties">> => private_dns_properties_mutable_change()
%% }
-type private_dns_namespace_properties_change() :: #{binary() => any()}.

%% Example:
%% deregister_instance_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"ServiceId">> := string()
%% }
-type deregister_instance_request() :: #{binary() => any()}.

%% Example:
%% create_private_dns_namespace_request() :: #{
%%   <<"CreatorRequestId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Properties">> => private_dns_namespace_properties(),
%%   <<"Tags">> => list(tag()),
%%   <<"Vpc">> := string()
%% }
-type create_private_dns_namespace_request() :: #{binary() => any()}.

%% Example:
%% get_service_request() :: #{
%%   <<"Id">> := string()
%% }
-type get_service_request() :: #{binary() => any()}.

%% Example:
%% get_service_attributes_request() :: #{
%%   <<"ServiceId">> := string()
%% }
-type get_service_attributes_request() :: #{binary() => any()}.

%% Example:
%% get_instance_request() :: #{
%%   <<"InstanceId">> := string(),
%%   <<"ServiceId">> := string()
%% }
-type get_instance_request() :: #{binary() => any()}.

%% Example:
%% list_services_request() :: #{
%%   <<"Filters">> => list(service_filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_services_request() :: #{binary() => any()}.

%% Example:
%% get_namespace_response() :: #{
%%   <<"Namespace">> => namespace()
%% }
-type get_namespace_response() :: #{binary() => any()}.

%% Example:
%% health_check_custom_config() :: #{
%%   <<"FailureThreshold">> => integer()
%% }
-type health_check_custom_config() :: #{binary() => any()}.

%% Example:
%% namespace_properties() :: #{
%%   <<"DnsProperties">> => dns_properties(),
%%   <<"HttpProperties">> => http_properties()
%% }
-type namespace_properties() :: #{binary() => any()}.

%% Example:
%% list_operations_request() :: #{
%%   <<"Filters">> => list(operation_filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_operations_request() :: #{binary() => any()}.

%% Example:
%% public_dns_namespace_change() :: #{
%%   <<"Description">> => string(),
%%   <<"Properties">> => public_dns_namespace_properties_change()
%% }
-type public_dns_namespace_change() :: #{binary() => any()}.

%% Example:
%% s_o_a() :: #{
%%   <<"TTL">> => float()
%% }
-type s_o_a() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% service_filter() :: #{
%%   <<"Condition">> => list(any()),
%%   <<"Name">> => list(any()),
%%   <<"Values">> => list(string())
%% }
-type service_filter() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% create_private_dns_namespace_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type create_private_dns_namespace_response() :: #{binary() => any()}.

%% Example:
%% discover_instances_revision_response() :: #{
%%   <<"InstancesRevision">> => float()
%% }
-type discover_instances_revision_response() :: #{binary() => any()}.

%% Example:
%% list_services_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Services">> => list(service_summary())
%% }
-type list_services_response() :: #{binary() => any()}.

%% Example:
%% get_operation_request() :: #{
%%   <<"OperationId">> := string()
%% }
-type get_operation_request() :: #{binary() => any()}.

%% Example:
%% service_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DnsConfig">> => dns_config(),
%%   <<"HealthCheckConfig">> => health_check_config(),
%%   <<"HealthCheckCustomConfig">> => health_check_custom_config(),
%%   <<"Id">> => string(),
%%   <<"InstanceCount">> => integer(),
%%   <<"Name">> => string(),
%%   <<"Type">> => list(any())
%% }
-type service_summary() :: #{binary() => any()}.

%% Example:
%% private_dns_namespace_change() :: #{
%%   <<"Description">> => string(),
%%   <<"Properties">> => private_dns_namespace_properties_change()
%% }
-type private_dns_namespace_change() :: #{binary() => any()}.

%% Example:
%% s_o_a_change() :: #{
%%   <<"TTL">> => float()
%% }
-type s_o_a_change() :: #{binary() => any()}.

%% Example:
%% create_service_request() :: #{
%%   <<"CreatorRequestId">> => string(),
%%   <<"Description">> => string(),
%%   <<"DnsConfig">> => dns_config(),
%%   <<"HealthCheckConfig">> => health_check_config(),
%%   <<"HealthCheckCustomConfig">> => health_check_custom_config(),
%%   <<"Name">> := string(),
%%   <<"NamespaceId">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"Type">> => list(any())
%% }
-type create_service_request() :: #{binary() => any()}.

%% Example:
%% get_instance_response() :: #{
%%   <<"Instance">> => instance()
%% }
-type get_instance_response() :: #{binary() => any()}.

%% Example:
%% register_instance_request() :: #{
%%   <<"Attributes">> := map(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"InstanceId">> := string(),
%%   <<"ServiceId">> := string()
%% }
-type register_instance_request() :: #{binary() => any()}.

%% Example:
%% duplicate_request() :: #{
%%   <<"DuplicateOperationId">> => string(),
%%   <<"Message">> => string()
%% }
-type duplicate_request() :: #{binary() => any()}.

%% Example:
%% delete_service_attributes_request() :: #{
%%   <<"Attributes">> := list(string()),
%%   <<"ServiceId">> := string()
%% }
-type delete_service_attributes_request() :: #{binary() => any()}.

%% Example:
%% discover_instances_revision_request() :: #{
%%   <<"NamespaceName">> := string(),
%%   <<"ServiceName">> := string()
%% }
-type discover_instances_revision_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% operation_not_found() :: #{
%%   <<"Message">> => string()
%% }
-type operation_not_found() :: #{binary() => any()}.

%% Example:
%% service_not_found() :: #{
%%   <<"Message">> => string()
%% }
-type service_not_found() :: #{binary() => any()}.

%% Example:
%% update_http_namespace_request() :: #{
%%   <<"Id">> := string(),
%%   <<"Namespace">> := http_namespace_change(),
%%   <<"UpdaterRequestId">> => string()
%% }
-type update_http_namespace_request() :: #{binary() => any()}.

%% Example:
%% dns_config() :: #{
%%   <<"DnsRecords">> => list(dns_record()),
%%   <<"NamespaceId">> => string(),
%%   <<"RoutingPolicy">> => list(any())
%% }
-type dns_config() :: #{binary() => any()}.

%% Example:
%% http_namespace_change() :: #{
%%   <<"Description">> => string()
%% }
-type http_namespace_change() :: #{binary() => any()}.

%% Example:
%% register_instance_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type register_instance_response() :: #{binary() => any()}.

%% Example:
%% create_public_dns_namespace_request() :: #{
%%   <<"CreatorRequestId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Properties">> => public_dns_namespace_properties(),
%%   <<"Tags">> => list(tag())
%% }
-type create_public_dns_namespace_request() :: #{binary() => any()}.

%% Example:
%% list_instances_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ServiceId">> := string()
%% }
-type list_instances_request() :: #{binary() => any()}.

%% Example:
%% namespace_filter() :: #{
%%   <<"Condition">> => list(any()),
%%   <<"Name">> => list(any()),
%%   <<"Values">> => list(string())
%% }
-type namespace_filter() :: #{binary() => any()}.

%% Example:
%% update_service_request() :: #{
%%   <<"Id">> := string(),
%%   <<"Service">> := service_change()
%% }
-type update_service_request() :: #{binary() => any()}.

%% Example:
%% list_instances_response() :: #{
%%   <<"Instances">> => list(instance_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_instances_response() :: #{binary() => any()}.

%% Example:
%% service_attributes_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_attributes_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% namespace_already_exists() :: #{
%%   <<"CreatorRequestId">> => string(),
%%   <<"Message">> => string(),
%%   <<"NamespaceId">> => string()
%% }
-type namespace_already_exists() :: #{binary() => any()}.

%% Example:
%% http_properties() :: #{
%%   <<"HttpName">> => string()
%% }
-type http_properties() :: #{binary() => any()}.

%% Example:
%% dns_record() :: #{
%%   <<"TTL">> => float(),
%%   <<"Type">> => list(any())
%% }
-type dns_record() :: #{binary() => any()}.

%% Example:
%% list_operations_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Operations">> => list(operation_summary())
%% }
-type list_operations_response() :: #{binary() => any()}.

%% Example:
%% instance() :: #{
%%   <<"Attributes">> => map(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"Id">> => string()
%% }
-type instance() :: #{binary() => any()}.

%% Example:
%% delete_service_attributes_response() :: #{

%% }
-type delete_service_attributes_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% request_limit_exceeded() :: #{
%%   <<"Message">> => string()
%% }
-type request_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% get_instances_health_status_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Status">> => map()
%% }
-type get_instances_health_status_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% create_http_namespace_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type create_http_namespace_response() :: #{binary() => any()}.

%% Example:
%% delete_service_request() :: #{
%%   <<"Id">> := string()
%% }
-type delete_service_request() :: #{binary() => any()}.

%% Example:
%% health_check_config() :: #{
%%   <<"FailureThreshold">> => integer(),
%%   <<"ResourcePath">> => string(),
%%   <<"Type">> => list(any())
%% }
-type health_check_config() :: #{binary() => any()}.

%% Example:
%% service_attributes() :: #{
%%   <<"Attributes">> => map(),
%%   <<"ServiceArn">> => string()
%% }
-type service_attributes() :: #{binary() => any()}.

%% Example:
%% instance_summary() :: #{
%%   <<"Attributes">> => map(),
%%   <<"Id">> => string()
%% }
-type instance_summary() :: #{binary() => any()}.

%% Example:
%% list_namespaces_response() :: #{
%%   <<"Namespaces">> => list(namespace_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_namespaces_response() :: #{binary() => any()}.

%% Example:
%% delete_namespace_request() :: #{
%%   <<"Id">> := string()
%% }
-type delete_namespace_request() :: #{binary() => any()}.

%% Example:
%% dns_config_change() :: #{
%%   <<"DnsRecords">> => list(dns_record())
%% }
-type dns_config_change() :: #{binary() => any()}.

%% Example:
%% namespace_not_found() :: #{
%%   <<"Message">> => string()
%% }
-type namespace_not_found() :: #{binary() => any()}.

%% Example:
%% update_private_dns_namespace_request() :: #{
%%   <<"Id">> := string(),
%%   <<"Namespace">> := private_dns_namespace_change(),
%%   <<"UpdaterRequestId">> => string()
%% }
-type update_private_dns_namespace_request() :: #{binary() => any()}.

%% Example:
%% update_service_attributes_response() :: #{

%% }
-type update_service_attributes_response() :: #{binary() => any()}.

%% Example:
%% instance_not_found() :: #{
%%   <<"Message">> => string()
%% }
-type instance_not_found() :: #{binary() => any()}.

%% Example:
%% update_service_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type update_service_response() :: #{binary() => any()}.

%% Example:
%% delete_service_response() :: #{

%% }
-type delete_service_response() :: #{binary() => any()}.

%% Example:
%% deregister_instance_response() :: #{
%%   <<"OperationId">> => string()
%% }
-type deregister_instance_response() :: #{binary() => any()}.

%% Example:
%% create_service_response() :: #{
%%   <<"Service">> => service()
%% }
-type create_service_response() :: #{binary() => any()}.

%% Example:
%% resource_limit_exceeded() :: #{
%%   <<"Message">> => string()
%% }
-type resource_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% service_already_exists() :: #{
%%   <<"CreatorRequestId">> => string(),
%%   <<"Message">> => string(),
%%   <<"ServiceId">> => string()
%% }
-type service_already_exists() :: #{binary() => any()}.

%% Example:
%% namespace() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Properties">> => namespace_properties(),
%%   <<"ServiceCount">> => integer(),
%%   <<"Type">> => list(any())
%% }
-type namespace() :: #{binary() => any()}.

%% Example:
%% public_dns_namespace_properties_change() :: #{
%%   <<"DnsProperties">> => public_dns_properties_mutable_change()
%% }
-type public_dns_namespace_properties_change() :: #{binary() => any()}.

%% Example:
%% operation_filter() :: #{
%%   <<"Condition">> => list(any()),
%%   <<"Name">> => list(any()),
%%   <<"Values">> => list(string())
%% }
-type operation_filter() :: #{binary() => any()}.

%% Example:
%% update_public_dns_namespace_request() :: #{
%%   <<"Id">> := string(),
%%   <<"Namespace">> := public_dns_namespace_change(),
%%   <<"UpdaterRequestId">> => string()
%% }
-type update_public_dns_namespace_request() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceName">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% update_service_attributes_request() :: #{
%%   <<"Attributes">> := map(),
%%   <<"ServiceId">> := string()
%% }
-type update_service_attributes_request() :: #{binary() => any()}.

%% Example:
%% get_namespace_request() :: #{
%%   <<"Id">> := string()
%% }
-type get_namespace_request() :: #{binary() => any()}.

-type create_http_namespace_errors() ::
    too_many_tags_exception() | 
    resource_limit_exceeded() | 
    namespace_already_exists() | 
    duplicate_request() | 
    invalid_input().

-type create_private_dns_namespace_errors() ::
    too_many_tags_exception() | 
    resource_limit_exceeded() | 
    namespace_already_exists() | 
    duplicate_request() | 
    invalid_input().

-type create_public_dns_namespace_errors() ::
    too_many_tags_exception() | 
    resource_limit_exceeded() | 
    namespace_already_exists() | 
    duplicate_request() | 
    invalid_input().

-type create_service_errors() ::
    too_many_tags_exception() | 
    service_already_exists() | 
    resource_limit_exceeded() | 
    namespace_not_found() | 
    invalid_input().

-type delete_namespace_errors() ::
    namespace_not_found() | 
    duplicate_request() | 
    resource_in_use() | 
    invalid_input().

-type delete_service_errors() ::
    service_not_found() | 
    resource_in_use() | 
    invalid_input().

-type delete_service_attributes_errors() ::
    service_not_found() | 
    invalid_input().

-type deregister_instance_errors() ::
    instance_not_found() | 
    service_not_found() | 
    duplicate_request() | 
    resource_in_use() | 
    invalid_input().

-type discover_instances_errors() ::
    namespace_not_found() | 
    request_limit_exceeded() | 
    service_not_found() | 
    invalid_input().

-type discover_instances_revision_errors() ::
    namespace_not_found() | 
    request_limit_exceeded() | 
    service_not_found() | 
    invalid_input().

-type get_instance_errors() ::
    instance_not_found() | 
    service_not_found() | 
    invalid_input().

-type get_instances_health_status_errors() ::
    instance_not_found() | 
    service_not_found() | 
    invalid_input().

-type get_namespace_errors() ::
    namespace_not_found() | 
    invalid_input().

-type get_operation_errors() ::
    operation_not_found() | 
    invalid_input().

-type get_service_errors() ::
    service_not_found() | 
    invalid_input().

-type get_service_attributes_errors() ::
    service_not_found() | 
    invalid_input().

-type list_instances_errors() ::
    service_not_found() | 
    invalid_input().

-type list_namespaces_errors() ::
    invalid_input().

-type list_operations_errors() ::
    invalid_input().

-type list_services_errors() ::
    invalid_input().

-type list_tags_for_resource_errors() ::
    resource_not_found_exception() | 
    invalid_input().

-type register_instance_errors() ::
    resource_limit_exceeded() | 
    service_not_found() | 
    duplicate_request() | 
    resource_in_use() | 
    invalid_input().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    resource_not_found_exception() | 
    invalid_input().

-type untag_resource_errors() ::
    resource_not_found_exception() | 
    invalid_input().

-type update_http_namespace_errors() ::
    namespace_not_found() | 
    duplicate_request() | 
    resource_in_use() | 
    invalid_input().

-type update_instance_custom_health_status_errors() ::
    instance_not_found() | 
    service_not_found() | 
    custom_health_not_found() | 
    invalid_input().

-type update_private_dns_namespace_errors() ::
    namespace_not_found() | 
    duplicate_request() | 
    resource_in_use() | 
    invalid_input().

-type update_public_dns_namespace_errors() ::
    namespace_not_found() | 
    duplicate_request() | 
    resource_in_use() | 
    invalid_input().

-type update_service_errors() ::
    service_not_found() | 
    duplicate_request() | 
    invalid_input().

-type update_service_attributes_errors() ::
    service_attributes_limit_exceeded_exception() | 
    service_not_found() | 
    invalid_input().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an HTTP namespace.
%%
%% Service instances registered using an HTTP namespace can be discovered
%% using a
%% `DiscoverInstances' request but can't be discovered using DNS.
%%
%% For the current quota on the number of namespaces that you can create
%% using the same Amazon Web Services account, see Cloud Map
%% quotas:
%% https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html in
%% the Cloud Map Developer Guide.
-spec create_http_namespace(aws_client:aws_client(), create_http_namespace_request()) ->
    {ok, create_http_namespace_response(), tuple()} |
    {error, any()} |
    {error, create_http_namespace_errors(), tuple()}.
create_http_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_http_namespace(Client, Input, []).

-spec create_http_namespace(aws_client:aws_client(), create_http_namespace_request(), proplists:proplist()) ->
    {ok, create_http_namespace_response(), tuple()} |
    {error, any()} |
    {error, create_http_namespace_errors(), tuple()}.
create_http_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHttpNamespace">>, Input, Options).

%% @doc Creates a private namespace based on DNS, which is visible only
%% inside a specified Amazon VPC.
%%
%% The
%% namespace defines your service naming scheme. For example, if you name
%% your namespace `example.com'
%% and name your service `backend', the resulting DNS name for the
%% service is
%% `backend.example.com'. Service instances that are registered using a
%% private DNS namespace can be
%% discovered using either a `DiscoverInstances' request or using DNS.
%% For the current quota on the
%% number of namespaces that you can create using the same Amazon Web
%% Services account, see Cloud Map quotas:
%% https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html in
%% the
%% Cloud Map Developer Guide.
-spec create_private_dns_namespace(aws_client:aws_client(), create_private_dns_namespace_request()) ->
    {ok, create_private_dns_namespace_response(), tuple()} |
    {error, any()} |
    {error, create_private_dns_namespace_errors(), tuple()}.
create_private_dns_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_private_dns_namespace(Client, Input, []).

-spec create_private_dns_namespace(aws_client:aws_client(), create_private_dns_namespace_request(), proplists:proplist()) ->
    {ok, create_private_dns_namespace_response(), tuple()} |
    {error, any()} |
    {error, create_private_dns_namespace_errors(), tuple()}.
create_private_dns_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePrivateDnsNamespace">>, Input, Options).

%% @doc Creates a public namespace based on DNS, which is visible on the
%% internet.
%%
%% The namespace defines your
%% service naming scheme. For example, if you name your namespace
%% `example.com' and name your service
%% `backend', the resulting DNS name for the service is
%% `backend.example.com'. You can
%% discover instances that were registered with a public DNS namespace by
%% using either a
%% `DiscoverInstances' request or using DNS. For the current quota on the
%% number of namespaces that you
%% can create using the same Amazon Web Services account, see Cloud Map
%% quotas:
%% https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html in
%% the
%% Cloud Map Developer Guide.
%%
%% The `CreatePublicDnsNamespace' API operation is not supported in the
%% Amazon Web Services GovCloud (US)
%% Regions.
-spec create_public_dns_namespace(aws_client:aws_client(), create_public_dns_namespace_request()) ->
    {ok, create_public_dns_namespace_response(), tuple()} |
    {error, any()} |
    {error, create_public_dns_namespace_errors(), tuple()}.
create_public_dns_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_public_dns_namespace(Client, Input, []).

-spec create_public_dns_namespace(aws_client:aws_client(), create_public_dns_namespace_request(), proplists:proplist()) ->
    {ok, create_public_dns_namespace_response(), tuple()} |
    {error, any()} |
    {error, create_public_dns_namespace_errors(), tuple()}.
create_public_dns_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePublicDnsNamespace">>, Input, Options).

%% @doc Creates a service.
%%
%% This action defines the configuration for the following entities:
%%
%% For public and private DNS namespaces, one of the following combinations
%% of DNS records in
%% Amazon Route 53:
%%
%% `A'
%%
%% `AAAA'
%%
%% `A' and `AAAA'
%%
%% `SRV'
%%
%% `CNAME'
%%
%% Optionally, a health check
%%
%% After you create the service, you can submit a RegisterInstance:
%% https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html
%% request, and Cloud Map uses the
%% values in the configuration to create the specified entities.
%%
%% For the current quota on the number of instances that you can register
%% using the same namespace and using
%% the same service, see Cloud Map
%% quotas:
%% https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html in
%% the Cloud Map Developer Guide.
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

%% @doc Deletes a namespace from the current account.
%%
%% If the namespace still contains one or more services, the
%% request fails.
-spec delete_namespace(aws_client:aws_client(), delete_namespace_request()) ->
    {ok, delete_namespace_response(), tuple()} |
    {error, any()} |
    {error, delete_namespace_errors(), tuple()}.
delete_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_namespace(Client, Input, []).

-spec delete_namespace(aws_client:aws_client(), delete_namespace_request(), proplists:proplist()) ->
    {ok, delete_namespace_response(), tuple()} |
    {error, any()} |
    {error, delete_namespace_errors(), tuple()}.
delete_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNamespace">>, Input, Options).

%% @doc Deletes a specified service and all associated service attributes.
%%
%% If the service still contains one or more registered instances, the
%% request
%% fails.
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

%% @doc Deletes specific attributes associated with a service.
-spec delete_service_attributes(aws_client:aws_client(), delete_service_attributes_request()) ->
    {ok, delete_service_attributes_response(), tuple()} |
    {error, any()} |
    {error, delete_service_attributes_errors(), tuple()}.
delete_service_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service_attributes(Client, Input, []).

-spec delete_service_attributes(aws_client:aws_client(), delete_service_attributes_request(), proplists:proplist()) ->
    {ok, delete_service_attributes_response(), tuple()} |
    {error, any()} |
    {error, delete_service_attributes_errors(), tuple()}.
delete_service_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServiceAttributes">>, Input, Options).

%% @doc Deletes the Amazon Route 53 DNS records and health check, if any,
%% that Cloud Map created for the specified
%% instance.
-spec deregister_instance(aws_client:aws_client(), deregister_instance_request()) ->
    {ok, deregister_instance_response(), tuple()} |
    {error, any()} |
    {error, deregister_instance_errors(), tuple()}.
deregister_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_instance(Client, Input, []).

-spec deregister_instance(aws_client:aws_client(), deregister_instance_request(), proplists:proplist()) ->
    {ok, deregister_instance_response(), tuple()} |
    {error, any()} |
    {error, deregister_instance_errors(), tuple()}.
deregister_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterInstance">>, Input, Options).

%% @doc Discovers registered instances for a specified namespace and service.
%%
%% You can use
%% `DiscoverInstances' to discover instances for any type of namespace.
%% `DiscoverInstances'
%% returns a randomized list of instances allowing customers to distribute
%% traffic evenly across instances. For
%% public and private DNS namespaces, you can also use DNS queries to
%% discover instances.
-spec discover_instances(aws_client:aws_client(), discover_instances_request()) ->
    {ok, discover_instances_response(), tuple()} |
    {error, any()} |
    {error, discover_instances_errors(), tuple()}.
discover_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    discover_instances(Client, Input, []).

-spec discover_instances(aws_client:aws_client(), discover_instances_request(), proplists:proplist()) ->
    {ok, discover_instances_response(), tuple()} |
    {error, any()} |
    {error, discover_instances_errors(), tuple()}.
discover_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DiscoverInstances">>, Input, Options).

%% @doc Discovers the increasing revision associated with an instance.
-spec discover_instances_revision(aws_client:aws_client(), discover_instances_revision_request()) ->
    {ok, discover_instances_revision_response(), tuple()} |
    {error, any()} |
    {error, discover_instances_revision_errors(), tuple()}.
discover_instances_revision(Client, Input)
  when is_map(Client), is_map(Input) ->
    discover_instances_revision(Client, Input, []).

-spec discover_instances_revision(aws_client:aws_client(), discover_instances_revision_request(), proplists:proplist()) ->
    {ok, discover_instances_revision_response(), tuple()} |
    {error, any()} |
    {error, discover_instances_revision_errors(), tuple()}.
discover_instances_revision(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DiscoverInstancesRevision">>, Input, Options).

%% @doc Gets information about a specified instance.
-spec get_instance(aws_client:aws_client(), get_instance_request()) ->
    {ok, get_instance_response(), tuple()} |
    {error, any()} |
    {error, get_instance_errors(), tuple()}.
get_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance(Client, Input, []).

-spec get_instance(aws_client:aws_client(), get_instance_request(), proplists:proplist()) ->
    {ok, get_instance_response(), tuple()} |
    {error, any()} |
    {error, get_instance_errors(), tuple()}.
get_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstance">>, Input, Options).

%% @doc Gets the current health status (`Healthy', `Unhealthy', or
%% `Unknown') of
%% one or more instances that are associated with a specified service.
%%
%% There's a brief delay between when you register an instance and when
%% the health status for the instance is
%% available.
-spec get_instances_health_status(aws_client:aws_client(), get_instances_health_status_request()) ->
    {ok, get_instances_health_status_response(), tuple()} |
    {error, any()} |
    {error, get_instances_health_status_errors(), tuple()}.
get_instances_health_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instances_health_status(Client, Input, []).

-spec get_instances_health_status(aws_client:aws_client(), get_instances_health_status_request(), proplists:proplist()) ->
    {ok, get_instances_health_status_response(), tuple()} |
    {error, any()} |
    {error, get_instances_health_status_errors(), tuple()}.
get_instances_health_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstancesHealthStatus">>, Input, Options).

%% @doc Gets information about a namespace.
-spec get_namespace(aws_client:aws_client(), get_namespace_request()) ->
    {ok, get_namespace_response(), tuple()} |
    {error, any()} |
    {error, get_namespace_errors(), tuple()}.
get_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_namespace(Client, Input, []).

-spec get_namespace(aws_client:aws_client(), get_namespace_request(), proplists:proplist()) ->
    {ok, get_namespace_response(), tuple()} |
    {error, any()} |
    {error, get_namespace_errors(), tuple()}.
get_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetNamespace">>, Input, Options).

%% @doc Gets information about any operation that returns an operation ID in
%% the response, such as a
%% `CreateHttpNamespace' request.
%%
%% To get a list of operations that match specified criteria, see
%% ListOperations:
%% https://docs.aws.amazon.com/cloud-map/latest/api/API_ListOperations.html.
-spec get_operation(aws_client:aws_client(), get_operation_request()) ->
    {ok, get_operation_response(), tuple()} |
    {error, any()} |
    {error, get_operation_errors(), tuple()}.
get_operation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_operation(Client, Input, []).

-spec get_operation(aws_client:aws_client(), get_operation_request(), proplists:proplist()) ->
    {ok, get_operation_response(), tuple()} |
    {error, any()} |
    {error, get_operation_errors(), tuple()}.
get_operation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOperation">>, Input, Options).

%% @doc Gets the settings for a specified service.
-spec get_service(aws_client:aws_client(), get_service_request()) ->
    {ok, get_service_response(), tuple()} |
    {error, any()} |
    {error, get_service_errors(), tuple()}.
get_service(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service(Client, Input, []).

-spec get_service(aws_client:aws_client(), get_service_request(), proplists:proplist()) ->
    {ok, get_service_response(), tuple()} |
    {error, any()} |
    {error, get_service_errors(), tuple()}.
get_service(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetService">>, Input, Options).

%% @doc Returns the attributes associated with a specified service.
-spec get_service_attributes(aws_client:aws_client(), get_service_attributes_request()) ->
    {ok, get_service_attributes_response(), tuple()} |
    {error, any()} |
    {error, get_service_attributes_errors(), tuple()}.
get_service_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_attributes(Client, Input, []).

-spec get_service_attributes(aws_client:aws_client(), get_service_attributes_request(), proplists:proplist()) ->
    {ok, get_service_attributes_response(), tuple()} |
    {error, any()} |
    {error, get_service_attributes_errors(), tuple()}.
get_service_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceAttributes">>, Input, Options).

%% @doc Lists summary information about the instances that you registered by
%% using a specified service.
-spec list_instances(aws_client:aws_client(), list_instances_request()) ->
    {ok, list_instances_response(), tuple()} |
    {error, any()} |
    {error, list_instances_errors(), tuple()}.
list_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instances(Client, Input, []).

-spec list_instances(aws_client:aws_client(), list_instances_request(), proplists:proplist()) ->
    {ok, list_instances_response(), tuple()} |
    {error, any()} |
    {error, list_instances_errors(), tuple()}.
list_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstances">>, Input, Options).

%% @doc Lists summary information about the namespaces that were created by
%% the current Amazon Web Services account.
-spec list_namespaces(aws_client:aws_client(), list_namespaces_request()) ->
    {ok, list_namespaces_response(), tuple()} |
    {error, any()} |
    {error, list_namespaces_errors(), tuple()}.
list_namespaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_namespaces(Client, Input, []).

-spec list_namespaces(aws_client:aws_client(), list_namespaces_request(), proplists:proplist()) ->
    {ok, list_namespaces_response(), tuple()} |
    {error, any()} |
    {error, list_namespaces_errors(), tuple()}.
list_namespaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListNamespaces">>, Input, Options).

%% @doc Lists operations that match the criteria that you specify.
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

%% @doc Lists summary information for all the services that are associated
%% with one or more
%% namespaces.
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

%% @doc Lists tags for the specified resource.
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

%% @doc Creates or updates one or more records and, optionally, creates a
%% health check based on the settings in a
%% specified service.
%%
%% When you submit a `RegisterInstance' request, the following occurs:
%%
%% For each DNS record that you define in the service that's specified by
%% `ServiceId', a record
%% is created or updated in the hosted zone that's associated with the
%% corresponding namespace.
%%
%% If the service includes `HealthCheckConfig', a health check is created
%% based on the settings
%% in the health check configuration.
%%
%% The health check, if any, is associated with each of the new or updated
%% records.
%%
%% One `RegisterInstance' request must complete before you can submit
%% another request and specify
%% the same service ID and instance ID.
%%
%% For more information, see CreateService:
%% https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html.
%%
%% When Cloud Map receives a DNS query for the specified DNS name, it returns
%% the applicable value:
%%
%% If the health check is healthy: returns all the records
%%
%% If the health check is unhealthy: returns the applicable value for the
%% last healthy instance
%%
%% If you didn't specify a health check configuration: returns all the
%% records
%%
%% For the current quota on the number of instances that you can register
%% using the same namespace and using
%% the same service, see Cloud Map
%% quotas:
%% https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html in
%% the Cloud Map Developer Guide.
-spec register_instance(aws_client:aws_client(), register_instance_request()) ->
    {ok, register_instance_response(), tuple()} |
    {error, any()} |
    {error, register_instance_errors(), tuple()}.
register_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_instance(Client, Input, []).

-spec register_instance(aws_client:aws_client(), register_instance_request(), proplists:proplist()) ->
    {ok, register_instance_response(), tuple()} |
    {error, any()} |
    {error, register_instance_errors(), tuple()}.
register_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterInstance">>, Input, Options).

%% @doc Adds one or more tags to the specified resource.
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

%% @doc Removes one or more tags from the specified resource.
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

%% @doc Updates an HTTP
%% namespace.
-spec update_http_namespace(aws_client:aws_client(), update_http_namespace_request()) ->
    {ok, update_http_namespace_response(), tuple()} |
    {error, any()} |
    {error, update_http_namespace_errors(), tuple()}.
update_http_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_http_namespace(Client, Input, []).

-spec update_http_namespace(aws_client:aws_client(), update_http_namespace_request(), proplists:proplist()) ->
    {ok, update_http_namespace_response(), tuple()} |
    {error, any()} |
    {error, update_http_namespace_errors(), tuple()}.
update_http_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateHttpNamespace">>, Input, Options).

%% @doc Submits a request to change the health status of a custom health
%% check to healthy or unhealthy.
%%
%% You can use `UpdateInstanceCustomHealthStatus' to change the status
%% only for custom health
%% checks, which you define using `HealthCheckCustomConfig' when you
%% create a service. You can't use it
%% to change the status for Route 53 health checks, which you define using
%% `HealthCheckConfig'.
%%
%% For more information, see HealthCheckCustomConfig:
%% https://docs.aws.amazon.com/cloud-map/latest/api/API_HealthCheckCustomConfig.html.
-spec update_instance_custom_health_status(aws_client:aws_client(), update_instance_custom_health_status_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_instance_custom_health_status_errors(), tuple()}.
update_instance_custom_health_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_instance_custom_health_status(Client, Input, []).

-spec update_instance_custom_health_status(aws_client:aws_client(), update_instance_custom_health_status_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_instance_custom_health_status_errors(), tuple()}.
update_instance_custom_health_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateInstanceCustomHealthStatus">>, Input, Options).

%% @doc Updates a private DNS
%% namespace.
-spec update_private_dns_namespace(aws_client:aws_client(), update_private_dns_namespace_request()) ->
    {ok, update_private_dns_namespace_response(), tuple()} |
    {error, any()} |
    {error, update_private_dns_namespace_errors(), tuple()}.
update_private_dns_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_private_dns_namespace(Client, Input, []).

-spec update_private_dns_namespace(aws_client:aws_client(), update_private_dns_namespace_request(), proplists:proplist()) ->
    {ok, update_private_dns_namespace_response(), tuple()} |
    {error, any()} |
    {error, update_private_dns_namespace_errors(), tuple()}.
update_private_dns_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePrivateDnsNamespace">>, Input, Options).

%% @doc Updates a public DNS
%% namespace.
-spec update_public_dns_namespace(aws_client:aws_client(), update_public_dns_namespace_request()) ->
    {ok, update_public_dns_namespace_response(), tuple()} |
    {error, any()} |
    {error, update_public_dns_namespace_errors(), tuple()}.
update_public_dns_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_public_dns_namespace(Client, Input, []).

-spec update_public_dns_namespace(aws_client:aws_client(), update_public_dns_namespace_request(), proplists:proplist()) ->
    {ok, update_public_dns_namespace_response(), tuple()} |
    {error, any()} |
    {error, update_public_dns_namespace_errors(), tuple()}.
update_public_dns_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePublicDnsNamespace">>, Input, Options).

%% @doc Submits a request to perform the following operations:
%%
%% Update the TTL setting for existing `DnsRecords' configurations
%%
%% Add, update, or delete `HealthCheckConfig' for a specified service
%%
%% You can't add, update, or delete a `HealthCheckCustomConfig'
%% configuration.
%%
%% For public and private DNS namespaces, note the following:
%%
%% If you omit any existing `DnsRecords' or `HealthCheckConfig'
%% configurations from an
%% `UpdateService' request, the configurations are deleted from the
%% service.
%%
%% If you omit an existing `HealthCheckCustomConfig' configuration from
%% an
%% `UpdateService' request, the configuration isn't deleted from the
%% service.
%%
%% When you update settings for a service, Cloud Map also updates the
%% corresponding settings in all the
%% records and health checks that were created by using the specified
%% service.
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

%% @doc Submits a request to update a specified service to add service-level
%% attributes.
-spec update_service_attributes(aws_client:aws_client(), update_service_attributes_request()) ->
    {ok, update_service_attributes_response(), tuple()} |
    {error, any()} |
    {error, update_service_attributes_errors(), tuple()}.
update_service_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_service_attributes(Client, Input, []).

-spec update_service_attributes(aws_client:aws_client(), update_service_attributes_request(), proplists:proplist()) ->
    {ok, update_service_attributes_response(), tuple()} |
    {error, any()} |
    {error, update_service_attributes_errors(), tuple()}.
update_service_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServiceAttributes">>, Input, Options).

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
    Client1 = Client#{service => <<"servicediscovery">>},
    Host = build_host(<<"servicediscovery">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"Route53AutoNaming_v20170314.", Action/binary>>}
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
