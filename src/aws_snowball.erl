%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon Web Services Snow Family provides a petabyte-scale data
%% transport solution that uses
%% secure devices to transfer large amounts of data between your on-premises
%% data centers and
%% Amazon Simple Storage Service (Amazon S3).
%%
%% The Snow Family commands described here provide access to the same
%% functionality that is available in the Amazon Web Services Snow Family
%% Management Console, which enables you to create
%% and manage jobs for a Snow Family device. To transfer data locally with a
%% Snow Family device,
%% you'll need to use the Snowball Edge client or the Amazon S3 API
%% Interface for Snowball or OpsHub for Snow Family. For more information,
%% see the User Guide:
%% https://docs.aws.amazon.com/AWSImportExport/latest/ug/api-reference.html.
-module(aws_snowball).

-export([cancel_cluster/2,
         cancel_cluster/3,
         cancel_job/2,
         cancel_job/3,
         create_address/2,
         create_address/3,
         create_cluster/2,
         create_cluster/3,
         create_job/2,
         create_job/3,
         create_long_term_pricing/2,
         create_long_term_pricing/3,
         create_return_shipping_label/2,
         create_return_shipping_label/3,
         describe_address/2,
         describe_address/3,
         describe_addresses/2,
         describe_addresses/3,
         describe_cluster/2,
         describe_cluster/3,
         describe_job/2,
         describe_job/3,
         describe_return_shipping_label/2,
         describe_return_shipping_label/3,
         get_job_manifest/2,
         get_job_manifest/3,
         get_job_unlock_code/2,
         get_job_unlock_code/3,
         get_snowball_usage/2,
         get_snowball_usage/3,
         get_software_updates/2,
         get_software_updates/3,
         list_cluster_jobs/2,
         list_cluster_jobs/3,
         list_clusters/2,
         list_clusters/3,
         list_compatible_images/2,
         list_compatible_images/3,
         list_jobs/2,
         list_jobs/3,
         list_long_term_pricing/2,
         list_long_term_pricing/3,
         list_pickup_locations/2,
         list_pickup_locations/3,
         list_service_versions/2,
         list_service_versions/3,
         update_cluster/2,
         update_cluster/3,
         update_job/2,
         update_job/3,
         update_job_shipment_state/2,
         update_job_shipment_state/3,
         update_long_term_pricing/2,
         update_long_term_pricing/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% cancel_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type cancel_job_request() :: #{binary() => any()}.

%% Example:
%% get_snowball_usage_result() :: #{
%%   <<"SnowballLimit">> => integer(),
%%   <<"SnowballsInUse">> => integer()
%% }
-type get_snowball_usage_result() :: #{binary() => any()}.

%% Example:
%% describe_cluster_request() :: #{
%%   <<"ClusterId">> := string()
%% }
-type describe_cluster_request() :: #{binary() => any()}.

%% Example:
%% get_job_manifest_request() :: #{
%%   <<"JobId">> := string()
%% }
-type get_job_manifest_request() :: #{binary() => any()}.

%% Example:
%% shipment() :: #{
%%   <<"Status">> => string(),
%%   <<"TrackingNumber">> => string()
%% }
-type shipment() :: #{binary() => any()}.

%% Example:
%% get_job_manifest_result() :: #{
%%   <<"ManifestURI">> => string()
%% }
-type get_job_manifest_result() :: #{binary() => any()}.

%% Example:
%% describe_job_result() :: #{
%%   <<"JobMetadata">> => job_metadata(),
%%   <<"SubJobMetadata">> => list(job_metadata())
%% }
-type describe_job_result() :: #{binary() => any()}.

%% Example:
%% list_compatible_images_result() :: #{
%%   <<"CompatibleImages">> => list(compatible_image()),
%%   <<"NextToken">> => string()
%% }
-type list_compatible_images_result() :: #{binary() => any()}.

%% Example:
%% list_jobs_result() :: #{
%%   <<"JobListEntries">> => list(job_list_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_jobs_result() :: #{binary() => any()}.

%% Example:
%% event_trigger_definition() :: #{
%%   <<"EventResourceARN">> => string()
%% }
-type event_trigger_definition() :: #{binary() => any()}.

%% Example:
%% device_configuration() :: #{
%%   <<"SnowconeDeviceConfiguration">> => snowcone_device_configuration()
%% }
-type device_configuration() :: #{binary() => any()}.

%% Example:
%% list_pickup_locations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_pickup_locations_request() :: #{binary() => any()}.

%% Example:
%% update_cluster_result() :: #{

%% }
-type update_cluster_result() :: #{binary() => any()}.

%% Example:
%% get_snowball_usage_request() :: #{

%% }
-type get_snowball_usage_request() :: #{binary() => any()}.

%% Example:
%% list_jobs_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_jobs_request() :: #{binary() => any()}.

%% Example:
%% update_long_term_pricing_result() :: #{

%% }
-type update_long_term_pricing_result() :: #{binary() => any()}.

%% Example:
%% data_transfer() :: #{
%%   <<"BytesTransferred">> => float(),
%%   <<"ObjectsTransferred">> => float(),
%%   <<"TotalBytes">> => float(),
%%   <<"TotalObjects">> => float()
%% }
-type data_transfer() :: #{binary() => any()}.

%% Example:
%% snowcone_device_configuration() :: #{
%%   <<"WirelessConnection">> => wireless_connection()
%% }
-type snowcone_device_configuration() :: #{binary() => any()}.

%% Example:
%% update_job_shipment_state_result() :: #{

%% }
-type update_job_shipment_state_result() :: #{binary() => any()}.

%% Example:
%% get_software_updates_request() :: #{
%%   <<"JobId">> := string()
%% }
-type get_software_updates_request() :: #{binary() => any()}.

%% Example:
%% ec2_ami_resource() :: #{
%%   <<"AmiId">> => string(),
%%   <<"SnowballAmiId">> => string()
%% }
-type ec2_ami_resource() :: #{binary() => any()}.

%% Example:
%% describe_cluster_result() :: #{
%%   <<"ClusterMetadata">> => cluster_metadata()
%% }
-type describe_cluster_result() :: #{binary() => any()}.

%% Example:
%% create_job_request() :: #{
%%   <<"AddressId">> => string(),
%%   <<"ClusterId">> => string(),
%%   <<"Description">> => string(),
%%   <<"DeviceConfiguration">> => device_configuration(),
%%   <<"ForwardingAddressId">> => string(),
%%   <<"ImpactLevel">> => list(any()),
%%   <<"JobType">> => list(any()),
%%   <<"KmsKeyARN">> => string(),
%%   <<"LongTermPricingId">> => string(),
%%   <<"Notification">> => notification(),
%%   <<"OnDeviceServiceConfiguration">> => on_device_service_configuration(),
%%   <<"PickupDetails">> => pickup_details(),
%%   <<"RemoteManagement">> => list(any()),
%%   <<"Resources">> => job_resource(),
%%   <<"RoleARN">> => string(),
%%   <<"ShippingOption">> => list(any()),
%%   <<"SnowballCapacityPreference">> => list(any()),
%%   <<"SnowballType">> => list(any()),
%%   <<"TaxDocuments">> => tax_documents()
%% }
-type create_job_request() :: #{binary() => any()}.

%% Example:
%% invalid_input_combination_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_input_combination_exception() :: #{binary() => any()}.

%% Example:
%% t_g_w_on_device_service_configuration() :: #{
%%   <<"StorageLimit">> => integer(),
%%   <<"StorageUnit">> => list(any())
%% }
-type t_g_w_on_device_service_configuration() :: #{binary() => any()}.

%% Example:
%% list_long_term_pricing_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_long_term_pricing_request() :: #{binary() => any()}.

%% Example:
%% describe_return_shipping_label_request() :: #{
%%   <<"JobId">> := string()
%% }
-type describe_return_shipping_label_request() :: #{binary() => any()}.

%% Example:
%% lambda_resource() :: #{
%%   <<"EventTriggers">> => list(event_trigger_definition()),
%%   <<"LambdaArn">> => string()
%% }
-type lambda_resource() :: #{binary() => any()}.

%% Example:
%% update_cluster_request() :: #{
%%   <<"AddressId">> => string(),
%%   <<"ClusterId">> := string(),
%%   <<"Description">> => string(),
%%   <<"ForwardingAddressId">> => string(),
%%   <<"Notification">> => notification(),
%%   <<"OnDeviceServiceConfiguration">> => on_device_service_configuration(),
%%   <<"Resources">> => job_resource(),
%%   <<"RoleARN">> => string(),
%%   <<"ShippingOption">> => list(any())
%% }
-type update_cluster_request() :: #{binary() => any()}.

%% Example:
%% list_service_versions_request() :: #{
%%   <<"DependentServices">> => list(dependent_service()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ServiceName">> := list(any())
%% }
-type list_service_versions_request() :: #{binary() => any()}.

%% Example:
%% cancel_cluster_request() :: #{
%%   <<"ClusterId">> := string()
%% }
-type cancel_cluster_request() :: #{binary() => any()}.

%% Example:
%% cluster_metadata() :: #{
%%   <<"AddressId">> => string(),
%%   <<"ClusterId">> => string(),
%%   <<"ClusterState">> => list(any()),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ForwardingAddressId">> => string(),
%%   <<"JobType">> => list(any()),
%%   <<"KmsKeyARN">> => string(),
%%   <<"Notification">> => notification(),
%%   <<"OnDeviceServiceConfiguration">> => on_device_service_configuration(),
%%   <<"Resources">> => job_resource(),
%%   <<"RoleARN">> => string(),
%%   <<"ShippingOption">> => list(any()),
%%   <<"SnowballType">> => list(any()),
%%   <<"TaxDocuments">> => tax_documents()
%% }
-type cluster_metadata() :: #{binary() => any()}.

%% Example:
%% describe_addresses_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_addresses_request() :: #{binary() => any()}.

%% Example:
%% i_n_d_tax_documents() :: #{
%%   <<"GSTIN">> => string()
%% }
-type i_n_d_tax_documents() :: #{binary() => any()}.

%% Example:
%% create_long_term_pricing_result() :: #{
%%   <<"LongTermPricingId">> => string()
%% }
-type create_long_term_pricing_result() :: #{binary() => any()}.

%% Example:
%% s3_resource() :: #{
%%   <<"BucketArn">> => string(),
%%   <<"KeyRange">> => key_range(),
%%   <<"TargetOnDeviceServices">> => list(target_on_device_service())
%% }
-type s3_resource() :: #{binary() => any()}.

%% Example:
%% create_cluster_request() :: #{
%%   <<"AddressId">> := string(),
%%   <<"Description">> => string(),
%%   <<"ForceCreateJobs">> => boolean(),
%%   <<"ForwardingAddressId">> => string(),
%%   <<"InitialClusterSize">> => integer(),
%%   <<"JobType">> := list(any()),
%%   <<"KmsKeyARN">> => string(),
%%   <<"LongTermPricingIds">> => list(string()),
%%   <<"Notification">> => notification(),
%%   <<"OnDeviceServiceConfiguration">> => on_device_service_configuration(),
%%   <<"RemoteManagement">> => list(any()),
%%   <<"Resources">> => job_resource(),
%%   <<"RoleARN">> => string(),
%%   <<"ShippingOption">> := list(any()),
%%   <<"SnowballCapacityPreference">> => list(any()),
%%   <<"SnowballType">> := list(any()),
%%   <<"TaxDocuments">> => tax_documents()
%% }
-type create_cluster_request() :: #{binary() => any()}.

%% Example:
%% cancel_job_result() :: #{

%% }
-type cancel_job_result() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"ConflictResource">> => string(),
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% job_list_entry() :: #{
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"IsMaster">> => boolean(),
%%   <<"JobId">> => string(),
%%   <<"JobState">> => list(any()),
%%   <<"JobType">> => list(any()),
%%   <<"SnowballType">> => list(any())
%% }
-type job_list_entry() :: #{binary() => any()}.

%% Example:
%% create_address_result() :: #{
%%   <<"AddressId">> => string()
%% }
-type create_address_result() :: #{binary() => any()}.

%% Example:
%% compatible_image() :: #{
%%   <<"AmiId">> => string(),
%%   <<"Name">> => string()
%% }
-type compatible_image() :: #{binary() => any()}.

%% Example:
%% describe_return_shipping_label_result() :: #{
%%   <<"ExpirationDate">> => non_neg_integer(),
%%   <<"ReturnShippingLabelURI">> => string(),
%%   <<"Status">> => list(any())
%% }
-type describe_return_shipping_label_result() :: #{binary() => any()}.

%% Example:
%% update_job_request() :: #{
%%   <<"AddressId">> => string(),
%%   <<"Description">> => string(),
%%   <<"ForwardingAddressId">> => string(),
%%   <<"JobId">> := string(),
%%   <<"Notification">> => notification(),
%%   <<"OnDeviceServiceConfiguration">> => on_device_service_configuration(),
%%   <<"PickupDetails">> => pickup_details(),
%%   <<"Resources">> => job_resource(),
%%   <<"RoleARN">> => string(),
%%   <<"ShippingOption">> => list(any()),
%%   <<"SnowballCapacityPreference">> => list(any())
%% }
-type update_job_request() :: #{binary() => any()}.

%% Example:
%% nfs_on_device_service_configuration() :: #{
%%   <<"StorageLimit">> => integer(),
%%   <<"StorageUnit">> => list(any())
%% }
-type nfs_on_device_service_configuration() :: #{binary() => any()}.

%% Example:
%% create_cluster_result() :: #{
%%   <<"ClusterId">> => string(),
%%   <<"JobListEntries">> => list(job_list_entry())
%% }
-type create_cluster_result() :: #{binary() => any()}.

%% Example:
%% service_version() :: #{
%%   <<"Version">> => string()
%% }
-type service_version() :: #{binary() => any()}.

%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.

%% Example:
%% list_long_term_pricing_result() :: #{
%%   <<"LongTermPricingEntries">> => list(long_term_pricing_list_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_long_term_pricing_result() :: #{binary() => any()}.

%% Example:
%% cluster_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type cluster_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% invalid_address_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_address_exception() :: #{binary() => any()}.

%% Example:
%% list_compatible_images_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_compatible_images_request() :: #{binary() => any()}.

%% Example:
%% describe_job_request() :: #{
%%   <<"JobId">> := string()
%% }
-type describe_job_request() :: #{binary() => any()}.

%% Example:
%% list_service_versions_result() :: #{
%%   <<"DependentServices">> => list(dependent_service()),
%%   <<"NextToken">> => string(),
%%   <<"ServiceName">> => list(any()),
%%   <<"ServiceVersions">> => list(service_version())
%% }
-type list_service_versions_result() :: #{binary() => any()}.

%% Example:
%% create_address_request() :: #{
%%   <<"Address">> := address()
%% }
-type create_address_request() :: #{binary() => any()}.

%% Example:
%% describe_addresses_result() :: #{
%%   <<"Addresses">> => list(address()),
%%   <<"NextToken">> => string()
%% }
-type describe_addresses_result() :: #{binary() => any()}.

%% Example:
%% unsupported_address_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_address_exception() :: #{binary() => any()}.

%% Example:
%% kms_request_failed_exception() :: #{
%%   <<"Message">> => string()
%% }
-type kms_request_failed_exception() :: #{binary() => any()}.

%% Example:
%% key_range() :: #{
%%   <<"BeginMarker">> => string(),
%%   <<"EndMarker">> => string()
%% }
-type key_range() :: #{binary() => any()}.

%% Example:
%% list_pickup_locations_result() :: #{
%%   <<"Addresses">> => list(address()),
%%   <<"NextToken">> => string()
%% }
-type list_pickup_locations_result() :: #{binary() => any()}.

%% Example:
%% job_metadata() :: #{
%%   <<"AddressId">> => string(),
%%   <<"ClusterId">> => string(),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"DataTransferProgress">> => data_transfer(),
%%   <<"Description">> => string(),
%%   <<"DeviceConfiguration">> => device_configuration(),
%%   <<"ForwardingAddressId">> => string(),
%%   <<"ImpactLevel">> => list(any()),
%%   <<"JobId">> => string(),
%%   <<"JobLogInfo">> => job_logs(),
%%   <<"JobState">> => list(any()),
%%   <<"JobType">> => list(any()),
%%   <<"KmsKeyARN">> => string(),
%%   <<"LongTermPricingId">> => string(),
%%   <<"Notification">> => notification(),
%%   <<"OnDeviceServiceConfiguration">> => on_device_service_configuration(),
%%   <<"PickupDetails">> => pickup_details(),
%%   <<"RemoteManagement">> => list(any()),
%%   <<"Resources">> => job_resource(),
%%   <<"RoleARN">> => string(),
%%   <<"ShippingDetails">> => shipping_details(),
%%   <<"SnowballCapacityPreference">> => list(any()),
%%   <<"SnowballId">> => string(),
%%   <<"SnowballType">> => list(any()),
%%   <<"TaxDocuments">> => tax_documents()
%% }
-type job_metadata() :: #{binary() => any()}.

%% Example:
%% invalid_resource_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type invalid_resource_exception() :: #{binary() => any()}.

%% Example:
%% on_device_service_configuration() :: #{
%%   <<"EKSOnDeviceService">> => e_k_s_on_device_service_configuration(),
%%   <<"NFSOnDeviceService">> => nfs_on_device_service_configuration(),
%%   <<"S3OnDeviceService">> => s3_on_device_service_configuration(),
%%   <<"TGWOnDeviceService">> => t_g_w_on_device_service_configuration()
%% }
-type on_device_service_configuration() :: #{binary() => any()}.

%% Example:
%% list_clusters_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_clusters_request() :: #{binary() => any()}.

%% Example:
%% create_return_shipping_label_result() :: #{
%%   <<"Status">> => list(any())
%% }
-type create_return_shipping_label_result() :: #{binary() => any()}.

%% Example:
%% get_job_unlock_code_result() :: #{
%%   <<"UnlockCode">> => string()
%% }
-type get_job_unlock_code_result() :: #{binary() => any()}.

%% Example:
%% list_cluster_jobs_result() :: #{
%%   <<"JobListEntries">> => list(job_list_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_cluster_jobs_result() :: #{binary() => any()}.

%% Example:
%% wireless_connection() :: #{
%%   <<"IsWifiEnabled">> => boolean()
%% }
-type wireless_connection() :: #{binary() => any()}.

%% Example:
%% describe_address_result() :: #{
%%   <<"Address">> => address()
%% }
-type describe_address_result() :: #{binary() => any()}.

%% Example:
%% pickup_details() :: #{
%%   <<"DevicePickupId">> => string(),
%%   <<"Email">> => string(),
%%   <<"IdentificationExpirationDate">> => non_neg_integer(),
%%   <<"IdentificationIssuingOrg">> => string(),
%%   <<"IdentificationNumber">> => string(),
%%   <<"Name">> => string(),
%%   <<"PhoneNumber">> => string()
%% }
-type pickup_details() :: #{binary() => any()}.

%% Example:
%% list_clusters_result() :: #{
%%   <<"ClusterListEntries">> => list(cluster_list_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_clusters_result() :: #{binary() => any()}.

%% Example:
%% create_job_result() :: #{
%%   <<"JobId">> => string()
%% }
-type create_job_result() :: #{binary() => any()}.

%% Example:
%% return_shipping_label_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type return_shipping_label_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% update_job_shipment_state_request() :: #{
%%   <<"JobId">> := string(),
%%   <<"ShipmentState">> := list(any())
%% }
-type update_job_shipment_state_request() :: #{binary() => any()}.

%% Example:
%% cancel_cluster_result() :: #{

%% }
-type cancel_cluster_result() :: #{binary() => any()}.

%% Example:
%% update_job_result() :: #{

%% }
-type update_job_result() :: #{binary() => any()}.

%% Example:
%% ec2_request_failed_exception() :: #{
%%   <<"Message">> => string()
%% }
-type ec2_request_failed_exception() :: #{binary() => any()}.

%% Example:
%% dependent_service() :: #{
%%   <<"ServiceName">> => list(any()),
%%   <<"ServiceVersion">> => service_version()
%% }
-type dependent_service() :: #{binary() => any()}.

%% Example:
%% notification() :: #{
%%   <<"DevicePickupSnsTopicARN">> => string(),
%%   <<"JobStatesToNotify">> => list(list(any())()),
%%   <<"NotifyAll">> => boolean(),
%%   <<"SnsTopicARN">> => string()
%% }
-type notification() :: #{binary() => any()}.

%% Example:
%% get_software_updates_result() :: #{
%%   <<"UpdatesURI">> => string()
%% }
-type get_software_updates_result() :: #{binary() => any()}.

%% Example:
%% create_long_term_pricing_request() :: #{
%%   <<"IsLongTermPricingAutoRenew">> => boolean(),
%%   <<"LongTermPricingType">> := list(any()),
%%   <<"SnowballType">> := list(any())
%% }
-type create_long_term_pricing_request() :: #{binary() => any()}.

%% Example:
%% tax_documents() :: #{
%%   <<"IND">> => i_n_d_tax_documents()
%% }
-type tax_documents() :: #{binary() => any()}.

%% Example:
%% cluster_list_entry() :: #{
%%   <<"ClusterId">> => string(),
%%   <<"ClusterState">> => list(any()),
%%   <<"CreationDate">> => non_neg_integer(),
%%   <<"Description">> => string()
%% }
-type cluster_list_entry() :: #{binary() => any()}.

%% Example:
%% shipping_details() :: #{
%%   <<"InboundShipment">> => shipment(),
%%   <<"OutboundShipment">> => shipment(),
%%   <<"ShippingOption">> => list(any())
%% }
-type shipping_details() :: #{binary() => any()}.

%% Example:
%% update_long_term_pricing_request() :: #{
%%   <<"IsLongTermPricingAutoRenew">> => boolean(),
%%   <<"LongTermPricingId">> := string(),
%%   <<"ReplacementJob">> => string()
%% }
-type update_long_term_pricing_request() :: #{binary() => any()}.

%% Example:
%% long_term_pricing_list_entry() :: #{
%%   <<"CurrentActiveJob">> => string(),
%%   <<"IsLongTermPricingAutoRenew">> => boolean(),
%%   <<"JobIds">> => list(string()),
%%   <<"LongTermPricingEndDate">> => non_neg_integer(),
%%   <<"LongTermPricingId">> => string(),
%%   <<"LongTermPricingStartDate">> => non_neg_integer(),
%%   <<"LongTermPricingStatus">> => string(),
%%   <<"LongTermPricingType">> => list(any()),
%%   <<"ReplacementJob">> => string(),
%%   <<"SnowballType">> => list(any())
%% }
-type long_term_pricing_list_entry() :: #{binary() => any()}.

%% Example:
%% address() :: #{
%%   <<"AddressId">> => string(),
%%   <<"City">> => string(),
%%   <<"Company">> => string(),
%%   <<"Country">> => string(),
%%   <<"IsRestricted">> => boolean(),
%%   <<"Landmark">> => string(),
%%   <<"Name">> => string(),
%%   <<"PhoneNumber">> => string(),
%%   <<"PostalCode">> => string(),
%%   <<"PrefectureOrDistrict">> => string(),
%%   <<"StateOrProvince">> => string(),
%%   <<"Street1">> => string(),
%%   <<"Street2">> => string(),
%%   <<"Street3">> => string(),
%%   <<"Type">> => list(any())
%% }
-type address() :: #{binary() => any()}.

%% Example:
%% e_k_s_on_device_service_configuration() :: #{
%%   <<"EKSAnywhereVersion">> => string(),
%%   <<"KubernetesVersion">> => string()
%% }
-type e_k_s_on_device_service_configuration() :: #{binary() => any()}.

%% Example:
%% list_cluster_jobs_request() :: #{
%%   <<"ClusterId">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_cluster_jobs_request() :: #{binary() => any()}.

%% Example:
%% job_resource() :: #{
%%   <<"Ec2AmiResources">> => list(ec2_ami_resource()),
%%   <<"LambdaResources">> => list(lambda_resource()),
%%   <<"S3Resources">> => list(s3_resource())
%% }
-type job_resource() :: #{binary() => any()}.

%% Example:
%% describe_address_request() :: #{
%%   <<"AddressId">> := string()
%% }
-type describe_address_request() :: #{binary() => any()}.

%% Example:
%% job_logs() :: #{
%%   <<"JobCompletionReportURI">> => string(),
%%   <<"JobFailureLogURI">> => string(),
%%   <<"JobSuccessLogURI">> => string()
%% }
-type job_logs() :: #{binary() => any()}.

%% Example:
%% get_job_unlock_code_request() :: #{
%%   <<"JobId">> := string()
%% }
-type get_job_unlock_code_request() :: #{binary() => any()}.

%% Example:
%% s3_on_device_service_configuration() :: #{
%%   <<"FaultTolerance">> => integer(),
%%   <<"ServiceSize">> => integer(),
%%   <<"StorageLimit">> => float(),
%%   <<"StorageUnit">> => list(any())
%% }
-type s3_on_device_service_configuration() :: #{binary() => any()}.

%% Example:
%% create_return_shipping_label_request() :: #{
%%   <<"JobId">> := string(),
%%   <<"ShippingOption">> => list(any())
%% }
-type create_return_shipping_label_request() :: #{binary() => any()}.

%% Example:
%% invalid_job_state_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_job_state_exception() :: #{binary() => any()}.

%% Example:
%% target_on_device_service() :: #{
%%   <<"ServiceName">> => list(any()),
%%   <<"TransferOption">> => list(any())
%% }
-type target_on_device_service() :: #{binary() => any()}.

-type cancel_cluster_errors() ::
    invalid_job_state_exception() | 
    invalid_resource_exception() | 
    kms_request_failed_exception().

-type cancel_job_errors() ::
    invalid_job_state_exception() | 
    invalid_resource_exception() | 
    kms_request_failed_exception().

-type create_address_errors() ::
    unsupported_address_exception() | 
    invalid_address_exception().

-type create_cluster_errors() ::
    ec2_request_failed_exception() | 
    invalid_resource_exception() | 
    kms_request_failed_exception() | 
    invalid_input_combination_exception().

-type create_job_errors() ::
    ec2_request_failed_exception() | 
    invalid_resource_exception() | 
    kms_request_failed_exception() | 
    cluster_limit_exceeded_exception() | 
    invalid_input_combination_exception().

-type create_long_term_pricing_errors() ::
    invalid_resource_exception().

-type create_return_shipping_label_errors() ::
    invalid_job_state_exception() | 
    return_shipping_label_already_exists_exception() | 
    invalid_resource_exception() | 
    conflict_exception() | 
    invalid_input_combination_exception().

-type describe_address_errors() ::
    invalid_resource_exception().

-type describe_addresses_errors() ::
    invalid_resource_exception() | 
    invalid_next_token_exception().

-type describe_cluster_errors() ::
    invalid_resource_exception().

-type describe_job_errors() ::
    invalid_resource_exception().

-type describe_return_shipping_label_errors() ::
    invalid_job_state_exception() | 
    invalid_resource_exception() | 
    conflict_exception().

-type get_job_manifest_errors() ::
    invalid_job_state_exception() | 
    invalid_resource_exception().

-type get_job_unlock_code_errors() ::
    invalid_job_state_exception() | 
    invalid_resource_exception().

-type get_software_updates_errors() ::
    invalid_job_state_exception() | 
    invalid_resource_exception().

-type list_cluster_jobs_errors() ::
    invalid_resource_exception() | 
    invalid_next_token_exception().

-type list_clusters_errors() ::
    invalid_next_token_exception().

-type list_compatible_images_errors() ::
    ec2_request_failed_exception() | 
    invalid_next_token_exception().

-type list_jobs_errors() ::
    invalid_next_token_exception().

-type list_long_term_pricing_errors() ::
    invalid_resource_exception() | 
    invalid_next_token_exception().

-type list_pickup_locations_errors() ::
    invalid_resource_exception().

-type list_service_versions_errors() ::
    invalid_resource_exception() | 
    invalid_next_token_exception().

-type update_cluster_errors() ::
    invalid_job_state_exception() | 
    ec2_request_failed_exception() | 
    invalid_resource_exception() | 
    kms_request_failed_exception() | 
    invalid_input_combination_exception().

-type update_job_errors() ::
    invalid_job_state_exception() | 
    ec2_request_failed_exception() | 
    invalid_resource_exception() | 
    kms_request_failed_exception() | 
    cluster_limit_exceeded_exception() | 
    invalid_input_combination_exception().

-type update_job_shipment_state_errors() ::
    invalid_job_state_exception() | 
    invalid_resource_exception().

-type update_long_term_pricing_errors() ::
    invalid_resource_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels a cluster job.
%%
%% You can only cancel a cluster job while it's in the
%% `AwaitingQuorum' status. You'll have at least an hour after
%% creating a cluster
%% job to cancel it.
-spec cancel_cluster(aws_client:aws_client(), cancel_cluster_request()) ->
    {ok, cancel_cluster_result(), tuple()} |
    {error, any()} |
    {error, cancel_cluster_errors(), tuple()}.
cancel_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_cluster(Client, Input, []).

-spec cancel_cluster(aws_client:aws_client(), cancel_cluster_request(), proplists:proplist()) ->
    {ok, cancel_cluster_result(), tuple()} |
    {error, any()} |
    {error, cancel_cluster_errors(), tuple()}.
cancel_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelCluster">>, Input, Options).

%% @doc Cancels the specified job.
%%
%% You can only cancel a job before its `JobState'
%% value changes to `PreparingAppliance'. Requesting the `ListJobs'
%% or
%% `DescribeJob' action returns a job's `JobState' as part of the
%% response element data returned.
-spec cancel_job(aws_client:aws_client(), cancel_job_request()) ->
    {ok, cancel_job_result(), tuple()} |
    {error, any()} |
    {error, cancel_job_errors(), tuple()}.
cancel_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_job(Client, Input, []).

-spec cancel_job(aws_client:aws_client(), cancel_job_request(), proplists:proplist()) ->
    {ok, cancel_job_result(), tuple()} |
    {error, any()} |
    {error, cancel_job_errors(), tuple()}.
cancel_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelJob">>, Input, Options).

%% @doc Creates an address for a Snow device to be shipped to.
%%
%% In most regions,
%% addresses are validated at the time of creation. The address you provide
%% must be located
%% within the serviceable area of your region. If the address is invalid or
%% unsupported, then an
%% exception is thrown. If providing an address as a JSON file through the
%% `cli-input-json' option, include the full file path. For example,
%% `--cli-input-json file://create-address.json'.
-spec create_address(aws_client:aws_client(), create_address_request()) ->
    {ok, create_address_result(), tuple()} |
    {error, any()} |
    {error, create_address_errors(), tuple()}.
create_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_address(Client, Input, []).

-spec create_address(aws_client:aws_client(), create_address_request(), proplists:proplist()) ->
    {ok, create_address_result(), tuple()} |
    {error, any()} |
    {error, create_address_errors(), tuple()}.
create_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAddress">>, Input, Options).

%% @doc Creates an empty cluster.
%%
%% Each cluster supports five nodes. You use the `CreateJob' action
%% separately to create the jobs for each of these nodes. The
%% cluster does not ship until these five node jobs have been created.
-spec create_cluster(aws_client:aws_client(), create_cluster_request()) ->
    {ok, create_cluster_result(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster(Client, Input, []).

-spec create_cluster(aws_client:aws_client(), create_cluster_request(), proplists:proplist()) ->
    {ok, create_cluster_result(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCluster">>, Input, Options).

%% @doc Creates a job to import or export data between Amazon S3 and your
%% on-premises data
%% center.
%%
%% Your Amazon Web Services account must have the right trust policies and
%% permissions in
%% place to create a job for a Snow device. If you're creating a job for
%% a node in a cluster, you
%% only need to provide the `clusterId' value; the other job attributes
%% are inherited
%% from the cluster.
%%
%% Only the Snowball; Edge device type is supported when ordering clustered
%% jobs.
%%
%% The device capacity is optional.
%%
%% Availability of device types differ by Amazon Web Services Region. For
%% more information
%% about Region availability, see Amazon Web Services Regional Services:
%% https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/?p=ngi&amp;loc=4.
%%
%% == Snow Family devices and their capacities. ==
%%
%% Device type: SNC1_SSD
%%
%% Capacity: T14
%%
%% Description: Snowcone
%%
%% Device type: SNC1_HDD
%%
%% Capacity: T8
%%
%% Description: Snowcone
%%
%% Device type: EDGE_S
%%
%% Capacity: T98
%%
%% Description: Snowball Edge Storage Optimized for data transfer only
%%
%% Device type: EDGE_CG
%%
%% Capacity: T42
%%
%% Description: Snowball Edge Compute Optimized with GPU
%%
%% Device type: EDGE_C
%%
%% Capacity: T42
%%
%% Description: Snowball Edge Compute Optimized without GPU
%%
%% Device type: EDGE
%%
%% Capacity: T100
%%
%% Description: Snowball Edge Storage Optimized with EC2 Compute
%%
%% This device is replaced with T98.
%%
%% Device type: STANDARD
%%
%% Capacity: T50
%%
%% Description: Original Snowball device
%%
%% This device is only available in the Ningxia, Beijing, and Singapore
%% Amazon Web Services Region
%%
%% Device type: STANDARD
%%
%% Capacity: T80
%%
%% Description: Original Snowball device
%%
%% This device is only available in the Ningxia, Beijing, and Singapore
%% Amazon Web Services Region.
%%
%% Snow Family device type: RACK_5U_C
%%
%% Capacity: T13
%%
%% Description: Snowblade.
%%
%% Device type: V3_5S
%%
%% Capacity: T240
%%
%% Description: Snowball Edge Storage Optimized 210TB
-spec create_job(aws_client:aws_client(), create_job_request()) ->
    {ok, create_job_result(), tuple()} |
    {error, any()} |
    {error, create_job_errors(), tuple()}.
create_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_job(Client, Input, []).

-spec create_job(aws_client:aws_client(), create_job_request(), proplists:proplist()) ->
    {ok, create_job_result(), tuple()} |
    {error, any()} |
    {error, create_job_errors(), tuple()}.
create_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateJob">>, Input, Options).

%% @doc Creates a job with the long-term usage option for a device.
%%
%% The long-term usage is a
%% 1-year or 3-year long-term pricing type for the device. You are billed
%% upfront, and Amazon Web Services provides discounts for long-term pricing.
-spec create_long_term_pricing(aws_client:aws_client(), create_long_term_pricing_request()) ->
    {ok, create_long_term_pricing_result(), tuple()} |
    {error, any()} |
    {error, create_long_term_pricing_errors(), tuple()}.
create_long_term_pricing(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_long_term_pricing(Client, Input, []).

-spec create_long_term_pricing(aws_client:aws_client(), create_long_term_pricing_request(), proplists:proplist()) ->
    {ok, create_long_term_pricing_result(), tuple()} |
    {error, any()} |
    {error, create_long_term_pricing_errors(), tuple()}.
create_long_term_pricing(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLongTermPricing">>, Input, Options).

%% @doc Creates a shipping label that will be used to return the Snow device
%% to Amazon Web Services.
-spec create_return_shipping_label(aws_client:aws_client(), create_return_shipping_label_request()) ->
    {ok, create_return_shipping_label_result(), tuple()} |
    {error, any()} |
    {error, create_return_shipping_label_errors(), tuple()}.
create_return_shipping_label(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_return_shipping_label(Client, Input, []).

-spec create_return_shipping_label(aws_client:aws_client(), create_return_shipping_label_request(), proplists:proplist()) ->
    {ok, create_return_shipping_label_result(), tuple()} |
    {error, any()} |
    {error, create_return_shipping_label_errors(), tuple()}.
create_return_shipping_label(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReturnShippingLabel">>, Input, Options).

%% @doc Takes an `AddressId' and returns specific details about that
%% address in the
%% form of an `Address' object.
-spec describe_address(aws_client:aws_client(), describe_address_request()) ->
    {ok, describe_address_result(), tuple()} |
    {error, any()} |
    {error, describe_address_errors(), tuple()}.
describe_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_address(Client, Input, []).

-spec describe_address(aws_client:aws_client(), describe_address_request(), proplists:proplist()) ->
    {ok, describe_address_result(), tuple()} |
    {error, any()} |
    {error, describe_address_errors(), tuple()}.
describe_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAddress">>, Input, Options).

%% @doc Returns a specified number of `ADDRESS' objects.
%%
%% Calling this API in one of
%% the US regions will return addresses from the list of all addresses
%% associated with this
%% account in all US regions.
-spec describe_addresses(aws_client:aws_client(), describe_addresses_request()) ->
    {ok, describe_addresses_result(), tuple()} |
    {error, any()} |
    {error, describe_addresses_errors(), tuple()}.
describe_addresses(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_addresses(Client, Input, []).

-spec describe_addresses(aws_client:aws_client(), describe_addresses_request(), proplists:proplist()) ->
    {ok, describe_addresses_result(), tuple()} |
    {error, any()} |
    {error, describe_addresses_errors(), tuple()}.
describe_addresses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAddresses">>, Input, Options).

%% @doc Returns information about a specific cluster including shipping
%% information, cluster
%% status, and other important metadata.
-spec describe_cluster(aws_client:aws_client(), describe_cluster_request()) ->
    {ok, describe_cluster_result(), tuple()} |
    {error, any()} |
    {error, describe_cluster_errors(), tuple()}.
describe_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster(Client, Input, []).

-spec describe_cluster(aws_client:aws_client(), describe_cluster_request(), proplists:proplist()) ->
    {ok, describe_cluster_result(), tuple()} |
    {error, any()} |
    {error, describe_cluster_errors(), tuple()}.
describe_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCluster">>, Input, Options).

%% @doc Returns information about a specific job including shipping
%% information, job status,
%% and other important metadata.
-spec describe_job(aws_client:aws_client(), describe_job_request()) ->
    {ok, describe_job_result(), tuple()} |
    {error, any()} |
    {error, describe_job_errors(), tuple()}.
describe_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_job(Client, Input, []).

-spec describe_job(aws_client:aws_client(), describe_job_request(), proplists:proplist()) ->
    {ok, describe_job_result(), tuple()} |
    {error, any()} |
    {error, describe_job_errors(), tuple()}.
describe_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeJob">>, Input, Options).

%% @doc Information on the shipping label of a Snow device that is being
%% returned to Amazon Web Services.
-spec describe_return_shipping_label(aws_client:aws_client(), describe_return_shipping_label_request()) ->
    {ok, describe_return_shipping_label_result(), tuple()} |
    {error, any()} |
    {error, describe_return_shipping_label_errors(), tuple()}.
describe_return_shipping_label(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_return_shipping_label(Client, Input, []).

-spec describe_return_shipping_label(aws_client:aws_client(), describe_return_shipping_label_request(), proplists:proplist()) ->
    {ok, describe_return_shipping_label_result(), tuple()} |
    {error, any()} |
    {error, describe_return_shipping_label_errors(), tuple()}.
describe_return_shipping_label(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReturnShippingLabel">>, Input, Options).

%% @doc Returns a link to an Amazon S3 presigned URL for the manifest file
%% associated with the
%% specified `JobId' value.
%%
%% You can access the manifest file for up to 60 minutes
%% after this request has been made. To access the manifest file after 60
%% minutes have passed,
%% you'll have to make another call to the `GetJobManifest' action.
%%
%% The manifest is an encrypted file that you can download after your job
%% enters the
%% `WithCustomer' status. This is the only valid status for calling this
%% API as the
%% manifest and `UnlockCode' code value are used for securing your device
%% and should
%% only be used when you have the device. The manifest is decrypted by using
%% the
%% `UnlockCode' code value, when you pass both values to the Snow device
%% through the
%% Snowball client when the client is started for the first time.
%%
%% As a best practice, we recommend that you don't save a copy of an
%% `UnlockCode' value in the same location as the manifest file for that
%% job. Saving
%% these separately helps prevent unauthorized parties from gaining access to
%% the Snow device
%% associated with that job.
%%
%% The credentials of a given job, including its manifest file and unlock
%% code, expire 360
%% days after the job is created.
-spec get_job_manifest(aws_client:aws_client(), get_job_manifest_request()) ->
    {ok, get_job_manifest_result(), tuple()} |
    {error, any()} |
    {error, get_job_manifest_errors(), tuple()}.
get_job_manifest(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_job_manifest(Client, Input, []).

-spec get_job_manifest(aws_client:aws_client(), get_job_manifest_request(), proplists:proplist()) ->
    {ok, get_job_manifest_result(), tuple()} |
    {error, any()} |
    {error, get_job_manifest_errors(), tuple()}.
get_job_manifest(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJobManifest">>, Input, Options).

%% @doc Returns the `UnlockCode' code value for the specified job.
%%
%% A particular
%% `UnlockCode' value can be accessed for up to 360 days after the
%% associated job
%% has been created.
%%
%% The `UnlockCode' value is a 29-character code with 25 alphanumeric
%% characters and 4 hyphens. This code is used to decrypt the manifest file
%% when it is passed
%% along with the manifest to the Snow device through the Snowball client
%% when the client is
%% started for the first time. The only valid status for calling this API is
%% `WithCustomer' as the manifest and `Unlock' code values are used
%% for
%% securing your device and should only be used when you have the device.
%%
%% As a best practice, we recommend that you don't save a copy of the
%% `UnlockCode' in the same location as the manifest file for that job.
%% Saving these
%% separately helps prevent unauthorized parties from gaining access to the
%% Snow device
%% associated with that job.
-spec get_job_unlock_code(aws_client:aws_client(), get_job_unlock_code_request()) ->
    {ok, get_job_unlock_code_result(), tuple()} |
    {error, any()} |
    {error, get_job_unlock_code_errors(), tuple()}.
get_job_unlock_code(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_job_unlock_code(Client, Input, []).

-spec get_job_unlock_code(aws_client:aws_client(), get_job_unlock_code_request(), proplists:proplist()) ->
    {ok, get_job_unlock_code_result(), tuple()} |
    {error, any()} |
    {error, get_job_unlock_code_errors(), tuple()}.
get_job_unlock_code(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetJobUnlockCode">>, Input, Options).

%% @doc Returns information about the Snow Family service limit for your
%% account, and also the
%% number of Snow devices your account has in use.
%%
%% The default service limit for the number of Snow devices that you can have
%% at one time
%% is 1. If you want to increase your service limit, contact Amazon Web
%% Services Support.
-spec get_snowball_usage(aws_client:aws_client(), get_snowball_usage_request()) ->
    {ok, get_snowball_usage_result(), tuple()} |
    {error, any()}.
get_snowball_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_snowball_usage(Client, Input, []).

-spec get_snowball_usage(aws_client:aws_client(), get_snowball_usage_request(), proplists:proplist()) ->
    {ok, get_snowball_usage_result(), tuple()} |
    {error, any()}.
get_snowball_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSnowballUsage">>, Input, Options).

%% @doc Returns an Amazon S3 presigned URL for an update file associated with
%% a specified
%% `JobId'.
-spec get_software_updates(aws_client:aws_client(), get_software_updates_request()) ->
    {ok, get_software_updates_result(), tuple()} |
    {error, any()} |
    {error, get_software_updates_errors(), tuple()}.
get_software_updates(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_software_updates(Client, Input, []).

-spec get_software_updates(aws_client:aws_client(), get_software_updates_request(), proplists:proplist()) ->
    {ok, get_software_updates_result(), tuple()} |
    {error, any()} |
    {error, get_software_updates_errors(), tuple()}.
get_software_updates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSoftwareUpdates">>, Input, Options).

%% @doc Returns an array of `JobListEntry' objects of the specified
%% length.
%%
%% Each
%% `JobListEntry' object is for a job in the specified cluster and
%% contains a job's
%% state, a job's ID, and other information.
-spec list_cluster_jobs(aws_client:aws_client(), list_cluster_jobs_request()) ->
    {ok, list_cluster_jobs_result(), tuple()} |
    {error, any()} |
    {error, list_cluster_jobs_errors(), tuple()}.
list_cluster_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_cluster_jobs(Client, Input, []).

-spec list_cluster_jobs(aws_client:aws_client(), list_cluster_jobs_request(), proplists:proplist()) ->
    {ok, list_cluster_jobs_result(), tuple()} |
    {error, any()} |
    {error, list_cluster_jobs_errors(), tuple()}.
list_cluster_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListClusterJobs">>, Input, Options).

%% @doc Returns an array of `ClusterListEntry' objects of the specified
%% length.
%%
%% Each
%% `ClusterListEntry' object contains a cluster's state, a
%% cluster's ID, and other
%% important status information.
-spec list_clusters(aws_client:aws_client(), list_clusters_request()) ->
    {ok, list_clusters_result(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_clusters(Client, Input, []).

-spec list_clusters(aws_client:aws_client(), list_clusters_request(), proplists:proplist()) ->
    {ok, list_clusters_result(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListClusters">>, Input, Options).

%% @doc This action returns a list of the different Amazon EC2-compatible
%% Amazon Machine Images (AMIs)
%% that are owned by your Amazon Web Services accountthat would be supported
%% for use on a Snow
%% device.
%%
%% Currently, supported AMIs are based on the Amazon Linux-2, Ubuntu 20.04
%% LTS - Focal, or Ubuntu 22.04 LTS - Jammy images, available on the
%% Amazon Web Services Marketplace. Ubuntu 16.04 LTS - Xenial (HVM) images
%% are no longer supported in the Market, but still supported for use on
%% devices through Amazon EC2 VM Import/Export and running locally in AMIs.
-spec list_compatible_images(aws_client:aws_client(), list_compatible_images_request()) ->
    {ok, list_compatible_images_result(), tuple()} |
    {error, any()} |
    {error, list_compatible_images_errors(), tuple()}.
list_compatible_images(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_compatible_images(Client, Input, []).

-spec list_compatible_images(aws_client:aws_client(), list_compatible_images_request(), proplists:proplist()) ->
    {ok, list_compatible_images_result(), tuple()} |
    {error, any()} |
    {error, list_compatible_images_errors(), tuple()}.
list_compatible_images(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCompatibleImages">>, Input, Options).

%% @doc Returns an array of `JobListEntry' objects of the specified
%% length.
%%
%% Each
%% `JobListEntry' object contains a job's state, a job's ID, and
%% a value that
%% indicates whether the job is a job part, in the case of export jobs.
%% Calling this API action
%% in one of the US regions will return jobs from the list of all jobs
%% associated with this
%% account in all US regions.
-spec list_jobs(aws_client:aws_client(), list_jobs_request()) ->
    {ok, list_jobs_result(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_jobs(Client, Input, []).

-spec list_jobs(aws_client:aws_client(), list_jobs_request(), proplists:proplist()) ->
    {ok, list_jobs_result(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListJobs">>, Input, Options).

%% @doc Lists all long-term pricing types.
-spec list_long_term_pricing(aws_client:aws_client(), list_long_term_pricing_request()) ->
    {ok, list_long_term_pricing_result(), tuple()} |
    {error, any()} |
    {error, list_long_term_pricing_errors(), tuple()}.
list_long_term_pricing(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_long_term_pricing(Client, Input, []).

-spec list_long_term_pricing(aws_client:aws_client(), list_long_term_pricing_request(), proplists:proplist()) ->
    {ok, list_long_term_pricing_result(), tuple()} |
    {error, any()} |
    {error, list_long_term_pricing_errors(), tuple()}.
list_long_term_pricing(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLongTermPricing">>, Input, Options).

%% @doc A list of locations from which the customer can choose to pickup a
%% device.
-spec list_pickup_locations(aws_client:aws_client(), list_pickup_locations_request()) ->
    {ok, list_pickup_locations_result(), tuple()} |
    {error, any()} |
    {error, list_pickup_locations_errors(), tuple()}.
list_pickup_locations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pickup_locations(Client, Input, []).

-spec list_pickup_locations(aws_client:aws_client(), list_pickup_locations_request(), proplists:proplist()) ->
    {ok, list_pickup_locations_result(), tuple()} |
    {error, any()} |
    {error, list_pickup_locations_errors(), tuple()}.
list_pickup_locations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPickupLocations">>, Input, Options).

%% @doc Lists all supported versions for Snow on-device services.
%%
%% Returns an
%% array of `ServiceVersion' object containing the supported versions for
%% a particular service.
-spec list_service_versions(aws_client:aws_client(), list_service_versions_request()) ->
    {ok, list_service_versions_result(), tuple()} |
    {error, any()} |
    {error, list_service_versions_errors(), tuple()}.
list_service_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_versions(Client, Input, []).

-spec list_service_versions(aws_client:aws_client(), list_service_versions_request(), proplists:proplist()) ->
    {ok, list_service_versions_result(), tuple()} |
    {error, any()} |
    {error, list_service_versions_errors(), tuple()}.
list_service_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServiceVersions">>, Input, Options).

%% @doc While a cluster's `ClusterState' value is in the
%% `AwaitingQuorum'
%% state, you can update some of the information associated with a cluster.
%%
%% Once the cluster
%% changes to a different job state, usually 60 minutes after the cluster
%% being created, this
%% action is no longer available.
-spec update_cluster(aws_client:aws_client(), update_cluster_request()) ->
    {ok, update_cluster_result(), tuple()} |
    {error, any()} |
    {error, update_cluster_errors(), tuple()}.
update_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_cluster(Client, Input, []).

-spec update_cluster(aws_client:aws_client(), update_cluster_request(), proplists:proplist()) ->
    {ok, update_cluster_result(), tuple()} |
    {error, any()} |
    {error, update_cluster_errors(), tuple()}.
update_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCluster">>, Input, Options).

%% @doc While a job's `JobState' value is `New', you can update
%% some of
%% the information associated with a job.
%%
%% Once the job changes to a different job state, usually
%% within 60 minutes of the job being created, this action is no longer
%% available.
-spec update_job(aws_client:aws_client(), update_job_request()) ->
    {ok, update_job_result(), tuple()} |
    {error, any()} |
    {error, update_job_errors(), tuple()}.
update_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_job(Client, Input, []).

-spec update_job(aws_client:aws_client(), update_job_request(), proplists:proplist()) ->
    {ok, update_job_result(), tuple()} |
    {error, any()} |
    {error, update_job_errors(), tuple()}.
update_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateJob">>, Input, Options).

%% @doc Updates the state when a shipment state changes to a different state.
-spec update_job_shipment_state(aws_client:aws_client(), update_job_shipment_state_request()) ->
    {ok, update_job_shipment_state_result(), tuple()} |
    {error, any()} |
    {error, update_job_shipment_state_errors(), tuple()}.
update_job_shipment_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_job_shipment_state(Client, Input, []).

-spec update_job_shipment_state(aws_client:aws_client(), update_job_shipment_state_request(), proplists:proplist()) ->
    {ok, update_job_shipment_state_result(), tuple()} |
    {error, any()} |
    {error, update_job_shipment_state_errors(), tuple()}.
update_job_shipment_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateJobShipmentState">>, Input, Options).

%% @doc Updates the long-term pricing type.
-spec update_long_term_pricing(aws_client:aws_client(), update_long_term_pricing_request()) ->
    {ok, update_long_term_pricing_result(), tuple()} |
    {error, any()} |
    {error, update_long_term_pricing_errors(), tuple()}.
update_long_term_pricing(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_long_term_pricing(Client, Input, []).

-spec update_long_term_pricing(aws_client:aws_client(), update_long_term_pricing_request(), proplists:proplist()) ->
    {ok, update_long_term_pricing_result(), tuple()} |
    {error, any()} |
    {error, update_long_term_pricing_errors(), tuple()}.
update_long_term_pricing(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateLongTermPricing">>, Input, Options).

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
    Client1 = Client#{service => <<"snowball">>},
    Host = build_host(<<"snowball">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"AWSIESnowballJobManagementService.", Action/binary>>}
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
