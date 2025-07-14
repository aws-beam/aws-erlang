%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Elastic Load Balancing
%%
%% A load balancer can distribute incoming traffic across your EC2 instances.
%%
%% This enables you to increase the availability of your application. The
%% load balancer
%% also monitors the health of its registered instances and ensures that it
%% routes traffic
%% only to healthy instances. You configure your load balancer to accept
%% incoming traffic
%% by specifying one or more listeners, which are configured with a protocol
%% and port
%% number for connections from clients to the load balancer and a protocol
%% and port number
%% for connections from the load balancer to the instances.
%%
%% Elastic Load Balancing supports three types of load balancers: Application
%% Load Balancers, Network Load Balancers,
%% and Classic Load Balancers. You can select a load balancer based on your
%% application needs. For more
%% information, see the Elastic Load Balancing User Guide:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/.
%%
%% This reference covers the 2012-06-01 API, which supports Classic Load
%% Balancers.
%% The 2015-12-01 API supports Application Load Balancers and Network Load
%% Balancers.
%%
%% To get started, create a load balancer with one or more listeners using
%% `CreateLoadBalancer'.
%% Register your instances with the load balancer using
%% `RegisterInstancesWithLoadBalancer'.
%%
%% All Elastic Load Balancing operations are idempotent, which means
%% that they complete at most one time. If you repeat an operation, it
%% succeeds with a 200 OK
%% response code.
-module(aws_elastic_load_balancing).

-export([add_tags/2,
         add_tags/3,
         apply_security_groups_to_load_balancer/2,
         apply_security_groups_to_load_balancer/3,
         attach_load_balancer_to_subnets/2,
         attach_load_balancer_to_subnets/3,
         configure_health_check/2,
         configure_health_check/3,
         create_app_cookie_stickiness_policy/2,
         create_app_cookie_stickiness_policy/3,
         create_lb_cookie_stickiness_policy/2,
         create_lb_cookie_stickiness_policy/3,
         create_load_balancer/2,
         create_load_balancer/3,
         create_load_balancer_listeners/2,
         create_load_balancer_listeners/3,
         create_load_balancer_policy/2,
         create_load_balancer_policy/3,
         delete_load_balancer/2,
         delete_load_balancer/3,
         delete_load_balancer_listeners/2,
         delete_load_balancer_listeners/3,
         delete_load_balancer_policy/2,
         delete_load_balancer_policy/3,
         deregister_instances_from_load_balancer/2,
         deregister_instances_from_load_balancer/3,
         describe_account_limits/2,
         describe_account_limits/3,
         describe_instance_health/2,
         describe_instance_health/3,
         describe_load_balancer_attributes/2,
         describe_load_balancer_attributes/3,
         describe_load_balancer_policies/2,
         describe_load_balancer_policies/3,
         describe_load_balancer_policy_types/2,
         describe_load_balancer_policy_types/3,
         describe_load_balancers/2,
         describe_load_balancers/3,
         describe_tags/2,
         describe_tags/3,
         detach_load_balancer_from_subnets/2,
         detach_load_balancer_from_subnets/3,
         disable_availability_zones_for_load_balancer/2,
         disable_availability_zones_for_load_balancer/3,
         enable_availability_zones_for_load_balancer/2,
         enable_availability_zones_for_load_balancer/3,
         modify_load_balancer_attributes/2,
         modify_load_balancer_attributes/3,
         register_instances_with_load_balancer/2,
         register_instances_with_load_balancer/3,
         remove_tags/2,
         remove_tags/3,
         set_load_balancer_listener_ssl_certificate/2,
         set_load_balancer_listener_ssl_certificate/3,
         set_load_balancer_policies_for_backend_server/2,
         set_load_balancer_policies_for_backend_server/3,
         set_load_balancer_policies_of_listener/2,
         set_load_balancer_policies_of_listener/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% policy_type_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type policy_type_not_found_exception() :: #{binary() => any()}.

%% Example:
%% source_security_group() :: #{
%%   <<"GroupName">> => string(),
%%   <<"OwnerAlias">> => string()
%% }
-type source_security_group() :: #{binary() => any()}.

%% Example:
%% attach_load_balancer_to_subnets_output() :: #{
%%   <<"Subnets">> => list(string())
%% }
-type attach_load_balancer_to_subnets_output() :: #{binary() => any()}.

%% Example:
%% backend_server_description() :: #{
%%   <<"InstancePort">> => integer(),
%%   <<"PolicyNames">> => list(string())
%% }
-type backend_server_description() :: #{binary() => any()}.

%% Example:
%% policy_description() :: #{
%%   <<"PolicyAttributeDescriptions">> => list(policy_attribute_description()),
%%   <<"PolicyName">> => string(),
%%   <<"PolicyTypeName">> => string()
%% }
-type policy_description() :: #{binary() => any()}.

%% Example:
%% describe_load_balancer_policy_types_output() :: #{
%%   <<"PolicyTypeDescriptions">> => list(policy_type_description())
%% }
-type describe_load_balancer_policy_types_output() :: #{binary() => any()}.

%% Example:
%% policy_attribute() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"AttributeValue">> => string()
%% }
-type policy_attribute() :: #{binary() => any()}.

%% Example:
%% apply_security_groups_to_load_balancer_output() :: #{
%%   <<"SecurityGroups">> => list(string())
%% }
-type apply_security_groups_to_load_balancer_output() :: #{binary() => any()}.

%% Example:
%% connection_settings() :: #{
%%   <<"IdleTimeout">> => integer()
%% }
-type connection_settings() :: #{binary() => any()}.

%% Example:
%% describe_load_balancer_policies_input() :: #{
%%   <<"LoadBalancerName">> => string(),
%%   <<"PolicyNames">> => list(string())
%% }
-type describe_load_balancer_policies_input() :: #{binary() => any()}.

%% Example:
%% dependency_throttle_exception() :: #{
%%   <<"Message">> => string()
%% }
-type dependency_throttle_exception() :: #{binary() => any()}.

%% Example:
%% listener() :: #{
%%   <<"InstancePort">> => integer(),
%%   <<"InstanceProtocol">> => string(),
%%   <<"LoadBalancerPort">> => integer(),
%%   <<"Protocol">> => string(),
%%   <<"SSLCertificateId">> => string()
%% }
-type listener() :: #{binary() => any()}.

%% Example:
%% delete_access_point_output() :: #{

%% }
-type delete_access_point_output() :: #{binary() => any()}.

%% Example:
%% describe_access_points_output() :: #{
%%   <<"LoadBalancerDescriptions">> => list(load_balancer_description()),
%%   <<"NextMarker">> => string()
%% }
-type describe_access_points_output() :: #{binary() => any()}.

%% Example:
%% set_load_balancer_listener_ssl_certificate_input() :: #{
%%   <<"LoadBalancerName">> := string(),
%%   <<"LoadBalancerPort">> := integer(),
%%   <<"SSLCertificateId">> := string()
%% }
-type set_load_balancer_listener_ssl_certificate_input() :: #{binary() => any()}.

%% Example:
%% duplicate_access_point_name_exception() :: #{
%%   <<"Message">> => string()
%% }
-type duplicate_access_point_name_exception() :: #{binary() => any()}.

%% Example:
%% attach_load_balancer_to_subnets_input() :: #{
%%   <<"LoadBalancerName">> := string(),
%%   <<"Subnets">> := list(string())
%% }
-type attach_load_balancer_to_subnets_input() :: #{binary() => any()}.

%% Example:
%% add_tags_output() :: #{

%% }
-type add_tags_output() :: #{binary() => any()}.

%% Example:
%% load_balancer_description() :: #{
%%   <<"AvailabilityZones">> => list(string()),
%%   <<"BackendServerDescriptions">> => list(backend_server_description()),
%%   <<"CanonicalHostedZoneName">> => string(),
%%   <<"CanonicalHostedZoneNameID">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DNSName">> => string(),
%%   <<"HealthCheck">> => health_check(),
%%   <<"Instances">> => list(instance()),
%%   <<"ListenerDescriptions">> => list(listener_description()),
%%   <<"LoadBalancerName">> => string(),
%%   <<"Policies">> => policies(),
%%   <<"Scheme">> => string(),
%%   <<"SecurityGroups">> => list(string()),
%%   <<"SourceSecurityGroup">> => source_security_group(),
%%   <<"Subnets">> => list(string()),
%%   <<"VPCId">> => string()
%% }
-type load_balancer_description() :: #{binary() => any()}.

%% Example:
%% app_cookie_stickiness_policy() :: #{
%%   <<"CookieName">> => string(),
%%   <<"PolicyName">> => string()
%% }
-type app_cookie_stickiness_policy() :: #{binary() => any()}.

%% Example:
%% add_availability_zones_input() :: #{
%%   <<"AvailabilityZones">> := list(string()),
%%   <<"LoadBalancerName">> := string()
%% }
-type add_availability_zones_input() :: #{binary() => any()}.

%% Example:
%% add_tags_input() :: #{
%%   <<"LoadBalancerNames">> := list(string()),
%%   <<"Tags">> := list(tag())
%% }
-type add_tags_input() :: #{binary() => any()}.

%% Example:
%% limit() :: #{
%%   <<"Max">> => string(),
%%   <<"Name">> => string()
%% }
-type limit() :: #{binary() => any()}.

%% Example:
%% invalid_configuration_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_configuration_request_exception() :: #{binary() => any()}.

%% Example:
%% subnet_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type subnet_not_found_exception() :: #{binary() => any()}.

%% Example:
%% create_lb_cookie_stickiness_policy_input() :: #{
%%   <<"CookieExpirationPeriod">> => float(),
%%   <<"LoadBalancerName">> := string(),
%%   <<"PolicyName">> := string()
%% }
-type create_lb_cookie_stickiness_policy_input() :: #{binary() => any()}.

%% Example:
%% delete_load_balancer_policy_input() :: #{
%%   <<"LoadBalancerName">> := string(),
%%   <<"PolicyName">> := string()
%% }
-type delete_load_balancer_policy_input() :: #{binary() => any()}.

%% Example:
%% describe_end_point_state_input() :: #{
%%   <<"Instances">> => list(instance()),
%%   <<"LoadBalancerName">> := string()
%% }
-type describe_end_point_state_input() :: #{binary() => any()}.

%% Example:
%% remove_tags_output() :: #{

%% }
-type remove_tags_output() :: #{binary() => any()}.

%% Example:
%% create_lb_cookie_stickiness_policy_output() :: #{

%% }
-type create_lb_cookie_stickiness_policy_output() :: #{binary() => any()}.

%% Example:
%% policy_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type policy_not_found_exception() :: #{binary() => any()}.

%% Example:
%% policy_attribute_description() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"AttributeValue">> => string()
%% }
-type policy_attribute_description() :: #{binary() => any()}.

%% Example:
%% tag_key_only() :: #{
%%   <<"Key">> => string()
%% }
-type tag_key_only() :: #{binary() => any()}.

%% Example:
%% duplicate_listener_exception() :: #{
%%   <<"Message">> => string()
%% }
-type duplicate_listener_exception() :: #{binary() => any()}.

%% Example:
%% lb_cookie_stickiness_policy() :: #{
%%   <<"CookieExpirationPeriod">> => float(),
%%   <<"PolicyName">> => string()
%% }
-type lb_cookie_stickiness_policy() :: #{binary() => any()}.

%% Example:
%% load_balancer_attributes() :: #{
%%   <<"AccessLog">> => access_log(),
%%   <<"AdditionalAttributes">> => list(additional_attribute()),
%%   <<"ConnectionDraining">> => connection_draining(),
%%   <<"ConnectionSettings">> => connection_settings(),
%%   <<"CrossZoneLoadBalancing">> => cross_zone_load_balancing()
%% }
-type load_balancer_attributes() :: #{binary() => any()}.

%% Example:
%% invalid_end_point_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_end_point_exception() :: #{binary() => any()}.

%% Example:
%% describe_tags_input() :: #{
%%   <<"LoadBalancerNames">> := list(string())
%% }
-type describe_tags_input() :: #{binary() => any()}.

%% Example:
%% detach_load_balancer_from_subnets_output() :: #{
%%   <<"Subnets">> => list(string())
%% }
-type detach_load_balancer_from_subnets_output() :: #{binary() => any()}.

%% Example:
%% certificate_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type certificate_not_found_exception() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% delete_access_point_input() :: #{
%%   <<"LoadBalancerName">> := string()
%% }
-type delete_access_point_input() :: #{binary() => any()}.

%% Example:
%% tag_description() :: #{
%%   <<"LoadBalancerName">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type tag_description() :: #{binary() => any()}.

%% Example:
%% deregister_end_points_output() :: #{
%%   <<"Instances">> => list(instance())
%% }
-type deregister_end_points_output() :: #{binary() => any()}.

%% Example:
%% connection_draining() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"Timeout">> => integer()
%% }
-type connection_draining() :: #{binary() => any()}.

%% Example:
%% remove_availability_zones_input() :: #{
%%   <<"AvailabilityZones">> := list(string()),
%%   <<"LoadBalancerName">> := string()
%% }
-type remove_availability_zones_input() :: #{binary() => any()}.

%% Example:
%% add_availability_zones_output() :: #{
%%   <<"AvailabilityZones">> => list(string())
%% }
-type add_availability_zones_output() :: #{binary() => any()}.

%% Example:
%% describe_tags_output() :: #{
%%   <<"TagDescriptions">> => list(tag_description())
%% }
-type describe_tags_output() :: #{binary() => any()}.

%% Example:
%% set_load_balancer_listener_ssl_certificate_output() :: #{

%% }
-type set_load_balancer_listener_ssl_certificate_output() :: #{binary() => any()}.

%% Example:
%% access_point_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_point_not_found_exception() :: #{binary() => any()}.

%% Example:
%% create_load_balancer_listener_output() :: #{

%% }
-type create_load_balancer_listener_output() :: #{binary() => any()}.

%% Example:
%% create_access_point_input() :: #{
%%   <<"AvailabilityZones">> => list(string()),
%%   <<"Listeners">> := list(listener()),
%%   <<"LoadBalancerName">> := string(),
%%   <<"Scheme">> => string(),
%%   <<"SecurityGroups">> => list(string()),
%%   <<"Subnets">> => list(string()),
%%   <<"Tags">> => list(tag())
%% }
-type create_access_point_input() :: #{binary() => any()}.

%% Example:
%% apply_security_groups_to_load_balancer_input() :: #{
%%   <<"LoadBalancerName">> := string(),
%%   <<"SecurityGroups">> := list(string())
%% }
-type apply_security_groups_to_load_balancer_input() :: #{binary() => any()}.

%% Example:
%% configure_health_check_input() :: #{
%%   <<"HealthCheck">> := health_check(),
%%   <<"LoadBalancerName">> := string()
%% }
-type configure_health_check_input() :: #{binary() => any()}.

%% Example:
%% health_check() :: #{
%%   <<"HealthyThreshold">> => integer(),
%%   <<"Interval">> => integer(),
%%   <<"Target">> => string(),
%%   <<"Timeout">> => integer(),
%%   <<"UnhealthyThreshold">> => integer()
%% }
-type health_check() :: #{binary() => any()}.

%% Example:
%% operation_not_permitted_exception() :: #{
%%   <<"Message">> => string()
%% }
-type operation_not_permitted_exception() :: #{binary() => any()}.

%% Example:
%% instance_state() :: #{
%%   <<"Description">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"ReasonCode">> => string(),
%%   <<"State">> => string()
%% }
-type instance_state() :: #{binary() => any()}.

%% Example:
%% describe_access_points_input() :: #{
%%   <<"LoadBalancerNames">> => list(string()),
%%   <<"Marker">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type describe_access_points_input() :: #{binary() => any()}.

%% Example:
%% describe_account_limits_output() :: #{
%%   <<"Limits">> => list(limit()),
%%   <<"NextMarker">> => string()
%% }
-type describe_account_limits_output() :: #{binary() => any()}.

%% Example:
%% policy_attribute_type_description() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"AttributeType">> => string(),
%%   <<"Cardinality">> => string(),
%%   <<"DefaultValue">> => string(),
%%   <<"Description">> => string()
%% }
-type policy_attribute_type_description() :: #{binary() => any()}.

%% Example:
%% policies() :: #{
%%   <<"AppCookieStickinessPolicies">> => list(app_cookie_stickiness_policy()),
%%   <<"LBCookieStickinessPolicies">> => list(lb_cookie_stickiness_policy()),
%%   <<"OtherPolicies">> => list(string())
%% }
-type policies() :: #{binary() => any()}.

%% Example:
%% describe_load_balancer_policy_types_input() :: #{
%%   <<"PolicyTypeNames">> => list(string())
%% }
-type describe_load_balancer_policy_types_input() :: #{binary() => any()}.

%% Example:
%% create_load_balancer_listener_input() :: #{
%%   <<"Listeners">> := list(listener()),
%%   <<"LoadBalancerName">> := string()
%% }
-type create_load_balancer_listener_input() :: #{binary() => any()}.

%% Example:
%% describe_load_balancer_attributes_output() :: #{
%%   <<"LoadBalancerAttributes">> => load_balancer_attributes()
%% }
-type describe_load_balancer_attributes_output() :: #{binary() => any()}.

%% Example:
%% modify_load_balancer_attributes_output() :: #{
%%   <<"LoadBalancerAttributes">> => load_balancer_attributes(),
%%   <<"LoadBalancerName">> => string()
%% }
-type modify_load_balancer_attributes_output() :: #{binary() => any()}.

%% Example:
%% invalid_security_group_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_security_group_exception() :: #{binary() => any()}.

%% Example:
%% create_app_cookie_stickiness_policy_output() :: #{

%% }
-type create_app_cookie_stickiness_policy_output() :: #{binary() => any()}.

%% Example:
%% duplicate_policy_name_exception() :: #{
%%   <<"Message">> => string()
%% }
-type duplicate_policy_name_exception() :: #{binary() => any()}.

%% Example:
%% too_many_access_points_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_access_points_exception() :: #{binary() => any()}.

%% Example:
%% instance() :: #{
%%   <<"InstanceId">> => string()
%% }
-type instance() :: #{binary() => any()}.

%% Example:
%% detach_load_balancer_from_subnets_input() :: #{
%%   <<"LoadBalancerName">> := string(),
%%   <<"Subnets">> := list(string())
%% }
-type detach_load_balancer_from_subnets_input() :: #{binary() => any()}.

%% Example:
%% create_app_cookie_stickiness_policy_input() :: #{
%%   <<"CookieName">> := string(),
%%   <<"LoadBalancerName">> := string(),
%%   <<"PolicyName">> := string()
%% }
-type create_app_cookie_stickiness_policy_input() :: #{binary() => any()}.

%% Example:
%% delete_load_balancer_listener_input() :: #{
%%   <<"LoadBalancerName">> := string(),
%%   <<"LoadBalancerPorts">> := list(integer())
%% }
-type delete_load_balancer_listener_input() :: #{binary() => any()}.

%% Example:
%% modify_load_balancer_attributes_input() :: #{
%%   <<"LoadBalancerAttributes">> := load_balancer_attributes(),
%%   <<"LoadBalancerName">> := string()
%% }
-type modify_load_balancer_attributes_input() :: #{binary() => any()}.

%% Example:
%% register_end_points_input() :: #{
%%   <<"Instances">> := list(instance()),
%%   <<"LoadBalancerName">> := string()
%% }
-type register_end_points_input() :: #{binary() => any()}.

%% Example:
%% additional_attribute() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type additional_attribute() :: #{binary() => any()}.

%% Example:
%% configure_health_check_output() :: #{
%%   <<"HealthCheck">> => health_check()
%% }
-type configure_health_check_output() :: #{binary() => any()}.

%% Example:
%% set_load_balancer_policies_of_listener_output() :: #{

%% }
-type set_load_balancer_policies_of_listener_output() :: #{binary() => any()}.

%% Example:
%% duplicate_tag_keys_exception() :: #{
%%   <<"Message">> => string()
%% }
-type duplicate_tag_keys_exception() :: #{binary() => any()}.

%% Example:
%% describe_load_balancer_attributes_input() :: #{
%%   <<"LoadBalancerName">> := string()
%% }
-type describe_load_balancer_attributes_input() :: #{binary() => any()}.

%% Example:
%% remove_availability_zones_output() :: #{
%%   <<"AvailabilityZones">> => list(string())
%% }
-type remove_availability_zones_output() :: #{binary() => any()}.

%% Example:
%% deregister_end_points_input() :: #{
%%   <<"Instances">> := list(instance()),
%%   <<"LoadBalancerName">> := string()
%% }
-type deregister_end_points_input() :: #{binary() => any()}.

%% Example:
%% create_access_point_output() :: #{
%%   <<"DNSName">> => string()
%% }
-type create_access_point_output() :: #{binary() => any()}.

%% Example:
%% delete_load_balancer_policy_output() :: #{

%% }
-type delete_load_balancer_policy_output() :: #{binary() => any()}.

%% Example:
%% describe_account_limits_input() :: #{
%%   <<"Marker">> => string(),
%%   <<"PageSize">> => integer()
%% }
-type describe_account_limits_input() :: #{binary() => any()}.

%% Example:
%% create_load_balancer_policy_output() :: #{

%% }
-type create_load_balancer_policy_output() :: #{binary() => any()}.

%% Example:
%% invalid_subnet_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_subnet_exception() :: #{binary() => any()}.

%% Example:
%% too_many_policies_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_policies_exception() :: #{binary() => any()}.

%% Example:
%% remove_tags_input() :: #{
%%   <<"LoadBalancerNames">> := list(string()),
%%   <<"Tags">> := list(tag_key_only())
%% }
-type remove_tags_input() :: #{binary() => any()}.

%% Example:
%% access_log() :: #{
%%   <<"EmitInterval">> => integer(),
%%   <<"Enabled">> => boolean(),
%%   <<"S3BucketName">> => string(),
%%   <<"S3BucketPrefix">> => string()
%% }
-type access_log() :: #{binary() => any()}.

%% Example:
%% listener_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type listener_not_found_exception() :: #{binary() => any()}.

%% Example:
%% set_load_balancer_policies_for_backend_server_output() :: #{

%% }
-type set_load_balancer_policies_for_backend_server_output() :: #{binary() => any()}.

%% Example:
%% set_load_balancer_policies_for_backend_server_input() :: #{
%%   <<"InstancePort">> := integer(),
%%   <<"LoadBalancerName">> := string(),
%%   <<"PolicyNames">> := list(string())
%% }
-type set_load_balancer_policies_for_backend_server_input() :: #{binary() => any()}.

%% Example:
%% policy_type_description() :: #{
%%   <<"Description">> => string(),
%%   <<"PolicyAttributeTypeDescriptions">> => list(policy_attribute_type_description()),
%%   <<"PolicyTypeName">> => string()
%% }
-type policy_type_description() :: #{binary() => any()}.

%% Example:
%% describe_load_balancer_policies_output() :: #{
%%   <<"PolicyDescriptions">> => list(policy_description())
%% }
-type describe_load_balancer_policies_output() :: #{binary() => any()}.

%% Example:
%% describe_end_point_state_output() :: #{
%%   <<"InstanceStates">> => list(instance_state())
%% }
-type describe_end_point_state_output() :: #{binary() => any()}.

%% Example:
%% invalid_scheme_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_scheme_exception() :: #{binary() => any()}.

%% Example:
%% create_load_balancer_policy_input() :: #{
%%   <<"LoadBalancerName">> := string(),
%%   <<"PolicyAttributes">> => list(policy_attribute()),
%%   <<"PolicyName">> := string(),
%%   <<"PolicyTypeName">> := string()
%% }
-type create_load_balancer_policy_input() :: #{binary() => any()}.

%% Example:
%% load_balancer_attribute_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type load_balancer_attribute_not_found_exception() :: #{binary() => any()}.

%% Example:
%% delete_load_balancer_listener_output() :: #{

%% }
-type delete_load_balancer_listener_output() :: #{binary() => any()}.

%% Example:
%% cross_zone_load_balancing() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type cross_zone_load_balancing() :: #{binary() => any()}.

%% Example:
%% register_end_points_output() :: #{
%%   <<"Instances">> => list(instance())
%% }
-type register_end_points_output() :: #{binary() => any()}.

%% Example:
%% too_many_tags_exception() :: #{
%%   <<"Message">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.

%% Example:
%% unsupported_protocol_exception() :: #{
%%   <<"Message">> => string()
%% }
-type unsupported_protocol_exception() :: #{binary() => any()}.

%% Example:
%% set_load_balancer_policies_of_listener_input() :: #{
%%   <<"LoadBalancerName">> := string(),
%%   <<"LoadBalancerPort">> := integer(),
%%   <<"PolicyNames">> := list(string())
%% }
-type set_load_balancer_policies_of_listener_input() :: #{binary() => any()}.

%% Example:
%% listener_description() :: #{
%%   <<"Listener">> => listener(),
%%   <<"PolicyNames">> => list(string())
%% }
-type listener_description() :: #{binary() => any()}.

-type add_tags_errors() ::
    too_many_tags_exception() | 
    duplicate_tag_keys_exception() | 
    access_point_not_found_exception().

-type apply_security_groups_to_load_balancer_errors() ::
    invalid_security_group_exception() | 
    access_point_not_found_exception() | 
    invalid_configuration_request_exception().

-type attach_load_balancer_to_subnets_errors() ::
    invalid_subnet_exception() | 
    access_point_not_found_exception() | 
    subnet_not_found_exception() | 
    invalid_configuration_request_exception().

-type configure_health_check_errors() ::
    access_point_not_found_exception().

-type create_app_cookie_stickiness_policy_errors() ::
    too_many_policies_exception() | 
    duplicate_policy_name_exception() | 
    access_point_not_found_exception() | 
    invalid_configuration_request_exception().

-type create_lb_cookie_stickiness_policy_errors() ::
    too_many_policies_exception() | 
    duplicate_policy_name_exception() | 
    access_point_not_found_exception() | 
    invalid_configuration_request_exception().

-type create_load_balancer_errors() ::
    unsupported_protocol_exception() | 
    too_many_tags_exception() | 
    invalid_scheme_exception() | 
    invalid_subnet_exception() | 
    duplicate_tag_keys_exception() | 
    too_many_access_points_exception() | 
    invalid_security_group_exception() | 
    operation_not_permitted_exception() | 
    certificate_not_found_exception() | 
    subnet_not_found_exception() | 
    invalid_configuration_request_exception() | 
    duplicate_access_point_name_exception().

-type create_load_balancer_listeners_errors() ::
    unsupported_protocol_exception() | 
    access_point_not_found_exception() | 
    certificate_not_found_exception() | 
    duplicate_listener_exception() | 
    invalid_configuration_request_exception().

-type create_load_balancer_policy_errors() ::
    too_many_policies_exception() | 
    duplicate_policy_name_exception() | 
    access_point_not_found_exception() | 
    invalid_configuration_request_exception() | 
    policy_type_not_found_exception().

-type delete_load_balancer_listeners_errors() ::
    access_point_not_found_exception().

-type delete_load_balancer_policy_errors() ::
    access_point_not_found_exception() | 
    invalid_configuration_request_exception().

-type deregister_instances_from_load_balancer_errors() ::
    access_point_not_found_exception() | 
    invalid_end_point_exception().

-type describe_instance_health_errors() ::
    access_point_not_found_exception() | 
    invalid_end_point_exception().

-type describe_load_balancer_attributes_errors() ::
    load_balancer_attribute_not_found_exception() | 
    access_point_not_found_exception().

-type describe_load_balancer_policies_errors() ::
    access_point_not_found_exception() | 
    policy_not_found_exception().

-type describe_load_balancer_policy_types_errors() ::
    policy_type_not_found_exception().

-type describe_load_balancers_errors() ::
    access_point_not_found_exception() | 
    dependency_throttle_exception().

-type describe_tags_errors() ::
    access_point_not_found_exception().

-type detach_load_balancer_from_subnets_errors() ::
    access_point_not_found_exception() | 
    invalid_configuration_request_exception().

-type disable_availability_zones_for_load_balancer_errors() ::
    access_point_not_found_exception() | 
    invalid_configuration_request_exception().

-type enable_availability_zones_for_load_balancer_errors() ::
    access_point_not_found_exception().

-type modify_load_balancer_attributes_errors() ::
    load_balancer_attribute_not_found_exception() | 
    access_point_not_found_exception() | 
    invalid_configuration_request_exception().

-type register_instances_with_load_balancer_errors() ::
    access_point_not_found_exception() | 
    invalid_end_point_exception().

-type remove_tags_errors() ::
    access_point_not_found_exception().

-type set_load_balancer_listener_ssl_certificate_errors() ::
    unsupported_protocol_exception() | 
    listener_not_found_exception() | 
    access_point_not_found_exception() | 
    certificate_not_found_exception() | 
    invalid_configuration_request_exception().

-type set_load_balancer_policies_for_backend_server_errors() ::
    access_point_not_found_exception() | 
    policy_not_found_exception() | 
    invalid_configuration_request_exception().

-type set_load_balancer_policies_of_listener_errors() ::
    listener_not_found_exception() | 
    access_point_not_found_exception() | 
    policy_not_found_exception() | 
    invalid_configuration_request_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds the specified tags to the specified load balancer.
%%
%% Each load balancer can have a maximum of 10 tags.
%%
%% Each tag consists of a key and an optional value. If a tag with the same
%% key is already associated
%% with the load balancer, `AddTags' updates its value.
%%
%% For more information, see Tag Your Classic Load Balancer:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/add-remove-tags.html
%% in the Classic Load Balancers Guide.
-spec add_tags(aws_client:aws_client(), add_tags_input()) ->
    {ok, add_tags_output(), tuple()} |
    {error, any()} |
    {error, add_tags_errors(), tuple()}.
add_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags(Client, Input, []).

-spec add_tags(aws_client:aws_client(), add_tags_input(), proplists:proplist()) ->
    {ok, add_tags_output(), tuple()} |
    {error, any()} |
    {error, add_tags_errors(), tuple()}.
add_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTags">>, Input, Options).

%% @doc Associates one or more security groups with your load balancer in a
%% virtual private cloud (VPC).
%%
%% The specified security groups override the previously associated security
%% groups.
%%
%% For more information, see Security Groups for Load Balancers in a VPC:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-security-groups.html#elb-vpc-security-groups
%% in the Classic Load Balancers Guide.
-spec apply_security_groups_to_load_balancer(aws_client:aws_client(), apply_security_groups_to_load_balancer_input()) ->
    {ok, apply_security_groups_to_load_balancer_output(), tuple()} |
    {error, any()} |
    {error, apply_security_groups_to_load_balancer_errors(), tuple()}.
apply_security_groups_to_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    apply_security_groups_to_load_balancer(Client, Input, []).

-spec apply_security_groups_to_load_balancer(aws_client:aws_client(), apply_security_groups_to_load_balancer_input(), proplists:proplist()) ->
    {ok, apply_security_groups_to_load_balancer_output(), tuple()} |
    {error, any()} |
    {error, apply_security_groups_to_load_balancer_errors(), tuple()}.
apply_security_groups_to_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ApplySecurityGroupsToLoadBalancer">>, Input, Options).

%% @doc Adds one or more subnets to the set of configured subnets for the
%% specified load balancer.
%%
%% The load balancer evenly distributes requests across all registered
%% subnets.
%% For more information, see Add or Remove Subnets for Your Load Balancer in
%% a VPC:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-manage-subnets.html
%% in the Classic Load Balancers Guide.
-spec attach_load_balancer_to_subnets(aws_client:aws_client(), attach_load_balancer_to_subnets_input()) ->
    {ok, attach_load_balancer_to_subnets_output(), tuple()} |
    {error, any()} |
    {error, attach_load_balancer_to_subnets_errors(), tuple()}.
attach_load_balancer_to_subnets(Client, Input)
  when is_map(Client), is_map(Input) ->
    attach_load_balancer_to_subnets(Client, Input, []).

-spec attach_load_balancer_to_subnets(aws_client:aws_client(), attach_load_balancer_to_subnets_input(), proplists:proplist()) ->
    {ok, attach_load_balancer_to_subnets_output(), tuple()} |
    {error, any()} |
    {error, attach_load_balancer_to_subnets_errors(), tuple()}.
attach_load_balancer_to_subnets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AttachLoadBalancerToSubnets">>, Input, Options).

%% @doc Specifies the health check settings to use when evaluating the health
%% state of your EC2 instances.
%%
%% For more information, see Configure Health Checks for Your Load Balancer:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-healthchecks.html
%% in the Classic Load Balancers Guide.
-spec configure_health_check(aws_client:aws_client(), configure_health_check_input()) ->
    {ok, configure_health_check_output(), tuple()} |
    {error, any()} |
    {error, configure_health_check_errors(), tuple()}.
configure_health_check(Client, Input)
  when is_map(Client), is_map(Input) ->
    configure_health_check(Client, Input, []).

-spec configure_health_check(aws_client:aws_client(), configure_health_check_input(), proplists:proplist()) ->
    {ok, configure_health_check_output(), tuple()} |
    {error, any()} |
    {error, configure_health_check_errors(), tuple()}.
configure_health_check(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConfigureHealthCheck">>, Input, Options).

%% @doc Generates a stickiness policy with sticky session lifetimes that
%% follow that of an application-generated cookie.
%%
%% This policy can be associated only with HTTP/HTTPS listeners.
%%
%% This policy is similar to the policy created by
%% `CreateLBCookieStickinessPolicy',
%% except that the lifetime of the special Elastic Load Balancing cookie,
%% `AWSELB',
%% follows the lifetime of the application-generated cookie specified in the
%% policy configuration.
%% The load balancer only inserts a new stickiness cookie when the
%% application response
%% includes a new application cookie.
%%
%% If the application cookie is explicitly removed or expires, the session
%% stops being sticky until a new application cookie is issued.
%%
%% For more information, see Application-Controlled Session Stickiness:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application
%% in the Classic Load Balancers Guide.
-spec create_app_cookie_stickiness_policy(aws_client:aws_client(), create_app_cookie_stickiness_policy_input()) ->
    {ok, create_app_cookie_stickiness_policy_output(), tuple()} |
    {error, any()} |
    {error, create_app_cookie_stickiness_policy_errors(), tuple()}.
create_app_cookie_stickiness_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_app_cookie_stickiness_policy(Client, Input, []).

-spec create_app_cookie_stickiness_policy(aws_client:aws_client(), create_app_cookie_stickiness_policy_input(), proplists:proplist()) ->
    {ok, create_app_cookie_stickiness_policy_output(), tuple()} |
    {error, any()} |
    {error, create_app_cookie_stickiness_policy_errors(), tuple()}.
create_app_cookie_stickiness_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAppCookieStickinessPolicy">>, Input, Options).

%% @doc Generates a stickiness policy with sticky session lifetimes
%% controlled by the lifetime of the browser (user-agent) or a specified
%% expiration period.
%%
%% This policy can be associated only with HTTP/HTTPS listeners.
%%
%% When a load balancer implements this policy, the load balancer uses a
%% special cookie to track the instance for each request. When the load
%% balancer receives a request, it first checks to see if this cookie is
%% present in the request.
%% If so, the load balancer sends the request to the application server
%% specified in the cookie. If not, the load balancer sends the request to a
%% server that is chosen based on the existing load-balancing algorithm.
%%
%% A cookie is inserted into the response for binding subsequent requests
%% from the same user to that server. The validity of the cookie is based on
%% the cookie expiration time, which is specified in the policy
%% configuration.
%%
%% For more information, see Duration-Based Session Stickiness:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration
%% in the Classic Load Balancers Guide.
-spec create_lb_cookie_stickiness_policy(aws_client:aws_client(), create_lb_cookie_stickiness_policy_input()) ->
    {ok, create_lb_cookie_stickiness_policy_output(), tuple()} |
    {error, any()} |
    {error, create_lb_cookie_stickiness_policy_errors(), tuple()}.
create_lb_cookie_stickiness_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_lb_cookie_stickiness_policy(Client, Input, []).

-spec create_lb_cookie_stickiness_policy(aws_client:aws_client(), create_lb_cookie_stickiness_policy_input(), proplists:proplist()) ->
    {ok, create_lb_cookie_stickiness_policy_output(), tuple()} |
    {error, any()} |
    {error, create_lb_cookie_stickiness_policy_errors(), tuple()}.
create_lb_cookie_stickiness_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLBCookieStickinessPolicy">>, Input, Options).

%% @doc Creates a Classic Load Balancer.
%%
%% You can add listeners, security groups, subnets, and tags when you create
%% your load balancer,
%% or you can add them later using `CreateLoadBalancerListeners',
%% `ApplySecurityGroupsToLoadBalancer',
%% `AttachLoadBalancerToSubnets',
%% and `AddTags'.
%%
%% To describe your current load balancers, see `DescribeLoadBalancers'.
%% When you are finished with a load balancer, you can delete it using
%% `DeleteLoadBalancer'.
%%
%% You can create up to 20 load balancers per region per account.
%% You can request an increase for the number of load balancers for your
%% account.
%% For more information, see Limits for Your Classic Load Balancer:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html
%% in the Classic Load Balancers Guide.
-spec create_load_balancer(aws_client:aws_client(), create_access_point_input()) ->
    {ok, create_access_point_output(), tuple()} |
    {error, any()} |
    {error, create_load_balancer_errors(), tuple()}.
create_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_load_balancer(Client, Input, []).

-spec create_load_balancer(aws_client:aws_client(), create_access_point_input(), proplists:proplist()) ->
    {ok, create_access_point_output(), tuple()} |
    {error, any()} |
    {error, create_load_balancer_errors(), tuple()}.
create_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLoadBalancer">>, Input, Options).

%% @doc Creates one or more listeners for the specified load balancer.
%%
%% If a listener with the specified port does not already exist, it is
%% created; otherwise, the properties of the new listener must match the
%% properties of the existing listener.
%%
%% For more information, see Listeners for Your Classic Load Balancer:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html
%% in the Classic Load Balancers Guide.
-spec create_load_balancer_listeners(aws_client:aws_client(), create_load_balancer_listener_input()) ->
    {ok, create_load_balancer_listener_output(), tuple()} |
    {error, any()} |
    {error, create_load_balancer_listeners_errors(), tuple()}.
create_load_balancer_listeners(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_load_balancer_listeners(Client, Input, []).

-spec create_load_balancer_listeners(aws_client:aws_client(), create_load_balancer_listener_input(), proplists:proplist()) ->
    {ok, create_load_balancer_listener_output(), tuple()} |
    {error, any()} |
    {error, create_load_balancer_listeners_errors(), tuple()}.
create_load_balancer_listeners(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLoadBalancerListeners">>, Input, Options).

%% @doc Creates a policy with the specified attributes for the specified load
%% balancer.
%%
%% Policies are settings that are saved for your load balancer and that can
%% be applied to the listener or the application server, depending on the
%% policy type.
-spec create_load_balancer_policy(aws_client:aws_client(), create_load_balancer_policy_input()) ->
    {ok, create_load_balancer_policy_output(), tuple()} |
    {error, any()} |
    {error, create_load_balancer_policy_errors(), tuple()}.
create_load_balancer_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_load_balancer_policy(Client, Input, []).

-spec create_load_balancer_policy(aws_client:aws_client(), create_load_balancer_policy_input(), proplists:proplist()) ->
    {ok, create_load_balancer_policy_output(), tuple()} |
    {error, any()} |
    {error, create_load_balancer_policy_errors(), tuple()}.
create_load_balancer_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLoadBalancerPolicy">>, Input, Options).

%% @doc Deletes the specified load balancer.
%%
%% If you are attempting to recreate a load balancer, you must reconfigure
%% all settings. The DNS name associated with a deleted load balancer are no
%% longer usable. The name and associated DNS record of the deleted load
%% balancer no longer exist and traffic sent to any of its IP addresses is no
%% longer delivered to your instances.
%%
%% If the load balancer does not exist or has already been deleted, the call
%% to
%% `DeleteLoadBalancer' still succeeds.
-spec delete_load_balancer(aws_client:aws_client(), delete_access_point_input()) ->
    {ok, delete_access_point_output(), tuple()} |
    {error, any()}.
delete_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_load_balancer(Client, Input, []).

-spec delete_load_balancer(aws_client:aws_client(), delete_access_point_input(), proplists:proplist()) ->
    {ok, delete_access_point_output(), tuple()} |
    {error, any()}.
delete_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLoadBalancer">>, Input, Options).

%% @doc Deletes the specified listeners from the specified load balancer.
-spec delete_load_balancer_listeners(aws_client:aws_client(), delete_load_balancer_listener_input()) ->
    {ok, delete_load_balancer_listener_output(), tuple()} |
    {error, any()} |
    {error, delete_load_balancer_listeners_errors(), tuple()}.
delete_load_balancer_listeners(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_load_balancer_listeners(Client, Input, []).

-spec delete_load_balancer_listeners(aws_client:aws_client(), delete_load_balancer_listener_input(), proplists:proplist()) ->
    {ok, delete_load_balancer_listener_output(), tuple()} |
    {error, any()} |
    {error, delete_load_balancer_listeners_errors(), tuple()}.
delete_load_balancer_listeners(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLoadBalancerListeners">>, Input, Options).

%% @doc Deletes the specified policy from the specified load balancer.
%%
%% This policy must not be enabled for any listeners.
-spec delete_load_balancer_policy(aws_client:aws_client(), delete_load_balancer_policy_input()) ->
    {ok, delete_load_balancer_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_load_balancer_policy_errors(), tuple()}.
delete_load_balancer_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_load_balancer_policy(Client, Input, []).

-spec delete_load_balancer_policy(aws_client:aws_client(), delete_load_balancer_policy_input(), proplists:proplist()) ->
    {ok, delete_load_balancer_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_load_balancer_policy_errors(), tuple()}.
delete_load_balancer_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLoadBalancerPolicy">>, Input, Options).

%% @doc Deregisters the specified instances from the specified load balancer.
%%
%% After the instance is deregistered, it no longer receives traffic from the
%% load balancer.
%%
%% You can use `DescribeLoadBalancers' to verify that the instance is
%% deregistered from the load balancer.
%%
%% For more information, see Register or De-Register EC2 Instances:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html
%% in the Classic Load Balancers Guide.
-spec deregister_instances_from_load_balancer(aws_client:aws_client(), deregister_end_points_input()) ->
    {ok, deregister_end_points_output(), tuple()} |
    {error, any()} |
    {error, deregister_instances_from_load_balancer_errors(), tuple()}.
deregister_instances_from_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_instances_from_load_balancer(Client, Input, []).

-spec deregister_instances_from_load_balancer(aws_client:aws_client(), deregister_end_points_input(), proplists:proplist()) ->
    {ok, deregister_end_points_output(), tuple()} |
    {error, any()} |
    {error, deregister_instances_from_load_balancer_errors(), tuple()}.
deregister_instances_from_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterInstancesFromLoadBalancer">>, Input, Options).

%% @doc Describes the current Elastic Load Balancing resource limits for your
%% AWS account.
%%
%% For more information, see Limits for Your Classic Load Balancer:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-limits.html
%% in the Classic Load Balancers Guide.
-spec describe_account_limits(aws_client:aws_client(), describe_account_limits_input()) ->
    {ok, describe_account_limits_output(), tuple()} |
    {error, any()}.
describe_account_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_limits(Client, Input, []).

-spec describe_account_limits(aws_client:aws_client(), describe_account_limits_input(), proplists:proplist()) ->
    {ok, describe_account_limits_output(), tuple()} |
    {error, any()}.
describe_account_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountLimits">>, Input, Options).

%% @doc Describes the state of the specified instances with respect to the
%% specified load balancer.
%%
%% If no instances are specified, the call describes the state of all
%% instances that are currently registered with the load balancer. If
%% instances are specified, their state is returned even if they are no
%% longer registered with the load balancer. The state of terminated
%% instances is not returned.
-spec describe_instance_health(aws_client:aws_client(), describe_end_point_state_input()) ->
    {ok, describe_end_point_state_output(), tuple()} |
    {error, any()} |
    {error, describe_instance_health_errors(), tuple()}.
describe_instance_health(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_instance_health(Client, Input, []).

-spec describe_instance_health(aws_client:aws_client(), describe_end_point_state_input(), proplists:proplist()) ->
    {ok, describe_end_point_state_output(), tuple()} |
    {error, any()} |
    {error, describe_instance_health_errors(), tuple()}.
describe_instance_health(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInstanceHealth">>, Input, Options).

%% @doc Describes the attributes for the specified load balancer.
-spec describe_load_balancer_attributes(aws_client:aws_client(), describe_load_balancer_attributes_input()) ->
    {ok, describe_load_balancer_attributes_output(), tuple()} |
    {error, any()} |
    {error, describe_load_balancer_attributes_errors(), tuple()}.
describe_load_balancer_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_load_balancer_attributes(Client, Input, []).

-spec describe_load_balancer_attributes(aws_client:aws_client(), describe_load_balancer_attributes_input(), proplists:proplist()) ->
    {ok, describe_load_balancer_attributes_output(), tuple()} |
    {error, any()} |
    {error, describe_load_balancer_attributes_errors(), tuple()}.
describe_load_balancer_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoadBalancerAttributes">>, Input, Options).

%% @doc Describes the specified policies.
%%
%% If you specify a load balancer name, the action returns the descriptions
%% of all policies created for the load balancer.
%% If you specify a policy name associated with your load balancer, the
%% action returns the description of that policy.
%% If you don't specify a load balancer name, the action returns
%% descriptions of the specified sample policies, or descriptions of all
%% sample policies.
%% The names of the sample policies have the `ELBSample-' prefix.
-spec describe_load_balancer_policies(aws_client:aws_client(), describe_load_balancer_policies_input()) ->
    {ok, describe_load_balancer_policies_output(), tuple()} |
    {error, any()} |
    {error, describe_load_balancer_policies_errors(), tuple()}.
describe_load_balancer_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_load_balancer_policies(Client, Input, []).

-spec describe_load_balancer_policies(aws_client:aws_client(), describe_load_balancer_policies_input(), proplists:proplist()) ->
    {ok, describe_load_balancer_policies_output(), tuple()} |
    {error, any()} |
    {error, describe_load_balancer_policies_errors(), tuple()}.
describe_load_balancer_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoadBalancerPolicies">>, Input, Options).

%% @doc Describes the specified load balancer policy types or all load
%% balancer policy types.
%%
%% The description of each type indicates how it can be used. For example,
%% some policies can be used only with layer 7 listeners,
%% some policies can be used only with layer 4 listeners,
%% and some policies can be used only with your EC2 instances.
%%
%% You can use `CreateLoadBalancerPolicy' to create a policy
%% configuration for any of these policy types.
%% Then, depending on the policy type, use either
%% `SetLoadBalancerPoliciesOfListener' or
%% `SetLoadBalancerPoliciesForBackendServer' to set the policy.
-spec describe_load_balancer_policy_types(aws_client:aws_client(), describe_load_balancer_policy_types_input()) ->
    {ok, describe_load_balancer_policy_types_output(), tuple()} |
    {error, any()} |
    {error, describe_load_balancer_policy_types_errors(), tuple()}.
describe_load_balancer_policy_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_load_balancer_policy_types(Client, Input, []).

-spec describe_load_balancer_policy_types(aws_client:aws_client(), describe_load_balancer_policy_types_input(), proplists:proplist()) ->
    {ok, describe_load_balancer_policy_types_output(), tuple()} |
    {error, any()} |
    {error, describe_load_balancer_policy_types_errors(), tuple()}.
describe_load_balancer_policy_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoadBalancerPolicyTypes">>, Input, Options).

%% @doc Describes the specified the load balancers.
%%
%% If no load balancers are specified, the call describes all of your load
%% balancers.
-spec describe_load_balancers(aws_client:aws_client(), describe_access_points_input()) ->
    {ok, describe_access_points_output(), tuple()} |
    {error, any()} |
    {error, describe_load_balancers_errors(), tuple()}.
describe_load_balancers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_load_balancers(Client, Input, []).

-spec describe_load_balancers(aws_client:aws_client(), describe_access_points_input(), proplists:proplist()) ->
    {ok, describe_access_points_output(), tuple()} |
    {error, any()} |
    {error, describe_load_balancers_errors(), tuple()}.
describe_load_balancers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLoadBalancers">>, Input, Options).

%% @doc Describes the tags associated with the specified load balancers.
-spec describe_tags(aws_client:aws_client(), describe_tags_input()) ->
    {ok, describe_tags_output(), tuple()} |
    {error, any()} |
    {error, describe_tags_errors(), tuple()}.
describe_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_tags(Client, Input, []).

-spec describe_tags(aws_client:aws_client(), describe_tags_input(), proplists:proplist()) ->
    {ok, describe_tags_output(), tuple()} |
    {error, any()} |
    {error, describe_tags_errors(), tuple()}.
describe_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTags">>, Input, Options).

%% @doc Removes the specified subnets from the set of configured subnets for
%% the load balancer.
%%
%% After a subnet is removed, all EC2 instances registered with the load
%% balancer
%% in the removed subnet go into the `OutOfService' state. Then,
%% the load balancer balances the traffic among the remaining routable
%% subnets.
-spec detach_load_balancer_from_subnets(aws_client:aws_client(), detach_load_balancer_from_subnets_input()) ->
    {ok, detach_load_balancer_from_subnets_output(), tuple()} |
    {error, any()} |
    {error, detach_load_balancer_from_subnets_errors(), tuple()}.
detach_load_balancer_from_subnets(Client, Input)
  when is_map(Client), is_map(Input) ->
    detach_load_balancer_from_subnets(Client, Input, []).

-spec detach_load_balancer_from_subnets(aws_client:aws_client(), detach_load_balancer_from_subnets_input(), proplists:proplist()) ->
    {ok, detach_load_balancer_from_subnets_output(), tuple()} |
    {error, any()} |
    {error, detach_load_balancer_from_subnets_errors(), tuple()}.
detach_load_balancer_from_subnets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DetachLoadBalancerFromSubnets">>, Input, Options).

%% @doc Removes the specified Availability Zones from the set of Availability
%% Zones for the specified load balancer
%% in EC2-Classic or a default VPC.
%%
%% For load balancers in a non-default VPC, use
%% `DetachLoadBalancerFromSubnets'.
%%
%% There must be at least one Availability Zone registered with a load
%% balancer at all times.
%% After an Availability Zone is removed, all instances registered with the
%% load balancer that are in the removed
%% Availability Zone go into the `OutOfService' state. Then, the load
%% balancer attempts to equally balance
%% the traffic among its remaining Availability Zones.
%%
%% For more information, see Add or Remove Availability Zones:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html
%% in the Classic Load Balancers Guide.
-spec disable_availability_zones_for_load_balancer(aws_client:aws_client(), remove_availability_zones_input()) ->
    {ok, remove_availability_zones_output(), tuple()} |
    {error, any()} |
    {error, disable_availability_zones_for_load_balancer_errors(), tuple()}.
disable_availability_zones_for_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_availability_zones_for_load_balancer(Client, Input, []).

-spec disable_availability_zones_for_load_balancer(aws_client:aws_client(), remove_availability_zones_input(), proplists:proplist()) ->
    {ok, remove_availability_zones_output(), tuple()} |
    {error, any()} |
    {error, disable_availability_zones_for_load_balancer_errors(), tuple()}.
disable_availability_zones_for_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableAvailabilityZonesForLoadBalancer">>, Input, Options).

%% @doc Adds the specified Availability Zones to the set of Availability
%% Zones for the specified load balancer
%% in EC2-Classic or a default VPC.
%%
%% For load balancers in a non-default VPC, use
%% `AttachLoadBalancerToSubnets'.
%%
%% The load balancer evenly distributes requests across all its registered
%% Availability Zones
%% that contain instances. For more information, see Add or Remove
%% Availability Zones:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-az.html
%% in the Classic Load Balancers Guide.
-spec enable_availability_zones_for_load_balancer(aws_client:aws_client(), add_availability_zones_input()) ->
    {ok, add_availability_zones_output(), tuple()} |
    {error, any()} |
    {error, enable_availability_zones_for_load_balancer_errors(), tuple()}.
enable_availability_zones_for_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_availability_zones_for_load_balancer(Client, Input, []).

-spec enable_availability_zones_for_load_balancer(aws_client:aws_client(), add_availability_zones_input(), proplists:proplist()) ->
    {ok, add_availability_zones_output(), tuple()} |
    {error, any()} |
    {error, enable_availability_zones_for_load_balancer_errors(), tuple()}.
enable_availability_zones_for_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableAvailabilityZonesForLoadBalancer">>, Input, Options).

%% @doc Modifies the attributes of the specified load balancer.
%%
%% You can modify the load balancer attributes, such as `AccessLogs',
%% `ConnectionDraining', and
%% `CrossZoneLoadBalancing' by either enabling or disabling them. Or, you
%% can modify the load balancer attribute
%% `ConnectionSettings' by specifying an idle connection timeout value
%% for your load balancer.
%%
%% For more information, see the following in the Classic Load Balancers
%% Guide:
%%
%% Cross-Zone Load Balancing:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html
%%
%% Connection Draining:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html
%%
%% Access Logs:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/access-log-collection.html
%%
%% Idle Connection Timeout:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html
-spec modify_load_balancer_attributes(aws_client:aws_client(), modify_load_balancer_attributes_input()) ->
    {ok, modify_load_balancer_attributes_output(), tuple()} |
    {error, any()} |
    {error, modify_load_balancer_attributes_errors(), tuple()}.
modify_load_balancer_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_load_balancer_attributes(Client, Input, []).

-spec modify_load_balancer_attributes(aws_client:aws_client(), modify_load_balancer_attributes_input(), proplists:proplist()) ->
    {ok, modify_load_balancer_attributes_output(), tuple()} |
    {error, any()} |
    {error, modify_load_balancer_attributes_errors(), tuple()}.
modify_load_balancer_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyLoadBalancerAttributes">>, Input, Options).

%% @doc Adds the specified instances to the specified load balancer.
%%
%% The instance must be a running instance in the same network as the load
%% balancer (EC2-Classic or the same VPC). If you have EC2-Classic instances
%% and a load balancer in a VPC with ClassicLink enabled, you can link the
%% EC2-Classic instances to that VPC and then register the linked EC2-Classic
%% instances with the load balancer in the VPC.
%%
%% Note that `RegisterInstanceWithLoadBalancer' completes when the
%% request has been registered.
%% Instance registration takes a little time to complete. To check the state
%% of the registered instances, use
%% `DescribeLoadBalancers' or `DescribeInstanceHealth'.
%%
%% After the instance is registered, it starts receiving traffic
%% and requests from the load balancer. Any instance that is not
%% in one of the Availability Zones registered for the load balancer
%% is moved to the `OutOfService' state. If an Availability Zone
%% is added to the load balancer later, any instances registered with the
%% load balancer move to the `InService' state.
%%
%% To deregister instances from a load balancer, use
%% `DeregisterInstancesFromLoadBalancer'.
%%
%% For more information, see Register or De-Register EC2 Instances:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-deregister-register-instances.html
%% in the Classic Load Balancers Guide.
-spec register_instances_with_load_balancer(aws_client:aws_client(), register_end_points_input()) ->
    {ok, register_end_points_output(), tuple()} |
    {error, any()} |
    {error, register_instances_with_load_balancer_errors(), tuple()}.
register_instances_with_load_balancer(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_instances_with_load_balancer(Client, Input, []).

-spec register_instances_with_load_balancer(aws_client:aws_client(), register_end_points_input(), proplists:proplist()) ->
    {ok, register_end_points_output(), tuple()} |
    {error, any()} |
    {error, register_instances_with_load_balancer_errors(), tuple()}.
register_instances_with_load_balancer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterInstancesWithLoadBalancer">>, Input, Options).

%% @doc Removes one or more tags from the specified load balancer.
-spec remove_tags(aws_client:aws_client(), remove_tags_input()) ->
    {ok, remove_tags_output(), tuple()} |
    {error, any()} |
    {error, remove_tags_errors(), tuple()}.
remove_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags(Client, Input, []).

-spec remove_tags(aws_client:aws_client(), remove_tags_input(), proplists:proplist()) ->
    {ok, remove_tags_output(), tuple()} |
    {error, any()} |
    {error, remove_tags_errors(), tuple()}.
remove_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTags">>, Input, Options).

%% @doc Sets the certificate that terminates the specified listener's SSL
%% connections.
%%
%% The specified certificate replaces any prior certificate that was used on
%% the same load balancer and port.
%%
%% For more information about updating your SSL certificate, see
%% Replace the SSL Certificate for Your Load Balancer:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-update-ssl-cert.html
%% in the Classic Load Balancers Guide.
-spec set_load_balancer_listener_ssl_certificate(aws_client:aws_client(), set_load_balancer_listener_ssl_certificate_input()) ->
    {ok, set_load_balancer_listener_ssl_certificate_output(), tuple()} |
    {error, any()} |
    {error, set_load_balancer_listener_ssl_certificate_errors(), tuple()}.
set_load_balancer_listener_ssl_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_load_balancer_listener_ssl_certificate(Client, Input, []).

-spec set_load_balancer_listener_ssl_certificate(aws_client:aws_client(), set_load_balancer_listener_ssl_certificate_input(), proplists:proplist()) ->
    {ok, set_load_balancer_listener_ssl_certificate_output(), tuple()} |
    {error, any()} |
    {error, set_load_balancer_listener_ssl_certificate_errors(), tuple()}.
set_load_balancer_listener_ssl_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetLoadBalancerListenerSSLCertificate">>, Input, Options).

%% @doc Replaces the set of policies associated with the specified port on
%% which the EC2 instance is listening with a new set of policies.
%%
%% At this time, only the back-end server authentication policy type can be
%% applied to the instance ports; this policy type is composed of multiple
%% public key policies.
%%
%% Each time you use `SetLoadBalancerPoliciesForBackendServer' to enable
%% the policies,
%% use the `PolicyNames' parameter to list the policies that you want to
%% enable.
%%
%% You can use `DescribeLoadBalancers' or
%% `DescribeLoadBalancerPolicies' to verify that the policy
%% is associated with the EC2 instance.
%%
%% For more information about enabling back-end instance authentication, see
%% Configure Back-end Instance Authentication:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-create-https-ssl-load-balancer.html#configure_backendauth_clt
%% in the Classic Load Balancers Guide. For more information about Proxy
%% Protocol, see
%% Configure Proxy Protocol Support:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-proxy-protocol.html
%% in the Classic Load Balancers Guide.
-spec set_load_balancer_policies_for_backend_server(aws_client:aws_client(), set_load_balancer_policies_for_backend_server_input()) ->
    {ok, set_load_balancer_policies_for_backend_server_output(), tuple()} |
    {error, any()} |
    {error, set_load_balancer_policies_for_backend_server_errors(), tuple()}.
set_load_balancer_policies_for_backend_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_load_balancer_policies_for_backend_server(Client, Input, []).

-spec set_load_balancer_policies_for_backend_server(aws_client:aws_client(), set_load_balancer_policies_for_backend_server_input(), proplists:proplist()) ->
    {ok, set_load_balancer_policies_for_backend_server_output(), tuple()} |
    {error, any()} |
    {error, set_load_balancer_policies_for_backend_server_errors(), tuple()}.
set_load_balancer_policies_for_backend_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetLoadBalancerPoliciesForBackendServer">>, Input, Options).

%% @doc Replaces the current set of policies for the specified load balancer
%% port with the specified set of policies.
%%
%% To enable back-end server authentication, use
%% `SetLoadBalancerPoliciesForBackendServer'.
%%
%% For more information about setting policies, see
%% Update the SSL Negotiation Configuration:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/ssl-config-update.html,
%% Duration-Based Session Stickiness:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-duration,
%% and
%% Application-Controlled Session Stickiness:
%% https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-sticky-sessions.html#enable-sticky-sessions-application
%% in the Classic Load Balancers Guide.
-spec set_load_balancer_policies_of_listener(aws_client:aws_client(), set_load_balancer_policies_of_listener_input()) ->
    {ok, set_load_balancer_policies_of_listener_output(), tuple()} |
    {error, any()} |
    {error, set_load_balancer_policies_of_listener_errors(), tuple()}.
set_load_balancer_policies_of_listener(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_load_balancer_policies_of_listener(Client, Input, []).

-spec set_load_balancer_policies_of_listener(aws_client:aws_client(), set_load_balancer_policies_of_listener_input(), proplists:proplist()) ->
    {ok, set_load_balancer_policies_of_listener_output(), tuple()} |
    {error, any()} |
    {error, set_load_balancer_policies_of_listener_errors(), tuple()}.
set_load_balancer_policies_of_listener(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetLoadBalancerPoliciesOfListener">>, Input, Options).

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
    Client1 = Client#{service => <<"elasticloadbalancing">>},
    Host = build_host(<<"elasticloadbalancing">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],

    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2012-06-01">>
                   },

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
