%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Elastic Compute Cloud
%%
%% Amazon Elastic Compute Cloud (Amazon EC2) provides secure and resizable
%% computing capacity in the Amazon Web Services Cloud.
%%
%% Using Amazon EC2 eliminates the need to invest in hardware up front, so
%% you can develop and deploy applications
%% faster. Amazon Virtual Private Cloud (Amazon VPC) enables you to provision
%% a logically isolated section of the
%% Amazon Web Services Cloud where you can launch Amazon Web Services
%% resources in a virtual network that you've defined. Amazon Elastic
%% Block Store
%% (Amazon EBS) provides block level storage volumes for use with EC2
%% instances. EBS volumes are highly available
%% and reliable storage volumes that can be attached to any running instance
%% and used like a hard drive.
%%
%% To learn more, see the following resources:
%%
%% Amazon EC2: Amazon EC2 product page: http://aws.amazon.com/ec2, Amazon EC2
%% documentation: https://docs.aws.amazon.com/ec2/index.html
%%
%% Amazon EBS: Amazon EBS product page: http://aws.amazon.com/ebs, Amazon EBS
%% documentation: https://docs.aws.amazon.com/ebs/index.html
%%
%% Amazon VPC: Amazon VPC product page: http://aws.amazon.com/vpc, Amazon VPC
%% documentation: https://docs.aws.amazon.com/vpc/index.html
%%
%% VPN: VPN product page: http://aws.amazon.com/vpn, VPN documentation:
%% https://docs.aws.amazon.com/vpn/index.html
-module(aws_ec2).

-export([accept_address_transfer/2,
         accept_address_transfer/3,
         accept_reserved_instances_exchange_quote/2,
         accept_reserved_instances_exchange_quote/3,
         accept_transit_gateway_multicast_domain_associations/2,
         accept_transit_gateway_multicast_domain_associations/3,
         accept_transit_gateway_peering_attachment/2,
         accept_transit_gateway_peering_attachment/3,
         accept_transit_gateway_vpc_attachment/2,
         accept_transit_gateway_vpc_attachment/3,
         accept_vpc_endpoint_connections/2,
         accept_vpc_endpoint_connections/3,
         accept_vpc_peering_connection/2,
         accept_vpc_peering_connection/3,
         advertise_byoip_cidr/2,
         advertise_byoip_cidr/3,
         allocate_address/2,
         allocate_address/3,
         allocate_hosts/2,
         allocate_hosts/3,
         allocate_ipam_pool_cidr/2,
         allocate_ipam_pool_cidr/3,
         apply_security_groups_to_client_vpn_target_network/2,
         apply_security_groups_to_client_vpn_target_network/3,
         assign_ipv6_addresses/2,
         assign_ipv6_addresses/3,
         assign_private_ip_addresses/2,
         assign_private_ip_addresses/3,
         assign_private_nat_gateway_address/2,
         assign_private_nat_gateway_address/3,
         associate_address/2,
         associate_address/3,
         associate_client_vpn_target_network/2,
         associate_client_vpn_target_network/3,
         associate_dhcp_options/2,
         associate_dhcp_options/3,
         associate_enclave_certificate_iam_role/2,
         associate_enclave_certificate_iam_role/3,
         associate_iam_instance_profile/2,
         associate_iam_instance_profile/3,
         associate_instance_event_window/2,
         associate_instance_event_window/3,
         associate_ipam_byoasn/2,
         associate_ipam_byoasn/3,
         associate_ipam_resource_discovery/2,
         associate_ipam_resource_discovery/3,
         associate_nat_gateway_address/2,
         associate_nat_gateway_address/3,
         associate_route_table/2,
         associate_route_table/3,
         associate_subnet_cidr_block/2,
         associate_subnet_cidr_block/3,
         associate_transit_gateway_multicast_domain/2,
         associate_transit_gateway_multicast_domain/3,
         associate_transit_gateway_policy_table/2,
         associate_transit_gateway_policy_table/3,
         associate_transit_gateway_route_table/2,
         associate_transit_gateway_route_table/3,
         associate_trunk_interface/2,
         associate_trunk_interface/3,
         associate_vpc_cidr_block/2,
         associate_vpc_cidr_block/3,
         attach_classic_link_vpc/2,
         attach_classic_link_vpc/3,
         attach_internet_gateway/2,
         attach_internet_gateway/3,
         attach_network_interface/2,
         attach_network_interface/3,
         attach_verified_access_trust_provider/2,
         attach_verified_access_trust_provider/3,
         attach_volume/2,
         attach_volume/3,
         attach_vpn_gateway/2,
         attach_vpn_gateway/3,
         authorize_client_vpn_ingress/2,
         authorize_client_vpn_ingress/3,
         authorize_security_group_egress/2,
         authorize_security_group_egress/3,
         authorize_security_group_ingress/2,
         authorize_security_group_ingress/3,
         bundle_instance/2,
         bundle_instance/3,
         cancel_bundle_task/2,
         cancel_bundle_task/3,
         cancel_capacity_reservation/2,
         cancel_capacity_reservation/3,
         cancel_capacity_reservation_fleets/2,
         cancel_capacity_reservation_fleets/3,
         cancel_conversion_task/2,
         cancel_conversion_task/3,
         cancel_export_task/2,
         cancel_export_task/3,
         cancel_image_launch_permission/2,
         cancel_image_launch_permission/3,
         cancel_import_task/2,
         cancel_import_task/3,
         cancel_reserved_instances_listing/2,
         cancel_reserved_instances_listing/3,
         cancel_spot_fleet_requests/2,
         cancel_spot_fleet_requests/3,
         cancel_spot_instance_requests/2,
         cancel_spot_instance_requests/3,
         confirm_product_instance/2,
         confirm_product_instance/3,
         copy_fpga_image/2,
         copy_fpga_image/3,
         copy_image/2,
         copy_image/3,
         copy_snapshot/2,
         copy_snapshot/3,
         create_capacity_reservation/2,
         create_capacity_reservation/3,
         create_capacity_reservation_fleet/2,
         create_capacity_reservation_fleet/3,
         create_carrier_gateway/2,
         create_carrier_gateway/3,
         create_client_vpn_endpoint/2,
         create_client_vpn_endpoint/3,
         create_client_vpn_route/2,
         create_client_vpn_route/3,
         create_coip_cidr/2,
         create_coip_cidr/3,
         create_coip_pool/2,
         create_coip_pool/3,
         create_customer_gateway/2,
         create_customer_gateway/3,
         create_default_subnet/2,
         create_default_subnet/3,
         create_default_vpc/2,
         create_default_vpc/3,
         create_dhcp_options/2,
         create_dhcp_options/3,
         create_egress_only_internet_gateway/2,
         create_egress_only_internet_gateway/3,
         create_fleet/2,
         create_fleet/3,
         create_flow_logs/2,
         create_flow_logs/3,
         create_fpga_image/2,
         create_fpga_image/3,
         create_image/2,
         create_image/3,
         create_instance_connect_endpoint/2,
         create_instance_connect_endpoint/3,
         create_instance_event_window/2,
         create_instance_event_window/3,
         create_instance_export_task/2,
         create_instance_export_task/3,
         create_internet_gateway/2,
         create_internet_gateway/3,
         create_ipam/2,
         create_ipam/3,
         create_ipam_pool/2,
         create_ipam_pool/3,
         create_ipam_resource_discovery/2,
         create_ipam_resource_discovery/3,
         create_ipam_scope/2,
         create_ipam_scope/3,
         create_key_pair/2,
         create_key_pair/3,
         create_launch_template/2,
         create_launch_template/3,
         create_launch_template_version/2,
         create_launch_template_version/3,
         create_local_gateway_route/2,
         create_local_gateway_route/3,
         create_local_gateway_route_table/2,
         create_local_gateway_route_table/3,
         create_local_gateway_route_table_virtual_interface_group_association/2,
         create_local_gateway_route_table_virtual_interface_group_association/3,
         create_local_gateway_route_table_vpc_association/2,
         create_local_gateway_route_table_vpc_association/3,
         create_managed_prefix_list/2,
         create_managed_prefix_list/3,
         create_nat_gateway/2,
         create_nat_gateway/3,
         create_network_acl/2,
         create_network_acl/3,
         create_network_acl_entry/2,
         create_network_acl_entry/3,
         create_network_insights_access_scope/2,
         create_network_insights_access_scope/3,
         create_network_insights_path/2,
         create_network_insights_path/3,
         create_network_interface/2,
         create_network_interface/3,
         create_network_interface_permission/2,
         create_network_interface_permission/3,
         create_placement_group/2,
         create_placement_group/3,
         create_public_ipv4_pool/2,
         create_public_ipv4_pool/3,
         create_replace_root_volume_task/2,
         create_replace_root_volume_task/3,
         create_reserved_instances_listing/2,
         create_reserved_instances_listing/3,
         create_restore_image_task/2,
         create_restore_image_task/3,
         create_route/2,
         create_route/3,
         create_route_table/2,
         create_route_table/3,
         create_security_group/2,
         create_security_group/3,
         create_snapshot/2,
         create_snapshot/3,
         create_snapshots/2,
         create_snapshots/3,
         create_spot_datafeed_subscription/2,
         create_spot_datafeed_subscription/3,
         create_store_image_task/2,
         create_store_image_task/3,
         create_subnet/2,
         create_subnet/3,
         create_subnet_cidr_reservation/2,
         create_subnet_cidr_reservation/3,
         create_tags/2,
         create_tags/3,
         create_traffic_mirror_filter/2,
         create_traffic_mirror_filter/3,
         create_traffic_mirror_filter_rule/2,
         create_traffic_mirror_filter_rule/3,
         create_traffic_mirror_session/2,
         create_traffic_mirror_session/3,
         create_traffic_mirror_target/2,
         create_traffic_mirror_target/3,
         create_transit_gateway/2,
         create_transit_gateway/3,
         create_transit_gateway_connect/2,
         create_transit_gateway_connect/3,
         create_transit_gateway_connect_peer/2,
         create_transit_gateway_connect_peer/3,
         create_transit_gateway_multicast_domain/2,
         create_transit_gateway_multicast_domain/3,
         create_transit_gateway_peering_attachment/2,
         create_transit_gateway_peering_attachment/3,
         create_transit_gateway_policy_table/2,
         create_transit_gateway_policy_table/3,
         create_transit_gateway_prefix_list_reference/2,
         create_transit_gateway_prefix_list_reference/3,
         create_transit_gateway_route/2,
         create_transit_gateway_route/3,
         create_transit_gateway_route_table/2,
         create_transit_gateway_route_table/3,
         create_transit_gateway_route_table_announcement/2,
         create_transit_gateway_route_table_announcement/3,
         create_transit_gateway_vpc_attachment/2,
         create_transit_gateway_vpc_attachment/3,
         create_verified_access_endpoint/2,
         create_verified_access_endpoint/3,
         create_verified_access_group/2,
         create_verified_access_group/3,
         create_verified_access_instance/2,
         create_verified_access_instance/3,
         create_verified_access_trust_provider/2,
         create_verified_access_trust_provider/3,
         create_volume/2,
         create_volume/3,
         create_vpc/2,
         create_vpc/3,
         create_vpc_endpoint/2,
         create_vpc_endpoint/3,
         create_vpc_endpoint_connection_notification/2,
         create_vpc_endpoint_connection_notification/3,
         create_vpc_endpoint_service_configuration/2,
         create_vpc_endpoint_service_configuration/3,
         create_vpc_peering_connection/2,
         create_vpc_peering_connection/3,
         create_vpn_connection/2,
         create_vpn_connection/3,
         create_vpn_connection_route/2,
         create_vpn_connection_route/3,
         create_vpn_gateway/2,
         create_vpn_gateway/3,
         delete_carrier_gateway/2,
         delete_carrier_gateway/3,
         delete_client_vpn_endpoint/2,
         delete_client_vpn_endpoint/3,
         delete_client_vpn_route/2,
         delete_client_vpn_route/3,
         delete_coip_cidr/2,
         delete_coip_cidr/3,
         delete_coip_pool/2,
         delete_coip_pool/3,
         delete_customer_gateway/2,
         delete_customer_gateway/3,
         delete_dhcp_options/2,
         delete_dhcp_options/3,
         delete_egress_only_internet_gateway/2,
         delete_egress_only_internet_gateway/3,
         delete_fleets/2,
         delete_fleets/3,
         delete_flow_logs/2,
         delete_flow_logs/3,
         delete_fpga_image/2,
         delete_fpga_image/3,
         delete_instance_connect_endpoint/2,
         delete_instance_connect_endpoint/3,
         delete_instance_event_window/2,
         delete_instance_event_window/3,
         delete_internet_gateway/2,
         delete_internet_gateway/3,
         delete_ipam/2,
         delete_ipam/3,
         delete_ipam_pool/2,
         delete_ipam_pool/3,
         delete_ipam_resource_discovery/2,
         delete_ipam_resource_discovery/3,
         delete_ipam_scope/2,
         delete_ipam_scope/3,
         delete_key_pair/2,
         delete_key_pair/3,
         delete_launch_template/2,
         delete_launch_template/3,
         delete_launch_template_versions/2,
         delete_launch_template_versions/3,
         delete_local_gateway_route/2,
         delete_local_gateway_route/3,
         delete_local_gateway_route_table/2,
         delete_local_gateway_route_table/3,
         delete_local_gateway_route_table_virtual_interface_group_association/2,
         delete_local_gateway_route_table_virtual_interface_group_association/3,
         delete_local_gateway_route_table_vpc_association/2,
         delete_local_gateway_route_table_vpc_association/3,
         delete_managed_prefix_list/2,
         delete_managed_prefix_list/3,
         delete_nat_gateway/2,
         delete_nat_gateway/3,
         delete_network_acl/2,
         delete_network_acl/3,
         delete_network_acl_entry/2,
         delete_network_acl_entry/3,
         delete_network_insights_access_scope/2,
         delete_network_insights_access_scope/3,
         delete_network_insights_access_scope_analysis/2,
         delete_network_insights_access_scope_analysis/3,
         delete_network_insights_analysis/2,
         delete_network_insights_analysis/3,
         delete_network_insights_path/2,
         delete_network_insights_path/3,
         delete_network_interface/2,
         delete_network_interface/3,
         delete_network_interface_permission/2,
         delete_network_interface_permission/3,
         delete_placement_group/2,
         delete_placement_group/3,
         delete_public_ipv4_pool/2,
         delete_public_ipv4_pool/3,
         delete_queued_reserved_instances/2,
         delete_queued_reserved_instances/3,
         delete_route/2,
         delete_route/3,
         delete_route_table/2,
         delete_route_table/3,
         delete_security_group/2,
         delete_security_group/3,
         delete_snapshot/2,
         delete_snapshot/3,
         delete_spot_datafeed_subscription/2,
         delete_spot_datafeed_subscription/3,
         delete_subnet/2,
         delete_subnet/3,
         delete_subnet_cidr_reservation/2,
         delete_subnet_cidr_reservation/3,
         delete_tags/2,
         delete_tags/3,
         delete_traffic_mirror_filter/2,
         delete_traffic_mirror_filter/3,
         delete_traffic_mirror_filter_rule/2,
         delete_traffic_mirror_filter_rule/3,
         delete_traffic_mirror_session/2,
         delete_traffic_mirror_session/3,
         delete_traffic_mirror_target/2,
         delete_traffic_mirror_target/3,
         delete_transit_gateway/2,
         delete_transit_gateway/3,
         delete_transit_gateway_connect/2,
         delete_transit_gateway_connect/3,
         delete_transit_gateway_connect_peer/2,
         delete_transit_gateway_connect_peer/3,
         delete_transit_gateway_multicast_domain/2,
         delete_transit_gateway_multicast_domain/3,
         delete_transit_gateway_peering_attachment/2,
         delete_transit_gateway_peering_attachment/3,
         delete_transit_gateway_policy_table/2,
         delete_transit_gateway_policy_table/3,
         delete_transit_gateway_prefix_list_reference/2,
         delete_transit_gateway_prefix_list_reference/3,
         delete_transit_gateway_route/2,
         delete_transit_gateway_route/3,
         delete_transit_gateway_route_table/2,
         delete_transit_gateway_route_table/3,
         delete_transit_gateway_route_table_announcement/2,
         delete_transit_gateway_route_table_announcement/3,
         delete_transit_gateway_vpc_attachment/2,
         delete_transit_gateway_vpc_attachment/3,
         delete_verified_access_endpoint/2,
         delete_verified_access_endpoint/3,
         delete_verified_access_group/2,
         delete_verified_access_group/3,
         delete_verified_access_instance/2,
         delete_verified_access_instance/3,
         delete_verified_access_trust_provider/2,
         delete_verified_access_trust_provider/3,
         delete_volume/2,
         delete_volume/3,
         delete_vpc/2,
         delete_vpc/3,
         delete_vpc_endpoint_connection_notifications/2,
         delete_vpc_endpoint_connection_notifications/3,
         delete_vpc_endpoint_service_configurations/2,
         delete_vpc_endpoint_service_configurations/3,
         delete_vpc_endpoints/2,
         delete_vpc_endpoints/3,
         delete_vpc_peering_connection/2,
         delete_vpc_peering_connection/3,
         delete_vpn_connection/2,
         delete_vpn_connection/3,
         delete_vpn_connection_route/2,
         delete_vpn_connection_route/3,
         delete_vpn_gateway/2,
         delete_vpn_gateway/3,
         deprovision_byoip_cidr/2,
         deprovision_byoip_cidr/3,
         deprovision_ipam_byoasn/2,
         deprovision_ipam_byoasn/3,
         deprovision_ipam_pool_cidr/2,
         deprovision_ipam_pool_cidr/3,
         deprovision_public_ipv4_pool_cidr/2,
         deprovision_public_ipv4_pool_cidr/3,
         deregister_image/2,
         deregister_image/3,
         deregister_instance_event_notification_attributes/2,
         deregister_instance_event_notification_attributes/3,
         deregister_transit_gateway_multicast_group_members/2,
         deregister_transit_gateway_multicast_group_members/3,
         deregister_transit_gateway_multicast_group_sources/2,
         deregister_transit_gateway_multicast_group_sources/3,
         describe_account_attributes/2,
         describe_account_attributes/3,
         describe_address_transfers/2,
         describe_address_transfers/3,
         describe_addresses/2,
         describe_addresses/3,
         describe_addresses_attribute/2,
         describe_addresses_attribute/3,
         describe_aggregate_id_format/2,
         describe_aggregate_id_format/3,
         describe_availability_zones/2,
         describe_availability_zones/3,
         describe_aws_network_performance_metric_subscriptions/2,
         describe_aws_network_performance_metric_subscriptions/3,
         describe_bundle_tasks/2,
         describe_bundle_tasks/3,
         describe_byoip_cidrs/2,
         describe_byoip_cidrs/3,
         describe_capacity_block_offerings/2,
         describe_capacity_block_offerings/3,
         describe_capacity_reservation_fleets/2,
         describe_capacity_reservation_fleets/3,
         describe_capacity_reservations/2,
         describe_capacity_reservations/3,
         describe_carrier_gateways/2,
         describe_carrier_gateways/3,
         describe_classic_link_instances/2,
         describe_classic_link_instances/3,
         describe_client_vpn_authorization_rules/2,
         describe_client_vpn_authorization_rules/3,
         describe_client_vpn_connections/2,
         describe_client_vpn_connections/3,
         describe_client_vpn_endpoints/2,
         describe_client_vpn_endpoints/3,
         describe_client_vpn_routes/2,
         describe_client_vpn_routes/3,
         describe_client_vpn_target_networks/2,
         describe_client_vpn_target_networks/3,
         describe_coip_pools/2,
         describe_coip_pools/3,
         describe_conversion_tasks/2,
         describe_conversion_tasks/3,
         describe_customer_gateways/2,
         describe_customer_gateways/3,
         describe_dhcp_options/2,
         describe_dhcp_options/3,
         describe_egress_only_internet_gateways/2,
         describe_egress_only_internet_gateways/3,
         describe_elastic_gpus/2,
         describe_elastic_gpus/3,
         describe_export_image_tasks/2,
         describe_export_image_tasks/3,
         describe_export_tasks/2,
         describe_export_tasks/3,
         describe_fast_launch_images/2,
         describe_fast_launch_images/3,
         describe_fast_snapshot_restores/2,
         describe_fast_snapshot_restores/3,
         describe_fleet_history/2,
         describe_fleet_history/3,
         describe_fleet_instances/2,
         describe_fleet_instances/3,
         describe_fleets/2,
         describe_fleets/3,
         describe_flow_logs/2,
         describe_flow_logs/3,
         describe_fpga_image_attribute/2,
         describe_fpga_image_attribute/3,
         describe_fpga_images/2,
         describe_fpga_images/3,
         describe_host_reservation_offerings/2,
         describe_host_reservation_offerings/3,
         describe_host_reservations/2,
         describe_host_reservations/3,
         describe_hosts/2,
         describe_hosts/3,
         describe_iam_instance_profile_associations/2,
         describe_iam_instance_profile_associations/3,
         describe_id_format/2,
         describe_id_format/3,
         describe_identity_id_format/2,
         describe_identity_id_format/3,
         describe_image_attribute/2,
         describe_image_attribute/3,
         describe_images/2,
         describe_images/3,
         describe_import_image_tasks/2,
         describe_import_image_tasks/3,
         describe_import_snapshot_tasks/2,
         describe_import_snapshot_tasks/3,
         describe_instance_attribute/2,
         describe_instance_attribute/3,
         describe_instance_connect_endpoints/2,
         describe_instance_connect_endpoints/3,
         describe_instance_credit_specifications/2,
         describe_instance_credit_specifications/3,
         describe_instance_event_notification_attributes/2,
         describe_instance_event_notification_attributes/3,
         describe_instance_event_windows/2,
         describe_instance_event_windows/3,
         describe_instance_status/2,
         describe_instance_status/3,
         describe_instance_topology/2,
         describe_instance_topology/3,
         describe_instance_type_offerings/2,
         describe_instance_type_offerings/3,
         describe_instance_types/2,
         describe_instance_types/3,
         describe_instances/2,
         describe_instances/3,
         describe_internet_gateways/2,
         describe_internet_gateways/3,
         describe_ipam_byoasn/2,
         describe_ipam_byoasn/3,
         describe_ipam_pools/2,
         describe_ipam_pools/3,
         describe_ipam_resource_discoveries/2,
         describe_ipam_resource_discoveries/3,
         describe_ipam_resource_discovery_associations/2,
         describe_ipam_resource_discovery_associations/3,
         describe_ipam_scopes/2,
         describe_ipam_scopes/3,
         describe_ipams/2,
         describe_ipams/3,
         describe_ipv6_pools/2,
         describe_ipv6_pools/3,
         describe_key_pairs/2,
         describe_key_pairs/3,
         describe_launch_template_versions/2,
         describe_launch_template_versions/3,
         describe_launch_templates/2,
         describe_launch_templates/3,
         describe_local_gateway_route_table_virtual_interface_group_associations/2,
         describe_local_gateway_route_table_virtual_interface_group_associations/3,
         describe_local_gateway_route_table_vpc_associations/2,
         describe_local_gateway_route_table_vpc_associations/3,
         describe_local_gateway_route_tables/2,
         describe_local_gateway_route_tables/3,
         describe_local_gateway_virtual_interface_groups/2,
         describe_local_gateway_virtual_interface_groups/3,
         describe_local_gateway_virtual_interfaces/2,
         describe_local_gateway_virtual_interfaces/3,
         describe_local_gateways/2,
         describe_local_gateways/3,
         describe_locked_snapshots/2,
         describe_locked_snapshots/3,
         describe_managed_prefix_lists/2,
         describe_managed_prefix_lists/3,
         describe_moving_addresses/2,
         describe_moving_addresses/3,
         describe_nat_gateways/2,
         describe_nat_gateways/3,
         describe_network_acls/2,
         describe_network_acls/3,
         describe_network_insights_access_scope_analyses/2,
         describe_network_insights_access_scope_analyses/3,
         describe_network_insights_access_scopes/2,
         describe_network_insights_access_scopes/3,
         describe_network_insights_analyses/2,
         describe_network_insights_analyses/3,
         describe_network_insights_paths/2,
         describe_network_insights_paths/3,
         describe_network_interface_attribute/2,
         describe_network_interface_attribute/3,
         describe_network_interface_permissions/2,
         describe_network_interface_permissions/3,
         describe_network_interfaces/2,
         describe_network_interfaces/3,
         describe_placement_groups/2,
         describe_placement_groups/3,
         describe_prefix_lists/2,
         describe_prefix_lists/3,
         describe_principal_id_format/2,
         describe_principal_id_format/3,
         describe_public_ipv4_pools/2,
         describe_public_ipv4_pools/3,
         describe_regions/2,
         describe_regions/3,
         describe_replace_root_volume_tasks/2,
         describe_replace_root_volume_tasks/3,
         describe_reserved_instances/2,
         describe_reserved_instances/3,
         describe_reserved_instances_listings/2,
         describe_reserved_instances_listings/3,
         describe_reserved_instances_modifications/2,
         describe_reserved_instances_modifications/3,
         describe_reserved_instances_offerings/2,
         describe_reserved_instances_offerings/3,
         describe_route_tables/2,
         describe_route_tables/3,
         describe_scheduled_instance_availability/2,
         describe_scheduled_instance_availability/3,
         describe_scheduled_instances/2,
         describe_scheduled_instances/3,
         describe_security_group_references/2,
         describe_security_group_references/3,
         describe_security_group_rules/2,
         describe_security_group_rules/3,
         describe_security_groups/2,
         describe_security_groups/3,
         describe_snapshot_attribute/2,
         describe_snapshot_attribute/3,
         describe_snapshot_tier_status/2,
         describe_snapshot_tier_status/3,
         describe_snapshots/2,
         describe_snapshots/3,
         describe_spot_datafeed_subscription/2,
         describe_spot_datafeed_subscription/3,
         describe_spot_fleet_instances/2,
         describe_spot_fleet_instances/3,
         describe_spot_fleet_request_history/2,
         describe_spot_fleet_request_history/3,
         describe_spot_fleet_requests/2,
         describe_spot_fleet_requests/3,
         describe_spot_instance_requests/2,
         describe_spot_instance_requests/3,
         describe_spot_price_history/2,
         describe_spot_price_history/3,
         describe_stale_security_groups/2,
         describe_stale_security_groups/3,
         describe_store_image_tasks/2,
         describe_store_image_tasks/3,
         describe_subnets/2,
         describe_subnets/3,
         describe_tags/2,
         describe_tags/3,
         describe_traffic_mirror_filters/2,
         describe_traffic_mirror_filters/3,
         describe_traffic_mirror_sessions/2,
         describe_traffic_mirror_sessions/3,
         describe_traffic_mirror_targets/2,
         describe_traffic_mirror_targets/3,
         describe_transit_gateway_attachments/2,
         describe_transit_gateway_attachments/3,
         describe_transit_gateway_connect_peers/2,
         describe_transit_gateway_connect_peers/3,
         describe_transit_gateway_connects/2,
         describe_transit_gateway_connects/3,
         describe_transit_gateway_multicast_domains/2,
         describe_transit_gateway_multicast_domains/3,
         describe_transit_gateway_peering_attachments/2,
         describe_transit_gateway_peering_attachments/3,
         describe_transit_gateway_policy_tables/2,
         describe_transit_gateway_policy_tables/3,
         describe_transit_gateway_route_table_announcements/2,
         describe_transit_gateway_route_table_announcements/3,
         describe_transit_gateway_route_tables/2,
         describe_transit_gateway_route_tables/3,
         describe_transit_gateway_vpc_attachments/2,
         describe_transit_gateway_vpc_attachments/3,
         describe_transit_gateways/2,
         describe_transit_gateways/3,
         describe_trunk_interface_associations/2,
         describe_trunk_interface_associations/3,
         describe_verified_access_endpoints/2,
         describe_verified_access_endpoints/3,
         describe_verified_access_groups/2,
         describe_verified_access_groups/3,
         describe_verified_access_instance_logging_configurations/2,
         describe_verified_access_instance_logging_configurations/3,
         describe_verified_access_instances/2,
         describe_verified_access_instances/3,
         describe_verified_access_trust_providers/2,
         describe_verified_access_trust_providers/3,
         describe_volume_attribute/2,
         describe_volume_attribute/3,
         describe_volume_status/2,
         describe_volume_status/3,
         describe_volumes/2,
         describe_volumes/3,
         describe_volumes_modifications/2,
         describe_volumes_modifications/3,
         describe_vpc_attribute/2,
         describe_vpc_attribute/3,
         describe_vpc_classic_link/2,
         describe_vpc_classic_link/3,
         describe_vpc_classic_link_dns_support/2,
         describe_vpc_classic_link_dns_support/3,
         describe_vpc_endpoint_connection_notifications/2,
         describe_vpc_endpoint_connection_notifications/3,
         describe_vpc_endpoint_connections/2,
         describe_vpc_endpoint_connections/3,
         describe_vpc_endpoint_service_configurations/2,
         describe_vpc_endpoint_service_configurations/3,
         describe_vpc_endpoint_service_permissions/2,
         describe_vpc_endpoint_service_permissions/3,
         describe_vpc_endpoint_services/2,
         describe_vpc_endpoint_services/3,
         describe_vpc_endpoints/2,
         describe_vpc_endpoints/3,
         describe_vpc_peering_connections/2,
         describe_vpc_peering_connections/3,
         describe_vpcs/2,
         describe_vpcs/3,
         describe_vpn_connections/2,
         describe_vpn_connections/3,
         describe_vpn_gateways/2,
         describe_vpn_gateways/3,
         detach_classic_link_vpc/2,
         detach_classic_link_vpc/3,
         detach_internet_gateway/2,
         detach_internet_gateway/3,
         detach_network_interface/2,
         detach_network_interface/3,
         detach_verified_access_trust_provider/2,
         detach_verified_access_trust_provider/3,
         detach_volume/2,
         detach_volume/3,
         detach_vpn_gateway/2,
         detach_vpn_gateway/3,
         disable_address_transfer/2,
         disable_address_transfer/3,
         disable_aws_network_performance_metric_subscription/2,
         disable_aws_network_performance_metric_subscription/3,
         disable_ebs_encryption_by_default/2,
         disable_ebs_encryption_by_default/3,
         disable_fast_launch/2,
         disable_fast_launch/3,
         disable_fast_snapshot_restores/2,
         disable_fast_snapshot_restores/3,
         disable_image/2,
         disable_image/3,
         disable_image_block_public_access/2,
         disable_image_block_public_access/3,
         disable_image_deprecation/2,
         disable_image_deprecation/3,
         disable_ipam_organization_admin_account/2,
         disable_ipam_organization_admin_account/3,
         disable_serial_console_access/2,
         disable_serial_console_access/3,
         disable_snapshot_block_public_access/2,
         disable_snapshot_block_public_access/3,
         disable_transit_gateway_route_table_propagation/2,
         disable_transit_gateway_route_table_propagation/3,
         disable_vgw_route_propagation/2,
         disable_vgw_route_propagation/3,
         disable_vpc_classic_link/2,
         disable_vpc_classic_link/3,
         disable_vpc_classic_link_dns_support/2,
         disable_vpc_classic_link_dns_support/3,
         disassociate_address/2,
         disassociate_address/3,
         disassociate_client_vpn_target_network/2,
         disassociate_client_vpn_target_network/3,
         disassociate_enclave_certificate_iam_role/2,
         disassociate_enclave_certificate_iam_role/3,
         disassociate_iam_instance_profile/2,
         disassociate_iam_instance_profile/3,
         disassociate_instance_event_window/2,
         disassociate_instance_event_window/3,
         disassociate_ipam_byoasn/2,
         disassociate_ipam_byoasn/3,
         disassociate_ipam_resource_discovery/2,
         disassociate_ipam_resource_discovery/3,
         disassociate_nat_gateway_address/2,
         disassociate_nat_gateway_address/3,
         disassociate_route_table/2,
         disassociate_route_table/3,
         disassociate_subnet_cidr_block/2,
         disassociate_subnet_cidr_block/3,
         disassociate_transit_gateway_multicast_domain/2,
         disassociate_transit_gateway_multicast_domain/3,
         disassociate_transit_gateway_policy_table/2,
         disassociate_transit_gateway_policy_table/3,
         disassociate_transit_gateway_route_table/2,
         disassociate_transit_gateway_route_table/3,
         disassociate_trunk_interface/2,
         disassociate_trunk_interface/3,
         disassociate_vpc_cidr_block/2,
         disassociate_vpc_cidr_block/3,
         enable_address_transfer/2,
         enable_address_transfer/3,
         enable_aws_network_performance_metric_subscription/2,
         enable_aws_network_performance_metric_subscription/3,
         enable_ebs_encryption_by_default/2,
         enable_ebs_encryption_by_default/3,
         enable_fast_launch/2,
         enable_fast_launch/3,
         enable_fast_snapshot_restores/2,
         enable_fast_snapshot_restores/3,
         enable_image/2,
         enable_image/3,
         enable_image_block_public_access/2,
         enable_image_block_public_access/3,
         enable_image_deprecation/2,
         enable_image_deprecation/3,
         enable_ipam_organization_admin_account/2,
         enable_ipam_organization_admin_account/3,
         enable_reachability_analyzer_organization_sharing/2,
         enable_reachability_analyzer_organization_sharing/3,
         enable_serial_console_access/2,
         enable_serial_console_access/3,
         enable_snapshot_block_public_access/2,
         enable_snapshot_block_public_access/3,
         enable_transit_gateway_route_table_propagation/2,
         enable_transit_gateway_route_table_propagation/3,
         enable_vgw_route_propagation/2,
         enable_vgw_route_propagation/3,
         enable_volume_i_o/2,
         enable_volume_i_o/3,
         enable_vpc_classic_link/2,
         enable_vpc_classic_link/3,
         enable_vpc_classic_link_dns_support/2,
         enable_vpc_classic_link_dns_support/3,
         export_client_vpn_client_certificate_revocation_list/2,
         export_client_vpn_client_certificate_revocation_list/3,
         export_client_vpn_client_configuration/2,
         export_client_vpn_client_configuration/3,
         export_image/2,
         export_image/3,
         export_transit_gateway_routes/2,
         export_transit_gateway_routes/3,
         get_associated_enclave_certificate_iam_roles/2,
         get_associated_enclave_certificate_iam_roles/3,
         get_associated_ipv6_pool_cidrs/2,
         get_associated_ipv6_pool_cidrs/3,
         get_aws_network_performance_data/2,
         get_aws_network_performance_data/3,
         get_capacity_reservation_usage/2,
         get_capacity_reservation_usage/3,
         get_coip_pool_usage/2,
         get_coip_pool_usage/3,
         get_console_output/2,
         get_console_output/3,
         get_console_screenshot/2,
         get_console_screenshot/3,
         get_default_credit_specification/2,
         get_default_credit_specification/3,
         get_ebs_default_kms_key_id/2,
         get_ebs_default_kms_key_id/3,
         get_ebs_encryption_by_default/2,
         get_ebs_encryption_by_default/3,
         get_flow_logs_integration_template/2,
         get_flow_logs_integration_template/3,
         get_groups_for_capacity_reservation/2,
         get_groups_for_capacity_reservation/3,
         get_host_reservation_purchase_preview/2,
         get_host_reservation_purchase_preview/3,
         get_image_block_public_access_state/2,
         get_image_block_public_access_state/3,
         get_instance_types_from_instance_requirements/2,
         get_instance_types_from_instance_requirements/3,
         get_instance_uefi_data/2,
         get_instance_uefi_data/3,
         get_ipam_address_history/2,
         get_ipam_address_history/3,
         get_ipam_discovered_accounts/2,
         get_ipam_discovered_accounts/3,
         get_ipam_discovered_public_addresses/2,
         get_ipam_discovered_public_addresses/3,
         get_ipam_discovered_resource_cidrs/2,
         get_ipam_discovered_resource_cidrs/3,
         get_ipam_pool_allocations/2,
         get_ipam_pool_allocations/3,
         get_ipam_pool_cidrs/2,
         get_ipam_pool_cidrs/3,
         get_ipam_resource_cidrs/2,
         get_ipam_resource_cidrs/3,
         get_launch_template_data/2,
         get_launch_template_data/3,
         get_managed_prefix_list_associations/2,
         get_managed_prefix_list_associations/3,
         get_managed_prefix_list_entries/2,
         get_managed_prefix_list_entries/3,
         get_network_insights_access_scope_analysis_findings/2,
         get_network_insights_access_scope_analysis_findings/3,
         get_network_insights_access_scope_content/2,
         get_network_insights_access_scope_content/3,
         get_password_data/2,
         get_password_data/3,
         get_reserved_instances_exchange_quote/2,
         get_reserved_instances_exchange_quote/3,
         get_security_groups_for_vpc/2,
         get_security_groups_for_vpc/3,
         get_serial_console_access_status/2,
         get_serial_console_access_status/3,
         get_snapshot_block_public_access_state/2,
         get_snapshot_block_public_access_state/3,
         get_spot_placement_scores/2,
         get_spot_placement_scores/3,
         get_subnet_cidr_reservations/2,
         get_subnet_cidr_reservations/3,
         get_transit_gateway_attachment_propagations/2,
         get_transit_gateway_attachment_propagations/3,
         get_transit_gateway_multicast_domain_associations/2,
         get_transit_gateway_multicast_domain_associations/3,
         get_transit_gateway_policy_table_associations/2,
         get_transit_gateway_policy_table_associations/3,
         get_transit_gateway_policy_table_entries/2,
         get_transit_gateway_policy_table_entries/3,
         get_transit_gateway_prefix_list_references/2,
         get_transit_gateway_prefix_list_references/3,
         get_transit_gateway_route_table_associations/2,
         get_transit_gateway_route_table_associations/3,
         get_transit_gateway_route_table_propagations/2,
         get_transit_gateway_route_table_propagations/3,
         get_verified_access_endpoint_policy/2,
         get_verified_access_endpoint_policy/3,
         get_verified_access_group_policy/2,
         get_verified_access_group_policy/3,
         get_vpn_connection_device_sample_configuration/2,
         get_vpn_connection_device_sample_configuration/3,
         get_vpn_connection_device_types/2,
         get_vpn_connection_device_types/3,
         get_vpn_tunnel_replacement_status/2,
         get_vpn_tunnel_replacement_status/3,
         import_client_vpn_client_certificate_revocation_list/2,
         import_client_vpn_client_certificate_revocation_list/3,
         import_image/2,
         import_image/3,
         import_instance/2,
         import_instance/3,
         import_key_pair/2,
         import_key_pair/3,
         import_snapshot/2,
         import_snapshot/3,
         import_volume/2,
         import_volume/3,
         list_images_in_recycle_bin/2,
         list_images_in_recycle_bin/3,
         list_snapshots_in_recycle_bin/2,
         list_snapshots_in_recycle_bin/3,
         lock_snapshot/2,
         lock_snapshot/3,
         modify_address_attribute/2,
         modify_address_attribute/3,
         modify_availability_zone_group/2,
         modify_availability_zone_group/3,
         modify_capacity_reservation/2,
         modify_capacity_reservation/3,
         modify_capacity_reservation_fleet/2,
         modify_capacity_reservation_fleet/3,
         modify_client_vpn_endpoint/2,
         modify_client_vpn_endpoint/3,
         modify_default_credit_specification/2,
         modify_default_credit_specification/3,
         modify_ebs_default_kms_key_id/2,
         modify_ebs_default_kms_key_id/3,
         modify_fleet/2,
         modify_fleet/3,
         modify_fpga_image_attribute/2,
         modify_fpga_image_attribute/3,
         modify_hosts/2,
         modify_hosts/3,
         modify_id_format/2,
         modify_id_format/3,
         modify_identity_id_format/2,
         modify_identity_id_format/3,
         modify_image_attribute/2,
         modify_image_attribute/3,
         modify_instance_attribute/2,
         modify_instance_attribute/3,
         modify_instance_capacity_reservation_attributes/2,
         modify_instance_capacity_reservation_attributes/3,
         modify_instance_credit_specification/2,
         modify_instance_credit_specification/3,
         modify_instance_event_start_time/2,
         modify_instance_event_start_time/3,
         modify_instance_event_window/2,
         modify_instance_event_window/3,
         modify_instance_maintenance_options/2,
         modify_instance_maintenance_options/3,
         modify_instance_metadata_options/2,
         modify_instance_metadata_options/3,
         modify_instance_placement/2,
         modify_instance_placement/3,
         modify_ipam/2,
         modify_ipam/3,
         modify_ipam_pool/2,
         modify_ipam_pool/3,
         modify_ipam_resource_cidr/2,
         modify_ipam_resource_cidr/3,
         modify_ipam_resource_discovery/2,
         modify_ipam_resource_discovery/3,
         modify_ipam_scope/2,
         modify_ipam_scope/3,
         modify_launch_template/2,
         modify_launch_template/3,
         modify_local_gateway_route/2,
         modify_local_gateway_route/3,
         modify_managed_prefix_list/2,
         modify_managed_prefix_list/3,
         modify_network_interface_attribute/2,
         modify_network_interface_attribute/3,
         modify_private_dns_name_options/2,
         modify_private_dns_name_options/3,
         modify_reserved_instances/2,
         modify_reserved_instances/3,
         modify_security_group_rules/2,
         modify_security_group_rules/3,
         modify_snapshot_attribute/2,
         modify_snapshot_attribute/3,
         modify_snapshot_tier/2,
         modify_snapshot_tier/3,
         modify_spot_fleet_request/2,
         modify_spot_fleet_request/3,
         modify_subnet_attribute/2,
         modify_subnet_attribute/3,
         modify_traffic_mirror_filter_network_services/2,
         modify_traffic_mirror_filter_network_services/3,
         modify_traffic_mirror_filter_rule/2,
         modify_traffic_mirror_filter_rule/3,
         modify_traffic_mirror_session/2,
         modify_traffic_mirror_session/3,
         modify_transit_gateway/2,
         modify_transit_gateway/3,
         modify_transit_gateway_prefix_list_reference/2,
         modify_transit_gateway_prefix_list_reference/3,
         modify_transit_gateway_vpc_attachment/2,
         modify_transit_gateway_vpc_attachment/3,
         modify_verified_access_endpoint/2,
         modify_verified_access_endpoint/3,
         modify_verified_access_endpoint_policy/2,
         modify_verified_access_endpoint_policy/3,
         modify_verified_access_group/2,
         modify_verified_access_group/3,
         modify_verified_access_group_policy/2,
         modify_verified_access_group_policy/3,
         modify_verified_access_instance/2,
         modify_verified_access_instance/3,
         modify_verified_access_instance_logging_configuration/2,
         modify_verified_access_instance_logging_configuration/3,
         modify_verified_access_trust_provider/2,
         modify_verified_access_trust_provider/3,
         modify_volume/2,
         modify_volume/3,
         modify_volume_attribute/2,
         modify_volume_attribute/3,
         modify_vpc_attribute/2,
         modify_vpc_attribute/3,
         modify_vpc_endpoint/2,
         modify_vpc_endpoint/3,
         modify_vpc_endpoint_connection_notification/2,
         modify_vpc_endpoint_connection_notification/3,
         modify_vpc_endpoint_service_configuration/2,
         modify_vpc_endpoint_service_configuration/3,
         modify_vpc_endpoint_service_payer_responsibility/2,
         modify_vpc_endpoint_service_payer_responsibility/3,
         modify_vpc_endpoint_service_permissions/2,
         modify_vpc_endpoint_service_permissions/3,
         modify_vpc_peering_connection_options/2,
         modify_vpc_peering_connection_options/3,
         modify_vpc_tenancy/2,
         modify_vpc_tenancy/3,
         modify_vpn_connection/2,
         modify_vpn_connection/3,
         modify_vpn_connection_options/2,
         modify_vpn_connection_options/3,
         modify_vpn_tunnel_certificate/2,
         modify_vpn_tunnel_certificate/3,
         modify_vpn_tunnel_options/2,
         modify_vpn_tunnel_options/3,
         monitor_instances/2,
         monitor_instances/3,
         move_address_to_vpc/2,
         move_address_to_vpc/3,
         move_byoip_cidr_to_ipam/2,
         move_byoip_cidr_to_ipam/3,
         provision_byoip_cidr/2,
         provision_byoip_cidr/3,
         provision_ipam_byoasn/2,
         provision_ipam_byoasn/3,
         provision_ipam_pool_cidr/2,
         provision_ipam_pool_cidr/3,
         provision_public_ipv4_pool_cidr/2,
         provision_public_ipv4_pool_cidr/3,
         purchase_capacity_block/2,
         purchase_capacity_block/3,
         purchase_host_reservation/2,
         purchase_host_reservation/3,
         purchase_reserved_instances_offering/2,
         purchase_reserved_instances_offering/3,
         purchase_scheduled_instances/2,
         purchase_scheduled_instances/3,
         reboot_instances/2,
         reboot_instances/3,
         register_image/2,
         register_image/3,
         register_instance_event_notification_attributes/2,
         register_instance_event_notification_attributes/3,
         register_transit_gateway_multicast_group_members/2,
         register_transit_gateway_multicast_group_members/3,
         register_transit_gateway_multicast_group_sources/2,
         register_transit_gateway_multicast_group_sources/3,
         reject_transit_gateway_multicast_domain_associations/2,
         reject_transit_gateway_multicast_domain_associations/3,
         reject_transit_gateway_peering_attachment/2,
         reject_transit_gateway_peering_attachment/3,
         reject_transit_gateway_vpc_attachment/2,
         reject_transit_gateway_vpc_attachment/3,
         reject_vpc_endpoint_connections/2,
         reject_vpc_endpoint_connections/3,
         reject_vpc_peering_connection/2,
         reject_vpc_peering_connection/3,
         release_address/2,
         release_address/3,
         release_hosts/2,
         release_hosts/3,
         release_ipam_pool_allocation/2,
         release_ipam_pool_allocation/3,
         replace_iam_instance_profile_association/2,
         replace_iam_instance_profile_association/3,
         replace_network_acl_association/2,
         replace_network_acl_association/3,
         replace_network_acl_entry/2,
         replace_network_acl_entry/3,
         replace_route/2,
         replace_route/3,
         replace_route_table_association/2,
         replace_route_table_association/3,
         replace_transit_gateway_route/2,
         replace_transit_gateway_route/3,
         replace_vpn_tunnel/2,
         replace_vpn_tunnel/3,
         report_instance_status/2,
         report_instance_status/3,
         request_spot_fleet/2,
         request_spot_fleet/3,
         request_spot_instances/2,
         request_spot_instances/3,
         reset_address_attribute/2,
         reset_address_attribute/3,
         reset_ebs_default_kms_key_id/2,
         reset_ebs_default_kms_key_id/3,
         reset_fpga_image_attribute/2,
         reset_fpga_image_attribute/3,
         reset_image_attribute/2,
         reset_image_attribute/3,
         reset_instance_attribute/2,
         reset_instance_attribute/3,
         reset_network_interface_attribute/2,
         reset_network_interface_attribute/3,
         reset_snapshot_attribute/2,
         reset_snapshot_attribute/3,
         restore_address_to_classic/2,
         restore_address_to_classic/3,
         restore_image_from_recycle_bin/2,
         restore_image_from_recycle_bin/3,
         restore_managed_prefix_list_version/2,
         restore_managed_prefix_list_version/3,
         restore_snapshot_from_recycle_bin/2,
         restore_snapshot_from_recycle_bin/3,
         restore_snapshot_tier/2,
         restore_snapshot_tier/3,
         revoke_client_vpn_ingress/2,
         revoke_client_vpn_ingress/3,
         revoke_security_group_egress/2,
         revoke_security_group_egress/3,
         revoke_security_group_ingress/2,
         revoke_security_group_ingress/3,
         run_instances/2,
         run_instances/3,
         run_scheduled_instances/2,
         run_scheduled_instances/3,
         search_local_gateway_routes/2,
         search_local_gateway_routes/3,
         search_transit_gateway_multicast_groups/2,
         search_transit_gateway_multicast_groups/3,
         search_transit_gateway_routes/2,
         search_transit_gateway_routes/3,
         send_diagnostic_interrupt/2,
         send_diagnostic_interrupt/3,
         start_instances/2,
         start_instances/3,
         start_network_insights_access_scope_analysis/2,
         start_network_insights_access_scope_analysis/3,
         start_network_insights_analysis/2,
         start_network_insights_analysis/3,
         start_vpc_endpoint_service_private_dns_verification/2,
         start_vpc_endpoint_service_private_dns_verification/3,
         stop_instances/2,
         stop_instances/3,
         terminate_client_vpn_connections/2,
         terminate_client_vpn_connections/3,
         terminate_instances/2,
         terminate_instances/3,
         unassign_ipv6_addresses/2,
         unassign_ipv6_addresses/3,
         unassign_private_ip_addresses/2,
         unassign_private_ip_addresses/3,
         unassign_private_nat_gateway_address/2,
         unassign_private_nat_gateway_address/3,
         unlock_snapshot/2,
         unlock_snapshot/3,
         unmonitor_instances/2,
         unmonitor_instances/3,
         update_security_group_rule_descriptions_egress/2,
         update_security_group_rule_descriptions_egress/3,
         update_security_group_rule_descriptions_ingress/2,
         update_security_group_rule_descriptions_ingress/3,
         withdraw_byoip_cidr/2,
         withdraw_byoip_cidr/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts an Elastic IP address transfer.
%%
%% For more information, see Accept a transferred Elastic IP address:
%% https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#using-instance-addressing-eips-transfer-accept
%% in the Amazon Virtual Private Cloud User Guide.
accept_address_transfer(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_address_transfer(Client, Input, []).
accept_address_transfer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptAddressTransfer">>, Input, Options).

%% @doc Accepts the Convertible Reserved Instance exchange quote described in
%% the `GetReservedInstancesExchangeQuote' call.
accept_reserved_instances_exchange_quote(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_reserved_instances_exchange_quote(Client, Input, []).
accept_reserved_instances_exchange_quote(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptReservedInstancesExchangeQuote">>, Input, Options).

%% @doc Accepts a request to associate subnets with a transit gateway
%% multicast domain.
accept_transit_gateway_multicast_domain_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_transit_gateway_multicast_domain_associations(Client, Input, []).
accept_transit_gateway_multicast_domain_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptTransitGatewayMulticastDomainAssociations">>, Input, Options).

%% @doc Accepts a transit gateway peering attachment request.
%%
%% The peering attachment must be
%% in the `pendingAcceptance' state.
accept_transit_gateway_peering_attachment(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_transit_gateway_peering_attachment(Client, Input, []).
accept_transit_gateway_peering_attachment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptTransitGatewayPeeringAttachment">>, Input, Options).

%% @doc Accepts a request to attach a VPC to a transit gateway.
%%
%% The VPC attachment must be in the `pendingAcceptance' state.
%% Use `DescribeTransitGatewayVpcAttachments' to view your pending VPC
%% attachment requests.
%% Use `RejectTransitGatewayVpcAttachment' to reject a VPC attachment
%% request.
accept_transit_gateway_vpc_attachment(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_transit_gateway_vpc_attachment(Client, Input, []).
accept_transit_gateway_vpc_attachment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptTransitGatewayVpcAttachment">>, Input, Options).

%% @doc Accepts connection requests to your VPC endpoint service.
accept_vpc_endpoint_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_vpc_endpoint_connections(Client, Input, []).
accept_vpc_endpoint_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptVpcEndpointConnections">>, Input, Options).

%% @doc Accept a VPC peering connection request.
%%
%% To accept a request, the VPC peering connection must
%% be in the `pending-acceptance' state, and you must be the owner of the
%% peer VPC.
%% Use `DescribeVpcPeeringConnections' to view your outstanding VPC
%% peering connection requests.
%%
%% For an inter-Region VPC peering connection request, you must accept the
%% VPC peering
%% connection in the Region of the accepter VPC.
accept_vpc_peering_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_vpc_peering_connection(Client, Input, []).
accept_vpc_peering_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptVpcPeeringConnection">>, Input, Options).

%% @doc Advertises an IPv4 or IPv6 address range that is provisioned for use
%% with your Amazon Web Services resources through
%% bring your own IP addresses (BYOIP).
%%
%% You can perform this operation at most once every 10 seconds, even if you
%% specify different
%% address ranges each time.
%%
%% We recommend that you stop advertising the BYOIP CIDR from other locations
%% when you advertise
%% it from Amazon Web Services. To minimize down time, you can configure your
%% Amazon Web Services resources to use an address from a
%% BYOIP CIDR before it is advertised, and then simultaneously stop
%% advertising it from the current
%% location and start advertising it through Amazon Web Services.
%%
%% It can take a few minutes before traffic to the specified addresses starts
%% routing to Amazon Web Services
%% because of BGP propagation delays.
%%
%% To stop advertising the BYOIP CIDR, use `WithdrawByoipCidr'.
advertise_byoip_cidr(Client, Input)
  when is_map(Client), is_map(Input) ->
    advertise_byoip_cidr(Client, Input, []).
advertise_byoip_cidr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AdvertiseByoipCidr">>, Input, Options).

%% @doc Allocates an Elastic IP address to your Amazon Web Services account.
%%
%% After you allocate the Elastic IP address you can associate
%% it with an instance or network interface. After you release an Elastic IP
%% address, it is released to the IP address
%% pool and can be allocated to a different Amazon Web Services account.
%%
%% You can allocate an Elastic IP address from an address pool owned by
%% Amazon Web Services or from an address pool created
%% from a public IPv4 address range that you have brought to Amazon Web
%% Services for use with your Amazon Web Services resources using bring your
%% own
%% IP addresses (BYOIP). For more information, see Bring Your Own IP
%% Addresses (BYOIP):
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html in the
%% Amazon Elastic Compute Cloud User Guide.
%%
%% If you release an Elastic IP address, you might be able to recover it. You
%% cannot recover
%% an Elastic IP address that you released after it is allocated to another
%% Amazon Web Services account. To attempt to recover an Elastic IP address
%% that you released, specify
%% it in this operation.
%%
%% For more information, see Elastic IP Addresses:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html
%% in the Amazon Elastic Compute Cloud User Guide.
%%
%% You can allocate a carrier IP address which is a public IP address from a
%% telecommunication carrier,
%% to a network interface which resides in a subnet in a Wavelength Zone (for
%% example an EC2 instance).
allocate_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_address(Client, Input, []).
allocate_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AllocateAddress">>, Input, Options).

%% @doc Allocates a Dedicated Host to your account.
%%
%% At a minimum, specify the supported
%% instance type or instance family, the Availability Zone in which to
%% allocate the host,
%% and the number of hosts to allocate.
allocate_hosts(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_hosts(Client, Input, []).
allocate_hosts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AllocateHosts">>, Input, Options).

%% @doc Allocate a CIDR from an IPAM pool.
%%
%% The Region you use should be the IPAM pool locale. The locale is the
%% Amazon Web Services Region where this IPAM pool is available for
%% allocations.
%%
%% In IPAM, an allocation is a CIDR assignment from an IPAM pool to another
%% IPAM pool or to a resource. For more information, see Allocate CIDRs:
%% https://docs.aws.amazon.com/vpc/latest/ipam/allocate-cidrs-ipam.html in
%% the Amazon VPC IPAM User Guide.
%%
%% This action creates an allocation with strong consistency. The returned
%% CIDR will not overlap with any other allocations from the same pool.
allocate_ipam_pool_cidr(Client, Input)
  when is_map(Client), is_map(Input) ->
    allocate_ipam_pool_cidr(Client, Input, []).
allocate_ipam_pool_cidr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AllocateIpamPoolCidr">>, Input, Options).

%% @doc Applies a security group to the association between the target
%% network and the Client VPN endpoint.
%%
%% This action replaces the existing
%% security groups with the specified security groups.
apply_security_groups_to_client_vpn_target_network(Client, Input)
  when is_map(Client), is_map(Input) ->
    apply_security_groups_to_client_vpn_target_network(Client, Input, []).
apply_security_groups_to_client_vpn_target_network(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ApplySecurityGroupsToClientVpnTargetNetwork">>, Input, Options).

%% @doc Assigns one or more IPv6 addresses to the specified network
%% interface.
%%
%% You can
%% specify one or more specific IPv6 addresses, or you can specify the number
%% of IPv6
%% addresses to be automatically assigned from within the subnet's IPv6
%% CIDR block range.
%% You can assign as many IPv6 addresses to a network interface as you can
%% assign private
%% IPv4 addresses, and the limit varies per instance type. For information,
%% see IP Addresses Per Network Interface Per Instance Type:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI
%% in the Amazon Elastic Compute Cloud User Guide.
%%
%% You must specify either the IPv6 addresses or the IPv6 address count in
%% the request.
%%
%% You can optionally use Prefix Delegation on the network interface. You
%% must specify
%% either the IPV6 Prefix Delegation prefixes, or the IPv6 Prefix Delegation
%% count. For
%% information, see
%% Assigning prefixes to Amazon EC2 network interfaces:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-prefix-eni.html in
%% the Amazon Elastic Compute Cloud User Guide.
assign_ipv6_addresses(Client, Input)
  when is_map(Client), is_map(Input) ->
    assign_ipv6_addresses(Client, Input, []).
assign_ipv6_addresses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssignIpv6Addresses">>, Input, Options).

%% @doc Assigns one or more secondary private IP addresses to the specified
%% network interface.
%%
%% You can specify one or more specific secondary IP addresses, or you can
%% specify the number
%% of secondary IP addresses to be automatically assigned within the
%% subnet's CIDR block range.
%% The number of secondary IP addresses that you can assign to an instance
%% varies by instance type.
%% For information about instance types, see Instance Types:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html in
%% the Amazon Elastic Compute Cloud User Guide. For more information about
%% Elastic IP addresses, see Elastic IP Addresses:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html
%% in the Amazon Elastic Compute Cloud User Guide.
%%
%% When you move a secondary private IP address to another network interface,
%% any Elastic IP address
%% that is associated with the IP address is also moved.
%%
%% Remapping an IP address is an asynchronous operation. When you move an IP
%% address from one network
%% interface to another, check `network/interfaces/macs/mac/local-ipv4s'
%% in the instance
%% metadata to confirm that the remapping is complete.
%%
%% You must specify either the IP addresses or the IP address count in the
%% request.
%%
%% You can optionally use Prefix Delegation on the network interface. You
%% must specify
%% either the IPv4 Prefix Delegation prefixes, or the IPv4 Prefix Delegation
%% count. For
%% information, see
%% Assigning prefixes to Amazon EC2 network interfaces:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-prefix-eni.html in
%% the Amazon Elastic Compute Cloud User Guide.
assign_private_ip_addresses(Client, Input)
  when is_map(Client), is_map(Input) ->
    assign_private_ip_addresses(Client, Input, []).
assign_private_ip_addresses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssignPrivateIpAddresses">>, Input, Options).

%% @doc Assigns one or more private IPv4 addresses to a private NAT gateway.
%%
%% For more information, see
%% Work with NAT gateways:
%% https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-working-with
%% in the Amazon VPC User Guide.
assign_private_nat_gateway_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    assign_private_nat_gateway_address(Client, Input, []).
assign_private_nat_gateway_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssignPrivateNatGatewayAddress">>, Input, Options).

%% @doc Associates an Elastic IP address, or carrier IP address (for
%% instances that are in
%% subnets in Wavelength Zones) with an instance or a network interface.
%%
%% Before you can use an
%% Elastic IP address, you must allocate it to your account.
%%
%% If the Elastic IP address is already
%% associated with a different instance, it is disassociated from that
%% instance and associated
%% with the specified instance. If you associate an Elastic IP address with
%% an instance that has
%% an existing Elastic IP address, the existing address is disassociated from
%% the instance, but
%% remains allocated to your account.
%%
%% [Subnets in Wavelength Zones] You can associate an IP address from the
%% telecommunication
%% carrier to the instance or network interface.
%%
%% You cannot associate an Elastic IP address with an interface in a
%% different network border group.
%%
%% This is an idempotent operation. If you perform the operation more than
%% once, Amazon EC2
%% doesn't return an error, and you may be charged for each time the
%% Elastic IP address is
%% remapped to the same instance. For more information, see the Elastic IP
%% Addresses section of Amazon EC2
%% Pricing: http://aws.amazon.com/ec2/pricing/.
associate_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_address(Client, Input, []).
associate_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateAddress">>, Input, Options).

%% @doc Associates a target network with a Client VPN endpoint.
%%
%% A target network is a subnet in a VPC. You can associate multiple subnets
%% from the same VPC with a Client VPN endpoint. You can associate only one
%% subnet in each Availability Zone. We recommend that you associate at least
%% two subnets to provide Availability Zone redundancy.
%%
%% If you specified a VPC when you created the Client VPN endpoint or if you
%% have previous subnet associations, the specified subnet must be in the
%% same VPC. To specify a subnet that's in a different VPC, you must
%% first modify the Client VPN endpoint (`ModifyClientVpnEndpoint') and
%% change the VPC that's associated with it.
associate_client_vpn_target_network(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_client_vpn_target_network(Client, Input, []).
associate_client_vpn_target_network(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateClientVpnTargetNetwork">>, Input, Options).

%% @doc Associates a set of DHCP options (that you've previously created)
%% with the specified VPC, or associates no DHCP options with the VPC.
%%
%% After you associate the options with the VPC, any existing instances and
%% all new instances that you launch in that VPC use the options. You
%% don't need to restart or relaunch the instances. They automatically
%% pick up the changes within a few hours, depending on how frequently the
%% instance renews its DHCP lease. You can explicitly renew the lease using
%% the operating system on the instance.
%%
%% For more information, see DHCP options sets:
%% https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html
%% in the Amazon VPC User Guide.
associate_dhcp_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_dhcp_options(Client, Input, []).
associate_dhcp_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateDhcpOptions">>, Input, Options).

%% @doc Associates an Identity and Access Management (IAM) role with an
%% Certificate Manager (ACM) certificate.
%%
%% This enables the certificate to be used by the ACM for Nitro Enclaves
%% application inside an enclave. For more
%% information, see Certificate Manager for Nitro Enclaves:
%% https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave-refapp.html
%% in the Amazon Web Services Nitro Enclaves
%% User Guide.
%%
%% When the IAM role is associated with the ACM certificate, the certificate,
%% certificate chain, and encrypted
%% private key are placed in an Amazon S3 location that only the associated
%% IAM role can access. The private key of the certificate
%% is encrypted with an Amazon Web Services managed key that has an attached
%% attestation-based key policy.
%%
%% To enable the IAM role to access the Amazon S3 object, you must grant it
%% permission to call `s3:GetObject'
%% on the Amazon S3 bucket returned by the command. To enable the IAM role to
%% access the KMS key,
%% you must grant it permission to call `kms:Decrypt' on the KMS key
%% returned by the command.
%% For more information, see
%% Grant the role permission to access the certificate and encryption key:
%% https://docs.aws.amazon.com/enclaves/latest/user/nitro-enclave-refapp.html#add-policy
%% in the
%% Amazon Web Services Nitro Enclaves User Guide.
associate_enclave_certificate_iam_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_enclave_certificate_iam_role(Client, Input, []).
associate_enclave_certificate_iam_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateEnclaveCertificateIamRole">>, Input, Options).

%% @doc Associates an IAM instance profile with a running or stopped
%% instance.
%%
%% You cannot
%% associate more than one IAM instance profile with an instance.
associate_iam_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_iam_instance_profile(Client, Input, []).
associate_iam_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateIamInstanceProfile">>, Input, Options).

%% @doc Associates one or more targets with an event window.
%%
%% Only one type of target (instance IDs,
%% Dedicated Host IDs, or tags) can be specified with an event window.
%%
%% For more information, see Define event windows for scheduled
%% events:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html in
%% the Amazon EC2 User Guide.
associate_instance_event_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_instance_event_window(Client, Input, []).
associate_instance_event_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateInstanceEventWindow">>, Input, Options).

%% @doc Associates your Autonomous System Number (ASN) with a BYOIP CIDR that
%% you own in the same Amazon Web Services Region.
%%
%% For more information, see Tutorial: Bring your ASN to IPAM:
%% https://docs.aws.amazon.com/vpc/latest/ipam/tutorials-byoasn.html in the
%% Amazon VPC IPAM guide.
%%
%% After the association succeeds, the ASN is eligible for
%% advertisement. You can view the association with DescribeByoipCidrs:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeByoipCidrs.html.
%% You can advertise the CIDR with AdvertiseByoipCidr:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AdvertiseByoipCidr.html.
associate_ipam_byoasn(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_ipam_byoasn(Client, Input, []).
associate_ipam_byoasn(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateIpamByoasn">>, Input, Options).

%% @doc Associates an IPAM resource discovery with an Amazon VPC IPAM.
%%
%% A resource discovery is an IPAM component that enables IPAM to manage and
%% monitor resources that belong to the owning account.
associate_ipam_resource_discovery(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_ipam_resource_discovery(Client, Input, []).
associate_ipam_resource_discovery(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateIpamResourceDiscovery">>, Input, Options).

%% @doc Associates Elastic IP addresses (EIPs) and private IPv4 addresses
%% with a public NAT gateway.
%%
%% For more information,
%% see Work with NAT gateways:
%% https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-working-with
%% in the Amazon VPC User Guide.
%%
%% By default, you can associate up to 2 Elastic IP addresses per public NAT
%% gateway. You can increase the limit by requesting a quota adjustment. For
%% more information, see Elastic IP address quotas:
%% https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html#vpc-limits-eips
%% in the Amazon VPC User Guide.
%%
%% When you associate an EIP or secondary EIPs with a public NAT gateway, the
%% network border group of the EIPs must match the network border group of
%% the Availability Zone (AZ) that the public NAT gateway is in. If it's
%% not the same, the EIP will fail to associate. You can see the network
%% border group for the subnet's AZ by viewing the details of the subnet.
%% Similarly, you can view the network border group of an EIP by viewing the
%% details of the EIP address. For more information about network border
%% groups and EIPs, see Allocate an Elastic IP address:
%% https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#allocate-eip
%% in the Amazon VPC User Guide.
associate_nat_gateway_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_nat_gateway_address(Client, Input, []).
associate_nat_gateway_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateNatGatewayAddress">>, Input, Options).

%% @doc Associates a subnet in your VPC or an internet gateway or virtual
%% private gateway
%% attached to your VPC with a route table in your VPC.
%%
%% This association causes traffic
%% from the subnet or gateway to be routed according to the routes in the
%% route table. The
%% action returns an association ID, which you need in order to disassociate
%% the route
%% table later. A route table can be associated with multiple subnets.
%%
%% For more information, see Route tables:
%% https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html in
%% the
%% Amazon VPC User Guide.
associate_route_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_route_table(Client, Input, []).
associate_route_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateRouteTable">>, Input, Options).

%% @doc Associates a CIDR block with your subnet.
%%
%% You can only associate a single IPv6 CIDR
%% block with your subnet.
associate_subnet_cidr_block(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_subnet_cidr_block(Client, Input, []).
associate_subnet_cidr_block(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateSubnetCidrBlock">>, Input, Options).

%% @doc Associates the specified subnets and transit gateway attachments with
%% the specified transit gateway multicast domain.
%%
%% The transit gateway attachment must be in the available state before you
%% can add a resource. Use DescribeTransitGatewayAttachments:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGatewayAttachments.html
%% to see the state of the attachment.
associate_transit_gateway_multicast_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_transit_gateway_multicast_domain(Client, Input, []).
associate_transit_gateway_multicast_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateTransitGatewayMulticastDomain">>, Input, Options).

%% @doc Associates the specified transit gateway attachment with a transit
%% gateway policy table.
associate_transit_gateway_policy_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_transit_gateway_policy_table(Client, Input, []).
associate_transit_gateway_policy_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateTransitGatewayPolicyTable">>, Input, Options).

%% @doc Associates the specified attachment with the specified transit
%% gateway route table.
%%
%% You can
%% associate only one route table with an attachment.
associate_transit_gateway_route_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_transit_gateway_route_table(Client, Input, []).
associate_transit_gateway_route_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateTransitGatewayRouteTable">>, Input, Options).

%% @doc Associates a branch network interface with a trunk network interface.
%%
%% Before you create the association, run the create-network-interface:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateNetworkInterface.html
%% command and set
%% `--interface-type' to `trunk'. You must also create a network
%% interface for each branch network interface that you want to associate
%% with the trunk network interface.
associate_trunk_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_trunk_interface(Client, Input, []).
associate_trunk_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateTrunkInterface">>, Input, Options).

%% @doc Associates a CIDR block with your VPC.
%%
%% You can associate a secondary IPv4 CIDR block,
%% an Amazon-provided IPv6 CIDR block, or an IPv6 CIDR block from an IPv6
%% address pool that
%% you provisioned through bring your own IP addresses (BYOIP:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html).
%%
%% You must specify one of the following in the request: an IPv4 CIDR block,
%% an IPv6
%% pool, or an Amazon-provided IPv6 CIDR block.
%%
%% For more information about associating CIDR blocks with your VPC and
%% applicable
%% restrictions, see IP addressing for your VPCs and subnets:
%% https://docs.aws.amazon.com/vpc/latest/userguide/vpc-ip-addressing.html
%% in the Amazon VPC User Guide.
associate_vpc_cidr_block(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_vpc_cidr_block(Client, Input, []).
associate_vpc_cidr_block(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateVpcCidrBlock">>, Input, Options).

%% @doc
%% This action is deprecated.
%%
%% Links an EC2-Classic instance to a ClassicLink-enabled VPC through one or
%% more of the VPC
%% security groups. You cannot link an EC2-Classic instance to more than one
%% VPC at a time. You
%% can only link an instance that's in the `running' state. An
%% instance is
%% automatically unlinked from a VPC when it's stopped - you can link it
%% to the VPC again when
%% you restart it.
%%
%% After you've linked an instance, you cannot change the VPC security
%% groups that are associated with it. To change the security groups, you
%% must first unlink the instance, and then link it again.
%%
%% Linking your instance to a VPC is sometimes referred to as attaching your
%% instance.
attach_classic_link_vpc(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_classic_link_vpc(Client, Input, []).
attach_classic_link_vpc(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachClassicLinkVpc">>, Input, Options).

%% @doc Attaches an internet gateway or a virtual private gateway to a VPC,
%% enabling connectivity
%% between the internet and the VPC.
%%
%% For more information, see Internet gateways:
%% https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Internet_Gateway.html
%% in the
%% Amazon VPC User Guide.
attach_internet_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_internet_gateway(Client, Input, []).
attach_internet_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachInternetGateway">>, Input, Options).

%% @doc Attaches a network interface to an instance.
attach_network_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_network_interface(Client, Input, []).
attach_network_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachNetworkInterface">>, Input, Options).

%% @doc Attaches the specified Amazon Web Services Verified Access trust
%% provider to the specified Amazon Web Services Verified Access instance.
attach_verified_access_trust_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_verified_access_trust_provider(Client, Input, []).
attach_verified_access_trust_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachVerifiedAccessTrustProvider">>, Input, Options).

%% @doc Attaches an EBS volume to a running or stopped instance and exposes
%% it to the instance
%% with the specified device name.
%%
%% Encrypted EBS volumes must be attached to instances that support Amazon
%% EBS encryption. For
%% more information, see Amazon EBS encryption:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html in
%% the Amazon Elastic Compute Cloud User Guide.
%%
%% After you attach an EBS volume, you must make it available. For more
%% information, see
%% Make an EBS volume available for use:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-using-volumes.html.
%%
%% If a volume has an Amazon Web Services Marketplace product code:
%%
%% The volume can be attached only to a stopped instance.
%%
%% Amazon Web Services Marketplace product codes are copied from the volume
%% to the instance.
%%
%% You must be subscribed to the product.
%%
%% The instance type and operating system of the instance must support the
%% product. For
%% example, you can't detach a volume from a Windows instance and attach
%% it to a Linux
%% instance.
%%
%% For more information, see Attach an Amazon EBS volume to an instance:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-attaching-volume.html
%% in the
%% Amazon Elastic Compute Cloud User Guide.
attach_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_volume(Client, Input, []).
attach_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachVolume">>, Input, Options).

%% @doc Attaches a virtual private gateway to a VPC.
%%
%% You can attach one virtual private
%% gateway to one VPC at a time.
%%
%% For more information, see Amazon Web Services Site-to-Site VPN:
%% https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html in the Amazon
%% Web Services Site-to-Site VPN
%% User Guide.
attach_vpn_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_vpn_gateway(Client, Input, []).
attach_vpn_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachVpnGateway">>, Input, Options).

%% @doc Adds an ingress authorization rule to a Client VPN endpoint.
%%
%% Ingress authorization rules act as
%% firewall rules that grant access to networks. You must configure ingress
%% authorization rules to
%% enable clients to access resources in Amazon Web Services or on-premises
%% networks.
authorize_client_vpn_ingress(Client, Input)
  when is_map(Client), is_map(Input) ->
    authorize_client_vpn_ingress(Client, Input, []).
authorize_client_vpn_ingress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AuthorizeClientVpnIngress">>, Input, Options).

%% @doc Adds the specified outbound (egress) rules to a security group for
%% use with a VPC.
%%
%% An outbound rule permits instances to send traffic to the specified IPv4
%% or IPv6 CIDR
%% address ranges, or to the instances that are associated with the specified
%% source
%% security groups. When specifying an outbound rule for your security group
%% in a VPC, the
%% `IpPermissions' must include a destination for the traffic.
%%
%% You specify a protocol for each rule (for example, TCP).
%% For the TCP and UDP protocols, you must also specify the destination port
%% or port range.
%% For the ICMP protocol, you must also specify the ICMP type and code.
%% You can use -1 for the type or code to mean all types or all codes.
%%
%% Rule changes are propagated to affected instances as quickly as possible.
%% However, a small delay might occur.
%%
%% For information about VPC security group quotas, see Amazon VPC quotas:
%% https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html.
%%
%% If you want to reference a security group across VPCs attached to a
%% transit gateway using the
%% security group
%% referencing feature:
%% https://docs.aws.amazon.com/vpc/latest/tgw/tgw-transit-gateways.html#create-tgw,
%% note that you can only reference security groups
%% for ingress rules. You cannot reference a security group for egress rules.
authorize_security_group_egress(Client, Input)
  when is_map(Client), is_map(Input) ->
    authorize_security_group_egress(Client, Input, []).
authorize_security_group_egress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AuthorizeSecurityGroupEgress">>, Input, Options).

%% @doc Adds the specified inbound (ingress) rules to a security group.
%%
%% An inbound rule permits instances to receive traffic from the specified
%% IPv4 or IPv6 CIDR
%% address range, or from the instances that are associated with the
%% specified destination security
%% groups. When specifying an inbound rule for your security group in a VPC,
%% the
%% `IpPermissions' must include a source for the traffic.
%%
%% You specify a protocol for each rule (for example, TCP).
%% For TCP and UDP, you must also specify the destination port or port range.
%% For ICMP/ICMPv6, you must also specify the ICMP/ICMPv6 type and code.
%% You can use -1 to mean all types or all codes.
%%
%% Rule changes are propagated to instances within the security group as
%% quickly as possible.
%% However, a small delay might occur.
%%
%% For more information about VPC security group quotas, see Amazon VPC
%% quotas:
%% https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html.
authorize_security_group_ingress(Client, Input)
  when is_map(Client), is_map(Input) ->
    authorize_security_group_ingress(Client, Input, []).
authorize_security_group_ingress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AuthorizeSecurityGroupIngress">>, Input, Options).

%% @doc Bundles an Amazon instance store-backed Windows instance.
%%
%% During bundling, only the root device volume (C:\) is bundled. Data on
%% other instance
%% store volumes is not preserved.
%%
%% This action is not applicable for Linux/Unix instances or Windows
%% instances that are
%% backed by Amazon EBS.
bundle_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    bundle_instance(Client, Input, []).
bundle_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BundleInstance">>, Input, Options).

%% @doc Cancels a bundling operation for an instance store-backed Windows
%% instance.
cancel_bundle_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_bundle_task(Client, Input, []).
cancel_bundle_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelBundleTask">>, Input, Options).

%% @doc Cancels the specified Capacity Reservation, releases the reserved
%% capacity, and changes the Capacity Reservation's state to
%% `cancelled'.
%%
%% Instances running in the reserved capacity continue running until you stop
%% them. Stopped
%% instances that target the Capacity Reservation can no longer launch.
%% Modify these instances to either
%% target a different Capacity Reservation, launch On-Demand Instance
%% capacity, or run in any open Capacity Reservation
%% that has matching attributes and sufficient capacity.
cancel_capacity_reservation(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_capacity_reservation(Client, Input, []).
cancel_capacity_reservation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelCapacityReservation">>, Input, Options).

%% @doc Cancels one or more Capacity Reservation Fleets.
%%
%% When you cancel a Capacity Reservation
%% Fleet, the following happens:
%%
%% The Capacity Reservation Fleet's status changes to `cancelled'.
%%
%% The individual Capacity Reservations in the Fleet are cancelled. Instances
%% running
%% in the Capacity Reservations at the time of cancelling the Fleet continue
%% to run in
%% shared capacity.
%%
%% The Fleet stops creating new Capacity Reservations.
cancel_capacity_reservation_fleets(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_capacity_reservation_fleets(Client, Input, []).
cancel_capacity_reservation_fleets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelCapacityReservationFleets">>, Input, Options).

%% @doc Cancels an active conversion task.
%%
%% The task can be the import of an instance or volume. The action removes
%% all
%% artifacts of the conversion, including a partially uploaded volume or
%% instance. If the conversion is complete or is
%% in the process of transferring the final disk image, the command fails and
%% returns an exception.
%%
%% For more information, see Importing a Virtual Machine Using the Amazon
%% EC2 CLI:
%% https://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/ec2-cli-vmimport-export.html.
cancel_conversion_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_conversion_task(Client, Input, []).
cancel_conversion_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelConversionTask">>, Input, Options).

%% @doc Cancels an active export task.
%%
%% The request removes all artifacts of the export, including any
%% partially-created
%% Amazon S3 objects. If the export task is complete or is in the process of
%% transferring the final disk image, the
%% command fails and returns an error.
cancel_export_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_export_task(Client, Input, []).
cancel_export_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelExportTask">>, Input, Options).

%% @doc Removes your Amazon Web Services account from the launch permissions
%% for the specified AMI.
%%
%% For more information, see Cancel having an AMI shared with
%% your Amazon Web Services account:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/cancel-sharing-an-AMI.html
%% in the Amazon EC2 User Guide.
cancel_image_launch_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_image_launch_permission(Client, Input, []).
cancel_image_launch_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelImageLaunchPermission">>, Input, Options).

%% @doc Cancels an in-process import virtual machine or import snapshot task.
cancel_import_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_import_task(Client, Input, []).
cancel_import_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelImportTask">>, Input, Options).

%% @doc Cancels the specified Reserved Instance listing in the Reserved
%% Instance Marketplace.
%%
%% For more information, see
%% Reserved Instance Marketplace:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html
%% in the Amazon EC2 User Guide.
cancel_reserved_instances_listing(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_reserved_instances_listing(Client, Input, []).
cancel_reserved_instances_listing(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelReservedInstancesListing">>, Input, Options).

%% @doc Cancels the specified Spot Fleet requests.
%%
%% After you cancel a Spot Fleet request, the Spot Fleet launches no new
%% instances.
%%
%% You must also specify whether a canceled Spot Fleet request should
%% terminate its instances. If you
%% choose to terminate the instances, the Spot Fleet request enters the
%% `cancelled_terminating' state. Otherwise, the Spot Fleet request
%% enters
%% the `cancelled_running' state and the instances continue to run until
%% they
%% are interrupted or you terminate them manually.
cancel_spot_fleet_requests(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_spot_fleet_requests(Client, Input, []).
cancel_spot_fleet_requests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelSpotFleetRequests">>, Input, Options).

%% @doc Cancels one or more Spot Instance requests.
%%
%% Canceling a Spot Instance request does not terminate running Spot
%% Instances
%% associated with the request.
cancel_spot_instance_requests(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_spot_instance_requests(Client, Input, []).
cancel_spot_instance_requests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelSpotInstanceRequests">>, Input, Options).

%% @doc Determines whether a product code is associated with an instance.
%%
%% This action can only
%% be used by the owner of the product code. It is useful when a product code
%% owner must
%% verify whether another user's instance is eligible for support.
confirm_product_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    confirm_product_instance(Client, Input, []).
confirm_product_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfirmProductInstance">>, Input, Options).

%% @doc Copies the specified Amazon FPGA Image (AFI) to the current Region.
copy_fpga_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_fpga_image(Client, Input, []).
copy_fpga_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyFpgaImage">>, Input, Options).

%% @doc Initiates the copy of an AMI.
%%
%% You can copy an AMI from one Region to another, or from a
%% Region to an Outpost. You can't copy an AMI from an Outpost to a
%% Region, from one Outpost to
%% another, or within the same Outpost. To copy an AMI to another partition,
%% see CreateStoreImageTask:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateStoreImageTask.html.
%%
%% To copy an AMI from one Region to another, specify the source Region using
%% the SourceRegion parameter, and specify the destination Region using its
%% endpoint. Copies of encrypted backing snapshots for the AMI are encrypted.
%% Copies of
%% unencrypted backing snapshots remain unencrypted, unless you set
%% `Encrypted' during
%% the copy operation. You cannot create an unencrypted copy of an encrypted
%% backing
%% snapshot.
%%
%% To copy an AMI from a Region to an Outpost, specify the source Region
%% using the SourceRegion parameter, and specify the ARN of the destination
%% Outpost using DestinationOutpostArn. Backing snapshots copied
%% to an Outpost are encrypted by default using the default encryption key
%% for the Region, or a
%% different key that you specify in the request using KmsKeyId.
%% Outposts do not support unencrypted snapshots. For more information,
%% Amazon EBS local
%% snapshots on Outposts:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#ami
%% in the Amazon EC2 User Guide.
%%
%% For more information about the prerequisites and limits when copying an
%% AMI, see Copy an AMI:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/CopyingAMIs.html in
%% the
%% Amazon EC2 User Guide.
copy_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_image(Client, Input, []).
copy_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyImage">>, Input, Options).

%% @doc Copies a point-in-time snapshot of an EBS volume and stores it in
%% Amazon S3.
%%
%% You can copy a
%% snapshot within the same Region, from one Region to another, or from a
%% Region to an Outpost.
%% You can't copy a snapshot from an Outpost to a Region, from one
%% Outpost to another, or within
%% the same Outpost.
%%
%% You can use the snapshot to create EBS volumes or Amazon Machine Images
%% (AMIs).
%%
%% When copying snapshots to a Region, copies of encrypted EBS snapshots
%% remain encrypted.
%% Copies of unencrypted snapshots remain unencrypted, unless you enable
%% encryption for the
%% snapshot copy operation. By default, encrypted snapshot copies use the
%% default Key Management Service (KMS)
%% KMS key; however, you can specify a different KMS key. To copy an
%% encrypted
%% snapshot that has been shared from another account, you must have
%% permissions for the KMS key
%% used to encrypt the snapshot.
%%
%% Snapshots copied to an Outpost are encrypted by default using the default
%% encryption key for the Region, or a different key that you specify in the
%% request using
%% KmsKeyId. Outposts do not support unencrypted
%% snapshots. For more information,
%% Amazon EBS local snapshots on Outposts:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshots-outposts.html#ami
%% in the Amazon Elastic Compute Cloud User Guide.
%%
%% Snapshots created by copying another snapshot have an arbitrary volume ID
%% that should not
%% be used for any purpose.
%%
%% For more information, see Copy an Amazon EBS snapshot:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-copy-snapshot.html
%% in the
%% Amazon Elastic Compute Cloud User Guide.
copy_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_snapshot(Client, Input, []).
copy_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopySnapshot">>, Input, Options).

%% @doc Creates a new Capacity Reservation with the specified attributes.
%%
%% Capacity Reservations enable you to reserve capacity for your Amazon EC2
%% instances in a specific Availability Zone for any duration. This
%% gives you the flexibility to selectively add capacity reservations and
%% still get the Regional RI discounts for that usage.
%% By creating Capacity Reservations, you ensure that you always have access
%% to Amazon EC2 capacity when you need it, for as long as you need it.
%% For more information, see Capacity Reservations:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-capacity-reservations.html
%% in the Amazon EC2 User Guide.
%%
%% Your request to create a Capacity Reservation could fail if Amazon EC2
%% does not have sufficient capacity to
%% fulfill the request. If your request fails due to Amazon EC2 capacity
%% constraints, either try
%% again at a later time, try in a different Availability Zone, or request a
%% smaller
%% capacity reservation. If your application is flexible across instance
%% types and sizes,
%% try to create a Capacity Reservation with different instance attributes.
%%
%% Your request could also fail if the requested quantity exceeds your
%% On-Demand Instance
%% limit for the selected instance type. If your request fails due to limit
%% constraints,
%% increase your On-Demand Instance limit for the required instance type and
%% try again. For
%% more information about increasing your instance limits, see Amazon EC2
%% Service
%% Quotas:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-resource-limits.html
%% in the Amazon EC2 User Guide.
create_capacity_reservation(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_capacity_reservation(Client, Input, []).
create_capacity_reservation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCapacityReservation">>, Input, Options).

%% @doc Creates a Capacity Reservation Fleet.
%%
%% For more information, see Create a Capacity
%% Reservation Fleet:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/work-with-cr-fleets.html#create-crfleet
%% in the Amazon EC2 User Guide.
create_capacity_reservation_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_capacity_reservation_fleet(Client, Input, []).
create_capacity_reservation_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCapacityReservationFleet">>, Input, Options).

%% @doc Creates a carrier gateway.
%%
%% For more information about carrier gateways, see Carrier gateways:
%% https://docs.aws.amazon.com/wavelength/latest/developerguide/how-wavelengths-work.html#wavelength-carrier-gateway
%% in the Amazon Web Services Wavelength Developer Guide.
create_carrier_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_carrier_gateway(Client, Input, []).
create_carrier_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCarrierGateway">>, Input, Options).

%% @doc Creates a Client VPN endpoint.
%%
%% A Client VPN endpoint is the resource you create and configure to
%% enable and manage client VPN sessions. It is the destination endpoint at
%% which all client VPN sessions
%% are terminated.
create_client_vpn_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_client_vpn_endpoint(Client, Input, []).
create_client_vpn_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateClientVpnEndpoint">>, Input, Options).

%% @doc Adds a route to a network to a Client VPN endpoint.
%%
%% Each Client VPN endpoint has a route table that describes the
%% available destination network routes. Each route in the route table
%% specifies the path for traﬃc to speciﬁc resources or networks.
create_client_vpn_route(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_client_vpn_route(Client, Input, []).
create_client_vpn_route(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateClientVpnRoute">>, Input, Options).

%% @doc
%% Creates a range of customer-owned IP addresses.
create_coip_cidr(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_coip_cidr(Client, Input, []).
create_coip_cidr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCoipCidr">>, Input, Options).

%% @doc Creates a pool of customer-owned IP (CoIP) addresses.
create_coip_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_coip_pool(Client, Input, []).
create_coip_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCoipPool">>, Input, Options).

%% @doc Provides information to Amazon Web Services about your customer
%% gateway device.
%%
%% The
%% customer gateway device is the appliance at your end of the VPN
%% connection. You
%% must provide the IP address of the customer gateway device’s external
%% interface. The IP address must be static and can be behind a device
%% performing network
%% address translation (NAT).
%%
%% For devices that use Border Gateway Protocol (BGP), you can also provide
%% the device's
%% BGP Autonomous System Number (ASN). You can use an existing ASN assigned
%% to your network.
%% If you don't have an ASN already, you can use a private ASN. For more
%% information, see
%% Customer gateway
%% options for your Site-to-Site VPN connection:
%% https://docs.aws.amazon.com/vpn/latest/s2svpn/cgw-options.html in the
%% Amazon Web Services Site-to-Site VPN User Guide.
%%
%% To create more than one customer gateway with the same VPN type, IP
%% address, and
%% BGP ASN, specify a unique device name for each customer gateway. An
%% identical request
%% returns information about the existing customer gateway; it doesn't
%% create a new customer
%% gateway.
create_customer_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_customer_gateway(Client, Input, []).
create_customer_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCustomerGateway">>, Input, Options).

%% @doc Creates a default subnet with a size `/20' IPv4 CIDR block in the
%% specified Availability Zone in your default VPC.
%%
%% You can have only one default subnet
%% per Availability Zone. For more information, see Create a default
%% subnet:
%% https://docs.aws.amazon.com/vpc/latest/userguide/default-vpc.html#create-default-subnet
%% in the Amazon VPC User Guide.
create_default_subnet(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_default_subnet(Client, Input, []).
create_default_subnet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDefaultSubnet">>, Input, Options).

%% @doc Creates a default VPC with a size `/16' IPv4 CIDR block and a
%% default subnet
%% in each Availability Zone.
%%
%% For more information about the components of a default VPC,
%% see Default VPCs:
%% https://docs.aws.amazon.com/vpc/latest/userguide/default-vpc.html
%% in the Amazon VPC User Guide. You cannot specify the components of the
%% default VPC yourself.
%%
%% If you deleted your previous default VPC, you can create a default VPC.
%% You cannot have
%% more than one default VPC per Region.
create_default_vpc(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_default_vpc(Client, Input, []).
create_default_vpc(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDefaultVpc">>, Input, Options).

%% @doc Creates a set of DHCP options for your VPC.
%%
%% After creating the set, you must
%% associate it with the VPC, causing all existing and new instances that you
%% launch in
%% the VPC to use this set of DHCP options. The following are the individual
%% DHCP
%% options you can specify. For more information about the options, see RFC
%% 2132: http://www.ietf.org/rfc/rfc2132.txt.
%%
%% `domain-name-servers' - The IP addresses of up to four domain name
%% servers, or AmazonProvidedDNS. The default DHCP option set specifies
%% AmazonProvidedDNS. If specifying more than one domain name server, specify
%% the
%% IP addresses in a single parameter, separated by commas. To have your
%% instance
%% receive a custom DNS hostname as specified in `domain-name', you must
%% set `domain-name-servers' to a custom DNS server.
%%
%% `domain-name' - If you're using AmazonProvidedDNS in
%% `us-east-1', specify `ec2.internal'. If you're using
%% AmazonProvidedDNS in another Region, specify
%% `region.compute.internal' (for example,
%% `ap-northeast-1.compute.internal'). Otherwise, specify a domain
%% name (for example, `ExampleCompany.com'). This value is used to
%% complete
%% unqualified DNS hostnames. Important: Some
%% Linux operating systems accept multiple domain names separated by spaces.
%% However, Windows and other Linux operating systems treat the value as a
%% single
%% domain, which results in unexpected behavior. If your DHCP options set is
%% associated with a VPC that has instances with multiple operating systems,
%% specify only one domain name.
%%
%% `ntp-servers' - The IP addresses of up to four Network Time Protocol
%% (NTP)
%% servers.
%%
%% `netbios-name-servers' - The IP addresses of up to four NetBIOS name
%% servers.
%%
%% `netbios-node-type' - The NetBIOS node type (1, 2, 4, or 8). We
%% recommend that
%% you specify 2 (broadcast and multicast are not currently supported). For
%% more information
%% about these node types, see RFC 2132: http://www.ietf.org/rfc/rfc2132.txt.
%%
%% Your VPC automatically starts out with a set of DHCP options that includes
%% only a DNS
%% server that we provide (AmazonProvidedDNS). If you create a set of
%% options, and if your
%% VPC has an internet gateway, make sure to set the
%% `domain-name-servers'
%% option either to `AmazonProvidedDNS' or to a domain name server of
%% your
%% choice. For more information, see DHCP options sets:
%% https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html in
%% the
%% Amazon VPC User Guide.
create_dhcp_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_dhcp_options(Client, Input, []).
create_dhcp_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDhcpOptions">>, Input, Options).

%% @doc [IPv6 only] Creates an egress-only internet gateway for your VPC.
%%
%% An egress-only
%% internet gateway is used to enable outbound communication over IPv6 from
%% instances in
%% your VPC to the internet, and prevents hosts outside of your VPC from
%% initiating an IPv6
%% connection with your instance.
create_egress_only_internet_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_egress_only_internet_gateway(Client, Input, []).
create_egress_only_internet_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEgressOnlyInternetGateway">>, Input, Options).

%% @doc Creates an EC2 Fleet that contains the configuration information for
%% On-Demand Instances and Spot Instances.
%%
%% Instances are launched immediately if there is available capacity.
%%
%% A single EC2 Fleet can include multiple launch specifications that vary by
%% instance type,
%% AMI, Availability Zone, or subnet.
%%
%% For more information, see EC2 Fleet:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet.html in the
%% Amazon EC2 User Guide.
create_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_fleet(Client, Input, []).
create_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFleet">>, Input, Options).

%% @doc Creates one or more flow logs to capture information about IP traffic
%% for a specific network interface,
%% subnet, or VPC.
%%
%% Flow log data for a monitored network interface is recorded as flow log
%% records, which are log events
%% consisting of fields that describe the traffic flow. For more information,
%% see
%% Flow log records:
%% https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html#flow-log-records
%% in the Amazon Virtual Private Cloud User Guide.
%%
%% When publishing to CloudWatch Logs, flow log records are published to a
%% log group, and each network
%% interface has a unique log stream in the log group. When publishing to
%% Amazon S3, flow log records for all
%% of the monitored network interfaces are published to a single log file
%% object that is stored in the specified
%% bucket.
%%
%% For more information, see VPC Flow Logs:
%% https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html in the
%% Amazon Virtual Private Cloud User Guide.
create_flow_logs(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_flow_logs(Client, Input, []).
create_flow_logs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFlowLogs">>, Input, Options).

%% @doc Creates an Amazon FPGA Image (AFI) from the specified design
%% checkpoint (DCP).
%%
%% The create operation is asynchronous. To verify that the AFI is ready for
%% use,
%% check the output logs.
%%
%% An AFI contains the FPGA bitstream that is ready to download to an FPGA.
%% You can securely deploy an AFI on multiple FPGA-accelerated instances.
%% For more information, see the Amazon Web Services FPGA Hardware
%% Development Kit: https://github.com/aws/aws-fpga/.
create_fpga_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_fpga_image(Client, Input, []).
create_fpga_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFpgaImage">>, Input, Options).

%% @doc Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance
%% that is either running or
%% stopped.
%%
%% If you customized your instance with instance store volumes or Amazon EBS
%% volumes in addition
%% to the root device volume, the new AMI contains block device mapping
%% information for those
%% volumes. When you launch an instance from this new AMI, the instance
%% automatically launches
%% with those additional volumes.
%%
%% For more information, see Create an Amazon EBS-backed Linux
%% AMI:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html
%% in the Amazon Elastic Compute Cloud User Guide.
create_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_image(Client, Input, []).
create_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateImage">>, Input, Options).

%% @doc Creates an EC2 Instance Connect Endpoint.
%%
%% An EC2 Instance Connect Endpoint allows you to connect to an instance,
%% without
%% requiring the instance to have a public IPv4 address. For more
%% information, see Connect to your instances without requiring a public IPv4
%% address using EC2
%% Instance Connect Endpoint:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Connect-using-EC2-Instance-Connect-Endpoint.html
%% in the Amazon EC2 User
%% Guide.
create_instance_connect_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instance_connect_endpoint(Client, Input, []).
create_instance_connect_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInstanceConnectEndpoint">>, Input, Options).

%% @doc Creates an event window in which scheduled events for the associated
%% Amazon EC2 instances can
%% run.
%%
%% You can define either a set of time ranges or a cron expression when
%% creating the event
%% window, but not both. All event window times are in UTC.
%%
%% You can create up to 200 event windows per Amazon Web Services Region.
%%
%% When you create the event window, targets (instance IDs, Dedicated Host
%% IDs, or tags)
%% are not yet associated with it. To ensure that the event window can be
%% used, you must
%% associate one or more targets with it by using the
%% `AssociateInstanceEventWindow' API.
%%
%% Event windows are applicable only for scheduled events that stop, reboot,
%% or
%% terminate instances.
%%
%% Event windows are not applicable for:
%%
%% Expedited scheduled events and network maintenance events.
%%
%% Unscheduled maintenance such as AutoRecovery and unplanned reboots.
%%
%% For more information, see Define event windows for scheduled
%% events:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html in
%% the Amazon EC2 User Guide.
create_instance_event_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instance_event_window(Client, Input, []).
create_instance_event_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInstanceEventWindow">>, Input, Options).

%% @doc Exports a running or stopped instance to an Amazon S3 bucket.
%%
%% For information about the prerequisites for your Amazon S3 bucket,
%% supported operating systems,
%% image formats, and known limitations for the types of instances you can
%% export, see Exporting an instance as a VM Using VM
%% Import/Export:
%% https://docs.aws.amazon.com/vm-import/latest/userguide/vmexport.html in
%% the VM Import/Export User Guide.
create_instance_export_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_instance_export_task(Client, Input, []).
create_instance_export_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInstanceExportTask">>, Input, Options).

%% @doc Creates an internet gateway for use with a VPC.
%%
%% After creating the internet gateway,
%% you attach it to a VPC using `AttachInternetGateway'.
%%
%% For more information, see Internet gateways:
%% https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Internet_Gateway.html
%% in the
%% Amazon VPC User Guide.
create_internet_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_internet_gateway(Client, Input, []).
create_internet_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInternetGateway">>, Input, Options).

%% @doc Create an IPAM.
%%
%% Amazon VPC IP Address Manager (IPAM) is a VPC feature that you can use
%% to automate your IP address management workflows including assigning,
%% tracking,
%% troubleshooting, and auditing IP addresses across Amazon Web Services
%% Regions and accounts
%% throughout your Amazon Web Services Organization.
%%
%% For more information, see Create an IPAM:
%% https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html in the Amazon
%% VPC IPAM User Guide.
create_ipam(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_ipam(Client, Input, []).
create_ipam(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIpam">>, Input, Options).

%% @doc Create an IP address pool for Amazon VPC IP Address Manager (IPAM).
%%
%% In IPAM, a pool is a collection of contiguous IP addresses CIDRs. Pools
%% enable you to organize your IP addresses according to your routing and
%% security needs. For example, if you have separate routing and security
%% needs for development and production applications, you can create a pool
%% for each.
%%
%% For more information, see Create a top-level pool:
%% https://docs.aws.amazon.com/vpc/latest/ipam/create-top-ipam.html in the
%% Amazon VPC IPAM User Guide.
create_ipam_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_ipam_pool(Client, Input, []).
create_ipam_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIpamPool">>, Input, Options).

%% @doc Creates an IPAM resource discovery.
%%
%% A resource discovery is an IPAM component that enables IPAM to manage and
%% monitor resources that belong to the owning account.
create_ipam_resource_discovery(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_ipam_resource_discovery(Client, Input, []).
create_ipam_resource_discovery(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIpamResourceDiscovery">>, Input, Options).

%% @doc Create an IPAM scope.
%%
%% In IPAM, a scope is the highest-level container within IPAM. An IPAM
%% contains two default scopes. Each scope represents the IP space for a
%% single network. The private scope is intended for all private IP address
%% space. The public scope is intended for all public IP address space.
%% Scopes enable you to reuse IP addresses across multiple unconnected
%% networks without causing IP address overlap or conflict.
%%
%% For more information, see Add a scope:
%% https://docs.aws.amazon.com/vpc/latest/ipam/add-scope-ipam.html in the
%% Amazon VPC IPAM User Guide.
create_ipam_scope(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_ipam_scope(Client, Input, []).
create_ipam_scope(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIpamScope">>, Input, Options).

%% @doc Creates an ED25519 or 2048-bit RSA key pair with the specified name
%% and in the
%% specified PEM or PPK format.
%%
%% Amazon EC2 stores the public key and displays the private
%% key for you to save to a file. The private key is returned as an
%% unencrypted PEM encoded
%% PKCS#1 private key or an unencrypted PPK formatted private key for use
%% with PuTTY. If a
%% key with the specified name already exists, Amazon EC2 returns an error.
%%
%% The key pair returned to you is available only in the Amazon Web Services
%% Region in which you create it.
%% If you prefer, you can create your own key pair using a third-party tool
%% and upload it
%% to any Region using `ImportKeyPair'.
%%
%% You can have up to 5,000 key pairs per Amazon Web Services Region.
%%
%% For more information, see Amazon EC2 key pairs:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html in
%% the
%% Amazon Elastic Compute Cloud User Guide.
create_key_pair(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_key_pair(Client, Input, []).
create_key_pair(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateKeyPair">>, Input, Options).

%% @doc Creates a launch template.
%%
%% A launch template contains the parameters to launch an instance. When you
%% launch an
%% instance using `RunInstances', you can specify a launch template
%% instead
%% of providing the launch parameters in the request. For more information,
%% see Launch
%% an instance from a launch template:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html
%% in the
%% Amazon Elastic Compute Cloud User Guide.
%%
%% If you want to clone an existing launch template as the basis for creating
%% a new
%% launch template, you can use the Amazon EC2 console. The API, SDKs, and
%% CLI do not support
%% cloning a template. For more information, see Create a launch template
%% from an existing launch template:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#create-launch-template-from-existing-launch-template
%% in the
%% Amazon Elastic Compute Cloud User Guide.
create_launch_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_launch_template(Client, Input, []).
create_launch_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLaunchTemplate">>, Input, Options).

%% @doc Creates a new version of a launch template.
%%
%% You can specify an existing version of
%% launch template from which to base the new version.
%%
%% Launch template versions are numbered in the order in which they are
%% created. You
%% cannot specify, change, or replace the numbering of launch template
%% versions.
%%
%% Launch templates are immutable; after you create a launch template, you
%% can't modify
%% it. Instead, you can create a new version of the launch template that
%% includes any
%% changes you require.
%%
%% For more information, see Modify a launch template (manage launch template
%% versions):
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#manage-launch-template-versions
%% in the
%% Amazon Elastic Compute Cloud User Guide.
create_launch_template_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_launch_template_version(Client, Input, []).
create_launch_template_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLaunchTemplateVersion">>, Input, Options).

%% @doc Creates a static route for the specified local gateway route table.
%%
%% You must specify one of the
%% following targets:
%%
%% `LocalGatewayVirtualInterfaceGroupId'
%%
%% `NetworkInterfaceId'
create_local_gateway_route(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_local_gateway_route(Client, Input, []).
create_local_gateway_route(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocalGatewayRoute">>, Input, Options).

%% @doc
%% Creates a local gateway route table.
create_local_gateway_route_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_local_gateway_route_table(Client, Input, []).
create_local_gateway_route_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocalGatewayRouteTable">>, Input, Options).

%% @doc
%% Creates a local gateway route table virtual interface group association.
create_local_gateway_route_table_virtual_interface_group_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_local_gateway_route_table_virtual_interface_group_association(Client, Input, []).
create_local_gateway_route_table_virtual_interface_group_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociation">>, Input, Options).

%% @doc Associates the specified VPC with the specified local gateway route
%% table.
create_local_gateway_route_table_vpc_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_local_gateway_route_table_vpc_association(Client, Input, []).
create_local_gateway_route_table_vpc_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLocalGatewayRouteTableVpcAssociation">>, Input, Options).

%% @doc Creates a managed prefix list.
%%
%% You can specify one or more entries for the prefix list.
%% Each entry consists of a CIDR block and an optional description.
create_managed_prefix_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_managed_prefix_list(Client, Input, []).
create_managed_prefix_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateManagedPrefixList">>, Input, Options).

%% @doc Creates a NAT gateway in the specified subnet.
%%
%% This action creates a network interface
%% in the specified subnet with a private IP address from the IP address
%% range of the
%% subnet. You can create either a public NAT gateway or a private NAT
%% gateway.
%%
%% With a public NAT gateway, internet-bound traffic from a private subnet
%% can be routed
%% to the NAT gateway, so that instances in a private subnet can connect to
%% the internet.
%%
%% With a private NAT gateway, private communication is routed across VPCs
%% and on-premises
%% networks through a transit gateway or virtual private gateway. Common use
%% cases include
%% running large workloads behind a small pool of allowlisted IPv4 addresses,
%% preserving
%% private IPv4 addresses, and communicating between overlapping networks.
%%
%% For more information, see NAT gateways:
%% https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html in
%% the Amazon VPC User Guide.
%%
%% When you create a public NAT gateway and assign it an EIP or secondary
%% EIPs, the network border group of the EIPs must match the network border
%% group of the Availability Zone (AZ) that the public NAT gateway is in. If
%% it's not the same, the NAT gateway will fail to launch. You can see
%% the network border group for the subnet's AZ by viewing the details of
%% the subnet. Similarly, you can view the network border group of an EIP by
%% viewing the details of the EIP address. For more information about network
%% border groups and EIPs, see Allocate an Elastic IP address:
%% https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#allocate-eip
%% in the Amazon VPC User Guide.
create_nat_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_nat_gateway(Client, Input, []).
create_nat_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNatGateway">>, Input, Options).

%% @doc Creates a network ACL in a VPC.
%%
%% Network ACLs provide an optional layer of security (in addition to
%% security groups) for the instances in your VPC.
%%
%% For more information, see Network ACLs:
%% https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html in
%% the
%% Amazon VPC User Guide.
create_network_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_network_acl(Client, Input, []).
create_network_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNetworkAcl">>, Input, Options).

%% @doc Creates an entry (a rule) in a network ACL with the specified rule
%% number.
%%
%% Each network ACL has a set of numbered ingress rules
%% and a separate set of numbered egress rules. When determining whether a
%% packet should be allowed in or out of a subnet associated
%% with the ACL, we process the entries in the ACL according to the rule
%% numbers, in ascending order. Each network ACL has a set of
%% ingress rules and a separate set of egress rules.
%%
%% We recommend that you leave room between the rule numbers (for example,
%% 100, 110, 120, ...), and not number them one right after the
%% other (for example, 101, 102, 103, ...). This makes it easier to add a
%% rule between existing ones without having to renumber the rules.
%%
%% After you add an entry, you can't modify it; you must either replace
%% it, or create an entry and delete the old one.
%%
%% For more information about network ACLs, see Network ACLs:
%% https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html
%% in the Amazon VPC User Guide.
create_network_acl_entry(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_network_acl_entry(Client, Input, []).
create_network_acl_entry(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNetworkAclEntry">>, Input, Options).

%% @doc Creates a Network Access Scope.
%%
%% Amazon Web Services Network Access Analyzer enables cloud networking and
%% cloud operations teams
%% to verify that their networks on Amazon Web Services conform to their
%% network security and governance
%% objectives. For more information, see the Amazon Web Services Network
%% Access Analyzer Guide:
%% https://docs.aws.amazon.com/vpc/latest/network-access-analyzer/.
create_network_insights_access_scope(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_network_insights_access_scope(Client, Input, []).
create_network_insights_access_scope(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNetworkInsightsAccessScope">>, Input, Options).

%% @doc Creates a path to analyze for reachability.
%%
%% Reachability Analyzer enables you to analyze and debug network
%% reachability between
%% two resources in your virtual private cloud (VPC). For more information,
%% see the
%% Reachability Analyzer Guide:
%% https://docs.aws.amazon.com/vpc/latest/reachability/.
create_network_insights_path(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_network_insights_path(Client, Input, []).
create_network_insights_path(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNetworkInsightsPath">>, Input, Options).

%% @doc Creates a network interface in the specified subnet.
%%
%% The number of IP addresses you can assign to a network interface varies by
%% instance
%% type. For more information, see IP Addresses Per ENI Per
%% Instance Type:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI
%% in the Amazon Virtual Private Cloud User Guide.
%%
%% For more information about network interfaces, see Elastic network
%% interfaces:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html
%% in the Amazon Elastic Compute Cloud User Guide.
create_network_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_network_interface(Client, Input, []).
create_network_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNetworkInterface">>, Input, Options).

%% @doc Grants an Amazon Web Services-authorized account permission to attach
%% the specified network interface to
%% an instance in their account.
%%
%% You can grant permission to a single Amazon Web Services account only, and
%% only one account at a time.
create_network_interface_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_network_interface_permission(Client, Input, []).
create_network_interface_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNetworkInterfacePermission">>, Input, Options).

%% @doc Creates a placement group in which to launch instances.
%%
%% The strategy of the placement
%% group determines how the instances are organized within the group.
%%
%% A `cluster' placement group is a logical grouping of instances within
%% a
%% single Availability Zone that benefit from low network latency, high
%% network throughput.
%% A `spread' placement group places instances on distinct hardware. A
%% `partition' placement group places groups of instances in different
%% partitions, where instances in one partition do not share the same
%% hardware with
%% instances in another partition.
%%
%% For more information, see Placement groups:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
%% in the
%% Amazon EC2 User Guide.
create_placement_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_placement_group(Client, Input, []).
create_placement_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePlacementGroup">>, Input, Options).

%% @doc Creates a public IPv4 address pool.
%%
%% A public IPv4 pool is an EC2 IP address pool required for the public IPv4
%% CIDRs that you own and bring to Amazon Web Services to manage with IPAM.
%% IPv6 addresses you bring to Amazon Web Services, however, use IPAM pools
%% only. To monitor the status of pool creation, use DescribePublicIpv4Pools:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribePublicIpv4Pools.html.
create_public_ipv4_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_public_ipv4_pool(Client, Input, []).
create_public_ipv4_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePublicIpv4Pool">>, Input, Options).

%% @doc Replaces the EBS-backed root volume for a `running' instance with
%% a new
%% volume that is restored to the original root volume's launch state,
%% that is restored to a
%% specific snapshot taken from the original root volume, or that is restored
%% from an AMI
%% that has the same key characteristics as that of the instance.
%%
%% For more information, see Replace a root volume:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/replace-root.html in
%% the Amazon Elastic Compute Cloud User Guide.
create_replace_root_volume_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_replace_root_volume_task(Client, Input, []).
create_replace_root_volume_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReplaceRootVolumeTask">>, Input, Options).

%% @doc Creates a listing for Amazon EC2 Standard Reserved Instances to be
%% sold in the Reserved Instance
%% Marketplace.
%%
%% You can submit one Standard Reserved Instance listing at a time. To get a
%% list of your
%% Standard Reserved Instances, you can use the
%% `DescribeReservedInstances' operation.
%%
%% Only Standard Reserved Instances can be sold in the Reserved Instance
%% Marketplace.
%% Convertible Reserved Instances cannot be sold.
%%
%% The Reserved Instance Marketplace matches sellers who want to resell
%% Standard Reserved Instance capacity that they no longer need with buyers
%% who want to purchase additional capacity. Reserved Instances bought and
%% sold through the Reserved Instance Marketplace work like any other
%% Reserved Instances.
%%
%% To sell your Standard Reserved Instances, you must first register as a
%% seller in the Reserved Instance
%% Marketplace. After completing the registration process, you can create a
%% Reserved Instance
%% Marketplace listing of some or all of your Standard Reserved Instances,
%% and specify the upfront price
%% to receive for them. Your Standard Reserved Instance listings then become
%% available for purchase. To
%% view the details of your Standard Reserved Instance listing, you can use
%% the
%% `DescribeReservedInstancesListings' operation.
%%
%% For more information, see Reserved Instance Marketplace:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html
%% in the
%% Amazon EC2 User Guide.
create_reserved_instances_listing(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_reserved_instances_listing(Client, Input, []).
create_reserved_instances_listing(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateReservedInstancesListing">>, Input, Options).

%% @doc Starts a task that restores an AMI from an Amazon S3 object that was
%% previously created by
%% using CreateStoreImageTask:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateStoreImageTask.html.
%%
%% To use this API, you must have the required permissions. For more
%% information, see Permissions for storing and restoring AMIs using Amazon
%% S3:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html#ami-s3-permissions
%% in the
%% Amazon EC2 User Guide.
%%
%% For more information, see Store and restore an AMI using
%% Amazon S3:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html
%% in the Amazon EC2 User Guide.
create_restore_image_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_restore_image_task(Client, Input, []).
create_restore_image_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRestoreImageTask">>, Input, Options).

%% @doc Creates a route in a route table within a VPC.
%%
%% You must specify either a destination CIDR block or a prefix list ID. You
%% must also specify
%% exactly one of the resources from the parameter list.
%%
%% When determining how to route traffic, we use the route with the most
%% specific match.
%% For example, traffic is destined for the IPv4 address `192.0.2.3', and
%% the
%% route table includes the following two IPv4 routes:
%%
%% `192.0.2.0/24' (goes to some target A)
%%
%% `192.0.2.0/28' (goes to some target B)
%%
%% Both routes apply to the traffic destined for `192.0.2.3'. However,
%% the second route
%% in the list covers a smaller number of IP addresses and is therefore more
%% specific,
%% so we use that route to determine where to target the traffic.
%%
%% For more information about route tables, see Route tables:
%% https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html in
%% the
%% Amazon VPC User Guide.
create_route(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_route(Client, Input, []).
create_route(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRoute">>, Input, Options).

%% @doc Creates a route table for the specified VPC.
%%
%% After you create a route table, you can add routes and associate the table
%% with a subnet.
%%
%% For more information, see Route tables:
%% https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html in
%% the
%% Amazon VPC User Guide.
create_route_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_route_table(Client, Input, []).
create_route_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRouteTable">>, Input, Options).

%% @doc Creates a security group.
%%
%% A security group acts as a virtual firewall for your instance to control
%% inbound and outbound traffic.
%% For more information, see
%% Amazon EC2 security groups:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html
%% in
%% the Amazon Elastic Compute Cloud User Guide and
%% Security groups for your VPC:
%% https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html
%% in the
%% Amazon Virtual Private Cloud User Guide.
%%
%% When you create a security group, you specify a friendly name of your
%% choice.
%% You can't have two security groups for the same VPC with the same
%% name.
%%
%% You have a default security group for use in your VPC. If you don't
%% specify a security group
%% when you launch an instance, the instance is launched into the appropriate
%% default security group.
%% A default security group includes a default rule that grants instances
%% unrestricted network access
%% to each other.
%%
%% You can add or remove rules from your security groups using
%% `AuthorizeSecurityGroupIngress',
%% `AuthorizeSecurityGroupEgress',
%% `RevokeSecurityGroupIngress', and
%% `RevokeSecurityGroupEgress'.
%%
%% For more information about VPC security group limits, see Amazon VPC
%% Limits:
%% https://docs.aws.amazon.com/vpc/latest/userguide/amazon-vpc-limits.html.
create_security_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_security_group(Client, Input, []).
create_security_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSecurityGroup">>, Input, Options).

%% @doc Creates a snapshot of an EBS volume and stores it in Amazon S3.
%%
%% You can use snapshots for
%% backups, to make copies of EBS volumes, and to save data before shutting
%% down an
%% instance.
%%
%% You can create snapshots of volumes in a Region and volumes on an Outpost.
%% If you
%% create a snapshot of a volume in a Region, the snapshot must be stored in
%% the same
%% Region as the volume. If you create a snapshot of a volume on an Outpost,
%% the snapshot
%% can be stored on the same Outpost as the volume, or in the Region for that
%% Outpost.
%%
%% When a snapshot is created, any Amazon Web Services Marketplace product
%% codes that are associated with the
%% source volume are propagated to the snapshot.
%%
%% You can take a snapshot of an attached volume that is in use. However,
%% snapshots only
%% capture data that has been written to your Amazon EBS volume at the time
%% the snapshot command is
%% issued; this might exclude any data that has been cached by any
%% applications or the operating
%% system. If you can pause any file systems on the volume long enough to
%% take a snapshot, your
%% snapshot should be complete. However, if you cannot pause all file writes
%% to the volume, you
%% should unmount the volume from within the instance, issue the snapshot
%% command, and then
%% remount the volume to ensure a consistent and complete snapshot. You may
%% remount and use your
%% volume while the snapshot status is `pending'.
%%
%% When you create a snapshot for an EBS volume that serves as a root device,
%% we recommend
%% that you stop the instance before taking the snapshot.
%%
%% Snapshots that are taken from encrypted volumes are automatically
%% encrypted. Volumes that
%% are created from encrypted snapshots are also automatically encrypted.
%% Your encrypted volumes
%% and any associated snapshots always remain protected.
%%
%% You can tag your snapshots during creation. For more information, see Tag
%% your Amazon EC2
%% resources:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html in the
%% Amazon Elastic Compute Cloud User Guide.
%%
%% For more information, see Amazon Elastic Block Store:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html and
%% Amazon EBS encryption:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html in
%% the Amazon Elastic Compute Cloud User Guide.
create_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshot(Client, Input, []).
create_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshot">>, Input, Options).

%% @doc Creates crash-consistent snapshots of multiple EBS volumes and stores
%% the data in S3.
%%
%% Volumes are chosen by specifying an instance. Any attached volumes will
%% produce one snapshot
%% each that is crash-consistent across the instance.
%%
%% You can include all of the volumes currently attached to the instance, or
%% you can exclude
%% the root volume or specific data (non-root) volumes from the multi-volume
%% snapshot set.
%%
%% You can create multi-volume snapshots of instances in a Region and
%% instances on an
%% Outpost. If you create snapshots from an instance in a Region, the
%% snapshots must be stored
%% in the same Region as the instance. If you create snapshots from an
%% instance on an Outpost,
%% the snapshots can be stored on the same Outpost as the instance, or in the
%% Region for that
%% Outpost.
create_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshots(Client, Input, []).
create_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshots">>, Input, Options).

%% @doc Creates a data feed for Spot Instances, enabling you to view Spot
%% Instance usage logs.
%%
%% You can create one data feed per Amazon Web Services account. For more
%% information, see
%% Spot Instance data feed:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html
%% in the Amazon EC2 User Guide for Linux Instances.
create_spot_datafeed_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_spot_datafeed_subscription(Client, Input, []).
create_spot_datafeed_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSpotDatafeedSubscription">>, Input, Options).

%% @doc Stores an AMI as a single object in an Amazon S3 bucket.
%%
%% To use this API, you must have the required permissions. For more
%% information, see Permissions for storing and restoring AMIs using Amazon
%% S3:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html#ami-s3-permissions
%% in the
%% Amazon EC2 User Guide.
%%
%% For more information, see Store and restore an AMI using
%% Amazon S3:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html
%% in the Amazon EC2 User Guide.
create_store_image_task(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_store_image_task(Client, Input, []).
create_store_image_task(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStoreImageTask">>, Input, Options).

%% @doc Creates a subnet in the specified VPC.
%%
%% For an IPv4 only subnet, specify an IPv4 CIDR block.
%% If the VPC has an IPv6 CIDR block, you can create an IPv6 only subnet or a
%% dual stack subnet instead.
%% For an IPv6 only subnet, specify an IPv6 CIDR block. For a dual stack
%% subnet, specify both
%% an IPv4 CIDR block and an IPv6 CIDR block.
%%
%% A subnet CIDR block must not overlap the CIDR block of an existing subnet
%% in the VPC.
%% After you create a subnet, you can't change its CIDR block.
%%
%% The allowed size for an IPv4 subnet is between a /28 netmask (16 IP
%% addresses) and
%% a /16 netmask (65,536 IP addresses). Amazon Web Services reserves both the
%% first four and
%% the last IPv4 address in each subnet's CIDR block. They're not
%% available for your use.
%%
%% If you've associated an IPv6 CIDR block with your VPC, you can
%% associate an IPv6 CIDR
%% block with a subnet when you create it.
%%
%% If you add more than one subnet to a VPC, they're set up in a star
%% topology with a
%% logical router in the middle.
%%
%% When you stop an instance in a subnet, it retains its private IPv4
%% address. It's
%% therefore possible to have a subnet with no running instances (they're
%% all stopped), but
%% no remaining IP addresses available.
%%
%% For more information, see Subnets:
%% https://docs.aws.amazon.com/vpc/latest/userguide/configure-subnets.html in
%% the Amazon VPC User Guide.
create_subnet(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_subnet(Client, Input, []).
create_subnet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSubnet">>, Input, Options).

%% @doc Creates a subnet CIDR reservation.
%%
%% For more information, see Subnet CIDR reservations:
%% https://docs.aws.amazon.com/vpc/latest/userguide/subnet-cidr-reservation.html
%% in the Amazon Virtual Private Cloud User Guide and Assign prefixes
%% to network interfaces:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-prefix-eni.html in
%% the Amazon Elastic Compute Cloud User Guide.
create_subnet_cidr_reservation(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_subnet_cidr_reservation(Client, Input, []).
create_subnet_cidr_reservation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSubnetCidrReservation">>, Input, Options).

%% @doc Adds or overwrites only the specified tags for the specified Amazon
%% EC2 resource or
%% resources.
%%
%% When you specify an existing tag key, the value is overwritten with
%% the new value. Each resource can have a maximum of 50 tags. Each tag
%% consists of a key and
%% optional value. Tag keys must be unique per resource.
%%
%% For more information about tags, see Tag your Amazon EC2 resources:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html in the
%% Amazon Elastic Compute Cloud User Guide. For more information about
%% creating IAM policies that control users' access to resources based on
%% tags, see Supported
%% resource-level permissions for Amazon EC2 API actions:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-iam-actions-resources.html
%% in the Amazon
%% Elastic Compute Cloud User Guide.
create_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_tags(Client, Input, []).
create_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTags">>, Input, Options).

%% @doc Creates a Traffic Mirror filter.
%%
%% A Traffic Mirror filter is a set of rules that defines the traffic to
%% mirror.
%%
%% By default, no traffic is mirrored. To mirror traffic, use
%% CreateTrafficMirrorFilterRule:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTrafficMirrorFilterRule.htm
%% to add Traffic Mirror rules to the filter. The rules you
%% add define what traffic gets mirrored. You can also use
%% ModifyTrafficMirrorFilterNetworkServices:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyTrafficMirrorFilterNetworkServices.html
%% to mirror supported network services.
create_traffic_mirror_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_traffic_mirror_filter(Client, Input, []).
create_traffic_mirror_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrafficMirrorFilter">>, Input, Options).

%% @doc Creates a Traffic Mirror filter rule.
%%
%% A Traffic Mirror rule defines the Traffic Mirror source traffic to mirror.
%%
%% You need the Traffic Mirror filter ID when you create the rule.
create_traffic_mirror_filter_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_traffic_mirror_filter_rule(Client, Input, []).
create_traffic_mirror_filter_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrafficMirrorFilterRule">>, Input, Options).

%% @doc Creates a Traffic Mirror session.
%%
%% A Traffic Mirror session actively copies packets from a Traffic Mirror
%% source to a Traffic Mirror target. Create a filter, and then assign it
%% to the session to define a subset of the traffic to mirror, for example
%% all TCP
%% traffic.
%%
%% The Traffic Mirror source and the Traffic Mirror target (monitoring
%% appliances) can be in the same VPC, or in a different VPC connected via
%% VPC peering or a transit gateway.
%%
%% By default, no traffic is mirrored. Use CreateTrafficMirrorFilter:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTrafficMirrorFilter.htm
%% to
%% create filter rules that specify the traffic to mirror.
create_traffic_mirror_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_traffic_mirror_session(Client, Input, []).
create_traffic_mirror_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrafficMirrorSession">>, Input, Options).

%% @doc Creates a target for your Traffic Mirror session.
%%
%% A Traffic Mirror target is the destination for mirrored traffic. The
%% Traffic Mirror source and
%% the Traffic Mirror target (monitoring appliances) can be in the same VPC,
%% or in
%% different VPCs connected via VPC peering or a transit gateway.
%%
%% A Traffic Mirror target can be a network interface, a Network Load
%% Balancer, or a Gateway Load Balancer endpoint.
%%
%% To use the target in a Traffic Mirror session, use
%% CreateTrafficMirrorSession:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTrafficMirrorSession.htm.
create_traffic_mirror_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_traffic_mirror_target(Client, Input, []).
create_traffic_mirror_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrafficMirrorTarget">>, Input, Options).

%% @doc Creates a transit gateway.
%%
%% You can use a transit gateway to interconnect your virtual private clouds
%% (VPC) and on-premises networks.
%% After the transit gateway enters the `available' state, you can attach
%% your VPCs and VPN
%% connections to the transit gateway.
%%
%% To attach your VPCs, use `CreateTransitGatewayVpcAttachment'.
%%
%% To attach a VPN connection, use `CreateCustomerGateway' to create a
%% customer
%% gateway and specify the ID of the customer gateway and the ID of the
%% transit gateway in a call to
%% `CreateVpnConnection'.
%%
%% When you create a transit gateway, we create a default transit gateway
%% route table and use it as the default association route table
%% and the default propagation route table. You can use
%% `CreateTransitGatewayRouteTable' to create
%% additional transit gateway route tables. If you disable automatic route
%% propagation, we do not create a default transit gateway route table.
%% You can use `EnableTransitGatewayRouteTablePropagation' to propagate
%% routes from a resource
%% attachment to a transit gateway route table. If you disable automatic
%% associations, you can use `AssociateTransitGatewayRouteTable' to
%% associate a resource attachment with a transit gateway route table.
create_transit_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_transit_gateway(Client, Input, []).
create_transit_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTransitGateway">>, Input, Options).

%% @doc Creates a Connect attachment from a specified transit gateway
%% attachment.
%%
%% A Connect attachment is a GRE-based tunnel attachment that you can use to
%% establish a connection between a transit gateway and an appliance.
%%
%% A Connect attachment uses an existing VPC or Amazon Web Services Direct
%% Connect attachment as the underlying transport mechanism.
create_transit_gateway_connect(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_transit_gateway_connect(Client, Input, []).
create_transit_gateway_connect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTransitGatewayConnect">>, Input, Options).

%% @doc Creates a Connect peer for a specified transit gateway Connect
%% attachment between a
%% transit gateway and an appliance.
%%
%% The peer address and transit gateway address must be the same IP address
%% family (IPv4 or IPv6).
%%
%% For more information, see Connect peers:
%% https://docs.aws.amazon.com/vpc/latest/tgw/tgw-connect.html#tgw-connect-peer
%% in the Transit Gateways Guide.
create_transit_gateway_connect_peer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_transit_gateway_connect_peer(Client, Input, []).
create_transit_gateway_connect_peer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTransitGatewayConnectPeer">>, Input, Options).

%% @doc Creates a multicast domain using the specified transit gateway.
%%
%% The transit gateway must be in the available state before you create a
%% domain. Use DescribeTransitGateways:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeTransitGateways.html
%% to see the state of transit gateway.
create_transit_gateway_multicast_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_transit_gateway_multicast_domain(Client, Input, []).
create_transit_gateway_multicast_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTransitGatewayMulticastDomain">>, Input, Options).

%% @doc Requests a transit gateway peering attachment between the specified
%% transit gateway
%% (requester) and a peer transit gateway (accepter).
%%
%% The peer transit gateway can be in
%% your account or a different Amazon Web Services account.
%%
%% After you create the peering attachment, the owner of the accepter transit
%% gateway
%% must accept the attachment request.
create_transit_gateway_peering_attachment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_transit_gateway_peering_attachment(Client, Input, []).
create_transit_gateway_peering_attachment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTransitGatewayPeeringAttachment">>, Input, Options).

%% @doc Creates a transit gateway policy table.
create_transit_gateway_policy_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_transit_gateway_policy_table(Client, Input, []).
create_transit_gateway_policy_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTransitGatewayPolicyTable">>, Input, Options).

%% @doc Creates a reference (route) to a prefix list in a specified transit
%% gateway route table.
create_transit_gateway_prefix_list_reference(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_transit_gateway_prefix_list_reference(Client, Input, []).
create_transit_gateway_prefix_list_reference(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTransitGatewayPrefixListReference">>, Input, Options).

%% @doc Creates a static route for the specified transit gateway route table.
create_transit_gateway_route(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_transit_gateway_route(Client, Input, []).
create_transit_gateway_route(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTransitGatewayRoute">>, Input, Options).

%% @doc Creates a route table for the specified transit gateway.
create_transit_gateway_route_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_transit_gateway_route_table(Client, Input, []).
create_transit_gateway_route_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTransitGatewayRouteTable">>, Input, Options).

%% @doc Advertises a new transit gateway route table.
create_transit_gateway_route_table_announcement(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_transit_gateway_route_table_announcement(Client, Input, []).
create_transit_gateway_route_table_announcement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTransitGatewayRouteTableAnnouncement">>, Input, Options).

%% @doc Attaches the specified VPC to the specified transit gateway.
%%
%% If you attach a VPC with a CIDR range that overlaps the CIDR range of a
%% VPC that is already attached,
%% the new VPC CIDR range is not propagated to the default propagation route
%% table.
%%
%% To send VPC traffic to an attached transit gateway, add a route to the VPC
%% route table using `CreateRoute'.
create_transit_gateway_vpc_attachment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_transit_gateway_vpc_attachment(Client, Input, []).
create_transit_gateway_vpc_attachment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTransitGatewayVpcAttachment">>, Input, Options).

%% @doc An Amazon Web Services Verified Access endpoint is where you define
%% your application along with an optional endpoint-level access policy.
create_verified_access_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_verified_access_endpoint(Client, Input, []).
create_verified_access_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVerifiedAccessEndpoint">>, Input, Options).

%% @doc An Amazon Web Services Verified Access group is a collection of
%% Amazon Web Services Verified Access endpoints who's associated
%% applications have
%% similar security requirements.
%%
%% Each instance within a Verified Access group shares an Verified Access
%% policy. For
%% example, you can group all Verified Access instances associated with
%% &quot;sales&quot; applications together and
%% use one common Verified Access policy.
create_verified_access_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_verified_access_group(Client, Input, []).
create_verified_access_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVerifiedAccessGroup">>, Input, Options).

%% @doc An Amazon Web Services Verified Access instance is a regional entity
%% that evaluates application requests and grants
%% access only when your security requirements are met.
create_verified_access_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_verified_access_instance(Client, Input, []).
create_verified_access_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVerifiedAccessInstance">>, Input, Options).

%% @doc A trust provider is a third-party entity that creates, maintains, and
%% manages identity
%% information for users and devices.
%%
%% When an application request is made, the identity
%% information sent by the trust provider is evaluated by Verified Access
%% before allowing or
%% denying the application request.
create_verified_access_trust_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_verified_access_trust_provider(Client, Input, []).
create_verified_access_trust_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVerifiedAccessTrustProvider">>, Input, Options).

%% @doc Creates an EBS volume that can be attached to an instance in the same
%% Availability Zone.
%%
%% You can create a new empty volume or restore a volume from an EBS
%% snapshot.
%% Any Amazon Web Services Marketplace product codes from the snapshot are
%% propagated to the volume.
%%
%% You can create encrypted volumes. Encrypted volumes must be attached to
%% instances that
%% support Amazon EBS encryption. Volumes that are created from encrypted
%% snapshots are also automatically
%% encrypted. For more information, see Amazon EBS encryption:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html
%% in the Amazon Elastic Compute Cloud User Guide.
%%
%% You can tag your volumes during creation. For more information, see Tag
%% your Amazon EC2
%% resources:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html in the
%% Amazon Elastic Compute Cloud User Guide.
%%
%% For more information, see Create an Amazon EBS volume:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-creating-volume.html
%% in the
%% Amazon Elastic Compute Cloud User Guide.
create_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_volume(Client, Input, []).
create_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVolume">>, Input, Options).

%% @doc Creates a VPC with the specified CIDR blocks.
%%
%% For more information, see IP addressing for your VPCs and subnets:
%% https://docs.aws.amazon.com/vpc/latest/userguide/vpc-ip-addressing.html in
%% the
%% Amazon VPC User Guide.
%%
%% You can optionally request an IPv6 CIDR block for the VPC. You can request
%% an
%% Amazon-provided IPv6 CIDR block from Amazon's pool of IPv6 addresses
%% or an IPv6 CIDR
%% block from an IPv6 address pool that you provisioned through bring your
%% own IP addresses
%% (BYOIP:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html).
%%
%% By default, each instance that you launch in the VPC has the default DHCP
%% options, which
%% include only a default DNS server that we provide (AmazonProvidedDNS). For
%% more
%% information, see DHCP option sets:
%% https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html in
%% the Amazon VPC User Guide.
%%
%% You can specify the instance tenancy value for the VPC when you create it.
%% You can't change
%% this value for the VPC after you create it. For more information, see
%% Dedicated Instances:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html
%% in the
%% Amazon EC2 User Guide.
create_vpc(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vpc(Client, Input, []).
create_vpc(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVpc">>, Input, Options).

%% @doc Creates a VPC endpoint.
%%
%% A VPC endpoint provides a private connection between the
%% specified VPC and the specified endpoint service. You can use an endpoint
%% service
%% provided by Amazon Web Services, an Amazon Web Services Marketplace
%% Partner, or another
%% Amazon Web Services account. For more information, see the Amazon Web
%% Services PrivateLink User Guide:
%% https://docs.aws.amazon.com/vpc/latest/privatelink/.
create_vpc_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vpc_endpoint(Client, Input, []).
create_vpc_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVpcEndpoint">>, Input, Options).

%% @doc Creates a connection notification for a specified VPC endpoint or VPC
%% endpoint
%% service.
%%
%% A connection notification notifies you of specific endpoint events. You
%% must
%% create an SNS topic to receive notifications. For more information, see
%% Create a Topic: https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html
%% in
%% the Amazon Simple Notification Service Developer Guide.
%%
%% You can create a connection notification for interface endpoints only.
create_vpc_endpoint_connection_notification(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vpc_endpoint_connection_notification(Client, Input, []).
create_vpc_endpoint_connection_notification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVpcEndpointConnectionNotification">>, Input, Options).

%% @doc Creates a VPC endpoint service to which service consumers (Amazon Web
%% Services accounts,
%% users, and IAM roles) can connect.
%%
%% Before you create an endpoint service, you must create one of the
%% following for your service:
%%
%% A Network Load Balancer:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/network/.
%% Service consumers connect to your service using an interface endpoint.
%%
%% A Gateway Load Balancer:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/.
%% Service consumers connect to your service using a Gateway Load Balancer
%% endpoint.
%%
%% If you set the private DNS name, you must prove that you own the private
%% DNS domain
%% name.
%%
%% For more information, see the Amazon Web Services PrivateLink
%% Guide: https://docs.aws.amazon.com/vpc/latest/privatelink/.
create_vpc_endpoint_service_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vpc_endpoint_service_configuration(Client, Input, []).
create_vpc_endpoint_service_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVpcEndpointServiceConfiguration">>, Input, Options).

%% @doc Requests a VPC peering connection between two VPCs: a requester VPC
%% that you own and
%% an accepter VPC with which to create the connection.
%%
%% The accepter VPC can belong to
%% another Amazon Web Services account and can be in a different Region to
%% the requester VPC.
%% The requester VPC and accepter VPC cannot have overlapping CIDR blocks.
%%
%% Limitations and rules apply to a VPC peering connection. For more
%% information, see
%% the limitations:
%% https://docs.aws.amazon.com/vpc/latest/peering/vpc-peering-basics.html#vpc-peering-limitations
%% section in the VPC Peering Guide.
%%
%% The owner of the accepter VPC must accept the peering request to activate
%% the peering
%% connection. The VPC peering connection request expires after 7 days, after
%% which it
%% cannot be accepted or rejected.
%%
%% If you create a VPC peering connection request between VPCs with
%% overlapping CIDR
%% blocks, the VPC peering connection has a status of `failed'.
create_vpc_peering_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vpc_peering_connection(Client, Input, []).
create_vpc_peering_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVpcPeeringConnection">>, Input, Options).

%% @doc Creates a VPN connection between an existing virtual private gateway
%% or transit
%% gateway and a customer gateway.
%%
%% The supported connection type is
%% `ipsec.1'.
%%
%% The response includes information that you need to give to your network
%% administrator
%% to configure your customer gateway.
%%
%% We strongly recommend that you use HTTPS when calling this operation
%% because the
%% response contains sensitive cryptographic information for configuring your
%% customer
%% gateway device.
%%
%% If you decide to shut down your VPN connection for any reason and later
%% create a new
%% VPN connection, you must reconfigure your customer gateway with the new
%% information
%% returned from this call.
%%
%% This is an idempotent operation. If you perform the operation more than
%% once, Amazon
%% EC2 doesn't return an error.
%%
%% For more information, see Amazon Web Services Site-to-Site VPN:
%% https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html in the Amazon
%% Web Services Site-to-Site VPN
%% User Guide.
create_vpn_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vpn_connection(Client, Input, []).
create_vpn_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVpnConnection">>, Input, Options).

%% @doc Creates a static route associated with a VPN connection between an
%% existing virtual
%% private gateway and a VPN customer gateway.
%%
%% The static route allows traffic to be routed
%% from the virtual private gateway to the VPN customer gateway.
%%
%% For more information, see Amazon Web Services Site-to-Site VPN:
%% https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html in the Amazon
%% Web Services Site-to-Site VPN
%% User Guide.
create_vpn_connection_route(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vpn_connection_route(Client, Input, []).
create_vpn_connection_route(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVpnConnectionRoute">>, Input, Options).

%% @doc Creates a virtual private gateway.
%%
%% A virtual private gateway is the endpoint on the
%% VPC side of your VPN connection. You can create a virtual private gateway
%% before
%% creating the VPC itself.
%%
%% For more information, see Amazon Web Services Site-to-Site VPN:
%% https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html in the Amazon
%% Web Services Site-to-Site VPN
%% User Guide.
create_vpn_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_vpn_gateway(Client, Input, []).
create_vpn_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateVpnGateway">>, Input, Options).

%% @doc Deletes a carrier gateway.
%%
%% If you do not delete the route that contains the carrier gateway as the
%% Target, the route is a blackhole route. For information about how to
%% delete a route, see
%% DeleteRoute:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeleteRoute.html.
delete_carrier_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_carrier_gateway(Client, Input, []).
delete_carrier_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCarrierGateway">>, Input, Options).

%% @doc Deletes the specified Client VPN endpoint.
%%
%% You must disassociate all target networks before you
%% can delete a Client VPN endpoint.
delete_client_vpn_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_client_vpn_endpoint(Client, Input, []).
delete_client_vpn_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteClientVpnEndpoint">>, Input, Options).

%% @doc Deletes a route from a Client VPN endpoint.
%%
%% You can only delete routes that you manually added using
%% the CreateClientVpnRoute action. You cannot delete routes that were
%% automatically added when associating a subnet. To remove routes that have
%% been automatically added,
%% disassociate the target subnet from the Client VPN endpoint.
delete_client_vpn_route(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_client_vpn_route(Client, Input, []).
delete_client_vpn_route(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteClientVpnRoute">>, Input, Options).

%% @doc
%% Deletes a range of customer-owned IP addresses.
delete_coip_cidr(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_coip_cidr(Client, Input, []).
delete_coip_cidr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCoipCidr">>, Input, Options).

%% @doc Deletes a pool of customer-owned IP (CoIP) addresses.
delete_coip_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_coip_pool(Client, Input, []).
delete_coip_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCoipPool">>, Input, Options).

%% @doc Deletes the specified customer gateway.
%%
%% You must delete the VPN connection before you
%% can delete the customer gateway.
delete_customer_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_customer_gateway(Client, Input, []).
delete_customer_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCustomerGateway">>, Input, Options).

%% @doc Deletes the specified set of DHCP options.
%%
%% You must disassociate the set of DHCP options before you can delete it.
%% You can disassociate the set of DHCP options by associating either a new
%% set of options or the default set of options with the VPC.
delete_dhcp_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_dhcp_options(Client, Input, []).
delete_dhcp_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDhcpOptions">>, Input, Options).

%% @doc Deletes an egress-only internet gateway.
delete_egress_only_internet_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_egress_only_internet_gateway(Client, Input, []).
delete_egress_only_internet_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEgressOnlyInternetGateway">>, Input, Options).

%% @doc Deletes the specified EC2 Fleets.
%%
%% After you delete an EC2 Fleet, it launches no new instances.
%%
%% You must also specify whether a deleted EC2 Fleet should terminate its
%% instances. If you
%% choose to terminate the instances, the EC2 Fleet enters the
%% `deleted_terminating'
%% state. Otherwise, the EC2 Fleet enters the `deleted_running' state,
%% and the instances
%% continue to run until they are interrupted or you terminate them manually.
%%
%% For `instant' fleets, EC2 Fleet must terminate the instances when the
%% fleet is
%% deleted. A deleted `instant' fleet with running instances is not
%% supported.
%%
%% == Restrictions ==
%%
%% You can delete up to 25 `instant' fleets in a single request. If you
%% exceed this
%% number, no `instant' fleets are deleted and an error is returned.
%% There is no
%% restriction on the number of fleets of type `maintain' or
%% `request' that can be deleted
%% in a single request.
%%
%% Up to 1000 instances can be terminated in a single request to delete
%% `instant' fleets.
%%
%% For more information, see Delete an EC2
%% Fleet:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#delete-fleet
%% in the Amazon EC2 User Guide.
delete_fleets(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_fleets(Client, Input, []).
delete_fleets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFleets">>, Input, Options).

%% @doc Deletes one or more flow logs.
delete_flow_logs(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_flow_logs(Client, Input, []).
delete_flow_logs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFlowLogs">>, Input, Options).

%% @doc Deletes the specified Amazon FPGA Image (AFI).
delete_fpga_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_fpga_image(Client, Input, []).
delete_fpga_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFpgaImage">>, Input, Options).

%% @doc Deletes the specified EC2 Instance Connect Endpoint.
delete_instance_connect_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_instance_connect_endpoint(Client, Input, []).
delete_instance_connect_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInstanceConnectEndpoint">>, Input, Options).

%% @doc Deletes the specified event window.
%%
%% For more information, see Define event windows for scheduled
%% events:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html in
%% the Amazon EC2 User Guide.
delete_instance_event_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_instance_event_window(Client, Input, []).
delete_instance_event_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInstanceEventWindow">>, Input, Options).

%% @doc Deletes the specified internet gateway.
%%
%% You must detach the internet gateway from the
%% VPC before you can delete it.
delete_internet_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_internet_gateway(Client, Input, []).
delete_internet_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInternetGateway">>, Input, Options).

%% @doc Delete an IPAM.
%%
%% Deleting an IPAM removes all monitored data associated with the IPAM
%% including the historical data for CIDRs.
%%
%% For more information, see Delete an IPAM:
%% https://docs.aws.amazon.com/vpc/latest/ipam/delete-ipam.html in the Amazon
%% VPC IPAM User Guide.
delete_ipam(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ipam(Client, Input, []).
delete_ipam(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIpam">>, Input, Options).

%% @doc Delete an IPAM pool.
%%
%% You cannot delete an IPAM pool if there are allocations in it or CIDRs
%% provisioned to it. To release
%% allocations, see ReleaseIpamPoolAllocation:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ReleaseIpamPoolAllocation.html.
%% To deprovision pool
%% CIDRs, see DeprovisionIpamPoolCidr:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeprovisionIpamPoolCidr.html.
%%
%% For more information, see Delete a pool:
%% https://docs.aws.amazon.com/vpc/latest/ipam/delete-pool-ipam.html in the
%% Amazon VPC IPAM User Guide.
delete_ipam_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ipam_pool(Client, Input, []).
delete_ipam_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIpamPool">>, Input, Options).

%% @doc Deletes an IPAM resource discovery.
%%
%% A resource discovery is an IPAM component that enables IPAM to manage and
%% monitor resources that belong to the owning account.
delete_ipam_resource_discovery(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ipam_resource_discovery(Client, Input, []).
delete_ipam_resource_discovery(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIpamResourceDiscovery">>, Input, Options).

%% @doc Delete the scope for an IPAM.
%%
%% You cannot delete the default scopes.
%%
%% For more information, see Delete a scope:
%% https://docs.aws.amazon.com/vpc/latest/ipam/delete-scope-ipam.html in the
%% Amazon VPC IPAM User Guide.
delete_ipam_scope(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_ipam_scope(Client, Input, []).
delete_ipam_scope(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIpamScope">>, Input, Options).

%% @doc Deletes the specified key pair, by removing the public key from
%% Amazon EC2.
delete_key_pair(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_key_pair(Client, Input, []).
delete_key_pair(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteKeyPair">>, Input, Options).

%% @doc Deletes a launch template.
%%
%% Deleting a launch template deletes all of its
%% versions.
delete_launch_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_launch_template(Client, Input, []).
delete_launch_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLaunchTemplate">>, Input, Options).

%% @doc Deletes one or more versions of a launch template.
%%
%% You can't delete the default version of a launch template; you must
%% first assign a
%% different version as the default. If the default version is the only
%% version for the
%% launch template, you must delete the entire launch template using
%% `DeleteLaunchTemplate'.
%%
%% You can delete up to 200 launch template versions in a single request. To
%% delete more
%% than 200 versions in a single request, use `DeleteLaunchTemplate',
%% which
%% deletes the launch template and all of its versions.
%%
%% For more information, see Delete a launch template version:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-launch-template-versions.html#delete-launch-template-version
%% in the EC2 User
%% Guide.
delete_launch_template_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_launch_template_versions(Client, Input, []).
delete_launch_template_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLaunchTemplateVersions">>, Input, Options).

%% @doc Deletes the specified route from the specified local gateway route
%% table.
delete_local_gateway_route(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_local_gateway_route(Client, Input, []).
delete_local_gateway_route(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLocalGatewayRoute">>, Input, Options).

%% @doc
%% Deletes a local gateway route table.
delete_local_gateway_route_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_local_gateway_route_table(Client, Input, []).
delete_local_gateway_route_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLocalGatewayRouteTable">>, Input, Options).

%% @doc
%% Deletes a local gateway route table virtual interface group association.
delete_local_gateway_route_table_virtual_interface_group_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_local_gateway_route_table_virtual_interface_group_association(Client, Input, []).
delete_local_gateway_route_table_virtual_interface_group_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLocalGatewayRouteTableVirtualInterfaceGroupAssociation">>, Input, Options).

%% @doc Deletes the specified association between a VPC and local gateway
%% route table.
delete_local_gateway_route_table_vpc_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_local_gateway_route_table_vpc_association(Client, Input, []).
delete_local_gateway_route_table_vpc_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLocalGatewayRouteTableVpcAssociation">>, Input, Options).

%% @doc Deletes the specified managed prefix list.
%%
%% You must first remove all references to the prefix list in your resources.
delete_managed_prefix_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_managed_prefix_list(Client, Input, []).
delete_managed_prefix_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteManagedPrefixList">>, Input, Options).

%% @doc Deletes the specified NAT gateway.
%%
%% Deleting a public NAT gateway disassociates its Elastic IP address,
%% but does not release the address from your account. Deleting a NAT gateway
%% does not delete any NAT gateway
%% routes in your route tables.
delete_nat_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_nat_gateway(Client, Input, []).
delete_nat_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNatGateway">>, Input, Options).

%% @doc Deletes the specified network ACL.
%%
%% You can't delete the ACL if it's associated with any subnets. You
%% can't delete the default network ACL.
delete_network_acl(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_network_acl(Client, Input, []).
delete_network_acl(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNetworkAcl">>, Input, Options).

%% @doc Deletes the specified ingress or egress entry (rule) from the
%% specified network ACL.
delete_network_acl_entry(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_network_acl_entry(Client, Input, []).
delete_network_acl_entry(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNetworkAclEntry">>, Input, Options).

%% @doc Deletes the specified Network Access Scope.
delete_network_insights_access_scope(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_network_insights_access_scope(Client, Input, []).
delete_network_insights_access_scope(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNetworkInsightsAccessScope">>, Input, Options).

%% @doc Deletes the specified Network Access Scope analysis.
delete_network_insights_access_scope_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_network_insights_access_scope_analysis(Client, Input, []).
delete_network_insights_access_scope_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNetworkInsightsAccessScopeAnalysis">>, Input, Options).

%% @doc Deletes the specified network insights analysis.
delete_network_insights_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_network_insights_analysis(Client, Input, []).
delete_network_insights_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNetworkInsightsAnalysis">>, Input, Options).

%% @doc Deletes the specified path.
delete_network_insights_path(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_network_insights_path(Client, Input, []).
delete_network_insights_path(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNetworkInsightsPath">>, Input, Options).

%% @doc Deletes the specified network interface.
%%
%% You must detach the network interface before you can delete it.
delete_network_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_network_interface(Client, Input, []).
delete_network_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNetworkInterface">>, Input, Options).

%% @doc Deletes a permission for a network interface.
%%
%% By default, you cannot delete the
%% permission if the account for which you're removing the permission has
%% attached the
%% network interface to an instance. However, you can force delete the
%% permission,
%% regardless of any attachment.
delete_network_interface_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_network_interface_permission(Client, Input, []).
delete_network_interface_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNetworkInterfacePermission">>, Input, Options).

%% @doc Deletes the specified placement group.
%%
%% You must terminate all instances in the
%% placement group before you can delete the placement group. For more
%% information, see
%% Placement groups:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
%% in the Amazon EC2 User Guide.
delete_placement_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_placement_group(Client, Input, []).
delete_placement_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePlacementGroup">>, Input, Options).

%% @doc Delete a public IPv4 pool.
%%
%% A public IPv4 pool is an EC2 IP address pool required for the public IPv4
%% CIDRs that you own and bring to Amazon Web Services to manage with IPAM.
%% IPv6 addresses you bring to Amazon Web Services, however, use IPAM pools
%% only.
delete_public_ipv4_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_public_ipv4_pool(Client, Input, []).
delete_public_ipv4_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePublicIpv4Pool">>, Input, Options).

%% @doc Deletes the queued purchases for the specified Reserved Instances.
delete_queued_reserved_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_queued_reserved_instances(Client, Input, []).
delete_queued_reserved_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteQueuedReservedInstances">>, Input, Options).

%% @doc Deletes the specified route from the specified route table.
delete_route(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_route(Client, Input, []).
delete_route(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRoute">>, Input, Options).

%% @doc Deletes the specified route table.
%%
%% You must disassociate the route table from any subnets before you can
%% delete it. You can't delete the main route table.
delete_route_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_route_table(Client, Input, []).
delete_route_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRouteTable">>, Input, Options).

%% @doc Deletes a security group.
%%
%% If you attempt to delete a security group that is associated with an
%% instance or network interface or is
%% referenced by another security group, the operation fails with
%% `DependencyViolation'.
delete_security_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_security_group(Client, Input, []).
delete_security_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSecurityGroup">>, Input, Options).

%% @doc Deletes the specified snapshot.
%%
%% When you make periodic snapshots of a volume, the snapshots are
%% incremental, and only the
%% blocks on the device that have changed since your last snapshot are saved
%% in the new snapshot.
%% When you delete a snapshot, only the data not needed for any other
%% snapshot is removed. So
%% regardless of which prior snapshots have been deleted, all active
%% snapshots will have access
%% to all the information needed to restore the volume.
%%
%% You cannot delete a snapshot of the root device of an EBS volume used by a
%% registered AMI.
%% You must first de-register the AMI before you can delete the snapshot.
%%
%% For more information, see Delete an Amazon EBS snapshot:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-snapshot.html
%% in the
%% Amazon Elastic Compute Cloud User Guide.
delete_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_snapshot(Client, Input, []).
delete_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSnapshot">>, Input, Options).

%% @doc Deletes the data feed for Spot Instances.
delete_spot_datafeed_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_spot_datafeed_subscription(Client, Input, []).
delete_spot_datafeed_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSpotDatafeedSubscription">>, Input, Options).

%% @doc Deletes the specified subnet.
%%
%% You must terminate all running instances in the subnet before you can
%% delete the subnet.
delete_subnet(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_subnet(Client, Input, []).
delete_subnet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSubnet">>, Input, Options).

%% @doc Deletes a subnet CIDR reservation.
delete_subnet_cidr_reservation(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_subnet_cidr_reservation(Client, Input, []).
delete_subnet_cidr_reservation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSubnetCidrReservation">>, Input, Options).

%% @doc Deletes the specified set of tags from the specified set of
%% resources.
%%
%% To list the current tags, use `DescribeTags'. For more information
%% about
%% tags, see Tag
%% your Amazon EC2 resources:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html in the
%% Amazon Elastic Compute Cloud User
%% Guide.
delete_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tags(Client, Input, []).
delete_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTags">>, Input, Options).

%% @doc Deletes the specified Traffic Mirror filter.
%%
%% You cannot delete a Traffic Mirror filter that is in use by a Traffic
%% Mirror session.
delete_traffic_mirror_filter(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_traffic_mirror_filter(Client, Input, []).
delete_traffic_mirror_filter(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTrafficMirrorFilter">>, Input, Options).

%% @doc Deletes the specified Traffic Mirror rule.
delete_traffic_mirror_filter_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_traffic_mirror_filter_rule(Client, Input, []).
delete_traffic_mirror_filter_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTrafficMirrorFilterRule">>, Input, Options).

%% @doc Deletes the specified Traffic Mirror session.
delete_traffic_mirror_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_traffic_mirror_session(Client, Input, []).
delete_traffic_mirror_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTrafficMirrorSession">>, Input, Options).

%% @doc Deletes the specified Traffic Mirror target.
%%
%% You cannot delete a Traffic Mirror target that is in use by a Traffic
%% Mirror session.
delete_traffic_mirror_target(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_traffic_mirror_target(Client, Input, []).
delete_traffic_mirror_target(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTrafficMirrorTarget">>, Input, Options).

%% @doc Deletes the specified transit gateway.
delete_transit_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_transit_gateway(Client, Input, []).
delete_transit_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTransitGateway">>, Input, Options).

%% @doc Deletes the specified Connect attachment.
%%
%% You must first delete any Connect peers for
%% the attachment.
delete_transit_gateway_connect(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_transit_gateway_connect(Client, Input, []).
delete_transit_gateway_connect(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTransitGatewayConnect">>, Input, Options).

%% @doc Deletes the specified Connect peer.
delete_transit_gateway_connect_peer(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_transit_gateway_connect_peer(Client, Input, []).
delete_transit_gateway_connect_peer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTransitGatewayConnectPeer">>, Input, Options).

%% @doc Deletes the specified transit gateway multicast domain.
delete_transit_gateway_multicast_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_transit_gateway_multicast_domain(Client, Input, []).
delete_transit_gateway_multicast_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTransitGatewayMulticastDomain">>, Input, Options).

%% @doc Deletes a transit gateway peering attachment.
delete_transit_gateway_peering_attachment(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_transit_gateway_peering_attachment(Client, Input, []).
delete_transit_gateway_peering_attachment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTransitGatewayPeeringAttachment">>, Input, Options).

%% @doc Deletes the specified transit gateway policy table.
delete_transit_gateway_policy_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_transit_gateway_policy_table(Client, Input, []).
delete_transit_gateway_policy_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTransitGatewayPolicyTable">>, Input, Options).

%% @doc Deletes a reference (route) to a prefix list in a specified transit
%% gateway route table.
delete_transit_gateway_prefix_list_reference(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_transit_gateway_prefix_list_reference(Client, Input, []).
delete_transit_gateway_prefix_list_reference(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTransitGatewayPrefixListReference">>, Input, Options).

%% @doc Deletes the specified route from the specified transit gateway route
%% table.
delete_transit_gateway_route(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_transit_gateway_route(Client, Input, []).
delete_transit_gateway_route(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTransitGatewayRoute">>, Input, Options).

%% @doc Deletes the specified transit gateway route table.
%%
%% You must disassociate the route table from any
%% transit gateway route tables before you can delete it.
delete_transit_gateway_route_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_transit_gateway_route_table(Client, Input, []).
delete_transit_gateway_route_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTransitGatewayRouteTable">>, Input, Options).

%% @doc Advertises to the transit gateway that a transit gateway route table
%% is deleted.
delete_transit_gateway_route_table_announcement(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_transit_gateway_route_table_announcement(Client, Input, []).
delete_transit_gateway_route_table_announcement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTransitGatewayRouteTableAnnouncement">>, Input, Options).

%% @doc Deletes the specified VPC attachment.
delete_transit_gateway_vpc_attachment(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_transit_gateway_vpc_attachment(Client, Input, []).
delete_transit_gateway_vpc_attachment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTransitGatewayVpcAttachment">>, Input, Options).

%% @doc Delete an Amazon Web Services Verified Access endpoint.
delete_verified_access_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_verified_access_endpoint(Client, Input, []).
delete_verified_access_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVerifiedAccessEndpoint">>, Input, Options).

%% @doc Delete an Amazon Web Services Verified Access group.
delete_verified_access_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_verified_access_group(Client, Input, []).
delete_verified_access_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVerifiedAccessGroup">>, Input, Options).

%% @doc Delete an Amazon Web Services Verified Access instance.
delete_verified_access_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_verified_access_instance(Client, Input, []).
delete_verified_access_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVerifiedAccessInstance">>, Input, Options).

%% @doc Delete an Amazon Web Services Verified Access trust provider.
delete_verified_access_trust_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_verified_access_trust_provider(Client, Input, []).
delete_verified_access_trust_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVerifiedAccessTrustProvider">>, Input, Options).

%% @doc Deletes the specified EBS volume.
%%
%% The volume must be in the `available' state
%% (not attached to an instance).
%%
%% The volume can remain in the `deleting' state for several minutes.
%%
%% For more information, see Delete an Amazon EBS volume:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-volume.html
%% in the
%% Amazon Elastic Compute Cloud User Guide.
delete_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_volume(Client, Input, []).
delete_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVolume">>, Input, Options).

%% @doc Deletes the specified VPC.
%%
%% You must detach or delete all gateways and resources that are associated
%% with the VPC before you can delete it. For example, you must terminate all
%% instances running in the VPC, delete all security groups associated with
%% the VPC (except the default one), delete all route tables associated with
%% the VPC (except the default one), and so on. When you delete the VPC, it
%% deletes the VPC's default security group, network ACL, and route
%% table.
delete_vpc(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vpc(Client, Input, []).
delete_vpc(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVpc">>, Input, Options).

%% @doc Deletes the specified VPC endpoint connection notifications.
delete_vpc_endpoint_connection_notifications(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vpc_endpoint_connection_notifications(Client, Input, []).
delete_vpc_endpoint_connection_notifications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVpcEndpointConnectionNotifications">>, Input, Options).

%% @doc Deletes the specified VPC endpoint service configurations.
%%
%% Before you can delete
%% an endpoint service configuration, you must reject any `Available' or
%% `PendingAcceptance' interface endpoint connections that are attached
%% to
%% the service.
delete_vpc_endpoint_service_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vpc_endpoint_service_configurations(Client, Input, []).
delete_vpc_endpoint_service_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVpcEndpointServiceConfigurations">>, Input, Options).

%% @doc Deletes the specified VPC endpoints.
%%
%% When you delete a gateway endpoint, we delete the endpoint routes in the
%% route tables for the endpoint.
%%
%% When you delete a Gateway Load Balancer endpoint, we delete its endpoint
%% network interfaces.
%% You can only delete Gateway Load Balancer endpoints when the routes that
%% are associated with the endpoint are deleted.
%%
%% When you delete an interface endpoint, we delete its endpoint network
%% interfaces.
delete_vpc_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vpc_endpoints(Client, Input, []).
delete_vpc_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVpcEndpoints">>, Input, Options).

%% @doc Deletes a VPC peering connection.
%%
%% Either the owner of the requester VPC or the owner
%% of the accepter VPC can delete the VPC peering connection if it's in
%% the
%% `active' state. The owner of the requester VPC can delete a VPC
%% peering
%% connection in the `pending-acceptance' state. You cannot delete a VPC
%% peering
%% connection that's in the `failed' or `rejected' state.
delete_vpc_peering_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vpc_peering_connection(Client, Input, []).
delete_vpc_peering_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVpcPeeringConnection">>, Input, Options).

%% @doc Deletes the specified VPN connection.
%%
%% If you're deleting the VPC and its associated components, we recommend
%% that you detach
%% the virtual private gateway from the VPC and delete the VPC before
%% deleting the VPN
%% connection. If you believe that the tunnel credentials for your VPN
%% connection have been
%% compromised, you can delete the VPN connection and create a new one that
%% has new keys,
%% without needing to delete the VPC or virtual private gateway. If you
%% create a new VPN
%% connection, you must reconfigure the customer gateway device using the new
%% configuration
%% information returned with the new VPN connection ID.
%%
%% For certificate-based authentication, delete all Certificate Manager (ACM)
%% private
%% certificates used for the Amazon Web Services-side tunnel endpoints for
%% the VPN
%% connection before deleting the VPN connection.
delete_vpn_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vpn_connection(Client, Input, []).
delete_vpn_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVpnConnection">>, Input, Options).

%% @doc Deletes the specified static route associated with a VPN connection
%% between an
%% existing virtual private gateway and a VPN customer gateway.
%%
%% The static route allows
%% traffic to be routed from the virtual private gateway to the VPN customer
%% gateway.
delete_vpn_connection_route(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vpn_connection_route(Client, Input, []).
delete_vpn_connection_route(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVpnConnectionRoute">>, Input, Options).

%% @doc Deletes the specified virtual private gateway.
%%
%% You must first detach the virtual
%% private gateway from the VPC. Note that you don't need to delete the
%% virtual private
%% gateway if you plan to delete and recreate the VPN connection between your
%% VPC and your
%% network.
delete_vpn_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_vpn_gateway(Client, Input, []).
delete_vpn_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVpnGateway">>, Input, Options).

%% @doc Releases the specified address range that you provisioned for use
%% with your Amazon Web Services resources
%% through bring your own IP addresses (BYOIP) and deletes the corresponding
%% address pool.
%%
%% Before you can release an address range, you must stop advertising it
%% using `WithdrawByoipCidr' and you must not have any IP addresses
%% allocated from its
%% address range.
deprovision_byoip_cidr(Client, Input)
  when is_map(Client), is_map(Input) ->
    deprovision_byoip_cidr(Client, Input, []).
deprovision_byoip_cidr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeprovisionByoipCidr">>, Input, Options).

%% @doc Deprovisions your Autonomous System Number (ASN) from your Amazon Web
%% Services account.
%%
%% This action can only be called after any BYOIP CIDR associations are
%% removed from your Amazon Web Services account with DisassociateIpamByoasn:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DisassociateIpamByoasn.html.
%% For more information, see Tutorial: Bring your ASN to IPAM:
%% https://docs.aws.amazon.com/vpc/latest/ipam/tutorials-byoasn.html in the
%% Amazon VPC IPAM guide.
deprovision_ipam_byoasn(Client, Input)
  when is_map(Client), is_map(Input) ->
    deprovision_ipam_byoasn(Client, Input, []).
deprovision_ipam_byoasn(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeprovisionIpamByoasn">>, Input, Options).

%% @doc Deprovision a CIDR provisioned from an IPAM pool.
%%
%% If you deprovision a CIDR from a pool that has a source pool, the CIDR is
%% recycled back into the source pool. For more information, see Deprovision
%% pool CIDRs:
%% https://docs.aws.amazon.com/vpc/latest/ipam/depro-pool-cidr-ipam.html in
%% the Amazon VPC IPAM User Guide.
deprovision_ipam_pool_cidr(Client, Input)
  when is_map(Client), is_map(Input) ->
    deprovision_ipam_pool_cidr(Client, Input, []).
deprovision_ipam_pool_cidr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeprovisionIpamPoolCidr">>, Input, Options).

%% @doc Deprovision a CIDR from a public IPv4 pool.
deprovision_public_ipv4_pool_cidr(Client, Input)
  when is_map(Client), is_map(Input) ->
    deprovision_public_ipv4_pool_cidr(Client, Input, []).
deprovision_public_ipv4_pool_cidr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeprovisionPublicIpv4PoolCidr">>, Input, Options).

%% @doc Deregisters the specified AMI.
%%
%% After you deregister an AMI, it can't be used to launch new
%% instances.
%%
%% If you deregister an AMI that matches a Recycle Bin retention rule, the
%% AMI is retained in
%% the Recycle Bin for the specified retention period. For more information,
%% see Recycle Bin:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin.html in
%% the Amazon EC2 User Guide.
%%
%% When you deregister an AMI, it doesn't affect any instances that
%% you've already launched
%% from the AMI. You'll continue to incur usage costs for those instances
%% until you terminate
%% them.
%%
%% When you deregister an Amazon EBS-backed AMI, it doesn't affect the
%% snapshot that was created
%% for the root volume of the instance during the AMI creation process. When
%% you deregister an
%% instance store-backed AMI, it doesn't affect the files that you
%% uploaded to Amazon S3 when you
%% created the AMI.
deregister_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_image(Client, Input, []).
deregister_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterImage">>, Input, Options).

%% @doc Deregisters tag keys to prevent tags that have the specified tag keys
%% from being included
%% in scheduled event notifications for resources in the Region.
deregister_instance_event_notification_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_instance_event_notification_attributes(Client, Input, []).
deregister_instance_event_notification_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterInstanceEventNotificationAttributes">>, Input, Options).

%% @doc Deregisters the specified members (network interfaces) from the
%% transit gateway multicast group.
deregister_transit_gateway_multicast_group_members(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_transit_gateway_multicast_group_members(Client, Input, []).
deregister_transit_gateway_multicast_group_members(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterTransitGatewayMulticastGroupMembers">>, Input, Options).

%% @doc Deregisters the specified sources (network interfaces) from the
%% transit gateway multicast group.
deregister_transit_gateway_multicast_group_sources(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_transit_gateway_multicast_group_sources(Client, Input, []).
deregister_transit_gateway_multicast_group_sources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterTransitGatewayMulticastGroupSources">>, Input, Options).

%% @doc Describes attributes of your Amazon Web Services account.
%%
%% The following are the supported account attributes:
%%
%% `default-vpc': The ID of the default VPC for your account, or
%% `none'.
%%
%% `max-instances': This attribute is no longer supported. The returned
%% value does not reflect your actual vCPU limit for running On-Demand
%% Instances.
%% For more information, see On-Demand Instance Limits:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-on-demand-instances.html#ec2-on-demand-instances-limits
%% in the
%% Amazon Elastic Compute Cloud User Guide.
%%
%% `max-elastic-ips': The maximum number of Elastic IP addresses that you
%% can allocate.
%%
%% `supported-platforms': This attribute is deprecated.
%%
%% `vpc-max-elastic-ips': The maximum number of Elastic IP addresses that
%% you can allocate.
%%
%% `vpc-max-security-groups-per-interface': The maximum number of
%% security groups
%% that you can assign to a network interface.
describe_account_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_attributes(Client, Input, []).
describe_account_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountAttributes">>, Input, Options).

%% @doc Describes an Elastic IP address transfer.
%%
%% For more information, see Transfer Elastic IP addresses:
%% https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#transfer-EIPs-intro
%% in the Amazon Virtual Private Cloud User Guide.
%%
%% When you transfer an Elastic IP address, there is a two-step handshake
%% between the source and transfer Amazon Web Services accounts. When the
%% source account starts the transfer,
%% the transfer account has seven days to accept the Elastic IP address
%% transfer. During those seven days, the source account can view the
%% pending transfer by using this action. After seven days, the
%% transfer expires and ownership of the Elastic IP
%% address returns to the source
%% account. Accepted transfers are visible to the source account for three
%% days
%% after the transfers have been accepted.
describe_address_transfers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_address_transfers(Client, Input, []).
describe_address_transfers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAddressTransfers">>, Input, Options).

%% @doc Describes the specified Elastic IP addresses or all of your Elastic
%% IP addresses.
describe_addresses(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_addresses(Client, Input, []).
describe_addresses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAddresses">>, Input, Options).

%% @doc Describes the attributes of the specified Elastic IP addresses.
%%
%% For requirements, see Using reverse DNS for email applications:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS.
describe_addresses_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_addresses_attribute(Client, Input, []).
describe_addresses_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAddressesAttribute">>, Input, Options).

%% @doc Describes the longer ID format settings for all resource types in a
%% specific
%% Region.
%%
%% This request is useful for performing a quick audit to determine whether a
%% specific Region is fully opted in for longer IDs (17-character IDs).
%%
%% This request only returns information about resource types that support
%% longer IDs.
%%
%% The following resource types support longer IDs: `bundle' |
%% `conversion-task' | `customer-gateway' | `dhcp-options' |
%% `elastic-ip-allocation' | `elastic-ip-association' |
%% `export-task' | `flow-log' | `image' |
%% `import-task' | `instance' | `internet-gateway' |
%% `network-acl' | `network-acl-association' |
%% `network-interface' | `network-interface-attachment' |
%% `prefix-list' | `reservation' | `route-table' |
%% `route-table-association' | `security-group' |
%% `snapshot' | `subnet' |
%% `subnet-cidr-block-association' | `volume' | `vpc' |
%% `vpc-cidr-block-association' | `vpc-endpoint' |
%% `vpc-peering-connection' | `vpn-connection' | `vpn-gateway'.
describe_aggregate_id_format(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_aggregate_id_format(Client, Input, []).
describe_aggregate_id_format(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAggregateIdFormat">>, Input, Options).

%% @doc Describes the Availability Zones, Local Zones, and Wavelength Zones
%% that are available to
%% you.
%%
%% If there is an event impacting a zone, you can use this request to view
%% the state and any
%% provided messages for that zone.
%%
%% For more information about Availability Zones, Local Zones, and Wavelength
%% Zones, see
%% Regions and zones:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html
%% in the Amazon Elastic Compute Cloud User Guide.
describe_availability_zones(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_availability_zones(Client, Input, []).
describe_availability_zones(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAvailabilityZones">>, Input, Options).

%% @doc Describes the current Infrastructure Performance metric
%% subscriptions.
describe_aws_network_performance_metric_subscriptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_aws_network_performance_metric_subscriptions(Client, Input, []).
describe_aws_network_performance_metric_subscriptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAwsNetworkPerformanceMetricSubscriptions">>, Input, Options).

%% @doc Describes the specified bundle tasks or all of your bundle tasks.
%%
%% Completed bundle tasks are listed for only a limited time. If your bundle
%% task is no
%% longer in the list, you can still register an AMI from it. Just use
%% `RegisterImage' with the Amazon S3 bucket name and image manifest name
%% you provided
%% to the bundle task.
%%
%% The order of the elements in the response, including those within nested
%% structures,
%% might vary. Applications should not assume the elements appear in a
%% particular order.
describe_bundle_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_bundle_tasks(Client, Input, []).
describe_bundle_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBundleTasks">>, Input, Options).

%% @doc Describes the IP address ranges that were specified in calls to
%% `ProvisionByoipCidr'.
%%
%% To describe the address pools that were created when you provisioned the
%% address
%% ranges, use `DescribePublicIpv4Pools' or `DescribeIpv6Pools'.
describe_byoip_cidrs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_byoip_cidrs(Client, Input, []).
describe_byoip_cidrs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeByoipCidrs">>, Input, Options).

%% @doc Describes Capacity Block offerings available for purchase in the
%% Amazon Web Services Region that you're currently using.
%%
%% With Capacity Blocks, you purchase a specific instance type for a period
%% of time.
describe_capacity_block_offerings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_capacity_block_offerings(Client, Input, []).
describe_capacity_block_offerings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCapacityBlockOfferings">>, Input, Options).

%% @doc Describes one or more Capacity Reservation Fleets.
describe_capacity_reservation_fleets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_capacity_reservation_fleets(Client, Input, []).
describe_capacity_reservation_fleets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCapacityReservationFleets">>, Input, Options).

%% @doc Describes one or more of your Capacity Reservations.
%%
%% The results describe only the Capacity Reservations in the
%% Amazon Web Services Region that you're currently using.
describe_capacity_reservations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_capacity_reservations(Client, Input, []).
describe_capacity_reservations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCapacityReservations">>, Input, Options).

%% @doc Describes one or more of your carrier gateways.
describe_carrier_gateways(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_carrier_gateways(Client, Input, []).
describe_carrier_gateways(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCarrierGateways">>, Input, Options).

%% @doc
%% This action is deprecated.
%%
%% Describes one or more of your linked EC2-Classic instances. This request
%% only returns
%% information about EC2-Classic instances linked to a VPC through
%% ClassicLink. You cannot
%% use this request to return information about other instances.
describe_classic_link_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_classic_link_instances(Client, Input, []).
describe_classic_link_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClassicLinkInstances">>, Input, Options).

%% @doc Describes the authorization rules for a specified Client VPN
%% endpoint.
describe_client_vpn_authorization_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_client_vpn_authorization_rules(Client, Input, []).
describe_client_vpn_authorization_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClientVpnAuthorizationRules">>, Input, Options).

%% @doc Describes active client connections and connections that have been
%% terminated within the last 60
%% minutes for the specified Client VPN endpoint.
describe_client_vpn_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_client_vpn_connections(Client, Input, []).
describe_client_vpn_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClientVpnConnections">>, Input, Options).

%% @doc Describes one or more Client VPN endpoints in the account.
describe_client_vpn_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_client_vpn_endpoints(Client, Input, []).
describe_client_vpn_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClientVpnEndpoints">>, Input, Options).

%% @doc Describes the routes for the specified Client VPN endpoint.
describe_client_vpn_routes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_client_vpn_routes(Client, Input, []).
describe_client_vpn_routes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClientVpnRoutes">>, Input, Options).

%% @doc Describes the target networks associated with the specified Client
%% VPN endpoint.
describe_client_vpn_target_networks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_client_vpn_target_networks(Client, Input, []).
describe_client_vpn_target_networks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClientVpnTargetNetworks">>, Input, Options).

%% @doc Describes the specified customer-owned address pools or all of your
%% customer-owned address pools.
describe_coip_pools(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_coip_pools(Client, Input, []).
describe_coip_pools(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCoipPools">>, Input, Options).

%% @doc Describes the specified conversion tasks or all your conversion
%% tasks.
%%
%% For more information, see the
%% VM Import/Export User Guide:
%% https://docs.aws.amazon.com/vm-import/latest/userguide/.
%%
%% For information about the import manifest referenced by this API action,
%% see VM Import Manifest:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html.
describe_conversion_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_conversion_tasks(Client, Input, []).
describe_conversion_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConversionTasks">>, Input, Options).

%% @doc Describes one or more of your VPN customer gateways.
%%
%% For more information, see Amazon Web Services Site-to-Site VPN:
%% https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html in the Amazon
%% Web Services Site-to-Site VPN
%% User Guide.
describe_customer_gateways(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_customer_gateways(Client, Input, []).
describe_customer_gateways(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCustomerGateways">>, Input, Options).

%% @doc Describes one or more of your DHCP options sets.
%%
%% For more information, see DHCP options sets:
%% https://docs.aws.amazon.com/vpc/latest/userguide/VPC_DHCP_Options.html in
%% the
%% Amazon VPC User Guide.
describe_dhcp_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_dhcp_options(Client, Input, []).
describe_dhcp_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDhcpOptions">>, Input, Options).

%% @doc Describes one or more of your egress-only internet gateways.
describe_egress_only_internet_gateways(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_egress_only_internet_gateways(Client, Input, []).
describe_egress_only_internet_gateways(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEgressOnlyInternetGateways">>, Input, Options).

%% @doc
%% Amazon Elastic Graphics reached end of life on January 8, 2024.
%%
%% For
%% workloads that require graphics acceleration, we recommend that you use
%% Amazon EC2 G4ad,
%% G4dn, or G5 instances.
%%
%% Describes the Elastic Graphics accelerator associated with your instances.
%% For more information
%% about Elastic Graphics, see Amazon Elastic Graphics:
%% https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-graphics.html.
describe_elastic_gpus(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_elastic_gpus(Client, Input, []).
describe_elastic_gpus(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeElasticGpus">>, Input, Options).

%% @doc Describes the specified export image tasks or all of your export
%% image tasks.
describe_export_image_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_export_image_tasks(Client, Input, []).
describe_export_image_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExportImageTasks">>, Input, Options).

%% @doc Describes the specified export instance tasks or all of your export
%% instance tasks.
describe_export_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_export_tasks(Client, Input, []).
describe_export_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExportTasks">>, Input, Options).

%% @doc Describe details for Windows AMIs that are configured for Windows
%% fast launch.
describe_fast_launch_images(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fast_launch_images(Client, Input, []).
describe_fast_launch_images(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFastLaunchImages">>, Input, Options).

%% @doc Describes the state of fast snapshot restores for your snapshots.
describe_fast_snapshot_restores(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fast_snapshot_restores(Client, Input, []).
describe_fast_snapshot_restores(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFastSnapshotRestores">>, Input, Options).

%% @doc Describes the events for the specified EC2 Fleet during the specified
%% time.
%%
%% EC2 Fleet events are delayed by up to 30 seconds before they can be
%% described. This ensures
%% that you can query by the last evaluated time and not miss a recorded
%% event. EC2 Fleet events
%% are available for 48 hours.
%%
%% For more information, see Monitor fleet events using Amazon EventBridge:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/fleet-monitor.html in
%% the
%% Amazon EC2 User Guide.
describe_fleet_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_history(Client, Input, []).
describe_fleet_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetHistory">>, Input, Options).

%% @doc Describes the running instances for the specified EC2 Fleet.
%%
%% Currently, `DescribeFleetInstances' does not support fleets of type
%% `instant'. Instead, use `DescribeFleets', specifying the
%% `instant' fleet ID in the request.
%%
%% For more information, see Describe your
%% EC2 Fleet:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#monitor-ec2-fleet
%% in the Amazon EC2 User Guide.
describe_fleet_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleet_instances(Client, Input, []).
describe_fleet_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleetInstances">>, Input, Options).

%% @doc Describes the specified EC2 Fleet or all of your EC2 Fleets.
%%
%% If a fleet is of type `instant', you must specify the fleet ID in the
%% request, otherwise the fleet does not appear in the response.
%%
%% For more information, see Describe your
%% EC2 Fleet:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/manage-ec2-fleet.html#monitor-ec2-fleet
%% in the Amazon EC2 User Guide.
describe_fleets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleets(Client, Input, []).
describe_fleets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleets">>, Input, Options).

%% @doc Describes one or more flow logs.
%%
%% To view the published flow log records, you must view the log destination.
%% For example,
%% the CloudWatch Logs log group, the Amazon S3 bucket, or the Kinesis Data
%% Firehose delivery stream.
describe_flow_logs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_flow_logs(Client, Input, []).
describe_flow_logs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFlowLogs">>, Input, Options).

%% @doc Describes the specified attribute of the specified Amazon FPGA Image
%% (AFI).
describe_fpga_image_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fpga_image_attribute(Client, Input, []).
describe_fpga_image_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFpgaImageAttribute">>, Input, Options).

%% @doc Describes the Amazon FPGA Images (AFIs) available to you.
%%
%% These include public AFIs,
%% private AFIs that you own, and AFIs owned by other Amazon Web Services
%% accounts for which you have load
%% permissions.
describe_fpga_images(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fpga_images(Client, Input, []).
describe_fpga_images(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFpgaImages">>, Input, Options).

%% @doc Describes the Dedicated Host reservations that are available to
%% purchase.
%%
%% The results describe all of the Dedicated Host reservation offerings,
%% including
%% offerings that might not match the instance family and Region of your
%% Dedicated Hosts.
%% When purchasing an offering, ensure that the instance family and Region of
%% the offering
%% matches that of the Dedicated Hosts with which it is to be associated. For
%% more
%% information about supported instance types, see Dedicated Hosts:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html
%% in the Amazon EC2 User Guide.
describe_host_reservation_offerings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_host_reservation_offerings(Client, Input, []).
describe_host_reservation_offerings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHostReservationOfferings">>, Input, Options).

%% @doc Describes reservations that are associated with Dedicated Hosts in
%% your
%% account.
describe_host_reservations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_host_reservations(Client, Input, []).
describe_host_reservations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHostReservations">>, Input, Options).

%% @doc Describes the specified Dedicated Hosts or all your Dedicated Hosts.
%%
%% The results describe only the Dedicated Hosts in the Region you're
%% currently using.
%% All listed instances consume capacity on your Dedicated Host. Dedicated
%% Hosts that have
%% recently been released are listed with the state `released'.
describe_hosts(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_hosts(Client, Input, []).
describe_hosts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHosts">>, Input, Options).

%% @doc Describes your IAM instance profile associations.
describe_iam_instance_profile_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_iam_instance_profile_associations(Client, Input, []).
describe_iam_instance_profile_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIamInstanceProfileAssociations">>, Input, Options).

%% @doc Describes the ID format settings for your resources on a per-Region
%% basis, for example, to view which resource types are enabled for longer
%% IDs.
%%
%% This request only returns information about resource types whose ID
%% formats can be modified; it does not return information about other
%% resource types.
%%
%% The following resource types support longer IDs: `bundle' |
%% `conversion-task' | `customer-gateway' | `dhcp-options' |
%% `elastic-ip-allocation' | `elastic-ip-association' |
%% `export-task' | `flow-log' | `image' |
%% `import-task' | `instance' | `internet-gateway' |
%% `network-acl' | `network-acl-association' |
%% `network-interface' | `network-interface-attachment' |
%% `prefix-list' | `reservation' | `route-table' |
%% `route-table-association' | `security-group' |
%% `snapshot' | `subnet' |
%% `subnet-cidr-block-association' | `volume' | `vpc'
%% | `vpc-cidr-block-association' | `vpc-endpoint' |
%% `vpc-peering-connection' | `vpn-connection' | `vpn-gateway'.
%%
%% These settings apply to the IAM user who makes the request; they do not
%% apply to the entire
%% Amazon Web Services account. By default, an IAM user defaults to the same
%% settings as the root user, unless
%% they explicitly override the settings by running the `ModifyIdFormat'
%% command. Resources
%% created with longer IDs are visible to all IAM users, regardless of these
%% settings and
%% provided that they have permission to use the relevant `Describe'
%% command for the
%% resource type.
describe_id_format(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_id_format(Client, Input, []).
describe_id_format(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIdFormat">>, Input, Options).

%% @doc Describes the ID format settings for resources for the specified IAM
%% user, IAM role, or root
%% user.
%%
%% For example, you can view the resource types that are enabled for longer
%% IDs. This request only
%% returns information about resource types whose ID formats can be modified;
%% it does not return
%% information about other resource types. For more information, see Resource
%% IDs: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html
%% in the Amazon Elastic Compute Cloud User Guide.
%%
%% The following resource types support longer IDs: `bundle' |
%% `conversion-task' | `customer-gateway' | `dhcp-options' |
%% `elastic-ip-allocation' | `elastic-ip-association' |
%% `export-task' | `flow-log' | `image' |
%% `import-task' | `instance' | `internet-gateway' |
%% `network-acl' | `network-acl-association' |
%% `network-interface' | `network-interface-attachment' |
%% `prefix-list' | `reservation' | `route-table' |
%% `route-table-association' | `security-group' |
%% `snapshot' | `subnet' |
%% `subnet-cidr-block-association' | `volume' | `vpc'
%% | `vpc-cidr-block-association' | `vpc-endpoint' |
%% `vpc-peering-connection' | `vpn-connection' | `vpn-gateway'.
%%
%% These settings apply to the principal specified in the request. They do
%% not apply to the
%% principal that makes the request.
describe_identity_id_format(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_identity_id_format(Client, Input, []).
describe_identity_id_format(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIdentityIdFormat">>, Input, Options).

%% @doc Describes the specified attribute of the specified AMI.
%%
%% You can specify only one attribute
%% at a time.
%%
%% The order of the elements in the response, including those within nested
%% structures,
%% might vary. Applications should not assume the elements appear in a
%% particular order.
describe_image_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_image_attribute(Client, Input, []).
describe_image_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImageAttribute">>, Input, Options).

%% @doc Describes the specified images (AMIs, AKIs, and ARIs) available to
%% you or all of the
%% images available to you.
%%
%% The images available to you include public images, private images that you
%% own, and
%% private images owned by other Amazon Web Services accounts for which you
%% have explicit launch
%% permissions.
%%
%% Recently deregistered images appear in the returned results for a short
%% interval and then
%% return empty results. After all instances that reference a deregistered
%% AMI are terminated,
%% specifying the ID of the image will eventually return an error indicating
%% that the AMI ID
%% cannot be found.
%%
%% The order of the elements in the response, including those within nested
%% structures,
%% might vary. Applications should not assume the elements appear in a
%% particular order.
describe_images(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_images(Client, Input, []).
describe_images(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImages">>, Input, Options).

%% @doc Displays details about an import virtual machine or import snapshot
%% tasks that are already created.
describe_import_image_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_import_image_tasks(Client, Input, []).
describe_import_image_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImportImageTasks">>, Input, Options).

%% @doc Describes your import snapshot tasks.
describe_import_snapshot_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_import_snapshot_tasks(Client, Input, []).
describe_import_snapshot_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImportSnapshotTasks">>, Input, Options).

%% @doc Describes the specified attribute of the specified instance.
%%
%% You can specify only one
%% attribute at a time. Valid attribute values are: `instanceType' |
%% `kernel' | `ramdisk' | `userData' |
%% `disableApiTermination' | `instanceInitiatedShutdownBehavior'
%% | `rootDeviceName' | `blockDeviceMapping' |
%% `productCodes' | `sourceDestCheck' | `groupSet' |
%% `ebsOptimized' | `sriovNetSupport'
describe_instance_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_attribute(Client, Input, []).
describe_instance_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceAttribute">>, Input, Options).

%% @doc Describes the specified EC2 Instance Connect Endpoints or all EC2
%% Instance Connect Endpoints.
describe_instance_connect_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_connect_endpoints(Client, Input, []).
describe_instance_connect_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceConnectEndpoints">>, Input, Options).

%% @doc Describes the credit option for CPU usage of the specified burstable
%% performance
%% instances.
%%
%% The credit options are `standard' and
%% `unlimited'.
%%
%% If you do not specify an instance ID, Amazon EC2 returns burstable
%% performance
%% instances with the `unlimited' credit option, as well as instances
%% that were
%% previously configured as T2, T3, and T3a with the `unlimited' credit
%% option.
%% For example, if you resize a T2 instance, while it is configured as
%% `unlimited', to an M4 instance, Amazon EC2 returns the M4
%% instance.
%%
%% If you specify one or more instance IDs, Amazon EC2 returns the credit
%% option
%% (`standard' or `unlimited') of those instances. If you specify
%% an instance ID that is not valid, such as an instance that is not a
%% burstable
%% performance instance, an error is returned.
%%
%% Recently terminated instances might appear in the returned results. This
%% interval is
%% usually less than one hour.
%%
%% If an Availability Zone is experiencing a service disruption and you
%% specify instance
%% IDs in the affected zone, or do not specify any instance IDs at all, the
%% call fails. If
%% you specify only instance IDs in an unaffected zone, the call works
%% normally.
%%
%% For more information, see Burstable
%% performance instances:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html
%% in the Amazon EC2 User Guide.
describe_instance_credit_specifications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_credit_specifications(Client, Input, []).
describe_instance_credit_specifications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceCreditSpecifications">>, Input, Options).

%% @doc Describes the tag keys that are registered to appear in scheduled
%% event notifications for
%% resources in the current Region.
describe_instance_event_notification_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_event_notification_attributes(Client, Input, []).
describe_instance_event_notification_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceEventNotificationAttributes">>, Input, Options).

%% @doc Describes the specified event windows or all event windows.
%%
%% If you specify event window IDs, the output includes information for only
%% the specified
%% event windows. If you specify filters, the output includes information for
%% only those event
%% windows that meet the filter criteria. If you do not specify event windows
%% IDs or filters,
%% the output includes information for all event windows, which can affect
%% performance. We
%% recommend that you use pagination to ensure that the operation returns
%% quickly and
%% successfully.
%%
%% For more information, see Define event windows for scheduled
%% events:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html in
%% the Amazon EC2 User Guide.
describe_instance_event_windows(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_event_windows(Client, Input, []).
describe_instance_event_windows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceEventWindows">>, Input, Options).

%% @doc Describes the status of the specified instances or all of your
%% instances.
%%
%% By default,
%% only running instances are described, unless you specifically indicate to
%% return the
%% status of all instances.
%%
%% Instance status includes the following components:
%%
%% Status checks - Amazon EC2 performs status
%% checks on running EC2 instances to identify hardware and software issues.
%% For
%% more information, see Status checks for your instances:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-system-instance-status-check.html
%% and Troubleshoot
%% instances with failed status checks:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstances.html
%% in the Amazon EC2 User
%% Guide.
%%
%% Scheduled events - Amazon EC2 can schedule
%% events (such as reboot, stop, or terminate) for your instances related to
%% hardware issues, software updates, or system maintenance. For more
%% information,
%% see Scheduled events for your instances:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-instances-status-check_sched.html
%% in the Amazon EC2 User
%% Guide.
%%
%% Instance state - You can manage your instances
%% from the moment you launch them through their termination. For more
%% information,
%% see Instance
%% lifecycle:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html
%% in the Amazon EC2 User Guide.
%%
%% The order of the elements in the response, including those within nested
%% structures, might vary. Applications should not assume the elements appear
%% in a
%% particular order.
describe_instance_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_status(Client, Input, []).
describe_instance_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceStatus">>, Input, Options).

%% @doc Describes a tree-based hierarchy that represents the physical host
%% placement of your
%% EC2 instances within an Availability Zone or Local Zone.
%%
%% You can use this information to
%% determine the relative proximity of your EC2 instances within the Amazon
%% Web Services network to
%% support your tightly coupled workloads.
%%
%% == Limitations ==
%%
%% Supported zones
%%
%% Availability Zone
%%
%% Local Zone
%%
%% Supported instance types
%%
%% `hpc6a.48xlarge' | `hpc6id.32xlarge' |
%% `hpc7a.12xlarge' | `hpc7a.24xlarge' |
%% `hpc7a.48xlarge' | `hpc7a.96xlarge' |
%% `hpc7g.4xlarge' | `hpc7g.8xlarge' |
%% `hpc7g.16xlarge'
%%
%% `p3dn.24xlarge' | `p4d.24xlarge' |
%% `p4de.24xlarge' | `p5.48xlarge'
%%
%% `trn1.2xlarge' | `trn1.32xlarge' |
%% `trn1n.32xlarge'
%%
%% For more information, see Amazon EC2 instance
%% topology:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-topology.html
%% in the Amazon EC2 User Guide.
describe_instance_topology(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_topology(Client, Input, []).
describe_instance_topology(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceTopology">>, Input, Options).

%% @doc Returns a list of all instance types offered.
%%
%% The results can be filtered by location (Region or Availability
%% Zone). If no location is specified, the instance types offered in the
%% current Region are returned.
describe_instance_type_offerings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_type_offerings(Client, Input, []).
describe_instance_type_offerings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceTypeOfferings">>, Input, Options).

%% @doc Describes the details of the instance types that are offered in a
%% location.
%%
%% The results can be filtered by the
%% attributes of the instance types.
describe_instance_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_types(Client, Input, []).
describe_instance_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceTypes">>, Input, Options).

%% @doc Describes the specified instances or all instances.
%%
%% If you specify instance IDs, the output includes information for only the
%% specified
%% instances. If you specify filters, the output includes information for
%% only those
%% instances that meet the filter criteria. If you do not specify instance
%% IDs or filters,
%% the output includes information for all instances, which can affect
%% performance. We
%% recommend that you use pagination to ensure that the operation returns
%% quickly and
%% successfully.
%%
%% If you specify an instance ID that is not valid, an error is returned. If
%% you specify
%% an instance that you do not own, it is not included in the output.
%%
%% Recently terminated instances might appear in the returned results. This
%% interval is
%% usually less than one hour.
%%
%% If you describe instances in the rare case where an Availability Zone is
%% experiencing
%% a service disruption and you specify instance IDs that are in the affected
%% zone, or do
%% not specify any instance IDs at all, the call fails. If you describe
%% instances and
%% specify only instance IDs that are in an unaffected zone, the call works
%% normally.
%%
%% The order of the elements in the response, including those within nested
%% structures, might vary. Applications should not assume the elements appear
%% in a
%% particular order.
describe_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instances(Client, Input, []).
describe_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstances">>, Input, Options).

%% @doc Describes one or more of your internet gateways.
describe_internet_gateways(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_internet_gateways(Client, Input, []).
describe_internet_gateways(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInternetGateways">>, Input, Options).

%% @doc Describes your Autonomous System Numbers (ASNs), their provisioning
%% statuses, and the BYOIP CIDRs with which they are associated.
%%
%% For more information, see Tutorial: Bring your ASN to IPAM:
%% https://docs.aws.amazon.com/vpc/latest/ipam/tutorials-byoasn.html in the
%% Amazon VPC IPAM guide.
describe_ipam_byoasn(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_ipam_byoasn(Client, Input, []).
describe_ipam_byoasn(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIpamByoasn">>, Input, Options).

%% @doc Get information about your IPAM pools.
describe_ipam_pools(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_ipam_pools(Client, Input, []).
describe_ipam_pools(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIpamPools">>, Input, Options).

%% @doc Describes IPAM resource discoveries.
%%
%% A resource discovery is an IPAM component that enables IPAM to manage and
%% monitor resources that belong to the owning account.
describe_ipam_resource_discoveries(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_ipam_resource_discoveries(Client, Input, []).
describe_ipam_resource_discoveries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIpamResourceDiscoveries">>, Input, Options).

%% @doc Describes resource discovery association with an Amazon VPC IPAM.
%%
%% An associated resource discovery is a resource discovery that has been
%% associated with an IPAM..
describe_ipam_resource_discovery_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_ipam_resource_discovery_associations(Client, Input, []).
describe_ipam_resource_discovery_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIpamResourceDiscoveryAssociations">>, Input, Options).

%% @doc Get information about your IPAM scopes.
describe_ipam_scopes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_ipam_scopes(Client, Input, []).
describe_ipam_scopes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIpamScopes">>, Input, Options).

%% @doc Get information about your IPAM pools.
%%
%% For more information, see What is IPAM?:
%% https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html in the
%% Amazon VPC IPAM User Guide.
describe_ipams(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_ipams(Client, Input, []).
describe_ipams(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIpams">>, Input, Options).

%% @doc Describes your IPv6 address pools.
describe_ipv6_pools(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_ipv6_pools(Client, Input, []).
describe_ipv6_pools(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeIpv6Pools">>, Input, Options).

%% @doc Describes the specified key pairs or all of your key pairs.
%%
%% For more information about key pairs, see Amazon EC2 key pairs:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
%% in the Amazon Elastic Compute Cloud User Guide.
describe_key_pairs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_key_pairs(Client, Input, []).
describe_key_pairs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeKeyPairs">>, Input, Options).

%% @doc Describes one or more versions of a specified launch template.
%%
%% You can describe all
%% versions, individual versions, or a range of versions. You can also
%% describe all the
%% latest versions or all the default versions of all the launch templates in
%% your
%% account.
describe_launch_template_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_launch_template_versions(Client, Input, []).
describe_launch_template_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLaunchTemplateVersions">>, Input, Options).

%% @doc Describes one or more launch templates.
describe_launch_templates(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_launch_templates(Client, Input, []).
describe_launch_templates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLaunchTemplates">>, Input, Options).

%% @doc Describes the associations between virtual interface groups and local
%% gateway route tables.
describe_local_gateway_route_table_virtual_interface_group_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_local_gateway_route_table_virtual_interface_group_associations(Client, Input, []).
describe_local_gateway_route_table_virtual_interface_group_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociations">>, Input, Options).

%% @doc Describes the specified associations between VPCs and local gateway
%% route tables.
describe_local_gateway_route_table_vpc_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_local_gateway_route_table_vpc_associations(Client, Input, []).
describe_local_gateway_route_table_vpc_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocalGatewayRouteTableVpcAssociations">>, Input, Options).

%% @doc Describes one or more local gateway route tables.
%%
%% By default, all local gateway route tables are described.
%% Alternatively, you can filter the results.
describe_local_gateway_route_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_local_gateway_route_tables(Client, Input, []).
describe_local_gateway_route_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocalGatewayRouteTables">>, Input, Options).

%% @doc Describes the specified local gateway virtual interface groups.
describe_local_gateway_virtual_interface_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_local_gateway_virtual_interface_groups(Client, Input, []).
describe_local_gateway_virtual_interface_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocalGatewayVirtualInterfaceGroups">>, Input, Options).

%% @doc Describes the specified local gateway virtual interfaces.
describe_local_gateway_virtual_interfaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_local_gateway_virtual_interfaces(Client, Input, []).
describe_local_gateway_virtual_interfaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocalGatewayVirtualInterfaces">>, Input, Options).

%% @doc Describes one or more local gateways.
%%
%% By default, all local gateways are described.
%% Alternatively, you can filter the results.
describe_local_gateways(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_local_gateways(Client, Input, []).
describe_local_gateways(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLocalGateways">>, Input, Options).

%% @doc Describes the lock status for a snapshot.
describe_locked_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_locked_snapshots(Client, Input, []).
describe_locked_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLockedSnapshots">>, Input, Options).

%% @doc Describes your managed prefix lists and any Amazon Web
%% Services-managed prefix lists.
%%
%% To view the entries for your prefix list, use
%% `GetManagedPrefixListEntries'.
describe_managed_prefix_lists(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_managed_prefix_lists(Client, Input, []).
describe_managed_prefix_lists(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeManagedPrefixLists">>, Input, Options).

%% @doc
%% This action is deprecated.
%%
%% Describes your Elastic IP addresses that are being moved from or being
%% restored to the EC2-Classic platform.
%% This request does not return information about any other Elastic IP
%% addresses in your account.
describe_moving_addresses(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_moving_addresses(Client, Input, []).
describe_moving_addresses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMovingAddresses">>, Input, Options).

%% @doc Describes one or more of your NAT gateways.
describe_nat_gateways(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_nat_gateways(Client, Input, []).
describe_nat_gateways(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNatGateways">>, Input, Options).

%% @doc Describes one or more of your network ACLs.
%%
%% For more information, see Network ACLs:
%% https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html in
%% the
%% Amazon VPC User Guide.
describe_network_acls(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_network_acls(Client, Input, []).
describe_network_acls(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNetworkAcls">>, Input, Options).

%% @doc Describes the specified Network Access Scope analyses.
describe_network_insights_access_scope_analyses(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_network_insights_access_scope_analyses(Client, Input, []).
describe_network_insights_access_scope_analyses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNetworkInsightsAccessScopeAnalyses">>, Input, Options).

%% @doc Describes the specified Network Access Scopes.
describe_network_insights_access_scopes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_network_insights_access_scopes(Client, Input, []).
describe_network_insights_access_scopes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNetworkInsightsAccessScopes">>, Input, Options).

%% @doc Describes one or more of your network insights analyses.
describe_network_insights_analyses(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_network_insights_analyses(Client, Input, []).
describe_network_insights_analyses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNetworkInsightsAnalyses">>, Input, Options).

%% @doc Describes one or more of your paths.
describe_network_insights_paths(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_network_insights_paths(Client, Input, []).
describe_network_insights_paths(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNetworkInsightsPaths">>, Input, Options).

%% @doc Describes a network interface attribute.
%%
%% You can specify only one attribute at a time.
describe_network_interface_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_network_interface_attribute(Client, Input, []).
describe_network_interface_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNetworkInterfaceAttribute">>, Input, Options).

%% @doc Describes the permissions for your network interfaces.
describe_network_interface_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_network_interface_permissions(Client, Input, []).
describe_network_interface_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNetworkInterfacePermissions">>, Input, Options).

%% @doc Describes one or more of your network interfaces.
%%
%% If you have a large number of network interfaces, the operation fails
%% unless
%% you use pagination or one of the following filters: `group-id',
%% `mac-address', `private-dns-name', `private-ip-address',
%% `private-dns-name', `subnet-id', or `vpc-id'.
describe_network_interfaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_network_interfaces(Client, Input, []).
describe_network_interfaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNetworkInterfaces">>, Input, Options).

%% @doc Describes the specified placement groups or all of your placement
%% groups.
%%
%% For more
%% information, see Placement groups:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html
%% in the
%% Amazon EC2 User Guide.
describe_placement_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_placement_groups(Client, Input, []).
describe_placement_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePlacementGroups">>, Input, Options).

%% @doc Describes available Amazon Web Services services in a prefix list
%% format, which includes the prefix list
%% name and prefix list ID of the service and the IP address range for the
%% service.
%%
%% We recommend that you use `DescribeManagedPrefixLists' instead.
describe_prefix_lists(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_prefix_lists(Client, Input, []).
describe_prefix_lists(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePrefixLists">>, Input, Options).

%% @doc Describes the ID format settings for the root user and all IAM roles
%% and IAM users
%% that have explicitly specified a longer ID (17-character ID) preference.
%%
%% By default, all IAM roles and IAM users default to the same ID settings as
%% the root user, unless they
%% explicitly override the settings. This request is useful for identifying
%% those IAM users and IAM roles
%% that have overridden the default ID settings.
%%
%% The following resource types support longer IDs: `bundle' |
%% `conversion-task' | `customer-gateway' | `dhcp-options' |
%% `elastic-ip-allocation' | `elastic-ip-association' |
%% `export-task' | `flow-log' | `image' |
%% `import-task' | `instance' | `internet-gateway' |
%% `network-acl' | `network-acl-association' |
%% `network-interface' | `network-interface-attachment' |
%% `prefix-list' | `reservation' | `route-table' |
%% `route-table-association' | `security-group' |
%% `snapshot' | `subnet' |
%% `subnet-cidr-block-association' | `volume' | `vpc'
%% | `vpc-cidr-block-association' | `vpc-endpoint' |
%% `vpc-peering-connection' | `vpn-connection' | `vpn-gateway'.
describe_principal_id_format(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_principal_id_format(Client, Input, []).
describe_principal_id_format(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePrincipalIdFormat">>, Input, Options).

%% @doc Describes the specified IPv4 address pools.
describe_public_ipv4_pools(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_public_ipv4_pools(Client, Input, []).
describe_public_ipv4_pools(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePublicIpv4Pools">>, Input, Options).

%% @doc Describes the Regions that are enabled for your account, or all
%% Regions.
%%
%% For a list of the Regions supported by Amazon EC2, see
%% Amazon Elastic Compute Cloud endpoints and quotas:
%% https://docs.aws.amazon.com/general/latest/gr/ec2-service.html.
%%
%% For information about enabling and disabling Regions for your account, see
%% Managing Amazon Web Services Regions:
%% https://docs.aws.amazon.com/general/latest/gr/rande-manage.html in the
%% Amazon Web Services General Reference.
describe_regions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_regions(Client, Input, []).
describe_regions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRegions">>, Input, Options).

%% @doc Describes a root volume replacement task.
%%
%% For more information, see
%% Replace a root volume:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/replace-root.html in
%% the Amazon Elastic Compute Cloud User Guide.
describe_replace_root_volume_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_replace_root_volume_tasks(Client, Input, []).
describe_replace_root_volume_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReplaceRootVolumeTasks">>, Input, Options).

%% @doc Describes one or more of the Reserved Instances that you purchased.
%%
%% For more information about Reserved Instances, see Reserved
%% Instances:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html
%% in the Amazon EC2 User Guide.
%%
%% The order of the elements in the response, including those within nested
%% structures, might vary. Applications should not assume the elements appear
%% in a
%% particular order.
describe_reserved_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_instances(Client, Input, []).
describe_reserved_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedInstances">>, Input, Options).

%% @doc Describes your account's Reserved Instance listings in the
%% Reserved Instance Marketplace.
%%
%% The Reserved Instance Marketplace matches sellers who want to resell
%% Reserved Instance capacity that they no longer need with buyers who want
%% to purchase additional capacity. Reserved Instances bought and sold
%% through the Reserved Instance Marketplace work like any other Reserved
%% Instances.
%%
%% As a seller, you choose to list some or all of your Reserved Instances,
%% and you specify the upfront price to receive for them. Your Reserved
%% Instances are then listed in the Reserved Instance Marketplace and are
%% available for purchase.
%%
%% As a buyer, you specify the configuration of the Reserved Instance to
%% purchase, and the Marketplace matches what you're searching for with
%% what's available. The Marketplace first sells the lowest priced
%% Reserved Instances to you, and continues to sell available Reserved
%% Instance listings to you until your demand is met. You are charged based
%% on the total price of all of the listings that you purchase.
%%
%% For more information, see Reserved Instance Marketplace:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html
%% in the Amazon EC2 User Guide.
%%
%% The order of the elements in the response, including those within nested
%% structures, might vary. Applications should not assume the elements appear
%% in a
%% particular order.
describe_reserved_instances_listings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_instances_listings(Client, Input, []).
describe_reserved_instances_listings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedInstancesListings">>, Input, Options).

%% @doc Describes the modifications made to your Reserved Instances.
%%
%% If no parameter is specified, information about all your Reserved
%% Instances modification requests is returned. If a modification ID is
%% specified, only information about the specific modification is returned.
%%
%% For more information, see Modifying Reserved Instances:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html in
%% the Amazon EC2 User Guide.
%%
%% The order of the elements in the response, including those within nested
%% structures, might vary. Applications should not assume the elements appear
%% in a
%% particular order.
describe_reserved_instances_modifications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_instances_modifications(Client, Input, []).
describe_reserved_instances_modifications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedInstancesModifications">>, Input, Options).

%% @doc Describes Reserved Instance offerings that are available for
%% purchase.
%%
%% With Reserved Instances, you purchase the right to launch instances for a
%% period of time. During that time period, you do not receive insufficient
%% capacity errors, and you pay a lower usage rate than the rate charged for
%% On-Demand instances for the actual time used.
%%
%% If you have listed your own Reserved Instances for sale in the Reserved
%% Instance Marketplace, they will be excluded from these results. This is to
%% ensure that you do not purchase your own Reserved Instances.
%%
%% For more information, see Reserved Instance Marketplace:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html
%% in the Amazon EC2 User Guide.
%%
%% The order of the elements in the response, including those within nested
%% structures, might vary. Applications should not assume the elements appear
%% in a
%% particular order.
describe_reserved_instances_offerings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_reserved_instances_offerings(Client, Input, []).
describe_reserved_instances_offerings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReservedInstancesOfferings">>, Input, Options).

%% @doc Describes one or more of your route tables.
%%
%% Each subnet in your VPC must be associated with a route table. If a subnet
%% is not explicitly associated with any route table, it is implicitly
%% associated with the main route table. This command does not return the
%% subnet ID for implicit associations.
%%
%% For more information, see Route tables:
%% https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html in
%% the
%% Amazon VPC User Guide.
describe_route_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_route_tables(Client, Input, []).
describe_route_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRouteTables">>, Input, Options).

%% @doc Finds available schedules that meet the specified criteria.
%%
%% You can search for an available schedule no more than 3 months in advance.
%% You must meet the minimum required duration of 1,200 hours per year. For
%% example, the minimum daily schedule is 4 hours, the minimum weekly
%% schedule is 24 hours, and the minimum monthly schedule is 100 hours.
%%
%% After you find a schedule that meets your needs, call
%% `PurchaseScheduledInstances'
%% to purchase Scheduled Instances with that schedule.
describe_scheduled_instance_availability(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scheduled_instance_availability(Client, Input, []).
describe_scheduled_instance_availability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScheduledInstanceAvailability">>, Input, Options).

%% @doc Describes the specified Scheduled Instances or all your Scheduled
%% Instances.
describe_scheduled_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_scheduled_instances(Client, Input, []).
describe_scheduled_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeScheduledInstances">>, Input, Options).

%% @doc Describes the VPCs on the other side of a VPC peering connection or
%% the VPCs attached to a transit gateway that are referencing the security
%% groups you've specified in this request.
describe_security_group_references(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_security_group_references(Client, Input, []).
describe_security_group_references(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSecurityGroupReferences">>, Input, Options).

%% @doc Describes one or more of your security group rules.
describe_security_group_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_security_group_rules(Client, Input, []).
describe_security_group_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSecurityGroupRules">>, Input, Options).

%% @doc Describes the specified security groups or all of your security
%% groups.
describe_security_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_security_groups(Client, Input, []).
describe_security_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSecurityGroups">>, Input, Options).

%% @doc Describes the specified attribute of the specified snapshot.
%%
%% You can specify only one
%% attribute at a time.
%%
%% For more information about EBS snapshots, see Amazon EBS snapshots:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html in
%% the Amazon Elastic Compute Cloud User Guide.
describe_snapshot_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_snapshot_attribute(Client, Input, []).
describe_snapshot_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSnapshotAttribute">>, Input, Options).

%% @doc Describes the storage tier status of one or more Amazon EBS
%% snapshots.
describe_snapshot_tier_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_snapshot_tier_status(Client, Input, []).
describe_snapshot_tier_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSnapshotTierStatus">>, Input, Options).

%% @doc Describes the specified EBS snapshots available to you or all of the
%% EBS snapshots
%% available to you.
%%
%% The snapshots available to you include public snapshots, private snapshots
%% that you own,
%% and private snapshots owned by other Amazon Web Services accounts for
%% which you have explicit create volume
%% permissions.
%%
%% The create volume permissions fall into the following categories:
%%
%% public: The owner of the snapshot granted create volume
%% permissions for the snapshot to the `all' group. All Amazon Web
%% Services accounts have create
%% volume permissions for these snapshots.
%%
%% explicit: The owner of the snapshot granted create volume
%% permissions to a specific Amazon Web Services account.
%%
%% implicit: An Amazon Web Services account has implicit create volume
%% permissions
%% for all snapshots it owns.
%%
%% The list of snapshots returned can be filtered by specifying snapshot IDs,
%% snapshot
%% owners, or Amazon Web Services accounts with create volume permissions. If
%% no options are specified,
%% Amazon EC2 returns all snapshots for which you have create volume
%% permissions.
%%
%% If you specify one or more snapshot IDs, only snapshots that have the
%% specified IDs are
%% returned. If you specify an invalid snapshot ID, an error is returned. If
%% you specify a
%% snapshot ID for which you do not have access, it is not included in the
%% returned
%% results.
%%
%% If you specify one or more snapshot owners using the `OwnerIds'
%% option, only
%% snapshots from the specified owners and for which you have access are
%% returned. The results
%% can include the Amazon Web Services account IDs of the specified owners,
%% `amazon' for snapshots
%% owned by Amazon, or `self' for snapshots that you own.
%%
%% If you specify a list of restorable users, only snapshots with create
%% snapshot permissions
%% for those users are returned. You can specify Amazon Web Services account
%% IDs (if you own the snapshots),
%% `self' for snapshots for which you own or have explicit permissions,
%% or
%% `all' for public snapshots.
%%
%% If you are describing a long list of snapshots, we recommend that you
%% paginate the output to make the
%% list more manageable. For more information, see Pagination:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination.
%%
%% To get the state of fast snapshot restores for a snapshot, use
%% `DescribeFastSnapshotRestores'.
%%
%% For more information about EBS snapshots, see Amazon EBS snapshots:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html in
%% the Amazon Elastic Compute Cloud User Guide.
describe_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_snapshots(Client, Input, []).
describe_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSnapshots">>, Input, Options).

%% @doc Describes the data feed for Spot Instances.
%%
%% For more information, see Spot
%% Instance data feed:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html
%% in the Amazon EC2 User Guide for Linux Instances.
describe_spot_datafeed_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_spot_datafeed_subscription(Client, Input, []).
describe_spot_datafeed_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSpotDatafeedSubscription">>, Input, Options).

%% @doc Describes the running instances for the specified Spot Fleet.
describe_spot_fleet_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_spot_fleet_instances(Client, Input, []).
describe_spot_fleet_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSpotFleetInstances">>, Input, Options).

%% @doc Describes the events for the specified Spot Fleet request during the
%% specified
%% time.
%%
%% Spot Fleet events are delayed by up to 30 seconds before they can be
%% described. This
%% ensures that you can query by the last evaluated time and not miss a
%% recorded event.
%% Spot Fleet events are available for 48 hours.
%%
%% For more information, see Monitor fleet events using Amazon
%% EventBridge:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/fleet-monitor.html in
%% the Amazon EC2 User Guide.
describe_spot_fleet_request_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_spot_fleet_request_history(Client, Input, []).
describe_spot_fleet_request_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSpotFleetRequestHistory">>, Input, Options).

%% @doc Describes your Spot Fleet requests.
%%
%% Spot Fleet requests are deleted 48 hours after they are canceled and their
%% instances
%% are terminated.
describe_spot_fleet_requests(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_spot_fleet_requests(Client, Input, []).
describe_spot_fleet_requests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSpotFleetRequests">>, Input, Options).

%% @doc Describes the specified Spot Instance requests.
%%
%% You can use `DescribeSpotInstanceRequests' to find a running Spot
%% Instance by
%% examining the response. If the status of the Spot Instance is
%% `fulfilled', the
%% instance ID appears in the response and contains the identifier of the
%% instance.
%% Alternatively, you can use DescribeInstances:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeInstances
%% with a filter to look for instances where the instance lifecycle is
%% `spot'.
%%
%% We recommend that you set `MaxResults' to a value between 5 and 1000
%% to
%% limit the number of items returned. This paginates the output, which makes
%% the list
%% more manageable and returns the items faster. If the list of items exceeds
%% your
%% `MaxResults' value, then that number of items is returned along with a
%% `NextToken' value that can be passed to a subsequent
%% `DescribeSpotInstanceRequests' request to retrieve the remaining
%% items.
%%
%% Spot Instance requests are deleted four hours after they are canceled and
%% their instances are
%% terminated.
describe_spot_instance_requests(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_spot_instance_requests(Client, Input, []).
describe_spot_instance_requests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSpotInstanceRequests">>, Input, Options).

%% @doc Describes the Spot price history.
%%
%% For more information, see Spot Instance pricing history:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances-history.html
%% in the
%% Amazon EC2 User Guide for Linux Instances.
%%
%% When you specify a start and end time, the operation returns the prices of
%% the
%% instance types within that time range. It also returns the last price
%% change before the
%% start time, which is the effective price as of the start time.
describe_spot_price_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_spot_price_history(Client, Input, []).
describe_spot_price_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSpotPriceHistory">>, Input, Options).

%% @doc Describes the stale security group rules for security groups in a
%% specified VPC.
%%
%% Rules are stale when they reference a deleted security group in the same
%% VPC, peered VPC, or in separate VPCs attached to a transit gateway (with
%% security group referencing support:
%% https://docs.aws.amazon.com/vpc/latest/tgw/tgw-transit-gateways.html#create-tgw
%% enabled). Rules can also be stale if they reference a security group in a
%% peer VPC for which the VPC peering connection has
%% been deleted or if they reference a security group in a VPC that has been
%% detached from a transit gateway.
describe_stale_security_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stale_security_groups(Client, Input, []).
describe_stale_security_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStaleSecurityGroups">>, Input, Options).

%% @doc Describes the progress of the AMI store tasks.
%%
%% You can describe the store tasks for
%% specified AMIs. If you don't specify the AMIs, you get a paginated
%% list of store tasks from
%% the last 31 days.
%%
%% For each AMI task, the response indicates if the task is `InProgress',
%% `Completed', or `Failed'. For tasks `InProgress', the
%% response shows the estimated progress as a percentage.
%%
%% Tasks are listed in reverse chronological order. Currently, only tasks
%% from the past 31
%% days can be viewed.
%%
%% To use this API, you must have the required permissions. For more
%% information, see Permissions for storing and restoring AMIs using Amazon
%% S3:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html#ami-s3-permissions
%% in the
%% Amazon EC2 User Guide.
%%
%% For more information, see Store and restore an AMI using
%% Amazon S3:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html
%% in the Amazon EC2 User Guide.
describe_store_image_tasks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_store_image_tasks(Client, Input, []).
describe_store_image_tasks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStoreImageTasks">>, Input, Options).

%% @doc Describes one or more of your subnets.
%%
%% For more information, see Subnets:
%% https://docs.aws.amazon.com/vpc/latest/userguide/configure-subnets.html in
%% the
%% Amazon VPC User Guide.
describe_subnets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_subnets(Client, Input, []).
describe_subnets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSubnets">>, Input, Options).

%% @doc Describes the specified tags for your EC2 resources.
%%
%% For more information about tags, see Tag your Amazon EC2 resources:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html in the
%% Amazon Elastic Compute Cloud User Guide.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc Describes one or more Traffic Mirror filters.
describe_traffic_mirror_filters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_traffic_mirror_filters(Client, Input, []).
describe_traffic_mirror_filters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrafficMirrorFilters">>, Input, Options).

%% @doc Describes one or more Traffic Mirror sessions.
%%
%% By default, all Traffic Mirror sessions are described. Alternatively, you
%% can filter the results.
describe_traffic_mirror_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_traffic_mirror_sessions(Client, Input, []).
describe_traffic_mirror_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrafficMirrorSessions">>, Input, Options).

%% @doc Information about one or more Traffic Mirror targets.
describe_traffic_mirror_targets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_traffic_mirror_targets(Client, Input, []).
describe_traffic_mirror_targets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrafficMirrorTargets">>, Input, Options).

%% @doc Describes one or more attachments between resources and transit
%% gateways.
%%
%% By default, all attachments are described.
%% Alternatively, you can filter the results by attachment ID, attachment
%% state, resource ID, or resource owner.
describe_transit_gateway_attachments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_transit_gateway_attachments(Client, Input, []).
describe_transit_gateway_attachments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTransitGatewayAttachments">>, Input, Options).

%% @doc Describes one or more Connect peers.
describe_transit_gateway_connect_peers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_transit_gateway_connect_peers(Client, Input, []).
describe_transit_gateway_connect_peers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTransitGatewayConnectPeers">>, Input, Options).

%% @doc Describes one or more Connect attachments.
describe_transit_gateway_connects(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_transit_gateway_connects(Client, Input, []).
describe_transit_gateway_connects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTransitGatewayConnects">>, Input, Options).

%% @doc Describes one or more transit gateway multicast domains.
describe_transit_gateway_multicast_domains(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_transit_gateway_multicast_domains(Client, Input, []).
describe_transit_gateway_multicast_domains(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTransitGatewayMulticastDomains">>, Input, Options).

%% @doc Describes your transit gateway peering attachments.
describe_transit_gateway_peering_attachments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_transit_gateway_peering_attachments(Client, Input, []).
describe_transit_gateway_peering_attachments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTransitGatewayPeeringAttachments">>, Input, Options).

%% @doc Describes one or more transit gateway route policy tables.
describe_transit_gateway_policy_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_transit_gateway_policy_tables(Client, Input, []).
describe_transit_gateway_policy_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTransitGatewayPolicyTables">>, Input, Options).

%% @doc Describes one or more transit gateway route table advertisements.
describe_transit_gateway_route_table_announcements(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_transit_gateway_route_table_announcements(Client, Input, []).
describe_transit_gateway_route_table_announcements(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTransitGatewayRouteTableAnnouncements">>, Input, Options).

%% @doc Describes one or more transit gateway route tables.
%%
%% By default, all transit gateway route tables are described.
%% Alternatively, you can filter the results.
describe_transit_gateway_route_tables(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_transit_gateway_route_tables(Client, Input, []).
describe_transit_gateway_route_tables(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTransitGatewayRouteTables">>, Input, Options).

%% @doc Describes one or more VPC attachments.
%%
%% By default, all VPC attachments are described.
%% Alternatively, you can filter the results.
describe_transit_gateway_vpc_attachments(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_transit_gateway_vpc_attachments(Client, Input, []).
describe_transit_gateway_vpc_attachments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTransitGatewayVpcAttachments">>, Input, Options).

%% @doc Describes one or more transit gateways.
%%
%% By default, all transit gateways are described. Alternatively, you can
%% filter the results.
describe_transit_gateways(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_transit_gateways(Client, Input, []).
describe_transit_gateways(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTransitGateways">>, Input, Options).

%% @doc Describes one or more network interface trunk associations.
describe_trunk_interface_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trunk_interface_associations(Client, Input, []).
describe_trunk_interface_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrunkInterfaceAssociations">>, Input, Options).

%% @doc Describes the specified Amazon Web Services Verified Access
%% endpoints.
describe_verified_access_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_verified_access_endpoints(Client, Input, []).
describe_verified_access_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVerifiedAccessEndpoints">>, Input, Options).

%% @doc Describes the specified Verified Access groups.
describe_verified_access_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_verified_access_groups(Client, Input, []).
describe_verified_access_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVerifiedAccessGroups">>, Input, Options).

%% @doc Describes the specified Amazon Web Services Verified Access
%% instances.
describe_verified_access_instance_logging_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_verified_access_instance_logging_configurations(Client, Input, []).
describe_verified_access_instance_logging_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVerifiedAccessInstanceLoggingConfigurations">>, Input, Options).

%% @doc Describes the specified Amazon Web Services Verified Access
%% instances.
describe_verified_access_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_verified_access_instances(Client, Input, []).
describe_verified_access_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVerifiedAccessInstances">>, Input, Options).

%% @doc Describes the specified Amazon Web Services Verified Access trust
%% providers.
describe_verified_access_trust_providers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_verified_access_trust_providers(Client, Input, []).
describe_verified_access_trust_providers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVerifiedAccessTrustProviders">>, Input, Options).

%% @doc Describes the specified attribute of the specified volume.
%%
%% You can specify only one
%% attribute at a time.
%%
%% For more information about EBS volumes, see Amazon EBS volumes:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html in the
%% Amazon Elastic Compute Cloud User Guide.
describe_volume_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_volume_attribute(Client, Input, []).
describe_volume_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVolumeAttribute">>, Input, Options).

%% @doc Describes the status of the specified volumes.
%%
%% Volume status provides the result of the
%% checks performed on your volumes to determine events that can impair the
%% performance of your
%% volumes. The performance of a volume can be affected if an issue occurs on
%% the volume's
%% underlying host. If the volume's underlying host experiences a power
%% outage or system issue,
%% after the system is restored, there could be data inconsistencies on the
%% volume. Volume events
%% notify you if this occurs. Volume actions notify you if any action needs
%% to be taken in
%% response to the event.
%%
%% The `DescribeVolumeStatus' operation provides the following
%% information about
%% the specified volumes:
%%
%% Status: Reflects the current status of the volume. The possible
%% values are `ok', `impaired' , `warning', or
%% `insufficient-data'. If all checks pass, the overall status of the
%% volume is
%% `ok'. If the check fails, the overall status is `impaired'. If the
%% status is `insufficient-data', then the checks might still be taking
%% place on your
%% volume at the time. We recommend that you retry the request. For more
%% information about volume
%% status, see Monitor the status of your volumes:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-status.html
%% in the
%% Amazon Elastic Compute Cloud User Guide.
%%
%% Events: Reflect the cause of a volume status and might require you to
%% take action. For example, if your volume returns an `impaired' status,
%% then the
%% volume event might be `potential-data-inconsistency'. This means that
%% your volume
%% has been affected by an issue with the underlying host, has all I/O
%% operations disabled, and
%% might have inconsistent data.
%%
%% Actions: Reflect the actions you might have to take in response to an
%% event. For example, if the status of the volume is `impaired' and the
%% volume event
%% shows `potential-data-inconsistency', then the action shows
%% `enable-volume-io'. This means that you may want to enable the I/O
%% operations for
%% the volume by calling the `EnableVolumeIO' action and then check the
%% volume
%% for data consistency.
%%
%% Volume status is based on the volume status checks, and does not reflect
%% the volume state.
%% Therefore, volume status does not indicate volumes in the `error'
%% state (for
%% example, when a volume is incapable of accepting I/O.)
describe_volume_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_volume_status(Client, Input, []).
describe_volume_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVolumeStatus">>, Input, Options).

%% @doc Describes the specified EBS volumes or all of your EBS volumes.
%%
%% If you are describing a long list of volumes, we recommend that you
%% paginate the output to make the list
%% more manageable. For more information, see Pagination:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination.
%%
%% For more information about EBS volumes, see Amazon EBS volumes:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html in the
%% Amazon Elastic Compute Cloud User Guide.
describe_volumes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_volumes(Client, Input, []).
describe_volumes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVolumes">>, Input, Options).

%% @doc Describes the most recent volume modification request for the
%% specified EBS volumes.
%%
%% If a volume has never been modified, some information in the output will
%% be null.
%% If a volume has been modified more than once, the output includes only the
%% most
%% recent modification request.
%%
%% You can also use CloudWatch Events to check the status of a modification
%% to an EBS
%% volume. For information about CloudWatch Events, see the Amazon CloudWatch
%% Events User Guide:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/. For more
%% information, see
%% Monitor the progress of volume modifications:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-modifications.html
%% in the Amazon Elastic Compute Cloud User Guide.
describe_volumes_modifications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_volumes_modifications(Client, Input, []).
describe_volumes_modifications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVolumesModifications">>, Input, Options).

%% @doc Describes the specified attribute of the specified VPC.
%%
%% You can specify only one attribute at a time.
describe_vpc_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpc_attribute(Client, Input, []).
describe_vpc_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpcAttribute">>, Input, Options).

%% @doc
%% This action is deprecated.
%%
%% Describes the ClassicLink status of the specified VPCs.
describe_vpc_classic_link(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpc_classic_link(Client, Input, []).
describe_vpc_classic_link(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpcClassicLink">>, Input, Options).

%% @doc
%% This action is deprecated.
%%
%% Describes the ClassicLink DNS support status of one or more VPCs. If
%% enabled, the DNS
%% hostname of a linked EC2-Classic instance resolves to its private IP
%% address when
%% addressed from an instance in the VPC to which it's linked. Similarly,
%% the DNS hostname
%% of an instance in a VPC resolves to its private IP address when addressed
%% from a linked
%% EC2-Classic instance.
describe_vpc_classic_link_dns_support(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpc_classic_link_dns_support(Client, Input, []).
describe_vpc_classic_link_dns_support(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpcClassicLinkDnsSupport">>, Input, Options).

%% @doc Describes the connection notifications for VPC endpoints and VPC
%% endpoint
%% services.
describe_vpc_endpoint_connection_notifications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpc_endpoint_connection_notifications(Client, Input, []).
describe_vpc_endpoint_connection_notifications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpcEndpointConnectionNotifications">>, Input, Options).

%% @doc Describes the VPC endpoint connections to your VPC endpoint services,
%% including any
%% endpoints that are pending your acceptance.
describe_vpc_endpoint_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpc_endpoint_connections(Client, Input, []).
describe_vpc_endpoint_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpcEndpointConnections">>, Input, Options).

%% @doc Describes the VPC endpoint service configurations in your account
%% (your services).
describe_vpc_endpoint_service_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpc_endpoint_service_configurations(Client, Input, []).
describe_vpc_endpoint_service_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpcEndpointServiceConfigurations">>, Input, Options).

%% @doc Describes the principals (service consumers) that are permitted to
%% discover your VPC
%% endpoint service.
describe_vpc_endpoint_service_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpc_endpoint_service_permissions(Client, Input, []).
describe_vpc_endpoint_service_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpcEndpointServicePermissions">>, Input, Options).

%% @doc Describes available services to which you can create a VPC endpoint.
%%
%% When the service provider and the consumer have different accounts in
%% multiple
%% Availability Zones, and the consumer views the VPC endpoint service
%% information, the
%% response only includes the common Availability Zones. For example, when
%% the service
%% provider account uses `us-east-1a' and `us-east-1c' and the
%% consumer uses `us-east-1a' and `us-east-1b', the response includes
%% the VPC endpoint services in the common Availability Zone,
%% `us-east-1a'.
describe_vpc_endpoint_services(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpc_endpoint_services(Client, Input, []).
describe_vpc_endpoint_services(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpcEndpointServices">>, Input, Options).

%% @doc Describes your VPC endpoints.
describe_vpc_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpc_endpoints(Client, Input, []).
describe_vpc_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpcEndpoints">>, Input, Options).

%% @doc Describes one or more of your VPC peering connections.
describe_vpc_peering_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpc_peering_connections(Client, Input, []).
describe_vpc_peering_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpcPeeringConnections">>, Input, Options).

%% @doc Describes one or more of your VPCs.
describe_vpcs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpcs(Client, Input, []).
describe_vpcs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpcs">>, Input, Options).

%% @doc Describes one or more of your VPN connections.
%%
%% For more information, see Amazon Web Services Site-to-Site VPN:
%% https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html in the Amazon
%% Web Services Site-to-Site VPN
%% User Guide.
describe_vpn_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpn_connections(Client, Input, []).
describe_vpn_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpnConnections">>, Input, Options).

%% @doc Describes one or more of your virtual private gateways.
%%
%% For more information, see Amazon Web Services Site-to-Site VPN:
%% https://docs.aws.amazon.com/vpn/latest/s2svpn/VPC_VPN.html in the Amazon
%% Web Services Site-to-Site VPN
%% User Guide.
describe_vpn_gateways(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_vpn_gateways(Client, Input, []).
describe_vpn_gateways(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeVpnGateways">>, Input, Options).

%% @doc
%% This action is deprecated.
%%
%% Unlinks (detaches) a linked EC2-Classic instance from a VPC. After the
%% instance has been unlinked,
%% the VPC security groups are no longer associated with it. An instance is
%% automatically unlinked from
%% a VPC when it's stopped.
detach_classic_link_vpc(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_classic_link_vpc(Client, Input, []).
detach_classic_link_vpc(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachClassicLinkVpc">>, Input, Options).

%% @doc Detaches an internet gateway from a VPC, disabling connectivity
%% between the internet
%% and the VPC.
%%
%% The VPC must not contain any running instances with Elastic IP addresses
%% or
%% public IPv4 addresses.
detach_internet_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_internet_gateway(Client, Input, []).
detach_internet_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachInternetGateway">>, Input, Options).

%% @doc Detaches a network interface from an instance.
detach_network_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_network_interface(Client, Input, []).
detach_network_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachNetworkInterface">>, Input, Options).

%% @doc Detaches the specified Amazon Web Services Verified Access trust
%% provider from the specified Amazon Web Services Verified Access instance.
detach_verified_access_trust_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_verified_access_trust_provider(Client, Input, []).
detach_verified_access_trust_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachVerifiedAccessTrustProvider">>, Input, Options).

%% @doc Detaches an EBS volume from an instance.
%%
%% Make sure to unmount any file systems on the
%% device within your operating system before detaching the volume. Failure
%% to do so can result
%% in the volume becoming stuck in the `busy' state while detaching. If
%% this happens,
%% detachment can be delayed indefinitely until you unmount the volume, force
%% detachment, reboot
%% the instance, or all three. If an EBS volume is the root device of an
%% instance, it can't be
%% detached while the instance is running. To detach the root volume, stop
%% the instance
%% first.
%%
%% When a volume with an Amazon Web Services Marketplace product code is
%% detached from an instance, the
%% product code is no longer associated with the instance.
%%
%% You can't detach or force detach volumes that are attached to Amazon
%% ECS or
%% Fargate tasks. Attempting to do this results in the
%% `UnsupportedOperationException'
%% exception with the `Unable to detach volume attached to ECS tasks'
%% error message.
%%
%% For more information, see Detach an Amazon EBS volume:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-detaching-volume.html
%% in the
%% Amazon Elastic Compute Cloud User Guide.
detach_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_volume(Client, Input, []).
detach_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachVolume">>, Input, Options).

%% @doc Detaches a virtual private gateway from a VPC.
%%
%% You do this if you're planning to turn
%% off the VPC and not use it anymore. You can confirm a virtual private
%% gateway has been
%% completely detached from a VPC by describing the virtual private gateway
%% (any
%% attachments to the virtual private gateway are also described).
%%
%% You must wait for the attachment's state to switch to `detached'
%% before you
%% can delete the VPC or attach a different VPC to the virtual private
%% gateway.
detach_vpn_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_vpn_gateway(Client, Input, []).
detach_vpn_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachVpnGateway">>, Input, Options).

%% @doc Disables Elastic IP address transfer.
%%
%% For more information, see Transfer Elastic IP addresses:
%% https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#transfer-EIPs-intro
%% in the Amazon Virtual Private Cloud User Guide.
disable_address_transfer(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_address_transfer(Client, Input, []).
disable_address_transfer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableAddressTransfer">>, Input, Options).

%% @doc Disables Infrastructure Performance metric subscriptions.
disable_aws_network_performance_metric_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_aws_network_performance_metric_subscription(Client, Input, []).
disable_aws_network_performance_metric_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableAwsNetworkPerformanceMetricSubscription">>, Input, Options).

%% @doc Disables EBS encryption by default for your account in the current
%% Region.
%%
%% After you disable encryption by default, you can still create encrypted
%% volumes by
%% enabling encryption when you create each volume.
%%
%% Disabling encryption by default does not change the encryption status of
%% your
%% existing volumes.
%%
%% For more information, see Amazon EBS encryption:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html in
%% the
%% Amazon Elastic Compute Cloud User Guide.
disable_ebs_encryption_by_default(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_ebs_encryption_by_default(Client, Input, []).
disable_ebs_encryption_by_default(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableEbsEncryptionByDefault">>, Input, Options).

%% @doc Discontinue Windows fast launch for a Windows AMI, and clean up
%% existing pre-provisioned
%% snapshots.
%%
%% After you disable Windows fast launch, the AMI uses the standard launch
%% process for
%% each new instance. Amazon EC2 must remove all pre-provisioned snapshots
%% before you can enable
%% Windows fast launch again.
%%
%% You can only change these settings for Windows AMIs that you own or that
%% have been
%% shared with you.
disable_fast_launch(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_fast_launch(Client, Input, []).
disable_fast_launch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableFastLaunch">>, Input, Options).

%% @doc Disables fast snapshot restores for the specified snapshots in the
%% specified Availability Zones.
disable_fast_snapshot_restores(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_fast_snapshot_restores(Client, Input, []).
disable_fast_snapshot_restores(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableFastSnapshotRestores">>, Input, Options).

%% @doc Sets the AMI state to `disabled' and removes all launch
%% permissions from the
%% AMI.
%%
%% A disabled AMI can't be used for instance launches.
%%
%% A disabled AMI can't be shared. If an AMI was public or previously
%% shared, it is made
%% private. If an AMI was shared with an Amazon Web Services account,
%% organization, or Organizational Unit,
%% they lose access to the disabled AMI.
%%
%% A disabled AMI does not appear in DescribeImages:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeImages.html
%% API calls by
%% default.
%%
%% Only the AMI owner can disable an AMI.
%%
%% You can re-enable a disabled AMI using EnableImage:
%% http://amazonaws.com/AWSEC2/latest/APIReference/API_EnableImage.html.
%%
%% For more information, see Disable an AMI:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/disable-an-ami.html in
%% the
%% Amazon EC2 User Guide.
disable_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_image(Client, Input, []).
disable_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableImage">>, Input, Options).

%% @doc Disables block public access for AMIs at the account level in the
%% specified Amazon Web Services Region.
%%
%% This removes the block public access restriction
%% from your account. With the restriction removed, you can publicly share
%% your AMIs in the
%% specified Amazon Web Services Region.
%%
%% The API can take up to 10 minutes to configure this setting. During this
%% time, if you run
%% GetImageBlockPublicAccessState:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetImageBlockPublicAccessState.html,
%% the response will be
%% `block-new-sharing'. When the API has completed the configuration, the
%% response
%% will be `unblocked'.
%%
%% For more information, see Block
%% public access to your AMIs:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sharingamis-intro.html#block-public-access-to-amis
%% in the Amazon EC2 User Guide.
disable_image_block_public_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_image_block_public_access(Client, Input, []).
disable_image_block_public_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableImageBlockPublicAccess">>, Input, Options).

%% @doc Cancels the deprecation of the specified AMI.
%%
%% For more information, see Deprecate an AMI:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-deprecate.html in
%% the
%% Amazon EC2 User Guide.
disable_image_deprecation(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_image_deprecation(Client, Input, []).
disable_image_deprecation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableImageDeprecation">>, Input, Options).

%% @doc Disable the IPAM account.
%%
%% For more information, see Enable integration with Organizations:
%% https://docs.aws.amazon.com/vpc/latest/ipam/enable-integ-ipam.html in the
%% Amazon VPC IPAM User Guide.
disable_ipam_organization_admin_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_ipam_organization_admin_account(Client, Input, []).
disable_ipam_organization_admin_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableIpamOrganizationAdminAccount">>, Input, Options).

%% @doc Disables access to the EC2 serial console of all instances for your
%% account.
%%
%% By default,
%% access to the EC2 serial console is disabled for your account. For more
%% information, see
%% Manage account access to the EC2 serial console:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configure-access-to-serial-console.html#serial-console-account-access
%% in the Amazon EC2
%% User Guide.
disable_serial_console_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_serial_console_access(Client, Input, []).
disable_serial_console_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableSerialConsoleAccess">>, Input, Options).

%% @doc Disables the block public access for snapshots setting at
%% the account level for the specified Amazon Web Services Region.
%%
%% After you disable block public
%% access for snapshots in a Region, users can publicly share snapshots in
%% that Region.
%%
%% If block public access is enabled in `block-all-sharing' mode, and
%% you disable block public access, all snapshots that were previously
%% publicly shared
%% are no longer treated as private and they become publicly accessible
%% again.
%%
%% For more information, see
%% Block public access for snapshots:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-public-access-snapshots.html
%% in the Amazon Elastic Compute Cloud User Guide .
disable_snapshot_block_public_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_snapshot_block_public_access(Client, Input, []).
disable_snapshot_block_public_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableSnapshotBlockPublicAccess">>, Input, Options).

%% @doc Disables the specified resource attachment from propagating routes to
%% the specified
%% propagation route table.
disable_transit_gateway_route_table_propagation(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_transit_gateway_route_table_propagation(Client, Input, []).
disable_transit_gateway_route_table_propagation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableTransitGatewayRouteTablePropagation">>, Input, Options).

%% @doc Disables a virtual private gateway (VGW) from propagating routes to a
%% specified route
%% table of a VPC.
disable_vgw_route_propagation(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_vgw_route_propagation(Client, Input, []).
disable_vgw_route_propagation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableVgwRoutePropagation">>, Input, Options).

%% @doc
%% This action is deprecated.
%%
%% Disables ClassicLink for a VPC. You cannot disable ClassicLink for a VPC
%% that has EC2-Classic instances
%% linked to it.
disable_vpc_classic_link(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_vpc_classic_link(Client, Input, []).
disable_vpc_classic_link(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableVpcClassicLink">>, Input, Options).

%% @doc
%% This action is deprecated.
%%
%% Disables ClassicLink DNS support for a VPC. If disabled, DNS hostnames
%% resolve to
%% public IP addresses when addressed between a linked EC2-Classic instance
%% and instances
%% in the VPC to which it's linked.
%%
%% You must specify a VPC ID in the request.
disable_vpc_classic_link_dns_support(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_vpc_classic_link_dns_support(Client, Input, []).
disable_vpc_classic_link_dns_support(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableVpcClassicLinkDnsSupport">>, Input, Options).

%% @doc Disassociates an Elastic IP address from the instance or network
%% interface it's associated with.
%%
%% This is an idempotent operation. If you perform the operation more than
%% once, Amazon EC2 doesn't return an error.
disassociate_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_address(Client, Input, []).
disassociate_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateAddress">>, Input, Options).

%% @doc Disassociates a target network from the specified Client VPN
%% endpoint.
%%
%% When you disassociate the
%% last target network from a Client VPN, the following happens:
%%
%% The route that was automatically added for the VPC is deleted
%%
%% All active client connections are terminated
%%
%% New client connections are disallowed
%%
%% The Client VPN endpoint's status changes to `pending-associate'
disassociate_client_vpn_target_network(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_client_vpn_target_network(Client, Input, []).
disassociate_client_vpn_target_network(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateClientVpnTargetNetwork">>, Input, Options).

%% @doc Disassociates an IAM role from an Certificate Manager (ACM)
%% certificate.
%%
%% Disassociating an IAM role
%% from an ACM certificate removes the Amazon S3 object that contains the
%% certificate, certificate chain, and
%% encrypted private key from the Amazon S3 bucket. It also revokes the IAM
%% role's permission to use the
%% KMS key used to encrypt the private key. This effectively revokes the
%% role's permission
%% to use the certificate.
disassociate_enclave_certificate_iam_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_enclave_certificate_iam_role(Client, Input, []).
disassociate_enclave_certificate_iam_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateEnclaveCertificateIamRole">>, Input, Options).

%% @doc Disassociates an IAM instance profile from a running or stopped
%% instance.
%%
%% Use `DescribeIamInstanceProfileAssociations' to get the association
%% ID.
disassociate_iam_instance_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_iam_instance_profile(Client, Input, []).
disassociate_iam_instance_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateIamInstanceProfile">>, Input, Options).

%% @doc Disassociates one or more targets from an event window.
%%
%% For more information, see Define event windows for scheduled
%% events:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html in
%% the Amazon EC2 User Guide.
disassociate_instance_event_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_instance_event_window(Client, Input, []).
disassociate_instance_event_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateInstanceEventWindow">>, Input, Options).

%% @doc Remove the association between your Autonomous System Number (ASN)
%% and your BYOIP CIDR.
%%
%% You may want to use this action to disassociate an ASN from a CIDR or if
%% you want to swap ASNs.
%% For more information, see Tutorial: Bring your ASN to IPAM:
%% https://docs.aws.amazon.com/vpc/latest/ipam/tutorials-byoasn.html in the
%% Amazon VPC IPAM guide.
disassociate_ipam_byoasn(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_ipam_byoasn(Client, Input, []).
disassociate_ipam_byoasn(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateIpamByoasn">>, Input, Options).

%% @doc Disassociates a resource discovery from an Amazon VPC IPAM.
%%
%% A resource discovery is an IPAM component that enables IPAM to manage and
%% monitor resources that belong to the owning account.
disassociate_ipam_resource_discovery(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_ipam_resource_discovery(Client, Input, []).
disassociate_ipam_resource_discovery(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateIpamResourceDiscovery">>, Input, Options).

%% @doc Disassociates secondary Elastic IP addresses (EIPs) from a public NAT
%% gateway.
%%
%% You cannot disassociate your primary EIP. For more information, see Edit
%% secondary IP address associations:
%% https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-edit-secondary
%% in the Amazon VPC User Guide.
%%
%% While disassociating is in progress, you cannot associate/disassociate
%% additional EIPs while the connections are being drained. You are, however,
%% allowed to delete the NAT gateway.
%%
%% An EIP is released only at the end of MaxDrainDurationSeconds. It stays
%% associated and supports the existing connections but does not support any
%% new connections
%% (new connections are distributed across the remaining associated EIPs). As
%% the existing
%% connections drain out, the EIPs (and the corresponding private IP
%% addresses mapped to them)
%% are released.
disassociate_nat_gateway_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_nat_gateway_address(Client, Input, []).
disassociate_nat_gateway_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateNatGatewayAddress">>, Input, Options).

%% @doc Disassociates a subnet or gateway from a route table.
%%
%% After you perform this action, the subnet no longer uses the routes in the
%% route table.
%% Instead, it uses the routes in the VPC's main route table. For more
%% information
%% about route tables, see Route
%% tables:
%% https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html in
%% the Amazon VPC User Guide.
disassociate_route_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_route_table(Client, Input, []).
disassociate_route_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateRouteTable">>, Input, Options).

%% @doc Disassociates a CIDR block from a subnet.
%%
%% Currently, you can disassociate an IPv6 CIDR block only. You must detach
%% or delete all gateways and resources that are associated with the CIDR
%% block before you can disassociate it.
disassociate_subnet_cidr_block(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_subnet_cidr_block(Client, Input, []).
disassociate_subnet_cidr_block(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateSubnetCidrBlock">>, Input, Options).

%% @doc Disassociates the specified subnets from the transit gateway
%% multicast domain.
disassociate_transit_gateway_multicast_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_transit_gateway_multicast_domain(Client, Input, []).
disassociate_transit_gateway_multicast_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateTransitGatewayMulticastDomain">>, Input, Options).

%% @doc Removes the association between an an attachment and a policy table.
disassociate_transit_gateway_policy_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_transit_gateway_policy_table(Client, Input, []).
disassociate_transit_gateway_policy_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateTransitGatewayPolicyTable">>, Input, Options).

%% @doc Disassociates a resource attachment from a transit gateway route
%% table.
disassociate_transit_gateway_route_table(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_transit_gateway_route_table(Client, Input, []).
disassociate_transit_gateway_route_table(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateTransitGatewayRouteTable">>, Input, Options).

%% @doc Removes an association between a branch network interface with a
%% trunk network interface.
disassociate_trunk_interface(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_trunk_interface(Client, Input, []).
disassociate_trunk_interface(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateTrunkInterface">>, Input, Options).

%% @doc Disassociates a CIDR block from a VPC.
%%
%% To disassociate the CIDR block, you must
%% specify its association ID. You can get the association ID by using
%% `DescribeVpcs'. You must detach or delete all gateways and resources
%% that
%% are associated with the CIDR block before you can disassociate it.
%%
%% You cannot disassociate the CIDR block with which you originally created
%% the VPC (the
%% primary CIDR block).
disassociate_vpc_cidr_block(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_vpc_cidr_block(Client, Input, []).
disassociate_vpc_cidr_block(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateVpcCidrBlock">>, Input, Options).

%% @doc Enables Elastic IP address transfer.
%%
%% For more information, see Transfer Elastic IP addresses:
%% https://docs.aws.amazon.com/vpc/latest/userguide/vpc-eips.html#transfer-EIPs-intro
%% in the Amazon Virtual Private Cloud User Guide.
enable_address_transfer(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_address_transfer(Client, Input, []).
enable_address_transfer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableAddressTransfer">>, Input, Options).

%% @doc Enables Infrastructure Performance subscriptions.
enable_aws_network_performance_metric_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_aws_network_performance_metric_subscription(Client, Input, []).
enable_aws_network_performance_metric_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableAwsNetworkPerformanceMetricSubscription">>, Input, Options).

%% @doc Enables EBS encryption by default for your account in the current
%% Region.
%%
%% After you enable encryption by default, the EBS volumes that you create
%% are
%% always encrypted, either using the default KMS key or the KMS key that you
%% specified
%% when you created each volume. For more information, see Amazon EBS
%% encryption:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html in
%% the
%% Amazon Elastic Compute Cloud User Guide.
%%
%% You can specify the default KMS key for encryption by default using
%% `ModifyEbsDefaultKmsKeyId'
%% or `ResetEbsDefaultKmsKeyId'.
%%
%% Enabling encryption by default has no effect on the encryption status of
%% your
%% existing volumes.
%%
%% After you enable encryption by default, you can no longer launch instances
%% using instance types that do not support encryption. For more information,
%% see Supported
%% instance types:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html#EBSEncryption_supported_instances.
enable_ebs_encryption_by_default(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_ebs_encryption_by_default(Client, Input, []).
enable_ebs_encryption_by_default(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableEbsEncryptionByDefault">>, Input, Options).

%% @doc When you enable Windows fast launch for a Windows AMI, images are
%% pre-provisioned, using
%% snapshots to launch instances up to 65% faster.
%%
%% To create the optimized Windows image, Amazon EC2
%% launches an instance and runs through Sysprep steps, rebooting as
%% required. Then it creates a
%% set of reserved snapshots that are used for subsequent launches. The
%% reserved snapshots are
%% automatically replenished as they are used, depending on your settings for
%% launch
%% frequency.
%%
%% You can only change these settings for Windows AMIs that you own or that
%% have been
%% shared with you.
enable_fast_launch(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_fast_launch(Client, Input, []).
enable_fast_launch(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableFastLaunch">>, Input, Options).

%% @doc Enables fast snapshot restores for the specified snapshots in the
%% specified Availability Zones.
%%
%% You get the full benefit of fast snapshot restores after they enter the
%% `enabled' state.
%% To get the current state of fast snapshot restores, use
%% `DescribeFastSnapshotRestores'.
%% To disable fast snapshot restores, use `DisableFastSnapshotRestores'.
%%
%% For more information, see Amazon EBS fast snapshot
%% restore:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-fast-snapshot-restore.html
%% in the Amazon Elastic Compute Cloud User Guide.
enable_fast_snapshot_restores(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_fast_snapshot_restores(Client, Input, []).
enable_fast_snapshot_restores(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableFastSnapshotRestores">>, Input, Options).

%% @doc Re-enables a disabled AMI.
%%
%% The re-enabled AMI is marked as `available' and can
%% be used for instance launches, appears in describe operations, and can be
%% shared. Amazon Web Services
%% accounts, organizations, and Organizational Units that lost access to the
%% AMI when it was
%% disabled do not regain access automatically. Once the AMI is available, it
%% can be shared with
%% them again.
%%
%% Only the AMI owner can re-enable a disabled AMI.
%%
%% For more information, see Disable an AMI:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/disable-an-ami.html in
%% the
%% Amazon EC2 User Guide.
enable_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_image(Client, Input, []).
enable_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableImage">>, Input, Options).

%% @doc Enables block public access for AMIs at the account level in the
%% specified Amazon Web Services Region.
%%
%% This prevents the public sharing of your AMIs. However, if you already
%% have public AMIs, they will remain publicly available.
%%
%% The API can take up to 10 minutes to configure this setting. During this
%% time, if you run
%% GetImageBlockPublicAccessState:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetImageBlockPublicAccessState.html,
%% the response will be `unblocked'. When
%% the API has completed the configuration, the response will be
%% `block-new-sharing'.
%%
%% For more information, see Block
%% public access to your AMIs:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sharingamis-intro.html#block-public-access-to-amis
%% in the Amazon EC2 User Guide.
enable_image_block_public_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_image_block_public_access(Client, Input, []).
enable_image_block_public_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableImageBlockPublicAccess">>, Input, Options).

%% @doc Enables deprecation of the specified AMI at the specified date and
%% time.
%%
%% For more information, see Deprecate an AMI:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-deprecate.html in
%% the
%% Amazon EC2 User Guide.
enable_image_deprecation(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_image_deprecation(Client, Input, []).
enable_image_deprecation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableImageDeprecation">>, Input, Options).

%% @doc Enable an Organizations member account as the IPAM admin account.
%%
%% You cannot select the Organizations management account as the IPAM admin
%% account. For more information, see Enable integration with Organizations:
%% https://docs.aws.amazon.com/vpc/latest/ipam/enable-integ-ipam.html in the
%% Amazon VPC IPAM User Guide.
enable_ipam_organization_admin_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_ipam_organization_admin_account(Client, Input, []).
enable_ipam_organization_admin_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableIpamOrganizationAdminAccount">>, Input, Options).

%% @doc Establishes a trust relationship between Reachability Analyzer and
%% Organizations.
%%
%% This operation must be performed by the management account for the
%% organization.
%%
%% After you establish a trust relationship, a user in the management account
%% or
%% a delegated administrator account can run a cross-account analysis using
%% resources
%% from the member accounts.
enable_reachability_analyzer_organization_sharing(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_reachability_analyzer_organization_sharing(Client, Input, []).
enable_reachability_analyzer_organization_sharing(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableReachabilityAnalyzerOrganizationSharing">>, Input, Options).

%% @doc Enables access to the EC2 serial console of all instances for your
%% account.
%%
%% By default,
%% access to the EC2 serial console is disabled for your account. For more
%% information, see Manage account access to the EC2 serial console:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configure-access-to-serial-console.html#serial-console-account-access
%% in the Amazon EC2 User Guide.
enable_serial_console_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_serial_console_access(Client, Input, []).
enable_serial_console_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableSerialConsoleAccess">>, Input, Options).

%% @doc Enables or modifies the block public access for snapshots
%% setting at the account level for the specified Amazon Web Services Region.
%%
%% After you enable block
%% public access for snapshots in a Region, users can no longer request
%% public sharing
%% for snapshots in that Region. Snapshots that are already publicly shared
%% are either
%% treated as private or they remain publicly shared, depending on the
%% State that you specify.
%%
%% If block public access is enabled in `block-all-sharing' mode, and
%% you change the mode to `block-new-sharing', all snapshots that were
%% previously publicly shared are no longer treated as private and they
%% become publicly
%% accessible again.
%%
%% For more information, see
%% Block public access for snapshots:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-public-access-snapshots.html
%% in the Amazon Elastic Compute Cloud User Guide.
enable_snapshot_block_public_access(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_snapshot_block_public_access(Client, Input, []).
enable_snapshot_block_public_access(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableSnapshotBlockPublicAccess">>, Input, Options).

%% @doc Enables the specified attachment to propagate routes to the specified
%% propagation route table.
enable_transit_gateway_route_table_propagation(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_transit_gateway_route_table_propagation(Client, Input, []).
enable_transit_gateway_route_table_propagation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableTransitGatewayRouteTablePropagation">>, Input, Options).

%% @doc Enables a virtual private gateway (VGW) to propagate routes to the
%% specified route
%% table of a VPC.
enable_vgw_route_propagation(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_vgw_route_propagation(Client, Input, []).
enable_vgw_route_propagation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableVgwRoutePropagation">>, Input, Options).

%% @doc Enables I/O operations for a volume that had I/O operations disabled
%% because the data on
%% the volume was potentially inconsistent.
enable_volume_i_o(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_volume_i_o(Client, Input, []).
enable_volume_i_o(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableVolumeIO">>, Input, Options).

%% @doc
%% This action is deprecated.
%%
%% Enables a VPC for ClassicLink. You can then link EC2-Classic instances to
%% your
%% ClassicLink-enabled VPC to allow communication over private IP addresses.
%% You cannot
%% enable your VPC for ClassicLink if any of your VPC route tables have
%% existing routes for
%% address ranges within the `10.0.0.0/8' IP address range, excluding
%% local
%% routes for VPCs in the `10.0.0.0/16' and `10.1.0.0/16' IP address
%% ranges.
enable_vpc_classic_link(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_vpc_classic_link(Client, Input, []).
enable_vpc_classic_link(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableVpcClassicLink">>, Input, Options).

%% @doc
%% This action is deprecated.
%%
%% Enables a VPC to support DNS hostname resolution for ClassicLink. If
%% enabled, the DNS
%% hostname of a linked EC2-Classic instance resolves to its private IP
%% address when
%% addressed from an instance in the VPC to which it's linked. Similarly,
%% the DNS hostname
%% of an instance in a VPC resolves to its private IP address when addressed
%% from a linked
%% EC2-Classic instance.
%%
%% You must specify a VPC ID in the request.
enable_vpc_classic_link_dns_support(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_vpc_classic_link_dns_support(Client, Input, []).
enable_vpc_classic_link_dns_support(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableVpcClassicLinkDnsSupport">>, Input, Options).

%% @doc Downloads the client certificate revocation list for the specified
%% Client VPN endpoint.
export_client_vpn_client_certificate_revocation_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_client_vpn_client_certificate_revocation_list(Client, Input, []).
export_client_vpn_client_certificate_revocation_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportClientVpnClientCertificateRevocationList">>, Input, Options).

%% @doc Downloads the contents of the Client VPN endpoint configuration file
%% for the specified Client VPN endpoint.
%%
%% The Client VPN endpoint configuration
%% file includes the Client VPN endpoint and certificate information clients
%% need to establish a connection
%% with the Client VPN endpoint.
export_client_vpn_client_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_client_vpn_client_configuration(Client, Input, []).
export_client_vpn_client_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportClientVpnClientConfiguration">>, Input, Options).

%% @doc Exports an Amazon Machine Image (AMI) to a VM file.
%%
%% For more information, see Exporting a VM
%% directly from an Amazon Machine Image (AMI):
%% https://docs.aws.amazon.com/vm-import/latest/userguide/vmexport_image.html
%% in the
%% VM Import/Export User Guide.
export_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_image(Client, Input, []).
export_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportImage">>, Input, Options).

%% @doc Exports routes from the specified transit gateway route table to the
%% specified S3 bucket.
%%
%% By default, all routes are exported. Alternatively, you can filter by CIDR
%% range.
%%
%% The routes are saved to the specified bucket in a JSON file. For more
%% information, see
%% Export Route Tables
%% to Amazon S3:
%% https://docs.aws.amazon.com/vpc/latest/tgw/tgw-route-tables.html#tgw-export-route-tables
%% in Transit Gateways.
export_transit_gateway_routes(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_transit_gateway_routes(Client, Input, []).
export_transit_gateway_routes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportTransitGatewayRoutes">>, Input, Options).

%% @doc Returns the IAM roles that are associated with the specified ACM
%% (ACM) certificate.
%%
%% It also returns the name of the Amazon S3 bucket and the Amazon S3 object
%% key where the certificate,
%% certificate chain, and encrypted private key bundle are stored, and the
%% ARN of the KMS key
%% that's used to encrypt the private key.
get_associated_enclave_certificate_iam_roles(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_associated_enclave_certificate_iam_roles(Client, Input, []).
get_associated_enclave_certificate_iam_roles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAssociatedEnclaveCertificateIamRoles">>, Input, Options).

%% @doc Gets information about the IPv6 CIDR block associations for a
%% specified IPv6 address pool.
get_associated_ipv6_pool_cidrs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_associated_ipv6_pool_cidrs(Client, Input, []).
get_associated_ipv6_pool_cidrs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAssociatedIpv6PoolCidrs">>, Input, Options).

%% @doc Gets network performance data.
get_aws_network_performance_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_aws_network_performance_data(Client, Input, []).
get_aws_network_performance_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAwsNetworkPerformanceData">>, Input, Options).

%% @doc Gets usage information about a Capacity Reservation.
%%
%% If the Capacity Reservation is shared, it shows usage information for the
%% Capacity Reservation owner
%% and each Amazon Web Services account that is currently using the shared
%% capacity. If the Capacity Reservation is not shared, it shows only
%% the Capacity Reservation owner's usage.
get_capacity_reservation_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_capacity_reservation_usage(Client, Input, []).
get_capacity_reservation_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCapacityReservationUsage">>, Input, Options).

%% @doc Describes the allocations from the specified customer-owned address
%% pool.
get_coip_pool_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_coip_pool_usage(Client, Input, []).
get_coip_pool_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCoipPoolUsage">>, Input, Options).

%% @doc Gets the console output for the specified instance.
%%
%% For Linux instances, the instance
%% console output displays the exact console output that would normally be
%% displayed on a
%% physical monitor attached to a computer. For Windows instances, the
%% instance console
%% output includes the last three system event log errors.
%%
%% By default, the console output returns buffered information that was
%% posted shortly
%% after an instance transition state (start, stop, reboot, or terminate).
%% This information
%% is available for at least one hour after the most recent post. Only the
%% most recent 64
%% KB of console output is available.
%%
%% You can optionally retrieve the latest serial console output at any time
%% during the
%% instance lifecycle. This option is supported on instance types that use
%% the Nitro
%% hypervisor.
%%
%% For more information, see Instance
%% console output:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-console.html#instance-console-console-output
%% in the Amazon EC2 User Guide.
get_console_output(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_console_output(Client, Input, []).
get_console_output(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConsoleOutput">>, Input, Options).

%% @doc Retrieve a JPG-format screenshot of a running instance to help with
%% troubleshooting.
%%
%% The returned content is Base64-encoded.
get_console_screenshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_console_screenshot(Client, Input, []).
get_console_screenshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConsoleScreenshot">>, Input, Options).

%% @doc Describes the default credit option for CPU usage of a burstable
%% performance instance
%% family.
%%
%% For more information, see Burstable
%% performance instances:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html
%% in the Amazon EC2 User Guide.
get_default_credit_specification(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_default_credit_specification(Client, Input, []).
get_default_credit_specification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDefaultCreditSpecification">>, Input, Options).

%% @doc Describes the default KMS key for EBS encryption by default for your
%% account in this Region.
%%
%% You can change the default KMS key for encryption by default using
%% `ModifyEbsDefaultKmsKeyId' or
%% `ResetEbsDefaultKmsKeyId'.
%%
%% For more information, see Amazon EBS encryption:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html
%% in the Amazon Elastic Compute Cloud User Guide.
get_ebs_default_kms_key_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ebs_default_kms_key_id(Client, Input, []).
get_ebs_default_kms_key_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEbsDefaultKmsKeyId">>, Input, Options).

%% @doc Describes whether EBS encryption by default is enabled for your
%% account in the current
%% Region.
%%
%% For more information, see Amazon EBS encryption:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html
%% in the Amazon Elastic Compute Cloud User Guide.
get_ebs_encryption_by_default(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ebs_encryption_by_default(Client, Input, []).
get_ebs_encryption_by_default(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEbsEncryptionByDefault">>, Input, Options).

%% @doc Generates a CloudFormation template that streamlines and automates
%% the integration of VPC flow logs
%% with Amazon Athena.
%%
%% This make it easier for you to query and gain insights from VPC flow logs
%% data.
%% Based on the information that you provide, we configure resources in the
%% template to do the following:
%%
%% Create a table in Athena that maps fields to a custom log format
%%
%% Create a Lambda function that updates the table with new partitions on a
%% daily, weekly, or
%% monthly basis
%%
%% Create a table partitioned between two timestamps in the past
%%
%% Create a set of named queries in Athena that you can use to get started
%% quickly
%%
%% `GetFlowLogsIntegrationTemplate' does not support integration between
%% Amazon Web Services Transit Gateway Flow Logs and Amazon Athena.
get_flow_logs_integration_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_flow_logs_integration_template(Client, Input, []).
get_flow_logs_integration_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFlowLogsIntegrationTemplate">>, Input, Options).

%% @doc Lists the resource groups to which a Capacity Reservation has been
%% added.
get_groups_for_capacity_reservation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_groups_for_capacity_reservation(Client, Input, []).
get_groups_for_capacity_reservation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetGroupsForCapacityReservation">>, Input, Options).

%% @doc Preview a reservation purchase with configurations that match those
%% of your Dedicated
%% Host.
%%
%% You must have active Dedicated Hosts in your account before you purchase a
%% reservation.
%%
%% This is a preview of the `PurchaseHostReservation' action and does not
%% result in the offering being purchased.
get_host_reservation_purchase_preview(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_host_reservation_purchase_preview(Client, Input, []).
get_host_reservation_purchase_preview(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetHostReservationPurchasePreview">>, Input, Options).

%% @doc Gets the current state of block public access for AMIs at the account
%% level in the specified Amazon Web Services Region.
%%
%% For more information, see Block
%% public access to your AMIs:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/sharingamis-intro.html#block-public-access-to-amis
%% in the Amazon EC2 User Guide.
get_image_block_public_access_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_image_block_public_access_state(Client, Input, []).
get_image_block_public_access_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetImageBlockPublicAccessState">>, Input, Options).

%% @doc Returns a list of instance types with the specified instance
%% attributes.
%%
%% You can
%% use the response to preview the instance types without launching
%% instances. Note
%% that the response does not consider capacity.
%%
%% When you specify multiple parameters, you get instance types that satisfy
%% all of the
%% specified parameters. If you specify multiple values for a parameter, you
%% get instance
%% types that satisfy any of the specified values.
%%
%% For more information, see Preview instance types with specified
%% attributes:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-attribute-based-instance-type-selection.html#spotfleet-get-instance-types-from-instance-requirements,
%% Attribute-based instance type selection for EC2 Fleet:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-attribute-based-instance-type-selection.html,
%% Attribute-based instance type selection for Spot Fleet:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-attribute-based-instance-type-selection.html,
%% and Spot
%% placement score:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-placement-score.html
%% in the Amazon EC2 User Guide, and Creating an
%% Auto Scaling group using attribute-based instance type selection:
%% https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-instance-type-requirements.html
%% in the
%% Amazon EC2 Auto Scaling User Guide.
get_instance_types_from_instance_requirements(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance_types_from_instance_requirements(Client, Input, []).
get_instance_types_from_instance_requirements(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstanceTypesFromInstanceRequirements">>, Input, Options).

%% @doc A binary representation of the UEFI variable store.
%%
%% Only non-volatile variables are
%% stored. This is a base64 encoded and zlib compressed binary value that
%% must be properly
%% encoded.
%%
%% When you use register-image:
%% https://docs.aws.amazon.com/cli/latest/reference/ec2/register-image.html
%% to create
%% an AMI, you can create an exact copy of your variable store by passing the
%% UEFI data in
%% the `UefiData' parameter. You can modify the UEFI data by using the
%% python-uefivars tool: https://github.com/awslabs/python-uefivars on
%% GitHub. You can use the tool to convert the UEFI data into a
%% human-readable format
%% (JSON), which you can inspect and modify, and then convert back into the
%% binary format
%% to use with register-image.
%%
%% For more information, see UEFI Secure Boot:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/uefi-secure-boot.html
%% in the
%% Amazon EC2 User Guide.
get_instance_uefi_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_instance_uefi_data(Client, Input, []).
get_instance_uefi_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetInstanceUefiData">>, Input, Options).

%% @doc Retrieve historical information about a CIDR within an IPAM scope.
%%
%% For more information, see View the history of IP addresses:
%% https://docs.aws.amazon.com/vpc/latest/ipam/view-history-cidr-ipam.html in
%% the Amazon VPC IPAM User Guide.
get_ipam_address_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ipam_address_history(Client, Input, []).
get_ipam_address_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIpamAddressHistory">>, Input, Options).

%% @doc Gets IPAM discovered accounts.
%%
%% A discovered account is an Amazon Web Services account that is monitored
%% under a resource discovery. If you have integrated IPAM with Amazon Web
%% Services Organizations, all accounts in the organization are discovered
%% accounts. Only the IPAM account can get all discovered accounts in the
%% organization.
get_ipam_discovered_accounts(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ipam_discovered_accounts(Client, Input, []).
get_ipam_discovered_accounts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIpamDiscoveredAccounts">>, Input, Options).

%% @doc Gets the public IP addresses that have been discovered by IPAM.
get_ipam_discovered_public_addresses(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ipam_discovered_public_addresses(Client, Input, []).
get_ipam_discovered_public_addresses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIpamDiscoveredPublicAddresses">>, Input, Options).

%% @doc Returns the resource CIDRs that are monitored as part of a resource
%% discovery.
%%
%% A discovered resource is a resource CIDR monitored under a resource
%% discovery. The following resources can be discovered: VPCs, Public IPv4
%% pools, VPC subnets, and Elastic IP addresses.
get_ipam_discovered_resource_cidrs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ipam_discovered_resource_cidrs(Client, Input, []).
get_ipam_discovered_resource_cidrs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIpamDiscoveredResourceCidrs">>, Input, Options).

%% @doc Get a list of all the CIDR allocations in an IPAM pool.
%%
%% The Region you use should be the IPAM pool locale. The locale is the
%% Amazon Web Services Region where this IPAM pool is available for
%% allocations.
%%
%% If you use this action after AllocateIpamPoolCidr:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AllocateIpamPoolCidr.html
%% or ReleaseIpamPoolAllocation:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ReleaseIpamPoolAllocation.html,
%% note that all EC2 API actions follow an eventual consistency:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/query-api-troubleshooting.html#eventual-consistency
%% model.
get_ipam_pool_allocations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ipam_pool_allocations(Client, Input, []).
get_ipam_pool_allocations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIpamPoolAllocations">>, Input, Options).

%% @doc Get the CIDRs provisioned to an IPAM pool.
get_ipam_pool_cidrs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ipam_pool_cidrs(Client, Input, []).
get_ipam_pool_cidrs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIpamPoolCidrs">>, Input, Options).

%% @doc Returns resource CIDRs managed by IPAM in a given scope.
%%
%% If an IPAM is associated with more than one resource discovery, the
%% resource CIDRs across all of the resource discoveries is returned. A
%% resource discovery is an IPAM component that enables IPAM to manage and
%% monitor resources that belong to the owning account.
get_ipam_resource_cidrs(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_ipam_resource_cidrs(Client, Input, []).
get_ipam_resource_cidrs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIpamResourceCidrs">>, Input, Options).

%% @doc Retrieves the configuration data of the specified instance.
%%
%% You can use this data to
%% create a launch template.
%%
%% This action calls on other describe actions to get instance information.
%% Depending on
%% your instance configuration, you may need to allow the following actions
%% in your IAM
%% policy: `DescribeSpotInstanceRequests',
%% `DescribeInstanceCreditSpecifications',
%% `DescribeVolumes', and `DescribeInstanceAttribute'. Or,
%% you can allow `describe*' depending on your instance requirements.
get_launch_template_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_launch_template_data(Client, Input, []).
get_launch_template_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLaunchTemplateData">>, Input, Options).

%% @doc Gets information about the resources that are associated with the
%% specified managed prefix list.
get_managed_prefix_list_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_managed_prefix_list_associations(Client, Input, []).
get_managed_prefix_list_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetManagedPrefixListAssociations">>, Input, Options).

%% @doc Gets information about the entries for a specified managed prefix
%% list.
get_managed_prefix_list_entries(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_managed_prefix_list_entries(Client, Input, []).
get_managed_prefix_list_entries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetManagedPrefixListEntries">>, Input, Options).

%% @doc Gets the findings for the specified Network Access Scope analysis.
get_network_insights_access_scope_analysis_findings(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_network_insights_access_scope_analysis_findings(Client, Input, []).
get_network_insights_access_scope_analysis_findings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetNetworkInsightsAccessScopeAnalysisFindings">>, Input, Options).

%% @doc Gets the content for the specified Network Access Scope.
get_network_insights_access_scope_content(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_network_insights_access_scope_content(Client, Input, []).
get_network_insights_access_scope_content(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetNetworkInsightsAccessScopeContent">>, Input, Options).

%% @doc Retrieves the encrypted administrator password for a running Windows
%% instance.
%%
%% The Windows password is generated at boot by the `EC2Config' service
%% or
%% `EC2Launch' scripts (Windows Server 2016 and later). This usually only
%% happens the first time an instance is launched. For more information, see
%% EC2Config:
%% https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/UsingConfig_WinAMI.html
%% and EC2Launch:
%% https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2launch.html in
%% the
%% Amazon EC2 User Guide.
%%
%% For the `EC2Config' service, the password is not generated for
%% rebundled
%% AMIs unless `Ec2SetPassword' is enabled before bundling.
%%
%% The password is encrypted using the key pair that you specified when you
%% launched the
%% instance. You must provide the corresponding key pair file.
%%
%% When you launch an instance, password generation and encryption may take a
%% few
%% minutes. If you try to retrieve the password before it's available,
%% the output returns
%% an empty string. We recommend that you wait up to 15 minutes after
%% launching an instance
%% before trying to retrieve the generated password.
get_password_data(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_password_data(Client, Input, []).
get_password_data(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPasswordData">>, Input, Options).

%% @doc Returns a quote and exchange information for exchanging one or more
%% specified
%% Convertible Reserved Instances for a new Convertible Reserved Instance.
%%
%% If the exchange
%% cannot be performed, the reason is returned in the response. Use
%% `AcceptReservedInstancesExchangeQuote' to perform the exchange.
get_reserved_instances_exchange_quote(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_reserved_instances_exchange_quote(Client, Input, []).
get_reserved_instances_exchange_quote(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetReservedInstancesExchangeQuote">>, Input, Options).

%% @doc Gets security groups that can be associated by the Amazon Web
%% Services account making the request with network interfaces in the
%% specified VPC.
get_security_groups_for_vpc(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_security_groups_for_vpc(Client, Input, []).
get_security_groups_for_vpc(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSecurityGroupsForVpc">>, Input, Options).

%% @doc Retrieves the access status of your account to the EC2 serial console
%% of all instances.
%%
%% By
%% default, access to the EC2 serial console is disabled for your account.
%% For more
%% information, see Manage account access to the EC2 serial console:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configure-access-to-serial-console.html#serial-console-account-access
%% in the Amazon EC2
%% User Guide.
get_serial_console_access_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_serial_console_access_status(Client, Input, []).
get_serial_console_access_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSerialConsoleAccessStatus">>, Input, Options).

%% @doc Gets the current state of block public access for snapshots setting
%% for the account and Region.
%%
%% For more information, see
%% Block public access for snapshots:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-public-access-snapshots.html
%% in the Amazon Elastic Compute Cloud User Guide.
get_snapshot_block_public_access_state(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_snapshot_block_public_access_state(Client, Input, []).
get_snapshot_block_public_access_state(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSnapshotBlockPublicAccessState">>, Input, Options).

%% @doc Calculates the Spot placement score for a Region or Availability Zone
%% based on the
%% specified target capacity and compute requirements.
%%
%% You can specify your compute requirements either by using
%% `InstanceRequirementsWithMetadata' and letting Amazon EC2 choose the
%% optimal
%% instance types to fulfill your Spot request, or you can specify the
%% instance types by using
%% `InstanceTypes'.
%%
%% For more information, see Spot placement score:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-placement-score.html
%% in
%% the Amazon EC2 User Guide.
get_spot_placement_scores(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_spot_placement_scores(Client, Input, []).
get_spot_placement_scores(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSpotPlacementScores">>, Input, Options).

%% @doc Gets information about the subnet CIDR reservations.
get_subnet_cidr_reservations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_subnet_cidr_reservations(Client, Input, []).
get_subnet_cidr_reservations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSubnetCidrReservations">>, Input, Options).

%% @doc Lists the route tables to which the specified resource attachment
%% propagates routes.
get_transit_gateway_attachment_propagations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_transit_gateway_attachment_propagations(Client, Input, []).
get_transit_gateway_attachment_propagations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTransitGatewayAttachmentPropagations">>, Input, Options).

%% @doc Gets information about the associations for the transit gateway
%% multicast domain.
get_transit_gateway_multicast_domain_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_transit_gateway_multicast_domain_associations(Client, Input, []).
get_transit_gateway_multicast_domain_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTransitGatewayMulticastDomainAssociations">>, Input, Options).

%% @doc Gets a list of the transit gateway policy table associations.
get_transit_gateway_policy_table_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_transit_gateway_policy_table_associations(Client, Input, []).
get_transit_gateway_policy_table_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTransitGatewayPolicyTableAssociations">>, Input, Options).

%% @doc Returns a list of transit gateway policy table entries.
get_transit_gateway_policy_table_entries(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_transit_gateway_policy_table_entries(Client, Input, []).
get_transit_gateway_policy_table_entries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTransitGatewayPolicyTableEntries">>, Input, Options).

%% @doc Gets information about the prefix list references in a specified
%% transit gateway route table.
get_transit_gateway_prefix_list_references(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_transit_gateway_prefix_list_references(Client, Input, []).
get_transit_gateway_prefix_list_references(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTransitGatewayPrefixListReferences">>, Input, Options).

%% @doc Gets information about the associations for the specified transit
%% gateway route table.
get_transit_gateway_route_table_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_transit_gateway_route_table_associations(Client, Input, []).
get_transit_gateway_route_table_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTransitGatewayRouteTableAssociations">>, Input, Options).

%% @doc Gets information about the route table propagations for the specified
%% transit gateway route table.
get_transit_gateway_route_table_propagations(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_transit_gateway_route_table_propagations(Client, Input, []).
get_transit_gateway_route_table_propagations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetTransitGatewayRouteTablePropagations">>, Input, Options).

%% @doc Get the Verified Access policy associated with the endpoint.
get_verified_access_endpoint_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_verified_access_endpoint_policy(Client, Input, []).
get_verified_access_endpoint_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVerifiedAccessEndpointPolicy">>, Input, Options).

%% @doc Shows the contents of the Verified Access policy associated with the
%% group.
get_verified_access_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_verified_access_group_policy(Client, Input, []).
get_verified_access_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVerifiedAccessGroupPolicy">>, Input, Options).

%% @doc Download an Amazon Web Services-provided sample configuration file to
%% be used with the customer
%% gateway device specified for your Site-to-Site VPN connection.
get_vpn_connection_device_sample_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_vpn_connection_device_sample_configuration(Client, Input, []).
get_vpn_connection_device_sample_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVpnConnectionDeviceSampleConfiguration">>, Input, Options).

%% @doc Obtain a list of customer gateway devices for which sample
%% configuration
%% files can be provided.
%%
%% The request has no additional parameters. You can also see the
%% list of device types with sample configuration files available under Your
%% customer gateway
%% device: https://docs.aws.amazon.com/vpn/latest/s2svpn/your-cgw.html in the
%% Amazon Web Services Site-to-Site VPN User Guide.
get_vpn_connection_device_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_vpn_connection_device_types(Client, Input, []).
get_vpn_connection_device_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVpnConnectionDeviceTypes">>, Input, Options).

%% @doc Get details of available tunnel endpoint maintenance.
get_vpn_tunnel_replacement_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_vpn_tunnel_replacement_status(Client, Input, []).
get_vpn_tunnel_replacement_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetVpnTunnelReplacementStatus">>, Input, Options).

%% @doc Uploads a client certificate revocation list to the specified Client
%% VPN endpoint.
%%
%% Uploading a client certificate revocation list overwrites the existing
%% client certificate revocation list.
%%
%% Uploading a client certificate revocation list resets existing client
%% connections.
import_client_vpn_client_certificate_revocation_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_client_vpn_client_certificate_revocation_list(Client, Input, []).
import_client_vpn_client_certificate_revocation_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportClientVpnClientCertificateRevocationList">>, Input, Options).

%% @doc
%% To import your virtual machines (VMs) with a console-based experience, you
%% can use the
%% Import virtual machine images to Amazon Web Services template in the
%% Migration Hub Orchestrator console:
%% https://console.aws.amazon.com/migrationhub/orchestrator.
%%
%% For more
%% information, see the
%% Migration Hub Orchestrator User Guide
%% :
%% https://docs.aws.amazon.com/migrationhub-orchestrator/latest/userguide/import-vm-images.html.
%%
%% Import single or multi-volume disk images or EBS snapshots into an Amazon
%% Machine Image (AMI).
%%
%% Amazon Web Services VM Import/Export strongly recommends specifying a
%% value for either the
%% `--license-type' or `--usage-operation' parameter when you create
%% a new
%% VM Import task. This ensures your operating system is licensed
%% appropriately and your billing is
%% optimized.
%%
%% For more information, see Importing a
%% VM as an image using VM Import/Export:
%% https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html
%% in the VM Import/Export User Guide.
import_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_image(Client, Input, []).
import_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportImage">>, Input, Options).

%% @doc
%% We recommend that you use the
%% `ImportImage'
%% :
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportImage.html
%% API.
%%
%% For more information, see Importing a VM as an image using VM
%% Import/Export:
%% https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html
%% in the VM Import/Export User Guide.
%%
%% Creates an import instance task using metadata from the specified disk
%% image.
%%
%% This API action is not supported by the Command Line Interface (CLI). For
%% information about using the Amazon EC2 CLI, which is deprecated, see
%% Importing
%% a VM to Amazon EC2:
%% https://awsdocs.s3.amazonaws.com/EC2/ec2-clt.pdf#UsingVirtualMachinesinAmazonEC2
%% in the Amazon EC2 CLI Reference PDF file.
%%
%% This API action supports only single-volume VMs. To import multi-volume
%% VMs, use `ImportImage'
%% instead.
%%
%% For information about the import manifest referenced by this API action,
%% see VM Import Manifest:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html.
import_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_instance(Client, Input, []).
import_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportInstance">>, Input, Options).

%% @doc Imports the public key from an RSA or ED25519 key pair that you
%% created with a third-party tool.
%%
%% Compare this with `CreateKeyPair', in which Amazon Web Services
%% creates the key pair and gives the keys to you
%% (Amazon Web Services keeps a copy of the public key). With ImportKeyPair,
%% you create the key pair and give Amazon Web Services just the public key.
%% The private key is never transferred between you and Amazon Web Services.
%%
%% For more information about key pairs, see Amazon EC2 key pairs:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html
%% in the Amazon Elastic Compute Cloud User Guide.
import_key_pair(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_key_pair(Client, Input, []).
import_key_pair(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportKeyPair">>, Input, Options).

%% @doc Imports a disk into an EBS snapshot.
%%
%% For more information, see Importing a disk as a snapshot using VM
%% Import/Export:
%% https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-import-snapshot.html
%% in the
%% VM Import/Export User Guide.
import_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_snapshot(Client, Input, []).
import_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportSnapshot">>, Input, Options).

%% @doc Creates an import volume task using metadata from the specified disk
%% image.
%%
%% This API action supports only single-volume VMs. To import multi-volume
%% VMs, use
%% `ImportImage' instead. To import a disk to a snapshot, use
%% `ImportSnapshot' instead.
%%
%% This API action is not supported by the Command Line Interface (CLI). For
%% information about using the Amazon EC2 CLI, which is deprecated, see
%% Importing Disks to Amazon EBS:
%% https://awsdocs.s3.amazonaws.com/EC2/ec2-clt.pdf#importing-your-volumes-into-amazon-ebs
%% in the Amazon EC2 CLI Reference PDF file.
%%
%% For information about the import manifest referenced by this API action,
%% see VM Import Manifest:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html.
import_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_volume(Client, Input, []).
import_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportVolume">>, Input, Options).

%% @doc Lists one or more AMIs that are currently in the Recycle Bin.
%%
%% For more information, see
%% Recycle
%% Bin: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin.html
%% in the Amazon EC2 User Guide.
list_images_in_recycle_bin(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_images_in_recycle_bin(Client, Input, []).
list_images_in_recycle_bin(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListImagesInRecycleBin">>, Input, Options).

%% @doc Lists one or more snapshots that are currently in the Recycle Bin.
list_snapshots_in_recycle_bin(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_snapshots_in_recycle_bin(Client, Input, []).
list_snapshots_in_recycle_bin(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSnapshotsInRecycleBin">>, Input, Options).

%% @doc Locks an Amazon EBS snapshot in either governance or compliance
%% mode to protect it against accidental or malicious deletions for a
%% specific duration.
%%
%% A locked snapshot
%% can't be deleted.
%%
%% You can also use this action to modify the lock settings for a snapshot
%% that is already locked. The
%% allowed modifications depend on the lock mode and lock state:
%%
%% If the snapshot is locked in governance mode, you can modify the lock mode
%% and the lock duration
%% or lock expiration date.
%%
%% If the snapshot is locked in compliance mode and it is in the cooling-off
%% period, you can modify
%% the lock mode and the lock duration or lock expiration date.
%%
%% If the snapshot is locked in compliance mode and the cooling-off period
%% has lapsed, you can
%% only increase the lock duration or extend the lock expiration date.
lock_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    lock_snapshot(Client, Input, []).
lock_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"LockSnapshot">>, Input, Options).

%% @doc Modifies an attribute of the specified Elastic IP address.
%%
%% For requirements, see Using reverse DNS for email applications:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS.
modify_address_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_address_attribute(Client, Input, []).
modify_address_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyAddressAttribute">>, Input, Options).

%% @doc Changes the opt-in status of the Local Zone and Wavelength Zone group
%% for your
%% account.
%%
%% Use
%% DescribeAvailabilityZones:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAvailabilityZones.html
%% to view the value for `GroupName'.
modify_availability_zone_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_availability_zone_group(Client, Input, []).
modify_availability_zone_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyAvailabilityZoneGroup">>, Input, Options).

%% @doc Modifies a Capacity Reservation's capacity and the conditions
%% under which it is to be released.
%%
%% You
%% cannot change a Capacity Reservation's instance type, EBS
%% optimization, instance store settings,
%% platform, Availability Zone, or instance eligibility. If you need to
%% modify any of these
%% attributes, we recommend that you cancel the Capacity Reservation, and
%% then create a new one with
%% the required attributes.
modify_capacity_reservation(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_capacity_reservation(Client, Input, []).
modify_capacity_reservation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCapacityReservation">>, Input, Options).

%% @doc Modifies a Capacity Reservation Fleet.
%%
%% When you modify the total target capacity of a Capacity Reservation Fleet,
%% the Fleet automatically
%% creates new Capacity Reservations, or modifies or cancels existing
%% Capacity Reservations in the Fleet
%% to meet the new total target capacity. When you modify the end date for
%% the Fleet, the end dates for
%% all of the individual Capacity Reservations in the Fleet are updated
%% accordingly.
modify_capacity_reservation_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_capacity_reservation_fleet(Client, Input, []).
modify_capacity_reservation_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCapacityReservationFleet">>, Input, Options).

%% @doc Modifies the specified Client VPN endpoint.
%%
%% Modifying the DNS server resets existing client connections.
modify_client_vpn_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_client_vpn_endpoint(Client, Input, []).
modify_client_vpn_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyClientVpnEndpoint">>, Input, Options).

%% @doc Modifies the default credit option for CPU usage of burstable
%% performance instances.
%%
%% The default credit option is set at the account level per Amazon Web
%% Services Region, and
%% is specified per instance family. All new burstable performance instances
%% in the account
%% launch using the default credit option.
%%
%% `ModifyDefaultCreditSpecification' is an asynchronous operation, which
%% works at an Amazon Web Services Region level and modifies the credit
%% option for each
%% Availability Zone. All zones in a Region are updated within five minutes.
%% But if
%% instances are launched during this operation, they might not get the new
%% credit option
%% until the zone is updated. To verify whether the update has occurred, you
%% can call
%% `GetDefaultCreditSpecification' and check
%% `DefaultCreditSpecification' for updates.
%%
%% For more information, see Burstable
%% performance instances:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html
%% in the Amazon EC2 User Guide.
modify_default_credit_specification(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_default_credit_specification(Client, Input, []).
modify_default_credit_specification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyDefaultCreditSpecification">>, Input, Options).

%% @doc Changes the default KMS key for EBS encryption by default for your
%% account in this Region.
%%
%% Amazon Web Services creates a unique Amazon Web Services managed KMS key
%% in each Region for use with encryption by default. If
%% you change the default KMS key to a symmetric customer managed KMS key, it
%% is used instead of the Amazon Web Services
%% managed KMS key. To reset the default KMS key to the Amazon Web Services
%% managed KMS key for EBS, use `ResetEbsDefaultKmsKeyId'. Amazon EBS
%% does not support asymmetric KMS keys.
%%
%% If you delete or disable the customer managed KMS key that you specified
%% for use with
%% encryption by default, your instances will fail to launch.
%%
%% For more information, see Amazon EBS encryption:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html
%% in the Amazon Elastic Compute Cloud User Guide.
modify_ebs_default_kms_key_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_ebs_default_kms_key_id(Client, Input, []).
modify_ebs_default_kms_key_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyEbsDefaultKmsKeyId">>, Input, Options).

%% @doc Modifies the specified EC2 Fleet.
%%
%% You can only modify an EC2 Fleet request of type `maintain'.
%%
%% While the EC2 Fleet is being modified, it is in the `modifying' state.
%%
%% To scale up your EC2 Fleet, increase its target capacity. The EC2 Fleet
%% launches the additional
%% Spot Instances according to the allocation strategy for the EC2 Fleet
%% request. If the allocation
%% strategy is `lowest-price', the EC2 Fleet launches instances using the
%% Spot Instance
%% pool with the lowest price. If the allocation strategy is
%% `diversified', the
%% EC2 Fleet distributes the instances across the Spot Instance pools. If the
%% allocation strategy
%% is `capacity-optimized', EC2 Fleet launches instances from Spot
%% Instance pools with optimal
%% capacity for the number of instances that are launching.
%%
%% To scale down your EC2 Fleet, decrease its target capacity. First, the EC2
%% Fleet cancels any open
%% requests that exceed the new target capacity. You can request that the EC2
%% Fleet terminate Spot
%% Instances until the size of the fleet no longer exceeds the new target
%% capacity. If the
%% allocation strategy is `lowest-price', the EC2 Fleet terminates the
%% instances with
%% the highest price per unit. If the allocation strategy is
%% `capacity-optimized',
%% the EC2 Fleet terminates the instances in the Spot Instance pools that
%% have the least available
%% Spot Instance capacity. If the allocation strategy is `diversified',
%% the EC2 Fleet terminates
%% instances across the Spot Instance pools. Alternatively, you can request
%% that the EC2 Fleet keep
%% the fleet at its current size, but not replace any Spot Instances that are
%% interrupted or
%% that you terminate manually.
%%
%% If you are finished with your EC2 Fleet for now, but will use it again
%% later, you can set the
%% target capacity to 0.
modify_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_fleet(Client, Input, []).
modify_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyFleet">>, Input, Options).

%% @doc Modifies the specified attribute of the specified Amazon FPGA Image
%% (AFI).
modify_fpga_image_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_fpga_image_attribute(Client, Input, []).
modify_fpga_image_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyFpgaImageAttribute">>, Input, Options).

%% @doc Modify the auto-placement setting of a Dedicated Host.
%%
%% When auto-placement is enabled,
%% any instances that you launch with a tenancy of `host' but without a
%% specific
%% host ID are placed onto any available Dedicated Host in your account that
%% has
%% auto-placement enabled. When auto-placement is disabled, you need to
%% provide a host ID
%% to have the instance launch onto a specific host. If no host ID is
%% provided, the
%% instance is launched onto a suitable host with auto-placement enabled.
%%
%% You can also use this API action to modify a Dedicated Host to support
%% either multiple
%% instance types in an instance family, or to support a specific instance
%% type
%% only.
modify_hosts(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_hosts(Client, Input, []).
modify_hosts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyHosts">>, Input, Options).

%% @doc Modifies the ID format for the specified resource on a per-Region
%% basis.
%%
%% You can
%% specify that resources should receive longer IDs (17-character IDs) when
%% they are
%% created.
%%
%% This request can only be used to modify longer ID settings for resource
%% types that
%% are within the opt-in period. Resources currently in their opt-in period
%% include:
%% `bundle' | `conversion-task' | `customer-gateway' |
%% `dhcp-options' |
%% `elastic-ip-allocation' | `elastic-ip-association' |
%% `export-task' | `flow-log' | `image' |
%% `import-task' | `internet-gateway' | `network-acl'
%% | `network-acl-association' | `network-interface' |
%% `network-interface-attachment' | `prefix-list' |
%% `route-table' | `route-table-association' |
%% `security-group' | `subnet' |
%% `subnet-cidr-block-association' | `vpc' |
%% `vpc-cidr-block-association' | `vpc-endpoint' |
%% `vpc-peering-connection' | `vpn-connection' | `vpn-gateway'.
%%
%% This setting applies to the IAM user who makes the request; it does not
%% apply to the
%% entire Amazon Web Services account. By default, an IAM user defaults to
%% the same settings as the root user. If
%% you're using this action as the root user, then these settings apply
%% to the entire account,
%% unless an IAM user explicitly overrides these settings for themselves. For
%% more information,
%% see Resource IDs:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html
%% in the Amazon Elastic Compute Cloud User Guide.
%%
%% Resources created with longer IDs are visible to all IAM roles and users,
%% regardless
%% of these settings and provided that they have permission to use the
%% relevant
%% `Describe' command for the resource type.
modify_id_format(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_id_format(Client, Input, []).
modify_id_format(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyIdFormat">>, Input, Options).

%% @doc Modifies the ID format of a resource for a specified IAM user, IAM
%% role, or the root
%% user for an account; or all IAM users, IAM roles, and the root user for an
%% account.
%%
%% You can
%% specify that resources should receive longer IDs (17-character IDs) when
%% they are created.
%%
%% This request can only be used to modify longer ID settings for resource
%% types that are
%% within the opt-in period. Resources currently in their opt-in period
%% include:
%% `bundle' | `conversion-task' | `customer-gateway' |
%% `dhcp-options' |
%% `elastic-ip-allocation' | `elastic-ip-association' |
%% `export-task' | `flow-log' | `image' |
%% `import-task' | `internet-gateway' | `network-acl'
%% | `network-acl-association' | `network-interface' |
%% `network-interface-attachment' | `prefix-list' |
%% `route-table' | `route-table-association' |
%% `security-group' | `subnet' |
%% `subnet-cidr-block-association' | `vpc' |
%% `vpc-cidr-block-association' | `vpc-endpoint' |
%% `vpc-peering-connection' | `vpn-connection' | `vpn-gateway'.
%%
%% For more information, see Resource IDs:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html in
%% the
%% Amazon Elastic Compute Cloud User Guide.
%%
%% This setting applies to the principal specified in the request; it does
%% not apply to the
%% principal that makes the request.
%%
%% Resources created with longer IDs are visible to all IAM roles and users,
%% regardless of these
%% settings and provided that they have permission to use the relevant
%% `Describe'
%% command for the resource type.
modify_identity_id_format(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_identity_id_format(Client, Input, []).
modify_identity_id_format(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyIdentityIdFormat">>, Input, Options).

%% @doc Modifies the specified attribute of the specified AMI.
%%
%% You can specify only one attribute
%% at a time.
%%
%% To specify the attribute, you can use the `Attribute' parameter, or
%% one of the
%% following parameters: `Description', `ImdsSupport', or
%% `LaunchPermission'.
%%
%% Images with an Amazon Web Services Marketplace product code cannot be made
%% public.
%%
%% To enable the SriovNetSupport enhanced networking attribute of an image,
%% enable
%% SriovNetSupport on an instance and create an AMI from the instance.
modify_image_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_image_attribute(Client, Input, []).
modify_image_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyImageAttribute">>, Input, Options).

%% @doc Modifies the specified attribute of the specified instance.
%%
%% You can specify only one
%% attribute at a time.
%%
%% Note: Using this action to change the security groups
%% associated with an elastic network interface (ENI) attached to an instance
%% can
%% result in an error if the instance has more than one ENI. To change the
%% security groups
%% associated with an ENI attached to an instance that has multiple ENIs, we
%% recommend that
%% you use the `ModifyNetworkInterfaceAttribute' action.
%%
%% To modify some attributes, the instance must be stopped. For more
%% information, see
%% Modify a stopped instance:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_ChangingAttributesWhileInstanceStopped.html
%% in the
%% Amazon EC2 User Guide.
modify_instance_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_instance_attribute(Client, Input, []).
modify_instance_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyInstanceAttribute">>, Input, Options).

%% @doc Modifies the Capacity Reservation settings for a stopped instance.
%%
%% Use this action to configure an
%% instance to target a specific Capacity Reservation, run in any `open'
%% Capacity Reservation with matching
%% attributes, or run On-Demand Instance capacity.
modify_instance_capacity_reservation_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_instance_capacity_reservation_attributes(Client, Input, []).
modify_instance_capacity_reservation_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyInstanceCapacityReservationAttributes">>, Input, Options).

%% @doc Modifies the credit option for CPU usage on a running or stopped
%% burstable performance
%% instance.
%%
%% The credit options are `standard' and
%% `unlimited'.
%%
%% For more information, see Burstable
%% performance instances:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html
%% in the Amazon EC2 User Guide.
modify_instance_credit_specification(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_instance_credit_specification(Client, Input, []).
modify_instance_credit_specification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyInstanceCreditSpecification">>, Input, Options).

%% @doc Modifies the start time for a scheduled Amazon EC2 instance event.
modify_instance_event_start_time(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_instance_event_start_time(Client, Input, []).
modify_instance_event_start_time(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyInstanceEventStartTime">>, Input, Options).

%% @doc Modifies the specified event window.
%%
%% You can define either a set of time ranges or a cron expression when
%% modifying the event
%% window, but not both.
%%
%% To modify the targets associated with the event window, use the
%% `AssociateInstanceEventWindow' and
%% `DisassociateInstanceEventWindow' API.
%%
%% If Amazon Web Services has already scheduled an event, modifying an event
%% window won't change the time
%% of the scheduled event.
%%
%% For more information, see Define event windows for scheduled
%% events:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/event-windows.html in
%% the Amazon EC2 User Guide.
modify_instance_event_window(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_instance_event_window(Client, Input, []).
modify_instance_event_window(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyInstanceEventWindow">>, Input, Options).

%% @doc Modifies the recovery behavior of your instance to disable simplified
%% automatic
%% recovery or set the recovery behavior to default.
%%
%% The default configuration will not
%% enable simplified automatic recovery for an unsupported instance type. For
%% more
%% information, see Simplified automatic recovery:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-recover.html#instance-configuration-recovery.
modify_instance_maintenance_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_instance_maintenance_options(Client, Input, []).
modify_instance_maintenance_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyInstanceMaintenanceOptions">>, Input, Options).

%% @doc Modify the instance metadata parameters on a running or stopped
%% instance.
%%
%% When you
%% modify the parameters on a stopped instance, they are applied when the
%% instance is
%% started. When you modify the parameters on a running instance, the API
%% responds with a
%% state of “pending”. After the parameter modifications are successfully
%% applied to the
%% instance, the state of the modifications changes from “pending” to
%% “applied” in
%% subsequent describe-instances API calls. For more information, see
%% Instance metadata and user data:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html
%% in the
%% Amazon EC2 User Guide.
modify_instance_metadata_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_instance_metadata_options(Client, Input, []).
modify_instance_metadata_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyInstanceMetadataOptions">>, Input, Options).

%% @doc Modifies the placement attributes for a specified instance.
%%
%% You can do the
%% following:
%%
%% Modify the affinity between an instance and a Dedicated
%% Host:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html.
%% When affinity is set to `host' and the instance is
%% not associated with a specific Dedicated Host, the next time the instance
%% is
%% started, it is automatically associated with the host on which it lands.
%% If the
%% instance is restarted or rebooted, this relationship persists.
%%
%% Change the Dedicated Host with which an instance is associated.
%%
%% Change the instance tenancy of an instance.
%%
%% Move an instance to or from a placement
%% group:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html.
%%
%% At least one attribute for affinity, host ID, tenancy, or placement group
%% name must be
%% specified in the request. Affinity and tenancy can be modified in the same
%% request.
%%
%% To modify the host ID, tenancy, placement group, or partition for an
%% instance, the
%% instance must be in the `stopped' state.
modify_instance_placement(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_instance_placement(Client, Input, []).
modify_instance_placement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyInstancePlacement">>, Input, Options).

%% @doc Modify the configurations of an IPAM.
modify_ipam(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_ipam(Client, Input, []).
modify_ipam(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyIpam">>, Input, Options).

%% @doc Modify the configurations of an IPAM pool.
%%
%% For more information, see Modify a pool:
%% https://docs.aws.amazon.com/vpc/latest/ipam/mod-pool-ipam.html in the
%% Amazon VPC IPAM User Guide.
modify_ipam_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_ipam_pool(Client, Input, []).
modify_ipam_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyIpamPool">>, Input, Options).

%% @doc Modify a resource CIDR.
%%
%% You can use this action to transfer resource CIDRs between scopes and
%% ignore resource CIDRs that you do not want to manage. If set to false, the
%% resource will not be tracked for overlap, it cannot be auto-imported into
%% a pool, and it will be removed from any pool it has an allocation in.
%%
%% For more information, see Move resource CIDRs between scopes:
%% https://docs.aws.amazon.com/vpc/latest/ipam/move-resource-ipam.html and
%% Change the monitoring state of resource CIDRs:
%% https://docs.aws.amazon.com/vpc/latest/ipam/change-monitoring-state-ipam.html
%% in the Amazon VPC IPAM User Guide.
modify_ipam_resource_cidr(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_ipam_resource_cidr(Client, Input, []).
modify_ipam_resource_cidr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyIpamResourceCidr">>, Input, Options).

%% @doc Modifies a resource discovery.
%%
%% A resource discovery is an IPAM component that enables IPAM to manage and
%% monitor resources that belong to the owning account.
modify_ipam_resource_discovery(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_ipam_resource_discovery(Client, Input, []).
modify_ipam_resource_discovery(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyIpamResourceDiscovery">>, Input, Options).

%% @doc Modify an IPAM scope.
modify_ipam_scope(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_ipam_scope(Client, Input, []).
modify_ipam_scope(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyIpamScope">>, Input, Options).

%% @doc Modifies a launch template.
%%
%% You can specify which version of the launch template to
%% set as the default version. When launching an instance, the default
%% version applies when
%% a launch template version is not specified.
modify_launch_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_launch_template(Client, Input, []).
modify_launch_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyLaunchTemplate">>, Input, Options).

%% @doc Modifies the specified local gateway route.
modify_local_gateway_route(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_local_gateway_route(Client, Input, []).
modify_local_gateway_route(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyLocalGatewayRoute">>, Input, Options).

%% @doc Modifies the specified managed prefix list.
%%
%% Adding or removing entries in a prefix list creates a new version of the
%% prefix list.
%% Changing the name of the prefix list does not affect the version.
%%
%% If you specify a current version number that does not match the true
%% current version
%% number, the request fails.
modify_managed_prefix_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_managed_prefix_list(Client, Input, []).
modify_managed_prefix_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyManagedPrefixList">>, Input, Options).

%% @doc Modifies the specified network interface attribute.
%%
%% You can specify only one
%% attribute at a time. You can use this action to attach and detach security
%% groups from
%% an existing EC2 instance.
modify_network_interface_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_network_interface_attribute(Client, Input, []).
modify_network_interface_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyNetworkInterfaceAttribute">>, Input, Options).

%% @doc Modifies the options for instance hostnames for the specified
%% instance.
modify_private_dns_name_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_private_dns_name_options(Client, Input, []).
modify_private_dns_name_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyPrivateDnsNameOptions">>, Input, Options).

%% @doc Modifies the configuration of your Reserved Instances, such as the
%% Availability Zone,
%% instance count, or instance type.
%%
%% The Reserved Instances to be modified must be identical,
%% except for Availability Zone, network platform, and instance type.
%%
%% For more information, see Modifying Reserved
%% Instances:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html in
%% the Amazon EC2 User Guide.
modify_reserved_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_reserved_instances(Client, Input, []).
modify_reserved_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyReservedInstances">>, Input, Options).

%% @doc Modifies the rules of a security group.
modify_security_group_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_security_group_rules(Client, Input, []).
modify_security_group_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifySecurityGroupRules">>, Input, Options).

%% @doc Adds or removes permission settings for the specified snapshot.
%%
%% You may add or remove
%% specified Amazon Web Services account IDs from a snapshot's list of
%% create volume permissions, but you cannot
%% do both in a single operation. If you need to both add and remove account
%% IDs for a snapshot,
%% you must use multiple operations. You can make up to 500 modifications to
%% a snapshot in a single operation.
%%
%% Encrypted snapshots and snapshots with Amazon Web Services Marketplace
%% product codes cannot be made
%% public. Snapshots encrypted with your default KMS key cannot be shared
%% with other accounts.
%%
%% For more information about modifying snapshot permissions, see Share a
%% snapshot:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html
%% in the
%% Amazon Elastic Compute Cloud User Guide.
modify_snapshot_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_snapshot_attribute(Client, Input, []).
modify_snapshot_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifySnapshotAttribute">>, Input, Options).

%% @doc Archives an Amazon EBS snapshot.
%%
%% When you archive a snapshot, it is converted to a full
%% snapshot that includes all of the blocks of data that were written to the
%% volume at the
%% time the snapshot was created, and moved from the standard tier to the
%% archive
%% tier. For more information, see Archive Amazon EBS snapshots:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-archive.html
%% in the Amazon Elastic Compute Cloud User Guide.
modify_snapshot_tier(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_snapshot_tier(Client, Input, []).
modify_snapshot_tier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifySnapshotTier">>, Input, Options).

%% @doc Modifies the specified Spot Fleet request.
%%
%% You can only modify a Spot Fleet request of type `maintain'.
%%
%% While the Spot Fleet request is being modified, it is in the
%% `modifying'
%% state.
%%
%% To scale up your Spot Fleet, increase its target capacity. The Spot Fleet
%% launches the
%% additional Spot Instances according to the allocation strategy for the
%% Spot Fleet
%% request. If the allocation strategy is `lowestPrice', the Spot Fleet
%% launches
%% instances using the Spot Instance pool with the lowest price. If the
%% allocation strategy
%% is `diversified', the Spot Fleet distributes the instances across the
%% Spot
%% Instance pools. If the allocation strategy is `capacityOptimized',
%% Spot Fleet
%% launches instances from Spot Instance pools with optimal capacity for the
%% number of instances
%% that are launching.
%%
%% To scale down your Spot Fleet, decrease its target capacity. First, the
%% Spot Fleet
%% cancels any open requests that exceed the new target capacity. You can
%% request that the
%% Spot Fleet terminate Spot Instances until the size of the fleet no longer
%% exceeds the
%% new target capacity. If the allocation strategy is `lowestPrice', the
%% Spot
%% Fleet terminates the instances with the highest price per unit. If the
%% allocation
%% strategy is `capacityOptimized', the Spot Fleet terminates the
%% instances in
%% the Spot Instance pools that have the least available Spot Instance
%% capacity. If the allocation
%% strategy is `diversified', the Spot Fleet terminates instances across
%% the
%% Spot Instance pools. Alternatively, you can request that the Spot Fleet
%% keep the fleet
%% at its current size, but not replace any Spot Instances that are
%% interrupted or that you
%% terminate manually.
%%
%% If you are finished with your Spot Fleet for now, but will use it again
%% later, you can
%% set the target capacity to 0.
modify_spot_fleet_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_spot_fleet_request(Client, Input, []).
modify_spot_fleet_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifySpotFleetRequest">>, Input, Options).

%% @doc Modifies a subnet attribute.
%%
%% You can only modify one attribute at a time.
%%
%% Use this action to modify subnets on Amazon Web Services Outposts.
%%
%% To modify a subnet on an Outpost rack, set both
%% `MapCustomerOwnedIpOnLaunch' and
%% `CustomerOwnedIpv4Pool'. These two parameters act as a single
%% attribute.
%%
%% To modify a subnet on an Outpost server, set either
%% `EnableLniAtDeviceIndex' or
%% `DisableLniAtDeviceIndex'.
%%
%% For more information about Amazon Web Services Outposts, see the
%% following:
%%
%% Outpost servers:
%% https://docs.aws.amazon.com/outposts/latest/userguide/how-servers-work.html
%%
%% Outpost racks:
%% https://docs.aws.amazon.com/outposts/latest/userguide/how-racks-work.html
modify_subnet_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_subnet_attribute(Client, Input, []).
modify_subnet_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifySubnetAttribute">>, Input, Options).

%% @doc Allows or restricts mirroring network services.
%%
%% By default, Amazon DNS network services are not eligible for Traffic
%% Mirror. Use `AddNetworkServices' to add network services to a Traffic
%% Mirror filter. When a network service is added to the Traffic Mirror
%% filter, all traffic related to that network service will be mirrored.
%% When you no longer want to mirror network services, use
%% `RemoveNetworkServices' to remove the network services from the
%% Traffic Mirror filter.
modify_traffic_mirror_filter_network_services(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_traffic_mirror_filter_network_services(Client, Input, []).
modify_traffic_mirror_filter_network_services(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyTrafficMirrorFilterNetworkServices">>, Input, Options).

%% @doc Modifies the specified Traffic Mirror rule.
%%
%% `DestinationCidrBlock' and `SourceCidrBlock' must both be an IPv4
%% range or an IPv6 range.
modify_traffic_mirror_filter_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_traffic_mirror_filter_rule(Client, Input, []).
modify_traffic_mirror_filter_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyTrafficMirrorFilterRule">>, Input, Options).

%% @doc Modifies a Traffic Mirror session.
modify_traffic_mirror_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_traffic_mirror_session(Client, Input, []).
modify_traffic_mirror_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyTrafficMirrorSession">>, Input, Options).

%% @doc Modifies the specified transit gateway.
%%
%% When you modify a transit gateway, the modified options are applied to new
%% transit gateway attachments only. Your existing transit gateway
%% attachments are not modified.
modify_transit_gateway(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_transit_gateway(Client, Input, []).
modify_transit_gateway(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyTransitGateway">>, Input, Options).

%% @doc Modifies a reference (route) to a prefix list in a specified transit
%% gateway route table.
modify_transit_gateway_prefix_list_reference(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_transit_gateway_prefix_list_reference(Client, Input, []).
modify_transit_gateway_prefix_list_reference(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyTransitGatewayPrefixListReference">>, Input, Options).

%% @doc Modifies the specified VPC attachment.
modify_transit_gateway_vpc_attachment(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_transit_gateway_vpc_attachment(Client, Input, []).
modify_transit_gateway_vpc_attachment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyTransitGatewayVpcAttachment">>, Input, Options).

%% @doc Modifies the configuration of the specified Amazon Web Services
%% Verified Access endpoint.
modify_verified_access_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_verified_access_endpoint(Client, Input, []).
modify_verified_access_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyVerifiedAccessEndpoint">>, Input, Options).

%% @doc Modifies the specified Amazon Web Services Verified Access endpoint
%% policy.
modify_verified_access_endpoint_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_verified_access_endpoint_policy(Client, Input, []).
modify_verified_access_endpoint_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyVerifiedAccessEndpointPolicy">>, Input, Options).

%% @doc Modifies the specified Amazon Web Services Verified Access group
%% configuration.
modify_verified_access_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_verified_access_group(Client, Input, []).
modify_verified_access_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyVerifiedAccessGroup">>, Input, Options).

%% @doc Modifies the specified Amazon Web Services Verified Access group
%% policy.
modify_verified_access_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_verified_access_group_policy(Client, Input, []).
modify_verified_access_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyVerifiedAccessGroupPolicy">>, Input, Options).

%% @doc Modifies the configuration of the specified Amazon Web Services
%% Verified Access instance.
modify_verified_access_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_verified_access_instance(Client, Input, []).
modify_verified_access_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyVerifiedAccessInstance">>, Input, Options).

%% @doc Modifies the logging configuration for the specified Amazon Web
%% Services Verified Access instance.
modify_verified_access_instance_logging_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_verified_access_instance_logging_configuration(Client, Input, []).
modify_verified_access_instance_logging_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyVerifiedAccessInstanceLoggingConfiguration">>, Input, Options).

%% @doc Modifies the configuration of the specified Amazon Web Services
%% Verified Access trust provider.
modify_verified_access_trust_provider(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_verified_access_trust_provider(Client, Input, []).
modify_verified_access_trust_provider(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyVerifiedAccessTrustProvider">>, Input, Options).

%% @doc You can modify several parameters of an existing EBS volume,
%% including volume size, volume
%% type, and IOPS capacity.
%%
%% If your EBS volume is attached to a current-generation EC2 instance
%% type, you might be able to apply these changes without stopping the
%% instance or detaching the
%% volume from it. For more information about modifying EBS volumes, see
%% Amazon EBS Elastic Volumes:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modify-volume.html
%% (Linux instances)
%% or Amazon EBS Elastic Volumes:
%% https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-modify-volume.html
%% (Windows instances).
%%
%% When you complete a resize operation on your volume, you need to extend
%% the volume's
%% file-system size to take advantage of the new storage capacity. For more
%% information, see Extend a Linux file system:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#recognize-expanded-volume-linux
%% or
%% Extend a Windows file system:
%% https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html#recognize-expanded-volume-windows.
%%
%% You can use CloudWatch Events to check the status of a modification to an
%% EBS volume. For
%% information about CloudWatch Events, see the Amazon CloudWatch Events User
%% Guide: https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/. You
%% can also track the status of a
%% modification using `DescribeVolumesModifications'. For information
%% about tracking status changes using either method, see Monitor the
%% progress of volume modifications:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-modifications.html.
%%
%% With previous-generation instance types, resizing an EBS volume might
%% require detaching and
%% reattaching the volume or stopping and restarting the instance.
%%
%% After modifying a volume, you must wait at least six hours and ensure that
%% the volume
%% is in the `in-use' or `available' state before you can modify the
%% same
%% volume. This is sometimes referred to as a cooldown period.
modify_volume(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_volume(Client, Input, []).
modify_volume(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyVolume">>, Input, Options).

%% @doc Modifies a volume attribute.
%%
%% By default, all I/O operations for the volume are suspended when the data
%% on the volume is
%% determined to be potentially inconsistent, to prevent undetectable, latent
%% data corruption.
%% The I/O access to the volume can be resumed by first enabling I/O access
%% and then checking the
%% data consistency on your volume.
%%
%% You can change the default behavior to resume I/O operations. We recommend
%% that you change
%% this only for boot volumes or for volumes that are stateless or
%% disposable.
modify_volume_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_volume_attribute(Client, Input, []).
modify_volume_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyVolumeAttribute">>, Input, Options).

%% @doc Modifies the specified attribute of the specified VPC.
modify_vpc_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_vpc_attribute(Client, Input, []).
modify_vpc_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyVpcAttribute">>, Input, Options).

%% @doc Modifies attributes of a specified VPC endpoint.
%%
%% The attributes that you can modify
%% depend on the type of VPC endpoint (interface, gateway, or Gateway Load
%% Balancer). For more information,
%% see the Amazon Web Services PrivateLink
%% Guide: https://docs.aws.amazon.com/vpc/latest/privatelink/.
modify_vpc_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_vpc_endpoint(Client, Input, []).
modify_vpc_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyVpcEndpoint">>, Input, Options).

%% @doc Modifies a connection notification for VPC endpoint or VPC endpoint
%% service.
%%
%% You
%% can change the SNS topic for the notification, or the events for which to
%% be notified.
modify_vpc_endpoint_connection_notification(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_vpc_endpoint_connection_notification(Client, Input, []).
modify_vpc_endpoint_connection_notification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyVpcEndpointConnectionNotification">>, Input, Options).

%% @doc Modifies the attributes of your VPC endpoint service configuration.
%%
%% You can change the
%% Network Load Balancers or Gateway Load Balancers for your service, and you
%% can specify whether acceptance is
%% required for requests to connect to your endpoint service through an
%% interface VPC
%% endpoint.
%%
%% If you set or modify the private DNS name, you must prove that you own the
%% private DNS
%% domain name.
modify_vpc_endpoint_service_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_vpc_endpoint_service_configuration(Client, Input, []).
modify_vpc_endpoint_service_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyVpcEndpointServiceConfiguration">>, Input, Options).

%% @doc Modifies the payer responsibility for your VPC endpoint service.
modify_vpc_endpoint_service_payer_responsibility(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_vpc_endpoint_service_payer_responsibility(Client, Input, []).
modify_vpc_endpoint_service_payer_responsibility(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyVpcEndpointServicePayerResponsibility">>, Input, Options).

%% @doc Modifies the permissions for your VPC endpoint service.
%%
%% You can add or remove permissions
%% for service consumers (Amazon Web Services accounts, users, and IAM roles)
%% to connect to
%% your endpoint service.
%%
%% If you grant permissions to all principals, the service is public. Any
%% users who know the name of a
%% public service can send a request to attach an endpoint. If the service
%% does not require manual approval,
%% attachments are automatically approved.
modify_vpc_endpoint_service_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_vpc_endpoint_service_permissions(Client, Input, []).
modify_vpc_endpoint_service_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyVpcEndpointServicePermissions">>, Input, Options).

%% @doc Modifies the VPC peering connection options on one side of a VPC
%% peering connection.
%%
%% If the peered VPCs are in the same Amazon Web Services account, you can
%% enable DNS
%% resolution for queries from the local VPC. This ensures that queries from
%% the local VPC
%% resolve to private IP addresses in the peer VPC. This option is not
%% available if the
%% peered VPCs are in different Amazon Web Services accounts or different
%% Regions. For
%% peered VPCs in different Amazon Web Services accounts, each Amazon Web
%% Services account
%% owner must initiate a separate request to modify the peering connection
%% options. For
%% inter-region peering connections, you must use the Region for the
%% requester VPC to
%% modify the requester VPC peering options and the Region for the accepter
%% VPC to modify
%% the accepter VPC peering options. To verify which VPCs are the accepter
%% and the
%% requester for a VPC peering connection, use the
%% `DescribeVpcPeeringConnections' command.
modify_vpc_peering_connection_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_vpc_peering_connection_options(Client, Input, []).
modify_vpc_peering_connection_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyVpcPeeringConnectionOptions">>, Input, Options).

%% @doc Modifies the instance tenancy attribute of the specified VPC.
%%
%% You can change the
%% instance tenancy attribute of a VPC to `default' only. You cannot
%% change the
%% instance tenancy attribute to `dedicated'.
%%
%% After you modify the tenancy of the VPC, any new instances that you launch
%% into the
%% VPC have a tenancy of `default', unless you specify otherwise during
%% launch.
%% The tenancy of any existing instances in the VPC is not affected.
%%
%% For more information, see Dedicated Instances:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html
%% in the
%% Amazon EC2 User Guide.
modify_vpc_tenancy(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_vpc_tenancy(Client, Input, []).
modify_vpc_tenancy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyVpcTenancy">>, Input, Options).

%% @doc Modifies the customer gateway or the target gateway of an Amazon Web
%% Services Site-to-Site VPN connection.
%%
%% To
%% modify the target gateway, the following migration options are available:
%%
%% An existing virtual private gateway to a new virtual private gateway
%%
%% An existing virtual private gateway to a transit gateway
%%
%% An existing transit gateway to a new transit gateway
%%
%% An existing transit gateway to a virtual private gateway
%%
%% Before you perform the migration to the new gateway, you must configure
%% the new
%% gateway. Use `CreateVpnGateway' to create a virtual private gateway,
%% or
%% `CreateTransitGateway' to create a transit gateway.
%%
%% This step is required when you migrate from a virtual private gateway with
%% static
%% routes to a transit gateway.
%%
%% You must delete the static routes before you migrate to the new gateway.
%%
%% Keep a copy of the static route before you delete it. You will need to add
%% back these
%% routes to the transit gateway after the VPN connection migration is
%% complete.
%%
%% After you migrate to the new gateway, you might need to modify your VPC
%% route table.
%% Use `CreateRoute' and `DeleteRoute' to make the changes
%% described in Update VPC route
%% tables:
%% https://docs.aws.amazon.com/vpn/latest/s2svpn/modify-vpn-target.html#step-update-routing
%% in the Amazon Web Services Site-to-Site VPN User Guide.
%%
%% When the new gateway is a transit gateway, modify the transit gateway
%% route table to
%% allow traffic between the VPC and the Amazon Web Services Site-to-Site VPN
%% connection.
%% Use `CreateTransitGatewayRoute' to add the routes.
%%
%% If you deleted VPN static routes, you must add the static routes to the
%% transit
%% gateway route table.
%%
%% After you perform this operation, the VPN endpoint's IP addresses on
%% the Amazon Web Services side and the tunnel options remain intact. Your
%% Amazon Web Services Site-to-Site VPN connection will
%% be temporarily unavailable for a brief period while we provision the new
%% endpoints.
modify_vpn_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_vpn_connection(Client, Input, []).
modify_vpn_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyVpnConnection">>, Input, Options).

%% @doc Modifies the connection options for your Site-to-Site VPN connection.
%%
%% When you modify the VPN connection options, the VPN endpoint IP addresses
%% on the
%% Amazon Web Services side do not change, and the tunnel options do not
%% change. Your
%% VPN connection will be temporarily unavailable for a brief period while
%% the VPN
%% connection is updated.
modify_vpn_connection_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_vpn_connection_options(Client, Input, []).
modify_vpn_connection_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyVpnConnectionOptions">>, Input, Options).

%% @doc Modifies the VPN tunnel endpoint certificate.
modify_vpn_tunnel_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_vpn_tunnel_certificate(Client, Input, []).
modify_vpn_tunnel_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyVpnTunnelCertificate">>, Input, Options).

%% @doc Modifies the options for a VPN tunnel in an Amazon Web Services
%% Site-to-Site VPN connection.
%%
%% You can modify
%% multiple options for a tunnel in a single request, but you can only modify
%% one tunnel at
%% a time. For more information, see Site-to-Site VPN tunnel options for your
%% Site-to-Site VPN
%% connection: https://docs.aws.amazon.com/vpn/latest/s2svpn/VPNTunnels.html
%% in the Amazon Web Services Site-to-Site VPN User Guide.
modify_vpn_tunnel_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_vpn_tunnel_options(Client, Input, []).
modify_vpn_tunnel_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyVpnTunnelOptions">>, Input, Options).

%% @doc Enables detailed monitoring for a running instance.
%%
%% Otherwise, basic monitoring is
%% enabled. For more information, see Monitor your instances using
%% CloudWatch:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html
%% in the Amazon EC2 User Guide.
%%
%% To disable detailed monitoring, see UnmonitorInstances:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_UnmonitorInstances.html.
monitor_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    monitor_instances(Client, Input, []).
monitor_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MonitorInstances">>, Input, Options).

%% @doc
%% This action is deprecated.
%%
%% Moves an Elastic IP address from the EC2-Classic platform to the EC2-VPC
%% platform. The
%% Elastic IP address must be allocated to your account for more than 24
%% hours, and it must not
%% be associated with an instance. After the Elastic IP address is moved, it
%% is no longer
%% available for use in the EC2-Classic platform, unless you move it back
%% using the
%% `RestoreAddressToClassic' request. You cannot move an Elastic IP
%% address that was
%% originally allocated for use in the EC2-VPC platform to the EC2-Classic
%% platform.
move_address_to_vpc(Client, Input)
  when is_map(Client), is_map(Input) ->
    move_address_to_vpc(Client, Input, []).
move_address_to_vpc(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MoveAddressToVpc">>, Input, Options).

%% @doc Move a BYOIPv4 CIDR to IPAM from a public IPv4 pool.
%%
%% If you already have a BYOIPv4 CIDR with Amazon Web Services, you can move
%% the CIDR to IPAM from a public IPv4 pool. You cannot move an IPv6 CIDR to
%% IPAM. If you are bringing a new IP address to Amazon Web Services for the
%% first time, complete the steps in Tutorial: BYOIP address CIDRs to IPAM:
%% https://docs.aws.amazon.com/vpc/latest/ipam/tutorials-byoip-ipam.html.
move_byoip_cidr_to_ipam(Client, Input)
  when is_map(Client), is_map(Input) ->
    move_byoip_cidr_to_ipam(Client, Input, []).
move_byoip_cidr_to_ipam(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"MoveByoipCidrToIpam">>, Input, Options).

%% @doc Provisions an IPv4 or IPv6 address range for use with your Amazon Web
%% Services resources through bring your own IP
%% addresses (BYOIP) and creates a corresponding address pool.
%%
%% After the address range is
%% provisioned, it is ready to be advertised using `AdvertiseByoipCidr'.
%%
%% Amazon Web Services verifies that you own the address range and are
%% authorized to advertise it.
%% You must ensure that the address range is registered to you and that you
%% created an
%% RPKI ROA to authorize Amazon ASNs 16509 and 14618 to advertise the address
%% range.
%% For more information, see Bring your own IP addresses (BYOIP):
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html in the
%% Amazon Elastic Compute Cloud User Guide.
%%
%% Provisioning an address range is an asynchronous operation, so the call
%% returns immediately,
%% but the address range is not ready to use until its status changes from
%% `pending-provision'
%% to `provisioned'. To monitor the status of an address range, use
%% `DescribeByoipCidrs'.
%% To allocate an Elastic IP address from your IPv4 address pool, use
%% `AllocateAddress'
%% with either the specific address from the address pool or the ID of the
%% address pool.
provision_byoip_cidr(Client, Input)
  when is_map(Client), is_map(Input) ->
    provision_byoip_cidr(Client, Input, []).
provision_byoip_cidr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ProvisionByoipCidr">>, Input, Options).

%% @doc Provisions your Autonomous System Number (ASN) for use in your Amazon
%% Web Services account.
%%
%% This action requires authorization context for Amazon to bring the ASN to
%% an Amazon Web Services account. For more information, see Tutorial: Bring
%% your ASN to IPAM:
%% https://docs.aws.amazon.com/vpc/latest/ipam/tutorials-byoasn.html in the
%% Amazon VPC IPAM guide.
provision_ipam_byoasn(Client, Input)
  when is_map(Client), is_map(Input) ->
    provision_ipam_byoasn(Client, Input, []).
provision_ipam_byoasn(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ProvisionIpamByoasn">>, Input, Options).

%% @doc Provision a CIDR to an IPAM pool.
%%
%% You can use this action to provision new CIDRs to a top-level pool or to
%% transfer a CIDR from a top-level pool to a pool within it.
%%
%% For more information, see Provision CIDRs to pools:
%% https://docs.aws.amazon.com/vpc/latest/ipam/prov-cidr-ipam.html in the
%% Amazon VPC IPAM User Guide.
provision_ipam_pool_cidr(Client, Input)
  when is_map(Client), is_map(Input) ->
    provision_ipam_pool_cidr(Client, Input, []).
provision_ipam_pool_cidr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ProvisionIpamPoolCidr">>, Input, Options).

%% @doc Provision a CIDR to a public IPv4 pool.
%%
%% For more information about IPAM, see What is IPAM?:
%% https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html in the
%% Amazon VPC IPAM User Guide.
provision_public_ipv4_pool_cidr(Client, Input)
  when is_map(Client), is_map(Input) ->
    provision_public_ipv4_pool_cidr(Client, Input, []).
provision_public_ipv4_pool_cidr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ProvisionPublicIpv4PoolCidr">>, Input, Options).

%% @doc Purchase the Capacity Block for use with your account.
%%
%% With Capacity Blocks you ensure GPU capacity is available for machine
%% learning (ML) workloads. You must specify the ID of the Capacity Block
%% offering you are purchasing.
purchase_capacity_block(Client, Input)
  when is_map(Client), is_map(Input) ->
    purchase_capacity_block(Client, Input, []).
purchase_capacity_block(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PurchaseCapacityBlock">>, Input, Options).

%% @doc Purchase a reservation with configurations that match those of your
%% Dedicated Host.
%%
%% You must have active Dedicated Hosts in your account before you purchase a
%% reservation.
%% This action results in the specified reservation being purchased and
%% charged to your
%% account.
purchase_host_reservation(Client, Input)
  when is_map(Client), is_map(Input) ->
    purchase_host_reservation(Client, Input, []).
purchase_host_reservation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PurchaseHostReservation">>, Input, Options).

%% @doc Purchases a Reserved Instance for use with your account.
%%
%% With Reserved Instances, you pay a lower
%% hourly rate compared to On-Demand instance pricing.
%%
%% Use `DescribeReservedInstancesOfferings' to get a list of Reserved
%% Instance offerings
%% that match your specifications. After you've purchased a Reserved
%% Instance, you can check for your
%% new Reserved Instance with `DescribeReservedInstances'.
%%
%% To queue a purchase for a future date and time, specify a purchase time.
%% If you do not specify a
%% purchase time, the default is the current time.
%%
%% For more information, see Reserved Instances:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html
%% and
%% Reserved Instance Marketplace:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html
%% in the Amazon EC2 User Guide.
purchase_reserved_instances_offering(Client, Input)
  when is_map(Client), is_map(Input) ->
    purchase_reserved_instances_offering(Client, Input, []).
purchase_reserved_instances_offering(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PurchaseReservedInstancesOffering">>, Input, Options).

%% @doc
%% You can no longer purchase Scheduled Instances.
%%
%% Purchases the Scheduled Instances with the specified schedule.
%%
%% Scheduled Instances enable you to purchase Amazon EC2 compute capacity by
%% the hour for a one-year term.
%% Before you can purchase a Scheduled Instance, you must call
%% `DescribeScheduledInstanceAvailability'
%% to check for available schedules and obtain a purchase token. After you
%% purchase a Scheduled Instance,
%% you must call `RunScheduledInstances' during each scheduled time
%% period.
%%
%% After you purchase a Scheduled Instance, you can't cancel, modify, or
%% resell your purchase.
purchase_scheduled_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    purchase_scheduled_instances(Client, Input, []).
purchase_scheduled_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PurchaseScheduledInstances">>, Input, Options).

%% @doc Requests a reboot of the specified instances.
%%
%% This operation is asynchronous; it only
%% queues a request to reboot the specified instances. The operation succeeds
%% if the
%% instances are valid and belong to you. Requests to reboot terminated
%% instances are
%% ignored.
%%
%% If an instance does not cleanly shut down within a few minutes, Amazon EC2
%% performs a
%% hard reboot.
%%
%% For more information about troubleshooting, see Troubleshoot an
%% unreachable
%% instance:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-console.html
%% in the Amazon EC2 User Guide.
reboot_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    reboot_instances(Client, Input, []).
reboot_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RebootInstances">>, Input, Options).

%% @doc Registers an AMI.
%%
%% When you're creating an instance-store backed AMI, registering the AMI
%% is the final step in the creation process. For more information about
%% creating AMIs, see
%% Create your
%% own AMI:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami.html
%% in the Amazon Elastic Compute Cloud User Guide.
%%
%% For Amazon EBS-backed instances, `CreateImage' creates and registers
%% the AMI
%% in a single request, so you don't have to register the AMI yourself.
%% We recommend that you
%% always use `CreateImage' unless you have a specific reason to use
%% RegisterImage.
%%
%% If needed, you can deregister an AMI at any time. Any modifications you
%% make to an AMI
%% backed by an instance store volume invalidates its registration. If you
%% make changes to an
%% image, deregister the previous image and register the new image.
%%
%% Register a snapshot of a root device volume
%%
%% You can use `RegisterImage' to create an Amazon EBS-backed Linux AMI
%% from a snapshot
%% of a root device volume. You specify the snapshot using a block device
%% mapping. You can't set
%% the encryption state of the volume using the block device mapping. If the
%% snapshot is
%% encrypted, or encryption by default is enabled, the root volume of an
%% instance launched from
%% the AMI is encrypted.
%%
%% For more information, see Create a Linux AMI from a snapshot:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html#creating-launching-ami-from-snapshot
%% and Use encryption with Amazon EBS-backed
%% AMIs:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIEncryption.html in
%% the Amazon Elastic Compute Cloud User Guide.
%%
%% Amazon Web Services Marketplace product codes
%%
%% If any snapshots have Amazon Web Services Marketplace product codes, they
%% are copied to the new AMI.
%%
%% Windows and some Linux distributions, such as Red Hat Enterprise Linux
%% (RHEL) and SUSE
%% Linux Enterprise Server (SLES), use the Amazon EC2 billing product code
%% associated with an AMI to
%% verify the subscription status for package updates. To create a new AMI
%% for operating systems
%% that require a billing product code, instead of registering the AMI, do
%% the following to
%% preserve the billing product code association:
%%
%% Launch an instance from an existing AMI with that billing product code.
%%
%% Customize the instance.
%%
%% Create an AMI from the instance using `CreateImage'.
%%
%% If you purchase a Reserved Instance to apply to an On-Demand Instance that
%% was launched
%% from an AMI with a billing product code, make sure that the Reserved
%% Instance has the matching
%% billing product code. If you purchase a Reserved Instance without the
%% matching billing product
%% code, the Reserved Instance will not be applied to the On-Demand Instance.
%% For information
%% about how to obtain the platform details and billing information of an
%% AMI, see Understand AMI
%% billing information:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-billing-info.html
%% in the Amazon EC2 User Guide.
register_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_image(Client, Input, []).
register_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterImage">>, Input, Options).

%% @doc Registers a set of tag keys to include in scheduled event
%% notifications for your resources.
%%
%% To remove tags, use DeregisterInstanceEventNotificationAttributes:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DeregisterInstanceEventNotificationAttributes.html.
register_instance_event_notification_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_instance_event_notification_attributes(Client, Input, []).
register_instance_event_notification_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterInstanceEventNotificationAttributes">>, Input, Options).

%% @doc Registers members (network interfaces) with the transit gateway
%% multicast group.
%%
%% A member is a network interface associated
%% with a supported EC2 instance that receives multicast traffic. For
%% information about
%% supported instances, see Multicast
%% Consideration:
%% https://docs.aws.amazon.com/vpc/latest/tgw/transit-gateway-limits.html#multicast-limits
%% in Amazon VPC Transit Gateways.
%%
%% After you add the members, use SearchTransitGatewayMulticastGroups:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SearchTransitGatewayMulticastGroups.html
%% to verify that the members were added
%% to the transit gateway multicast group.
register_transit_gateway_multicast_group_members(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_transit_gateway_multicast_group_members(Client, Input, []).
register_transit_gateway_multicast_group_members(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterTransitGatewayMulticastGroupMembers">>, Input, Options).

%% @doc Registers sources (network interfaces) with the specified transit
%% gateway multicast group.
%%
%% A multicast source is a network interface attached to a supported instance
%% that sends
%% multicast traffic. For information about supported instances, see
%% Multicast
%% Considerations:
%% https://docs.aws.amazon.com/vpc/latest/tgw/transit-gateway-limits.html#multicast-limits
%% in Amazon VPC Transit Gateways.
%%
%% After you add the source, use SearchTransitGatewayMulticastGroups:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SearchTransitGatewayMulticastGroups.html
%% to verify that the source was added to the multicast
%% group.
register_transit_gateway_multicast_group_sources(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_transit_gateway_multicast_group_sources(Client, Input, []).
register_transit_gateway_multicast_group_sources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterTransitGatewayMulticastGroupSources">>, Input, Options).

%% @doc Rejects a request to associate cross-account subnets with a transit
%% gateway multicast domain.
reject_transit_gateway_multicast_domain_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_transit_gateway_multicast_domain_associations(Client, Input, []).
reject_transit_gateway_multicast_domain_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectTransitGatewayMulticastDomainAssociations">>, Input, Options).

%% @doc Rejects a transit gateway peering attachment request.
reject_transit_gateway_peering_attachment(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_transit_gateway_peering_attachment(Client, Input, []).
reject_transit_gateway_peering_attachment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectTransitGatewayPeeringAttachment">>, Input, Options).

%% @doc Rejects a request to attach a VPC to a transit gateway.
%%
%% The VPC attachment must be in the `pendingAcceptance' state.
%% Use `DescribeTransitGatewayVpcAttachments' to view your pending VPC
%% attachment requests.
%% Use `AcceptTransitGatewayVpcAttachment' to accept a VPC attachment
%% request.
reject_transit_gateway_vpc_attachment(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_transit_gateway_vpc_attachment(Client, Input, []).
reject_transit_gateway_vpc_attachment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectTransitGatewayVpcAttachment">>, Input, Options).

%% @doc Rejects VPC endpoint connection requests to your VPC endpoint
%% service.
reject_vpc_endpoint_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_vpc_endpoint_connections(Client, Input, []).
reject_vpc_endpoint_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectVpcEndpointConnections">>, Input, Options).

%% @doc Rejects a VPC peering connection request.
%%
%% The VPC peering connection must be in the
%% `pending-acceptance' state. Use the
%% `DescribeVpcPeeringConnections' request
%% to view your outstanding VPC peering connection requests. To delete an
%% active VPC peering
%% connection, or to delete a VPC peering connection request that you
%% initiated, use `DeleteVpcPeeringConnection'.
reject_vpc_peering_connection(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_vpc_peering_connection(Client, Input, []).
reject_vpc_peering_connection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectVpcPeeringConnection">>, Input, Options).

%% @doc Releases the specified Elastic IP address.
%%
%% [Default VPC] Releasing an Elastic IP address automatically disassociates
%% it
%% from any instance that it's associated with. To disassociate an
%% Elastic IP address without
%% releasing it, use `DisassociateAddress'.
%%
%% [Nondefault VPC] You must use `DisassociateAddress' to disassociate
%% the Elastic IP address
%% before you can release it. Otherwise, Amazon EC2 returns an error
%% (`InvalidIPAddress.InUse').
%%
%% After releasing an Elastic IP address, it is released to the IP address
%% pool.
%% Be sure to update your DNS records and any servers or devices that
%% communicate with the address.
%% If you attempt to release an Elastic IP address that you already released,
%% you'll get an
%% `AuthFailure' error if the address is already allocated to another
%% Amazon Web Services account.
%%
%% After you release an Elastic IP address, you might be able to recover it.
%% For more information, see `AllocateAddress'.
release_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    release_address(Client, Input, []).
release_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReleaseAddress">>, Input, Options).

%% @doc When you no longer want to use an On-Demand Dedicated Host it can be
%% released.
%%
%% On-Demand billing is stopped and the host goes into `released' state.
%% The
%% host ID of Dedicated Hosts that have been released can no longer be
%% specified in another
%% request, for example, to modify the host. You must stop or terminate all
%% instances on a
%% host before it can be released.
%%
%% When Dedicated Hosts are released, it may take some time for them to stop
%% counting
%% toward your limit and you may receive capacity errors when trying to
%% allocate new
%% Dedicated Hosts. Wait a few minutes and then try again.
%%
%% Released hosts still appear in a `DescribeHosts' response.
release_hosts(Client, Input)
  when is_map(Client), is_map(Input) ->
    release_hosts(Client, Input, []).
release_hosts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReleaseHosts">>, Input, Options).

%% @doc Release an allocation within an IPAM pool.
%%
%% The Region you use should be the IPAM pool locale. The locale is the
%% Amazon Web Services Region where this IPAM pool is available for
%% allocations. You can only use this action to release manual allocations.
%% To remove an allocation for a resource without deleting the resource, set
%% its monitored state to false using ModifyIpamResourceCidr:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyIpamResourceCidr.html.
%% For more information, see Release an allocation:
%% https://docs.aws.amazon.com/vpc/latest/ipam/release-alloc-ipam.html in the
%% Amazon VPC IPAM User Guide.
%%
%% All EC2 API actions follow an eventual consistency:
%% https://docs.aws.amazon.com/AWSEC2/latest/APIReference/query-api-troubleshooting.html#eventual-consistency
%% model.
release_ipam_pool_allocation(Client, Input)
  when is_map(Client), is_map(Input) ->
    release_ipam_pool_allocation(Client, Input, []).
release_ipam_pool_allocation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReleaseIpamPoolAllocation">>, Input, Options).

%% @doc Replaces an IAM instance profile for the specified running instance.
%%
%% You can use
%% this action to change the IAM instance profile that's associated with
%% an instance
%% without having to disassociate the existing IAM instance profile first.
%%
%% Use `DescribeIamInstanceProfileAssociations' to get the association
%% ID.
replace_iam_instance_profile_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    replace_iam_instance_profile_association(Client, Input, []).
replace_iam_instance_profile_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReplaceIamInstanceProfileAssociation">>, Input, Options).

%% @doc Changes which network ACL a subnet is associated with.
%%
%% By default when you create a
%% subnet, it's automatically associated with the default network ACL.
%% For more
%% information, see Network ACLs:
%% https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html in
%% the Amazon VPC User Guide.
%%
%% This is an idempotent operation.
replace_network_acl_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    replace_network_acl_association(Client, Input, []).
replace_network_acl_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReplaceNetworkAclAssociation">>, Input, Options).

%% @doc Replaces an entry (rule) in a network ACL.
%%
%% For more information, see Network ACLs:
%% https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html in
%% the
%% Amazon VPC User Guide.
replace_network_acl_entry(Client, Input)
  when is_map(Client), is_map(Input) ->
    replace_network_acl_entry(Client, Input, []).
replace_network_acl_entry(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReplaceNetworkAclEntry">>, Input, Options).

%% @doc Replaces an existing route within a route table in a VPC.
%%
%% You must specify either a destination CIDR block or a prefix list ID. You
%% must also specify
%% exactly one of the resources from the parameter list, or reset the local
%% route to its default
%% target.
%%
%% For more information, see Route tables:
%% https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html in
%% the
%% Amazon VPC User Guide.
replace_route(Client, Input)
  when is_map(Client), is_map(Input) ->
    replace_route(Client, Input, []).
replace_route(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReplaceRoute">>, Input, Options).

%% @doc Changes the route table associated with a given subnet, internet
%% gateway, or virtual private gateway in a VPC.
%%
%% After the operation
%% completes, the subnet or gateway uses the routes in the new route table.
%% For more
%% information about route tables, see Route
%% tables:
%% https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html in
%% the Amazon VPC User Guide.
%%
%% You can also use this operation to change which table is the main route
%% table in the VPC. Specify the main route table's association ID and
%% the route table ID of the new main route table.
replace_route_table_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    replace_route_table_association(Client, Input, []).
replace_route_table_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReplaceRouteTableAssociation">>, Input, Options).

%% @doc Replaces the specified route in the specified transit gateway route
%% table.
replace_transit_gateway_route(Client, Input)
  when is_map(Client), is_map(Input) ->
    replace_transit_gateway_route(Client, Input, []).
replace_transit_gateway_route(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReplaceTransitGatewayRoute">>, Input, Options).

%% @doc Trigger replacement of specified VPN tunnel.
replace_vpn_tunnel(Client, Input)
  when is_map(Client), is_map(Input) ->
    replace_vpn_tunnel(Client, Input, []).
replace_vpn_tunnel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReplaceVpnTunnel">>, Input, Options).

%% @doc Submits feedback about the status of an instance.
%%
%% The instance must be in the
%% `running' state. If your experience with the instance differs from the
%% instance status returned by `DescribeInstanceStatus', use
%% `ReportInstanceStatus' to report your experience with the instance.
%% Amazon
%% EC2 collects this information to improve the accuracy of status checks.
%%
%% Use of this action does not change the value returned by
%% `DescribeInstanceStatus'.
report_instance_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    report_instance_status(Client, Input, []).
report_instance_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReportInstanceStatus">>, Input, Options).

%% @doc Creates a Spot Fleet request.
%%
%% The Spot Fleet request specifies the total target capacity and the
%% On-Demand target
%% capacity. Amazon EC2 calculates the difference between the total capacity
%% and On-Demand
%% capacity, and launches the difference as Spot capacity.
%%
%% You can submit a single request that includes multiple launch
%% specifications that vary
%% by instance type, AMI, Availability Zone, or subnet.
%%
%% By default, the Spot Fleet requests Spot Instances in the Spot Instance
%% pool where the
%% price per unit is the lowest. Each launch specification can include its
%% own instance
%% weighting that reflects the value of the instance type to your application
%% workload.
%%
%% Alternatively, you can specify that the Spot Fleet distribute the target
%% capacity
%% across the Spot pools included in its launch specifications. By ensuring
%% that the Spot
%% Instances in your Spot Fleet are in different Spot pools, you can improve
%% the
%% availability of your fleet.
%%
%% You can specify tags for the Spot Fleet request and instances launched by
%% the fleet.
%% You cannot tag other resource types in a Spot Fleet request because only
%% the
%% `spot-fleet-request' and `instance' resource types are
%% supported.
%%
%% For more information, see Spot Fleet requests:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-requests.html
%% in the Amazon EC2 User Guide.
%%
%% We strongly discourage using the RequestSpotFleet API because it is a
%% legacy
%% API with no planned investment. For options for requesting Spot Instances,
%% see
%% Which
%% is the best Spot request method to use?:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-best-practices.html#which-spot-request-method-to-use
%% in the
%% Amazon EC2 User Guide.
request_spot_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    request_spot_fleet(Client, Input, []).
request_spot_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RequestSpotFleet">>, Input, Options).

%% @doc Creates a Spot Instance request.
%%
%% For more information, see Spot Instance requests:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html in
%% the Amazon EC2 User Guide for Linux Instances.
%%
%% We strongly discourage using the RequestSpotInstances API because it is a
%% legacy
%% API with no planned investment. For options for requesting Spot Instances,
%% see
%% Which
%% is the best Spot request method to use?:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-best-practices.html#which-spot-request-method-to-use
%% in the
%% Amazon EC2 User Guide for Linux Instances.
request_spot_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    request_spot_instances(Client, Input, []).
request_spot_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RequestSpotInstances">>, Input, Options).

%% @doc Resets the attribute of the specified IP address.
%%
%% For requirements, see Using reverse DNS for email applications:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html#Using_Elastic_Addressing_Reverse_DNS.
reset_address_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_address_attribute(Client, Input, []).
reset_address_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetAddressAttribute">>, Input, Options).

%% @doc Resets the default KMS key for EBS encryption for your account in
%% this Region
%% to the Amazon Web Services managed KMS key for EBS.
%%
%% After resetting the default KMS key to the Amazon Web Services managed KMS
%% key, you can continue to encrypt by a
%% customer managed KMS key by specifying it when you create the volume. For
%% more information, see
%% Amazon EBS encryption:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html
%% in the Amazon Elastic Compute Cloud User Guide.
reset_ebs_default_kms_key_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_ebs_default_kms_key_id(Client, Input, []).
reset_ebs_default_kms_key_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetEbsDefaultKmsKeyId">>, Input, Options).

%% @doc Resets the specified attribute of the specified Amazon FPGA Image
%% (AFI) to its default value.
%%
%% You can only reset the load permission attribute.
reset_fpga_image_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_fpga_image_attribute(Client, Input, []).
reset_fpga_image_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetFpgaImageAttribute">>, Input, Options).

%% @doc Resets an attribute of an AMI to its default value.
reset_image_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_image_attribute(Client, Input, []).
reset_image_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetImageAttribute">>, Input, Options).

%% @doc Resets an attribute of an instance to its default value.
%%
%% To reset the
%% `kernel' or `ramdisk', the instance must be in a stopped
%% state. To reset the `sourceDestCheck', the instance can be either
%% running or
%% stopped.
%%
%% The `sourceDestCheck' attribute controls whether source/destination
%% checking is enabled. The default value is `true', which means checking
%% is
%% enabled. This value must be `false' for a NAT instance to perform NAT.
%% For
%% more information, see NAT Instances:
%% https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html
%% in the
%% Amazon VPC User Guide.
reset_instance_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_instance_attribute(Client, Input, []).
reset_instance_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetInstanceAttribute">>, Input, Options).

%% @doc Resets a network interface attribute.
%%
%% You can specify only one attribute at a time.
reset_network_interface_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_network_interface_attribute(Client, Input, []).
reset_network_interface_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetNetworkInterfaceAttribute">>, Input, Options).

%% @doc Resets permission settings for the specified snapshot.
%%
%% For more information about modifying snapshot permissions, see Share a
%% snapshot:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html
%% in the
%% Amazon Elastic Compute Cloud User Guide.
reset_snapshot_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_snapshot_attribute(Client, Input, []).
reset_snapshot_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetSnapshotAttribute">>, Input, Options).

%% @doc
%% This action is deprecated.
%%
%% Restores an Elastic IP address that was previously moved to the EC2-VPC
%% platform back to the EC2-Classic platform. You cannot move an Elastic IP
%% address that was originally allocated for use in EC2-VPC. The Elastic IP
%% address must not be associated with an instance or network interface.
restore_address_to_classic(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_address_to_classic(Client, Input, []).
restore_address_to_classic(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreAddressToClassic">>, Input, Options).

%% @doc Restores an AMI from the Recycle Bin.
%%
%% For more information, see Recycle Bin:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin.html in
%% the Amazon EC2 User Guide.
restore_image_from_recycle_bin(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_image_from_recycle_bin(Client, Input, []).
restore_image_from_recycle_bin(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreImageFromRecycleBin">>, Input, Options).

%% @doc Restores the entries from a previous version of a managed prefix list
%% to a new version of the prefix list.
restore_managed_prefix_list_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_managed_prefix_list_version(Client, Input, []).
restore_managed_prefix_list_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreManagedPrefixListVersion">>, Input, Options).

%% @doc Restores a snapshot from the Recycle Bin.
%%
%% For more information, see Restore
%% snapshots from the Recycle Bin:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-snaps.html#recycle-bin-restore-snaps
%% in the Amazon Elastic Compute Cloud User Guide.
restore_snapshot_from_recycle_bin(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_snapshot_from_recycle_bin(Client, Input, []).
restore_snapshot_from_recycle_bin(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreSnapshotFromRecycleBin">>, Input, Options).

%% @doc Restores an archived Amazon EBS snapshot for use temporarily or
%% permanently, or modifies the restore
%% period or restore type for a snapshot that was previously temporarily
%% restored.
%%
%% For more information see
%% Restore an archived snapshot:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/working-with-snapshot-archiving.html#restore-archived-snapshot
%% and
%% modify the restore period or restore type for a temporarily restored
%% snapshot:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/working-with-snapshot-archiving.html#modify-temp-restore-period
%% in the Amazon Elastic Compute Cloud User Guide.
restore_snapshot_tier(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_snapshot_tier(Client, Input, []).
restore_snapshot_tier(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreSnapshotTier">>, Input, Options).

%% @doc Removes an ingress authorization rule from a Client VPN endpoint.
revoke_client_vpn_ingress(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_client_vpn_ingress(Client, Input, []).
revoke_client_vpn_ingress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeClientVpnIngress">>, Input, Options).

%% @doc Removes the specified outbound (egress) rules from the specified
%% security group.
%%
%% You can specify rules using either rule IDs or security group rule
%% properties. If you use
%% rule properties, the values that you specify (for example, ports) must
%% match the existing rule's
%% values exactly. Each rule has a protocol, from and to ports, and
%% destination (CIDR range,
%% security group, or prefix list). For the TCP and UDP protocols, you must
%% also specify the
%% destination port or range of ports. For the ICMP protocol, you must also
%% specify the ICMP type
%% and code. If the security group rule has a description, you do not need to
%% specify the description
%% to revoke the rule.
%%
%% For a default VPC, if the values you specify do not match the existing
%% rule's values, no error is
%% returned, and the output describes the security group rules that were not
%% revoked.
%%
%% Amazon Web Services recommends that you describe the security group to
%% verify that the rules were removed.
%%
%% Rule changes are propagated to instances within the security group as
%% quickly as possible. However,
%% a small delay might occur.
revoke_security_group_egress(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_security_group_egress(Client, Input, []).
revoke_security_group_egress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeSecurityGroupEgress">>, Input, Options).

%% @doc Removes the specified inbound (ingress) rules from a security group.
%%
%% You can specify rules using either rule IDs or security group rule
%% properties. If you use
%% rule properties, the values that you specify (for example, ports) must
%% match the existing rule's
%% values exactly. Each rule has a protocol, from and to ports, and source
%% (CIDR range,
%% security group, or prefix list). For the TCP and UDP protocols, you must
%% also specify the
%% destination port or range of ports. For the ICMP protocol, you must also
%% specify the ICMP type
%% and code. If the security group rule has a description, you do not need to
%% specify the description
%% to revoke the rule.
%%
%% For a default VPC, if the values you specify do not match the existing
%% rule's values,
%% no error is returned, and the output describes the security group rules
%% that were not
%% revoked.
%%
%% For a non-default VPC, if the values you specify do not match the existing
%% rule's
%% values, an `InvalidPermission.NotFound' client error is returned, and
%% no
%% rules are revoked.
%%
%% Amazon Web Services recommends that you describe the security group to
%% verify that the rules were removed.
%%
%% Rule changes are propagated to instances within the security group as
%% quickly as possible.
%% However, a small delay might occur.
revoke_security_group_ingress(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_security_group_ingress(Client, Input, []).
revoke_security_group_ingress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeSecurityGroupIngress">>, Input, Options).

%% @doc Launches the specified number of instances using an AMI for which you
%% have
%% permissions.
%%
%% You can specify a number of options, or leave the default options. The
%% following rules
%% apply:
%%
%% If you don't specify a subnet ID, we choose a default subnet from
%% your default VPC for you. If you don't have a default VPC, you must
%% specify a
%% subnet ID in the request.
%%
%% All instances have a network interface with a primary private IPv4
%% address. If you don't specify this address, we choose one from the
%% IPv4 range of
%% your subnet.
%%
%% Not all instance types support IPv6 addresses. For more information, see
%% Instance
%% types:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html.
%%
%% If you don't specify a security group ID, we use the default security
%% group.
%% For more information, see Security
%% groups:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html.
%%
%% If any of the AMIs have a product code attached for which the user has not
%% subscribed, the request fails.
%%
%% You can create a launch template:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html,
%% which is a resource that contains the parameters to launch an instance.
%% When you launch
%% an instance using `RunInstances', you can specify the launch template
%% instead of specifying the launch parameters.
%%
%% To ensure faster instance launches, break up large requests into smaller
%% batches. For
%% example, create five separate launch requests for 100 instances each
%% instead of one
%% launch request for 500 instances.
%%
%% An instance is ready for you to use when it's in the `running'
%% state. You
%% can check the state of your instance using `DescribeInstances'. You
%% can
%% tag instances and EBS volumes during launch, after launch, or both. For
%% more
%% information, see `CreateTags' and Tagging your Amazon EC2
%% resources:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html.
%%
%% Linux instances have access to the public key of the key pair at boot. You
%% can use
%% this key to provide secure access to the instance. Amazon EC2 public
%% images use this
%% feature to provide secure access without passwords. For more information,
%% see Key
%% pairs:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html.
%%
%% For troubleshooting, see What to do if
%% an instance immediately terminates:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_InstanceStraightToTerminated.html,
%% and Troubleshooting connecting to your instance:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesConnecting.html.
run_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    run_instances(Client, Input, []).
run_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RunInstances">>, Input, Options).

%% @doc Launches the specified Scheduled Instances.
%%
%% Before you can launch a Scheduled Instance, you must purchase it and
%% obtain an identifier using `PurchaseScheduledInstances'.
%%
%% You must launch a Scheduled Instance during its scheduled time period. You
%% can't stop or reboot a Scheduled Instance,
%% but you can terminate it as needed. If you terminate a Scheduled Instance
%% before the current scheduled time period ends,
%% you can launch it again after a few minutes. For more information, see
%% Scheduled Instances:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-scheduled-instances.html
%% in the Amazon EC2 User Guide.
run_scheduled_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    run_scheduled_instances(Client, Input, []).
run_scheduled_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RunScheduledInstances">>, Input, Options).

%% @doc Searches for routes in the specified local gateway route table.
search_local_gateway_routes(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_local_gateway_routes(Client, Input, []).
search_local_gateway_routes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchLocalGatewayRoutes">>, Input, Options).

%% @doc Searches one or more transit gateway multicast groups and returns the
%% group membership information.
search_transit_gateway_multicast_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_transit_gateway_multicast_groups(Client, Input, []).
search_transit_gateway_multicast_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchTransitGatewayMulticastGroups">>, Input, Options).

%% @doc Searches for routes in the specified transit gateway route table.
search_transit_gateway_routes(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_transit_gateway_routes(Client, Input, []).
search_transit_gateway_routes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchTransitGatewayRoutes">>, Input, Options).

%% @doc Sends a diagnostic interrupt to the specified Amazon EC2 instance to
%% trigger a
%% kernel panic (on Linux instances), or a blue
%% screen/stop error (on Windows instances).
%%
%% For
%% instances based on Intel and AMD processors, the interrupt is received as
%% a
%% non-maskable interrupt (NMI).
%%
%% In general, the operating system crashes and reboots when a kernel panic
%% or stop error
%% is triggered. The operating system can also be configured to perform
%% diagnostic tasks,
%% such as generating a memory dump file, loading a secondary kernel, or
%% obtaining a call
%% trace.
%%
%% Before sending a diagnostic interrupt to your instance, ensure that its
%% operating
%% system is configured to perform the required diagnostic tasks.
%%
%% For more information about configuring your operating system to generate a
%% crash dump
%% when a kernel panic or stop error occurs, see Send a diagnostic interrupt
%% (for advanced users):
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/diagnostic-interrupt.html
%% (Linux instances) or Send a diagnostic
%% interrupt (for advanced users):
%% https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/diagnostic-interrupt.html
%% (Windows instances).
send_diagnostic_interrupt(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_diagnostic_interrupt(Client, Input, []).
send_diagnostic_interrupt(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendDiagnosticInterrupt">>, Input, Options).

%% @doc Starts an Amazon EBS-backed instance that you've previously
%% stopped.
%%
%% Instances that use Amazon EBS volumes as their root devices can be quickly
%% stopped and
%% started. When an instance is stopped, the compute resources are released
%% and you are not
%% billed for instance usage. However, your root partition Amazon EBS volume
%% remains and
%% continues to persist your data, and you are charged for Amazon EBS volume
%% usage. You can
%% restart your instance at any time. Every time you start your instance,
%% Amazon EC2
%% charges a one-minute minimum for instance usage, and thereafter charges
%% per second for
%% instance usage.
%%
%% Before stopping an instance, make sure it is in a state from which it can
%% be
%% restarted. Stopping an instance does not preserve data stored in RAM.
%%
%% Performing this operation on an instance that uses an instance store as
%% its root
%% device returns an error.
%%
%% If you attempt to start a T3 instance with `host' tenancy and the
%% `unlimited' CPU credit option, the request fails. The
%% `unlimited' CPU credit option is not supported on Dedicated Hosts.
%% Before
%% you start the instance, either change its CPU credit option to
%% `standard', or
%% change its tenancy to `default' or `dedicated'.
%%
%% For more information, see Stop and start your instance:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html
%% in the Amazon EC2 User Guide.
start_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_instances(Client, Input, []).
start_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartInstances">>, Input, Options).

%% @doc Starts analyzing the specified Network Access Scope.
start_network_insights_access_scope_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_network_insights_access_scope_analysis(Client, Input, []).
start_network_insights_access_scope_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartNetworkInsightsAccessScopeAnalysis">>, Input, Options).

%% @doc Starts analyzing the specified path.
%%
%% If the path is reachable, the
%% operation returns the shortest feasible path.
start_network_insights_analysis(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_network_insights_analysis(Client, Input, []).
start_network_insights_analysis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartNetworkInsightsAnalysis">>, Input, Options).

%% @doc Initiates the verification process to prove that the service provider
%% owns the private
%% DNS name domain for the endpoint service.
%%
%% The service provider must successfully perform the verification before the
%% consumer can use the name to access the service.
%%
%% Before the service provider runs this command, they must add a record to
%% the DNS server.
start_vpc_endpoint_service_private_dns_verification(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_vpc_endpoint_service_private_dns_verification(Client, Input, []).
start_vpc_endpoint_service_private_dns_verification(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartVpcEndpointServicePrivateDnsVerification">>, Input, Options).

%% @doc Stops an Amazon EBS-backed instance.
%%
%% For more information, see Stop and start
%% your instance:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html in the
%% Amazon EC2 User Guide.
%%
%% You can use the Stop action to hibernate an instance if the instance is
%% enabled for
%% hibernation:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enabling-hibernation.html
%% and it meets the hibernation
%% prerequisites:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hibernating-prerequisites.html.
%% For more information, see Hibernate your instance:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html in the
%% Amazon EC2 User Guide.
%%
%% We don't charge usage for a stopped instance, or data transfer fees;
%% however, your
%% root partition Amazon EBS volume remains and continues to persist your
%% data, and you are
%% charged for Amazon EBS volume usage. Every time you start your instance,
%% Amazon EC2
%% charges a one-minute minimum for instance usage, and thereafter charges
%% per second for
%% instance usage.
%%
%% You can't stop or hibernate instance store-backed instances. You
%% can't use the Stop
%% action to hibernate Spot Instances, but you can specify that Amazon EC2
%% should hibernate
%% Spot Instances when they are interrupted. For more information, see
%% Hibernating interrupted Spot Instances:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-interruptions.html#hibernate-spot-instances
%% in the
%% Amazon EC2 User Guide.
%%
%% When you stop or hibernate an instance, we shut it down. You can restart
%% your instance
%% at any time. Before stopping or hibernating an instance, make sure it is
%% in a state from
%% which it can be restarted. Stopping an instance does not preserve data
%% stored in RAM,
%% but hibernating an instance does preserve data stored in RAM. If an
%% instance cannot
%% hibernate successfully, a normal shutdown occurs.
%%
%% Stopping and hibernating an instance is different to rebooting or
%% terminating it. For
%% example, when you stop or hibernate an instance, the root device and any
%% other devices
%% attached to the instance persist. When you terminate an instance, the root
%% device and
%% any other devices attached during the instance launch are automatically
%% deleted. For
%% more information about the differences between rebooting, stopping,
%% hibernating, and
%% terminating instances, see Instance lifecycle:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html
%% in the Amazon EC2 User Guide.
%%
%% When you stop an instance, we attempt to shut it down forcibly after a
%% short while. If
%% your instance appears stuck in the stopping state after a period of time,
%% there may be
%% an issue with the underlying host computer. For more information, see
%% Troubleshoot
%% stopping your instance:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesStopping.html
%% in the Amazon EC2 User Guide.
stop_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_instances(Client, Input, []).
stop_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopInstances">>, Input, Options).

%% @doc Terminates active Client VPN endpoint connections.
%%
%% This action can be used to terminate a specific client connection, or up
%% to five connections established by a specific user.
terminate_client_vpn_connections(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_client_vpn_connections(Client, Input, []).
terminate_client_vpn_connections(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateClientVpnConnections">>, Input, Options).

%% @doc Shuts down the specified instances.
%%
%% This operation is idempotent; if you terminate an
%% instance more than once, each call succeeds.
%%
%% If you specify multiple instances and the request fails (for example,
%% because of a
%% single incorrect instance ID), none of the instances are terminated.
%%
%% If you terminate multiple instances across multiple Availability Zones,
%% and one or
%% more of the specified instances are enabled for termination protection,
%% the request
%% fails with the following results:
%%
%% The specified instances that are in the same Availability Zone as the
%% protected instance are not terminated.
%%
%% The specified instances that are in different Availability Zones, where no
%% other specified instances are protected, are successfully terminated.
%%
%% For example, say you have the following instances:
%%
%% Instance A: `us-east-1a'; Not protected
%%
%% Instance B: `us-east-1a'; Not protected
%%
%% Instance C: `us-east-1b'; Protected
%%
%% Instance D: `us-east-1b'; not protected
%%
%% If you attempt to terminate all of these instances in the same request,
%% the request
%% reports failure with the following results:
%%
%% Instance A and Instance B are successfully terminated because none of the
%% specified instances in `us-east-1a' are enabled for termination
%% protection.
%%
%% Instance C and Instance D fail to terminate because at least one of the
%% specified instances in `us-east-1b' (Instance C) is enabled for
%% termination protection.
%%
%% Terminated instances remain visible after termination (for approximately
%% one
%% hour).
%%
%% By default, Amazon EC2 deletes all EBS volumes that were attached when the
%% instance
%% launched. Volumes attached after instance launch continue running.
%%
%% You can stop, start, and terminate EBS-backed instances. You can only
%% terminate
%% instance store-backed instances. What happens to an instance differs if
%% you stop it or
%% terminate it. For example, when you stop an instance, the root device and
%% any other
%% devices attached to the instance persist. When you terminate an instance,
%% any attached
%% EBS volumes with the `DeleteOnTermination' block device mapping
%% parameter set
%% to `true' are automatically deleted. For more information about the
%% differences between stopping and terminating instances, see Instance
%% lifecycle:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html
%% in the Amazon EC2 User Guide.
%%
%% For more information about troubleshooting, see Troubleshooting
%% terminating your instance:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesShuttingDown.html
%% in the
%% Amazon EC2 User Guide.
terminate_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_instances(Client, Input, []).
terminate_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateInstances">>, Input, Options).

%% @doc Unassigns one or more IPv6 addresses IPv4 Prefix Delegation prefixes
%% from a network interface.
unassign_ipv6_addresses(Client, Input)
  when is_map(Client), is_map(Input) ->
    unassign_ipv6_addresses(Client, Input, []).
unassign_ipv6_addresses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnassignIpv6Addresses">>, Input, Options).

%% @doc Unassigns one or more secondary private IP addresses, or IPv4 Prefix
%% Delegation prefixes from a
%% network interface.
unassign_private_ip_addresses(Client, Input)
  when is_map(Client), is_map(Input) ->
    unassign_private_ip_addresses(Client, Input, []).
unassign_private_ip_addresses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnassignPrivateIpAddresses">>, Input, Options).

%% @doc Unassigns secondary private IPv4 addresses from a private NAT
%% gateway.
%%
%% You cannot unassign your primary private IP. For more information, see
%% Edit secondary IP address associations:
%% https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-edit-secondary
%% in the Amazon VPC User Guide.
%%
%% While unassigning is in progress, you cannot assign/unassign additional IP
%% addresses while the connections are being drained. You are, however,
%% allowed to delete the NAT gateway.
%%
%% A private IP address will only be released at the end of
%% MaxDrainDurationSeconds. The
%% private IP addresses stay associated and support the existing connections,
%% but do not
%% support any new connections (new connections are distributed across the
%% remaining
%% assigned private IP address). After the existing connections drain out,
%% the private IP
%% addresses are released.
unassign_private_nat_gateway_address(Client, Input)
  when is_map(Client), is_map(Input) ->
    unassign_private_nat_gateway_address(Client, Input, []).
unassign_private_nat_gateway_address(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnassignPrivateNatGatewayAddress">>, Input, Options).

%% @doc Unlocks a snapshot that is locked in governance mode or that is
%% locked in compliance mode
%% but still in the cooling-off period.
%%
%% You can't unlock a snapshot that is locked in compliance
%% mode after the cooling-off period has expired.
unlock_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    unlock_snapshot(Client, Input, []).
unlock_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnlockSnapshot">>, Input, Options).

%% @doc Disables detailed monitoring for a running instance.
%%
%% For more information, see Monitoring
%% your instances and volumes:
%% https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html
%% in the
%% Amazon EC2 User Guide.
unmonitor_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    unmonitor_instances(Client, Input, []).
unmonitor_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnmonitorInstances">>, Input, Options).

%% @doc Updates the description of an egress (outbound) security group rule.
%%
%% You
%% can replace an existing description, or add a description to a rule that
%% did not have one
%% previously. You can remove a description for a security group rule by
%% omitting the
%% description parameter in the request.
update_security_group_rule_descriptions_egress(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_security_group_rule_descriptions_egress(Client, Input, []).
update_security_group_rule_descriptions_egress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSecurityGroupRuleDescriptionsEgress">>, Input, Options).

%% @doc Updates the description of an ingress (inbound) security group rule.
%%
%% You can replace an
%% existing description, or add a description to a rule that did not have one
%% previously.
%% You can remove a description for a security group rule by omitting the
%% description
%% parameter in the request.
update_security_group_rule_descriptions_ingress(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_security_group_rule_descriptions_ingress(Client, Input, []).
update_security_group_rule_descriptions_ingress(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSecurityGroupRuleDescriptionsIngress">>, Input, Options).

%% @doc Stops advertising an address range that is provisioned as an address
%% pool.
%%
%% You can perform this operation at most once every 10 seconds, even if you
%% specify different
%% address ranges each time.
%%
%% It can take a few minutes before traffic to the specified addresses stops
%% routing to Amazon Web Services
%% because of BGP propagation delays.
withdraw_byoip_cidr(Client, Input)
  when is_map(Client), is_map(Input) ->
    withdraw_byoip_cidr(Client, Input, []).
withdraw_byoip_cidr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"WithdrawByoipCidr">>, Input, Options).

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

do_request(Client, _Action, Input0, Options) ->
    Client1 = Client#{service => <<"ec2">>},
    Host = build_host(<<"ec2">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],

    Input = Input0,

    Payload = aws_util:encode_query(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = aws_util:decode_xml(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
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
