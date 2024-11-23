%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon EMR is a web service that makes it easier to process large
%% amounts of
%% data efficiently.
%%
%% Amazon EMR uses Hadoop processing combined with several Amazon Web
%% Services services to do tasks such as web indexing, data mining, log file
%% analysis,
%% machine learning, scientific simulation, and data warehouse management.
-module(aws_emr).

-export([add_instance_fleet/2,
         add_instance_fleet/3,
         add_instance_groups/2,
         add_instance_groups/3,
         add_job_flow_steps/2,
         add_job_flow_steps/3,
         add_tags/2,
         add_tags/3,
         cancel_steps/2,
         cancel_steps/3,
         create_security_configuration/2,
         create_security_configuration/3,
         create_studio/2,
         create_studio/3,
         create_studio_session_mapping/2,
         create_studio_session_mapping/3,
         delete_security_configuration/2,
         delete_security_configuration/3,
         delete_studio/2,
         delete_studio/3,
         delete_studio_session_mapping/2,
         delete_studio_session_mapping/3,
         describe_cluster/2,
         describe_cluster/3,
         describe_job_flows/2,
         describe_job_flows/3,
         describe_notebook_execution/2,
         describe_notebook_execution/3,
         describe_release_label/2,
         describe_release_label/3,
         describe_security_configuration/2,
         describe_security_configuration/3,
         describe_step/2,
         describe_step/3,
         describe_studio/2,
         describe_studio/3,
         get_auto_termination_policy/2,
         get_auto_termination_policy/3,
         get_block_public_access_configuration/2,
         get_block_public_access_configuration/3,
         get_cluster_session_credentials/2,
         get_cluster_session_credentials/3,
         get_managed_scaling_policy/2,
         get_managed_scaling_policy/3,
         get_studio_session_mapping/2,
         get_studio_session_mapping/3,
         list_bootstrap_actions/2,
         list_bootstrap_actions/3,
         list_clusters/2,
         list_clusters/3,
         list_instance_fleets/2,
         list_instance_fleets/3,
         list_instance_groups/2,
         list_instance_groups/3,
         list_instances/2,
         list_instances/3,
         list_notebook_executions/2,
         list_notebook_executions/3,
         list_release_labels/2,
         list_release_labels/3,
         list_security_configurations/2,
         list_security_configurations/3,
         list_steps/2,
         list_steps/3,
         list_studio_session_mappings/2,
         list_studio_session_mappings/3,
         list_studios/2,
         list_studios/3,
         list_supported_instance_types/2,
         list_supported_instance_types/3,
         modify_cluster/2,
         modify_cluster/3,
         modify_instance_fleet/2,
         modify_instance_fleet/3,
         modify_instance_groups/2,
         modify_instance_groups/3,
         put_auto_scaling_policy/2,
         put_auto_scaling_policy/3,
         put_auto_termination_policy/2,
         put_auto_termination_policy/3,
         put_block_public_access_configuration/2,
         put_block_public_access_configuration/3,
         put_managed_scaling_policy/2,
         put_managed_scaling_policy/3,
         remove_auto_scaling_policy/2,
         remove_auto_scaling_policy/3,
         remove_auto_termination_policy/2,
         remove_auto_termination_policy/3,
         remove_managed_scaling_policy/2,
         remove_managed_scaling_policy/3,
         remove_tags/2,
         remove_tags/3,
         run_job_flow/2,
         run_job_flow/3,
         set_keep_job_flow_alive_when_no_steps/2,
         set_keep_job_flow_alive_when_no_steps/3,
         set_termination_protection/2,
         set_termination_protection/3,
         set_unhealthy_node_replacement/2,
         set_unhealthy_node_replacement/3,
         set_visible_to_all_users/2,
         set_visible_to_all_users/3,
         start_notebook_execution/2,
         start_notebook_execution/3,
         stop_notebook_execution/2,
         stop_notebook_execution/3,
         terminate_job_flows/2,
         terminate_job_flows/3,
         update_studio/2,
         update_studio/3,
         update_studio_session_mapping/2,
         update_studio_session_mapping/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% cancel_steps_info() :: #{
%%   <<"Reason">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StepId">> => string()
%% }
-type cancel_steps_info() :: #{binary() => any()}.

%% Example:
%% instance_state_change_reason() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type instance_state_change_reason() :: #{binary() => any()}.

%% Example:
%% output_notebook_s3_location_from_input() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Key">> => string()
%% }
-type output_notebook_s3_location_from_input() :: #{binary() => any()}.

%% Example:
%% get_auto_termination_policy_input() :: #{
%%   <<"ClusterId">> := string()
%% }
-type get_auto_termination_policy_input() :: #{binary() => any()}.

%% Example:
%% bootstrap_action_detail() :: #{
%%   <<"BootstrapActionConfig">> => bootstrap_action_config()
%% }
-type bootstrap_action_detail() :: #{binary() => any()}.

%% Example:
%% list_bootstrap_actions_input() :: #{
%%   <<"ClusterId">> := string(),
%%   <<"Marker">> => string()
%% }
-type list_bootstrap_actions_input() :: #{binary() => any()}.

%% Example:
%% put_auto_termination_policy_output() :: #{

%% }
-type put_auto_termination_policy_output() :: #{binary() => any()}.

%% Example:
%% auto_termination_policy() :: #{
%%   <<"IdleTimeout">> => float()
%% }
-type auto_termination_policy() :: #{binary() => any()}.

%% Example:
%% describe_release_label_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ReleaseLabel">> => string()
%% }
-type describe_release_label_input() :: #{binary() => any()}.

%% Example:
%% scaling_trigger() :: #{
%%   <<"CloudWatchAlarmDefinition">> => cloud_watch_alarm_definition()
%% }
-type scaling_trigger() :: #{binary() => any()}.

%% Example:
%% bootstrap_action_config() :: #{
%%   <<"Name">> => string(),
%%   <<"ScriptBootstrapAction">> => script_bootstrap_action_config()
%% }
-type bootstrap_action_config() :: #{binary() => any()}.

%% Example:
%% delete_studio_input() :: #{
%%   <<"StudioId">> := string()
%% }
-type delete_studio_input() :: #{binary() => any()}.

%% Example:
%% describe_security_configuration_output() :: #{
%%   <<"CreationDateTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"SecurityConfiguration">> => string()
%% }
-type describe_security_configuration_output() :: #{binary() => any()}.

%% Example:
%% list_instance_groups_output() :: #{
%%   <<"InstanceGroups">> => list(instance_group()()),
%%   <<"Marker">> => string()
%% }
-type list_instance_groups_output() :: #{binary() => any()}.

%% Example:
%% step_state_change_reason() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type step_state_change_reason() :: #{binary() => any()}.

%% Example:
%% release_label_filter() :: #{
%%   <<"Application">> => string(),
%%   <<"Prefix">> => string()
%% }
-type release_label_filter() :: #{binary() => any()}.

%% Example:
%% auto_scaling_policy_status() :: #{
%%   <<"State">> => list(any()),
%%   <<"StateChangeReason">> => auto_scaling_policy_state_change_reason()
%% }
-type auto_scaling_policy_status() :: #{binary() => any()}.

%% Example:
%% describe_cluster_output() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type describe_cluster_output() :: #{binary() => any()}.

%% Example:
%% create_studio_session_mapping_input() :: #{
%%   <<"IdentityId">> => string(),
%%   <<"IdentityName">> => string(),
%%   <<"IdentityType">> := list(any()),
%%   <<"SessionPolicyArn">> := string(),
%%   <<"StudioId">> := string()
%% }
-type create_studio_session_mapping_input() :: #{binary() => any()}.

%% Example:
%% get_cluster_session_credentials_input() :: #{
%%   <<"ClusterId">> := string(),
%%   <<"ExecutionRoleArn">> => string()
%% }
-type get_cluster_session_credentials_input() :: #{binary() => any()}.

%% Example:
%% simplified_application() :: #{
%%   <<"Name">> => string(),
%%   <<"Version">> => string()
%% }
-type simplified_application() :: #{binary() => any()}.

%% Example:
%% describe_step_output() :: #{
%%   <<"Step">> => step()
%% }
-type describe_step_output() :: #{binary() => any()}.

%% Example:
%% set_visible_to_all_users_input() :: #{
%%   <<"JobFlowIds">> := list(string()()),
%%   <<"VisibleToAllUsers">> := boolean()
%% }
-type set_visible_to_all_users_input() :: #{binary() => any()}.

%% Example:
%% put_block_public_access_configuration_input() :: #{
%%   <<"BlockPublicAccessConfiguration">> := block_public_access_configuration()
%% }
-type put_block_public_access_configuration_input() :: #{binary() => any()}.

%% Example:
%% add_instance_fleet_input() :: #{
%%   <<"ClusterId">> := string(),
%%   <<"InstanceFleet">> := instance_fleet_config()
%% }
-type add_instance_fleet_input() :: #{binary() => any()}.

%% Example:
%% list_instance_fleets_output() :: #{
%%   <<"InstanceFleets">> => list(instance_fleet()()),
%%   <<"Marker">> => string()
%% }
-type list_instance_fleets_output() :: #{binary() => any()}.

%% Example:
%% step_detail() :: #{
%%   <<"ExecutionStatusDetail">> => step_execution_status_detail(),
%%   <<"StepConfig">> => step_config()
%% }
-type step_detail() :: #{binary() => any()}.

%% Example:
%% script_bootstrap_action_config() :: #{
%%   <<"Args">> => list(string()()),
%%   <<"Path">> => string()
%% }
-type script_bootstrap_action_config() :: #{binary() => any()}.

%% Example:
%% add_instance_groups_output() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"InstanceGroupIds">> => list(string()()),
%%   <<"JobFlowId">> => string()
%% }
-type add_instance_groups_output() :: #{binary() => any()}.

%% Example:
%% volume_specification() :: #{
%%   <<"Iops">> => integer(),
%%   <<"SizeInGB">> => integer(),
%%   <<"Throughput">> => integer(),
%%   <<"VolumeType">> => string()
%% }
-type volume_specification() :: #{binary() => any()}.

%% Example:
%% list_steps_input() :: #{
%%   <<"ClusterId">> := string(),
%%   <<"Marker">> => string(),
%%   <<"StepIds">> => list(string()()),
%%   <<"StepStates">> => list(list(any())())
%% }
-type list_steps_input() :: #{binary() => any()}.

%% Example:
%% add_tags_output() :: #{

%% }
-type add_tags_output() :: #{binary() => any()}.

%% Example:
%% start_notebook_execution_output() :: #{
%%   <<"NotebookExecutionId">> => string()
%% }
-type start_notebook_execution_output() :: #{binary() => any()}.

%% Example:
%% spot_resizing_specification() :: #{
%%   <<"AllocationStrategy">> => list(any()),
%%   <<"TimeoutDurationMinutes">> => integer()
%% }
-type spot_resizing_specification() :: #{binary() => any()}.

%% Example:
%% configuration() :: #{
%%   <<"Classification">> => string(),
%%   <<"Configurations">> => list(configuration()()),
%%   <<"Properties">> => map()
%% }
-type configuration() :: #{binary() => any()}.

%% Example:
%% instance_group_timeline() :: #{
%%   <<"CreationDateTime">> => non_neg_integer(),
%%   <<"EndDateTime">> => non_neg_integer(),
%%   <<"ReadyDateTime">> => non_neg_integer()
%% }
-type instance_group_timeline() :: #{binary() => any()}.

%% Example:
%% supported_product_config() :: #{
%%   <<"Args">> => list(string()()),
%%   <<"Name">> => string()
%% }
-type supported_product_config() :: #{binary() => any()}.

%% Example:
%% list_security_configurations_input() :: #{
%%   <<"Marker">> => string()
%% }
-type list_security_configurations_input() :: #{binary() => any()}.

%% Example:
%% auto_scaling_policy() :: #{
%%   <<"Constraints">> => scaling_constraints(),
%%   <<"Rules">> => list(scaling_rule()())
%% }
-type auto_scaling_policy() :: #{binary() => any()}.

%% Example:
%% instance_fleet() :: #{
%%   <<"Context">> => string(),
%%   <<"Id">> => string(),
%%   <<"InstanceFleetType">> => list(any()),
%%   <<"InstanceTypeSpecifications">> => list(instance_type_specification()()),
%%   <<"LaunchSpecifications">> => instance_fleet_provisioning_specifications(),
%%   <<"Name">> => string(),
%%   <<"ProvisionedOnDemandCapacity">> => integer(),
%%   <<"ProvisionedSpotCapacity">> => integer(),
%%   <<"ResizeSpecifications">> => instance_fleet_resizing_specifications(),
%%   <<"Status">> => instance_fleet_status(),
%%   <<"TargetOnDemandCapacity">> => integer(),
%%   <<"TargetSpotCapacity">> => integer()
%% }
-type instance_fleet() :: #{binary() => any()}.

%% Example:
%% describe_job_flows_input() :: #{
%%   <<"CreatedAfter">> => non_neg_integer(),
%%   <<"CreatedBefore">> => non_neg_integer(),
%%   <<"JobFlowIds">> => list(string()()),
%%   <<"JobFlowStates">> => list(list(any())())
%% }
-type describe_job_flows_input() :: #{binary() => any()}.

%% Example:
%% placement_group_config() :: #{
%%   <<"InstanceRole">> => list(any()),
%%   <<"PlacementStrategy">> => list(any())
%% }
-type placement_group_config() :: #{binary() => any()}.

%% Example:
%% add_tags_input() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type add_tags_input() :: #{binary() => any()}.

%% Example:
%% hadoop_step_config() :: #{
%%   <<"Args">> => list(string()()),
%%   <<"Jar">> => string(),
%%   <<"MainClass">> => string(),
%%   <<"Properties">> => map()
%% }
-type hadoop_step_config() :: #{binary() => any()}.

%% Example:
%% list_supported_instance_types_input() :: #{
%%   <<"Marker">> => string(),
%%   <<"ReleaseLabel">> := string()
%% }
-type list_supported_instance_types_input() :: #{binary() => any()}.

%% Example:
%% describe_release_label_output() :: #{
%%   <<"Applications">> => list(simplified_application()()),
%%   <<"AvailableOSReleases">> => list(o_s_release()()),
%%   <<"NextToken">> => string(),
%%   <<"ReleaseLabel">> => string()
%% }
-type describe_release_label_output() :: #{binary() => any()}.

%% Example:
%% get_managed_scaling_policy_input() :: #{
%%   <<"ClusterId">> := string()
%% }
-type get_managed_scaling_policy_input() :: #{binary() => any()}.

%% Example:
%% security_configuration_summary() :: #{
%%   <<"CreationDateTime">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type security_configuration_summary() :: #{binary() => any()}.

%% Example:
%% job_flow_detail() :: #{
%%   <<"AmiVersion">> => string(),
%%   <<"AutoScalingRole">> => string(),
%%   <<"BootstrapActions">> => list(bootstrap_action_detail()()),
%%   <<"ExecutionStatusDetail">> => job_flow_execution_status_detail(),
%%   <<"Instances">> => job_flow_instances_detail(),
%%   <<"JobFlowId">> => string(),
%%   <<"JobFlowRole">> => string(),
%%   <<"LogEncryptionKmsKeyId">> => string(),
%%   <<"LogUri">> => string(),
%%   <<"Name">> => string(),
%%   <<"ScaleDownBehavior">> => list(any()),
%%   <<"ServiceRole">> => string(),
%%   <<"Steps">> => list(step_detail()()),
%%   <<"SupportedProducts">> => list(string()()),
%%   <<"VisibleToAllUsers">> => boolean()
%% }
-type job_flow_detail() :: #{binary() => any()}.

%% Example:
%% remove_auto_termination_policy_input() :: #{
%%   <<"ClusterId">> := string()
%% }
-type remove_auto_termination_policy_input() :: #{binary() => any()}.

%% Example:
%% list_instances_output() :: #{
%%   <<"Instances">> => list(instance()()),
%%   <<"Marker">> => string()
%% }
-type list_instances_output() :: #{binary() => any()}.

%% Example:
%% failure_details() :: #{
%%   <<"LogFile">> => string(),
%%   <<"Message">> => string(),
%%   <<"Reason">> => string()
%% }
-type failure_details() :: #{binary() => any()}.

%% Example:
%% list_clusters_output() :: #{
%%   <<"Clusters">> => list(cluster_summary()()),
%%   <<"Marker">> => string()
%% }
-type list_clusters_output() :: #{binary() => any()}.

%% Example:
%% get_auto_termination_policy_output() :: #{
%%   <<"AutoTerminationPolicy">> => auto_termination_policy()
%% }
-type get_auto_termination_policy_output() :: #{binary() => any()}.

%% Example:
%% notebook_execution() :: #{
%%   <<"Arn">> => string(),
%%   <<"EditorId">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"EnvironmentVariables">> => map(),
%%   <<"ExecutionEngine">> => execution_engine_config(),
%%   <<"LastStateChangeReason">> => string(),
%%   <<"NotebookExecutionId">> => string(),
%%   <<"NotebookExecutionName">> => string(),
%%   <<"NotebookInstanceSecurityGroupId">> => string(),
%%   <<"NotebookParams">> => string(),
%%   <<"NotebookS3Location">> => notebook_s3_location_for_output(),
%%   <<"OutputNotebookFormat">> => list(any()),
%%   <<"OutputNotebookS3Location">> => output_notebook_s3_location_for_output(),
%%   <<"OutputNotebookURI">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type notebook_execution() :: #{binary() => any()}.

%% Example:
%% remove_tags_output() :: #{

%% }
-type remove_tags_output() :: #{binary() => any()}.

%% Example:
%% instance_group_status() :: #{
%%   <<"State">> => list(any()),
%%   <<"StateChangeReason">> => instance_group_state_change_reason(),
%%   <<"Timeline">> => instance_group_timeline()
%% }
-type instance_group_status() :: #{binary() => any()}.

%% Example:
%% notebook_s3_location_from_input() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Key">> => string()
%% }
-type notebook_s3_location_from_input() :: #{binary() => any()}.

%% Example:
%% block_public_access_configuration_metadata() :: #{
%%   <<"CreatedByArn">> => string(),
%%   <<"CreationDateTime">> => non_neg_integer()
%% }
-type block_public_access_configuration_metadata() :: #{binary() => any()}.

%% Example:
%% put_block_public_access_configuration_output() :: #{

%% }
-type put_block_public_access_configuration_output() :: #{binary() => any()}.

%% Example:
%% cluster_summary() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"NormalizedInstanceHours">> => integer(),
%%   <<"OutpostArn">> => string(),
%%   <<"Status">> => cluster_status()
%% }
-type cluster_summary() :: #{binary() => any()}.

%% Example:
%% put_auto_scaling_policy_input() :: #{
%%   <<"AutoScalingPolicy">> := auto_scaling_policy(),
%%   <<"ClusterId">> := string(),
%%   <<"InstanceGroupId">> := string()
%% }
-type put_auto_scaling_policy_input() :: #{binary() => any()}.

%% Example:
%% cloud_watch_alarm_definition() :: #{
%%   <<"ComparisonOperator">> => list(any()),
%%   <<"Dimensions">> => list(metric_dimension()()),
%%   <<"EvaluationPeriods">> => integer(),
%%   <<"MetricName">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"Period">> => integer(),
%%   <<"Statistic">> => list(any()),
%%   <<"Threshold">> => float(),
%%   <<"Unit">> => list(any())
%% }
-type cloud_watch_alarm_definition() :: #{binary() => any()}.

%% Example:
%% modify_cluster_output() :: #{
%%   <<"StepConcurrencyLevel">> => integer()
%% }
-type modify_cluster_output() :: #{binary() => any()}.

%% Example:
%% step_status() :: #{
%%   <<"FailureDetails">> => failure_details(),
%%   <<"State">> => list(any()),
%%   <<"StateChangeReason">> => step_state_change_reason(),
%%   <<"Timeline">> => step_timeline()
%% }
-type step_status() :: #{binary() => any()}.

%% Example:
%% delete_studio_session_mapping_input() :: #{
%%   <<"IdentityId">> => string(),
%%   <<"IdentityName">> => string(),
%%   <<"IdentityType">> := list(any()),
%%   <<"StudioId">> := string()
%% }
-type delete_studio_session_mapping_input() :: #{binary() => any()}.

%% Example:
%% remove_managed_scaling_policy_input() :: #{
%%   <<"ClusterId">> := string()
%% }
-type remove_managed_scaling_policy_input() :: #{binary() => any()}.

%% Example:
%% on_demand_capacity_reservation_options() :: #{
%%   <<"CapacityReservationPreference">> => list(any()),
%%   <<"CapacityReservationResourceGroupArn">> => string(),
%%   <<"UsageStrategy">> => list(any())
%% }
-type on_demand_capacity_reservation_options() :: #{binary() => any()}.

%% Example:
%% set_keep_job_flow_alive_when_no_steps_input() :: #{
%%   <<"JobFlowIds">> := list(string()()),
%%   <<"KeepJobFlowAliveWhenNoSteps">> := boolean()
%% }
-type set_keep_job_flow_alive_when_no_steps_input() :: #{binary() => any()}.

%% Example:
%% create_security_configuration_output() :: #{
%%   <<"CreationDateTime">> => non_neg_integer(),
%%   <<"Name">> => string()
%% }
-type create_security_configuration_output() :: #{binary() => any()}.

%% Example:
%% add_job_flow_steps_output() :: #{
%%   <<"StepIds">> => list(string()())
%% }
-type add_job_flow_steps_output() :: #{binary() => any()}.

%% Example:
%% auto_scaling_policy_state_change_reason() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type auto_scaling_policy_state_change_reason() :: #{binary() => any()}.

%% Example:
%% list_notebook_executions_output() :: #{
%%   <<"Marker">> => string(),
%%   <<"NotebookExecutions">> => list(notebook_execution_summary()())
%% }
-type list_notebook_executions_output() :: #{binary() => any()}.

%% Example:
%% session_mapping_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"IdentityId">> => string(),
%%   <<"IdentityName">> => string(),
%%   <<"IdentityType">> => list(any()),
%%   <<"SessionPolicyArn">> => string(),
%%   <<"StudioId">> => string()
%% }
-type session_mapping_summary() :: #{binary() => any()}.

%% Example:
%% list_studios_input() :: #{
%%   <<"Marker">> => string()
%% }
-type list_studios_input() :: #{binary() => any()}.

%% Example:
%% add_instance_groups_input() :: #{
%%   <<"InstanceGroups">> := list(instance_group_config()()),
%%   <<"JobFlowId">> := string()
%% }
-type add_instance_groups_input() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% instance_group_detail() :: #{
%%   <<"BidPrice">> => string(),
%%   <<"CreationDateTime">> => non_neg_integer(),
%%   <<"CustomAmiId">> => string(),
%%   <<"EndDateTime">> => non_neg_integer(),
%%   <<"InstanceGroupId">> => string(),
%%   <<"InstanceRequestCount">> => integer(),
%%   <<"InstanceRole">> => list(any()),
%%   <<"InstanceRunningCount">> => integer(),
%%   <<"InstanceType">> => string(),
%%   <<"LastStateChangeReason">> => string(),
%%   <<"Market">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"ReadyDateTime">> => non_neg_integer(),
%%   <<"StartDateTime">> => non_neg_integer(),
%%   <<"State">> => list(any())
%% }
-type instance_group_detail() :: #{binary() => any()}.

%% Example:
%% invalid_request_exception() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"Message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.

%% Example:
%% list_studio_session_mappings_input() :: #{
%%   <<"IdentityType">> => list(any()),
%%   <<"Marker">> => string(),
%%   <<"StudioId">> => string()
%% }
-type list_studio_session_mappings_input() :: #{binary() => any()}.

%% Example:
%% ebs_volume() :: #{
%%   <<"Device">> => string(),
%%   <<"VolumeId">> => string()
%% }
-type ebs_volume() :: #{binary() => any()}.

%% Example:
%% describe_security_configuration_input() :: #{
%%   <<"Name">> := string()
%% }
-type describe_security_configuration_input() :: #{binary() => any()}.

%% Example:
%% cluster() :: #{
%%   <<"Ec2InstanceAttributes">> => ec2_instance_attributes(),
%%   <<"LogEncryptionKmsKeyId">> => string(),
%%   <<"SecurityConfiguration">> => string(),
%%   <<"CustomAmiId">> => string(),
%%   <<"Id">> => string(),
%%   <<"EbsRootVolumeIops">> => integer(),
%%   <<"AutoScalingRole">> => string(),
%%   <<"RequestedAmiVersion">> => string(),
%%   <<"KerberosAttributes">> => kerberos_attributes(),
%%   <<"ServiceRole">> => string(),
%%   <<"TerminationProtected">> => boolean(),
%%   <<"NormalizedInstanceHours">> => integer(),
%%   <<"OutpostArn">> => string(),
%%   <<"RunningAmiVersion">> => string(),
%%   <<"Configurations">> => list(configuration()()),
%%   <<"ReleaseLabel">> => string(),
%%   <<"LogUri">> => string(),
%%   <<"Applications">> => list(application()()),
%%   <<"UnhealthyNodeReplacement">> => boolean(),
%%   <<"ClusterArn">> => string(),
%%   <<"EbsRootVolumeThroughput">> => integer(),
%%   <<"AutoTerminate">> => boolean(),
%%   <<"Tags">> => list(tag()()),
%%   <<"MasterPublicDnsName">> => string(),
%%   <<"ScaleDownBehavior">> => list(any()),
%%   <<"EbsRootVolumeSize">> => integer(),
%%   <<"OSReleaseLabel">> => string(),
%%   <<"Name">> => string(),
%%   <<"RepoUpgradeOnBoot">> => list(any()),
%%   <<"Status">> => cluster_status(),
%%   <<"StepConcurrencyLevel">> => integer(),
%%   <<"VisibleToAllUsers">> => boolean(),
%%   <<"InstanceCollectionType">> => list(any()),
%%   <<"PlacementGroups">> => list(placement_group_config()())
%% }
-type cluster() :: #{binary() => any()}.

%% Example:
%% get_studio_session_mapping_output() :: #{
%%   <<"SessionMapping">> => session_mapping_detail()
%% }
-type get_studio_session_mapping_output() :: #{binary() => any()}.

%% Example:
%% instance_group_config() :: #{
%%   <<"AutoScalingPolicy">> => auto_scaling_policy(),
%%   <<"BidPrice">> => string(),
%%   <<"Configurations">> => list(configuration()()),
%%   <<"CustomAmiId">> => string(),
%%   <<"EbsConfiguration">> => ebs_configuration(),
%%   <<"InstanceCount">> => integer(),
%%   <<"InstanceRole">> => list(any()),
%%   <<"InstanceType">> => string(),
%%   <<"Market">> => list(any()),
%%   <<"Name">> => string()
%% }
-type instance_group_config() :: #{binary() => any()}.

%% Example:
%% list_security_configurations_output() :: #{
%%   <<"Marker">> => string(),
%%   <<"SecurityConfigurations">> => list(security_configuration_summary()())
%% }
-type list_security_configurations_output() :: #{binary() => any()}.

%% Example:
%% auto_scaling_policy_description() :: #{
%%   <<"Constraints">> => scaling_constraints(),
%%   <<"Rules">> => list(scaling_rule()()),
%%   <<"Status">> => auto_scaling_policy_status()
%% }
-type auto_scaling_policy_description() :: #{binary() => any()}.

%% Example:
%% get_managed_scaling_policy_output() :: #{
%%   <<"ManagedScalingPolicy">> => managed_scaling_policy()
%% }
-type get_managed_scaling_policy_output() :: #{binary() => any()}.

%% Example:
%% run_job_flow_output() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"JobFlowId">> => string()
%% }
-type run_job_flow_output() :: #{binary() => any()}.

%% Example:
%% cluster_state_change_reason() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type cluster_state_change_reason() :: #{binary() => any()}.

%% Example:
%% list_instance_fleets_input() :: #{
%%   <<"ClusterId">> := string(),
%%   <<"Marker">> => string()
%% }
-type list_instance_fleets_input() :: #{binary() => any()}.

%% Example:
%% list_clusters_input() :: #{
%%   <<"ClusterStates">> => list(list(any())()),
%%   <<"CreatedAfter">> => non_neg_integer(),
%%   <<"CreatedBefore">> => non_neg_integer(),
%%   <<"Marker">> => string()
%% }
-type list_clusters_input() :: #{binary() => any()}.

%% Example:
%% put_auto_scaling_policy_output() :: #{
%%   <<"AutoScalingPolicy">> => auto_scaling_policy_description(),
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterId">> => string(),
%%   <<"InstanceGroupId">> => string()
%% }
-type put_auto_scaling_policy_output() :: #{binary() => any()}.

%% Example:
%% stop_notebook_execution_input() :: #{
%%   <<"NotebookExecutionId">> := string()
%% }
-type stop_notebook_execution_input() :: #{binary() => any()}.

%% Example:
%% list_studio_session_mappings_output() :: #{
%%   <<"Marker">> => string(),
%%   <<"SessionMappings">> => list(session_mapping_summary()())
%% }
-type list_studio_session_mappings_output() :: #{binary() => any()}.

%% Example:
%% remove_auto_termination_policy_output() :: #{

%% }
-type remove_auto_termination_policy_output() :: #{binary() => any()}.

%% Example:
%% get_cluster_session_credentials_output() :: #{
%%   <<"Credentials">> => list(),
%%   <<"ExpiresAt">> => non_neg_integer()
%% }
-type get_cluster_session_credentials_output() :: #{binary() => any()}.

%% Example:
%% instance_fleet_provisioning_specifications() :: #{
%%   <<"OnDemandSpecification">> => on_demand_provisioning_specification(),
%%   <<"SpotSpecification">> => spot_provisioning_specification()
%% }
-type instance_fleet_provisioning_specifications() :: #{binary() => any()}.

%% Example:
%% application() :: #{
%%   <<"AdditionalInfo">> => map(),
%%   <<"Args">> => list(string()()),
%%   <<"Name">> => string(),
%%   <<"Version">> => string()
%% }
-type application() :: #{binary() => any()}.

%% Example:
%% delete_security_configuration_output() :: #{

%% }
-type delete_security_configuration_output() :: #{binary() => any()}.

%% Example:
%% describe_studio_input() :: #{
%%   <<"StudioId">> := string()
%% }
-type describe_studio_input() :: #{binary() => any()}.

%% Example:
%% list_supported_instance_types_output() :: #{
%%   <<"Marker">> => string(),
%%   <<"SupportedInstanceTypes">> => list(supported_instance_type()())
%% }
-type list_supported_instance_types_output() :: #{binary() => any()}.

%% Example:
%% instance_fleet_resizing_specifications() :: #{
%%   <<"OnDemandResizeSpecification">> => on_demand_resizing_specification(),
%%   <<"SpotResizeSpecification">> => spot_resizing_specification()
%% }
-type instance_fleet_resizing_specifications() :: #{binary() => any()}.

%% Example:
%% instance_type_config() :: #{
%%   <<"BidPrice">> => string(),
%%   <<"BidPriceAsPercentageOfOnDemandPrice">> => float(),
%%   <<"Configurations">> => list(configuration()()),
%%   <<"CustomAmiId">> => string(),
%%   <<"EbsConfiguration">> => ebs_configuration(),
%%   <<"InstanceType">> => string(),
%%   <<"Priority">> => float(),
%%   <<"WeightedCapacity">> => integer()
%% }
-type instance_type_config() :: #{binary() => any()}.

%% Example:
%% supported_instance_type() :: #{
%%   <<"Architecture">> => string(),
%%   <<"EbsOptimizedAvailable">> => boolean(),
%%   <<"EbsOptimizedByDefault">> => boolean(),
%%   <<"EbsStorageOnly">> => boolean(),
%%   <<"InstanceFamilyId">> => string(),
%%   <<"Is64BitsOnly">> => boolean(),
%%   <<"MemoryGB">> => float(),
%%   <<"NumberOfDisks">> => integer(),
%%   <<"StorageGB">> => integer(),
%%   <<"Type">> => string(),
%%   <<"VCPU">> => integer()
%% }
-type supported_instance_type() :: #{binary() => any()}.

%% Example:
%% describe_job_flows_output() :: #{
%%   <<"JobFlows">> => list(job_flow_detail()())
%% }
-type describe_job_flows_output() :: #{binary() => any()}.

%% Example:
%% instance_fleet_status() :: #{
%%   <<"State">> => list(any()),
%%   <<"StateChangeReason">> => instance_fleet_state_change_reason(),
%%   <<"Timeline">> => instance_fleet_timeline()
%% }
-type instance_fleet_status() :: #{binary() => any()}.

%% Example:
%% step_config() :: #{
%%   <<"ActionOnFailure">> => list(any()),
%%   <<"HadoopJarStep">> => hadoop_jar_step_config(),
%%   <<"Name">> => string()
%% }
-type step_config() :: #{binary() => any()}.

%% Example:
%% add_instance_fleet_output() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterId">> => string(),
%%   <<"InstanceFleetId">> => string()
%% }
-type add_instance_fleet_output() :: #{binary() => any()}.

%% Example:
%% list_bootstrap_actions_output() :: #{
%%   <<"BootstrapActions">> => list(command()()),
%%   <<"Marker">> => string()
%% }
-type list_bootstrap_actions_output() :: #{binary() => any()}.

%% Example:
%% instance_group() :: #{
%%   <<"AutoScalingPolicy">> => auto_scaling_policy_description(),
%%   <<"BidPrice">> => string(),
%%   <<"Configurations">> => list(configuration()()),
%%   <<"ConfigurationsVersion">> => float(),
%%   <<"CustomAmiId">> => string(),
%%   <<"EbsBlockDevices">> => list(ebs_block_device()()),
%%   <<"EbsOptimized">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"InstanceGroupType">> => list(any()),
%%   <<"InstanceType">> => string(),
%%   <<"LastSuccessfullyAppliedConfigurations">> => list(configuration()()),
%%   <<"LastSuccessfullyAppliedConfigurationsVersion">> => float(),
%%   <<"Market">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"RequestedInstanceCount">> => integer(),
%%   <<"RunningInstanceCount">> => integer(),
%%   <<"ShrinkPolicy">> => shrink_policy(),
%%   <<"Status">> => instance_group_status()
%% }
-type instance_group() :: #{binary() => any()}.

%% Example:
%% step_timeline() :: #{
%%   <<"CreationDateTime">> => non_neg_integer(),
%%   <<"EndDateTime">> => non_neg_integer(),
%%   <<"StartDateTime">> => non_neg_integer()
%% }
-type step_timeline() :: #{binary() => any()}.

%% Example:
%% ebs_block_device() :: #{
%%   <<"Device">> => string(),
%%   <<"VolumeSpecification">> => volume_specification()
%% }
-type ebs_block_device() :: #{binary() => any()}.

%% Example:
%% ebs_configuration() :: #{
%%   <<"EbsBlockDeviceConfigs">> => list(ebs_block_device_config()()),
%%   <<"EbsOptimized">> => boolean()
%% }
-type ebs_configuration() :: #{binary() => any()}.

%% Example:
%% update_studio_input() :: #{
%%   <<"DefaultS3Location">> => string(),
%%   <<"Description">> => string(),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"Name">> => string(),
%%   <<"StudioId">> := string(),
%%   <<"SubnetIds">> => list(string()())
%% }
-type update_studio_input() :: #{binary() => any()}.

%% Example:
%% instance_resize_policy() :: #{
%%   <<"InstanceTerminationTimeout">> => integer(),
%%   <<"InstancesToProtect">> => list(string()()),
%%   <<"InstancesToTerminate">> => list(string()())
%% }
-type instance_resize_policy() :: #{binary() => any()}.

%% Example:
%% get_studio_session_mapping_input() :: #{
%%   <<"IdentityId">> => string(),
%%   <<"IdentityName">> => string(),
%%   <<"IdentityType">> := list(any()),
%%   <<"StudioId">> := string()
%% }
-type get_studio_session_mapping_input() :: #{binary() => any()}.

%% Example:
%% get_block_public_access_configuration_output() :: #{
%%   <<"BlockPublicAccessConfiguration">> => block_public_access_configuration(),
%%   <<"BlockPublicAccessConfigurationMetadata">> => block_public_access_configuration_metadata()
%% }
-type get_block_public_access_configuration_output() :: #{binary() => any()}.

%% Example:
%% metric_dimension() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type metric_dimension() :: #{binary() => any()}.

%% Example:
%% remove_managed_scaling_policy_output() :: #{

%% }
-type remove_managed_scaling_policy_output() :: #{binary() => any()}.

%% Example:
%% remove_auto_scaling_policy_input() :: #{
%%   <<"ClusterId">> := string(),
%%   <<"InstanceGroupId">> := string()
%% }
-type remove_auto_scaling_policy_input() :: #{binary() => any()}.

%% Example:
%% list_studios_output() :: #{
%%   <<"Marker">> => string(),
%%   <<"Studios">> => list(studio_summary()())
%% }
-type list_studios_output() :: #{binary() => any()}.

%% Example:
%% job_flow_instances_config() :: #{
%%   <<"AdditionalMasterSecurityGroups">> => list(string()()),
%%   <<"AdditionalSlaveSecurityGroups">> => list(string()()),
%%   <<"Ec2KeyName">> => string(),
%%   <<"Ec2SubnetId">> => string(),
%%   <<"Ec2SubnetIds">> => list(string()()),
%%   <<"EmrManagedMasterSecurityGroup">> => string(),
%%   <<"EmrManagedSlaveSecurityGroup">> => string(),
%%   <<"HadoopVersion">> => string(),
%%   <<"InstanceCount">> => integer(),
%%   <<"InstanceFleets">> => list(instance_fleet_config()()),
%%   <<"InstanceGroups">> => list(instance_group_config()()),
%%   <<"KeepJobFlowAliveWhenNoSteps">> => boolean(),
%%   <<"MasterInstanceType">> => string(),
%%   <<"Placement">> => placement_type(),
%%   <<"ServiceAccessSecurityGroup">> => string(),
%%   <<"SlaveInstanceType">> => string(),
%%   <<"TerminationProtected">> => boolean(),
%%   <<"UnhealthyNodeReplacement">> => boolean()
%% }
-type job_flow_instances_config() :: #{binary() => any()}.

%% Example:
%% cancel_steps_output() :: #{
%%   <<"CancelStepsInfoList">> => list(cancel_steps_info()())
%% }
-type cancel_steps_output() :: #{binary() => any()}.

%% Example:
%% execution_engine_config() :: #{
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"Id">> => string(),
%%   <<"MasterInstanceSecurityGroupId">> => string(),
%%   <<"Type">> => list(any())
%% }
-type execution_engine_config() :: #{binary() => any()}.

%% Example:
%% start_notebook_execution_input() :: #{
%%   <<"EditorId">> => string(),
%%   <<"EnvironmentVariables">> => map(),
%%   <<"ExecutionEngine">> := execution_engine_config(),
%%   <<"NotebookExecutionName">> => string(),
%%   <<"NotebookInstanceSecurityGroupId">> => string(),
%%   <<"NotebookParams">> => string(),
%%   <<"NotebookS3Location">> => notebook_s3_location_from_input(),
%%   <<"OutputNotebookFormat">> => list(any()),
%%   <<"OutputNotebookS3Location">> => output_notebook_s3_location_from_input(),
%%   <<"RelativePath">> => string(),
%%   <<"ServiceRole">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type start_notebook_execution_input() :: #{binary() => any()}.

%% Example:
%% o_s_release() :: #{
%%   <<"Label">> => string()
%% }
-type o_s_release() :: #{binary() => any()}.

%% Example:
%% studio_summary() :: #{
%%   <<"AuthMode">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"StudioId">> => string(),
%%   <<"Url">> => string(),
%%   <<"VpcId">> => string()
%% }
-type studio_summary() :: #{binary() => any()}.

%% Example:
%% get_block_public_access_configuration_input() :: #{

%% }
-type get_block_public_access_configuration_input() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% block_public_access_configuration() :: #{
%%   <<"BlockPublicSecurityGroupRules">> => boolean(),
%%   <<"Classification">> => string(),
%%   <<"Configurations">> => list(configuration()()),
%%   <<"PermittedPublicSecurityGroupRuleRanges">> => list(port_range()()),
%%   <<"Properties">> => map()
%% }
-type block_public_access_configuration() :: #{binary() => any()}.

%% Example:
%% instance_group_modify_config() :: #{
%%   <<"Configurations">> => list(configuration()()),
%%   <<"EC2InstanceIdsToTerminate">> => list(string()()),
%%   <<"InstanceCount">> => integer(),
%%   <<"InstanceGroupId">> => string(),
%%   <<"ReconfigurationType">> => list(any()),
%%   <<"ShrinkPolicy">> => shrink_policy()
%% }
-type instance_group_modify_config() :: #{binary() => any()}.

%% Example:
%% scaling_constraints() :: #{
%%   <<"MaxCapacity">> => integer(),
%%   <<"MinCapacity">> => integer()
%% }
-type scaling_constraints() :: #{binary() => any()}.

%% Example:
%% describe_step_input() :: #{
%%   <<"ClusterId">> := string(),
%%   <<"StepId">> := string()
%% }
-type describe_step_input() :: #{binary() => any()}.

%% Example:
%% port_range() :: #{
%%   <<"MaxRange">> => integer(),
%%   <<"MinRange">> => integer()
%% }
-type port_range() :: #{binary() => any()}.

%% Example:
%% create_studio_output() :: #{
%%   <<"StudioId">> => string(),
%%   <<"Url">> => string()
%% }
-type create_studio_output() :: #{binary() => any()}.

%% Example:
%% ebs_block_device_config() :: #{
%%   <<"VolumeSpecification">> => volume_specification(),
%%   <<"VolumesPerInstance">> => integer()
%% }
-type ebs_block_device_config() :: #{binary() => any()}.

%% Example:
%% notebook_s3_location_for_output() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Key">> => string()
%% }
-type notebook_s3_location_for_output() :: #{binary() => any()}.

%% Example:
%% error_detail() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorData">> => list(map()()),
%%   <<"ErrorMessage">> => string()
%% }
-type error_detail() :: #{binary() => any()}.

%% Example:
%% kerberos_attributes() :: #{
%%   <<"ADDomainJoinPassword">> => string(),
%%   <<"ADDomainJoinUser">> => string(),
%%   <<"CrossRealmTrustPrincipalPassword">> => string(),
%%   <<"KdcAdminPassword">> => string(),
%%   <<"Realm">> => string()
%% }
-type kerberos_attributes() :: #{binary() => any()}.

%% Example:
%% instance_timeline() :: #{
%%   <<"CreationDateTime">> => non_neg_integer(),
%%   <<"EndDateTime">> => non_neg_integer(),
%%   <<"ReadyDateTime">> => non_neg_integer()
%% }
-type instance_timeline() :: #{binary() => any()}.

%% Example:
%% internal_server_error() :: #{

%% }
-type internal_server_error() :: #{binary() => any()}.

%% Example:
%% update_studio_session_mapping_input() :: #{
%%   <<"IdentityId">> => string(),
%%   <<"IdentityName">> => string(),
%%   <<"IdentityType">> := list(any()),
%%   <<"SessionPolicyArn">> := string(),
%%   <<"StudioId">> := string()
%% }
-type update_studio_session_mapping_input() :: #{binary() => any()}.

%% Example:
%% list_instances_input() :: #{
%%   <<"ClusterId">> := string(),
%%   <<"InstanceFleetId">> => string(),
%%   <<"InstanceFleetType">> => list(any()),
%%   <<"InstanceGroupId">> => string(),
%%   <<"InstanceGroupTypes">> => list(list(any())()),
%%   <<"InstanceStates">> => list(list(any())()),
%%   <<"Marker">> => string()
%% }
-type list_instances_input() :: #{binary() => any()}.

%% Example:
%% instance() :: #{
%%   <<"EbsVolumes">> => list(ebs_volume()()),
%%   <<"Ec2InstanceId">> => string(),
%%   <<"Id">> => string(),
%%   <<"InstanceFleetId">> => string(),
%%   <<"InstanceGroupId">> => string(),
%%   <<"InstanceType">> => string(),
%%   <<"Market">> => list(any()),
%%   <<"PrivateDnsName">> => string(),
%%   <<"PrivateIpAddress">> => string(),
%%   <<"PublicDnsName">> => string(),
%%   <<"PublicIpAddress">> => string(),
%%   <<"Status">> => instance_status()
%% }
-type instance() :: #{binary() => any()}.

%% Example:
%% instance_group_state_change_reason() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type instance_group_state_change_reason() :: #{binary() => any()}.

%% Example:
%% cluster_timeline() :: #{
%%   <<"CreationDateTime">> => non_neg_integer(),
%%   <<"EndDateTime">> => non_neg_integer(),
%%   <<"ReadyDateTime">> => non_neg_integer()
%% }
-type cluster_timeline() :: #{binary() => any()}.

%% Example:
%% remove_auto_scaling_policy_output() :: #{

%% }
-type remove_auto_scaling_policy_output() :: #{binary() => any()}.

%% Example:
%% describe_notebook_execution_input() :: #{
%%   <<"NotebookExecutionId">> := string()
%% }
-type describe_notebook_execution_input() :: #{binary() => any()}.

%% Example:
%% cancel_steps_input() :: #{
%%   <<"ClusterId">> := string(),
%%   <<"StepCancellationOption">> => list(any()),
%%   <<"StepIds">> := list(string()())
%% }
-type cancel_steps_input() :: #{binary() => any()}.

%% Example:
%% simple_scaling_policy_configuration() :: #{
%%   <<"AdjustmentType">> => list(any()),
%%   <<"CoolDown">> => integer(),
%%   <<"ScalingAdjustment">> => integer()
%% }
-type simple_scaling_policy_configuration() :: #{binary() => any()}.

%% Example:
%% username_password() :: #{
%%   <<"Password">> => string(),
%%   <<"Username">> => string()
%% }
-type username_password() :: #{binary() => any()}.

%% Example:
%% list_release_labels_input() :: #{
%%   <<"Filters">> => release_label_filter(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_release_labels_input() :: #{binary() => any()}.

%% Example:
%% modify_cluster_input() :: #{
%%   <<"ClusterId">> := string(),
%%   <<"StepConcurrencyLevel">> => integer()
%% }
-type modify_cluster_input() :: #{binary() => any()}.

%% Example:
%% hadoop_jar_step_config() :: #{
%%   <<"Args">> => list(string()()),
%%   <<"Jar">> => string(),
%%   <<"MainClass">> => string(),
%%   <<"Properties">> => list(key_value()())
%% }
-type hadoop_jar_step_config() :: #{binary() => any()}.

%% Example:
%% compute_limits() :: #{
%%   <<"MaximumCapacityUnits">> => integer(),
%%   <<"MaximumCoreCapacityUnits">> => integer(),
%%   <<"MaximumOnDemandCapacityUnits">> => integer(),
%%   <<"MinimumCapacityUnits">> => integer(),
%%   <<"UnitType">> => list(any())
%% }
-type compute_limits() :: #{binary() => any()}.

%% Example:
%% add_job_flow_steps_input() :: #{
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"JobFlowId">> := string(),
%%   <<"Steps">> := list(step_config()())
%% }
-type add_job_flow_steps_input() :: #{binary() => any()}.

%% Example:
%% cluster_status() :: #{
%%   <<"ErrorDetails">> => list(error_detail()()),
%%   <<"State">> => list(any()),
%%   <<"StateChangeReason">> => cluster_state_change_reason(),
%%   <<"Timeline">> => cluster_timeline()
%% }
-type cluster_status() :: #{binary() => any()}.

%% Example:
%% set_unhealthy_node_replacement_input() :: #{
%%   <<"JobFlowIds">> := list(string()()),
%%   <<"UnhealthyNodeReplacement">> := boolean()
%% }
-type set_unhealthy_node_replacement_input() :: #{binary() => any()}.

%% Example:
%% list_steps_output() :: #{
%%   <<"Marker">> => string(),
%%   <<"Steps">> => list(step_summary()())
%% }
-type list_steps_output() :: #{binary() => any()}.

%% Example:
%% terminate_job_flows_input() :: #{
%%   <<"JobFlowIds">> := list(string()())
%% }
-type terminate_job_flows_input() :: #{binary() => any()}.

%% Example:
%% ec2_instance_attributes() :: #{
%%   <<"AdditionalMasterSecurityGroups">> => list(string()()),
%%   <<"AdditionalSlaveSecurityGroups">> => list(string()()),
%%   <<"Ec2AvailabilityZone">> => string(),
%%   <<"Ec2KeyName">> => string(),
%%   <<"Ec2SubnetId">> => string(),
%%   <<"EmrManagedMasterSecurityGroup">> => string(),
%%   <<"EmrManagedSlaveSecurityGroup">> => string(),
%%   <<"IamInstanceProfile">> => string(),
%%   <<"RequestedEc2AvailabilityZones">> => list(string()()),
%%   <<"RequestedEc2SubnetIds">> => list(string()()),
%%   <<"ServiceAccessSecurityGroup">> => string()
%% }
-type ec2_instance_attributes() :: #{binary() => any()}.

%% Example:
%% on_demand_resizing_specification() :: #{
%%   <<"AllocationStrategy">> => list(any()),
%%   <<"CapacityReservationOptions">> => on_demand_capacity_reservation_options(),
%%   <<"TimeoutDurationMinutes">> => integer()
%% }
-type on_demand_resizing_specification() :: #{binary() => any()}.

%% Example:
%% create_studio_input() :: #{
%%   <<"AuthMode">> := list(any()),
%%   <<"DefaultS3Location">> := string(),
%%   <<"Description">> => string(),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"EngineSecurityGroupId">> := string(),
%%   <<"IdcInstanceArn">> => string(),
%%   <<"IdcUserAssignment">> => list(any()),
%%   <<"IdpAuthUrl">> => string(),
%%   <<"IdpRelayStateParameterName">> => string(),
%%   <<"Name">> := string(),
%%   <<"ServiceRole">> := string(),
%%   <<"SubnetIds">> := list(string()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"TrustedIdentityPropagationEnabled">> => boolean(),
%%   <<"UserRole">> => string(),
%%   <<"VpcId">> := string(),
%%   <<"WorkspaceSecurityGroupId">> := string()
%% }
-type create_studio_input() :: #{binary() => any()}.

%% Example:
%% job_flow_execution_status_detail() :: #{
%%   <<"CreationDateTime">> => non_neg_integer(),
%%   <<"EndDateTime">> => non_neg_integer(),
%%   <<"LastStateChangeReason">> => string(),
%%   <<"ReadyDateTime">> => non_neg_integer(),
%%   <<"StartDateTime">> => non_neg_integer(),
%%   <<"State">> => list(any())
%% }
-type job_flow_execution_status_detail() :: #{binary() => any()}.

%% Example:
%% describe_studio_output() :: #{
%%   <<"Studio">> => studio()
%% }
-type describe_studio_output() :: #{binary() => any()}.

%% Example:
%% session_mapping_detail() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"IdentityId">> => string(),
%%   <<"IdentityName">> => string(),
%%   <<"IdentityType">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"SessionPolicyArn">> => string(),
%%   <<"StudioId">> => string()
%% }
-type session_mapping_detail() :: #{binary() => any()}.

%% Example:
%% step_execution_status_detail() :: #{
%%   <<"CreationDateTime">> => non_neg_integer(),
%%   <<"EndDateTime">> => non_neg_integer(),
%%   <<"LastStateChangeReason">> => string(),
%%   <<"StartDateTime">> => non_neg_integer(),
%%   <<"State">> => list(any())
%% }
-type step_execution_status_detail() :: #{binary() => any()}.

%% Example:
%% put_auto_termination_policy_input() :: #{
%%   <<"AutoTerminationPolicy">> => auto_termination_policy(),
%%   <<"ClusterId">> := string()
%% }
-type put_auto_termination_policy_input() :: #{binary() => any()}.

%% Example:
%% scaling_action() :: #{
%%   <<"Market">> => list(any()),
%%   <<"SimpleScalingPolicyConfiguration">> => simple_scaling_policy_configuration()
%% }
-type scaling_action() :: #{binary() => any()}.

%% Example:
%% list_instance_groups_input() :: #{
%%   <<"ClusterId">> := string(),
%%   <<"Marker">> => string()
%% }
-type list_instance_groups_input() :: #{binary() => any()}.

%% Example:
%% list_notebook_executions_input() :: #{
%%   <<"EditorId">> => string(),
%%   <<"ExecutionEngineId">> => string(),
%%   <<"From">> => non_neg_integer(),
%%   <<"Marker">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"To">> => non_neg_integer()
%% }
-type list_notebook_executions_input() :: #{binary() => any()}.

%% Example:
%% job_flow_instances_detail() :: #{
%%   <<"Ec2KeyName">> => string(),
%%   <<"Ec2SubnetId">> => string(),
%%   <<"HadoopVersion">> => string(),
%%   <<"InstanceCount">> => integer(),
%%   <<"InstanceGroups">> => list(instance_group_detail()()),
%%   <<"KeepJobFlowAliveWhenNoSteps">> => boolean(),
%%   <<"MasterInstanceId">> => string(),
%%   <<"MasterInstanceType">> => string(),
%%   <<"MasterPublicDnsName">> => string(),
%%   <<"NormalizedInstanceHours">> => integer(),
%%   <<"Placement">> => placement_type(),
%%   <<"SlaveInstanceType">> => string(),
%%   <<"TerminationProtected">> => boolean(),
%%   <<"UnhealthyNodeReplacement">> => boolean()
%% }
-type job_flow_instances_detail() :: #{binary() => any()}.

%% Example:
%% shrink_policy() :: #{
%%   <<"DecommissionTimeout">> => integer(),
%%   <<"InstanceResizePolicy">> => instance_resize_policy()
%% }
-type shrink_policy() :: #{binary() => any()}.

%% Example:
%% notebook_execution_summary() :: #{
%%   <<"EditorId">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"ExecutionEngineId">> => string(),
%%   <<"NotebookExecutionId">> => string(),
%%   <<"NotebookExecutionName">> => string(),
%%   <<"NotebookS3Location">> => notebook_s3_location_for_output(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any())
%% }
-type notebook_execution_summary() :: #{binary() => any()}.

%% Example:
%% delete_security_configuration_input() :: #{
%%   <<"Name">> := string()
%% }
-type delete_security_configuration_input() :: #{binary() => any()}.

%% Example:
%% command() :: #{
%%   <<"Args">> => list(string()()),
%%   <<"Name">> => string(),
%%   <<"ScriptPath">> => string()
%% }
-type command() :: #{binary() => any()}.

%% Example:
%% instance_fleet_config() :: #{
%%   <<"Context">> => string(),
%%   <<"InstanceFleetType">> => list(any()),
%%   <<"InstanceTypeConfigs">> => list(instance_type_config()()),
%%   <<"LaunchSpecifications">> => instance_fleet_provisioning_specifications(),
%%   <<"Name">> => string(),
%%   <<"ResizeSpecifications">> => instance_fleet_resizing_specifications(),
%%   <<"TargetOnDemandCapacity">> => integer(),
%%   <<"TargetSpotCapacity">> => integer()
%% }
-type instance_fleet_config() :: #{binary() => any()}.

%% Example:
%% spot_provisioning_specification() :: #{
%%   <<"AllocationStrategy">> => list(any()),
%%   <<"BlockDurationMinutes">> => integer(),
%%   <<"TimeoutAction">> => list(any()),
%%   <<"TimeoutDurationMinutes">> => integer()
%% }
-type spot_provisioning_specification() :: #{binary() => any()}.

%% Example:
%% key_value() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type key_value() :: #{binary() => any()}.

%% Example:
%% instance_status() :: #{
%%   <<"State">> => list(any()),
%%   <<"StateChangeReason">> => instance_state_change_reason(),
%%   <<"Timeline">> => instance_timeline()
%% }
-type instance_status() :: #{binary() => any()}.

%% Example:
%% instance_fleet_modify_config() :: #{
%%   <<"Context">> => string(),
%%   <<"InstanceFleetId">> => string(),
%%   <<"InstanceTypeConfigs">> => list(instance_type_config()()),
%%   <<"ResizeSpecifications">> => instance_fleet_resizing_specifications(),
%%   <<"TargetOnDemandCapacity">> => integer(),
%%   <<"TargetSpotCapacity">> => integer()
%% }
-type instance_fleet_modify_config() :: #{binary() => any()}.

%% Example:
%% managed_scaling_policy() :: #{
%%   <<"ComputeLimits">> => compute_limits(),
%%   <<"ScalingStrategy">> => list(any()),
%%   <<"UtilizationPerformanceIndex">> => integer()
%% }
-type managed_scaling_policy() :: #{binary() => any()}.

%% Example:
%% placement_type() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"AvailabilityZones">> => list(string()())
%% }
-type placement_type() :: #{binary() => any()}.

%% Example:
%% set_termination_protection_input() :: #{
%%   <<"JobFlowIds">> := list(string()()),
%%   <<"TerminationProtected">> := boolean()
%% }
-type set_termination_protection_input() :: #{binary() => any()}.

%% Example:
%% output_notebook_s3_location_for_output() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Key">> => string()
%% }
-type output_notebook_s3_location_for_output() :: #{binary() => any()}.

%% Example:
%% list_release_labels_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ReleaseLabels">> => list(string()())
%% }
-type list_release_labels_output() :: #{binary() => any()}.

%% Example:
%% describe_cluster_input() :: #{
%%   <<"ClusterId">> := string()
%% }
-type describe_cluster_input() :: #{binary() => any()}.

%% Example:
%% remove_tags_input() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type remove_tags_input() :: #{binary() => any()}.

%% Example:
%% step() :: #{
%%   <<"ActionOnFailure">> => list(any()),
%%   <<"Config">> => hadoop_step_config(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => step_status()
%% }
-type step() :: #{binary() => any()}.

%% Example:
%% modify_instance_groups_input() :: #{
%%   <<"ClusterId">> => string(),
%%   <<"InstanceGroups">> => list(instance_group_modify_config()())
%% }
-type modify_instance_groups_input() :: #{binary() => any()}.

%% Example:
%% put_managed_scaling_policy_input() :: #{
%%   <<"ClusterId">> := string(),
%%   <<"ManagedScalingPolicy">> := managed_scaling_policy()
%% }
-type put_managed_scaling_policy_input() :: #{binary() => any()}.

%% Example:
%% on_demand_provisioning_specification() :: #{
%%   <<"AllocationStrategy">> => list(any()),
%%   <<"CapacityReservationOptions">> => on_demand_capacity_reservation_options()
%% }
-type on_demand_provisioning_specification() :: #{binary() => any()}.

%% Example:
%% step_summary() :: #{
%%   <<"ActionOnFailure">> => list(any()),
%%   <<"Config">> => hadoop_step_config(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => step_status()
%% }
-type step_summary() :: #{binary() => any()}.

%% Example:
%% instance_fleet_state_change_reason() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type instance_fleet_state_change_reason() :: #{binary() => any()}.

%% Example:
%% describe_notebook_execution_output() :: #{
%%   <<"NotebookExecution">> => notebook_execution()
%% }
-type describe_notebook_execution_output() :: #{binary() => any()}.

%% Example:
%% instance_fleet_timeline() :: #{
%%   <<"CreationDateTime">> => non_neg_integer(),
%%   <<"EndDateTime">> => non_neg_integer(),
%%   <<"ReadyDateTime">> => non_neg_integer()
%% }
-type instance_fleet_timeline() :: #{binary() => any()}.

%% Example:
%% modify_instance_fleet_input() :: #{
%%   <<"ClusterId">> := string(),
%%   <<"InstanceFleet">> := instance_fleet_modify_config()
%% }
-type modify_instance_fleet_input() :: #{binary() => any()}.

%% Example:
%% studio() :: #{
%%   <<"AuthMode">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DefaultS3Location">> => string(),
%%   <<"Description">> => string(),
%%   <<"EncryptionKeyArn">> => string(),
%%   <<"EngineSecurityGroupId">> => string(),
%%   <<"IdcInstanceArn">> => string(),
%%   <<"IdcUserAssignment">> => list(any()),
%%   <<"IdpAuthUrl">> => string(),
%%   <<"IdpRelayStateParameterName">> => string(),
%%   <<"Name">> => string(),
%%   <<"ServiceRole">> => string(),
%%   <<"StudioArn">> => string(),
%%   <<"StudioId">> => string(),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"TrustedIdentityPropagationEnabled">> => boolean(),
%%   <<"Url">> => string(),
%%   <<"UserRole">> => string(),
%%   <<"VpcId">> => string(),
%%   <<"WorkspaceSecurityGroupId">> => string()
%% }
-type studio() :: #{binary() => any()}.

%% Example:
%% put_managed_scaling_policy_output() :: #{

%% }
-type put_managed_scaling_policy_output() :: #{binary() => any()}.

%% Example:
%% instance_type_specification() :: #{
%%   <<"BidPrice">> => string(),
%%   <<"BidPriceAsPercentageOfOnDemandPrice">> => float(),
%%   <<"Configurations">> => list(configuration()()),
%%   <<"CustomAmiId">> => string(),
%%   <<"EbsBlockDevices">> => list(ebs_block_device()()),
%%   <<"EbsOptimized">> => boolean(),
%%   <<"InstanceType">> => string(),
%%   <<"Priority">> => float(),
%%   <<"WeightedCapacity">> => integer()
%% }
-type instance_type_specification() :: #{binary() => any()}.

%% Example:
%% run_job_flow_input() :: #{
%%   <<"AdditionalInfo">> => string(),
%%   <<"AmiVersion">> => string(),
%%   <<"Applications">> => list(application()()),
%%   <<"AutoScalingRole">> => string(),
%%   <<"AutoTerminationPolicy">> => auto_termination_policy(),
%%   <<"BootstrapActions">> => list(bootstrap_action_config()()),
%%   <<"Configurations">> => list(configuration()()),
%%   <<"CustomAmiId">> => string(),
%%   <<"EbsRootVolumeIops">> => integer(),
%%   <<"EbsRootVolumeSize">> => integer(),
%%   <<"EbsRootVolumeThroughput">> => integer(),
%%   <<"Instances">> := job_flow_instances_config(),
%%   <<"JobFlowRole">> => string(),
%%   <<"KerberosAttributes">> => kerberos_attributes(),
%%   <<"LogEncryptionKmsKeyId">> => string(),
%%   <<"LogUri">> => string(),
%%   <<"ManagedScalingPolicy">> => managed_scaling_policy(),
%%   <<"Name">> := string(),
%%   <<"NewSupportedProducts">> => list(supported_product_config()()),
%%   <<"OSReleaseLabel">> => string(),
%%   <<"PlacementGroupConfigs">> => list(placement_group_config()()),
%%   <<"ReleaseLabel">> => string(),
%%   <<"RepoUpgradeOnBoot">> => list(any()),
%%   <<"ScaleDownBehavior">> => list(any()),
%%   <<"SecurityConfiguration">> => string(),
%%   <<"ServiceRole">> => string(),
%%   <<"StepConcurrencyLevel">> => integer(),
%%   <<"Steps">> => list(step_config()()),
%%   <<"SupportedProducts">> => list(string()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"VisibleToAllUsers">> => boolean()
%% }
-type run_job_flow_input() :: #{binary() => any()}.

%% Example:
%% create_security_configuration_input() :: #{
%%   <<"Name">> := string(),
%%   <<"SecurityConfiguration">> := string()
%% }
-type create_security_configuration_input() :: #{binary() => any()}.

%% Example:
%% scaling_rule() :: #{
%%   <<"Action">> => scaling_action(),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"Trigger">> => scaling_trigger()
%% }
-type scaling_rule() :: #{binary() => any()}.

-type add_instance_fleet_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type add_instance_groups_errors() ::
    internal_server_error().

-type add_job_flow_steps_errors() ::
    internal_server_error().

-type add_tags_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type cancel_steps_errors() ::
    internal_server_error() | 
    invalid_request_exception().

-type create_security_configuration_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type create_studio_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type create_studio_session_mapping_errors() ::
    internal_server_error() | 
    invalid_request_exception().

-type delete_security_configuration_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type delete_studio_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type delete_studio_session_mapping_errors() ::
    internal_server_error() | 
    invalid_request_exception().

-type describe_cluster_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type describe_job_flows_errors() ::
    internal_server_error().

-type describe_notebook_execution_errors() ::
    internal_server_error() | 
    invalid_request_exception().

-type describe_release_label_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type describe_security_configuration_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type describe_step_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type describe_studio_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type get_block_public_access_configuration_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type get_cluster_session_credentials_errors() ::
    internal_server_error() | 
    invalid_request_exception().

-type get_studio_session_mapping_errors() ::
    internal_server_error() | 
    invalid_request_exception().

-type list_bootstrap_actions_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type list_clusters_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type list_instance_fleets_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type list_instance_groups_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type list_instances_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type list_notebook_executions_errors() ::
    internal_server_error() | 
    invalid_request_exception().

-type list_release_labels_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type list_security_configurations_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type list_steps_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type list_studio_session_mappings_errors() ::
    internal_server_error() | 
    invalid_request_exception().

-type list_studios_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type list_supported_instance_types_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type modify_cluster_errors() ::
    internal_server_error() | 
    invalid_request_exception().

-type modify_instance_fleet_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type modify_instance_groups_errors() ::
    internal_server_error().

-type put_block_public_access_configuration_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type remove_tags_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type run_job_flow_errors() ::
    internal_server_error().

-type set_keep_job_flow_alive_when_no_steps_errors() ::
    internal_server_error().

-type set_termination_protection_errors() ::
    internal_server_error().

-type set_unhealthy_node_replacement_errors() ::
    internal_server_error().

-type set_visible_to_all_users_errors() ::
    internal_server_error().

-type start_notebook_execution_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type stop_notebook_execution_errors() ::
    internal_server_error() | 
    invalid_request_exception().

-type terminate_job_flows_errors() ::
    internal_server_error().

-type update_studio_errors() ::
    internal_server_exception() | 
    invalid_request_exception().

-type update_studio_session_mapping_errors() ::
    internal_server_error() | 
    invalid_request_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds an instance fleet to a running cluster.
%%
%% The instance fleet configuration is available only in Amazon EMR releases
%% 4.8.0 and later, excluding 5.0.x.
-spec add_instance_fleet(aws_client:aws_client(), add_instance_fleet_input()) ->
    {ok, add_instance_fleet_output(), tuple()} |
    {error, any()} |
    {error, add_instance_fleet_errors(), tuple()}.
add_instance_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_instance_fleet(Client, Input, []).

-spec add_instance_fleet(aws_client:aws_client(), add_instance_fleet_input(), proplists:proplist()) ->
    {ok, add_instance_fleet_output(), tuple()} |
    {error, any()} |
    {error, add_instance_fleet_errors(), tuple()}.
add_instance_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddInstanceFleet">>, Input, Options).

%% @doc Adds one or more instance groups to a running cluster.
-spec add_instance_groups(aws_client:aws_client(), add_instance_groups_input()) ->
    {ok, add_instance_groups_output(), tuple()} |
    {error, any()} |
    {error, add_instance_groups_errors(), tuple()}.
add_instance_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_instance_groups(Client, Input, []).

-spec add_instance_groups(aws_client:aws_client(), add_instance_groups_input(), proplists:proplist()) ->
    {ok, add_instance_groups_output(), tuple()} |
    {error, any()} |
    {error, add_instance_groups_errors(), tuple()}.
add_instance_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddInstanceGroups">>, Input, Options).

%% @doc AddJobFlowSteps adds new steps to a running cluster.
%%
%% A maximum of 256 steps are allowed
%% in each job flow.
%%
%% If your cluster is long-running (such as a Hive data warehouse) or
%% complex, you may
%% require more than 256 steps to process your data. You can bypass the
%% 256-step limitation in
%% various ways, including using SSH to connect to the master node and
%% submitting queries
%% directly to the software running on the master node, such as Hive and
%% Hadoop.
%%
%% A step specifies the location of a JAR file stored either on the master
%% node of the
%% cluster or in Amazon S3. Each step is performed by the main function of
%% the main
%% class of the JAR file. The main class can be specified either in the
%% manifest of the JAR or
%% by using the MainFunction parameter of the step.
%%
%% Amazon EMR executes each step in the order listed. For a step to be
%% considered
%% complete, the main function must exit with a zero exit code and all Hadoop
%% jobs started
%% while the step was running must have completed and run successfully.
%%
%% You can only add steps to a cluster that is in one of the following
%% states: STARTING,
%% BOOTSTRAPPING, RUNNING, or WAITING.
%%
%% The string values passed into `HadoopJarStep' object cannot exceed a
%% total
%% of 10240 characters.
-spec add_job_flow_steps(aws_client:aws_client(), add_job_flow_steps_input()) ->
    {ok, add_job_flow_steps_output(), tuple()} |
    {error, any()} |
    {error, add_job_flow_steps_errors(), tuple()}.
add_job_flow_steps(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_job_flow_steps(Client, Input, []).

-spec add_job_flow_steps(aws_client:aws_client(), add_job_flow_steps_input(), proplists:proplist()) ->
    {ok, add_job_flow_steps_output(), tuple()} |
    {error, any()} |
    {error, add_job_flow_steps_errors(), tuple()}.
add_job_flow_steps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddJobFlowSteps">>, Input, Options).

%% @doc Adds tags to an Amazon EMR resource, such as a cluster or an Amazon
%% EMR
%% Studio.
%%
%% Tags make it easier to associate resources in various ways, such as
%% grouping
%% clusters to track your Amazon EMR resource allocation costs. For more
%% information,
%% see Tag
%% Clusters:
%% https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html.
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

%% @doc Cancels a pending step or steps in a running cluster.
%%
%% Available only in Amazon EMR versions 4.8.0 and later, excluding version
%% 5.0.0. A maximum of 256 steps are allowed in
%% each CancelSteps request. CancelSteps is idempotent but asynchronous; it
%% does not guarantee
%% that a step will be canceled, even if the request is successfully
%% submitted. When you use
%% Amazon EMR releases 5.28.0 and later, you can cancel steps that are in a
%% `PENDING' or `RUNNING' state. In earlier versions of Amazon EMR,
%% you can only cancel steps that are in a `PENDING' state.
-spec cancel_steps(aws_client:aws_client(), cancel_steps_input()) ->
    {ok, cancel_steps_output(), tuple()} |
    {error, any()} |
    {error, cancel_steps_errors(), tuple()}.
cancel_steps(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_steps(Client, Input, []).

-spec cancel_steps(aws_client:aws_client(), cancel_steps_input(), proplists:proplist()) ->
    {ok, cancel_steps_output(), tuple()} |
    {error, any()} |
    {error, cancel_steps_errors(), tuple()}.
cancel_steps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelSteps">>, Input, Options).

%% @doc Creates a security configuration, which is stored in the service and
%% can be specified
%% when a cluster is created.
-spec create_security_configuration(aws_client:aws_client(), create_security_configuration_input()) ->
    {ok, create_security_configuration_output(), tuple()} |
    {error, any()} |
    {error, create_security_configuration_errors(), tuple()}.
create_security_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_security_configuration(Client, Input, []).

-spec create_security_configuration(aws_client:aws_client(), create_security_configuration_input(), proplists:proplist()) ->
    {ok, create_security_configuration_output(), tuple()} |
    {error, any()} |
    {error, create_security_configuration_errors(), tuple()}.
create_security_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSecurityConfiguration">>, Input, Options).

%% @doc Creates a new Amazon EMR Studio.
-spec create_studio(aws_client:aws_client(), create_studio_input()) ->
    {ok, create_studio_output(), tuple()} |
    {error, any()} |
    {error, create_studio_errors(), tuple()}.
create_studio(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_studio(Client, Input, []).

-spec create_studio(aws_client:aws_client(), create_studio_input(), proplists:proplist()) ->
    {ok, create_studio_output(), tuple()} |
    {error, any()} |
    {error, create_studio_errors(), tuple()}.
create_studio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStudio">>, Input, Options).

%% @doc Maps a user or group to the Amazon EMR Studio specified by
%% `StudioId', and applies a session policy to refine Studio permissions
%% for that
%% user or group.
%%
%% Use `CreateStudioSessionMapping' to assign users to a Studio when
%% you use IAM Identity Center authentication. For instructions on how to
%% assign users to a
%% Studio when you use IAM authentication, see Assign a user or group to your
%% EMR Studio:
%% https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-studio-manage-users.html#emr-studio-assign-users-groups.
-spec create_studio_session_mapping(aws_client:aws_client(), create_studio_session_mapping_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_studio_session_mapping_errors(), tuple()}.
create_studio_session_mapping(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_studio_session_mapping(Client, Input, []).

-spec create_studio_session_mapping(aws_client:aws_client(), create_studio_session_mapping_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_studio_session_mapping_errors(), tuple()}.
create_studio_session_mapping(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStudioSessionMapping">>, Input, Options).

%% @doc Deletes a security configuration.
-spec delete_security_configuration(aws_client:aws_client(), delete_security_configuration_input()) ->
    {ok, delete_security_configuration_output(), tuple()} |
    {error, any()} |
    {error, delete_security_configuration_errors(), tuple()}.
delete_security_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_security_configuration(Client, Input, []).

-spec delete_security_configuration(aws_client:aws_client(), delete_security_configuration_input(), proplists:proplist()) ->
    {ok, delete_security_configuration_output(), tuple()} |
    {error, any()} |
    {error, delete_security_configuration_errors(), tuple()}.
delete_security_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSecurityConfiguration">>, Input, Options).

%% @doc Removes an Amazon EMR Studio from the Studio metadata store.
-spec delete_studio(aws_client:aws_client(), delete_studio_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_studio_errors(), tuple()}.
delete_studio(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_studio(Client, Input, []).

-spec delete_studio(aws_client:aws_client(), delete_studio_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_studio_errors(), tuple()}.
delete_studio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStudio">>, Input, Options).

%% @doc Removes a user or group from an Amazon EMR Studio.
-spec delete_studio_session_mapping(aws_client:aws_client(), delete_studio_session_mapping_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_studio_session_mapping_errors(), tuple()}.
delete_studio_session_mapping(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_studio_session_mapping(Client, Input, []).

-spec delete_studio_session_mapping(aws_client:aws_client(), delete_studio_session_mapping_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_studio_session_mapping_errors(), tuple()}.
delete_studio_session_mapping(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStudioSessionMapping">>, Input, Options).

%% @doc Provides cluster-level details including status, hardware and
%% software configuration,
%% VPC settings, and so on.
-spec describe_cluster(aws_client:aws_client(), describe_cluster_input()) ->
    {ok, describe_cluster_output(), tuple()} |
    {error, any()} |
    {error, describe_cluster_errors(), tuple()}.
describe_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster(Client, Input, []).

-spec describe_cluster(aws_client:aws_client(), describe_cluster_input(), proplists:proplist()) ->
    {ok, describe_cluster_output(), tuple()} |
    {error, any()} |
    {error, describe_cluster_errors(), tuple()}.
describe_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCluster">>, Input, Options).

%% @doc This API is no longer supported and will eventually be removed.
%%
%% We recommend you use
%% `ListClusters', `DescribeCluster', `ListSteps',
%% `ListInstanceGroups' and `ListBootstrapActions' instead.
%%
%% DescribeJobFlows returns a list of job flows that match all of the
%% supplied parameters.
%% The parameters can include a list of job flow IDs, job flow states, and
%% restrictions on job
%% flow creation date and time.
%%
%% Regardless of supplied parameters, only job flows created within the last
%% two months are
%% returned.
%%
%% If no parameters are supplied, then job flows matching either of the
%% following criteria
%% are returned:
%%
%% Job flows created and completed in the last two weeks
%%
%% Job flows created within the last two months that are in one of the
%% following
%% states: `RUNNING', `WAITING', `SHUTTING_DOWN',
%% `STARTING'
%%
%% Amazon EMR can return a maximum of 512 job flow descriptions.
-spec describe_job_flows(aws_client:aws_client(), describe_job_flows_input()) ->
    {ok, describe_job_flows_output(), tuple()} |
    {error, any()} |
    {error, describe_job_flows_errors(), tuple()}.
describe_job_flows(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_job_flows(Client, Input, []).

-spec describe_job_flows(aws_client:aws_client(), describe_job_flows_input(), proplists:proplist()) ->
    {ok, describe_job_flows_output(), tuple()} |
    {error, any()} |
    {error, describe_job_flows_errors(), tuple()}.
describe_job_flows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeJobFlows">>, Input, Options).

%% @doc Provides details of a notebook execution.
-spec describe_notebook_execution(aws_client:aws_client(), describe_notebook_execution_input()) ->
    {ok, describe_notebook_execution_output(), tuple()} |
    {error, any()} |
    {error, describe_notebook_execution_errors(), tuple()}.
describe_notebook_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_notebook_execution(Client, Input, []).

-spec describe_notebook_execution(aws_client:aws_client(), describe_notebook_execution_input(), proplists:proplist()) ->
    {ok, describe_notebook_execution_output(), tuple()} |
    {error, any()} |
    {error, describe_notebook_execution_errors(), tuple()}.
describe_notebook_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNotebookExecution">>, Input, Options).

%% @doc Provides Amazon EMR release label details, such as the releases
%% available the
%% Region where the API request is run, and the available applications for a
%% specific Amazon EMR release label.
%%
%% Can also list Amazon EMR releases that support a
%% specified version of Spark.
-spec describe_release_label(aws_client:aws_client(), describe_release_label_input()) ->
    {ok, describe_release_label_output(), tuple()} |
    {error, any()} |
    {error, describe_release_label_errors(), tuple()}.
describe_release_label(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_release_label(Client, Input, []).

-spec describe_release_label(aws_client:aws_client(), describe_release_label_input(), proplists:proplist()) ->
    {ok, describe_release_label_output(), tuple()} |
    {error, any()} |
    {error, describe_release_label_errors(), tuple()}.
describe_release_label(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeReleaseLabel">>, Input, Options).

%% @doc Provides the details of a security configuration by returning the
%% configuration
%% JSON.
-spec describe_security_configuration(aws_client:aws_client(), describe_security_configuration_input()) ->
    {ok, describe_security_configuration_output(), tuple()} |
    {error, any()} |
    {error, describe_security_configuration_errors(), tuple()}.
describe_security_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_security_configuration(Client, Input, []).

-spec describe_security_configuration(aws_client:aws_client(), describe_security_configuration_input(), proplists:proplist()) ->
    {ok, describe_security_configuration_output(), tuple()} |
    {error, any()} |
    {error, describe_security_configuration_errors(), tuple()}.
describe_security_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSecurityConfiguration">>, Input, Options).

%% @doc Provides more detail about the cluster step.
-spec describe_step(aws_client:aws_client(), describe_step_input()) ->
    {ok, describe_step_output(), tuple()} |
    {error, any()} |
    {error, describe_step_errors(), tuple()}.
describe_step(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_step(Client, Input, []).

-spec describe_step(aws_client:aws_client(), describe_step_input(), proplists:proplist()) ->
    {ok, describe_step_output(), tuple()} |
    {error, any()} |
    {error, describe_step_errors(), tuple()}.
describe_step(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStep">>, Input, Options).

%% @doc Returns details for the specified Amazon EMR Studio including ID,
%% Name, VPC,
%% Studio access URL, and so on.
-spec describe_studio(aws_client:aws_client(), describe_studio_input()) ->
    {ok, describe_studio_output(), tuple()} |
    {error, any()} |
    {error, describe_studio_errors(), tuple()}.
describe_studio(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_studio(Client, Input, []).

-spec describe_studio(aws_client:aws_client(), describe_studio_input(), proplists:proplist()) ->
    {ok, describe_studio_output(), tuple()} |
    {error, any()} |
    {error, describe_studio_errors(), tuple()}.
describe_studio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStudio">>, Input, Options).

%% @doc Returns the auto-termination policy for an Amazon EMR cluster.
-spec get_auto_termination_policy(aws_client:aws_client(), get_auto_termination_policy_input()) ->
    {ok, get_auto_termination_policy_output(), tuple()} |
    {error, any()}.
get_auto_termination_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_auto_termination_policy(Client, Input, []).

-spec get_auto_termination_policy(aws_client:aws_client(), get_auto_termination_policy_input(), proplists:proplist()) ->
    {ok, get_auto_termination_policy_output(), tuple()} |
    {error, any()}.
get_auto_termination_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAutoTerminationPolicy">>, Input, Options).

%% @doc Returns the Amazon EMR block public access configuration for your
%% Amazon Web Services account in the current Region.
%%
%% For more information see Configure Block
%% Public Access for Amazon EMR:
%% https://docs.aws.amazon.com/emr/latest/ManagementGuide/configure-block-public-access.html
%% in the Amazon EMR
%% Management Guide.
-spec get_block_public_access_configuration(aws_client:aws_client(), get_block_public_access_configuration_input()) ->
    {ok, get_block_public_access_configuration_output(), tuple()} |
    {error, any()} |
    {error, get_block_public_access_configuration_errors(), tuple()}.
get_block_public_access_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_block_public_access_configuration(Client, Input, []).

-spec get_block_public_access_configuration(aws_client:aws_client(), get_block_public_access_configuration_input(), proplists:proplist()) ->
    {ok, get_block_public_access_configuration_output(), tuple()} |
    {error, any()} |
    {error, get_block_public_access_configuration_errors(), tuple()}.
get_block_public_access_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetBlockPublicAccessConfiguration">>, Input, Options).

%% @doc Provides temporary, HTTP basic credentials that are associated with a
%% given runtime
%% IAM role and used by a cluster with fine-grained access control
%% activated.
%%
%% You can use these credentials to connect to cluster endpoints that support
%% username and password authentication.
-spec get_cluster_session_credentials(aws_client:aws_client(), get_cluster_session_credentials_input()) ->
    {ok, get_cluster_session_credentials_output(), tuple()} |
    {error, any()} |
    {error, get_cluster_session_credentials_errors(), tuple()}.
get_cluster_session_credentials(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_cluster_session_credentials(Client, Input, []).

-spec get_cluster_session_credentials(aws_client:aws_client(), get_cluster_session_credentials_input(), proplists:proplist()) ->
    {ok, get_cluster_session_credentials_output(), tuple()} |
    {error, any()} |
    {error, get_cluster_session_credentials_errors(), tuple()}.
get_cluster_session_credentials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetClusterSessionCredentials">>, Input, Options).

%% @doc Fetches the attached managed scaling policy for an Amazon EMR
%% cluster.
-spec get_managed_scaling_policy(aws_client:aws_client(), get_managed_scaling_policy_input()) ->
    {ok, get_managed_scaling_policy_output(), tuple()} |
    {error, any()}.
get_managed_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_managed_scaling_policy(Client, Input, []).

-spec get_managed_scaling_policy(aws_client:aws_client(), get_managed_scaling_policy_input(), proplists:proplist()) ->
    {ok, get_managed_scaling_policy_output(), tuple()} |
    {error, any()}.
get_managed_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetManagedScalingPolicy">>, Input, Options).

%% @doc Fetches mapping details for the specified Amazon EMR Studio and
%% identity (user
%% or group).
-spec get_studio_session_mapping(aws_client:aws_client(), get_studio_session_mapping_input()) ->
    {ok, get_studio_session_mapping_output(), tuple()} |
    {error, any()} |
    {error, get_studio_session_mapping_errors(), tuple()}.
get_studio_session_mapping(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_studio_session_mapping(Client, Input, []).

-spec get_studio_session_mapping(aws_client:aws_client(), get_studio_session_mapping_input(), proplists:proplist()) ->
    {ok, get_studio_session_mapping_output(), tuple()} |
    {error, any()} |
    {error, get_studio_session_mapping_errors(), tuple()}.
get_studio_session_mapping(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetStudioSessionMapping">>, Input, Options).

%% @doc Provides information about the bootstrap actions associated with a
%% cluster.
-spec list_bootstrap_actions(aws_client:aws_client(), list_bootstrap_actions_input()) ->
    {ok, list_bootstrap_actions_output(), tuple()} |
    {error, any()} |
    {error, list_bootstrap_actions_errors(), tuple()}.
list_bootstrap_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_bootstrap_actions(Client, Input, []).

-spec list_bootstrap_actions(aws_client:aws_client(), list_bootstrap_actions_input(), proplists:proplist()) ->
    {ok, list_bootstrap_actions_output(), tuple()} |
    {error, any()} |
    {error, list_bootstrap_actions_errors(), tuple()}.
list_bootstrap_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListBootstrapActions">>, Input, Options).

%% @doc Provides the status of all clusters visible to this Amazon Web
%% Services account.
%%
%% Allows
%% you to filter the list of clusters based on certain criteria; for example,
%% filtering by
%% cluster creation date and time or by status. This call returns a maximum
%% of 50 clusters in
%% unsorted order per call, but returns a marker to track the paging of the
%% cluster list
%% across multiple ListClusters calls.
-spec list_clusters(aws_client:aws_client(), list_clusters_input()) ->
    {ok, list_clusters_output(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_clusters(Client, Input, []).

-spec list_clusters(aws_client:aws_client(), list_clusters_input(), proplists:proplist()) ->
    {ok, list_clusters_output(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListClusters">>, Input, Options).

%% @doc Lists all available details about the instance fleets in a cluster.
%%
%% The instance fleet configuration is available only in Amazon EMR releases
%% 4.8.0 and later, excluding 5.0.x versions.
-spec list_instance_fleets(aws_client:aws_client(), list_instance_fleets_input()) ->
    {ok, list_instance_fleets_output(), tuple()} |
    {error, any()} |
    {error, list_instance_fleets_errors(), tuple()}.
list_instance_fleets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instance_fleets(Client, Input, []).

-spec list_instance_fleets(aws_client:aws_client(), list_instance_fleets_input(), proplists:proplist()) ->
    {ok, list_instance_fleets_output(), tuple()} |
    {error, any()} |
    {error, list_instance_fleets_errors(), tuple()}.
list_instance_fleets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstanceFleets">>, Input, Options).

%% @doc Provides all available details about the instance groups in a
%% cluster.
-spec list_instance_groups(aws_client:aws_client(), list_instance_groups_input()) ->
    {ok, list_instance_groups_output(), tuple()} |
    {error, any()} |
    {error, list_instance_groups_errors(), tuple()}.
list_instance_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instance_groups(Client, Input, []).

-spec list_instance_groups(aws_client:aws_client(), list_instance_groups_input(), proplists:proplist()) ->
    {ok, list_instance_groups_output(), tuple()} |
    {error, any()} |
    {error, list_instance_groups_errors(), tuple()}.
list_instance_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstanceGroups">>, Input, Options).

%% @doc Provides information for all active Amazon EC2 instances and Amazon
%% EC2
%% instances terminated in the last 30 days, up to a maximum of 2,000.
%%
%% Amazon EC2
%% instances in any of the following states are considered active:
%% AWAITING_FULFILLMENT,
%% PROVISIONING, BOOTSTRAPPING, RUNNING.
-spec list_instances(aws_client:aws_client(), list_instances_input()) ->
    {ok, list_instances_output(), tuple()} |
    {error, any()} |
    {error, list_instances_errors(), tuple()}.
list_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_instances(Client, Input, []).

-spec list_instances(aws_client:aws_client(), list_instances_input(), proplists:proplist()) ->
    {ok, list_instances_output(), tuple()} |
    {error, any()} |
    {error, list_instances_errors(), tuple()}.
list_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInstances">>, Input, Options).

%% @doc Provides summaries of all notebook executions.
%%
%% You can filter the list based on multiple
%% criteria such as status, time range, and editor id. Returns a maximum of
%% 50 notebook
%% executions and a marker to track the paging of a longer notebook execution
%% list across
%% multiple `ListNotebookExecutions' calls.
-spec list_notebook_executions(aws_client:aws_client(), list_notebook_executions_input()) ->
    {ok, list_notebook_executions_output(), tuple()} |
    {error, any()} |
    {error, list_notebook_executions_errors(), tuple()}.
list_notebook_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_notebook_executions(Client, Input, []).

-spec list_notebook_executions(aws_client:aws_client(), list_notebook_executions_input(), proplists:proplist()) ->
    {ok, list_notebook_executions_output(), tuple()} |
    {error, any()} |
    {error, list_notebook_executions_errors(), tuple()}.
list_notebook_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListNotebookExecutions">>, Input, Options).

%% @doc Retrieves release labels of Amazon EMR services in the Region where
%% the API is
%% called.
-spec list_release_labels(aws_client:aws_client(), list_release_labels_input()) ->
    {ok, list_release_labels_output(), tuple()} |
    {error, any()} |
    {error, list_release_labels_errors(), tuple()}.
list_release_labels(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_release_labels(Client, Input, []).

-spec list_release_labels(aws_client:aws_client(), list_release_labels_input(), proplists:proplist()) ->
    {ok, list_release_labels_output(), tuple()} |
    {error, any()} |
    {error, list_release_labels_errors(), tuple()}.
list_release_labels(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListReleaseLabels">>, Input, Options).

%% @doc Lists all the security configurations visible to this account,
%% providing their creation
%% dates and times, and their names.
%%
%% This call returns a maximum of 50 clusters per call, but
%% returns a marker to track the paging of the cluster list across multiple
%% ListSecurityConfigurations calls.
-spec list_security_configurations(aws_client:aws_client(), list_security_configurations_input()) ->
    {ok, list_security_configurations_output(), tuple()} |
    {error, any()} |
    {error, list_security_configurations_errors(), tuple()}.
list_security_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_security_configurations(Client, Input, []).

-spec list_security_configurations(aws_client:aws_client(), list_security_configurations_input(), proplists:proplist()) ->
    {ok, list_security_configurations_output(), tuple()} |
    {error, any()} |
    {error, list_security_configurations_errors(), tuple()}.
list_security_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSecurityConfigurations">>, Input, Options).

%% @doc Provides a list of steps for the cluster in reverse order unless you
%% specify
%% `stepIds' with the request or filter by `StepStates'.
%%
%% You can
%% specify a maximum of 10 `stepIDs'. The CLI automatically
%% paginates results to return a list greater than 50 steps. To return more
%% than 50 steps
%% using the CLI, specify a `Marker', which is a pagination token
%% that indicates the next set of steps to retrieve.
-spec list_steps(aws_client:aws_client(), list_steps_input()) ->
    {ok, list_steps_output(), tuple()} |
    {error, any()} |
    {error, list_steps_errors(), tuple()}.
list_steps(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_steps(Client, Input, []).

-spec list_steps(aws_client:aws_client(), list_steps_input(), proplists:proplist()) ->
    {ok, list_steps_output(), tuple()} |
    {error, any()} |
    {error, list_steps_errors(), tuple()}.
list_steps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSteps">>, Input, Options).

%% @doc Returns a list of all user or group session mappings for the Amazon
%% EMR Studio
%% specified by `StudioId'.
-spec list_studio_session_mappings(aws_client:aws_client(), list_studio_session_mappings_input()) ->
    {ok, list_studio_session_mappings_output(), tuple()} |
    {error, any()} |
    {error, list_studio_session_mappings_errors(), tuple()}.
list_studio_session_mappings(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_studio_session_mappings(Client, Input, []).

-spec list_studio_session_mappings(aws_client:aws_client(), list_studio_session_mappings_input(), proplists:proplist()) ->
    {ok, list_studio_session_mappings_output(), tuple()} |
    {error, any()} |
    {error, list_studio_session_mappings_errors(), tuple()}.
list_studio_session_mappings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStudioSessionMappings">>, Input, Options).

%% @doc Returns a list of all Amazon EMR Studios associated with the Amazon
%% Web Services account.
%%
%% The list includes details such as ID, Studio Access URL, and
%% creation time for each Studio.
-spec list_studios(aws_client:aws_client(), list_studios_input()) ->
    {ok, list_studios_output(), tuple()} |
    {error, any()} |
    {error, list_studios_errors(), tuple()}.
list_studios(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_studios(Client, Input, []).

-spec list_studios(aws_client:aws_client(), list_studios_input(), proplists:proplist()) ->
    {ok, list_studios_output(), tuple()} |
    {error, any()} |
    {error, list_studios_errors(), tuple()}.
list_studios(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStudios">>, Input, Options).

%% @doc A list of the instance types that Amazon EMR supports.
%%
%% You can filter the
%% list by Amazon Web Services Region and Amazon EMR release.
-spec list_supported_instance_types(aws_client:aws_client(), list_supported_instance_types_input()) ->
    {ok, list_supported_instance_types_output(), tuple()} |
    {error, any()} |
    {error, list_supported_instance_types_errors(), tuple()}.
list_supported_instance_types(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_supported_instance_types(Client, Input, []).

-spec list_supported_instance_types(aws_client:aws_client(), list_supported_instance_types_input(), proplists:proplist()) ->
    {ok, list_supported_instance_types_output(), tuple()} |
    {error, any()} |
    {error, list_supported_instance_types_errors(), tuple()}.
list_supported_instance_types(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSupportedInstanceTypes">>, Input, Options).

%% @doc Modifies the number of steps that can be executed concurrently for
%% the cluster specified
%% using ClusterID.
-spec modify_cluster(aws_client:aws_client(), modify_cluster_input()) ->
    {ok, modify_cluster_output(), tuple()} |
    {error, any()} |
    {error, modify_cluster_errors(), tuple()}.
modify_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cluster(Client, Input, []).

-spec modify_cluster(aws_client:aws_client(), modify_cluster_input(), proplists:proplist()) ->
    {ok, modify_cluster_output(), tuple()} |
    {error, any()} |
    {error, modify_cluster_errors(), tuple()}.
modify_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCluster">>, Input, Options).

%% @doc Modifies the target On-Demand and target Spot capacities for the
%% instance fleet with the
%% specified InstanceFleetID within the cluster specified using ClusterID.
%%
%% The call either
%% succeeds or fails atomically.
%%
%% The instance fleet configuration is available only in Amazon EMR releases
%% 4.8.0 and later, excluding 5.0.x versions.
-spec modify_instance_fleet(aws_client:aws_client(), modify_instance_fleet_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, modify_instance_fleet_errors(), tuple()}.
modify_instance_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_instance_fleet(Client, Input, []).

-spec modify_instance_fleet(aws_client:aws_client(), modify_instance_fleet_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, modify_instance_fleet_errors(), tuple()}.
modify_instance_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyInstanceFleet">>, Input, Options).

%% @doc ModifyInstanceGroups modifies the number of nodes and configuration
%% settings of an
%% instance group.
%%
%% The input parameters include the new target instance count for the group
%% and the instance group ID. The call will either succeed or fail
%% atomically.
-spec modify_instance_groups(aws_client:aws_client(), modify_instance_groups_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, modify_instance_groups_errors(), tuple()}.
modify_instance_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_instance_groups(Client, Input, []).

-spec modify_instance_groups(aws_client:aws_client(), modify_instance_groups_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, modify_instance_groups_errors(), tuple()}.
modify_instance_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyInstanceGroups">>, Input, Options).

%% @doc Creates or updates an automatic scaling policy for a core instance
%% group or task
%% instance group in an Amazon EMR cluster.
%%
%% The automatic scaling policy defines how
%% an instance group dynamically adds and terminates Amazon EC2 instances in
%% response
%% to the value of a CloudWatch metric.
-spec put_auto_scaling_policy(aws_client:aws_client(), put_auto_scaling_policy_input()) ->
    {ok, put_auto_scaling_policy_output(), tuple()} |
    {error, any()}.
put_auto_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_auto_scaling_policy(Client, Input, []).

-spec put_auto_scaling_policy(aws_client:aws_client(), put_auto_scaling_policy_input(), proplists:proplist()) ->
    {ok, put_auto_scaling_policy_output(), tuple()} |
    {error, any()}.
put_auto_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAutoScalingPolicy">>, Input, Options).

%% @doc
%% Auto-termination is supported in Amazon EMR releases 5.30.0 and 6.1.0 and
%% later.
%%
%% For more information, see Using an
%% auto-termination policy:
%% https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-auto-termination-policy.html.
%%
%% Creates or updates an auto-termination policy for an Amazon EMR cluster.
%% An
%% auto-termination policy defines the amount of idle time in seconds after
%% which a cluster
%% automatically terminates. For alternative cluster termination options, see
%% Control
%% cluster termination:
%% https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-termination.html.
-spec put_auto_termination_policy(aws_client:aws_client(), put_auto_termination_policy_input()) ->
    {ok, put_auto_termination_policy_output(), tuple()} |
    {error, any()}.
put_auto_termination_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_auto_termination_policy(Client, Input, []).

-spec put_auto_termination_policy(aws_client:aws_client(), put_auto_termination_policy_input(), proplists:proplist()) ->
    {ok, put_auto_termination_policy_output(), tuple()} |
    {error, any()}.
put_auto_termination_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAutoTerminationPolicy">>, Input, Options).

%% @doc Creates or updates an Amazon EMR block public access configuration
%% for your
%% Amazon Web Services account in the current Region.
%%
%% For more information see Configure Block
%% Public Access for Amazon EMR:
%% https://docs.aws.amazon.com/emr/latest/ManagementGuide/configure-block-public-access.html
%% in the Amazon EMR
%% Management Guide.
-spec put_block_public_access_configuration(aws_client:aws_client(), put_block_public_access_configuration_input()) ->
    {ok, put_block_public_access_configuration_output(), tuple()} |
    {error, any()} |
    {error, put_block_public_access_configuration_errors(), tuple()}.
put_block_public_access_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_block_public_access_configuration(Client, Input, []).

-spec put_block_public_access_configuration(aws_client:aws_client(), put_block_public_access_configuration_input(), proplists:proplist()) ->
    {ok, put_block_public_access_configuration_output(), tuple()} |
    {error, any()} |
    {error, put_block_public_access_configuration_errors(), tuple()}.
put_block_public_access_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutBlockPublicAccessConfiguration">>, Input, Options).

%% @doc Creates or updates a managed scaling policy for an Amazon EMR
%% cluster.
%%
%% The
%% managed scaling policy defines the limits for resources, such as Amazon
%% EC2
%% instances that can be added or terminated from a cluster. The policy only
%% applies to the
%% core and task nodes. The master node cannot be scaled after initial
%% configuration.
-spec put_managed_scaling_policy(aws_client:aws_client(), put_managed_scaling_policy_input()) ->
    {ok, put_managed_scaling_policy_output(), tuple()} |
    {error, any()}.
put_managed_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_managed_scaling_policy(Client, Input, []).

-spec put_managed_scaling_policy(aws_client:aws_client(), put_managed_scaling_policy_input(), proplists:proplist()) ->
    {ok, put_managed_scaling_policy_output(), tuple()} |
    {error, any()}.
put_managed_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutManagedScalingPolicy">>, Input, Options).

%% @doc Removes an automatic scaling policy from a specified instance group
%% within an Amazon EMR cluster.
-spec remove_auto_scaling_policy(aws_client:aws_client(), remove_auto_scaling_policy_input()) ->
    {ok, remove_auto_scaling_policy_output(), tuple()} |
    {error, any()}.
remove_auto_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_auto_scaling_policy(Client, Input, []).

-spec remove_auto_scaling_policy(aws_client:aws_client(), remove_auto_scaling_policy_input(), proplists:proplist()) ->
    {ok, remove_auto_scaling_policy_output(), tuple()} |
    {error, any()}.
remove_auto_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveAutoScalingPolicy">>, Input, Options).

%% @doc Removes an auto-termination policy from an Amazon EMR cluster.
-spec remove_auto_termination_policy(aws_client:aws_client(), remove_auto_termination_policy_input()) ->
    {ok, remove_auto_termination_policy_output(), tuple()} |
    {error, any()}.
remove_auto_termination_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_auto_termination_policy(Client, Input, []).

-spec remove_auto_termination_policy(aws_client:aws_client(), remove_auto_termination_policy_input(), proplists:proplist()) ->
    {ok, remove_auto_termination_policy_output(), tuple()} |
    {error, any()}.
remove_auto_termination_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveAutoTerminationPolicy">>, Input, Options).

%% @doc Removes a managed scaling policy from a specified Amazon EMR cluster.
-spec remove_managed_scaling_policy(aws_client:aws_client(), remove_managed_scaling_policy_input()) ->
    {ok, remove_managed_scaling_policy_output(), tuple()} |
    {error, any()}.
remove_managed_scaling_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_managed_scaling_policy(Client, Input, []).

-spec remove_managed_scaling_policy(aws_client:aws_client(), remove_managed_scaling_policy_input(), proplists:proplist()) ->
    {ok, remove_managed_scaling_policy_output(), tuple()} |
    {error, any()}.
remove_managed_scaling_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveManagedScalingPolicy">>, Input, Options).

%% @doc Removes tags from an Amazon EMR resource, such as a cluster or Amazon
%% EMR Studio.
%%
%% Tags make it easier to associate resources in various ways, such as
%% grouping
%% clusters to track your Amazon EMR resource allocation costs. For more
%% information,
%% see Tag
%% Clusters:
%% https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html.
%%
%% The following example removes the stack tag with value Prod from a
%% cluster:
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

%% @doc RunJobFlow creates and starts running a new cluster (job flow).
%%
%% The cluster runs the
%% steps specified. After the steps complete, the cluster stops and the HDFS
%% partition is
%% lost. To prevent loss of data, configure the last step of the job flow to
%% store results in
%% Amazon S3. If the `JobFlowInstancesConfig'
%% `KeepJobFlowAliveWhenNoSteps' parameter is set to `TRUE', the
%% cluster
%% transitions to the WAITING state rather than shutting down after the steps
%% have completed.
%%
%% For additional protection, you can set the `JobFlowInstancesConfig'
%% `TerminationProtected' parameter to `TRUE' to lock the cluster and
%% prevent it from being terminated by API call, user intervention, or in the
%% event of a job
%% flow error.
%%
%% A maximum of 256 steps are allowed in each job flow.
%%
%% If your cluster is long-running (such as a Hive data warehouse) or
%% complex, you may
%% require more than 256 steps to process your data. You can bypass the
%% 256-step limitation in
%% various ways, including using the SSH shell to connect to the master node
%% and submitting
%% queries directly to the software running on the master node, such as Hive
%% and
%% Hadoop.
%%
%% For long-running clusters, we recommend that you periodically store your
%% results.
%%
%% The instance fleets configuration is available only in Amazon EMR releases
%% 4.8.0 and later, excluding 5.0.x versions. The RunJobFlow request can
%% contain
%% InstanceFleets parameters or InstanceGroups parameters, but not both.
-spec run_job_flow(aws_client:aws_client(), run_job_flow_input()) ->
    {ok, run_job_flow_output(), tuple()} |
    {error, any()} |
    {error, run_job_flow_errors(), tuple()}.
run_job_flow(Client, Input)
  when is_map(Client), is_map(Input) ->
    run_job_flow(Client, Input, []).

-spec run_job_flow(aws_client:aws_client(), run_job_flow_input(), proplists:proplist()) ->
    {ok, run_job_flow_output(), tuple()} |
    {error, any()} |
    {error, run_job_flow_errors(), tuple()}.
run_job_flow(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RunJobFlow">>, Input, Options).

%% @doc You can use the `SetKeepJobFlowAliveWhenNoSteps' to configure a
%% cluster (job flow) to terminate after the step execution, i.e., all your
%% steps are executed.
%%
%% If you want a transient cluster that shuts down after the last of the
%% current executing steps are completed,
%% you can configure `SetKeepJobFlowAliveWhenNoSteps' to false. If you
%% want a long running cluster, configure
%% `SetKeepJobFlowAliveWhenNoSteps' to true.
%%
%% For more information, see Managing Cluster Termination:
%% https://docs.aws.amazon.com/emr/latest/ManagementGuide/UsingEMR_TerminationProtection.html
%% in the Amazon EMR Management Guide.
-spec set_keep_job_flow_alive_when_no_steps(aws_client:aws_client(), set_keep_job_flow_alive_when_no_steps_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_keep_job_flow_alive_when_no_steps_errors(), tuple()}.
set_keep_job_flow_alive_when_no_steps(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_keep_job_flow_alive_when_no_steps(Client, Input, []).

-spec set_keep_job_flow_alive_when_no_steps(aws_client:aws_client(), set_keep_job_flow_alive_when_no_steps_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_keep_job_flow_alive_when_no_steps_errors(), tuple()}.
set_keep_job_flow_alive_when_no_steps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetKeepJobFlowAliveWhenNoSteps">>, Input, Options).

%% @doc SetTerminationProtection locks a cluster (job flow) so the Amazon EC2
%% instances
%% in the cluster cannot be terminated by user intervention, an API call, or
%% in the event of a
%% job-flow error.
%%
%% The cluster still terminates upon successful completion of the job flow.
%% Calling `SetTerminationProtection' on a cluster is similar to calling
%% the
%% Amazon EC2
%% `DisableAPITermination' API on all Amazon EC2 instances in a
%% cluster.
%%
%% `SetTerminationProtection' is used to prevent accidental termination
%% of a
%% cluster and to ensure that in the event of an error, the instances persist
%% so that you can
%% recover any data stored in their ephemeral instance storage.
%%
%% To terminate a cluster that has been locked by setting
%% `SetTerminationProtection' to `true', you must first unlock the
%% job flow by a subsequent call to `SetTerminationProtection' in which
%% you set the
%% value to `false'.
%%
%% For more information, see Managing Cluster
%% Termination:
%% https://docs.aws.amazon.com/emr/latest/ManagementGuide/UsingEMR_TerminationProtection.html
%% in the Amazon EMR Management Guide.
-spec set_termination_protection(aws_client:aws_client(), set_termination_protection_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_termination_protection_errors(), tuple()}.
set_termination_protection(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_termination_protection(Client, Input, []).

-spec set_termination_protection(aws_client:aws_client(), set_termination_protection_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_termination_protection_errors(), tuple()}.
set_termination_protection(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetTerminationProtection">>, Input, Options).

%% @doc Specify whether to enable unhealthy node replacement, which lets
%% Amazon EMR gracefully
%% replace core nodes on a cluster if any nodes become unhealthy.
%%
%% For example, a node becomes
%% unhealthy if disk usage is above 90%. If unhealthy node replacement is on
%% and `TerminationProtected' are off,
%% Amazon EMR immediately terminates the unhealthy core nodes. To use
%% unhealthy node replacement
%% and retain unhealthy core nodes, use to turn on
%% termination protection. In such cases, Amazon EMR adds
%% the unhealthy nodes to a denylist, reducing job interruptions and
%% failures.
%%
%% If unhealthy node replacement is on, Amazon EMR
%% notifies YARN and other applications on the cluster to stop scheduling
%% tasks
%% with these nodes, moves the data, and then terminates the nodes.
%%
%% For more information, see graceful
%% node replacement:
%% https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-node-replacement.html
%% in the Amazon EMR Management Guide.
-spec set_unhealthy_node_replacement(aws_client:aws_client(), set_unhealthy_node_replacement_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_unhealthy_node_replacement_errors(), tuple()}.
set_unhealthy_node_replacement(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_unhealthy_node_replacement(Client, Input, []).

-spec set_unhealthy_node_replacement(aws_client:aws_client(), set_unhealthy_node_replacement_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_unhealthy_node_replacement_errors(), tuple()}.
set_unhealthy_node_replacement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetUnhealthyNodeReplacement">>, Input, Options).

%% @doc
%% The SetVisibleToAllUsers parameter is no longer supported.
%%
%% Your cluster may be
%% visible to all users in your account. To restrict cluster access using an
%% IAM policy, see Identity and Access
%% Management for Amazon EMR:
%% https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-access-IAM.html.
%%
%% Sets the `Cluster$VisibleToAllUsers' value for an Amazon EMR
%% cluster. When `true', IAM principals in the Amazon Web Services
%% account can perform Amazon EMR cluster actions that their IAM policies
%% allow. When `false', only the IAM
%% principal that created the cluster and the Amazon Web Services account
%% root user can perform
%% Amazon EMR actions on the cluster, regardless of IAM permissions
%% policies attached to other IAM principals.
%%
%% This action works on running clusters. When you create a cluster, use the
%% `RunJobFlowInput$VisibleToAllUsers' parameter.
%%
%% For more information, see Understanding the Amazon EMR Cluster
%% VisibleToAllUsers Setting:
%% https://docs.aws.amazon.com/emr/latest/ManagementGuide/security_IAM_emr-with-IAM.html#security_set_visible_to_all_users
%% in the
%% Amazon EMR Management Guide.
-spec set_visible_to_all_users(aws_client:aws_client(), set_visible_to_all_users_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_visible_to_all_users_errors(), tuple()}.
set_visible_to_all_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_visible_to_all_users(Client, Input, []).

-spec set_visible_to_all_users(aws_client:aws_client(), set_visible_to_all_users_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, set_visible_to_all_users_errors(), tuple()}.
set_visible_to_all_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetVisibleToAllUsers">>, Input, Options).

%% @doc Starts a notebook execution.
-spec start_notebook_execution(aws_client:aws_client(), start_notebook_execution_input()) ->
    {ok, start_notebook_execution_output(), tuple()} |
    {error, any()} |
    {error, start_notebook_execution_errors(), tuple()}.
start_notebook_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_notebook_execution(Client, Input, []).

-spec start_notebook_execution(aws_client:aws_client(), start_notebook_execution_input(), proplists:proplist()) ->
    {ok, start_notebook_execution_output(), tuple()} |
    {error, any()} |
    {error, start_notebook_execution_errors(), tuple()}.
start_notebook_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartNotebookExecution">>, Input, Options).

%% @doc Stops a notebook execution.
-spec stop_notebook_execution(aws_client:aws_client(), stop_notebook_execution_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_notebook_execution_errors(), tuple()}.
stop_notebook_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_notebook_execution(Client, Input, []).

-spec stop_notebook_execution(aws_client:aws_client(), stop_notebook_execution_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_notebook_execution_errors(), tuple()}.
stop_notebook_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopNotebookExecution">>, Input, Options).

%% @doc TerminateJobFlows shuts a list of clusters (job flows) down.
%%
%% When a job flow is shut
%% down, any step not yet completed is canceled and the Amazon EC2 instances
%% on which
%% the cluster is running are stopped. Any log files not already saved are
%% uploaded to Amazon S3 if a LogUri was specified when the cluster was
%% created.
%%
%% The maximum number of clusters allowed is 10. The call to
%% `TerminateJobFlows'
%% is asynchronous. Depending on the configuration of the cluster, it may
%% take up to 1-5
%% minutes for the cluster to completely terminate and release allocated
%% resources, such as
%% Amazon EC2 instances.
-spec terminate_job_flows(aws_client:aws_client(), terminate_job_flows_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, terminate_job_flows_errors(), tuple()}.
terminate_job_flows(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_job_flows(Client, Input, []).

-spec terminate_job_flows(aws_client:aws_client(), terminate_job_flows_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, terminate_job_flows_errors(), tuple()}.
terminate_job_flows(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateJobFlows">>, Input, Options).

%% @doc Updates an Amazon EMR Studio configuration, including attributes such
%% as name,
%% description, and subnets.
-spec update_studio(aws_client:aws_client(), update_studio_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_studio_errors(), tuple()}.
update_studio(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_studio(Client, Input, []).

-spec update_studio(aws_client:aws_client(), update_studio_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_studio_errors(), tuple()}.
update_studio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStudio">>, Input, Options).

%% @doc Updates the session policy attached to the user or group for the
%% specified Amazon EMR Studio.
-spec update_studio_session_mapping(aws_client:aws_client(), update_studio_session_mapping_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_studio_session_mapping_errors(), tuple()}.
update_studio_session_mapping(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_studio_session_mapping(Client, Input, []).

-spec update_studio_session_mapping(aws_client:aws_client(), update_studio_session_mapping_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_studio_session_mapping_errors(), tuple()}.
update_studio_session_mapping(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStudioSessionMapping">>, Input, Options).

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
    Client1 = Client#{service => <<"elasticmapreduce">>},
    Host = build_host(<<"elasticmapreduce">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"ElasticMapReduce.", Action/binary>>}
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
