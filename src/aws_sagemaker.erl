%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Provides APIs for creating and managing SageMaker resources.
%%
%% Other Resources:
%%
%% SageMaker Developer
%% Guide:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/whatis.html#first-time-user
%%
%% Amazon Augmented AI
%% Runtime API Reference:
%% https://docs.aws.amazon.com/augmented-ai/2019-11-07/APIReference/Welcome.html
-module(aws_sagemaker).

-export([add_association/2,
         add_association/3,
         add_tags/2,
         add_tags/3,
         associate_trial_component/2,
         associate_trial_component/3,
         batch_delete_cluster_nodes/2,
         batch_delete_cluster_nodes/3,
         batch_describe_model_package/2,
         batch_describe_model_package/3,
         create_action/2,
         create_action/3,
         create_algorithm/2,
         create_algorithm/3,
         create_app/2,
         create_app/3,
         create_app_image_config/2,
         create_app_image_config/3,
         create_artifact/2,
         create_artifact/3,
         create_auto_ml_job/2,
         create_auto_ml_job/3,
         create_auto_ml_job_v2/2,
         create_auto_ml_job_v2/3,
         create_cluster/2,
         create_cluster/3,
         create_cluster_scheduler_config/2,
         create_cluster_scheduler_config/3,
         create_code_repository/2,
         create_code_repository/3,
         create_compilation_job/2,
         create_compilation_job/3,
         create_compute_quota/2,
         create_compute_quota/3,
         create_context/2,
         create_context/3,
         create_data_quality_job_definition/2,
         create_data_quality_job_definition/3,
         create_device_fleet/2,
         create_device_fleet/3,
         create_domain/2,
         create_domain/3,
         create_edge_deployment_plan/2,
         create_edge_deployment_plan/3,
         create_edge_deployment_stage/2,
         create_edge_deployment_stage/3,
         create_edge_packaging_job/2,
         create_edge_packaging_job/3,
         create_endpoint/2,
         create_endpoint/3,
         create_endpoint_config/2,
         create_endpoint_config/3,
         create_experiment/2,
         create_experiment/3,
         create_feature_group/2,
         create_feature_group/3,
         create_flow_definition/2,
         create_flow_definition/3,
         create_hub/2,
         create_hub/3,
         create_hub_content_reference/2,
         create_hub_content_reference/3,
         create_human_task_ui/2,
         create_human_task_ui/3,
         create_hyper_parameter_tuning_job/2,
         create_hyper_parameter_tuning_job/3,
         create_image/2,
         create_image/3,
         create_image_version/2,
         create_image_version/3,
         create_inference_component/2,
         create_inference_component/3,
         create_inference_experiment/2,
         create_inference_experiment/3,
         create_inference_recommendations_job/2,
         create_inference_recommendations_job/3,
         create_labeling_job/2,
         create_labeling_job/3,
         create_mlflow_tracking_server/2,
         create_mlflow_tracking_server/3,
         create_model/2,
         create_model/3,
         create_model_bias_job_definition/2,
         create_model_bias_job_definition/3,
         create_model_card/2,
         create_model_card/3,
         create_model_card_export_job/2,
         create_model_card_export_job/3,
         create_model_explainability_job_definition/2,
         create_model_explainability_job_definition/3,
         create_model_package/2,
         create_model_package/3,
         create_model_package_group/2,
         create_model_package_group/3,
         create_model_quality_job_definition/2,
         create_model_quality_job_definition/3,
         create_monitoring_schedule/2,
         create_monitoring_schedule/3,
         create_notebook_instance/2,
         create_notebook_instance/3,
         create_notebook_instance_lifecycle_config/2,
         create_notebook_instance_lifecycle_config/3,
         create_optimization_job/2,
         create_optimization_job/3,
         create_partner_app/2,
         create_partner_app/3,
         create_partner_app_presigned_url/2,
         create_partner_app_presigned_url/3,
         create_pipeline/2,
         create_pipeline/3,
         create_presigned_domain_url/2,
         create_presigned_domain_url/3,
         create_presigned_mlflow_tracking_server_url/2,
         create_presigned_mlflow_tracking_server_url/3,
         create_presigned_notebook_instance_url/2,
         create_presigned_notebook_instance_url/3,
         create_processing_job/2,
         create_processing_job/3,
         create_project/2,
         create_project/3,
         create_space/2,
         create_space/3,
         create_studio_lifecycle_config/2,
         create_studio_lifecycle_config/3,
         create_training_job/2,
         create_training_job/3,
         create_training_plan/2,
         create_training_plan/3,
         create_transform_job/2,
         create_transform_job/3,
         create_trial/2,
         create_trial/3,
         create_trial_component/2,
         create_trial_component/3,
         create_user_profile/2,
         create_user_profile/3,
         create_workforce/2,
         create_workforce/3,
         create_workteam/2,
         create_workteam/3,
         delete_action/2,
         delete_action/3,
         delete_algorithm/2,
         delete_algorithm/3,
         delete_app/2,
         delete_app/3,
         delete_app_image_config/2,
         delete_app_image_config/3,
         delete_artifact/2,
         delete_artifact/3,
         delete_association/2,
         delete_association/3,
         delete_cluster/2,
         delete_cluster/3,
         delete_cluster_scheduler_config/2,
         delete_cluster_scheduler_config/3,
         delete_code_repository/2,
         delete_code_repository/3,
         delete_compilation_job/2,
         delete_compilation_job/3,
         delete_compute_quota/2,
         delete_compute_quota/3,
         delete_context/2,
         delete_context/3,
         delete_data_quality_job_definition/2,
         delete_data_quality_job_definition/3,
         delete_device_fleet/2,
         delete_device_fleet/3,
         delete_domain/2,
         delete_domain/3,
         delete_edge_deployment_plan/2,
         delete_edge_deployment_plan/3,
         delete_edge_deployment_stage/2,
         delete_edge_deployment_stage/3,
         delete_endpoint/2,
         delete_endpoint/3,
         delete_endpoint_config/2,
         delete_endpoint_config/3,
         delete_experiment/2,
         delete_experiment/3,
         delete_feature_group/2,
         delete_feature_group/3,
         delete_flow_definition/2,
         delete_flow_definition/3,
         delete_hub/2,
         delete_hub/3,
         delete_hub_content/2,
         delete_hub_content/3,
         delete_hub_content_reference/2,
         delete_hub_content_reference/3,
         delete_human_task_ui/2,
         delete_human_task_ui/3,
         delete_hyper_parameter_tuning_job/2,
         delete_hyper_parameter_tuning_job/3,
         delete_image/2,
         delete_image/3,
         delete_image_version/2,
         delete_image_version/3,
         delete_inference_component/2,
         delete_inference_component/3,
         delete_inference_experiment/2,
         delete_inference_experiment/3,
         delete_mlflow_tracking_server/2,
         delete_mlflow_tracking_server/3,
         delete_model/2,
         delete_model/3,
         delete_model_bias_job_definition/2,
         delete_model_bias_job_definition/3,
         delete_model_card/2,
         delete_model_card/3,
         delete_model_explainability_job_definition/2,
         delete_model_explainability_job_definition/3,
         delete_model_package/2,
         delete_model_package/3,
         delete_model_package_group/2,
         delete_model_package_group/3,
         delete_model_package_group_policy/2,
         delete_model_package_group_policy/3,
         delete_model_quality_job_definition/2,
         delete_model_quality_job_definition/3,
         delete_monitoring_schedule/2,
         delete_monitoring_schedule/3,
         delete_notebook_instance/2,
         delete_notebook_instance/3,
         delete_notebook_instance_lifecycle_config/2,
         delete_notebook_instance_lifecycle_config/3,
         delete_optimization_job/2,
         delete_optimization_job/3,
         delete_partner_app/2,
         delete_partner_app/3,
         delete_pipeline/2,
         delete_pipeline/3,
         delete_project/2,
         delete_project/3,
         delete_space/2,
         delete_space/3,
         delete_studio_lifecycle_config/2,
         delete_studio_lifecycle_config/3,
         delete_tags/2,
         delete_tags/3,
         delete_trial/2,
         delete_trial/3,
         delete_trial_component/2,
         delete_trial_component/3,
         delete_user_profile/2,
         delete_user_profile/3,
         delete_workforce/2,
         delete_workforce/3,
         delete_workteam/2,
         delete_workteam/3,
         deregister_devices/2,
         deregister_devices/3,
         describe_action/2,
         describe_action/3,
         describe_algorithm/2,
         describe_algorithm/3,
         describe_app/2,
         describe_app/3,
         describe_app_image_config/2,
         describe_app_image_config/3,
         describe_artifact/2,
         describe_artifact/3,
         describe_auto_ml_job/2,
         describe_auto_ml_job/3,
         describe_auto_ml_job_v2/2,
         describe_auto_ml_job_v2/3,
         describe_cluster/2,
         describe_cluster/3,
         describe_cluster_node/2,
         describe_cluster_node/3,
         describe_cluster_scheduler_config/2,
         describe_cluster_scheduler_config/3,
         describe_code_repository/2,
         describe_code_repository/3,
         describe_compilation_job/2,
         describe_compilation_job/3,
         describe_compute_quota/2,
         describe_compute_quota/3,
         describe_context/2,
         describe_context/3,
         describe_data_quality_job_definition/2,
         describe_data_quality_job_definition/3,
         describe_device/2,
         describe_device/3,
         describe_device_fleet/2,
         describe_device_fleet/3,
         describe_domain/2,
         describe_domain/3,
         describe_edge_deployment_plan/2,
         describe_edge_deployment_plan/3,
         describe_edge_packaging_job/2,
         describe_edge_packaging_job/3,
         describe_endpoint/2,
         describe_endpoint/3,
         describe_endpoint_config/2,
         describe_endpoint_config/3,
         describe_experiment/2,
         describe_experiment/3,
         describe_feature_group/2,
         describe_feature_group/3,
         describe_feature_metadata/2,
         describe_feature_metadata/3,
         describe_flow_definition/2,
         describe_flow_definition/3,
         describe_hub/2,
         describe_hub/3,
         describe_hub_content/2,
         describe_hub_content/3,
         describe_human_task_ui/2,
         describe_human_task_ui/3,
         describe_hyper_parameter_tuning_job/2,
         describe_hyper_parameter_tuning_job/3,
         describe_image/2,
         describe_image/3,
         describe_image_version/2,
         describe_image_version/3,
         describe_inference_component/2,
         describe_inference_component/3,
         describe_inference_experiment/2,
         describe_inference_experiment/3,
         describe_inference_recommendations_job/2,
         describe_inference_recommendations_job/3,
         describe_labeling_job/2,
         describe_labeling_job/3,
         describe_lineage_group/2,
         describe_lineage_group/3,
         describe_mlflow_tracking_server/2,
         describe_mlflow_tracking_server/3,
         describe_model/2,
         describe_model/3,
         describe_model_bias_job_definition/2,
         describe_model_bias_job_definition/3,
         describe_model_card/2,
         describe_model_card/3,
         describe_model_card_export_job/2,
         describe_model_card_export_job/3,
         describe_model_explainability_job_definition/2,
         describe_model_explainability_job_definition/3,
         describe_model_package/2,
         describe_model_package/3,
         describe_model_package_group/2,
         describe_model_package_group/3,
         describe_model_quality_job_definition/2,
         describe_model_quality_job_definition/3,
         describe_monitoring_schedule/2,
         describe_monitoring_schedule/3,
         describe_notebook_instance/2,
         describe_notebook_instance/3,
         describe_notebook_instance_lifecycle_config/2,
         describe_notebook_instance_lifecycle_config/3,
         describe_optimization_job/2,
         describe_optimization_job/3,
         describe_partner_app/2,
         describe_partner_app/3,
         describe_pipeline/2,
         describe_pipeline/3,
         describe_pipeline_definition_for_execution/2,
         describe_pipeline_definition_for_execution/3,
         describe_pipeline_execution/2,
         describe_pipeline_execution/3,
         describe_processing_job/2,
         describe_processing_job/3,
         describe_project/2,
         describe_project/3,
         describe_space/2,
         describe_space/3,
         describe_studio_lifecycle_config/2,
         describe_studio_lifecycle_config/3,
         describe_subscribed_workteam/2,
         describe_subscribed_workteam/3,
         describe_training_job/2,
         describe_training_job/3,
         describe_training_plan/2,
         describe_training_plan/3,
         describe_transform_job/2,
         describe_transform_job/3,
         describe_trial/2,
         describe_trial/3,
         describe_trial_component/2,
         describe_trial_component/3,
         describe_user_profile/2,
         describe_user_profile/3,
         describe_workforce/2,
         describe_workforce/3,
         describe_workteam/2,
         describe_workteam/3,
         disable_sagemaker_servicecatalog_portfolio/2,
         disable_sagemaker_servicecatalog_portfolio/3,
         disassociate_trial_component/2,
         disassociate_trial_component/3,
         enable_sagemaker_servicecatalog_portfolio/2,
         enable_sagemaker_servicecatalog_portfolio/3,
         get_device_fleet_report/2,
         get_device_fleet_report/3,
         get_lineage_group_policy/2,
         get_lineage_group_policy/3,
         get_model_package_group_policy/2,
         get_model_package_group_policy/3,
         get_sagemaker_servicecatalog_portfolio_status/2,
         get_sagemaker_servicecatalog_portfolio_status/3,
         get_scaling_configuration_recommendation/2,
         get_scaling_configuration_recommendation/3,
         get_search_suggestions/2,
         get_search_suggestions/3,
         import_hub_content/2,
         import_hub_content/3,
         list_actions/2,
         list_actions/3,
         list_algorithms/2,
         list_algorithms/3,
         list_aliases/2,
         list_aliases/3,
         list_app_image_configs/2,
         list_app_image_configs/3,
         list_apps/2,
         list_apps/3,
         list_artifacts/2,
         list_artifacts/3,
         list_associations/2,
         list_associations/3,
         list_auto_ml_jobs/2,
         list_auto_ml_jobs/3,
         list_candidates_for_auto_ml_job/2,
         list_candidates_for_auto_ml_job/3,
         list_cluster_nodes/2,
         list_cluster_nodes/3,
         list_cluster_scheduler_configs/2,
         list_cluster_scheduler_configs/3,
         list_clusters/2,
         list_clusters/3,
         list_code_repositories/2,
         list_code_repositories/3,
         list_compilation_jobs/2,
         list_compilation_jobs/3,
         list_compute_quotas/2,
         list_compute_quotas/3,
         list_contexts/2,
         list_contexts/3,
         list_data_quality_job_definitions/2,
         list_data_quality_job_definitions/3,
         list_device_fleets/2,
         list_device_fleets/3,
         list_devices/2,
         list_devices/3,
         list_domains/2,
         list_domains/3,
         list_edge_deployment_plans/2,
         list_edge_deployment_plans/3,
         list_edge_packaging_jobs/2,
         list_edge_packaging_jobs/3,
         list_endpoint_configs/2,
         list_endpoint_configs/3,
         list_endpoints/2,
         list_endpoints/3,
         list_experiments/2,
         list_experiments/3,
         list_feature_groups/2,
         list_feature_groups/3,
         list_flow_definitions/2,
         list_flow_definitions/3,
         list_hub_content_versions/2,
         list_hub_content_versions/3,
         list_hub_contents/2,
         list_hub_contents/3,
         list_hubs/2,
         list_hubs/3,
         list_human_task_uis/2,
         list_human_task_uis/3,
         list_hyper_parameter_tuning_jobs/2,
         list_hyper_parameter_tuning_jobs/3,
         list_image_versions/2,
         list_image_versions/3,
         list_images/2,
         list_images/3,
         list_inference_components/2,
         list_inference_components/3,
         list_inference_experiments/2,
         list_inference_experiments/3,
         list_inference_recommendations_job_steps/2,
         list_inference_recommendations_job_steps/3,
         list_inference_recommendations_jobs/2,
         list_inference_recommendations_jobs/3,
         list_labeling_jobs/2,
         list_labeling_jobs/3,
         list_labeling_jobs_for_workteam/2,
         list_labeling_jobs_for_workteam/3,
         list_lineage_groups/2,
         list_lineage_groups/3,
         list_mlflow_tracking_servers/2,
         list_mlflow_tracking_servers/3,
         list_model_bias_job_definitions/2,
         list_model_bias_job_definitions/3,
         list_model_card_export_jobs/2,
         list_model_card_export_jobs/3,
         list_model_card_versions/2,
         list_model_card_versions/3,
         list_model_cards/2,
         list_model_cards/3,
         list_model_explainability_job_definitions/2,
         list_model_explainability_job_definitions/3,
         list_model_metadata/2,
         list_model_metadata/3,
         list_model_package_groups/2,
         list_model_package_groups/3,
         list_model_packages/2,
         list_model_packages/3,
         list_model_quality_job_definitions/2,
         list_model_quality_job_definitions/3,
         list_models/2,
         list_models/3,
         list_monitoring_alert_history/2,
         list_monitoring_alert_history/3,
         list_monitoring_alerts/2,
         list_monitoring_alerts/3,
         list_monitoring_executions/2,
         list_monitoring_executions/3,
         list_monitoring_schedules/2,
         list_monitoring_schedules/3,
         list_notebook_instance_lifecycle_configs/2,
         list_notebook_instance_lifecycle_configs/3,
         list_notebook_instances/2,
         list_notebook_instances/3,
         list_optimization_jobs/2,
         list_optimization_jobs/3,
         list_partner_apps/2,
         list_partner_apps/3,
         list_pipeline_execution_steps/2,
         list_pipeline_execution_steps/3,
         list_pipeline_executions/2,
         list_pipeline_executions/3,
         list_pipeline_parameters_for_execution/2,
         list_pipeline_parameters_for_execution/3,
         list_pipelines/2,
         list_pipelines/3,
         list_processing_jobs/2,
         list_processing_jobs/3,
         list_projects/2,
         list_projects/3,
         list_resource_catalogs/2,
         list_resource_catalogs/3,
         list_spaces/2,
         list_spaces/3,
         list_stage_devices/2,
         list_stage_devices/3,
         list_studio_lifecycle_configs/2,
         list_studio_lifecycle_configs/3,
         list_subscribed_workteams/2,
         list_subscribed_workteams/3,
         list_tags/2,
         list_tags/3,
         list_training_jobs/2,
         list_training_jobs/3,
         list_training_jobs_for_hyper_parameter_tuning_job/2,
         list_training_jobs_for_hyper_parameter_tuning_job/3,
         list_training_plans/2,
         list_training_plans/3,
         list_transform_jobs/2,
         list_transform_jobs/3,
         list_trial_components/2,
         list_trial_components/3,
         list_trials/2,
         list_trials/3,
         list_user_profiles/2,
         list_user_profiles/3,
         list_workforces/2,
         list_workforces/3,
         list_workteams/2,
         list_workteams/3,
         put_model_package_group_policy/2,
         put_model_package_group_policy/3,
         query_lineage/2,
         query_lineage/3,
         register_devices/2,
         register_devices/3,
         render_ui_template/2,
         render_ui_template/3,
         retry_pipeline_execution/2,
         retry_pipeline_execution/3,
         search/2,
         search/3,
         search_training_plan_offerings/2,
         search_training_plan_offerings/3,
         send_pipeline_execution_step_failure/2,
         send_pipeline_execution_step_failure/3,
         send_pipeline_execution_step_success/2,
         send_pipeline_execution_step_success/3,
         start_edge_deployment_stage/2,
         start_edge_deployment_stage/3,
         start_inference_experiment/2,
         start_inference_experiment/3,
         start_mlflow_tracking_server/2,
         start_mlflow_tracking_server/3,
         start_monitoring_schedule/2,
         start_monitoring_schedule/3,
         start_notebook_instance/2,
         start_notebook_instance/3,
         start_pipeline_execution/2,
         start_pipeline_execution/3,
         stop_auto_ml_job/2,
         stop_auto_ml_job/3,
         stop_compilation_job/2,
         stop_compilation_job/3,
         stop_edge_deployment_stage/2,
         stop_edge_deployment_stage/3,
         stop_edge_packaging_job/2,
         stop_edge_packaging_job/3,
         stop_hyper_parameter_tuning_job/2,
         stop_hyper_parameter_tuning_job/3,
         stop_inference_experiment/2,
         stop_inference_experiment/3,
         stop_inference_recommendations_job/2,
         stop_inference_recommendations_job/3,
         stop_labeling_job/2,
         stop_labeling_job/3,
         stop_mlflow_tracking_server/2,
         stop_mlflow_tracking_server/3,
         stop_monitoring_schedule/2,
         stop_monitoring_schedule/3,
         stop_notebook_instance/2,
         stop_notebook_instance/3,
         stop_optimization_job/2,
         stop_optimization_job/3,
         stop_pipeline_execution/2,
         stop_pipeline_execution/3,
         stop_processing_job/2,
         stop_processing_job/3,
         stop_training_job/2,
         stop_training_job/3,
         stop_transform_job/2,
         stop_transform_job/3,
         update_action/2,
         update_action/3,
         update_app_image_config/2,
         update_app_image_config/3,
         update_artifact/2,
         update_artifact/3,
         update_cluster/2,
         update_cluster/3,
         update_cluster_scheduler_config/2,
         update_cluster_scheduler_config/3,
         update_cluster_software/2,
         update_cluster_software/3,
         update_code_repository/2,
         update_code_repository/3,
         update_compute_quota/2,
         update_compute_quota/3,
         update_context/2,
         update_context/3,
         update_device_fleet/2,
         update_device_fleet/3,
         update_devices/2,
         update_devices/3,
         update_domain/2,
         update_domain/3,
         update_endpoint/2,
         update_endpoint/3,
         update_endpoint_weights_and_capacities/2,
         update_endpoint_weights_and_capacities/3,
         update_experiment/2,
         update_experiment/3,
         update_feature_group/2,
         update_feature_group/3,
         update_feature_metadata/2,
         update_feature_metadata/3,
         update_hub/2,
         update_hub/3,
         update_hub_content/2,
         update_hub_content/3,
         update_hub_content_reference/2,
         update_hub_content_reference/3,
         update_image/2,
         update_image/3,
         update_image_version/2,
         update_image_version/3,
         update_inference_component/2,
         update_inference_component/3,
         update_inference_component_runtime_config/2,
         update_inference_component_runtime_config/3,
         update_inference_experiment/2,
         update_inference_experiment/3,
         update_mlflow_tracking_server/2,
         update_mlflow_tracking_server/3,
         update_model_card/2,
         update_model_card/3,
         update_model_package/2,
         update_model_package/3,
         update_monitoring_alert/2,
         update_monitoring_alert/3,
         update_monitoring_schedule/2,
         update_monitoring_schedule/3,
         update_notebook_instance/2,
         update_notebook_instance/3,
         update_notebook_instance_lifecycle_config/2,
         update_notebook_instance_lifecycle_config/3,
         update_partner_app/2,
         update_partner_app/3,
         update_pipeline/2,
         update_pipeline/3,
         update_pipeline_execution/2,
         update_pipeline_execution/3,
         update_project/2,
         update_project/3,
         update_space/2,
         update_space/3,
         update_training_job/2,
         update_training_job/3,
         update_trial/2,
         update_trial/3,
         update_trial_component/2,
         update_trial_component/3,
         update_user_profile/2,
         update_user_profile/3,
         update_workforce/2,
         update_workforce/3,
         update_workteam/2,
         update_workteam/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% docker_settings() :: #{
%%   <<"EnableDockerAccess">> => list(any()),
%%   <<"VpcOnlyTrustedAccounts">> => list(string()())
%% }
-type docker_settings() :: #{binary() => any()}.

%% Example:
%% visibility_conditions() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type visibility_conditions() :: #{binary() => any()}.

%% Example:
%% describe_hub_request() :: #{
%%   <<"HubName">> := string()
%% }
-type describe_hub_request() :: #{binary() => any()}.

%% Example:
%% auto_ml_output_data_config() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"S3OutputPath">> => string()
%% }
-type auto_ml_output_data_config() :: #{binary() => any()}.

%% Example:
%% update_context_request() :: #{
%%   <<"ContextName">> := string(),
%%   <<"Description">> => string(),
%%   <<"Properties">> => map(),
%%   <<"PropertiesToRemove">> => list(string()())
%% }
-type update_context_request() :: #{binary() => any()}.

%% Example:
%% action_summary() :: #{
%%   <<"ActionArn">> => string(),
%%   <<"ActionName">> => string(),
%%   <<"ActionType">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Source">> => action_source(),
%%   <<"Status">> => list(any())
%% }
-type action_summary() :: #{binary() => any()}.

%% Example:
%% list_aliases_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SageMakerImageVersionAliases">> => list(string()())
%% }
-type list_aliases_response() :: #{binary() => any()}.

%% Example:
%% transform_data_source() :: #{
%%   <<"S3DataSource">> => transform_s3_data_source()
%% }
-type transform_data_source() :: #{binary() => any()}.

%% Example:
%% create_edge_deployment_stage_request() :: #{
%%   <<"EdgeDeploymentPlanName">> := string(),
%%   <<"Stages">> := list(deployment_stage()())
%% }
-type create_edge_deployment_stage_request() :: #{binary() => any()}.

%% Example:
%% list_experiments_response() :: #{
%%   <<"ExperimentSummaries">> => list(experiment_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_experiments_response() :: #{binary() => any()}.

%% Example:
%% production_variant_serverless_update_config() :: #{
%%   <<"MaxConcurrency">> => integer(),
%%   <<"ProvisionedConcurrency">> => integer()
%% }
-type production_variant_serverless_update_config() :: #{binary() => any()}.

%% Example:
%% update_artifact_request() :: #{
%%   <<"ArtifactArn">> := string(),
%%   <<"ArtifactName">> => string(),
%%   <<"Properties">> => map(),
%%   <<"PropertiesToRemove">> => list(string()())
%% }
-type update_artifact_request() :: #{binary() => any()}.

%% Example:
%% stop_inference_experiment_response() :: #{
%%   <<"InferenceExperimentArn">> => string()
%% }
-type stop_inference_experiment_response() :: #{binary() => any()}.

%% Example:
%% best_objective_not_improving() :: #{
%%   <<"MaxNumberOfTrainingJobsNotImproving">> => integer()
%% }
-type best_objective_not_improving() :: #{binary() => any()}.

%% Example:
%% describe_cluster_request() :: #{
%%   <<"ClusterName">> := string()
%% }
-type describe_cluster_request() :: #{binary() => any()}.

%% Example:
%% describe_trial_request() :: #{
%%   <<"TrialName">> := string()
%% }
-type describe_trial_request() :: #{binary() => any()}.

%% Example:
%% list_aliases_request() :: #{
%%   <<"Alias">> => string(),
%%   <<"ImageName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Version">> => integer()
%% }
-type list_aliases_request() :: #{binary() => any()}.

%% Example:
%% list_resource_catalogs_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_resource_catalogs_request() :: #{binary() => any()}.

%% Example:
%% describe_model_quality_job_definition_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"JobDefinitionArn">> => string(),
%%   <<"JobDefinitionName">> => string(),
%%   <<"JobResources">> => monitoring_resources(),
%%   <<"ModelQualityAppSpecification">> => model_quality_app_specification(),
%%   <<"ModelQualityBaselineConfig">> => model_quality_baseline_config(),
%%   <<"ModelQualityJobInput">> => model_quality_job_input(),
%%   <<"ModelQualityJobOutputConfig">> => monitoring_output_config(),
%%   <<"NetworkConfig">> => monitoring_network_config(),
%%   <<"RoleArn">> => string(),
%%   <<"StoppingCondition">> => monitoring_stopping_condition()
%% }
-type describe_model_quality_job_definition_response() :: #{binary() => any()}.

%% Example:
%% get_scaling_configuration_recommendation_request() :: #{
%%   <<"EndpointName">> => string(),
%%   <<"InferenceRecommendationsJobName">> := string(),
%%   <<"RecommendationId">> => string(),
%%   <<"ScalingPolicyObjective">> => scaling_policy_objective(),
%%   <<"TargetCpuUtilizationPerCore">> => integer()
%% }
-type get_scaling_configuration_recommendation_request() :: #{binary() => any()}.

%% Example:
%% model_latency_threshold() :: #{
%%   <<"Percentile">> => string(),
%%   <<"ValueInMilliseconds">> => integer()
%% }
-type model_latency_threshold() :: #{binary() => any()}.

%% Example:
%% delete_experiment_response() :: #{
%%   <<"ExperimentArn">> => string()
%% }
-type delete_experiment_response() :: #{binary() => any()}.

%% Example:
%% text_generation_job_config() :: #{
%%   <<"BaseModelName">> => string(),
%%   <<"CompletionCriteria">> => auto_ml_job_completion_criteria(),
%%   <<"ModelAccessConfig">> => model_access_config(),
%%   <<"TextGenerationHyperParameters">> => map()
%% }
-type text_generation_job_config() :: #{binary() => any()}.

%% Example:
%% update_hub_request() :: #{
%%   <<"HubDescription">> => string(),
%%   <<"HubDisplayName">> => string(),
%%   <<"HubName">> := string(),
%%   <<"HubSearchKeywords">> => list(string()())
%% }
-type update_hub_request() :: #{binary() => any()}.

%% Example:
%% list_apps_response() :: #{
%%   <<"Apps">> => list(app_details()()),
%%   <<"NextToken">> => string()
%% }
-type list_apps_response() :: #{binary() => any()}.

%% Example:
%% inference_specification() :: #{
%%   <<"Containers">> => list(model_package_container_definition()()),
%%   <<"SupportedContentTypes">> => list(string()()),
%%   <<"SupportedRealtimeInferenceInstanceTypes">> => list(list(any())()),
%%   <<"SupportedResponseMIMETypes">> => list(string()()),
%%   <<"SupportedTransformInstanceTypes">> => list(list(any())())
%% }
-type inference_specification() :: #{binary() => any()}.

%% Example:
%% time_series_forecasting_job_config() :: #{
%%   <<"CandidateGenerationConfig">> => candidate_generation_config(),
%%   <<"CompletionCriteria">> => auto_ml_job_completion_criteria(),
%%   <<"FeatureSpecificationS3Uri">> => string(),
%%   <<"ForecastFrequency">> => string(),
%%   <<"ForecastHorizon">> => integer(),
%%   <<"ForecastQuantiles">> => list(string()()),
%%   <<"HolidayConfig">> => list(holiday_config_attributes()()),
%%   <<"TimeSeriesConfig">> => time_series_config(),
%%   <<"Transformations">> => time_series_transformations()
%% }
-type time_series_forecasting_job_config() :: #{binary() => any()}.

%% Example:
%% get_search_suggestions_request() :: #{
%%   <<"Resource">> := list(any()),
%%   <<"SuggestionQuery">> => suggestion_query()
%% }
-type get_search_suggestions_request() :: #{binary() => any()}.

%% Example:
%% create_inference_component_input() :: #{
%%   <<"EndpointName">> := string(),
%%   <<"InferenceComponentName">> := string(),
%%   <<"RuntimeConfig">> => inference_component_runtime_config(),
%%   <<"Specification">> := inference_component_specification(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VariantName">> => string()
%% }
-type create_inference_component_input() :: #{binary() => any()}.

%% Example:
%% hyperband_strategy_config() :: #{
%%   <<"MaxResource">> => integer(),
%%   <<"MinResource">> => integer()
%% }
-type hyperband_strategy_config() :: #{binary() => any()}.

%% Example:
%% update_model_card_response() :: #{
%%   <<"ModelCardArn">> => string()
%% }
-type update_model_card_response() :: #{binary() => any()}.

%% Example:
%% update_inference_experiment_request() :: #{
%%   <<"DataStorageConfig">> => inference_experiment_data_storage_config(),
%%   <<"Description">> => string(),
%%   <<"ModelVariants">> => list(model_variant_config()()),
%%   <<"Name">> := string(),
%%   <<"Schedule">> => inference_experiment_schedule(),
%%   <<"ShadowModeConfig">> => shadow_mode_config()
%% }
-type update_inference_experiment_request() :: #{binary() => any()}.

%% Example:
%% update_hub_content_request() :: #{
%%   <<"HubContentDescription">> => string(),
%%   <<"HubContentDisplayName">> => string(),
%%   <<"HubContentMarkdown">> => string(),
%%   <<"HubContentName">> := string(),
%%   <<"HubContentSearchKeywords">> => list(string()()),
%%   <<"HubContentType">> := list(any()),
%%   <<"HubContentVersion">> := string(),
%%   <<"HubName">> := string(),
%%   <<"SupportStatus">> => list(any())
%% }
-type update_hub_content_request() :: #{binary() => any()}.

%% Example:
%% hub_content_dependency() :: #{
%%   <<"DependencyCopyPath">> => string(),
%%   <<"DependencyOriginPath">> => string()
%% }
-type hub_content_dependency() :: #{binary() => any()}.

%% Example:
%% inference_component_runtime_config_summary() :: #{
%%   <<"CurrentCopyCount">> => integer(),
%%   <<"DesiredCopyCount">> => integer()
%% }
-type inference_component_runtime_config_summary() :: #{binary() => any()}.

%% Example:
%% delete_space_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"SpaceName">> := string()
%% }
-type delete_space_request() :: #{binary() => any()}.

%% Example:
%% hyper_parameter_tuning_job_consumed_resources() :: #{
%%   <<"RuntimeInSeconds">> => integer()
%% }
-type hyper_parameter_tuning_job_consumed_resources() :: #{binary() => any()}.

%% Example:
%% stop_transform_job_request() :: #{
%%   <<"TransformJobName">> := string()
%% }
-type stop_transform_job_request() :: #{binary() => any()}.

%% Example:
%% delete_human_task_ui_request() :: #{
%%   <<"HumanTaskUiName">> := string()
%% }
-type delete_human_task_ui_request() :: #{binary() => any()}.

%% Example:
%% notebook_instance_summary() :: #{
%%   <<"AdditionalCodeRepositories">> => list(string()()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DefaultCodeRepository">> => string(),
%%   <<"InstanceType">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"NotebookInstanceArn">> => string(),
%%   <<"NotebookInstanceLifecycleConfigName">> => string(),
%%   <<"NotebookInstanceName">> => string(),
%%   <<"NotebookInstanceStatus">> => list(any()),
%%   <<"Url">> => string()
%% }
-type notebook_instance_summary() :: #{binary() => any()}.

%% Example:
%% list_endpoints_input() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StatusEquals">> => list(any())
%% }
-type list_endpoints_input() :: #{binary() => any()}.

%% Example:
%% describe_inference_component_output() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EndpointArn">> => string(),
%%   <<"EndpointName">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"InferenceComponentArn">> => string(),
%%   <<"InferenceComponentName">> => string(),
%%   <<"InferenceComponentStatus">> => list(any()),
%%   <<"LastDeploymentConfig">> => inference_component_deployment_config(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"RuntimeConfig">> => inference_component_runtime_config_summary(),
%%   <<"Specification">> => inference_component_specification_summary(),
%%   <<"VariantName">> => string()
%% }
-type describe_inference_component_output() :: #{binary() => any()}.

%% Example:
%% describe_inference_experiment_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CompletionTime">> => non_neg_integer(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DataStorageConfig">> => inference_experiment_data_storage_config(),
%%   <<"Description">> => string(),
%%   <<"EndpointMetadata">> => endpoint_metadata(),
%%   <<"KmsKey">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ModelVariants">> => list(model_variant_config_summary()()),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Schedule">> => inference_experiment_schedule(),
%%   <<"ShadowModeConfig">> => shadow_mode_config(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string(),
%%   <<"Type">> => list(any())
%% }
-type describe_inference_experiment_response() :: #{binary() => any()}.

%% Example:
%% update_user_profile_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"UserProfileName">> := string(),
%%   <<"UserSettings">> => user_settings()
%% }
-type update_user_profile_request() :: #{binary() => any()}.

%% Example:
%% metric_data() :: #{
%%   <<"MetricName">> => string(),
%%   <<"Timestamp">> => non_neg_integer(),
%%   <<"Value">> => float()
%% }
-type metric_data() :: #{binary() => any()}.

%% Example:
%% list_devices_request() :: #{
%%   <<"DeviceFleetName">> => string(),
%%   <<"LatestHeartbeatAfter">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"ModelName">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_devices_request() :: #{binary() => any()}.

%% Example:
%% describe_endpoint_config_output() :: #{
%%   <<"AsyncInferenceConfig">> => async_inference_config(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DataCaptureConfig">> => data_capture_config(),
%%   <<"EnableNetworkIsolation">> => boolean(),
%%   <<"EndpointConfigArn">> => string(),
%%   <<"EndpointConfigName">> => string(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"ExplainerConfig">> => explainer_config(),
%%   <<"KmsKeyId">> => string(),
%%   <<"ProductionVariants">> => list(production_variant()()),
%%   <<"ShadowProductionVariants">> => list(production_variant()()),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type describe_endpoint_config_output() :: #{binary() => any()}.

%% Example:
%% update_domain_request() :: #{
%%   <<"AppNetworkAccessType">> => list(any()),
%%   <<"AppSecurityGroupManagement">> => list(any()),
%%   <<"DefaultSpaceSettings">> => default_space_settings(),
%%   <<"DefaultUserSettings">> => user_settings(),
%%   <<"DomainId">> := string(),
%%   <<"DomainSettingsForUpdate">> => domain_settings_for_update(),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"TagPropagation">> => list(any())
%% }
-type update_domain_request() :: #{binary() => any()}.

%% Example:
%% resolved_attributes() :: #{
%%   <<"AutoMLJobObjective">> => auto_ml_job_objective(),
%%   <<"CompletionCriteria">> => auto_ml_job_completion_criteria(),
%%   <<"ProblemType">> => list(any())
%% }
-type resolved_attributes() :: #{binary() => any()}.

%% Example:
%% training_plan_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Value">> => string()
%% }
-type training_plan_filter() :: #{binary() => any()}.

%% Example:
%% list_user_profiles_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"UserProfiles">> => list(user_profile_details()())
%% }
-type list_user_profiles_response() :: #{binary() => any()}.

%% Example:
%% resource_limits() :: #{
%%   <<"MaxNumberOfTrainingJobs">> => integer(),
%%   <<"MaxParallelTrainingJobs">> => integer(),
%%   <<"MaxRuntimeInSeconds">> => integer()
%% }
-type resource_limits() :: #{binary() => any()}.

%% Example:
%% idle_settings() :: #{
%%   <<"IdleTimeoutInMinutes">> => integer(),
%%   <<"LifecycleManagement">> => list(any()),
%%   <<"MaxIdleTimeoutInMinutes">> => integer(),
%%   <<"MinIdleTimeoutInMinutes">> => integer()
%% }
-type idle_settings() :: #{binary() => any()}.

%% Example:
%% resource_not_found() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found() :: #{binary() => any()}.

%% Example:
%% ui_config() :: #{
%%   <<"HumanTaskUiArn">> => string(),
%%   <<"UiTemplateS3Uri">> => string()
%% }
-type ui_config() :: #{binary() => any()}.

%% Example:
%% describe_processing_job_response() :: #{
%%   <<"AppSpecification">> => app_specification(),
%%   <<"AutoMLJobArn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Environment">> => map(),
%%   <<"ExitMessage">> => string(),
%%   <<"ExperimentConfig">> => experiment_config(),
%%   <<"FailureReason">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"MonitoringScheduleArn">> => string(),
%%   <<"NetworkConfig">> => network_config(),
%%   <<"ProcessingEndTime">> => non_neg_integer(),
%%   <<"ProcessingInputs">> => list(processing_input()()),
%%   <<"ProcessingJobArn">> => string(),
%%   <<"ProcessingJobName">> => string(),
%%   <<"ProcessingJobStatus">> => list(any()),
%%   <<"ProcessingOutputConfig">> => processing_output_config(),
%%   <<"ProcessingResources">> => processing_resources(),
%%   <<"ProcessingStartTime">> => non_neg_integer(),
%%   <<"RoleArn">> => string(),
%%   <<"StoppingCondition">> => processing_stopping_condition(),
%%   <<"TrainingJobArn">> => string()
%% }
-type describe_processing_job_response() :: #{binary() => any()}.

%% Example:
%% hub_info() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"HubArn">> => string(),
%%   <<"HubDescription">> => string(),
%%   <<"HubDisplayName">> => string(),
%%   <<"HubName">> => string(),
%%   <<"HubSearchKeywords">> => list(string()()),
%%   <<"HubStatus">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type hub_info() :: #{binary() => any()}.

%% Example:
%% monitoring_stopping_condition() :: #{
%%   <<"MaxRuntimeInSeconds">> => integer()
%% }
-type monitoring_stopping_condition() :: #{binary() => any()}.

%% Example:
%% create_presigned_mlflow_tracking_server_url_response() :: #{
%%   <<"AuthorizedUrl">> => string()
%% }
-type create_presigned_mlflow_tracking_server_url_response() :: #{binary() => any()}.

%% Example:
%% describe_inference_recommendations_job_response() :: #{
%%   <<"CompletionTime">> => non_neg_integer(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EndpointPerformances">> => list(endpoint_performance()()),
%%   <<"FailureReason">> => string(),
%%   <<"InferenceRecommendations">> => list(inference_recommendation()()),
%%   <<"InputConfig">> => recommendation_job_input_config(),
%%   <<"JobArn">> => string(),
%%   <<"JobDescription">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobType">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"RoleArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StoppingConditions">> => recommendation_job_stopping_conditions()
%% }
-type describe_inference_recommendations_job_response() :: #{binary() => any()}.

%% Example:
%% monitoring_cluster_config() :: #{
%%   <<"InstanceCount">> => integer(),
%%   <<"InstanceType">> => list(any()),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VolumeSizeInGB">> => integer()
%% }
-type monitoring_cluster_config() :: #{binary() => any()}.

%% Example:
%% integer_parameter_range() :: #{
%%   <<"MaxValue">> => string(),
%%   <<"MinValue">> => string(),
%%   <<"Name">> => string(),
%%   <<"ScalingType">> => list(any())
%% }
-type integer_parameter_range() :: #{binary() => any()}.

%% Example:
%% update_pipeline_execution_request() :: #{
%%   <<"ParallelismConfiguration">> => parallelism_configuration(),
%%   <<"PipelineExecutionArn">> := string(),
%%   <<"PipelineExecutionDescription">> => string(),
%%   <<"PipelineExecutionDisplayName">> => string()
%% }
-type update_pipeline_execution_request() :: #{binary() => any()}.

%% Example:
%% throughput_config_update() :: #{
%%   <<"ProvisionedReadCapacityUnits">> => integer(),
%%   <<"ProvisionedWriteCapacityUnits">> => integer(),
%%   <<"ThroughputMode">> => list(any())
%% }
-type throughput_config_update() :: #{binary() => any()}.

%% Example:
%% update_app_image_config_response() :: #{
%%   <<"AppImageConfigArn">> => string()
%% }
-type update_app_image_config_response() :: #{binary() => any()}.

%% Example:
%% create_presigned_mlflow_tracking_server_url_request() :: #{
%%   <<"ExpiresInSeconds">> => integer(),
%%   <<"SessionExpirationDurationInSeconds">> => integer(),
%%   <<"TrackingServerName">> := string()
%% }
-type create_presigned_mlflow_tracking_server_url_request() :: #{binary() => any()}.

%% Example:
%% model_data_quality() :: #{
%%   <<"Constraints">> => metrics_source(),
%%   <<"Statistics">> => metrics_source()
%% }
-type model_data_quality() :: #{binary() => any()}.

%% Example:
%% experiment_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DisplayName">> => string(),
%%   <<"ExperimentArn">> => string(),
%%   <<"ExperimentName">> => string(),
%%   <<"ExperimentSource">> => experiment_source(),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type experiment_summary() :: #{binary() => any()}.

%% Example:
%% describe_pipeline_definition_for_execution_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"PipelineDefinition">> => string()
%% }
-type describe_pipeline_definition_for_execution_response() :: #{binary() => any()}.

%% Example:
%% labeling_job_output() :: #{
%%   <<"FinalActiveLearningModelArn">> => string(),
%%   <<"OutputDatasetS3Uri">> => string()
%% }
-type labeling_job_output() :: #{binary() => any()}.

%% Example:
%% model_card_export_artifacts() :: #{
%%   <<"S3ExportArtifacts">> => string()
%% }
-type model_card_export_artifacts() :: #{binary() => any()}.

%% Example:
%% list_partner_apps_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_partner_apps_request() :: #{binary() => any()}.

%% Example:
%% list_model_explainability_job_definitions_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"EndpointName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_model_explainability_job_definitions_request() :: #{binary() => any()}.

%% Example:
%% create_app_image_config_response() :: #{
%%   <<"AppImageConfigArn">> => string()
%% }
-type create_app_image_config_response() :: #{binary() => any()}.

%% Example:
%% edge_deployment_plan_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DeviceFleetName">> => string(),
%%   <<"EdgeDeploymentFailed">> => integer(),
%%   <<"EdgeDeploymentPending">> => integer(),
%%   <<"EdgeDeploymentPlanArn">> => string(),
%%   <<"EdgeDeploymentPlanName">> => string(),
%%   <<"EdgeDeploymentSuccess">> => integer(),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type edge_deployment_plan_summary() :: #{binary() => any()}.

%% Example:
%% auto_ml_resolved_attributes() :: #{
%%   <<"AutoMLJobObjective">> => auto_ml_job_objective(),
%%   <<"AutoMLProblemTypeResolvedAttributes">> => list(),
%%   <<"CompletionCriteria">> => auto_ml_job_completion_criteria()
%% }
-type auto_ml_resolved_attributes() :: #{binary() => any()}.

%% Example:
%% model_variant_config() :: #{
%%   <<"InfrastructureConfig">> => model_infrastructure_config(),
%%   <<"ModelName">> => string(),
%%   <<"VariantName">> => string()
%% }
-type model_variant_config() :: #{binary() => any()}.

%% Example:
%% create_model_output() :: #{
%%   <<"ModelArn">> => string()
%% }
-type create_model_output() :: #{binary() => any()}.

%% Example:
%% trial_component_source() :: #{
%%   <<"SourceArn">> => string(),
%%   <<"SourceType">> => string()
%% }
-type trial_component_source() :: #{binary() => any()}.

%% Example:
%% environment_parameter_ranges() :: #{
%%   <<"CategoricalParameterRanges">> => list(categorical_parameter()())
%% }
-type environment_parameter_ranges() :: #{binary() => any()}.

%% Example:
%% list_pipelines_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PipelineSummaries">> => list(pipeline_summary()())
%% }
-type list_pipelines_response() :: #{binary() => any()}.

%% Example:
%% model_card_security_config() :: #{
%%   <<"KmsKeyId">> => string()
%% }
-type model_card_security_config() :: #{binary() => any()}.

%% Example:
%% list_workforces_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Workforces">> => list(workforce()())
%% }
-type list_workforces_response() :: #{binary() => any()}.

%% Example:
%% capture_option() :: #{
%%   <<"CaptureMode">> => list(any())
%% }
-type capture_option() :: #{binary() => any()}.

%% Example:
%% update_inference_component_output() :: #{
%%   <<"InferenceComponentArn">> => string()
%% }
-type update_inference_component_output() :: #{binary() => any()}.

%% Example:
%% describe_app_image_config_response() :: #{
%%   <<"AppImageConfigArn">> => string(),
%%   <<"AppImageConfigName">> => string(),
%%   <<"CodeEditorAppImageConfig">> => code_editor_app_image_config(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"JupyterLabAppImageConfig">> => jupyter_lab_app_image_config(),
%%   <<"KernelGatewayImageConfig">> => kernel_gateway_image_config(),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type describe_app_image_config_response() :: #{binary() => any()}.

%% Example:
%% create_app_request() :: #{
%%   <<"AppName">> := string(),
%%   <<"AppType">> := list(any()),
%%   <<"DomainId">> := string(),
%%   <<"ResourceSpec">> => resource_spec(),
%%   <<"SpaceName">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"UserProfileName">> => string()
%% }
-type create_app_request() :: #{binary() => any()}.

%% Example:
%% monitoring_alert_actions() :: #{
%%   <<"ModelDashboardIndicator">> => model_dashboard_indicator_action()
%% }
-type monitoring_alert_actions() :: #{binary() => any()}.

%% Example:
%% update_pipeline_response() :: #{
%%   <<"PipelineArn">> => string()
%% }
-type update_pipeline_response() :: #{binary() => any()}.

%% Example:
%% import_hub_content_response() :: #{
%%   <<"HubArn">> => string(),
%%   <<"HubContentArn">> => string()
%% }
-type import_hub_content_response() :: #{binary() => any()}.

%% Example:
%% ui_template() :: #{
%%   <<"Content">> => string()
%% }
-type ui_template() :: #{binary() => any()}.

%% Example:
%% list_cluster_nodes_request() :: #{
%%   <<"ClusterName">> := string(),
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"InstanceGroupNameContains">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_cluster_nodes_request() :: #{binary() => any()}.

%% Example:
%% git_config_for_update() :: #{
%%   <<"SecretArn">> => string()
%% }
-type git_config_for_update() :: #{binary() => any()}.

%% Example:
%% create_image_response() :: #{
%%   <<"ImageArn">> => string()
%% }
-type create_image_response() :: #{binary() => any()}.

%% Example:
%% add_association_request() :: #{
%%   <<"AssociationType">> => list(any()),
%%   <<"DestinationArn">> := string(),
%%   <<"SourceArn">> := string()
%% }
-type add_association_request() :: #{binary() => any()}.

%% Example:
%% pipeline_execution_step_metadata() :: #{
%%   <<"AutoMLJob">> => auto_ml_job_step_metadata(),
%%   <<"Callback">> => callback_step_metadata(),
%%   <<"ClarifyCheck">> => clarify_check_step_metadata(),
%%   <<"Condition">> => condition_step_metadata(),
%%   <<"EMR">> => emr_step_metadata(),
%%   <<"Endpoint">> => endpoint_step_metadata(),
%%   <<"EndpointConfig">> => endpoint_config_step_metadata(),
%%   <<"Fail">> => fail_step_metadata(),
%%   <<"Lambda">> => lambda_step_metadata(),
%%   <<"Model">> => model_step_metadata(),
%%   <<"ProcessingJob">> => processing_job_step_metadata(),
%%   <<"QualityCheck">> => quality_check_step_metadata(),
%%   <<"RegisterModel">> => register_model_step_metadata(),
%%   <<"TrainingJob">> => training_job_step_metadata(),
%%   <<"TransformJob">> => transform_job_step_metadata(),
%%   <<"TuningJob">> => tuning_job_step_meta_data()
%% }
-type pipeline_execution_step_metadata() :: #{binary() => any()}.

%% Example:
%% bias() :: #{
%%   <<"PostTrainingReport">> => metrics_source(),
%%   <<"PreTrainingReport">> => metrics_source(),
%%   <<"Report">> => metrics_source()
%% }
-type bias() :: #{binary() => any()}.

%% Example:
%% drift_check_model_data_quality() :: #{
%%   <<"Constraints">> => metrics_source(),
%%   <<"Statistics">> => metrics_source()
%% }
-type drift_check_model_data_quality() :: #{binary() => any()}.

%% Example:
%% list_pipelines_request() :: #{
%%   <<"CreatedAfter">> => non_neg_integer(),
%%   <<"CreatedBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PipelineNamePrefix">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_pipelines_request() :: #{binary() => any()}.

%% Example:
%% describe_model_package_input() :: #{
%%   <<"ModelPackageName">> := string()
%% }
-type describe_model_package_input() :: #{binary() => any()}.

%% Example:
%% categorical_parameter_range_specification() :: #{
%%   <<"Values">> => list(string()())
%% }
-type categorical_parameter_range_specification() :: #{binary() => any()}.

%% Example:
%% describe_hub_content_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DocumentSchemaVersion">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"HubArn">> => string(),
%%   <<"HubContentArn">> => string(),
%%   <<"HubContentDependencies">> => list(hub_content_dependency()()),
%%   <<"HubContentDescription">> => string(),
%%   <<"HubContentDisplayName">> => string(),
%%   <<"HubContentDocument">> => string(),
%%   <<"HubContentMarkdown">> => string(),
%%   <<"HubContentName">> => string(),
%%   <<"HubContentSearchKeywords">> => list(string()()),
%%   <<"HubContentStatus">> => list(any()),
%%   <<"HubContentType">> => list(any()),
%%   <<"HubContentVersion">> => string(),
%%   <<"HubName">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ReferenceMinVersion">> => string(),
%%   <<"SageMakerPublicHubContentArn">> => string(),
%%   <<"SupportStatus">> => list(any())
%% }
-type describe_hub_content_response() :: #{binary() => any()}.

%% Example:
%% processing_resources() :: #{
%%   <<"ClusterConfig">> => processing_cluster_config()
%% }
-type processing_resources() :: #{binary() => any()}.

%% Example:
%% describe_inference_recommendations_job_request() :: #{
%%   <<"JobName">> := string()
%% }
-type describe_inference_recommendations_job_request() :: #{binary() => any()}.

%% Example:
%% metadata_properties() :: #{
%%   <<"CommitId">> => string(),
%%   <<"GeneratedBy">> => string(),
%%   <<"ProjectId">> => string(),
%%   <<"Repository">> => string()
%% }
-type metadata_properties() :: #{binary() => any()}.

%% Example:
%% list_optimization_jobs_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"OptimizationContains">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StatusEquals">> => list(any())
%% }
-type list_optimization_jobs_request() :: #{binary() => any()}.

%% Example:
%% create_training_plan_response() :: #{
%%   <<"TrainingPlanArn">> => string()
%% }
-type create_training_plan_response() :: #{binary() => any()}.

%% Example:
%% search_training_plan_offerings_request() :: #{
%%   <<"DurationHours">> => float(),
%%   <<"EndTimeBefore">> => non_neg_integer(),
%%   <<"InstanceCount">> := integer(),
%%   <<"InstanceType">> := list(any()),
%%   <<"StartTimeAfter">> => non_neg_integer(),
%%   <<"TargetResources">> := list(list(any())())
%% }
-type search_training_plan_offerings_request() :: #{binary() => any()}.

%% Example:
%% s3_storage_config() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"ResolvedOutputS3Uri">> => string(),
%%   <<"S3Uri">> => string()
%% }
-type s3_storage_config() :: #{binary() => any()}.

%% Example:
%% create_human_task_ui_request() :: #{
%%   <<"HumanTaskUiName">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"UiTemplate">> := ui_template()
%% }
-type create_human_task_ui_request() :: #{binary() => any()}.

%% Example:
%% studio_lifecycle_config_details() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"StudioLifecycleConfigAppType">> => list(any()),
%%   <<"StudioLifecycleConfigArn">> => string(),
%%   <<"StudioLifecycleConfigName">> => string()
%% }
-type studio_lifecycle_config_details() :: #{binary() => any()}.

%% Example:
%% search_request() :: #{
%%   <<"CrossAccountFilterOption">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Resource">> := list(any()),
%%   <<"SearchExpression">> => search_expression(),
%%   <<"SortBy">> => string(),
%%   <<"SortOrder">> => list(any()),
%%   <<"VisibilityConditions">> => list(visibility_conditions()())
%% }
-type search_request() :: #{binary() => any()}.

%% Example:
%% describe_cluster_response() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterName">> => string(),
%%   <<"ClusterStatus">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureMessage">> => string(),
%%   <<"InstanceGroups">> => list(cluster_instance_group_details()()),
%%   <<"NodeRecovery">> => list(any()),
%%   <<"Orchestrator">> => cluster_orchestrator(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type describe_cluster_response() :: #{binary() => any()}.

%% Example:
%% delete_action_request() :: #{
%%   <<"ActionName">> := string()
%% }
-type delete_action_request() :: #{binary() => any()}.

%% Example:
%% describe_model_package_group_output() :: #{
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"ModelPackageGroupArn">> => string(),
%%   <<"ModelPackageGroupDescription">> => string(),
%%   <<"ModelPackageGroupName">> => string(),
%%   <<"ModelPackageGroupStatus">> => list(any())
%% }
-type describe_model_package_group_output() :: #{binary() => any()}.

%% Example:
%% describe_processing_job_request() :: #{
%%   <<"ProcessingJobName">> := string()
%% }
-type describe_processing_job_request() :: #{binary() => any()}.

%% Example:
%% blue_green_update_policy() :: #{
%%   <<"MaximumExecutionTimeoutInSeconds">> => integer(),
%%   <<"TerminationWaitInSeconds">> => integer(),
%%   <<"TrafficRoutingConfiguration">> => traffic_routing_config()
%% }
-type blue_green_update_policy() :: #{binary() => any()}.

%% Example:
%% compute_quota_target() :: #{
%%   <<"FairShareWeight">> => integer(),
%%   <<"TeamName">> => string()
%% }
-type compute_quota_target() :: #{binary() => any()}.

%% Example:
%% create_studio_lifecycle_config_request() :: #{
%%   <<"StudioLifecycleConfigAppType">> := list(any()),
%%   <<"StudioLifecycleConfigContent">> := string(),
%%   <<"StudioLifecycleConfigName">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_studio_lifecycle_config_request() :: #{binary() => any()}.

%% Example:
%% source_algorithm_specification() :: #{
%%   <<"SourceAlgorithms">> => list(source_algorithm()())
%% }
-type source_algorithm_specification() :: #{binary() => any()}.

%% Example:
%% network_config() :: #{
%%   <<"EnableInterContainerTrafficEncryption">> => boolean(),
%%   <<"EnableNetworkIsolation">> => boolean(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type network_config() :: #{binary() => any()}.

%% Example:
%% describe_flow_definition_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"FlowDefinitionArn">> => string(),
%%   <<"FlowDefinitionName">> => string(),
%%   <<"FlowDefinitionStatus">> => list(any()),
%%   <<"HumanLoopActivationConfig">> => human_loop_activation_config(),
%%   <<"HumanLoopConfig">> => human_loop_config(),
%%   <<"HumanLoopRequestSource">> => human_loop_request_source(),
%%   <<"OutputConfig">> => flow_definition_output_config(),
%%   <<"RoleArn">> => string()
%% }
-type describe_flow_definition_response() :: #{binary() => any()}.

%% Example:
%% delete_studio_lifecycle_config_request() :: #{
%%   <<"StudioLifecycleConfigName">> := string()
%% }
-type delete_studio_lifecycle_config_request() :: #{binary() => any()}.

%% Example:
%% delete_feature_group_request() :: #{
%%   <<"FeatureGroupName">> := string()
%% }
-type delete_feature_group_request() :: #{binary() => any()}.

%% Example:
%% update_cluster_software_request() :: #{
%%   <<"ClusterName">> := string()
%% }
-type update_cluster_software_request() :: #{binary() => any()}.

%% Example:
%% online_store_config_update() :: #{
%%   <<"TtlDuration">> => ttl_duration()
%% }
-type online_store_config_update() :: #{binary() => any()}.

%% Example:
%% pipeline_definition_s3_location() :: #{
%%   <<"Bucket">> => string(),
%%   <<"ObjectKey">> => string(),
%%   <<"VersionId">> => string()
%% }
-type pipeline_definition_s3_location() :: #{binary() => any()}.

%% Example:
%% phase() :: #{
%%   <<"DurationInSeconds">> => integer(),
%%   <<"InitialNumberOfUsers">> => integer(),
%%   <<"SpawnRate">> => integer()
%% }
-type phase() :: #{binary() => any()}.

%% Example:
%% create_inference_experiment_response() :: #{
%%   <<"InferenceExperimentArn">> => string()
%% }
-type create_inference_experiment_response() :: #{binary() => any()}.

%% Example:
%% update_project_input() :: #{
%%   <<"ProjectDescription">> => string(),
%%   <<"ProjectName">> := string(),
%%   <<"ServiceCatalogProvisioningUpdateDetails">> => service_catalog_provisioning_update_details(),
%%   <<"Tags">> => list(tag()())
%% }
-type update_project_input() :: #{binary() => any()}.

%% Example:
%% optimization_job_model_source() :: #{
%%   <<"S3">> => optimization_job_model_source_s3()
%% }
-type optimization_job_model_source() :: #{binary() => any()}.

%% Example:
%% additional_s3_data_source() :: #{
%%   <<"CompressionType">> => list(any()),
%%   <<"ETag">> => string(),
%%   <<"S3DataType">> => list(any()),
%%   <<"S3Uri">> => string()
%% }
-type additional_s3_data_source() :: #{binary() => any()}.

%% Example:
%% model_digests() :: #{
%%   <<"ArtifactDigest">> => string()
%% }
-type model_digests() :: #{binary() => any()}.

%% Example:
%% create_partner_app_presigned_url_response() :: #{
%%   <<"Url">> => string()
%% }
-type create_partner_app_presigned_url_response() :: #{binary() => any()}.

%% Example:
%% start_mlflow_tracking_server_request() :: #{
%%   <<"TrackingServerName">> := string()
%% }
-type start_mlflow_tracking_server_request() :: #{binary() => any()}.

%% Example:
%% get_search_suggestions_response() :: #{
%%   <<"PropertyNameSuggestions">> => list(property_name_suggestion()())
%% }
-type get_search_suggestions_response() :: #{binary() => any()}.

%% Example:
%% list_partner_apps_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Summaries">> => list(partner_app_summary()())
%% }
-type list_partner_apps_response() :: #{binary() => any()}.

%% Example:
%% oidc_member_definition() :: #{
%%   <<"Groups">> => list(string()())
%% }
-type oidc_member_definition() :: #{binary() => any()}.

%% Example:
%% time_series_config() :: #{
%%   <<"GroupingAttributeNames">> => list(string()()),
%%   <<"ItemIdentifierAttributeName">> => string(),
%%   <<"TargetAttributeName">> => string(),
%%   <<"TimestampAttributeName">> => string()
%% }
-type time_series_config() :: #{binary() => any()}.

%% Example:
%% redshift_dataset_definition() :: #{
%%   <<"ClusterId">> => string(),
%%   <<"ClusterRoleArn">> => string(),
%%   <<"Database">> => string(),
%%   <<"DbUser">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"OutputCompression">> => list(any()),
%%   <<"OutputFormat">> => list(any()),
%%   <<"OutputS3Uri">> => string(),
%%   <<"QueryString">> => string()
%% }
-type redshift_dataset_definition() :: #{binary() => any()}.

%% Example:
%% project_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"ProjectArn">> => string(),
%%   <<"ProjectDescription">> => string(),
%%   <<"ProjectId">> => string(),
%%   <<"ProjectName">> => string(),
%%   <<"ProjectStatus">> => list(any())
%% }
-type project_summary() :: #{binary() => any()}.

%% Example:
%% shadow_model_variant_config() :: #{
%%   <<"SamplingPercentage">> => integer(),
%%   <<"ShadowModelVariantName">> => string()
%% }
-type shadow_model_variant_config() :: #{binary() => any()}.

%% Example:
%% create_trial_component_request() :: #{
%%   <<"DisplayName">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"InputArtifacts">> => map(),
%%   <<"MetadataProperties">> => metadata_properties(),
%%   <<"OutputArtifacts">> => map(),
%%   <<"Parameters">> => map(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => trial_component_status(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TrialComponentName">> := string()
%% }
-type create_trial_component_request() :: #{binary() => any()}.

%% Example:
%% stop_inference_experiment_request() :: #{
%%   <<"DesiredModelVariants">> => list(model_variant_config()()),
%%   <<"DesiredState">> => list(any()),
%%   <<"ModelVariantActions">> := map(),
%%   <<"Name">> := string(),
%%   <<"Reason">> => string()
%% }
-type stop_inference_experiment_request() :: #{binary() => any()}.

%% Example:
%% list_inference_experiments_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StatusEquals">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type list_inference_experiments_request() :: #{binary() => any()}.

%% Example:
%% describe_cluster_node_request() :: #{
%%   <<"ClusterName">> := string(),
%%   <<"NodeId">> := string()
%% }
-type describe_cluster_node_request() :: #{binary() => any()}.

%% Example:
%% list_cluster_scheduler_configs_response() :: #{
%%   <<"ClusterSchedulerConfigSummaries">> => list(cluster_scheduler_config_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_cluster_scheduler_configs_response() :: #{binary() => any()}.

%% Example:
%% clarify_shap_baseline_config() :: #{
%%   <<"MimeType">> => string(),
%%   <<"ShapBaseline">> => string(),
%%   <<"ShapBaselineUri">> => string()
%% }
-type clarify_shap_baseline_config() :: #{binary() => any()}.

%% Example:
%% processing_feature_store_output() :: #{
%%   <<"FeatureGroupName">> => string()
%% }
-type processing_feature_store_output() :: #{binary() => any()}.

%% Example:
%% get_lineage_group_policy_response() :: #{
%%   <<"LineageGroupArn">> => string(),
%%   <<"ResourcePolicy">> => string()
%% }
-type get_lineage_group_policy_response() :: #{binary() => any()}.

%% Example:
%% hyper_parameter_tuning_resource_config() :: #{
%%   <<"AllocationStrategy">> => list(any()),
%%   <<"InstanceConfigs">> => list(hyper_parameter_tuning_instance_config()()),
%%   <<"InstanceCount">> => integer(),
%%   <<"InstanceType">> => list(any()),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VolumeSizeInGB">> => integer()
%% }
-type hyper_parameter_tuning_resource_config() :: #{binary() => any()}.

%% Example:
%% s3_presign() :: #{
%%   <<"IamPolicyConstraints">> => iam_policy_constraints()
%% }
-type s3_presign() :: #{binary() => any()}.

%% Example:
%% annotation_consolidation_config() :: #{
%%   <<"AnnotationConsolidationLambdaArn">> => string()
%% }
-type annotation_consolidation_config() :: #{binary() => any()}.

%% Example:
%% list_studio_lifecycle_configs_request() :: #{
%%   <<"AppTypeEquals">> => list(any()),
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"ModifiedTimeAfter">> => non_neg_integer(),
%%   <<"ModifiedTimeBefore">> => non_neg_integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_studio_lifecycle_configs_request() :: #{binary() => any()}.

%% Example:
%% kernel_gateway_app_settings() :: #{
%%   <<"CustomImages">> => list(custom_image()()),
%%   <<"DefaultResourceSpec">> => resource_spec(),
%%   <<"LifecycleConfigArns">> => list(string()())
%% }
-type kernel_gateway_app_settings() :: #{binary() => any()}.

%% Example:
%% delete_context_request() :: #{
%%   <<"ContextName">> := string()
%% }
-type delete_context_request() :: #{binary() => any()}.

%% Example:
%% kernel_spec() :: #{
%%   <<"DisplayName">> => string(),
%%   <<"Name">> => string()
%% }
-type kernel_spec() :: #{binary() => any()}.

%% Example:
%% create_auto_ml_job_response() :: #{
%%   <<"AutoMLJobArn">> => string()
%% }
-type create_auto_ml_job_response() :: #{binary() => any()}.

%% Example:
%% derived_information() :: #{
%%   <<"DerivedDataInputConfig">> => string()
%% }
-type derived_information() :: #{binary() => any()}.

%% Example:
%% model_sharding_config() :: #{
%%   <<"Image">> => string(),
%%   <<"OverrideEnvironment">> => map()
%% }
-type model_sharding_config() :: #{binary() => any()}.

%% Example:
%% data_quality_baseline_config() :: #{
%%   <<"BaseliningJobName">> => string(),
%%   <<"ConstraintsResource">> => monitoring_constraints_resource(),
%%   <<"StatisticsResource">> => monitoring_statistics_resource()
%% }
-type data_quality_baseline_config() :: #{binary() => any()}.

%% Example:
%% shuffle_config() :: #{
%%   <<"Seed">> => float()
%% }
-type shuffle_config() :: #{binary() => any()}.

%% Example:
%% create_cluster_response() :: #{
%%   <<"ClusterArn">> => string()
%% }
-type create_cluster_response() :: #{binary() => any()}.

%% Example:
%% list_notebook_instances_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"NotebookInstances">> => list(notebook_instance_summary()())
%% }
-type list_notebook_instances_output() :: #{binary() => any()}.

%% Example:
%% list_model_card_export_jobs_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"ModelCardExportJobNameContains">> => string(),
%%   <<"ModelCardName">> := string(),
%%   <<"ModelCardVersion">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StatusEquals">> => list(any())
%% }
-type list_model_card_export_jobs_request() :: #{binary() => any()}.

%% Example:
%% model_card_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ModelCardArn">> => string(),
%%   <<"ModelCardName">> => string(),
%%   <<"ModelCardStatus">> => list(any())
%% }
-type model_card_summary() :: #{binary() => any()}.

%% Example:
%% create_model_card_export_job_response() :: #{
%%   <<"ModelCardExportJobArn">> => string()
%% }
-type create_model_card_export_job_response() :: #{binary() => any()}.

%% Example:
%% space_app_lifecycle_management() :: #{
%%   <<"IdleSettings">> => space_idle_settings()
%% }
-type space_app_lifecycle_management() :: #{binary() => any()}.

%% Example:
%% inference_recommendation() :: #{
%%   <<"EndpointConfiguration">> => endpoint_output_configuration(),
%%   <<"InvocationEndTime">> => non_neg_integer(),
%%   <<"InvocationStartTime">> => non_neg_integer(),
%%   <<"Metrics">> => recommendation_metrics(),
%%   <<"ModelConfiguration">> => model_configuration(),
%%   <<"RecommendationId">> => string()
%% }
-type inference_recommendation() :: #{binary() => any()}.

%% Example:
%% create_pipeline_response() :: #{
%%   <<"PipelineArn">> => string()
%% }
-type create_pipeline_response() :: #{binary() => any()}.

%% Example:
%% start_monitoring_schedule_request() :: #{
%%   <<"MonitoringScheduleName">> := string()
%% }
-type start_monitoring_schedule_request() :: #{binary() => any()}.

%% Example:
%% feature_definition() :: #{
%%   <<"CollectionConfig">> => list(),
%%   <<"CollectionType">> => list(any()),
%%   <<"FeatureName">> => string(),
%%   <<"FeatureType">> => list(any())
%% }
-type feature_definition() :: #{binary() => any()}.

%% Example:
%% property_name_query() :: #{
%%   <<"PropertyNameHint">> => string()
%% }
-type property_name_query() :: #{binary() => any()}.

%% Example:
%% partner_app_maintenance_config() :: #{
%%   <<"MaintenanceWindowStart">> => string()
%% }
-type partner_app_maintenance_config() :: #{binary() => any()}.

%% Example:
%% describe_inference_component_input() :: #{
%%   <<"InferenceComponentName">> := string()
%% }
-type describe_inference_component_input() :: #{binary() => any()}.

%% Example:
%% trial_component_status() :: #{
%%   <<"Message">> => string(),
%%   <<"PrimaryStatus">> => list(any())
%% }
-type trial_component_status() :: #{binary() => any()}.

%% Example:
%% update_app_image_config_request() :: #{
%%   <<"AppImageConfigName">> := string(),
%%   <<"CodeEditorAppImageConfig">> => code_editor_app_image_config(),
%%   <<"JupyterLabAppImageConfig">> => jupyter_lab_app_image_config(),
%%   <<"KernelGatewayImageConfig">> => kernel_gateway_image_config()
%% }
-type update_app_image_config_request() :: #{binary() => any()}.

%% Example:
%% optimization_vpc_config() :: #{
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"Subnets">> => list(string()())
%% }
-type optimization_vpc_config() :: #{binary() => any()}.

%% Example:
%% training_image_config() :: #{
%%   <<"TrainingRepositoryAccessMode">> => list(any()),
%%   <<"TrainingRepositoryAuthConfig">> => training_repository_auth_config()
%% }
-type training_image_config() :: #{binary() => any()}.

%% Example:
%% delete_mlflow_tracking_server_response() :: #{
%%   <<"TrackingServerArn">> => string()
%% }
-type delete_mlflow_tracking_server_response() :: #{binary() => any()}.

%% Example:
%% priority_class() :: #{
%%   <<"Name">> => string(),
%%   <<"Weight">> => integer()
%% }
-type priority_class() :: #{binary() => any()}.

%% Example:
%% list_stage_devices_request() :: #{
%%   <<"EdgeDeploymentPlanName">> := string(),
%%   <<"ExcludeDevicesDeployedInOtherStage">> => boolean(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StageName">> := string()
%% }
-type list_stage_devices_request() :: #{binary() => any()}.

%% Example:
%% lineage_group_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DisplayName">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LineageGroupArn">> => string(),
%%   <<"LineageGroupName">> => string()
%% }
-type lineage_group_summary() :: #{binary() => any()}.

%% Example:
%% describe_inference_experiment_request() :: #{
%%   <<"Name">> := string()
%% }
-type describe_inference_experiment_request() :: #{binary() => any()}.

%% Example:
%% experiment_source() :: #{
%%   <<"SourceArn">> => string(),
%%   <<"SourceType">> => string()
%% }
-type experiment_source() :: #{binary() => any()}.

%% Example:
%% update_image_version_response() :: #{
%%   <<"ImageVersionArn">> => string()
%% }
-type update_image_version_response() :: #{binary() => any()}.

%% Example:
%% list_hub_contents_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"HubContentType">> := list(any()),
%%   <<"HubName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"MaxSchemaVersion">> => string(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_hub_contents_request() :: #{binary() => any()}.

%% Example:
%% batch_data_capture_config() :: #{
%%   <<"DestinationS3Uri">> => string(),
%%   <<"GenerateInferenceId">> => boolean(),
%%   <<"KmsKeyId">> => string()
%% }
-type batch_data_capture_config() :: #{binary() => any()}.

%% Example:
%% list_monitoring_schedules_response() :: #{
%%   <<"MonitoringScheduleSummaries">> => list(monitoring_schedule_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_monitoring_schedules_response() :: #{binary() => any()}.

%% Example:
%% delete_algorithm_input() :: #{
%%   <<"AlgorithmName">> := string()
%% }
-type delete_algorithm_input() :: #{binary() => any()}.

%% Example:
%% hub_content_info() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DocumentSchemaVersion">> => string(),
%%   <<"HubContentArn">> => string(),
%%   <<"HubContentDescription">> => string(),
%%   <<"HubContentDisplayName">> => string(),
%%   <<"HubContentName">> => string(),
%%   <<"HubContentSearchKeywords">> => list(string()()),
%%   <<"HubContentStatus">> => list(any()),
%%   <<"HubContentType">> => list(any()),
%%   <<"HubContentVersion">> => string(),
%%   <<"OriginalCreationTime">> => non_neg_integer(),
%%   <<"SageMakerPublicHubContentArn">> => string(),
%%   <<"SupportStatus">> => list(any())
%% }
-type hub_content_info() :: #{binary() => any()}.

%% Example:
%% list_model_metadata_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SearchExpression">> => model_metadata_search_expression()
%% }
-type list_model_metadata_request() :: #{binary() => any()}.

%% Example:
%% auto_ml_security_config() :: #{
%%   <<"EnableInterContainerTrafficEncryption">> => boolean(),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type auto_ml_security_config() :: #{binary() => any()}.

%% Example:
%% model_metadata_summary() :: #{
%%   <<"Domain">> => string(),
%%   <<"Framework">> => string(),
%%   <<"FrameworkVersion">> => string(),
%%   <<"Model">> => string(),
%%   <<"Task">> => string()
%% }
-type model_metadata_summary() :: #{binary() => any()}.

%% Example:
%% throughput_config() :: #{
%%   <<"ProvisionedReadCapacityUnits">> => integer(),
%%   <<"ProvisionedWriteCapacityUnits">> => integer(),
%%   <<"ThroughputMode">> => list(any())
%% }
-type throughput_config() :: #{binary() => any()}.

%% Example:
%% source_ip_config() :: #{
%%   <<"Cidrs">> => list(string()())
%% }
-type source_ip_config() :: #{binary() => any()}.

%% Example:
%% pipeline_execution_summary() :: #{
%%   <<"PipelineExecutionArn">> => string(),
%%   <<"PipelineExecutionDescription">> => string(),
%%   <<"PipelineExecutionDisplayName">> => string(),
%%   <<"PipelineExecutionFailureReason">> => string(),
%%   <<"PipelineExecutionStatus">> => list(any()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type pipeline_execution_summary() :: #{binary() => any()}.

%% Example:
%% list_transform_jobs_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StatusEquals">> => list(any())
%% }
-type list_transform_jobs_request() :: #{binary() => any()}.

%% Example:
%% candidate_generation_config() :: #{
%%   <<"AlgorithmsConfig">> => list(auto_ml_algorithm_config()())
%% }
-type candidate_generation_config() :: #{binary() => any()}.

%% Example:
%% alarm() :: #{
%%   <<"AlarmName">> => string()
%% }
-type alarm() :: #{binary() => any()}.

%% Example:
%% algorithm_validation_specification() :: #{
%%   <<"ValidationProfiles">> => list(algorithm_validation_profile()()),
%%   <<"ValidationRole">> => string()
%% }
-type algorithm_validation_specification() :: #{binary() => any()}.

%% Example:
%% auto_ml_container_definition() :: #{
%%   <<"Environment">> => map(),
%%   <<"Image">> => string(),
%%   <<"ModelDataUrl">> => string()
%% }
-type auto_ml_container_definition() :: #{binary() => any()}.

%% Example:
%% target_tracking_scaling_policy_configuration() :: #{
%%   <<"MetricSpecification">> => list(),
%%   <<"TargetValue">> => float()
%% }
-type target_tracking_scaling_policy_configuration() :: #{binary() => any()}.

%% Example:
%% update_domain_response() :: #{
%%   <<"DomainArn">> => string()
%% }
-type update_domain_response() :: #{binary() => any()}.

%% Example:
%% resource_in_use() :: #{
%%   <<"Message">> => string()
%% }
-type resource_in_use() :: #{binary() => any()}.

%% Example:
%% stop_inference_recommendations_job_request() :: #{
%%   <<"JobName">> := string()
%% }
-type stop_inference_recommendations_job_request() :: #{binary() => any()}.

%% Example:
%% describe_action_response() :: #{
%%   <<"ActionArn">> => string(),
%%   <<"ActionName">> => string(),
%%   <<"ActionType">> => string(),
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LineageGroupArn">> => string(),
%%   <<"MetadataProperties">> => metadata_properties(),
%%   <<"Properties">> => map(),
%%   <<"Source">> => action_source(),
%%   <<"Status">> => list(any())
%% }
-type describe_action_response() :: #{binary() => any()}.

%% Example:
%% list_models_output() :: #{
%%   <<"Models">> => list(model_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_models_output() :: #{binary() => any()}.

%% Example:
%% scaling_policy_objective() :: #{
%%   <<"MaxInvocationsPerMinute">> => integer(),
%%   <<"MinInvocationsPerMinute">> => integer()
%% }
-type scaling_policy_objective() :: #{binary() => any()}.

%% Example:
%% model_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"ModelArn">> => string(),
%%   <<"ModelName">> => string()
%% }
-type model_summary() :: #{binary() => any()}.

%% Example:
%% training_repository_auth_config() :: #{
%%   <<"TrainingRepositoryCredentialsProviderArn">> => string()
%% }
-type training_repository_auth_config() :: #{binary() => any()}.

%% Example:
%% list_model_card_versions_response() :: #{
%%   <<"ModelCardVersionSummaryList">> => list(model_card_version_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_model_card_versions_response() :: #{binary() => any()}.

%% Example:
%% trial_component() :: #{
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DisplayName">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"InputArtifacts">> => map(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LineageGroupArn">> => string(),
%%   <<"MetadataProperties">> => metadata_properties(),
%%   <<"Metrics">> => list(trial_component_metric_summary()()),
%%   <<"OutputArtifacts">> => map(),
%%   <<"Parameters">> => map(),
%%   <<"Parents">> => list(parent()()),
%%   <<"RunName">> => string(),
%%   <<"Source">> => trial_component_source(),
%%   <<"SourceDetail">> => trial_component_source_detail(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => trial_component_status(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TrialComponentArn">> => string(),
%%   <<"TrialComponentName">> => string()
%% }
-type trial_component() :: #{binary() => any()}.

%% Example:
%% deployment_config() :: #{
%%   <<"AutoRollbackConfiguration">> => auto_rollback_config(),
%%   <<"BlueGreenUpdatePolicy">> => blue_green_update_policy(),
%%   <<"RollingUpdatePolicy">> => rolling_update_policy()
%% }
-type deployment_config() :: #{binary() => any()}.

%% Example:
%% processing_job_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"ExitMessage">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ProcessingEndTime">> => non_neg_integer(),
%%   <<"ProcessingJobArn">> => string(),
%%   <<"ProcessingJobName">> => string(),
%%   <<"ProcessingJobStatus">> => list(any())
%% }
-type processing_job_summary() :: #{binary() => any()}.

%% Example:
%% kendra_settings() :: #{
%%   <<"Status">> => list(any())
%% }
-type kendra_settings() :: #{binary() => any()}.

%% Example:
%% create_data_quality_job_definition_response() :: #{
%%   <<"JobDefinitionArn">> => string()
%% }
-type create_data_quality_job_definition_response() :: #{binary() => any()}.

%% Example:
%% labeling_job_data_attributes() :: #{
%%   <<"ContentClassifiers">> => list(list(any())())
%% }
-type labeling_job_data_attributes() :: #{binary() => any()}.

%% Example:
%% update_trial_request() :: #{
%%   <<"DisplayName">> => string(),
%%   <<"TrialName">> := string()
%% }
-type update_trial_request() :: #{binary() => any()}.

%% Example:
%% list_model_metadata_response() :: #{
%%   <<"ModelMetadataSummaries">> => list(model_metadata_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_model_metadata_response() :: #{binary() => any()}.

%% Example:
%% inference_recommendations_job() :: #{
%%   <<"CompletionTime">> => non_neg_integer(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"JobArn">> => string(),
%%   <<"JobDescription">> => string(),
%%   <<"JobName">> => string(),
%%   <<"JobType">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ModelName">> => string(),
%%   <<"ModelPackageVersionArn">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"SamplePayloadUrl">> => string(),
%%   <<"Status">> => list(any())
%% }
-type inference_recommendations_job() :: #{binary() => any()}.

%% Example:
%% scaling_policy_metric() :: #{
%%   <<"InvocationsPerInstance">> => integer(),
%%   <<"ModelLatency">> => integer()
%% }
-type scaling_policy_metric() :: #{binary() => any()}.

%% Example:
%% describe_app_image_config_request() :: #{
%%   <<"AppImageConfigName">> := string()
%% }
-type describe_app_image_config_request() :: #{binary() => any()}.

%% Example:
%% delete_edge_deployment_stage_request() :: #{
%%   <<"EdgeDeploymentPlanName">> := string(),
%%   <<"StageName">> := string()
%% }
-type delete_edge_deployment_stage_request() :: #{binary() => any()}.

%% Example:
%% pipeline_execution() :: #{
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ParallelismConfiguration">> => parallelism_configuration(),
%%   <<"PipelineArn">> => string(),
%%   <<"PipelineExecutionArn">> => string(),
%%   <<"PipelineExecutionDescription">> => string(),
%%   <<"PipelineExecutionDisplayName">> => string(),
%%   <<"PipelineExecutionStatus">> => list(any()),
%%   <<"PipelineExperimentConfig">> => pipeline_experiment_config(),
%%   <<"PipelineParameters">> => list(parameter()()),
%%   <<"SelectiveExecutionConfig">> => selective_execution_config()
%% }
-type pipeline_execution() :: #{binary() => any()}.

%% Example:
%% f_sx_lustre_file_system() :: #{
%%   <<"FileSystemId">> => string()
%% }
-type f_sx_lustre_file_system() :: #{binary() => any()}.

%% Example:
%% monitoring_alert_summary() :: #{
%%   <<"Actions">> => monitoring_alert_actions(),
%%   <<"AlertStatus">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DatapointsToAlert">> => integer(),
%%   <<"EvaluationPeriod">> => integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"MonitoringAlertName">> => string()
%% }
-type monitoring_alert_summary() :: #{binary() => any()}.

%% Example:
%% pipeline() :: #{
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LastRunTime">> => non_neg_integer(),
%%   <<"ParallelismConfiguration">> => parallelism_configuration(),
%%   <<"PipelineArn">> => string(),
%%   <<"PipelineDescription">> => string(),
%%   <<"PipelineDisplayName">> => string(),
%%   <<"PipelineName">> => string(),
%%   <<"PipelineStatus">> => list(any()),
%%   <<"RoleArn">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type pipeline() :: #{binary() => any()}.

%% Example:
%% list_inference_recommendations_job_steps_request() :: #{
%%   <<"JobName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StepType">> => list(any())
%% }
-type list_inference_recommendations_job_steps_request() :: #{binary() => any()}.

%% Example:
%% delete_tags_input() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string()())
%% }
-type delete_tags_input() :: #{binary() => any()}.

%% Example:
%% parameter_ranges() :: #{
%%   <<"AutoParameters">> => list(auto_parameter()()),
%%   <<"CategoricalParameterRanges">> => list(categorical_parameter_range()()),
%%   <<"ContinuousParameterRanges">> => list(continuous_parameter_range()()),
%%   <<"IntegerParameterRanges">> => list(integer_parameter_range()())
%% }
-type parameter_ranges() :: #{binary() => any()}.

%% Example:
%% list_model_quality_job_definitions_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"EndpointName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_model_quality_job_definitions_request() :: #{binary() => any()}.

%% Example:
%% list_inference_recommendations_jobs_response() :: #{
%%   <<"InferenceRecommendationsJobs">> => list(inference_recommendations_job()()),
%%   <<"NextToken">> => string()
%% }
-type list_inference_recommendations_jobs_response() :: #{binary() => any()}.

%% Example:
%% traffic_pattern() :: #{
%%   <<"Phases">> => list(phase()()),
%%   <<"Stairs">> => stairs(),
%%   <<"TrafficType">> => list(any())
%% }
-type traffic_pattern() :: #{binary() => any()}.

%% Example:
%% update_model_package_output() :: #{
%%   <<"ModelPackageArn">> => string()
%% }
-type update_model_package_output() :: #{binary() => any()}.

%% Example:
%% human_task_config() :: #{
%%   <<"AnnotationConsolidationConfig">> => annotation_consolidation_config(),
%%   <<"MaxConcurrentTaskCount">> => integer(),
%%   <<"NumberOfHumanWorkersPerDataObject">> => integer(),
%%   <<"PreHumanTaskLambdaArn">> => string(),
%%   <<"PublicWorkforceTaskPrice">> => public_workforce_task_price(),
%%   <<"TaskAvailabilityLifetimeInSeconds">> => integer(),
%%   <<"TaskDescription">> => string(),
%%   <<"TaskKeywords">> => list(string()()),
%%   <<"TaskTimeLimitInSeconds">> => integer(),
%%   <<"TaskTitle">> => string(),
%%   <<"UiConfig">> => ui_config(),
%%   <<"WorkteamArn">> => string()
%% }
-type human_task_config() :: #{binary() => any()}.

%% Example:
%% delete_data_quality_job_definition_request() :: #{
%%   <<"JobDefinitionName">> := string()
%% }
-type delete_data_quality_job_definition_request() :: #{binary() => any()}.

%% Example:
%% list_candidates_for_auto_ml_job_request() :: #{
%%   <<"AutoMLJobName">> := string(),
%%   <<"CandidateNameEquals">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StatusEquals">> => list(any())
%% }
-type list_candidates_for_auto_ml_job_request() :: #{binary() => any()}.

%% Example:
%% update_notebook_instance_output() :: #{

%% }
-type update_notebook_instance_output() :: #{binary() => any()}.

%% Example:
%% optimization_job_output_config() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"S3OutputLocation">> => string()
%% }
-type optimization_job_output_config() :: #{binary() => any()}.

%% Example:
%% list_pipeline_execution_steps_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PipelineExecutionSteps">> => list(pipeline_execution_step()())
%% }
-type list_pipeline_execution_steps_response() :: #{binary() => any()}.

%% Example:
%% describe_endpoint_input() :: #{
%%   <<"EndpointName">> := string()
%% }
-type describe_endpoint_input() :: #{binary() => any()}.

%% Example:
%% delete_trial_response() :: #{
%%   <<"TrialArn">> => string()
%% }
-type delete_trial_response() :: #{binary() => any()}.

%% Example:
%% model_variant_config_summary() :: #{
%%   <<"InfrastructureConfig">> => model_infrastructure_config(),
%%   <<"ModelName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"VariantName">> => string()
%% }
-type model_variant_config_summary() :: #{binary() => any()}.

%% Example:
%% update_endpoint_input() :: #{
%%   <<"DeploymentConfig">> => deployment_config(),
%%   <<"EndpointConfigName">> := string(),
%%   <<"EndpointName">> := string(),
%%   <<"ExcludeRetainedVariantProperties">> => list(variant_property()()),
%%   <<"RetainAllVariantProperties">> => boolean(),
%%   <<"RetainDeploymentConfig">> => boolean()
%% }
-type update_endpoint_input() :: #{binary() => any()}.

%% Example:
%% search_training_plan_offerings_response() :: #{
%%   <<"TrainingPlanOfferings">> => list(training_plan_offering()())
%% }
-type search_training_plan_offerings_response() :: #{binary() => any()}.

%% Example:
%% describe_space_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"SpaceName">> := string()
%% }
-type describe_space_request() :: #{binary() => any()}.

%% Example:
%% create_experiment_response() :: #{
%%   <<"ExperimentArn">> => string()
%% }
-type create_experiment_response() :: #{binary() => any()}.

%% Example:
%% describe_endpoint_config_input() :: #{
%%   <<"EndpointConfigName">> := string()
%% }
-type describe_endpoint_config_input() :: #{binary() => any()}.

%% Example:
%% flow_definition_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"FlowDefinitionArn">> => string(),
%%   <<"FlowDefinitionName">> => string(),
%%   <<"FlowDefinitionStatus">> => list(any())
%% }
-type flow_definition_summary() :: #{binary() => any()}.

%% Example:
%% update_code_repository_input() :: #{
%%   <<"CodeRepositoryName">> := string(),
%%   <<"GitConfig">> => git_config_for_update()
%% }
-type update_code_repository_input() :: #{binary() => any()}.

%% Example:
%% parameter_range() :: #{
%%   <<"CategoricalParameterRangeSpecification">> => categorical_parameter_range_specification(),
%%   <<"ContinuousParameterRangeSpecification">> => continuous_parameter_range_specification(),
%%   <<"IntegerParameterRangeSpecification">> => integer_parameter_range_specification()
%% }
-type parameter_range() :: #{binary() => any()}.

%% Example:
%% custom_image() :: #{
%%   <<"AppImageConfigName">> => string(),
%%   <<"ImageName">> => string(),
%%   <<"ImageVersionNumber">> => integer()
%% }
-type custom_image() :: #{binary() => any()}.

%% Example:
%% update_notebook_instance_lifecycle_config_output() :: #{

%% }
-type update_notebook_instance_lifecycle_config_output() :: #{binary() => any()}.

%% Example:
%% list_data_quality_job_definitions_response() :: #{
%%   <<"JobDefinitionSummaries">> => list(monitoring_job_definition_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_data_quality_job_definitions_response() :: #{binary() => any()}.

%% Example:
%% explainer_config() :: #{
%%   <<"ClarifyExplainerConfig">> => clarify_explainer_config()
%% }
-type explainer_config() :: #{binary() => any()}.

%% Example:
%% custom_posix_user_config() :: #{
%%   <<"Gid">> => float(),
%%   <<"Uid">> => float()
%% }
-type custom_posix_user_config() :: #{binary() => any()}.

%% Example:
%% training_specification() :: #{
%%   <<"AdditionalS3DataSource">> => additional_s3_data_source(),
%%   <<"MetricDefinitions">> => list(metric_definition()()),
%%   <<"SupportedHyperParameters">> => list(hyper_parameter_specification()()),
%%   <<"SupportedTrainingInstanceTypes">> => list(list(any())()),
%%   <<"SupportedTuningJobObjectiveMetrics">> => list(hyper_parameter_tuning_job_objective()()),
%%   <<"SupportsDistributedTraining">> => boolean(),
%%   <<"TrainingChannels">> => list(channel_specification()()),
%%   <<"TrainingImage">> => string(),
%%   <<"TrainingImageDigest">> => string()
%% }
-type training_specification() :: #{binary() => any()}.

%% Example:
%% update_user_profile_response() :: #{
%%   <<"UserProfileArn">> => string()
%% }
-type update_user_profile_response() :: #{binary() => any()}.

%% Example:
%% describe_lineage_group_request() :: #{
%%   <<"LineageGroupName">> := string()
%% }
-type describe_lineage_group_request() :: #{binary() => any()}.

%% Example:
%% hyper_parameter_tuning_job_warm_start_config() :: #{
%%   <<"ParentHyperParameterTuningJobs">> => list(parent_hyper_parameter_tuning_job()()),
%%   <<"WarmStartType">> => list(any())
%% }
-type hyper_parameter_tuning_job_warm_start_config() :: #{binary() => any()}.

%% Example:
%% describe_studio_lifecycle_config_request() :: #{
%%   <<"StudioLifecycleConfigName">> := string()
%% }
-type describe_studio_lifecycle_config_request() :: #{binary() => any()}.

%% Example:
%% processing_s3_input() :: #{
%%   <<"LocalPath">> => string(),
%%   <<"S3CompressionType">> => list(any()),
%%   <<"S3DataDistributionType">> => list(any()),
%%   <<"S3DataType">> => list(any()),
%%   <<"S3InputMode">> => list(any()),
%%   <<"S3Uri">> => string()
%% }
-type processing_s3_input() :: #{binary() => any()}.

%% Example:
%% create_trial_component_response() :: #{
%%   <<"TrialComponentArn">> => string()
%% }
-type create_trial_component_response() :: #{binary() => any()}.

%% Example:
%% auto_ml_compute_config() :: #{
%%   <<"EmrServerlessComputeConfig">> => emr_serverless_compute_config()
%% }
-type auto_ml_compute_config() :: #{binary() => any()}.

%% Example:
%% create_endpoint_input() :: #{
%%   <<"DeploymentConfig">> => deployment_config(),
%%   <<"EndpointConfigName">> := string(),
%%   <<"EndpointName">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_endpoint_input() :: #{binary() => any()}.

%% Example:
%% pipeline_execution_step() :: #{
%%   <<"AttemptCount">> => integer(),
%%   <<"CacheHitResult">> => cache_hit_result(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"Metadata">> => pipeline_execution_step_metadata(),
%%   <<"SelectiveExecutionResult">> => selective_execution_result(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"StepDescription">> => string(),
%%   <<"StepDisplayName">> => string(),
%%   <<"StepName">> => string(),
%%   <<"StepStatus">> => list(any())
%% }
-type pipeline_execution_step() :: #{binary() => any()}.

%% Example:
%% feature_metadata() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"FeatureGroupArn">> => string(),
%%   <<"FeatureGroupName">> => string(),
%%   <<"FeatureName">> => string(),
%%   <<"FeatureType">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Parameters">> => list(feature_parameter()())
%% }
-type feature_metadata() :: #{binary() => any()}.

%% Example:
%% describe_cluster_node_response() :: #{
%%   <<"NodeDetails">> => cluster_node_details()
%% }
-type describe_cluster_node_response() :: #{binary() => any()}.

%% Example:
%% delete_workforce_request() :: #{
%%   <<"WorkforceName">> := string()
%% }
-type delete_workforce_request() :: #{binary() => any()}.

%% Example:
%% endpoint_output_configuration() :: #{
%%   <<"EndpointName">> => string(),
%%   <<"InitialInstanceCount">> => integer(),
%%   <<"InstanceType">> => list(any()),
%%   <<"ServerlessConfig">> => production_variant_serverless_config(),
%%   <<"VariantName">> => string()
%% }
-type endpoint_output_configuration() :: #{binary() => any()}.

%% Example:
%% add_tags_output() :: #{
%%   <<"Tags">> => list(tag()())
%% }
-type add_tags_output() :: #{binary() => any()}.

%% Example:
%% auto_ml_job_objective() :: #{
%%   <<"MetricName">> => list(any())
%% }
-type auto_ml_job_objective() :: #{binary() => any()}.

%% Example:
%% batch_describe_model_package_input() :: #{
%%   <<"ModelPackageArnList">> := list(string()())
%% }
-type batch_describe_model_package_input() :: #{binary() => any()}.

%% Example:
%% update_trial_component_response() :: #{
%%   <<"TrialComponentArn">> => string()
%% }
-type update_trial_component_response() :: #{binary() => any()}.

%% Example:
%% create_project_output() :: #{
%%   <<"ProjectArn">> => string(),
%%   <<"ProjectId">> => string()
%% }
-type create_project_output() :: #{binary() => any()}.

%% Example:
%% list_hub_contents_response() :: #{
%%   <<"HubContentSummaries">> => list(hub_content_info()()),
%%   <<"NextToken">> => string()
%% }
-type list_hub_contents_response() :: #{binary() => any()}.

%% Example:
%% endpoint_step_metadata() :: #{
%%   <<"Arn">> => string()
%% }
-type endpoint_step_metadata() :: #{binary() => any()}.

%% Example:
%% labeling_job_data_source() :: #{
%%   <<"S3DataSource">> => labeling_job_s3_data_source(),
%%   <<"SnsDataSource">> => labeling_job_sns_data_source()
%% }
-type labeling_job_data_source() :: #{binary() => any()}.

%% Example:
%% list_trial_components_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TrialComponentSummaries">> => list(trial_component_summary()())
%% }
-type list_trial_components_response() :: #{binary() => any()}.

%% Example:
%% get_sagemaker_servicecatalog_portfolio_status_output() :: #{
%%   <<"Status">> => list(any())
%% }
-type get_sagemaker_servicecatalog_portfolio_status_output() :: #{binary() => any()}.

%% Example:
%% create_compute_quota_response() :: #{
%%   <<"ComputeQuotaArn">> => string(),
%%   <<"ComputeQuotaId">> => string()
%% }
-type create_compute_quota_response() :: #{binary() => any()}.

%% Example:
%% list_inference_components_input() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"EndpointNameEquals">> => string(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StatusEquals">> => list(any()),
%%   <<"VariantNameEquals">> => string()
%% }
-type list_inference_components_input() :: #{binary() => any()}.

%% Example:
%% capture_content_type_header() :: #{
%%   <<"CsvContentTypes">> => list(string()()),
%%   <<"JsonContentTypes">> => list(string()())
%% }
-type capture_content_type_header() :: #{binary() => any()}.

%% Example:
%% create_endpoint_config_input() :: #{
%%   <<"AsyncInferenceConfig">> => async_inference_config(),
%%   <<"DataCaptureConfig">> => data_capture_config(),
%%   <<"EnableNetworkIsolation">> => boolean(),
%%   <<"EndpointConfigName">> := string(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"ExplainerConfig">> => explainer_config(),
%%   <<"KmsKeyId">> => string(),
%%   <<"ProductionVariants">> := list(production_variant()()),
%%   <<"ShadowProductionVariants">> => list(production_variant()()),
%%   <<"Tags">> => list(tag()()),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type create_endpoint_config_input() :: #{binary() => any()}.

%% Example:
%% describe_training_plan_response() :: #{
%%   <<"AvailableInstanceCount">> => integer(),
%%   <<"CurrencyCode">> => string(),
%%   <<"DurationHours">> => float(),
%%   <<"DurationMinutes">> => float(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"InUseInstanceCount">> => integer(),
%%   <<"ReservedCapacitySummaries">> => list(reserved_capacity_summary()()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"TargetResources">> => list(list(any())()),
%%   <<"TotalInstanceCount">> => integer(),
%%   <<"TrainingPlanArn">> => string(),
%%   <<"TrainingPlanName">> => string(),
%%   <<"UpfrontFee">> => string()
%% }
-type describe_training_plan_response() :: #{binary() => any()}.

%% Example:
%% kernel_gateway_image_config() :: #{
%%   <<"FileSystemConfig">> => file_system_config(),
%%   <<"KernelSpecs">> => list(kernel_spec()())
%% }
-type kernel_gateway_image_config() :: #{binary() => any()}.

%% Example:
%% emr_step_metadata() :: #{
%%   <<"ClusterId">> => string(),
%%   <<"LogFilePath">> => string(),
%%   <<"StepId">> => string(),
%%   <<"StepName">> => string()
%% }
-type emr_step_metadata() :: #{binary() => any()}.

%% Example:
%% delete_inference_experiment_response() :: #{
%%   <<"InferenceExperimentArn">> => string()
%% }
-type delete_inference_experiment_response() :: #{binary() => any()}.

%% Example:
%% cognito_config() :: #{
%%   <<"ClientId">> => string(),
%%   <<"UserPool">> => string()
%% }
-type cognito_config() :: #{binary() => any()}.

%% Example:
%% model_package_group() :: #{
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"ModelPackageGroupArn">> => string(),
%%   <<"ModelPackageGroupDescription">> => string(),
%%   <<"ModelPackageGroupName">> => string(),
%%   <<"ModelPackageGroupStatus">> => list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type model_package_group() :: #{binary() => any()}.

%% Example:
%% create_artifact_response() :: #{
%%   <<"ArtifactArn">> => string()
%% }
-type create_artifact_response() :: #{binary() => any()}.

%% Example:
%% edge_model_stat() :: #{
%%   <<"ActiveDeviceCount">> => float(),
%%   <<"ConnectedDeviceCount">> => float(),
%%   <<"ModelName">> => string(),
%%   <<"ModelVersion">> => string(),
%%   <<"OfflineDeviceCount">> => float(),
%%   <<"SamplingDeviceCount">> => float()
%% }
-type edge_model_stat() :: #{binary() => any()}.

%% Example:
%% labeling_job_stopping_conditions() :: #{
%%   <<"MaxHumanLabeledObjectCount">> => integer(),
%%   <<"MaxPercentageOfInputDatasetLabeled">> => integer()
%% }
-type labeling_job_stopping_conditions() :: #{binary() => any()}.

%% Example:
%% list_compute_quotas_request() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"CreatedAfter">> => non_neg_integer(),
%%   <<"CreatedBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type list_compute_quotas_request() :: #{binary() => any()}.

%% Example:
%% monitoring_statistics_resource() :: #{
%%   <<"S3Uri">> => string()
%% }
-type monitoring_statistics_resource() :: #{binary() => any()}.

%% Example:
%% input_config() :: #{
%%   <<"DataInputConfig">> => string(),
%%   <<"Framework">> => list(any()),
%%   <<"FrameworkVersion">> => string(),
%%   <<"S3Uri">> => string()
%% }
-type input_config() :: #{binary() => any()}.

%% Example:
%% space_settings() :: #{
%%   <<"AppType">> => list(any()),
%%   <<"CodeEditorAppSettings">> => space_code_editor_app_settings(),
%%   <<"CustomFileSystems">> => list(list()()),
%%   <<"JupyterLabAppSettings">> => space_jupyter_lab_app_settings(),
%%   <<"JupyterServerAppSettings">> => jupyter_server_app_settings(),
%%   <<"KernelGatewayAppSettings">> => kernel_gateway_app_settings(),
%%   <<"SpaceStorageSettings">> => space_storage_settings()
%% }
-type space_settings() :: #{binary() => any()}.

%% Example:
%% describe_training_job_request() :: #{
%%   <<"TrainingJobName">> := string()
%% }
-type describe_training_job_request() :: #{binary() => any()}.

%% Example:
%% update_inference_component_runtime_config_output() :: #{
%%   <<"InferenceComponentArn">> => string()
%% }
-type update_inference_component_runtime_config_output() :: #{binary() => any()}.

%% Example:
%% create_labeling_job_response() :: #{
%%   <<"LabelingJobArn">> => string()
%% }
-type create_labeling_job_response() :: #{binary() => any()}.

%% Example:
%% hyper_parameter_tuning_job_strategy_config() :: #{
%%   <<"HyperbandStrategyConfig">> => hyperband_strategy_config()
%% }
-type hyper_parameter_tuning_job_strategy_config() :: #{binary() => any()}.

%% Example:
%% describe_edge_packaging_job_response() :: #{
%%   <<"CompilationJobName">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EdgePackagingJobArn">> => string(),
%%   <<"EdgePackagingJobName">> => string(),
%%   <<"EdgePackagingJobStatus">> => list(any()),
%%   <<"EdgePackagingJobStatusMessage">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ModelArtifact">> => string(),
%%   <<"ModelName">> => string(),
%%   <<"ModelSignature">> => string(),
%%   <<"ModelVersion">> => string(),
%%   <<"OutputConfig">> => edge_output_config(),
%%   <<"PresetDeploymentOutput">> => edge_preset_deployment_output(),
%%   <<"ResourceKey">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type describe_edge_packaging_job_response() :: #{binary() => any()}.

%% Example:
%% list_resource_catalogs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ResourceCatalogs">> => list(resource_catalog()())
%% }
-type list_resource_catalogs_response() :: #{binary() => any()}.

%% Example:
%% update_compute_quota_response() :: #{
%%   <<"ComputeQuotaArn">> => string(),
%%   <<"ComputeQuotaVersion">> => integer()
%% }
-type update_compute_quota_response() :: #{binary() => any()}.

%% Example:
%% metric_definition() :: #{
%%   <<"Name">> => string(),
%%   <<"Regex">> => string()
%% }
-type metric_definition() :: #{binary() => any()}.

%% Example:
%% code_editor_app_image_config() :: #{
%%   <<"ContainerConfig">> => container_config(),
%%   <<"FileSystemConfig">> => file_system_config()
%% }
-type code_editor_app_image_config() :: #{binary() => any()}.

%% Example:
%% list_edge_packaging_jobs_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"ModelNameContains">> => string(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StatusEquals">> => list(any())
%% }
-type list_edge_packaging_jobs_request() :: #{binary() => any()}.

%% Example:
%% deregister_devices_request() :: #{
%%   <<"DeviceFleetName">> := string(),
%%   <<"DeviceNames">> := list(string()())
%% }
-type deregister_devices_request() :: #{binary() => any()}.

%% Example:
%% training_job_definition() :: #{
%%   <<"HyperParameters">> => map(),
%%   <<"InputDataConfig">> => list(channel()()),
%%   <<"OutputDataConfig">> => output_data_config(),
%%   <<"ResourceConfig">> => resource_config(),
%%   <<"StoppingCondition">> => stopping_condition(),
%%   <<"TrainingInputMode">> => list(any())
%% }
-type training_job_definition() :: #{binary() => any()}.

%% Example:
%% trial_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DisplayName">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"TrialArn">> => string(),
%%   <<"TrialName">> => string(),
%%   <<"TrialSource">> => trial_source()
%% }
-type trial_summary() :: #{binary() => any()}.

%% Example:
%% workforce_vpc_config_response() :: #{
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"Subnets">> => list(string()()),
%%   <<"VpcEndpointId">> => string(),
%%   <<"VpcId">> => string()
%% }
-type workforce_vpc_config_response() :: #{binary() => any()}.

%% Example:
%% jupyter_lab_app_image_config() :: #{
%%   <<"ContainerConfig">> => container_config(),
%%   <<"FileSystemConfig">> => file_system_config()
%% }
-type jupyter_lab_app_image_config() :: #{binary() => any()}.

%% Example:
%% monitoring_network_config() :: #{
%%   <<"EnableInterContainerTrafficEncryption">> => boolean(),
%%   <<"EnableNetworkIsolation">> => boolean(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type monitoring_network_config() :: #{binary() => any()}.

%% Example:
%% describe_feature_metadata_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"FeatureGroupArn">> => string(),
%%   <<"FeatureGroupName">> => string(),
%%   <<"FeatureName">> => string(),
%%   <<"FeatureType">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Parameters">> => list(feature_parameter()())
%% }
-type describe_feature_metadata_response() :: #{binary() => any()}.

%% Example:
%% model_quality_app_specification() :: #{
%%   <<"ContainerArguments">> => list(string()()),
%%   <<"ContainerEntrypoint">> => list(string()()),
%%   <<"Environment">> => map(),
%%   <<"ImageUri">> => string(),
%%   <<"PostAnalyticsProcessorSourceUri">> => string(),
%%   <<"ProblemType">> => list(any()),
%%   <<"RecordPreprocessorSourceUri">> => string()
%% }
-type model_quality_app_specification() :: #{binary() => any()}.

%% Example:
%% list_training_jobs_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StatusEquals">> => list(any()),
%%   <<"TrainingPlanArnEquals">> => string(),
%%   <<"WarmPoolStatusEquals">> => list(any())
%% }
-type list_training_jobs_request() :: #{binary() => any()}.

%% Example:
%% inference_component_startup_parameters() :: #{
%%   <<"ContainerStartupHealthCheckTimeoutInSeconds">> => integer(),
%%   <<"ModelDataDownloadTimeoutInSeconds">> => integer()
%% }
-type inference_component_startup_parameters() :: #{binary() => any()}.

%% Example:
%% integer_parameter_range_specification() :: #{
%%   <<"MaxValue">> => string(),
%%   <<"MinValue">> => string()
%% }
-type integer_parameter_range_specification() :: #{binary() => any()}.

%% Example:
%% auto_ml_data_source() :: #{
%%   <<"S3DataSource">> => auto_ml_s3_data_source()
%% }
-type auto_ml_data_source() :: #{binary() => any()}.

%% Example:
%% auto_ml_partial_failure_reason() :: #{
%%   <<"PartialFailureMessage">> => string()
%% }
-type auto_ml_partial_failure_reason() :: #{binary() => any()}.

%% Example:
%% describe_app_response() :: #{
%%   <<"AppArn">> => string(),
%%   <<"AppName">> => string(),
%%   <<"AppType">> => list(any()),
%%   <<"BuiltInLifecycleConfigArn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DomainId">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"LastHealthCheckTimestamp">> => non_neg_integer(),
%%   <<"LastUserActivityTimestamp">> => non_neg_integer(),
%%   <<"ResourceSpec">> => resource_spec(),
%%   <<"SpaceName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UserProfileName">> => string()
%% }
-type describe_app_response() :: #{binary() => any()}.

%% Example:
%% algorithm_status_item() :: #{
%%   <<"FailureReason">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type algorithm_status_item() :: #{binary() => any()}.

%% Example:
%% add_tags_input() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag()())
%% }
-type add_tags_input() :: #{binary() => any()}.

%% Example:
%% describe_device_fleet_request() :: #{
%%   <<"DeviceFleetName">> := string()
%% }
-type describe_device_fleet_request() :: #{binary() => any()}.

%% Example:
%% disable_sagemaker_servicecatalog_portfolio_output() :: #{

%% }
-type disable_sagemaker_servicecatalog_portfolio_output() :: #{binary() => any()}.

%% Example:
%% profiler_config() :: #{
%%   <<"DisableProfiler">> => boolean(),
%%   <<"ProfilingIntervalInMilliseconds">> => float(),
%%   <<"ProfilingParameters">> => map(),
%%   <<"S3OutputPath">> => string()
%% }
-type profiler_config() :: #{binary() => any()}.

%% Example:
%% list_hubs_response() :: #{
%%   <<"HubSummaries">> => list(hub_info()()),
%%   <<"NextToken">> => string()
%% }
-type list_hubs_response() :: #{binary() => any()}.

%% Example:
%% r_studio_server_pro_domain_settings_for_update() :: #{
%%   <<"DefaultResourceSpec">> => resource_spec(),
%%   <<"DomainExecutionRoleArn">> => string(),
%%   <<"RStudioConnectUrl">> => string(),
%%   <<"RStudioPackageManagerUrl">> => string()
%% }
-type r_studio_server_pro_domain_settings_for_update() :: #{binary() => any()}.

%% Example:
%% monitoring_parquet_dataset_format() :: #{

%% }
-type monitoring_parquet_dataset_format() :: #{binary() => any()}.

%% Example:
%% endpoint_metadata() :: #{
%%   <<"EndpointConfigName">> => string(),
%%   <<"EndpointName">> => string(),
%%   <<"EndpointStatus">> => list(any()),
%%   <<"FailureReason">> => string()
%% }
-type endpoint_metadata() :: #{binary() => any()}.

%% Example:
%% delete_inference_experiment_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_inference_experiment_request() :: #{binary() => any()}.

%% Example:
%% error_info() :: #{
%%   <<"Code">> => string(),
%%   <<"Reason">> => string()
%% }
-type error_info() :: #{binary() => any()}.

%% Example:
%% endpoint_input() :: #{
%%   <<"EndTimeOffset">> => string(),
%%   <<"EndpointName">> => string(),
%%   <<"ExcludeFeaturesAttribute">> => string(),
%%   <<"FeaturesAttribute">> => string(),
%%   <<"InferenceAttribute">> => string(),
%%   <<"LocalPath">> => string(),
%%   <<"ProbabilityAttribute">> => string(),
%%   <<"ProbabilityThresholdAttribute">> => float(),
%%   <<"S3DataDistributionType">> => list(any()),
%%   <<"S3InputMode">> => list(any()),
%%   <<"StartTimeOffset">> => string()
%% }
-type endpoint_input() :: #{binary() => any()}.

%% Example:
%% delete_model_explainability_job_definition_request() :: #{
%%   <<"JobDefinitionName">> := string()
%% }
-type delete_model_explainability_job_definition_request() :: #{binary() => any()}.

%% Example:
%% data_catalog_config() :: #{
%%   <<"Catalog">> => string(),
%%   <<"Database">> => string(),
%%   <<"TableName">> => string()
%% }
-type data_catalog_config() :: #{binary() => any()}.

%% Example:
%% image_config() :: #{
%%   <<"RepositoryAccessMode">> => list(any()),
%%   <<"RepositoryAuthConfig">> => repository_auth_config()
%% }
-type image_config() :: #{binary() => any()}.

%% Example:
%% list_monitoring_alert_history_response() :: #{
%%   <<"MonitoringAlertHistory">> => list(monitoring_alert_history_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_monitoring_alert_history_response() :: #{binary() => any()}.

%% Example:
%% space_details() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DomainId">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"OwnershipSettingsSummary">> => ownership_settings_summary(),
%%   <<"SpaceDisplayName">> => string(),
%%   <<"SpaceName">> => string(),
%%   <<"SpaceSettingsSummary">> => space_settings_summary(),
%%   <<"SpaceSharingSettingsSummary">> => space_sharing_settings_summary(),
%%   <<"Status">> => list(any())
%% }
-type space_details() :: #{binary() => any()}.

%% Example:
%% cluster_orchestrator() :: #{
%%   <<"Eks">> => cluster_orchestrator_eks_config()
%% }
-type cluster_orchestrator() :: #{binary() => any()}.

%% Example:
%% describe_feature_metadata_request() :: #{
%%   <<"FeatureGroupName">> := string(),
%%   <<"FeatureName">> := string()
%% }
-type describe_feature_metadata_request() :: #{binary() => any()}.

%% Example:
%% delete_artifact_response() :: #{
%%   <<"ArtifactArn">> => string()
%% }
-type delete_artifact_response() :: #{binary() => any()}.

%% Example:
%% describe_feature_group_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EventTimeFeatureName">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"FeatureDefinitions">> => list(feature_definition()()),
%%   <<"FeatureGroupArn">> => string(),
%%   <<"FeatureGroupName">> => string(),
%%   <<"FeatureGroupStatus">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LastUpdateStatus">> => last_update_status(),
%%   <<"NextToken">> => string(),
%%   <<"OfflineStoreConfig">> => offline_store_config(),
%%   <<"OfflineStoreStatus">> => offline_store_status(),
%%   <<"OnlineStoreConfig">> => online_store_config(),
%%   <<"OnlineStoreTotalSizeBytes">> => float(),
%%   <<"RecordIdentifierFeatureName">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"ThroughputConfig">> => throughput_config_description()
%% }
-type describe_feature_group_response() :: #{binary() => any()}.

%% Example:
%% drift_check_explainability() :: #{
%%   <<"ConfigFile">> => file_source(),
%%   <<"Constraints">> => metrics_source()
%% }
-type drift_check_explainability() :: #{binary() => any()}.

%% Example:
%% data_capture_config() :: #{
%%   <<"CaptureContentTypeHeader">> => capture_content_type_header(),
%%   <<"CaptureOptions">> => list(capture_option()()),
%%   <<"DestinationS3Uri">> => string(),
%%   <<"EnableCapture">> => boolean(),
%%   <<"InitialSamplingPercentage">> => integer(),
%%   <<"KmsKeyId">> => string()
%% }
-type data_capture_config() :: #{binary() => any()}.

%% Example:
%% import_hub_content_request() :: #{
%%   <<"DocumentSchemaVersion">> := string(),
%%   <<"HubContentDescription">> => string(),
%%   <<"HubContentDisplayName">> => string(),
%%   <<"HubContentDocument">> := string(),
%%   <<"HubContentMarkdown">> => string(),
%%   <<"HubContentName">> := string(),
%%   <<"HubContentSearchKeywords">> => list(string()()),
%%   <<"HubContentType">> := list(any()),
%%   <<"HubContentVersion">> => string(),
%%   <<"HubName">> := string(),
%%   <<"SupportStatus">> => list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type import_hub_content_request() :: #{binary() => any()}.

%% Example:
%% delete_model_card_request() :: #{
%%   <<"ModelCardName">> := string()
%% }
-type delete_model_card_request() :: #{binary() => any()}.

%% Example:
%% list_model_cards_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"ModelCardStatus">> => list(any()),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_model_cards_request() :: #{binary() => any()}.

%% Example:
%% edge_deployment_status() :: #{
%%   <<"EdgeDeploymentFailedInStage">> => integer(),
%%   <<"EdgeDeploymentPendingInStage">> => integer(),
%%   <<"EdgeDeploymentStageStartTime">> => non_neg_integer(),
%%   <<"EdgeDeploymentStatusMessage">> => string(),
%%   <<"EdgeDeploymentSuccessInStage">> => integer(),
%%   <<"StageStatus">> => list(any())
%% }
-type edge_deployment_status() :: #{binary() => any()}.

%% Example:
%% tuning_job_completion_criteria() :: #{
%%   <<"BestObjectiveNotImproving">> => best_objective_not_improving(),
%%   <<"ConvergenceDetected">> => convergence_detected(),
%%   <<"TargetObjectiveMetricValue">> => float()
%% }
-type tuning_job_completion_criteria() :: #{binary() => any()}.

%% Example:
%% register_model_step_metadata() :: #{
%%   <<"Arn">> => string()
%% }
-type register_model_step_metadata() :: #{binary() => any()}.

%% Example:
%% e_f_s_file_system_config() :: #{
%%   <<"FileSystemId">> => string(),
%%   <<"FileSystemPath">> => string()
%% }
-type e_f_s_file_system_config() :: #{binary() => any()}.

%% Example:
%% get_scaling_configuration_recommendation_response() :: #{
%%   <<"DynamicScalingConfiguration">> => dynamic_scaling_configuration(),
%%   <<"EndpointName">> => string(),
%%   <<"InferenceRecommendationsJobName">> => string(),
%%   <<"Metric">> => scaling_policy_metric(),
%%   <<"RecommendationId">> => string(),
%%   <<"ScalingPolicyObjective">> => scaling_policy_objective(),
%%   <<"TargetCpuUtilizationPerCore">> => integer()
%% }
-type get_scaling_configuration_recommendation_response() :: #{binary() => any()}.

%% Example:
%% stop_processing_job_request() :: #{
%%   <<"ProcessingJobName">> := string()
%% }
-type stop_processing_job_request() :: #{binary() => any()}.

%% Example:
%% create_trial_response() :: #{
%%   <<"TrialArn">> => string()
%% }
-type create_trial_response() :: #{binary() => any()}.

%% Example:
%% recommendation_job_compiled_output_config() :: #{
%%   <<"S3OutputUri">> => string()
%% }
-type recommendation_job_compiled_output_config() :: #{binary() => any()}.

%% Example:
%% create_endpoint_output() :: #{
%%   <<"EndpointArn">> => string()
%% }
-type create_endpoint_output() :: #{binary() => any()}.

%% Example:
%% service_catalog_provisioning_update_details() :: #{
%%   <<"ProvisioningArtifactId">> => string(),
%%   <<"ProvisioningParameters">> => list(provisioning_parameter()())
%% }
-type service_catalog_provisioning_update_details() :: #{binary() => any()}.

%% Example:
%% repository_auth_config() :: #{
%%   <<"RepositoryCredentialsProviderArn">> => string()
%% }
-type repository_auth_config() :: #{binary() => any()}.

%% Example:
%% describe_endpoint_output() :: #{
%%   <<"AsyncInferenceConfig">> => async_inference_config(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DataCaptureConfig">> => data_capture_config_summary(),
%%   <<"EndpointArn">> => string(),
%%   <<"EndpointConfigName">> => string(),
%%   <<"EndpointName">> => string(),
%%   <<"EndpointStatus">> => list(any()),
%%   <<"ExplainerConfig">> => explainer_config(),
%%   <<"FailureReason">> => string(),
%%   <<"LastDeploymentConfig">> => deployment_config(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"PendingDeploymentSummary">> => pending_deployment_summary(),
%%   <<"ProductionVariants">> => list(production_variant_summary()()),
%%   <<"ShadowProductionVariants">> => list(production_variant_summary()())
%% }
-type describe_endpoint_output() :: #{binary() => any()}.

%% Example:
%% final_auto_ml_job_objective_metric() :: #{
%%   <<"MetricName">> => list(any()),
%%   <<"StandardMetricName">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"Value">> => float()
%% }
-type final_auto_ml_job_objective_metric() :: #{binary() => any()}.

%% Example:
%% update_training_job_request() :: #{
%%   <<"ProfilerConfig">> => profiler_config_for_update(),
%%   <<"ProfilerRuleConfigurations">> => list(profiler_rule_configuration()()),
%%   <<"RemoteDebugConfig">> => remote_debug_config_for_update(),
%%   <<"ResourceConfig">> => resource_config_for_update(),
%%   <<"TrainingJobName">> := string()
%% }
-type update_training_job_request() :: #{binary() => any()}.

%% Example:
%% describe_context_request() :: #{
%%   <<"ContextName">> := string()
%% }
-type describe_context_request() :: #{binary() => any()}.

%% Example:
%% human_task_ui_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"HumanTaskUiArn">> => string(),
%%   <<"HumanTaskUiName">> => string()
%% }
-type human_task_ui_summary() :: #{binary() => any()}.

%% Example:
%% create_presigned_notebook_instance_url_output() :: #{
%%   <<"AuthorizedUrl">> => string()
%% }
-type create_presigned_notebook_instance_url_output() :: #{binary() => any()}.

%% Example:
%% update_cluster_software_response() :: #{
%%   <<"ClusterArn">> => string()
%% }
-type update_cluster_software_response() :: #{binary() => any()}.

%% Example:
%% list_training_plans_request() :: #{
%%   <<"Filters">> => list(training_plan_filter()()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StartTimeAfter">> => non_neg_integer(),
%%   <<"StartTimeBefore">> => non_neg_integer()
%% }
-type list_training_plans_request() :: #{binary() => any()}.

%% Example:
%% model_metrics() :: #{
%%   <<"Bias">> => bias(),
%%   <<"Explainability">> => explainability(),
%%   <<"ModelDataQuality">> => model_data_quality(),
%%   <<"ModelQuality">> => model_quality()
%% }
-type model_metrics() :: #{binary() => any()}.

%% Example:
%% list_notebook_instance_lifecycle_configs_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"NotebookInstanceLifecycleConfigs">> => list(notebook_instance_lifecycle_config_summary()())
%% }
-type list_notebook_instance_lifecycle_configs_output() :: #{binary() => any()}.

%% Example:
%% describe_compilation_job_response() :: #{
%%   <<"CompilationEndTime">> => non_neg_integer(),
%%   <<"CompilationJobArn">> => string(),
%%   <<"CompilationJobName">> => string(),
%%   <<"CompilationJobStatus">> => list(any()),
%%   <<"CompilationStartTime">> => non_neg_integer(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DerivedInformation">> => derived_information(),
%%   <<"FailureReason">> => string(),
%%   <<"InferenceImage">> => string(),
%%   <<"InputConfig">> => input_config(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ModelArtifacts">> => model_artifacts(),
%%   <<"ModelDigests">> => model_digests(),
%%   <<"ModelPackageVersionArn">> => string(),
%%   <<"OutputConfig">> => output_config(),
%%   <<"RoleArn">> => string(),
%%   <<"StoppingCondition">> => stopping_condition(),
%%   <<"VpcConfig">> => neo_vpc_config()
%% }
-type describe_compilation_job_response() :: #{binary() => any()}.

%% Example:
%% stop_hyper_parameter_tuning_job_request() :: #{
%%   <<"HyperParameterTuningJobName">> := string()
%% }
-type stop_hyper_parameter_tuning_job_request() :: #{binary() => any()}.

%% Example:
%% associate_trial_component_response() :: #{
%%   <<"TrialArn">> => string(),
%%   <<"TrialComponentArn">> => string()
%% }
-type associate_trial_component_response() :: #{binary() => any()}.

%% Example:
%% delete_notebook_instance_input() :: #{
%%   <<"NotebookInstanceName">> := string()
%% }
-type delete_notebook_instance_input() :: #{binary() => any()}.

%% Example:
%% list_labeling_jobs_for_workteam_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"JobReferenceCodeContains">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"WorkteamArn">> := string()
%% }
-type list_labeling_jobs_for_workteam_request() :: #{binary() => any()}.

%% Example:
%% recommendation_job_vpc_config() :: #{
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"Subnets">> => list(string()())
%% }
-type recommendation_job_vpc_config() :: #{binary() => any()}.

%% Example:
%% create_workforce_response() :: #{
%%   <<"WorkforceArn">> => string()
%% }
-type create_workforce_response() :: #{binary() => any()}.

%% Example:
%% flow_definition_output_config() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"S3OutputPath">> => string()
%% }
-type flow_definition_output_config() :: #{binary() => any()}.

%% Example:
%% update_cluster_request() :: #{
%%   <<"ClusterName">> := string(),
%%   <<"InstanceGroups">> := list(cluster_instance_group_specification()()),
%%   <<"InstanceGroupsToDelete">> => list(string()()),
%%   <<"NodeRecovery">> => list(any())
%% }
-type update_cluster_request() :: #{binary() => any()}.

%% Example:
%% delete_edge_deployment_plan_request() :: #{
%%   <<"EdgeDeploymentPlanName">> := string()
%% }
-type delete_edge_deployment_plan_request() :: #{binary() => any()}.

%% Example:
%% list_code_repositories_output() :: #{
%%   <<"CodeRepositorySummaryList">> => list(code_repository_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_code_repositories_output() :: #{binary() => any()}.

%% Example:
%% stop_edge_deployment_stage_request() :: #{
%%   <<"EdgeDeploymentPlanName">> := string(),
%%   <<"StageName">> := string()
%% }
-type stop_edge_deployment_stage_request() :: #{binary() => any()}.

%% Example:
%% hub_s3_storage_config() :: #{
%%   <<"S3OutputPath">> => string()
%% }
-type hub_s3_storage_config() :: #{binary() => any()}.

%% Example:
%% create_action_response() :: #{
%%   <<"ActionArn">> => string()
%% }
-type create_action_response() :: #{binary() => any()}.

%% Example:
%% oidc_config() :: #{
%%   <<"AuthenticationRequestExtraParams">> => map(),
%%   <<"AuthorizationEndpoint">> => string(),
%%   <<"ClientId">> => string(),
%%   <<"ClientSecret">> => string(),
%%   <<"Issuer">> => string(),
%%   <<"JwksUri">> => string(),
%%   <<"LogoutEndpoint">> => string(),
%%   <<"Scope">> => string(),
%%   <<"TokenEndpoint">> => string(),
%%   <<"UserInfoEndpoint">> => string()
%% }
-type oidc_config() :: #{binary() => any()}.

%% Example:
%% create_model_card_request() :: #{
%%   <<"Content">> := string(),
%%   <<"ModelCardName">> := string(),
%%   <<"ModelCardStatus">> := list(any()),
%%   <<"SecurityConfig">> => model_card_security_config(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_model_card_request() :: #{binary() => any()}.

%% Example:
%% algorithm_specification() :: #{
%%   <<"AlgorithmName">> => string(),
%%   <<"ContainerArguments">> => list(string()()),
%%   <<"ContainerEntrypoint">> => list(string()()),
%%   <<"EnableSageMakerMetricsTimeSeries">> => boolean(),
%%   <<"MetricDefinitions">> => list(metric_definition()()),
%%   <<"TrainingImage">> => string(),
%%   <<"TrainingImageConfig">> => training_image_config(),
%%   <<"TrainingInputMode">> => list(any())
%% }
-type algorithm_specification() :: #{binary() => any()}.

%% Example:
%% create_image_version_request() :: #{
%%   <<"Aliases">> => list(string()()),
%%   <<"BaseImage">> := string(),
%%   <<"ClientToken">> := string(),
%%   <<"Horovod">> => boolean(),
%%   <<"ImageName">> := string(),
%%   <<"JobType">> => list(any()),
%%   <<"MLFramework">> => string(),
%%   <<"Processor">> => list(any()),
%%   <<"ProgrammingLang">> => string(),
%%   <<"ReleaseNotes">> => string(),
%%   <<"VendorGuidance">> => list(any())
%% }
-type create_image_version_request() :: #{binary() => any()}.

%% Example:
%% production_variant_summary() :: #{
%%   <<"CurrentInstanceCount">> => integer(),
%%   <<"CurrentServerlessConfig">> => production_variant_serverless_config(),
%%   <<"CurrentWeight">> => float(),
%%   <<"DeployedImages">> => list(deployed_image()()),
%%   <<"DesiredInstanceCount">> => integer(),
%%   <<"DesiredServerlessConfig">> => production_variant_serverless_config(),
%%   <<"DesiredWeight">> => float(),
%%   <<"ManagedInstanceScaling">> => production_variant_managed_instance_scaling(),
%%   <<"RoutingConfig">> => production_variant_routing_config(),
%%   <<"VariantName">> => string(),
%%   <<"VariantStatus">> => list(production_variant_status()())
%% }
-type production_variant_summary() :: #{binary() => any()}.

%% Example:
%% describe_edge_packaging_job_request() :: #{
%%   <<"EdgePackagingJobName">> := string()
%% }
-type describe_edge_packaging_job_request() :: #{binary() => any()}.

%% Example:
%% monitoring_alert_history_summary() :: #{
%%   <<"AlertStatus">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"MonitoringAlertName">> => string(),
%%   <<"MonitoringScheduleName">> => string()
%% }
-type monitoring_alert_history_summary() :: #{binary() => any()}.

%% Example:
%% create_model_explainability_job_definition_request() :: #{
%%   <<"JobDefinitionName">> := string(),
%%   <<"JobResources">> := monitoring_resources(),
%%   <<"ModelExplainabilityAppSpecification">> := model_explainability_app_specification(),
%%   <<"ModelExplainabilityBaselineConfig">> => model_explainability_baseline_config(),
%%   <<"ModelExplainabilityJobInput">> := model_explainability_job_input(),
%%   <<"ModelExplainabilityJobOutputConfig">> := monitoring_output_config(),
%%   <<"NetworkConfig">> => monitoring_network_config(),
%%   <<"RoleArn">> := string(),
%%   <<"StoppingCondition">> => monitoring_stopping_condition(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_model_explainability_job_definition_request() :: #{binary() => any()}.

%% Example:
%% update_action_request() :: #{
%%   <<"ActionName">> := string(),
%%   <<"Description">> => string(),
%%   <<"Properties">> => map(),
%%   <<"PropertiesToRemove">> => list(string()()),
%%   <<"Status">> => list(any())
%% }
-type update_action_request() :: #{binary() => any()}.

%% Example:
%% update_code_repository_output() :: #{
%%   <<"CodeRepositoryArn">> => string()
%% }
-type update_code_repository_output() :: #{binary() => any()}.

%% Example:
%% inference_component_capacity_size() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Value">> => integer()
%% }
-type inference_component_capacity_size() :: #{binary() => any()}.

%% Example:
%% image_version() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"ImageArn">> => string(),
%%   <<"ImageVersionArn">> => string(),
%%   <<"ImageVersionStatus">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Version">> => integer()
%% }
-type image_version() :: #{binary() => any()}.

%% Example:
%% service_catalog_provisioning_details() :: #{
%%   <<"PathId">> => string(),
%%   <<"ProductId">> => string(),
%%   <<"ProvisioningArtifactId">> => string(),
%%   <<"ProvisioningParameters">> => list(provisioning_parameter()())
%% }
-type service_catalog_provisioning_details() :: #{binary() => any()}.

%% Example:
%% iam_identity() :: #{
%%   <<"Arn">> => string(),
%%   <<"PrincipalId">> => string(),
%%   <<"SourceIdentity">> => string()
%% }
-type iam_identity() :: #{binary() => any()}.

%% Example:
%% describe_action_request() :: #{
%%   <<"ActionName">> := string()
%% }
-type describe_action_request() :: #{binary() => any()}.

%% Example:
%% customized_metric_specification() :: #{
%%   <<"MetricName">> => string(),
%%   <<"Namespace">> => string(),
%%   <<"Statistic">> => list(any())
%% }
-type customized_metric_specification() :: #{binary() => any()}.

%% Example:
%% delete_compute_quota_request() :: #{
%%   <<"ComputeQuotaId">> := string()
%% }
-type delete_compute_quota_request() :: #{binary() => any()}.

%% Example:
%% delete_association_request() :: #{
%%   <<"DestinationArn">> := string(),
%%   <<"SourceArn">> := string()
%% }
-type delete_association_request() :: #{binary() => any()}.

%% Example:
%% delete_image_version_response() :: #{

%% }
-type delete_image_version_response() :: #{binary() => any()}.

%% Example:
%% app_specification() :: #{
%%   <<"ContainerArguments">> => list(string()()),
%%   <<"ContainerEntrypoint">> => list(string()()),
%%   <<"ImageUri">> => string()
%% }
-type app_specification() :: #{binary() => any()}.

%% Example:
%% edge_preset_deployment_output() :: #{
%%   <<"Artifact">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"Type">> => list(any())
%% }
-type edge_preset_deployment_output() :: #{binary() => any()}.

%% Example:
%% describe_project_output() :: #{
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ProjectArn">> => string(),
%%   <<"ProjectDescription">> => string(),
%%   <<"ProjectId">> => string(),
%%   <<"ProjectName">> => string(),
%%   <<"ProjectStatus">> => list(any()),
%%   <<"ServiceCatalogProvisionedProductDetails">> => service_catalog_provisioned_product_details(),
%%   <<"ServiceCatalogProvisioningDetails">> => service_catalog_provisioning_details()
%% }
-type describe_project_output() :: #{binary() => any()}.

%% Example:
%% user_profile_details() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DomainId">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"UserProfileName">> => string()
%% }
-type user_profile_details() :: #{binary() => any()}.

%% Example:
%% describe_data_quality_job_definition_request() :: #{
%%   <<"JobDefinitionName">> := string()
%% }
-type describe_data_quality_job_definition_request() :: #{binary() => any()}.

%% Example:
%% query_lineage_request() :: #{
%%   <<"Direction">> => list(any()),
%%   <<"Filters">> => query_filters(),
%%   <<"IncludeEdges">> => boolean(),
%%   <<"MaxDepth">> => integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StartArns">> => list(string()())
%% }
-type query_lineage_request() :: #{binary() => any()}.

%% Example:
%% describe_lineage_group_response() :: #{
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LineageGroupArn">> => string(),
%%   <<"LineageGroupName">> => string()
%% }
-type describe_lineage_group_response() :: #{binary() => any()}.

%% Example:
%% list_endpoint_configs_output() :: #{
%%   <<"EndpointConfigs">> => list(endpoint_config_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_endpoint_configs_output() :: #{binary() => any()}.

%% Example:
%% algorithm_status_details() :: #{
%%   <<"ImageScanStatuses">> => list(algorithm_status_item()()),
%%   <<"ValidationStatuses">> => list(algorithm_status_item()())
%% }
-type algorithm_status_details() :: #{binary() => any()}.

%% Example:
%% query_lineage_response() :: #{
%%   <<"Edges">> => list(edge()()),
%%   <<"NextToken">> => string(),
%%   <<"Vertices">> => list(vertex()())
%% }
-type query_lineage_response() :: #{binary() => any()}.

%% Example:
%% async_inference_config() :: #{
%%   <<"ClientConfig">> => async_inference_client_config(),
%%   <<"OutputConfig">> => async_inference_output_config()
%% }
-type async_inference_config() :: #{binary() => any()}.

%% Example:
%% get_sagemaker_servicecatalog_portfolio_status_input() :: #{

%% }
-type get_sagemaker_servicecatalog_portfolio_status_input() :: #{binary() => any()}.

%% Example:
%% throughput_config_description() :: #{
%%   <<"ProvisionedReadCapacityUnits">> => integer(),
%%   <<"ProvisionedWriteCapacityUnits">> => integer(),
%%   <<"ThroughputMode">> => list(any())
%% }
-type throughput_config_description() :: #{binary() => any()}.

%% Example:
%% instance_metadata_service_configuration() :: #{
%%   <<"MinimumInstanceMetadataServiceVersion">> => string()
%% }
-type instance_metadata_service_configuration() :: #{binary() => any()}.

%% Example:
%% auto_ml_job_summary() :: #{
%%   <<"AutoMLJobArn">> => string(),
%%   <<"AutoMLJobName">> => string(),
%%   <<"AutoMLJobSecondaryStatus">> => list(any()),
%%   <<"AutoMLJobStatus">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"PartialFailureReasons">> => list(auto_ml_partial_failure_reason()())
%% }
-type auto_ml_job_summary() :: #{binary() => any()}.

%% Example:
%% member_definition() :: #{
%%   <<"CognitoMemberDefinition">> => cognito_member_definition(),
%%   <<"OidcMemberDefinition">> => oidc_member_definition()
%% }
-type member_definition() :: #{binary() => any()}.

%% Example:
%% list_mlflow_tracking_servers_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TrackingServerSummaries">> => list(tracking_server_summary()())
%% }
-type list_mlflow_tracking_servers_response() :: #{binary() => any()}.

%% Example:
%% delete_image_version_request() :: #{
%%   <<"Alias">> => string(),
%%   <<"ImageName">> := string(),
%%   <<"Version">> => integer()
%% }
-type delete_image_version_request() :: #{binary() => any()}.

%% Example:
%% quality_check_step_metadata() :: #{
%%   <<"BaselineUsedForDriftCheckConstraints">> => string(),
%%   <<"BaselineUsedForDriftCheckStatistics">> => string(),
%%   <<"CalculatedBaselineConstraints">> => string(),
%%   <<"CalculatedBaselineStatistics">> => string(),
%%   <<"CheckJobArn">> => string(),
%%   <<"CheckType">> => string(),
%%   <<"ModelPackageGroupName">> => string(),
%%   <<"RegisterNewBaseline">> => boolean(),
%%   <<"SkipCheck">> => boolean(),
%%   <<"ViolationReport">> => string()
%% }
-type quality_check_step_metadata() :: #{binary() => any()}.

%% Example:
%% list_labeling_jobs_response() :: #{
%%   <<"LabelingJobSummaryList">> => list(labeling_job_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_labeling_jobs_response() :: #{binary() => any()}.

%% Example:
%% delete_model_package_input() :: #{
%%   <<"ModelPackageName">> := string()
%% }
-type delete_model_package_input() :: #{binary() => any()}.

%% Example:
%% model_package() :: #{
%%   <<"AdditionalInferenceSpecifications">> => list(additional_inference_specification_definition()()),
%%   <<"ApprovalDescription">> => string(),
%%   <<"CertifyForMarketplace">> => boolean(),
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CustomerMetadataProperties">> => map(),
%%   <<"Domain">> => string(),
%%   <<"DriftCheckBaselines">> => drift_check_baselines(),
%%   <<"InferenceSpecification">> => inference_specification(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"MetadataProperties">> => metadata_properties(),
%%   <<"ModelApprovalStatus">> => list(any()),
%%   <<"ModelCard">> => model_package_model_card(),
%%   <<"ModelLifeCycle">> => model_life_cycle(),
%%   <<"ModelMetrics">> => model_metrics(),
%%   <<"ModelPackageArn">> => string(),
%%   <<"ModelPackageDescription">> => string(),
%%   <<"ModelPackageGroupName">> => string(),
%%   <<"ModelPackageName">> => string(),
%%   <<"ModelPackageStatus">> => list(any()),
%%   <<"ModelPackageStatusDetails">> => model_package_status_details(),
%%   <<"ModelPackageVersion">> => integer(),
%%   <<"SamplePayloadUrl">> => string(),
%%   <<"SecurityConfig">> => model_package_security_config(),
%%   <<"SkipModelValidation">> => list(any()),
%%   <<"SourceAlgorithmSpecification">> => source_algorithm_specification(),
%%   <<"SourceUri">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Task">> => string(),
%%   <<"ValidationSpecification">> => model_package_validation_specification()
%% }
-type model_package() :: #{binary() => any()}.

%% Example:
%% processing_stopping_condition() :: #{
%%   <<"MaxRuntimeInSeconds">> => integer()
%% }
-type processing_stopping_condition() :: #{binary() => any()}.

%% Example:
%% production_variant_serverless_config() :: #{
%%   <<"MaxConcurrency">> => integer(),
%%   <<"MemorySizeInMB">> => integer(),
%%   <<"ProvisionedConcurrency">> => integer()
%% }
-type production_variant_serverless_config() :: #{binary() => any()}.

%% Example:
%% training_job_step_metadata() :: #{
%%   <<"Arn">> => string()
%% }
-type training_job_step_metadata() :: #{binary() => any()}.

%% Example:
%% neo_vpc_config() :: #{
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"Subnets">> => list(string()())
%% }
-type neo_vpc_config() :: #{binary() => any()}.

%% Example:
%% describe_human_task_ui_request() :: #{
%%   <<"HumanTaskUiName">> := string()
%% }
-type describe_human_task_ui_request() :: #{binary() => any()}.

%% Example:
%% model_quality() :: #{
%%   <<"Constraints">> => metrics_source(),
%%   <<"Statistics">> => metrics_source()
%% }
-type model_quality() :: #{binary() => any()}.

%% Example:
%% edge_packaging_job_summary() :: #{
%%   <<"CompilationJobName">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EdgePackagingJobArn">> => string(),
%%   <<"EdgePackagingJobName">> => string(),
%%   <<"EdgePackagingJobStatus">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ModelName">> => string(),
%%   <<"ModelVersion">> => string()
%% }
-type edge_packaging_job_summary() :: #{binary() => any()}.

%% Example:
%% create_transform_job_request() :: #{
%%   <<"BatchStrategy">> => list(any()),
%%   <<"DataCaptureConfig">> => batch_data_capture_config(),
%%   <<"DataProcessing">> => data_processing(),
%%   <<"Environment">> => map(),
%%   <<"ExperimentConfig">> => experiment_config(),
%%   <<"MaxConcurrentTransforms">> => integer(),
%%   <<"MaxPayloadInMB">> => integer(),
%%   <<"ModelClientConfig">> => model_client_config(),
%%   <<"ModelName">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TransformInput">> := transform_input(),
%%   <<"TransformJobName">> := string(),
%%   <<"TransformOutput">> := transform_output(),
%%   <<"TransformResources">> := transform_resources()
%% }
-type create_transform_job_request() :: #{binary() => any()}.

%% Example:
%% transform_job() :: #{
%%   <<"AutoMLJobArn">> => string(),
%%   <<"BatchStrategy">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DataCaptureConfig">> => batch_data_capture_config(),
%%   <<"DataProcessing">> => data_processing(),
%%   <<"Environment">> => map(),
%%   <<"ExperimentConfig">> => experiment_config(),
%%   <<"FailureReason">> => string(),
%%   <<"LabelingJobArn">> => string(),
%%   <<"MaxConcurrentTransforms">> => integer(),
%%   <<"MaxPayloadInMB">> => integer(),
%%   <<"ModelClientConfig">> => model_client_config(),
%%   <<"ModelName">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TransformEndTime">> => non_neg_integer(),
%%   <<"TransformInput">> => transform_input(),
%%   <<"TransformJobArn">> => string(),
%%   <<"TransformJobName">> => string(),
%%   <<"TransformJobStatus">> => list(any()),
%%   <<"TransformOutput">> => transform_output(),
%%   <<"TransformResources">> => transform_resources(),
%%   <<"TransformStartTime">> => non_neg_integer()
%% }
-type transform_job() :: #{binary() => any()}.

%% Example:
%% suggestion_query() :: #{
%%   <<"PropertyNameQuery">> => property_name_query()
%% }
-type suggestion_query() :: #{binary() => any()}.

%% Example:
%% list_human_task_uis_response() :: #{
%%   <<"HumanTaskUiSummaries">> => list(human_task_ui_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_human_task_uis_response() :: #{binary() => any()}.

%% Example:
%% selective_execution_result() :: #{
%%   <<"SourcePipelineExecutionArn">> => string()
%% }
-type selective_execution_result() :: #{binary() => any()}.

%% Example:
%% describe_workforce_request() :: #{
%%   <<"WorkforceName">> := string()
%% }
-type describe_workforce_request() :: #{binary() => any()}.

%% Example:
%% delete_domain_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"RetentionPolicy">> => retention_policy()
%% }
-type delete_domain_request() :: #{binary() => any()}.

%% Example:
%% cluster_summary() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterName">> => string(),
%%   <<"ClusterStatus">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"TrainingPlanArns">> => list(string()())
%% }
-type cluster_summary() :: #{binary() => any()}.

%% Example:
%% describe_trial_response() :: #{
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DisplayName">> => string(),
%%   <<"ExperimentName">> => string(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"MetadataProperties">> => metadata_properties(),
%%   <<"Source">> => trial_source(),
%%   <<"TrialArn">> => string(),
%%   <<"TrialName">> => string()
%% }
-type describe_trial_response() :: #{binary() => any()}.

%% Example:
%% renderable_task() :: #{
%%   <<"Input">> => string()
%% }
-type renderable_task() :: #{binary() => any()}.

%% Example:
%% inference_component_deployment_config() :: #{
%%   <<"AutoRollbackConfiguration">> => auto_rollback_config(),
%%   <<"RollingUpdatePolicy">> => inference_component_rolling_update_policy()
%% }
-type inference_component_deployment_config() :: #{binary() => any()}.

%% Example:
%% app_details() :: #{
%%   <<"AppName">> => string(),
%%   <<"AppType">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DomainId">> => string(),
%%   <<"ResourceSpec">> => resource_spec(),
%%   <<"SpaceName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UserProfileName">> => string()
%% }
-type app_details() :: #{binary() => any()}.

%% Example:
%% list_model_bias_job_definitions_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"EndpointName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_model_bias_job_definitions_request() :: #{binary() => any()}.

%% Example:
%% list_algorithms_input() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_algorithms_input() :: #{binary() => any()}.

%% Example:
%% generative_ai_settings() :: #{
%%   <<"AmazonBedrockRoleArn">> => string()
%% }
-type generative_ai_settings() :: #{binary() => any()}.

%% Example:
%% create_model_input() :: #{
%%   <<"Containers">> => list(container_definition()()),
%%   <<"EnableNetworkIsolation">> => boolean(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"InferenceExecutionConfig">> => inference_execution_config(),
%%   <<"ModelName">> := string(),
%%   <<"PrimaryContainer">> => container_definition(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type create_model_input() :: #{binary() => any()}.

%% Example:
%% describe_user_profile_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"UserProfileName">> := string()
%% }
-type describe_user_profile_request() :: #{binary() => any()}.

%% Example:
%% hyper_parameter_specification() :: #{
%%   <<"DefaultValue">> => string(),
%%   <<"Description">> => string(),
%%   <<"IsRequired">> => boolean(),
%%   <<"IsTunable">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"Range">> => parameter_range(),
%%   <<"Type">> => list(any())
%% }
-type hyper_parameter_specification() :: #{binary() => any()}.

%% Example:
%% inference_execution_config() :: #{
%%   <<"Mode">> => list(any())
%% }
-type inference_execution_config() :: #{binary() => any()}.

%% Example:
%% start_edge_deployment_stage_request() :: #{
%%   <<"EdgeDeploymentPlanName">> := string(),
%%   <<"StageName">> := string()
%% }
-type start_edge_deployment_stage_request() :: #{binary() => any()}.

%% Example:
%% model_dashboard_indicator_action() :: #{
%%   <<"Enabled">> => boolean()
%% }
-type model_dashboard_indicator_action() :: #{binary() => any()}.

%% Example:
%% describe_model_bias_job_definition_request() :: #{
%%   <<"JobDefinitionName">> := string()
%% }
-type describe_model_bias_job_definition_request() :: #{binary() => any()}.

%% Example:
%% inference_experiment_schedule() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type inference_experiment_schedule() :: #{binary() => any()}.

%% Example:
%% auto_parameter() :: #{
%%   <<"Name">> => string(),
%%   <<"ValueHint">> => string()
%% }
-type auto_parameter() :: #{binary() => any()}.

%% Example:
%% transform_s3_data_source() :: #{
%%   <<"S3DataType">> => list(any()),
%%   <<"S3Uri">> => string()
%% }
-type transform_s3_data_source() :: #{binary() => any()}.

%% Example:
%% describe_model_card_response() :: #{
%%   <<"Content">> => string(),
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ModelCardArn">> => string(),
%%   <<"ModelCardName">> => string(),
%%   <<"ModelCardProcessingStatus">> => list(any()),
%%   <<"ModelCardStatus">> => list(any()),
%%   <<"ModelCardVersion">> => integer(),
%%   <<"SecurityConfig">> => model_card_security_config()
%% }
-type describe_model_card_response() :: #{binary() => any()}.

%% Example:
%% update_device_fleet_request() :: #{
%%   <<"Description">> => string(),
%%   <<"DeviceFleetName">> := string(),
%%   <<"EnableIotRoleAlias">> => boolean(),
%%   <<"OutputConfig">> := edge_output_config(),
%%   <<"RoleArn">> => string()
%% }
-type update_device_fleet_request() :: #{binary() => any()}.

%% Example:
%% output_parameter() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type output_parameter() :: #{binary() => any()}.

%% Example:
%% list_hubs_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_hubs_request() :: #{binary() => any()}.

%% Example:
%% describe_notebook_instance_output() :: #{
%%   <<"AcceleratorTypes">> => list(list(any())()),
%%   <<"AdditionalCodeRepositories">> => list(string()()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DefaultCodeRepository">> => string(),
%%   <<"DirectInternetAccess">> => list(any()),
%%   <<"FailureReason">> => string(),
%%   <<"InstanceMetadataServiceConfiguration">> => instance_metadata_service_configuration(),
%%   <<"InstanceType">> => list(any()),
%%   <<"KmsKeyId">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"NetworkInterfaceId">> => string(),
%%   <<"NotebookInstanceArn">> => string(),
%%   <<"NotebookInstanceLifecycleConfigName">> => string(),
%%   <<"NotebookInstanceName">> => string(),
%%   <<"NotebookInstanceStatus">> => list(any()),
%%   <<"PlatformIdentifier">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"RootAccess">> => list(any()),
%%   <<"SecurityGroups">> => list(string()()),
%%   <<"SubnetId">> => string(),
%%   <<"Url">> => string(),
%%   <<"VolumeSizeInGB">> => integer()
%% }
-type describe_notebook_instance_output() :: #{binary() => any()}.

%% Example:
%% recommendation_job_payload_config() :: #{
%%   <<"SamplePayloadUrl">> => string(),
%%   <<"SupportedContentTypes">> => list(string()())
%% }
-type recommendation_job_payload_config() :: #{binary() => any()}.

%% Example:
%% model_bias_job_input() :: #{
%%   <<"BatchTransformInput">> => batch_transform_input(),
%%   <<"EndpointInput">> => endpoint_input(),
%%   <<"GroundTruthS3Input">> => monitoring_ground_truth_s3_input()
%% }
-type model_bias_job_input() :: #{binary() => any()}.

%% Example:
%% compilation_job_summary() :: #{
%%   <<"CompilationEndTime">> => non_neg_integer(),
%%   <<"CompilationJobArn">> => string(),
%%   <<"CompilationJobName">> => string(),
%%   <<"CompilationJobStatus">> => list(any()),
%%   <<"CompilationStartTime">> => non_neg_integer(),
%%   <<"CompilationTargetDevice">> => list(any()),
%%   <<"CompilationTargetPlatformAccelerator">> => list(any()),
%%   <<"CompilationTargetPlatformArch">> => list(any()),
%%   <<"CompilationTargetPlatformOs">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type compilation_job_summary() :: #{binary() => any()}.

%% Example:
%% hyper_parameter_training_job_definition() :: #{
%%   <<"AlgorithmSpecification">> => hyper_parameter_algorithm_specification(),
%%   <<"CheckpointConfig">> => checkpoint_config(),
%%   <<"DefinitionName">> => string(),
%%   <<"EnableInterContainerTrafficEncryption">> => boolean(),
%%   <<"EnableManagedSpotTraining">> => boolean(),
%%   <<"EnableNetworkIsolation">> => boolean(),
%%   <<"Environment">> => map(),
%%   <<"HyperParameterRanges">> => parameter_ranges(),
%%   <<"HyperParameterTuningResourceConfig">> => hyper_parameter_tuning_resource_config(),
%%   <<"InputDataConfig">> => list(channel()()),
%%   <<"OutputDataConfig">> => output_data_config(),
%%   <<"ResourceConfig">> => resource_config(),
%%   <<"RetryStrategy">> => retry_strategy(),
%%   <<"RoleArn">> => string(),
%%   <<"StaticHyperParameters">> => map(),
%%   <<"StoppingCondition">> => stopping_condition(),
%%   <<"TuningObjective">> => hyper_parameter_tuning_job_objective(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type hyper_parameter_training_job_definition() :: #{binary() => any()}.

%% Example:
%% add_association_response() :: #{
%%   <<"DestinationArn">> => string(),
%%   <<"SourceArn">> => string()
%% }
-type add_association_response() :: #{binary() => any()}.

%% Example:
%% r_studio_server_pro_app_settings() :: #{
%%   <<"AccessStatus">> => list(any()),
%%   <<"UserGroup">> => list(any())
%% }
-type r_studio_server_pro_app_settings() :: #{binary() => any()}.

%% Example:
%% labeling_job_resource_config() :: #{
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type labeling_job_resource_config() :: #{binary() => any()}.

%% Example:
%% monitoring_ground_truth_s3_input() :: #{
%%   <<"S3Uri">> => string()
%% }
-type monitoring_ground_truth_s3_input() :: #{binary() => any()}.

%% Example:
%% convergence_detected() :: #{
%%   <<"CompleteOnConvergence">> => list(any())
%% }
-type convergence_detected() :: #{binary() => any()}.

%% Example:
%% update_model_card_request() :: #{
%%   <<"Content">> => string(),
%%   <<"ModelCardName">> := string(),
%%   <<"ModelCardStatus">> => list(any())
%% }
-type update_model_card_request() :: #{binary() => any()}.

%% Example:
%% delete_model_package_group_policy_input() :: #{
%%   <<"ModelPackageGroupName">> := string()
%% }
-type delete_model_package_group_policy_input() :: #{binary() => any()}.

%% Example:
%% create_inference_recommendations_job_response() :: #{
%%   <<"JobArn">> => string()
%% }
-type create_inference_recommendations_job_response() :: #{binary() => any()}.

%% Example:
%% describe_context_response() :: #{
%%   <<"ContextArn">> => string(),
%%   <<"ContextName">> => string(),
%%   <<"ContextType">> => string(),
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LineageGroupArn">> => string(),
%%   <<"Properties">> => map(),
%%   <<"Source">> => context_source()
%% }
-type describe_context_response() :: #{binary() => any()}.

%% Example:
%% delete_hyper_parameter_tuning_job_request() :: #{
%%   <<"HyperParameterTuningJobName">> := string()
%% }
-type delete_hyper_parameter_tuning_job_request() :: #{binary() => any()}.

%% Example:
%% inference_experiment_data_storage_config() :: #{
%%   <<"ContentType">> => capture_content_type_header(),
%%   <<"Destination">> => string(),
%%   <<"KmsKey">> => string()
%% }
-type inference_experiment_data_storage_config() :: #{binary() => any()}.

%% Example:
%% inference_hub_access_config() :: #{
%%   <<"HubContentArn">> => string()
%% }
-type inference_hub_access_config() :: #{binary() => any()}.

%% Example:
%% session_chaining_config() :: #{
%%   <<"EnableSessionTagChaining">> => boolean()
%% }
-type session_chaining_config() :: #{binary() => any()}.

%% Example:
%% create_data_quality_job_definition_request() :: #{
%%   <<"DataQualityAppSpecification">> := data_quality_app_specification(),
%%   <<"DataQualityBaselineConfig">> => data_quality_baseline_config(),
%%   <<"DataQualityJobInput">> := data_quality_job_input(),
%%   <<"DataQualityJobOutputConfig">> := monitoring_output_config(),
%%   <<"JobDefinitionName">> := string(),
%%   <<"JobResources">> := monitoring_resources(),
%%   <<"NetworkConfig">> => monitoring_network_config(),
%%   <<"RoleArn">> := string(),
%%   <<"StoppingCondition">> => monitoring_stopping_condition(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_data_quality_job_definition_request() :: #{binary() => any()}.

%% Example:
%% list_monitoring_executions_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"EndpointName">> => string(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"MonitoringJobDefinitionName">> => string(),
%%   <<"MonitoringScheduleName">> => string(),
%%   <<"MonitoringTypeEquals">> => list(any()),
%%   <<"NextToken">> => string(),
%%   <<"ScheduledTimeAfter">> => non_neg_integer(),
%%   <<"ScheduledTimeBefore">> => non_neg_integer(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StatusEquals">> => list(any())
%% }
-type list_monitoring_executions_request() :: #{binary() => any()}.

%% Example:
%% create_model_quality_job_definition_request() :: #{
%%   <<"JobDefinitionName">> := string(),
%%   <<"JobResources">> := monitoring_resources(),
%%   <<"ModelQualityAppSpecification">> := model_quality_app_specification(),
%%   <<"ModelQualityBaselineConfig">> => model_quality_baseline_config(),
%%   <<"ModelQualityJobInput">> := model_quality_job_input(),
%%   <<"ModelQualityJobOutputConfig">> := monitoring_output_config(),
%%   <<"NetworkConfig">> => monitoring_network_config(),
%%   <<"RoleArn">> := string(),
%%   <<"StoppingCondition">> => monitoring_stopping_condition(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_model_quality_job_definition_request() :: #{binary() => any()}.

%% Example:
%% list_monitoring_schedules_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"EndpointName">> => string(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"MonitoringJobDefinitionName">> => string(),
%%   <<"MonitoringTypeEquals">> => list(any()),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StatusEquals">> => list(any())
%% }
-type list_monitoring_schedules_request() :: #{binary() => any()}.

%% Example:
%% delete_flow_definition_request() :: #{
%%   <<"FlowDefinitionName">> := string()
%% }
-type delete_flow_definition_request() :: #{binary() => any()}.

%% Example:
%% capacity_size() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Value">> => integer()
%% }
-type capacity_size() :: #{binary() => any()}.

%% Example:
%% list_image_versions_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"ImageName">> := string(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_image_versions_request() :: #{binary() => any()}.

%% Example:
%% create_cluster_request() :: #{
%%   <<"ClusterName">> := string(),
%%   <<"InstanceGroups">> := list(cluster_instance_group_specification()()),
%%   <<"NodeRecovery">> => list(any()),
%%   <<"Orchestrator">> => cluster_orchestrator(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type create_cluster_request() :: #{binary() => any()}.

%% Example:
%% create_notebook_instance_lifecycle_config_input() :: #{
%%   <<"NotebookInstanceLifecycleConfigName">> := string(),
%%   <<"OnCreate">> => list(notebook_instance_lifecycle_hook()()),
%%   <<"OnStart">> => list(notebook_instance_lifecycle_hook()())
%% }
-type create_notebook_instance_lifecycle_config_input() :: #{binary() => any()}.

%% Example:
%% create_studio_lifecycle_config_response() :: #{
%%   <<"StudioLifecycleConfigArn">> => string()
%% }
-type create_studio_lifecycle_config_response() :: #{binary() => any()}.

%% Example:
%% auto_ml_candidate_generation_config() :: #{
%%   <<"AlgorithmsConfig">> => list(auto_ml_algorithm_config()()),
%%   <<"FeatureSpecificationS3Uri">> => string()
%% }
-type auto_ml_candidate_generation_config() :: #{binary() => any()}.

%% Example:
%% artifact_source() :: #{
%%   <<"SourceTypes">> => list(artifact_source_type()()),
%%   <<"SourceUri">> => string()
%% }
-type artifact_source() :: #{binary() => any()}.

%% Example:
%% emr_serverless_compute_config() :: #{
%%   <<"ExecutionRoleARN">> => string()
%% }
-type emr_serverless_compute_config() :: #{binary() => any()}.

%% Example:
%% metric_datum() :: #{
%%   <<"MetricName">> => list(any()),
%%   <<"Set">> => list(any()),
%%   <<"StandardMetricName">> => list(any()),
%%   <<"Value">> => float()
%% }
-type metric_datum() :: #{binary() => any()}.

%% Example:
%% direct_deploy_settings() :: #{
%%   <<"Status">> => list(any())
%% }
-type direct_deploy_settings() :: #{binary() => any()}.

%% Example:
%% model_card_version_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ModelCardArn">> => string(),
%%   <<"ModelCardName">> => string(),
%%   <<"ModelCardStatus">> => list(any()),
%%   <<"ModelCardVersion">> => integer()
%% }
-type model_card_version_summary() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% create_optimization_job_request() :: #{
%%   <<"DeploymentInstanceType">> := list(any()),
%%   <<"ModelSource">> := optimization_job_model_source(),
%%   <<"OptimizationConfigs">> := list(list()()),
%%   <<"OptimizationEnvironment">> => map(),
%%   <<"OptimizationJobName">> := string(),
%%   <<"OutputConfig">> := optimization_job_output_config(),
%%   <<"RoleArn">> := string(),
%%   <<"StoppingCondition">> := stopping_condition(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VpcConfig">> => optimization_vpc_config()
%% }
-type create_optimization_job_request() :: #{binary() => any()}.

%% Example:
%% pending_deployment_summary() :: #{
%%   <<"EndpointConfigName">> => string(),
%%   <<"ProductionVariants">> => list(pending_production_variant_summary()()),
%%   <<"ShadowProductionVariants">> => list(pending_production_variant_summary()()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type pending_deployment_summary() :: #{binary() => any()}.

%% Example:
%% training_plan_offering() :: #{
%%   <<"CurrencyCode">> => string(),
%%   <<"DurationHours">> => float(),
%%   <<"DurationMinutes">> => float(),
%%   <<"RequestedEndTimeBefore">> => non_neg_integer(),
%%   <<"RequestedStartTimeAfter">> => non_neg_integer(),
%%   <<"ReservedCapacityOfferings">> => list(reserved_capacity_offering()()),
%%   <<"TargetResources">> => list(list(any())()),
%%   <<"TrainingPlanOfferingId">> => string(),
%%   <<"UpfrontFee">> => string()
%% }
-type training_plan_offering() :: #{binary() => any()}.

%% Example:
%% delete_workteam_response() :: #{
%%   <<"Success">> => boolean()
%% }
-type delete_workteam_response() :: #{binary() => any()}.

%% Example:
%% processing_output() :: #{
%%   <<"AppManaged">> => boolean(),
%%   <<"FeatureStoreOutput">> => processing_feature_store_output(),
%%   <<"OutputName">> => string(),
%%   <<"S3Output">> => processing_s3_output()
%% }
-type processing_output() :: #{binary() => any()}.

%% Example:
%% clarify_check_step_metadata() :: #{
%%   <<"BaselineUsedForDriftCheckConstraints">> => string(),
%%   <<"CalculatedBaselineConstraints">> => string(),
%%   <<"CheckJobArn">> => string(),
%%   <<"CheckType">> => string(),
%%   <<"ModelPackageGroupName">> => string(),
%%   <<"RegisterNewBaseline">> => boolean(),
%%   <<"SkipCheck">> => boolean(),
%%   <<"ViolationReport">> => string()
%% }
-type clarify_check_step_metadata() :: #{binary() => any()}.

%% Example:
%% create_compilation_job_response() :: #{
%%   <<"CompilationJobArn">> => string()
%% }
-type create_compilation_job_response() :: #{binary() => any()}.

%% Example:
%% describe_pipeline_execution_request() :: #{
%%   <<"PipelineExecutionArn">> := string()
%% }
-type describe_pipeline_execution_request() :: #{binary() => any()}.

%% Example:
%% list_workteams_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Workteams">> => list(workteam()())
%% }
-type list_workteams_response() :: #{binary() => any()}.

%% Example:
%% list_inference_recommendations_job_steps_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Steps">> => list(inference_recommendations_job_step()())
%% }
-type list_inference_recommendations_job_steps_response() :: #{binary() => any()}.

%% Example:
%% send_pipeline_execution_step_failure_response() :: #{
%%   <<"PipelineExecutionArn">> => string()
%% }
-type send_pipeline_execution_step_failure_response() :: #{binary() => any()}.

%% Example:
%% container_config() :: #{
%%   <<"ContainerArguments">> => list(string()()),
%%   <<"ContainerEntrypoint">> => list(string()()),
%%   <<"ContainerEnvironmentVariables">> => map()
%% }
-type container_config() :: #{binary() => any()}.

%% Example:
%% auto_ml_candidate_step() :: #{
%%   <<"CandidateStepArn">> => string(),
%%   <<"CandidateStepName">> => string(),
%%   <<"CandidateStepType">> => list(any())
%% }
-type auto_ml_candidate_step() :: #{binary() => any()}.

%% Example:
%% retry_pipeline_execution_request() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"ParallelismConfiguration">> => parallelism_configuration(),
%%   <<"PipelineExecutionArn">> := string()
%% }
-type retry_pipeline_execution_request() :: #{binary() => any()}.

%% Example:
%% online_store_security_config() :: #{
%%   <<"KmsKeyId">> => string()
%% }
-type online_store_security_config() :: #{binary() => any()}.

%% Example:
%% time_series_transformations() :: #{
%%   <<"Aggregation">> => map(),
%%   <<"Filling">> => map()
%% }
-type time_series_transformations() :: #{binary() => any()}.

%% Example:
%% describe_artifact_request() :: #{
%%   <<"ArtifactArn">> := string()
%% }
-type describe_artifact_request() :: #{binary() => any()}.

%% Example:
%% update_notebook_instance_input() :: #{
%%   <<"AcceleratorTypes">> => list(list(any())()),
%%   <<"AdditionalCodeRepositories">> => list(string()()),
%%   <<"DefaultCodeRepository">> => string(),
%%   <<"DisassociateAcceleratorTypes">> => boolean(),
%%   <<"DisassociateAdditionalCodeRepositories">> => boolean(),
%%   <<"DisassociateDefaultCodeRepository">> => boolean(),
%%   <<"DisassociateLifecycleConfig">> => boolean(),
%%   <<"InstanceMetadataServiceConfiguration">> => instance_metadata_service_configuration(),
%%   <<"InstanceType">> => list(any()),
%%   <<"LifecycleConfigName">> => string(),
%%   <<"NotebookInstanceName">> := string(),
%%   <<"RoleArn">> => string(),
%%   <<"RootAccess">> => list(any()),
%%   <<"VolumeSizeInGB">> => integer()
%% }
-type update_notebook_instance_input() :: #{binary() => any()}.

%% Example:
%% container_definition() :: #{
%%   <<"AdditionalModelDataSources">> => list(additional_model_data_source()()),
%%   <<"ContainerHostname">> => string(),
%%   <<"Environment">> => map(),
%%   <<"Image">> => string(),
%%   <<"ImageConfig">> => image_config(),
%%   <<"InferenceSpecificationName">> => string(),
%%   <<"Mode">> => list(any()),
%%   <<"ModelDataSource">> => model_data_source(),
%%   <<"ModelDataUrl">> => string(),
%%   <<"ModelPackageName">> => string(),
%%   <<"MultiModelConfig">> => multi_model_config()
%% }
-type container_definition() :: #{binary() => any()}.

%% Example:
%% create_space_response() :: #{
%%   <<"SpaceArn">> => string()
%% }
-type create_space_response() :: #{binary() => any()}.

%% Example:
%% auto_ml_candidate() :: #{
%%   <<"CandidateName">> => string(),
%%   <<"CandidateProperties">> => candidate_properties(),
%%   <<"CandidateStatus">> => list(any()),
%%   <<"CandidateSteps">> => list(auto_ml_candidate_step()()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"FinalAutoMLJobObjectiveMetric">> => final_auto_ml_job_objective_metric(),
%%   <<"InferenceContainerDefinitions">> => map(),
%%   <<"InferenceContainers">> => list(auto_ml_container_definition()()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ObjectiveStatus">> => list(any())
%% }
-type auto_ml_candidate() :: #{binary() => any()}.

%% Example:
%% space_settings_summary() :: #{
%%   <<"AppType">> => list(any()),
%%   <<"SpaceStorageSettings">> => space_storage_settings()
%% }
-type space_settings_summary() :: #{binary() => any()}.

%% Example:
%% describe_model_explainability_job_definition_request() :: #{
%%   <<"JobDefinitionName">> := string()
%% }
-type describe_model_explainability_job_definition_request() :: #{binary() => any()}.

%% Example:
%% update_monitoring_schedule_request() :: #{
%%   <<"MonitoringScheduleConfig">> := monitoring_schedule_config(),
%%   <<"MonitoringScheduleName">> := string()
%% }
-type update_monitoring_schedule_request() :: #{binary() => any()}.

%% Example:
%% list_hyper_parameter_tuning_jobs_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StatusEquals">> => list(any())
%% }
-type list_hyper_parameter_tuning_jobs_request() :: #{binary() => any()}.

%% Example:
%% create_domain_request() :: #{
%%   <<"AppNetworkAccessType">> => list(any()),
%%   <<"AppSecurityGroupManagement">> => list(any()),
%%   <<"AuthMode">> := list(any()),
%%   <<"DefaultSpaceSettings">> => default_space_settings(),
%%   <<"DefaultUserSettings">> := user_settings(),
%%   <<"DomainName">> := string(),
%%   <<"DomainSettings">> => domain_settings(),
%%   <<"HomeEfsFileSystemKmsKeyId">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"SubnetIds">> := list(string()()),
%%   <<"TagPropagation">> => list(any()),
%%   <<"Tags">> => list(tag()()),
%%   <<"VpcId">> := string()
%% }
-type create_domain_request() :: #{binary() => any()}.

%% Example:
%% auto_ml_algorithm_config() :: #{
%%   <<"AutoMLAlgorithms">> => list(list(any())())
%% }
-type auto_ml_algorithm_config() :: #{binary() => any()}.

%% Example:
%% delete_artifact_request() :: #{
%%   <<"ArtifactArn">> => string(),
%%   <<"Source">> => artifact_source()
%% }
-type delete_artifact_request() :: #{binary() => any()}.

%% Example:
%% categorical_parameter() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => list(string()())
%% }
-type categorical_parameter() :: #{binary() => any()}.

%% Example:
%% list_monitoring_alerts_response() :: #{
%%   <<"MonitoringAlertSummaries">> => list(monitoring_alert_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_monitoring_alerts_response() :: #{binary() => any()}.

%% Example:
%% model_deploy_config() :: #{
%%   <<"AutoGenerateEndpointName">> => boolean(),
%%   <<"EndpointName">> => string()
%% }
-type model_deploy_config() :: #{binary() => any()}.

%% Example:
%% stop_mlflow_tracking_server_request() :: #{
%%   <<"TrackingServerName">> := string()
%% }
-type stop_mlflow_tracking_server_request() :: #{binary() => any()}.

%% Example:
%% create_model_explainability_job_definition_response() :: #{
%%   <<"JobDefinitionArn">> => string()
%% }
-type create_model_explainability_job_definition_response() :: #{binary() => any()}.

%% Example:
%% create_model_package_group_output() :: #{
%%   <<"ModelPackageGroupArn">> => string()
%% }
-type create_model_package_group_output() :: #{binary() => any()}.

%% Example:
%% delete_experiment_request() :: #{
%%   <<"ExperimentName">> := string()
%% }
-type delete_experiment_request() :: #{binary() => any()}.

%% Example:
%% update_pipeline_execution_response() :: #{
%%   <<"PipelineExecutionArn">> => string()
%% }
-type update_pipeline_execution_response() :: #{binary() => any()}.

%% Example:
%% describe_image_version_request() :: #{
%%   <<"Alias">> => string(),
%%   <<"ImageName">> := string(),
%%   <<"Version">> => integer()
%% }
-type describe_image_version_request() :: #{binary() => any()}.

%% Example:
%% describe_trial_component_request() :: #{
%%   <<"TrialComponentName">> := string()
%% }
-type describe_trial_component_request() :: #{binary() => any()}.

%% Example:
%% create_feature_group_response() :: #{
%%   <<"FeatureGroupArn">> => string()
%% }
-type create_feature_group_response() :: #{binary() => any()}.

%% Example:
%% edge_output_config() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"PresetDeploymentConfig">> => string(),
%%   <<"PresetDeploymentType">> => list(any()),
%%   <<"S3OutputLocation">> => string()
%% }
-type edge_output_config() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% delete_partner_app_response() :: #{
%%   <<"Arn">> => string()
%% }
-type delete_partner_app_response() :: #{binary() => any()}.

%% Example:
%% list_auto_ml_jobs_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StatusEquals">> => list(any())
%% }
-type list_auto_ml_jobs_request() :: #{binary() => any()}.

%% Example:
%% describe_image_version_response() :: #{
%%   <<"BaseImage">> => string(),
%%   <<"ContainerImage">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"Horovod">> => boolean(),
%%   <<"ImageArn">> => string(),
%%   <<"ImageVersionArn">> => string(),
%%   <<"ImageVersionStatus">> => list(any()),
%%   <<"JobType">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"MLFramework">> => string(),
%%   <<"Processor">> => list(any()),
%%   <<"ProgrammingLang">> => string(),
%%   <<"ReleaseNotes">> => string(),
%%   <<"VendorGuidance">> => list(any()),
%%   <<"Version">> => integer()
%% }
-type describe_image_version_response() :: #{binary() => any()}.

%% Example:
%% delete_hub_request() :: #{
%%   <<"HubName">> := string()
%% }
-type delete_hub_request() :: #{binary() => any()}.

%% Example:
%% last_update_status() :: #{
%%   <<"FailureReason">> => string(),
%%   <<"Status">> => list(any())
%% }
-type last_update_status() :: #{binary() => any()}.

%% Example:
%% project() :: #{
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ProjectArn">> => string(),
%%   <<"ProjectDescription">> => string(),
%%   <<"ProjectId">> => string(),
%%   <<"ProjectName">> => string(),
%%   <<"ProjectStatus">> => list(any()),
%%   <<"ServiceCatalogProvisionedProductDetails">> => service_catalog_provisioned_product_details(),
%%   <<"ServiceCatalogProvisioningDetails">> => service_catalog_provisioning_details(),
%%   <<"Tags">> => list(tag()())
%% }
-type project() :: #{binary() => any()}.

%% Example:
%% describe_algorithm_output() :: #{
%%   <<"AlgorithmArn">> => string(),
%%   <<"AlgorithmDescription">> => string(),
%%   <<"AlgorithmName">> => string(),
%%   <<"AlgorithmStatus">> => list(any()),
%%   <<"AlgorithmStatusDetails">> => algorithm_status_details(),
%%   <<"CertifyForMarketplace">> => boolean(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"InferenceSpecification">> => inference_specification(),
%%   <<"ProductId">> => string(),
%%   <<"TrainingSpecification">> => training_specification(),
%%   <<"ValidationSpecification">> => algorithm_validation_specification()
%% }
-type describe_algorithm_output() :: #{binary() => any()}.

%% Example:
%% processing_s3_output() :: #{
%%   <<"LocalPath">> => string(),
%%   <<"S3UploadMode">> => list(any()),
%%   <<"S3Uri">> => string()
%% }
-type processing_s3_output() :: #{binary() => any()}.

%% Example:
%% create_feature_group_request() :: #{
%%   <<"Description">> => string(),
%%   <<"EventTimeFeatureName">> := string(),
%%   <<"FeatureDefinitions">> := list(feature_definition()()),
%%   <<"FeatureGroupName">> := string(),
%%   <<"OfflineStoreConfig">> => offline_store_config(),
%%   <<"OnlineStoreConfig">> => online_store_config(),
%%   <<"RecordIdentifierFeatureName">> := string(),
%%   <<"RoleArn">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"ThroughputConfig">> => throughput_config()
%% }
-type create_feature_group_request() :: #{binary() => any()}.

%% Example:
%% describe_notebook_instance_input() :: #{
%%   <<"NotebookInstanceName">> := string()
%% }
-type describe_notebook_instance_input() :: #{binary() => any()}.

%% Example:
%% dataset_definition() :: #{
%%   <<"AthenaDatasetDefinition">> => athena_dataset_definition(),
%%   <<"DataDistributionType">> => list(any()),
%%   <<"InputMode">> => list(any()),
%%   <<"LocalPath">> => string(),
%%   <<"RedshiftDatasetDefinition">> => redshift_dataset_definition()
%% }
-type dataset_definition() :: #{binary() => any()}.

%% Example:
%% list_model_explainability_job_definitions_response() :: #{
%%   <<"JobDefinitionSummaries">> => list(monitoring_job_definition_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_model_explainability_job_definitions_response() :: #{binary() => any()}.

%% Example:
%% create_space_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"OwnershipSettings">> => ownership_settings(),
%%   <<"SpaceDisplayName">> => string(),
%%   <<"SpaceName">> := string(),
%%   <<"SpaceSettings">> => space_settings(),
%%   <<"SpaceSharingSettings">> => space_sharing_settings(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_space_request() :: #{binary() => any()}.

%% Example:
%% clarify_shap_config() :: #{
%%   <<"NumberOfSamples">> => integer(),
%%   <<"Seed">> => integer(),
%%   <<"ShapBaselineConfig">> => clarify_shap_baseline_config(),
%%   <<"TextConfig">> => clarify_text_config(),
%%   <<"UseLogit">> => boolean()
%% }
-type clarify_shap_config() :: #{binary() => any()}.

%% Example:
%% list_trial_components_request() :: #{
%%   <<"CreatedAfter">> => non_neg_integer(),
%%   <<"CreatedBefore">> => non_neg_integer(),
%%   <<"ExperimentName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"SourceArn">> => string(),
%%   <<"TrialName">> => string()
%% }
-type list_trial_components_request() :: #{binary() => any()}.

%% Example:
%% hyper_parameter_tuning_job_search_entity() :: #{
%%   <<"BestTrainingJob">> => hyper_parameter_training_job_summary(),
%%   <<"ConsumedResources">> => hyper_parameter_tuning_job_consumed_resources(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"HyperParameterTuningEndTime">> => non_neg_integer(),
%%   <<"HyperParameterTuningJobArn">> => string(),
%%   <<"HyperParameterTuningJobConfig">> => hyper_parameter_tuning_job_config(),
%%   <<"HyperParameterTuningJobName">> => string(),
%%   <<"HyperParameterTuningJobStatus">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ObjectiveStatusCounters">> => objective_status_counters(),
%%   <<"OverallBestTrainingJob">> => hyper_parameter_training_job_summary(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TrainingJobDefinition">> => hyper_parameter_training_job_definition(),
%%   <<"TrainingJobDefinitions">> => list(hyper_parameter_training_job_definition()()),
%%   <<"TrainingJobStatusCounters">> => training_job_status_counters(),
%%   <<"TuningJobCompletionDetails">> => hyper_parameter_tuning_job_completion_details(),
%%   <<"WarmStartConfig">> => hyper_parameter_tuning_job_warm_start_config()
%% }
-type hyper_parameter_tuning_job_search_entity() :: #{binary() => any()}.

%% Example:
%% list_model_card_versions_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"ModelCardName">> := string(),
%%   <<"ModelCardStatus">> => list(any()),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_model_card_versions_request() :: #{binary() => any()}.

%% Example:
%% monitoring_resources() :: #{
%%   <<"ClusterConfig">> => monitoring_cluster_config()
%% }
-type monitoring_resources() :: #{binary() => any()}.

%% Example:
%% create_image_request() :: #{
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"ImageName">> := string(),
%%   <<"RoleArn">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_image_request() :: #{binary() => any()}.

%% Example:
%% create_pipeline_request() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"ParallelismConfiguration">> => parallelism_configuration(),
%%   <<"PipelineDefinition">> => string(),
%%   <<"PipelineDefinitionS3Location">> => pipeline_definition_s3_location(),
%%   <<"PipelineDescription">> => string(),
%%   <<"PipelineDisplayName">> => string(),
%%   <<"PipelineName">> := string(),
%%   <<"RoleArn">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_pipeline_request() :: #{binary() => any()}.

%% Example:
%% describe_subscribed_workteam_request() :: #{
%%   <<"WorkteamArn">> := string()
%% }
-type describe_subscribed_workteam_request() :: #{binary() => any()}.

%% Example:
%% property_name_suggestion() :: #{
%%   <<"PropertyName">> => string()
%% }
-type property_name_suggestion() :: #{binary() => any()}.

%% Example:
%% source_algorithm() :: #{
%%   <<"AlgorithmName">> => string(),
%%   <<"ModelDataETag">> => string(),
%%   <<"ModelDataSource">> => model_data_source(),
%%   <<"ModelDataUrl">> => string()
%% }
-type source_algorithm() :: #{binary() => any()}.

%% Example:
%% delete_cluster_scheduler_config_request() :: #{
%%   <<"ClusterSchedulerConfigId">> := string()
%% }
-type delete_cluster_scheduler_config_request() :: #{binary() => any()}.

%% Example:
%% batch_describe_model_package_output() :: #{
%%   <<"BatchDescribeModelPackageErrorMap">> => map(),
%%   <<"ModelPackageSummaries">> => map()
%% }
-type batch_describe_model_package_output() :: #{binary() => any()}.

%% Example:
%% delete_user_profile_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"UserProfileName">> := string()
%% }
-type delete_user_profile_request() :: #{binary() => any()}.

%% Example:
%% create_artifact_request() :: #{
%%   <<"ArtifactName">> => string(),
%%   <<"ArtifactType">> := string(),
%%   <<"MetadataProperties">> => metadata_properties(),
%%   <<"Properties">> => map(),
%%   <<"Source">> := artifact_source(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_artifact_request() :: #{binary() => any()}.

%% Example:
%% describe_model_quality_job_definition_request() :: #{
%%   <<"JobDefinitionName">> := string()
%% }
-type describe_model_quality_job_definition_request() :: #{binary() => any()}.

%% Example:
%% update_image_request() :: #{
%%   <<"DeleteProperties">> => list(string()()),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"ImageName">> := string(),
%%   <<"RoleArn">> => string()
%% }
-type update_image_request() :: #{binary() => any()}.

%% Example:
%% list_contexts_request() :: #{
%%   <<"ContextType">> => string(),
%%   <<"CreatedAfter">> => non_neg_integer(),
%%   <<"CreatedBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"SourceUri">> => string()
%% }
-type list_contexts_request() :: #{binary() => any()}.

%% Example:
%% describe_labeling_job_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"HumanTaskConfig">> => human_task_config(),
%%   <<"InputConfig">> => labeling_job_input_config(),
%%   <<"JobReferenceCode">> => string(),
%%   <<"LabelAttributeName">> => string(),
%%   <<"LabelCategoryConfigS3Uri">> => string(),
%%   <<"LabelCounters">> => label_counters(),
%%   <<"LabelingJobAlgorithmsConfig">> => labeling_job_algorithms_config(),
%%   <<"LabelingJobArn">> => string(),
%%   <<"LabelingJobName">> => string(),
%%   <<"LabelingJobOutput">> => labeling_job_output(),
%%   <<"LabelingJobStatus">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"OutputConfig">> => labeling_job_output_config(),
%%   <<"RoleArn">> => string(),
%%   <<"StoppingConditions">> => labeling_job_stopping_conditions(),
%%   <<"Tags">> => list(tag()())
%% }
-type describe_labeling_job_response() :: #{binary() => any()}.

%% Example:
%% sharing_settings() :: #{
%%   <<"NotebookOutputOption">> => list(any()),
%%   <<"S3KmsKeyId">> => string(),
%%   <<"S3OutputPath">> => string()
%% }
-type sharing_settings() :: #{binary() => any()}.

%% Example:
%% describe_device_request() :: #{
%%   <<"DeviceFleetName">> := string(),
%%   <<"DeviceName">> := string(),
%%   <<"NextToken">> => string()
%% }
-type describe_device_request() :: #{binary() => any()}.

%% Example:
%% list_projects_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProjectSummaryList">> => list(project_summary()())
%% }
-type list_projects_output() :: #{binary() => any()}.

%% Example:
%% human_loop_request_source() :: #{
%%   <<"AwsManagedHumanLoopRequestSource">> => list(any())
%% }
-type human_loop_request_source() :: #{binary() => any()}.

%% Example:
%% list_feature_groups_response() :: #{
%%   <<"FeatureGroupSummaries">> => list(feature_group_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_feature_groups_response() :: #{binary() => any()}.

%% Example:
%% update_pipeline_request() :: #{
%%   <<"ParallelismConfiguration">> => parallelism_configuration(),
%%   <<"PipelineDefinition">> => string(),
%%   <<"PipelineDefinitionS3Location">> => pipeline_definition_s3_location(),
%%   <<"PipelineDescription">> => string(),
%%   <<"PipelineDisplayName">> => string(),
%%   <<"PipelineName">> := string(),
%%   <<"RoleArn">> => string()
%% }
-type update_pipeline_request() :: #{binary() => any()}.

%% Example:
%% describe_studio_lifecycle_config_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"StudioLifecycleConfigAppType">> => list(any()),
%%   <<"StudioLifecycleConfigArn">> => string(),
%%   <<"StudioLifecycleConfigContent">> => string(),
%%   <<"StudioLifecycleConfigName">> => string()
%% }
-type describe_studio_lifecycle_config_response() :: #{binary() => any()}.

%% Example:
%% model_explainability_baseline_config() :: #{
%%   <<"BaseliningJobName">> => string(),
%%   <<"ConstraintsResource">> => monitoring_constraints_resource()
%% }
-type model_explainability_baseline_config() :: #{binary() => any()}.

%% Example:
%% list_code_repositories_input() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_code_repositories_input() :: #{binary() => any()}.

%% Example:
%% cluster_orchestrator_eks_config() :: #{
%%   <<"ClusterArn">> => string()
%% }
-type cluster_orchestrator_eks_config() :: #{binary() => any()}.

%% Example:
%% list_images_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_images_request() :: #{binary() => any()}.

%% Example:
%% list_auto_ml_jobs_response() :: #{
%%   <<"AutoMLJobSummaries">> => list(auto_ml_job_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_auto_ml_jobs_response() :: #{binary() => any()}.

%% Example:
%% describe_human_task_ui_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"HumanTaskUiArn">> => string(),
%%   <<"HumanTaskUiName">> => string(),
%%   <<"HumanTaskUiStatus">> => list(any()),
%%   <<"UiTemplate">> => ui_template_info()
%% }
-type describe_human_task_ui_response() :: #{binary() => any()}.

%% Example:
%% model_package_status_item() :: #{
%%   <<"FailureReason">> => string(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type model_package_status_item() :: #{binary() => any()}.

%% Example:
%% describe_project_input() :: #{
%%   <<"ProjectName">> := string()
%% }
-type describe_project_input() :: #{binary() => any()}.

%% Example:
%% update_trial_component_request() :: #{
%%   <<"DisplayName">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"InputArtifacts">> => map(),
%%   <<"InputArtifactsToRemove">> => list(string()()),
%%   <<"OutputArtifacts">> => map(),
%%   <<"OutputArtifactsToRemove">> => list(string()()),
%%   <<"Parameters">> => map(),
%%   <<"ParametersToRemove">> => list(string()()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => trial_component_status(),
%%   <<"TrialComponentName">> := string()
%% }
-type update_trial_component_request() :: #{binary() => any()}.

%% Example:
%% recommendation_job_input_config() :: #{
%%   <<"ContainerConfig">> => recommendation_job_container_config(),
%%   <<"EndpointConfigurations">> => list(endpoint_input_configuration()()),
%%   <<"Endpoints">> => list(endpoint_info()()),
%%   <<"JobDurationInSeconds">> => integer(),
%%   <<"ModelName">> => string(),
%%   <<"ModelPackageVersionArn">> => string(),
%%   <<"ResourceLimit">> => recommendation_job_resource_limit(),
%%   <<"TrafficPattern">> => traffic_pattern(),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VpcConfig">> => recommendation_job_vpc_config()
%% }
-type recommendation_job_input_config() :: #{binary() => any()}.

%% Example:
%% create_action_request() :: #{
%%   <<"ActionName">> := string(),
%%   <<"ActionType">> := string(),
%%   <<"Description">> => string(),
%%   <<"MetadataProperties">> => metadata_properties(),
%%   <<"Properties">> => map(),
%%   <<"Source">> := action_source(),
%%   <<"Status">> => list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_action_request() :: #{binary() => any()}.

%% Example:
%% create_hyper_parameter_tuning_job_response() :: #{
%%   <<"HyperParameterTuningJobArn">> => string()
%% }
-type create_hyper_parameter_tuning_job_response() :: #{binary() => any()}.

%% Example:
%% update_endpoint_weights_and_capacities_output() :: #{
%%   <<"EndpointArn">> => string()
%% }
-type update_endpoint_weights_and_capacities_output() :: #{binary() => any()}.

%% Example:
%% list_domains_response() :: #{
%%   <<"Domains">> => list(domain_details()()),
%%   <<"NextToken">> => string()
%% }
-type list_domains_response() :: #{binary() => any()}.

%% Example:
%% offline_store_config() :: #{
%%   <<"DataCatalogConfig">> => data_catalog_config(),
%%   <<"DisableGlueTableCreation">> => boolean(),
%%   <<"S3StorageConfig">> => s3_storage_config(),
%%   <<"TableFormat">> => list(any())
%% }
-type offline_store_config() :: #{binary() => any()}.

%% Example:
%% model_quality_baseline_config() :: #{
%%   <<"BaseliningJobName">> => string(),
%%   <<"ConstraintsResource">> => monitoring_constraints_resource()
%% }
-type model_quality_baseline_config() :: #{binary() => any()}.

%% Example:
%% delete_pipeline_request() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"PipelineName">> := string()
%% }
-type delete_pipeline_request() :: #{binary() => any()}.

%% Example:
%% endpoint_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EndpointArn">> => string(),
%%   <<"EndpointName">> => string(),
%%   <<"EndpointStatus">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type endpoint_summary() :: #{binary() => any()}.

%% Example:
%% auto_ml_data_split_config() :: #{
%%   <<"ValidationFraction">> => float()
%% }
-type auto_ml_data_split_config() :: #{binary() => any()}.

%% Example:
%% create_presigned_domain_url_response() :: #{
%%   <<"AuthorizedUrl">> => string()
%% }
-type create_presigned_domain_url_response() :: #{binary() => any()}.

%% Example:
%% describe_auto_ml_job_request() :: #{
%%   <<"AutoMLJobName">> := string()
%% }
-type describe_auto_ml_job_request() :: #{binary() => any()}.

%% Example:
%% describe_optimization_job_request() :: #{
%%   <<"OptimizationJobName">> := string()
%% }
-type describe_optimization_job_request() :: #{binary() => any()}.

%% Example:
%% trial_component_artifact() :: #{
%%   <<"MediaType">> => string(),
%%   <<"Value">> => string()
%% }
-type trial_component_artifact() :: #{binary() => any()}.

%% Example:
%% update_workteam_request() :: #{
%%   <<"Description">> => string(),
%%   <<"MemberDefinitions">> => list(member_definition()()),
%%   <<"NotificationConfiguration">> => notification_configuration(),
%%   <<"WorkerAccessConfiguration">> => worker_access_configuration(),
%%   <<"WorkteamName">> := string()
%% }
-type update_workteam_request() :: #{binary() => any()}.

%% Example:
%% update_devices_request() :: #{
%%   <<"DeviceFleetName">> := string(),
%%   <<"Devices">> := list(device()())
%% }
-type update_devices_request() :: #{binary() => any()}.

%% Example:
%% profiler_rule_configuration() :: #{
%%   <<"InstanceType">> => list(any()),
%%   <<"LocalPath">> => string(),
%%   <<"RuleConfigurationName">> => string(),
%%   <<"RuleEvaluatorImage">> => string(),
%%   <<"RuleParameters">> => map(),
%%   <<"S3OutputPath">> => string(),
%%   <<"VolumeSizeInGB">> => integer()
%% }
-type profiler_rule_configuration() :: #{binary() => any()}.

%% Example:
%% jupyter_server_app_settings() :: #{
%%   <<"CodeRepositories">> => list(code_repository()()),
%%   <<"DefaultResourceSpec">> => resource_spec(),
%%   <<"LifecycleConfigArns">> => list(string()())
%% }
-type jupyter_server_app_settings() :: #{binary() => any()}.

%% Example:
%% data_quality_app_specification() :: #{
%%   <<"ContainerArguments">> => list(string()()),
%%   <<"ContainerEntrypoint">> => list(string()()),
%%   <<"Environment">> => map(),
%%   <<"ImageUri">> => string(),
%%   <<"PostAnalyticsProcessorSourceUri">> => string(),
%%   <<"RecordPreprocessorSourceUri">> => string()
%% }
-type data_quality_app_specification() :: #{binary() => any()}.

%% Example:
%% describe_auto_ml_job_response() :: #{
%%   <<"AutoMLJobArn">> => string(),
%%   <<"AutoMLJobArtifacts">> => auto_ml_job_artifacts(),
%%   <<"AutoMLJobConfig">> => auto_ml_job_config(),
%%   <<"AutoMLJobName">> => string(),
%%   <<"AutoMLJobObjective">> => auto_ml_job_objective(),
%%   <<"AutoMLJobSecondaryStatus">> => list(any()),
%%   <<"AutoMLJobStatus">> => list(any()),
%%   <<"BestCandidate">> => auto_ml_candidate(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"GenerateCandidateDefinitionsOnly">> => boolean(),
%%   <<"InputDataConfig">> => list(auto_ml_channel()()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ModelDeployConfig">> => model_deploy_config(),
%%   <<"ModelDeployResult">> => model_deploy_result(),
%%   <<"OutputDataConfig">> => auto_ml_output_data_config(),
%%   <<"PartialFailureReasons">> => list(auto_ml_partial_failure_reason()()),
%%   <<"ProblemType">> => list(any()),
%%   <<"ResolvedAttributes">> => resolved_attributes(),
%%   <<"RoleArn">> => string()
%% }
-type describe_auto_ml_job_response() :: #{binary() => any()}.

%% Example:
%% create_edge_deployment_plan_response() :: #{
%%   <<"EdgeDeploymentPlanArn">> => string()
%% }
-type create_edge_deployment_plan_response() :: #{binary() => any()}.

%% Example:
%% association_summary() :: #{
%%   <<"AssociationType">> => list(any()),
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DestinationArn">> => string(),
%%   <<"DestinationName">> => string(),
%%   <<"DestinationType">> => string(),
%%   <<"SourceArn">> => string(),
%%   <<"SourceName">> => string(),
%%   <<"SourceType">> => string()
%% }
-type association_summary() :: #{binary() => any()}.

%% Example:
%% production_variant() :: #{
%%   <<"AcceleratorType">> => list(any()),
%%   <<"ContainerStartupHealthCheckTimeoutInSeconds">> => integer(),
%%   <<"CoreDumpConfig">> => production_variant_core_dump_config(),
%%   <<"EnableSSMAccess">> => boolean(),
%%   <<"InferenceAmiVersion">> => list(any()),
%%   <<"InitialInstanceCount">> => integer(),
%%   <<"InitialVariantWeight">> => float(),
%%   <<"InstanceType">> => list(any()),
%%   <<"ManagedInstanceScaling">> => production_variant_managed_instance_scaling(),
%%   <<"ModelDataDownloadTimeoutInSeconds">> => integer(),
%%   <<"ModelName">> => string(),
%%   <<"RoutingConfig">> => production_variant_routing_config(),
%%   <<"ServerlessConfig">> => production_variant_serverless_config(),
%%   <<"VariantName">> => string(),
%%   <<"VolumeSizeInGB">> => integer()
%% }
-type production_variant() :: #{binary() => any()}.

%% Example:
%% identity_provider_o_auth_setting() :: #{
%%   <<"DataSourceName">> => list(any()),
%%   <<"SecretArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type identity_provider_o_auth_setting() :: #{binary() => any()}.

%% Example:
%% ui_template_info() :: #{
%%   <<"ContentSha256">> => string(),
%%   <<"Url">> => string()
%% }
-type ui_template_info() :: #{binary() => any()}.

%% Example:
%% list_associations_response() :: #{
%%   <<"AssociationSummaries">> => list(association_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_associations_response() :: #{binary() => any()}.

%% Example:
%% checkpoint_config() :: #{
%%   <<"LocalPath">> => string(),
%%   <<"S3Uri">> => string()
%% }
-type checkpoint_config() :: #{binary() => any()}.

%% Example:
%% stopping_condition() :: #{
%%   <<"MaxPendingTimeInSeconds">> => integer(),
%%   <<"MaxRuntimeInSeconds">> => integer(),
%%   <<"MaxWaitTimeInSeconds">> => integer()
%% }
-type stopping_condition() :: #{binary() => any()}.

%% Example:
%% device_deployment_summary() :: #{
%%   <<"DeployedStageName">> => string(),
%%   <<"DeploymentStartTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DeviceArn">> => string(),
%%   <<"DeviceDeploymentStatus">> => list(any()),
%%   <<"DeviceDeploymentStatusMessage">> => string(),
%%   <<"DeviceFleetName">> => string(),
%%   <<"DeviceName">> => string(),
%%   <<"EdgeDeploymentPlanArn">> => string(),
%%   <<"EdgeDeploymentPlanName">> => string(),
%%   <<"StageName">> => string()
%% }
-type device_deployment_summary() :: #{binary() => any()}.

%% Example:
%% describe_hub_content_request() :: #{
%%   <<"HubContentName">> := string(),
%%   <<"HubContentType">> := list(any()),
%%   <<"HubContentVersion">> => string(),
%%   <<"HubName">> := string()
%% }
-type describe_hub_content_request() :: #{binary() => any()}.

%% Example:
%% disassociate_trial_component_request() :: #{
%%   <<"TrialComponentName">> := string(),
%%   <<"TrialName">> := string()
%% }
-type disassociate_trial_component_request() :: #{binary() => any()}.

%% Example:
%% send_pipeline_execution_step_success_response() :: #{
%%   <<"PipelineExecutionArn">> => string()
%% }
-type send_pipeline_execution_step_success_response() :: #{binary() => any()}.

%% Example:
%% update_mlflow_tracking_server_request() :: #{
%%   <<"ArtifactStoreUri">> => string(),
%%   <<"AutomaticModelRegistration">> => boolean(),
%%   <<"TrackingServerName">> := string(),
%%   <<"TrackingServerSize">> => list(any()),
%%   <<"WeeklyMaintenanceWindowStart">> => string()
%% }
-type update_mlflow_tracking_server_request() :: #{binary() => any()}.

%% Example:
%% list_processing_jobs_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StatusEquals">> => list(any())
%% }
-type list_processing_jobs_request() :: #{binary() => any()}.

%% Example:
%% code_repository() :: #{
%%   <<"RepositoryUrl">> => string()
%% }
-type code_repository() :: #{binary() => any()}.

%% Example:
%% auto_ml_s3_data_source() :: #{
%%   <<"S3DataType">> => list(any()),
%%   <<"S3Uri">> => string()
%% }
-type auto_ml_s3_data_source() :: #{binary() => any()}.

%% Example:
%% list_endpoint_configs_input() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_endpoint_configs_input() :: #{binary() => any()}.

%% Example:
%% describe_edge_deployment_plan_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DeviceFleetName">> => string(),
%%   <<"EdgeDeploymentFailed">> => integer(),
%%   <<"EdgeDeploymentPending">> => integer(),
%%   <<"EdgeDeploymentPlanArn">> => string(),
%%   <<"EdgeDeploymentPlanName">> => string(),
%%   <<"EdgeDeploymentSuccess">> => integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ModelConfigs">> => list(edge_deployment_model_config()()),
%%   <<"NextToken">> => string(),
%%   <<"Stages">> => list(deployment_stage_status_summary()())
%% }
-type describe_edge_deployment_plan_response() :: #{binary() => any()}.

%% Example:
%% describe_monitoring_schedule_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EndpointName">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LastMonitoringExecutionSummary">> => monitoring_execution_summary(),
%%   <<"MonitoringScheduleArn">> => string(),
%%   <<"MonitoringScheduleConfig">> => monitoring_schedule_config(),
%%   <<"MonitoringScheduleName">> => string(),
%%   <<"MonitoringScheduleStatus">> => list(any()),
%%   <<"MonitoringType">> => list(any())
%% }
-type describe_monitoring_schedule_response() :: #{binary() => any()}.

%% Example:
%% endpoint_config_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EndpointConfigArn">> => string(),
%%   <<"EndpointConfigName">> => string()
%% }
-type endpoint_config_summary() :: #{binary() => any()}.

%% Example:
%% training_job_status_counters() :: #{
%%   <<"Completed">> => integer(),
%%   <<"InProgress">> => integer(),
%%   <<"NonRetryableError">> => integer(),
%%   <<"RetryableError">> => integer(),
%%   <<"Stopped">> => integer()
%% }
-type training_job_status_counters() :: #{binary() => any()}.

%% Example:
%% update_training_job_response() :: #{
%%   <<"TrainingJobArn">> => string()
%% }
-type update_training_job_response() :: #{binary() => any()}.

%% Example:
%% variant_property() :: #{
%%   <<"VariantPropertyType">> => list(any())
%% }
-type variant_property() :: #{binary() => any()}.

%% Example:
%% list_mlflow_tracking_servers_request() :: #{
%%   <<"CreatedAfter">> => non_neg_integer(),
%%   <<"CreatedBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"MlflowVersion">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"TrackingServerStatus">> => list(any())
%% }
-type list_mlflow_tracking_servers_request() :: #{binary() => any()}.

%% Example:
%% create_hub_content_reference_response() :: #{
%%   <<"HubArn">> => string(),
%%   <<"HubContentArn">> => string()
%% }
-type create_hub_content_reference_response() :: #{binary() => any()}.

%% Example:
%% offline_store_status() :: #{
%%   <<"BlockedReason">> => string(),
%%   <<"Status">> => list(any())
%% }
-type offline_store_status() :: #{binary() => any()}.

%% Example:
%% labeling_job_output_config() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"S3OutputPath">> => string(),
%%   <<"SnsTopicArn">> => string()
%% }
-type labeling_job_output_config() :: #{binary() => any()}.

%% Example:
%% stop_notebook_instance_input() :: #{
%%   <<"NotebookInstanceName">> := string()
%% }
-type stop_notebook_instance_input() :: #{binary() => any()}.

%% Example:
%% describe_optimization_job_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DeploymentInstanceType">> => list(any()),
%%   <<"FailureReason">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ModelSource">> => optimization_job_model_source(),
%%   <<"OptimizationConfigs">> => list(list()()),
%%   <<"OptimizationEndTime">> => non_neg_integer(),
%%   <<"OptimizationEnvironment">> => map(),
%%   <<"OptimizationJobArn">> => string(),
%%   <<"OptimizationJobName">> => string(),
%%   <<"OptimizationJobStatus">> => list(any()),
%%   <<"OptimizationOutput">> => optimization_output(),
%%   <<"OptimizationStartTime">> => non_neg_integer(),
%%   <<"OutputConfig">> => optimization_job_output_config(),
%%   <<"RoleArn">> => string(),
%%   <<"StoppingCondition">> => stopping_condition(),
%%   <<"VpcConfig">> => optimization_vpc_config()
%% }
-type describe_optimization_job_response() :: #{binary() => any()}.

%% Example:
%% list_endpoints_output() :: #{
%%   <<"Endpoints">> => list(endpoint_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_endpoints_output() :: #{binary() => any()}.

%% Example:
%% text_generation_resolved_attributes() :: #{
%%   <<"BaseModelName">> => string()
%% }
-type text_generation_resolved_attributes() :: #{binary() => any()}.

%% Example:
%% parameter() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type parameter() :: #{binary() => any()}.

%% Example:
%% r_studio_server_pro_domain_settings() :: #{
%%   <<"DefaultResourceSpec">> => resource_spec(),
%%   <<"DomainExecutionRoleArn">> => string(),
%%   <<"RStudioConnectUrl">> => string(),
%%   <<"RStudioPackageManagerUrl">> => string()
%% }
-type r_studio_server_pro_domain_settings() :: #{binary() => any()}.

%% Example:
%% stop_pipeline_execution_request() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"PipelineExecutionArn">> := string()
%% }
-type stop_pipeline_execution_request() :: #{binary() => any()}.

%% Example:
%% vpc_config() :: #{
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"Subnets">> => list(string()())
%% }
-type vpc_config() :: #{binary() => any()}.

%% Example:
%% model_package_model_card() :: #{
%%   <<"ModelCardContent">> => string(),
%%   <<"ModelCardStatus">> => list(any())
%% }
-type model_package_model_card() :: #{binary() => any()}.

%% Example:
%% remote_debug_config_for_update() :: #{
%%   <<"EnableRemoteDebug">> => boolean()
%% }
-type remote_debug_config_for_update() :: #{binary() => any()}.

%% Example:
%% list_user_profiles_request() :: #{
%%   <<"DomainIdEquals">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"UserProfileNameContains">> => string()
%% }
-type list_user_profiles_request() :: #{binary() => any()}.

%% Example:
%% create_auto_ml_job_v2_request() :: #{
%%   <<"AutoMLComputeConfig">> => auto_ml_compute_config(),
%%   <<"AutoMLJobInputDataConfig">> := list(auto_ml_job_channel()()),
%%   <<"AutoMLJobName">> := string(),
%%   <<"AutoMLJobObjective">> => auto_ml_job_objective(),
%%   <<"AutoMLProblemTypeConfig">> := list(),
%%   <<"DataSplitConfig">> => auto_ml_data_split_config(),
%%   <<"ModelDeployConfig">> => model_deploy_config(),
%%   <<"OutputDataConfig">> := auto_ml_output_data_config(),
%%   <<"RoleArn">> := string(),
%%   <<"SecurityConfig">> => auto_ml_security_config(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_auto_ml_job_v2_request() :: #{binary() => any()}.

%% Example:
%% algorithm_validation_profile() :: #{
%%   <<"ProfileName">> => string(),
%%   <<"TrainingJobDefinition">> => training_job_definition(),
%%   <<"TransformJobDefinition">> => transform_job_definition()
%% }
-type algorithm_validation_profile() :: #{binary() => any()}.

%% Example:
%% resource_config_for_update() :: #{
%%   <<"KeepAlivePeriodInSeconds">> => integer()
%% }
-type resource_config_for_update() :: #{binary() => any()}.

%% Example:
%% pipeline_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastExecutionTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"PipelineArn">> => string(),
%%   <<"PipelineDescription">> => string(),
%%   <<"PipelineDisplayName">> => string(),
%%   <<"PipelineName">> => string(),
%%   <<"RoleArn">> => string()
%% }
-type pipeline_summary() :: #{binary() => any()}.

%% Example:
%% clarify_explainer_config() :: #{
%%   <<"EnableExplanations">> => string(),
%%   <<"InferenceConfig">> => clarify_inference_config(),
%%   <<"ShapConfig">> => clarify_shap_config()
%% }
-type clarify_explainer_config() :: #{binary() => any()}.

%% Example:
%% describe_model_package_group_input() :: #{
%%   <<"ModelPackageGroupName">> := string()
%% }
-type describe_model_package_group_input() :: #{binary() => any()}.

%% Example:
%% u_s_d() :: #{
%%   <<"Cents">> => integer(),
%%   <<"Dollars">> => integer(),
%%   <<"TenthFractionsOfACent">> => integer()
%% }
-type u_s_d() :: #{binary() => any()}.

%% Example:
%% deployment_stage() :: #{
%%   <<"DeploymentConfig">> => edge_deployment_config(),
%%   <<"DeviceSelectionConfig">> => device_selection_config(),
%%   <<"StageName">> => string()
%% }
-type deployment_stage() :: #{binary() => any()}.

%% Example:
%% inference_component_container_specification_summary() :: #{
%%   <<"ArtifactUrl">> => string(),
%%   <<"DeployedImage">> => deployed_image(),
%%   <<"Environment">> => map()
%% }
-type inference_component_container_specification_summary() :: #{binary() => any()}.

%% Example:
%% domain_settings_for_update() :: #{
%%   <<"AmazonQSettings">> => amazon_q_settings(),
%%   <<"DockerSettings">> => docker_settings(),
%%   <<"ExecutionRoleIdentityConfig">> => list(any()),
%%   <<"RStudioServerProDomainSettingsForUpdate">> => r_studio_server_pro_domain_settings_for_update(),
%%   <<"SecurityGroupIds">> => list(string()())
%% }
-type domain_settings_for_update() :: #{binary() => any()}.

%% Example:
%% describe_pipeline_response() :: #{
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LastRunTime">> => non_neg_integer(),
%%   <<"ParallelismConfiguration">> => parallelism_configuration(),
%%   <<"PipelineArn">> => string(),
%%   <<"PipelineDefinition">> => string(),
%%   <<"PipelineDescription">> => string(),
%%   <<"PipelineDisplayName">> => string(),
%%   <<"PipelineName">> => string(),
%%   <<"PipelineStatus">> => list(any()),
%%   <<"RoleArn">> => string()
%% }
-type describe_pipeline_response() :: #{binary() => any()}.

%% Example:
%% update_action_response() :: #{
%%   <<"ActionArn">> => string()
%% }
-type update_action_response() :: #{binary() => any()}.

%% Example:
%% describe_pipeline_definition_for_execution_request() :: #{
%%   <<"PipelineExecutionArn">> := string()
%% }
-type describe_pipeline_definition_for_execution_request() :: #{binary() => any()}.

%% Example:
%% list_training_jobs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TrainingJobSummaries">> => list(training_job_summary()())
%% }
-type list_training_jobs_response() :: #{binary() => any()}.

%% Example:
%% time_series_forecasting_settings() :: #{
%%   <<"AmazonForecastRoleArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type time_series_forecasting_settings() :: #{binary() => any()}.

%% Example:
%% model_card() :: #{
%%   <<"Content">> => string(),
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ModelCardArn">> => string(),
%%   <<"ModelCardName">> => string(),
%%   <<"ModelCardStatus">> => list(any()),
%%   <<"ModelCardVersion">> => integer(),
%%   <<"ModelId">> => string(),
%%   <<"ModelPackageGroupName">> => string(),
%%   <<"RiskRating">> => string(),
%%   <<"SecurityConfig">> => model_card_security_config(),
%%   <<"Tags">> => list(tag()())
%% }
-type model_card() :: #{binary() => any()}.

%% Example:
%% monitoring_execution_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EndpointName">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"MonitoringExecutionStatus">> => list(any()),
%%   <<"MonitoringJobDefinitionName">> => string(),
%%   <<"MonitoringScheduleName">> => string(),
%%   <<"MonitoringType">> => list(any()),
%%   <<"ProcessingJobArn">> => string(),
%%   <<"ScheduledTime">> => non_neg_integer()
%% }
-type monitoring_execution_summary() :: #{binary() => any()}.

%% Example:
%% continuous_parameter_range_specification() :: #{
%%   <<"MaxValue">> => string(),
%%   <<"MinValue">> => string()
%% }
-type continuous_parameter_range_specification() :: #{binary() => any()}.

%% Example:
%% workteam() :: #{
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LastUpdatedDate">> => non_neg_integer(),
%%   <<"MemberDefinitions">> => list(member_definition()()),
%%   <<"NotificationConfiguration">> => notification_configuration(),
%%   <<"ProductListingIds">> => list(string()()),
%%   <<"SubDomain">> => string(),
%%   <<"WorkerAccessConfiguration">> => worker_access_configuration(),
%%   <<"WorkforceArn">> => string(),
%%   <<"WorkteamArn">> => string(),
%%   <<"WorkteamName">> => string()
%% }
-type workteam() :: #{binary() => any()}.

%% Example:
%% drift_check_bias() :: #{
%%   <<"ConfigFile">> => file_source(),
%%   <<"PostTrainingConstraints">> => metrics_source(),
%%   <<"PreTrainingConstraints">> => metrics_source()
%% }
-type drift_check_bias() :: #{binary() => any()}.

%% Example:
%% describe_hyper_parameter_tuning_job_request() :: #{
%%   <<"HyperParameterTuningJobName">> := string()
%% }
-type describe_hyper_parameter_tuning_job_request() :: #{binary() => any()}.

%% Example:
%% model_quality_job_input() :: #{
%%   <<"BatchTransformInput">> => batch_transform_input(),
%%   <<"EndpointInput">> => endpoint_input(),
%%   <<"GroundTruthS3Input">> => monitoring_ground_truth_s3_input()
%% }
-type model_quality_job_input() :: #{binary() => any()}.

%% Example:
%% describe_domain_response() :: #{
%%   <<"AppNetworkAccessType">> => list(any()),
%%   <<"AppSecurityGroupManagement">> => list(any()),
%%   <<"AuthMode">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DefaultSpaceSettings">> => default_space_settings(),
%%   <<"DefaultUserSettings">> => user_settings(),
%%   <<"DomainArn">> => string(),
%%   <<"DomainId">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"DomainSettings">> => domain_settings(),
%%   <<"FailureReason">> => string(),
%%   <<"HomeEfsFileSystemId">> => string(),
%%   <<"HomeEfsFileSystemKmsKeyId">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"SecurityGroupIdForDomainBoundary">> => string(),
%%   <<"SingleSignOnApplicationArn">> => string(),
%%   <<"SingleSignOnManagedApplicationInstanceId">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"SubnetIds">> => list(string()()),
%%   <<"TagPropagation">> => list(any()),
%%   <<"Url">> => string(),
%%   <<"VpcId">> => string()
%% }
-type describe_domain_response() :: #{binary() => any()}.

%% Example:
%% rendering_error() :: #{
%%   <<"Code">> => string(),
%%   <<"Message">> => string()
%% }
-type rendering_error() :: #{binary() => any()}.

%% Example:
%% list_devices_response() :: #{
%%   <<"DeviceSummaries">> => list(device_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_devices_response() :: #{binary() => any()}.

%% Example:
%% describe_experiment_response() :: #{
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"ExperimentArn">> => string(),
%%   <<"ExperimentName">> => string(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Source">> => experiment_source()
%% }
-type describe_experiment_response() :: #{binary() => any()}.

%% Example:
%% list_compilation_jobs_response() :: #{
%%   <<"CompilationJobSummaries">> => list(compilation_job_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_compilation_jobs_response() :: #{binary() => any()}.

%% Example:
%% pipeline_experiment_config() :: #{
%%   <<"ExperimentName">> => string(),
%%   <<"TrialName">> => string()
%% }
-type pipeline_experiment_config() :: #{binary() => any()}.

%% Example:
%% candidate_properties() :: #{
%%   <<"CandidateArtifactLocations">> => candidate_artifact_locations(),
%%   <<"CandidateMetrics">> => list(metric_datum()())
%% }
-type candidate_properties() :: #{binary() => any()}.

%% Example:
%% describe_algorithm_input() :: #{
%%   <<"AlgorithmName">> := string()
%% }
-type describe_algorithm_input() :: #{binary() => any()}.

%% Example:
%% async_inference_notification_config() :: #{
%%   <<"ErrorTopic">> => string(),
%%   <<"IncludeInferenceResponseIn">> => list(list(any())()),
%%   <<"SuccessTopic">> => string()
%% }
-type async_inference_notification_config() :: #{binary() => any()}.

%% Example:
%% model_metadata_filter() :: #{
%%   <<"Name">> => list(any()),
%%   <<"Value">> => string()
%% }
-type model_metadata_filter() :: #{binary() => any()}.

%% Example:
%% additional_model_data_source() :: #{
%%   <<"ChannelName">> => string(),
%%   <<"S3DataSource">> => s3_model_data_source()
%% }
-type additional_model_data_source() :: #{binary() => any()}.

%% Example:
%% start_inference_experiment_response() :: #{
%%   <<"InferenceExperimentArn">> => string()
%% }
-type start_inference_experiment_response() :: #{binary() => any()}.

%% Example:
%% recommendation_job_resource_limit() :: #{
%%   <<"MaxNumberOfTests">> => integer(),
%%   <<"MaxParallelOfTests">> => integer()
%% }
-type recommendation_job_resource_limit() :: #{binary() => any()}.

%% Example:
%% selective_execution_config() :: #{
%%   <<"SelectedSteps">> => list(selected_step()()),
%%   <<"SourcePipelineExecutionArn">> => string()
%% }
-type selective_execution_config() :: #{binary() => any()}.

%% Example:
%% labeling_job_summary() :: #{
%%   <<"AnnotationConsolidationLambdaArn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"InputConfig">> => labeling_job_input_config(),
%%   <<"LabelCounters">> => label_counters(),
%%   <<"LabelingJobArn">> => string(),
%%   <<"LabelingJobName">> => string(),
%%   <<"LabelingJobOutput">> => labeling_job_output(),
%%   <<"LabelingJobStatus">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"PreHumanTaskLambdaArn">> => string(),
%%   <<"WorkteamArn">> => string()
%% }
-type labeling_job_summary() :: #{binary() => any()}.

%% Example:
%% enable_sagemaker_servicecatalog_portfolio_output() :: #{

%% }
-type enable_sagemaker_servicecatalog_portfolio_output() :: #{binary() => any()}.

%% Example:
%% list_image_versions_response() :: #{
%%   <<"ImageVersions">> => list(image_version()()),
%%   <<"NextToken">> => string()
%% }
-type list_image_versions_response() :: #{binary() => any()}.

%% Example:
%% public_workforce_task_price() :: #{
%%   <<"AmountInUsd">> => u_s_d()
%% }
-type public_workforce_task_price() :: #{binary() => any()}.

%% Example:
%% update_hub_content_reference_request() :: #{
%%   <<"HubContentName">> := string(),
%%   <<"HubContentType">> := list(any()),
%%   <<"HubName">> := string(),
%%   <<"MinVersion">> => string()
%% }
-type update_hub_content_reference_request() :: #{binary() => any()}.

%% Example:
%% monitoring_csv_dataset_format() :: #{
%%   <<"Header">> => boolean()
%% }
-type monitoring_csv_dataset_format() :: #{binary() => any()}.

%% Example:
%% debug_rule_evaluation_status() :: #{
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"RuleConfigurationName">> => string(),
%%   <<"RuleEvaluationJobArn">> => string(),
%%   <<"RuleEvaluationStatus">> => list(any()),
%%   <<"StatusDetails">> => string()
%% }
-type debug_rule_evaluation_status() :: #{binary() => any()}.

%% Example:
%% file_system_config() :: #{
%%   <<"DefaultGid">> => integer(),
%%   <<"DefaultUid">> => integer(),
%%   <<"MountPath">> => string()
%% }
-type file_system_config() :: #{binary() => any()}.

%% Example:
%% list_actions_response() :: #{
%%   <<"ActionSummaries">> => list(action_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_actions_response() :: #{binary() => any()}.

%% Example:
%% list_notebook_instances_input() :: #{
%%   <<"AdditionalCodeRepositoryEquals">> => string(),
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"DefaultCodeRepositoryContains">> => string(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"NotebookInstanceLifecycleConfigNameContains">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StatusEquals">> => list(any())
%% }
-type list_notebook_instances_input() :: #{binary() => any()}.

%% Example:
%% create_training_job_request() :: #{
%%   <<"AlgorithmSpecification">> := algorithm_specification(),
%%   <<"CheckpointConfig">> => checkpoint_config(),
%%   <<"DebugHookConfig">> => debug_hook_config(),
%%   <<"DebugRuleConfigurations">> => list(debug_rule_configuration()()),
%%   <<"EnableInterContainerTrafficEncryption">> => boolean(),
%%   <<"EnableManagedSpotTraining">> => boolean(),
%%   <<"EnableNetworkIsolation">> => boolean(),
%%   <<"Environment">> => map(),
%%   <<"ExperimentConfig">> => experiment_config(),
%%   <<"HyperParameters">> => map(),
%%   <<"InfraCheckConfig">> => infra_check_config(),
%%   <<"InputDataConfig">> => list(channel()()),
%%   <<"OutputDataConfig">> := output_data_config(),
%%   <<"ProfilerConfig">> => profiler_config(),
%%   <<"ProfilerRuleConfigurations">> => list(profiler_rule_configuration()()),
%%   <<"RemoteDebugConfig">> => remote_debug_config(),
%%   <<"ResourceConfig">> := resource_config(),
%%   <<"RetryStrategy">> => retry_strategy(),
%%   <<"RoleArn">> := string(),
%%   <<"SessionChainingConfig">> => session_chaining_config(),
%%   <<"StoppingCondition">> := stopping_condition(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TensorBoardOutputConfig">> => tensor_board_output_config(),
%%   <<"TrainingJobName">> := string(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type create_training_job_request() :: #{binary() => any()}.

%% Example:
%% update_partner_app_response() :: #{
%%   <<"Arn">> => string()
%% }
-type update_partner_app_response() :: #{binary() => any()}.

%% Example:
%% list_hub_content_versions_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"HubContentName">> := string(),
%%   <<"HubContentType">> := list(any()),
%%   <<"HubName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"MaxSchemaVersion">> => string(),
%%   <<"MinVersion">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_hub_content_versions_request() :: #{binary() => any()}.

%% Example:
%% monitoring_job_definition_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EndpointName">> => string(),
%%   <<"MonitoringJobDefinitionArn">> => string(),
%%   <<"MonitoringJobDefinitionName">> => string()
%% }
-type monitoring_job_definition_summary() :: #{binary() => any()}.

%% Example:
%% create_image_version_response() :: #{
%%   <<"ImageVersionArn">> => string()
%% }
-type create_image_version_response() :: #{binary() => any()}.

%% Example:
%% space_storage_settings() :: #{
%%   <<"EbsStorageSettings">> => ebs_storage_settings()
%% }
-type space_storage_settings() :: #{binary() => any()}.

%% Example:
%% monitoring_input() :: #{
%%   <<"BatchTransformInput">> => batch_transform_input(),
%%   <<"EndpointInput">> => endpoint_input()
%% }
-type monitoring_input() :: #{binary() => any()}.

%% Example:
%% cluster_node_summary() :: #{
%%   <<"InstanceGroupName">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"InstanceStatus">> => cluster_instance_status_details(),
%%   <<"InstanceType">> => list(any()),
%%   <<"LaunchTime">> => non_neg_integer()
%% }
-type cluster_node_summary() :: #{binary() => any()}.

%% Example:
%% ebs_storage_settings() :: #{
%%   <<"EbsVolumeSizeInGb">> => integer()
%% }
-type ebs_storage_settings() :: #{binary() => any()}.

%% Example:
%% file_system_data_source() :: #{
%%   <<"DirectoryPath">> => string(),
%%   <<"FileSystemAccessMode">> => list(any()),
%%   <<"FileSystemId">> => string(),
%%   <<"FileSystemType">> => list(any())
%% }
-type file_system_data_source() :: #{binary() => any()}.

%% Example:
%% list_actions_request() :: #{
%%   <<"ActionType">> => string(),
%%   <<"CreatedAfter">> => non_neg_integer(),
%%   <<"CreatedBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"SourceUri">> => string()
%% }
-type list_actions_request() :: #{binary() => any()}.

%% Example:
%% create_cluster_scheduler_config_response() :: #{
%%   <<"ClusterSchedulerConfigArn">> => string(),
%%   <<"ClusterSchedulerConfigId">> => string()
%% }
-type create_cluster_scheduler_config_response() :: #{binary() => any()}.

%% Example:
%% partner_app_config() :: #{
%%   <<"AdminUsers">> => list(string()()),
%%   <<"Arguments">> => map()
%% }
-type partner_app_config() :: #{binary() => any()}.

%% Example:
%% athena_dataset_definition() :: #{
%%   <<"Catalog">> => string(),
%%   <<"Database">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"OutputCompression">> => list(any()),
%%   <<"OutputFormat">> => list(any()),
%%   <<"OutputS3Uri">> => string(),
%%   <<"QueryString">> => string(),
%%   <<"WorkGroup">> => string()
%% }
-type athena_dataset_definition() :: #{binary() => any()}.

%% Example:
%% instance_group() :: #{
%%   <<"InstanceCount">> => integer(),
%%   <<"InstanceGroupName">> => string(),
%%   <<"InstanceType">> => list(any())
%% }
-type instance_group() :: #{binary() => any()}.

%% Example:
%% optimization_output() :: #{
%%   <<"RecommendedInferenceImage">> => string()
%% }
-type optimization_output() :: #{binary() => any()}.

%% Example:
%% profiler_rule_evaluation_status() :: #{
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"RuleConfigurationName">> => string(),
%%   <<"RuleEvaluationJobArn">> => string(),
%%   <<"RuleEvaluationStatus">> => list(any()),
%%   <<"StatusDetails">> => string()
%% }
-type profiler_rule_evaluation_status() :: #{binary() => any()}.

%% Example:
%% update_space_response() :: #{
%%   <<"SpaceArn">> => string()
%% }
-type update_space_response() :: #{binary() => any()}.

%% Example:
%% inference_component_runtime_config() :: #{
%%   <<"CopyCount">> => integer()
%% }
-type inference_component_runtime_config() :: #{binary() => any()}.

%% Example:
%% model_package_status_details() :: #{
%%   <<"ImageScanStatuses">> => list(model_package_status_item()()),
%%   <<"ValidationStatuses">> => list(model_package_status_item()())
%% }
-type model_package_status_details() :: #{binary() => any()}.

%% Example:
%% list_clusters_response() :: #{
%%   <<"ClusterSummaries">> => list(cluster_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_clusters_response() :: #{binary() => any()}.

%% Example:
%% human_loop_activation_conditions_config() :: #{
%%   <<"HumanLoopActivationConditions">> => string()
%% }
-type human_loop_activation_conditions_config() :: #{binary() => any()}.

%% Example:
%% stop_pipeline_execution_response() :: #{
%%   <<"PipelineExecutionArn">> => string()
%% }
-type stop_pipeline_execution_response() :: #{binary() => any()}.

%% Example:
%% categorical_parameter_range() :: #{
%%   <<"Name">> => string(),
%%   <<"Values">> => list(string()())
%% }
-type categorical_parameter_range() :: #{binary() => any()}.

%% Example:
%% render_ui_template_request() :: #{
%%   <<"HumanTaskUiArn">> => string(),
%%   <<"RoleArn">> := string(),
%%   <<"Task">> := renderable_task(),
%%   <<"UiTemplate">> => ui_template()
%% }
-type render_ui_template_request() :: #{binary() => any()}.

%% Example:
%% describe_notebook_instance_lifecycle_config_input() :: #{
%%   <<"NotebookInstanceLifecycleConfigName">> := string()
%% }
-type describe_notebook_instance_lifecycle_config_input() :: #{binary() => any()}.

%% Example:
%% update_model_package_input() :: #{
%%   <<"AdditionalInferenceSpecificationsToAdd">> => list(additional_inference_specification_definition()()),
%%   <<"ApprovalDescription">> => string(),
%%   <<"ClientToken">> => string(),
%%   <<"CustomerMetadataProperties">> => map(),
%%   <<"CustomerMetadataPropertiesToRemove">> => list(string()()),
%%   <<"InferenceSpecification">> => inference_specification(),
%%   <<"ModelApprovalStatus">> => list(any()),
%%   <<"ModelCard">> => model_package_model_card(),
%%   <<"ModelLifeCycle">> => model_life_cycle(),
%%   <<"ModelPackageArn">> := string(),
%%   <<"SourceUri">> => string()
%% }
-type update_model_package_input() :: #{binary() => any()}.

%% Example:
%% feature_group_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FeatureGroupArn">> => string(),
%%   <<"FeatureGroupName">> => string(),
%%   <<"FeatureGroupStatus">> => list(any()),
%%   <<"OfflineStoreStatus">> => offline_store_status()
%% }
-type feature_group_summary() :: #{binary() => any()}.

%% Example:
%% create_workteam_response() :: #{
%%   <<"WorkteamArn">> => string()
%% }
-type create_workteam_response() :: #{binary() => any()}.

%% Example:
%% delete_cluster_response() :: #{
%%   <<"ClusterArn">> => string()
%% }
-type delete_cluster_response() :: #{binary() => any()}.

%% Example:
%% create_presigned_domain_url_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"ExpiresInSeconds">> => integer(),
%%   <<"LandingUri">> => string(),
%%   <<"SessionExpirationDurationInSeconds">> => integer(),
%%   <<"SpaceName">> => string(),
%%   <<"UserProfileName">> := string()
%% }
-type create_presigned_domain_url_request() :: #{binary() => any()}.

%% Example:
%% model_configuration() :: #{
%%   <<"CompilationJobName">> => string(),
%%   <<"EnvironmentParameters">> => list(environment_parameter()()),
%%   <<"InferenceSpecificationName">> => string()
%% }
-type model_configuration() :: #{binary() => any()}.

%% Example:
%% search_expression() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"NestedFilters">> => list(nested_filters()()),
%%   <<"Operator">> => list(any()),
%%   <<"SubExpressions">> => list(search_expression()())
%% }
-type search_expression() :: #{binary() => any()}.

%% Example:
%% register_devices_request() :: #{
%%   <<"DeviceFleetName">> := string(),
%%   <<"Devices">> := list(device()()),
%%   <<"Tags">> => list(tag()())
%% }
-type register_devices_request() :: #{binary() => any()}.

%% Example:
%% monitoring_json_dataset_format() :: #{
%%   <<"Line">> => boolean()
%% }
-type monitoring_json_dataset_format() :: #{binary() => any()}.

%% Example:
%% labeling_job_for_workteam_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"JobReferenceCode">> => string(),
%%   <<"LabelCounters">> => label_counters_for_workteam(),
%%   <<"LabelingJobName">> => string(),
%%   <<"NumberOfHumanWorkersPerDataObject">> => integer(),
%%   <<"WorkRequesterAccountId">> => string()
%% }
-type labeling_job_for_workteam_summary() :: #{binary() => any()}.

%% Example:
%% vertex() :: #{
%%   <<"Arn">> => string(),
%%   <<"LineageType">> => list(any()),
%%   <<"Type">> => string()
%% }
-type vertex() :: #{binary() => any()}.

%% Example:
%% feature_parameter() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type feature_parameter() :: #{binary() => any()}.

%% Example:
%% list_device_fleets_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_device_fleets_request() :: #{binary() => any()}.

%% Example:
%% lambda_step_metadata() :: #{
%%   <<"Arn">> => string(),
%%   <<"OutputParameters">> => list(output_parameter()())
%% }
-type lambda_step_metadata() :: #{binary() => any()}.

%% Example:
%% experiment_config() :: #{
%%   <<"ExperimentName">> => string(),
%%   <<"RunName">> => string(),
%%   <<"TrialComponentDisplayName">> => string(),
%%   <<"TrialName">> => string()
%% }
-type experiment_config() :: #{binary() => any()}.

%% Example:
%% ttl_duration() :: #{
%%   <<"Unit">> => list(any()),
%%   <<"Value">> => integer()
%% }
-type ttl_duration() :: #{binary() => any()}.

%% Example:
%% filter() :: #{
%%   <<"Name">> => string(),
%%   <<"Operator">> => list(any()),
%%   <<"Value">> => string()
%% }
-type filter() :: #{binary() => any()}.

%% Example:
%% compute_quota_config() :: #{
%%   <<"ComputeQuotaResources">> => list(compute_quota_resource_config()()),
%%   <<"PreemptTeamTasks">> => list(any()),
%%   <<"ResourceSharingConfig">> => resource_sharing_config()
%% }
-type compute_quota_config() :: #{binary() => any()}.

%% Example:
%% describe_image_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"ImageArn">> => string(),
%%   <<"ImageName">> => string(),
%%   <<"ImageStatus">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"RoleArn">> => string()
%% }
-type describe_image_response() :: #{binary() => any()}.

%% Example:
%% update_experiment_request() :: #{
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"ExperimentName">> := string()
%% }
-type update_experiment_request() :: #{binary() => any()}.

%% Example:
%% delete_hub_content_reference_request() :: #{
%%   <<"HubContentName">> := string(),
%%   <<"HubContentType">> := list(any()),
%%   <<"HubName">> := string()
%% }
-type delete_hub_content_reference_request() :: #{binary() => any()}.

%% Example:
%% algorithm_summary() :: #{
%%   <<"AlgorithmArn">> => string(),
%%   <<"AlgorithmDescription">> => string(),
%%   <<"AlgorithmName">> => string(),
%%   <<"AlgorithmStatus">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer()
%% }
-type algorithm_summary() :: #{binary() => any()}.

%% Example:
%% create_model_package_group_input() :: #{
%%   <<"ModelPackageGroupDescription">> => string(),
%%   <<"ModelPackageGroupName">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_model_package_group_input() :: #{binary() => any()}.

%% Example:
%% list_model_quality_job_definitions_response() :: #{
%%   <<"JobDefinitionSummaries">> => list(monitoring_job_definition_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_model_quality_job_definitions_response() :: #{binary() => any()}.

%% Example:
%% describe_artifact_response() :: #{
%%   <<"ArtifactArn">> => string(),
%%   <<"ArtifactName">> => string(),
%%   <<"ArtifactType">> => string(),
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LineageGroupArn">> => string(),
%%   <<"MetadataProperties">> => metadata_properties(),
%%   <<"Properties">> => map(),
%%   <<"Source">> => artifact_source()
%% }
-type describe_artifact_response() :: #{binary() => any()}.

%% Example:
%% inference_recommendations_job_step() :: #{
%%   <<"InferenceBenchmark">> => recommendation_job_inference_benchmark(),
%%   <<"JobName">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StepType">> => list(any())
%% }
-type inference_recommendations_job_step() :: #{binary() => any()}.

%% Example:
%% infra_check_config() :: #{
%%   <<"EnableInfraCheck">> => boolean()
%% }
-type infra_check_config() :: #{binary() => any()}.

%% Example:
%% async_inference_client_config() :: #{
%%   <<"MaxConcurrentInvocationsPerInstance">> => integer()
%% }
-type async_inference_client_config() :: #{binary() => any()}.

%% Example:
%% canvas_app_settings() :: #{
%%   <<"DirectDeploySettings">> => direct_deploy_settings(),
%%   <<"EmrServerlessSettings">> => emr_serverless_settings(),
%%   <<"GenerativeAiSettings">> => generative_ai_settings(),
%%   <<"IdentityProviderOAuthSettings">> => list(identity_provider_o_auth_setting()()),
%%   <<"KendraSettings">> => kendra_settings(),
%%   <<"ModelRegisterSettings">> => model_register_settings(),
%%   <<"TimeSeriesForecastingSettings">> => time_series_forecasting_settings(),
%%   <<"WorkspaceSettings">> => workspace_settings()
%% }
-type canvas_app_settings() :: #{binary() => any()}.

%% Example:
%% list_images_response() :: #{
%%   <<"Images">> => list(image()()),
%%   <<"NextToken">> => string()
%% }
-type list_images_response() :: #{binary() => any()}.

%% Example:
%% create_experiment_request() :: #{
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"ExperimentName">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_experiment_request() :: #{binary() => any()}.

%% Example:
%% auto_ml_job_channel() :: #{
%%   <<"ChannelType">> => list(any()),
%%   <<"CompressionType">> => list(any()),
%%   <<"ContentType">> => string(),
%%   <<"DataSource">> => auto_ml_data_source()
%% }
-type auto_ml_job_channel() :: #{binary() => any()}.

%% Example:
%% agent_version() :: #{
%%   <<"AgentCount">> => float(),
%%   <<"Version">> => string()
%% }
-type agent_version() :: #{binary() => any()}.

%% Example:
%% list_model_package_groups_input() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"CrossAccountFilterOption">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_model_package_groups_input() :: #{binary() => any()}.

%% Example:
%% list_contexts_response() :: #{
%%   <<"ContextSummaries">> => list(context_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_contexts_response() :: #{binary() => any()}.

%% Example:
%% list_app_image_configs_response() :: #{
%%   <<"AppImageConfigs">> => list(app_image_config_details()()),
%%   <<"NextToken">> => string()
%% }
-type list_app_image_configs_response() :: #{binary() => any()}.

%% Example:
%% warm_pool_status() :: #{
%%   <<"ResourceRetainedBillableTimeInSeconds">> => integer(),
%%   <<"ReusedByJob">> => string(),
%%   <<"Status">> => list(any())
%% }
-type warm_pool_status() :: #{binary() => any()}.

%% Example:
%% create_model_package_input() :: #{
%%   <<"AdditionalInferenceSpecifications">> => list(additional_inference_specification_definition()()),
%%   <<"CertifyForMarketplace">> => boolean(),
%%   <<"ClientToken">> => string(),
%%   <<"CustomerMetadataProperties">> => map(),
%%   <<"Domain">> => string(),
%%   <<"DriftCheckBaselines">> => drift_check_baselines(),
%%   <<"InferenceSpecification">> => inference_specification(),
%%   <<"MetadataProperties">> => metadata_properties(),
%%   <<"ModelApprovalStatus">> => list(any()),
%%   <<"ModelCard">> => model_package_model_card(),
%%   <<"ModelLifeCycle">> => model_life_cycle(),
%%   <<"ModelMetrics">> => model_metrics(),
%%   <<"ModelPackageDescription">> => string(),
%%   <<"ModelPackageGroupName">> => string(),
%%   <<"ModelPackageName">> => string(),
%%   <<"SamplePayloadUrl">> => string(),
%%   <<"SecurityConfig">> => model_package_security_config(),
%%   <<"SkipModelValidation">> => list(any()),
%%   <<"SourceAlgorithmSpecification">> => source_algorithm_specification(),
%%   <<"SourceUri">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Task">> => string(),
%%   <<"ValidationSpecification">> => model_package_validation_specification()
%% }
-type create_model_package_input() :: #{binary() => any()}.

%% Example:
%% recommendation_job_container_config() :: #{
%%   <<"DataInputConfig">> => string(),
%%   <<"Domain">> => string(),
%%   <<"Framework">> => string(),
%%   <<"FrameworkVersion">> => string(),
%%   <<"NearestModelName">> => string(),
%%   <<"PayloadConfig">> => recommendation_job_payload_config(),
%%   <<"SupportedEndpointType">> => list(any()),
%%   <<"SupportedInstanceTypes">> => list(string()()),
%%   <<"SupportedResponseMIMETypes">> => list(string()()),
%%   <<"Task">> => string()
%% }
-type recommendation_job_container_config() :: #{binary() => any()}.

%% Example:
%% list_training_jobs_for_hyper_parameter_tuning_job_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TrainingJobSummaries">> => list(hyper_parameter_training_job_summary()())
%% }
-type list_training_jobs_for_hyper_parameter_tuning_job_response() :: #{binary() => any()}.

%% Example:
%% provisioning_parameter() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type provisioning_parameter() :: #{binary() => any()}.

%% Example:
%% cluster_instance_status_details() :: #{
%%   <<"Message">> => string(),
%%   <<"Status">> => list(any())
%% }
-type cluster_instance_status_details() :: #{binary() => any()}.

%% Example:
%% create_processing_job_request() :: #{
%%   <<"AppSpecification">> := app_specification(),
%%   <<"Environment">> => map(),
%%   <<"ExperimentConfig">> => experiment_config(),
%%   <<"NetworkConfig">> => network_config(),
%%   <<"ProcessingInputs">> => list(processing_input()()),
%%   <<"ProcessingJobName">> := string(),
%%   <<"ProcessingOutputConfig">> => processing_output_config(),
%%   <<"ProcessingResources">> := processing_resources(),
%%   <<"RoleArn">> := string(),
%%   <<"StoppingCondition">> => processing_stopping_condition(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_processing_job_request() :: #{binary() => any()}.

%% Example:
%% notification_configuration() :: #{
%%   <<"NotificationTopicArn">> => string()
%% }
-type notification_configuration() :: #{binary() => any()}.

%% Example:
%% create_project_input() :: #{
%%   <<"ProjectDescription">> => string(),
%%   <<"ProjectName">> := string(),
%%   <<"ServiceCatalogProvisioningDetails">> := service_catalog_provisioning_details(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_project_input() :: #{binary() => any()}.

%% Example:
%% inference_component_specification_summary() :: #{
%%   <<"BaseInferenceComponentName">> => string(),
%%   <<"ComputeResourceRequirements">> => inference_component_compute_resource_requirements(),
%%   <<"Container">> => inference_component_container_specification_summary(),
%%   <<"ModelName">> => string(),
%%   <<"StartupParameters">> => inference_component_startup_parameters()
%% }
-type inference_component_specification_summary() :: #{binary() => any()}.

%% Example:
%% describe_workteam_response() :: #{
%%   <<"Workteam">> => workteam()
%% }
-type describe_workteam_response() :: #{binary() => any()}.

%% Example:
%% start_mlflow_tracking_server_response() :: #{
%%   <<"TrackingServerArn">> => string()
%% }
-type start_mlflow_tracking_server_response() :: #{binary() => any()}.

%% Example:
%% endpoint() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DataCaptureConfig">> => data_capture_config_summary(),
%%   <<"EndpointArn">> => string(),
%%   <<"EndpointConfigName">> => string(),
%%   <<"EndpointName">> => string(),
%%   <<"EndpointStatus">> => list(any()),
%%   <<"FailureReason">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"MonitoringSchedules">> => list(monitoring_schedule()()),
%%   <<"ProductionVariants">> => list(production_variant_summary()()),
%%   <<"ShadowProductionVariants">> => list(production_variant_summary()()),
%%   <<"Tags">> => list(tag()())
%% }
-type endpoint() :: #{binary() => any()}.

%% Example:
%% recommendation_job_output_config() :: #{
%%   <<"CompiledOutputConfig">> => recommendation_job_compiled_output_config(),
%%   <<"KmsKeyId">> => string()
%% }
-type recommendation_job_output_config() :: #{binary() => any()}.

%% Example:
%% model_register_settings() :: #{
%%   <<"CrossAccountModelRegisterRoleArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type model_register_settings() :: #{binary() => any()}.

%% Example:
%% fail_step_metadata() :: #{
%%   <<"ErrorMessage">> => string()
%% }
-type fail_step_metadata() :: #{binary() => any()}.

%% Example:
%% describe_edge_deployment_plan_request() :: #{
%%   <<"EdgeDeploymentPlanName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_edge_deployment_plan_request() :: #{binary() => any()}.

%% Example:
%% list_hub_content_versions_response() :: #{
%%   <<"HubContentSummaries">> => list(hub_content_info()()),
%%   <<"NextToken">> => string()
%% }
-type list_hub_content_versions_response() :: #{binary() => any()}.

%% Example:
%% recommendation_job_inference_benchmark() :: #{
%%   <<"EndpointConfiguration">> => endpoint_output_configuration(),
%%   <<"EndpointMetrics">> => inference_metrics(),
%%   <<"FailureReason">> => string(),
%%   <<"InvocationEndTime">> => non_neg_integer(),
%%   <<"InvocationStartTime">> => non_neg_integer(),
%%   <<"Metrics">> => recommendation_metrics(),
%%   <<"ModelConfiguration">> => model_configuration()
%% }
-type recommendation_job_inference_benchmark() :: #{binary() => any()}.

%% Example:
%% model_infrastructure_config() :: #{
%%   <<"InfrastructureType">> => list(any()),
%%   <<"RealTimeInferenceConfig">> => real_time_inference_config()
%% }
-type model_infrastructure_config() :: #{binary() => any()}.

%% Example:
%% delete_image_request() :: #{
%%   <<"ImageName">> := string()
%% }
-type delete_image_request() :: #{binary() => any()}.

%% Example:
%% delete_workforce_response() :: #{

%% }
-type delete_workforce_response() :: #{binary() => any()}.

%% Example:
%% model_metadata_search_expression() :: #{
%%   <<"Filters">> => list(model_metadata_filter()())
%% }
-type model_metadata_search_expression() :: #{binary() => any()}.

%% Example:
%% list_clusters_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"TrainingPlanArn">> => string()
%% }
-type list_clusters_request() :: #{binary() => any()}.

%% Example:
%% schedule_config() :: #{
%%   <<"DataAnalysisEndTime">> => string(),
%%   <<"DataAnalysisStartTime">> => string(),
%%   <<"ScheduleExpression">> => string()
%% }
-type schedule_config() :: #{binary() => any()}.

%% Example:
%% list_edge_deployment_plans_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"DeviceFleetNameContains">> => string(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_edge_deployment_plans_request() :: #{binary() => any()}.

%% Example:
%% tuning_job_step_meta_data() :: #{
%%   <<"Arn">> => string()
%% }
-type tuning_job_step_meta_data() :: #{binary() => any()}.

%% Example:
%% list_workforces_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_workforces_request() :: #{binary() => any()}.

%% Example:
%% update_inference_experiment_response() :: #{
%%   <<"InferenceExperimentArn">> => string()
%% }
-type update_inference_experiment_response() :: #{binary() => any()}.

%% Example:
%% trial_component_simple_summary() :: #{
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"TrialComponentArn">> => string(),
%%   <<"TrialComponentName">> => string(),
%%   <<"TrialComponentSource">> => trial_component_source()
%% }
-type trial_component_simple_summary() :: #{binary() => any()}.

%% Example:
%% send_pipeline_execution_step_failure_request() :: #{
%%   <<"CallbackToken">> := string(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"FailureReason">> => string()
%% }
-type send_pipeline_execution_step_failure_request() :: #{binary() => any()}.

%% Example:
%% domain_settings() :: #{
%%   <<"AmazonQSettings">> => amazon_q_settings(),
%%   <<"DockerSettings">> => docker_settings(),
%%   <<"ExecutionRoleIdentityConfig">> => list(any()),
%%   <<"RStudioServerProDomainSettings">> => r_studio_server_pro_domain_settings(),
%%   <<"SecurityGroupIds">> => list(string()())
%% }
-type domain_settings() :: #{binary() => any()}.

%% Example:
%% device_summary() :: #{
%%   <<"AgentVersion">> => string(),
%%   <<"Description">> => string(),
%%   <<"DeviceArn">> => string(),
%%   <<"DeviceFleetName">> => string(),
%%   <<"DeviceName">> => string(),
%%   <<"IotThingName">> => string(),
%%   <<"LatestHeartbeat">> => non_neg_integer(),
%%   <<"Models">> => list(edge_model_summary()()),
%%   <<"RegistrationTime">> => non_neg_integer()
%% }
-type device_summary() :: #{binary() => any()}.

%% Example:
%% labeling_job_algorithms_config() :: #{
%%   <<"InitialActiveLearningModelArn">> => string(),
%%   <<"LabelingJobAlgorithmSpecificationArn">> => string(),
%%   <<"LabelingJobResourceConfig">> => labeling_job_resource_config()
%% }
-type labeling_job_algorithms_config() :: #{binary() => any()}.

%% Example:
%% update_image_response() :: #{
%%   <<"ImageArn">> => string()
%% }
-type update_image_response() :: #{binary() => any()}.

%% Example:
%% create_monitoring_schedule_request() :: #{
%%   <<"MonitoringScheduleConfig">> := monitoring_schedule_config(),
%%   <<"MonitoringScheduleName">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_monitoring_schedule_request() :: #{binary() => any()}.

%% Example:
%% list_domains_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_domains_request() :: #{binary() => any()}.

%% Example:
%% create_flow_definition_response() :: #{
%%   <<"FlowDefinitionArn">> => string()
%% }
-type create_flow_definition_response() :: #{binary() => any()}.

%% Example:
%% recommendation_metrics() :: #{
%%   <<"CostPerHour">> => float(),
%%   <<"CostPerInference">> => float(),
%%   <<"CpuUtilization">> => float(),
%%   <<"MaxInvocations">> => integer(),
%%   <<"MemoryUtilization">> => float(),
%%   <<"ModelLatency">> => integer(),
%%   <<"ModelSetupTime">> => integer()
%% }
-type recommendation_metrics() :: #{binary() => any()}.

%% Example:
%% get_model_package_group_policy_input() :: #{
%%   <<"ModelPackageGroupName">> := string()
%% }
-type get_model_package_group_policy_input() :: #{binary() => any()}.

%% Example:
%% describe_space_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DomainId">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"HomeEfsFileSystemUid">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"OwnershipSettings">> => ownership_settings(),
%%   <<"SpaceArn">> => string(),
%%   <<"SpaceDisplayName">> => string(),
%%   <<"SpaceName">> => string(),
%%   <<"SpaceSettings">> => space_settings(),
%%   <<"SpaceSharingSettings">> => space_sharing_settings(),
%%   <<"Status">> => list(any()),
%%   <<"Url">> => string()
%% }
-type describe_space_response() :: #{binary() => any()}.

%% Example:
%% monitoring_dataset_format() :: #{
%%   <<"Csv">> => monitoring_csv_dataset_format(),
%%   <<"Json">> => monitoring_json_dataset_format(),
%%   <<"Parquet">> => monitoring_parquet_dataset_format()
%% }
-type monitoring_dataset_format() :: #{binary() => any()}.

%% Example:
%% training_job_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"SecondaryStatus">> => list(any()),
%%   <<"TrainingEndTime">> => non_neg_integer(),
%%   <<"TrainingJobArn">> => string(),
%%   <<"TrainingJobName">> => string(),
%%   <<"TrainingJobStatus">> => list(any()),
%%   <<"TrainingPlanArn">> => string(),
%%   <<"WarmPoolStatus">> => warm_pool_status()
%% }
-type training_job_summary() :: #{binary() => any()}.

%% Example:
%% describe_training_job_response() :: #{
%%   <<"ExperimentConfig">> => experiment_config(),
%%   <<"Environment">> => map(),
%%   <<"TrainingTimeInSeconds">> => integer(),
%%   <<"EnableInterContainerTrafficEncryption">> => boolean(),
%%   <<"AutoMLJobArn">> => string(),
%%   <<"FinalMetricDataList">> => list(metric_data()()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CheckpointConfig">> => checkpoint_config(),
%%   <<"TrainingJobArn">> => string(),
%%   <<"StoppingCondition">> => stopping_condition(),
%%   <<"TuningJobArn">> => string(),
%%   <<"DebugHookConfig">> => debug_hook_config(),
%%   <<"TrainingJobStatus">> => list(any()),
%%   <<"TrainingEndTime">> => non_neg_integer(),
%%   <<"ResourceConfig">> => resource_config(),
%%   <<"RoleArn">> => string(),
%%   <<"VpcConfig">> => vpc_config(),
%%   <<"DebugRuleConfigurations">> => list(debug_rule_configuration()()),
%%   <<"WarmPoolStatus">> => warm_pool_status(),
%%   <<"TensorBoardOutputConfig">> => tensor_board_output_config(),
%%   <<"RetryStrategy">> => retry_strategy(),
%%   <<"ModelArtifacts">> => model_artifacts(),
%%   <<"FailureReason">> => string(),
%%   <<"OutputDataConfig">> => output_data_config(),
%%   <<"InfraCheckConfig">> => infra_check_config(),
%%   <<"BillableTimeInSeconds">> => integer(),
%%   <<"SecondaryStatusTransitions">> => list(secondary_status_transition()()),
%%   <<"ProfilingStatus">> => list(any()),
%%   <<"SecondaryStatus">> => list(any()),
%%   <<"EnableNetworkIsolation">> => boolean(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"TrainingJobName">> => string(),
%%   <<"ProfilerConfig">> => profiler_config(),
%%   <<"ProfilerRuleEvaluationStatuses">> => list(profiler_rule_evaluation_status()()),
%%   <<"EnableManagedSpotTraining">> => boolean(),
%%   <<"RemoteDebugConfig">> => remote_debug_config(),
%%   <<"InputDataConfig">> => list(channel()()),
%%   <<"TrainingStartTime">> => non_neg_integer(),
%%   <<"AlgorithmSpecification">> => algorithm_specification(),
%%   <<"HyperParameters">> => map(),
%%   <<"LabelingJobArn">> => string(),
%%   <<"ProfilerRuleConfigurations">> => list(profiler_rule_configuration()()),
%%   <<"DebugRuleEvaluationStatuses">> => list(debug_rule_evaluation_status()())
%% }
-type describe_training_job_response() :: #{binary() => any()}.

%% Example:
%% real_time_inference_recommendation() :: #{
%%   <<"Environment">> => map(),
%%   <<"InstanceType">> => list(any()),
%%   <<"RecommendationId">> => string()
%% }
-type real_time_inference_recommendation() :: #{binary() => any()}.

%% Example:
%% disassociate_trial_component_response() :: #{
%%   <<"TrialArn">> => string(),
%%   <<"TrialComponentArn">> => string()
%% }
-type disassociate_trial_component_response() :: #{binary() => any()}.

%% Example:
%% describe_hyper_parameter_tuning_job_response() :: #{
%%   <<"Autotune">> => autotune(),
%%   <<"BestTrainingJob">> => hyper_parameter_training_job_summary(),
%%   <<"ConsumedResources">> => hyper_parameter_tuning_job_consumed_resources(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"HyperParameterTuningEndTime">> => non_neg_integer(),
%%   <<"HyperParameterTuningJobArn">> => string(),
%%   <<"HyperParameterTuningJobConfig">> => hyper_parameter_tuning_job_config(),
%%   <<"HyperParameterTuningJobName">> => string(),
%%   <<"HyperParameterTuningJobStatus">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ObjectiveStatusCounters">> => objective_status_counters(),
%%   <<"OverallBestTrainingJob">> => hyper_parameter_training_job_summary(),
%%   <<"TrainingJobDefinition">> => hyper_parameter_training_job_definition(),
%%   <<"TrainingJobDefinitions">> => list(hyper_parameter_training_job_definition()()),
%%   <<"TrainingJobStatusCounters">> => training_job_status_counters(),
%%   <<"TuningJobCompletionDetails">> => hyper_parameter_tuning_job_completion_details(),
%%   <<"WarmStartConfig">> => hyper_parameter_tuning_job_warm_start_config()
%% }
-type describe_hyper_parameter_tuning_job_response() :: #{binary() => any()}.

%% Example:
%% additional_inference_specification_definition() :: #{
%%   <<"Containers">> => list(model_package_container_definition()()),
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"SupportedContentTypes">> => list(string()()),
%%   <<"SupportedRealtimeInferenceInstanceTypes">> => list(list(any())()),
%%   <<"SupportedResponseMIMETypes">> => list(string()()),
%%   <<"SupportedTransformInstanceTypes">> => list(list(any())())
%% }
-type additional_inference_specification_definition() :: #{binary() => any()}.

%% Example:
%% parallelism_configuration() :: #{
%%   <<"MaxParallelExecutionSteps">> => integer()
%% }
-type parallelism_configuration() :: #{binary() => any()}.

%% Example:
%% create_model_bias_job_definition_request() :: #{
%%   <<"JobDefinitionName">> := string(),
%%   <<"JobResources">> := monitoring_resources(),
%%   <<"ModelBiasAppSpecification">> := model_bias_app_specification(),
%%   <<"ModelBiasBaselineConfig">> => model_bias_baseline_config(),
%%   <<"ModelBiasJobInput">> := model_bias_job_input(),
%%   <<"ModelBiasJobOutputConfig">> := monitoring_output_config(),
%%   <<"NetworkConfig">> => monitoring_network_config(),
%%   <<"RoleArn">> := string(),
%%   <<"StoppingCondition">> => monitoring_stopping_condition(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_model_bias_job_definition_request() :: #{binary() => any()}.

%% Example:
%% update_hub_response() :: #{
%%   <<"HubArn">> => string()
%% }
-type update_hub_response() :: #{binary() => any()}.

%% Example:
%% context_source() :: #{
%%   <<"SourceId">> => string(),
%%   <<"SourceType">> => string(),
%%   <<"SourceUri">> => string()
%% }
-type context_source() :: #{binary() => any()}.

%% Example:
%% create_inference_component_output() :: #{
%%   <<"InferenceComponentArn">> => string()
%% }
-type create_inference_component_output() :: #{binary() => any()}.

%% Example:
%% create_notebook_instance_input() :: #{
%%   <<"AcceleratorTypes">> => list(list(any())()),
%%   <<"AdditionalCodeRepositories">> => list(string()()),
%%   <<"DefaultCodeRepository">> => string(),
%%   <<"DirectInternetAccess">> => list(any()),
%%   <<"InstanceMetadataServiceConfiguration">> => instance_metadata_service_configuration(),
%%   <<"InstanceType">> := list(any()),
%%   <<"KmsKeyId">> => string(),
%%   <<"LifecycleConfigName">> => string(),
%%   <<"NotebookInstanceName">> := string(),
%%   <<"PlatformIdentifier">> => string(),
%%   <<"RoleArn">> := string(),
%%   <<"RootAccess">> => list(any()),
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"SubnetId">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VolumeSizeInGB">> => integer()
%% }
-type create_notebook_instance_input() :: #{binary() => any()}.

%% Example:
%% monitoring_s3_output() :: #{
%%   <<"LocalPath">> => string(),
%%   <<"S3UploadMode">> => list(any()),
%%   <<"S3Uri">> => string()
%% }
-type monitoring_s3_output() :: #{binary() => any()}.

%% Example:
%% clarify_inference_config() :: #{
%%   <<"ContentTemplate">> => string(),
%%   <<"FeatureHeaders">> => list(string()()),
%%   <<"FeatureTypes">> => list(list(any())()),
%%   <<"FeaturesAttribute">> => string(),
%%   <<"LabelAttribute">> => string(),
%%   <<"LabelHeaders">> => list(string()()),
%%   <<"LabelIndex">> => integer(),
%%   <<"MaxPayloadInMB">> => integer(),
%%   <<"MaxRecordCount">> => integer(),
%%   <<"ProbabilityAttribute">> => string(),
%%   <<"ProbabilityIndex">> => integer()
%% }
-type clarify_inference_config() :: #{binary() => any()}.

%% Example:
%% pending_production_variant_summary() :: #{
%%   <<"AcceleratorType">> => list(any()),
%%   <<"CurrentInstanceCount">> => integer(),
%%   <<"CurrentServerlessConfig">> => production_variant_serverless_config(),
%%   <<"CurrentWeight">> => float(),
%%   <<"DeployedImages">> => list(deployed_image()()),
%%   <<"DesiredInstanceCount">> => integer(),
%%   <<"DesiredServerlessConfig">> => production_variant_serverless_config(),
%%   <<"DesiredWeight">> => float(),
%%   <<"InstanceType">> => list(any()),
%%   <<"ManagedInstanceScaling">> => production_variant_managed_instance_scaling(),
%%   <<"RoutingConfig">> => production_variant_routing_config(),
%%   <<"VariantName">> => string(),
%%   <<"VariantStatus">> => list(production_variant_status()())
%% }
-type pending_production_variant_summary() :: #{binary() => any()}.

%% Example:
%% production_variant_routing_config() :: #{
%%   <<"RoutingStrategy">> => list(any())
%% }
-type production_variant_routing_config() :: #{binary() => any()}.

%% Example:
%% list_associations_request() :: #{
%%   <<"AssociationType">> => list(any()),
%%   <<"CreatedAfter">> => non_neg_integer(),
%%   <<"CreatedBefore">> => non_neg_integer(),
%%   <<"DestinationArn">> => string(),
%%   <<"DestinationType">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"SourceArn">> => string(),
%%   <<"SourceType">> => string()
%% }
-type list_associations_request() :: #{binary() => any()}.

%% Example:
%% list_pipeline_executions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PipelineExecutionSummaries">> => list(pipeline_execution_summary()())
%% }
-type list_pipeline_executions_response() :: #{binary() => any()}.

%% Example:
%% resource_sharing_config() :: #{
%%   <<"BorrowLimit">> => integer(),
%%   <<"Strategy">> => list(any())
%% }
-type resource_sharing_config() :: #{binary() => any()}.

%% Example:
%% list_compute_quotas_response() :: #{
%%   <<"ComputeQuotaSummaries">> => list(compute_quota_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_compute_quotas_response() :: #{binary() => any()}.

%% Example:
%% create_labeling_job_request() :: #{
%%   <<"HumanTaskConfig">> := human_task_config(),
%%   <<"InputConfig">> := labeling_job_input_config(),
%%   <<"LabelAttributeName">> := string(),
%%   <<"LabelCategoryConfigS3Uri">> => string(),
%%   <<"LabelingJobAlgorithmsConfig">> => labeling_job_algorithms_config(),
%%   <<"LabelingJobName">> := string(),
%%   <<"OutputConfig">> := labeling_job_output_config(),
%%   <<"RoleArn">> := string(),
%%   <<"StoppingConditions">> => labeling_job_stopping_conditions(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_labeling_job_request() :: #{binary() => any()}.

%% Example:
%% describe_model_card_export_job_request() :: #{
%%   <<"ModelCardExportJobArn">> := string()
%% }
-type describe_model_card_export_job_request() :: #{binary() => any()}.

%% Example:
%% delete_code_repository_input() :: #{
%%   <<"CodeRepositoryName">> := string()
%% }
-type delete_code_repository_input() :: #{binary() => any()}.

%% Example:
%% trial_source() :: #{
%%   <<"SourceArn">> => string(),
%%   <<"SourceType">> => string()
%% }
-type trial_source() :: #{binary() => any()}.

%% Example:
%% workforce() :: #{
%%   <<"CognitoConfig">> => cognito_config(),
%%   <<"CreateDate">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"LastUpdatedDate">> => non_neg_integer(),
%%   <<"OidcConfig">> => oidc_config_for_response(),
%%   <<"SourceIpConfig">> => source_ip_config(),
%%   <<"Status">> => list(any()),
%%   <<"SubDomain">> => string(),
%%   <<"WorkforceArn">> => string(),
%%   <<"WorkforceName">> => string(),
%%   <<"WorkforceVpcConfig">> => workforce_vpc_config_response()
%% }
-type workforce() :: #{binary() => any()}.

%% Example:
%% cache_hit_result() :: #{
%%   <<"SourcePipelineExecutionArn">> => string()
%% }
-type cache_hit_result() :: #{binary() => any()}.

%% Example:
%% hyper_parameter_training_job_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"FinalHyperParameterTuningJobObjectiveMetric">> => final_hyper_parameter_tuning_job_objective_metric(),
%%   <<"ObjectiveStatus">> => list(any()),
%%   <<"TrainingEndTime">> => non_neg_integer(),
%%   <<"TrainingJobArn">> => string(),
%%   <<"TrainingJobDefinitionName">> => string(),
%%   <<"TrainingJobName">> => string(),
%%   <<"TrainingJobStatus">> => list(any()),
%%   <<"TrainingStartTime">> => non_neg_integer(),
%%   <<"TunedHyperParameters">> => map(),
%%   <<"TuningJobName">> => string()
%% }
-type hyper_parameter_training_job_summary() :: #{binary() => any()}.

%% Example:
%% image_classification_job_config() :: #{
%%   <<"CompletionCriteria">> => auto_ml_job_completion_criteria()
%% }
-type image_classification_job_config() :: #{binary() => any()}.

%% Example:
%% delete_workteam_request() :: #{
%%   <<"WorkteamName">> := string()
%% }
-type delete_workteam_request() :: #{binary() => any()}.

%% Example:
%% debug_rule_configuration() :: #{
%%   <<"InstanceType">> => list(any()),
%%   <<"LocalPath">> => string(),
%%   <<"RuleConfigurationName">> => string(),
%%   <<"RuleEvaluatorImage">> => string(),
%%   <<"RuleParameters">> => map(),
%%   <<"S3OutputPath">> => string(),
%%   <<"VolumeSizeInGB">> => integer()
%% }
-type debug_rule_configuration() :: #{binary() => any()}.

%% Example:
%% describe_model_card_request() :: #{
%%   <<"ModelCardName">> := string(),
%%   <<"ModelCardVersion">> => integer()
%% }
-type describe_model_card_request() :: #{binary() => any()}.

%% Example:
%% hub_access_config() :: #{
%%   <<"HubContentArn">> => string()
%% }
-type hub_access_config() :: #{binary() => any()}.

%% Example:
%% list_model_packages_input() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"ModelApprovalStatus">> => list(any()),
%%   <<"ModelPackageGroupName">> => string(),
%%   <<"ModelPackageType">> => list(any()),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_model_packages_input() :: #{binary() => any()}.

%% Example:
%% create_human_task_ui_response() :: #{
%%   <<"HumanTaskUiArn">> => string()
%% }
-type create_human_task_ui_response() :: #{binary() => any()}.

%% Example:
%% model_dashboard_model_card() :: #{
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ModelCardArn">> => string(),
%%   <<"ModelCardName">> => string(),
%%   <<"ModelCardStatus">> => list(any()),
%%   <<"ModelCardVersion">> => integer(),
%%   <<"ModelId">> => string(),
%%   <<"RiskRating">> => string(),
%%   <<"SecurityConfig">> => model_card_security_config(),
%%   <<"Tags">> => list(tag()())
%% }
-type model_dashboard_model_card() :: #{binary() => any()}.

%% Example:
%% create_trial_request() :: #{
%%   <<"DisplayName">> => string(),
%%   <<"ExperimentName">> := string(),
%%   <<"MetadataProperties">> => metadata_properties(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TrialName">> := string()
%% }
-type create_trial_request() :: #{binary() => any()}.

%% Example:
%% create_app_image_config_request() :: #{
%%   <<"AppImageConfigName">> := string(),
%%   <<"CodeEditorAppImageConfig">> => code_editor_app_image_config(),
%%   <<"JupyterLabAppImageConfig">> => jupyter_lab_app_image_config(),
%%   <<"KernelGatewayImageConfig">> => kernel_gateway_image_config(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_app_image_config_request() :: #{binary() => any()}.

%% Example:
%% optimization_job_model_source_s3() :: #{
%%   <<"ModelAccessConfig">> => optimization_model_access_config(),
%%   <<"S3Uri">> => string()
%% }
-type optimization_job_model_source_s3() :: #{binary() => any()}.

%% Example:
%% deployed_image() :: #{
%%   <<"ResolutionTime">> => non_neg_integer(),
%%   <<"ResolvedImage">> => string(),
%%   <<"SpecifiedImage">> => string()
%% }
-type deployed_image() :: #{binary() => any()}.

%% Example:
%% inference_component_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EndpointArn">> => string(),
%%   <<"EndpointName">> => string(),
%%   <<"InferenceComponentArn">> => string(),
%%   <<"InferenceComponentName">> => string(),
%%   <<"InferenceComponentStatus">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"VariantName">> => string()
%% }
-type inference_component_summary() :: #{binary() => any()}.

%% Example:
%% delete_cluster_request() :: #{
%%   <<"ClusterName">> := string()
%% }
-type delete_cluster_request() :: #{binary() => any()}.

%% Example:
%% describe_transform_job_request() :: #{
%%   <<"TransformJobName">> := string()
%% }
-type describe_transform_job_request() :: #{binary() => any()}.

%% Example:
%% delete_app_request() :: #{
%%   <<"AppName">> := string(),
%%   <<"AppType">> := list(any()),
%%   <<"DomainId">> := string(),
%%   <<"SpaceName">> => string(),
%%   <<"UserProfileName">> => string()
%% }
-type delete_app_request() :: #{binary() => any()}.

%% Example:
%% objective_status_counters() :: #{
%%   <<"Failed">> => integer(),
%%   <<"Pending">> => integer(),
%%   <<"Succeeded">> => integer()
%% }
-type objective_status_counters() :: #{binary() => any()}.

%% Example:
%% parent_hyper_parameter_tuning_job() :: #{
%%   <<"HyperParameterTuningJobName">> => string()
%% }
-type parent_hyper_parameter_tuning_job() :: #{binary() => any()}.

%% Example:
%% render_ui_template_response() :: #{
%%   <<"Errors">> => list(rendering_error()()),
%%   <<"RenderedContent">> => string()
%% }
-type render_ui_template_response() :: #{binary() => any()}.

%% Example:
%% describe_partner_app_request() :: #{
%%   <<"Arn">> := string()
%% }
-type describe_partner_app_request() :: #{binary() => any()}.

%% Example:
%% describe_auto_ml_job_v2_response() :: #{
%%   <<"AutoMLComputeConfig">> => auto_ml_compute_config(),
%%   <<"AutoMLJobArn">> => string(),
%%   <<"AutoMLJobArtifacts">> => auto_ml_job_artifacts(),
%%   <<"AutoMLJobInputDataConfig">> => list(auto_ml_job_channel()()),
%%   <<"AutoMLJobName">> => string(),
%%   <<"AutoMLJobObjective">> => auto_ml_job_objective(),
%%   <<"AutoMLJobSecondaryStatus">> => list(any()),
%%   <<"AutoMLJobStatus">> => list(any()),
%%   <<"AutoMLProblemTypeConfig">> => list(),
%%   <<"AutoMLProblemTypeConfigName">> => list(any()),
%%   <<"BestCandidate">> => auto_ml_candidate(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DataSplitConfig">> => auto_ml_data_split_config(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ModelDeployConfig">> => model_deploy_config(),
%%   <<"ModelDeployResult">> => model_deploy_result(),
%%   <<"OutputDataConfig">> => auto_ml_output_data_config(),
%%   <<"PartialFailureReasons">> => list(auto_ml_partial_failure_reason()()),
%%   <<"ResolvedAttributes">> => auto_ml_resolved_attributes(),
%%   <<"RoleArn">> => string(),
%%   <<"SecurityConfig">> => auto_ml_security_config()
%% }
-type describe_auto_ml_job_v2_response() :: #{binary() => any()}.

%% Example:
%% delete_trial_component_request() :: #{
%%   <<"TrialComponentName">> := string()
%% }
-type delete_trial_component_request() :: #{binary() => any()}.

%% Example:
%% model_package_group_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"ModelPackageGroupArn">> => string(),
%%   <<"ModelPackageGroupDescription">> => string(),
%%   <<"ModelPackageGroupName">> => string(),
%%   <<"ModelPackageGroupStatus">> => list(any())
%% }
-type model_package_group_summary() :: #{binary() => any()}.

%% Example:
%% artifact_summary() :: #{
%%   <<"ArtifactArn">> => string(),
%%   <<"ArtifactName">> => string(),
%%   <<"ArtifactType">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Source">> => artifact_source()
%% }
-type artifact_summary() :: #{binary() => any()}.

%% Example:
%% image() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"ImageArn">> => string(),
%%   <<"ImageName">> => string(),
%%   <<"ImageStatus">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type image() :: #{binary() => any()}.

%% Example:
%% device_fleet_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DeviceFleetArn">> => string(),
%%   <<"DeviceFleetName">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type device_fleet_summary() :: #{binary() => any()}.

%% Example:
%% create_compilation_job_request() :: #{
%%   <<"CompilationJobName">> := string(),
%%   <<"InputConfig">> => input_config(),
%%   <<"ModelPackageVersionArn">> => string(),
%%   <<"OutputConfig">> := output_config(),
%%   <<"RoleArn">> := string(),
%%   <<"StoppingCondition">> := stopping_condition(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VpcConfig">> => neo_vpc_config()
%% }
-type create_compilation_job_request() :: #{binary() => any()}.

%% Example:
%% compute_quota_resource_config() :: #{
%%   <<"Count">> => integer(),
%%   <<"InstanceType">> => list(any())
%% }
-type compute_quota_resource_config() :: #{binary() => any()}.

%% Example:
%% label_counters() :: #{
%%   <<"FailedNonRetryableError">> => integer(),
%%   <<"HumanLabeled">> => integer(),
%%   <<"MachineLabeled">> => integer(),
%%   <<"TotalLabeled">> => integer(),
%%   <<"Unlabeled">> => integer()
%% }
-type label_counters() :: #{binary() => any()}.

%% Example:
%% drift_check_model_quality() :: #{
%%   <<"Constraints">> => metrics_source(),
%%   <<"Statistics">> => metrics_source()
%% }
-type drift_check_model_quality() :: #{binary() => any()}.

%% Example:
%% explainability() :: #{
%%   <<"Report">> => metrics_source()
%% }
-type explainability() :: #{binary() => any()}.

%% Example:
%% update_monitoring_schedule_response() :: #{
%%   <<"MonitoringScheduleArn">> => string()
%% }
-type update_monitoring_schedule_response() :: #{binary() => any()}.

%% Example:
%% describe_experiment_request() :: #{
%%   <<"ExperimentName">> := string()
%% }
-type describe_experiment_request() :: #{binary() => any()}.

%% Example:
%% create_model_bias_job_definition_response() :: #{
%%   <<"JobDefinitionArn">> => string()
%% }
-type create_model_bias_job_definition_response() :: #{binary() => any()}.

%% Example:
%% delete_action_response() :: #{
%%   <<"ActionArn">> => string()
%% }
-type delete_action_response() :: #{binary() => any()}.

%% Example:
%% describe_app_request() :: #{
%%   <<"AppName">> := string(),
%%   <<"AppType">> := list(any()),
%%   <<"DomainId">> := string(),
%%   <<"SpaceName">> => string(),
%%   <<"UserProfileName">> => string()
%% }
-type describe_app_request() :: #{binary() => any()}.

%% Example:
%% collection_configuration() :: #{
%%   <<"CollectionName">> => string(),
%%   <<"CollectionParameters">> => map()
%% }
-type collection_configuration() :: #{binary() => any()}.

%% Example:
%% resource_config() :: #{
%%   <<"InstanceCount">> => integer(),
%%   <<"InstanceGroups">> => list(instance_group()()),
%%   <<"InstanceType">> => list(any()),
%%   <<"KeepAlivePeriodInSeconds">> => integer(),
%%   <<"TrainingPlanArn">> => string(),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VolumeSizeInGB">> => integer()
%% }
-type resource_config() :: #{binary() => any()}.

%% Example:
%% amazon_q_settings() :: #{
%%   <<"QProfileArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type amazon_q_settings() :: #{binary() => any()}.

%% Example:
%% update_project_output() :: #{
%%   <<"ProjectArn">> => string()
%% }
-type update_project_output() :: #{binary() => any()}.

%% Example:
%% describe_mlflow_tracking_server_response() :: #{
%%   <<"ArtifactStoreUri">> => string(),
%%   <<"AutomaticModelRegistration">> => boolean(),
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"IsActive">> => list(any()),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"MlflowVersion">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"TrackingServerArn">> => string(),
%%   <<"TrackingServerName">> => string(),
%%   <<"TrackingServerSize">> => list(any()),
%%   <<"TrackingServerStatus">> => list(any()),
%%   <<"TrackingServerUrl">> => string(),
%%   <<"WeeklyMaintenanceWindowStart">> => string()
%% }
-type describe_mlflow_tracking_server_response() :: #{binary() => any()}.

%% Example:
%% real_time_inference_config() :: #{
%%   <<"InstanceCount">> => integer(),
%%   <<"InstanceType">> => list(any())
%% }
-type real_time_inference_config() :: #{binary() => any()}.

%% Example:
%% describe_transform_job_response() :: #{
%%   <<"AutoMLJobArn">> => string(),
%%   <<"BatchStrategy">> => list(any()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DataCaptureConfig">> => batch_data_capture_config(),
%%   <<"DataProcessing">> => data_processing(),
%%   <<"Environment">> => map(),
%%   <<"ExperimentConfig">> => experiment_config(),
%%   <<"FailureReason">> => string(),
%%   <<"LabelingJobArn">> => string(),
%%   <<"MaxConcurrentTransforms">> => integer(),
%%   <<"MaxPayloadInMB">> => integer(),
%%   <<"ModelClientConfig">> => model_client_config(),
%%   <<"ModelName">> => string(),
%%   <<"TransformEndTime">> => non_neg_integer(),
%%   <<"TransformInput">> => transform_input(),
%%   <<"TransformJobArn">> => string(),
%%   <<"TransformJobName">> => string(),
%%   <<"TransformJobStatus">> => list(any()),
%%   <<"TransformOutput">> => transform_output(),
%%   <<"TransformResources">> => transform_resources(),
%%   <<"TransformStartTime">> => non_neg_integer()
%% }
-type describe_transform_job_response() :: #{binary() => any()}.

%% Example:
%% optimization_model_access_config() :: #{
%%   <<"AcceptEula">> => boolean()
%% }
-type optimization_model_access_config() :: #{binary() => any()}.

%% Example:
%% list_workteams_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_workteams_request() :: #{binary() => any()}.

%% Example:
%% online_store_config() :: #{
%%   <<"EnableOnlineStore">> => boolean(),
%%   <<"SecurityConfig">> => online_store_security_config(),
%%   <<"StorageType">> => list(any()),
%%   <<"TtlDuration">> => ttl_duration()
%% }
-type online_store_config() :: #{binary() => any()}.

%% Example:
%% processing_job_step_metadata() :: #{
%%   <<"Arn">> => string()
%% }
-type processing_job_step_metadata() :: #{binary() => any()}.

%% Example:
%% label_counters_for_workteam() :: #{
%%   <<"HumanLabeled">> => integer(),
%%   <<"PendingHuman">> => integer(),
%%   <<"Total">> => integer()
%% }
-type label_counters_for_workteam() :: #{binary() => any()}.

%% Example:
%% list_artifacts_response() :: #{
%%   <<"ArtifactSummaries">> => list(artifact_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_artifacts_response() :: #{binary() => any()}.

%% Example:
%% describe_hub_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"HubArn">> => string(),
%%   <<"HubDescription">> => string(),
%%   <<"HubDisplayName">> => string(),
%%   <<"HubName">> => string(),
%%   <<"HubSearchKeywords">> => list(string()()),
%%   <<"HubStatus">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"S3StorageConfig">> => hub_s3_storage_config()
%% }
-type describe_hub_response() :: #{binary() => any()}.

%% Example:
%% delete_app_image_config_request() :: #{
%%   <<"AppImageConfigName">> := string()
%% }
-type delete_app_image_config_request() :: #{binary() => any()}.

%% Example:
%% describe_feature_group_request() :: #{
%%   <<"FeatureGroupName">> := string(),
%%   <<"NextToken">> => string()
%% }
-type describe_feature_group_request() :: #{binary() => any()}.

%% Example:
%% update_cluster_scheduler_config_response() :: #{
%%   <<"ClusterSchedulerConfigArn">> => string(),
%%   <<"ClusterSchedulerConfigVersion">> => integer()
%% }
-type update_cluster_scheduler_config_response() :: #{binary() => any()}.

%% Example:
%% delete_compilation_job_request() :: #{
%%   <<"CompilationJobName">> := string()
%% }
-type delete_compilation_job_request() :: #{binary() => any()}.

%% Example:
%% data_capture_config_summary() :: #{
%%   <<"CaptureStatus">> => list(any()),
%%   <<"CurrentSamplingPercentage">> => integer(),
%%   <<"DestinationS3Uri">> => string(),
%%   <<"EnableCapture">> => boolean(),
%%   <<"KmsKeyId">> => string()
%% }
-type data_capture_config_summary() :: #{binary() => any()}.

%% Example:
%% create_compute_quota_request() :: #{
%%   <<"ActivationState">> => list(any()),
%%   <<"ClusterArn">> := string(),
%%   <<"ComputeQuotaConfig">> := compute_quota_config(),
%%   <<"ComputeQuotaTarget">> := compute_quota_target(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_compute_quota_request() :: #{binary() => any()}.

%% Example:
%% monitoring_schedule_config() :: #{
%%   <<"MonitoringJobDefinition">> => monitoring_job_definition(),
%%   <<"MonitoringJobDefinitionName">> => string(),
%%   <<"MonitoringType">> => list(any()),
%%   <<"ScheduleConfig">> => schedule_config()
%% }
-type monitoring_schedule_config() :: #{binary() => any()}.

%% Example:
%% profiler_config_for_update() :: #{
%%   <<"DisableProfiler">> => boolean(),
%%   <<"ProfilingIntervalInMilliseconds">> => float(),
%%   <<"ProfilingParameters">> => map(),
%%   <<"S3OutputPath">> => string()
%% }
-type profiler_config_for_update() :: #{binary() => any()}.

%% Example:
%% rolling_update_policy() :: #{
%%   <<"MaximumBatchSize">> => capacity_size(),
%%   <<"MaximumExecutionTimeoutInSeconds">> => integer(),
%%   <<"RollbackMaximumBatchSize">> => capacity_size(),
%%   <<"WaitIntervalInSeconds">> => integer()
%% }
-type rolling_update_policy() :: #{binary() => any()}.

%% Example:
%% app_image_config_details() :: #{
%%   <<"AppImageConfigArn">> => string(),
%%   <<"AppImageConfigName">> => string(),
%%   <<"CodeEditorAppImageConfig">> => code_editor_app_image_config(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"JupyterLabAppImageConfig">> => jupyter_lab_app_image_config(),
%%   <<"KernelGatewayImageConfig">> => kernel_gateway_image_config(),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type app_image_config_details() :: #{binary() => any()}.

%% Example:
%% create_partner_app_request() :: #{
%%   <<"ApplicationConfig">> => partner_app_config(),
%%   <<"AuthType">> := list(any()),
%%   <<"ClientToken">> => string(),
%%   <<"EnableIamSessionBasedIdentity">> => boolean(),
%%   <<"ExecutionRoleArn">> := string(),
%%   <<"MaintenanceConfig">> => partner_app_maintenance_config(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Tier">> := string(),
%%   <<"Type">> := list(any())
%% }
-type create_partner_app_request() :: #{binary() => any()}.

%% Example:
%% model_compilation_config() :: #{
%%   <<"Image">> => string(),
%%   <<"OverrideEnvironment">> => map()
%% }
-type model_compilation_config() :: #{binary() => any()}.

%% Example:
%% update_feature_metadata_request() :: #{
%%   <<"Description">> => string(),
%%   <<"FeatureGroupName">> := string(),
%%   <<"FeatureName">> := string(),
%%   <<"ParameterAdditions">> => list(feature_parameter()()),
%%   <<"ParameterRemovals">> => list(string()())
%% }
-type update_feature_metadata_request() :: #{binary() => any()}.

%% Example:
%% list_training_plans_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TrainingPlanSummaries">> => list(training_plan_summary()())
%% }
-type list_training_plans_response() :: #{binary() => any()}.

%% Example:
%% describe_labeling_job_request() :: #{
%%   <<"LabelingJobName">> := string()
%% }
-type describe_labeling_job_request() :: #{binary() => any()}.

%% Example:
%% describe_domain_request() :: #{
%%   <<"DomainId">> := string()
%% }
-type describe_domain_request() :: #{binary() => any()}.

%% Example:
%% list_stage_devices_response() :: #{
%%   <<"DeviceDeploymentSummaries">> => list(device_deployment_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_stage_devices_response() :: #{binary() => any()}.

%% Example:
%% create_presigned_notebook_instance_url_input() :: #{
%%   <<"NotebookInstanceName">> := string(),
%%   <<"SessionExpirationDurationInSeconds">> => integer()
%% }
-type create_presigned_notebook_instance_url_input() :: #{binary() => any()}.

%% Example:
%% model_explainability_job_input() :: #{
%%   <<"BatchTransformInput">> => batch_transform_input(),
%%   <<"EndpointInput">> => endpoint_input()
%% }
-type model_explainability_job_input() :: #{binary() => any()}.

%% Example:
%% update_space_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"SpaceDisplayName">> => string(),
%%   <<"SpaceName">> := string(),
%%   <<"SpaceSettings">> => space_settings()
%% }
-type update_space_request() :: #{binary() => any()}.

%% Example:
%% trial_component_source_detail() :: #{
%%   <<"ProcessingJob">> => processing_job(),
%%   <<"SourceArn">> => string(),
%%   <<"TrainingJob">> => training_job(),
%%   <<"TransformJob">> => transform_job()
%% }
-type trial_component_source_detail() :: #{binary() => any()}.

%% Example:
%% create_training_plan_request() :: #{
%%   <<"Tags">> => list(tag()()),
%%   <<"TrainingPlanName">> := string(),
%%   <<"TrainingPlanOfferingId">> := string()
%% }
-type create_training_plan_request() :: #{binary() => any()}.

%% Example:
%% list_candidates_for_auto_ml_job_response() :: #{
%%   <<"Candidates">> => list(auto_ml_candidate()()),
%%   <<"NextToken">> => string()
%% }
-type list_candidates_for_auto_ml_job_response() :: #{binary() => any()}.

%% Example:
%% predefined_metric_specification() :: #{
%%   <<"PredefinedMetricType">> => string()
%% }
-type predefined_metric_specification() :: #{binary() => any()}.

%% Example:
%% endpoint_input_configuration() :: #{
%%   <<"EnvironmentParameterRanges">> => environment_parameter_ranges(),
%%   <<"InferenceSpecificationName">> => string(),
%%   <<"InstanceType">> => list(any()),
%%   <<"ServerlessConfig">> => production_variant_serverless_config()
%% }
-type endpoint_input_configuration() :: #{binary() => any()}.

%% Example:
%% inference_component_rolling_update_policy() :: #{
%%   <<"MaximumBatchSize">> => inference_component_capacity_size(),
%%   <<"MaximumExecutionTimeoutInSeconds">> => integer(),
%%   <<"RollbackMaximumBatchSize">> => inference_component_capacity_size(),
%%   <<"WaitIntervalInSeconds">> => integer()
%% }
-type inference_component_rolling_update_policy() :: #{binary() => any()}.

%% Example:
%% delete_model_input() :: #{
%%   <<"ModelName">> := string()
%% }
-type delete_model_input() :: #{binary() => any()}.

%% Example:
%% describe_monitoring_schedule_request() :: #{
%%   <<"MonitoringScheduleName">> := string()
%% }
-type describe_monitoring_schedule_request() :: #{binary() => any()}.

%% Example:
%% action_source() :: #{
%%   <<"SourceId">> => string(),
%%   <<"SourceType">> => string(),
%%   <<"SourceUri">> => string()
%% }
-type action_source() :: #{binary() => any()}.

%% Example:
%% f_sx_lustre_file_system_config() :: #{
%%   <<"FileSystemId">> => string(),
%%   <<"FileSystemPath">> => string()
%% }
-type f_sx_lustre_file_system_config() :: #{binary() => any()}.

%% Example:
%% hyper_parameter_tuning_job_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"HyperParameterTuningEndTime">> => non_neg_integer(),
%%   <<"HyperParameterTuningJobArn">> => string(),
%%   <<"HyperParameterTuningJobName">> => string(),
%%   <<"HyperParameterTuningJobStatus">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ObjectiveStatusCounters">> => objective_status_counters(),
%%   <<"ResourceLimits">> => resource_limits(),
%%   <<"Strategy">> => list(any()),
%%   <<"TrainingJobStatusCounters">> => training_job_status_counters()
%% }
-type hyper_parameter_tuning_job_summary() :: #{binary() => any()}.

%% Example:
%% batch_delete_cluster_nodes_error() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string(),
%%   <<"NodeId">> => string()
%% }
-type batch_delete_cluster_nodes_error() :: #{binary() => any()}.

%% Example:
%% multi_model_config() :: #{
%%   <<"ModelCacheSetting">> => list(any())
%% }
-type multi_model_config() :: #{binary() => any()}.

%% Example:
%% model_artifacts() :: #{
%%   <<"S3ModelArtifacts">> => string()
%% }
-type model_artifacts() :: #{binary() => any()}.

%% Example:
%% create_user_profile_request() :: #{
%%   <<"DomainId">> := string(),
%%   <<"SingleSignOnUserIdentifier">> => string(),
%%   <<"SingleSignOnUserValue">> => string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"UserProfileName">> := string(),
%%   <<"UserSettings">> => user_settings()
%% }
-type create_user_profile_request() :: #{binary() => any()}.

%% Example:
%% processing_input() :: #{
%%   <<"AppManaged">> => boolean(),
%%   <<"DatasetDefinition">> => dataset_definition(),
%%   <<"InputName">> => string(),
%%   <<"S3Input">> => processing_s3_input()
%% }
-type processing_input() :: #{binary() => any()}.

%% Example:
%% update_feature_group_request() :: #{
%%   <<"FeatureAdditions">> => list(feature_definition()()),
%%   <<"FeatureGroupName">> := string(),
%%   <<"OnlineStoreConfig">> => online_store_config_update(),
%%   <<"ThroughputConfig">> => throughput_config_update()
%% }
-type update_feature_group_request() :: #{binary() => any()}.

%% Example:
%% describe_training_plan_request() :: #{
%%   <<"TrainingPlanName">> := string()
%% }
-type describe_training_plan_request() :: #{binary() => any()}.

%% Example:
%% list_edge_deployment_plans_response() :: #{
%%   <<"EdgeDeploymentPlanSummaries">> => list(edge_deployment_plan_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_edge_deployment_plans_response() :: #{binary() => any()}.

%% Example:
%% update_monitoring_alert_response() :: #{
%%   <<"MonitoringAlertName">> => string(),
%%   <<"MonitoringScheduleArn">> => string()
%% }
-type update_monitoring_alert_response() :: #{binary() => any()}.

%% Example:
%% tensor_board_output_config() :: #{
%%   <<"LocalPath">> => string(),
%%   <<"S3OutputPath">> => string()
%% }
-type tensor_board_output_config() :: #{binary() => any()}.

%% Example:
%% monitoring_app_specification() :: #{
%%   <<"ContainerArguments">> => list(string()()),
%%   <<"ContainerEntrypoint">> => list(string()()),
%%   <<"ImageUri">> => string(),
%%   <<"PostAnalyticsProcessorSourceUri">> => string(),
%%   <<"RecordPreprocessorSourceUri">> => string()
%% }
-type monitoring_app_specification() :: #{binary() => any()}.

%% Example:
%% model_input() :: #{
%%   <<"DataInputConfig">> => string()
%% }
-type model_input() :: #{binary() => any()}.

%% Example:
%% model_package_security_config() :: #{
%%   <<"KmsKeyId">> => string()
%% }
-type model_package_security_config() :: #{binary() => any()}.

%% Example:
%% data_quality_job_input() :: #{
%%   <<"BatchTransformInput">> => batch_transform_input(),
%%   <<"EndpointInput">> => endpoint_input()
%% }
-type data_quality_job_input() :: #{binary() => any()}.

%% Example:
%% list_subscribed_workteams_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string()
%% }
-type list_subscribed_workteams_request() :: #{binary() => any()}.

%% Example:
%% list_studio_lifecycle_configs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StudioLifecycleConfigs">> => list(studio_lifecycle_config_details()())
%% }
-type list_studio_lifecycle_configs_response() :: #{binary() => any()}.

%% Example:
%% data_processing() :: #{
%%   <<"InputFilter">> => string(),
%%   <<"JoinSource">> => list(any()),
%%   <<"OutputFilter">> => string()
%% }
-type data_processing() :: #{binary() => any()}.

%% Example:
%% monitoring_output() :: #{
%%   <<"S3Output">> => monitoring_s3_output()
%% }
-type monitoring_output() :: #{binary() => any()}.

%% Example:
%% list_model_bias_job_definitions_response() :: #{
%%   <<"JobDefinitionSummaries">> => list(monitoring_job_definition_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_model_bias_job_definitions_response() :: #{binary() => any()}.

%% Example:
%% tabular_job_config() :: #{
%%   <<"CandidateGenerationConfig">> => candidate_generation_config(),
%%   <<"CompletionCriteria">> => auto_ml_job_completion_criteria(),
%%   <<"FeatureSpecificationS3Uri">> => string(),
%%   <<"GenerateCandidateDefinitionsOnly">> => boolean(),
%%   <<"Mode">> => list(any()),
%%   <<"ProblemType">> => list(any()),
%%   <<"SampleWeightAttributeName">> => string(),
%%   <<"TargetAttributeName">> => string()
%% }
-type tabular_job_config() :: #{binary() => any()}.

%% Example:
%% describe_subscribed_workteam_response() :: #{
%%   <<"SubscribedWorkteam">> => subscribed_workteam()
%% }
-type describe_subscribed_workteam_response() :: #{binary() => any()}.

%% Example:
%% list_projects_input() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_projects_input() :: #{binary() => any()}.

%% Example:
%% batch_transform_input() :: #{
%%   <<"DataCapturedDestinationS3Uri">> => string(),
%%   <<"DatasetFormat">> => monitoring_dataset_format(),
%%   <<"EndTimeOffset">> => string(),
%%   <<"ExcludeFeaturesAttribute">> => string(),
%%   <<"FeaturesAttribute">> => string(),
%%   <<"InferenceAttribute">> => string(),
%%   <<"LocalPath">> => string(),
%%   <<"ProbabilityAttribute">> => string(),
%%   <<"ProbabilityThresholdAttribute">> => float(),
%%   <<"S3DataDistributionType">> => list(any()),
%%   <<"S3InputMode">> => list(any()),
%%   <<"StartTimeOffset">> => string()
%% }
-type batch_transform_input() :: #{binary() => any()}.

%% Example:
%% list_inference_recommendations_jobs_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"ModelNameEquals">> => string(),
%%   <<"ModelPackageVersionArnEquals">> => string(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StatusEquals">> => list(any())
%% }
-type list_inference_recommendations_jobs_request() :: #{binary() => any()}.

%% Example:
%% endpoint_info() :: #{
%%   <<"EndpointName">> => string()
%% }
-type endpoint_info() :: #{binary() => any()}.

%% Example:
%% enable_sagemaker_servicecatalog_portfolio_input() :: #{

%% }
-type enable_sagemaker_servicecatalog_portfolio_input() :: #{binary() => any()}.

%% Example:
%% inference_experiment_summary() :: #{
%%   <<"CompletionTime">> => non_neg_integer(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Schedule">> => inference_experiment_schedule(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string(),
%%   <<"Type">> => list(any())
%% }
-type inference_experiment_summary() :: #{binary() => any()}.

%% Example:
%% list_models_input() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_models_input() :: #{binary() => any()}.

%% Example:
%% transform_job_definition() :: #{
%%   <<"BatchStrategy">> => list(any()),
%%   <<"Environment">> => map(),
%%   <<"MaxConcurrentTransforms">> => integer(),
%%   <<"MaxPayloadInMB">> => integer(),
%%   <<"TransformInput">> => transform_input(),
%%   <<"TransformOutput">> => transform_output(),
%%   <<"TransformResources">> => transform_resources()
%% }
-type transform_job_definition() :: #{binary() => any()}.

%% Example:
%% model_card_export_job_summary() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"LastModifiedAt">> => non_neg_integer(),
%%   <<"ModelCardExportJobArn">> => string(),
%%   <<"ModelCardExportJobName">> => string(),
%%   <<"ModelCardName">> => string(),
%%   <<"ModelCardVersion">> => integer(),
%%   <<"Status">> => list(any())
%% }
-type model_card_export_job_summary() :: #{binary() => any()}.

%% Example:
%% model_package_validation_profile() :: #{
%%   <<"ProfileName">> => string(),
%%   <<"TransformJobDefinition">> => transform_job_definition()
%% }
-type model_package_validation_profile() :: #{binary() => any()}.

%% Example:
%% output_config() :: #{
%%   <<"CompilerOptions">> => string(),
%%   <<"KmsKeyId">> => string(),
%%   <<"S3OutputLocation">> => string(),
%%   <<"TargetDevice">> => list(any()),
%%   <<"TargetPlatform">> => target_platform()
%% }
-type output_config() :: #{binary() => any()}.

%% Example:
%% delete_trial_request() :: #{
%%   <<"TrialName">> := string()
%% }
-type delete_trial_request() :: #{binary() => any()}.

%% Example:
%% create_partner_app_presigned_url_request() :: #{
%%   <<"Arn">> := string(),
%%   <<"ExpiresInSeconds">> => integer(),
%%   <<"SessionExpirationDurationInSeconds">> => integer()
%% }
-type create_partner_app_presigned_url_request() :: #{binary() => any()}.

%% Example:
%% hyper_parameter_tuning_job_objective() :: #{
%%   <<"MetricName">> => string(),
%%   <<"Type">> => list(any())
%% }
-type hyper_parameter_tuning_job_objective() :: #{binary() => any()}.

%% Example:
%% describe_flow_definition_request() :: #{
%%   <<"FlowDefinitionName">> := string()
%% }
-type describe_flow_definition_request() :: #{binary() => any()}.

%% Example:
%% hyper_parameter_algorithm_specification() :: #{
%%   <<"AlgorithmName">> => string(),
%%   <<"MetricDefinitions">> => list(metric_definition()()),
%%   <<"TrainingImage">> => string(),
%%   <<"TrainingInputMode">> => list(any())
%% }
-type hyper_parameter_algorithm_specification() :: #{binary() => any()}.

%% Example:
%% s3_model_data_source() :: #{
%%   <<"CompressionType">> => list(any()),
%%   <<"ETag">> => string(),
%%   <<"HubAccessConfig">> => inference_hub_access_config(),
%%   <<"ManifestEtag">> => string(),
%%   <<"ManifestS3Uri">> => string(),
%%   <<"ModelAccessConfig">> => model_access_config(),
%%   <<"S3DataType">> => list(any()),
%%   <<"S3Uri">> => string()
%% }
-type s3_model_data_source() :: #{binary() => any()}.

%% Example:
%% traffic_routing_config() :: #{
%%   <<"CanarySize">> => capacity_size(),
%%   <<"LinearStepSize">> => capacity_size(),
%%   <<"Type">> => list(any()),
%%   <<"WaitIntervalInSeconds">> => integer()
%% }
-type traffic_routing_config() :: #{binary() => any()}.

%% Example:
%% create_inference_experiment_request() :: #{
%%   <<"DataStorageConfig">> => inference_experiment_data_storage_config(),
%%   <<"Description">> => string(),
%%   <<"EndpointName">> := string(),
%%   <<"KmsKey">> => string(),
%%   <<"ModelVariants">> := list(model_variant_config()()),
%%   <<"Name">> := string(),
%%   <<"RoleArn">> := string(),
%%   <<"Schedule">> => inference_experiment_schedule(),
%%   <<"ShadowModeConfig">> := shadow_mode_config(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Type">> := list(any())
%% }
-type create_inference_experiment_request() :: #{binary() => any()}.

%% Example:
%% recommendation_job_stopping_conditions() :: #{
%%   <<"FlatInvocations">> => list(any()),
%%   <<"MaxInvocations">> => integer(),
%%   <<"ModelLatencyThresholds">> => list(model_latency_threshold()())
%% }
-type recommendation_job_stopping_conditions() :: #{binary() => any()}.

%% Example:
%% vector_config() :: #{
%%   <<"Dimension">> => integer()
%% }
-type vector_config() :: #{binary() => any()}.

%% Example:
%% disable_sagemaker_servicecatalog_portfolio_input() :: #{

%% }
-type disable_sagemaker_servicecatalog_portfolio_input() :: #{binary() => any()}.

%% Example:
%% get_device_fleet_report_request() :: #{
%%   <<"DeviceFleetName">> := string()
%% }
-type get_device_fleet_report_request() :: #{binary() => any()}.

%% Example:
%% delete_endpoint_input() :: #{
%%   <<"EndpointName">> := string()
%% }
-type delete_endpoint_input() :: #{binary() => any()}.

%% Example:
%% transform_resources() :: #{
%%   <<"InstanceCount">> => integer(),
%%   <<"InstanceType">> => list(any()),
%%   <<"VolumeKmsKeyId">> => string()
%% }
-type transform_resources() :: #{binary() => any()}.

%% Example:
%% describe_model_explainability_job_definition_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"JobDefinitionArn">> => string(),
%%   <<"JobDefinitionName">> => string(),
%%   <<"JobResources">> => monitoring_resources(),
%%   <<"ModelExplainabilityAppSpecification">> => model_explainability_app_specification(),
%%   <<"ModelExplainabilityBaselineConfig">> => model_explainability_baseline_config(),
%%   <<"ModelExplainabilityJobInput">> => model_explainability_job_input(),
%%   <<"ModelExplainabilityJobOutputConfig">> => monitoring_output_config(),
%%   <<"NetworkConfig">> => monitoring_network_config(),
%%   <<"RoleArn">> => string(),
%%   <<"StoppingCondition">> => monitoring_stopping_condition()
%% }
-type describe_model_explainability_job_definition_response() :: #{binary() => any()}.

%% Example:
%% describe_data_quality_job_definition_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DataQualityAppSpecification">> => data_quality_app_specification(),
%%   <<"DataQualityBaselineConfig">> => data_quality_baseline_config(),
%%   <<"DataQualityJobInput">> => data_quality_job_input(),
%%   <<"DataQualityJobOutputConfig">> => monitoring_output_config(),
%%   <<"JobDefinitionArn">> => string(),
%%   <<"JobDefinitionName">> => string(),
%%   <<"JobResources">> => monitoring_resources(),
%%   <<"NetworkConfig">> => monitoring_network_config(),
%%   <<"RoleArn">> => string(),
%%   <<"StoppingCondition">> => monitoring_stopping_condition()
%% }
-type describe_data_quality_job_definition_response() :: #{binary() => any()}.

%% Example:
%% edge_model() :: #{
%%   <<"LatestInference">> => non_neg_integer(),
%%   <<"LatestSampleTime">> => non_neg_integer(),
%%   <<"ModelName">> => string(),
%%   <<"ModelVersion">> => string()
%% }
-type edge_model() :: #{binary() => any()}.

%% Example:
%% stop_training_job_request() :: #{
%%   <<"TrainingJobName">> := string()
%% }
-type stop_training_job_request() :: #{binary() => any()}.

%% Example:
%% update_workforce_request() :: #{
%%   <<"OidcConfig">> => oidc_config(),
%%   <<"SourceIpConfig">> => source_ip_config(),
%%   <<"WorkforceName">> := string(),
%%   <<"WorkforceVpcConfig">> => workforce_vpc_config_request()
%% }
-type update_workforce_request() :: #{binary() => any()}.

%% Example:
%% list_inference_components_output() :: #{
%%   <<"InferenceComponents">> => list(inference_component_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_inference_components_output() :: #{binary() => any()}.

%% Example:
%% labeling_job_input_config() :: #{
%%   <<"DataAttributes">> => labeling_job_data_attributes(),
%%   <<"DataSource">> => labeling_job_data_source()
%% }
-type labeling_job_input_config() :: #{binary() => any()}.

%% Example:
%% update_artifact_response() :: #{
%%   <<"ArtifactArn">> => string()
%% }
-type update_artifact_response() :: #{binary() => any()}.

%% Example:
%% iam_policy_constraints() :: #{
%%   <<"SourceIp">> => list(any()),
%%   <<"VpcSourceIp">> => list(any())
%% }
-type iam_policy_constraints() :: #{binary() => any()}.

%% Example:
%% delete_association_response() :: #{
%%   <<"DestinationArn">> => string(),
%%   <<"SourceArn">> => string()
%% }
-type delete_association_response() :: #{binary() => any()}.

%% Example:
%% delete_trial_component_response() :: #{
%%   <<"TrialComponentArn">> => string()
%% }
-type delete_trial_component_response() :: #{binary() => any()}.

%% Example:
%% create_algorithm_output() :: #{
%%   <<"AlgorithmArn">> => string()
%% }
-type create_algorithm_output() :: #{binary() => any()}.

%% Example:
%% training_job() :: #{
%%   <<"ExperimentConfig">> => experiment_config(),
%%   <<"Environment">> => map(),
%%   <<"TrainingTimeInSeconds">> => integer(),
%%   <<"EnableInterContainerTrafficEncryption">> => boolean(),
%%   <<"AutoMLJobArn">> => string(),
%%   <<"FinalMetricDataList">> => list(metric_data()()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CheckpointConfig">> => checkpoint_config(),
%%   <<"TrainingJobArn">> => string(),
%%   <<"StoppingCondition">> => stopping_condition(),
%%   <<"TuningJobArn">> => string(),
%%   <<"DebugHookConfig">> => debug_hook_config(),
%%   <<"TrainingJobStatus">> => list(any()),
%%   <<"TrainingEndTime">> => non_neg_integer(),
%%   <<"ResourceConfig">> => resource_config(),
%%   <<"RoleArn">> => string(),
%%   <<"VpcConfig">> => vpc_config(),
%%   <<"DebugRuleConfigurations">> => list(debug_rule_configuration()()),
%%   <<"TensorBoardOutputConfig">> => tensor_board_output_config(),
%%   <<"RetryStrategy">> => retry_strategy(),
%%   <<"ModelArtifacts">> => model_artifacts(),
%%   <<"FailureReason">> => string(),
%%   <<"OutputDataConfig">> => output_data_config(),
%%   <<"BillableTimeInSeconds">> => integer(),
%%   <<"SecondaryStatusTransitions">> => list(secondary_status_transition()()),
%%   <<"SecondaryStatus">> => list(any()),
%%   <<"EnableNetworkIsolation">> => boolean(),
%%   <<"Tags">> => list(tag()()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"TrainingJobName">> => string(),
%%   <<"ProfilerConfig">> => profiler_config(),
%%   <<"EnableManagedSpotTraining">> => boolean(),
%%   <<"InputDataConfig">> => list(channel()()),
%%   <<"TrainingStartTime">> => non_neg_integer(),
%%   <<"AlgorithmSpecification">> => algorithm_specification(),
%%   <<"HyperParameters">> => map(),
%%   <<"LabelingJobArn">> => string(),
%%   <<"DebugRuleEvaluationStatuses">> => list(debug_rule_evaluation_status()())
%% }
-type training_job() :: #{binary() => any()}.

%% Example:
%% create_workteam_request() :: #{
%%   <<"Description">> := string(),
%%   <<"MemberDefinitions">> := list(member_definition()()),
%%   <<"NotificationConfiguration">> => notification_configuration(),
%%   <<"Tags">> => list(tag()()),
%%   <<"WorkerAccessConfiguration">> => worker_access_configuration(),
%%   <<"WorkforceName">> => string(),
%%   <<"WorkteamName">> := string()
%% }
-type create_workteam_request() :: #{binary() => any()}.

%% Example:
%% list_lineage_groups_request() :: #{
%%   <<"CreatedAfter">> => non_neg_integer(),
%%   <<"CreatedBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_lineage_groups_request() :: #{binary() => any()}.

%% Example:
%% compute_quota_summary() :: #{
%%   <<"ActivationState">> => list(any()),
%%   <<"ClusterArn">> => string(),
%%   <<"ComputeQuotaArn">> => string(),
%%   <<"ComputeQuotaConfig">> => compute_quota_config(),
%%   <<"ComputeQuotaId">> => string(),
%%   <<"ComputeQuotaTarget">> => compute_quota_target(),
%%   <<"ComputeQuotaVersion">> => integer(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type compute_quota_summary() :: #{binary() => any()}.

%% Example:
%% create_mlflow_tracking_server_request() :: #{
%%   <<"ArtifactStoreUri">> := string(),
%%   <<"AutomaticModelRegistration">> => boolean(),
%%   <<"MlflowVersion">> => string(),
%%   <<"RoleArn">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TrackingServerName">> := string(),
%%   <<"TrackingServerSize">> => list(any()),
%%   <<"WeeklyMaintenanceWindowStart">> => string()
%% }
-type create_mlflow_tracking_server_request() :: #{binary() => any()}.

%% Example:
%% start_pipeline_execution_request() :: #{
%%   <<"ClientRequestToken">> := string(),
%%   <<"ParallelismConfiguration">> => parallelism_configuration(),
%%   <<"PipelineExecutionDescription">> => string(),
%%   <<"PipelineExecutionDisplayName">> => string(),
%%   <<"PipelineName">> := string(),
%%   <<"PipelineParameters">> => list(parameter()()),
%%   <<"SelectiveExecutionConfig">> => selective_execution_config()
%% }
-type start_pipeline_execution_request() :: #{binary() => any()}.

%% Example:
%% list_spaces_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Spaces">> => list(space_details()())
%% }
-type list_spaces_response() :: #{binary() => any()}.

%% Example:
%% describe_pipeline_execution_response() :: #{
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"ParallelismConfiguration">> => parallelism_configuration(),
%%   <<"PipelineArn">> => string(),
%%   <<"PipelineExecutionArn">> => string(),
%%   <<"PipelineExecutionDescription">> => string(),
%%   <<"PipelineExecutionDisplayName">> => string(),
%%   <<"PipelineExecutionStatus">> => list(any()),
%%   <<"PipelineExperimentConfig">> => pipeline_experiment_config(),
%%   <<"SelectiveExecutionConfig">> => selective_execution_config()
%% }
-type describe_pipeline_execution_response() :: #{binary() => any()}.

%% Example:
%% create_hyper_parameter_tuning_job_request() :: #{
%%   <<"Autotune">> => autotune(),
%%   <<"HyperParameterTuningJobConfig">> := hyper_parameter_tuning_job_config(),
%%   <<"HyperParameterTuningJobName">> := string(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TrainingJobDefinition">> => hyper_parameter_training_job_definition(),
%%   <<"TrainingJobDefinitions">> => list(hyper_parameter_training_job_definition()()),
%%   <<"WarmStartConfig">> => hyper_parameter_tuning_job_warm_start_config()
%% }
-type create_hyper_parameter_tuning_job_request() :: #{binary() => any()}.

%% Example:
%% create_user_profile_response() :: #{
%%   <<"UserProfileArn">> => string()
%% }
-type create_user_profile_response() :: #{binary() => any()}.

%% Example:
%% describe_auto_ml_job_v2_request() :: #{
%%   <<"AutoMLJobName">> := string()
%% }
-type describe_auto_ml_job_v2_request() :: #{binary() => any()}.

%% Example:
%% target_platform() :: #{
%%   <<"Accelerator">> => list(any()),
%%   <<"Arch">> => list(any()),
%%   <<"Os">> => list(any())
%% }
-type target_platform() :: #{binary() => any()}.

%% Example:
%% auto_ml_channel() :: #{
%%   <<"ChannelType">> => list(any()),
%%   <<"CompressionType">> => list(any()),
%%   <<"ContentType">> => string(),
%%   <<"DataSource">> => auto_ml_data_source(),
%%   <<"SampleWeightAttributeName">> => string(),
%%   <<"TargetAttributeName">> => string()
%% }
-type auto_ml_channel() :: #{binary() => any()}.

%% Example:
%% list_lineage_groups_response() :: #{
%%   <<"LineageGroupSummaries">> => list(lineage_group_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_lineage_groups_response() :: #{binary() => any()}.

%% Example:
%% update_mlflow_tracking_server_response() :: #{
%%   <<"TrackingServerArn">> => string()
%% }
-type update_mlflow_tracking_server_response() :: #{binary() => any()}.

%% Example:
%% list_artifacts_request() :: #{
%%   <<"ArtifactType">> => string(),
%%   <<"CreatedAfter">> => non_neg_integer(),
%%   <<"CreatedBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"SourceUri">> => string()
%% }
-type list_artifacts_request() :: #{binary() => any()}.

%% Example:
%% inference_component_compute_resource_requirements() :: #{
%%   <<"MaxMemoryRequiredInMb">> => integer(),
%%   <<"MinMemoryRequiredInMb">> => integer(),
%%   <<"NumberOfAcceleratorDevicesRequired">> => float(),
%%   <<"NumberOfCpuCoresRequired">> => float()
%% }
-type inference_component_compute_resource_requirements() :: #{binary() => any()}.

%% Example:
%% create_edge_deployment_plan_request() :: #{
%%   <<"DeviceFleetName">> := string(),
%%   <<"EdgeDeploymentPlanName">> := string(),
%%   <<"ModelConfigs">> := list(edge_deployment_model_config()()),
%%   <<"Stages">> => list(deployment_stage()()),
%%   <<"Tags">> => list(tag()())
%% }
-type create_edge_deployment_plan_request() :: #{binary() => any()}.

%% Example:
%% artifact_source_type() :: #{
%%   <<"SourceIdType">> => list(any()),
%%   <<"Value">> => string()
%% }
-type artifact_source_type() :: #{binary() => any()}.

%% Example:
%% model_card_export_output_config() :: #{
%%   <<"S3OutputPath">> => string()
%% }
-type model_card_export_output_config() :: #{binary() => any()}.

%% Example:
%% describe_model_bias_job_definition_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"JobDefinitionArn">> => string(),
%%   <<"JobDefinitionName">> => string(),
%%   <<"JobResources">> => monitoring_resources(),
%%   <<"ModelBiasAppSpecification">> => model_bias_app_specification(),
%%   <<"ModelBiasBaselineConfig">> => model_bias_baseline_config(),
%%   <<"ModelBiasJobInput">> => model_bias_job_input(),
%%   <<"ModelBiasJobOutputConfig">> => monitoring_output_config(),
%%   <<"NetworkConfig">> => monitoring_network_config(),
%%   <<"RoleArn">> => string(),
%%   <<"StoppingCondition">> => monitoring_stopping_condition()
%% }
-type describe_model_bias_job_definition_response() :: #{binary() => any()}.

%% Example:
%% r_session_app_settings() :: #{
%%   <<"CustomImages">> => list(custom_image()()),
%%   <<"DefaultResourceSpec">> => resource_spec()
%% }
-type r_session_app_settings() :: #{binary() => any()}.

%% Example:
%% list_feature_groups_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"FeatureGroupStatusEquals">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"OfflineStoreStatusEquals">> => list(any()),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_feature_groups_request() :: #{binary() => any()}.

%% Example:
%% continuous_parameter_range() :: #{
%%   <<"MaxValue">> => string(),
%%   <<"MinValue">> => string(),
%%   <<"Name">> => string(),
%%   <<"ScalingType">> => list(any())
%% }
-type continuous_parameter_range() :: #{binary() => any()}.

%% Example:
%% describe_code_repository_output() :: #{
%%   <<"CodeRepositoryArn">> => string(),
%%   <<"CodeRepositoryName">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"GitConfig">> => git_config(),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type describe_code_repository_output() :: #{binary() => any()}.

%% Example:
%% create_endpoint_config_output() :: #{
%%   <<"EndpointConfigArn">> => string()
%% }
-type create_endpoint_config_output() :: #{binary() => any()}.

%% Example:
%% model_bias_app_specification() :: #{
%%   <<"ConfigUri">> => string(),
%%   <<"Environment">> => map(),
%%   <<"ImageUri">> => string()
%% }
-type model_bias_app_specification() :: #{binary() => any()}.

%% Example:
%% secondary_status_transition() :: #{
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type secondary_status_transition() :: #{binary() => any()}.

%% Example:
%% app_lifecycle_management() :: #{
%%   <<"IdleSettings">> => idle_settings()
%% }
-type app_lifecycle_management() :: #{binary() => any()}.

%% Example:
%% edge_deployment_model_config() :: #{
%%   <<"EdgePackagingJobName">> => string(),
%%   <<"ModelHandle">> => string()
%% }
-type edge_deployment_model_config() :: #{binary() => any()}.

%% Example:
%% list_experiments_request() :: #{
%%   <<"CreatedAfter">> => non_neg_integer(),
%%   <<"CreatedBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_experiments_request() :: #{binary() => any()}.

%% Example:
%% clarify_text_config() :: #{
%%   <<"Granularity">> => list(any()),
%%   <<"Language">> => list(any())
%% }
-type clarify_text_config() :: #{binary() => any()}.

%% Example:
%% retry_pipeline_execution_response() :: #{
%%   <<"PipelineExecutionArn">> => string()
%% }
-type retry_pipeline_execution_response() :: #{binary() => any()}.

%% Example:
%% shadow_mode_config() :: #{
%%   <<"ShadowModelVariants">> => list(shadow_model_variant_config()()),
%%   <<"SourceModelVariantName">> => string()
%% }
-type shadow_mode_config() :: #{binary() => any()}.

%% Example:
%% get_lineage_group_policy_request() :: #{
%%   <<"LineageGroupName">> := string()
%% }
-type get_lineage_group_policy_request() :: #{binary() => any()}.

%% Example:
%% create_auto_ml_job_v2_response() :: #{
%%   <<"AutoMLJobArn">> => string()
%% }
-type create_auto_ml_job_v2_response() :: #{binary() => any()}.

%% Example:
%% create_mlflow_tracking_server_response() :: #{
%%   <<"TrackingServerArn">> => string()
%% }
-type create_mlflow_tracking_server_response() :: #{binary() => any()}.

%% Example:
%% create_workforce_request() :: #{
%%   <<"CognitoConfig">> => cognito_config(),
%%   <<"OidcConfig">> => oidc_config(),
%%   <<"SourceIpConfig">> => source_ip_config(),
%%   <<"Tags">> => list(tag()()),
%%   <<"WorkforceName">> := string(),
%%   <<"WorkforceVpcConfig">> => workforce_vpc_config_request()
%% }
-type create_workforce_request() :: #{binary() => any()}.

%% Example:
%% list_tags_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_input() :: #{binary() => any()}.

%% Example:
%% list_labeling_jobs_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StatusEquals">> => list(any())
%% }
-type list_labeling_jobs_request() :: #{binary() => any()}.

%% Example:
%% context_summary() :: #{
%%   <<"ContextArn">> => string(),
%%   <<"ContextName">> => string(),
%%   <<"ContextType">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Source">> => context_source()
%% }
-type context_summary() :: #{binary() => any()}.

%% Example:
%% auto_ml_job_artifacts() :: #{
%%   <<"CandidateDefinitionNotebookLocation">> => string(),
%%   <<"DataExplorationNotebookLocation">> => string()
%% }
-type auto_ml_job_artifacts() :: #{binary() => any()}.

%% Example:
%% put_model_package_group_policy_input() :: #{
%%   <<"ModelPackageGroupName">> := string(),
%%   <<"ResourcePolicy">> := string()
%% }
-type put_model_package_group_policy_input() :: #{binary() => any()}.

%% Example:
%% create_domain_response() :: #{
%%   <<"DomainArn">> => string(),
%%   <<"DomainId">> => string(),
%%   <<"Url">> => string()
%% }
-type create_domain_response() :: #{binary() => any()}.

%% Example:
%% list_training_jobs_for_hyper_parameter_tuning_job_request() :: #{
%%   <<"HyperParameterTuningJobName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StatusEquals">> => list(any())
%% }
-type list_training_jobs_for_hyper_parameter_tuning_job_request() :: #{binary() => any()}.

%% Example:
%% create_code_repository_input() :: #{
%%   <<"CodeRepositoryName">> := string(),
%%   <<"GitConfig">> := git_config(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_code_repository_input() :: #{binary() => any()}.

%% Example:
%% deployment_recommendation() :: #{
%%   <<"RealTimeInferenceRecommendations">> => list(real_time_inference_recommendation()()),
%%   <<"RecommendationStatus">> => list(any())
%% }
-type deployment_recommendation() :: #{binary() => any()}.

%% Example:
%% update_inference_component_runtime_config_input() :: #{
%%   <<"DesiredRuntimeConfig">> := inference_component_runtime_config(),
%%   <<"InferenceComponentName">> := string()
%% }
-type update_inference_component_runtime_config_input() :: #{binary() => any()}.

%% Example:
%% update_endpoint_weights_and_capacities_input() :: #{
%%   <<"DesiredWeightsAndCapacities">> := list(desired_weight_and_capacity()()),
%%   <<"EndpointName">> := string()
%% }
-type update_endpoint_weights_and_capacities_input() :: #{binary() => any()}.

%% Example:
%% channel() :: #{
%%   <<"ChannelName">> => string(),
%%   <<"CompressionType">> => list(any()),
%%   <<"ContentType">> => string(),
%%   <<"DataSource">> => data_source(),
%%   <<"InputMode">> => list(any()),
%%   <<"RecordWrapperType">> => list(any()),
%%   <<"ShuffleConfig">> => shuffle_config()
%% }
-type channel() :: #{binary() => any()}.

%% Example:
%% send_pipeline_execution_step_success_request() :: #{
%%   <<"CallbackToken">> := string(),
%%   <<"ClientRequestToken">> => string(),
%%   <<"OutputParameters">> => list(output_parameter()())
%% }
-type send_pipeline_execution_step_success_request() :: #{binary() => any()}.

%% Example:
%% delete_image_response() :: #{

%% }
-type delete_image_response() :: #{binary() => any()}.

%% Example:
%% update_notebook_instance_lifecycle_config_input() :: #{
%%   <<"NotebookInstanceLifecycleConfigName">> := string(),
%%   <<"OnCreate">> => list(notebook_instance_lifecycle_hook()()),
%%   <<"OnStart">> => list(notebook_instance_lifecycle_hook()())
%% }
-type update_notebook_instance_lifecycle_config_input() :: #{binary() => any()}.

%% Example:
%% start_notebook_instance_input() :: #{
%%   <<"NotebookInstanceName">> := string()
%% }
-type start_notebook_instance_input() :: #{binary() => any()}.

%% Example:
%% update_workforce_response() :: #{
%%   <<"Workforce">> => workforce()
%% }
-type update_workforce_response() :: #{binary() => any()}.

%% Example:
%% describe_code_repository_input() :: #{
%%   <<"CodeRepositoryName">> := string()
%% }
-type describe_code_repository_input() :: #{binary() => any()}.

%% Example:
%% batch_delete_cluster_nodes_response() :: #{
%%   <<"Failed">> => list(batch_delete_cluster_nodes_error()()),
%%   <<"Successful">> => list(string()())
%% }
-type batch_delete_cluster_nodes_response() :: #{binary() => any()}.

%% Example:
%% put_model_package_group_policy_output() :: #{
%%   <<"ModelPackageGroupArn">> => string()
%% }
-type put_model_package_group_policy_output() :: #{binary() => any()}.

%% Example:
%% cognito_member_definition() :: #{
%%   <<"ClientId">> => string(),
%%   <<"UserGroup">> => string(),
%%   <<"UserPool">> => string()
%% }
-type cognito_member_definition() :: #{binary() => any()}.

%% Example:
%% batch_delete_cluster_nodes_request() :: #{
%%   <<"ClusterName">> := string(),
%%   <<"NodeIds">> := list(string()())
%% }
-type batch_delete_cluster_nodes_request() :: #{binary() => any()}.

%% Example:
%% cluster_life_cycle_config() :: #{
%%   <<"OnCreate">> => string(),
%%   <<"SourceS3Uri">> => string()
%% }
-type cluster_life_cycle_config() :: #{binary() => any()}.

%% Example:
%% labeling_job_s3_data_source() :: #{
%%   <<"ManifestS3Uri">> => string()
%% }
-type labeling_job_s3_data_source() :: #{binary() => any()}.

%% Example:
%% candidate_artifact_locations() :: #{
%%   <<"BacktestResults">> => string(),
%%   <<"Explainability">> => string(),
%%   <<"ModelInsights">> => string()
%% }
-type candidate_artifact_locations() :: #{binary() => any()}.

%% Example:
%% get_model_package_group_policy_output() :: #{
%%   <<"ResourcePolicy">> => string()
%% }
-type get_model_package_group_policy_output() :: #{binary() => any()}.

%% Example:
%% describe_mlflow_tracking_server_request() :: #{
%%   <<"TrackingServerName">> := string()
%% }
-type describe_mlflow_tracking_server_request() :: #{binary() => any()}.

%% Example:
%% delete_flow_definition_response() :: #{

%% }
-type delete_flow_definition_response() :: #{binary() => any()}.

%% Example:
%% subscribed_workteam() :: #{
%%   <<"ListingId">> => string(),
%%   <<"MarketplaceDescription">> => string(),
%%   <<"MarketplaceTitle">> => string(),
%%   <<"SellerName">> => string(),
%%   <<"WorkteamArn">> => string()
%% }
-type subscribed_workteam() :: #{binary() => any()}.

%% Example:
%% create_hub_request() :: #{
%%   <<"HubDescription">> := string(),
%%   <<"HubDisplayName">> => string(),
%%   <<"HubName">> := string(),
%%   <<"HubSearchKeywords">> => list(string()()),
%%   <<"S3StorageConfig">> => hub_s3_storage_config(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_hub_request() :: #{binary() => any()}.

%% Example:
%% auto_ml_job_config() :: #{
%%   <<"CandidateGenerationConfig">> => auto_ml_candidate_generation_config(),
%%   <<"CompletionCriteria">> => auto_ml_job_completion_criteria(),
%%   <<"DataSplitConfig">> => auto_ml_data_split_config(),
%%   <<"Mode">> => list(any()),
%%   <<"SecurityConfig">> => auto_ml_security_config()
%% }
-type auto_ml_job_config() :: #{binary() => any()}.

%% Example:
%% e_f_s_file_system() :: #{
%%   <<"FileSystemId">> => string()
%% }
-type e_f_s_file_system() :: #{binary() => any()}.

%% Example:
%% describe_model_card_export_job_response() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"ExportArtifacts">> => model_card_export_artifacts(),
%%   <<"FailureReason">> => string(),
%%   <<"LastModifiedAt">> => non_neg_integer(),
%%   <<"ModelCardExportJobArn">> => string(),
%%   <<"ModelCardExportJobName">> => string(),
%%   <<"ModelCardName">> => string(),
%%   <<"ModelCardVersion">> => integer(),
%%   <<"OutputConfig">> => model_card_export_output_config(),
%%   <<"Status">> => list(any())
%% }
-type describe_model_card_export_job_response() :: #{binary() => any()}.

%% Example:
%% inference_metrics() :: #{
%%   <<"MaxInvocations">> => integer(),
%%   <<"ModelLatency">> => integer()
%% }
-type inference_metrics() :: #{binary() => any()}.

%% Example:
%% create_partner_app_response() :: #{
%%   <<"Arn">> => string()
%% }
-type create_partner_app_response() :: #{binary() => any()}.

%% Example:
%% stop_mlflow_tracking_server_response() :: #{
%%   <<"TrackingServerArn">> => string()
%% }
-type stop_mlflow_tracking_server_response() :: #{binary() => any()}.

%% Example:
%% list_pipeline_parameters_for_execution_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PipelineExecutionArn">> := string()
%% }
-type list_pipeline_parameters_for_execution_request() :: #{binary() => any()}.

%% Example:
%% callback_step_metadata() :: #{
%%   <<"CallbackToken">> => string(),
%%   <<"OutputParameters">> => list(output_parameter()()),
%%   <<"SqsQueueUrl">> => string()
%% }
-type callback_step_metadata() :: #{binary() => any()}.

%% Example:
%% inference_component_container_specification() :: #{
%%   <<"ArtifactUrl">> => string(),
%%   <<"Environment">> => map(),
%%   <<"Image">> => string()
%% }
-type inference_component_container_specification() :: #{binary() => any()}.

%% Example:
%% resource_spec() :: #{
%%   <<"InstanceType">> => list(any()),
%%   <<"LifecycleConfigArn">> => string(),
%%   <<"SageMakerImageArn">> => string(),
%%   <<"SageMakerImageVersionAlias">> => string(),
%%   <<"SageMakerImageVersionArn">> => string()
%% }
-type resource_spec() :: #{binary() => any()}.

%% Example:
%% delete_project_input() :: #{
%%   <<"ProjectName">> := string()
%% }
-type delete_project_input() :: #{binary() => any()}.

%% Example:
%% create_transform_job_response() :: #{
%%   <<"TransformJobArn">> => string()
%% }
-type create_transform_job_response() :: #{binary() => any()}.

%% Example:
%% create_processing_job_response() :: #{
%%   <<"ProcessingJobArn">> => string()
%% }
-type create_processing_job_response() :: #{binary() => any()}.

%% Example:
%% transform_job_step_metadata() :: #{
%%   <<"Arn">> => string()
%% }
-type transform_job_step_metadata() :: #{binary() => any()}.

%% Example:
%% model_deploy_result() :: #{
%%   <<"EndpointName">> => string()
%% }
-type model_deploy_result() :: #{binary() => any()}.

%% Example:
%% hidden_sage_maker_image() :: #{
%%   <<"SageMakerImageName">> => list(any()),
%%   <<"VersionAliases">> => list(string()())
%% }
-type hidden_sage_maker_image() :: #{binary() => any()}.

%% Example:
%% update_inference_component_input() :: #{
%%   <<"DeploymentConfig">> => inference_component_deployment_config(),
%%   <<"InferenceComponentName">> := string(),
%%   <<"RuntimeConfig">> => inference_component_runtime_config(),
%%   <<"Specification">> => inference_component_specification()
%% }
-type update_inference_component_input() :: #{binary() => any()}.

%% Example:
%% debug_hook_config() :: #{
%%   <<"CollectionConfigurations">> => list(collection_configuration()()),
%%   <<"HookParameters">> => map(),
%%   <<"LocalPath">> => string(),
%%   <<"S3OutputPath">> => string()
%% }
-type debug_hook_config() :: #{binary() => any()}.

%% Example:
%% endpoint_performance() :: #{
%%   <<"EndpointInfo">> => endpoint_info(),
%%   <<"Metrics">> => inference_metrics()
%% }
-type endpoint_performance() :: #{binary() => any()}.

%% Example:
%% describe_cluster_scheduler_config_request() :: #{
%%   <<"ClusterSchedulerConfigId">> := string(),
%%   <<"ClusterSchedulerConfigVersion">> => integer()
%% }
-type describe_cluster_scheduler_config_request() :: #{binary() => any()}.

%% Example:
%% query_filters() :: #{
%%   <<"CreatedAfter">> => non_neg_integer(),
%%   <<"CreatedBefore">> => non_neg_integer(),
%%   <<"LineageTypes">> => list(list(any())()),
%%   <<"ModifiedAfter">> => non_neg_integer(),
%%   <<"ModifiedBefore">> => non_neg_integer(),
%%   <<"Properties">> => map(),
%%   <<"Types">> => list(string()())
%% }
-type query_filters() :: #{binary() => any()}.

%% Example:
%% delete_context_response() :: #{
%%   <<"ContextArn">> => string()
%% }
-type delete_context_response() :: #{binary() => any()}.

%% Example:
%% retry_strategy() :: #{
%%   <<"MaximumRetryAttempts">> => integer()
%% }
-type retry_strategy() :: #{binary() => any()}.

%% Example:
%% production_variant_status() :: #{
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string()
%% }
-type production_variant_status() :: #{binary() => any()}.

%% Example:
%% oidc_config_for_response() :: #{
%%   <<"AuthenticationRequestExtraParams">> => map(),
%%   <<"AuthorizationEndpoint">> => string(),
%%   <<"ClientId">> => string(),
%%   <<"Issuer">> => string(),
%%   <<"JwksUri">> => string(),
%%   <<"LogoutEndpoint">> => string(),
%%   <<"Scope">> => string(),
%%   <<"TokenEndpoint">> => string(),
%%   <<"UserInfoEndpoint">> => string()
%% }
-type oidc_config_for_response() :: #{binary() => any()}.

%% Example:
%% monitoring_output_config() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"MonitoringOutputs">> => list(monitoring_output()())
%% }
-type monitoring_output_config() :: #{binary() => any()}.

%% Example:
%% list_monitoring_alert_history_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"MonitoringAlertName">> => string(),
%%   <<"MonitoringScheduleName">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StatusEquals">> => list(any())
%% }
-type list_monitoring_alert_history_request() :: #{binary() => any()}.

%% Example:
%% feature_group() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EventTimeFeatureName">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"FeatureDefinitions">> => list(feature_definition()()),
%%   <<"FeatureGroupArn">> => string(),
%%   <<"FeatureGroupName">> => string(),
%%   <<"FeatureGroupStatus">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LastUpdateStatus">> => last_update_status(),
%%   <<"OfflineStoreConfig">> => offline_store_config(),
%%   <<"OfflineStoreStatus">> => offline_store_status(),
%%   <<"OnlineStoreConfig">> => online_store_config(),
%%   <<"RecordIdentifierFeatureName">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type feature_group() :: #{binary() => any()}.

%% Example:
%% model_client_config() :: #{
%%   <<"InvocationsMaxRetries">> => integer(),
%%   <<"InvocationsTimeoutInSeconds">> => integer()
%% }
-type model_client_config() :: #{binary() => any()}.

%% Example:
%% output_data_config() :: #{
%%   <<"CompressionType">> => list(any()),
%%   <<"KmsKeyId">> => string(),
%%   <<"S3OutputPath">> => string()
%% }
-type output_data_config() :: #{binary() => any()}.

%% Example:
%% describe_model_output() :: #{
%%   <<"Containers">> => list(container_definition()()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DeploymentRecommendation">> => deployment_recommendation(),
%%   <<"EnableNetworkIsolation">> => boolean(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"InferenceExecutionConfig">> => inference_execution_config(),
%%   <<"ModelArn">> => string(),
%%   <<"ModelName">> => string(),
%%   <<"PrimaryContainer">> => container_definition(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type describe_model_output() :: #{binary() => any()}.

%% Example:
%% cluster_instance_group_specification() :: #{
%%   <<"ExecutionRole">> => string(),
%%   <<"InstanceCount">> => integer(),
%%   <<"InstanceGroupName">> => string(),
%%   <<"InstanceStorageConfigs">> => list(list()()),
%%   <<"InstanceType">> => list(any()),
%%   <<"LifeCycleConfig">> => cluster_life_cycle_config(),
%%   <<"OnStartDeepHealthChecks">> => list(list(any())()),
%%   <<"OverrideVpcConfig">> => vpc_config(),
%%   <<"ThreadsPerCore">> => integer(),
%%   <<"TrainingPlanArn">> => string()
%% }
-type cluster_instance_group_specification() :: #{binary() => any()}.

%% Example:
%% edge_model_summary() :: #{
%%   <<"ModelName">> => string(),
%%   <<"ModelVersion">> => string()
%% }
-type edge_model_summary() :: #{binary() => any()}.

%% Example:
%% create_hub_content_reference_request() :: #{
%%   <<"HubContentName">> => string(),
%%   <<"HubName">> := string(),
%%   <<"MinVersion">> => string(),
%%   <<"SageMakerPublicHubContentArn">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_hub_content_reference_request() :: #{binary() => any()}.

%% Example:
%% list_apps_request() :: #{
%%   <<"DomainIdEquals">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"SpaceNameEquals">> => string(),
%%   <<"UserProfileNameEquals">> => string()
%% }
-type list_apps_request() :: #{binary() => any()}.

%% Example:
%% stop_optimization_job_request() :: #{
%%   <<"OptimizationJobName">> := string()
%% }
-type stop_optimization_job_request() :: #{binary() => any()}.

%% Example:
%% deployment_stage_status_summary() :: #{
%%   <<"DeploymentConfig">> => edge_deployment_config(),
%%   <<"DeploymentStatus">> => edge_deployment_status(),
%%   <<"DeviceSelectionConfig">> => device_selection_config(),
%%   <<"StageName">> => string()
%% }
-type deployment_stage_status_summary() :: #{binary() => any()}.

%% Example:
%% git_config() :: #{
%%   <<"Branch">> => string(),
%%   <<"RepositoryUrl">> => string(),
%%   <<"SecretArn">> => string()
%% }
-type git_config() :: #{binary() => any()}.

%% Example:
%% nested_filters() :: #{
%%   <<"Filters">> => list(filter()()),
%%   <<"NestedPropertyName">> => string()
%% }
-type nested_filters() :: #{binary() => any()}.

%% Example:
%% search_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Results">> => list(search_record()())
%% }
-type search_response() :: #{binary() => any()}.

%% Example:
%% edge_deployment_config() :: #{
%%   <<"FailureHandlingPolicy">> => list(any())
%% }
-type edge_deployment_config() :: #{binary() => any()}.

%% Example:
%% device_selection_config() :: #{
%%   <<"DeviceNameContains">> => string(),
%%   <<"DeviceNames">> => list(string()()),
%%   <<"DeviceSubsetType">> => list(any()),
%%   <<"Percentage">> => integer()
%% }
-type device_selection_config() :: #{binary() => any()}.

%% Example:
%% create_context_request() :: #{
%%   <<"ContextName">> := string(),
%%   <<"ContextType">> := string(),
%%   <<"Description">> => string(),
%%   <<"Properties">> => map(),
%%   <<"Source">> := context_source(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_context_request() :: #{binary() => any()}.

%% Example:
%% worker_access_configuration() :: #{
%%   <<"S3Presign">> => s3_presign()
%% }
-type worker_access_configuration() :: #{binary() => any()}.

%% Example:
%% create_algorithm_input() :: #{
%%   <<"AlgorithmDescription">> => string(),
%%   <<"AlgorithmName">> := string(),
%%   <<"CertifyForMarketplace">> => boolean(),
%%   <<"InferenceSpecification">> => inference_specification(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TrainingSpecification">> := training_specification(),
%%   <<"ValidationSpecification">> => algorithm_validation_specification()
%% }
-type create_algorithm_input() :: #{binary() => any()}.

%% Example:
%% stairs() :: #{
%%   <<"DurationInSeconds">> => integer(),
%%   <<"NumberOfSteps">> => integer(),
%%   <<"UsersPerStep">> => integer()
%% }
-type stairs() :: #{binary() => any()}.

%% Example:
%% batch_describe_model_package_error() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorResponse">> => string()
%% }
-type batch_describe_model_package_error() :: #{binary() => any()}.

%% Example:
%% list_data_quality_job_definitions_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"EndpointName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_data_quality_job_definitions_request() :: #{binary() => any()}.

%% Example:
%% create_model_card_response() :: #{
%%   <<"ModelCardArn">> => string()
%% }
-type create_model_card_response() :: #{binary() => any()}.

%% Example:
%% create_auto_ml_job_request() :: #{
%%   <<"AutoMLJobConfig">> => auto_ml_job_config(),
%%   <<"AutoMLJobName">> := string(),
%%   <<"AutoMLJobObjective">> => auto_ml_job_objective(),
%%   <<"GenerateCandidateDefinitionsOnly">> => boolean(),
%%   <<"InputDataConfig">> := list(auto_ml_channel()()),
%%   <<"ModelDeployConfig">> => model_deploy_config(),
%%   <<"OutputDataConfig">> := auto_ml_output_data_config(),
%%   <<"ProblemType">> => list(any()),
%%   <<"RoleArn">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_auto_ml_job_request() :: #{binary() => any()}.

%% Example:
%% notebook_instance_lifecycle_config_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"NotebookInstanceLifecycleConfigArn">> => string(),
%%   <<"NotebookInstanceLifecycleConfigName">> => string()
%% }
-type notebook_instance_lifecycle_config_summary() :: #{binary() => any()}.

%% Example:
%% list_model_card_export_jobs_response() :: #{
%%   <<"ModelCardExportJobSummaries">> => list(model_card_export_job_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_model_card_export_jobs_response() :: #{binary() => any()}.

%% Example:
%% list_monitoring_alerts_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"MonitoringScheduleName">> := string(),
%%   <<"NextToken">> => string()
%% }
-type list_monitoring_alerts_request() :: #{binary() => any()}.

%% Example:
%% describe_compute_quota_request() :: #{
%%   <<"ComputeQuotaId">> := string(),
%%   <<"ComputeQuotaVersion">> => integer()
%% }
-type describe_compute_quota_request() :: #{binary() => any()}.

%% Example:
%% tabular_resolved_attributes() :: #{
%%   <<"ProblemType">> => list(any())
%% }
-type tabular_resolved_attributes() :: #{binary() => any()}.

%% Example:
%% space_sharing_settings() :: #{
%%   <<"SharingType">> => list(any())
%% }
-type space_sharing_settings() :: #{binary() => any()}.

%% Example:
%% ownership_settings_summary() :: #{
%%   <<"OwnerUserProfileName">> => string()
%% }
-type ownership_settings_summary() :: #{binary() => any()}.

%% Example:
%% default_ebs_storage_settings() :: #{
%%   <<"DefaultEbsVolumeSizeInGb">> => integer(),
%%   <<"MaximumEbsVolumeSizeInGb">> => integer()
%% }
-type default_ebs_storage_settings() :: #{binary() => any()}.

%% Example:
%% emr_settings() :: #{
%%   <<"AssumableRoleArns">> => list(string()()),
%%   <<"ExecutionRoleArns">> => list(string()())
%% }
-type emr_settings() :: #{binary() => any()}.

%% Example:
%% list_cluster_nodes_response() :: #{
%%   <<"ClusterNodeSummaries">> => list(cluster_node_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_cluster_nodes_response() :: #{binary() => any()}.

%% Example:
%% start_inference_experiment_request() :: #{
%%   <<"Name">> := string()
%% }
-type start_inference_experiment_request() :: #{binary() => any()}.

%% Example:
%% delete_model_quality_job_definition_request() :: #{
%%   <<"JobDefinitionName">> := string()
%% }
-type delete_model_quality_job_definition_request() :: #{binary() => any()}.

%% Example:
%% stop_labeling_job_request() :: #{
%%   <<"LabelingJobName">> := string()
%% }
-type stop_labeling_job_request() :: #{binary() => any()}.

%% Example:
%% list_model_package_groups_output() :: #{
%%   <<"ModelPackageGroupSummaryList">> => list(model_package_group_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_model_package_groups_output() :: #{binary() => any()}.

%% Example:
%% model_bias_baseline_config() :: #{
%%   <<"BaseliningJobName">> => string(),
%%   <<"ConstraintsResource">> => monitoring_constraints_resource()
%% }
-type model_bias_baseline_config() :: #{binary() => any()}.

%% Example:
%% user_context() :: #{
%%   <<"DomainId">> => string(),
%%   <<"IamIdentity">> => iam_identity(),
%%   <<"UserProfileArn">> => string(),
%%   <<"UserProfileName">> => string()
%% }
-type user_context() :: #{binary() => any()}.

%% Example:
%% delete_model_package_group_input() :: #{
%%   <<"ModelPackageGroupName">> := string()
%% }
-type delete_model_package_group_input() :: #{binary() => any()}.

%% Example:
%% model_dashboard_monitoring_schedule() :: #{
%%   <<"BatchTransformInput">> => batch_transform_input(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EndpointName">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LastMonitoringExecutionSummary">> => monitoring_execution_summary(),
%%   <<"MonitoringAlertSummaries">> => list(monitoring_alert_summary()()),
%%   <<"MonitoringScheduleArn">> => string(),
%%   <<"MonitoringScheduleConfig">> => monitoring_schedule_config(),
%%   <<"MonitoringScheduleName">> => string(),
%%   <<"MonitoringScheduleStatus">> => list(any()),
%%   <<"MonitoringType">> => list(any())
%% }
-type model_dashboard_monitoring_schedule() :: #{binary() => any()}.

%% Example:
%% stop_compilation_job_request() :: #{
%%   <<"CompilationJobName">> := string()
%% }
-type stop_compilation_job_request() :: #{binary() => any()}.

%% Example:
%% tracking_server_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"IsActive">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"MlflowVersion">> => string(),
%%   <<"TrackingServerArn">> => string(),
%%   <<"TrackingServerName">> => string(),
%%   <<"TrackingServerStatus">> => list(any())
%% }
-type tracking_server_summary() :: #{binary() => any()}.

%% Example:
%% get_device_fleet_report_response() :: #{
%%   <<"AgentVersions">> => list(agent_version()()),
%%   <<"Description">> => string(),
%%   <<"DeviceFleetArn">> => string(),
%%   <<"DeviceFleetName">> => string(),
%%   <<"DeviceStats">> => device_stats(),
%%   <<"ModelStats">> => list(edge_model_stat()()),
%%   <<"OutputConfig">> => edge_output_config(),
%%   <<"ReportGenerated">> => non_neg_integer()
%% }
-type get_device_fleet_report_response() :: #{binary() => any()}.

%% Example:
%% transform_job_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"FailureReason">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"TransformEndTime">> => non_neg_integer(),
%%   <<"TransformJobArn">> => string(),
%%   <<"TransformJobName">> => string(),
%%   <<"TransformJobStatus">> => list(any())
%% }
-type transform_job_summary() :: #{binary() => any()}.

%% Example:
%% model_step_metadata() :: #{
%%   <<"Arn">> => string()
%% }
-type model_step_metadata() :: #{binary() => any()}.

%% Example:
%% list_pipeline_execution_steps_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PipelineExecutionArn">> => string(),
%%   <<"SortOrder">> => list(any())
%% }
-type list_pipeline_execution_steps_request() :: #{binary() => any()}.

%% Example:
%% monitoring_job_definition() :: #{
%%   <<"BaselineConfig">> => monitoring_baseline_config(),
%%   <<"Environment">> => map(),
%%   <<"MonitoringAppSpecification">> => monitoring_app_specification(),
%%   <<"MonitoringInputs">> => list(monitoring_input()()),
%%   <<"MonitoringOutputConfig">> => monitoring_output_config(),
%%   <<"MonitoringResources">> => monitoring_resources(),
%%   <<"NetworkConfig">> => network_config(),
%%   <<"RoleArn">> => string(),
%%   <<"StoppingCondition">> => monitoring_stopping_condition()
%% }
-type monitoring_job_definition() :: #{binary() => any()}.

%% Example:
%% create_model_package_output() :: #{
%%   <<"ModelPackageArn">> => string()
%% }
-type create_model_package_output() :: #{binary() => any()}.

%% Example:
%% user_settings() :: #{
%%   <<"AutoMountHomeEFS">> => list(any()),
%%   <<"CanvasAppSettings">> => canvas_app_settings(),
%%   <<"CodeEditorAppSettings">> => code_editor_app_settings(),
%%   <<"CustomFileSystemConfigs">> => list(list()()),
%%   <<"CustomPosixUserConfig">> => custom_posix_user_config(),
%%   <<"DefaultLandingUri">> => string(),
%%   <<"ExecutionRole">> => string(),
%%   <<"JupyterLabAppSettings">> => jupyter_lab_app_settings(),
%%   <<"JupyterServerAppSettings">> => jupyter_server_app_settings(),
%%   <<"KernelGatewayAppSettings">> => kernel_gateway_app_settings(),
%%   <<"RSessionAppSettings">> => r_session_app_settings(),
%%   <<"RStudioServerProAppSettings">> => r_studio_server_pro_app_settings(),
%%   <<"SecurityGroups">> => list(string()()),
%%   <<"SharingSettings">> => sharing_settings(),
%%   <<"SpaceStorageSettings">> => default_space_storage_settings(),
%%   <<"StudioWebPortal">> => list(any()),
%%   <<"StudioWebPortalSettings">> => studio_web_portal_settings(),
%%   <<"TensorBoardAppSettings">> => tensor_board_app_settings()
%% }
-type user_settings() :: #{binary() => any()}.

%% Example:
%% studio_web_portal_settings() :: #{
%%   <<"HiddenAppTypes">> => list(list(any())()),
%%   <<"HiddenInstanceTypes">> => list(list(any())()),
%%   <<"HiddenMlTools">> => list(list(any())()),
%%   <<"HiddenSageMakerImageVersionAliases">> => list(hidden_sage_maker_image()())
%% }
-type studio_web_portal_settings() :: #{binary() => any()}.

%% Example:
%% describe_workteam_request() :: #{
%%   <<"WorkteamName">> := string()
%% }
-type describe_workteam_request() :: #{binary() => any()}.

%% Example:
%% model_package_validation_specification() :: #{
%%   <<"ValidationProfiles">> => list(model_package_validation_profile()()),
%%   <<"ValidationRole">> => string()
%% }
-type model_package_validation_specification() :: #{binary() => any()}.

%% Example:
%% update_endpoint_output() :: #{
%%   <<"EndpointArn">> => string()
%% }
-type update_endpoint_output() :: #{binary() => any()}.

%% Example:
%% channel_specification() :: #{
%%   <<"Description">> => string(),
%%   <<"IsRequired">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"SupportedCompressionTypes">> => list(list(any())()),
%%   <<"SupportedContentTypes">> => list(string()()),
%%   <<"SupportedInputModes">> => list(list(any())())
%% }
-type channel_specification() :: #{binary() => any()}.

%% Example:
%% metrics_source() :: #{
%%   <<"ContentDigest">> => string(),
%%   <<"ContentType">> => string(),
%%   <<"S3Uri">> => string()
%% }
-type metrics_source() :: #{binary() => any()}.

%% Example:
%% endpoint_config_step_metadata() :: #{
%%   <<"Arn">> => string()
%% }
-type endpoint_config_step_metadata() :: #{binary() => any()}.

%% Example:
%% trial_component_summary() :: #{
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DisplayName">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => trial_component_status(),
%%   <<"TrialComponentArn">> => string(),
%%   <<"TrialComponentName">> => string(),
%%   <<"TrialComponentSource">> => trial_component_source()
%% }
-type trial_component_summary() :: #{binary() => any()}.

%% Example:
%% scheduler_config() :: #{
%%   <<"FairShare">> => list(any()),
%%   <<"PriorityClasses">> => list(priority_class()())
%% }
-type scheduler_config() :: #{binary() => any()}.

%% Example:
%% domain_details() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DomainArn">> => string(),
%%   <<"DomainId">> => string(),
%%   <<"DomainName">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"Url">> => string()
%% }
-type domain_details() :: #{binary() => any()}.

%% Example:
%% model_explainability_app_specification() :: #{
%%   <<"ConfigUri">> => string(),
%%   <<"Environment">> => map(),
%%   <<"ImageUri">> => string()
%% }
-type model_explainability_app_specification() :: #{binary() => any()}.

%% Example:
%% list_edge_packaging_jobs_response() :: #{
%%   <<"EdgePackagingJobSummaries">> => list(edge_packaging_job_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_edge_packaging_jobs_response() :: #{binary() => any()}.

%% Example:
%% list_notebook_instance_lifecycle_configs_input() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_notebook_instance_lifecycle_configs_input() :: #{binary() => any()}.

%% Example:
%% create_optimization_job_response() :: #{
%%   <<"OptimizationJobArn">> => string()
%% }
-type create_optimization_job_response() :: #{binary() => any()}.

%% Example:
%% create_inference_recommendations_job_request() :: #{
%%   <<"InputConfig">> := recommendation_job_input_config(),
%%   <<"JobDescription">> => string(),
%%   <<"JobName">> := string(),
%%   <<"JobType">> := list(any()),
%%   <<"OutputConfig">> => recommendation_job_output_config(),
%%   <<"RoleArn">> := string(),
%%   <<"StoppingConditions">> => recommendation_job_stopping_conditions(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_inference_recommendations_job_request() :: #{binary() => any()}.

%% Example:
%% holiday_config_attributes() :: #{
%%   <<"CountryCode">> => string()
%% }
-type holiday_config_attributes() :: #{binary() => any()}.

%% Example:
%% create_model_quality_job_definition_response() :: #{
%%   <<"JobDefinitionArn">> => string()
%% }
-type create_model_quality_job_definition_response() :: #{binary() => any()}.

%% Example:
%% monitoring_schedule() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EndpointName">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LastMonitoringExecutionSummary">> => monitoring_execution_summary(),
%%   <<"MonitoringScheduleArn">> => string(),
%%   <<"MonitoringScheduleConfig">> => monitoring_schedule_config(),
%%   <<"MonitoringScheduleName">> => string(),
%%   <<"MonitoringScheduleStatus">> => list(any()),
%%   <<"MonitoringType">> => list(any()),
%%   <<"Tags">> => list(tag()())
%% }
-type monitoring_schedule() :: #{binary() => any()}.

%% Example:
%% delete_monitoring_schedule_request() :: #{
%%   <<"MonitoringScheduleName">> := string()
%% }
-type delete_monitoring_schedule_request() :: #{binary() => any()}.

%% Example:
%% start_pipeline_execution_response() :: #{
%%   <<"PipelineExecutionArn">> => string()
%% }
-type start_pipeline_execution_response() :: #{binary() => any()}.

%% Example:
%% model_access_config() :: #{
%%   <<"AcceptEula">> => boolean()
%% }
-type model_access_config() :: #{binary() => any()}.

%% Example:
%% describe_user_profile_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DomainId">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"HomeEfsFileSystemUid">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"SingleSignOnUserIdentifier">> => string(),
%%   <<"SingleSignOnUserValue">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"UserProfileArn">> => string(),
%%   <<"UserProfileName">> => string(),
%%   <<"UserSettings">> => user_settings()
%% }
-type describe_user_profile_response() :: #{binary() => any()}.

%% Example:
%% describe_compute_quota_response() :: #{
%%   <<"ActivationState">> => list(any()),
%%   <<"ClusterArn">> => string(),
%%   <<"ComputeQuotaArn">> => string(),
%%   <<"ComputeQuotaConfig">> => compute_quota_config(),
%%   <<"ComputeQuotaId">> => string(),
%%   <<"ComputeQuotaTarget">> => compute_quota_target(),
%%   <<"ComputeQuotaVersion">> => integer(),
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type describe_compute_quota_response() :: #{binary() => any()}.

%% Example:
%% transform_input() :: #{
%%   <<"CompressionType">> => list(any()),
%%   <<"ContentType">> => string(),
%%   <<"DataSource">> => transform_data_source(),
%%   <<"SplitType">> => list(any())
%% }
-type transform_input() :: #{binary() => any()}.

%% Example:
%% trial_component_metric_summary() :: #{
%%   <<"Avg">> => float(),
%%   <<"Count">> => integer(),
%%   <<"Last">> => float(),
%%   <<"Max">> => float(),
%%   <<"MetricName">> => string(),
%%   <<"Min">> => float(),
%%   <<"SourceArn">> => string(),
%%   <<"StdDev">> => float(),
%%   <<"TimeStamp">> => non_neg_integer()
%% }
-type trial_component_metric_summary() :: #{binary() => any()}.

%% Example:
%% device() :: #{
%%   <<"Description">> => string(),
%%   <<"DeviceName">> => string(),
%%   <<"IotThingName">> => string()
%% }
-type device() :: #{binary() => any()}.

%% Example:
%% update_cluster_scheduler_config_request() :: #{
%%   <<"ClusterSchedulerConfigId">> := string(),
%%   <<"Description">> => string(),
%%   <<"SchedulerConfig">> => scheduler_config(),
%%   <<"TargetVersion">> := integer()
%% }
-type update_cluster_scheduler_config_request() :: #{binary() => any()}.

%% Example:
%% update_workteam_response() :: #{
%%   <<"Workteam">> => workteam()
%% }
-type update_workteam_response() :: #{binary() => any()}.

%% Example:
%% desired_weight_and_capacity() :: #{
%%   <<"DesiredInstanceCount">> => integer(),
%%   <<"DesiredWeight">> => float(),
%%   <<"ServerlessUpdateConfig">> => production_variant_serverless_update_config(),
%%   <<"VariantName">> => string()
%% }
-type desired_weight_and_capacity() :: #{binary() => any()}.

%% Example:
%% reserved_capacity_summary() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"DurationHours">> => float(),
%%   <<"DurationMinutes">> => float(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"InstanceType">> => list(any()),
%%   <<"ReservedCapacityArn">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"TotalInstanceCount">> => integer()
%% }
-type reserved_capacity_summary() :: #{binary() => any()}.

%% Example:
%% parent() :: #{
%%   <<"ExperimentName">> => string(),
%%   <<"TrialName">> => string()
%% }
-type parent() :: #{binary() => any()}.

%% Example:
%% text_classification_job_config() :: #{
%%   <<"CompletionCriteria">> => auto_ml_job_completion_criteria(),
%%   <<"ContentColumn">> => string(),
%%   <<"TargetLabelColumn">> => string()
%% }
-type text_classification_job_config() :: #{binary() => any()}.

%% Example:
%% update_hub_content_response() :: #{
%%   <<"HubArn">> => string(),
%%   <<"HubContentArn">> => string()
%% }
-type update_hub_content_response() :: #{binary() => any()}.

%% Example:
%% final_hyper_parameter_tuning_job_objective_metric() :: #{
%%   <<"MetricName">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Value">> => float()
%% }
-type final_hyper_parameter_tuning_job_objective_metric() :: #{binary() => any()}.

%% Example:
%% describe_cluster_scheduler_config_response() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterSchedulerConfigArn">> => string(),
%%   <<"ClusterSchedulerConfigId">> => string(),
%%   <<"ClusterSchedulerConfigVersion">> => integer(),
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"FailureReason">> => string(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"SchedulerConfig">> => scheduler_config(),
%%   <<"Status">> => list(any())
%% }
-type describe_cluster_scheduler_config_response() :: #{binary() => any()}.

%% Example:
%% describe_pipeline_request() :: #{
%%   <<"PipelineName">> := string()
%% }
-type describe_pipeline_request() :: #{binary() => any()}.

%% Example:
%% data_source() :: #{
%%   <<"FileSystemDataSource">> => file_system_data_source(),
%%   <<"S3DataSource">> => s3_data_source()
%% }
-type data_source() :: #{binary() => any()}.

%% Example:
%% create_training_job_response() :: #{
%%   <<"TrainingJobArn">> => string()
%% }
-type create_training_job_response() :: #{binary() => any()}.

%% Example:
%% delete_model_bias_job_definition_request() :: #{
%%   <<"JobDefinitionName">> := string()
%% }
-type delete_model_bias_job_definition_request() :: #{binary() => any()}.

%% Example:
%% list_model_cards_response() :: #{
%%   <<"ModelCardSummaries">> => list(model_card_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_model_cards_response() :: #{binary() => any()}.

%% Example:
%% update_context_response() :: #{
%%   <<"ContextArn">> => string()
%% }
-type update_context_response() :: #{binary() => any()}.

%% Example:
%% describe_device_fleet_response() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DeviceFleetArn">> => string(),
%%   <<"DeviceFleetName">> => string(),
%%   <<"IotRoleAlias">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"OutputConfig">> => edge_output_config(),
%%   <<"RoleArn">> => string()
%% }
-type describe_device_fleet_response() :: #{binary() => any()}.

%% Example:
%% list_trials_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TrialSummaries">> => list(trial_summary()())
%% }
-type list_trials_response() :: #{binary() => any()}.

%% Example:
%% labeling_job_sns_data_source() :: #{
%%   <<"SnsTopicArn">> => string()
%% }
-type labeling_job_sns_data_source() :: #{binary() => any()}.

%% Example:
%% list_transform_jobs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TransformJobSummaries">> => list(transform_job_summary()())
%% }
-type list_transform_jobs_response() :: #{binary() => any()}.

%% Example:
%% delete_hub_content_request() :: #{
%%   <<"HubContentName">> := string(),
%%   <<"HubContentType">> := list(any()),
%%   <<"HubContentVersion">> := string(),
%%   <<"HubName">> := string()
%% }
-type delete_hub_content_request() :: #{binary() => any()}.

%% Example:
%% space_jupyter_lab_app_settings() :: #{
%%   <<"AppLifecycleManagement">> => space_app_lifecycle_management(),
%%   <<"CodeRepositories">> => list(code_repository()()),
%%   <<"DefaultResourceSpec">> => resource_spec()
%% }
-type space_jupyter_lab_app_settings() :: #{binary() => any()}.

%% Example:
%% list_flow_definitions_response() :: #{
%%   <<"FlowDefinitionSummaries">> => list(flow_definition_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_flow_definitions_response() :: #{binary() => any()}.

%% Example:
%% edge() :: #{
%%   <<"AssociationType">> => list(any()),
%%   <<"DestinationArn">> => string(),
%%   <<"SourceArn">> => string()
%% }
-type edge() :: #{binary() => any()}.

%% Example:
%% model_package_container_definition() :: #{
%%   <<"AdditionalS3DataSource">> => additional_s3_data_source(),
%%   <<"ContainerHostname">> => string(),
%%   <<"Environment">> => map(),
%%   <<"Framework">> => string(),
%%   <<"FrameworkVersion">> => string(),
%%   <<"Image">> => string(),
%%   <<"ImageDigest">> => string(),
%%   <<"ModelDataETag">> => string(),
%%   <<"ModelDataSource">> => model_data_source(),
%%   <<"ModelDataUrl">> => string(),
%%   <<"ModelInput">> => model_input(),
%%   <<"NearestModelName">> => string(),
%%   <<"ProductId">> => string()
%% }
-type model_package_container_definition() :: #{binary() => any()}.

%% Example:
%% monitoring_constraints_resource() :: #{
%%   <<"S3Uri">> => string()
%% }
-type monitoring_constraints_resource() :: #{binary() => any()}.

%% Example:
%% experiment() :: #{
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"ExperimentArn">> => string(),
%%   <<"ExperimentName">> => string(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Source">> => experiment_source(),
%%   <<"Tags">> => list(tag()())
%% }
-type experiment() :: #{binary() => any()}.

%% Example:
%% space_idle_settings() :: #{
%%   <<"IdleTimeoutInMinutes">> => integer()
%% }
-type space_idle_settings() :: #{binary() => any()}.

%% Example:
%% ownership_settings() :: #{
%%   <<"OwnerUserProfileName">> => string()
%% }
-type ownership_settings() :: #{binary() => any()}.

%% Example:
%% default_space_settings() :: #{
%%   <<"CustomFileSystemConfigs">> => list(list()()),
%%   <<"CustomPosixUserConfig">> => custom_posix_user_config(),
%%   <<"ExecutionRole">> => string(),
%%   <<"JupyterLabAppSettings">> => jupyter_lab_app_settings(),
%%   <<"JupyterServerAppSettings">> => jupyter_server_app_settings(),
%%   <<"KernelGatewayAppSettings">> => kernel_gateway_app_settings(),
%%   <<"SecurityGroups">> => list(string()()),
%%   <<"SpaceStorageSettings">> => default_space_storage_settings()
%% }
-type default_space_settings() :: #{binary() => any()}.

%% Example:
%% stop_monitoring_schedule_request() :: #{
%%   <<"MonitoringScheduleName">> := string()
%% }
-type stop_monitoring_schedule_request() :: #{binary() => any()}.

%% Example:
%% create_app_response() :: #{
%%   <<"AppArn">> => string()
%% }
-type create_app_response() :: #{binary() => any()}.

%% Example:
%% create_model_card_export_job_request() :: #{
%%   <<"ModelCardExportJobName">> := string(),
%%   <<"ModelCardName">> := string(),
%%   <<"ModelCardVersion">> => integer(),
%%   <<"OutputConfig">> := model_card_export_output_config()
%% }
-type create_model_card_export_job_request() :: #{binary() => any()}.

%% Example:
%% selected_step() :: #{
%%   <<"StepName">> => string()
%% }
-type selected_step() :: #{binary() => any()}.

%% Example:
%% update_trial_response() :: #{
%%   <<"TrialArn">> => string()
%% }
-type update_trial_response() :: #{binary() => any()}.

%% Example:
%% list_app_image_configs_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"ModifiedTimeAfter">> => non_neg_integer(),
%%   <<"ModifiedTimeBefore">> => non_neg_integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_app_image_configs_request() :: #{binary() => any()}.

%% Example:
%% update_monitoring_alert_request() :: #{
%%   <<"DatapointsToAlert">> := integer(),
%%   <<"EvaluationPeriod">> := integer(),
%%   <<"MonitoringAlertName">> := string(),
%%   <<"MonitoringScheduleName">> := string()
%% }
-type update_monitoring_alert_request() :: #{binary() => any()}.

%% Example:
%% describe_trial_component_response() :: #{
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DisplayName">> => string(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"InputArtifacts">> => map(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"LineageGroupArn">> => string(),
%%   <<"MetadataProperties">> => metadata_properties(),
%%   <<"Metrics">> => list(trial_component_metric_summary()()),
%%   <<"OutputArtifacts">> => map(),
%%   <<"Parameters">> => map(),
%%   <<"Source">> => trial_component_source(),
%%   <<"Sources">> => list(trial_component_source()()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => trial_component_status(),
%%   <<"TrialComponentArn">> => string(),
%%   <<"TrialComponentName">> => string()
%% }
-type describe_trial_component_response() :: #{binary() => any()}.

%% Example:
%% resource_limit_exceeded() :: #{
%%   <<"Message">> => string()
%% }
-type resource_limit_exceeded() :: #{binary() => any()}.

%% Example:
%% list_monitoring_executions_response() :: #{
%%   <<"MonitoringExecutionSummaries">> => list(monitoring_execution_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_monitoring_executions_response() :: #{binary() => any()}.

%% Example:
%% hyper_parameter_tuning_job_completion_details() :: #{
%%   <<"ConvergenceDetectedTime">> => non_neg_integer(),
%%   <<"NumberOfTrainingJobsObjectiveNotImproving">> => integer()
%% }
-type hyper_parameter_tuning_job_completion_details() :: #{binary() => any()}.

%% Example:
%% list_cluster_scheduler_configs_request() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"CreatedAfter">> => non_neg_integer(),
%%   <<"CreatedBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"Status">> => list(any())
%% }
-type list_cluster_scheduler_configs_request() :: #{binary() => any()}.

%% Example:
%% model_data_source() :: #{
%%   <<"S3DataSource">> => s3_model_data_source()
%% }
-type model_data_source() :: #{binary() => any()}.

%% Example:
%% inference_component_specification() :: #{
%%   <<"BaseInferenceComponentName">> => string(),
%%   <<"ComputeResourceRequirements">> => inference_component_compute_resource_requirements(),
%%   <<"Container">> => inference_component_container_specification(),
%%   <<"ModelName">> => string(),
%%   <<"StartupParameters">> => inference_component_startup_parameters()
%% }
-type inference_component_specification() :: #{binary() => any()}.

%% Example:
%% auto_rollback_config() :: #{
%%   <<"Alarms">> => list(alarm()())
%% }
-type auto_rollback_config() :: #{binary() => any()}.

%% Example:
%% list_flow_definitions_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortOrder">> => list(any())
%% }
-type list_flow_definitions_request() :: #{binary() => any()}.

%% Example:
%% partner_app_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Type">> => list(any())
%% }
-type partner_app_summary() :: #{binary() => any()}.

%% Example:
%% drift_check_baselines() :: #{
%%   <<"Bias">> => drift_check_bias(),
%%   <<"Explainability">> => drift_check_explainability(),
%%   <<"ModelDataQuality">> => drift_check_model_data_quality(),
%%   <<"ModelQuality">> => drift_check_model_quality()
%% }
-type drift_check_baselines() :: #{binary() => any()}.

%% Example:
%% create_notebook_instance_output() :: #{
%%   <<"NotebookInstanceArn">> => string()
%% }
-type create_notebook_instance_output() :: #{binary() => any()}.

%% Example:
%% list_hyper_parameter_tuning_jobs_response() :: #{
%%   <<"HyperParameterTuningJobSummaries">> => list(hyper_parameter_tuning_job_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_hyper_parameter_tuning_jobs_response() :: #{binary() => any()}.

%% Example:
%% monitoring_schedule_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EndpointName">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"MonitoringJobDefinitionName">> => string(),
%%   <<"MonitoringScheduleArn">> => string(),
%%   <<"MonitoringScheduleName">> => string(),
%%   <<"MonitoringScheduleStatus">> => list(any()),
%%   <<"MonitoringType">> => list(any())
%% }
-type monitoring_schedule_summary() :: #{binary() => any()}.

%% Example:
%% cluster_instance_placement() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"AvailabilityZoneId">> => string()
%% }
-type cluster_instance_placement() :: #{binary() => any()}.

%% Example:
%% cluster_scheduler_config_summary() :: #{
%%   <<"ClusterArn">> => string(),
%%   <<"ClusterSchedulerConfigArn">> => string(),
%%   <<"ClusterSchedulerConfigId">> => string(),
%%   <<"ClusterSchedulerConfigVersion">> => integer(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any())
%% }
-type cluster_scheduler_config_summary() :: #{binary() => any()}.

%% Example:
%% list_model_packages_output() :: #{
%%   <<"ModelPackageSummaryList">> => list(model_package_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_model_packages_output() :: #{binary() => any()}.

%% Example:
%% resource_catalog() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"ResourceCatalogArn">> => string(),
%%   <<"ResourceCatalogName">> => string()
%% }
-type resource_catalog() :: #{binary() => any()}.

%% Example:
%% processing_output_config() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"Outputs">> => list(processing_output()())
%% }
-type processing_output_config() :: #{binary() => any()}.

%% Example:
%% production_variant_managed_instance_scaling() :: #{
%%   <<"MaxInstanceCount">> => integer(),
%%   <<"MinInstanceCount">> => integer(),
%%   <<"Status">> => list(any())
%% }
-type production_variant_managed_instance_scaling() :: #{binary() => any()}.

%% Example:
%% describe_workforce_response() :: #{
%%   <<"Workforce">> => workforce()
%% }
-type describe_workforce_response() :: #{binary() => any()}.

%% Example:
%% search_record() :: #{
%%   <<"Endpoint">> => endpoint(),
%%   <<"Experiment">> => experiment(),
%%   <<"FeatureGroup">> => feature_group(),
%%   <<"FeatureMetadata">> => feature_metadata(),
%%   <<"HyperParameterTuningJob">> => hyper_parameter_tuning_job_search_entity(),
%%   <<"Model">> => model_dashboard_model(),
%%   <<"ModelCard">> => model_card(),
%%   <<"ModelPackage">> => model_package(),
%%   <<"ModelPackageGroup">> => model_package_group(),
%%   <<"Pipeline">> => pipeline(),
%%   <<"PipelineExecution">> => pipeline_execution(),
%%   <<"Project">> => project(),
%%   <<"TrainingJob">> => training_job(),
%%   <<"Trial">> => trial(),
%%   <<"TrialComponent">> => trial_component()
%% }
-type search_record() :: #{binary() => any()}.

%% Example:
%% trial() :: #{
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DisplayName">> => string(),
%%   <<"ExperimentName">> => string(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"MetadataProperties">> => metadata_properties(),
%%   <<"Source">> => trial_source(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TrialArn">> => string(),
%%   <<"TrialComponentSummaries">> => list(trial_component_simple_summary()()),
%%   <<"TrialName">> => string()
%% }
-type trial() :: #{binary() => any()}.

%% Example:
%% processing_cluster_config() :: #{
%%   <<"InstanceCount">> => integer(),
%%   <<"InstanceType">> => list(any()),
%%   <<"VolumeKmsKeyId">> => string(),
%%   <<"VolumeSizeInGB">> => integer()
%% }
-type processing_cluster_config() :: #{binary() => any()}.

%% Example:
%% device_stats() :: #{
%%   <<"ConnectedDeviceCount">> => float(),
%%   <<"RegisteredDeviceCount">> => float()
%% }
-type device_stats() :: #{binary() => any()}.

%% Example:
%% describe_model_input() :: #{
%%   <<"ModelName">> := string()
%% }
-type describe_model_input() :: #{binary() => any()}.

%% Example:
%% environment_parameter() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string(),
%%   <<"ValueType">> => string()
%% }
-type environment_parameter() :: #{binary() => any()}.

%% Example:
%% model_dashboard_endpoint() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EndpointArn">> => string(),
%%   <<"EndpointName">> => string(),
%%   <<"EndpointStatus">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type model_dashboard_endpoint() :: #{binary() => any()}.

%% Example:
%% create_cluster_scheduler_config_request() :: #{
%%   <<"ClusterArn">> := string(),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"SchedulerConfig">> := scheduler_config(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_cluster_scheduler_config_request() :: #{binary() => any()}.

%% Example:
%% delete_device_fleet_request() :: #{
%%   <<"DeviceFleetName">> := string()
%% }
-type delete_device_fleet_request() :: #{binary() => any()}.

%% Example:
%% jupyter_lab_app_settings() :: #{
%%   <<"AppLifecycleManagement">> => app_lifecycle_management(),
%%   <<"BuiltInLifecycleConfigArn">> => string(),
%%   <<"CodeRepositories">> => list(code_repository()()),
%%   <<"CustomImages">> => list(custom_image()()),
%%   <<"DefaultResourceSpec">> => resource_spec(),
%%   <<"EmrSettings">> => emr_settings(),
%%   <<"LifecycleConfigArns">> => list(string()())
%% }
-type jupyter_lab_app_settings() :: #{binary() => any()}.

%% Example:
%% update_experiment_response() :: #{
%%   <<"ExperimentArn">> => string()
%% }
-type update_experiment_response() :: #{binary() => any()}.

%% Example:
%% list_algorithms_output() :: #{
%%   <<"AlgorithmSummaryList">> => list(algorithm_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_algorithms_output() :: #{binary() => any()}.

%% Example:
%% delete_notebook_instance_lifecycle_config_input() :: #{
%%   <<"NotebookInstanceLifecycleConfigName">> := string()
%% }
-type delete_notebook_instance_lifecycle_config_input() :: #{binary() => any()}.

%% Example:
%% human_loop_config() :: #{
%%   <<"HumanTaskUiArn">> => string(),
%%   <<"PublicWorkforceTaskPrice">> => public_workforce_task_price(),
%%   <<"TaskAvailabilityLifetimeInSeconds">> => integer(),
%%   <<"TaskCount">> => integer(),
%%   <<"TaskDescription">> => string(),
%%   <<"TaskKeywords">> => list(string()()),
%%   <<"TaskTimeLimitInSeconds">> => integer(),
%%   <<"TaskTitle">> => string(),
%%   <<"WorkteamArn">> => string()
%% }
-type human_loop_config() :: #{binary() => any()}.

%% Example:
%% monitoring_baseline_config() :: #{
%%   <<"BaseliningJobName">> => string(),
%%   <<"ConstraintsResource">> => monitoring_constraints_resource(),
%%   <<"StatisticsResource">> => monitoring_statistics_resource()
%% }
-type monitoring_baseline_config() :: #{binary() => any()}.

%% Example:
%% model() :: #{
%%   <<"Containers">> => list(container_definition()()),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DeploymentRecommendation">> => deployment_recommendation(),
%%   <<"EnableNetworkIsolation">> => boolean(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"InferenceExecutionConfig">> => inference_execution_config(),
%%   <<"ModelArn">> => string(),
%%   <<"ModelName">> => string(),
%%   <<"PrimaryContainer">> => container_definition(),
%%   <<"Tags">> => list(tag()()),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type model() :: #{binary() => any()}.

%% Example:
%% list_compilation_jobs_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"LastModifiedTimeAfter">> => non_neg_integer(),
%%   <<"LastModifiedTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NameContains">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"StatusEquals">> => list(any())
%% }
-type list_compilation_jobs_request() :: #{binary() => any()}.

%% Example:
%% transform_output() :: #{
%%   <<"Accept">> => string(),
%%   <<"AssembleWith">> => list(any()),
%%   <<"KmsKeyId">> => string(),
%%   <<"S3OutputPath">> => string()
%% }
-type transform_output() :: #{binary() => any()}.

%% Example:
%% describe_model_package_output() :: #{
%%   <<"AdditionalInferenceSpecifications">> => list(additional_inference_specification_definition()()),
%%   <<"ApprovalDescription">> => string(),
%%   <<"CertifyForMarketplace">> => boolean(),
%%   <<"CreatedBy">> => user_context(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"CustomerMetadataProperties">> => map(),
%%   <<"Domain">> => string(),
%%   <<"DriftCheckBaselines">> => drift_check_baselines(),
%%   <<"InferenceSpecification">> => inference_specification(),
%%   <<"LastModifiedBy">> => user_context(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"MetadataProperties">> => metadata_properties(),
%%   <<"ModelApprovalStatus">> => list(any()),
%%   <<"ModelCard">> => model_package_model_card(),
%%   <<"ModelLifeCycle">> => model_life_cycle(),
%%   <<"ModelMetrics">> => model_metrics(),
%%   <<"ModelPackageArn">> => string(),
%%   <<"ModelPackageDescription">> => string(),
%%   <<"ModelPackageGroupName">> => string(),
%%   <<"ModelPackageName">> => string(),
%%   <<"ModelPackageStatus">> => list(any()),
%%   <<"ModelPackageStatusDetails">> => model_package_status_details(),
%%   <<"ModelPackageVersion">> => integer(),
%%   <<"SamplePayloadUrl">> => string(),
%%   <<"SecurityConfig">> => model_package_security_config(),
%%   <<"SkipModelValidation">> => list(any()),
%%   <<"SourceAlgorithmSpecification">> => source_algorithm_specification(),
%%   <<"SourceUri">> => string(),
%%   <<"Task">> => string(),
%%   <<"ValidationSpecification">> => model_package_validation_specification()
%% }
-type describe_model_package_output() :: #{binary() => any()}.

%% Example:
%% list_tags_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type list_tags_output() :: #{binary() => any()}.

%% Example:
%% list_pipeline_parameters_for_execution_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"PipelineParameters">> => list(parameter()())
%% }
-type list_pipeline_parameters_for_execution_response() :: #{binary() => any()}.

%% Example:
%% workspace_settings() :: #{
%%   <<"S3ArtifactPath">> => string(),
%%   <<"S3KmsKeyId">> => string()
%% }
-type workspace_settings() :: #{binary() => any()}.

%% Example:
%% space_code_editor_app_settings() :: #{
%%   <<"AppLifecycleManagement">> => space_app_lifecycle_management(),
%%   <<"DefaultResourceSpec">> => resource_spec()
%% }
-type space_code_editor_app_settings() :: #{binary() => any()}.

%% Example:
%% update_hub_content_reference_response() :: #{
%%   <<"HubArn">> => string(),
%%   <<"HubContentArn">> => string()
%% }
-type update_hub_content_reference_response() :: #{binary() => any()}.

%% Example:
%% autotune() :: #{
%%   <<"Mode">> => list(any())
%% }
-type autotune() :: #{binary() => any()}.

%% Example:
%% batch_describe_model_package_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"InferenceSpecification">> => inference_specification(),
%%   <<"ModelApprovalStatus">> => list(any()),
%%   <<"ModelPackageArn">> => string(),
%%   <<"ModelPackageDescription">> => string(),
%%   <<"ModelPackageGroupName">> => string(),
%%   <<"ModelPackageStatus">> => list(any()),
%%   <<"ModelPackageVersion">> => integer()
%% }
-type batch_describe_model_package_summary() :: #{binary() => any()}.

%% Example:
%% list_processing_jobs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ProcessingJobSummaries">> => list(processing_job_summary()())
%% }
-type list_processing_jobs_response() :: #{binary() => any()}.

%% Example:
%% describe_notebook_instance_lifecycle_config_output() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"NotebookInstanceLifecycleConfigArn">> => string(),
%%   <<"NotebookInstanceLifecycleConfigName">> => string(),
%%   <<"OnCreate">> => list(notebook_instance_lifecycle_hook()()),
%%   <<"OnStart">> => list(notebook_instance_lifecycle_hook()())
%% }
-type describe_notebook_instance_lifecycle_config_output() :: #{binary() => any()}.

%% Example:
%% hyper_parameter_tuning_job_config() :: #{
%%   <<"HyperParameterTuningJobObjective">> => hyper_parameter_tuning_job_objective(),
%%   <<"ParameterRanges">> => parameter_ranges(),
%%   <<"RandomSeed">> => integer(),
%%   <<"ResourceLimits">> => resource_limits(),
%%   <<"Strategy">> => list(any()),
%%   <<"StrategyConfig">> => hyper_parameter_tuning_job_strategy_config(),
%%   <<"TrainingJobEarlyStoppingType">> => list(any()),
%%   <<"TuningJobCompletionCriteria">> => tuning_job_completion_criteria()
%% }
-type hyper_parameter_tuning_job_config() :: #{binary() => any()}.

%% Example:
%% emr_serverless_settings() :: #{
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type emr_serverless_settings() :: #{binary() => any()}.

%% Example:
%% create_context_response() :: #{
%%   <<"ContextArn">> => string()
%% }
-type create_context_response() :: #{binary() => any()}.

%% Example:
%% describe_compilation_job_request() :: #{
%%   <<"CompilationJobName">> := string()
%% }
-type describe_compilation_job_request() :: #{binary() => any()}.

%% Example:
%% auto_ml_job_completion_criteria() :: #{
%%   <<"MaxAutoMLJobRuntimeInSeconds">> => integer(),
%%   <<"MaxCandidates">> => integer(),
%%   <<"MaxRuntimePerTrainingJobInSeconds">> => integer()
%% }
-type auto_ml_job_completion_criteria() :: #{binary() => any()}.

%% Example:
%% file_source() :: #{
%%   <<"ContentDigest">> => string(),
%%   <<"ContentType">> => string(),
%%   <<"S3Uri">> => string()
%% }
-type file_source() :: #{binary() => any()}.

%% Example:
%% create_device_fleet_request() :: #{
%%   <<"Description">> => string(),
%%   <<"DeviceFleetName">> := string(),
%%   <<"EnableIotRoleAlias">> => boolean(),
%%   <<"OutputConfig">> := edge_output_config(),
%%   <<"RoleArn">> => string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_device_fleet_request() :: #{binary() => any()}.

%% Example:
%% delete_inference_component_input() :: #{
%%   <<"InferenceComponentName">> := string()
%% }
-type delete_inference_component_input() :: #{binary() => any()}.

%% Example:
%% update_image_version_request() :: #{
%%   <<"Alias">> => string(),
%%   <<"AliasesToAdd">> => list(string()()),
%%   <<"AliasesToDelete">> => list(string()()),
%%   <<"Horovod">> => boolean(),
%%   <<"ImageName">> := string(),
%%   <<"JobType">> => list(any()),
%%   <<"MLFramework">> => string(),
%%   <<"Processor">> => list(any()),
%%   <<"ProgrammingLang">> => string(),
%%   <<"ReleaseNotes">> => string(),
%%   <<"VendorGuidance">> => list(any()),
%%   <<"Version">> => integer()
%% }
-type update_image_version_request() :: #{binary() => any()}.

%% Example:
%% describe_partner_app_response() :: #{
%%   <<"ApplicationConfig">> => partner_app_config(),
%%   <<"Arn">> => string(),
%%   <<"AuthType">> => list(any()),
%%   <<"BaseUrl">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"EnableIamSessionBasedIdentity">> => boolean(),
%%   <<"Error">> => error_info(),
%%   <<"ExecutionRoleArn">> => string(),
%%   <<"MaintenanceConfig">> => partner_app_maintenance_config(),
%%   <<"Name">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"Tier">> => string(),
%%   <<"Type">> => list(any()),
%%   <<"Version">> => string()
%% }
-type describe_partner_app_response() :: #{binary() => any()}.

%% Example:
%% list_trials_request() :: #{
%%   <<"CreatedAfter">> => non_neg_integer(),
%%   <<"CreatedBefore">> => non_neg_integer(),
%%   <<"ExperimentName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"TrialComponentName">> => string()
%% }
-type list_trials_request() :: #{binary() => any()}.

%% Example:
%% cluster_instance_group_details() :: #{
%%   <<"CurrentCount">> => integer(),
%%   <<"ExecutionRole">> => string(),
%%   <<"InstanceGroupName">> => string(),
%%   <<"InstanceStorageConfigs">> => list(list()()),
%%   <<"InstanceType">> => list(any()),
%%   <<"LifeCycleConfig">> => cluster_life_cycle_config(),
%%   <<"OnStartDeepHealthChecks">> => list(list(any())()),
%%   <<"OverrideVpcConfig">> => vpc_config(),
%%   <<"Status">> => list(any()),
%%   <<"TargetCount">> => integer(),
%%   <<"ThreadsPerCore">> => integer(),
%%   <<"TrainingPlanArn">> => string(),
%%   <<"TrainingPlanStatus">> => string()
%% }
-type cluster_instance_group_details() :: #{binary() => any()}.

%% Example:
%% notebook_instance_lifecycle_hook() :: #{
%%   <<"Content">> => string()
%% }
-type notebook_instance_lifecycle_hook() :: #{binary() => any()}.

%% Example:
%% model_quantization_config() :: #{
%%   <<"Image">> => string(),
%%   <<"OverrideEnvironment">> => map()
%% }
-type model_quantization_config() :: #{binary() => any()}.

%% Example:
%% condition_step_metadata() :: #{
%%   <<"Outcome">> => list(any())
%% }
-type condition_step_metadata() :: #{binary() => any()}.

%% Example:
%% code_editor_app_settings() :: #{
%%   <<"AppLifecycleManagement">> => app_lifecycle_management(),
%%   <<"BuiltInLifecycleConfigArn">> => string(),
%%   <<"CustomImages">> => list(custom_image()()),
%%   <<"DefaultResourceSpec">> => resource_spec(),
%%   <<"LifecycleConfigArns">> => list(string()())
%% }
-type code_editor_app_settings() :: #{binary() => any()}.

%% Example:
%% hyper_parameter_tuning_instance_config() :: #{
%%   <<"InstanceCount">> => integer(),
%%   <<"InstanceType">> => list(any()),
%%   <<"VolumeSizeInGB">> => integer()
%% }
-type hyper_parameter_tuning_instance_config() :: #{binary() => any()}.

%% Example:
%% model_dashboard_model() :: #{
%%   <<"Endpoints">> => list(model_dashboard_endpoint()()),
%%   <<"LastBatchTransformJob">> => transform_job(),
%%   <<"Model">> => model(),
%%   <<"ModelCard">> => model_dashboard_model_card(),
%%   <<"MonitoringSchedules">> => list(model_dashboard_monitoring_schedule()())
%% }
-type model_dashboard_model() :: #{binary() => any()}.

%% Example:
%% workforce_vpc_config_request() :: #{
%%   <<"SecurityGroupIds">> => list(string()()),
%%   <<"Subnets">> => list(string()()),
%%   <<"VpcId">> => string()
%% }
-type workforce_vpc_config_request() :: #{binary() => any()}.

%% Example:
%% stop_auto_ml_job_request() :: #{
%%   <<"AutoMLJobName">> := string()
%% }
-type stop_auto_ml_job_request() :: #{binary() => any()}.

%% Example:
%% tensor_board_app_settings() :: #{
%%   <<"DefaultResourceSpec">> => resource_spec()
%% }
-type tensor_board_app_settings() :: #{binary() => any()}.

%% Example:
%% associate_trial_component_request() :: #{
%%   <<"TrialComponentName">> := string(),
%%   <<"TrialName">> := string()
%% }
-type associate_trial_component_request() :: #{binary() => any()}.

%% Example:
%% model_life_cycle() :: #{
%%   <<"Stage">> => string(),
%%   <<"StageDescription">> => string(),
%%   <<"StageStatus">> => string()
%% }
-type model_life_cycle() :: #{binary() => any()}.

%% Example:
%% delete_human_task_ui_response() :: #{

%% }
-type delete_human_task_ui_response() :: #{binary() => any()}.

%% Example:
%% stop_edge_packaging_job_request() :: #{
%%   <<"EdgePackagingJobName">> := string()
%% }
-type stop_edge_packaging_job_request() :: #{binary() => any()}.

%% Example:
%% update_partner_app_request() :: #{
%%   <<"ApplicationConfig">> => partner_app_config(),
%%   <<"Arn">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"EnableIamSessionBasedIdentity">> => boolean(),
%%   <<"MaintenanceConfig">> => partner_app_maintenance_config(),
%%   <<"Tags">> => list(tag()()),
%%   <<"Tier">> => string()
%% }
-type update_partner_app_request() :: #{binary() => any()}.

%% Example:
%% list_subscribed_workteams_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SubscribedWorkteams">> => list(subscribed_workteam()())
%% }
-type list_subscribed_workteams_response() :: #{binary() => any()}.

%% Example:
%% reserved_capacity_offering() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"DurationHours">> => float(),
%%   <<"DurationMinutes">> => float(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"InstanceCount">> => integer(),
%%   <<"InstanceType">> => list(any()),
%%   <<"StartTime">> => non_neg_integer()
%% }
-type reserved_capacity_offering() :: #{binary() => any()}.

%% Example:
%% delete_endpoint_config_input() :: #{
%%   <<"EndpointConfigName">> := string()
%% }
-type delete_endpoint_config_input() :: #{binary() => any()}.

%% Example:
%% optimization_job_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"DeploymentInstanceType">> => list(any()),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"OptimizationEndTime">> => non_neg_integer(),
%%   <<"OptimizationJobArn">> => string(),
%%   <<"OptimizationJobName">> => string(),
%%   <<"OptimizationJobStatus">> => list(any()),
%%   <<"OptimizationStartTime">> => non_neg_integer(),
%%   <<"OptimizationTypes">> => list(string()())
%% }
-type optimization_job_summary() :: #{binary() => any()}.

%% Example:
%% training_plan_summary() :: #{
%%   <<"AvailableInstanceCount">> => integer(),
%%   <<"CurrencyCode">> => string(),
%%   <<"DurationHours">> => float(),
%%   <<"DurationMinutes">> => float(),
%%   <<"EndTime">> => non_neg_integer(),
%%   <<"InUseInstanceCount">> => integer(),
%%   <<"ReservedCapacitySummaries">> => list(reserved_capacity_summary()()),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"Status">> => list(any()),
%%   <<"StatusMessage">> => string(),
%%   <<"TargetResources">> => list(list(any())()),
%%   <<"TotalInstanceCount">> => integer(),
%%   <<"TrainingPlanArn">> => string(),
%%   <<"TrainingPlanName">> => string(),
%%   <<"UpfrontFee">> => string()
%% }
-type training_plan_summary() :: #{binary() => any()}.

%% Example:
%% create_edge_packaging_job_request() :: #{
%%   <<"CompilationJobName">> := string(),
%%   <<"EdgePackagingJobName">> := string(),
%%   <<"ModelName">> := string(),
%%   <<"ModelVersion">> := string(),
%%   <<"OutputConfig">> := edge_output_config(),
%%   <<"ResourceKey">> => string(),
%%   <<"RoleArn">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_edge_packaging_job_request() :: #{binary() => any()}.

%% Example:
%% create_monitoring_schedule_response() :: #{
%%   <<"MonitoringScheduleArn">> => string()
%% }
-type create_monitoring_schedule_response() :: #{binary() => any()}.

%% Example:
%% delete_optimization_job_request() :: #{
%%   <<"OptimizationJobName">> := string()
%% }
-type delete_optimization_job_request() :: #{binary() => any()}.

%% Example:
%% auto_ml_job_step_metadata() :: #{
%%   <<"Arn">> => string()
%% }
-type auto_ml_job_step_metadata() :: #{binary() => any()}.

%% Example:
%% human_loop_activation_config() :: #{
%%   <<"HumanLoopActivationConditionsConfig">> => human_loop_activation_conditions_config()
%% }
-type human_loop_activation_config() :: #{binary() => any()}.

%% Example:
%% update_compute_quota_request() :: #{
%%   <<"ActivationState">> => list(any()),
%%   <<"ComputeQuotaConfig">> => compute_quota_config(),
%%   <<"ComputeQuotaId">> := string(),
%%   <<"ComputeQuotaTarget">> => compute_quota_target(),
%%   <<"Description">> => string(),
%%   <<"TargetVersion">> := integer()
%% }
-type update_compute_quota_request() :: #{binary() => any()}.

%% Example:
%% describe_image_request() :: #{
%%   <<"ImageName">> := string()
%% }
-type describe_image_request() :: #{binary() => any()}.

%% Example:
%% delete_pipeline_response() :: #{
%%   <<"PipelineArn">> => string()
%% }
-type delete_pipeline_response() :: #{binary() => any()}.

%% Example:
%% list_pipeline_executions_request() :: #{
%%   <<"CreatedAfter">> => non_neg_integer(),
%%   <<"CreatedBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"PipelineName">> := string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any())
%% }
-type list_pipeline_executions_request() :: #{binary() => any()}.

%% Example:
%% cluster_node_details() :: #{
%%   <<"InstanceGroupName">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"InstanceStatus">> => cluster_instance_status_details(),
%%   <<"InstanceStorageConfigs">> => list(list()()),
%%   <<"InstanceType">> => list(any()),
%%   <<"LaunchTime">> => non_neg_integer(),
%%   <<"LifeCycleConfig">> => cluster_life_cycle_config(),
%%   <<"OverrideVpcConfig">> => vpc_config(),
%%   <<"Placement">> => cluster_instance_placement(),
%%   <<"PrivateDnsHostname">> => string(),
%%   <<"PrivatePrimaryIp">> => string(),
%%   <<"PrivatePrimaryIpv6">> => string(),
%%   <<"ThreadsPerCore">> => integer()
%% }
-type cluster_node_details() :: #{binary() => any()}.

%% Example:
%% service_catalog_provisioned_product_details() :: #{
%%   <<"ProvisionedProductId">> => string(),
%%   <<"ProvisionedProductStatusMessage">> => string()
%% }
-type service_catalog_provisioned_product_details() :: #{binary() => any()}.

%% Example:
%% list_inference_experiments_response() :: #{
%%   <<"InferenceExperiments">> => list(inference_experiment_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_inference_experiments_response() :: #{binary() => any()}.

%% Example:
%% production_variant_core_dump_config() :: #{
%%   <<"DestinationS3Uri">> => string(),
%%   <<"KmsKeyId">> => string()
%% }
-type production_variant_core_dump_config() :: #{binary() => any()}.

%% Example:
%% list_optimization_jobs_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"OptimizationJobSummaries">> => list(optimization_job_summary()())
%% }
-type list_optimization_jobs_response() :: #{binary() => any()}.

%% Example:
%% model_package_summary() :: #{
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"ModelApprovalStatus">> => list(any()),
%%   <<"ModelPackageArn">> => string(),
%%   <<"ModelPackageDescription">> => string(),
%%   <<"ModelPackageGroupName">> => string(),
%%   <<"ModelPackageName">> => string(),
%%   <<"ModelPackageStatus">> => list(any()),
%%   <<"ModelPackageVersion">> => integer()
%% }
-type model_package_summary() :: #{binary() => any()}.

%% Example:
%% delete_tags_output() :: #{

%% }
-type delete_tags_output() :: #{binary() => any()}.

%% Example:
%% create_notebook_instance_lifecycle_config_output() :: #{
%%   <<"NotebookInstanceLifecycleConfigArn">> => string()
%% }
-type create_notebook_instance_lifecycle_config_output() :: #{binary() => any()}.

%% Example:
%% cluster_ebs_volume_config() :: #{
%%   <<"VolumeSizeInGB">> => integer()
%% }
-type cluster_ebs_volume_config() :: #{binary() => any()}.

%% Example:
%% update_feature_group_response() :: #{
%%   <<"FeatureGroupArn">> => string()
%% }
-type update_feature_group_response() :: #{binary() => any()}.

%% Example:
%% code_repository_summary() :: #{
%%   <<"CodeRepositoryArn">> => string(),
%%   <<"CodeRepositoryName">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"GitConfig">> => git_config(),
%%   <<"LastModifiedTime">> => non_neg_integer()
%% }
-type code_repository_summary() :: #{binary() => any()}.

%% Example:
%% delete_mlflow_tracking_server_request() :: #{
%%   <<"TrackingServerName">> := string()
%% }
-type delete_mlflow_tracking_server_request() :: #{binary() => any()}.

%% Example:
%% retention_policy() :: #{
%%   <<"HomeEfsFileSystem">> => list(any())
%% }
-type retention_policy() :: #{binary() => any()}.

%% Example:
%% delete_partner_app_request() :: #{
%%   <<"Arn">> := string(),
%%   <<"ClientToken">> => string()
%% }
-type delete_partner_app_request() :: #{binary() => any()}.

%% Example:
%% dynamic_scaling_configuration() :: #{
%%   <<"MaxCapacity">> => integer(),
%%   <<"MinCapacity">> => integer(),
%%   <<"ScaleInCooldown">> => integer(),
%%   <<"ScaleOutCooldown">> => integer(),
%%   <<"ScalingPolicies">> => list(list()())
%% }
-type dynamic_scaling_configuration() :: #{binary() => any()}.

%% Example:
%% list_spaces_request() :: #{
%%   <<"DomainIdEquals">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortBy">> => list(any()),
%%   <<"SortOrder">> => list(any()),
%%   <<"SpaceNameContains">> => string()
%% }
-type list_spaces_request() :: #{binary() => any()}.

%% Example:
%% processing_job() :: #{
%%   <<"AppSpecification">> => app_specification(),
%%   <<"AutoMLJobArn">> => string(),
%%   <<"CreationTime">> => non_neg_integer(),
%%   <<"Environment">> => map(),
%%   <<"ExitMessage">> => string(),
%%   <<"ExperimentConfig">> => experiment_config(),
%%   <<"FailureReason">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"MonitoringScheduleArn">> => string(),
%%   <<"NetworkConfig">> => network_config(),
%%   <<"ProcessingEndTime">> => non_neg_integer(),
%%   <<"ProcessingInputs">> => list(processing_input()()),
%%   <<"ProcessingJobArn">> => string(),
%%   <<"ProcessingJobName">> => string(),
%%   <<"ProcessingJobStatus">> => list(any()),
%%   <<"ProcessingOutputConfig">> => processing_output_config(),
%%   <<"ProcessingResources">> => processing_resources(),
%%   <<"ProcessingStartTime">> => non_neg_integer(),
%%   <<"RoleArn">> => string(),
%%   <<"StoppingCondition">> => processing_stopping_condition(),
%%   <<"Tags">> => list(tag()()),
%%   <<"TrainingJobArn">> => string()
%% }
-type processing_job() :: #{binary() => any()}.

%% Example:
%% list_human_task_uis_request() :: #{
%%   <<"CreationTimeAfter">> => non_neg_integer(),
%%   <<"CreationTimeBefore">> => non_neg_integer(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"SortOrder">> => list(any())
%% }
-type list_human_task_uis_request() :: #{binary() => any()}.

%% Example:
%% space_sharing_settings_summary() :: #{
%%   <<"SharingType">> => list(any())
%% }
-type space_sharing_settings_summary() :: #{binary() => any()}.

%% Example:
%% update_cluster_response() :: #{
%%   <<"ClusterArn">> => string()
%% }
-type update_cluster_response() :: #{binary() => any()}.

%% Example:
%% create_flow_definition_request() :: #{
%%   <<"FlowDefinitionName">> := string(),
%%   <<"HumanLoopActivationConfig">> => human_loop_activation_config(),
%%   <<"HumanLoopConfig">> => human_loop_config(),
%%   <<"HumanLoopRequestSource">> => human_loop_request_source(),
%%   <<"OutputConfig">> := flow_definition_output_config(),
%%   <<"RoleArn">> := string(),
%%   <<"Tags">> => list(tag()())
%% }
-type create_flow_definition_request() :: #{binary() => any()}.

%% Example:
%% create_code_repository_output() :: #{
%%   <<"CodeRepositoryArn">> => string()
%% }
-type create_code_repository_output() :: #{binary() => any()}.

%% Example:
%% list_device_fleets_response() :: #{
%%   <<"DeviceFleetSummaries">> => list(device_fleet_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_device_fleets_response() :: #{binary() => any()}.

%% Example:
%% describe_device_response() :: #{
%%   <<"AgentVersion">> => string(),
%%   <<"Description">> => string(),
%%   <<"DeviceArn">> => string(),
%%   <<"DeviceFleetName">> => string(),
%%   <<"DeviceName">> => string(),
%%   <<"IotThingName">> => string(),
%%   <<"LatestHeartbeat">> => non_neg_integer(),
%%   <<"MaxModels">> => integer(),
%%   <<"Models">> => list(edge_model()()),
%%   <<"NextToken">> => string(),
%%   <<"RegistrationTime">> => non_neg_integer()
%% }
-type describe_device_response() :: #{binary() => any()}.

%% Example:
%% default_space_storage_settings() :: #{
%%   <<"DefaultEbsStorageSettings">> => default_ebs_storage_settings()
%% }
-type default_space_storage_settings() :: #{binary() => any()}.

%% Example:
%% s3_data_source() :: #{
%%   <<"AttributeNames">> => list(string()()),
%%   <<"HubAccessConfig">> => hub_access_config(),
%%   <<"InstanceGroupNames">> => list(string()()),
%%   <<"ModelAccessConfig">> => model_access_config(),
%%   <<"S3DataDistributionType">> => list(any()),
%%   <<"S3DataType">> => list(any()),
%%   <<"S3Uri">> => string()
%% }
-type s3_data_source() :: #{binary() => any()}.

%% Example:
%% list_labeling_jobs_for_workteam_response() :: #{
%%   <<"LabelingJobSummaryList">> => list(labeling_job_for_workteam_summary()()),
%%   <<"NextToken">> => string()
%% }
-type list_labeling_jobs_for_workteam_response() :: #{binary() => any()}.

%% Example:
%% remote_debug_config() :: #{
%%   <<"EnableRemoteDebug">> => boolean()
%% }
-type remote_debug_config() :: #{binary() => any()}.

%% Example:
%% create_hub_response() :: #{
%%   <<"HubArn">> => string()
%% }
-type create_hub_response() :: #{binary() => any()}.

%% Example:
%% async_inference_output_config() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"NotificationConfig">> => async_inference_notification_config(),
%%   <<"S3FailurePath">> => string(),
%%   <<"S3OutputPath">> => string()
%% }
-type async_inference_output_config() :: #{binary() => any()}.

-type add_association_errors() ::
    resource_limit_exceeded() | 
    resource_not_found().

-type associate_trial_component_errors() ::
    resource_limit_exceeded() | 
    resource_not_found().

-type batch_delete_cluster_nodes_errors() ::
    resource_not_found().

-type create_action_errors() ::
    resource_limit_exceeded().

-type create_app_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_app_image_config_errors() ::
    resource_in_use().

-type create_artifact_errors() ::
    resource_limit_exceeded().

-type create_auto_ml_job_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_auto_ml_job_v2_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_cluster_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_cluster_scheduler_config_errors() ::
    resource_limit_exceeded() | 
    conflict_exception().

-type create_compilation_job_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_compute_quota_errors() ::
    resource_limit_exceeded() | 
    conflict_exception().

-type create_context_errors() ::
    resource_limit_exceeded().

-type create_data_quality_job_definition_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_device_fleet_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_domain_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_edge_deployment_plan_errors() ::
    resource_limit_exceeded().

-type create_edge_deployment_stage_errors() ::
    resource_limit_exceeded().

-type create_edge_packaging_job_errors() ::
    resource_limit_exceeded().

-type create_endpoint_errors() ::
    resource_limit_exceeded().

-type create_endpoint_config_errors() ::
    resource_limit_exceeded().

-type create_experiment_errors() ::
    resource_limit_exceeded().

-type create_feature_group_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_flow_definition_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_hub_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_hub_content_reference_errors() ::
    resource_limit_exceeded() | 
    resource_in_use() | 
    resource_not_found().

-type create_human_task_ui_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_hyper_parameter_tuning_job_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_image_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_image_version_errors() ::
    resource_limit_exceeded() | 
    resource_in_use() | 
    resource_not_found().

-type create_inference_component_errors() ::
    resource_limit_exceeded().

-type create_inference_experiment_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_inference_recommendations_job_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_labeling_job_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_mlflow_tracking_server_errors() ::
    resource_limit_exceeded().

-type create_model_errors() ::
    resource_limit_exceeded().

-type create_model_bias_job_definition_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_model_card_errors() ::
    resource_limit_exceeded() | 
    conflict_exception().

-type create_model_card_export_job_errors() ::
    resource_limit_exceeded() | 
    conflict_exception() | 
    resource_not_found().

-type create_model_explainability_job_definition_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_model_package_errors() ::
    resource_limit_exceeded() | 
    conflict_exception().

-type create_model_package_group_errors() ::
    resource_limit_exceeded().

-type create_model_quality_job_definition_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_monitoring_schedule_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_notebook_instance_errors() ::
    resource_limit_exceeded().

-type create_notebook_instance_lifecycle_config_errors() ::
    resource_limit_exceeded().

-type create_optimization_job_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_partner_app_errors() ::
    resource_limit_exceeded() | 
    conflict_exception().

-type create_partner_app_presigned_url_errors() ::
    resource_not_found().

-type create_pipeline_errors() ::
    resource_limit_exceeded() | 
    conflict_exception() | 
    resource_not_found().

-type create_presigned_domain_url_errors() ::
    resource_not_found().

-type create_presigned_mlflow_tracking_server_url_errors() ::
    resource_not_found().

-type create_processing_job_errors() ::
    resource_limit_exceeded() | 
    resource_in_use() | 
    resource_not_found().

-type create_project_errors() ::
    resource_limit_exceeded().

-type create_space_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_studio_lifecycle_config_errors() ::
    resource_in_use().

-type create_training_job_errors() ::
    resource_limit_exceeded() | 
    resource_in_use() | 
    resource_not_found().

-type create_training_plan_errors() ::
    resource_limit_exceeded() | 
    resource_in_use() | 
    resource_not_found().

-type create_transform_job_errors() ::
    resource_limit_exceeded() | 
    resource_in_use() | 
    resource_not_found().

-type create_trial_errors() ::
    resource_limit_exceeded() | 
    resource_not_found().

-type create_trial_component_errors() ::
    resource_limit_exceeded().

-type create_user_profile_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type create_workteam_errors() ::
    resource_limit_exceeded() | 
    resource_in_use().

-type delete_action_errors() ::
    resource_not_found().

-type delete_algorithm_errors() ::
    conflict_exception().

-type delete_app_errors() ::
    resource_in_use() | 
    resource_not_found().

-type delete_app_image_config_errors() ::
    resource_not_found().

-type delete_artifact_errors() ::
    resource_not_found().

-type delete_association_errors() ::
    resource_not_found().

-type delete_cluster_errors() ::
    conflict_exception() | 
    resource_not_found().

-type delete_cluster_scheduler_config_errors() ::
    resource_not_found().

-type delete_compilation_job_errors() ::
    resource_not_found().

-type delete_compute_quota_errors() ::
    resource_not_found().

-type delete_context_errors() ::
    resource_not_found().

-type delete_data_quality_job_definition_errors() ::
    resource_not_found().

-type delete_device_fleet_errors() ::
    resource_in_use().

-type delete_domain_errors() ::
    resource_in_use() | 
    resource_not_found().

-type delete_edge_deployment_plan_errors() ::
    resource_in_use().

-type delete_edge_deployment_stage_errors() ::
    resource_in_use().

-type delete_experiment_errors() ::
    resource_not_found().

-type delete_feature_group_errors() ::
    resource_not_found().

-type delete_flow_definition_errors() ::
    resource_in_use() | 
    resource_not_found().

-type delete_hub_errors() ::
    resource_in_use() | 
    resource_not_found().

-type delete_hub_content_errors() ::
    resource_in_use() | 
    resource_not_found().

-type delete_hub_content_reference_errors() ::
    resource_not_found().

-type delete_human_task_ui_errors() ::
    resource_not_found().

-type delete_image_errors() ::
    resource_in_use() | 
    resource_not_found().

-type delete_image_version_errors() ::
    resource_in_use() | 
    resource_not_found().

-type delete_inference_experiment_errors() ::
    conflict_exception() | 
    resource_not_found().

-type delete_mlflow_tracking_server_errors() ::
    resource_not_found().

-type delete_model_bias_job_definition_errors() ::
    resource_not_found().

-type delete_model_card_errors() ::
    conflict_exception() | 
    resource_not_found().

-type delete_model_explainability_job_definition_errors() ::
    resource_not_found().

-type delete_model_package_errors() ::
    conflict_exception().

-type delete_model_package_group_errors() ::
    conflict_exception().

-type delete_model_quality_job_definition_errors() ::
    resource_not_found().

-type delete_monitoring_schedule_errors() ::
    resource_not_found().

-type delete_optimization_job_errors() ::
    resource_not_found().

-type delete_partner_app_errors() ::
    conflict_exception() | 
    resource_not_found().

-type delete_pipeline_errors() ::
    conflict_exception() | 
    resource_not_found().

-type delete_project_errors() ::
    conflict_exception().

-type delete_space_errors() ::
    resource_in_use() | 
    resource_not_found().

-type delete_studio_lifecycle_config_errors() ::
    resource_in_use() | 
    resource_not_found().

-type delete_trial_errors() ::
    resource_not_found().

-type delete_trial_component_errors() ::
    resource_not_found().

-type delete_user_profile_errors() ::
    resource_in_use() | 
    resource_not_found().

-type delete_workteam_errors() ::
    resource_limit_exceeded().

-type describe_action_errors() ::
    resource_not_found().

-type describe_app_errors() ::
    resource_not_found().

-type describe_app_image_config_errors() ::
    resource_not_found().

-type describe_artifact_errors() ::
    resource_not_found().

-type describe_auto_ml_job_errors() ::
    resource_not_found().

-type describe_auto_ml_job_v2_errors() ::
    resource_not_found().

-type describe_cluster_errors() ::
    resource_not_found().

-type describe_cluster_node_errors() ::
    resource_not_found().

-type describe_cluster_scheduler_config_errors() ::
    resource_not_found().

-type describe_compilation_job_errors() ::
    resource_not_found().

-type describe_compute_quota_errors() ::
    resource_not_found().

-type describe_context_errors() ::
    resource_not_found().

-type describe_data_quality_job_definition_errors() ::
    resource_not_found().

-type describe_device_errors() ::
    resource_not_found().

-type describe_device_fleet_errors() ::
    resource_not_found().

-type describe_domain_errors() ::
    resource_not_found().

-type describe_edge_deployment_plan_errors() ::
    resource_not_found().

-type describe_edge_packaging_job_errors() ::
    resource_not_found().

-type describe_experiment_errors() ::
    resource_not_found().

-type describe_feature_group_errors() ::
    resource_not_found().

-type describe_feature_metadata_errors() ::
    resource_not_found().

-type describe_flow_definition_errors() ::
    resource_not_found().

-type describe_hub_errors() ::
    resource_not_found().

-type describe_hub_content_errors() ::
    resource_not_found().

-type describe_human_task_ui_errors() ::
    resource_not_found().

-type describe_hyper_parameter_tuning_job_errors() ::
    resource_not_found().

-type describe_image_errors() ::
    resource_not_found().

-type describe_image_version_errors() ::
    resource_not_found().

-type describe_inference_experiment_errors() ::
    resource_not_found().

-type describe_inference_recommendations_job_errors() ::
    resource_not_found().

-type describe_labeling_job_errors() ::
    resource_not_found().

-type describe_lineage_group_errors() ::
    resource_not_found().

-type describe_mlflow_tracking_server_errors() ::
    resource_not_found().

-type describe_model_bias_job_definition_errors() ::
    resource_not_found().

-type describe_model_card_errors() ::
    resource_not_found().

-type describe_model_card_export_job_errors() ::
    resource_not_found().

-type describe_model_explainability_job_definition_errors() ::
    resource_not_found().

-type describe_model_quality_job_definition_errors() ::
    resource_not_found().

-type describe_monitoring_schedule_errors() ::
    resource_not_found().

-type describe_optimization_job_errors() ::
    resource_not_found().

-type describe_partner_app_errors() ::
    resource_not_found().

-type describe_pipeline_errors() ::
    resource_not_found().

-type describe_pipeline_definition_for_execution_errors() ::
    resource_not_found().

-type describe_pipeline_execution_errors() ::
    resource_not_found().

-type describe_processing_job_errors() ::
    resource_not_found().

-type describe_space_errors() ::
    resource_not_found().

-type describe_studio_lifecycle_config_errors() ::
    resource_not_found().

-type describe_training_job_errors() ::
    resource_not_found().

-type describe_training_plan_errors() ::
    resource_not_found().

-type describe_transform_job_errors() ::
    resource_not_found().

-type describe_trial_errors() ::
    resource_not_found().

-type describe_trial_component_errors() ::
    resource_not_found().

-type describe_user_profile_errors() ::
    resource_limit_exceeded() | 
    resource_not_found().

-type disassociate_trial_component_errors() ::
    resource_not_found().

-type get_lineage_group_policy_errors() ::
    resource_not_found().

-type get_scaling_configuration_recommendation_errors() ::
    resource_not_found().

-type import_hub_content_errors() ::
    resource_limit_exceeded() | 
    resource_in_use() | 
    resource_not_found().

-type list_actions_errors() ::
    resource_not_found().

-type list_aliases_errors() ::
    resource_not_found().

-type list_artifacts_errors() ::
    resource_not_found().

-type list_associations_errors() ::
    resource_not_found().

-type list_candidates_for_auto_ml_job_errors() ::
    resource_not_found().

-type list_cluster_nodes_errors() ::
    resource_not_found().

-type list_contexts_errors() ::
    resource_not_found().

-type list_hub_content_versions_errors() ::
    resource_not_found().

-type list_hub_contents_errors() ::
    resource_not_found().

-type list_image_versions_errors() ::
    resource_not_found().

-type list_inference_recommendations_job_steps_errors() ::
    resource_not_found().

-type list_labeling_jobs_for_workteam_errors() ::
    resource_not_found().

-type list_model_card_versions_errors() ::
    resource_not_found().

-type list_monitoring_alert_history_errors() ::
    resource_not_found().

-type list_monitoring_alerts_errors() ::
    resource_not_found().

-type list_pipeline_execution_steps_errors() ::
    resource_not_found().

-type list_pipeline_executions_errors() ::
    resource_not_found().

-type list_pipeline_parameters_for_execution_errors() ::
    resource_not_found().

-type list_studio_lifecycle_configs_errors() ::
    resource_in_use().

-type list_training_jobs_for_hyper_parameter_tuning_job_errors() ::
    resource_not_found().

-type list_trial_components_errors() ::
    resource_not_found().

-type list_trials_errors() ::
    resource_not_found().

-type put_model_package_group_policy_errors() ::
    conflict_exception().

-type query_lineage_errors() ::
    resource_not_found().

-type register_devices_errors() ::
    resource_limit_exceeded().

-type render_ui_template_errors() ::
    resource_not_found().

-type retry_pipeline_execution_errors() ::
    resource_limit_exceeded() | 
    conflict_exception() | 
    resource_not_found().

-type search_training_plan_offerings_errors() ::
    resource_limit_exceeded().

-type send_pipeline_execution_step_failure_errors() ::
    resource_limit_exceeded() | 
    conflict_exception() | 
    resource_not_found().

-type send_pipeline_execution_step_success_errors() ::
    resource_limit_exceeded() | 
    conflict_exception() | 
    resource_not_found().

-type start_inference_experiment_errors() ::
    conflict_exception() | 
    resource_not_found().

-type start_mlflow_tracking_server_errors() ::
    conflict_exception() | 
    resource_not_found().

-type start_monitoring_schedule_errors() ::
    resource_not_found().

-type start_notebook_instance_errors() ::
    resource_limit_exceeded().

-type start_pipeline_execution_errors() ::
    resource_limit_exceeded() | 
    conflict_exception() | 
    resource_not_found().

-type stop_auto_ml_job_errors() ::
    resource_not_found().

-type stop_compilation_job_errors() ::
    resource_not_found().

-type stop_hyper_parameter_tuning_job_errors() ::
    resource_not_found().

-type stop_inference_experiment_errors() ::
    conflict_exception() | 
    resource_not_found().

-type stop_inference_recommendations_job_errors() ::
    resource_not_found().

-type stop_labeling_job_errors() ::
    resource_not_found().

-type stop_mlflow_tracking_server_errors() ::
    conflict_exception() | 
    resource_not_found().

-type stop_monitoring_schedule_errors() ::
    resource_not_found().

-type stop_optimization_job_errors() ::
    resource_not_found().

-type stop_pipeline_execution_errors() ::
    conflict_exception() | 
    resource_not_found().

-type stop_processing_job_errors() ::
    resource_not_found().

-type stop_training_job_errors() ::
    resource_not_found().

-type stop_transform_job_errors() ::
    resource_not_found().

-type update_action_errors() ::
    conflict_exception() | 
    resource_not_found().

-type update_app_image_config_errors() ::
    resource_not_found().

-type update_artifact_errors() ::
    conflict_exception() | 
    resource_not_found().

-type update_cluster_errors() ::
    resource_limit_exceeded() | 
    conflict_exception() | 
    resource_not_found().

-type update_cluster_scheduler_config_errors() ::
    resource_limit_exceeded() | 
    conflict_exception() | 
    resource_not_found().

-type update_cluster_software_errors() ::
    conflict_exception() | 
    resource_not_found().

-type update_code_repository_errors() ::
    conflict_exception().

-type update_compute_quota_errors() ::
    resource_limit_exceeded() | 
    conflict_exception() | 
    resource_not_found().

-type update_context_errors() ::
    conflict_exception() | 
    resource_not_found().

-type update_device_fleet_errors() ::
    resource_in_use().

-type update_domain_errors() ::
    resource_limit_exceeded() | 
    resource_in_use() | 
    resource_not_found().

-type update_endpoint_errors() ::
    resource_limit_exceeded().

-type update_endpoint_weights_and_capacities_errors() ::
    resource_limit_exceeded().

-type update_experiment_errors() ::
    conflict_exception() | 
    resource_not_found().

-type update_feature_group_errors() ::
    resource_limit_exceeded() | 
    resource_not_found().

-type update_feature_metadata_errors() ::
    resource_not_found().

-type update_hub_errors() ::
    resource_not_found().

-type update_hub_content_errors() ::
    resource_in_use() | 
    resource_not_found().

-type update_hub_content_reference_errors() ::
    resource_in_use() | 
    resource_not_found().

-type update_image_errors() ::
    resource_in_use() | 
    resource_not_found().

-type update_image_version_errors() ::
    resource_in_use() | 
    resource_not_found().

-type update_inference_component_errors() ::
    resource_limit_exceeded().

-type update_inference_component_runtime_config_errors() ::
    resource_limit_exceeded().

-type update_inference_experiment_errors() ::
    conflict_exception() | 
    resource_not_found().

-type update_mlflow_tracking_server_errors() ::
    resource_limit_exceeded() | 
    conflict_exception() | 
    resource_not_found().

-type update_model_card_errors() ::
    resource_limit_exceeded() | 
    conflict_exception() | 
    resource_not_found().

-type update_model_package_errors() ::
    conflict_exception().

-type update_monitoring_alert_errors() ::
    resource_limit_exceeded() | 
    resource_not_found().

-type update_monitoring_schedule_errors() ::
    resource_limit_exceeded() | 
    resource_not_found().

-type update_notebook_instance_errors() ::
    resource_limit_exceeded().

-type update_notebook_instance_lifecycle_config_errors() ::
    resource_limit_exceeded().

-type update_partner_app_errors() ::
    conflict_exception() | 
    resource_not_found().

-type update_pipeline_errors() ::
    conflict_exception() | 
    resource_not_found().

-type update_pipeline_execution_errors() ::
    conflict_exception() | 
    resource_not_found().

-type update_project_errors() ::
    conflict_exception().

-type update_space_errors() ::
    resource_limit_exceeded() | 
    resource_in_use() | 
    resource_not_found().

-type update_training_job_errors() ::
    resource_limit_exceeded() | 
    resource_not_found().

-type update_trial_errors() ::
    conflict_exception() | 
    resource_not_found().

-type update_trial_component_errors() ::
    conflict_exception() | 
    resource_not_found().

-type update_user_profile_errors() ::
    resource_limit_exceeded() | 
    resource_in_use() | 
    resource_not_found().

-type update_workforce_errors() ::
    conflict_exception().

-type update_workteam_errors() ::
    resource_limit_exceeded().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an association between the source and the destination.
%%
%% A
%% source can be associated with multiple destinations, and a destination can
%% be associated
%% with multiple sources. An association is a lineage tracking entity. For
%% more information, see
%% Amazon SageMaker
%% ML Lineage Tracking:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html.
-spec add_association(aws_client:aws_client(), add_association_request()) ->
    {ok, add_association_response(), tuple()} |
    {error, any()} |
    {error, add_association_errors(), tuple()}.
add_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_association(Client, Input, []).

-spec add_association(aws_client:aws_client(), add_association_request(), proplists:proplist()) ->
    {ok, add_association_response(), tuple()} |
    {error, any()} |
    {error, add_association_errors(), tuple()}.
add_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddAssociation">>, Input, Options).

%% @doc Adds or overwrites one or more tags for the specified SageMaker
%% resource.
%%
%% You can add
%% tags to notebook instances, training jobs, hyperparameter tuning jobs,
%% batch transform
%% jobs, models, labeling jobs, work teams, endpoint configurations, and
%% endpoints.
%%
%% Each tag consists of a key and an optional value. Tag keys must be unique
%% per
%% resource. For more information about tags, see For more information, see
%% Amazon Web Services Tagging Strategies:
%% https://aws.amazon.com/answers/account-management/aws-tagging-strategies/.
%%
%% Tags that you add to a hyperparameter tuning job by calling this API are
%% also
%% added to any training jobs that the hyperparameter tuning job launches
%% after you
%% call this API, but not to training jobs that the hyperparameter tuning job
%% launched
%% before you called this API. To make sure that the tags associated with a
%% hyperparameter tuning job are also added to all training jobs that the
%% hyperparameter tuning job launches, add the tags when you first create the
%% tuning
%% job by specifying them in the `Tags' parameter of
%% CreateHyperParameterTuningJob:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateHyperParameterTuningJob.html
%%
%% Tags that you add to a SageMaker Domain or User Profile by calling this
%% API are
%% also added to any Apps that the Domain or User Profile launches after you
%% call this
%% API, but not to Apps that the Domain or User Profile launched before you
%% called this
%% API. To make sure that the tags associated with a Domain or User Profile
%% are also
%% added to all Apps that the Domain or User Profile launches, add the tags
%% when you
%% first create the Domain or User Profile by specifying them in the
%% `Tags'
%% parameter of CreateDomain:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateDomain.html
%% or CreateUserProfile:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateUserProfile.html.
-spec add_tags(aws_client:aws_client(), add_tags_input()) ->
    {ok, add_tags_output(), tuple()} |
    {error, any()}.
add_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags(Client, Input, []).

-spec add_tags(aws_client:aws_client(), add_tags_input(), proplists:proplist()) ->
    {ok, add_tags_output(), tuple()} |
    {error, any()}.
add_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTags">>, Input, Options).

%% @doc Associates a trial component with a trial.
%%
%% A trial component can be associated with
%% multiple trials. To disassociate a trial component from a trial, call the
%% DisassociateTrialComponent:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DisassociateTrialComponent.html
%% API.
-spec associate_trial_component(aws_client:aws_client(), associate_trial_component_request()) ->
    {ok, associate_trial_component_response(), tuple()} |
    {error, any()} |
    {error, associate_trial_component_errors(), tuple()}.
associate_trial_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_trial_component(Client, Input, []).

-spec associate_trial_component(aws_client:aws_client(), associate_trial_component_request(), proplists:proplist()) ->
    {ok, associate_trial_component_response(), tuple()} |
    {error, any()} |
    {error, associate_trial_component_errors(), tuple()}.
associate_trial_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateTrialComponent">>, Input, Options).

%% @doc Deletes specific nodes within a SageMaker HyperPod cluster.
%%
%% `BatchDeleteClusterNodes'
%% accepts a cluster name and a list of node IDs.
%%
%% To safeguard your work, back up your data to Amazon S3 or an FSx for
%% Lustre file system before invoking the API on a worker node group. This
%% will help
%% prevent any potential data loss from the instance root volume. For more
%% information about backup, see Use the backup script provided by SageMaker
%% HyperPod:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-hyperpod-operate-cli-command.html#sagemaker-hyperpod-operate-cli-command-update-cluster-software-backup.
%%
%% If you want to invoke this API on an existing cluster, you'll first
%% need to
%% patch the cluster by running the UpdateClusterSoftware API:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_UpdateClusterSoftware.html.
%% For more information about patching a
%% cluster, see Update the SageMaker HyperPod platform software of a cluster:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-hyperpod-operate-cli-command.html#sagemaker-hyperpod-operate-cli-command-update-cluster-software.
-spec batch_delete_cluster_nodes(aws_client:aws_client(), batch_delete_cluster_nodes_request()) ->
    {ok, batch_delete_cluster_nodes_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_cluster_nodes_errors(), tuple()}.
batch_delete_cluster_nodes(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_cluster_nodes(Client, Input, []).

-spec batch_delete_cluster_nodes(aws_client:aws_client(), batch_delete_cluster_nodes_request(), proplists:proplist()) ->
    {ok, batch_delete_cluster_nodes_response(), tuple()} |
    {error, any()} |
    {error, batch_delete_cluster_nodes_errors(), tuple()}.
batch_delete_cluster_nodes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteClusterNodes">>, Input, Options).

%% @doc This action batch describes a list of versioned model packages
-spec batch_describe_model_package(aws_client:aws_client(), batch_describe_model_package_input()) ->
    {ok, batch_describe_model_package_output(), tuple()} |
    {error, any()}.
batch_describe_model_package(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_describe_model_package(Client, Input, []).

-spec batch_describe_model_package(aws_client:aws_client(), batch_describe_model_package_input(), proplists:proplist()) ->
    {ok, batch_describe_model_package_output(), tuple()} |
    {error, any()}.
batch_describe_model_package(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDescribeModelPackage">>, Input, Options).

%% @doc Creates an action.
%%
%% An action is a lineage tracking entity that
%% represents an action or activity. For example, a model deployment or an
%% HPO job.
%% Generally, an action involves at least one input or output artifact. For
%% more information, see
%% Amazon SageMaker
%% ML Lineage Tracking:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html.
-spec create_action(aws_client:aws_client(), create_action_request()) ->
    {ok, create_action_response(), tuple()} |
    {error, any()} |
    {error, create_action_errors(), tuple()}.
create_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_action(Client, Input, []).

-spec create_action(aws_client:aws_client(), create_action_request(), proplists:proplist()) ->
    {ok, create_action_response(), tuple()} |
    {error, any()} |
    {error, create_action_errors(), tuple()}.
create_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAction">>, Input, Options).

%% @doc Create a machine learning algorithm that you can use in SageMaker and
%% list in the Amazon Web Services Marketplace.
-spec create_algorithm(aws_client:aws_client(), create_algorithm_input()) ->
    {ok, create_algorithm_output(), tuple()} |
    {error, any()}.
create_algorithm(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_algorithm(Client, Input, []).

-spec create_algorithm(aws_client:aws_client(), create_algorithm_input(), proplists:proplist()) ->
    {ok, create_algorithm_output(), tuple()} |
    {error, any()}.
create_algorithm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAlgorithm">>, Input, Options).

%% @doc Creates a running app for the specified UserProfile.
%%
%% This operation is automatically
%% invoked by Amazon SageMaker AI upon access to the associated Domain, and
%% when new kernel
%% configurations are selected by the user. A user may have multiple Apps
%% active
%% simultaneously.
-spec create_app(aws_client:aws_client(), create_app_request()) ->
    {ok, create_app_response(), tuple()} |
    {error, any()} |
    {error, create_app_errors(), tuple()}.
create_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_app(Client, Input, []).

-spec create_app(aws_client:aws_client(), create_app_request(), proplists:proplist()) ->
    {ok, create_app_response(), tuple()} |
    {error, any()} |
    {error, create_app_errors(), tuple()}.
create_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApp">>, Input, Options).

%% @doc Creates a configuration for running a SageMaker AI image as a
%% KernelGateway app.
%%
%% The
%% configuration specifies the Amazon Elastic File System storage volume on
%% the image, and a list of the
%% kernels in the image.
-spec create_app_image_config(aws_client:aws_client(), create_app_image_config_request()) ->
    {ok, create_app_image_config_response(), tuple()} |
    {error, any()} |
    {error, create_app_image_config_errors(), tuple()}.
create_app_image_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_app_image_config(Client, Input, []).

-spec create_app_image_config(aws_client:aws_client(), create_app_image_config_request(), proplists:proplist()) ->
    {ok, create_app_image_config_response(), tuple()} |
    {error, any()} |
    {error, create_app_image_config_errors(), tuple()}.
create_app_image_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAppImageConfig">>, Input, Options).

%% @doc Creates an artifact.
%%
%% An artifact is a lineage tracking entity that
%% represents a URI addressable object or data. Some examples are the S3 URI
%% of a dataset and
%% the ECR registry path of an image. For more information, see
%% Amazon SageMaker
%% ML Lineage Tracking:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html.
-spec create_artifact(aws_client:aws_client(), create_artifact_request()) ->
    {ok, create_artifact_response(), tuple()} |
    {error, any()} |
    {error, create_artifact_errors(), tuple()}.
create_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_artifact(Client, Input, []).

-spec create_artifact(aws_client:aws_client(), create_artifact_request(), proplists:proplist()) ->
    {ok, create_artifact_response(), tuple()} |
    {error, any()} |
    {error, create_artifact_errors(), tuple()}.
create_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateArtifact">>, Input, Options).

%% @doc Creates an Autopilot job also referred to as Autopilot experiment or
%% AutoML job.
%%
%% An AutoML job in SageMaker AI is a fully automated process that allows you
%% to build machine
%% learning models with minimal effort and machine learning expertise. When
%% initiating an
%% AutoML job, you provide your data and optionally specify parameters
%% tailored to your use
%% case. SageMaker AI then automates the entire model development lifecycle,
%% including data
%% preprocessing, model training, tuning, and evaluation. AutoML jobs are
%% designed to simplify
%% and accelerate the model building process by automating various tasks and
%% exploring
%% different combinations of machine learning algorithms, data preprocessing
%% techniques, and
%% hyperparameter values. The output of an AutoML job comprises one or more
%% trained models
%% ready for deployment and inference. Additionally, SageMaker AI AutoML jobs
%% generate a candidate
%% model leaderboard, allowing you to select the best-performing model for
%% deployment.
%%
%% For more information about AutoML jobs, see
%% [https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-automate-model-development.html]
%% in the SageMaker AI developer guide.
%%
%% We recommend using the new versions CreateAutoMLJobV2:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJobV2.html
%% and DescribeAutoMLJobV2:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeAutoMLJobV2.html,
%% which offer backward compatibility.
%%
%% `CreateAutoMLJobV2' can manage tabular problem types identical to
%% those of
%% its previous version `CreateAutoMLJob', as well as time-series
%% forecasting,
%% non-tabular problem types such as image or text classification, and text
%% generation
%% (LLMs fine-tuning).
%%
%% Find guidelines about how to migrate a `CreateAutoMLJob' to
%% `CreateAutoMLJobV2' in Migrate a CreateAutoMLJob to CreateAutoMLJobV2:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-automate-model-development-create-experiment.html#autopilot-create-experiment-api-migrate-v1-v2.
%%
%% You can find the best-performing model after you run an AutoML job by
%% calling DescribeAutoMLJobV2:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeAutoMLJobV2.html
%% (recommended) or DescribeAutoMLJob:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeAutoMLJob.html.
-spec create_auto_ml_job(aws_client:aws_client(), create_auto_ml_job_request()) ->
    {ok, create_auto_ml_job_response(), tuple()} |
    {error, any()} |
    {error, create_auto_ml_job_errors(), tuple()}.
create_auto_ml_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_auto_ml_job(Client, Input, []).

-spec create_auto_ml_job(aws_client:aws_client(), create_auto_ml_job_request(), proplists:proplist()) ->
    {ok, create_auto_ml_job_response(), tuple()} |
    {error, any()} |
    {error, create_auto_ml_job_errors(), tuple()}.
create_auto_ml_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAutoMLJob">>, Input, Options).

%% @doc Creates an Autopilot job also referred to as Autopilot experiment or
%% AutoML job V2.
%%
%% An AutoML job in SageMaker AI is a fully automated process that allows you
%% to build machine
%% learning models with minimal effort and machine learning expertise. When
%% initiating an
%% AutoML job, you provide your data and optionally specify parameters
%% tailored to your use
%% case. SageMaker AI then automates the entire model development lifecycle,
%% including data
%% preprocessing, model training, tuning, and evaluation. AutoML jobs are
%% designed to simplify
%% and accelerate the model building process by automating various tasks and
%% exploring
%% different combinations of machine learning algorithms, data preprocessing
%% techniques, and
%% hyperparameter values. The output of an AutoML job comprises one or more
%% trained models
%% ready for deployment and inference. Additionally, SageMaker AI AutoML jobs
%% generate a candidate
%% model leaderboard, allowing you to select the best-performing model for
%% deployment.
%%
%% For more information about AutoML jobs, see
%% [https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-automate-model-development.html]
%% in the SageMaker AI developer guide.
%%
%% AutoML jobs V2 support various problem types such as regression, binary,
%% and multiclass
%% classification with tabular data, text and image classification,
%% time-series forecasting,
%% and fine-tuning of large language models (LLMs) for text generation.
%%
%% CreateAutoMLJobV2:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJobV2.html
%% and DescribeAutoMLJobV2:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeAutoMLJobV2.html
%% are new versions of CreateAutoMLJob:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJob.html
%% and DescribeAutoMLJob:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeAutoMLJob.html
%% which offer backward compatibility.
%%
%% `CreateAutoMLJobV2' can manage tabular problem types identical to
%% those of
%% its previous version `CreateAutoMLJob', as well as time-series
%% forecasting,
%% non-tabular problem types such as image or text classification, and text
%% generation
%% (LLMs fine-tuning).
%%
%% Find guidelines about how to migrate a `CreateAutoMLJob' to
%% `CreateAutoMLJobV2' in Migrate a CreateAutoMLJob to CreateAutoMLJobV2:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-automate-model-development-create-experiment.html#autopilot-create-experiment-api-migrate-v1-v2.
%%
%% For the list of available problem types supported by
%% `CreateAutoMLJobV2', see
%% AutoMLProblemTypeConfig:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_AutoMLProblemTypeConfig.html.
%%
%% You can find the best-performing model after you run an AutoML job V2 by
%% calling DescribeAutoMLJobV2:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeAutoMLJobV2.html.
-spec create_auto_ml_job_v2(aws_client:aws_client(), create_auto_ml_job_v2_request()) ->
    {ok, create_auto_ml_job_v2_response(), tuple()} |
    {error, any()} |
    {error, create_auto_ml_job_v2_errors(), tuple()}.
create_auto_ml_job_v2(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_auto_ml_job_v2(Client, Input, []).

-spec create_auto_ml_job_v2(aws_client:aws_client(), create_auto_ml_job_v2_request(), proplists:proplist()) ->
    {ok, create_auto_ml_job_v2_response(), tuple()} |
    {error, any()} |
    {error, create_auto_ml_job_v2_errors(), tuple()}.
create_auto_ml_job_v2(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAutoMLJobV2">>, Input, Options).

%% @doc Creates a SageMaker HyperPod cluster.
%%
%% SageMaker HyperPod is a capability of SageMaker for creating and managing
%% persistent clusters for developing large machine learning models, such as
%% large language
%% models (LLMs) and diffusion models. To learn more, see Amazon SageMaker
%% HyperPod:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-hyperpod.html in
%% the
%% Amazon SageMaker Developer Guide.
-spec create_cluster(aws_client:aws_client(), create_cluster_request()) ->
    {ok, create_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster(Client, Input, []).

-spec create_cluster(aws_client:aws_client(), create_cluster_request(), proplists:proplist()) ->
    {ok, create_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCluster">>, Input, Options).

%% @doc Create cluster policy configuration.
%%
%% This policy is used for task prioritization and
%% fair-share allocation of idle compute. This helps prioritize critical
%% workloads and distributes
%% idle compute across entities.
-spec create_cluster_scheduler_config(aws_client:aws_client(), create_cluster_scheduler_config_request()) ->
    {ok, create_cluster_scheduler_config_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_scheduler_config_errors(), tuple()}.
create_cluster_scheduler_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster_scheduler_config(Client, Input, []).

-spec create_cluster_scheduler_config(aws_client:aws_client(), create_cluster_scheduler_config_request(), proplists:proplist()) ->
    {ok, create_cluster_scheduler_config_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_scheduler_config_errors(), tuple()}.
create_cluster_scheduler_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateClusterSchedulerConfig">>, Input, Options).

%% @doc Creates a Git repository as a resource in your SageMaker AI account.
%%
%% You can
%% associate the repository with notebook instances so that you can use Git
%% source control
%% for the notebooks you create. The Git repository is a resource in your
%% SageMaker AI
%% account, so it can be associated with more than one notebook instance, and
%% it persists
%% independently from the lifecycle of any notebook instances it is
%% associated with.
%%
%% The repository can be hosted either in Amazon Web Services CodeCommit:
%% https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html
%% or in any other Git repository.
-spec create_code_repository(aws_client:aws_client(), create_code_repository_input()) ->
    {ok, create_code_repository_output(), tuple()} |
    {error, any()}.
create_code_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_code_repository(Client, Input, []).

-spec create_code_repository(aws_client:aws_client(), create_code_repository_input(), proplists:proplist()) ->
    {ok, create_code_repository_output(), tuple()} |
    {error, any()}.
create_code_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCodeRepository">>, Input, Options).

%% @doc Starts a model compilation job.
%%
%% After the model has been compiled, Amazon SageMaker AI saves the
%% resulting model artifacts to an Amazon Simple Storage Service (Amazon S3)
%% bucket that you specify.
%%
%% If
%% you choose to host your model using Amazon SageMaker AI hosting services,
%% you can use the resulting
%% model artifacts as part of the model. You can also use the artifacts with
%% Amazon Web Services IoT Greengrass. In that case, deploy them as an ML
%% resource.
%%
%% In the request body, you provide the following:
%%
%% A name for the compilation job
%%
%% Information about the input model artifacts
%%
%% The output location for the compiled model and the device (target) that
%% the
%% model runs on
%%
%% The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker AI
%% assumes to perform
%% the model compilation job.
%%
%% You can also provide a `Tag' to track the model compilation job's
%% resource
%% use and costs. The response body contains the
%% `CompilationJobArn'
%% for the compiled job.
%%
%% To stop a model compilation job, use StopCompilationJob:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_StopCompilationJob.html.
%% To get information about a particular model compilation
%% job, use DescribeCompilationJob:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeCompilationJob.html.
%% To get information about multiple model compilation
%% jobs, use ListCompilationJobs:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListCompilationJobs.html.
-spec create_compilation_job(aws_client:aws_client(), create_compilation_job_request()) ->
    {ok, create_compilation_job_response(), tuple()} |
    {error, any()} |
    {error, create_compilation_job_errors(), tuple()}.
create_compilation_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_compilation_job(Client, Input, []).

-spec create_compilation_job(aws_client:aws_client(), create_compilation_job_request(), proplists:proplist()) ->
    {ok, create_compilation_job_response(), tuple()} |
    {error, any()} |
    {error, create_compilation_job_errors(), tuple()}.
create_compilation_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCompilationJob">>, Input, Options).

%% @doc Create compute allocation definition.
%%
%% This defines how compute is allocated, shared, and
%% borrowed for specified entities. Specifically, how to lend and borrow idle
%% compute and
%% assign a fair-share weight to the specified entities.
-spec create_compute_quota(aws_client:aws_client(), create_compute_quota_request()) ->
    {ok, create_compute_quota_response(), tuple()} |
    {error, any()} |
    {error, create_compute_quota_errors(), tuple()}.
create_compute_quota(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_compute_quota(Client, Input, []).

-spec create_compute_quota(aws_client:aws_client(), create_compute_quota_request(), proplists:proplist()) ->
    {ok, create_compute_quota_response(), tuple()} |
    {error, any()} |
    {error, create_compute_quota_errors(), tuple()}.
create_compute_quota(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateComputeQuota">>, Input, Options).

%% @doc Creates a context.
%%
%% A context is a lineage tracking entity that
%% represents a logical grouping of other tracking or experiment entities.
%% Some examples are
%% an endpoint and a model package. For more information, see
%% Amazon SageMaker
%% ML Lineage Tracking:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/lineage-tracking.html.
-spec create_context(aws_client:aws_client(), create_context_request()) ->
    {ok, create_context_response(), tuple()} |
    {error, any()} |
    {error, create_context_errors(), tuple()}.
create_context(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_context(Client, Input, []).

-spec create_context(aws_client:aws_client(), create_context_request(), proplists:proplist()) ->
    {ok, create_context_response(), tuple()} |
    {error, any()} |
    {error, create_context_errors(), tuple()}.
create_context(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateContext">>, Input, Options).

%% @doc Creates a definition for a job that monitors data quality and drift.
%%
%% For information
%% about model monitor, see Amazon SageMaker AI Model
%% Monitor:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor.html.
-spec create_data_quality_job_definition(aws_client:aws_client(), create_data_quality_job_definition_request()) ->
    {ok, create_data_quality_job_definition_response(), tuple()} |
    {error, any()} |
    {error, create_data_quality_job_definition_errors(), tuple()}.
create_data_quality_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_quality_job_definition(Client, Input, []).

-spec create_data_quality_job_definition(aws_client:aws_client(), create_data_quality_job_definition_request(), proplists:proplist()) ->
    {ok, create_data_quality_job_definition_response(), tuple()} |
    {error, any()} |
    {error, create_data_quality_job_definition_errors(), tuple()}.
create_data_quality_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataQualityJobDefinition">>, Input, Options).

%% @doc Creates a device fleet.
-spec create_device_fleet(aws_client:aws_client(), create_device_fleet_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_device_fleet_errors(), tuple()}.
create_device_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_device_fleet(Client, Input, []).

-spec create_device_fleet(aws_client:aws_client(), create_device_fleet_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_device_fleet_errors(), tuple()}.
create_device_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDeviceFleet">>, Input, Options).

%% @doc Creates a `Domain'.
%%
%% A domain consists of an associated Amazon Elastic File System
%% volume, a list of authorized users, and a variety of security,
%% application, policy, and
%% Amazon Virtual Private Cloud (VPC) configurations. Users within a domain
%% can share notebook files
%% and other artifacts with each other.
%%
%% EFS storage
%%
%% When a domain is created, an EFS volume is created for use by all of the
%% users within the
%% domain. Each user receives a private home directory within the EFS volume
%% for notebooks, Git
%% repositories, and data files.
%%
%% SageMaker AI uses the Amazon Web Services Key Management Service (Amazon
%% Web Services
%% KMS) to encrypt the EFS volume attached to the domain with an Amazon Web
%% Services managed key
%% by default. For more control, you can specify a customer managed key. For
%% more information,
%% see Protect Data
%% at Rest Using Encryption:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/encryption-at-rest.html.
%%
%% VPC configuration
%%
%% All traffic between the domain and the Amazon EFS volume is through the
%% specified
%% VPC and subnets. For other traffic, you can specify the
%% `AppNetworkAccessType'
%% parameter. `AppNetworkAccessType' corresponds to the network access
%% type that you
%% choose when you onboard to the domain. The following options are
%% available:
%%
%% `PublicInternetOnly' - Non-EFS traffic goes through a VPC managed by
%% Amazon SageMaker AI, which allows internet access. This is the default
%% value.
%%
%% `VpcOnly' - All traffic is through the specified VPC and subnets.
%% Internet
%% access is disabled by default. To allow internet access, you must specify
%% a NAT
%% gateway.
%%
%% When internet access is disabled, you won't be able to run a Amazon
%% SageMaker AI
%% Studio notebook or to train or host models unless your VPC has an
%% interface endpoint to
%% the SageMaker AI API and runtime or a NAT gateway and your security groups
%% allow
%% outbound connections.
%%
%% NFS traffic over TCP on port 2049 needs to be allowed in both inbound and
%% outbound rules
%% in order to launch a Amazon SageMaker AI Studio app successfully.
%%
%% For more information, see Connect Amazon SageMaker AI Studio Notebooks to
%% Resources in a VPC:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/studio-notebooks-and-internet-access.html.
-spec create_domain(aws_client:aws_client(), create_domain_request()) ->
    {ok, create_domain_response(), tuple()} |
    {error, any()} |
    {error, create_domain_errors(), tuple()}.
create_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_domain(Client, Input, []).

-spec create_domain(aws_client:aws_client(), create_domain_request(), proplists:proplist()) ->
    {ok, create_domain_response(), tuple()} |
    {error, any()} |
    {error, create_domain_errors(), tuple()}.
create_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDomain">>, Input, Options).

%% @doc Creates an edge deployment plan, consisting of multiple stages.
%%
%% Each stage may have a
%% different deployment configuration and devices.
-spec create_edge_deployment_plan(aws_client:aws_client(), create_edge_deployment_plan_request()) ->
    {ok, create_edge_deployment_plan_response(), tuple()} |
    {error, any()} |
    {error, create_edge_deployment_plan_errors(), tuple()}.
create_edge_deployment_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_edge_deployment_plan(Client, Input, []).

-spec create_edge_deployment_plan(aws_client:aws_client(), create_edge_deployment_plan_request(), proplists:proplist()) ->
    {ok, create_edge_deployment_plan_response(), tuple()} |
    {error, any()} |
    {error, create_edge_deployment_plan_errors(), tuple()}.
create_edge_deployment_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEdgeDeploymentPlan">>, Input, Options).

%% @doc Creates a new stage in an existing edge deployment plan.
-spec create_edge_deployment_stage(aws_client:aws_client(), create_edge_deployment_stage_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_edge_deployment_stage_errors(), tuple()}.
create_edge_deployment_stage(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_edge_deployment_stage(Client, Input, []).

-spec create_edge_deployment_stage(aws_client:aws_client(), create_edge_deployment_stage_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_edge_deployment_stage_errors(), tuple()}.
create_edge_deployment_stage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEdgeDeploymentStage">>, Input, Options).

%% @doc Starts a SageMaker Edge Manager model packaging job.
%%
%% Edge Manager will use the model artifacts from the Amazon Simple Storage
%% Service bucket that you specify. After the model has been packaged, Amazon
%% SageMaker saves the resulting artifacts to an S3 bucket that you specify.
-spec create_edge_packaging_job(aws_client:aws_client(), create_edge_packaging_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_edge_packaging_job_errors(), tuple()}.
create_edge_packaging_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_edge_packaging_job(Client, Input, []).

-spec create_edge_packaging_job(aws_client:aws_client(), create_edge_packaging_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_edge_packaging_job_errors(), tuple()}.
create_edge_packaging_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEdgePackagingJob">>, Input, Options).

%% @doc Creates an endpoint using the endpoint configuration specified in the
%% request.
%%
%% SageMaker
%% uses the endpoint to provision resources and deploy models. You create the
%% endpoint
%% configuration with the CreateEndpointConfig:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpointConfig.html
%% API.
%%
%% Use this API to deploy models using SageMaker hosting services.
%%
%% You must not delete an `EndpointConfig' that is in use by an endpoint
%% that is live or while the `UpdateEndpoint' or `CreateEndpoint'
%% operations are being performed on the endpoint. To update an endpoint, you
%% must
%% create a new `EndpointConfig'.
%%
%% The endpoint name must be unique within an Amazon Web Services Region in
%% your
%% Amazon Web Services account.
%%
%% When it receives the request, SageMaker creates the endpoint, launches the
%% resources (ML
%% compute instances), and deploys the model(s) on them.
%%
%% When you call CreateEndpoint:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html,
%% a load call is made to DynamoDB to verify that your
%% endpoint configuration exists. When you read data from a DynamoDB table
%% supporting
%%
%% `Eventually Consistent Reads'
%% :
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadConsistency.html,
%% the response might not
%% reflect the results of a recently completed write operation. The response
%% might
%% include some stale data. If the dependent entities are not yet in
%% DynamoDB, this
%% causes a validation error. If you repeat your read request after a short
%% time, the
%% response should return the latest data. So retry logic is recommended to
%% handle
%% these possible issues. We also recommend that customers call
%% DescribeEndpointConfig:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeEndpointConfig.html
%% before calling CreateEndpoint:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html
%% to minimize the potential impact of a DynamoDB
%% eventually consistent read.
%%
%% When SageMaker receives the request, it sets the endpoint status to
%% `Creating'. After it creates the endpoint, it sets the status to
%% `InService'. SageMaker can then process incoming requests for
%% inferences. To
%% check the status of an endpoint, use the DescribeEndpoint:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeEndpoint.html
%% API.
%%
%% If any of the models hosted at this endpoint get model data from an Amazon
%% S3 location,
%% SageMaker uses Amazon Web Services Security Token Service to download
%% model artifacts from the
%% S3 path you provided. Amazon Web Services STS is activated in your Amazon
%% Web Services
%% account by default. If you previously deactivated Amazon Web Services STS
%% for a region,
%% you need to reactivate Amazon Web Services STS for that region. For more
%% information, see
%% Activating and
%% Deactivating Amazon Web Services STS in an Amazon Web Services Region:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html
%% in the
%% Amazon Web Services Identity and Access Management User
%% Guide.
%%
%% To add the IAM role policies for using this API operation, go to the IAM
%% console: https://console.aws.amazon.com/iam/, and choose
%% Roles in the left navigation pane. Search the IAM role that you want to
%% grant
%% access to use the CreateEndpoint:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html
%% and CreateEndpointConfig:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpointConfig.html
%% API operations, add the following policies to the
%% role.
%%
%% Option 1: For a full SageMaker access, search and attach the
%% `AmazonSageMakerFullAccess' policy.
%%
%% Option 2: For granting a limited access to an IAM role, paste the
%% following Action elements manually into the JSON file of the IAM role:
%%
%% ```
%% &quot;Action&quot;: [&quot;sagemaker:CreateEndpoint&quot;,
%% &quot;sagemaker:CreateEndpointConfig&quot;]'''
%%
%% `&quot;Resource&quot;: ['
%%
%% `&quot;arn:aws:sagemaker:region:account-id:endpoint/endpointName&quot;'
%%
%% `&quot;arn:aws:sagemaker:region:account-id:endpoint-config/endpointConfigName&quot;'
%%
%% `]'
%%
%% For more information, see SageMaker API
%% Permissions: Actions, Permissions, and Resources
%% Reference:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/api-permissions-reference.html.
-spec create_endpoint(aws_client:aws_client(), create_endpoint_input()) ->
    {ok, create_endpoint_output(), tuple()} |
    {error, any()} |
    {error, create_endpoint_errors(), tuple()}.
create_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_endpoint(Client, Input, []).

-spec create_endpoint(aws_client:aws_client(), create_endpoint_input(), proplists:proplist()) ->
    {ok, create_endpoint_output(), tuple()} |
    {error, any()} |
    {error, create_endpoint_errors(), tuple()}.
create_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEndpoint">>, Input, Options).

%% @doc Creates an endpoint configuration that SageMaker hosting services
%% uses to deploy models.
%%
%% In
%% the configuration, you identify one or more models, created using the
%% `CreateModel' API, to deploy and the resources that you want SageMaker
%% to
%% provision. Then you call the CreateEndpoint:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html
%% API.
%%
%% Use this API if you want to use SageMaker hosting services to deploy
%% models into
%% production.
%%
%% In the request, you define a `ProductionVariant', for each model that
%% you
%% want to deploy. Each `ProductionVariant' parameter also describes the
%% resources that you want SageMaker to provision. This includes the number
%% and type of ML
%% compute instances to deploy.
%%
%% If you are hosting multiple models, you also assign a `VariantWeight'
%% to
%% specify how much traffic you want to allocate to each model. For example,
%% suppose that
%% you want to host two models, A and B, and you assign traffic weight 2 for
%% model A and 1
%% for model B. SageMaker distributes two-thirds of the traffic to Model A,
%% and one-third to
%% model B.
%%
%% When you call CreateEndpoint:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html,
%% a load call is made to DynamoDB to verify that your
%% endpoint configuration exists. When you read data from a DynamoDB table
%% supporting
%%
%% `Eventually Consistent Reads'
%% :
%% https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadConsistency.html,
%% the response might not
%% reflect the results of a recently completed write operation. The response
%% might
%% include some stale data. If the dependent entities are not yet in
%% DynamoDB, this
%% causes a validation error. If you repeat your read request after a short
%% time, the
%% response should return the latest data. So retry logic is recommended to
%% handle
%% these possible issues. We also recommend that customers call
%% DescribeEndpointConfig:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeEndpointConfig.html
%% before calling CreateEndpoint:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html
%% to minimize the potential impact of a DynamoDB
%% eventually consistent read.
-spec create_endpoint_config(aws_client:aws_client(), create_endpoint_config_input()) ->
    {ok, create_endpoint_config_output(), tuple()} |
    {error, any()} |
    {error, create_endpoint_config_errors(), tuple()}.
create_endpoint_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_endpoint_config(Client, Input, []).

-spec create_endpoint_config(aws_client:aws_client(), create_endpoint_config_input(), proplists:proplist()) ->
    {ok, create_endpoint_config_output(), tuple()} |
    {error, any()} |
    {error, create_endpoint_config_errors(), tuple()}.
create_endpoint_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEndpointConfig">>, Input, Options).

%% @doc Creates a SageMaker experiment.
%%
%% An experiment is a collection of
%% trials that are observed, compared and evaluated as a group. A trial is
%% a set of steps, called trial components, that produce a machine learning
%% model.
%%
%% In the Studio UI, trials are referred to as run groups and trial
%% components are referred to as runs.
%%
%% The goal of an experiment is to determine the components that produce the
%% best model.
%% Multiple trials are performed, each one isolating and measuring the impact
%% of a change to one
%% or more inputs, while keeping the remaining inputs constant.
%%
%% When you use SageMaker Studio or the SageMaker Python SDK, all
%% experiments, trials, and trial
%% components are automatically tracked, logged, and indexed. When you use
%% the Amazon Web Services SDK for Python (Boto), you
%% must use the logging APIs provided by the SDK.
%%
%% You can add tags to experiments, trials, trial components and then use the
%% Search:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_Search.html
%% API to search for the tags.
%%
%% To add a description to an experiment, specify the optional
%% `Description'
%% parameter. To add a description later, or to change the description, call
%% the UpdateExperiment:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_UpdateExperiment.html
%% API.
%%
%% To get a list of all your experiments, call the ListExperiments:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListExperiments.html
%% API. To
%% view an experiment's properties, call the DescribeExperiment:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeExperiment.html
%% API. To get a
%% list of all the trials associated with an experiment, call the ListTrials:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListTrials.html
%% API. To create a trial call the CreateTrial:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateTrial.html
%% API.
-spec create_experiment(aws_client:aws_client(), create_experiment_request()) ->
    {ok, create_experiment_response(), tuple()} |
    {error, any()} |
    {error, create_experiment_errors(), tuple()}.
create_experiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_experiment(Client, Input, []).

-spec create_experiment(aws_client:aws_client(), create_experiment_request(), proplists:proplist()) ->
    {ok, create_experiment_response(), tuple()} |
    {error, any()} |
    {error, create_experiment_errors(), tuple()}.
create_experiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateExperiment">>, Input, Options).

%% @doc Create a new `FeatureGroup'.
%%
%% A `FeatureGroup' is a group of
%% `Features' defined in the `FeatureStore' to describe a
%% `Record'.
%%
%% The `FeatureGroup' defines the schema and features contained in the
%% `FeatureGroup'. A `FeatureGroup' definition is composed of a list
%% of `Features', a `RecordIdentifierFeatureName', an
%% `EventTimeFeatureName' and configurations for its `OnlineStore'
%% and `OfflineStore'. Check Amazon Web Services service
%% quotas:
%% https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html to
%% see the `FeatureGroup's quota for your Amazon Web Services
%% account.
%%
%% Note that it can take approximately 10-15 minutes to provision an
%% `OnlineStore'
%% `FeatureGroup' with the `InMemory'
%% `StorageType'.
%%
%% You must include at least one of `OnlineStoreConfig' and
%% `OfflineStoreConfig' to create a `FeatureGroup'.
-spec create_feature_group(aws_client:aws_client(), create_feature_group_request()) ->
    {ok, create_feature_group_response(), tuple()} |
    {error, any()} |
    {error, create_feature_group_errors(), tuple()}.
create_feature_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_feature_group(Client, Input, []).

-spec create_feature_group(aws_client:aws_client(), create_feature_group_request(), proplists:proplist()) ->
    {ok, create_feature_group_response(), tuple()} |
    {error, any()} |
    {error, create_feature_group_errors(), tuple()}.
create_feature_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFeatureGroup">>, Input, Options).

%% @doc Creates a flow definition.
-spec create_flow_definition(aws_client:aws_client(), create_flow_definition_request()) ->
    {ok, create_flow_definition_response(), tuple()} |
    {error, any()} |
    {error, create_flow_definition_errors(), tuple()}.
create_flow_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_flow_definition(Client, Input, []).

-spec create_flow_definition(aws_client:aws_client(), create_flow_definition_request(), proplists:proplist()) ->
    {ok, create_flow_definition_response(), tuple()} |
    {error, any()} |
    {error, create_flow_definition_errors(), tuple()}.
create_flow_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFlowDefinition">>, Input, Options).

%% @doc Create a hub.
-spec create_hub(aws_client:aws_client(), create_hub_request()) ->
    {ok, create_hub_response(), tuple()} |
    {error, any()} |
    {error, create_hub_errors(), tuple()}.
create_hub(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hub(Client, Input, []).

-spec create_hub(aws_client:aws_client(), create_hub_request(), proplists:proplist()) ->
    {ok, create_hub_response(), tuple()} |
    {error, any()} |
    {error, create_hub_errors(), tuple()}.
create_hub(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHub">>, Input, Options).

%% @doc Create a hub content reference in order to add a model in the
%% JumpStart public hub to a private hub.
-spec create_hub_content_reference(aws_client:aws_client(), create_hub_content_reference_request()) ->
    {ok, create_hub_content_reference_response(), tuple()} |
    {error, any()} |
    {error, create_hub_content_reference_errors(), tuple()}.
create_hub_content_reference(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hub_content_reference(Client, Input, []).

-spec create_hub_content_reference(aws_client:aws_client(), create_hub_content_reference_request(), proplists:proplist()) ->
    {ok, create_hub_content_reference_response(), tuple()} |
    {error, any()} |
    {error, create_hub_content_reference_errors(), tuple()}.
create_hub_content_reference(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHubContentReference">>, Input, Options).

%% @doc Defines the settings you will use for the human review workflow user
%% interface.
%%
%% Reviewers will see a three-panel interface with an instruction area, the
%% item to review, and an input area.
-spec create_human_task_ui(aws_client:aws_client(), create_human_task_ui_request()) ->
    {ok, create_human_task_ui_response(), tuple()} |
    {error, any()} |
    {error, create_human_task_ui_errors(), tuple()}.
create_human_task_ui(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_human_task_ui(Client, Input, []).

-spec create_human_task_ui(aws_client:aws_client(), create_human_task_ui_request(), proplists:proplist()) ->
    {ok, create_human_task_ui_response(), tuple()} |
    {error, any()} |
    {error, create_human_task_ui_errors(), tuple()}.
create_human_task_ui(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHumanTaskUi">>, Input, Options).

%% @doc Starts a hyperparameter tuning job.
%%
%% A hyperparameter tuning job finds the best version
%% of a model by running many training jobs on your dataset using the
%% algorithm you choose
%% and values for hyperparameters within ranges that you specify. It then
%% chooses the
%% hyperparameter values that result in a model that performs the best, as
%% measured by an
%% objective metric that you choose.
%%
%% A hyperparameter tuning job automatically creates Amazon SageMaker
%% experiments, trials, and
%% trial components for each training job that it runs. You can view these
%% entities in
%% Amazon SageMaker Studio. For more information, see View
%% Experiments, Trials, and Trial Components:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/experiments-view-compare.html#experiments-view.
%%
%% Do not include any security-sensitive information including account access
%% IDs,
%% secrets or tokens in any hyperparameter field. If the use of
%% security-sensitive
%% credentials are detected, SageMaker will reject your training job request
%% and return an
%% exception error.
-spec create_hyper_parameter_tuning_job(aws_client:aws_client(), create_hyper_parameter_tuning_job_request()) ->
    {ok, create_hyper_parameter_tuning_job_response(), tuple()} |
    {error, any()} |
    {error, create_hyper_parameter_tuning_job_errors(), tuple()}.
create_hyper_parameter_tuning_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hyper_parameter_tuning_job(Client, Input, []).

-spec create_hyper_parameter_tuning_job(aws_client:aws_client(), create_hyper_parameter_tuning_job_request(), proplists:proplist()) ->
    {ok, create_hyper_parameter_tuning_job_response(), tuple()} |
    {error, any()} |
    {error, create_hyper_parameter_tuning_job_errors(), tuple()}.
create_hyper_parameter_tuning_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHyperParameterTuningJob">>, Input, Options).

%% @doc Creates a custom SageMaker AI image.
%%
%% A SageMaker AI image is a set of image versions. Each image
%% version represents a container image stored in Amazon ECR. For more
%% information, see
%% Bring your own SageMaker AI image:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/studio-byoi.html.
-spec create_image(aws_client:aws_client(), create_image_request()) ->
    {ok, create_image_response(), tuple()} |
    {error, any()} |
    {error, create_image_errors(), tuple()}.
create_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_image(Client, Input, []).

-spec create_image(aws_client:aws_client(), create_image_request(), proplists:proplist()) ->
    {ok, create_image_response(), tuple()} |
    {error, any()} |
    {error, create_image_errors(), tuple()}.
create_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateImage">>, Input, Options).

%% @doc Creates a version of the SageMaker AI image specified by
%% `ImageName'.
%%
%% The version
%% represents the Amazon ECR container image specified by `BaseImage'.
-spec create_image_version(aws_client:aws_client(), create_image_version_request()) ->
    {ok, create_image_version_response(), tuple()} |
    {error, any()} |
    {error, create_image_version_errors(), tuple()}.
create_image_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_image_version(Client, Input, []).

-spec create_image_version(aws_client:aws_client(), create_image_version_request(), proplists:proplist()) ->
    {ok, create_image_version_response(), tuple()} |
    {error, any()} |
    {error, create_image_version_errors(), tuple()}.
create_image_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateImageVersion">>, Input, Options).

%% @doc Creates an inference component, which is a SageMaker AI hosting
%% object that you can
%% use to deploy a model to an endpoint.
%%
%% In the inference component settings, you specify the
%% model, the endpoint, and how the model utilizes the resources that the
%% endpoint hosts. You
%% can optimize resource utilization by tailoring how the required CPU cores,
%% accelerators,
%% and memory are allocated. You can deploy multiple inference components to
%% an endpoint,
%% where each inference component contains one model and the resource
%% utilization needs for
%% that individual model. After you deploy an inference component, you can
%% directly invoke the
%% associated model when you use the InvokeEndpoint API action.
-spec create_inference_component(aws_client:aws_client(), create_inference_component_input()) ->
    {ok, create_inference_component_output(), tuple()} |
    {error, any()} |
    {error, create_inference_component_errors(), tuple()}.
create_inference_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_inference_component(Client, Input, []).

-spec create_inference_component(aws_client:aws_client(), create_inference_component_input(), proplists:proplist()) ->
    {ok, create_inference_component_output(), tuple()} |
    {error, any()} |
    {error, create_inference_component_errors(), tuple()}.
create_inference_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInferenceComponent">>, Input, Options).

%% @doc
%% Creates an inference experiment using the configurations specified in the
%% request.
%%
%% Use this API to setup and schedule an experiment to compare model variants
%% on a Amazon SageMaker inference endpoint. For
%% more information about inference experiments, see Shadow tests:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/shadow-tests.html.
%%
%% Amazon SageMaker begins your experiment at the scheduled time and routes
%% traffic to your endpoint's model variants based
%% on your specified configuration.
%%
%% While the experiment is in progress or after it has concluded, you can
%% view metrics that compare your model
%% variants. For more information, see View, monitor, and edit shadow tests:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/shadow-tests-view-monitor-edit.html.
-spec create_inference_experiment(aws_client:aws_client(), create_inference_experiment_request()) ->
    {ok, create_inference_experiment_response(), tuple()} |
    {error, any()} |
    {error, create_inference_experiment_errors(), tuple()}.
create_inference_experiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_inference_experiment(Client, Input, []).

-spec create_inference_experiment(aws_client:aws_client(), create_inference_experiment_request(), proplists:proplist()) ->
    {ok, create_inference_experiment_response(), tuple()} |
    {error, any()} |
    {error, create_inference_experiment_errors(), tuple()}.
create_inference_experiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInferenceExperiment">>, Input, Options).

%% @doc Starts a recommendation job.
%%
%% You can create either an instance
%% recommendation or load test job.
-spec create_inference_recommendations_job(aws_client:aws_client(), create_inference_recommendations_job_request()) ->
    {ok, create_inference_recommendations_job_response(), tuple()} |
    {error, any()} |
    {error, create_inference_recommendations_job_errors(), tuple()}.
create_inference_recommendations_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_inference_recommendations_job(Client, Input, []).

-spec create_inference_recommendations_job(aws_client:aws_client(), create_inference_recommendations_job_request(), proplists:proplist()) ->
    {ok, create_inference_recommendations_job_response(), tuple()} |
    {error, any()} |
    {error, create_inference_recommendations_job_errors(), tuple()}.
create_inference_recommendations_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInferenceRecommendationsJob">>, Input, Options).

%% @doc Creates a job that uses workers to label the data objects in your
%% input dataset.
%%
%% You
%% can use the labeled data to train machine learning models.
%%
%% You can select your workforce from one of three providers:
%%
%% A private workforce that you create. It can include employees,
%% contractors,
%% and outside experts. Use a private workforce when want the data to stay
%% within
%% your organization or when a specific set of skills is required.
%%
%% One or more vendors that you select from the Amazon Web Services
%% Marketplace. Vendors provide
%% expertise in specific areas.
%%
%% The Amazon Mechanical Turk workforce. This is the largest workforce, but
%% it
%% should only be used for public data or data that has been stripped of any
%% personally identifiable information.
%%
%% You can also use automated data labeling to reduce the number of
%% data objects that need to be labeled by a human. Automated data labeling
%% uses
%% active learning to determine if a data object can be labeled by
%% machine or if it needs to be sent to a human worker. For more information,
%% see Using
%% Automated Data Labeling:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/sms-automated-labeling.html.
%%
%% The data objects to be labeled are contained in an Amazon S3 bucket. You
%% create a
%% manifest file that describes the location of each object. For
%% more information, see Using Input and Output Data:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/sms-data.html.
%%
%% The output can be used as the manifest file for another labeling job or as
%% training
%% data for your machine learning models.
%%
%% You can use this operation to create a static labeling job or a streaming
%% labeling
%% job. A static labeling job stops if all data objects in the input manifest
%% file
%% identified in `ManifestS3Uri' have been labeled. A streaming labeling
%% job
%% runs perpetually until it is manually stopped, or remains idle for 10
%% days. You can send
%% new data objects to an active (`InProgress') streaming labeling job in
%% real
%% time. To learn how to create a static labeling job, see Create a Labeling
%% Job
%% (API) :
%% https://docs.aws.amazon.com/sagemaker/latest/dg/sms-create-labeling-job-api.html
%% in the Amazon SageMaker Developer Guide. To learn how to create a
%% streaming
%% labeling job, see Create a Streaming Labeling
%% Job:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/sms-streaming-create-job.html.
-spec create_labeling_job(aws_client:aws_client(), create_labeling_job_request()) ->
    {ok, create_labeling_job_response(), tuple()} |
    {error, any()} |
    {error, create_labeling_job_errors(), tuple()}.
create_labeling_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_labeling_job(Client, Input, []).

-spec create_labeling_job(aws_client:aws_client(), create_labeling_job_request(), proplists:proplist()) ->
    {ok, create_labeling_job_response(), tuple()} |
    {error, any()} |
    {error, create_labeling_job_errors(), tuple()}.
create_labeling_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLabelingJob">>, Input, Options).

%% @doc Creates an MLflow Tracking Server using a general purpose Amazon S3
%% bucket as the artifact
%% store.
%%
%% For more information, see Create an MLflow Tracking
%% Server:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow-create-tracking-server.html.
-spec create_mlflow_tracking_server(aws_client:aws_client(), create_mlflow_tracking_server_request()) ->
    {ok, create_mlflow_tracking_server_response(), tuple()} |
    {error, any()} |
    {error, create_mlflow_tracking_server_errors(), tuple()}.
create_mlflow_tracking_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_mlflow_tracking_server(Client, Input, []).

-spec create_mlflow_tracking_server(aws_client:aws_client(), create_mlflow_tracking_server_request(), proplists:proplist()) ->
    {ok, create_mlflow_tracking_server_response(), tuple()} |
    {error, any()} |
    {error, create_mlflow_tracking_server_errors(), tuple()}.
create_mlflow_tracking_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMlflowTrackingServer">>, Input, Options).

%% @doc Creates a model in SageMaker.
%%
%% In the request, you name the model and describe a primary
%% container. For the primary container, you specify the Docker image that
%% contains inference code, artifacts (from prior training), and a custom
%% environment map
%% that the inference code uses when you deploy the model for predictions.
%%
%% Use this API to create a model if you want to use SageMaker hosting
%% services or run a batch
%% transform job.
%%
%% To host your model, you create an endpoint configuration with the
%% `CreateEndpointConfig' API, and then create an endpoint with the
%% `CreateEndpoint' API. SageMaker then deploys all of the containers
%% that you
%% defined for the model in the hosting environment.
%%
%% To run a batch transform using your model, you start a job with the
%% `CreateTransformJob' API. SageMaker uses your model and your dataset
%% to get
%% inferences which are then saved to a specified S3 location.
%%
%% In the request, you also provide an IAM role that SageMaker can assume to
%% access model
%% artifacts and docker image for deployment on ML compute hosting instances
%% or for batch
%% transform jobs. In addition, you also use the IAM role to manage
%% permissions the
%% inference code needs. For example, if the inference code access any other
%% Amazon Web Services resources, you grant necessary permissions via this
%% role.
-spec create_model(aws_client:aws_client(), create_model_input()) ->
    {ok, create_model_output(), tuple()} |
    {error, any()} |
    {error, create_model_errors(), tuple()}.
create_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model(Client, Input, []).

-spec create_model(aws_client:aws_client(), create_model_input(), proplists:proplist()) ->
    {ok, create_model_output(), tuple()} |
    {error, any()} |
    {error, create_model_errors(), tuple()}.
create_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModel">>, Input, Options).

%% @doc Creates the definition for a model bias job.
-spec create_model_bias_job_definition(aws_client:aws_client(), create_model_bias_job_definition_request()) ->
    {ok, create_model_bias_job_definition_response(), tuple()} |
    {error, any()} |
    {error, create_model_bias_job_definition_errors(), tuple()}.
create_model_bias_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model_bias_job_definition(Client, Input, []).

-spec create_model_bias_job_definition(aws_client:aws_client(), create_model_bias_job_definition_request(), proplists:proplist()) ->
    {ok, create_model_bias_job_definition_response(), tuple()} |
    {error, any()} |
    {error, create_model_bias_job_definition_errors(), tuple()}.
create_model_bias_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModelBiasJobDefinition">>, Input, Options).

%% @doc Creates an Amazon SageMaker Model Card.
%%
%% For information about how to use model cards, see Amazon SageMaker Model
%% Card: https://docs.aws.amazon.com/sagemaker/latest/dg/model-cards.html.
-spec create_model_card(aws_client:aws_client(), create_model_card_request()) ->
    {ok, create_model_card_response(), tuple()} |
    {error, any()} |
    {error, create_model_card_errors(), tuple()}.
create_model_card(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model_card(Client, Input, []).

-spec create_model_card(aws_client:aws_client(), create_model_card_request(), proplists:proplist()) ->
    {ok, create_model_card_response(), tuple()} |
    {error, any()} |
    {error, create_model_card_errors(), tuple()}.
create_model_card(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModelCard">>, Input, Options).

%% @doc Creates an Amazon SageMaker Model Card export job.
-spec create_model_card_export_job(aws_client:aws_client(), create_model_card_export_job_request()) ->
    {ok, create_model_card_export_job_response(), tuple()} |
    {error, any()} |
    {error, create_model_card_export_job_errors(), tuple()}.
create_model_card_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model_card_export_job(Client, Input, []).

-spec create_model_card_export_job(aws_client:aws_client(), create_model_card_export_job_request(), proplists:proplist()) ->
    {ok, create_model_card_export_job_response(), tuple()} |
    {error, any()} |
    {error, create_model_card_export_job_errors(), tuple()}.
create_model_card_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModelCardExportJob">>, Input, Options).

%% @doc Creates the definition for a model explainability job.
-spec create_model_explainability_job_definition(aws_client:aws_client(), create_model_explainability_job_definition_request()) ->
    {ok, create_model_explainability_job_definition_response(), tuple()} |
    {error, any()} |
    {error, create_model_explainability_job_definition_errors(), tuple()}.
create_model_explainability_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model_explainability_job_definition(Client, Input, []).

-spec create_model_explainability_job_definition(aws_client:aws_client(), create_model_explainability_job_definition_request(), proplists:proplist()) ->
    {ok, create_model_explainability_job_definition_response(), tuple()} |
    {error, any()} |
    {error, create_model_explainability_job_definition_errors(), tuple()}.
create_model_explainability_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModelExplainabilityJobDefinition">>, Input, Options).

%% @doc Creates a model package that you can use to create SageMaker models
%% or list on Amazon Web Services Marketplace, or a versioned model that is
%% part of a model group.
%%
%% Buyers
%% can subscribe to model packages listed on Amazon Web Services Marketplace
%% to create
%% models in SageMaker.
%%
%% To create a model package by specifying a Docker container that contains
%% your
%% inference code and the Amazon S3 location of your model artifacts, provide
%% values for
%% `InferenceSpecification'. To create a model from an algorithm resource
%% that you created or subscribed to in Amazon Web Services Marketplace,
%% provide a value for
%% `SourceAlgorithmSpecification'.
%%
%% There are two types of model packages:
%%
%% Versioned - a model that is part of a model group in the model
%% registry.
%%
%% Unversioned - a model package that is not part of a model group.
-spec create_model_package(aws_client:aws_client(), create_model_package_input()) ->
    {ok, create_model_package_output(), tuple()} |
    {error, any()} |
    {error, create_model_package_errors(), tuple()}.
create_model_package(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model_package(Client, Input, []).

-spec create_model_package(aws_client:aws_client(), create_model_package_input(), proplists:proplist()) ->
    {ok, create_model_package_output(), tuple()} |
    {error, any()} |
    {error, create_model_package_errors(), tuple()}.
create_model_package(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModelPackage">>, Input, Options).

%% @doc Creates a model group.
%%
%% A model group contains a group of model versions.
-spec create_model_package_group(aws_client:aws_client(), create_model_package_group_input()) ->
    {ok, create_model_package_group_output(), tuple()} |
    {error, any()} |
    {error, create_model_package_group_errors(), tuple()}.
create_model_package_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model_package_group(Client, Input, []).

-spec create_model_package_group(aws_client:aws_client(), create_model_package_group_input(), proplists:proplist()) ->
    {ok, create_model_package_group_output(), tuple()} |
    {error, any()} |
    {error, create_model_package_group_errors(), tuple()}.
create_model_package_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModelPackageGroup">>, Input, Options).

%% @doc Creates a definition for a job that monitors model quality and drift.
%%
%% For information
%% about model monitor, see Amazon SageMaker AI Model
%% Monitor:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor.html.
-spec create_model_quality_job_definition(aws_client:aws_client(), create_model_quality_job_definition_request()) ->
    {ok, create_model_quality_job_definition_response(), tuple()} |
    {error, any()} |
    {error, create_model_quality_job_definition_errors(), tuple()}.
create_model_quality_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model_quality_job_definition(Client, Input, []).

-spec create_model_quality_job_definition(aws_client:aws_client(), create_model_quality_job_definition_request(), proplists:proplist()) ->
    {ok, create_model_quality_job_definition_response(), tuple()} |
    {error, any()} |
    {error, create_model_quality_job_definition_errors(), tuple()}.
create_model_quality_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModelQualityJobDefinition">>, Input, Options).

%% @doc Creates a schedule that regularly starts Amazon SageMaker AI
%% Processing Jobs to
%% monitor the data captured for an Amazon SageMaker AI Endpoint.
-spec create_monitoring_schedule(aws_client:aws_client(), create_monitoring_schedule_request()) ->
    {ok, create_monitoring_schedule_response(), tuple()} |
    {error, any()} |
    {error, create_monitoring_schedule_errors(), tuple()}.
create_monitoring_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_monitoring_schedule(Client, Input, []).

-spec create_monitoring_schedule(aws_client:aws_client(), create_monitoring_schedule_request(), proplists:proplist()) ->
    {ok, create_monitoring_schedule_response(), tuple()} |
    {error, any()} |
    {error, create_monitoring_schedule_errors(), tuple()}.
create_monitoring_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMonitoringSchedule">>, Input, Options).

%% @doc Creates an SageMaker AI notebook instance.
%%
%% A notebook instance is a machine
%% learning (ML) compute instance running on a Jupyter notebook.
%%
%% In a `CreateNotebookInstance' request, specify the type of ML compute
%% instance that you want to run. SageMaker AI launches the instance,
%% installs common
%% libraries that you can use to explore datasets for model training, and
%% attaches an ML
%% storage volume to the notebook instance.
%%
%% SageMaker AI also provides a set of example notebooks. Each notebook
%% demonstrates how to use SageMaker AI with a specific algorithm or with a
%% machine
%% learning framework.
%%
%% After receiving the request, SageMaker AI does the following:
%%
%% Creates a network interface in the SageMaker AI VPC.
%%
%% (Option) If you specified `SubnetId', SageMaker AI creates
%% a network interface in your own VPC, which is inferred from the subnet ID
%% that
%% you provide in the input. When creating this network interface, SageMaker
%% AI attaches the security group that you specified in the request to the
%% network
%% interface that it creates in your VPC.
%%
%% Launches an EC2 instance of the type specified in the request in the
%% SageMaker AI VPC. If you specified `SubnetId' of your VPC,
%% SageMaker AI specifies both network interfaces when launching this
%% instance. This enables inbound traffic from your own VPC to the notebook
%% instance, assuming that the security groups allow it.
%%
%% After creating the notebook instance, SageMaker AI returns its Amazon
%% Resource
%% Name (ARN). You can't change the name of a notebook instance after you
%% create
%% it.
%%
%% After SageMaker AI creates the notebook instance, you can connect to the
%% Jupyter server and work in Jupyter notebooks. For example, you can write
%% code to explore
%% a dataset that you can use for model training, train a model, host models
%% by creating
%% SageMaker AI endpoints, and validate hosted models.
%%
%% For more information, see How It Works:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html.
-spec create_notebook_instance(aws_client:aws_client(), create_notebook_instance_input()) ->
    {ok, create_notebook_instance_output(), tuple()} |
    {error, any()} |
    {error, create_notebook_instance_errors(), tuple()}.
create_notebook_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_notebook_instance(Client, Input, []).

-spec create_notebook_instance(aws_client:aws_client(), create_notebook_instance_input(), proplists:proplist()) ->
    {ok, create_notebook_instance_output(), tuple()} |
    {error, any()} |
    {error, create_notebook_instance_errors(), tuple()}.
create_notebook_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNotebookInstance">>, Input, Options).

%% @doc Creates a lifecycle configuration that you can associate with a
%% notebook instance.
%%
%% A
%% lifecycle configuration is a collection of shell scripts that
%% run when you create or start a notebook instance.
%%
%% Each lifecycle configuration script has a limit of 16384 characters.
%%
%% The value of the `$PATH' environment variable that is available to
%% both
%% scripts is `/sbin:bin:/usr/sbin:/usr/bin'.
%%
%% View Amazon CloudWatch Logs for notebook instance lifecycle configurations
%% in log
%% group `/aws/sagemaker/NotebookInstances' in log stream
%% `[notebook-instance-name]/[LifecycleConfigHook]'.
%%
%% Lifecycle configuration scripts cannot run for longer than 5 minutes. If a
%% script runs
%% for longer than 5 minutes, it fails and the notebook instance is not
%% created or
%% started.
%%
%% For information about notebook instance lifestyle configurations, see Step
%% 2.1: (Optional) Customize a Notebook Instance:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html.
-spec create_notebook_instance_lifecycle_config(aws_client:aws_client(), create_notebook_instance_lifecycle_config_input()) ->
    {ok, create_notebook_instance_lifecycle_config_output(), tuple()} |
    {error, any()} |
    {error, create_notebook_instance_lifecycle_config_errors(), tuple()}.
create_notebook_instance_lifecycle_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_notebook_instance_lifecycle_config(Client, Input, []).

-spec create_notebook_instance_lifecycle_config(aws_client:aws_client(), create_notebook_instance_lifecycle_config_input(), proplists:proplist()) ->
    {ok, create_notebook_instance_lifecycle_config_output(), tuple()} |
    {error, any()} |
    {error, create_notebook_instance_lifecycle_config_errors(), tuple()}.
create_notebook_instance_lifecycle_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNotebookInstanceLifecycleConfig">>, Input, Options).

%% @doc Creates a job that optimizes a model for inference performance.
%%
%% To create the job, you
%% provide the location of a source model, and you provide the settings for
%% the optimization
%% techniques that you want the job to apply. When the job completes
%% successfully, SageMaker
%% uploads the new optimized model to the output destination that you
%% specify.
%%
%% For more information about how to use this action, and about the supported
%% optimization
%% techniques, see Optimize model inference with Amazon SageMaker:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/model-optimize.html.
-spec create_optimization_job(aws_client:aws_client(), create_optimization_job_request()) ->
    {ok, create_optimization_job_response(), tuple()} |
    {error, any()} |
    {error, create_optimization_job_errors(), tuple()}.
create_optimization_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_optimization_job(Client, Input, []).

-spec create_optimization_job(aws_client:aws_client(), create_optimization_job_request(), proplists:proplist()) ->
    {ok, create_optimization_job_response(), tuple()} |
    {error, any()} |
    {error, create_optimization_job_errors(), tuple()}.
create_optimization_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOptimizationJob">>, Input, Options).

%% @doc Creates an Amazon SageMaker Partner AI App.
-spec create_partner_app(aws_client:aws_client(), create_partner_app_request()) ->
    {ok, create_partner_app_response(), tuple()} |
    {error, any()} |
    {error, create_partner_app_errors(), tuple()}.
create_partner_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_partner_app(Client, Input, []).

-spec create_partner_app(aws_client:aws_client(), create_partner_app_request(), proplists:proplist()) ->
    {ok, create_partner_app_response(), tuple()} |
    {error, any()} |
    {error, create_partner_app_errors(), tuple()}.
create_partner_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePartnerApp">>, Input, Options).

%% @doc Creates a presigned URL to access an Amazon SageMaker Partner AI App.
-spec create_partner_app_presigned_url(aws_client:aws_client(), create_partner_app_presigned_url_request()) ->
    {ok, create_partner_app_presigned_url_response(), tuple()} |
    {error, any()} |
    {error, create_partner_app_presigned_url_errors(), tuple()}.
create_partner_app_presigned_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_partner_app_presigned_url(Client, Input, []).

-spec create_partner_app_presigned_url(aws_client:aws_client(), create_partner_app_presigned_url_request(), proplists:proplist()) ->
    {ok, create_partner_app_presigned_url_response(), tuple()} |
    {error, any()} |
    {error, create_partner_app_presigned_url_errors(), tuple()}.
create_partner_app_presigned_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePartnerAppPresignedUrl">>, Input, Options).

%% @doc Creates a pipeline using a JSON pipeline definition.
-spec create_pipeline(aws_client:aws_client(), create_pipeline_request()) ->
    {ok, create_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_pipeline_errors(), tuple()}.
create_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_pipeline(Client, Input, []).

-spec create_pipeline(aws_client:aws_client(), create_pipeline_request(), proplists:proplist()) ->
    {ok, create_pipeline_response(), tuple()} |
    {error, any()} |
    {error, create_pipeline_errors(), tuple()}.
create_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePipeline">>, Input, Options).

%% @doc Creates a URL for a specified UserProfile in a Domain.
%%
%% When accessed in a web browser, the
%% user will be automatically signed in to the domain, and granted access to
%% all of the Apps and
%% files associated with the Domain's Amazon Elastic File System volume.
%% This operation can only be
%% called when the authentication mode equals IAM.
%%
%% The IAM role or user passed to this API defines the permissions to access
%% the app. Once the presigned URL is created, no additional permission is
%% required to access
%% this URL. IAM authorization policies for this API are also enforced for
%% every
%% HTTP request and WebSocket frame that attempts to connect to the app.
%%
%% You can restrict access to this API and to the URL that it returns to a
%% list of IP
%% addresses, Amazon VPCs or Amazon VPC Endpoints that you specify. For more
%% information, see Connect to Amazon SageMaker AI
%% Studio Through an Interface VPC Endpoint:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/studio-interface-endpoint.html
%% .
%%
%% The URL that you get from a call to `CreatePresignedDomainUrl' has a
%% default timeout of 5 minutes. You can configure this value using
%% `ExpiresInSeconds'. If you try to use the URL after the timeout limit
%% expires, you are directed to the Amazon Web Services console sign-in page.
%%
%% The JupyterLab session default expiration time is 12 hours. You can
%% configure this
%% value using SessionExpirationDurationInSeconds.
-spec create_presigned_domain_url(aws_client:aws_client(), create_presigned_domain_url_request()) ->
    {ok, create_presigned_domain_url_response(), tuple()} |
    {error, any()} |
    {error, create_presigned_domain_url_errors(), tuple()}.
create_presigned_domain_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_presigned_domain_url(Client, Input, []).

-spec create_presigned_domain_url(aws_client:aws_client(), create_presigned_domain_url_request(), proplists:proplist()) ->
    {ok, create_presigned_domain_url_response(), tuple()} |
    {error, any()} |
    {error, create_presigned_domain_url_errors(), tuple()}.
create_presigned_domain_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePresignedDomainUrl">>, Input, Options).

%% @doc Returns a presigned URL that you can use to connect to the MLflow UI
%% attached to your
%% tracking server.
%%
%% For more information, see Launch the MLflow UI using a presigned URL:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow-launch-ui.html.
-spec create_presigned_mlflow_tracking_server_url(aws_client:aws_client(), create_presigned_mlflow_tracking_server_url_request()) ->
    {ok, create_presigned_mlflow_tracking_server_url_response(), tuple()} |
    {error, any()} |
    {error, create_presigned_mlflow_tracking_server_url_errors(), tuple()}.
create_presigned_mlflow_tracking_server_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_presigned_mlflow_tracking_server_url(Client, Input, []).

-spec create_presigned_mlflow_tracking_server_url(aws_client:aws_client(), create_presigned_mlflow_tracking_server_url_request(), proplists:proplist()) ->
    {ok, create_presigned_mlflow_tracking_server_url_response(), tuple()} |
    {error, any()} |
    {error, create_presigned_mlflow_tracking_server_url_errors(), tuple()}.
create_presigned_mlflow_tracking_server_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePresignedMlflowTrackingServerUrl">>, Input, Options).

%% @doc Returns a URL that you can use to connect to the Jupyter server from
%% a notebook
%% instance.
%%
%% In the SageMaker AI console, when you choose `Open' next to a
%% notebook instance, SageMaker AI opens a new tab showing the Jupyter server
%% home
%% page from the notebook instance. The console uses this API to get the URL
%% and show the
%% page.
%%
%% The IAM role or user used to call this API defines the permissions to
%% access the notebook instance. Once the presigned URL is created, no
%% additional
%% permission is required to access this URL. IAM authorization policies for
%% this API are also enforced for every HTTP request and WebSocket frame that
%% attempts to
%% connect to the notebook instance.
%%
%% You can restrict access to this API and to the URL that it returns to a
%% list of IP
%% addresses that you specify. Use the `NotIpAddress' condition operator
%% and the
%% `aws:SourceIP' condition context key to specify the list of IP
%% addresses
%% that you want to have access to the notebook instance. For more
%% information, see Limit Access to a Notebook Instance by IP Address:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/security_iam_id-based-policy-examples.html#nbi-ip-filter.
%%
%% The URL that you get from a call to CreatePresignedNotebookInstanceUrl:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreatePresignedNotebookInstanceUrl.html
%% is valid only for 5 minutes. If you
%% try to use the URL after the 5-minute limit expires, you are directed to
%% the Amazon Web Services console sign-in page.
-spec create_presigned_notebook_instance_url(aws_client:aws_client(), create_presigned_notebook_instance_url_input()) ->
    {ok, create_presigned_notebook_instance_url_output(), tuple()} |
    {error, any()}.
create_presigned_notebook_instance_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_presigned_notebook_instance_url(Client, Input, []).

-spec create_presigned_notebook_instance_url(aws_client:aws_client(), create_presigned_notebook_instance_url_input(), proplists:proplist()) ->
    {ok, create_presigned_notebook_instance_url_output(), tuple()} |
    {error, any()}.
create_presigned_notebook_instance_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePresignedNotebookInstanceUrl">>, Input, Options).

%% @doc Creates a processing job.
-spec create_processing_job(aws_client:aws_client(), create_processing_job_request()) ->
    {ok, create_processing_job_response(), tuple()} |
    {error, any()} |
    {error, create_processing_job_errors(), tuple()}.
create_processing_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_processing_job(Client, Input, []).

-spec create_processing_job(aws_client:aws_client(), create_processing_job_request(), proplists:proplist()) ->
    {ok, create_processing_job_response(), tuple()} |
    {error, any()} |
    {error, create_processing_job_errors(), tuple()}.
create_processing_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProcessingJob">>, Input, Options).

%% @doc Creates a machine learning (ML) project that can contain one or more
%% templates that set
%% up an ML pipeline from training to deploying an approved model.
-spec create_project(aws_client:aws_client(), create_project_input()) ->
    {ok, create_project_output(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
create_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_project(Client, Input, []).

-spec create_project(aws_client:aws_client(), create_project_input(), proplists:proplist()) ->
    {ok, create_project_output(), tuple()} |
    {error, any()} |
    {error, create_project_errors(), tuple()}.
create_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProject">>, Input, Options).

%% @doc Creates a private space or a space used for real time collaboration
%% in a domain.
-spec create_space(aws_client:aws_client(), create_space_request()) ->
    {ok, create_space_response(), tuple()} |
    {error, any()} |
    {error, create_space_errors(), tuple()}.
create_space(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_space(Client, Input, []).

-spec create_space(aws_client:aws_client(), create_space_request(), proplists:proplist()) ->
    {ok, create_space_response(), tuple()} |
    {error, any()} |
    {error, create_space_errors(), tuple()}.
create_space(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSpace">>, Input, Options).

%% @doc Creates a new Amazon SageMaker AI Studio Lifecycle Configuration.
-spec create_studio_lifecycle_config(aws_client:aws_client(), create_studio_lifecycle_config_request()) ->
    {ok, create_studio_lifecycle_config_response(), tuple()} |
    {error, any()} |
    {error, create_studio_lifecycle_config_errors(), tuple()}.
create_studio_lifecycle_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_studio_lifecycle_config(Client, Input, []).

-spec create_studio_lifecycle_config(aws_client:aws_client(), create_studio_lifecycle_config_request(), proplists:proplist()) ->
    {ok, create_studio_lifecycle_config_response(), tuple()} |
    {error, any()} |
    {error, create_studio_lifecycle_config_errors(), tuple()}.
create_studio_lifecycle_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStudioLifecycleConfig">>, Input, Options).

%% @doc Starts a model training job.
%%
%% After training completes, SageMaker saves the resulting
%% model artifacts to an Amazon S3 location that you specify.
%%
%% If you choose to host your model using SageMaker hosting services, you can
%% use the
%% resulting model artifacts as part of the model. You can also use the
%% artifacts in a
%% machine learning service other than SageMaker, provided that you know how
%% to use them for
%% inference.
%%
%% In the request body, you provide the following:
%%
%% `AlgorithmSpecification' - Identifies the training algorithm to
%% use.
%%
%% `HyperParameters' - Specify these algorithm-specific parameters to
%% enable the estimation of model parameters during training. Hyperparameters
%% can
%% be tuned to optimize this learning process. For a list of hyperparameters
%% for
%% each training algorithm provided by SageMaker, see Algorithms:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html.
%%
%% Do not include any security-sensitive information including account access
%% IDs, secrets or tokens in any hyperparameter field. If the use of
%% security-sensitive credentials are detected, SageMaker will reject your
%% training
%% job request and return an exception error.
%%
%% `InputDataConfig' - Describes the input required by the training
%% job and the Amazon S3, EFS, or FSx location where it is stored.
%%
%% `OutputDataConfig' - Identifies the Amazon S3 bucket where you want
%% SageMaker to save the results of model training.
%%
%% `ResourceConfig' - Identifies the resources, ML compute
%% instances, and ML storage volumes to deploy for model training. In
%% distributed
%% training, you specify more than one instance.
%%
%% `EnableManagedSpotTraining' - Optimize the cost of training machine
%% learning models by up to 80% by using Amazon EC2 Spot instances. For more
%% information, see Managed Spot
%% Training:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/model-managed-spot-training.html.
%%
%% `RoleArn' - The Amazon Resource Name (ARN) that SageMaker assumes to
%% perform tasks on
%% your behalf during model training.
%%
%% You must grant this role the necessary permissions so that SageMaker can
%% successfully
%% complete model training.
%%
%% `StoppingCondition' - To help cap training costs, use
%% `MaxRuntimeInSeconds' to set a time limit for training. Use
%% `MaxWaitTimeInSeconds' to specify how long a managed spot
%% training job has to complete.
%%
%% `Environment' - The environment variables to set in the Docker
%% container.
%%
%% `RetryStrategy' - The number of times to retry the job when the job
%% fails due to an `InternalServerError'.
%%
%% For more information about SageMaker, see How It Works:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html.
-spec create_training_job(aws_client:aws_client(), create_training_job_request()) ->
    {ok, create_training_job_response(), tuple()} |
    {error, any()} |
    {error, create_training_job_errors(), tuple()}.
create_training_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_training_job(Client, Input, []).

-spec create_training_job(aws_client:aws_client(), create_training_job_request(), proplists:proplist()) ->
    {ok, create_training_job_response(), tuple()} |
    {error, any()} |
    {error, create_training_job_errors(), tuple()}.
create_training_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrainingJob">>, Input, Options).

%% @doc Creates a new training plan in SageMaker to reserve compute capacity.
%%
%% Amazon SageMaker Training Plan is a capability within SageMaker that
%% allows customers to reserve and manage GPU
%% capacity for large-scale AI model training. It provides a way to secure
%% predictable access
%% to computational resources within specific timelines and budgets, without
%% the need to
%% manage underlying infrastructure.
%%
%% How it works
%%
%% Plans can be created for specific resources such as SageMaker Training
%% Jobs or SageMaker HyperPod
%% clusters, automatically provisioning resources, setting up infrastructure,
%% executing
%% workloads, and handling infrastructure failures.
%%
%% Plan creation workflow
%%
%% Users search for available plan offerings based on their requirements
%% (e.g.,
%% instance type, count, start time, duration) using the
%% ```
%% SearchTrainingPlanOfferings:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_SearchTrainingPlanOfferings.html
%% ''' API operation.
%%
%% They create a plan that best matches their needs using the ID of the plan
%% offering
%% they want to use.
%%
%% After successful upfront payment, the plan's status becomes
%% `Scheduled'.
%%
%% The plan can be used to:
%%
%% Queue training jobs.
%%
%% Allocate to an instance group of a SageMaker HyperPod cluster.
%%
%% When the plan start date arrives, it becomes `Active'. Based on
%% available reserved capacity:
%%
%% Training jobs are launched.
%%
%% Instance groups are provisioned.
%%
%% Plan composition
%%
%% A plan can consist of one or more Reserved Capacities, each defined by a
%% specific
%% instance type, quantity, Availability Zone, duration, and start and end
%% times. For more
%% information about Reserved Capacity, see
%% ```
%% ReservedCapacitySummary:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ReservedCapacitySummary.html
%% '''.
-spec create_training_plan(aws_client:aws_client(), create_training_plan_request()) ->
    {ok, create_training_plan_response(), tuple()} |
    {error, any()} |
    {error, create_training_plan_errors(), tuple()}.
create_training_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_training_plan(Client, Input, []).

-spec create_training_plan(aws_client:aws_client(), create_training_plan_request(), proplists:proplist()) ->
    {ok, create_training_plan_response(), tuple()} |
    {error, any()} |
    {error, create_training_plan_errors(), tuple()}.
create_training_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrainingPlan">>, Input, Options).

%% @doc Starts a transform job.
%%
%% A transform job uses a trained model to get inferences on a
%% dataset and saves these results to an Amazon S3 location that you specify.
%%
%% To perform batch transformations, you create a transform job and use the
%% data that you
%% have readily available.
%%
%% In the request body, you provide the following:
%%
%% `TransformJobName' - Identifies the transform job. The name must be
%% unique within an Amazon Web Services Region in an Amazon Web Services
%% account.
%%
%% `ModelName' - Identifies the model to use. `ModelName'
%% must be the name of an existing Amazon SageMaker model in the same Amazon
%% Web Services Region and Amazon Web Services
%% account. For information on creating a model, see CreateModel:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateModel.html.
%%
%% `TransformInput' - Describes the dataset to be transformed and the
%% Amazon S3 location where it is stored.
%%
%% `TransformOutput' - Identifies the Amazon S3 location where you want
%% Amazon SageMaker to save the results from the transform job.
%%
%% `TransformResources' - Identifies the ML compute instances for the
%% transform job.
%%
%% For more information about how batch transformation works, see Batch
%% Transform:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform.html.
-spec create_transform_job(aws_client:aws_client(), create_transform_job_request()) ->
    {ok, create_transform_job_response(), tuple()} |
    {error, any()} |
    {error, create_transform_job_errors(), tuple()}.
create_transform_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_transform_job(Client, Input, []).

-spec create_transform_job(aws_client:aws_client(), create_transform_job_request(), proplists:proplist()) ->
    {ok, create_transform_job_response(), tuple()} |
    {error, any()} |
    {error, create_transform_job_errors(), tuple()}.
create_transform_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTransformJob">>, Input, Options).

%% @doc Creates an SageMaker trial.
%%
%% A trial is a set of steps called
%% trial components that produce a machine learning model. A trial is part
%% of a single SageMaker experiment.
%%
%% When you use SageMaker Studio or the SageMaker Python SDK, all
%% experiments, trials, and trial
%% components are automatically tracked, logged, and indexed. When you use
%% the Amazon Web Services SDK for Python (Boto), you
%% must use the logging APIs provided by the SDK.
%%
%% You can add tags to a trial and then use the Search:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_Search.html
%% API to search for
%% the tags.
%%
%% To get a list of all your trials, call the ListTrials:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListTrials.html
%% API. To view a
%% trial's properties, call the DescribeTrial:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeTrial.html
%% API. To create a trial component,
%% call the CreateTrialComponent:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateTrialComponent.html
%% API.
-spec create_trial(aws_client:aws_client(), create_trial_request()) ->
    {ok, create_trial_response(), tuple()} |
    {error, any()} |
    {error, create_trial_errors(), tuple()}.
create_trial(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_trial(Client, Input, []).

-spec create_trial(aws_client:aws_client(), create_trial_request(), proplists:proplist()) ->
    {ok, create_trial_response(), tuple()} |
    {error, any()} |
    {error, create_trial_errors(), tuple()}.
create_trial(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrial">>, Input, Options).

%% @doc Creates a trial component, which is a stage of a machine learning
%% trial.
%%
%% A trial is composed of one or more trial components. A trial
%% component can be used in multiple trials.
%%
%% Trial components include pre-processing jobs, training jobs, and batch
%% transform
%% jobs.
%%
%% When you use SageMaker Studio or the SageMaker Python SDK, all
%% experiments, trials, and trial
%% components are automatically tracked, logged, and indexed. When you use
%% the Amazon Web Services SDK for Python (Boto), you
%% must use the logging APIs provided by the SDK.
%%
%% You can add tags to a trial component and then use the Search:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_Search.html
%% API to
%% search for the tags.
-spec create_trial_component(aws_client:aws_client(), create_trial_component_request()) ->
    {ok, create_trial_component_response(), tuple()} |
    {error, any()} |
    {error, create_trial_component_errors(), tuple()}.
create_trial_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_trial_component(Client, Input, []).

-spec create_trial_component(aws_client:aws_client(), create_trial_component_request(), proplists:proplist()) ->
    {ok, create_trial_component_response(), tuple()} |
    {error, any()} |
    {error, create_trial_component_errors(), tuple()}.
create_trial_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrialComponent">>, Input, Options).

%% @doc Creates a user profile.
%%
%% A user profile represents a single user within a domain, and is
%% the main way to reference a &quot;person&quot; for the purposes of
%% sharing, reporting, and other
%% user-oriented features. This entity is created when a user onboards to a
%% domain. If an
%% administrator invites a person by email or imports them from IAM Identity
%% Center, a user
%% profile is automatically created. A user profile is the primary holder of
%% settings for an
%% individual user and has a reference to the user's private Amazon
%% Elastic File System home
%% directory.
-spec create_user_profile(aws_client:aws_client(), create_user_profile_request()) ->
    {ok, create_user_profile_response(), tuple()} |
    {error, any()} |
    {error, create_user_profile_errors(), tuple()}.
create_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_profile(Client, Input, []).

-spec create_user_profile(aws_client:aws_client(), create_user_profile_request(), proplists:proplist()) ->
    {ok, create_user_profile_response(), tuple()} |
    {error, any()} |
    {error, create_user_profile_errors(), tuple()}.
create_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserProfile">>, Input, Options).

%% @doc Use this operation to create a workforce.
%%
%% This operation will return an error
%% if a workforce already exists in the Amazon Web Services Region that you
%% specify. You can only
%% create one workforce in each Amazon Web Services Region per Amazon Web
%% Services account.
%%
%% If you want to create a new workforce in an Amazon Web Services Region
%% where
%% a workforce already exists, use the DeleteWorkforce:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteWorkforce.html
%% API
%% operation to delete the existing workforce and then use
%% `CreateWorkforce'
%% to create a new workforce.
%%
%% To create a private workforce using Amazon Cognito, you must specify a
%% Cognito user pool
%% in `CognitoConfig'.
%% You can also create an Amazon Cognito workforce using the Amazon SageMaker
%% console.
%% For more information, see
%%
%% Create a Private Workforce (Amazon Cognito):
%% https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-create-private.html.
%%
%% To create a private workforce using your own OIDC Identity Provider (IdP),
%% specify your IdP
%% configuration in `OidcConfig'. Your OIDC IdP must support groups
%% because groups are used by Ground Truth and Amazon A2I to create work
%% teams.
%% For more information, see
%% Create a Private Workforce (OIDC IdP):
%% https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-create-private-oidc.html.
-spec create_workforce(aws_client:aws_client(), create_workforce_request()) ->
    {ok, create_workforce_response(), tuple()} |
    {error, any()}.
create_workforce(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workforce(Client, Input, []).

-spec create_workforce(aws_client:aws_client(), create_workforce_request(), proplists:proplist()) ->
    {ok, create_workforce_response(), tuple()} |
    {error, any()}.
create_workforce(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkforce">>, Input, Options).

%% @doc Creates a new work team for labeling your data.
%%
%% A work team is defined by one or more
%% Amazon Cognito user pools. You must first create the user pools before you
%% can create a work
%% team.
%%
%% You cannot create more than 25 work teams in an account and region.
-spec create_workteam(aws_client:aws_client(), create_workteam_request()) ->
    {ok, create_workteam_response(), tuple()} |
    {error, any()} |
    {error, create_workteam_errors(), tuple()}.
create_workteam(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workteam(Client, Input, []).

-spec create_workteam(aws_client:aws_client(), create_workteam_request(), proplists:proplist()) ->
    {ok, create_workteam_response(), tuple()} |
    {error, any()} |
    {error, create_workteam_errors(), tuple()}.
create_workteam(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkteam">>, Input, Options).

%% @doc Deletes an action.
-spec delete_action(aws_client:aws_client(), delete_action_request()) ->
    {ok, delete_action_response(), tuple()} |
    {error, any()} |
    {error, delete_action_errors(), tuple()}.
delete_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_action(Client, Input, []).

-spec delete_action(aws_client:aws_client(), delete_action_request(), proplists:proplist()) ->
    {ok, delete_action_response(), tuple()} |
    {error, any()} |
    {error, delete_action_errors(), tuple()}.
delete_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAction">>, Input, Options).

%% @doc Removes the specified algorithm from your account.
-spec delete_algorithm(aws_client:aws_client(), delete_algorithm_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_algorithm_errors(), tuple()}.
delete_algorithm(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_algorithm(Client, Input, []).

-spec delete_algorithm(aws_client:aws_client(), delete_algorithm_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_algorithm_errors(), tuple()}.
delete_algorithm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAlgorithm">>, Input, Options).

%% @doc Used to stop and delete an app.
-spec delete_app(aws_client:aws_client(), delete_app_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_errors(), tuple()}.
delete_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_app(Client, Input, []).

-spec delete_app(aws_client:aws_client(), delete_app_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_errors(), tuple()}.
delete_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApp">>, Input, Options).

%% @doc Deletes an AppImageConfig.
-spec delete_app_image_config(aws_client:aws_client(), delete_app_image_config_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_image_config_errors(), tuple()}.
delete_app_image_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_app_image_config(Client, Input, []).

-spec delete_app_image_config(aws_client:aws_client(), delete_app_image_config_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_app_image_config_errors(), tuple()}.
delete_app_image_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAppImageConfig">>, Input, Options).

%% @doc Deletes an artifact.
%%
%% Either `ArtifactArn' or `Source' must be
%% specified.
-spec delete_artifact(aws_client:aws_client(), delete_artifact_request()) ->
    {ok, delete_artifact_response(), tuple()} |
    {error, any()} |
    {error, delete_artifact_errors(), tuple()}.
delete_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_artifact(Client, Input, []).

-spec delete_artifact(aws_client:aws_client(), delete_artifact_request(), proplists:proplist()) ->
    {ok, delete_artifact_response(), tuple()} |
    {error, any()} |
    {error, delete_artifact_errors(), tuple()}.
delete_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteArtifact">>, Input, Options).

%% @doc Deletes an association.
-spec delete_association(aws_client:aws_client(), delete_association_request()) ->
    {ok, delete_association_response(), tuple()} |
    {error, any()} |
    {error, delete_association_errors(), tuple()}.
delete_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_association(Client, Input, []).

-spec delete_association(aws_client:aws_client(), delete_association_request(), proplists:proplist()) ->
    {ok, delete_association_response(), tuple()} |
    {error, any()} |
    {error, delete_association_errors(), tuple()}.
delete_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAssociation">>, Input, Options).

%% @doc Delete a SageMaker HyperPod cluster.
-spec delete_cluster(aws_client:aws_client(), delete_cluster_request()) ->
    {ok, delete_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cluster(Client, Input, []).

-spec delete_cluster(aws_client:aws_client(), delete_cluster_request(), proplists:proplist()) ->
    {ok, delete_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCluster">>, Input, Options).

%% @doc Deletes the cluster policy of the cluster.
-spec delete_cluster_scheduler_config(aws_client:aws_client(), delete_cluster_scheduler_config_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cluster_scheduler_config_errors(), tuple()}.
delete_cluster_scheduler_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cluster_scheduler_config(Client, Input, []).

-spec delete_cluster_scheduler_config(aws_client:aws_client(), delete_cluster_scheduler_config_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_cluster_scheduler_config_errors(), tuple()}.
delete_cluster_scheduler_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteClusterSchedulerConfig">>, Input, Options).

%% @doc Deletes the specified Git repository from your account.
-spec delete_code_repository(aws_client:aws_client(), delete_code_repository_input()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_code_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_code_repository(Client, Input, []).

-spec delete_code_repository(aws_client:aws_client(), delete_code_repository_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_code_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCodeRepository">>, Input, Options).

%% @doc Deletes the specified compilation job.
%%
%% This action deletes only the compilation job
%% resource in Amazon SageMaker AI. It doesn't delete other resources
%% that are related to
%% that job, such as the model artifacts that the job creates, the
%% compilation logs in
%% CloudWatch, the compiled model, or the IAM role.
%%
%% You can delete a compilation job only if its current status is
%% `COMPLETED',
%% `FAILED', or `STOPPED'. If the job status is
%% `STARTING' or `INPROGRESS', stop the job, and then delete it
%% after its status becomes `STOPPED'.
-spec delete_compilation_job(aws_client:aws_client(), delete_compilation_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_compilation_job_errors(), tuple()}.
delete_compilation_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_compilation_job(Client, Input, []).

-spec delete_compilation_job(aws_client:aws_client(), delete_compilation_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_compilation_job_errors(), tuple()}.
delete_compilation_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCompilationJob">>, Input, Options).

%% @doc Deletes the compute allocation from the cluster.
-spec delete_compute_quota(aws_client:aws_client(), delete_compute_quota_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_compute_quota_errors(), tuple()}.
delete_compute_quota(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_compute_quota(Client, Input, []).

-spec delete_compute_quota(aws_client:aws_client(), delete_compute_quota_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_compute_quota_errors(), tuple()}.
delete_compute_quota(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteComputeQuota">>, Input, Options).

%% @doc Deletes an context.
-spec delete_context(aws_client:aws_client(), delete_context_request()) ->
    {ok, delete_context_response(), tuple()} |
    {error, any()} |
    {error, delete_context_errors(), tuple()}.
delete_context(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_context(Client, Input, []).

-spec delete_context(aws_client:aws_client(), delete_context_request(), proplists:proplist()) ->
    {ok, delete_context_response(), tuple()} |
    {error, any()} |
    {error, delete_context_errors(), tuple()}.
delete_context(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteContext">>, Input, Options).

%% @doc Deletes a data quality monitoring job definition.
-spec delete_data_quality_job_definition(aws_client:aws_client(), delete_data_quality_job_definition_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_data_quality_job_definition_errors(), tuple()}.
delete_data_quality_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_data_quality_job_definition(Client, Input, []).

-spec delete_data_quality_job_definition(aws_client:aws_client(), delete_data_quality_job_definition_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_data_quality_job_definition_errors(), tuple()}.
delete_data_quality_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataQualityJobDefinition">>, Input, Options).

%% @doc Deletes a fleet.
-spec delete_device_fleet(aws_client:aws_client(), delete_device_fleet_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_device_fleet_errors(), tuple()}.
delete_device_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_device_fleet(Client, Input, []).

-spec delete_device_fleet(aws_client:aws_client(), delete_device_fleet_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_device_fleet_errors(), tuple()}.
delete_device_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDeviceFleet">>, Input, Options).

%% @doc Used to delete a domain.
%%
%% If you onboarded with IAM mode, you will need to delete your
%% domain to onboard again using IAM Identity Center. Use with caution. All
%% of the members of the
%% domain will lose access to their EFS volume, including data, notebooks,
%% and other artifacts.
-spec delete_domain(aws_client:aws_client(), delete_domain_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
delete_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_domain(Client, Input, []).

-spec delete_domain(aws_client:aws_client(), delete_domain_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_domain_errors(), tuple()}.
delete_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDomain">>, Input, Options).

%% @doc Deletes an edge deployment plan if (and only if) all the stages in
%% the plan are
%% inactive or there are no stages in the plan.
-spec delete_edge_deployment_plan(aws_client:aws_client(), delete_edge_deployment_plan_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_edge_deployment_plan_errors(), tuple()}.
delete_edge_deployment_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_edge_deployment_plan(Client, Input, []).

-spec delete_edge_deployment_plan(aws_client:aws_client(), delete_edge_deployment_plan_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_edge_deployment_plan_errors(), tuple()}.
delete_edge_deployment_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEdgeDeploymentPlan">>, Input, Options).

%% @doc Delete a stage in an edge deployment plan if (and only if) the stage
%% is
%% inactive.
-spec delete_edge_deployment_stage(aws_client:aws_client(), delete_edge_deployment_stage_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_edge_deployment_stage_errors(), tuple()}.
delete_edge_deployment_stage(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_edge_deployment_stage(Client, Input, []).

-spec delete_edge_deployment_stage(aws_client:aws_client(), delete_edge_deployment_stage_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_edge_deployment_stage_errors(), tuple()}.
delete_edge_deployment_stage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEdgeDeploymentStage">>, Input, Options).

%% @doc Deletes an endpoint.
%%
%% SageMaker frees up all of the resources that were deployed when the
%% endpoint was created.
%%
%% SageMaker retires any custom KMS key grants associated with the endpoint,
%% meaning you don't
%% need to use the RevokeGrant:
%% http://docs.aws.amazon.com/kms/latest/APIReference/API_RevokeGrant.html
%% API call.
%%
%% When you delete your endpoint, SageMaker asynchronously deletes associated
%% endpoint
%% resources such as KMS key grants. You might still see these resources in
%% your account
%% for a few minutes after deleting your endpoint. Do not delete or revoke
%% the permissions
%% for your
%% ```
%% ExecutionRoleArn:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateModel.html#sagemaker-CreateModel-request-ExecutionRoleArn
%% ''', otherwise SageMaker cannot delete these
%% resources.
-spec delete_endpoint(aws_client:aws_client(), delete_endpoint_input()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_endpoint(Client, Input, []).

-spec delete_endpoint(aws_client:aws_client(), delete_endpoint_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEndpoint">>, Input, Options).

%% @doc Deletes an endpoint configuration.
%%
%% The `DeleteEndpointConfig' API
%% deletes only the specified configuration. It does not delete endpoints
%% created using the
%% configuration.
%%
%% You must not delete an `EndpointConfig' in use by an endpoint that is
%% live or while the `UpdateEndpoint' or `CreateEndpoint' operations
%% are being performed on the endpoint. If you delete the
%% `EndpointConfig' of an
%% endpoint that is active or being created or updated you may lose
%% visibility into the
%% instance type the endpoint is using. The endpoint must be deleted in order
%% to stop
%% incurring charges.
-spec delete_endpoint_config(aws_client:aws_client(), delete_endpoint_config_input()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_endpoint_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_endpoint_config(Client, Input, []).

-spec delete_endpoint_config(aws_client:aws_client(), delete_endpoint_config_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_endpoint_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEndpointConfig">>, Input, Options).

%% @doc Deletes an SageMaker experiment.
%%
%% All trials associated with the experiment must be deleted
%% first. Use the ListTrials:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListTrials.html
%% API to get a list of the trials associated with
%% the experiment.
-spec delete_experiment(aws_client:aws_client(), delete_experiment_request()) ->
    {ok, delete_experiment_response(), tuple()} |
    {error, any()} |
    {error, delete_experiment_errors(), tuple()}.
delete_experiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_experiment(Client, Input, []).

-spec delete_experiment(aws_client:aws_client(), delete_experiment_request(), proplists:proplist()) ->
    {ok, delete_experiment_response(), tuple()} |
    {error, any()} |
    {error, delete_experiment_errors(), tuple()}.
delete_experiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteExperiment">>, Input, Options).

%% @doc Delete the `FeatureGroup' and any data that was written to the
%% `OnlineStore' of the `FeatureGroup'.
%%
%% Data cannot be accessed from
%% the `OnlineStore' immediately after `DeleteFeatureGroup' is
%% called.
%%
%% Data written into the `OfflineStore' will not be deleted. The Amazon
%% Web Services Glue database and tables that are automatically created for
%% your
%% `OfflineStore' are not deleted.
%%
%% Note that it can take approximately 10-15 minutes to delete an
%% `OnlineStore'
%% `FeatureGroup' with the `InMemory'
%% `StorageType'.
-spec delete_feature_group(aws_client:aws_client(), delete_feature_group_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_feature_group_errors(), tuple()}.
delete_feature_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_feature_group(Client, Input, []).

-spec delete_feature_group(aws_client:aws_client(), delete_feature_group_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_feature_group_errors(), tuple()}.
delete_feature_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFeatureGroup">>, Input, Options).

%% @doc Deletes the specified flow definition.
-spec delete_flow_definition(aws_client:aws_client(), delete_flow_definition_request()) ->
    {ok, delete_flow_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_flow_definition_errors(), tuple()}.
delete_flow_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_flow_definition(Client, Input, []).

-spec delete_flow_definition(aws_client:aws_client(), delete_flow_definition_request(), proplists:proplist()) ->
    {ok, delete_flow_definition_response(), tuple()} |
    {error, any()} |
    {error, delete_flow_definition_errors(), tuple()}.
delete_flow_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFlowDefinition">>, Input, Options).

%% @doc Delete a hub.
-spec delete_hub(aws_client:aws_client(), delete_hub_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_hub_errors(), tuple()}.
delete_hub(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_hub(Client, Input, []).

-spec delete_hub(aws_client:aws_client(), delete_hub_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_hub_errors(), tuple()}.
delete_hub(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHub">>, Input, Options).

%% @doc Delete the contents of a hub.
-spec delete_hub_content(aws_client:aws_client(), delete_hub_content_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_hub_content_errors(), tuple()}.
delete_hub_content(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_hub_content(Client, Input, []).

-spec delete_hub_content(aws_client:aws_client(), delete_hub_content_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_hub_content_errors(), tuple()}.
delete_hub_content(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHubContent">>, Input, Options).

%% @doc Delete a hub content reference in order to remove a model from a
%% private hub.
-spec delete_hub_content_reference(aws_client:aws_client(), delete_hub_content_reference_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_hub_content_reference_errors(), tuple()}.
delete_hub_content_reference(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_hub_content_reference(Client, Input, []).

-spec delete_hub_content_reference(aws_client:aws_client(), delete_hub_content_reference_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_hub_content_reference_errors(), tuple()}.
delete_hub_content_reference(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHubContentReference">>, Input, Options).

%% @doc Use this operation to delete a human task user interface (worker task
%% template).
%%
%% To see a list of human task user interfaces
%% (work task templates) in your account, use ListHumanTaskUis:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListHumanTaskUis.html.
%% When you delete a worker task template, it no longer appears when you call
%% `ListHumanTaskUis'.
-spec delete_human_task_ui(aws_client:aws_client(), delete_human_task_ui_request()) ->
    {ok, delete_human_task_ui_response(), tuple()} |
    {error, any()} |
    {error, delete_human_task_ui_errors(), tuple()}.
delete_human_task_ui(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_human_task_ui(Client, Input, []).

-spec delete_human_task_ui(aws_client:aws_client(), delete_human_task_ui_request(), proplists:proplist()) ->
    {ok, delete_human_task_ui_response(), tuple()} |
    {error, any()} |
    {error, delete_human_task_ui_errors(), tuple()}.
delete_human_task_ui(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHumanTaskUi">>, Input, Options).

%% @doc Deletes a hyperparameter tuning job.
%%
%% The `DeleteHyperParameterTuningJob'
%% API deletes only the tuning job entry that was created in SageMaker when
%% you called the
%% `CreateHyperParameterTuningJob' API. It does not delete training jobs,
%% artifacts, or the IAM role that you specified when creating the model.
-spec delete_hyper_parameter_tuning_job(aws_client:aws_client(), delete_hyper_parameter_tuning_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_hyper_parameter_tuning_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_hyper_parameter_tuning_job(Client, Input, []).

-spec delete_hyper_parameter_tuning_job(aws_client:aws_client(), delete_hyper_parameter_tuning_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_hyper_parameter_tuning_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHyperParameterTuningJob">>, Input, Options).

%% @doc Deletes a SageMaker AI image and all versions of the image.
%%
%% The container images aren't
%% deleted.
-spec delete_image(aws_client:aws_client(), delete_image_request()) ->
    {ok, delete_image_response(), tuple()} |
    {error, any()} |
    {error, delete_image_errors(), tuple()}.
delete_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_image(Client, Input, []).

-spec delete_image(aws_client:aws_client(), delete_image_request(), proplists:proplist()) ->
    {ok, delete_image_response(), tuple()} |
    {error, any()} |
    {error, delete_image_errors(), tuple()}.
delete_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteImage">>, Input, Options).

%% @doc Deletes a version of a SageMaker AI image.
%%
%% The container image the version represents isn't
%% deleted.
-spec delete_image_version(aws_client:aws_client(), delete_image_version_request()) ->
    {ok, delete_image_version_response(), tuple()} |
    {error, any()} |
    {error, delete_image_version_errors(), tuple()}.
delete_image_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_image_version(Client, Input, []).

-spec delete_image_version(aws_client:aws_client(), delete_image_version_request(), proplists:proplist()) ->
    {ok, delete_image_version_response(), tuple()} |
    {error, any()} |
    {error, delete_image_version_errors(), tuple()}.
delete_image_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteImageVersion">>, Input, Options).

%% @doc Deletes an inference component.
-spec delete_inference_component(aws_client:aws_client(), delete_inference_component_input()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_inference_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_inference_component(Client, Input, []).

-spec delete_inference_component(aws_client:aws_client(), delete_inference_component_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_inference_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInferenceComponent">>, Input, Options).

%% @doc Deletes an inference experiment.
%%
%% This operation does not delete your endpoint, variants, or any underlying
%% resources. This operation only
%% deletes the metadata of your experiment.
-spec delete_inference_experiment(aws_client:aws_client(), delete_inference_experiment_request()) ->
    {ok, delete_inference_experiment_response(), tuple()} |
    {error, any()} |
    {error, delete_inference_experiment_errors(), tuple()}.
delete_inference_experiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_inference_experiment(Client, Input, []).

-spec delete_inference_experiment(aws_client:aws_client(), delete_inference_experiment_request(), proplists:proplist()) ->
    {ok, delete_inference_experiment_response(), tuple()} |
    {error, any()} |
    {error, delete_inference_experiment_errors(), tuple()}.
delete_inference_experiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInferenceExperiment">>, Input, Options).

%% @doc Deletes an MLflow Tracking Server.
%%
%% For more information, see Clean up MLflow resources:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/mlflow-cleanup.html.html.
-spec delete_mlflow_tracking_server(aws_client:aws_client(), delete_mlflow_tracking_server_request()) ->
    {ok, delete_mlflow_tracking_server_response(), tuple()} |
    {error, any()} |
    {error, delete_mlflow_tracking_server_errors(), tuple()}.
delete_mlflow_tracking_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_mlflow_tracking_server(Client, Input, []).

-spec delete_mlflow_tracking_server(aws_client:aws_client(), delete_mlflow_tracking_server_request(), proplists:proplist()) ->
    {ok, delete_mlflow_tracking_server_response(), tuple()} |
    {error, any()} |
    {error, delete_mlflow_tracking_server_errors(), tuple()}.
delete_mlflow_tracking_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMlflowTrackingServer">>, Input, Options).

%% @doc Deletes a model.
%%
%% The `DeleteModel' API deletes only the model entry that
%% was created in SageMaker when you called the `CreateModel' API. It
%% does not delete
%% model artifacts, inference code, or the IAM role that you specified when
%% creating the
%% model.
-spec delete_model(aws_client:aws_client(), delete_model_input()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model(Client, Input, []).

-spec delete_model(aws_client:aws_client(), delete_model_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModel">>, Input, Options).

%% @doc Deletes an Amazon SageMaker AI model bias job definition.
-spec delete_model_bias_job_definition(aws_client:aws_client(), delete_model_bias_job_definition_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_model_bias_job_definition_errors(), tuple()}.
delete_model_bias_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model_bias_job_definition(Client, Input, []).

-spec delete_model_bias_job_definition(aws_client:aws_client(), delete_model_bias_job_definition_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_model_bias_job_definition_errors(), tuple()}.
delete_model_bias_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModelBiasJobDefinition">>, Input, Options).

%% @doc Deletes an Amazon SageMaker Model Card.
-spec delete_model_card(aws_client:aws_client(), delete_model_card_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_model_card_errors(), tuple()}.
delete_model_card(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model_card(Client, Input, []).

-spec delete_model_card(aws_client:aws_client(), delete_model_card_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_model_card_errors(), tuple()}.
delete_model_card(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModelCard">>, Input, Options).

%% @doc Deletes an Amazon SageMaker AI model explainability job definition.
-spec delete_model_explainability_job_definition(aws_client:aws_client(), delete_model_explainability_job_definition_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_model_explainability_job_definition_errors(), tuple()}.
delete_model_explainability_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model_explainability_job_definition(Client, Input, []).

-spec delete_model_explainability_job_definition(aws_client:aws_client(), delete_model_explainability_job_definition_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_model_explainability_job_definition_errors(), tuple()}.
delete_model_explainability_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModelExplainabilityJobDefinition">>, Input, Options).

%% @doc Deletes a model package.
%%
%% A model package is used to create SageMaker models or list on Amazon Web
%% Services
%% Marketplace. Buyers can subscribe to model packages listed on Amazon Web
%% Services
%% Marketplace to create models in SageMaker.
-spec delete_model_package(aws_client:aws_client(), delete_model_package_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_model_package_errors(), tuple()}.
delete_model_package(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model_package(Client, Input, []).

-spec delete_model_package(aws_client:aws_client(), delete_model_package_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_model_package_errors(), tuple()}.
delete_model_package(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModelPackage">>, Input, Options).

%% @doc Deletes the specified model group.
-spec delete_model_package_group(aws_client:aws_client(), delete_model_package_group_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_model_package_group_errors(), tuple()}.
delete_model_package_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model_package_group(Client, Input, []).

-spec delete_model_package_group(aws_client:aws_client(), delete_model_package_group_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_model_package_group_errors(), tuple()}.
delete_model_package_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModelPackageGroup">>, Input, Options).

%% @doc Deletes a model group resource policy.
-spec delete_model_package_group_policy(aws_client:aws_client(), delete_model_package_group_policy_input()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_model_package_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model_package_group_policy(Client, Input, []).

-spec delete_model_package_group_policy(aws_client:aws_client(), delete_model_package_group_policy_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_model_package_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModelPackageGroupPolicy">>, Input, Options).

%% @doc Deletes the secified model quality monitoring job definition.
-spec delete_model_quality_job_definition(aws_client:aws_client(), delete_model_quality_job_definition_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_model_quality_job_definition_errors(), tuple()}.
delete_model_quality_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model_quality_job_definition(Client, Input, []).

-spec delete_model_quality_job_definition(aws_client:aws_client(), delete_model_quality_job_definition_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_model_quality_job_definition_errors(), tuple()}.
delete_model_quality_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModelQualityJobDefinition">>, Input, Options).

%% @doc Deletes a monitoring schedule.
%%
%% Also stops the schedule had not already been stopped.
%% This does not delete the job execution history of the monitoring schedule.
-spec delete_monitoring_schedule(aws_client:aws_client(), delete_monitoring_schedule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_monitoring_schedule_errors(), tuple()}.
delete_monitoring_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_monitoring_schedule(Client, Input, []).

-spec delete_monitoring_schedule(aws_client:aws_client(), delete_monitoring_schedule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_monitoring_schedule_errors(), tuple()}.
delete_monitoring_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMonitoringSchedule">>, Input, Options).

%% @doc Deletes an SageMaker AI notebook instance.
%%
%% Before you can delete a notebook
%% instance, you must call the `StopNotebookInstance' API.
%%
%% When you delete a notebook instance, you lose all of your data. SageMaker
%% AI removes the ML compute instance, and deletes the ML storage volume and
%% the
%% network interface associated with the notebook instance.
-spec delete_notebook_instance(aws_client:aws_client(), delete_notebook_instance_input()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_notebook_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_notebook_instance(Client, Input, []).

-spec delete_notebook_instance(aws_client:aws_client(), delete_notebook_instance_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_notebook_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNotebookInstance">>, Input, Options).

%% @doc Deletes a notebook instance lifecycle configuration.
-spec delete_notebook_instance_lifecycle_config(aws_client:aws_client(), delete_notebook_instance_lifecycle_config_input()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_notebook_instance_lifecycle_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_notebook_instance_lifecycle_config(Client, Input, []).

-spec delete_notebook_instance_lifecycle_config(aws_client:aws_client(), delete_notebook_instance_lifecycle_config_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
delete_notebook_instance_lifecycle_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNotebookInstanceLifecycleConfig">>, Input, Options).

%% @doc Deletes an optimization job.
-spec delete_optimization_job(aws_client:aws_client(), delete_optimization_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_optimization_job_errors(), tuple()}.
delete_optimization_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_optimization_job(Client, Input, []).

-spec delete_optimization_job(aws_client:aws_client(), delete_optimization_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_optimization_job_errors(), tuple()}.
delete_optimization_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOptimizationJob">>, Input, Options).

%% @doc Deletes a SageMaker Partner AI App.
-spec delete_partner_app(aws_client:aws_client(), delete_partner_app_request()) ->
    {ok, delete_partner_app_response(), tuple()} |
    {error, any()} |
    {error, delete_partner_app_errors(), tuple()}.
delete_partner_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_partner_app(Client, Input, []).

-spec delete_partner_app(aws_client:aws_client(), delete_partner_app_request(), proplists:proplist()) ->
    {ok, delete_partner_app_response(), tuple()} |
    {error, any()} |
    {error, delete_partner_app_errors(), tuple()}.
delete_partner_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePartnerApp">>, Input, Options).

%% @doc Deletes a pipeline if there are no running instances of the pipeline.
%%
%% To delete a
%% pipeline, you must stop all running instances of the pipeline using the
%% `StopPipelineExecution' API. When you delete a pipeline, all instances
%% of the
%% pipeline are deleted.
-spec delete_pipeline(aws_client:aws_client(), delete_pipeline_request()) ->
    {ok, delete_pipeline_response(), tuple()} |
    {error, any()} |
    {error, delete_pipeline_errors(), tuple()}.
delete_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_pipeline(Client, Input, []).

-spec delete_pipeline(aws_client:aws_client(), delete_pipeline_request(), proplists:proplist()) ->
    {ok, delete_pipeline_response(), tuple()} |
    {error, any()} |
    {error, delete_pipeline_errors(), tuple()}.
delete_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePipeline">>, Input, Options).

%% @doc Delete the specified project.
-spec delete_project(aws_client:aws_client(), delete_project_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_project(Client, Input, []).

-spec delete_project(aws_client:aws_client(), delete_project_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_project_errors(), tuple()}.
delete_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProject">>, Input, Options).

%% @doc Used to delete a space.
-spec delete_space(aws_client:aws_client(), delete_space_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_space_errors(), tuple()}.
delete_space(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_space(Client, Input, []).

-spec delete_space(aws_client:aws_client(), delete_space_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_space_errors(), tuple()}.
delete_space(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSpace">>, Input, Options).

%% @doc Deletes the Amazon SageMaker AI Studio Lifecycle Configuration.
%%
%% In order to delete the
%% Lifecycle Configuration, there must be no running apps using the Lifecycle
%% Configuration. You
%% must also remove the Lifecycle Configuration from UserSettings in all
%% Domains and
%% UserProfiles.
-spec delete_studio_lifecycle_config(aws_client:aws_client(), delete_studio_lifecycle_config_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_studio_lifecycle_config_errors(), tuple()}.
delete_studio_lifecycle_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_studio_lifecycle_config(Client, Input, []).

-spec delete_studio_lifecycle_config(aws_client:aws_client(), delete_studio_lifecycle_config_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_studio_lifecycle_config_errors(), tuple()}.
delete_studio_lifecycle_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStudioLifecycleConfig">>, Input, Options).

%% @doc Deletes the specified tags from an SageMaker resource.
%%
%% To list a resource's tags, use the `ListTags' API.
%%
%% When you call this API to delete tags from a hyperparameter tuning job,
%% the
%% deleted tags are not removed from training jobs that the hyperparameter
%% tuning job
%% launched before you called this API.
%%
%% When you call this API to delete tags from a SageMaker Domain or User
%% Profile, the
%% deleted tags are not removed from Apps that the SageMaker Domain or User
%% Profile
%% launched before you called this API.
-spec delete_tags(aws_client:aws_client(), delete_tags_input()) ->
    {ok, delete_tags_output(), tuple()} |
    {error, any()}.
delete_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tags(Client, Input, []).

-spec delete_tags(aws_client:aws_client(), delete_tags_input(), proplists:proplist()) ->
    {ok, delete_tags_output(), tuple()} |
    {error, any()}.
delete_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTags">>, Input, Options).

%% @doc Deletes the specified trial.
%%
%% All trial components that make up the trial must be deleted
%% first. Use the DescribeTrialComponent:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeTrialComponent.html
%% API to get the list of trial
%% components.
-spec delete_trial(aws_client:aws_client(), delete_trial_request()) ->
    {ok, delete_trial_response(), tuple()} |
    {error, any()} |
    {error, delete_trial_errors(), tuple()}.
delete_trial(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_trial(Client, Input, []).

-spec delete_trial(aws_client:aws_client(), delete_trial_request(), proplists:proplist()) ->
    {ok, delete_trial_response(), tuple()} |
    {error, any()} |
    {error, delete_trial_errors(), tuple()}.
delete_trial(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTrial">>, Input, Options).

%% @doc Deletes the specified trial component.
%%
%% A trial component must be disassociated from all
%% trials before the trial component can be deleted. To disassociate a trial
%% component from a
%% trial, call the DisassociateTrialComponent:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DisassociateTrialComponent.html
%% API.
-spec delete_trial_component(aws_client:aws_client(), delete_trial_component_request()) ->
    {ok, delete_trial_component_response(), tuple()} |
    {error, any()} |
    {error, delete_trial_component_errors(), tuple()}.
delete_trial_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_trial_component(Client, Input, []).

-spec delete_trial_component(aws_client:aws_client(), delete_trial_component_request(), proplists:proplist()) ->
    {ok, delete_trial_component_response(), tuple()} |
    {error, any()} |
    {error, delete_trial_component_errors(), tuple()}.
delete_trial_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTrialComponent">>, Input, Options).

%% @doc Deletes a user profile.
%%
%% When a user profile is deleted, the user loses access to their EFS
%% volume, including data, notebooks, and other artifacts.
-spec delete_user_profile(aws_client:aws_client(), delete_user_profile_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_profile_errors(), tuple()}.
delete_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_profile(Client, Input, []).

-spec delete_user_profile(aws_client:aws_client(), delete_user_profile_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_user_profile_errors(), tuple()}.
delete_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserProfile">>, Input, Options).

%% @doc Use this operation to delete a workforce.
%%
%% If you want to create a new workforce in an Amazon Web Services Region
%% where
%% a workforce already exists, use this operation to delete the
%% existing workforce and then use CreateWorkforce:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateWorkforce.html
%% to create a new workforce.
%%
%% If a private workforce contains one or more work teams, you must use
%% the DeleteWorkteam:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteWorkteam.html
%% operation to delete all work teams before you delete the workforce.
%% If you try to delete a workforce that contains one or more work teams,
%% you will receive a `ResourceInUse' error.
-spec delete_workforce(aws_client:aws_client(), delete_workforce_request()) ->
    {ok, delete_workforce_response(), tuple()} |
    {error, any()}.
delete_workforce(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_workforce(Client, Input, []).

-spec delete_workforce(aws_client:aws_client(), delete_workforce_request(), proplists:proplist()) ->
    {ok, delete_workforce_response(), tuple()} |
    {error, any()}.
delete_workforce(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkforce">>, Input, Options).

%% @doc Deletes an existing work team.
%%
%% This operation can't be undone.
-spec delete_workteam(aws_client:aws_client(), delete_workteam_request()) ->
    {ok, delete_workteam_response(), tuple()} |
    {error, any()} |
    {error, delete_workteam_errors(), tuple()}.
delete_workteam(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_workteam(Client, Input, []).

-spec delete_workteam(aws_client:aws_client(), delete_workteam_request(), proplists:proplist()) ->
    {ok, delete_workteam_response(), tuple()} |
    {error, any()} |
    {error, delete_workteam_errors(), tuple()}.
delete_workteam(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkteam">>, Input, Options).

%% @doc Deregisters the specified devices.
%%
%% After you deregister a device, you will need to re-register the devices.
-spec deregister_devices(aws_client:aws_client(), deregister_devices_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
deregister_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_devices(Client, Input, []).

-spec deregister_devices(aws_client:aws_client(), deregister_devices_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
deregister_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterDevices">>, Input, Options).

%% @doc Describes an action.
-spec describe_action(aws_client:aws_client(), describe_action_request()) ->
    {ok, describe_action_response(), tuple()} |
    {error, any()} |
    {error, describe_action_errors(), tuple()}.
describe_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_action(Client, Input, []).

-spec describe_action(aws_client:aws_client(), describe_action_request(), proplists:proplist()) ->
    {ok, describe_action_response(), tuple()} |
    {error, any()} |
    {error, describe_action_errors(), tuple()}.
describe_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAction">>, Input, Options).

%% @doc Returns a description of the specified algorithm that is in your
%% account.
-spec describe_algorithm(aws_client:aws_client(), describe_algorithm_input()) ->
    {ok, describe_algorithm_output(), tuple()} |
    {error, any()}.
describe_algorithm(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_algorithm(Client, Input, []).

-spec describe_algorithm(aws_client:aws_client(), describe_algorithm_input(), proplists:proplist()) ->
    {ok, describe_algorithm_output(), tuple()} |
    {error, any()}.
describe_algorithm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAlgorithm">>, Input, Options).

%% @doc Describes the app.
-spec describe_app(aws_client:aws_client(), describe_app_request()) ->
    {ok, describe_app_response(), tuple()} |
    {error, any()} |
    {error, describe_app_errors(), tuple()}.
describe_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_app(Client, Input, []).

-spec describe_app(aws_client:aws_client(), describe_app_request(), proplists:proplist()) ->
    {ok, describe_app_response(), tuple()} |
    {error, any()} |
    {error, describe_app_errors(), tuple()}.
describe_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApp">>, Input, Options).

%% @doc Describes an AppImageConfig.
-spec describe_app_image_config(aws_client:aws_client(), describe_app_image_config_request()) ->
    {ok, describe_app_image_config_response(), tuple()} |
    {error, any()} |
    {error, describe_app_image_config_errors(), tuple()}.
describe_app_image_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_app_image_config(Client, Input, []).

-spec describe_app_image_config(aws_client:aws_client(), describe_app_image_config_request(), proplists:proplist()) ->
    {ok, describe_app_image_config_response(), tuple()} |
    {error, any()} |
    {error, describe_app_image_config_errors(), tuple()}.
describe_app_image_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAppImageConfig">>, Input, Options).

%% @doc Describes an artifact.
-spec describe_artifact(aws_client:aws_client(), describe_artifact_request()) ->
    {ok, describe_artifact_response(), tuple()} |
    {error, any()} |
    {error, describe_artifact_errors(), tuple()}.
describe_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_artifact(Client, Input, []).

-spec describe_artifact(aws_client:aws_client(), describe_artifact_request(), proplists:proplist()) ->
    {ok, describe_artifact_response(), tuple()} |
    {error, any()} |
    {error, describe_artifact_errors(), tuple()}.
describe_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeArtifact">>, Input, Options).

%% @doc Returns information about an AutoML job created by calling
%% CreateAutoMLJob:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJob.html.
%%
%% AutoML jobs created by calling CreateAutoMLJobV2:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJobV2.html
%% cannot be described by
%% `DescribeAutoMLJob'.
-spec describe_auto_ml_job(aws_client:aws_client(), describe_auto_ml_job_request()) ->
    {ok, describe_auto_ml_job_response(), tuple()} |
    {error, any()} |
    {error, describe_auto_ml_job_errors(), tuple()}.
describe_auto_ml_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_auto_ml_job(Client, Input, []).

-spec describe_auto_ml_job(aws_client:aws_client(), describe_auto_ml_job_request(), proplists:proplist()) ->
    {ok, describe_auto_ml_job_response(), tuple()} |
    {error, any()} |
    {error, describe_auto_ml_job_errors(), tuple()}.
describe_auto_ml_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAutoMLJob">>, Input, Options).

%% @doc Returns information about an AutoML job created by calling
%% CreateAutoMLJobV2:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJobV2.html
%% or CreateAutoMLJob:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJob.html.
-spec describe_auto_ml_job_v2(aws_client:aws_client(), describe_auto_ml_job_v2_request()) ->
    {ok, describe_auto_ml_job_v2_response(), tuple()} |
    {error, any()} |
    {error, describe_auto_ml_job_v2_errors(), tuple()}.
describe_auto_ml_job_v2(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_auto_ml_job_v2(Client, Input, []).

-spec describe_auto_ml_job_v2(aws_client:aws_client(), describe_auto_ml_job_v2_request(), proplists:proplist()) ->
    {ok, describe_auto_ml_job_v2_response(), tuple()} |
    {error, any()} |
    {error, describe_auto_ml_job_v2_errors(), tuple()}.
describe_auto_ml_job_v2(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAutoMLJobV2">>, Input, Options).

%% @doc Retrieves information of a SageMaker HyperPod cluster.
-spec describe_cluster(aws_client:aws_client(), describe_cluster_request()) ->
    {ok, describe_cluster_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_errors(), tuple()}.
describe_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster(Client, Input, []).

-spec describe_cluster(aws_client:aws_client(), describe_cluster_request(), proplists:proplist()) ->
    {ok, describe_cluster_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_errors(), tuple()}.
describe_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCluster">>, Input, Options).

%% @doc Retrieves information of a node (also called a instance
%% interchangeably) of a SageMaker HyperPod cluster.
-spec describe_cluster_node(aws_client:aws_client(), describe_cluster_node_request()) ->
    {ok, describe_cluster_node_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_node_errors(), tuple()}.
describe_cluster_node(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster_node(Client, Input, []).

-spec describe_cluster_node(aws_client:aws_client(), describe_cluster_node_request(), proplists:proplist()) ->
    {ok, describe_cluster_node_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_node_errors(), tuple()}.
describe_cluster_node(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusterNode">>, Input, Options).

%% @doc Description of the cluster policy.
%%
%% This policy is used for task prioritization and
%% fair-share allocation. This helps prioritize critical workloads and
%% distributes
%% idle compute across entities.
-spec describe_cluster_scheduler_config(aws_client:aws_client(), describe_cluster_scheduler_config_request()) ->
    {ok, describe_cluster_scheduler_config_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_scheduler_config_errors(), tuple()}.
describe_cluster_scheduler_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_cluster_scheduler_config(Client, Input, []).

-spec describe_cluster_scheduler_config(aws_client:aws_client(), describe_cluster_scheduler_config_request(), proplists:proplist()) ->
    {ok, describe_cluster_scheduler_config_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_scheduler_config_errors(), tuple()}.
describe_cluster_scheduler_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusterSchedulerConfig">>, Input, Options).

%% @doc Gets details about the specified Git repository.
-spec describe_code_repository(aws_client:aws_client(), describe_code_repository_input()) ->
    {ok, describe_code_repository_output(), tuple()} |
    {error, any()}.
describe_code_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_code_repository(Client, Input, []).

-spec describe_code_repository(aws_client:aws_client(), describe_code_repository_input(), proplists:proplist()) ->
    {ok, describe_code_repository_output(), tuple()} |
    {error, any()}.
describe_code_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCodeRepository">>, Input, Options).

%% @doc Returns information about a model compilation job.
%%
%% To create a model compilation job, use CreateCompilationJob:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateCompilationJob.html.
%% To get information about multiple model compilation
%% jobs, use ListCompilationJobs:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListCompilationJobs.html.
-spec describe_compilation_job(aws_client:aws_client(), describe_compilation_job_request()) ->
    {ok, describe_compilation_job_response(), tuple()} |
    {error, any()} |
    {error, describe_compilation_job_errors(), tuple()}.
describe_compilation_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_compilation_job(Client, Input, []).

-spec describe_compilation_job(aws_client:aws_client(), describe_compilation_job_request(), proplists:proplist()) ->
    {ok, describe_compilation_job_response(), tuple()} |
    {error, any()} |
    {error, describe_compilation_job_errors(), tuple()}.
describe_compilation_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCompilationJob">>, Input, Options).

%% @doc Description of the compute allocation definition.
-spec describe_compute_quota(aws_client:aws_client(), describe_compute_quota_request()) ->
    {ok, describe_compute_quota_response(), tuple()} |
    {error, any()} |
    {error, describe_compute_quota_errors(), tuple()}.
describe_compute_quota(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_compute_quota(Client, Input, []).

-spec describe_compute_quota(aws_client:aws_client(), describe_compute_quota_request(), proplists:proplist()) ->
    {ok, describe_compute_quota_response(), tuple()} |
    {error, any()} |
    {error, describe_compute_quota_errors(), tuple()}.
describe_compute_quota(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeComputeQuota">>, Input, Options).

%% @doc Describes a context.
-spec describe_context(aws_client:aws_client(), describe_context_request()) ->
    {ok, describe_context_response(), tuple()} |
    {error, any()} |
    {error, describe_context_errors(), tuple()}.
describe_context(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_context(Client, Input, []).

-spec describe_context(aws_client:aws_client(), describe_context_request(), proplists:proplist()) ->
    {ok, describe_context_response(), tuple()} |
    {error, any()} |
    {error, describe_context_errors(), tuple()}.
describe_context(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeContext">>, Input, Options).

%% @doc Gets the details of a data quality monitoring job definition.
-spec describe_data_quality_job_definition(aws_client:aws_client(), describe_data_quality_job_definition_request()) ->
    {ok, describe_data_quality_job_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_data_quality_job_definition_errors(), tuple()}.
describe_data_quality_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_quality_job_definition(Client, Input, []).

-spec describe_data_quality_job_definition(aws_client:aws_client(), describe_data_quality_job_definition_request(), proplists:proplist()) ->
    {ok, describe_data_quality_job_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_data_quality_job_definition_errors(), tuple()}.
describe_data_quality_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataQualityJobDefinition">>, Input, Options).

%% @doc Describes the device.
-spec describe_device(aws_client:aws_client(), describe_device_request()) ->
    {ok, describe_device_response(), tuple()} |
    {error, any()} |
    {error, describe_device_errors(), tuple()}.
describe_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_device(Client, Input, []).

-spec describe_device(aws_client:aws_client(), describe_device_request(), proplists:proplist()) ->
    {ok, describe_device_response(), tuple()} |
    {error, any()} |
    {error, describe_device_errors(), tuple()}.
describe_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDevice">>, Input, Options).

%% @doc A description of the fleet the device belongs to.
-spec describe_device_fleet(aws_client:aws_client(), describe_device_fleet_request()) ->
    {ok, describe_device_fleet_response(), tuple()} |
    {error, any()} |
    {error, describe_device_fleet_errors(), tuple()}.
describe_device_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_device_fleet(Client, Input, []).

-spec describe_device_fleet(aws_client:aws_client(), describe_device_fleet_request(), proplists:proplist()) ->
    {ok, describe_device_fleet_response(), tuple()} |
    {error, any()} |
    {error, describe_device_fleet_errors(), tuple()}.
describe_device_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDeviceFleet">>, Input, Options).

%% @doc The description of the domain.
-spec describe_domain(aws_client:aws_client(), describe_domain_request()) ->
    {ok, describe_domain_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_errors(), tuple()}.
describe_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_domain(Client, Input, []).

-spec describe_domain(aws_client:aws_client(), describe_domain_request(), proplists:proplist()) ->
    {ok, describe_domain_response(), tuple()} |
    {error, any()} |
    {error, describe_domain_errors(), tuple()}.
describe_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDomain">>, Input, Options).

%% @doc Describes an edge deployment plan with deployment status per stage.
-spec describe_edge_deployment_plan(aws_client:aws_client(), describe_edge_deployment_plan_request()) ->
    {ok, describe_edge_deployment_plan_response(), tuple()} |
    {error, any()} |
    {error, describe_edge_deployment_plan_errors(), tuple()}.
describe_edge_deployment_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_edge_deployment_plan(Client, Input, []).

-spec describe_edge_deployment_plan(aws_client:aws_client(), describe_edge_deployment_plan_request(), proplists:proplist()) ->
    {ok, describe_edge_deployment_plan_response(), tuple()} |
    {error, any()} |
    {error, describe_edge_deployment_plan_errors(), tuple()}.
describe_edge_deployment_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEdgeDeploymentPlan">>, Input, Options).

%% @doc A description of edge packaging jobs.
-spec describe_edge_packaging_job(aws_client:aws_client(), describe_edge_packaging_job_request()) ->
    {ok, describe_edge_packaging_job_response(), tuple()} |
    {error, any()} |
    {error, describe_edge_packaging_job_errors(), tuple()}.
describe_edge_packaging_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_edge_packaging_job(Client, Input, []).

-spec describe_edge_packaging_job(aws_client:aws_client(), describe_edge_packaging_job_request(), proplists:proplist()) ->
    {ok, describe_edge_packaging_job_response(), tuple()} |
    {error, any()} |
    {error, describe_edge_packaging_job_errors(), tuple()}.
describe_edge_packaging_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEdgePackagingJob">>, Input, Options).

%% @doc Returns the description of an endpoint.
-spec describe_endpoint(aws_client:aws_client(), describe_endpoint_input()) ->
    {ok, describe_endpoint_output(), tuple()} |
    {error, any()}.
describe_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoint(Client, Input, []).

-spec describe_endpoint(aws_client:aws_client(), describe_endpoint_input(), proplists:proplist()) ->
    {ok, describe_endpoint_output(), tuple()} |
    {error, any()}.
describe_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpoint">>, Input, Options).

%% @doc Returns the description of an endpoint configuration created using
%% the
%% `CreateEndpointConfig' API.
-spec describe_endpoint_config(aws_client:aws_client(), describe_endpoint_config_input()) ->
    {ok, describe_endpoint_config_output(), tuple()} |
    {error, any()}.
describe_endpoint_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoint_config(Client, Input, []).

-spec describe_endpoint_config(aws_client:aws_client(), describe_endpoint_config_input(), proplists:proplist()) ->
    {ok, describe_endpoint_config_output(), tuple()} |
    {error, any()}.
describe_endpoint_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpointConfig">>, Input, Options).

%% @doc Provides a list of an experiment's properties.
-spec describe_experiment(aws_client:aws_client(), describe_experiment_request()) ->
    {ok, describe_experiment_response(), tuple()} |
    {error, any()} |
    {error, describe_experiment_errors(), tuple()}.
describe_experiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_experiment(Client, Input, []).

-spec describe_experiment(aws_client:aws_client(), describe_experiment_request(), proplists:proplist()) ->
    {ok, describe_experiment_response(), tuple()} |
    {error, any()} |
    {error, describe_experiment_errors(), tuple()}.
describe_experiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExperiment">>, Input, Options).

%% @doc Use this operation to describe a `FeatureGroup'.
%%
%% The response includes
%% information on the creation time, `FeatureGroup' name, the unique
%% identifier for
%% each `FeatureGroup', and more.
-spec describe_feature_group(aws_client:aws_client(), describe_feature_group_request()) ->
    {ok, describe_feature_group_response(), tuple()} |
    {error, any()} |
    {error, describe_feature_group_errors(), tuple()}.
describe_feature_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_feature_group(Client, Input, []).

-spec describe_feature_group(aws_client:aws_client(), describe_feature_group_request(), proplists:proplist()) ->
    {ok, describe_feature_group_response(), tuple()} |
    {error, any()} |
    {error, describe_feature_group_errors(), tuple()}.
describe_feature_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFeatureGroup">>, Input, Options).

%% @doc Shows the metadata for a feature within a feature group.
-spec describe_feature_metadata(aws_client:aws_client(), describe_feature_metadata_request()) ->
    {ok, describe_feature_metadata_response(), tuple()} |
    {error, any()} |
    {error, describe_feature_metadata_errors(), tuple()}.
describe_feature_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_feature_metadata(Client, Input, []).

-spec describe_feature_metadata(aws_client:aws_client(), describe_feature_metadata_request(), proplists:proplist()) ->
    {ok, describe_feature_metadata_response(), tuple()} |
    {error, any()} |
    {error, describe_feature_metadata_errors(), tuple()}.
describe_feature_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFeatureMetadata">>, Input, Options).

%% @doc Returns information about the specified flow definition.
-spec describe_flow_definition(aws_client:aws_client(), describe_flow_definition_request()) ->
    {ok, describe_flow_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_flow_definition_errors(), tuple()}.
describe_flow_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_flow_definition(Client, Input, []).

-spec describe_flow_definition(aws_client:aws_client(), describe_flow_definition_request(), proplists:proplist()) ->
    {ok, describe_flow_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_flow_definition_errors(), tuple()}.
describe_flow_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFlowDefinition">>, Input, Options).

%% @doc Describes a hub.
-spec describe_hub(aws_client:aws_client(), describe_hub_request()) ->
    {ok, describe_hub_response(), tuple()} |
    {error, any()} |
    {error, describe_hub_errors(), tuple()}.
describe_hub(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_hub(Client, Input, []).

-spec describe_hub(aws_client:aws_client(), describe_hub_request(), proplists:proplist()) ->
    {ok, describe_hub_response(), tuple()} |
    {error, any()} |
    {error, describe_hub_errors(), tuple()}.
describe_hub(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHub">>, Input, Options).

%% @doc Describe the content of a hub.
-spec describe_hub_content(aws_client:aws_client(), describe_hub_content_request()) ->
    {ok, describe_hub_content_response(), tuple()} |
    {error, any()} |
    {error, describe_hub_content_errors(), tuple()}.
describe_hub_content(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_hub_content(Client, Input, []).

-spec describe_hub_content(aws_client:aws_client(), describe_hub_content_request(), proplists:proplist()) ->
    {ok, describe_hub_content_response(), tuple()} |
    {error, any()} |
    {error, describe_hub_content_errors(), tuple()}.
describe_hub_content(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHubContent">>, Input, Options).

%% @doc Returns information about the requested human task user interface
%% (worker task template).
-spec describe_human_task_ui(aws_client:aws_client(), describe_human_task_ui_request()) ->
    {ok, describe_human_task_ui_response(), tuple()} |
    {error, any()} |
    {error, describe_human_task_ui_errors(), tuple()}.
describe_human_task_ui(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_human_task_ui(Client, Input, []).

-spec describe_human_task_ui(aws_client:aws_client(), describe_human_task_ui_request(), proplists:proplist()) ->
    {ok, describe_human_task_ui_response(), tuple()} |
    {error, any()} |
    {error, describe_human_task_ui_errors(), tuple()}.
describe_human_task_ui(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHumanTaskUi">>, Input, Options).

%% @doc Returns a description of a hyperparameter tuning job, depending on
%% the fields
%% selected.
%%
%% These fields can include the name, Amazon Resource Name (ARN), job status
%% of
%% your tuning job and more.
-spec describe_hyper_parameter_tuning_job(aws_client:aws_client(), describe_hyper_parameter_tuning_job_request()) ->
    {ok, describe_hyper_parameter_tuning_job_response(), tuple()} |
    {error, any()} |
    {error, describe_hyper_parameter_tuning_job_errors(), tuple()}.
describe_hyper_parameter_tuning_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_hyper_parameter_tuning_job(Client, Input, []).

-spec describe_hyper_parameter_tuning_job(aws_client:aws_client(), describe_hyper_parameter_tuning_job_request(), proplists:proplist()) ->
    {ok, describe_hyper_parameter_tuning_job_response(), tuple()} |
    {error, any()} |
    {error, describe_hyper_parameter_tuning_job_errors(), tuple()}.
describe_hyper_parameter_tuning_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHyperParameterTuningJob">>, Input, Options).

%% @doc Describes a SageMaker AI image.
-spec describe_image(aws_client:aws_client(), describe_image_request()) ->
    {ok, describe_image_response(), tuple()} |
    {error, any()} |
    {error, describe_image_errors(), tuple()}.
describe_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_image(Client, Input, []).

-spec describe_image(aws_client:aws_client(), describe_image_request(), proplists:proplist()) ->
    {ok, describe_image_response(), tuple()} |
    {error, any()} |
    {error, describe_image_errors(), tuple()}.
describe_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImage">>, Input, Options).

%% @doc Describes a version of a SageMaker AI image.
-spec describe_image_version(aws_client:aws_client(), describe_image_version_request()) ->
    {ok, describe_image_version_response(), tuple()} |
    {error, any()} |
    {error, describe_image_version_errors(), tuple()}.
describe_image_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_image_version(Client, Input, []).

-spec describe_image_version(aws_client:aws_client(), describe_image_version_request(), proplists:proplist()) ->
    {ok, describe_image_version_response(), tuple()} |
    {error, any()} |
    {error, describe_image_version_errors(), tuple()}.
describe_image_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImageVersion">>, Input, Options).

%% @doc Returns information about an inference component.
-spec describe_inference_component(aws_client:aws_client(), describe_inference_component_input()) ->
    {ok, describe_inference_component_output(), tuple()} |
    {error, any()}.
describe_inference_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_inference_component(Client, Input, []).

-spec describe_inference_component(aws_client:aws_client(), describe_inference_component_input(), proplists:proplist()) ->
    {ok, describe_inference_component_output(), tuple()} |
    {error, any()}.
describe_inference_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInferenceComponent">>, Input, Options).

%% @doc Returns details about an inference experiment.
-spec describe_inference_experiment(aws_client:aws_client(), describe_inference_experiment_request()) ->
    {ok, describe_inference_experiment_response(), tuple()} |
    {error, any()} |
    {error, describe_inference_experiment_errors(), tuple()}.
describe_inference_experiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_inference_experiment(Client, Input, []).

-spec describe_inference_experiment(aws_client:aws_client(), describe_inference_experiment_request(), proplists:proplist()) ->
    {ok, describe_inference_experiment_response(), tuple()} |
    {error, any()} |
    {error, describe_inference_experiment_errors(), tuple()}.
describe_inference_experiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInferenceExperiment">>, Input, Options).

%% @doc Provides the results of the Inference Recommender job.
%%
%% One or more recommendation jobs are returned.
-spec describe_inference_recommendations_job(aws_client:aws_client(), describe_inference_recommendations_job_request()) ->
    {ok, describe_inference_recommendations_job_response(), tuple()} |
    {error, any()} |
    {error, describe_inference_recommendations_job_errors(), tuple()}.
describe_inference_recommendations_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_inference_recommendations_job(Client, Input, []).

-spec describe_inference_recommendations_job(aws_client:aws_client(), describe_inference_recommendations_job_request(), proplists:proplist()) ->
    {ok, describe_inference_recommendations_job_response(), tuple()} |
    {error, any()} |
    {error, describe_inference_recommendations_job_errors(), tuple()}.
describe_inference_recommendations_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInferenceRecommendationsJob">>, Input, Options).

%% @doc Gets information about a labeling job.
-spec describe_labeling_job(aws_client:aws_client(), describe_labeling_job_request()) ->
    {ok, describe_labeling_job_response(), tuple()} |
    {error, any()} |
    {error, describe_labeling_job_errors(), tuple()}.
describe_labeling_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_labeling_job(Client, Input, []).

-spec describe_labeling_job(aws_client:aws_client(), describe_labeling_job_request(), proplists:proplist()) ->
    {ok, describe_labeling_job_response(), tuple()} |
    {error, any()} |
    {error, describe_labeling_job_errors(), tuple()}.
describe_labeling_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLabelingJob">>, Input, Options).

%% @doc Provides a list of properties for the requested lineage group.
%%
%% For more information, see
%% Cross-Account Lineage Tracking :
%% https://docs.aws.amazon.com/sagemaker/latest/dg/xaccount-lineage-tracking.html
%% in the Amazon SageMaker Developer Guide.
-spec describe_lineage_group(aws_client:aws_client(), describe_lineage_group_request()) ->
    {ok, describe_lineage_group_response(), tuple()} |
    {error, any()} |
    {error, describe_lineage_group_errors(), tuple()}.
describe_lineage_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_lineage_group(Client, Input, []).

-spec describe_lineage_group(aws_client:aws_client(), describe_lineage_group_request(), proplists:proplist()) ->
    {ok, describe_lineage_group_response(), tuple()} |
    {error, any()} |
    {error, describe_lineage_group_errors(), tuple()}.
describe_lineage_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLineageGroup">>, Input, Options).

%% @doc Returns information about an MLflow Tracking Server.
-spec describe_mlflow_tracking_server(aws_client:aws_client(), describe_mlflow_tracking_server_request()) ->
    {ok, describe_mlflow_tracking_server_response(), tuple()} |
    {error, any()} |
    {error, describe_mlflow_tracking_server_errors(), tuple()}.
describe_mlflow_tracking_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_mlflow_tracking_server(Client, Input, []).

-spec describe_mlflow_tracking_server(aws_client:aws_client(), describe_mlflow_tracking_server_request(), proplists:proplist()) ->
    {ok, describe_mlflow_tracking_server_response(), tuple()} |
    {error, any()} |
    {error, describe_mlflow_tracking_server_errors(), tuple()}.
describe_mlflow_tracking_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMlflowTrackingServer">>, Input, Options).

%% @doc Describes a model that you created using the `CreateModel'
%% API.
-spec describe_model(aws_client:aws_client(), describe_model_input()) ->
    {ok, describe_model_output(), tuple()} |
    {error, any()}.
describe_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model(Client, Input, []).

-spec describe_model(aws_client:aws_client(), describe_model_input(), proplists:proplist()) ->
    {ok, describe_model_output(), tuple()} |
    {error, any()}.
describe_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModel">>, Input, Options).

%% @doc Returns a description of a model bias job definition.
-spec describe_model_bias_job_definition(aws_client:aws_client(), describe_model_bias_job_definition_request()) ->
    {ok, describe_model_bias_job_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_model_bias_job_definition_errors(), tuple()}.
describe_model_bias_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model_bias_job_definition(Client, Input, []).

-spec describe_model_bias_job_definition(aws_client:aws_client(), describe_model_bias_job_definition_request(), proplists:proplist()) ->
    {ok, describe_model_bias_job_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_model_bias_job_definition_errors(), tuple()}.
describe_model_bias_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModelBiasJobDefinition">>, Input, Options).

%% @doc Describes the content, creation time, and security configuration of
%% an Amazon SageMaker Model Card.
-spec describe_model_card(aws_client:aws_client(), describe_model_card_request()) ->
    {ok, describe_model_card_response(), tuple()} |
    {error, any()} |
    {error, describe_model_card_errors(), tuple()}.
describe_model_card(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model_card(Client, Input, []).

-spec describe_model_card(aws_client:aws_client(), describe_model_card_request(), proplists:proplist()) ->
    {ok, describe_model_card_response(), tuple()} |
    {error, any()} |
    {error, describe_model_card_errors(), tuple()}.
describe_model_card(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModelCard">>, Input, Options).

%% @doc Describes an Amazon SageMaker Model Card export job.
-spec describe_model_card_export_job(aws_client:aws_client(), describe_model_card_export_job_request()) ->
    {ok, describe_model_card_export_job_response(), tuple()} |
    {error, any()} |
    {error, describe_model_card_export_job_errors(), tuple()}.
describe_model_card_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model_card_export_job(Client, Input, []).

-spec describe_model_card_export_job(aws_client:aws_client(), describe_model_card_export_job_request(), proplists:proplist()) ->
    {ok, describe_model_card_export_job_response(), tuple()} |
    {error, any()} |
    {error, describe_model_card_export_job_errors(), tuple()}.
describe_model_card_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModelCardExportJob">>, Input, Options).

%% @doc Returns a description of a model explainability job definition.
-spec describe_model_explainability_job_definition(aws_client:aws_client(), describe_model_explainability_job_definition_request()) ->
    {ok, describe_model_explainability_job_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_model_explainability_job_definition_errors(), tuple()}.
describe_model_explainability_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model_explainability_job_definition(Client, Input, []).

-spec describe_model_explainability_job_definition(aws_client:aws_client(), describe_model_explainability_job_definition_request(), proplists:proplist()) ->
    {ok, describe_model_explainability_job_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_model_explainability_job_definition_errors(), tuple()}.
describe_model_explainability_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModelExplainabilityJobDefinition">>, Input, Options).

%% @doc Returns a description of the specified model package, which is used
%% to create SageMaker
%% models or list them on Amazon Web Services Marketplace.
%%
%% If you provided a KMS Key ID when you created your model package,
%% you will see the KMS Decrypt:
%% https://docs.aws.amazon.com/kms/latest/APIReference/API_Decrypt.html API
%% call in
%% your CloudTrail logs when you use this API.
%%
%% To create models in SageMaker, buyers can subscribe to model packages
%% listed on Amazon Web Services Marketplace.
-spec describe_model_package(aws_client:aws_client(), describe_model_package_input()) ->
    {ok, describe_model_package_output(), tuple()} |
    {error, any()}.
describe_model_package(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model_package(Client, Input, []).

-spec describe_model_package(aws_client:aws_client(), describe_model_package_input(), proplists:proplist()) ->
    {ok, describe_model_package_output(), tuple()} |
    {error, any()}.
describe_model_package(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModelPackage">>, Input, Options).

%% @doc Gets a description for the specified model group.
-spec describe_model_package_group(aws_client:aws_client(), describe_model_package_group_input()) ->
    {ok, describe_model_package_group_output(), tuple()} |
    {error, any()}.
describe_model_package_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model_package_group(Client, Input, []).

-spec describe_model_package_group(aws_client:aws_client(), describe_model_package_group_input(), proplists:proplist()) ->
    {ok, describe_model_package_group_output(), tuple()} |
    {error, any()}.
describe_model_package_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModelPackageGroup">>, Input, Options).

%% @doc Returns a description of a model quality job definition.
-spec describe_model_quality_job_definition(aws_client:aws_client(), describe_model_quality_job_definition_request()) ->
    {ok, describe_model_quality_job_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_model_quality_job_definition_errors(), tuple()}.
describe_model_quality_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model_quality_job_definition(Client, Input, []).

-spec describe_model_quality_job_definition(aws_client:aws_client(), describe_model_quality_job_definition_request(), proplists:proplist()) ->
    {ok, describe_model_quality_job_definition_response(), tuple()} |
    {error, any()} |
    {error, describe_model_quality_job_definition_errors(), tuple()}.
describe_model_quality_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModelQualityJobDefinition">>, Input, Options).

%% @doc Describes the schedule for a monitoring job.
-spec describe_monitoring_schedule(aws_client:aws_client(), describe_monitoring_schedule_request()) ->
    {ok, describe_monitoring_schedule_response(), tuple()} |
    {error, any()} |
    {error, describe_monitoring_schedule_errors(), tuple()}.
describe_monitoring_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_monitoring_schedule(Client, Input, []).

-spec describe_monitoring_schedule(aws_client:aws_client(), describe_monitoring_schedule_request(), proplists:proplist()) ->
    {ok, describe_monitoring_schedule_response(), tuple()} |
    {error, any()} |
    {error, describe_monitoring_schedule_errors(), tuple()}.
describe_monitoring_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMonitoringSchedule">>, Input, Options).

%% @doc Returns information about a notebook instance.
-spec describe_notebook_instance(aws_client:aws_client(), describe_notebook_instance_input()) ->
    {ok, describe_notebook_instance_output(), tuple()} |
    {error, any()}.
describe_notebook_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_notebook_instance(Client, Input, []).

-spec describe_notebook_instance(aws_client:aws_client(), describe_notebook_instance_input(), proplists:proplist()) ->
    {ok, describe_notebook_instance_output(), tuple()} |
    {error, any()}.
describe_notebook_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNotebookInstance">>, Input, Options).

%% @doc Returns a description of a notebook instance lifecycle configuration.
%%
%% For information about notebook instance lifestyle configurations, see Step
%% 2.1: (Optional) Customize a Notebook Instance:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html.
-spec describe_notebook_instance_lifecycle_config(aws_client:aws_client(), describe_notebook_instance_lifecycle_config_input()) ->
    {ok, describe_notebook_instance_lifecycle_config_output(), tuple()} |
    {error, any()}.
describe_notebook_instance_lifecycle_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_notebook_instance_lifecycle_config(Client, Input, []).

-spec describe_notebook_instance_lifecycle_config(aws_client:aws_client(), describe_notebook_instance_lifecycle_config_input(), proplists:proplist()) ->
    {ok, describe_notebook_instance_lifecycle_config_output(), tuple()} |
    {error, any()}.
describe_notebook_instance_lifecycle_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNotebookInstanceLifecycleConfig">>, Input, Options).

%% @doc Provides the properties of the specified optimization job.
-spec describe_optimization_job(aws_client:aws_client(), describe_optimization_job_request()) ->
    {ok, describe_optimization_job_response(), tuple()} |
    {error, any()} |
    {error, describe_optimization_job_errors(), tuple()}.
describe_optimization_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_optimization_job(Client, Input, []).

-spec describe_optimization_job(aws_client:aws_client(), describe_optimization_job_request(), proplists:proplist()) ->
    {ok, describe_optimization_job_response(), tuple()} |
    {error, any()} |
    {error, describe_optimization_job_errors(), tuple()}.
describe_optimization_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOptimizationJob">>, Input, Options).

%% @doc Gets information about a SageMaker Partner AI App.
-spec describe_partner_app(aws_client:aws_client(), describe_partner_app_request()) ->
    {ok, describe_partner_app_response(), tuple()} |
    {error, any()} |
    {error, describe_partner_app_errors(), tuple()}.
describe_partner_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_partner_app(Client, Input, []).

-spec describe_partner_app(aws_client:aws_client(), describe_partner_app_request(), proplists:proplist()) ->
    {ok, describe_partner_app_response(), tuple()} |
    {error, any()} |
    {error, describe_partner_app_errors(), tuple()}.
describe_partner_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePartnerApp">>, Input, Options).

%% @doc Describes the details of a pipeline.
-spec describe_pipeline(aws_client:aws_client(), describe_pipeline_request()) ->
    {ok, describe_pipeline_response(), tuple()} |
    {error, any()} |
    {error, describe_pipeline_errors(), tuple()}.
describe_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pipeline(Client, Input, []).

-spec describe_pipeline(aws_client:aws_client(), describe_pipeline_request(), proplists:proplist()) ->
    {ok, describe_pipeline_response(), tuple()} |
    {error, any()} |
    {error, describe_pipeline_errors(), tuple()}.
describe_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePipeline">>, Input, Options).

%% @doc Describes the details of an execution's pipeline definition.
-spec describe_pipeline_definition_for_execution(aws_client:aws_client(), describe_pipeline_definition_for_execution_request()) ->
    {ok, describe_pipeline_definition_for_execution_response(), tuple()} |
    {error, any()} |
    {error, describe_pipeline_definition_for_execution_errors(), tuple()}.
describe_pipeline_definition_for_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pipeline_definition_for_execution(Client, Input, []).

-spec describe_pipeline_definition_for_execution(aws_client:aws_client(), describe_pipeline_definition_for_execution_request(), proplists:proplist()) ->
    {ok, describe_pipeline_definition_for_execution_response(), tuple()} |
    {error, any()} |
    {error, describe_pipeline_definition_for_execution_errors(), tuple()}.
describe_pipeline_definition_for_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePipelineDefinitionForExecution">>, Input, Options).

%% @doc Describes the details of a pipeline execution.
-spec describe_pipeline_execution(aws_client:aws_client(), describe_pipeline_execution_request()) ->
    {ok, describe_pipeline_execution_response(), tuple()} |
    {error, any()} |
    {error, describe_pipeline_execution_errors(), tuple()}.
describe_pipeline_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pipeline_execution(Client, Input, []).

-spec describe_pipeline_execution(aws_client:aws_client(), describe_pipeline_execution_request(), proplists:proplist()) ->
    {ok, describe_pipeline_execution_response(), tuple()} |
    {error, any()} |
    {error, describe_pipeline_execution_errors(), tuple()}.
describe_pipeline_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePipelineExecution">>, Input, Options).

%% @doc Returns a description of a processing job.
-spec describe_processing_job(aws_client:aws_client(), describe_processing_job_request()) ->
    {ok, describe_processing_job_response(), tuple()} |
    {error, any()} |
    {error, describe_processing_job_errors(), tuple()}.
describe_processing_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_processing_job(Client, Input, []).

-spec describe_processing_job(aws_client:aws_client(), describe_processing_job_request(), proplists:proplist()) ->
    {ok, describe_processing_job_response(), tuple()} |
    {error, any()} |
    {error, describe_processing_job_errors(), tuple()}.
describe_processing_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProcessingJob">>, Input, Options).

%% @doc Describes the details of a project.
-spec describe_project(aws_client:aws_client(), describe_project_input()) ->
    {ok, describe_project_output(), tuple()} |
    {error, any()}.
describe_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_project(Client, Input, []).

-spec describe_project(aws_client:aws_client(), describe_project_input(), proplists:proplist()) ->
    {ok, describe_project_output(), tuple()} |
    {error, any()}.
describe_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProject">>, Input, Options).

%% @doc Describes the space.
-spec describe_space(aws_client:aws_client(), describe_space_request()) ->
    {ok, describe_space_response(), tuple()} |
    {error, any()} |
    {error, describe_space_errors(), tuple()}.
describe_space(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_space(Client, Input, []).

-spec describe_space(aws_client:aws_client(), describe_space_request(), proplists:proplist()) ->
    {ok, describe_space_response(), tuple()} |
    {error, any()} |
    {error, describe_space_errors(), tuple()}.
describe_space(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSpace">>, Input, Options).

%% @doc Describes the Amazon SageMaker AI Studio Lifecycle Configuration.
-spec describe_studio_lifecycle_config(aws_client:aws_client(), describe_studio_lifecycle_config_request()) ->
    {ok, describe_studio_lifecycle_config_response(), tuple()} |
    {error, any()} |
    {error, describe_studio_lifecycle_config_errors(), tuple()}.
describe_studio_lifecycle_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_studio_lifecycle_config(Client, Input, []).

-spec describe_studio_lifecycle_config(aws_client:aws_client(), describe_studio_lifecycle_config_request(), proplists:proplist()) ->
    {ok, describe_studio_lifecycle_config_response(), tuple()} |
    {error, any()} |
    {error, describe_studio_lifecycle_config_errors(), tuple()}.
describe_studio_lifecycle_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStudioLifecycleConfig">>, Input, Options).

%% @doc Gets information about a work team provided by a vendor.
%%
%% It returns details about the
%% subscription with a vendor in the Amazon Web Services Marketplace.
-spec describe_subscribed_workteam(aws_client:aws_client(), describe_subscribed_workteam_request()) ->
    {ok, describe_subscribed_workteam_response(), tuple()} |
    {error, any()}.
describe_subscribed_workteam(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_subscribed_workteam(Client, Input, []).

-spec describe_subscribed_workteam(aws_client:aws_client(), describe_subscribed_workteam_request(), proplists:proplist()) ->
    {ok, describe_subscribed_workteam_response(), tuple()} |
    {error, any()}.
describe_subscribed_workteam(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSubscribedWorkteam">>, Input, Options).

%% @doc Returns information about a training job.
%%
%% Some of the attributes below only appear if the training job successfully
%% starts.
%% If the training job fails, `TrainingJobStatus' is `Failed' and,
%% depending on the `FailureReason', attributes like
%% `TrainingStartTime', `TrainingTimeInSeconds',
%% `TrainingEndTime', and `BillableTimeInSeconds' may not be
%% present in the response.
-spec describe_training_job(aws_client:aws_client(), describe_training_job_request()) ->
    {ok, describe_training_job_response(), tuple()} |
    {error, any()} |
    {error, describe_training_job_errors(), tuple()}.
describe_training_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_training_job(Client, Input, []).

-spec describe_training_job(aws_client:aws_client(), describe_training_job_request(), proplists:proplist()) ->
    {ok, describe_training_job_response(), tuple()} |
    {error, any()} |
    {error, describe_training_job_errors(), tuple()}.
describe_training_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrainingJob">>, Input, Options).

%% @doc Retrieves detailed information about a specific training plan.
-spec describe_training_plan(aws_client:aws_client(), describe_training_plan_request()) ->
    {ok, describe_training_plan_response(), tuple()} |
    {error, any()} |
    {error, describe_training_plan_errors(), tuple()}.
describe_training_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_training_plan(Client, Input, []).

-spec describe_training_plan(aws_client:aws_client(), describe_training_plan_request(), proplists:proplist()) ->
    {ok, describe_training_plan_response(), tuple()} |
    {error, any()} |
    {error, describe_training_plan_errors(), tuple()}.
describe_training_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrainingPlan">>, Input, Options).

%% @doc Returns information about a transform job.
-spec describe_transform_job(aws_client:aws_client(), describe_transform_job_request()) ->
    {ok, describe_transform_job_response(), tuple()} |
    {error, any()} |
    {error, describe_transform_job_errors(), tuple()}.
describe_transform_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_transform_job(Client, Input, []).

-spec describe_transform_job(aws_client:aws_client(), describe_transform_job_request(), proplists:proplist()) ->
    {ok, describe_transform_job_response(), tuple()} |
    {error, any()} |
    {error, describe_transform_job_errors(), tuple()}.
describe_transform_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTransformJob">>, Input, Options).

%% @doc Provides a list of a trial's properties.
-spec describe_trial(aws_client:aws_client(), describe_trial_request()) ->
    {ok, describe_trial_response(), tuple()} |
    {error, any()} |
    {error, describe_trial_errors(), tuple()}.
describe_trial(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trial(Client, Input, []).

-spec describe_trial(aws_client:aws_client(), describe_trial_request(), proplists:proplist()) ->
    {ok, describe_trial_response(), tuple()} |
    {error, any()} |
    {error, describe_trial_errors(), tuple()}.
describe_trial(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrial">>, Input, Options).

%% @doc Provides a list of a trials component's properties.
-spec describe_trial_component(aws_client:aws_client(), describe_trial_component_request()) ->
    {ok, describe_trial_component_response(), tuple()} |
    {error, any()} |
    {error, describe_trial_component_errors(), tuple()}.
describe_trial_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trial_component(Client, Input, []).

-spec describe_trial_component(aws_client:aws_client(), describe_trial_component_request(), proplists:proplist()) ->
    {ok, describe_trial_component_response(), tuple()} |
    {error, any()} |
    {error, describe_trial_component_errors(), tuple()}.
describe_trial_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrialComponent">>, Input, Options).

%% @doc Describes a user profile.
%%
%% For more information, see `CreateUserProfile'.
-spec describe_user_profile(aws_client:aws_client(), describe_user_profile_request()) ->
    {ok, describe_user_profile_response(), tuple()} |
    {error, any()} |
    {error, describe_user_profile_errors(), tuple()}.
describe_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user_profile(Client, Input, []).

-spec describe_user_profile(aws_client:aws_client(), describe_user_profile_request(), proplists:proplist()) ->
    {ok, describe_user_profile_response(), tuple()} |
    {error, any()} |
    {error, describe_user_profile_errors(), tuple()}.
describe_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUserProfile">>, Input, Options).

%% @doc Lists private workforce information, including workforce name, Amazon
%% Resource Name
%% (ARN), and, if applicable, allowed IP address ranges (CIDRs:
%% https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html).
%%
%% Allowable IP address
%% ranges are the IP addresses that workers can use to access tasks.
%%
%% This operation applies only to private workforces.
-spec describe_workforce(aws_client:aws_client(), describe_workforce_request()) ->
    {ok, describe_workforce_response(), tuple()} |
    {error, any()}.
describe_workforce(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workforce(Client, Input, []).

-spec describe_workforce(aws_client:aws_client(), describe_workforce_request(), proplists:proplist()) ->
    {ok, describe_workforce_response(), tuple()} |
    {error, any()}.
describe_workforce(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkforce">>, Input, Options).

%% @doc Gets information about a specific work team.
%%
%% You can see information such as the
%% creation date, the last updated date, membership information, and the work
%% team's Amazon
%% Resource Name (ARN).
-spec describe_workteam(aws_client:aws_client(), describe_workteam_request()) ->
    {ok, describe_workteam_response(), tuple()} |
    {error, any()}.
describe_workteam(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workteam(Client, Input, []).

-spec describe_workteam(aws_client:aws_client(), describe_workteam_request(), proplists:proplist()) ->
    {ok, describe_workteam_response(), tuple()} |
    {error, any()}.
describe_workteam(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkteam">>, Input, Options).

%% @doc Disables using Service Catalog in SageMaker.
%%
%% Service Catalog is used to create
%% SageMaker projects.
-spec disable_sagemaker_servicecatalog_portfolio(aws_client:aws_client(), disable_sagemaker_servicecatalog_portfolio_input()) ->
    {ok, disable_sagemaker_servicecatalog_portfolio_output(), tuple()} |
    {error, any()}.
disable_sagemaker_servicecatalog_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_sagemaker_servicecatalog_portfolio(Client, Input, []).

-spec disable_sagemaker_servicecatalog_portfolio(aws_client:aws_client(), disable_sagemaker_servicecatalog_portfolio_input(), proplists:proplist()) ->
    {ok, disable_sagemaker_servicecatalog_portfolio_output(), tuple()} |
    {error, any()}.
disable_sagemaker_servicecatalog_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableSagemakerServicecatalogPortfolio">>, Input, Options).

%% @doc Disassociates a trial component from a trial.
%%
%% This doesn't effect other trials the
%% component is associated with. Before you can delete a component, you must
%% disassociate the
%% component from all trials it is associated with. To associate a trial
%% component with a trial,
%% call the AssociateTrialComponent:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_AssociateTrialComponent.html
%% API.
%%
%% To get a list of the trials a component is associated with, use the
%% Search:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_Search.html
%% API. Specify `ExperimentTrialComponent' for the `Resource'
%% parameter.
%% The list appears in the response under
%% `Results.TrialComponent.Parents'.
-spec disassociate_trial_component(aws_client:aws_client(), disassociate_trial_component_request()) ->
    {ok, disassociate_trial_component_response(), tuple()} |
    {error, any()} |
    {error, disassociate_trial_component_errors(), tuple()}.
disassociate_trial_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_trial_component(Client, Input, []).

-spec disassociate_trial_component(aws_client:aws_client(), disassociate_trial_component_request(), proplists:proplist()) ->
    {ok, disassociate_trial_component_response(), tuple()} |
    {error, any()} |
    {error, disassociate_trial_component_errors(), tuple()}.
disassociate_trial_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateTrialComponent">>, Input, Options).

%% @doc Enables using Service Catalog in SageMaker.
%%
%% Service Catalog is used to create
%% SageMaker projects.
-spec enable_sagemaker_servicecatalog_portfolio(aws_client:aws_client(), enable_sagemaker_servicecatalog_portfolio_input()) ->
    {ok, enable_sagemaker_servicecatalog_portfolio_output(), tuple()} |
    {error, any()}.
enable_sagemaker_servicecatalog_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_sagemaker_servicecatalog_portfolio(Client, Input, []).

-spec enable_sagemaker_servicecatalog_portfolio(aws_client:aws_client(), enable_sagemaker_servicecatalog_portfolio_input(), proplists:proplist()) ->
    {ok, enable_sagemaker_servicecatalog_portfolio_output(), tuple()} |
    {error, any()}.
enable_sagemaker_servicecatalog_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableSagemakerServicecatalogPortfolio">>, Input, Options).

%% @doc Describes a fleet.
-spec get_device_fleet_report(aws_client:aws_client(), get_device_fleet_report_request()) ->
    {ok, get_device_fleet_report_response(), tuple()} |
    {error, any()}.
get_device_fleet_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_device_fleet_report(Client, Input, []).

-spec get_device_fleet_report(aws_client:aws_client(), get_device_fleet_report_request(), proplists:proplist()) ->
    {ok, get_device_fleet_report_response(), tuple()} |
    {error, any()}.
get_device_fleet_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeviceFleetReport">>, Input, Options).

%% @doc The resource policy for the lineage group.
-spec get_lineage_group_policy(aws_client:aws_client(), get_lineage_group_policy_request()) ->
    {ok, get_lineage_group_policy_response(), tuple()} |
    {error, any()} |
    {error, get_lineage_group_policy_errors(), tuple()}.
get_lineage_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_lineage_group_policy(Client, Input, []).

-spec get_lineage_group_policy(aws_client:aws_client(), get_lineage_group_policy_request(), proplists:proplist()) ->
    {ok, get_lineage_group_policy_response(), tuple()} |
    {error, any()} |
    {error, get_lineage_group_policy_errors(), tuple()}.
get_lineage_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLineageGroupPolicy">>, Input, Options).

%% @doc Gets a resource policy that manages access for a model group.
%%
%% For information about
%% resource policies, see Identity-based
%% policies and resource-based policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html
%% in the Amazon Web Services
%% Identity and Access Management User Guide..
-spec get_model_package_group_policy(aws_client:aws_client(), get_model_package_group_policy_input()) ->
    {ok, get_model_package_group_policy_output(), tuple()} |
    {error, any()}.
get_model_package_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_model_package_group_policy(Client, Input, []).

-spec get_model_package_group_policy(aws_client:aws_client(), get_model_package_group_policy_input(), proplists:proplist()) ->
    {ok, get_model_package_group_policy_output(), tuple()} |
    {error, any()}.
get_model_package_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetModelPackageGroupPolicy">>, Input, Options).

%% @doc Gets the status of Service Catalog in SageMaker.
%%
%% Service Catalog is used to create
%% SageMaker projects.
-spec get_sagemaker_servicecatalog_portfolio_status(aws_client:aws_client(), get_sagemaker_servicecatalog_portfolio_status_input()) ->
    {ok, get_sagemaker_servicecatalog_portfolio_status_output(), tuple()} |
    {error, any()}.
get_sagemaker_servicecatalog_portfolio_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_sagemaker_servicecatalog_portfolio_status(Client, Input, []).

-spec get_sagemaker_servicecatalog_portfolio_status(aws_client:aws_client(), get_sagemaker_servicecatalog_portfolio_status_input(), proplists:proplist()) ->
    {ok, get_sagemaker_servicecatalog_portfolio_status_output(), tuple()} |
    {error, any()}.
get_sagemaker_servicecatalog_portfolio_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSagemakerServicecatalogPortfolioStatus">>, Input, Options).

%% @doc Starts an Amazon SageMaker Inference Recommender autoscaling
%% recommendation job.
%%
%% Returns recommendations for autoscaling policies
%% that you can apply to your SageMaker endpoint.
-spec get_scaling_configuration_recommendation(aws_client:aws_client(), get_scaling_configuration_recommendation_request()) ->
    {ok, get_scaling_configuration_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_scaling_configuration_recommendation_errors(), tuple()}.
get_scaling_configuration_recommendation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_scaling_configuration_recommendation(Client, Input, []).

-spec get_scaling_configuration_recommendation(aws_client:aws_client(), get_scaling_configuration_recommendation_request(), proplists:proplist()) ->
    {ok, get_scaling_configuration_recommendation_response(), tuple()} |
    {error, any()} |
    {error, get_scaling_configuration_recommendation_errors(), tuple()}.
get_scaling_configuration_recommendation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetScalingConfigurationRecommendation">>, Input, Options).

%% @doc An auto-complete API for the search functionality in the SageMaker
%% console.
%%
%% It returns
%% suggestions of possible matches for the property name to use in
%% `Search'
%% queries. Provides suggestions for `HyperParameters', `Tags', and
%% `Metrics'.
-spec get_search_suggestions(aws_client:aws_client(), get_search_suggestions_request()) ->
    {ok, get_search_suggestions_response(), tuple()} |
    {error, any()}.
get_search_suggestions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_search_suggestions(Client, Input, []).

-spec get_search_suggestions(aws_client:aws_client(), get_search_suggestions_request(), proplists:proplist()) ->
    {ok, get_search_suggestions_response(), tuple()} |
    {error, any()}.
get_search_suggestions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSearchSuggestions">>, Input, Options).

%% @doc Import hub content.
-spec import_hub_content(aws_client:aws_client(), import_hub_content_request()) ->
    {ok, import_hub_content_response(), tuple()} |
    {error, any()} |
    {error, import_hub_content_errors(), tuple()}.
import_hub_content(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_hub_content(Client, Input, []).

-spec import_hub_content(aws_client:aws_client(), import_hub_content_request(), proplists:proplist()) ->
    {ok, import_hub_content_response(), tuple()} |
    {error, any()} |
    {error, import_hub_content_errors(), tuple()}.
import_hub_content(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportHubContent">>, Input, Options).

%% @doc Lists the actions in your account and their properties.
-spec list_actions(aws_client:aws_client(), list_actions_request()) ->
    {ok, list_actions_response(), tuple()} |
    {error, any()} |
    {error, list_actions_errors(), tuple()}.
list_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_actions(Client, Input, []).

-spec list_actions(aws_client:aws_client(), list_actions_request(), proplists:proplist()) ->
    {ok, list_actions_response(), tuple()} |
    {error, any()} |
    {error, list_actions_errors(), tuple()}.
list_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListActions">>, Input, Options).

%% @doc Lists the machine learning algorithms that have been created.
-spec list_algorithms(aws_client:aws_client(), list_algorithms_input()) ->
    {ok, list_algorithms_output(), tuple()} |
    {error, any()}.
list_algorithms(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_algorithms(Client, Input, []).

-spec list_algorithms(aws_client:aws_client(), list_algorithms_input(), proplists:proplist()) ->
    {ok, list_algorithms_output(), tuple()} |
    {error, any()}.
list_algorithms(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAlgorithms">>, Input, Options).

%% @doc Lists the aliases of a specified image or image version.
-spec list_aliases(aws_client:aws_client(), list_aliases_request()) ->
    {ok, list_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_aliases_errors(), tuple()}.
list_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_aliases(Client, Input, []).

-spec list_aliases(aws_client:aws_client(), list_aliases_request(), proplists:proplist()) ->
    {ok, list_aliases_response(), tuple()} |
    {error, any()} |
    {error, list_aliases_errors(), tuple()}.
list_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAliases">>, Input, Options).

%% @doc Lists the AppImageConfigs in your account and their properties.
%%
%% The list can be
%% filtered by creation time or modified time, and whether the AppImageConfig
%% name contains
%% a specified string.
-spec list_app_image_configs(aws_client:aws_client(), list_app_image_configs_request()) ->
    {ok, list_app_image_configs_response(), tuple()} |
    {error, any()}.
list_app_image_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_app_image_configs(Client, Input, []).

-spec list_app_image_configs(aws_client:aws_client(), list_app_image_configs_request(), proplists:proplist()) ->
    {ok, list_app_image_configs_response(), tuple()} |
    {error, any()}.
list_app_image_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAppImageConfigs">>, Input, Options).

%% @doc Lists apps.
-spec list_apps(aws_client:aws_client(), list_apps_request()) ->
    {ok, list_apps_response(), tuple()} |
    {error, any()}.
list_apps(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_apps(Client, Input, []).

-spec list_apps(aws_client:aws_client(), list_apps_request(), proplists:proplist()) ->
    {ok, list_apps_response(), tuple()} |
    {error, any()}.
list_apps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApps">>, Input, Options).

%% @doc Lists the artifacts in your account and their properties.
-spec list_artifacts(aws_client:aws_client(), list_artifacts_request()) ->
    {ok, list_artifacts_response(), tuple()} |
    {error, any()} |
    {error, list_artifacts_errors(), tuple()}.
list_artifacts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_artifacts(Client, Input, []).

-spec list_artifacts(aws_client:aws_client(), list_artifacts_request(), proplists:proplist()) ->
    {ok, list_artifacts_response(), tuple()} |
    {error, any()} |
    {error, list_artifacts_errors(), tuple()}.
list_artifacts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListArtifacts">>, Input, Options).

%% @doc Lists the associations in your account and their properties.
-spec list_associations(aws_client:aws_client(), list_associations_request()) ->
    {ok, list_associations_response(), tuple()} |
    {error, any()} |
    {error, list_associations_errors(), tuple()}.
list_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_associations(Client, Input, []).

-spec list_associations(aws_client:aws_client(), list_associations_request(), proplists:proplist()) ->
    {ok, list_associations_response(), tuple()} |
    {error, any()} |
    {error, list_associations_errors(), tuple()}.
list_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssociations">>, Input, Options).

%% @doc Request a list of jobs.
-spec list_auto_ml_jobs(aws_client:aws_client(), list_auto_ml_jobs_request()) ->
    {ok, list_auto_ml_jobs_response(), tuple()} |
    {error, any()}.
list_auto_ml_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_auto_ml_jobs(Client, Input, []).

-spec list_auto_ml_jobs(aws_client:aws_client(), list_auto_ml_jobs_request(), proplists:proplist()) ->
    {ok, list_auto_ml_jobs_response(), tuple()} |
    {error, any()}.
list_auto_ml_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAutoMLJobs">>, Input, Options).

%% @doc List the candidates created for the job.
-spec list_candidates_for_auto_ml_job(aws_client:aws_client(), list_candidates_for_auto_ml_job_request()) ->
    {ok, list_candidates_for_auto_ml_job_response(), tuple()} |
    {error, any()} |
    {error, list_candidates_for_auto_ml_job_errors(), tuple()}.
list_candidates_for_auto_ml_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_candidates_for_auto_ml_job(Client, Input, []).

-spec list_candidates_for_auto_ml_job(aws_client:aws_client(), list_candidates_for_auto_ml_job_request(), proplists:proplist()) ->
    {ok, list_candidates_for_auto_ml_job_response(), tuple()} |
    {error, any()} |
    {error, list_candidates_for_auto_ml_job_errors(), tuple()}.
list_candidates_for_auto_ml_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCandidatesForAutoMLJob">>, Input, Options).

%% @doc Retrieves the list of instances (also called nodes interchangeably)
%% in a SageMaker HyperPod cluster.
-spec list_cluster_nodes(aws_client:aws_client(), list_cluster_nodes_request()) ->
    {ok, list_cluster_nodes_response(), tuple()} |
    {error, any()} |
    {error, list_cluster_nodes_errors(), tuple()}.
list_cluster_nodes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_cluster_nodes(Client, Input, []).

-spec list_cluster_nodes(aws_client:aws_client(), list_cluster_nodes_request(), proplists:proplist()) ->
    {ok, list_cluster_nodes_response(), tuple()} |
    {error, any()} |
    {error, list_cluster_nodes_errors(), tuple()}.
list_cluster_nodes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListClusterNodes">>, Input, Options).

%% @doc List the cluster policy configurations.
-spec list_cluster_scheduler_configs(aws_client:aws_client(), list_cluster_scheduler_configs_request()) ->
    {ok, list_cluster_scheduler_configs_response(), tuple()} |
    {error, any()}.
list_cluster_scheduler_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_cluster_scheduler_configs(Client, Input, []).

-spec list_cluster_scheduler_configs(aws_client:aws_client(), list_cluster_scheduler_configs_request(), proplists:proplist()) ->
    {ok, list_cluster_scheduler_configs_response(), tuple()} |
    {error, any()}.
list_cluster_scheduler_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListClusterSchedulerConfigs">>, Input, Options).

%% @doc Retrieves the list of SageMaker HyperPod clusters.
-spec list_clusters(aws_client:aws_client(), list_clusters_request()) ->
    {ok, list_clusters_response(), tuple()} |
    {error, any()}.
list_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_clusters(Client, Input, []).

-spec list_clusters(aws_client:aws_client(), list_clusters_request(), proplists:proplist()) ->
    {ok, list_clusters_response(), tuple()} |
    {error, any()}.
list_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListClusters">>, Input, Options).

%% @doc Gets a list of the Git repositories in your account.
-spec list_code_repositories(aws_client:aws_client(), list_code_repositories_input()) ->
    {ok, list_code_repositories_output(), tuple()} |
    {error, any()}.
list_code_repositories(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_code_repositories(Client, Input, []).

-spec list_code_repositories(aws_client:aws_client(), list_code_repositories_input(), proplists:proplist()) ->
    {ok, list_code_repositories_output(), tuple()} |
    {error, any()}.
list_code_repositories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCodeRepositories">>, Input, Options).

%% @doc Lists model compilation jobs that satisfy various filters.
%%
%% To create a model compilation job, use CreateCompilationJob:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateCompilationJob.html.
%% To get information about a particular model
%% compilation job you have created, use DescribeCompilationJob:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeCompilationJob.html.
-spec list_compilation_jobs(aws_client:aws_client(), list_compilation_jobs_request()) ->
    {ok, list_compilation_jobs_response(), tuple()} |
    {error, any()}.
list_compilation_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_compilation_jobs(Client, Input, []).

-spec list_compilation_jobs(aws_client:aws_client(), list_compilation_jobs_request(), proplists:proplist()) ->
    {ok, list_compilation_jobs_response(), tuple()} |
    {error, any()}.
list_compilation_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCompilationJobs">>, Input, Options).

%% @doc List the resource allocation definitions.
-spec list_compute_quotas(aws_client:aws_client(), list_compute_quotas_request()) ->
    {ok, list_compute_quotas_response(), tuple()} |
    {error, any()}.
list_compute_quotas(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_compute_quotas(Client, Input, []).

-spec list_compute_quotas(aws_client:aws_client(), list_compute_quotas_request(), proplists:proplist()) ->
    {ok, list_compute_quotas_response(), tuple()} |
    {error, any()}.
list_compute_quotas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListComputeQuotas">>, Input, Options).

%% @doc Lists the contexts in your account and their properties.
-spec list_contexts(aws_client:aws_client(), list_contexts_request()) ->
    {ok, list_contexts_response(), tuple()} |
    {error, any()} |
    {error, list_contexts_errors(), tuple()}.
list_contexts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_contexts(Client, Input, []).

-spec list_contexts(aws_client:aws_client(), list_contexts_request(), proplists:proplist()) ->
    {ok, list_contexts_response(), tuple()} |
    {error, any()} |
    {error, list_contexts_errors(), tuple()}.
list_contexts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListContexts">>, Input, Options).

%% @doc Lists the data quality job definitions in your account.
-spec list_data_quality_job_definitions(aws_client:aws_client(), list_data_quality_job_definitions_request()) ->
    {ok, list_data_quality_job_definitions_response(), tuple()} |
    {error, any()}.
list_data_quality_job_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_data_quality_job_definitions(Client, Input, []).

-spec list_data_quality_job_definitions(aws_client:aws_client(), list_data_quality_job_definitions_request(), proplists:proplist()) ->
    {ok, list_data_quality_job_definitions_response(), tuple()} |
    {error, any()}.
list_data_quality_job_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDataQualityJobDefinitions">>, Input, Options).

%% @doc Returns a list of devices in the fleet.
-spec list_device_fleets(aws_client:aws_client(), list_device_fleets_request()) ->
    {ok, list_device_fleets_response(), tuple()} |
    {error, any()}.
list_device_fleets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_device_fleets(Client, Input, []).

-spec list_device_fleets(aws_client:aws_client(), list_device_fleets_request(), proplists:proplist()) ->
    {ok, list_device_fleets_response(), tuple()} |
    {error, any()}.
list_device_fleets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeviceFleets">>, Input, Options).

%% @doc A list of devices.
-spec list_devices(aws_client:aws_client(), list_devices_request()) ->
    {ok, list_devices_response(), tuple()} |
    {error, any()}.
list_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_devices(Client, Input, []).

-spec list_devices(aws_client:aws_client(), list_devices_request(), proplists:proplist()) ->
    {ok, list_devices_response(), tuple()} |
    {error, any()}.
list_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDevices">>, Input, Options).

%% @doc Lists the domains.
-spec list_domains(aws_client:aws_client(), list_domains_request()) ->
    {ok, list_domains_response(), tuple()} |
    {error, any()}.
list_domains(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_domains(Client, Input, []).

-spec list_domains(aws_client:aws_client(), list_domains_request(), proplists:proplist()) ->
    {ok, list_domains_response(), tuple()} |
    {error, any()}.
list_domains(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDomains">>, Input, Options).

%% @doc Lists all edge deployment plans.
-spec list_edge_deployment_plans(aws_client:aws_client(), list_edge_deployment_plans_request()) ->
    {ok, list_edge_deployment_plans_response(), tuple()} |
    {error, any()}.
list_edge_deployment_plans(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_edge_deployment_plans(Client, Input, []).

-spec list_edge_deployment_plans(aws_client:aws_client(), list_edge_deployment_plans_request(), proplists:proplist()) ->
    {ok, list_edge_deployment_plans_response(), tuple()} |
    {error, any()}.
list_edge_deployment_plans(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEdgeDeploymentPlans">>, Input, Options).

%% @doc Returns a list of edge packaging jobs.
-spec list_edge_packaging_jobs(aws_client:aws_client(), list_edge_packaging_jobs_request()) ->
    {ok, list_edge_packaging_jobs_response(), tuple()} |
    {error, any()}.
list_edge_packaging_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_edge_packaging_jobs(Client, Input, []).

-spec list_edge_packaging_jobs(aws_client:aws_client(), list_edge_packaging_jobs_request(), proplists:proplist()) ->
    {ok, list_edge_packaging_jobs_response(), tuple()} |
    {error, any()}.
list_edge_packaging_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEdgePackagingJobs">>, Input, Options).

%% @doc Lists endpoint configurations.
-spec list_endpoint_configs(aws_client:aws_client(), list_endpoint_configs_input()) ->
    {ok, list_endpoint_configs_output(), tuple()} |
    {error, any()}.
list_endpoint_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_endpoint_configs(Client, Input, []).

-spec list_endpoint_configs(aws_client:aws_client(), list_endpoint_configs_input(), proplists:proplist()) ->
    {ok, list_endpoint_configs_output(), tuple()} |
    {error, any()}.
list_endpoint_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEndpointConfigs">>, Input, Options).

%% @doc Lists endpoints.
-spec list_endpoints(aws_client:aws_client(), list_endpoints_input()) ->
    {ok, list_endpoints_output(), tuple()} |
    {error, any()}.
list_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_endpoints(Client, Input, []).

-spec list_endpoints(aws_client:aws_client(), list_endpoints_input(), proplists:proplist()) ->
    {ok, list_endpoints_output(), tuple()} |
    {error, any()}.
list_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEndpoints">>, Input, Options).

%% @doc Lists all the experiments in your account.
%%
%% The list can be filtered to show only
%% experiments that were created in a specific time range. The list can be
%% sorted by experiment
%% name or creation time.
-spec list_experiments(aws_client:aws_client(), list_experiments_request()) ->
    {ok, list_experiments_response(), tuple()} |
    {error, any()}.
list_experiments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_experiments(Client, Input, []).

-spec list_experiments(aws_client:aws_client(), list_experiments_request(), proplists:proplist()) ->
    {ok, list_experiments_response(), tuple()} |
    {error, any()}.
list_experiments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExperiments">>, Input, Options).

%% @doc List `FeatureGroup's based on given filter and order.
-spec list_feature_groups(aws_client:aws_client(), list_feature_groups_request()) ->
    {ok, list_feature_groups_response(), tuple()} |
    {error, any()}.
list_feature_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_feature_groups(Client, Input, []).

-spec list_feature_groups(aws_client:aws_client(), list_feature_groups_request(), proplists:proplist()) ->
    {ok, list_feature_groups_response(), tuple()} |
    {error, any()}.
list_feature_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFeatureGroups">>, Input, Options).

%% @doc Returns information about the flow definitions in your account.
-spec list_flow_definitions(aws_client:aws_client(), list_flow_definitions_request()) ->
    {ok, list_flow_definitions_response(), tuple()} |
    {error, any()}.
list_flow_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_flow_definitions(Client, Input, []).

-spec list_flow_definitions(aws_client:aws_client(), list_flow_definitions_request(), proplists:proplist()) ->
    {ok, list_flow_definitions_response(), tuple()} |
    {error, any()}.
list_flow_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFlowDefinitions">>, Input, Options).

%% @doc List hub content versions.
-spec list_hub_content_versions(aws_client:aws_client(), list_hub_content_versions_request()) ->
    {ok, list_hub_content_versions_response(), tuple()} |
    {error, any()} |
    {error, list_hub_content_versions_errors(), tuple()}.
list_hub_content_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hub_content_versions(Client, Input, []).

-spec list_hub_content_versions(aws_client:aws_client(), list_hub_content_versions_request(), proplists:proplist()) ->
    {ok, list_hub_content_versions_response(), tuple()} |
    {error, any()} |
    {error, list_hub_content_versions_errors(), tuple()}.
list_hub_content_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHubContentVersions">>, Input, Options).

%% @doc List the contents of a hub.
-spec list_hub_contents(aws_client:aws_client(), list_hub_contents_request()) ->
    {ok, list_hub_contents_response(), tuple()} |
    {error, any()} |
    {error, list_hub_contents_errors(), tuple()}.
list_hub_contents(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hub_contents(Client, Input, []).

-spec list_hub_contents(aws_client:aws_client(), list_hub_contents_request(), proplists:proplist()) ->
    {ok, list_hub_contents_response(), tuple()} |
    {error, any()} |
    {error, list_hub_contents_errors(), tuple()}.
list_hub_contents(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHubContents">>, Input, Options).

%% @doc List all existing hubs.
-spec list_hubs(aws_client:aws_client(), list_hubs_request()) ->
    {ok, list_hubs_response(), tuple()} |
    {error, any()}.
list_hubs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hubs(Client, Input, []).

-spec list_hubs(aws_client:aws_client(), list_hubs_request(), proplists:proplist()) ->
    {ok, list_hubs_response(), tuple()} |
    {error, any()}.
list_hubs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHubs">>, Input, Options).

%% @doc Returns information about the human task user interfaces in your
%% account.
-spec list_human_task_uis(aws_client:aws_client(), list_human_task_uis_request()) ->
    {ok, list_human_task_uis_response(), tuple()} |
    {error, any()}.
list_human_task_uis(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_human_task_uis(Client, Input, []).

-spec list_human_task_uis(aws_client:aws_client(), list_human_task_uis_request(), proplists:proplist()) ->
    {ok, list_human_task_uis_response(), tuple()} |
    {error, any()}.
list_human_task_uis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHumanTaskUis">>, Input, Options).

%% @doc Gets a list of HyperParameterTuningJobSummary:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTuningJobSummary.html
%% objects that
%% describe
%% the hyperparameter tuning jobs launched in your account.
-spec list_hyper_parameter_tuning_jobs(aws_client:aws_client(), list_hyper_parameter_tuning_jobs_request()) ->
    {ok, list_hyper_parameter_tuning_jobs_response(), tuple()} |
    {error, any()}.
list_hyper_parameter_tuning_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hyper_parameter_tuning_jobs(Client, Input, []).

-spec list_hyper_parameter_tuning_jobs(aws_client:aws_client(), list_hyper_parameter_tuning_jobs_request(), proplists:proplist()) ->
    {ok, list_hyper_parameter_tuning_jobs_response(), tuple()} |
    {error, any()}.
list_hyper_parameter_tuning_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHyperParameterTuningJobs">>, Input, Options).

%% @doc Lists the versions of a specified image and their properties.
%%
%% The list can be filtered
%% by creation time or modified time.
-spec list_image_versions(aws_client:aws_client(), list_image_versions_request()) ->
    {ok, list_image_versions_response(), tuple()} |
    {error, any()} |
    {error, list_image_versions_errors(), tuple()}.
list_image_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_image_versions(Client, Input, []).

-spec list_image_versions(aws_client:aws_client(), list_image_versions_request(), proplists:proplist()) ->
    {ok, list_image_versions_response(), tuple()} |
    {error, any()} |
    {error, list_image_versions_errors(), tuple()}.
list_image_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListImageVersions">>, Input, Options).

%% @doc Lists the images in your account and their properties.
%%
%% The list can be filtered by
%% creation time or modified time, and whether the image name contains a
%% specified string.
-spec list_images(aws_client:aws_client(), list_images_request()) ->
    {ok, list_images_response(), tuple()} |
    {error, any()}.
list_images(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_images(Client, Input, []).

-spec list_images(aws_client:aws_client(), list_images_request(), proplists:proplist()) ->
    {ok, list_images_response(), tuple()} |
    {error, any()}.
list_images(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListImages">>, Input, Options).

%% @doc Lists the inference components in your account and their properties.
-spec list_inference_components(aws_client:aws_client(), list_inference_components_input()) ->
    {ok, list_inference_components_output(), tuple()} |
    {error, any()}.
list_inference_components(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_inference_components(Client, Input, []).

-spec list_inference_components(aws_client:aws_client(), list_inference_components_input(), proplists:proplist()) ->
    {ok, list_inference_components_output(), tuple()} |
    {error, any()}.
list_inference_components(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInferenceComponents">>, Input, Options).

%% @doc Returns the list of all inference experiments.
-spec list_inference_experiments(aws_client:aws_client(), list_inference_experiments_request()) ->
    {ok, list_inference_experiments_response(), tuple()} |
    {error, any()}.
list_inference_experiments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_inference_experiments(Client, Input, []).

-spec list_inference_experiments(aws_client:aws_client(), list_inference_experiments_request(), proplists:proplist()) ->
    {ok, list_inference_experiments_response(), tuple()} |
    {error, any()}.
list_inference_experiments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInferenceExperiments">>, Input, Options).

%% @doc Returns a list of the subtasks for an Inference Recommender job.
%%
%% The supported subtasks are benchmarks, which evaluate the performance of
%% your model on different instance types.
-spec list_inference_recommendations_job_steps(aws_client:aws_client(), list_inference_recommendations_job_steps_request()) ->
    {ok, list_inference_recommendations_job_steps_response(), tuple()} |
    {error, any()} |
    {error, list_inference_recommendations_job_steps_errors(), tuple()}.
list_inference_recommendations_job_steps(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_inference_recommendations_job_steps(Client, Input, []).

-spec list_inference_recommendations_job_steps(aws_client:aws_client(), list_inference_recommendations_job_steps_request(), proplists:proplist()) ->
    {ok, list_inference_recommendations_job_steps_response(), tuple()} |
    {error, any()} |
    {error, list_inference_recommendations_job_steps_errors(), tuple()}.
list_inference_recommendations_job_steps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInferenceRecommendationsJobSteps">>, Input, Options).

%% @doc Lists recommendation jobs that satisfy various filters.
-spec list_inference_recommendations_jobs(aws_client:aws_client(), list_inference_recommendations_jobs_request()) ->
    {ok, list_inference_recommendations_jobs_response(), tuple()} |
    {error, any()}.
list_inference_recommendations_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_inference_recommendations_jobs(Client, Input, []).

-spec list_inference_recommendations_jobs(aws_client:aws_client(), list_inference_recommendations_jobs_request(), proplists:proplist()) ->
    {ok, list_inference_recommendations_jobs_response(), tuple()} |
    {error, any()}.
list_inference_recommendations_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInferenceRecommendationsJobs">>, Input, Options).

%% @doc Gets a list of labeling jobs.
-spec list_labeling_jobs(aws_client:aws_client(), list_labeling_jobs_request()) ->
    {ok, list_labeling_jobs_response(), tuple()} |
    {error, any()}.
list_labeling_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_labeling_jobs(Client, Input, []).

-spec list_labeling_jobs(aws_client:aws_client(), list_labeling_jobs_request(), proplists:proplist()) ->
    {ok, list_labeling_jobs_response(), tuple()} |
    {error, any()}.
list_labeling_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLabelingJobs">>, Input, Options).

%% @doc Gets a list of labeling jobs assigned to a specified work team.
-spec list_labeling_jobs_for_workteam(aws_client:aws_client(), list_labeling_jobs_for_workteam_request()) ->
    {ok, list_labeling_jobs_for_workteam_response(), tuple()} |
    {error, any()} |
    {error, list_labeling_jobs_for_workteam_errors(), tuple()}.
list_labeling_jobs_for_workteam(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_labeling_jobs_for_workteam(Client, Input, []).

-spec list_labeling_jobs_for_workteam(aws_client:aws_client(), list_labeling_jobs_for_workteam_request(), proplists:proplist()) ->
    {ok, list_labeling_jobs_for_workteam_response(), tuple()} |
    {error, any()} |
    {error, list_labeling_jobs_for_workteam_errors(), tuple()}.
list_labeling_jobs_for_workteam(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLabelingJobsForWorkteam">>, Input, Options).

%% @doc A list of lineage groups shared with your Amazon Web Services
%% account.
%%
%% For more information, see
%% Cross-Account Lineage Tracking :
%% https://docs.aws.amazon.com/sagemaker/latest/dg/xaccount-lineage-tracking.html
%% in the Amazon SageMaker Developer Guide.
-spec list_lineage_groups(aws_client:aws_client(), list_lineage_groups_request()) ->
    {ok, list_lineage_groups_response(), tuple()} |
    {error, any()}.
list_lineage_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_lineage_groups(Client, Input, []).

-spec list_lineage_groups(aws_client:aws_client(), list_lineage_groups_request(), proplists:proplist()) ->
    {ok, list_lineage_groups_response(), tuple()} |
    {error, any()}.
list_lineage_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLineageGroups">>, Input, Options).

%% @doc Lists all MLflow Tracking Servers.
-spec list_mlflow_tracking_servers(aws_client:aws_client(), list_mlflow_tracking_servers_request()) ->
    {ok, list_mlflow_tracking_servers_response(), tuple()} |
    {error, any()}.
list_mlflow_tracking_servers(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_mlflow_tracking_servers(Client, Input, []).

-spec list_mlflow_tracking_servers(aws_client:aws_client(), list_mlflow_tracking_servers_request(), proplists:proplist()) ->
    {ok, list_mlflow_tracking_servers_response(), tuple()} |
    {error, any()}.
list_mlflow_tracking_servers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMlflowTrackingServers">>, Input, Options).

%% @doc Lists model bias jobs definitions that satisfy various filters.
-spec list_model_bias_job_definitions(aws_client:aws_client(), list_model_bias_job_definitions_request()) ->
    {ok, list_model_bias_job_definitions_response(), tuple()} |
    {error, any()}.
list_model_bias_job_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_bias_job_definitions(Client, Input, []).

-spec list_model_bias_job_definitions(aws_client:aws_client(), list_model_bias_job_definitions_request(), proplists:proplist()) ->
    {ok, list_model_bias_job_definitions_response(), tuple()} |
    {error, any()}.
list_model_bias_job_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelBiasJobDefinitions">>, Input, Options).

%% @doc List the export jobs for the Amazon SageMaker Model Card.
-spec list_model_card_export_jobs(aws_client:aws_client(), list_model_card_export_jobs_request()) ->
    {ok, list_model_card_export_jobs_response(), tuple()} |
    {error, any()}.
list_model_card_export_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_card_export_jobs(Client, Input, []).

-spec list_model_card_export_jobs(aws_client:aws_client(), list_model_card_export_jobs_request(), proplists:proplist()) ->
    {ok, list_model_card_export_jobs_response(), tuple()} |
    {error, any()}.
list_model_card_export_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelCardExportJobs">>, Input, Options).

%% @doc List existing versions of an Amazon SageMaker Model Card.
-spec list_model_card_versions(aws_client:aws_client(), list_model_card_versions_request()) ->
    {ok, list_model_card_versions_response(), tuple()} |
    {error, any()} |
    {error, list_model_card_versions_errors(), tuple()}.
list_model_card_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_card_versions(Client, Input, []).

-spec list_model_card_versions(aws_client:aws_client(), list_model_card_versions_request(), proplists:proplist()) ->
    {ok, list_model_card_versions_response(), tuple()} |
    {error, any()} |
    {error, list_model_card_versions_errors(), tuple()}.
list_model_card_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelCardVersions">>, Input, Options).

%% @doc List existing model cards.
-spec list_model_cards(aws_client:aws_client(), list_model_cards_request()) ->
    {ok, list_model_cards_response(), tuple()} |
    {error, any()}.
list_model_cards(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_cards(Client, Input, []).

-spec list_model_cards(aws_client:aws_client(), list_model_cards_request(), proplists:proplist()) ->
    {ok, list_model_cards_response(), tuple()} |
    {error, any()}.
list_model_cards(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelCards">>, Input, Options).

%% @doc Lists model explainability job definitions that satisfy various
%% filters.
-spec list_model_explainability_job_definitions(aws_client:aws_client(), list_model_explainability_job_definitions_request()) ->
    {ok, list_model_explainability_job_definitions_response(), tuple()} |
    {error, any()}.
list_model_explainability_job_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_explainability_job_definitions(Client, Input, []).

-spec list_model_explainability_job_definitions(aws_client:aws_client(), list_model_explainability_job_definitions_request(), proplists:proplist()) ->
    {ok, list_model_explainability_job_definitions_response(), tuple()} |
    {error, any()}.
list_model_explainability_job_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelExplainabilityJobDefinitions">>, Input, Options).

%% @doc Lists the domain, framework, task, and model name of standard
%% machine learning models found in common model zoos.
-spec list_model_metadata(aws_client:aws_client(), list_model_metadata_request()) ->
    {ok, list_model_metadata_response(), tuple()} |
    {error, any()}.
list_model_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_metadata(Client, Input, []).

-spec list_model_metadata(aws_client:aws_client(), list_model_metadata_request(), proplists:proplist()) ->
    {ok, list_model_metadata_response(), tuple()} |
    {error, any()}.
list_model_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelMetadata">>, Input, Options).

%% @doc Gets a list of the model groups in your Amazon Web Services account.
-spec list_model_package_groups(aws_client:aws_client(), list_model_package_groups_input()) ->
    {ok, list_model_package_groups_output(), tuple()} |
    {error, any()}.
list_model_package_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_package_groups(Client, Input, []).

-spec list_model_package_groups(aws_client:aws_client(), list_model_package_groups_input(), proplists:proplist()) ->
    {ok, list_model_package_groups_output(), tuple()} |
    {error, any()}.
list_model_package_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelPackageGroups">>, Input, Options).

%% @doc Lists the model packages that have been created.
-spec list_model_packages(aws_client:aws_client(), list_model_packages_input()) ->
    {ok, list_model_packages_output(), tuple()} |
    {error, any()}.
list_model_packages(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_packages(Client, Input, []).

-spec list_model_packages(aws_client:aws_client(), list_model_packages_input(), proplists:proplist()) ->
    {ok, list_model_packages_output(), tuple()} |
    {error, any()}.
list_model_packages(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelPackages">>, Input, Options).

%% @doc Gets a list of model quality monitoring job definitions in your
%% account.
-spec list_model_quality_job_definitions(aws_client:aws_client(), list_model_quality_job_definitions_request()) ->
    {ok, list_model_quality_job_definitions_response(), tuple()} |
    {error, any()}.
list_model_quality_job_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_quality_job_definitions(Client, Input, []).

-spec list_model_quality_job_definitions(aws_client:aws_client(), list_model_quality_job_definitions_request(), proplists:proplist()) ->
    {ok, list_model_quality_job_definitions_response(), tuple()} |
    {error, any()}.
list_model_quality_job_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelQualityJobDefinitions">>, Input, Options).

%% @doc Lists models created with the `CreateModel' API.
-spec list_models(aws_client:aws_client(), list_models_input()) ->
    {ok, list_models_output(), tuple()} |
    {error, any()}.
list_models(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_models(Client, Input, []).

-spec list_models(aws_client:aws_client(), list_models_input(), proplists:proplist()) ->
    {ok, list_models_output(), tuple()} |
    {error, any()}.
list_models(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModels">>, Input, Options).

%% @doc Gets a list of past alerts in a model monitoring schedule.
-spec list_monitoring_alert_history(aws_client:aws_client(), list_monitoring_alert_history_request()) ->
    {ok, list_monitoring_alert_history_response(), tuple()} |
    {error, any()} |
    {error, list_monitoring_alert_history_errors(), tuple()}.
list_monitoring_alert_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_monitoring_alert_history(Client, Input, []).

-spec list_monitoring_alert_history(aws_client:aws_client(), list_monitoring_alert_history_request(), proplists:proplist()) ->
    {ok, list_monitoring_alert_history_response(), tuple()} |
    {error, any()} |
    {error, list_monitoring_alert_history_errors(), tuple()}.
list_monitoring_alert_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMonitoringAlertHistory">>, Input, Options).

%% @doc Gets the alerts for a single monitoring schedule.
-spec list_monitoring_alerts(aws_client:aws_client(), list_monitoring_alerts_request()) ->
    {ok, list_monitoring_alerts_response(), tuple()} |
    {error, any()} |
    {error, list_monitoring_alerts_errors(), tuple()}.
list_monitoring_alerts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_monitoring_alerts(Client, Input, []).

-spec list_monitoring_alerts(aws_client:aws_client(), list_monitoring_alerts_request(), proplists:proplist()) ->
    {ok, list_monitoring_alerts_response(), tuple()} |
    {error, any()} |
    {error, list_monitoring_alerts_errors(), tuple()}.
list_monitoring_alerts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMonitoringAlerts">>, Input, Options).

%% @doc Returns list of all monitoring job executions.
-spec list_monitoring_executions(aws_client:aws_client(), list_monitoring_executions_request()) ->
    {ok, list_monitoring_executions_response(), tuple()} |
    {error, any()}.
list_monitoring_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_monitoring_executions(Client, Input, []).

-spec list_monitoring_executions(aws_client:aws_client(), list_monitoring_executions_request(), proplists:proplist()) ->
    {ok, list_monitoring_executions_response(), tuple()} |
    {error, any()}.
list_monitoring_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMonitoringExecutions">>, Input, Options).

%% @doc Returns list of all monitoring schedules.
-spec list_monitoring_schedules(aws_client:aws_client(), list_monitoring_schedules_request()) ->
    {ok, list_monitoring_schedules_response(), tuple()} |
    {error, any()}.
list_monitoring_schedules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_monitoring_schedules(Client, Input, []).

-spec list_monitoring_schedules(aws_client:aws_client(), list_monitoring_schedules_request(), proplists:proplist()) ->
    {ok, list_monitoring_schedules_response(), tuple()} |
    {error, any()}.
list_monitoring_schedules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMonitoringSchedules">>, Input, Options).

%% @doc Lists notebook instance lifestyle configurations created with the
%% CreateNotebookInstanceLifecycleConfig:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateNotebookInstanceLifecycleConfig.html
%% API.
-spec list_notebook_instance_lifecycle_configs(aws_client:aws_client(), list_notebook_instance_lifecycle_configs_input()) ->
    {ok, list_notebook_instance_lifecycle_configs_output(), tuple()} |
    {error, any()}.
list_notebook_instance_lifecycle_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_notebook_instance_lifecycle_configs(Client, Input, []).

-spec list_notebook_instance_lifecycle_configs(aws_client:aws_client(), list_notebook_instance_lifecycle_configs_input(), proplists:proplist()) ->
    {ok, list_notebook_instance_lifecycle_configs_output(), tuple()} |
    {error, any()}.
list_notebook_instance_lifecycle_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListNotebookInstanceLifecycleConfigs">>, Input, Options).

%% @doc Returns a list of the SageMaker AI notebook instances in the
%% requester's
%% account in an Amazon Web Services Region.
-spec list_notebook_instances(aws_client:aws_client(), list_notebook_instances_input()) ->
    {ok, list_notebook_instances_output(), tuple()} |
    {error, any()}.
list_notebook_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_notebook_instances(Client, Input, []).

-spec list_notebook_instances(aws_client:aws_client(), list_notebook_instances_input(), proplists:proplist()) ->
    {ok, list_notebook_instances_output(), tuple()} |
    {error, any()}.
list_notebook_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListNotebookInstances">>, Input, Options).

%% @doc Lists the optimization jobs in your account and their properties.
-spec list_optimization_jobs(aws_client:aws_client(), list_optimization_jobs_request()) ->
    {ok, list_optimization_jobs_response(), tuple()} |
    {error, any()}.
list_optimization_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_optimization_jobs(Client, Input, []).

-spec list_optimization_jobs(aws_client:aws_client(), list_optimization_jobs_request(), proplists:proplist()) ->
    {ok, list_optimization_jobs_response(), tuple()} |
    {error, any()}.
list_optimization_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOptimizationJobs">>, Input, Options).

%% @doc Lists all of the SageMaker Partner AI Apps in an account.
-spec list_partner_apps(aws_client:aws_client(), list_partner_apps_request()) ->
    {ok, list_partner_apps_response(), tuple()} |
    {error, any()}.
list_partner_apps(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_partner_apps(Client, Input, []).

-spec list_partner_apps(aws_client:aws_client(), list_partner_apps_request(), proplists:proplist()) ->
    {ok, list_partner_apps_response(), tuple()} |
    {error, any()}.
list_partner_apps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPartnerApps">>, Input, Options).

%% @doc Gets a list of `PipeLineExecutionStep' objects.
-spec list_pipeline_execution_steps(aws_client:aws_client(), list_pipeline_execution_steps_request()) ->
    {ok, list_pipeline_execution_steps_response(), tuple()} |
    {error, any()} |
    {error, list_pipeline_execution_steps_errors(), tuple()}.
list_pipeline_execution_steps(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pipeline_execution_steps(Client, Input, []).

-spec list_pipeline_execution_steps(aws_client:aws_client(), list_pipeline_execution_steps_request(), proplists:proplist()) ->
    {ok, list_pipeline_execution_steps_response(), tuple()} |
    {error, any()} |
    {error, list_pipeline_execution_steps_errors(), tuple()}.
list_pipeline_execution_steps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPipelineExecutionSteps">>, Input, Options).

%% @doc Gets a list of the pipeline executions.
-spec list_pipeline_executions(aws_client:aws_client(), list_pipeline_executions_request()) ->
    {ok, list_pipeline_executions_response(), tuple()} |
    {error, any()} |
    {error, list_pipeline_executions_errors(), tuple()}.
list_pipeline_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pipeline_executions(Client, Input, []).

-spec list_pipeline_executions(aws_client:aws_client(), list_pipeline_executions_request(), proplists:proplist()) ->
    {ok, list_pipeline_executions_response(), tuple()} |
    {error, any()} |
    {error, list_pipeline_executions_errors(), tuple()}.
list_pipeline_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPipelineExecutions">>, Input, Options).

%% @doc Gets a list of parameters for a pipeline execution.
-spec list_pipeline_parameters_for_execution(aws_client:aws_client(), list_pipeline_parameters_for_execution_request()) ->
    {ok, list_pipeline_parameters_for_execution_response(), tuple()} |
    {error, any()} |
    {error, list_pipeline_parameters_for_execution_errors(), tuple()}.
list_pipeline_parameters_for_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pipeline_parameters_for_execution(Client, Input, []).

-spec list_pipeline_parameters_for_execution(aws_client:aws_client(), list_pipeline_parameters_for_execution_request(), proplists:proplist()) ->
    {ok, list_pipeline_parameters_for_execution_response(), tuple()} |
    {error, any()} |
    {error, list_pipeline_parameters_for_execution_errors(), tuple()}.
list_pipeline_parameters_for_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPipelineParametersForExecution">>, Input, Options).

%% @doc Gets a list of pipelines.
-spec list_pipelines(aws_client:aws_client(), list_pipelines_request()) ->
    {ok, list_pipelines_response(), tuple()} |
    {error, any()}.
list_pipelines(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pipelines(Client, Input, []).

-spec list_pipelines(aws_client:aws_client(), list_pipelines_request(), proplists:proplist()) ->
    {ok, list_pipelines_response(), tuple()} |
    {error, any()}.
list_pipelines(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPipelines">>, Input, Options).

%% @doc Lists processing jobs that satisfy various filters.
-spec list_processing_jobs(aws_client:aws_client(), list_processing_jobs_request()) ->
    {ok, list_processing_jobs_response(), tuple()} |
    {error, any()}.
list_processing_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_processing_jobs(Client, Input, []).

-spec list_processing_jobs(aws_client:aws_client(), list_processing_jobs_request(), proplists:proplist()) ->
    {ok, list_processing_jobs_response(), tuple()} |
    {error, any()}.
list_processing_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProcessingJobs">>, Input, Options).

%% @doc Gets a list of the projects in an Amazon Web Services account.
-spec list_projects(aws_client:aws_client(), list_projects_input()) ->
    {ok, list_projects_output(), tuple()} |
    {error, any()}.
list_projects(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_projects(Client, Input, []).

-spec list_projects(aws_client:aws_client(), list_projects_input(), proplists:proplist()) ->
    {ok, list_projects_output(), tuple()} |
    {error, any()}.
list_projects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProjects">>, Input, Options).

%% @doc Lists Amazon SageMaker Catalogs based on given filters and orders.
%%
%% The maximum number of
%% `ResourceCatalog's viewable is 1000.
-spec list_resource_catalogs(aws_client:aws_client(), list_resource_catalogs_request()) ->
    {ok, list_resource_catalogs_response(), tuple()} |
    {error, any()}.
list_resource_catalogs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_catalogs(Client, Input, []).

-spec list_resource_catalogs(aws_client:aws_client(), list_resource_catalogs_request(), proplists:proplist()) ->
    {ok, list_resource_catalogs_response(), tuple()} |
    {error, any()}.
list_resource_catalogs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceCatalogs">>, Input, Options).

%% @doc Lists spaces.
-spec list_spaces(aws_client:aws_client(), list_spaces_request()) ->
    {ok, list_spaces_response(), tuple()} |
    {error, any()}.
list_spaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_spaces(Client, Input, []).

-spec list_spaces(aws_client:aws_client(), list_spaces_request(), proplists:proplist()) ->
    {ok, list_spaces_response(), tuple()} |
    {error, any()}.
list_spaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSpaces">>, Input, Options).

%% @doc Lists devices allocated to the stage, containing detailed device
%% information and
%% deployment status.
-spec list_stage_devices(aws_client:aws_client(), list_stage_devices_request()) ->
    {ok, list_stage_devices_response(), tuple()} |
    {error, any()}.
list_stage_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stage_devices(Client, Input, []).

-spec list_stage_devices(aws_client:aws_client(), list_stage_devices_request(), proplists:proplist()) ->
    {ok, list_stage_devices_response(), tuple()} |
    {error, any()}.
list_stage_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStageDevices">>, Input, Options).

%% @doc Lists the Amazon SageMaker AI Studio Lifecycle Configurations in your
%% Amazon Web Services
%% Account.
-spec list_studio_lifecycle_configs(aws_client:aws_client(), list_studio_lifecycle_configs_request()) ->
    {ok, list_studio_lifecycle_configs_response(), tuple()} |
    {error, any()} |
    {error, list_studio_lifecycle_configs_errors(), tuple()}.
list_studio_lifecycle_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_studio_lifecycle_configs(Client, Input, []).

-spec list_studio_lifecycle_configs(aws_client:aws_client(), list_studio_lifecycle_configs_request(), proplists:proplist()) ->
    {ok, list_studio_lifecycle_configs_response(), tuple()} |
    {error, any()} |
    {error, list_studio_lifecycle_configs_errors(), tuple()}.
list_studio_lifecycle_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStudioLifecycleConfigs">>, Input, Options).

%% @doc Gets a list of the work teams that you are subscribed to in the
%% Amazon Web Services Marketplace.
%%
%% The
%% list may be empty if no work team satisfies the filter specified in the
%% `NameContains' parameter.
-spec list_subscribed_workteams(aws_client:aws_client(), list_subscribed_workteams_request()) ->
    {ok, list_subscribed_workteams_response(), tuple()} |
    {error, any()}.
list_subscribed_workteams(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_subscribed_workteams(Client, Input, []).

-spec list_subscribed_workteams(aws_client:aws_client(), list_subscribed_workteams_request(), proplists:proplist()) ->
    {ok, list_subscribed_workteams_response(), tuple()} |
    {error, any()}.
list_subscribed_workteams(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSubscribedWorkteams">>, Input, Options).

%% @doc Returns the tags for the specified SageMaker resource.
-spec list_tags(aws_client:aws_client(), list_tags_input()) ->
    {ok, list_tags_output(), tuple()} |
    {error, any()}.
list_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags(Client, Input, []).

-spec list_tags(aws_client:aws_client(), list_tags_input(), proplists:proplist()) ->
    {ok, list_tags_output(), tuple()} |
    {error, any()}.
list_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTags">>, Input, Options).

%% @doc Lists training jobs.
%%
%% When `StatusEquals' and `MaxResults' are set at the same
%% time, the `MaxResults' number of training jobs are first retrieved
%% ignoring the `StatusEquals' parameter and then they are filtered by
%% the
%% `StatusEquals' parameter, which is returned as a response.
%%
%% For example, if `ListTrainingJobs' is invoked with the following
%% parameters:
%%
%% `{ ... MaxResults: 100, StatusEquals: InProgress ... }'
%%
%% First, 100 trainings jobs with any status, including those other than
%% `InProgress', are selected (sorted according to the creation time,
%% from the most current to the oldest). Next, those with a status of
%% `InProgress' are returned.
%%
%% You can quickly test the API using the following Amazon Web Services CLI
%% code.
%%
%% ```
%% aws sagemaker list-training-jobs --max-results 100 --status-equals
%% InProgress'''
-spec list_training_jobs(aws_client:aws_client(), list_training_jobs_request()) ->
    {ok, list_training_jobs_response(), tuple()} |
    {error, any()}.
list_training_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_training_jobs(Client, Input, []).

-spec list_training_jobs(aws_client:aws_client(), list_training_jobs_request(), proplists:proplist()) ->
    {ok, list_training_jobs_response(), tuple()} |
    {error, any()}.
list_training_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTrainingJobs">>, Input, Options).

%% @doc Gets a list of TrainingJobSummary:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_TrainingJobSummary.html
%% objects that describe the training jobs that a
%% hyperparameter tuning job launched.
-spec list_training_jobs_for_hyper_parameter_tuning_job(aws_client:aws_client(), list_training_jobs_for_hyper_parameter_tuning_job_request()) ->
    {ok, list_training_jobs_for_hyper_parameter_tuning_job_response(), tuple()} |
    {error, any()} |
    {error, list_training_jobs_for_hyper_parameter_tuning_job_errors(), tuple()}.
list_training_jobs_for_hyper_parameter_tuning_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_training_jobs_for_hyper_parameter_tuning_job(Client, Input, []).

-spec list_training_jobs_for_hyper_parameter_tuning_job(aws_client:aws_client(), list_training_jobs_for_hyper_parameter_tuning_job_request(), proplists:proplist()) ->
    {ok, list_training_jobs_for_hyper_parameter_tuning_job_response(), tuple()} |
    {error, any()} |
    {error, list_training_jobs_for_hyper_parameter_tuning_job_errors(), tuple()}.
list_training_jobs_for_hyper_parameter_tuning_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTrainingJobsForHyperParameterTuningJob">>, Input, Options).

%% @doc Retrieves a list of training plans for the current account.
-spec list_training_plans(aws_client:aws_client(), list_training_plans_request()) ->
    {ok, list_training_plans_response(), tuple()} |
    {error, any()}.
list_training_plans(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_training_plans(Client, Input, []).

-spec list_training_plans(aws_client:aws_client(), list_training_plans_request(), proplists:proplist()) ->
    {ok, list_training_plans_response(), tuple()} |
    {error, any()}.
list_training_plans(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTrainingPlans">>, Input, Options).

%% @doc Lists transform jobs.
-spec list_transform_jobs(aws_client:aws_client(), list_transform_jobs_request()) ->
    {ok, list_transform_jobs_response(), tuple()} |
    {error, any()}.
list_transform_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_transform_jobs(Client, Input, []).

-spec list_transform_jobs(aws_client:aws_client(), list_transform_jobs_request(), proplists:proplist()) ->
    {ok, list_transform_jobs_response(), tuple()} |
    {error, any()}.
list_transform_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTransformJobs">>, Input, Options).

%% @doc Lists the trial components in your account.
%%
%% You can sort the list by trial component name
%% or creation time. You can filter the list to show only components that
%% were created in a
%% specific time range. You can also filter on one of the following:
%%
%% `ExperimentName'
%%
%% `SourceArn'
%%
%% `TrialName'
-spec list_trial_components(aws_client:aws_client(), list_trial_components_request()) ->
    {ok, list_trial_components_response(), tuple()} |
    {error, any()} |
    {error, list_trial_components_errors(), tuple()}.
list_trial_components(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_trial_components(Client, Input, []).

-spec list_trial_components(aws_client:aws_client(), list_trial_components_request(), proplists:proplist()) ->
    {ok, list_trial_components_response(), tuple()} |
    {error, any()} |
    {error, list_trial_components_errors(), tuple()}.
list_trial_components(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTrialComponents">>, Input, Options).

%% @doc Lists the trials in your account.
%%
%% Specify an experiment name to limit the list to the
%% trials that are part of that experiment. Specify a trial component name to
%% limit the list to
%% the trials that associated with that trial component. The list can be
%% filtered to show only
%% trials that were created in a specific time range. The list can be sorted
%% by trial name or
%% creation time.
-spec list_trials(aws_client:aws_client(), list_trials_request()) ->
    {ok, list_trials_response(), tuple()} |
    {error, any()} |
    {error, list_trials_errors(), tuple()}.
list_trials(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_trials(Client, Input, []).

-spec list_trials(aws_client:aws_client(), list_trials_request(), proplists:proplist()) ->
    {ok, list_trials_response(), tuple()} |
    {error, any()} |
    {error, list_trials_errors(), tuple()}.
list_trials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTrials">>, Input, Options).

%% @doc Lists user profiles.
-spec list_user_profiles(aws_client:aws_client(), list_user_profiles_request()) ->
    {ok, list_user_profiles_response(), tuple()} |
    {error, any()}.
list_user_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_user_profiles(Client, Input, []).

-spec list_user_profiles(aws_client:aws_client(), list_user_profiles_request(), proplists:proplist()) ->
    {ok, list_user_profiles_response(), tuple()} |
    {error, any()}.
list_user_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUserProfiles">>, Input, Options).

%% @doc Use this operation to list all private and vendor workforces in an
%% Amazon Web Services Region.
%%
%% Note that you can only
%% have one private workforce per Amazon Web Services Region.
-spec list_workforces(aws_client:aws_client(), list_workforces_request()) ->
    {ok, list_workforces_response(), tuple()} |
    {error, any()}.
list_workforces(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workforces(Client, Input, []).

-spec list_workforces(aws_client:aws_client(), list_workforces_request(), proplists:proplist()) ->
    {ok, list_workforces_response(), tuple()} |
    {error, any()}.
list_workforces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkforces">>, Input, Options).

%% @doc Gets a list of private work teams that you have defined in a region.
%%
%% The list may be empty if
%% no work team satisfies the filter specified in the `NameContains'
%% parameter.
-spec list_workteams(aws_client:aws_client(), list_workteams_request()) ->
    {ok, list_workteams_response(), tuple()} |
    {error, any()}.
list_workteams(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workteams(Client, Input, []).

-spec list_workteams(aws_client:aws_client(), list_workteams_request(), proplists:proplist()) ->
    {ok, list_workteams_response(), tuple()} |
    {error, any()}.
list_workteams(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkteams">>, Input, Options).

%% @doc Adds a resouce policy to control access to a model group.
%%
%% For information about
%% resoure policies, see Identity-based
%% policies and resource-based policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html
%% in the Amazon Web Services
%% Identity and Access Management User Guide..
-spec put_model_package_group_policy(aws_client:aws_client(), put_model_package_group_policy_input()) ->
    {ok, put_model_package_group_policy_output(), tuple()} |
    {error, any()} |
    {error, put_model_package_group_policy_errors(), tuple()}.
put_model_package_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_model_package_group_policy(Client, Input, []).

-spec put_model_package_group_policy(aws_client:aws_client(), put_model_package_group_policy_input(), proplists:proplist()) ->
    {ok, put_model_package_group_policy_output(), tuple()} |
    {error, any()} |
    {error, put_model_package_group_policy_errors(), tuple()}.
put_model_package_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutModelPackageGroupPolicy">>, Input, Options).

%% @doc Use this action to inspect your lineage and discover relationships
%% between entities.
%%
%% For more information, see
%% Querying Lineage Entities:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/querying-lineage-entities.html
%% in the Amazon SageMaker Developer Guide.
-spec query_lineage(aws_client:aws_client(), query_lineage_request()) ->
    {ok, query_lineage_response(), tuple()} |
    {error, any()} |
    {error, query_lineage_errors(), tuple()}.
query_lineage(Client, Input)
  when is_map(Client), is_map(Input) ->
    query_lineage(Client, Input, []).

-spec query_lineage(aws_client:aws_client(), query_lineage_request(), proplists:proplist()) ->
    {ok, query_lineage_response(), tuple()} |
    {error, any()} |
    {error, query_lineage_errors(), tuple()}.
query_lineage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"QueryLineage">>, Input, Options).

%% @doc Register devices.
-spec register_devices(aws_client:aws_client(), register_devices_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, register_devices_errors(), tuple()}.
register_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_devices(Client, Input, []).

-spec register_devices(aws_client:aws_client(), register_devices_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, register_devices_errors(), tuple()}.
register_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterDevices">>, Input, Options).

%% @doc Renders the UI template so that you can preview the worker's
%% experience.
-spec render_ui_template(aws_client:aws_client(), render_ui_template_request()) ->
    {ok, render_ui_template_response(), tuple()} |
    {error, any()} |
    {error, render_ui_template_errors(), tuple()}.
render_ui_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    render_ui_template(Client, Input, []).

-spec render_ui_template(aws_client:aws_client(), render_ui_template_request(), proplists:proplist()) ->
    {ok, render_ui_template_response(), tuple()} |
    {error, any()} |
    {error, render_ui_template_errors(), tuple()}.
render_ui_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RenderUiTemplate">>, Input, Options).

%% @doc Retry the execution of the pipeline.
-spec retry_pipeline_execution(aws_client:aws_client(), retry_pipeline_execution_request()) ->
    {ok, retry_pipeline_execution_response(), tuple()} |
    {error, any()} |
    {error, retry_pipeline_execution_errors(), tuple()}.
retry_pipeline_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    retry_pipeline_execution(Client, Input, []).

-spec retry_pipeline_execution(aws_client:aws_client(), retry_pipeline_execution_request(), proplists:proplist()) ->
    {ok, retry_pipeline_execution_response(), tuple()} |
    {error, any()} |
    {error, retry_pipeline_execution_errors(), tuple()}.
retry_pipeline_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RetryPipelineExecution">>, Input, Options).

%% @doc Finds SageMaker resources that match a search query.
%%
%% Matching resources are returned
%% as a list of `SearchRecord' objects in the response. You can sort the
%% search
%% results by any resource property in a ascending or descending order.
%%
%% You can query against the following value types: numeric, text, Boolean,
%% and
%% timestamp.
%%
%% The Search API may provide access to otherwise restricted data. See Amazon
%% SageMaker
%% API Permissions: Actions, Permissions, and Resources Reference:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/api-permissions-reference.html
%% for more
%% information.
-spec search(aws_client:aws_client(), search_request()) ->
    {ok, search_response(), tuple()} |
    {error, any()}.
search(Client, Input)
  when is_map(Client), is_map(Input) ->
    search(Client, Input, []).

-spec search(aws_client:aws_client(), search_request(), proplists:proplist()) ->
    {ok, search_response(), tuple()} |
    {error, any()}.
search(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Search">>, Input, Options).

%% @doc Searches for available training plan offerings based on specified
%% criteria.
%%
%% Users search for available plan offerings based on their requirements
%% (e.g.,
%% instance type, count, start time, duration).
%%
%% And then, they create a plan that best matches their needs using the ID of
%% the
%% plan offering they want to use.
%%
%% For more information about how to reserve GPU capacity for your SageMaker
%% training jobs or
%% SageMaker HyperPod clusters using Amazon SageMaker Training Plan , see
%% ```
%% CreateTrainingPlan:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateTrainingPlan.html
%% '''.
-spec search_training_plan_offerings(aws_client:aws_client(), search_training_plan_offerings_request()) ->
    {ok, search_training_plan_offerings_response(), tuple()} |
    {error, any()} |
    {error, search_training_plan_offerings_errors(), tuple()}.
search_training_plan_offerings(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_training_plan_offerings(Client, Input, []).

-spec search_training_plan_offerings(aws_client:aws_client(), search_training_plan_offerings_request(), proplists:proplist()) ->
    {ok, search_training_plan_offerings_response(), tuple()} |
    {error, any()} |
    {error, search_training_plan_offerings_errors(), tuple()}.
search_training_plan_offerings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchTrainingPlanOfferings">>, Input, Options).

%% @doc Notifies the pipeline that the execution of a callback step failed,
%% along with a
%% message describing why.
%%
%% When a callback step is run, the pipeline generates a callback
%% token and includes the token in a message sent to Amazon Simple Queue
%% Service (Amazon SQS).
-spec send_pipeline_execution_step_failure(aws_client:aws_client(), send_pipeline_execution_step_failure_request()) ->
    {ok, send_pipeline_execution_step_failure_response(), tuple()} |
    {error, any()} |
    {error, send_pipeline_execution_step_failure_errors(), tuple()}.
send_pipeline_execution_step_failure(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_pipeline_execution_step_failure(Client, Input, []).

-spec send_pipeline_execution_step_failure(aws_client:aws_client(), send_pipeline_execution_step_failure_request(), proplists:proplist()) ->
    {ok, send_pipeline_execution_step_failure_response(), tuple()} |
    {error, any()} |
    {error, send_pipeline_execution_step_failure_errors(), tuple()}.
send_pipeline_execution_step_failure(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendPipelineExecutionStepFailure">>, Input, Options).

%% @doc Notifies the pipeline that the execution of a callback step succeeded
%% and provides a
%% list of the step's output parameters.
%%
%% When a callback step is run, the pipeline generates
%% a callback token and includes the token in a message sent to Amazon Simple
%% Queue Service (Amazon SQS).
-spec send_pipeline_execution_step_success(aws_client:aws_client(), send_pipeline_execution_step_success_request()) ->
    {ok, send_pipeline_execution_step_success_response(), tuple()} |
    {error, any()} |
    {error, send_pipeline_execution_step_success_errors(), tuple()}.
send_pipeline_execution_step_success(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_pipeline_execution_step_success(Client, Input, []).

-spec send_pipeline_execution_step_success(aws_client:aws_client(), send_pipeline_execution_step_success_request(), proplists:proplist()) ->
    {ok, send_pipeline_execution_step_success_response(), tuple()} |
    {error, any()} |
    {error, send_pipeline_execution_step_success_errors(), tuple()}.
send_pipeline_execution_step_success(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendPipelineExecutionStepSuccess">>, Input, Options).

%% @doc Starts a stage in an edge deployment plan.
-spec start_edge_deployment_stage(aws_client:aws_client(), start_edge_deployment_stage_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
start_edge_deployment_stage(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_edge_deployment_stage(Client, Input, []).

-spec start_edge_deployment_stage(aws_client:aws_client(), start_edge_deployment_stage_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
start_edge_deployment_stage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartEdgeDeploymentStage">>, Input, Options).

%% @doc Starts an inference experiment.
-spec start_inference_experiment(aws_client:aws_client(), start_inference_experiment_request()) ->
    {ok, start_inference_experiment_response(), tuple()} |
    {error, any()} |
    {error, start_inference_experiment_errors(), tuple()}.
start_inference_experiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_inference_experiment(Client, Input, []).

-spec start_inference_experiment(aws_client:aws_client(), start_inference_experiment_request(), proplists:proplist()) ->
    {ok, start_inference_experiment_response(), tuple()} |
    {error, any()} |
    {error, start_inference_experiment_errors(), tuple()}.
start_inference_experiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartInferenceExperiment">>, Input, Options).

%% @doc Programmatically start an MLflow Tracking Server.
-spec start_mlflow_tracking_server(aws_client:aws_client(), start_mlflow_tracking_server_request()) ->
    {ok, start_mlflow_tracking_server_response(), tuple()} |
    {error, any()} |
    {error, start_mlflow_tracking_server_errors(), tuple()}.
start_mlflow_tracking_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_mlflow_tracking_server(Client, Input, []).

-spec start_mlflow_tracking_server(aws_client:aws_client(), start_mlflow_tracking_server_request(), proplists:proplist()) ->
    {ok, start_mlflow_tracking_server_response(), tuple()} |
    {error, any()} |
    {error, start_mlflow_tracking_server_errors(), tuple()}.
start_mlflow_tracking_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMlflowTrackingServer">>, Input, Options).

%% @doc Starts a previously stopped monitoring schedule.
%%
%% By default, when you successfully create a new schedule, the status of a
%% monitoring
%% schedule is `scheduled'.
-spec start_monitoring_schedule(aws_client:aws_client(), start_monitoring_schedule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_monitoring_schedule_errors(), tuple()}.
start_monitoring_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_monitoring_schedule(Client, Input, []).

-spec start_monitoring_schedule(aws_client:aws_client(), start_monitoring_schedule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_monitoring_schedule_errors(), tuple()}.
start_monitoring_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMonitoringSchedule">>, Input, Options).

%% @doc Launches an ML compute instance with the latest version of the
%% libraries and
%% attaches your ML storage volume.
%%
%% After configuring the notebook instance, SageMaker AI sets the notebook
%% instance status to `InService'. A notebook
%% instance's status must be `InService' before you can connect to
%% your Jupyter
%% notebook.
-spec start_notebook_instance(aws_client:aws_client(), start_notebook_instance_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_notebook_instance_errors(), tuple()}.
start_notebook_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_notebook_instance(Client, Input, []).

-spec start_notebook_instance(aws_client:aws_client(), start_notebook_instance_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_notebook_instance_errors(), tuple()}.
start_notebook_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartNotebookInstance">>, Input, Options).

%% @doc Starts a pipeline execution.
-spec start_pipeline_execution(aws_client:aws_client(), start_pipeline_execution_request()) ->
    {ok, start_pipeline_execution_response(), tuple()} |
    {error, any()} |
    {error, start_pipeline_execution_errors(), tuple()}.
start_pipeline_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_pipeline_execution(Client, Input, []).

-spec start_pipeline_execution(aws_client:aws_client(), start_pipeline_execution_request(), proplists:proplist()) ->
    {ok, start_pipeline_execution_response(), tuple()} |
    {error, any()} |
    {error, start_pipeline_execution_errors(), tuple()}.
start_pipeline_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartPipelineExecution">>, Input, Options).

%% @doc A method for forcing a running job to shut down.
-spec stop_auto_ml_job(aws_client:aws_client(), stop_auto_ml_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_auto_ml_job_errors(), tuple()}.
stop_auto_ml_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_auto_ml_job(Client, Input, []).

-spec stop_auto_ml_job(aws_client:aws_client(), stop_auto_ml_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_auto_ml_job_errors(), tuple()}.
stop_auto_ml_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopAutoMLJob">>, Input, Options).

%% @doc Stops a model compilation job.
%%
%% To stop a job, Amazon SageMaker AI sends the algorithm the SIGTERM signal.
%% This gracefully shuts the
%% job down. If the job hasn't stopped, it sends the SIGKILL signal.
%%
%% When it receives a `StopCompilationJob' request, Amazon SageMaker AI
%% changes the
%% `CompilationJobStatus' of the job to `Stopping'. After Amazon
%% SageMaker stops the job, it sets the `CompilationJobStatus' to
%% `Stopped'.
-spec stop_compilation_job(aws_client:aws_client(), stop_compilation_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_compilation_job_errors(), tuple()}.
stop_compilation_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_compilation_job(Client, Input, []).

-spec stop_compilation_job(aws_client:aws_client(), stop_compilation_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_compilation_job_errors(), tuple()}.
stop_compilation_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopCompilationJob">>, Input, Options).

%% @doc Stops a stage in an edge deployment plan.
-spec stop_edge_deployment_stage(aws_client:aws_client(), stop_edge_deployment_stage_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
stop_edge_deployment_stage(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_edge_deployment_stage(Client, Input, []).

-spec stop_edge_deployment_stage(aws_client:aws_client(), stop_edge_deployment_stage_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
stop_edge_deployment_stage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopEdgeDeploymentStage">>, Input, Options).

%% @doc Request to stop an edge packaging job.
-spec stop_edge_packaging_job(aws_client:aws_client(), stop_edge_packaging_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
stop_edge_packaging_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_edge_packaging_job(Client, Input, []).

-spec stop_edge_packaging_job(aws_client:aws_client(), stop_edge_packaging_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
stop_edge_packaging_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopEdgePackagingJob">>, Input, Options).

%% @doc Stops a running hyperparameter tuning job and all running training
%% jobs that the
%% tuning job launched.
%%
%% All model artifacts output from the training jobs are stored in Amazon
%% Simple Storage Service (Amazon S3). All
%% data that the training jobs write to Amazon CloudWatch Logs are still
%% available in CloudWatch. After the
%% tuning job moves to the `Stopped' state, it releases all
%% reserved
%% resources for the tuning job.
-spec stop_hyper_parameter_tuning_job(aws_client:aws_client(), stop_hyper_parameter_tuning_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_hyper_parameter_tuning_job_errors(), tuple()}.
stop_hyper_parameter_tuning_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_hyper_parameter_tuning_job(Client, Input, []).

-spec stop_hyper_parameter_tuning_job(aws_client:aws_client(), stop_hyper_parameter_tuning_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_hyper_parameter_tuning_job_errors(), tuple()}.
stop_hyper_parameter_tuning_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopHyperParameterTuningJob">>, Input, Options).

%% @doc Stops an inference experiment.
-spec stop_inference_experiment(aws_client:aws_client(), stop_inference_experiment_request()) ->
    {ok, stop_inference_experiment_response(), tuple()} |
    {error, any()} |
    {error, stop_inference_experiment_errors(), tuple()}.
stop_inference_experiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_inference_experiment(Client, Input, []).

-spec stop_inference_experiment(aws_client:aws_client(), stop_inference_experiment_request(), proplists:proplist()) ->
    {ok, stop_inference_experiment_response(), tuple()} |
    {error, any()} |
    {error, stop_inference_experiment_errors(), tuple()}.
stop_inference_experiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopInferenceExperiment">>, Input, Options).

%% @doc Stops an Inference Recommender job.
-spec stop_inference_recommendations_job(aws_client:aws_client(), stop_inference_recommendations_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_inference_recommendations_job_errors(), tuple()}.
stop_inference_recommendations_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_inference_recommendations_job(Client, Input, []).

-spec stop_inference_recommendations_job(aws_client:aws_client(), stop_inference_recommendations_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_inference_recommendations_job_errors(), tuple()}.
stop_inference_recommendations_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopInferenceRecommendationsJob">>, Input, Options).

%% @doc Stops a running labeling job.
%%
%% A job that is stopped cannot be restarted. Any results
%% obtained before the job is stopped are placed in the Amazon S3 output
%% bucket.
-spec stop_labeling_job(aws_client:aws_client(), stop_labeling_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_labeling_job_errors(), tuple()}.
stop_labeling_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_labeling_job(Client, Input, []).

-spec stop_labeling_job(aws_client:aws_client(), stop_labeling_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_labeling_job_errors(), tuple()}.
stop_labeling_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopLabelingJob">>, Input, Options).

%% @doc Programmatically stop an MLflow Tracking Server.
-spec stop_mlflow_tracking_server(aws_client:aws_client(), stop_mlflow_tracking_server_request()) ->
    {ok, stop_mlflow_tracking_server_response(), tuple()} |
    {error, any()} |
    {error, stop_mlflow_tracking_server_errors(), tuple()}.
stop_mlflow_tracking_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_mlflow_tracking_server(Client, Input, []).

-spec stop_mlflow_tracking_server(aws_client:aws_client(), stop_mlflow_tracking_server_request(), proplists:proplist()) ->
    {ok, stop_mlflow_tracking_server_response(), tuple()} |
    {error, any()} |
    {error, stop_mlflow_tracking_server_errors(), tuple()}.
stop_mlflow_tracking_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopMlflowTrackingServer">>, Input, Options).

%% @doc Stops a previously started monitoring schedule.
-spec stop_monitoring_schedule(aws_client:aws_client(), stop_monitoring_schedule_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_monitoring_schedule_errors(), tuple()}.
stop_monitoring_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_monitoring_schedule(Client, Input, []).

-spec stop_monitoring_schedule(aws_client:aws_client(), stop_monitoring_schedule_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_monitoring_schedule_errors(), tuple()}.
stop_monitoring_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopMonitoringSchedule">>, Input, Options).

%% @doc Terminates the ML compute instance.
%%
%% Before terminating the instance, SageMaker AI disconnects the ML storage
%% volume from it. SageMaker AI preserves the
%% ML storage volume. SageMaker AI stops charging you for the ML compute
%% instance when
%% you call `StopNotebookInstance'.
%%
%% To access data on the ML storage volume for a notebook instance that has
%% been
%% terminated, call the `StartNotebookInstance' API.
%% `StartNotebookInstance' launches another ML compute instance,
%% configures
%% it, and attaches the preserved ML storage volume so you can continue your
%% work.
-spec stop_notebook_instance(aws_client:aws_client(), stop_notebook_instance_input()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
stop_notebook_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_notebook_instance(Client, Input, []).

-spec stop_notebook_instance(aws_client:aws_client(), stop_notebook_instance_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
stop_notebook_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopNotebookInstance">>, Input, Options).

%% @doc Ends a running inference optimization job.
-spec stop_optimization_job(aws_client:aws_client(), stop_optimization_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_optimization_job_errors(), tuple()}.
stop_optimization_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_optimization_job(Client, Input, []).

-spec stop_optimization_job(aws_client:aws_client(), stop_optimization_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_optimization_job_errors(), tuple()}.
stop_optimization_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopOptimizationJob">>, Input, Options).

%% @doc Stops a pipeline execution.
%%
%% Callback Step
%%
%% A pipeline execution won't stop while a callback step is running.
%% When you call `StopPipelineExecution'
%% on a pipeline execution with a running callback step, SageMaker Pipelines
%% sends an
%% additional Amazon SQS message to the specified SQS queue. The body of the
%% SQS message
%% contains a &quot;Status&quot; field which is set to &quot;Stopping&quot;.
%%
%% You should add logic to your Amazon SQS message consumer to take any
%% needed action (for
%% example, resource cleanup) upon receipt of the message followed by a call
%% to
%% `SendPipelineExecutionStepSuccess' or
%% `SendPipelineExecutionStepFailure'.
%%
%% Only when SageMaker Pipelines receives one of these calls will it stop the
%% pipeline execution.
%%
%% Lambda Step
%%
%% A pipeline execution can't be stopped while a lambda step is running
%% because the Lambda
%% function invoked by the lambda step can't be stopped. If you attempt
%% to stop the execution
%% while the Lambda function is running, the pipeline waits for the Lambda
%% function to finish
%% or until the timeout is hit, whichever occurs first, and then stops. If
%% the Lambda function
%% finishes, the pipeline execution status is `Stopped'. If the timeout
%% is hit
%% the pipeline execution status is `Failed'.
-spec stop_pipeline_execution(aws_client:aws_client(), stop_pipeline_execution_request()) ->
    {ok, stop_pipeline_execution_response(), tuple()} |
    {error, any()} |
    {error, stop_pipeline_execution_errors(), tuple()}.
stop_pipeline_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_pipeline_execution(Client, Input, []).

-spec stop_pipeline_execution(aws_client:aws_client(), stop_pipeline_execution_request(), proplists:proplist()) ->
    {ok, stop_pipeline_execution_response(), tuple()} |
    {error, any()} |
    {error, stop_pipeline_execution_errors(), tuple()}.
stop_pipeline_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopPipelineExecution">>, Input, Options).

%% @doc Stops a processing job.
-spec stop_processing_job(aws_client:aws_client(), stop_processing_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_processing_job_errors(), tuple()}.
stop_processing_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_processing_job(Client, Input, []).

-spec stop_processing_job(aws_client:aws_client(), stop_processing_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_processing_job_errors(), tuple()}.
stop_processing_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopProcessingJob">>, Input, Options).

%% @doc Stops a training job.
%%
%% To stop a job, SageMaker sends the algorithm the
%% `SIGTERM' signal, which delays job termination for 120 seconds.
%% Algorithms might use this 120-second window to save the model artifacts,
%% so the results
%% of the training is not lost.
%%
%% When it receives a `StopTrainingJob' request, SageMaker changes the
%% status of
%% the job to `Stopping'. After SageMaker stops the job, it sets the
%% status to
%% `Stopped'.
-spec stop_training_job(aws_client:aws_client(), stop_training_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_training_job_errors(), tuple()}.
stop_training_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_training_job(Client, Input, []).

-spec stop_training_job(aws_client:aws_client(), stop_training_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_training_job_errors(), tuple()}.
stop_training_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopTrainingJob">>, Input, Options).

%% @doc Stops a batch transform job.
%%
%% When Amazon SageMaker receives a `StopTransformJob' request, the
%% status of the job
%% changes to `Stopping'. After Amazon SageMaker
%% stops
%% the job, the status is set to `Stopped'. When you stop a batch
%% transform job before
%% it is completed, Amazon SageMaker doesn't store the job's output
%% in Amazon S3.
-spec stop_transform_job(aws_client:aws_client(), stop_transform_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_transform_job_errors(), tuple()}.
stop_transform_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_transform_job(Client, Input, []).

-spec stop_transform_job(aws_client:aws_client(), stop_transform_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_transform_job_errors(), tuple()}.
stop_transform_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopTransformJob">>, Input, Options).

%% @doc Updates an action.
-spec update_action(aws_client:aws_client(), update_action_request()) ->
    {ok, update_action_response(), tuple()} |
    {error, any()} |
    {error, update_action_errors(), tuple()}.
update_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_action(Client, Input, []).

-spec update_action(aws_client:aws_client(), update_action_request(), proplists:proplist()) ->
    {ok, update_action_response(), tuple()} |
    {error, any()} |
    {error, update_action_errors(), tuple()}.
update_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAction">>, Input, Options).

%% @doc Updates the properties of an AppImageConfig.
-spec update_app_image_config(aws_client:aws_client(), update_app_image_config_request()) ->
    {ok, update_app_image_config_response(), tuple()} |
    {error, any()} |
    {error, update_app_image_config_errors(), tuple()}.
update_app_image_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_app_image_config(Client, Input, []).

-spec update_app_image_config(aws_client:aws_client(), update_app_image_config_request(), proplists:proplist()) ->
    {ok, update_app_image_config_response(), tuple()} |
    {error, any()} |
    {error, update_app_image_config_errors(), tuple()}.
update_app_image_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAppImageConfig">>, Input, Options).

%% @doc Updates an artifact.
-spec update_artifact(aws_client:aws_client(), update_artifact_request()) ->
    {ok, update_artifact_response(), tuple()} |
    {error, any()} |
    {error, update_artifact_errors(), tuple()}.
update_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_artifact(Client, Input, []).

-spec update_artifact(aws_client:aws_client(), update_artifact_request(), proplists:proplist()) ->
    {ok, update_artifact_response(), tuple()} |
    {error, any()} |
    {error, update_artifact_errors(), tuple()}.
update_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateArtifact">>, Input, Options).

%% @doc Updates a SageMaker HyperPod cluster.
-spec update_cluster(aws_client:aws_client(), update_cluster_request()) ->
    {ok, update_cluster_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_errors(), tuple()}.
update_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_cluster(Client, Input, []).

-spec update_cluster(aws_client:aws_client(), update_cluster_request(), proplists:proplist()) ->
    {ok, update_cluster_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_errors(), tuple()}.
update_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCluster">>, Input, Options).

%% @doc Update the cluster policy configuration.
-spec update_cluster_scheduler_config(aws_client:aws_client(), update_cluster_scheduler_config_request()) ->
    {ok, update_cluster_scheduler_config_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_scheduler_config_errors(), tuple()}.
update_cluster_scheduler_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_cluster_scheduler_config(Client, Input, []).

-spec update_cluster_scheduler_config(aws_client:aws_client(), update_cluster_scheduler_config_request(), proplists:proplist()) ->
    {ok, update_cluster_scheduler_config_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_scheduler_config_errors(), tuple()}.
update_cluster_scheduler_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateClusterSchedulerConfig">>, Input, Options).

%% @doc Updates the platform software of a SageMaker HyperPod cluster for
%% security patching.
%%
%% To learn how to
%% use this API, see Update the SageMaker HyperPod platform software of a
%% cluster:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-hyperpod-operate.html#sagemaker-hyperpod-operate-cli-command-update-cluster-software.
%%
%% The `UpgradeClusterSoftware' API call may impact your SageMaker
%% HyperPod cluster
%% uptime and availability. Plan accordingly to mitigate potential
%% disruptions to your
%% workloads.
-spec update_cluster_software(aws_client:aws_client(), update_cluster_software_request()) ->
    {ok, update_cluster_software_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_software_errors(), tuple()}.
update_cluster_software(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_cluster_software(Client, Input, []).

-spec update_cluster_software(aws_client:aws_client(), update_cluster_software_request(), proplists:proplist()) ->
    {ok, update_cluster_software_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_software_errors(), tuple()}.
update_cluster_software(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateClusterSoftware">>, Input, Options).

%% @doc Updates the specified Git repository with the specified values.
-spec update_code_repository(aws_client:aws_client(), update_code_repository_input()) ->
    {ok, update_code_repository_output(), tuple()} |
    {error, any()} |
    {error, update_code_repository_errors(), tuple()}.
update_code_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_code_repository(Client, Input, []).

-spec update_code_repository(aws_client:aws_client(), update_code_repository_input(), proplists:proplist()) ->
    {ok, update_code_repository_output(), tuple()} |
    {error, any()} |
    {error, update_code_repository_errors(), tuple()}.
update_code_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCodeRepository">>, Input, Options).

%% @doc Update the compute allocation definition.
-spec update_compute_quota(aws_client:aws_client(), update_compute_quota_request()) ->
    {ok, update_compute_quota_response(), tuple()} |
    {error, any()} |
    {error, update_compute_quota_errors(), tuple()}.
update_compute_quota(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_compute_quota(Client, Input, []).

-spec update_compute_quota(aws_client:aws_client(), update_compute_quota_request(), proplists:proplist()) ->
    {ok, update_compute_quota_response(), tuple()} |
    {error, any()} |
    {error, update_compute_quota_errors(), tuple()}.
update_compute_quota(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateComputeQuota">>, Input, Options).

%% @doc Updates a context.
-spec update_context(aws_client:aws_client(), update_context_request()) ->
    {ok, update_context_response(), tuple()} |
    {error, any()} |
    {error, update_context_errors(), tuple()}.
update_context(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_context(Client, Input, []).

-spec update_context(aws_client:aws_client(), update_context_request(), proplists:proplist()) ->
    {ok, update_context_response(), tuple()} |
    {error, any()} |
    {error, update_context_errors(), tuple()}.
update_context(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateContext">>, Input, Options).

%% @doc Updates a fleet of devices.
-spec update_device_fleet(aws_client:aws_client(), update_device_fleet_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_device_fleet_errors(), tuple()}.
update_device_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_device_fleet(Client, Input, []).

-spec update_device_fleet(aws_client:aws_client(), update_device_fleet_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_device_fleet_errors(), tuple()}.
update_device_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDeviceFleet">>, Input, Options).

%% @doc Updates one or more devices in a fleet.
-spec update_devices(aws_client:aws_client(), update_devices_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
update_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_devices(Client, Input, []).

-spec update_devices(aws_client:aws_client(), update_devices_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
update_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDevices">>, Input, Options).

%% @doc Updates the default settings for new user profiles in the domain.
-spec update_domain(aws_client:aws_client(), update_domain_request()) ->
    {ok, update_domain_response(), tuple()} |
    {error, any()} |
    {error, update_domain_errors(), tuple()}.
update_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_domain(Client, Input, []).

-spec update_domain(aws_client:aws_client(), update_domain_request(), proplists:proplist()) ->
    {ok, update_domain_response(), tuple()} |
    {error, any()} |
    {error, update_domain_errors(), tuple()}.
update_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDomain">>, Input, Options).

%% @doc Deploys the `EndpointConfig' specified in the request to a new
%% fleet of
%% instances.
%%
%% SageMaker shifts endpoint traffic to the new instances with the updated
%% endpoint
%% configuration and then deletes the old instances using the previous
%% `EndpointConfig' (there is no availability loss). For more information
%% about how to control the update and traffic shifting process, see Update
%% models in production:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/deployment-guardrails.html.
%%
%% When SageMaker receives the request, it sets the endpoint status to
%% `Updating'.
%% After updating the endpoint, it sets the status to `InService'. To
%% check the
%% status of an endpoint, use the DescribeEndpoint:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeEndpoint.html
%% API.
%%
%% You must not delete an `EndpointConfig' in use by an endpoint that is
%% live or while the `UpdateEndpoint' or `CreateEndpoint'
%% operations are being performed on the endpoint. To update an endpoint, you
%% must
%% create a new `EndpointConfig'.
%%
%% If you delete the `EndpointConfig' of an endpoint that is active or
%% being created or updated you may lose visibility into the instance type
%% the endpoint
%% is using. The endpoint must be deleted in order to stop incurring charges.
-spec update_endpoint(aws_client:aws_client(), update_endpoint_input()) ->
    {ok, update_endpoint_output(), tuple()} |
    {error, any()} |
    {error, update_endpoint_errors(), tuple()}.
update_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_endpoint(Client, Input, []).

-spec update_endpoint(aws_client:aws_client(), update_endpoint_input(), proplists:proplist()) ->
    {ok, update_endpoint_output(), tuple()} |
    {error, any()} |
    {error, update_endpoint_errors(), tuple()}.
update_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEndpoint">>, Input, Options).

%% @doc Updates variant weight of one or more variants associated with an
%% existing
%% endpoint, or capacity of one variant associated with an existing endpoint.
%%
%% When it
%% receives the request, SageMaker sets the endpoint status to
%% `Updating'. After
%% updating the endpoint, it sets the status to `InService'. To check the
%% status
%% of an endpoint, use the DescribeEndpoint:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeEndpoint.html
%% API.
-spec update_endpoint_weights_and_capacities(aws_client:aws_client(), update_endpoint_weights_and_capacities_input()) ->
    {ok, update_endpoint_weights_and_capacities_output(), tuple()} |
    {error, any()} |
    {error, update_endpoint_weights_and_capacities_errors(), tuple()}.
update_endpoint_weights_and_capacities(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_endpoint_weights_and_capacities(Client, Input, []).

-spec update_endpoint_weights_and_capacities(aws_client:aws_client(), update_endpoint_weights_and_capacities_input(), proplists:proplist()) ->
    {ok, update_endpoint_weights_and_capacities_output(), tuple()} |
    {error, any()} |
    {error, update_endpoint_weights_and_capacities_errors(), tuple()}.
update_endpoint_weights_and_capacities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEndpointWeightsAndCapacities">>, Input, Options).

%% @doc Adds, updates, or removes the description of an experiment.
%%
%% Updates the display name of an
%% experiment.
-spec update_experiment(aws_client:aws_client(), update_experiment_request()) ->
    {ok, update_experiment_response(), tuple()} |
    {error, any()} |
    {error, update_experiment_errors(), tuple()}.
update_experiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_experiment(Client, Input, []).

-spec update_experiment(aws_client:aws_client(), update_experiment_request(), proplists:proplist()) ->
    {ok, update_experiment_response(), tuple()} |
    {error, any()} |
    {error, update_experiment_errors(), tuple()}.
update_experiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateExperiment">>, Input, Options).

%% @doc Updates the feature group by either adding features or updating the
%% online store
%% configuration.
%%
%% Use one of the following request parameters at a time while using the
%% `UpdateFeatureGroup' API.
%%
%% You can add features for your feature group using the
%% `FeatureAdditions'
%% request parameter. Features cannot be removed from a feature group.
%%
%% You can update the online store configuration by using the
%% `OnlineStoreConfig' request parameter. If a `TtlDuration' is
%% specified, the default `TtlDuration' applies for all records added to
%% the
%% feature group after the feature group is updated. If a record level
%% `TtlDuration' exists from using the `PutRecord' API, the record
%% level `TtlDuration' applies to that record instead of the default
%% `TtlDuration'. To remove the default `TtlDuration' from an
%% existing feature group, use the `UpdateFeatureGroup' API and set the
%% `TtlDuration'
%% `Unit' and `Value' to `null'.
-spec update_feature_group(aws_client:aws_client(), update_feature_group_request()) ->
    {ok, update_feature_group_response(), tuple()} |
    {error, any()} |
    {error, update_feature_group_errors(), tuple()}.
update_feature_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_feature_group(Client, Input, []).

-spec update_feature_group(aws_client:aws_client(), update_feature_group_request(), proplists:proplist()) ->
    {ok, update_feature_group_response(), tuple()} |
    {error, any()} |
    {error, update_feature_group_errors(), tuple()}.
update_feature_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFeatureGroup">>, Input, Options).

%% @doc Updates the description and parameters of the feature group.
-spec update_feature_metadata(aws_client:aws_client(), update_feature_metadata_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_feature_metadata_errors(), tuple()}.
update_feature_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_feature_metadata(Client, Input, []).

-spec update_feature_metadata(aws_client:aws_client(), update_feature_metadata_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_feature_metadata_errors(), tuple()}.
update_feature_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFeatureMetadata">>, Input, Options).

%% @doc Update a hub.
-spec update_hub(aws_client:aws_client(), update_hub_request()) ->
    {ok, update_hub_response(), tuple()} |
    {error, any()} |
    {error, update_hub_errors(), tuple()}.
update_hub(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_hub(Client, Input, []).

-spec update_hub(aws_client:aws_client(), update_hub_request(), proplists:proplist()) ->
    {ok, update_hub_response(), tuple()} |
    {error, any()} |
    {error, update_hub_errors(), tuple()}.
update_hub(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateHub">>, Input, Options).

%% @doc Updates SageMaker hub content (either a `Model' or `Notebook'
%% resource).
%%
%% You can update the metadata that describes the resource. In addition to
%% the required request
%% fields, specify at least one of the following fields to update:
%%
%% `HubContentDescription'
%%
%% `HubContentDisplayName'
%%
%% `HubContentMarkdown'
%%
%% `HubContentSearchKeywords'
%%
%% `SupportStatus'
%%
%% For more information about hubs, see Private curated hubs for foundation
%% model access control in JumpStart:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/jumpstart-curated-hubs.html.
%%
%% If you want to update a `ModelReference' resource in your hub, use the
%% `UpdateHubContentResource' API instead.
-spec update_hub_content(aws_client:aws_client(), update_hub_content_request()) ->
    {ok, update_hub_content_response(), tuple()} |
    {error, any()} |
    {error, update_hub_content_errors(), tuple()}.
update_hub_content(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_hub_content(Client, Input, []).

-spec update_hub_content(aws_client:aws_client(), update_hub_content_request(), proplists:proplist()) ->
    {ok, update_hub_content_response(), tuple()} |
    {error, any()} |
    {error, update_hub_content_errors(), tuple()}.
update_hub_content(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateHubContent">>, Input, Options).

%% @doc Updates the contents of a SageMaker hub for a `ModelReference'
%% resource.
%%
%% A `ModelReference' allows you to access public SageMaker JumpStart
%% models from within your private hub.
%%
%% When using this API, you can update the
%% `MinVersion' field for additional flexibility in the model version.
%% You shouldn't update
%% any additional fields when using this API, because the metadata in your
%% private hub
%% should match the public JumpStart model's metadata.
%%
%% If you want to update a `Model' or `Notebook'
%% resource in your hub, use the `UpdateHubContent' API instead.
%%
%% For more information about adding model references to your hub, see
%%
%% Add models to a private hub:
%% https://docs.aws.amazon.com/sagemaker/latest/dg/jumpstart-curated-hubs-admin-guide-add-models.html.
-spec update_hub_content_reference(aws_client:aws_client(), update_hub_content_reference_request()) ->
    {ok, update_hub_content_reference_response(), tuple()} |
    {error, any()} |
    {error, update_hub_content_reference_errors(), tuple()}.
update_hub_content_reference(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_hub_content_reference(Client, Input, []).

-spec update_hub_content_reference(aws_client:aws_client(), update_hub_content_reference_request(), proplists:proplist()) ->
    {ok, update_hub_content_reference_response(), tuple()} |
    {error, any()} |
    {error, update_hub_content_reference_errors(), tuple()}.
update_hub_content_reference(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateHubContentReference">>, Input, Options).

%% @doc Updates the properties of a SageMaker AI image.
%%
%% To change the image's tags, use the
%% AddTags:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_AddTags.html
%% and DeleteTags:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteTags.html
%% APIs.
-spec update_image(aws_client:aws_client(), update_image_request()) ->
    {ok, update_image_response(), tuple()} |
    {error, any()} |
    {error, update_image_errors(), tuple()}.
update_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_image(Client, Input, []).

-spec update_image(aws_client:aws_client(), update_image_request(), proplists:proplist()) ->
    {ok, update_image_response(), tuple()} |
    {error, any()} |
    {error, update_image_errors(), tuple()}.
update_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateImage">>, Input, Options).

%% @doc Updates the properties of a SageMaker AI image version.
-spec update_image_version(aws_client:aws_client(), update_image_version_request()) ->
    {ok, update_image_version_response(), tuple()} |
    {error, any()} |
    {error, update_image_version_errors(), tuple()}.
update_image_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_image_version(Client, Input, []).

-spec update_image_version(aws_client:aws_client(), update_image_version_request(), proplists:proplist()) ->
    {ok, update_image_version_response(), tuple()} |
    {error, any()} |
    {error, update_image_version_errors(), tuple()}.
update_image_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateImageVersion">>, Input, Options).

%% @doc Updates an inference component.
-spec update_inference_component(aws_client:aws_client(), update_inference_component_input()) ->
    {ok, update_inference_component_output(), tuple()} |
    {error, any()} |
    {error, update_inference_component_errors(), tuple()}.
update_inference_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_inference_component(Client, Input, []).

-spec update_inference_component(aws_client:aws_client(), update_inference_component_input(), proplists:proplist()) ->
    {ok, update_inference_component_output(), tuple()} |
    {error, any()} |
    {error, update_inference_component_errors(), tuple()}.
update_inference_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateInferenceComponent">>, Input, Options).

%% @doc Runtime settings for a model that is deployed with an inference
%% component.
-spec update_inference_component_runtime_config(aws_client:aws_client(), update_inference_component_runtime_config_input()) ->
    {ok, update_inference_component_runtime_config_output(), tuple()} |
    {error, any()} |
    {error, update_inference_component_runtime_config_errors(), tuple()}.
update_inference_component_runtime_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_inference_component_runtime_config(Client, Input, []).

-spec update_inference_component_runtime_config(aws_client:aws_client(), update_inference_component_runtime_config_input(), proplists:proplist()) ->
    {ok, update_inference_component_runtime_config_output(), tuple()} |
    {error, any()} |
    {error, update_inference_component_runtime_config_errors(), tuple()}.
update_inference_component_runtime_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateInferenceComponentRuntimeConfig">>, Input, Options).

%% @doc
%% Updates an inference experiment that you created.
%%
%% The status of the inference experiment has to be either
%% `Created', `Running'. For more information on the status of an
%% inference experiment,
%% see DescribeInferenceExperiment:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeInferenceExperiment.html.
-spec update_inference_experiment(aws_client:aws_client(), update_inference_experiment_request()) ->
    {ok, update_inference_experiment_response(), tuple()} |
    {error, any()} |
    {error, update_inference_experiment_errors(), tuple()}.
update_inference_experiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_inference_experiment(Client, Input, []).

-spec update_inference_experiment(aws_client:aws_client(), update_inference_experiment_request(), proplists:proplist()) ->
    {ok, update_inference_experiment_response(), tuple()} |
    {error, any()} |
    {error, update_inference_experiment_errors(), tuple()}.
update_inference_experiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateInferenceExperiment">>, Input, Options).

%% @doc Updates properties of an existing MLflow Tracking Server.
-spec update_mlflow_tracking_server(aws_client:aws_client(), update_mlflow_tracking_server_request()) ->
    {ok, update_mlflow_tracking_server_response(), tuple()} |
    {error, any()} |
    {error, update_mlflow_tracking_server_errors(), tuple()}.
update_mlflow_tracking_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_mlflow_tracking_server(Client, Input, []).

-spec update_mlflow_tracking_server(aws_client:aws_client(), update_mlflow_tracking_server_request(), proplists:proplist()) ->
    {ok, update_mlflow_tracking_server_response(), tuple()} |
    {error, any()} |
    {error, update_mlflow_tracking_server_errors(), tuple()}.
update_mlflow_tracking_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMlflowTrackingServer">>, Input, Options).

%% @doc Update an Amazon SageMaker Model Card.
%%
%% You cannot update both model card content and model card status in a
%% single call.
-spec update_model_card(aws_client:aws_client(), update_model_card_request()) ->
    {ok, update_model_card_response(), tuple()} |
    {error, any()} |
    {error, update_model_card_errors(), tuple()}.
update_model_card(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_model_card(Client, Input, []).

-spec update_model_card(aws_client:aws_client(), update_model_card_request(), proplists:proplist()) ->
    {ok, update_model_card_response(), tuple()} |
    {error, any()} |
    {error, update_model_card_errors(), tuple()}.
update_model_card(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateModelCard">>, Input, Options).

%% @doc Updates a versioned model.
-spec update_model_package(aws_client:aws_client(), update_model_package_input()) ->
    {ok, update_model_package_output(), tuple()} |
    {error, any()} |
    {error, update_model_package_errors(), tuple()}.
update_model_package(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_model_package(Client, Input, []).

-spec update_model_package(aws_client:aws_client(), update_model_package_input(), proplists:proplist()) ->
    {ok, update_model_package_output(), tuple()} |
    {error, any()} |
    {error, update_model_package_errors(), tuple()}.
update_model_package(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateModelPackage">>, Input, Options).

%% @doc Update the parameters of a model monitor alert.
-spec update_monitoring_alert(aws_client:aws_client(), update_monitoring_alert_request()) ->
    {ok, update_monitoring_alert_response(), tuple()} |
    {error, any()} |
    {error, update_monitoring_alert_errors(), tuple()}.
update_monitoring_alert(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_monitoring_alert(Client, Input, []).

-spec update_monitoring_alert(aws_client:aws_client(), update_monitoring_alert_request(), proplists:proplist()) ->
    {ok, update_monitoring_alert_response(), tuple()} |
    {error, any()} |
    {error, update_monitoring_alert_errors(), tuple()}.
update_monitoring_alert(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMonitoringAlert">>, Input, Options).

%% @doc Updates a previously created schedule.
-spec update_monitoring_schedule(aws_client:aws_client(), update_monitoring_schedule_request()) ->
    {ok, update_monitoring_schedule_response(), tuple()} |
    {error, any()} |
    {error, update_monitoring_schedule_errors(), tuple()}.
update_monitoring_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_monitoring_schedule(Client, Input, []).

-spec update_monitoring_schedule(aws_client:aws_client(), update_monitoring_schedule_request(), proplists:proplist()) ->
    {ok, update_monitoring_schedule_response(), tuple()} |
    {error, any()} |
    {error, update_monitoring_schedule_errors(), tuple()}.
update_monitoring_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMonitoringSchedule">>, Input, Options).

%% @doc Updates a notebook instance.
%%
%% NotebookInstance updates include upgrading or
%% downgrading the ML compute instance used for your notebook instance to
%% accommodate
%% changes in your workload requirements.
-spec update_notebook_instance(aws_client:aws_client(), update_notebook_instance_input()) ->
    {ok, update_notebook_instance_output(), tuple()} |
    {error, any()} |
    {error, update_notebook_instance_errors(), tuple()}.
update_notebook_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_notebook_instance(Client, Input, []).

-spec update_notebook_instance(aws_client:aws_client(), update_notebook_instance_input(), proplists:proplist()) ->
    {ok, update_notebook_instance_output(), tuple()} |
    {error, any()} |
    {error, update_notebook_instance_errors(), tuple()}.
update_notebook_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNotebookInstance">>, Input, Options).

%% @doc Updates a notebook instance lifecycle configuration created with the
%% CreateNotebookInstanceLifecycleConfig:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateNotebookInstanceLifecycleConfig.html
%% API.
-spec update_notebook_instance_lifecycle_config(aws_client:aws_client(), update_notebook_instance_lifecycle_config_input()) ->
    {ok, update_notebook_instance_lifecycle_config_output(), tuple()} |
    {error, any()} |
    {error, update_notebook_instance_lifecycle_config_errors(), tuple()}.
update_notebook_instance_lifecycle_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_notebook_instance_lifecycle_config(Client, Input, []).

-spec update_notebook_instance_lifecycle_config(aws_client:aws_client(), update_notebook_instance_lifecycle_config_input(), proplists:proplist()) ->
    {ok, update_notebook_instance_lifecycle_config_output(), tuple()} |
    {error, any()} |
    {error, update_notebook_instance_lifecycle_config_errors(), tuple()}.
update_notebook_instance_lifecycle_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNotebookInstanceLifecycleConfig">>, Input, Options).

%% @doc Updates all of the SageMaker Partner AI Apps in an account.
-spec update_partner_app(aws_client:aws_client(), update_partner_app_request()) ->
    {ok, update_partner_app_response(), tuple()} |
    {error, any()} |
    {error, update_partner_app_errors(), tuple()}.
update_partner_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_partner_app(Client, Input, []).

-spec update_partner_app(aws_client:aws_client(), update_partner_app_request(), proplists:proplist()) ->
    {ok, update_partner_app_response(), tuple()} |
    {error, any()} |
    {error, update_partner_app_errors(), tuple()}.
update_partner_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePartnerApp">>, Input, Options).

%% @doc Updates a pipeline.
-spec update_pipeline(aws_client:aws_client(), update_pipeline_request()) ->
    {ok, update_pipeline_response(), tuple()} |
    {error, any()} |
    {error, update_pipeline_errors(), tuple()}.
update_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_pipeline(Client, Input, []).

-spec update_pipeline(aws_client:aws_client(), update_pipeline_request(), proplists:proplist()) ->
    {ok, update_pipeline_response(), tuple()} |
    {error, any()} |
    {error, update_pipeline_errors(), tuple()}.
update_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePipeline">>, Input, Options).

%% @doc Updates a pipeline execution.
-spec update_pipeline_execution(aws_client:aws_client(), update_pipeline_execution_request()) ->
    {ok, update_pipeline_execution_response(), tuple()} |
    {error, any()} |
    {error, update_pipeline_execution_errors(), tuple()}.
update_pipeline_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_pipeline_execution(Client, Input, []).

-spec update_pipeline_execution(aws_client:aws_client(), update_pipeline_execution_request(), proplists:proplist()) ->
    {ok, update_pipeline_execution_response(), tuple()} |
    {error, any()} |
    {error, update_pipeline_execution_errors(), tuple()}.
update_pipeline_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePipelineExecution">>, Input, Options).

%% @doc Updates a machine learning (ML) project that is created from a
%% template that
%% sets up an ML pipeline from training to deploying an approved model.
%%
%% You must not update a project that is in use. If you update the
%% `ServiceCatalogProvisioningUpdateDetails' of a project that is active
%% or being created, or updated, you may lose resources already created by
%% the
%% project.
-spec update_project(aws_client:aws_client(), update_project_input()) ->
    {ok, update_project_output(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_project(Client, Input, []).

-spec update_project(aws_client:aws_client(), update_project_input(), proplists:proplist()) ->
    {ok, update_project_output(), tuple()} |
    {error, any()} |
    {error, update_project_errors(), tuple()}.
update_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProject">>, Input, Options).

%% @doc Updates the settings of a space.
%%
%% You can't edit the app type of a space in the `SpaceSettings'.
-spec update_space(aws_client:aws_client(), update_space_request()) ->
    {ok, update_space_response(), tuple()} |
    {error, any()} |
    {error, update_space_errors(), tuple()}.
update_space(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_space(Client, Input, []).

-spec update_space(aws_client:aws_client(), update_space_request(), proplists:proplist()) ->
    {ok, update_space_response(), tuple()} |
    {error, any()} |
    {error, update_space_errors(), tuple()}.
update_space(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSpace">>, Input, Options).

%% @doc Update a model training job to request a new Debugger profiling
%% configuration or to
%% change warm pool retention length.
-spec update_training_job(aws_client:aws_client(), update_training_job_request()) ->
    {ok, update_training_job_response(), tuple()} |
    {error, any()} |
    {error, update_training_job_errors(), tuple()}.
update_training_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_training_job(Client, Input, []).

-spec update_training_job(aws_client:aws_client(), update_training_job_request(), proplists:proplist()) ->
    {ok, update_training_job_response(), tuple()} |
    {error, any()} |
    {error, update_training_job_errors(), tuple()}.
update_training_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTrainingJob">>, Input, Options).

%% @doc Updates the display name of a trial.
-spec update_trial(aws_client:aws_client(), update_trial_request()) ->
    {ok, update_trial_response(), tuple()} |
    {error, any()} |
    {error, update_trial_errors(), tuple()}.
update_trial(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_trial(Client, Input, []).

-spec update_trial(aws_client:aws_client(), update_trial_request(), proplists:proplist()) ->
    {ok, update_trial_response(), tuple()} |
    {error, any()} |
    {error, update_trial_errors(), tuple()}.
update_trial(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTrial">>, Input, Options).

%% @doc Updates one or more properties of a trial component.
-spec update_trial_component(aws_client:aws_client(), update_trial_component_request()) ->
    {ok, update_trial_component_response(), tuple()} |
    {error, any()} |
    {error, update_trial_component_errors(), tuple()}.
update_trial_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_trial_component(Client, Input, []).

-spec update_trial_component(aws_client:aws_client(), update_trial_component_request(), proplists:proplist()) ->
    {ok, update_trial_component_response(), tuple()} |
    {error, any()} |
    {error, update_trial_component_errors(), tuple()}.
update_trial_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTrialComponent">>, Input, Options).

%% @doc Updates a user profile.
-spec update_user_profile(aws_client:aws_client(), update_user_profile_request()) ->
    {ok, update_user_profile_response(), tuple()} |
    {error, any()} |
    {error, update_user_profile_errors(), tuple()}.
update_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user_profile(Client, Input, []).

-spec update_user_profile(aws_client:aws_client(), update_user_profile_request(), proplists:proplist()) ->
    {ok, update_user_profile_response(), tuple()} |
    {error, any()} |
    {error, update_user_profile_errors(), tuple()}.
update_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUserProfile">>, Input, Options).

%% @doc Use this operation to update your workforce.
%%
%% You can use this operation to
%% require that workers use specific IP addresses to work on tasks
%% and to update your OpenID Connect (OIDC) Identity Provider (IdP) workforce
%% configuration.
%%
%% The worker portal is now supported in VPC and public internet.
%%
%% Use `SourceIpConfig' to restrict worker access to tasks to a specific
%% range of IP addresses.
%% You specify allowed IP addresses by creating a list of up to ten CIDRs:
%% https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html.
%% By default, a workforce isn't restricted to specific IP addresses. If
%% you specify a
%% range of IP addresses, workers who attempt to access tasks using any IP
%% address outside
%% the specified range are denied and get a `Not Found' error message on
%% the worker portal.
%%
%% To restrict access to all the workers in public internet, add the
%% `SourceIpConfig' CIDR value as &quot;10.0.0.0/16&quot;.
%%
%% Amazon SageMaker does not support Source Ip restriction for worker portals
%% in VPC.
%%
%% Use `OidcConfig' to update the configuration of a workforce created
%% using
%% your own OIDC IdP.
%%
%% You can only update your OIDC IdP configuration when there are no work
%% teams
%% associated with your workforce. You can delete work teams using the
%% DeleteWorkteam:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteWorkteam.html
%% operation.
%%
%% After restricting access to a range of IP addresses or updating your OIDC
%% IdP configuration with this operation, you
%% can view details about your update workforce using the DescribeWorkforce:
%% https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeWorkforce.html
%% operation.
%%
%% This operation only applies to private workforces.
-spec update_workforce(aws_client:aws_client(), update_workforce_request()) ->
    {ok, update_workforce_response(), tuple()} |
    {error, any()} |
    {error, update_workforce_errors(), tuple()}.
update_workforce(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_workforce(Client, Input, []).

-spec update_workforce(aws_client:aws_client(), update_workforce_request(), proplists:proplist()) ->
    {ok, update_workforce_response(), tuple()} |
    {error, any()} |
    {error, update_workforce_errors(), tuple()}.
update_workforce(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWorkforce">>, Input, Options).

%% @doc Updates an existing work team with new member definitions or
%% description.
-spec update_workteam(aws_client:aws_client(), update_workteam_request()) ->
    {ok, update_workteam_response(), tuple()} |
    {error, any()} |
    {error, update_workteam_errors(), tuple()}.
update_workteam(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_workteam(Client, Input, []).

-spec update_workteam(aws_client:aws_client(), update_workteam_request(), proplists:proplist()) ->
    {ok, update_workteam_response(), tuple()} |
    {error, any()} |
    {error, update_workteam_errors(), tuple()}.
update_workteam(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWorkteam">>, Input, Options).

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
    Client1 = Client#{service => <<"sagemaker">>},
    Host = build_host(<<"api.sagemaker">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"SageMaker.", Action/binary>>}
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
