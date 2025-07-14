%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Outposts is a fully managed service that extends
%% Amazon Web Services infrastructure, APIs, and tools to
%% customer premises.
%%
%% By providing local access to Amazon Web Services managed infrastructure,
%% Amazon Web Services Outposts enables
%% customers to build and run applications on premises using the same
%% programming interfaces as
%% in Amazon Web Services Regions, while using local compute and storage
%% resources for lower latency and local
%% data processing needs.
-module(aws_outposts).

-export([cancel_capacity_task/4,
         cancel_capacity_task/5,
         cancel_order/3,
         cancel_order/4,
         create_order/2,
         create_order/3,
         create_outpost/2,
         create_outpost/3,
         create_site/2,
         create_site/3,
         delete_outpost/3,
         delete_outpost/4,
         delete_site/3,
         delete_site/4,
         get_capacity_task/3,
         get_capacity_task/5,
         get_capacity_task/6,
         get_catalog_item/2,
         get_catalog_item/4,
         get_catalog_item/5,
         get_connection/2,
         get_connection/4,
         get_connection/5,
         get_order/2,
         get_order/4,
         get_order/5,
         get_outpost/2,
         get_outpost/4,
         get_outpost/5,
         get_outpost_instance_types/2,
         get_outpost_instance_types/4,
         get_outpost_instance_types/5,
         get_outpost_supported_instance_types/2,
         get_outpost_supported_instance_types/4,
         get_outpost_supported_instance_types/5,
         get_site/2,
         get_site/4,
         get_site/5,
         get_site_address/3,
         get_site_address/5,
         get_site_address/6,
         list_asset_instances/2,
         list_asset_instances/4,
         list_asset_instances/5,
         list_assets/2,
         list_assets/4,
         list_assets/5,
         list_blocking_instances_for_capacity_task/3,
         list_blocking_instances_for_capacity_task/5,
         list_blocking_instances_for_capacity_task/6,
         list_capacity_tasks/1,
         list_capacity_tasks/3,
         list_capacity_tasks/4,
         list_catalog_items/1,
         list_catalog_items/3,
         list_catalog_items/4,
         list_orders/1,
         list_orders/3,
         list_orders/4,
         list_outposts/1,
         list_outposts/3,
         list_outposts/4,
         list_sites/1,
         list_sites/3,
         list_sites/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         start_capacity_task/3,
         start_capacity_task/4,
         start_connection/2,
         start_connection/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_outpost/3,
         update_outpost/4,
         update_site/3,
         update_site/4,
         update_site_address/3,
         update_site_address/4,
         update_site_rack_physical_properties/3,
         update_site_rack_physical_properties/4]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% get_connection_request() :: #{}
-type get_connection_request() :: #{}.


%% Example:
%% get_outpost_supported_instance_types_input() :: #{
%%   <<"AssetId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OrderId">> => string()
%% }
-type get_outpost_supported_instance_types_input() :: #{binary() => any()}.


%% Example:
%% get_outpost_instance_types_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type get_outpost_instance_types_input() :: #{binary() => any()}.


%% Example:
%% instance_type_item() :: #{
%%   <<"InstanceType">> => string(),
%%   <<"VCPUs">> => integer()
%% }
-type instance_type_item() :: #{binary() => any()}.


%% Example:
%% blocking_instance() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AwsServiceName">> => list(any()),
%%   <<"InstanceId">> => string()
%% }
-type blocking_instance() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% start_connection_response() :: #{
%%   <<"ConnectionId">> => string(),
%%   <<"UnderlayIpAddress">> => string()
%% }
-type start_connection_response() :: #{binary() => any()}.


%% Example:
%% list_assets_input() :: #{
%%   <<"HostIdFilter">> => list(string()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StatusFilter">> => list(list(any())())
%% }
-type list_assets_input() :: #{binary() => any()}.


%% Example:
%% list_asset_instances_input() :: #{
%%   <<"AccountIdFilter">> => list(string()),
%%   <<"AssetIdFilter">> => list(string()),
%%   <<"AwsServiceFilter">> => list(list(any())()),
%%   <<"InstanceTypeFilter">> => list(string()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_asset_instances_input() :: #{binary() => any()}.


%% Example:
%% asset_location() :: #{
%%   <<"RackElevation">> => float()
%% }
-type asset_location() :: #{binary() => any()}.

%% Example:
%% get_order_input() :: #{}
-type get_order_input() :: #{}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_capacity_tasks_output() :: #{
%%   <<"CapacityTasks">> => list(capacity_task_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_capacity_tasks_output() :: #{binary() => any()}.


%% Example:
%% get_connection_response() :: #{
%%   <<"ConnectionDetails">> => connection_details(),
%%   <<"ConnectionId">> => string()
%% }
-type get_connection_response() :: #{binary() => any()}.


%% Example:
%% get_outpost_supported_instance_types_output() :: #{
%%   <<"InstanceTypes">> => list(instance_type_item()),
%%   <<"NextToken">> => string()
%% }
-type get_outpost_supported_instance_types_output() :: #{binary() => any()}.


%% Example:
%% line_item_asset_information() :: #{
%%   <<"AssetId">> => string(),
%%   <<"MacAddressList">> => list(string())
%% }
-type line_item_asset_information() :: #{binary() => any()}.


%% Example:
%% list_orders_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Orders">> => list(order_summary())
%% }
-type list_orders_output() :: #{binary() => any()}.


%% Example:
%% start_connection_request() :: #{
%%   <<"AssetId">> := string(),
%%   <<"ClientPublicKey">> := string(),
%%   <<"DeviceSerialNumber">> => string(),
%%   <<"NetworkInterfaceDeviceIndex">> := integer()
%% }
-type start_connection_request() :: #{binary() => any()}.


%% Example:
%% get_site_output() :: #{
%%   <<"Site">> => site()
%% }
-type get_site_output() :: #{binary() => any()}.


%% Example:
%% create_site_input() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Notes">> => string(),
%%   <<"OperatingAddress">> => address(),
%%   <<"RackPhysicalProperties">> => rack_physical_properties(),
%%   <<"ShippingAddress">> => address(),
%%   <<"Tags">> => map()
%% }
-type create_site_input() :: #{binary() => any()}.


%% Example:
%% list_outposts_input() :: #{
%%   <<"AvailabilityZoneFilter">> => list(string()),
%%   <<"AvailabilityZoneIdFilter">> => list(string()),
%%   <<"LifeCycleStatusFilter">> => list(string()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_outposts_input() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% catalog_item() :: #{
%%   <<"CatalogItemId">> => string(),
%%   <<"EC2Capacities">> => list(ec2_capacity()),
%%   <<"ItemStatus">> => list(any()),
%%   <<"PowerKva">> => float(),
%%   <<"SupportedStorage">> => list(list(any())()),
%%   <<"SupportedUplinkGbps">> => list(integer()),
%%   <<"WeightLbs">> => integer()
%% }
-type catalog_item() :: #{binary() => any()}.


%% Example:
%% get_site_address_input() :: #{
%%   <<"AddressType">> := list(any())
%% }
-type get_site_address_input() :: #{binary() => any()}.


%% Example:
%% create_site_output() :: #{
%%   <<"Site">> => site()
%% }
-type create_site_output() :: #{binary() => any()}.


%% Example:
%% update_site_address_input() :: #{
%%   <<"Address">> := address(),
%%   <<"AddressType">> := list(any())
%% }
-type update_site_address_input() :: #{binary() => any()}.


%% Example:
%% update_outpost_input() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"SupportedHardwareType">> => list(any())
%% }
-type update_outpost_input() :: #{binary() => any()}.


%% Example:
%% rack_physical_properties() :: #{
%%   <<"FiberOpticCableType">> => list(any()),
%%   <<"MaximumSupportedWeightLbs">> => list(any()),
%%   <<"OpticalStandard">> => list(any()),
%%   <<"PowerConnector">> => list(any()),
%%   <<"PowerDrawKva">> => list(any()),
%%   <<"PowerFeedDrop">> => list(any()),
%%   <<"PowerPhase">> => list(any()),
%%   <<"UplinkCount">> => list(any()),
%%   <<"UplinkGbps">> => list(any())
%% }
-type rack_physical_properties() :: #{binary() => any()}.


%% Example:
%% update_site_rack_physical_properties_input() :: #{
%%   <<"FiberOpticCableType">> => list(any()),
%%   <<"MaximumSupportedWeightLbs">> => list(any()),
%%   <<"OpticalStandard">> => list(any()),
%%   <<"PowerConnector">> => list(any()),
%%   <<"PowerDrawKva">> => list(any()),
%%   <<"PowerFeedDrop">> => list(any()),
%%   <<"PowerPhase">> => list(any()),
%%   <<"UplinkCount">> => list(any()),
%%   <<"UplinkGbps">> => list(any())
%% }
-type update_site_rack_physical_properties_input() :: #{binary() => any()}.


%% Example:
%% update_site_address_output() :: #{
%%   <<"Address">> => address(),
%%   <<"AddressType">> => list(any())
%% }
-type update_site_address_output() :: #{binary() => any()}.


%% Example:
%% list_orders_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OutpostIdentifierFilter">> => string()
%% }
-type list_orders_input() :: #{binary() => any()}.

%% Example:
%% get_capacity_task_input() :: #{}
-type get_capacity_task_input() :: #{}.


%% Example:
%% list_asset_instances_output() :: #{
%%   <<"AssetInstances">> => list(asset_instance()),
%%   <<"NextToken">> => string()
%% }
-type list_asset_instances_output() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => list(any())
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% asset_instance_type_capacity() :: #{
%%   <<"Count">> => integer(),
%%   <<"InstanceType">> => string()
%% }
-type asset_instance_type_capacity() :: #{binary() => any()}.

%% Example:
%% get_catalog_item_input() :: #{}
-type get_catalog_item_input() :: #{}.


%% Example:
%% create_order_output() :: #{
%%   <<"Order">> => order()
%% }
-type create_order_output() :: #{binary() => any()}.

%% Example:
%% get_outpost_input() :: #{}
-type get_outpost_input() :: #{}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% update_site_output() :: #{
%%   <<"Site">> => site()
%% }
-type update_site_output() :: #{binary() => any()}.


%% Example:
%% site() :: #{
%%   <<"AccountId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"Notes">> => string(),
%%   <<"OperatingAddressCity">> => string(),
%%   <<"OperatingAddressCountryCode">> => string(),
%%   <<"OperatingAddressStateOrRegion">> => string(),
%%   <<"RackPhysicalProperties">> => rack_physical_properties(),
%%   <<"SiteArn">> => string(),
%%   <<"SiteId">> => string(),
%%   <<"Tags">> => map()
%% }
-type site() :: #{binary() => any()}.


%% Example:
%% list_sites_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OperatingAddressCityFilter">> => list(string()),
%%   <<"OperatingAddressCountryCodeFilter">> => list(string()),
%%   <<"OperatingAddressStateOrRegionFilter">> => list(string())
%% }
-type list_sites_input() :: #{binary() => any()}.


%% Example:
%% list_blocking_instances_for_capacity_task_output() :: #{
%%   <<"BlockingInstances">> => list(blocking_instance()),
%%   <<"NextToken">> => string()
%% }
-type list_blocking_instances_for_capacity_task_output() :: #{binary() => any()}.


%% Example:
%% instance_type_capacity() :: #{
%%   <<"Count">> => integer(),
%%   <<"InstanceType">> => string()
%% }
-type instance_type_capacity() :: #{binary() => any()}.


%% Example:
%% get_outpost_output() :: #{
%%   <<"Outpost">> => outpost()
%% }
-type get_outpost_output() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% get_order_output() :: #{
%%   <<"Order">> => order()
%% }
-type get_order_output() :: #{binary() => any()}.


%% Example:
%% create_order_input() :: #{
%%   <<"LineItems">> := list(line_item_request()),
%%   <<"OutpostIdentifier">> := string(),
%%   <<"PaymentOption">> := list(any()),
%%   <<"PaymentTerm">> => list(any())
%% }
-type create_order_input() :: #{binary() => any()}.


%% Example:
%% get_catalog_item_output() :: #{
%%   <<"CatalogItem">> => catalog_item()
%% }
-type get_catalog_item_output() :: #{binary() => any()}.

%% Example:
%% cancel_capacity_task_output() :: #{}
-type cancel_capacity_task_output() :: #{}.


%% Example:
%% ec2_capacity() :: #{
%%   <<"Family">> => string(),
%%   <<"MaxSize">> => string(),
%%   <<"Quantity">> => string()
%% }
-type ec2_capacity() :: #{binary() => any()}.


%% Example:
%% start_capacity_task_output() :: #{
%%   <<"AssetId">> => string(),
%%   <<"CapacityTaskId">> => string(),
%%   <<"CapacityTaskStatus">> => list(any()),
%%   <<"CompletionDate">> => non_neg_integer(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"DryRun">> => boolean(),
%%   <<"Failed">> => capacity_task_failure(),
%%   <<"InstancesToExclude">> => instances_to_exclude(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"OrderId">> => string(),
%%   <<"OutpostId">> => string(),
%%   <<"RequestedInstancePools">> => list(instance_type_capacity()),
%%   <<"TaskActionOnBlockingInstances">> => list(any())
%% }
-type start_capacity_task_output() :: #{binary() => any()}.


%% Example:
%% list_sites_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Sites">> => list(site())
%% }
-type list_sites_output() :: #{binary() => any()}.


%% Example:
%% start_capacity_task_input() :: #{
%%   <<"AssetId">> => string(),
%%   <<"DryRun">> => boolean(),
%%   <<"InstancePools">> := list(instance_type_capacity()),
%%   <<"InstancesToExclude">> => instances_to_exclude(),
%%   <<"OrderId">> => string(),
%%   <<"TaskActionOnBlockingInstances">> => list(any())
%% }
-type start_capacity_task_input() :: #{binary() => any()}.


%% Example:
%% order() :: #{
%%   <<"LineItems">> => list(line_item()),
%%   <<"OrderFulfilledDate">> => non_neg_integer(),
%%   <<"OrderId">> => string(),
%%   <<"OrderSubmissionDate">> => non_neg_integer(),
%%   <<"OrderType">> => list(any()),
%%   <<"OutpostId">> => string(),
%%   <<"PaymentOption">> => list(any()),
%%   <<"PaymentTerm">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type order() :: #{binary() => any()}.

%% Example:
%% cancel_order_input() :: #{}
-type cancel_order_input() :: #{}.


%% Example:
%% capacity_task_failure() :: #{
%%   <<"Reason">> => string(),
%%   <<"Type">> => list(any())
%% }
-type capacity_task_failure() :: #{binary() => any()}.


%% Example:
%% compute_attributes() :: #{
%%   <<"HostId">> => string(),
%%   <<"InstanceFamilies">> => list(string()),
%%   <<"InstanceTypeCapacities">> => list(asset_instance_type_capacity()),
%%   <<"MaxVcpus">> => integer(),
%%   <<"State">> => list(any())
%% }
-type compute_attributes() :: #{binary() => any()}.


%% Example:
%% list_assets_output() :: #{
%%   <<"Assets">> => list(asset_info()),
%%   <<"NextToken">> => string()
%% }
-type list_assets_output() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% delete_site_output() :: #{}
-type delete_site_output() :: #{}.

%% Example:
%% delete_outpost_output() :: #{}
-type delete_outpost_output() :: #{}.

%% Example:
%% cancel_order_output() :: #{}
-type cancel_order_output() :: #{}.


%% Example:
%% get_outpost_instance_types_output() :: #{
%%   <<"InstanceTypes">> => list(instance_type_item()),
%%   <<"NextToken">> => string(),
%%   <<"OutpostArn">> => string(),
%%   <<"OutpostId">> => string()
%% }
-type get_outpost_instance_types_output() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% instances_to_exclude() :: #{
%%   <<"AccountIds">> => list(string()),
%%   <<"Instances">> => list(string()),
%%   <<"Services">> => list(list(any())())
%% }
-type instances_to_exclude() :: #{binary() => any()}.

%% Example:
%% delete_site_input() :: #{}
-type delete_site_input() :: #{}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% update_site_input() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"Notes">> => string()
%% }
-type update_site_input() :: #{binary() => any()}.

%% Example:
%% get_site_input() :: #{}
-type get_site_input() :: #{}.


%% Example:
%% list_outposts_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Outposts">> => list(outpost())
%% }
-type list_outposts_output() :: #{binary() => any()}.

%% Example:
%% delete_outpost_input() :: #{}
-type delete_outpost_input() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% order_summary() :: #{
%%   <<"LineItemCountsByStatus">> => map(),
%%   <<"OrderFulfilledDate">> => non_neg_integer(),
%%   <<"OrderId">> => string(),
%%   <<"OrderSubmissionDate">> => non_neg_integer(),
%%   <<"OrderType">> => list(any()),
%%   <<"OutpostId">> => string(),
%%   <<"Status">> => list(any())
%% }
-type order_summary() :: #{binary() => any()}.


%% Example:
%% list_capacity_tasks_input() :: #{
%%   <<"CapacityTaskStatusFilter">> => list(list(any())()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"OutpostIdentifierFilter">> => string()
%% }
-type list_capacity_tasks_input() :: #{binary() => any()}.


%% Example:
%% list_blocking_instances_for_capacity_task_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_blocking_instances_for_capacity_task_input() :: #{binary() => any()}.


%% Example:
%% create_outpost_output() :: #{
%%   <<"Outpost">> => outpost()
%% }
-type create_outpost_output() :: #{binary() => any()}.


%% Example:
%% get_site_address_output() :: #{
%%   <<"Address">> => address(),
%%   <<"AddressType">> => list(any()),
%%   <<"SiteId">> => string()
%% }
-type get_site_address_output() :: #{binary() => any()}.


%% Example:
%% asset_info() :: #{
%%   <<"AssetId">> => string(),
%%   <<"AssetLocation">> => asset_location(),
%%   <<"AssetType">> => list(any()),
%%   <<"ComputeAttributes">> => compute_attributes(),
%%   <<"RackId">> => string()
%% }
-type asset_info() :: #{binary() => any()}.


%% Example:
%% list_catalog_items_input() :: #{
%%   <<"EC2FamilyFilter">> => list(string()),
%%   <<"ItemClassFilter">> => list(list(any())()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SupportedStorageFilter">> => list(list(any())())
%% }
-type list_catalog_items_input() :: #{binary() => any()}.


%% Example:
%% update_outpost_output() :: #{
%%   <<"Outpost">> => outpost()
%% }
-type update_outpost_output() :: #{binary() => any()}.


%% Example:
%% line_item_request() :: #{
%%   <<"CatalogItemId">> => string(),
%%   <<"Quantity">> => integer()
%% }
-type line_item_request() :: #{binary() => any()}.


%% Example:
%% connection_details() :: #{
%%   <<"AllowedIps">> => list(string()),
%%   <<"ClientPublicKey">> => string(),
%%   <<"ClientTunnelAddress">> => string(),
%%   <<"ServerEndpoint">> => string(),
%%   <<"ServerPublicKey">> => string(),
%%   <<"ServerTunnelAddress">> => string()
%% }
-type connection_details() :: #{binary() => any()}.


%% Example:
%% outpost() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"AvailabilityZoneId">> => string(),
%%   <<"Description">> => string(),
%%   <<"LifeCycleStatus">> => string(),
%%   <<"Name">> => string(),
%%   <<"OutpostArn">> => string(),
%%   <<"OutpostId">> => string(),
%%   <<"OwnerId">> => string(),
%%   <<"SiteArn">> => string(),
%%   <<"SiteId">> => string(),
%%   <<"SupportedHardwareType">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type outpost() :: #{binary() => any()}.


%% Example:
%% address() :: #{
%%   <<"AddressLine1">> => string(),
%%   <<"AddressLine2">> => string(),
%%   <<"AddressLine3">> => string(),
%%   <<"City">> => string(),
%%   <<"ContactName">> => string(),
%%   <<"ContactPhoneNumber">> => string(),
%%   <<"CountryCode">> => string(),
%%   <<"DistrictOrCounty">> => string(),
%%   <<"Municipality">> => string(),
%%   <<"PostalCode">> => string(),
%%   <<"StateOrRegion">> => string()
%% }
-type address() :: #{binary() => any()}.


%% Example:
%% capacity_task_summary() :: #{
%%   <<"AssetId">> => string(),
%%   <<"CapacityTaskId">> => string(),
%%   <<"CapacityTaskStatus">> => list(any()),
%%   <<"CompletionDate">> => non_neg_integer(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"OrderId">> => string(),
%%   <<"OutpostId">> => string()
%% }
-type capacity_task_summary() :: #{binary() => any()}.


%% Example:
%% list_catalog_items_output() :: #{
%%   <<"CatalogItems">> => list(catalog_item()),
%%   <<"NextToken">> => string()
%% }
-type list_catalog_items_output() :: #{binary() => any()}.


%% Example:
%% asset_instance() :: #{
%%   <<"AccountId">> => string(),
%%   <<"AssetId">> => string(),
%%   <<"AwsServiceName">> => list(any()),
%%   <<"InstanceId">> => string(),
%%   <<"InstanceType">> => string()
%% }
-type asset_instance() :: #{binary() => any()}.


%% Example:
%% update_site_rack_physical_properties_output() :: #{
%%   <<"Site">> => site()
%% }
-type update_site_rack_physical_properties_output() :: #{binary() => any()}.


%% Example:
%% line_item() :: #{
%%   <<"AssetInformationList">> => list(line_item_asset_information()),
%%   <<"CatalogItemId">> => string(),
%%   <<"LineItemId">> => string(),
%%   <<"PreviousLineItemId">> => string(),
%%   <<"PreviousOrderId">> => string(),
%%   <<"Quantity">> => integer(),
%%   <<"ShipmentInformation">> => shipment_information(),
%%   <<"Status">> => list(any())
%% }
-type line_item() :: #{binary() => any()}.

%% Example:
%% cancel_capacity_task_input() :: #{}
-type cancel_capacity_task_input() :: #{}.


%% Example:
%% shipment_information() :: #{
%%   <<"ShipmentCarrier">> => list(any()),
%%   <<"ShipmentTrackingNumber">> => string()
%% }
-type shipment_information() :: #{binary() => any()}.


%% Example:
%% get_capacity_task_output() :: #{
%%   <<"AssetId">> => string(),
%%   <<"CapacityTaskId">> => string(),
%%   <<"CapacityTaskStatus">> => list(any()),
%%   <<"CompletionDate">> => non_neg_integer(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"DryRun">> => boolean(),
%%   <<"Failed">> => capacity_task_failure(),
%%   <<"InstancesToExclude">> => instances_to_exclude(),
%%   <<"LastModifiedDate">> => non_neg_integer(),
%%   <<"OrderId">> => string(),
%%   <<"OutpostId">> => string(),
%%   <<"RequestedInstancePools">> => list(instance_type_capacity()),
%%   <<"TaskActionOnBlockingInstances">> => list(any())
%% }
-type get_capacity_task_output() :: #{binary() => any()}.


%% Example:
%% create_outpost_input() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"AvailabilityZoneId">> => string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"SiteId">> := string(),
%%   <<"SupportedHardwareType">> => list(any()),
%%   <<"Tags">> => map()
%% }
-type create_outpost_input() :: #{binary() => any()}.

-type cancel_capacity_task_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception() | 
    conflict_exception().

-type cancel_order_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception() | 
    conflict_exception().

-type create_order_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_outpost_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_site_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type delete_outpost_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception() | 
    conflict_exception().

-type delete_site_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception() | 
    conflict_exception().

-type get_capacity_task_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception().

-type get_catalog_item_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    not_found_exception().

-type get_connection_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception().

-type get_order_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    not_found_exception().

-type get_outpost_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception().

-type get_outpost_instance_types_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception().

-type get_outpost_supported_instance_types_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception().

-type get_site_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception().

-type get_site_address_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception().

-type list_asset_instances_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception().

-type list_assets_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception().

-type list_blocking_instances_for_capacity_task_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception().

-type list_capacity_tasks_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception().

-type list_catalog_items_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    not_found_exception().

-type list_orders_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception().

-type list_outposts_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_sites_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    not_found_exception().

-type start_capacity_task_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception() | 
    conflict_exception().

-type start_connection_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    not_found_exception().

-type update_outpost_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception() | 
    conflict_exception().

-type update_site_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception() | 
    conflict_exception().

-type update_site_address_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception() | 
    conflict_exception().

-type update_site_rack_physical_properties_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels the capacity task.
-spec cancel_capacity_task(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_capacity_task_input()) ->
    {ok, cancel_capacity_task_output(), tuple()} |
    {error, any()} |
    {error, cancel_capacity_task_errors(), tuple()}.
cancel_capacity_task(Client, CapacityTaskId, OutpostIdentifier, Input) ->
    cancel_capacity_task(Client, CapacityTaskId, OutpostIdentifier, Input, []).

-spec cancel_capacity_task(aws_client:aws_client(), binary() | list(), binary() | list(), cancel_capacity_task_input(), proplists:proplist()) ->
    {ok, cancel_capacity_task_output(), tuple()} |
    {error, any()} |
    {error, cancel_capacity_task_errors(), tuple()}.
cancel_capacity_task(Client, CapacityTaskId, OutpostIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/outposts/", aws_util:encode_uri(OutpostIdentifier), "/capacity/", aws_util:encode_uri(CapacityTaskId), ""],
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

%% @doc Cancels the specified order for an Outpost.
-spec cancel_order(aws_client:aws_client(), binary() | list(), cancel_order_input()) ->
    {ok, cancel_order_output(), tuple()} |
    {error, any()} |
    {error, cancel_order_errors(), tuple()}.
cancel_order(Client, OrderId, Input) ->
    cancel_order(Client, OrderId, Input, []).

-spec cancel_order(aws_client:aws_client(), binary() | list(), cancel_order_input(), proplists:proplist()) ->
    {ok, cancel_order_output(), tuple()} |
    {error, any()} |
    {error, cancel_order_errors(), tuple()}.
cancel_order(Client, OrderId, Input0, Options0) ->
    Method = post,
    Path = ["/orders/", aws_util:encode_uri(OrderId), "/cancel"],
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

%% @doc Creates an order for an Outpost.
-spec create_order(aws_client:aws_client(), create_order_input()) ->
    {ok, create_order_output(), tuple()} |
    {error, any()} |
    {error, create_order_errors(), tuple()}.
create_order(Client, Input) ->
    create_order(Client, Input, []).

-spec create_order(aws_client:aws_client(), create_order_input(), proplists:proplist()) ->
    {ok, create_order_output(), tuple()} |
    {error, any()} |
    {error, create_order_errors(), tuple()}.
create_order(Client, Input0, Options0) ->
    Method = post,
    Path = ["/orders"],
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

%% @doc Creates an Outpost.
%%
%% You can specify either an Availability one or an AZ ID.
-spec create_outpost(aws_client:aws_client(), create_outpost_input()) ->
    {ok, create_outpost_output(), tuple()} |
    {error, any()} |
    {error, create_outpost_errors(), tuple()}.
create_outpost(Client, Input) ->
    create_outpost(Client, Input, []).

-spec create_outpost(aws_client:aws_client(), create_outpost_input(), proplists:proplist()) ->
    {ok, create_outpost_output(), tuple()} |
    {error, any()} |
    {error, create_outpost_errors(), tuple()}.
create_outpost(Client, Input0, Options0) ->
    Method = post,
    Path = ["/outposts"],
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

%% @doc Creates a site for an Outpost.
-spec create_site(aws_client:aws_client(), create_site_input()) ->
    {ok, create_site_output(), tuple()} |
    {error, any()} |
    {error, create_site_errors(), tuple()}.
create_site(Client, Input) ->
    create_site(Client, Input, []).

-spec create_site(aws_client:aws_client(), create_site_input(), proplists:proplist()) ->
    {ok, create_site_output(), tuple()} |
    {error, any()} |
    {error, create_site_errors(), tuple()}.
create_site(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sites"],
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

%% @doc Deletes the specified Outpost.
-spec delete_outpost(aws_client:aws_client(), binary() | list(), delete_outpost_input()) ->
    {ok, delete_outpost_output(), tuple()} |
    {error, any()} |
    {error, delete_outpost_errors(), tuple()}.
delete_outpost(Client, OutpostId, Input) ->
    delete_outpost(Client, OutpostId, Input, []).

-spec delete_outpost(aws_client:aws_client(), binary() | list(), delete_outpost_input(), proplists:proplist()) ->
    {ok, delete_outpost_output(), tuple()} |
    {error, any()} |
    {error, delete_outpost_errors(), tuple()}.
delete_outpost(Client, OutpostId, Input0, Options0) ->
    Method = delete,
    Path = ["/outposts/", aws_util:encode_uri(OutpostId), ""],
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

%% @doc Deletes the specified site.
-spec delete_site(aws_client:aws_client(), binary() | list(), delete_site_input()) ->
    {ok, delete_site_output(), tuple()} |
    {error, any()} |
    {error, delete_site_errors(), tuple()}.
delete_site(Client, SiteId, Input) ->
    delete_site(Client, SiteId, Input, []).

-spec delete_site(aws_client:aws_client(), binary() | list(), delete_site_input(), proplists:proplist()) ->
    {ok, delete_site_output(), tuple()} |
    {error, any()} |
    {error, delete_site_errors(), tuple()}.
delete_site(Client, SiteId, Input0, Options0) ->
    Method = delete,
    Path = ["/sites/", aws_util:encode_uri(SiteId), ""],
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

%% @doc Gets details of the specified capacity task.
-spec get_capacity_task(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_capacity_task_output(), tuple()} |
    {error, any()} |
    {error, get_capacity_task_errors(), tuple()}.
get_capacity_task(Client, CapacityTaskId, OutpostIdentifier)
  when is_map(Client) ->
    get_capacity_task(Client, CapacityTaskId, OutpostIdentifier, #{}, #{}).

-spec get_capacity_task(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_capacity_task_output(), tuple()} |
    {error, any()} |
    {error, get_capacity_task_errors(), tuple()}.
get_capacity_task(Client, CapacityTaskId, OutpostIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_capacity_task(Client, CapacityTaskId, OutpostIdentifier, QueryMap, HeadersMap, []).

-spec get_capacity_task(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_capacity_task_output(), tuple()} |
    {error, any()} |
    {error, get_capacity_task_errors(), tuple()}.
get_capacity_task(Client, CapacityTaskId, OutpostIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/outposts/", aws_util:encode_uri(OutpostIdentifier), "/capacity/", aws_util:encode_uri(CapacityTaskId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified catalog item.
-spec get_catalog_item(aws_client:aws_client(), binary() | list()) ->
    {ok, get_catalog_item_output(), tuple()} |
    {error, any()} |
    {error, get_catalog_item_errors(), tuple()}.
get_catalog_item(Client, CatalogItemId)
  when is_map(Client) ->
    get_catalog_item(Client, CatalogItemId, #{}, #{}).

-spec get_catalog_item(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_catalog_item_output(), tuple()} |
    {error, any()} |
    {error, get_catalog_item_errors(), tuple()}.
get_catalog_item(Client, CatalogItemId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_catalog_item(Client, CatalogItemId, QueryMap, HeadersMap, []).

-spec get_catalog_item(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_catalog_item_output(), tuple()} |
    {error, any()} |
    {error, get_catalog_item_errors(), tuple()}.
get_catalog_item(Client, CatalogItemId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/catalog/item/", aws_util:encode_uri(CatalogItemId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc
%%
%% Amazon Web Services uses this action to install Outpost servers.
%%
%% Gets information about the specified connection.
%%
%% Use CloudTrail to monitor this action or Amazon Web Services managed
%% policy for Amazon Web Services Outposts to secure it. For
%% more information, see
%% Amazon Web Services managed policies for Amazon Web Services Outposts:
%% https://docs.aws.amazon.com/outposts/latest/userguide/security-iam-awsmanpol.html
%% and
%% Logging Amazon Web Services Outposts API calls with Amazon Web Services
%% CloudTrail:
%% https://docs.aws.amazon.com/outposts/latest/userguide/logging-using-cloudtrail.html
%% in the Amazon Web Services Outposts User Guide.
-spec get_connection(aws_client:aws_client(), binary() | list()) ->
    {ok, get_connection_response(), tuple()} |
    {error, any()} |
    {error, get_connection_errors(), tuple()}.
get_connection(Client, ConnectionId)
  when is_map(Client) ->
    get_connection(Client, ConnectionId, #{}, #{}).

-spec get_connection(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_connection_response(), tuple()} |
    {error, any()} |
    {error, get_connection_errors(), tuple()}.
get_connection(Client, ConnectionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_connection(Client, ConnectionId, QueryMap, HeadersMap, []).

-spec get_connection(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_connection_response(), tuple()} |
    {error, any()} |
    {error, get_connection_errors(), tuple()}.
get_connection(Client, ConnectionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/connections/", aws_util:encode_uri(ConnectionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified order.
-spec get_order(aws_client:aws_client(), binary() | list()) ->
    {ok, get_order_output(), tuple()} |
    {error, any()} |
    {error, get_order_errors(), tuple()}.
get_order(Client, OrderId)
  when is_map(Client) ->
    get_order(Client, OrderId, #{}, #{}).

-spec get_order(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_order_output(), tuple()} |
    {error, any()} |
    {error, get_order_errors(), tuple()}.
get_order(Client, OrderId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_order(Client, OrderId, QueryMap, HeadersMap, []).

-spec get_order(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_order_output(), tuple()} |
    {error, any()} |
    {error, get_order_errors(), tuple()}.
get_order(Client, OrderId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/orders/", aws_util:encode_uri(OrderId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified Outpost.
-spec get_outpost(aws_client:aws_client(), binary() | list()) ->
    {ok, get_outpost_output(), tuple()} |
    {error, any()} |
    {error, get_outpost_errors(), tuple()}.
get_outpost(Client, OutpostId)
  when is_map(Client) ->
    get_outpost(Client, OutpostId, #{}, #{}).

-spec get_outpost(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_outpost_output(), tuple()} |
    {error, any()} |
    {error, get_outpost_errors(), tuple()}.
get_outpost(Client, OutpostId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_outpost(Client, OutpostId, QueryMap, HeadersMap, []).

-spec get_outpost(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_outpost_output(), tuple()} |
    {error, any()} |
    {error, get_outpost_errors(), tuple()}.
get_outpost(Client, OutpostId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/outposts/", aws_util:encode_uri(OutpostId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the instance types for the specified Outpost.
-spec get_outpost_instance_types(aws_client:aws_client(), binary() | list()) ->
    {ok, get_outpost_instance_types_output(), tuple()} |
    {error, any()} |
    {error, get_outpost_instance_types_errors(), tuple()}.
get_outpost_instance_types(Client, OutpostId)
  when is_map(Client) ->
    get_outpost_instance_types(Client, OutpostId, #{}, #{}).

-spec get_outpost_instance_types(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_outpost_instance_types_output(), tuple()} |
    {error, any()} |
    {error, get_outpost_instance_types_errors(), tuple()}.
get_outpost_instance_types(Client, OutpostId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_outpost_instance_types(Client, OutpostId, QueryMap, HeadersMap, []).

-spec get_outpost_instance_types(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_outpost_instance_types_output(), tuple()} |
    {error, any()} |
    {error, get_outpost_instance_types_errors(), tuple()}.
get_outpost_instance_types(Client, OutpostId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/outposts/", aws_util:encode_uri(OutpostId), "/instanceTypes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the instance types that an Outpost can support in
%% `InstanceTypeCapacity'.
%%
%% This will generally include instance types that are not currently
%% configured and therefore
%% cannot be launched with the current Outpost capacity configuration.
-spec get_outpost_supported_instance_types(aws_client:aws_client(), binary() | list()) ->
    {ok, get_outpost_supported_instance_types_output(), tuple()} |
    {error, any()} |
    {error, get_outpost_supported_instance_types_errors(), tuple()}.
get_outpost_supported_instance_types(Client, OutpostIdentifier)
  when is_map(Client) ->
    get_outpost_supported_instance_types(Client, OutpostIdentifier, #{}, #{}).

-spec get_outpost_supported_instance_types(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_outpost_supported_instance_types_output(), tuple()} |
    {error, any()} |
    {error, get_outpost_supported_instance_types_errors(), tuple()}.
get_outpost_supported_instance_types(Client, OutpostIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_outpost_supported_instance_types(Client, OutpostIdentifier, QueryMap, HeadersMap, []).

-spec get_outpost_supported_instance_types(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_outpost_supported_instance_types_output(), tuple()} |
    {error, any()} |
    {error, get_outpost_supported_instance_types_errors(), tuple()}.
get_outpost_supported_instance_types(Client, OutpostIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/outposts/", aws_util:encode_uri(OutpostIdentifier), "/supportedInstanceTypes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"AssetId">>, maps:get(<<"AssetId">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"OrderId">>, maps:get(<<"OrderId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets information about the specified Outpost site.
-spec get_site(aws_client:aws_client(), binary() | list()) ->
    {ok, get_site_output(), tuple()} |
    {error, any()} |
    {error, get_site_errors(), tuple()}.
get_site(Client, SiteId)
  when is_map(Client) ->
    get_site(Client, SiteId, #{}, #{}).

-spec get_site(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_site_output(), tuple()} |
    {error, any()} |
    {error, get_site_errors(), tuple()}.
get_site(Client, SiteId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_site(Client, SiteId, QueryMap, HeadersMap, []).

-spec get_site(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_site_output(), tuple()} |
    {error, any()} |
    {error, get_site_errors(), tuple()}.
get_site(Client, SiteId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sites/", aws_util:encode_uri(SiteId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the site address of the specified site.
-spec get_site_address(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_site_address_output(), tuple()} |
    {error, any()} |
    {error, get_site_address_errors(), tuple()}.
get_site_address(Client, SiteId, AddressType)
  when is_map(Client) ->
    get_site_address(Client, SiteId, AddressType, #{}, #{}).

-spec get_site_address(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_site_address_output(), tuple()} |
    {error, any()} |
    {error, get_site_address_errors(), tuple()}.
get_site_address(Client, SiteId, AddressType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_site_address(Client, SiteId, AddressType, QueryMap, HeadersMap, []).

-spec get_site_address(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_site_address_output(), tuple()} |
    {error, any()} |
    {error, get_site_address_errors(), tuple()}.
get_site_address(Client, SiteId, AddressType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sites/", aws_util:encode_uri(SiteId), "/address"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"AddressType">>, AddressType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc A list of Amazon EC2 instances, belonging to all accounts, running on
%% the specified Outpost.
%%
%% Does not include Amazon EBS or Amazon S3 instances.
-spec list_asset_instances(aws_client:aws_client(), binary() | list()) ->
    {ok, list_asset_instances_output(), tuple()} |
    {error, any()} |
    {error, list_asset_instances_errors(), tuple()}.
list_asset_instances(Client, OutpostIdentifier)
  when is_map(Client) ->
    list_asset_instances(Client, OutpostIdentifier, #{}, #{}).

-spec list_asset_instances(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_asset_instances_output(), tuple()} |
    {error, any()} |
    {error, list_asset_instances_errors(), tuple()}.
list_asset_instances(Client, OutpostIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_asset_instances(Client, OutpostIdentifier, QueryMap, HeadersMap, []).

-spec list_asset_instances(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_asset_instances_output(), tuple()} |
    {error, any()} |
    {error, list_asset_instances_errors(), tuple()}.
list_asset_instances(Client, OutpostIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/outposts/", aws_util:encode_uri(OutpostIdentifier), "/assetInstances"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"AccountIdFilter">>, maps:get(<<"AccountIdFilter">>, QueryMap, undefined)},
        {<<"AssetIdFilter">>, maps:get(<<"AssetIdFilter">>, QueryMap, undefined)},
        {<<"AwsServiceFilter">>, maps:get(<<"AwsServiceFilter">>, QueryMap, undefined)},
        {<<"InstanceTypeFilter">>, maps:get(<<"InstanceTypeFilter">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the hardware assets for the specified Outpost.
%%
%% Use filters to return specific results. If you specify multiple filters,
%% the results include only the resources that match
%% all of the specified filters. For a filter where you can specify multiple
%% values, the results include
%% items that match any of the values that you specify for the filter.
-spec list_assets(aws_client:aws_client(), binary() | list()) ->
    {ok, list_assets_output(), tuple()} |
    {error, any()} |
    {error, list_assets_errors(), tuple()}.
list_assets(Client, OutpostIdentifier)
  when is_map(Client) ->
    list_assets(Client, OutpostIdentifier, #{}, #{}).

-spec list_assets(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_assets_output(), tuple()} |
    {error, any()} |
    {error, list_assets_errors(), tuple()}.
list_assets(Client, OutpostIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_assets(Client, OutpostIdentifier, QueryMap, HeadersMap, []).

-spec list_assets(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_assets_output(), tuple()} |
    {error, any()} |
    {error, list_assets_errors(), tuple()}.
list_assets(Client, OutpostIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/outposts/", aws_util:encode_uri(OutpostIdentifier), "/assets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"HostIdFilter">>, maps:get(<<"HostIdFilter">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"StatusFilter">>, maps:get(<<"StatusFilter">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc A list of Amazon EC2 instances running on the Outpost and belonging
%% to the account that
%% initiated the capacity task.
%%
%% Use this list to specify the instances you cannot stop to free up
%% capacity to run the capacity task.
-spec list_blocking_instances_for_capacity_task(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_blocking_instances_for_capacity_task_output(), tuple()} |
    {error, any()} |
    {error, list_blocking_instances_for_capacity_task_errors(), tuple()}.
list_blocking_instances_for_capacity_task(Client, CapacityTaskId, OutpostIdentifier)
  when is_map(Client) ->
    list_blocking_instances_for_capacity_task(Client, CapacityTaskId, OutpostIdentifier, #{}, #{}).

-spec list_blocking_instances_for_capacity_task(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_blocking_instances_for_capacity_task_output(), tuple()} |
    {error, any()} |
    {error, list_blocking_instances_for_capacity_task_errors(), tuple()}.
list_blocking_instances_for_capacity_task(Client, CapacityTaskId, OutpostIdentifier, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_blocking_instances_for_capacity_task(Client, CapacityTaskId, OutpostIdentifier, QueryMap, HeadersMap, []).

-spec list_blocking_instances_for_capacity_task(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_blocking_instances_for_capacity_task_output(), tuple()} |
    {error, any()} |
    {error, list_blocking_instances_for_capacity_task_errors(), tuple()}.
list_blocking_instances_for_capacity_task(Client, CapacityTaskId, OutpostIdentifier, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/outposts/", aws_util:encode_uri(OutpostIdentifier), "/capacity/", aws_util:encode_uri(CapacityTaskId), "/blockingInstances"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the capacity tasks for your Amazon Web Services account.
%%
%% Use filters to return specific results. If you specify multiple filters,
%% the results include only the resources that match
%% all of the specified filters. For a filter where you can specify multiple
%% values, the results include
%% items that match any of the values that you specify for the filter.
-spec list_capacity_tasks(aws_client:aws_client()) ->
    {ok, list_capacity_tasks_output(), tuple()} |
    {error, any()} |
    {error, list_capacity_tasks_errors(), tuple()}.
list_capacity_tasks(Client)
  when is_map(Client) ->
    list_capacity_tasks(Client, #{}, #{}).

-spec list_capacity_tasks(aws_client:aws_client(), map(), map()) ->
    {ok, list_capacity_tasks_output(), tuple()} |
    {error, any()} |
    {error, list_capacity_tasks_errors(), tuple()}.
list_capacity_tasks(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_capacity_tasks(Client, QueryMap, HeadersMap, []).

-spec list_capacity_tasks(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_capacity_tasks_output(), tuple()} |
    {error, any()} |
    {error, list_capacity_tasks_errors(), tuple()}.
list_capacity_tasks(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/capacity/tasks"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"CapacityTaskStatusFilter">>, maps:get(<<"CapacityTaskStatusFilter">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"OutpostIdentifierFilter">>, maps:get(<<"OutpostIdentifierFilter">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the items in the catalog.
%%
%% Use filters to return specific results. If you specify multiple filters,
%% the results include only the resources that match
%% all of the specified filters. For a filter where you can specify multiple
%% values, the results include
%% items that match any of the values that you specify for the filter.
-spec list_catalog_items(aws_client:aws_client()) ->
    {ok, list_catalog_items_output(), tuple()} |
    {error, any()} |
    {error, list_catalog_items_errors(), tuple()}.
list_catalog_items(Client)
  when is_map(Client) ->
    list_catalog_items(Client, #{}, #{}).

-spec list_catalog_items(aws_client:aws_client(), map(), map()) ->
    {ok, list_catalog_items_output(), tuple()} |
    {error, any()} |
    {error, list_catalog_items_errors(), tuple()}.
list_catalog_items(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_catalog_items(Client, QueryMap, HeadersMap, []).

-spec list_catalog_items(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_catalog_items_output(), tuple()} |
    {error, any()} |
    {error, list_catalog_items_errors(), tuple()}.
list_catalog_items(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/catalog/items"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"EC2FamilyFilter">>, maps:get(<<"EC2FamilyFilter">>, QueryMap, undefined)},
        {<<"ItemClassFilter">>, maps:get(<<"ItemClassFilter">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"SupportedStorageFilter">>, maps:get(<<"SupportedStorageFilter">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Outpost orders for your Amazon Web Services account.
-spec list_orders(aws_client:aws_client()) ->
    {ok, list_orders_output(), tuple()} |
    {error, any()} |
    {error, list_orders_errors(), tuple()}.
list_orders(Client)
  when is_map(Client) ->
    list_orders(Client, #{}, #{}).

-spec list_orders(aws_client:aws_client(), map(), map()) ->
    {ok, list_orders_output(), tuple()} |
    {error, any()} |
    {error, list_orders_errors(), tuple()}.
list_orders(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_orders(Client, QueryMap, HeadersMap, []).

-spec list_orders(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_orders_output(), tuple()} |
    {error, any()} |
    {error, list_orders_errors(), tuple()}.
list_orders(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/list-orders"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"OutpostIdentifierFilter">>, maps:get(<<"OutpostIdentifierFilter">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Outposts for your Amazon Web Services account.
%%
%% Use filters to return specific results. If you specify multiple filters,
%% the results include only the resources that match
%% all of the specified filters. For a filter where you can specify multiple
%% values, the results include
%% items that match any of the values that you specify for the filter.
-spec list_outposts(aws_client:aws_client()) ->
    {ok, list_outposts_output(), tuple()} |
    {error, any()} |
    {error, list_outposts_errors(), tuple()}.
list_outposts(Client)
  when is_map(Client) ->
    list_outposts(Client, #{}, #{}).

-spec list_outposts(aws_client:aws_client(), map(), map()) ->
    {ok, list_outposts_output(), tuple()} |
    {error, any()} |
    {error, list_outposts_errors(), tuple()}.
list_outposts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_outposts(Client, QueryMap, HeadersMap, []).

-spec list_outposts(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_outposts_output(), tuple()} |
    {error, any()} |
    {error, list_outposts_errors(), tuple()}.
list_outposts(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/outposts"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"AvailabilityZoneFilter">>, maps:get(<<"AvailabilityZoneFilter">>, QueryMap, undefined)},
        {<<"AvailabilityZoneIdFilter">>, maps:get(<<"AvailabilityZoneIdFilter">>, QueryMap, undefined)},
        {<<"LifeCycleStatusFilter">>, maps:get(<<"LifeCycleStatusFilter">>, QueryMap, undefined)},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Outpost sites for your Amazon Web Services account.
%%
%% Use filters to return specific
%% results.
%%
%% Use filters to return specific results. If you specify multiple filters,
%% the results include only the resources that match
%% all of the specified filters. For a filter where you can specify multiple
%% values, the results include
%% items that match any of the values that you specify for the filter.
-spec list_sites(aws_client:aws_client()) ->
    {ok, list_sites_output(), tuple()} |
    {error, any()} |
    {error, list_sites_errors(), tuple()}.
list_sites(Client)
  when is_map(Client) ->
    list_sites(Client, #{}, #{}).

-spec list_sites(aws_client:aws_client(), map(), map()) ->
    {ok, list_sites_output(), tuple()} |
    {error, any()} |
    {error, list_sites_errors(), tuple()}.
list_sites(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sites(Client, QueryMap, HeadersMap, []).

-spec list_sites(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_sites_output(), tuple()} |
    {error, any()} |
    {error, list_sites_errors(), tuple()}.
list_sites(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sites"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)},
        {<<"OperatingAddressCityFilter">>, maps:get(<<"OperatingAddressCityFilter">>, QueryMap, undefined)},
        {<<"OperatingAddressCountryCodeFilter">>, maps:get(<<"OperatingAddressCountryCodeFilter">>, QueryMap, undefined)},
        {<<"OperatingAddressStateOrRegionFilter">>, maps:get(<<"OperatingAddressStateOrRegionFilter">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags for the specified resource.
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

%% @doc Starts the specified capacity task.
%%
%% You can have one active capacity task for each order and each Outpost.
-spec start_capacity_task(aws_client:aws_client(), binary() | list(), start_capacity_task_input()) ->
    {ok, start_capacity_task_output(), tuple()} |
    {error, any()} |
    {error, start_capacity_task_errors(), tuple()}.
start_capacity_task(Client, OutpostIdentifier, Input) ->
    start_capacity_task(Client, OutpostIdentifier, Input, []).

-spec start_capacity_task(aws_client:aws_client(), binary() | list(), start_capacity_task_input(), proplists:proplist()) ->
    {ok, start_capacity_task_output(), tuple()} |
    {error, any()} |
    {error, start_capacity_task_errors(), tuple()}.
start_capacity_task(Client, OutpostIdentifier, Input0, Options0) ->
    Method = post,
    Path = ["/outposts/", aws_util:encode_uri(OutpostIdentifier), "/capacity"],
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

%% @doc
%%
%% Amazon Web Services uses this action to install Outpost servers.
%%
%% Starts the connection required for Outpost server installation.
%%
%% Use CloudTrail to monitor this action or Amazon Web Services managed
%% policy for Amazon Web Services Outposts to secure it. For
%% more information, see
%% Amazon Web Services managed policies for Amazon Web Services Outposts:
%% https://docs.aws.amazon.com/outposts/latest/userguide/security-iam-awsmanpol.html
%% and
%% Logging Amazon Web Services Outposts API calls with Amazon Web Services
%% CloudTrail:
%% https://docs.aws.amazon.com/outposts/latest/userguide/logging-using-cloudtrail.html
%% in the Amazon Web Services Outposts User Guide.
-spec start_connection(aws_client:aws_client(), start_connection_request()) ->
    {ok, start_connection_response(), tuple()} |
    {error, any()} |
    {error, start_connection_errors(), tuple()}.
start_connection(Client, Input) ->
    start_connection(Client, Input, []).

-spec start_connection(aws_client:aws_client(), start_connection_request(), proplists:proplist()) ->
    {ok, start_connection_response(), tuple()} |
    {error, any()} |
    {error, start_connection_errors(), tuple()}.
start_connection(Client, Input0, Options0) ->
    Method = post,
    Path = ["/connections"],
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

%% @doc Adds tags to the specified resource.
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

%% @doc Removes tags from the specified resource.
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

%% @doc Updates an Outpost.
-spec update_outpost(aws_client:aws_client(), binary() | list(), update_outpost_input()) ->
    {ok, update_outpost_output(), tuple()} |
    {error, any()} |
    {error, update_outpost_errors(), tuple()}.
update_outpost(Client, OutpostId, Input) ->
    update_outpost(Client, OutpostId, Input, []).

-spec update_outpost(aws_client:aws_client(), binary() | list(), update_outpost_input(), proplists:proplist()) ->
    {ok, update_outpost_output(), tuple()} |
    {error, any()} |
    {error, update_outpost_errors(), tuple()}.
update_outpost(Client, OutpostId, Input0, Options0) ->
    Method = patch,
    Path = ["/outposts/", aws_util:encode_uri(OutpostId), ""],
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

%% @doc Updates the specified site.
-spec update_site(aws_client:aws_client(), binary() | list(), update_site_input()) ->
    {ok, update_site_output(), tuple()} |
    {error, any()} |
    {error, update_site_errors(), tuple()}.
update_site(Client, SiteId, Input) ->
    update_site(Client, SiteId, Input, []).

-spec update_site(aws_client:aws_client(), binary() | list(), update_site_input(), proplists:proplist()) ->
    {ok, update_site_output(), tuple()} |
    {error, any()} |
    {error, update_site_errors(), tuple()}.
update_site(Client, SiteId, Input0, Options0) ->
    Method = patch,
    Path = ["/sites/", aws_util:encode_uri(SiteId), ""],
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

%% @doc Updates the address of the specified site.
%%
%% You can't update a site address if there is an order in progress. You
%% must wait for the
%% order to complete or cancel the order.
%%
%% You can update the operating address before you place an order at the
%% site, or after all
%% Outposts that belong to the site have been deactivated.
-spec update_site_address(aws_client:aws_client(), binary() | list(), update_site_address_input()) ->
    {ok, update_site_address_output(), tuple()} |
    {error, any()} |
    {error, update_site_address_errors(), tuple()}.
update_site_address(Client, SiteId, Input) ->
    update_site_address(Client, SiteId, Input, []).

-spec update_site_address(aws_client:aws_client(), binary() | list(), update_site_address_input(), proplists:proplist()) ->
    {ok, update_site_address_output(), tuple()} |
    {error, any()} |
    {error, update_site_address_errors(), tuple()}.
update_site_address(Client, SiteId, Input0, Options0) ->
    Method = put,
    Path = ["/sites/", aws_util:encode_uri(SiteId), "/address"],
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

%% @doc Update the physical and logistical details for a rack at a site.
%%
%% For more information
%% about hardware requirements for racks, see Network
%% readiness checklist:
%% https://docs.aws.amazon.com/outposts/latest/userguide/outposts-requirements.html#checklist
%% in the Amazon Web Services Outposts User Guide.
%%
%% To update a rack at a site with an order of `IN_PROGRESS', you must
%% wait for
%% the order to complete or cancel the order.
-spec update_site_rack_physical_properties(aws_client:aws_client(), binary() | list(), update_site_rack_physical_properties_input()) ->
    {ok, update_site_rack_physical_properties_output(), tuple()} |
    {error, any()} |
    {error, update_site_rack_physical_properties_errors(), tuple()}.
update_site_rack_physical_properties(Client, SiteId, Input) ->
    update_site_rack_physical_properties(Client, SiteId, Input, []).

-spec update_site_rack_physical_properties(aws_client:aws_client(), binary() | list(), update_site_rack_physical_properties_input(), proplists:proplist()) ->
    {ok, update_site_rack_physical_properties_output(), tuple()} |
    {error, any()} |
    {error, update_site_rack_physical_properties_errors(), tuple()}.
update_site_rack_physical_properties(Client, SiteId, Input0, Options0) ->
    Method = patch,
    Path = ["/sites/", aws_util:encode_uri(SiteId), "/rackPhysicalProperties"],
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
    Client1 = Client#{service => <<"outposts">>},
    Host = build_host(<<"outposts">>, Client1),
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
