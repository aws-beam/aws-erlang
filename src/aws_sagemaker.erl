%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Provides APIs for creating and managing SageMaker resources.
%%
%% Other Resources:
%%
%% <ul> <li> SageMaker Developer Guide
%%
%% </li> <li> Amazon Augmented AI Runtime API Reference
%%
%% </li> </ul>
-module(aws_sagemaker).

-export([add_association/2,
         add_association/3,
         add_tags/2,
         add_tags/3,
         associate_trial_component/2,
         associate_trial_component/3,
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
         create_code_repository/2,
         create_code_repository/3,
         create_compilation_job/2,
         create_compilation_job/3,
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
         create_human_task_ui/2,
         create_human_task_ui/3,
         create_hyper_parameter_tuning_job/2,
         create_hyper_parameter_tuning_job/3,
         create_image/2,
         create_image/3,
         create_image_version/2,
         create_image_version/3,
         create_inference_experiment/2,
         create_inference_experiment/3,
         create_inference_recommendations_job/2,
         create_inference_recommendations_job/3,
         create_labeling_job/2,
         create_labeling_job/3,
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
         create_pipeline/2,
         create_pipeline/3,
         create_presigned_domain_url/2,
         create_presigned_domain_url/3,
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
         delete_code_repository/2,
         delete_code_repository/3,
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
         delete_human_task_ui/2,
         delete_human_task_ui/3,
         delete_image/2,
         delete_image/3,
         delete_image_version/2,
         delete_image_version/3,
         delete_inference_experiment/2,
         delete_inference_experiment/3,
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
         describe_code_repository/2,
         describe_code_repository/3,
         describe_compilation_job/2,
         describe_compilation_job/3,
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
         describe_inference_experiment/2,
         describe_inference_experiment/3,
         describe_inference_recommendations_job/2,
         describe_inference_recommendations_job/3,
         describe_labeling_job/2,
         describe_labeling_job/3,
         describe_lineage_group/2,
         describe_lineage_group/3,
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
         list_code_repositories/2,
         list_code_repositories/3,
         list_compilation_jobs/2,
         list_compilation_jobs/3,
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
         send_pipeline_execution_step_failure/2,
         send_pipeline_execution_step_failure/3,
         send_pipeline_execution_step_success/2,
         send_pipeline_execution_step_success/3,
         start_edge_deployment_stage/2,
         start_edge_deployment_stage/3,
         start_inference_experiment/2,
         start_inference_experiment/3,
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
         stop_monitoring_schedule/2,
         stop_monitoring_schedule/3,
         stop_notebook_instance/2,
         stop_notebook_instance/3,
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
         update_code_repository/2,
         update_code_repository/3,
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
         update_image/2,
         update_image/3,
         update_image_version/2,
         update_image_version/3,
         update_inference_experiment/2,
         update_inference_experiment/3,
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

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an association between the source and the destination.
%%
%% A source can be associated with multiple destinations, and a destination
%% can be associated with multiple sources. An association is a lineage
%% tracking entity. For more information, see Amazon SageMaker ML Lineage
%% Tracking.
add_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_association(Client, Input, []).
add_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddAssociation">>, Input, Options).

%% @doc Adds or overwrites one or more tags for the specified SageMaker
%% resource.
%%
%% You can add tags to notebook instances, training jobs, hyperparameter
%% tuning jobs, batch transform jobs, models, labeling jobs, work teams,
%% endpoint configurations, and endpoints.
%%
%% Each tag consists of a key and an optional value. Tag keys must be unique
%% per resource. For more information about tags, see For more information,
%% see Amazon Web Services Tagging Strategies.
%%
%% Tags that you add to a hyperparameter tuning job by calling this API are
%% also added to any training jobs that the hyperparameter tuning job
%% launches after you call this API, but not to training jobs that the
%% hyperparameter tuning job launched before you called this API. To make
%% sure that the tags associated with a hyperparameter tuning job are also
%% added to all training jobs that the hyperparameter tuning job launches,
%% add the tags when you first create the tuning job by specifying them in
%% the `Tags' parameter of CreateHyperParameterTuningJob
%%
%% Tags that you add to a SageMaker Studio Domain or User Profile by calling
%% this API are also added to any Apps that the Domain or User Profile
%% launches after you call this API, but not to Apps that the Domain or User
%% Profile launched before you called this API. To make sure that the tags
%% associated with a Domain or User Profile are also added to all Apps that
%% the Domain or User Profile launches, add the tags when you first create
%% the Domain or User Profile by specifying them in the `Tags' parameter
%% of CreateDomain or CreateUserProfile.
add_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags(Client, Input, []).
add_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTags">>, Input, Options).

%% @doc Associates a trial component with a trial.
%%
%% A trial component can be associated with multiple trials. To disassociate
%% a trial component from a trial, call the DisassociateTrialComponent API.
associate_trial_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_trial_component(Client, Input, []).
associate_trial_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateTrialComponent">>, Input, Options).

%% @doc This action batch describes a list of versioned model packages
batch_describe_model_package(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_describe_model_package(Client, Input, []).
batch_describe_model_package(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDescribeModelPackage">>, Input, Options).

%% @doc Creates an action.
%%
%% An action is a lineage tracking entity that represents an action or
%% activity. For example, a model deployment or an HPO job. Generally, an
%% action involves at least one input or output artifact. For more
%% information, see Amazon SageMaker ML Lineage Tracking.
create_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_action(Client, Input, []).
create_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAction">>, Input, Options).

%% @doc Create a machine learning algorithm that you can use in SageMaker and
%% list in the Amazon Web Services Marketplace.
create_algorithm(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_algorithm(Client, Input, []).
create_algorithm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAlgorithm">>, Input, Options).

%% @doc Creates a running app for the specified UserProfile.
%%
%% This operation is automatically invoked by Amazon SageMaker Studio upon
%% access to the associated Domain, and when new kernel configurations are
%% selected by the user. A user may have multiple Apps active simultaneously.
create_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_app(Client, Input, []).
create_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApp">>, Input, Options).

%% @doc Creates a configuration for running a SageMaker image as a
%% KernelGateway app.
%%
%% The configuration specifies the Amazon Elastic File System (EFS) storage
%% volume on the image, and a list of the kernels in the image.
create_app_image_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_app_image_config(Client, Input, []).
create_app_image_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAppImageConfig">>, Input, Options).

%% @doc Creates an artifact.
%%
%% An artifact is a lineage tracking entity that represents a URI addressable
%% object or data. Some examples are the S3 URI of a dataset and the ECR
%% registry path of an image. For more information, see Amazon SageMaker ML
%% Lineage Tracking.
create_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_artifact(Client, Input, []).
create_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateArtifact">>, Input, Options).

%% @doc Creates an Autopilot job also referred to as Autopilot experiment or
%% AutoML job.
%%
%% We recommend using the new versions CreateAutoMLJobV2 and
%% DescribeAutoMLJobV2, which offer backward compatibility.
%%
%% `CreateAutoMLJobV2' can manage tabular problem types identical to
%% those of its previous version `CreateAutoMLJob', as well as
%% non-tabular problem types such as image or text classification.
%%
%% Find guidelines about how to migrate a `CreateAutoMLJob' to
%% `CreateAutoMLJobV2' in Migrate a CreateAutoMLJob to CreateAutoMLJobV2.
%%
%% You can find the best-performing model after you run an AutoML job by
%% calling DescribeAutoMLJobV2 (recommended) or DescribeAutoMLJob.
create_auto_ml_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_auto_ml_job(Client, Input, []).
create_auto_ml_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAutoMLJob">>, Input, Options).

%% @doc Creates an Autopilot job also referred to as Autopilot experiment or
%% AutoML job V2.
%%
%% CreateAutoMLJobV2 and DescribeAutoMLJobV2 are new versions of
%% CreateAutoMLJob and DescribeAutoMLJob which offer backward compatibility.
%%
%% `CreateAutoMLJobV2' can manage tabular problem types identical to
%% those of its previous version `CreateAutoMLJob', as well as
%% non-tabular problem types such as image or text classification.
%%
%% Find guidelines about how to migrate a `CreateAutoMLJob' to
%% `CreateAutoMLJobV2' in Migrate a CreateAutoMLJob to CreateAutoMLJobV2.
%%
%% For the list of available problem types supported by
%% `CreateAutoMLJobV2', see AutoMLProblemTypeConfig.
%%
%% You can find the best-performing model after you run an AutoML job V2 by
%% calling DescribeAutoMLJobV2.
create_auto_ml_job_v2(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_auto_ml_job_v2(Client, Input, []).
create_auto_ml_job_v2(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAutoMLJobV2">>, Input, Options).

%% @doc Creates a Git repository as a resource in your SageMaker account.
%%
%% You can associate the repository with notebook instances so that you can
%% use Git source control for the notebooks you create. The Git repository is
%% a resource in your SageMaker account, so it can be associated with more
%% than one notebook instance, and it persists independently from the
%% lifecycle of any notebook instances it is associated with.
%%
%% The repository can be hosted either in Amazon Web Services CodeCommit or
%% in any other Git repository.
create_code_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_code_repository(Client, Input, []).
create_code_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCodeRepository">>, Input, Options).

%% @doc Starts a model compilation job.
%%
%% After the model has been compiled, Amazon SageMaker saves the resulting
%% model artifacts to an Amazon Simple Storage Service (Amazon S3) bucket
%% that you specify.
%%
%% If you choose to host your model using Amazon SageMaker hosting services,
%% you can use the resulting model artifacts as part of the model. You can
%% also use the artifacts with Amazon Web Services IoT Greengrass. In that
%% case, deploy them as an ML resource.
%%
%% In the request body, you provide the following:
%%
%% <ul> <li> A name for the compilation job
%%
%% </li> <li> Information about the input model artifacts
%%
%% </li> <li> The output location for the compiled model and the device
%% (target) that the model runs on
%%
%% </li> <li> The Amazon Resource Name (ARN) of the IAM role that Amazon
%% SageMaker assumes to perform the model compilation job.
%%
%% </li> </ul> You can also provide a `Tag' to track the model
%% compilation job's resource use and costs. The response body contains
%% the `CompilationJobArn' for the compiled job.
%%
%% To stop a model compilation job, use StopCompilationJob. To get
%% information about a particular model compilation job, use
%% DescribeCompilationJob. To get information about multiple model
%% compilation jobs, use ListCompilationJobs.
create_compilation_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_compilation_job(Client, Input, []).
create_compilation_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCompilationJob">>, Input, Options).

%% @doc Creates a context.
%%
%% A context is a lineage tracking entity that represents a logical grouping
%% of other tracking or experiment entities. Some examples are an endpoint
%% and a model package. For more information, see Amazon SageMaker ML Lineage
%% Tracking.
create_context(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_context(Client, Input, []).
create_context(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateContext">>, Input, Options).

%% @doc Creates a definition for a job that monitors data quality and drift.
%%
%% For information about model monitor, see Amazon SageMaker Model Monitor.
create_data_quality_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_data_quality_job_definition(Client, Input, []).
create_data_quality_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDataQualityJobDefinition">>, Input, Options).

%% @doc Creates a device fleet.
create_device_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_device_fleet(Client, Input, []).
create_device_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDeviceFleet">>, Input, Options).

%% @doc Creates a `Domain' used by Amazon SageMaker Studio.
%%
%% A domain consists of an associated Amazon Elastic File System (EFS)
%% volume, a list of authorized users, and a variety of security,
%% application, policy, and Amazon Virtual Private Cloud (VPC)
%% configurations. Users within a domain can share notebook files and other
%% artifacts with each other.
%%
%% EFS storage
%%
%% When a domain is created, an EFS volume is created for use by all of the
%% users within the domain. Each user receives a private home directory
%% within the EFS volume for notebooks, Git repositories, and data files.
%%
%% SageMaker uses the Amazon Web Services Key Management Service (Amazon Web
%% Services KMS) to encrypt the EFS volume attached to the domain with an
%% Amazon Web Services managed key by default. For more control, you can
%% specify a customer managed key. For more information, see Protect Data at
%% Rest Using Encryption.
%%
%% VPC configuration
%%
%% All SageMaker Studio traffic between the domain and the EFS volume is
%% through the specified VPC and subnets. For other Studio traffic, you can
%% specify the `AppNetworkAccessType' parameter.
%% `AppNetworkAccessType' corresponds to the network access type that you
%% choose when you onboard to Studio. The following options are available:
%%
%% <ul> <li> `PublicInternetOnly' - Non-EFS traffic goes through a VPC
%% managed by Amazon SageMaker, which allows internet access. This is the
%% default value.
%%
%% </li> <li> `VpcOnly' - All Studio traffic is through the specified VPC
%% and subnets. Internet access is disabled by default. To allow internet
%% access, you must specify a NAT gateway.
%%
%% When internet access is disabled, you won't be able to run a Studio
%% notebook or to train or host models unless your VPC has an interface
%% endpoint to the SageMaker API and runtime or a NAT gateway and your
%% security groups allow outbound connections.
%%
%% </li> </ul> NFS traffic over TCP on port 2049 needs to be allowed in both
%% inbound and outbound rules in order to launch a SageMaker Studio app
%% successfully.
%%
%% For more information, see Connect SageMaker Studio Notebooks to Resources
%% in a VPC.
create_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_domain(Client, Input, []).
create_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDomain">>, Input, Options).

%% @doc Creates an edge deployment plan, consisting of multiple stages.
%%
%% Each stage may have a different deployment configuration and devices.
create_edge_deployment_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_edge_deployment_plan(Client, Input, []).
create_edge_deployment_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEdgeDeploymentPlan">>, Input, Options).

%% @doc Creates a new stage in an existing edge deployment plan.
create_edge_deployment_stage(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_edge_deployment_stage(Client, Input, []).
create_edge_deployment_stage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEdgeDeploymentStage">>, Input, Options).

%% @doc Starts a SageMaker Edge Manager model packaging job.
%%
%% Edge Manager will use the model artifacts from the Amazon Simple Storage
%% Service bucket that you specify. After the model has been packaged, Amazon
%% SageMaker saves the resulting artifacts to an S3 bucket that you specify.
create_edge_packaging_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_edge_packaging_job(Client, Input, []).
create_edge_packaging_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEdgePackagingJob">>, Input, Options).

%% @doc Creates an endpoint using the endpoint configuration specified in the
%% request.
%%
%% SageMaker uses the endpoint to provision resources and deploy models. You
%% create the endpoint configuration with the CreateEndpointConfig API.
%%
%% Use this API to deploy models using SageMaker hosting services.
%%
%% You must not delete an `EndpointConfig' that is in use by an endpoint
%% that is live or while the `UpdateEndpoint' or `CreateEndpoint'
%% operations are being performed on the endpoint. To update an endpoint, you
%% must create a new `EndpointConfig'.
%%
%% The endpoint name must be unique within an Amazon Web Services Region in
%% your Amazon Web Services account.
%%
%% When it receives the request, SageMaker creates the endpoint, launches the
%% resources (ML compute instances), and deploys the model(s) on them.
%%
%% When you call CreateEndpoint, a load call is made to DynamoDB to verify
%% that your endpoint configuration exists. When you read data from a
%% DynamoDB table supporting `Eventually Consistent Reads' , the response
%% might not reflect the results of a recently completed write operation. The
%% response might include some stale data. If the dependent entities are not
%% yet in DynamoDB, this causes a validation error. If you repeat your read
%% request after a short time, the response should return the latest data. So
%% retry logic is recommended to handle these possible issues. We also
%% recommend that customers call DescribeEndpointConfig before calling
%% CreateEndpoint to minimize the potential impact of a DynamoDB eventually
%% consistent read.
%%
%% When SageMaker receives the request, it sets the endpoint status to
%% `Creating'. After it creates the endpoint, it sets the status to
%% `InService'. SageMaker can then process incoming requests for
%% inferences. To check the status of an endpoint, use the DescribeEndpoint
%% API.
%%
%% If any of the models hosted at this endpoint get model data from an Amazon
%% S3 location, SageMaker uses Amazon Web Services Security Token Service to
%% download model artifacts from the S3 path you provided. Amazon Web
%% Services STS is activated in your Amazon Web Services account by default.
%% If you previously deactivated Amazon Web Services STS for a region, you
%% need to reactivate Amazon Web Services STS for that region. For more
%% information, see Activating and Deactivating Amazon Web Services STS in an
%% Amazon Web Services Region in the Amazon Web Services Identity and Access
%% Management User Guide.
%%
%% To add the IAM role policies for using this API operation, go to the IAM
%% console, and choose Roles in the left navigation pane. Search the IAM role
%% that you want to grant access to use the CreateEndpoint and
%% CreateEndpointConfig API operations, add the following policies to the
%% role.
%%
%% Option 1: For a full SageMaker access, search and attach the
%% `AmazonSageMakerFullAccess' policy.
%%
%% Option 2: For granting a limited access to an IAM role, paste the
%% following Action elements manually into the JSON file of the IAM role:
%%
%% `&quot;Action&quot;: [&quot;sagemaker:CreateEndpoint&quot;,
%% &quot;sagemaker:CreateEndpointConfig&quot;]'
%%
%% `&quot;Resource&quot;: ['
%%
%% `&quot;arn:aws:sagemaker:region:account-id:endpoint/endpointName&quot;'
%%
%% `&quot;arn:aws:sagemaker:region:account-id:endpoint-config/endpointConfigName&quot;'
%%
%% `]'
%%
%% For more information, see SageMaker API Permissions: Actions, Permissions,
%% and Resources Reference.
create_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_endpoint(Client, Input, []).
create_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEndpoint">>, Input, Options).

%% @doc Creates an endpoint configuration that SageMaker hosting services
%% uses to deploy models.
%%
%% In the configuration, you identify one or more models, created using the
%% `CreateModel' API, to deploy and the resources that you want SageMaker
%% to provision. Then you call the CreateEndpoint API.
%%
%% Use this API if you want to use SageMaker hosting services to deploy
%% models into production.
%%
%% In the request, you define a `ProductionVariant', for each model that
%% you want to deploy. Each `ProductionVariant' parameter also describes
%% the resources that you want SageMaker to provision. This includes the
%% number and type of ML compute instances to deploy.
%%
%% If you are hosting multiple models, you also assign a `VariantWeight'
%% to specify how much traffic you want to allocate to each model. For
%% example, suppose that you want to host two models, A and B, and you assign
%% traffic weight 2 for model A and 1 for model B. SageMaker distributes
%% two-thirds of the traffic to Model A, and one-third to model B.
%%
%% When you call CreateEndpoint, a load call is made to DynamoDB to verify
%% that your endpoint configuration exists. When you read data from a
%% DynamoDB table supporting `Eventually Consistent Reads' , the response
%% might not reflect the results of a recently completed write operation. The
%% response might include some stale data. If the dependent entities are not
%% yet in DynamoDB, this causes a validation error. If you repeat your read
%% request after a short time, the response should return the latest data. So
%% retry logic is recommended to handle these possible issues. We also
%% recommend that customers call DescribeEndpointConfig before calling
%% CreateEndpoint to minimize the potential impact of a DynamoDB eventually
%% consistent read.
create_endpoint_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_endpoint_config(Client, Input, []).
create_endpoint_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEndpointConfig">>, Input, Options).

%% @doc Creates a SageMaker experiment.
%%
%% An experiment is a collection of trials that are observed, compared and
%% evaluated as a group. A trial is a set of steps, called trial components,
%% that produce a machine learning model.
%%
%% In the Studio UI, trials are referred to as run groups and trial
%% components are referred to as runs.
%%
%% The goal of an experiment is to determine the components that produce the
%% best model. Multiple trials are performed, each one isolating and
%% measuring the impact of a change to one or more inputs, while keeping the
%% remaining inputs constant.
%%
%% When you use SageMaker Studio or the SageMaker Python SDK, all
%% experiments, trials, and trial components are automatically tracked,
%% logged, and indexed. When you use the Amazon Web Services SDK for Python
%% (Boto), you must use the logging APIs provided by the SDK.
%%
%% You can add tags to experiments, trials, trial components and then use the
%% Search API to search for the tags.
%%
%% To add a description to an experiment, specify the optional
%% `Description' parameter. To add a description later, or to change the
%% description, call the UpdateExperiment API.
%%
%% To get a list of all your experiments, call the ListExperiments API. To
%% view an experiment's properties, call the DescribeExperiment API. To
%% get a list of all the trials associated with an experiment, call the
%% ListTrials API. To create a trial call the CreateTrial API.
create_experiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_experiment(Client, Input, []).
create_experiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateExperiment">>, Input, Options).

%% @doc Create a new `FeatureGroup'.
%%
%% A `FeatureGroup' is a group of `Features' defined in the
%% `FeatureStore' to describe a `Record'.
%%
%% The `FeatureGroup' defines the schema and features contained in the
%% FeatureGroup. A `FeatureGroup' definition is composed of a list of
%% `Features', a `RecordIdentifierFeatureName', an
%% `EventTimeFeatureName' and configurations for its `OnlineStore'
%% and `OfflineStore'. Check Amazon Web Services service quotas to see
%% the `FeatureGroup's quota for your Amazon Web Services account.
%%
%% You must include at least one of `OnlineStoreConfig' and
%% `OfflineStoreConfig' to create a `FeatureGroup'.
create_feature_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_feature_group(Client, Input, []).
create_feature_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFeatureGroup">>, Input, Options).

%% @doc Creates a flow definition.
create_flow_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_flow_definition(Client, Input, []).
create_flow_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFlowDefinition">>, Input, Options).

%% @doc Create a hub.
%%
%% Hub APIs are only callable through SageMaker Studio.
create_hub(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hub(Client, Input, []).
create_hub(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHub">>, Input, Options).

%% @doc Defines the settings you will use for the human review workflow user
%% interface.
%%
%% Reviewers will see a three-panel interface with an instruction area, the
%% item to review, and an input area.
create_human_task_ui(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_human_task_ui(Client, Input, []).
create_human_task_ui(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHumanTaskUi">>, Input, Options).

%% @doc Starts a hyperparameter tuning job.
%%
%% A hyperparameter tuning job finds the best version of a model by running
%% many training jobs on your dataset using the algorithm you choose and
%% values for hyperparameters within ranges that you specify. It then chooses
%% the hyperparameter values that result in a model that performs the best,
%% as measured by an objective metric that you choose.
%%
%% A hyperparameter tuning job automatically creates Amazon SageMaker
%% experiments, trials, and trial components for each training job that it
%% runs. You can view these entities in Amazon SageMaker Studio. For more
%% information, see View Experiments, Trials, and Trial Components.
%%
%% Do not include any security-sensitive information including account access
%% IDs, secrets or tokens in any hyperparameter field. If the use of
%% security-sensitive credentials are detected, SageMaker will reject your
%% training job request and return an exception error.
create_hyper_parameter_tuning_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hyper_parameter_tuning_job(Client, Input, []).
create_hyper_parameter_tuning_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHyperParameterTuningJob">>, Input, Options).

%% @doc Creates a custom SageMaker image.
%%
%% A SageMaker image is a set of image versions. Each image version
%% represents a container image stored in Amazon Elastic Container Registry
%% (ECR). For more information, see Bring your own SageMaker image.
create_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_image(Client, Input, []).
create_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateImage">>, Input, Options).

%% @doc Creates a version of the SageMaker image specified by
%% `ImageName'.
%%
%% The version represents the Amazon Elastic Container Registry (ECR)
%% container image specified by `BaseImage'.
create_image_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_image_version(Client, Input, []).
create_image_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateImageVersion">>, Input, Options).

%% @doc Creates an inference experiment using the configurations specified in
%% the request.
%%
%% Use this API to setup and schedule an experiment to compare model variants
%% on a Amazon SageMaker inference endpoint. For more information about
%% inference experiments, see Shadow tests.
%%
%% Amazon SageMaker begins your experiment at the scheduled time and routes
%% traffic to your endpoint's model variants based on your specified
%% configuration.
%%
%% While the experiment is in progress or after it has concluded, you can
%% view metrics that compare your model variants. For more information, see
%% View, monitor, and edit shadow tests.
create_inference_experiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_inference_experiment(Client, Input, []).
create_inference_experiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInferenceExperiment">>, Input, Options).

%% @doc Starts a recommendation job.
%%
%% You can create either an instance recommendation or load test job.
create_inference_recommendations_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_inference_recommendations_job(Client, Input, []).
create_inference_recommendations_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateInferenceRecommendationsJob">>, Input, Options).

%% @doc Creates a job that uses workers to label the data objects in your
%% input dataset.
%%
%% You can use the labeled data to train machine learning models.
%%
%% You can select your workforce from one of three providers:
%%
%% <ul> <li> A private workforce that you create. It can include employees,
%% contractors, and outside experts. Use a private workforce when want the
%% data to stay within your organization or when a specific set of skills is
%% required.
%%
%% </li> <li> One or more vendors that you select from the Amazon Web
%% Services Marketplace. Vendors provide expertise in specific areas.
%%
%% </li> <li> The Amazon Mechanical Turk workforce. This is the largest
%% workforce, but it should only be used for public data or data that has
%% been stripped of any personally identifiable information.
%%
%% </li> </ul> You can also use automated data labeling to reduce the number
%% of data objects that need to be labeled by a human. Automated data
%% labeling uses active learning to determine if a data object can be labeled
%% by machine or if it needs to be sent to a human worker. For more
%% information, see Using Automated Data Labeling.
%%
%% The data objects to be labeled are contained in an Amazon S3 bucket. You
%% create a manifest file that describes the location of each object. For
%% more information, see Using Input and Output Data.
%%
%% The output can be used as the manifest file for another labeling job or as
%% training data for your machine learning models.
%%
%% You can use this operation to create a static labeling job or a streaming
%% labeling job. A static labeling job stops if all data objects in the input
%% manifest file identified in `ManifestS3Uri' have been labeled. A
%% streaming labeling job runs perpetually until it is manually stopped, or
%% remains idle for 10 days. You can send new data objects to an active
%% (`InProgress') streaming labeling job in real time. To learn how to
%% create a static labeling job, see Create a Labeling Job (API) in the
%% Amazon SageMaker Developer Guide. To learn how to create a streaming
%% labeling job, see Create a Streaming Labeling Job.
create_labeling_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_labeling_job(Client, Input, []).
create_labeling_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLabelingJob">>, Input, Options).

%% @doc Creates a model in SageMaker.
%%
%% In the request, you name the model and describe a primary container. For
%% the primary container, you specify the Docker image that contains
%% inference code, artifacts (from prior training), and a custom environment
%% map that the inference code uses when you deploy the model for
%% predictions.
%%
%% Use this API to create a model if you want to use SageMaker hosting
%% services or run a batch transform job.
%%
%% To host your model, you create an endpoint configuration with the
%% `CreateEndpointConfig' API, and then create an endpoint with the
%% `CreateEndpoint' API. SageMaker then deploys all of the containers
%% that you defined for the model in the hosting environment.
%%
%% For an example that calls this method when deploying a model to SageMaker
%% hosting services, see Create a Model (Amazon Web Services SDK for Python
%% (Boto 3)).
%%
%% To run a batch transform using your model, you start a job with the
%% `CreateTransformJob' API. SageMaker uses your model and your dataset
%% to get inferences which are then saved to a specified S3 location.
%%
%% In the request, you also provide an IAM role that SageMaker can assume to
%% access model artifacts and docker image for deployment on ML compute
%% hosting instances or for batch transform jobs. In addition, you also use
%% the IAM role to manage permissions the inference code needs. For example,
%% if the inference code access any other Amazon Web Services resources, you
%% grant necessary permissions via this role.
create_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model(Client, Input, []).
create_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModel">>, Input, Options).

%% @doc Creates the definition for a model bias job.
create_model_bias_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model_bias_job_definition(Client, Input, []).
create_model_bias_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModelBiasJobDefinition">>, Input, Options).

%% @doc Creates an Amazon SageMaker Model Card.
%%
%% For information about how to use model cards, see Amazon SageMaker Model
%% Card.
create_model_card(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model_card(Client, Input, []).
create_model_card(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModelCard">>, Input, Options).

%% @doc Creates an Amazon SageMaker Model Card export job.
create_model_card_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model_card_export_job(Client, Input, []).
create_model_card_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModelCardExportJob">>, Input, Options).

%% @doc Creates the definition for a model explainability job.
create_model_explainability_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model_explainability_job_definition(Client, Input, []).
create_model_explainability_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModelExplainabilityJobDefinition">>, Input, Options).

%% @doc Creates a model package that you can use to create SageMaker models
%% or list on Amazon Web Services Marketplace, or a versioned model that is
%% part of a model group.
%%
%% Buyers can subscribe to model packages listed on Amazon Web Services
%% Marketplace to create models in SageMaker.
%%
%% To create a model package by specifying a Docker container that contains
%% your inference code and the Amazon S3 location of your model artifacts,
%% provide values for `InferenceSpecification'. To create a model from an
%% algorithm resource that you created or subscribed to in Amazon Web
%% Services Marketplace, provide a value for
%% `SourceAlgorithmSpecification'.
%%
%% There are two types of model packages:
%%
%% Versioned - a model that is part of a model group in the model registry.
%%
%% Unversioned - a model package that is not part of a model group.
create_model_package(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model_package(Client, Input, []).
create_model_package(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModelPackage">>, Input, Options).

%% @doc Creates a model group.
%%
%% A model group contains a group of model versions.
create_model_package_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model_package_group(Client, Input, []).
create_model_package_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModelPackageGroup">>, Input, Options).

%% @doc Creates a definition for a job that monitors model quality and drift.
%%
%% For information about model monitor, see Amazon SageMaker Model Monitor.
create_model_quality_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_model_quality_job_definition(Client, Input, []).
create_model_quality_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateModelQualityJobDefinition">>, Input, Options).

%% @doc Creates a schedule that regularly starts Amazon SageMaker Processing
%% Jobs to monitor the data captured for an Amazon SageMaker Endpoint.
create_monitoring_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_monitoring_schedule(Client, Input, []).
create_monitoring_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMonitoringSchedule">>, Input, Options).

%% @doc Creates an SageMaker notebook instance.
%%
%% A notebook instance is a machine learning (ML) compute instance running on
%% a Jupyter notebook.
%%
%% In a `CreateNotebookInstance' request, specify the type of ML compute
%% instance that you want to run. SageMaker launches the instance, installs
%% common libraries that you can use to explore datasets for model training,
%% and attaches an ML storage volume to the notebook instance.
%%
%% SageMaker also provides a set of example notebooks. Each notebook
%% demonstrates how to use SageMaker with a specific algorithm or with a
%% machine learning framework.
%%
%% After receiving the request, SageMaker does the following:
%%
%% <ol> <li> Creates a network interface in the SageMaker VPC.
%%
%% </li> <li> (Option) If you specified `SubnetId', SageMaker creates a
%% network interface in your own VPC, which is inferred from the subnet ID
%% that you provide in the input. When creating this network interface,
%% SageMaker attaches the security group that you specified in the request to
%% the network interface that it creates in your VPC.
%%
%% </li> <li> Launches an EC2 instance of the type specified in the request
%% in the SageMaker VPC. If you specified `SubnetId' of your VPC,
%% SageMaker specifies both network interfaces when launching this instance.
%% This enables inbound traffic from your own VPC to the notebook instance,
%% assuming that the security groups allow it.
%%
%% </li> </ol> After creating the notebook instance, SageMaker returns its
%% Amazon Resource Name (ARN). You can't change the name of a notebook
%% instance after you create it.
%%
%% After SageMaker creates the notebook instance, you can connect to the
%% Jupyter server and work in Jupyter notebooks. For example, you can write
%% code to explore a dataset that you can use for model training, train a
%% model, host models by creating SageMaker endpoints, and validate hosted
%% models.
%%
%% For more information, see How It Works.
create_notebook_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_notebook_instance(Client, Input, []).
create_notebook_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNotebookInstance">>, Input, Options).

%% @doc Creates a lifecycle configuration that you can associate with a
%% notebook instance.
%%
%% A lifecycle configuration is a collection of shell scripts that run when
%% you create or start a notebook instance.
%%
%% Each lifecycle configuration script has a limit of 16384 characters.
%%
%% The value of the `$PATH' environment variable that is available to
%% both scripts is `/sbin:bin:/usr/sbin:/usr/bin'.
%%
%% View CloudWatch Logs for notebook instance lifecycle configurations in log
%% group `/aws/sagemaker/NotebookInstances' in log stream
%% `[notebook-instance-name]/[LifecycleConfigHook]'.
%%
%% Lifecycle configuration scripts cannot run for longer than 5 minutes. If a
%% script runs for longer than 5 minutes, it fails and the notebook instance
%% is not created or started.
%%
%% For information about notebook instance lifestyle configurations, see Step
%% 2.1: (Optional) Customize a Notebook Instance.
create_notebook_instance_lifecycle_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_notebook_instance_lifecycle_config(Client, Input, []).
create_notebook_instance_lifecycle_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateNotebookInstanceLifecycleConfig">>, Input, Options).

%% @doc Creates a pipeline using a JSON pipeline definition.
create_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_pipeline(Client, Input, []).
create_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePipeline">>, Input, Options).

%% @doc Creates a URL for a specified UserProfile in a Domain.
%%
%% When accessed in a web browser, the user will be automatically signed in
%% to Amazon SageMaker Studio, and granted access to all of the Apps and
%% files associated with the Domain's Amazon Elastic File System (EFS)
%% volume. This operation can only be called when the authentication mode
%% equals IAM.
%%
%% The IAM role or user passed to this API defines the permissions to access
%% the app. Once the presigned URL is created, no additional permission is
%% required to access this URL. IAM authorization policies for this API are
%% also enforced for every HTTP request and WebSocket frame that attempts to
%% connect to the app.
%%
%% You can restrict access to this API and to the URL that it returns to a
%% list of IP addresses, Amazon VPCs or Amazon VPC Endpoints that you
%% specify. For more information, see Connect to SageMaker Studio Through an
%% Interface VPC Endpoint .
%%
%% The URL that you get from a call to `CreatePresignedDomainUrl' has a
%% default timeout of 5 minutes. You can configure this value using
%% `ExpiresInSeconds'. If you try to use the URL after the timeout limit
%% expires, you are directed to the Amazon Web Services console sign-in page.
create_presigned_domain_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_presigned_domain_url(Client, Input, []).
create_presigned_domain_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePresignedDomainUrl">>, Input, Options).

%% @doc Returns a URL that you can use to connect to the Jupyter server from
%% a notebook instance.
%%
%% In the SageMaker console, when you choose `Open' next to a notebook
%% instance, SageMaker opens a new tab showing the Jupyter server home page
%% from the notebook instance. The console uses this API to get the URL and
%% show the page.
%%
%% The IAM role or user used to call this API defines the permissions to
%% access the notebook instance. Once the presigned URL is created, no
%% additional permission is required to access this URL. IAM authorization
%% policies for this API are also enforced for every HTTP request and
%% WebSocket frame that attempts to connect to the notebook instance.
%%
%% You can restrict access to this API and to the URL that it returns to a
%% list of IP addresses that you specify. Use the `NotIpAddress'
%% condition operator and the `aws:SourceIP' condition context key to
%% specify the list of IP addresses that you want to have access to the
%% notebook instance. For more information, see Limit Access to a Notebook
%% Instance by IP Address.
%%
%% The URL that you get from a call to CreatePresignedNotebookInstanceUrl is
%% valid only for 5 minutes. If you try to use the URL after the 5-minute
%% limit expires, you are directed to the Amazon Web Services console sign-in
%% page.
create_presigned_notebook_instance_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_presigned_notebook_instance_url(Client, Input, []).
create_presigned_notebook_instance_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePresignedNotebookInstanceUrl">>, Input, Options).

%% @doc Creates a processing job.
create_processing_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_processing_job(Client, Input, []).
create_processing_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProcessingJob">>, Input, Options).

%% @doc Creates a machine learning (ML) project that can contain one or more
%% templates that set up an ML pipeline from training to deploying an
%% approved model.
create_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_project(Client, Input, []).
create_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProject">>, Input, Options).

%% @doc Creates a space used for real time collaboration in a Domain.
create_space(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_space(Client, Input, []).
create_space(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSpace">>, Input, Options).

%% @doc Creates a new Studio Lifecycle Configuration.
create_studio_lifecycle_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_studio_lifecycle_config(Client, Input, []).
create_studio_lifecycle_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStudioLifecycleConfig">>, Input, Options).

%% @doc Starts a model training job.
%%
%% After training completes, SageMaker saves the resulting model artifacts to
%% an Amazon S3 location that you specify.
%%
%% If you choose to host your model using SageMaker hosting services, you can
%% use the resulting model artifacts as part of the model. You can also use
%% the artifacts in a machine learning service other than SageMaker, provided
%% that you know how to use them for inference.
%%
%% In the request body, you provide the following:
%%
%% <ul> <li> `AlgorithmSpecification' - Identifies the training algorithm
%% to use.
%%
%% </li> <li> `HyperParameters' - Specify these algorithm-specific
%% parameters to enable the estimation of model parameters during training.
%% Hyperparameters can be tuned to optimize this learning process. For a list
%% of hyperparameters for each training algorithm provided by SageMaker, see
%% Algorithms.
%%
%% Do not include any security-sensitive information including account access
%% IDs, secrets or tokens in any hyperparameter field. If the use of
%% security-sensitive credentials are detected, SageMaker will reject your
%% training job request and return an exception error.
%%
%% </li> <li> `InputDataConfig' - Describes the input required by the
%% training job and the Amazon S3, EFS, or FSx location where it is stored.
%%
%% </li> <li> `OutputDataConfig' - Identifies the Amazon S3 bucket where
%% you want SageMaker to save the results of model training.
%%
%% </li> <li> `ResourceConfig' - Identifies the resources, ML compute
%% instances, and ML storage volumes to deploy for model training. In
%% distributed training, you specify more than one instance.
%%
%% </li> <li> `EnableManagedSpotTraining' - Optimize the cost of training
%% machine learning models by up to 80% by using Amazon EC2 Spot instances.
%% For more information, see Managed Spot Training.
%%
%% </li> <li> `RoleArn' - The Amazon Resource Name (ARN) that SageMaker
%% assumes to perform tasks on your behalf during model training. You must
%% grant this role the necessary permissions so that SageMaker can
%% successfully complete model training.
%%
%% </li> <li> `StoppingCondition' - To help cap training costs, use
%% `MaxRuntimeInSeconds' to set a time limit for training. Use
%% `MaxWaitTimeInSeconds' to specify how long a managed spot training job
%% has to complete.
%%
%% </li> <li> `Environment' - The environment variables to set in the
%% Docker container.
%%
%% </li> <li> `RetryStrategy' - The number of times to retry the job when
%% the job fails due to an `InternalServerError'.
%%
%% </li> </ul> For more information about SageMaker, see How It Works.
create_training_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_training_job(Client, Input, []).
create_training_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrainingJob">>, Input, Options).

%% @doc Starts a transform job.
%%
%% A transform job uses a trained model to get inferences on a dataset and
%% saves these results to an Amazon S3 location that you specify.
%%
%% To perform batch transformations, you create a transform job and use the
%% data that you have readily available.
%%
%% In the request body, you provide the following:
%%
%% <ul> <li> `TransformJobName' - Identifies the transform job. The name
%% must be unique within an Amazon Web Services Region in an Amazon Web
%% Services account.
%%
%% </li> <li> `ModelName' - Identifies the model to use. `ModelName'
%% must be the name of an existing Amazon SageMaker model in the same Amazon
%% Web Services Region and Amazon Web Services account. For information on
%% creating a model, see CreateModel.
%%
%% </li> <li> `TransformInput' - Describes the dataset to be transformed
%% and the Amazon S3 location where it is stored.
%%
%% </li> <li> `TransformOutput' - Identifies the Amazon S3 location where
%% you want Amazon SageMaker to save the results from the transform job.
%%
%% </li> <li> `TransformResources' - Identifies the ML compute instances
%% for the transform job.
%%
%% </li> </ul> For more information about how batch transformation works, see
%% Batch Transform.
create_transform_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_transform_job(Client, Input, []).
create_transform_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTransformJob">>, Input, Options).

%% @doc Creates an SageMaker trial.
%%
%% A trial is a set of steps called trial components that produce a machine
%% learning model. A trial is part of a single SageMaker experiment.
%%
%% When you use SageMaker Studio or the SageMaker Python SDK, all
%% experiments, trials, and trial components are automatically tracked,
%% logged, and indexed. When you use the Amazon Web Services SDK for Python
%% (Boto), you must use the logging APIs provided by the SDK.
%%
%% You can add tags to a trial and then use the Search API to search for the
%% tags.
%%
%% To get a list of all your trials, call the ListTrials API. To view a
%% trial's properties, call the DescribeTrial API. To create a trial
%% component, call the CreateTrialComponent API.
create_trial(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_trial(Client, Input, []).
create_trial(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrial">>, Input, Options).

%% @doc Creates a trial component, which is a stage of a machine learning
%% trial.
%%
%% A trial is composed of one or more trial components. A trial component can
%% be used in multiple trials.
%%
%% Trial components include pre-processing jobs, training jobs, and batch
%% transform jobs.
%%
%% When you use SageMaker Studio or the SageMaker Python SDK, all
%% experiments, trials, and trial components are automatically tracked,
%% logged, and indexed. When you use the Amazon Web Services SDK for Python
%% (Boto), you must use the logging APIs provided by the SDK.
%%
%% You can add tags to a trial component and then use the Search API to
%% search for the tags.
create_trial_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_trial_component(Client, Input, []).
create_trial_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrialComponent">>, Input, Options).

%% @doc Creates a user profile.
%%
%% A user profile represents a single user within a domain, and is the main
%% way to reference a &quot;person&quot; for the purposes of sharing,
%% reporting, and other user-oriented features. This entity is created when a
%% user onboards to Amazon SageMaker Studio. If an administrator invites a
%% person by email or imports them from IAM Identity Center, a user profile
%% is automatically created. A user profile is the primary holder of settings
%% for an individual user and has a reference to the user's private
%% Amazon Elastic File System (EFS) home directory.
create_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user_profile(Client, Input, []).
create_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUserProfile">>, Input, Options).

%% @doc Use this operation to create a workforce.
%%
%% This operation will return an error if a workforce already exists in the
%% Amazon Web Services Region that you specify. You can only create one
%% workforce in each Amazon Web Services Region per Amazon Web Services
%% account.
%%
%% If you want to create a new workforce in an Amazon Web Services Region
%% where a workforce already exists, use the DeleteWorkforce API operation to
%% delete the existing workforce and then use `CreateWorkforce' to create
%% a new workforce.
%%
%% To create a private workforce using Amazon Cognito, you must specify a
%% Cognito user pool in `CognitoConfig'. You can also create an Amazon
%% Cognito workforce using the Amazon SageMaker console. For more
%% information, see Create a Private Workforce (Amazon Cognito).
%%
%% To create a private workforce using your own OIDC Identity Provider (IdP),
%% specify your IdP configuration in `OidcConfig'. Your OIDC IdP must
%% support groups because groups are used by Ground Truth and Amazon A2I to
%% create work teams. For more information, see Create a Private Workforce
%% (OIDC IdP).
create_workforce(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workforce(Client, Input, []).
create_workforce(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkforce">>, Input, Options).

%% @doc Creates a new work team for labeling your data.
%%
%% A work team is defined by one or more Amazon Cognito user pools. You must
%% first create the user pools before you can create a work team.
%%
%% You cannot create more than 25 work teams in an account and region.
create_workteam(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_workteam(Client, Input, []).
create_workteam(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWorkteam">>, Input, Options).

%% @doc Deletes an action.
delete_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_action(Client, Input, []).
delete_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAction">>, Input, Options).

%% @doc Removes the specified algorithm from your account.
delete_algorithm(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_algorithm(Client, Input, []).
delete_algorithm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAlgorithm">>, Input, Options).

%% @doc Used to stop and delete an app.
delete_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_app(Client, Input, []).
delete_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApp">>, Input, Options).

%% @doc Deletes an AppImageConfig.
delete_app_image_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_app_image_config(Client, Input, []).
delete_app_image_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAppImageConfig">>, Input, Options).

%% @doc Deletes an artifact.
%%
%% Either `ArtifactArn' or `Source' must be specified.
delete_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_artifact(Client, Input, []).
delete_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteArtifact">>, Input, Options).

%% @doc Deletes an association.
delete_association(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_association(Client, Input, []).
delete_association(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAssociation">>, Input, Options).

%% @doc Deletes the specified Git repository from your account.
delete_code_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_code_repository(Client, Input, []).
delete_code_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCodeRepository">>, Input, Options).

%% @doc Deletes an context.
delete_context(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_context(Client, Input, []).
delete_context(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteContext">>, Input, Options).

%% @doc Deletes a data quality monitoring job definition.
delete_data_quality_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_data_quality_job_definition(Client, Input, []).
delete_data_quality_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDataQualityJobDefinition">>, Input, Options).

%% @doc Deletes a fleet.
delete_device_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_device_fleet(Client, Input, []).
delete_device_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDeviceFleet">>, Input, Options).

%% @doc Used to delete a domain.
%%
%% If you onboarded with IAM mode, you will need to delete your domain to
%% onboard again using IAM Identity Center. Use with caution. All of the
%% members of the domain will lose access to their EFS volume, including
%% data, notebooks, and other artifacts.
delete_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_domain(Client, Input, []).
delete_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDomain">>, Input, Options).

%% @doc Deletes an edge deployment plan if (and only if) all the stages in
%% the plan are inactive or there are no stages in the plan.
delete_edge_deployment_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_edge_deployment_plan(Client, Input, []).
delete_edge_deployment_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEdgeDeploymentPlan">>, Input, Options).

%% @doc Delete a stage in an edge deployment plan if (and only if) the stage
%% is inactive.
delete_edge_deployment_stage(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_edge_deployment_stage(Client, Input, []).
delete_edge_deployment_stage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEdgeDeploymentStage">>, Input, Options).

%% @doc Deletes an endpoint.
%%
%% SageMaker frees up all of the resources that were deployed when the
%% endpoint was created.
%%
%% SageMaker retires any custom KMS key grants associated with the endpoint,
%% meaning you don't need to use the RevokeGrant API call.
%%
%% When you delete your endpoint, SageMaker asynchronously deletes associated
%% endpoint resources such as KMS key grants. You might still see these
%% resources in your account for a few minutes after deleting your endpoint.
%% Do not delete or revoke the permissions for your ` ExecutionRoleArn ',
%% otherwise SageMaker cannot delete these resources.
delete_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_endpoint(Client, Input, []).
delete_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEndpoint">>, Input, Options).

%% @doc Deletes an endpoint configuration.
%%
%% The `DeleteEndpointConfig' API deletes only the specified
%% configuration. It does not delete endpoints created using the
%% configuration.
%%
%% You must not delete an `EndpointConfig' in use by an endpoint that is
%% live or while the `UpdateEndpoint' or `CreateEndpoint' operations
%% are being performed on the endpoint. If you delete the
%% `EndpointConfig' of an endpoint that is active or being created or
%% updated you may lose visibility into the instance type the endpoint is
%% using. The endpoint must be deleted in order to stop incurring charges.
delete_endpoint_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_endpoint_config(Client, Input, []).
delete_endpoint_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEndpointConfig">>, Input, Options).

%% @doc Deletes an SageMaker experiment.
%%
%% All trials associated with the experiment must be deleted first. Use the
%% ListTrials API to get a list of the trials associated with the experiment.
delete_experiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_experiment(Client, Input, []).
delete_experiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteExperiment">>, Input, Options).

%% @doc Delete the `FeatureGroup' and any data that was written to the
%% `OnlineStore' of the `FeatureGroup'.
%%
%% Data cannot be accessed from the `OnlineStore' immediately after
%% `DeleteFeatureGroup' is called.
%%
%% Data written into the `OfflineStore' will not be deleted. The Amazon
%% Web Services Glue database and tables that are automatically created for
%% your `OfflineStore' are not deleted.
delete_feature_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_feature_group(Client, Input, []).
delete_feature_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFeatureGroup">>, Input, Options).

%% @doc Deletes the specified flow definition.
delete_flow_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_flow_definition(Client, Input, []).
delete_flow_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFlowDefinition">>, Input, Options).

%% @doc Delete a hub.
%%
%% Hub APIs are only callable through SageMaker Studio.
delete_hub(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_hub(Client, Input, []).
delete_hub(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHub">>, Input, Options).

%% @doc Delete the contents of a hub.
%%
%% Hub APIs are only callable through SageMaker Studio.
delete_hub_content(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_hub_content(Client, Input, []).
delete_hub_content(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHubContent">>, Input, Options).

%% @doc Use this operation to delete a human task user interface (worker task
%% template).
%%
%% To see a list of human task user interfaces (work task templates) in your
%% account, use ListHumanTaskUis. When you delete a worker task template, it
%% no longer appears when you call `ListHumanTaskUis'.
delete_human_task_ui(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_human_task_ui(Client, Input, []).
delete_human_task_ui(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHumanTaskUi">>, Input, Options).

%% @doc Deletes a SageMaker image and all versions of the image.
%%
%% The container images aren't deleted.
delete_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_image(Client, Input, []).
delete_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteImage">>, Input, Options).

%% @doc Deletes a version of a SageMaker image.
%%
%% The container image the version represents isn't deleted.
delete_image_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_image_version(Client, Input, []).
delete_image_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteImageVersion">>, Input, Options).

%% @doc Deletes an inference experiment.
%%
%% This operation does not delete your endpoint, variants, or any underlying
%% resources. This operation only deletes the metadata of your experiment.
delete_inference_experiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_inference_experiment(Client, Input, []).
delete_inference_experiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteInferenceExperiment">>, Input, Options).

%% @doc Deletes a model.
%%
%% The `DeleteModel' API deletes only the model entry that was created in
%% SageMaker when you called the `CreateModel' API. It does not delete
%% model artifacts, inference code, or the IAM role that you specified when
%% creating the model.
delete_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model(Client, Input, []).
delete_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModel">>, Input, Options).

%% @doc Deletes an Amazon SageMaker model bias job definition.
delete_model_bias_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model_bias_job_definition(Client, Input, []).
delete_model_bias_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModelBiasJobDefinition">>, Input, Options).

%% @doc Deletes an Amazon SageMaker Model Card.
delete_model_card(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model_card(Client, Input, []).
delete_model_card(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModelCard">>, Input, Options).

%% @doc Deletes an Amazon SageMaker model explainability job definition.
delete_model_explainability_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model_explainability_job_definition(Client, Input, []).
delete_model_explainability_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModelExplainabilityJobDefinition">>, Input, Options).

%% @doc Deletes a model package.
%%
%% A model package is used to create SageMaker models or list on Amazon Web
%% Services Marketplace. Buyers can subscribe to model packages listed on
%% Amazon Web Services Marketplace to create models in SageMaker.
delete_model_package(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model_package(Client, Input, []).
delete_model_package(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModelPackage">>, Input, Options).

%% @doc Deletes the specified model group.
delete_model_package_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model_package_group(Client, Input, []).
delete_model_package_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModelPackageGroup">>, Input, Options).

%% @doc Deletes a model group resource policy.
delete_model_package_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model_package_group_policy(Client, Input, []).
delete_model_package_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModelPackageGroupPolicy">>, Input, Options).

%% @doc Deletes the secified model quality monitoring job definition.
delete_model_quality_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_model_quality_job_definition(Client, Input, []).
delete_model_quality_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteModelQualityJobDefinition">>, Input, Options).

%% @doc Deletes a monitoring schedule.
%%
%% Also stops the schedule had not already been stopped. This does not delete
%% the job execution history of the monitoring schedule.
delete_monitoring_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_monitoring_schedule(Client, Input, []).
delete_monitoring_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteMonitoringSchedule">>, Input, Options).

%% @doc Deletes an SageMaker notebook instance.
%%
%% Before you can delete a notebook instance, you must call the
%% `StopNotebookInstance' API.
%%
%% When you delete a notebook instance, you lose all of your data. SageMaker
%% removes the ML compute instance, and deletes the ML storage volume and the
%% network interface associated with the notebook instance.
delete_notebook_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_notebook_instance(Client, Input, []).
delete_notebook_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNotebookInstance">>, Input, Options).

%% @doc Deletes a notebook instance lifecycle configuration.
delete_notebook_instance_lifecycle_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_notebook_instance_lifecycle_config(Client, Input, []).
delete_notebook_instance_lifecycle_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteNotebookInstanceLifecycleConfig">>, Input, Options).

%% @doc Deletes a pipeline if there are no running instances of the pipeline.
%%
%% To delete a pipeline, you must stop all running instances of the pipeline
%% using the `StopPipelineExecution' API. When you delete a pipeline, all
%% instances of the pipeline are deleted.
delete_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_pipeline(Client, Input, []).
delete_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePipeline">>, Input, Options).

%% @doc Delete the specified project.
delete_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_project(Client, Input, []).
delete_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProject">>, Input, Options).

%% @doc Used to delete a space.
delete_space(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_space(Client, Input, []).
delete_space(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSpace">>, Input, Options).

%% @doc Deletes the Studio Lifecycle Configuration.
%%
%% In order to delete the Lifecycle Configuration, there must be no running
%% apps using the Lifecycle Configuration. You must also remove the Lifecycle
%% Configuration from UserSettings in all Domains and UserProfiles.
delete_studio_lifecycle_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_studio_lifecycle_config(Client, Input, []).
delete_studio_lifecycle_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStudioLifecycleConfig">>, Input, Options).

%% @doc Deletes the specified tags from an SageMaker resource.
%%
%% To list a resource's tags, use the `ListTags' API.
%%
%% When you call this API to delete tags from a hyperparameter tuning job,
%% the deleted tags are not removed from training jobs that the
%% hyperparameter tuning job launched before you called this API.
%%
%% When you call this API to delete tags from a SageMaker Studio Domain or
%% User Profile, the deleted tags are not removed from Apps that the
%% SageMaker Studio Domain or User Profile launched before you called this
%% API.
delete_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tags(Client, Input, []).
delete_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTags">>, Input, Options).

%% @doc Deletes the specified trial.
%%
%% All trial components that make up the trial must be deleted first. Use the
%% DescribeTrialComponent API to get the list of trial components.
delete_trial(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_trial(Client, Input, []).
delete_trial(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTrial">>, Input, Options).

%% @doc Deletes the specified trial component.
%%
%% A trial component must be disassociated from all trials before the trial
%% component can be deleted. To disassociate a trial component from a trial,
%% call the DisassociateTrialComponent API.
delete_trial_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_trial_component(Client, Input, []).
delete_trial_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTrialComponent">>, Input, Options).

%% @doc Deletes a user profile.
%%
%% When a user profile is deleted, the user loses access to their EFS volume,
%% including data, notebooks, and other artifacts.
delete_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user_profile(Client, Input, []).
delete_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUserProfile">>, Input, Options).

%% @doc Use this operation to delete a workforce.
%%
%% If you want to create a new workforce in an Amazon Web Services Region
%% where a workforce already exists, use this operation to delete the
%% existing workforce and then use CreateWorkforce to create a new workforce.
%%
%% If a private workforce contains one or more work teams, you must use the
%% DeleteWorkteam operation to delete all work teams before you delete the
%% workforce. If you try to delete a workforce that contains one or more work
%% teams, you will recieve a `ResourceInUse' error.
delete_workforce(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_workforce(Client, Input, []).
delete_workforce(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkforce">>, Input, Options).

%% @doc Deletes an existing work team.
%%
%% This operation can't be undone.
delete_workteam(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_workteam(Client, Input, []).
delete_workteam(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWorkteam">>, Input, Options).

%% @doc Deregisters the specified devices.
%%
%% After you deregister a device, you will need to re-register the devices.
deregister_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_devices(Client, Input, []).
deregister_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterDevices">>, Input, Options).

%% @doc Describes an action.
describe_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_action(Client, Input, []).
describe_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAction">>, Input, Options).

%% @doc Returns a description of the specified algorithm that is in your
%% account.
describe_algorithm(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_algorithm(Client, Input, []).
describe_algorithm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAlgorithm">>, Input, Options).

%% @doc Describes the app.
describe_app(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_app(Client, Input, []).
describe_app(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApp">>, Input, Options).

%% @doc Describes an AppImageConfig.
describe_app_image_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_app_image_config(Client, Input, []).
describe_app_image_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAppImageConfig">>, Input, Options).

%% @doc Describes an artifact.
describe_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_artifact(Client, Input, []).
describe_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeArtifact">>, Input, Options).

%% @doc Returns information about an AutoML job created by calling
%% CreateAutoMLJob.
%%
%% AutoML jobs created by calling CreateAutoMLJobV2 cannot be described by
%% `DescribeAutoMLJob'.
describe_auto_ml_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_auto_ml_job(Client, Input, []).
describe_auto_ml_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAutoMLJob">>, Input, Options).

%% @doc Returns information about an AutoML job created by calling
%% CreateAutoMLJobV2 or CreateAutoMLJob.
describe_auto_ml_job_v2(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_auto_ml_job_v2(Client, Input, []).
describe_auto_ml_job_v2(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAutoMLJobV2">>, Input, Options).

%% @doc Gets details about the specified Git repository.
describe_code_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_code_repository(Client, Input, []).
describe_code_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCodeRepository">>, Input, Options).

%% @doc Returns information about a model compilation job.
%%
%% To create a model compilation job, use CreateCompilationJob. To get
%% information about multiple model compilation jobs, use
%% ListCompilationJobs.
describe_compilation_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_compilation_job(Client, Input, []).
describe_compilation_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCompilationJob">>, Input, Options).

%% @doc Describes a context.
describe_context(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_context(Client, Input, []).
describe_context(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeContext">>, Input, Options).

%% @doc Gets the details of a data quality monitoring job definition.
describe_data_quality_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_data_quality_job_definition(Client, Input, []).
describe_data_quality_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDataQualityJobDefinition">>, Input, Options).

%% @doc Describes the device.
describe_device(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_device(Client, Input, []).
describe_device(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDevice">>, Input, Options).

%% @doc A description of the fleet the device belongs to.
describe_device_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_device_fleet(Client, Input, []).
describe_device_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDeviceFleet">>, Input, Options).

%% @doc The description of the domain.
describe_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_domain(Client, Input, []).
describe_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDomain">>, Input, Options).

%% @doc Describes an edge deployment plan with deployment status per stage.
describe_edge_deployment_plan(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_edge_deployment_plan(Client, Input, []).
describe_edge_deployment_plan(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEdgeDeploymentPlan">>, Input, Options).

%% @doc A description of edge packaging jobs.
describe_edge_packaging_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_edge_packaging_job(Client, Input, []).
describe_edge_packaging_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEdgePackagingJob">>, Input, Options).

%% @doc Returns the description of an endpoint.
describe_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoint(Client, Input, []).
describe_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpoint">>, Input, Options).

%% @doc Returns the description of an endpoint configuration created using
%% the `CreateEndpointConfig' API.
describe_endpoint_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_endpoint_config(Client, Input, []).
describe_endpoint_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEndpointConfig">>, Input, Options).

%% @doc Provides a list of an experiment's properties.
describe_experiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_experiment(Client, Input, []).
describe_experiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeExperiment">>, Input, Options).

%% @doc Use this operation to describe a `FeatureGroup'.
%%
%% The response includes information on the creation time, `FeatureGroup'
%% name, the unique identifier for each `FeatureGroup', and more.
describe_feature_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_feature_group(Client, Input, []).
describe_feature_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFeatureGroup">>, Input, Options).

%% @doc Shows the metadata for a feature within a feature group.
describe_feature_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_feature_metadata(Client, Input, []).
describe_feature_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFeatureMetadata">>, Input, Options).

%% @doc Returns information about the specified flow definition.
describe_flow_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_flow_definition(Client, Input, []).
describe_flow_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFlowDefinition">>, Input, Options).

%% @doc Describe a hub.
%%
%% Hub APIs are only callable through SageMaker Studio.
describe_hub(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_hub(Client, Input, []).
describe_hub(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHub">>, Input, Options).

%% @doc Describe the content of a hub.
%%
%% Hub APIs are only callable through SageMaker Studio.
describe_hub_content(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_hub_content(Client, Input, []).
describe_hub_content(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHubContent">>, Input, Options).

%% @doc Returns information about the requested human task user interface
%% (worker task template).
describe_human_task_ui(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_human_task_ui(Client, Input, []).
describe_human_task_ui(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHumanTaskUi">>, Input, Options).

%% @doc Returns a description of a hyperparameter tuning job, depending on
%% the fields selected.
%%
%% These fields can include the name, Amazon Resource Name (ARN), job status
%% of your tuning job and more.
describe_hyper_parameter_tuning_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_hyper_parameter_tuning_job(Client, Input, []).
describe_hyper_parameter_tuning_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHyperParameterTuningJob">>, Input, Options).

%% @doc Describes a SageMaker image.
describe_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_image(Client, Input, []).
describe_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImage">>, Input, Options).

%% @doc Describes a version of a SageMaker image.
describe_image_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_image_version(Client, Input, []).
describe_image_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImageVersion">>, Input, Options).

%% @doc Returns details about an inference experiment.
describe_inference_experiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_inference_experiment(Client, Input, []).
describe_inference_experiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInferenceExperiment">>, Input, Options).

%% @doc Provides the results of the Inference Recommender job.
%%
%% One or more recommendation jobs are returned.
describe_inference_recommendations_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_inference_recommendations_job(Client, Input, []).
describe_inference_recommendations_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeInferenceRecommendationsJob">>, Input, Options).

%% @doc Gets information about a labeling job.
describe_labeling_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_labeling_job(Client, Input, []).
describe_labeling_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLabelingJob">>, Input, Options).

%% @doc Provides a list of properties for the requested lineage group.
%%
%% For more information, see Cross-Account Lineage Tracking in the Amazon
%% SageMaker Developer Guide.
describe_lineage_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_lineage_group(Client, Input, []).
describe_lineage_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLineageGroup">>, Input, Options).

%% @doc Describes a model that you created using the `CreateModel' API.
describe_model(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model(Client, Input, []).
describe_model(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModel">>, Input, Options).

%% @doc Returns a description of a model bias job definition.
describe_model_bias_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model_bias_job_definition(Client, Input, []).
describe_model_bias_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModelBiasJobDefinition">>, Input, Options).

%% @doc Describes the content, creation time, and security configuration of
%% an Amazon SageMaker Model Card.
describe_model_card(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model_card(Client, Input, []).
describe_model_card(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModelCard">>, Input, Options).

%% @doc Describes an Amazon SageMaker Model Card export job.
describe_model_card_export_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model_card_export_job(Client, Input, []).
describe_model_card_export_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModelCardExportJob">>, Input, Options).

%% @doc Returns a description of a model explainability job definition.
describe_model_explainability_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model_explainability_job_definition(Client, Input, []).
describe_model_explainability_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModelExplainabilityJobDefinition">>, Input, Options).

%% @doc Returns a description of the specified model package, which is used
%% to create SageMaker models or list them on Amazon Web Services
%% Marketplace.
%%
%% To create models in SageMaker, buyers can subscribe to model packages
%% listed on Amazon Web Services Marketplace.
describe_model_package(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model_package(Client, Input, []).
describe_model_package(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModelPackage">>, Input, Options).

%% @doc Gets a description for the specified model group.
describe_model_package_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model_package_group(Client, Input, []).
describe_model_package_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModelPackageGroup">>, Input, Options).

%% @doc Returns a description of a model quality job definition.
describe_model_quality_job_definition(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_model_quality_job_definition(Client, Input, []).
describe_model_quality_job_definition(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeModelQualityJobDefinition">>, Input, Options).

%% @doc Describes the schedule for a monitoring job.
describe_monitoring_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_monitoring_schedule(Client, Input, []).
describe_monitoring_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeMonitoringSchedule">>, Input, Options).

%% @doc Returns information about a notebook instance.
describe_notebook_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_notebook_instance(Client, Input, []).
describe_notebook_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNotebookInstance">>, Input, Options).

%% @doc Returns a description of a notebook instance lifecycle configuration.
%%
%% For information about notebook instance lifestyle configurations, see Step
%% 2.1: (Optional) Customize a Notebook Instance.
describe_notebook_instance_lifecycle_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_notebook_instance_lifecycle_config(Client, Input, []).
describe_notebook_instance_lifecycle_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNotebookInstanceLifecycleConfig">>, Input, Options).

%% @doc Describes the details of a pipeline.
describe_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pipeline(Client, Input, []).
describe_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePipeline">>, Input, Options).

%% @doc Describes the details of an execution's pipeline definition.
describe_pipeline_definition_for_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pipeline_definition_for_execution(Client, Input, []).
describe_pipeline_definition_for_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePipelineDefinitionForExecution">>, Input, Options).

%% @doc Describes the details of a pipeline execution.
describe_pipeline_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pipeline_execution(Client, Input, []).
describe_pipeline_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePipelineExecution">>, Input, Options).

%% @doc Returns a description of a processing job.
describe_processing_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_processing_job(Client, Input, []).
describe_processing_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProcessingJob">>, Input, Options).

%% @doc Describes the details of a project.
describe_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_project(Client, Input, []).
describe_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProject">>, Input, Options).

%% @doc Describes the space.
describe_space(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_space(Client, Input, []).
describe_space(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSpace">>, Input, Options).

%% @doc Describes the Studio Lifecycle Configuration.
describe_studio_lifecycle_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_studio_lifecycle_config(Client, Input, []).
describe_studio_lifecycle_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStudioLifecycleConfig">>, Input, Options).

%% @doc Gets information about a work team provided by a vendor.
%%
%% It returns details about the subscription with a vendor in the Amazon Web
%% Services Marketplace.
describe_subscribed_workteam(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_subscribed_workteam(Client, Input, []).
describe_subscribed_workteam(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSubscribedWorkteam">>, Input, Options).

%% @doc Returns information about a training job.
%%
%% Some of the attributes below only appear if the training job successfully
%% starts. If the training job fails, `TrainingJobStatus' is `Failed'
%% and, depending on the `FailureReason', attributes like
%% `TrainingStartTime', `TrainingTimeInSeconds',
%% `TrainingEndTime', and `BillableTimeInSeconds' may not be present
%% in the response.
describe_training_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_training_job(Client, Input, []).
describe_training_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrainingJob">>, Input, Options).

%% @doc Returns information about a transform job.
describe_transform_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_transform_job(Client, Input, []).
describe_transform_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTransformJob">>, Input, Options).

%% @doc Provides a list of a trial's properties.
describe_trial(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trial(Client, Input, []).
describe_trial(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrial">>, Input, Options).

%% @doc Provides a list of a trials component's properties.
describe_trial_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trial_component(Client, Input, []).
describe_trial_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrialComponent">>, Input, Options).

%% @doc Describes a user profile.
%%
%% For more information, see `CreateUserProfile'.
describe_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user_profile(Client, Input, []).
describe_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUserProfile">>, Input, Options).

%% @doc Lists private workforce information, including workforce name, Amazon
%% Resource Name (ARN), and, if applicable, allowed IP address ranges
%% (CIDRs).
%%
%% Allowable IP address ranges are the IP addresses that workers can use to
%% access tasks.
%%
%% This operation applies only to private workforces.
describe_workforce(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workforce(Client, Input, []).
describe_workforce(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkforce">>, Input, Options).

%% @doc Gets information about a specific work team.
%%
%% You can see information such as the create date, the last updated date,
%% membership information, and the work team's Amazon Resource Name
%% (ARN).
describe_workteam(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_workteam(Client, Input, []).
describe_workteam(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeWorkteam">>, Input, Options).

%% @doc Disables using Service Catalog in SageMaker.
%%
%% Service Catalog is used to create SageMaker projects.
disable_sagemaker_servicecatalog_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_sagemaker_servicecatalog_portfolio(Client, Input, []).
disable_sagemaker_servicecatalog_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableSagemakerServicecatalogPortfolio">>, Input, Options).

%% @doc Disassociates a trial component from a trial.
%%
%% This doesn't effect other trials the component is associated with.
%% Before you can delete a component, you must disassociate the component
%% from all trials it is associated with. To associate a trial component with
%% a trial, call the AssociateTrialComponent API.
%%
%% To get a list of the trials a component is associated with, use the Search
%% API. Specify `ExperimentTrialComponent' for the `Resource'
%% parameter. The list appears in the response under
%% `Results.TrialComponent.Parents'.
disassociate_trial_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_trial_component(Client, Input, []).
disassociate_trial_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateTrialComponent">>, Input, Options).

%% @doc Enables using Service Catalog in SageMaker.
%%
%% Service Catalog is used to create SageMaker projects.
enable_sagemaker_servicecatalog_portfolio(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_sagemaker_servicecatalog_portfolio(Client, Input, []).
enable_sagemaker_servicecatalog_portfolio(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableSagemakerServicecatalogPortfolio">>, Input, Options).

%% @doc Describes a fleet.
get_device_fleet_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_device_fleet_report(Client, Input, []).
get_device_fleet_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDeviceFleetReport">>, Input, Options).

%% @doc The resource policy for the lineage group.
get_lineage_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_lineage_group_policy(Client, Input, []).
get_lineage_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetLineageGroupPolicy">>, Input, Options).

%% @doc Gets a resource policy that manages access for a model group.
%%
%% For information about resource policies, see Identity-based policies and
%% resource-based policies in the Amazon Web Services Identity and Access
%% Management User Guide..
get_model_package_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_model_package_group_policy(Client, Input, []).
get_model_package_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetModelPackageGroupPolicy">>, Input, Options).

%% @doc Gets the status of Service Catalog in SageMaker.
%%
%% Service Catalog is used to create SageMaker projects.
get_sagemaker_servicecatalog_portfolio_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_sagemaker_servicecatalog_portfolio_status(Client, Input, []).
get_sagemaker_servicecatalog_portfolio_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSagemakerServicecatalogPortfolioStatus">>, Input, Options).

%% @doc Starts an Amazon SageMaker Inference Recommender autoscaling
%% recommendation job.
%%
%% Returns recommendations for autoscaling policies that you can apply to
%% your SageMaker endpoint.
get_scaling_configuration_recommendation(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_scaling_configuration_recommendation(Client, Input, []).
get_scaling_configuration_recommendation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetScalingConfigurationRecommendation">>, Input, Options).

%% @doc An auto-complete API for the search functionality in the SageMaker
%% console.
%%
%% It returns suggestions of possible matches for the property name to use in
%% `Search' queries. Provides suggestions for `HyperParameters',
%% `Tags', and `Metrics'.
get_search_suggestions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_search_suggestions(Client, Input, []).
get_search_suggestions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSearchSuggestions">>, Input, Options).

%% @doc Import hub content.
%%
%% Hub APIs are only callable through SageMaker Studio.
import_hub_content(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_hub_content(Client, Input, []).
import_hub_content(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportHubContent">>, Input, Options).

%% @doc Lists the actions in your account and their properties.
list_actions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_actions(Client, Input, []).
list_actions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListActions">>, Input, Options).

%% @doc Lists the machine learning algorithms that have been created.
list_algorithms(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_algorithms(Client, Input, []).
list_algorithms(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAlgorithms">>, Input, Options).

%% @doc Lists the aliases of a specified image or image version.
list_aliases(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_aliases(Client, Input, []).
list_aliases(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAliases">>, Input, Options).

%% @doc Lists the AppImageConfigs in your account and their properties.
%%
%% The list can be filtered by creation time or modified time, and whether
%% the AppImageConfig name contains a specified string.
list_app_image_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_app_image_configs(Client, Input, []).
list_app_image_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAppImageConfigs">>, Input, Options).

%% @doc Lists apps.
list_apps(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_apps(Client, Input, []).
list_apps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListApps">>, Input, Options).

%% @doc Lists the artifacts in your account and their properties.
list_artifacts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_artifacts(Client, Input, []).
list_artifacts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListArtifacts">>, Input, Options).

%% @doc Lists the associations in your account and their properties.
list_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_associations(Client, Input, []).
list_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssociations">>, Input, Options).

%% @doc Request a list of jobs.
list_auto_ml_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_auto_ml_jobs(Client, Input, []).
list_auto_ml_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAutoMLJobs">>, Input, Options).

%% @doc List the candidates created for the job.
list_candidates_for_auto_ml_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_candidates_for_auto_ml_job(Client, Input, []).
list_candidates_for_auto_ml_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCandidatesForAutoMLJob">>, Input, Options).

%% @doc Gets a list of the Git repositories in your account.
list_code_repositories(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_code_repositories(Client, Input, []).
list_code_repositories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCodeRepositories">>, Input, Options).

%% @doc Lists model compilation jobs that satisfy various filters.
%%
%% To create a model compilation job, use CreateCompilationJob. To get
%% information about a particular model compilation job you have created, use
%% DescribeCompilationJob.
list_compilation_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_compilation_jobs(Client, Input, []).
list_compilation_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCompilationJobs">>, Input, Options).

%% @doc Lists the contexts in your account and their properties.
list_contexts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_contexts(Client, Input, []).
list_contexts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListContexts">>, Input, Options).

%% @doc Lists the data quality job definitions in your account.
list_data_quality_job_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_data_quality_job_definitions(Client, Input, []).
list_data_quality_job_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDataQualityJobDefinitions">>, Input, Options).

%% @doc Returns a list of devices in the fleet.
list_device_fleets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_device_fleets(Client, Input, []).
list_device_fleets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDeviceFleets">>, Input, Options).

%% @doc A list of devices.
list_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_devices(Client, Input, []).
list_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDevices">>, Input, Options).

%% @doc Lists the domains.
list_domains(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_domains(Client, Input, []).
list_domains(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDomains">>, Input, Options).

%% @doc Lists all edge deployment plans.
list_edge_deployment_plans(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_edge_deployment_plans(Client, Input, []).
list_edge_deployment_plans(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEdgeDeploymentPlans">>, Input, Options).

%% @doc Returns a list of edge packaging jobs.
list_edge_packaging_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_edge_packaging_jobs(Client, Input, []).
list_edge_packaging_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEdgePackagingJobs">>, Input, Options).

%% @doc Lists endpoint configurations.
list_endpoint_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_endpoint_configs(Client, Input, []).
list_endpoint_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEndpointConfigs">>, Input, Options).

%% @doc Lists endpoints.
list_endpoints(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_endpoints(Client, Input, []).
list_endpoints(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEndpoints">>, Input, Options).

%% @doc Lists all the experiments in your account.
%%
%% The list can be filtered to show only experiments that were created in a
%% specific time range. The list can be sorted by experiment name or creation
%% time.
list_experiments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_experiments(Client, Input, []).
list_experiments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListExperiments">>, Input, Options).

%% @doc List `FeatureGroup's based on given filter and order.
list_feature_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_feature_groups(Client, Input, []).
list_feature_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFeatureGroups">>, Input, Options).

%% @doc Returns information about the flow definitions in your account.
list_flow_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_flow_definitions(Client, Input, []).
list_flow_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFlowDefinitions">>, Input, Options).

%% @doc List hub content versions.
%%
%% Hub APIs are only callable through SageMaker Studio.
list_hub_content_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hub_content_versions(Client, Input, []).
list_hub_content_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHubContentVersions">>, Input, Options).

%% @doc List the contents of a hub.
%%
%% Hub APIs are only callable through SageMaker Studio.
list_hub_contents(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hub_contents(Client, Input, []).
list_hub_contents(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHubContents">>, Input, Options).

%% @doc List all existing hubs.
%%
%% Hub APIs are only callable through SageMaker Studio.
list_hubs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hubs(Client, Input, []).
list_hubs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHubs">>, Input, Options).

%% @doc Returns information about the human task user interfaces in your
%% account.
list_human_task_uis(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_human_task_uis(Client, Input, []).
list_human_task_uis(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHumanTaskUis">>, Input, Options).

%% @doc Gets a list of HyperParameterTuningJobSummary objects that describe
%% the hyperparameter tuning jobs launched in your account.
list_hyper_parameter_tuning_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hyper_parameter_tuning_jobs(Client, Input, []).
list_hyper_parameter_tuning_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHyperParameterTuningJobs">>, Input, Options).

%% @doc Lists the versions of a specified image and their properties.
%%
%% The list can be filtered by creation time or modified time.
list_image_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_image_versions(Client, Input, []).
list_image_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListImageVersions">>, Input, Options).

%% @doc Lists the images in your account and their properties.
%%
%% The list can be filtered by creation time or modified time, and whether
%% the image name contains a specified string.
list_images(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_images(Client, Input, []).
list_images(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListImages">>, Input, Options).

%% @doc Returns the list of all inference experiments.
list_inference_experiments(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_inference_experiments(Client, Input, []).
list_inference_experiments(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInferenceExperiments">>, Input, Options).

%% @doc Returns a list of the subtasks for an Inference Recommender job.
%%
%% The supported subtasks are benchmarks, which evaluate the performance of
%% your model on different instance types.
list_inference_recommendations_job_steps(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_inference_recommendations_job_steps(Client, Input, []).
list_inference_recommendations_job_steps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInferenceRecommendationsJobSteps">>, Input, Options).

%% @doc Lists recommendation jobs that satisfy various filters.
list_inference_recommendations_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_inference_recommendations_jobs(Client, Input, []).
list_inference_recommendations_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListInferenceRecommendationsJobs">>, Input, Options).

%% @doc Gets a list of labeling jobs.
list_labeling_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_labeling_jobs(Client, Input, []).
list_labeling_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLabelingJobs">>, Input, Options).

%% @doc Gets a list of labeling jobs assigned to a specified work team.
list_labeling_jobs_for_workteam(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_labeling_jobs_for_workteam(Client, Input, []).
list_labeling_jobs_for_workteam(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLabelingJobsForWorkteam">>, Input, Options).

%% @doc A list of lineage groups shared with your Amazon Web Services
%% account.
%%
%% For more information, see Cross-Account Lineage Tracking in the Amazon
%% SageMaker Developer Guide.
list_lineage_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_lineage_groups(Client, Input, []).
list_lineage_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLineageGroups">>, Input, Options).

%% @doc Lists model bias jobs definitions that satisfy various filters.
list_model_bias_job_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_bias_job_definitions(Client, Input, []).
list_model_bias_job_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelBiasJobDefinitions">>, Input, Options).

%% @doc List the export jobs for the Amazon SageMaker Model Card.
list_model_card_export_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_card_export_jobs(Client, Input, []).
list_model_card_export_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelCardExportJobs">>, Input, Options).

%% @doc List existing versions of an Amazon SageMaker Model Card.
list_model_card_versions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_card_versions(Client, Input, []).
list_model_card_versions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelCardVersions">>, Input, Options).

%% @doc List existing model cards.
list_model_cards(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_cards(Client, Input, []).
list_model_cards(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelCards">>, Input, Options).

%% @doc Lists model explainability job definitions that satisfy various
%% filters.
list_model_explainability_job_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_explainability_job_definitions(Client, Input, []).
list_model_explainability_job_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelExplainabilityJobDefinitions">>, Input, Options).

%% @doc Lists the domain, framework, task, and model name of standard machine
%% learning models found in common model zoos.
list_model_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_metadata(Client, Input, []).
list_model_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelMetadata">>, Input, Options).

%% @doc Gets a list of the model groups in your Amazon Web Services account.
list_model_package_groups(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_package_groups(Client, Input, []).
list_model_package_groups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelPackageGroups">>, Input, Options).

%% @doc Lists the model packages that have been created.
list_model_packages(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_packages(Client, Input, []).
list_model_packages(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelPackages">>, Input, Options).

%% @doc Gets a list of model quality monitoring job definitions in your
%% account.
list_model_quality_job_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_model_quality_job_definitions(Client, Input, []).
list_model_quality_job_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModelQualityJobDefinitions">>, Input, Options).

%% @doc Lists models created with the `CreateModel' API.
list_models(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_models(Client, Input, []).
list_models(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListModels">>, Input, Options).

%% @doc Gets a list of past alerts in a model monitoring schedule.
list_monitoring_alert_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_monitoring_alert_history(Client, Input, []).
list_monitoring_alert_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMonitoringAlertHistory">>, Input, Options).

%% @doc Gets the alerts for a single monitoring schedule.
list_monitoring_alerts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_monitoring_alerts(Client, Input, []).
list_monitoring_alerts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMonitoringAlerts">>, Input, Options).

%% @doc Returns list of all monitoring job executions.
list_monitoring_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_monitoring_executions(Client, Input, []).
list_monitoring_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMonitoringExecutions">>, Input, Options).

%% @doc Returns list of all monitoring schedules.
list_monitoring_schedules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_monitoring_schedules(Client, Input, []).
list_monitoring_schedules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMonitoringSchedules">>, Input, Options).

%% @doc Lists notebook instance lifestyle configurations created with the
%% CreateNotebookInstanceLifecycleConfig API.
list_notebook_instance_lifecycle_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_notebook_instance_lifecycle_configs(Client, Input, []).
list_notebook_instance_lifecycle_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListNotebookInstanceLifecycleConfigs">>, Input, Options).

%% @doc Returns a list of the SageMaker notebook instances in the
%% requester's account in an Amazon Web Services Region.
list_notebook_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_notebook_instances(Client, Input, []).
list_notebook_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListNotebookInstances">>, Input, Options).

%% @doc Gets a list of `PipeLineExecutionStep' objects.
list_pipeline_execution_steps(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pipeline_execution_steps(Client, Input, []).
list_pipeline_execution_steps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPipelineExecutionSteps">>, Input, Options).

%% @doc Gets a list of the pipeline executions.
list_pipeline_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pipeline_executions(Client, Input, []).
list_pipeline_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPipelineExecutions">>, Input, Options).

%% @doc Gets a list of parameters for a pipeline execution.
list_pipeline_parameters_for_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pipeline_parameters_for_execution(Client, Input, []).
list_pipeline_parameters_for_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPipelineParametersForExecution">>, Input, Options).

%% @doc Gets a list of pipelines.
list_pipelines(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pipelines(Client, Input, []).
list_pipelines(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPipelines">>, Input, Options).

%% @doc Lists processing jobs that satisfy various filters.
list_processing_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_processing_jobs(Client, Input, []).
list_processing_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProcessingJobs">>, Input, Options).

%% @doc Gets a list of the projects in an Amazon Web Services account.
list_projects(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_projects(Client, Input, []).
list_projects(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProjects">>, Input, Options).

%% @doc Lists Amazon SageMaker Catalogs based on given filters and orders.
%%
%% The maximum number of `ResourceCatalog's viewable is 1000.
list_resource_catalogs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_resource_catalogs(Client, Input, []).
list_resource_catalogs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListResourceCatalogs">>, Input, Options).

%% @doc Lists spaces.
list_spaces(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_spaces(Client, Input, []).
list_spaces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSpaces">>, Input, Options).

%% @doc Lists devices allocated to the stage, containing detailed device
%% information and deployment status.
list_stage_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stage_devices(Client, Input, []).
list_stage_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStageDevices">>, Input, Options).

%% @doc Lists the Studio Lifecycle Configurations in your Amazon Web Services
%% Account.
list_studio_lifecycle_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_studio_lifecycle_configs(Client, Input, []).
list_studio_lifecycle_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStudioLifecycleConfigs">>, Input, Options).

%% @doc Gets a list of the work teams that you are subscribed to in the
%% Amazon Web Services Marketplace.
%%
%% The list may be empty if no work team satisfies the filter specified in
%% the `NameContains' parameter.
list_subscribed_workteams(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_subscribed_workteams(Client, Input, []).
list_subscribed_workteams(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSubscribedWorkteams">>, Input, Options).

%% @doc Returns the tags for the specified SageMaker resource.
list_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags(Client, Input, []).
list_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTags">>, Input, Options).

%% @doc Lists training jobs.
%%
%% When `StatusEquals' and `MaxResults' are set at the same time, the
%% `MaxResults' number of training jobs are first retrieved ignoring the
%% `StatusEquals' parameter and then they are filtered by the
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
%% `aws sagemaker list-training-jobs --max-results 100 --status-equals
%% InProgress'
list_training_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_training_jobs(Client, Input, []).
list_training_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTrainingJobs">>, Input, Options).

%% @doc Gets a list of TrainingJobSummary objects that describe the training
%% jobs that a hyperparameter tuning job launched.
list_training_jobs_for_hyper_parameter_tuning_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_training_jobs_for_hyper_parameter_tuning_job(Client, Input, []).
list_training_jobs_for_hyper_parameter_tuning_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTrainingJobsForHyperParameterTuningJob">>, Input, Options).

%% @doc Lists transform jobs.
list_transform_jobs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_transform_jobs(Client, Input, []).
list_transform_jobs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTransformJobs">>, Input, Options).

%% @doc Lists the trial components in your account.
%%
%% You can sort the list by trial component name or creation time. You can
%% filter the list to show only components that were created in a specific
%% time range. You can also filter on one of the following:
%%
%% <ul> <li> `ExperimentName'
%%
%% </li> <li> `SourceArn'
%%
%% </li> <li> `TrialName'
%%
%% </li> </ul>
list_trial_components(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_trial_components(Client, Input, []).
list_trial_components(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTrialComponents">>, Input, Options).

%% @doc Lists the trials in your account.
%%
%% Specify an experiment name to limit the list to the trials that are part
%% of that experiment. Specify a trial component name to limit the list to
%% the trials that associated with that trial component. The list can be
%% filtered to show only trials that were created in a specific time range.
%% The list can be sorted by trial name or creation time.
list_trials(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_trials(Client, Input, []).
list_trials(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTrials">>, Input, Options).

%% @doc Lists user profiles.
list_user_profiles(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_user_profiles(Client, Input, []).
list_user_profiles(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListUserProfiles">>, Input, Options).

%% @doc Use this operation to list all private and vendor workforces in an
%% Amazon Web Services Region.
%%
%% Note that you can only have one private workforce per Amazon Web Services
%% Region.
list_workforces(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workforces(Client, Input, []).
list_workforces(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkforces">>, Input, Options).

%% @doc Gets a list of private work teams that you have defined in a region.
%%
%% The list may be empty if no work team satisfies the filter specified in
%% the `NameContains' parameter.
list_workteams(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_workteams(Client, Input, []).
list_workteams(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWorkteams">>, Input, Options).

%% @doc Adds a resouce policy to control access to a model group.
%%
%% For information about resoure policies, see Identity-based policies and
%% resource-based policies in the Amazon Web Services Identity and Access
%% Management User Guide..
put_model_package_group_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_model_package_group_policy(Client, Input, []).
put_model_package_group_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutModelPackageGroupPolicy">>, Input, Options).

%% @doc Use this action to inspect your lineage and discover relationships
%% between entities.
%%
%% For more information, see Querying Lineage Entities in the Amazon
%% SageMaker Developer Guide.
query_lineage(Client, Input)
  when is_map(Client), is_map(Input) ->
    query_lineage(Client, Input, []).
query_lineage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"QueryLineage">>, Input, Options).

%% @doc Register devices.
register_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_devices(Client, Input, []).
register_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterDevices">>, Input, Options).

%% @doc Renders the UI template so that you can preview the worker's
%% experience.
render_ui_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    render_ui_template(Client, Input, []).
render_ui_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RenderUiTemplate">>, Input, Options).

%% @doc Retry the execution of the pipeline.
retry_pipeline_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    retry_pipeline_execution(Client, Input, []).
retry_pipeline_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RetryPipelineExecution">>, Input, Options).

%% @doc Finds SageMaker resources that match a search query.
%%
%% Matching resources are returned as a list of `SearchRecord' objects in
%% the response. You can sort the search results by any resource property in
%% a ascending or descending order.
%%
%% You can query against the following value types: numeric, text, Boolean,
%% and timestamp.
%%
%% The Search API may provide access to otherwise restricted data. See Amazon
%% SageMaker API Permissions: Actions, Permissions, and Resources Reference
%% for more information.
search(Client, Input)
  when is_map(Client), is_map(Input) ->
    search(Client, Input, []).
search(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Search">>, Input, Options).

%% @doc Notifies the pipeline that the execution of a callback step failed,
%% along with a message describing why.
%%
%% When a callback step is run, the pipeline generates a callback token and
%% includes the token in a message sent to Amazon Simple Queue Service
%% (Amazon SQS).
send_pipeline_execution_step_failure(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_pipeline_execution_step_failure(Client, Input, []).
send_pipeline_execution_step_failure(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendPipelineExecutionStepFailure">>, Input, Options).

%% @doc Notifies the pipeline that the execution of a callback step succeeded
%% and provides a list of the step's output parameters.
%%
%% When a callback step is run, the pipeline generates a callback token and
%% includes the token in a message sent to Amazon Simple Queue Service
%% (Amazon SQS).
send_pipeline_execution_step_success(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_pipeline_execution_step_success(Client, Input, []).
send_pipeline_execution_step_success(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendPipelineExecutionStepSuccess">>, Input, Options).

%% @doc Starts a stage in an edge deployment plan.
start_edge_deployment_stage(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_edge_deployment_stage(Client, Input, []).
start_edge_deployment_stage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartEdgeDeploymentStage">>, Input, Options).

%% @doc Starts an inference experiment.
start_inference_experiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_inference_experiment(Client, Input, []).
start_inference_experiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartInferenceExperiment">>, Input, Options).

%% @doc Starts a previously stopped monitoring schedule.
%%
%% By default, when you successfully create a new schedule, the status of a
%% monitoring schedule is `scheduled'.
start_monitoring_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_monitoring_schedule(Client, Input, []).
start_monitoring_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMonitoringSchedule">>, Input, Options).

%% @doc Launches an ML compute instance with the latest version of the
%% libraries and attaches your ML storage volume.
%%
%% After configuring the notebook instance, SageMaker sets the notebook
%% instance status to `InService'. A notebook instance's status must
%% be `InService' before you can connect to your Jupyter notebook.
start_notebook_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_notebook_instance(Client, Input, []).
start_notebook_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartNotebookInstance">>, Input, Options).

%% @doc Starts a pipeline execution.
start_pipeline_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_pipeline_execution(Client, Input, []).
start_pipeline_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartPipelineExecution">>, Input, Options).

%% @doc A method for forcing a running job to shut down.
stop_auto_ml_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_auto_ml_job(Client, Input, []).
stop_auto_ml_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopAutoMLJob">>, Input, Options).

%% @doc Stops a model compilation job.
%%
%% To stop a job, Amazon SageMaker sends the algorithm the SIGTERM signal.
%% This gracefully shuts the job down. If the job hasn't stopped, it
%% sends the SIGKILL signal.
%%
%% When it receives a `StopCompilationJob' request, Amazon SageMaker
%% changes the `CompilationJobStatus' of the job to `Stopping'. After
%% Amazon SageMaker stops the job, it sets the `CompilationJobStatus' to
%% `Stopped'.
stop_compilation_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_compilation_job(Client, Input, []).
stop_compilation_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopCompilationJob">>, Input, Options).

%% @doc Stops a stage in an edge deployment plan.
stop_edge_deployment_stage(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_edge_deployment_stage(Client, Input, []).
stop_edge_deployment_stage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopEdgeDeploymentStage">>, Input, Options).

%% @doc Request to stop an edge packaging job.
stop_edge_packaging_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_edge_packaging_job(Client, Input, []).
stop_edge_packaging_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopEdgePackagingJob">>, Input, Options).

%% @doc Stops a running hyperparameter tuning job and all running training
%% jobs that the tuning job launched.
%%
%% All model artifacts output from the training jobs are stored in Amazon
%% Simple Storage Service (Amazon S3). All data that the training jobs write
%% to Amazon CloudWatch Logs are still available in CloudWatch. After the
%% tuning job moves to the `Stopped' state, it releases all reserved
%% resources for the tuning job.
stop_hyper_parameter_tuning_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_hyper_parameter_tuning_job(Client, Input, []).
stop_hyper_parameter_tuning_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopHyperParameterTuningJob">>, Input, Options).

%% @doc Stops an inference experiment.
stop_inference_experiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_inference_experiment(Client, Input, []).
stop_inference_experiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopInferenceExperiment">>, Input, Options).

%% @doc Stops an Inference Recommender job.
stop_inference_recommendations_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_inference_recommendations_job(Client, Input, []).
stop_inference_recommendations_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopInferenceRecommendationsJob">>, Input, Options).

%% @doc Stops a running labeling job.
%%
%% A job that is stopped cannot be restarted. Any results obtained before the
%% job is stopped are placed in the Amazon S3 output bucket.
stop_labeling_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_labeling_job(Client, Input, []).
stop_labeling_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopLabelingJob">>, Input, Options).

%% @doc Stops a previously started monitoring schedule.
stop_monitoring_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_monitoring_schedule(Client, Input, []).
stop_monitoring_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopMonitoringSchedule">>, Input, Options).

%% @doc Terminates the ML compute instance.
%%
%% Before terminating the instance, SageMaker disconnects the ML storage
%% volume from it. SageMaker preserves the ML storage volume. SageMaker stops
%% charging you for the ML compute instance when you call
%% `StopNotebookInstance'.
%%
%% To access data on the ML storage volume for a notebook instance that has
%% been terminated, call the `StartNotebookInstance' API.
%% `StartNotebookInstance' launches another ML compute instance,
%% configures it, and attaches the preserved ML storage volume so you can
%% continue your work.
stop_notebook_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_notebook_instance(Client, Input, []).
stop_notebook_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopNotebookInstance">>, Input, Options).

%% @doc Stops a pipeline execution.
%%
%% Callback Step
%%
%% A pipeline execution won't stop while a callback step is running. When
%% you call `StopPipelineExecution' on a pipeline execution with a
%% running callback step, SageMaker Pipelines sends an additional Amazon SQS
%% message to the specified SQS queue. The body of the SQS message contains a
%% &quot;Status&quot; field which is set to &quot;Stopping&quot;.
%%
%% You should add logic to your Amazon SQS message consumer to take any
%% needed action (for example, resource cleanup) upon receipt of the message
%% followed by a call to `SendPipelineExecutionStepSuccess' or
%% `SendPipelineExecutionStepFailure'.
%%
%% Only when SageMaker Pipelines receives one of these calls will it stop the
%% pipeline execution.
%%
%% Lambda Step
%%
%% A pipeline execution can't be stopped while a lambda step is running
%% because the Lambda function invoked by the lambda step can't be
%% stopped. If you attempt to stop the execution while the Lambda function is
%% running, the pipeline waits for the Lambda function to finish or until the
%% timeout is hit, whichever occurs first, and then stops. If the Lambda
%% function finishes, the pipeline execution status is `Stopped'. If the
%% timeout is hit the pipeline execution status is `Failed'.
stop_pipeline_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_pipeline_execution(Client, Input, []).
stop_pipeline_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopPipelineExecution">>, Input, Options).

%% @doc Stops a processing job.
stop_processing_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_processing_job(Client, Input, []).
stop_processing_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopProcessingJob">>, Input, Options).

%% @doc Stops a training job.
%%
%% To stop a job, SageMaker sends the algorithm the `SIGTERM' signal,
%% which delays job termination for 120 seconds. Algorithms might use this
%% 120-second window to save the model artifacts, so the results of the
%% training is not lost.
%%
%% When it receives a `StopTrainingJob' request, SageMaker changes the
%% status of the job to `Stopping'. After SageMaker stops the job, it
%% sets the status to `Stopped'.
stop_training_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_training_job(Client, Input, []).
stop_training_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopTrainingJob">>, Input, Options).

%% @doc Stops a batch transform job.
%%
%% When Amazon SageMaker receives a `StopTransformJob' request, the
%% status of the job changes to `Stopping'. After Amazon SageMaker stops
%% the job, the status is set to `Stopped'. When you stop a batch
%% transform job before it is completed, Amazon SageMaker doesn't store
%% the job's output in Amazon S3.
stop_transform_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_transform_job(Client, Input, []).
stop_transform_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopTransformJob">>, Input, Options).

%% @doc Updates an action.
update_action(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_action(Client, Input, []).
update_action(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAction">>, Input, Options).

%% @doc Updates the properties of an AppImageConfig.
update_app_image_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_app_image_config(Client, Input, []).
update_app_image_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAppImageConfig">>, Input, Options).

%% @doc Updates an artifact.
update_artifact(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_artifact(Client, Input, []).
update_artifact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateArtifact">>, Input, Options).

%% @doc Updates the specified Git repository with the specified values.
update_code_repository(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_code_repository(Client, Input, []).
update_code_repository(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCodeRepository">>, Input, Options).

%% @doc Updates a context.
update_context(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_context(Client, Input, []).
update_context(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateContext">>, Input, Options).

%% @doc Updates a fleet of devices.
update_device_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_device_fleet(Client, Input, []).
update_device_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDeviceFleet">>, Input, Options).

%% @doc Updates one or more devices in a fleet.
update_devices(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_devices(Client, Input, []).
update_devices(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDevices">>, Input, Options).

%% @doc Updates the default settings for new user profiles in the domain.
update_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_domain(Client, Input, []).
update_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDomain">>, Input, Options).

%% @doc Deploys the new `EndpointConfig' specified in the request,
%% switches to using newly created endpoint, and then deletes resources
%% provisioned for the endpoint using the previous `EndpointConfig'
%% (there is no availability loss).
%%
%% When SageMaker receives the request, it sets the endpoint status to
%% `Updating'. After updating the endpoint, it sets the status to
%% `InService'. To check the status of an endpoint, use the
%% DescribeEndpoint API.
%%
%% You must not delete an `EndpointConfig' in use by an endpoint that is
%% live or while the `UpdateEndpoint' or `CreateEndpoint' operations
%% are being performed on the endpoint. To update an endpoint, you must
%% create a new `EndpointConfig'.
%%
%% If you delete the `EndpointConfig' of an endpoint that is active or
%% being created or updated you may lose visibility into the instance type
%% the endpoint is using. The endpoint must be deleted in order to stop
%% incurring charges.
update_endpoint(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_endpoint(Client, Input, []).
update_endpoint(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEndpoint">>, Input, Options).

%% @doc Updates variant weight of one or more variants associated with an
%% existing endpoint, or capacity of one variant associated with an existing
%% endpoint.
%%
%% When it receives the request, SageMaker sets the endpoint status to
%% `Updating'. After updating the endpoint, it sets the status to
%% `InService'. To check the status of an endpoint, use the
%% DescribeEndpoint API.
update_endpoint_weights_and_capacities(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_endpoint_weights_and_capacities(Client, Input, []).
update_endpoint_weights_and_capacities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEndpointWeightsAndCapacities">>, Input, Options).

%% @doc Adds, updates, or removes the description of an experiment.
%%
%% Updates the display name of an experiment.
update_experiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_experiment(Client, Input, []).
update_experiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateExperiment">>, Input, Options).

%% @doc Updates the feature group by either adding features or updating the
%% online store configuration.
%%
%% Use one of the following request parameters at a time while using the
%% `UpdateFeatureGroup' API.
%%
%% You can add features for your feature group using the
%% `FeatureAdditions' request parameter. Features cannot be removed from
%% a feature group.
%%
%% You can update the online store configuration by using the
%% `OnlineStoreConfig' request parameter. If a `TtlDuration' is
%% specified, the default `TtlDuration' applies for all records added to
%% the feature group after the feature group is updated. If a record level
%% `TtlDuration' exists from using the `PutRecord' API, the record
%% level `TtlDuration' applies to that record instead of the default
%% `TtlDuration'.
update_feature_group(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_feature_group(Client, Input, []).
update_feature_group(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFeatureGroup">>, Input, Options).

%% @doc Updates the description and parameters of the feature group.
update_feature_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_feature_metadata(Client, Input, []).
update_feature_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFeatureMetadata">>, Input, Options).

%% @doc Update a hub.
%%
%% Hub APIs are only callable through SageMaker Studio.
update_hub(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_hub(Client, Input, []).
update_hub(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateHub">>, Input, Options).

%% @doc Updates the properties of a SageMaker image.
%%
%% To change the image's tags, use the AddTags and DeleteTags APIs.
update_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_image(Client, Input, []).
update_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateImage">>, Input, Options).

%% @doc Updates the properties of a SageMaker image version.
update_image_version(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_image_version(Client, Input, []).
update_image_version(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateImageVersion">>, Input, Options).

%% @doc Updates an inference experiment that you created.
%%
%% The status of the inference experiment has to be either `Created',
%% `Running'. For more information on the status of an inference
%% experiment, see DescribeInferenceExperiment.
update_inference_experiment(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_inference_experiment(Client, Input, []).
update_inference_experiment(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateInferenceExperiment">>, Input, Options).

%% @doc Update an Amazon SageMaker Model Card.
%%
%% You cannot update both model card content and model card status in a
%% single call.
update_model_card(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_model_card(Client, Input, []).
update_model_card(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateModelCard">>, Input, Options).

%% @doc Updates a versioned model.
update_model_package(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_model_package(Client, Input, []).
update_model_package(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateModelPackage">>, Input, Options).

%% @doc Update the parameters of a model monitor alert.
update_monitoring_alert(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_monitoring_alert(Client, Input, []).
update_monitoring_alert(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMonitoringAlert">>, Input, Options).

%% @doc Updates a previously created schedule.
update_monitoring_schedule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_monitoring_schedule(Client, Input, []).
update_monitoring_schedule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateMonitoringSchedule">>, Input, Options).

%% @doc Updates a notebook instance.
%%
%% NotebookInstance updates include upgrading or downgrading the ML compute
%% instance used for your notebook instance to accommodate changes in your
%% workload requirements.
update_notebook_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_notebook_instance(Client, Input, []).
update_notebook_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNotebookInstance">>, Input, Options).

%% @doc Updates a notebook instance lifecycle configuration created with the
%% CreateNotebookInstanceLifecycleConfig API.
update_notebook_instance_lifecycle_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_notebook_instance_lifecycle_config(Client, Input, []).
update_notebook_instance_lifecycle_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNotebookInstanceLifecycleConfig">>, Input, Options).

%% @doc Updates a pipeline.
update_pipeline(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_pipeline(Client, Input, []).
update_pipeline(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePipeline">>, Input, Options).

%% @doc Updates a pipeline execution.
update_pipeline_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_pipeline_execution(Client, Input, []).
update_pipeline_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePipelineExecution">>, Input, Options).

%% @doc Updates a machine learning (ML) project that is created from a
%% template that sets up an ML pipeline from training to deploying an
%% approved model.
%%
%% You must not update a project that is in use. If you update the
%% `ServiceCatalogProvisioningUpdateDetails' of a project that is active
%% or being created, or updated, you may lose resources already created by
%% the project.
update_project(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_project(Client, Input, []).
update_project(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProject">>, Input, Options).

%% @doc Updates the settings of a space.
update_space(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_space(Client, Input, []).
update_space(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSpace">>, Input, Options).

%% @doc Update a model training job to request a new Debugger profiling
%% configuration or to change warm pool retention length.
update_training_job(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_training_job(Client, Input, []).
update_training_job(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTrainingJob">>, Input, Options).

%% @doc Updates the display name of a trial.
update_trial(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_trial(Client, Input, []).
update_trial(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTrial">>, Input, Options).

%% @doc Updates one or more properties of a trial component.
update_trial_component(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_trial_component(Client, Input, []).
update_trial_component(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTrialComponent">>, Input, Options).

%% @doc Updates a user profile.
update_user_profile(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_user_profile(Client, Input, []).
update_user_profile(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateUserProfile">>, Input, Options).

%% @doc Use this operation to update your workforce.
%%
%% You can use this operation to require that workers use specific IP
%% addresses to work on tasks and to update your OpenID Connect (OIDC)
%% Identity Provider (IdP) workforce configuration.
%%
%% The worker portal is now supported in VPC and public internet.
%%
%% Use `SourceIpConfig' to restrict worker access to tasks to a specific
%% range of IP addresses. You specify allowed IP addresses by creating a list
%% of up to ten CIDRs. By default, a workforce isn't restricted to
%% specific IP addresses. If you specify a range of IP addresses, workers who
%% attempt to access tasks using any IP address outside the specified range
%% are denied and get a `Not Found' error message on the worker portal.
%%
%% To restrict access to all the workers in public internet, add the
%% `SourceIpConfig' CIDR value as &quot;10.0.0.0/16&quot;.
%%
%% Amazon SageMaker does not support Source Ip restriction for worker portals
%% in VPC.
%%
%% Use `OidcConfig' to update the configuration of a workforce created
%% using your own OIDC IdP.
%%
%% You can only update your OIDC IdP configuration when there are no work
%% teams associated with your workforce. You can delete work teams using the
%% DeleteWorkteam operation.
%%
%% After restricting access to a range of IP addresses or updating your OIDC
%% IdP configuration with this operation, you can view details about your
%% update workforce using the DescribeWorkforce operation.
%%
%% This operation only applies to private workforces.
update_workforce(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_workforce(Client, Input, []).
update_workforce(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWorkforce">>, Input, Options).

%% @doc Updates an existing work team with new member definitions or
%% description.
update_workteam(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_workteam(Client, Input, []).
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
