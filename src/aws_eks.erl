%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Elastic Kubernetes Service (Amazon EKS) is a managed service
%% that makes it easy for you to run Kubernetes on
%% Amazon Web Services without needing to setup or maintain your own
%% Kubernetes control plane.
%%
%% Kubernetes is an
%% open-source system for automating the deployment, scaling, and management
%% of
%% containerized applications.
%%
%% Amazon EKS runs up-to-date versions of the open-source Kubernetes
%% software, so you can use all
%% the existing plugins and tooling from the Kubernetes community.
%% Applications running on Amazon EKS
%% are fully compatible with applications running on any standard Kubernetes
%% environment,
%% whether running in on-premises data centers or public clouds. This means
%% that you can
%% easily migrate any standard Kubernetes application to Amazon EKS without
%% any code modification
%% required.
-module(aws_eks).

-export([associate_access_policy/4,
         associate_access_policy/5,
         associate_encryption_config/3,
         associate_encryption_config/4,
         associate_identity_provider_config/3,
         associate_identity_provider_config/4,
         create_access_entry/3,
         create_access_entry/4,
         create_addon/3,
         create_addon/4,
         create_cluster/2,
         create_cluster/3,
         create_eks_anywhere_subscription/2,
         create_eks_anywhere_subscription/3,
         create_fargate_profile/3,
         create_fargate_profile/4,
         create_nodegroup/3,
         create_nodegroup/4,
         create_pod_identity_association/3,
         create_pod_identity_association/4,
         delete_access_entry/4,
         delete_access_entry/5,
         delete_addon/4,
         delete_addon/5,
         delete_cluster/3,
         delete_cluster/4,
         delete_eks_anywhere_subscription/3,
         delete_eks_anywhere_subscription/4,
         delete_fargate_profile/4,
         delete_fargate_profile/5,
         delete_nodegroup/4,
         delete_nodegroup/5,
         delete_pod_identity_association/4,
         delete_pod_identity_association/5,
         deregister_cluster/3,
         deregister_cluster/4,
         describe_access_entry/3,
         describe_access_entry/5,
         describe_access_entry/6,
         describe_addon/3,
         describe_addon/5,
         describe_addon/6,
         describe_addon_configuration/3,
         describe_addon_configuration/5,
         describe_addon_configuration/6,
         describe_addon_versions/1,
         describe_addon_versions/3,
         describe_addon_versions/4,
         describe_cluster/2,
         describe_cluster/4,
         describe_cluster/5,
         describe_cluster_versions/1,
         describe_cluster_versions/3,
         describe_cluster_versions/4,
         describe_eks_anywhere_subscription/2,
         describe_eks_anywhere_subscription/4,
         describe_eks_anywhere_subscription/5,
         describe_fargate_profile/3,
         describe_fargate_profile/5,
         describe_fargate_profile/6,
         describe_identity_provider_config/3,
         describe_identity_provider_config/4,
         describe_insight/3,
         describe_insight/5,
         describe_insight/6,
         describe_nodegroup/3,
         describe_nodegroup/5,
         describe_nodegroup/6,
         describe_pod_identity_association/3,
         describe_pod_identity_association/5,
         describe_pod_identity_association/6,
         describe_update/3,
         describe_update/5,
         describe_update/6,
         disassociate_access_policy/5,
         disassociate_access_policy/6,
         disassociate_identity_provider_config/3,
         disassociate_identity_provider_config/4,
         list_access_entries/2,
         list_access_entries/4,
         list_access_entries/5,
         list_access_policies/1,
         list_access_policies/3,
         list_access_policies/4,
         list_addons/2,
         list_addons/4,
         list_addons/5,
         list_associated_access_policies/3,
         list_associated_access_policies/5,
         list_associated_access_policies/6,
         list_clusters/1,
         list_clusters/3,
         list_clusters/4,
         list_eks_anywhere_subscriptions/1,
         list_eks_anywhere_subscriptions/3,
         list_eks_anywhere_subscriptions/4,
         list_fargate_profiles/2,
         list_fargate_profiles/4,
         list_fargate_profiles/5,
         list_identity_provider_configs/2,
         list_identity_provider_configs/4,
         list_identity_provider_configs/5,
         list_insights/3,
         list_insights/4,
         list_nodegroups/2,
         list_nodegroups/4,
         list_nodegroups/5,
         list_pod_identity_associations/2,
         list_pod_identity_associations/4,
         list_pod_identity_associations/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_updates/2,
         list_updates/4,
         list_updates/5,
         register_cluster/2,
         register_cluster/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_access_entry/4,
         update_access_entry/5,
         update_addon/4,
         update_addon/5,
         update_cluster_config/3,
         update_cluster_config/4,
         update_cluster_version/3,
         update_cluster_version/4,
         update_eks_anywhere_subscription/3,
         update_eks_anywhere_subscription/4,
         update_nodegroup_config/4,
         update_nodegroup_config/5,
         update_nodegroup_version/4,
         update_nodegroup_version/5,
         update_pod_identity_association/4,
         update_pod_identity_association/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_nodegroups_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"nodegroups">> => list(string())
%% }
-type list_nodegroups_response() :: #{binary() => any()}.

%% Example:
%% describe_cluster_request() :: #{}
-type describe_cluster_request() :: #{}.


%% Example:
%% delete_fargate_profile_response() :: #{
%%   <<"fargateProfile">> => fargate_profile()
%% }
-type delete_fargate_profile_response() :: #{binary() => any()}.


%% Example:
%% list_access_policies_response() :: #{
%%   <<"accessPolicies">> => list(access_policy()),
%%   <<"nextToken">> => string()
%% }
-type list_access_policies_response() :: #{binary() => any()}.


%% Example:
%% insight_summary() :: #{
%%   <<"category">> => list(any()),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"insightStatus">> => insight_status(),
%%   <<"kubernetesVersion">> => string(),
%%   <<"lastRefreshTime">> => non_neg_integer(),
%%   <<"lastTransitionTime">> => non_neg_integer(),
%%   <<"name">> => string()
%% }
-type insight_summary() :: #{binary() => any()}.


%% Example:
%% access_policy() :: #{
%%   <<"arn">> => string(),
%%   <<"name">> => string()
%% }
-type access_policy() :: #{binary() => any()}.


%% Example:
%% addon_issue() :: #{
%%   <<"code">> => list(any()),
%%   <<"message">> => string(),
%%   <<"resourceIds">> => list(string())
%% }
-type addon_issue() :: #{binary() => any()}.


%% Example:
%% list_insights_request() :: #{
%%   <<"filter">> => insights_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_insights_request() :: #{binary() => any()}.


%% Example:
%% describe_insight_response() :: #{
%%   <<"insight">> => insight()
%% }
-type describe_insight_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% encryption_config() :: #{
%%   <<"provider">> => provider(),
%%   <<"resources">> => list(string())
%% }
-type encryption_config() :: #{binary() => any()}.


%% Example:
%% update_labels_payload() :: #{
%%   <<"addOrUpdateLabels">> => map(),
%%   <<"removeLabels">> => list(string())
%% }
-type update_labels_payload() :: #{binary() => any()}.


%% Example:
%% describe_eks_anywhere_subscription_response() :: #{
%%   <<"subscription">> => eks_anywhere_subscription()
%% }
-type describe_eks_anywhere_subscription_response() :: #{binary() => any()}.


%% Example:
%% outpost_config_response() :: #{
%%   <<"controlPlaneInstanceType">> => string(),
%%   <<"controlPlanePlacement">> => control_plane_placement_response(),
%%   <<"outpostArns">> => list(string())
%% }
-type outpost_config_response() :: #{binary() => any()}.


%% Example:
%% compute_config_response() :: #{
%%   <<"enabled">> => boolean(),
%%   <<"nodePools">> => list(string()),
%%   <<"nodeRoleArn">> => string()
%% }
-type compute_config_response() :: #{binary() => any()}.


%% Example:
%% compatibility() :: #{
%%   <<"clusterVersion">> => string(),
%%   <<"defaultVersion">> => boolean(),
%%   <<"platformVersions">> => list(string())
%% }
-type compatibility() :: #{binary() => any()}.


%% Example:
%% describe_addon_response() :: #{
%%   <<"addon">> => addon()
%% }
-type describe_addon_response() :: #{binary() => any()}.


%% Example:
%% create_nodegroup_request() :: #{
%%   <<"amiType">> => list(any()),
%%   <<"capacityType">> => list(any()),
%%   <<"clientRequestToken">> => string(),
%%   <<"diskSize">> => integer(),
%%   <<"instanceTypes">> => list(string()),
%%   <<"labels">> => map(),
%%   <<"launchTemplate">> => launch_template_specification(),
%%   <<"nodeRepairConfig">> => node_repair_config(),
%%   <<"nodeRole">> := string(),
%%   <<"nodegroupName">> := string(),
%%   <<"releaseVersion">> => string(),
%%   <<"remoteAccess">> => remote_access_config(),
%%   <<"scalingConfig">> => nodegroup_scaling_config(),
%%   <<"subnets">> := list(string()),
%%   <<"tags">> => map(),
%%   <<"taints">> => list(taint()),
%%   <<"updateConfig">> => nodegroup_update_config(),
%%   <<"version">> => string()
%% }
-type create_nodegroup_request() :: #{binary() => any()}.


%% Example:
%% delete_addon_request() :: #{
%%   <<"preserve">> => boolean()
%% }
-type delete_addon_request() :: #{binary() => any()}.


%% Example:
%% describe_cluster_response() :: #{
%%   <<"cluster">> => cluster()
%% }
-type describe_cluster_response() :: #{binary() => any()}.


%% Example:
%% unsupported_availability_zone_exception() :: #{
%%   <<"clusterName">> => string(),
%%   <<"message">> => string(),
%%   <<"nodegroupName">> => string(),
%%   <<"validZones">> => list(string())
%% }
-type unsupported_availability_zone_exception() :: #{binary() => any()}.

%% Example:
%% deregister_cluster_request() :: #{}
-type deregister_cluster_request() :: #{}.


%% Example:
%% update_nodegroup_config_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"labels">> => update_labels_payload(),
%%   <<"nodeRepairConfig">> => node_repair_config(),
%%   <<"scalingConfig">> => nodegroup_scaling_config(),
%%   <<"taints">> => update_taints_payload(),
%%   <<"updateConfig">> => nodegroup_update_config()
%% }
-type update_nodegroup_config_request() :: #{binary() => any()}.


%% Example:
%% access_scope() :: #{
%%   <<"namespaces">> => list(string()),
%%   <<"type">> => list(any())
%% }
-type access_scope() :: #{binary() => any()}.


%% Example:
%% list_associated_access_policies_response() :: #{
%%   <<"associatedAccessPolicies">> => list(associated_access_policy()),
%%   <<"clusterName">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"principalArn">> => string()
%% }
-type list_associated_access_policies_response() :: #{binary() => any()}.


%% Example:
%% delete_addon_response() :: #{
%%   <<"addon">> => addon()
%% }
-type delete_addon_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% create_fargate_profile_response() :: #{
%%   <<"fargateProfile">> => fargate_profile()
%% }
-type create_fargate_profile_response() :: #{binary() => any()}.


%% Example:
%% remote_network_config_request() :: #{
%%   <<"remoteNodeNetworks">> => list(remote_node_network()),
%%   <<"remotePodNetworks">> => list(remote_pod_network())
%% }
-type remote_network_config_request() :: #{binary() => any()}.


%% Example:
%% create_cluster_response() :: #{
%%   <<"cluster">> => cluster()
%% }
-type create_cluster_response() :: #{binary() => any()}.


%% Example:
%% pod_identity_association() :: #{
%%   <<"associationArn">> => string(),
%%   <<"associationId">> => string(),
%%   <<"clusterName">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"disableSessionTags">> => boolean(),
%%   <<"externalId">> => string(),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"namespace">> => string(),
%%   <<"ownerArn">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"serviceAccount">> => string(),
%%   <<"tags">> => map(),
%%   <<"targetRoleArn">> => string()
%% }
-type pod_identity_association() :: #{binary() => any()}.


%% Example:
%% resource_in_use_exception() :: #{
%%   <<"addonName">> => string(),
%%   <<"clusterName">> => string(),
%%   <<"message">> => string(),
%%   <<"nodegroupName">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.


%% Example:
%% describe_identity_provider_config_request() :: #{
%%   <<"identityProviderConfig">> := identity_provider_config()
%% }
-type describe_identity_provider_config_request() :: #{binary() => any()}.


%% Example:
%% describe_addon_configuration_response() :: #{
%%   <<"addonName">> => string(),
%%   <<"addonVersion">> => string(),
%%   <<"configurationSchema">> => string(),
%%   <<"podIdentityConfiguration">> => list(addon_pod_identity_configuration())
%% }
-type describe_addon_configuration_response() :: #{binary() => any()}.


%% Example:
%% identity() :: #{
%%   <<"oidc">> => o_id_c()
%% }
-type identity() :: #{binary() => any()}.


%% Example:
%% nodegroup_update_config() :: #{
%%   <<"maxUnavailable">> => integer(),
%%   <<"maxUnavailablePercentage">> => integer(),
%%   <<"updateStrategy">> => list(any())
%% }
-type nodegroup_update_config() :: #{binary() => any()}.


%% Example:
%% associate_identity_provider_config_response() :: #{
%%   <<"tags">> => map(),
%%   <<"update">> => update()
%% }
-type associate_identity_provider_config_response() :: #{binary() => any()}.


%% Example:
%% identity_provider_config() :: #{
%%   <<"name">> => string(),
%%   <<"type">> => string()
%% }
-type identity_provider_config() :: #{binary() => any()}.

%% Example:
%% disassociate_access_policy_request() :: #{}
-type disassociate_access_policy_request() :: #{}.


%% Example:
%% addon_pod_identity_configuration() :: #{
%%   <<"recommendedManagedPolicies">> => list(string()),
%%   <<"serviceAccount">> => string()
%% }
-type addon_pod_identity_configuration() :: #{binary() => any()}.


%% Example:
%% license() :: #{
%%   <<"id">> => string(),
%%   <<"token">> => string()
%% }
-type license() :: #{binary() => any()}.


%% Example:
%% update_access_entry_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"kubernetesGroups">> => list(string()),
%%   <<"username">> => string()
%% }
-type update_access_entry_request() :: #{binary() => any()}.


%% Example:
%% addon_compatibility_detail() :: #{
%%   <<"compatibleVersions">> => list(string()),
%%   <<"name">> => string()
%% }
-type addon_compatibility_detail() :: #{binary() => any()}.


%% Example:
%% nodegroup() :: #{
%%   <<"amiType">> => list(any()),
%%   <<"capacityType">> => list(any()),
%%   <<"clusterName">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"diskSize">> => integer(),
%%   <<"health">> => nodegroup_health(),
%%   <<"instanceTypes">> => list(string()),
%%   <<"labels">> => map(),
%%   <<"launchTemplate">> => launch_template_specification(),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"nodeRepairConfig">> => node_repair_config(),
%%   <<"nodeRole">> => string(),
%%   <<"nodegroupArn">> => string(),
%%   <<"nodegroupName">> => string(),
%%   <<"releaseVersion">> => string(),
%%   <<"remoteAccess">> => remote_access_config(),
%%   <<"resources">> => nodegroup_resources(),
%%   <<"scalingConfig">> => nodegroup_scaling_config(),
%%   <<"status">> => list(any()),
%%   <<"subnets">> => list(string()),
%%   <<"tags">> => map(),
%%   <<"taints">> => list(taint()),
%%   <<"updateConfig">> => nodegroup_update_config(),
%%   <<"version">> => string()
%% }
-type nodegroup() :: #{binary() => any()}.


%% Example:
%% nodegroup_scaling_config() :: #{
%%   <<"desiredSize">> => integer(),
%%   <<"maxSize">> => integer(),
%%   <<"minSize">> => integer()
%% }
-type nodegroup_scaling_config() :: #{binary() => any()}.


%% Example:
%% deregister_cluster_response() :: #{
%%   <<"cluster">> => cluster()
%% }
-type deregister_cluster_response() :: #{binary() => any()}.


%% Example:
%% list_eks_anywhere_subscriptions_request() :: #{
%%   <<"includeStatus">> => list(list(any())()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_eks_anywhere_subscriptions_request() :: #{binary() => any()}.


%% Example:
%% list_access_policies_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_access_policies_request() :: #{binary() => any()}.


%% Example:
%% list_insights_response() :: #{
%%   <<"insights">> => list(insight_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_insights_response() :: #{binary() => any()}.


%% Example:
%% elastic_load_balancing() :: #{
%%   <<"enabled">> => boolean()
%% }
-type elastic_load_balancing() :: #{binary() => any()}.


%% Example:
%% addon_pod_identity_associations() :: #{
%%   <<"roleArn">> => string(),
%%   <<"serviceAccount">> => string()
%% }
-type addon_pod_identity_associations() :: #{binary() => any()}.


%% Example:
%% identity_provider_config_response() :: #{
%%   <<"oidc">> => oidc_identity_provider_config()
%% }
-type identity_provider_config_response() :: #{binary() => any()}.


%% Example:
%% create_access_config_request() :: #{
%%   <<"authenticationMode">> => list(any()),
%%   <<"bootstrapClusterCreatorAdminPermissions">> => boolean()
%% }
-type create_access_config_request() :: #{binary() => any()}.

%% Example:
%% delete_eks_anywhere_subscription_request() :: #{}
-type delete_eks_anywhere_subscription_request() :: #{}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% invalid_state_exception() :: #{
%%   <<"clusterName">> => string(),
%%   <<"message">> => string()
%% }
-type invalid_state_exception() :: #{binary() => any()}.


%% Example:
%% register_cluster_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"connectorConfig">> := connector_config_request(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type register_cluster_request() :: #{binary() => any()}.


%% Example:
%% control_plane_placement_response() :: #{
%%   <<"groupName">> => string()
%% }
-type control_plane_placement_response() :: #{binary() => any()}.


%% Example:
%% insight_status() :: #{
%%   <<"reason">> => string(),
%%   <<"status">> => list(any())
%% }
-type insight_status() :: #{binary() => any()}.

%% Example:
%% disassociate_access_policy_response() :: #{}
-type disassociate_access_policy_response() :: #{}.


%% Example:
%% list_pod_identity_associations_response() :: #{
%%   <<"associations">> => list(pod_identity_association_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_pod_identity_associations_response() :: #{binary() => any()}.


%% Example:
%% list_addons_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_addons_request() :: #{binary() => any()}.


%% Example:
%% fargate_profile_issue() :: #{
%%   <<"code">> => list(any()),
%%   <<"message">> => string(),
%%   <<"resourceIds">> => list(string())
%% }
-type fargate_profile_issue() :: #{binary() => any()}.


%% Example:
%% compute_config_request() :: #{
%%   <<"enabled">> => boolean(),
%%   <<"nodePools">> => list(string()),
%%   <<"nodeRoleArn">> => string()
%% }
-type compute_config_request() :: #{binary() => any()}.


%% Example:
%% describe_addon_versions_request() :: #{
%%   <<"addonName">> => string(),
%%   <<"kubernetesVersion">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"owners">> => list(string()),
%%   <<"publishers">> => list(string()),
%%   <<"types">> => list(string())
%% }
-type describe_addon_versions_request() :: #{binary() => any()}.


%% Example:
%% addon() :: #{
%%   <<"addonArn">> => string(),
%%   <<"addonName">> => string(),
%%   <<"addonVersion">> => string(),
%%   <<"clusterName">> => string(),
%%   <<"configurationValues">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"health">> => addon_health(),
%%   <<"marketplaceInformation">> => marketplace_information(),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"owner">> => string(),
%%   <<"podIdentityAssociations">> => list(string()),
%%   <<"publisher">> => string(),
%%   <<"serviceAccountRoleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map()
%% }
-type addon() :: #{binary() => any()}.


%% Example:
%% update_taints_payload() :: #{
%%   <<"addOrUpdateTaints">> => list(taint()),
%%   <<"removeTaints">> => list(taint())
%% }
-type update_taints_payload() :: #{binary() => any()}.


%% Example:
%% access_entry() :: #{
%%   <<"accessEntryArn">> => string(),
%%   <<"clusterName">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"kubernetesGroups">> => list(string()),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"principalArn">> => string(),
%%   <<"tags">> => map(),
%%   <<"type">> => string(),
%%   <<"username">> => string()
%% }
-type access_entry() :: #{binary() => any()}.

%% Example:
%% describe_fargate_profile_request() :: #{}
-type describe_fargate_profile_request() :: #{}.


%% Example:
%% provider() :: #{
%%   <<"keyArn">> => string()
%% }
-type provider() :: #{binary() => any()}.


%% Example:
%% eks_anywhere_subscription_term() :: #{
%%   <<"duration">> => integer(),
%%   <<"unit">> => list(any())
%% }
-type eks_anywhere_subscription_term() :: #{binary() => any()}.


%% Example:
%% update_access_entry_response() :: #{
%%   <<"accessEntry">> => access_entry()
%% }
-type update_access_entry_response() :: #{binary() => any()}.


%% Example:
%% create_eks_anywhere_subscription_request() :: #{
%%   <<"autoRenew">> => boolean(),
%%   <<"clientRequestToken">> => string(),
%%   <<"licenseQuantity">> => integer(),
%%   <<"licenseType">> => list(any()),
%%   <<"name">> := string(),
%%   <<"tags">> => map(),
%%   <<"term">> := eks_anywhere_subscription_term()
%% }
-type create_eks_anywhere_subscription_request() :: #{binary() => any()}.


%% Example:
%% zonal_shift_config_request() :: #{
%%   <<"enabled">> => boolean()
%% }
-type zonal_shift_config_request() :: #{binary() => any()}.


%% Example:
%% create_cluster_request() :: #{
%%   <<"accessConfig">> => create_access_config_request(),
%%   <<"bootstrapSelfManagedAddons">> => boolean(),
%%   <<"clientRequestToken">> => string(),
%%   <<"computeConfig">> => compute_config_request(),
%%   <<"encryptionConfig">> => list(encryption_config()),
%%   <<"kubernetesNetworkConfig">> => kubernetes_network_config_request(),
%%   <<"logging">> => logging(),
%%   <<"name">> := string(),
%%   <<"outpostConfig">> => outpost_config_request(),
%%   <<"remoteNetworkConfig">> => remote_network_config_request(),
%%   <<"resourcesVpcConfig">> := vpc_config_request(),
%%   <<"roleArn">> := string(),
%%   <<"storageConfig">> => storage_config_request(),
%%   <<"tags">> => map(),
%%   <<"upgradePolicy">> => upgrade_policy_request(),
%%   <<"version">> => string(),
%%   <<"zonalShiftConfig">> => zonal_shift_config_request()
%% }
-type create_cluster_request() :: #{binary() => any()}.


%% Example:
%% update() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"errors">> => list(error_detail()),
%%   <<"id">> => string(),
%%   <<"params">> => list(update_param()),
%%   <<"status">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type update() :: #{binary() => any()}.


%% Example:
%% insights_filter() :: #{
%%   <<"categories">> => list(list(any())()),
%%   <<"kubernetesVersions">> => list(string()),
%%   <<"statuses">> => list(list(any())())
%% }
-type insights_filter() :: #{binary() => any()}.


%% Example:
%% associate_encryption_config_response() :: #{
%%   <<"update">> => update()
%% }
-type associate_encryption_config_response() :: #{binary() => any()}.


%% Example:
%% client_exception() :: #{
%%   <<"addonName">> => string(),
%%   <<"clusterName">> => string(),
%%   <<"message">> => string(),
%%   <<"nodegroupName">> => string(),
%%   <<"subscriptionId">> => string()
%% }
-type client_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"addonName">> => string(),
%%   <<"clusterName">> => string(),
%%   <<"fargateProfileName">> => string(),
%%   <<"message">> => string(),
%%   <<"nodegroupName">> => string(),
%%   <<"subscriptionId">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% update_addon_request() :: #{
%%   <<"addonVersion">> => string(),
%%   <<"clientRequestToken">> => string(),
%%   <<"configurationValues">> => string(),
%%   <<"podIdentityAssociations">> => list(addon_pod_identity_associations()),
%%   <<"resolveConflicts">> => list(any()),
%%   <<"serviceAccountRoleArn">> => string()
%% }
-type update_addon_request() :: #{binary() => any()}.


%% Example:
%% update_pod_identity_association_response() :: #{
%%   <<"association">> => pod_identity_association()
%% }
-type update_pod_identity_association_response() :: #{binary() => any()}.


%% Example:
%% outpost_config_request() :: #{
%%   <<"controlPlaneInstanceType">> => string(),
%%   <<"controlPlanePlacement">> => control_plane_placement_request(),
%%   <<"outpostArns">> => list(string())
%% }
-type outpost_config_request() :: #{binary() => any()}.


%% Example:
%% describe_fargate_profile_response() :: #{
%%   <<"fargateProfile">> => fargate_profile()
%% }
-type describe_fargate_profile_response() :: #{binary() => any()}.


%% Example:
%% describe_cluster_versions_request() :: #{
%%   <<"clusterType">> => string(),
%%   <<"clusterVersions">> => list(string()),
%%   <<"defaultOnly">> => boolean(),
%%   <<"includeAll">> => boolean(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"status">> => list(any()),
%%   <<"versionStatus">> => list(any())
%% }
-type describe_cluster_versions_request() :: #{binary() => any()}.


%% Example:
%% deprecation_detail() :: #{
%%   <<"clientStats">> => list(client_stat()),
%%   <<"replacedWith">> => string(),
%%   <<"startServingReplacementVersion">> => string(),
%%   <<"stopServingVersion">> => string(),
%%   <<"usage">> => string()
%% }
-type deprecation_detail() :: #{binary() => any()}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"addonName">> => string(),
%%   <<"clusterName">> => string(),
%%   <<"message">> => string(),
%%   <<"nodegroupName">> => string(),
%%   <<"subscriptionId">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% zonal_shift_config_response() :: #{
%%   <<"enabled">> => boolean()
%% }
-type zonal_shift_config_response() :: #{binary() => any()}.


%% Example:
%% upgrade_policy_response() :: #{
%%   <<"supportType">> => list(any())
%% }
-type upgrade_policy_response() :: #{binary() => any()}.


%% Example:
%% associate_encryption_config_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"encryptionConfig">> := list(encryption_config())
%% }
-type associate_encryption_config_request() :: #{binary() => any()}.


%% Example:
%% issue() :: #{
%%   <<"code">> => list(any()),
%%   <<"message">> => string(),
%%   <<"resourceIds">> => list(string())
%% }
-type issue() :: #{binary() => any()}.


%% Example:
%% create_eks_anywhere_subscription_response() :: #{
%%   <<"subscription">> => eks_anywhere_subscription()
%% }
-type create_eks_anywhere_subscription_response() :: #{binary() => any()}.


%% Example:
%% cluster() :: #{
%%   <<"accessConfig">> => access_config_response(),
%%   <<"arn">> => string(),
%%   <<"certificateAuthority">> => certificate(),
%%   <<"clientRequestToken">> => string(),
%%   <<"computeConfig">> => compute_config_response(),
%%   <<"connectorConfig">> => connector_config_response(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"encryptionConfig">> => list(encryption_config()),
%%   <<"endpoint">> => string(),
%%   <<"health">> => cluster_health(),
%%   <<"id">> => string(),
%%   <<"identity">> => identity(),
%%   <<"kubernetesNetworkConfig">> => kubernetes_network_config_response(),
%%   <<"logging">> => logging(),
%%   <<"name">> => string(),
%%   <<"outpostConfig">> => outpost_config_response(),
%%   <<"platformVersion">> => string(),
%%   <<"remoteNetworkConfig">> => remote_network_config_response(),
%%   <<"resourcesVpcConfig">> => vpc_config_response(),
%%   <<"roleArn">> => string(),
%%   <<"status">> => list(any()),
%%   <<"storageConfig">> => storage_config_response(),
%%   <<"tags">> => map(),
%%   <<"upgradePolicy">> => upgrade_policy_response(),
%%   <<"version">> => string(),
%%   <<"zonalShiftConfig">> => zonal_shift_config_response()
%% }
-type cluster() :: #{binary() => any()}.


%% Example:
%% update_cluster_config_response() :: #{
%%   <<"update">> => update()
%% }
-type update_cluster_config_response() :: #{binary() => any()}.


%% Example:
%% update_pod_identity_association_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"disableSessionTags">> => boolean(),
%%   <<"roleArn">> => string(),
%%   <<"targetRoleArn">> => string()
%% }
-type update_pod_identity_association_request() :: #{binary() => any()}.


%% Example:
%% list_updates_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"updateIds">> => list(string())
%% }
-type list_updates_response() :: #{binary() => any()}.


%% Example:
%% describe_addon_versions_response() :: #{
%%   <<"addons">> => list(addon_info()),
%%   <<"nextToken">> => string()
%% }
-type describe_addon_versions_response() :: #{binary() => any()}.


%% Example:
%% access_config_response() :: #{
%%   <<"authenticationMode">> => list(any()),
%%   <<"bootstrapClusterCreatorAdminPermissions">> => boolean()
%% }
-type access_config_response() :: #{binary() => any()}.


%% Example:
%% resource_limit_exceeded_exception() :: #{
%%   <<"clusterName">> => string(),
%%   <<"message">> => string(),
%%   <<"nodegroupName">> => string(),
%%   <<"subscriptionId">> => string()
%% }
-type resource_limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_updates_request() :: #{
%%   <<"addonName">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"nodegroupName">> => string()
%% }
-type list_updates_request() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% describe_cluster_versions_response() :: #{
%%   <<"clusterVersions">> => list(cluster_version_information()),
%%   <<"nextToken">> => string()
%% }
-type describe_cluster_versions_response() :: #{binary() => any()}.


%% Example:
%% fargate_profile_health() :: #{
%%   <<"issues">> => list(fargate_profile_issue())
%% }
-type fargate_profile_health() :: #{binary() => any()}.


%% Example:
%% create_addon_request() :: #{
%%   <<"addonName">> := string(),
%%   <<"addonVersion">> => string(),
%%   <<"clientRequestToken">> => string(),
%%   <<"configurationValues">> => string(),
%%   <<"podIdentityAssociations">> => list(addon_pod_identity_associations()),
%%   <<"resolveConflicts">> => list(any()),
%%   <<"serviceAccountRoleArn">> => string(),
%%   <<"tags">> => map()
%% }
-type create_addon_request() :: #{binary() => any()}.


%% Example:
%% remote_network_config_response() :: #{
%%   <<"remoteNodeNetworks">> => list(remote_node_network()),
%%   <<"remotePodNetworks">> => list(remote_pod_network())
%% }
-type remote_network_config_response() :: #{binary() => any()}.


%% Example:
%% describe_addon_configuration_request() :: #{
%%   <<"addonName">> := string(),
%%   <<"addonVersion">> := string()
%% }
-type describe_addon_configuration_request() :: #{binary() => any()}.

%% Example:
%% describe_nodegroup_request() :: #{}
-type describe_nodegroup_request() :: #{}.


%% Example:
%% describe_access_entry_response() :: #{
%%   <<"accessEntry">> => access_entry()
%% }
-type describe_access_entry_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% delete_pod_identity_association_response() :: #{
%%   <<"association">> => pod_identity_association()
%% }
-type delete_pod_identity_association_response() :: #{binary() => any()}.

%% Example:
%% describe_insight_request() :: #{}
-type describe_insight_request() :: #{}.


%% Example:
%% list_nodegroups_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_nodegroups_request() :: #{binary() => any()}.


%% Example:
%% vpc_config_request() :: #{
%%   <<"endpointPrivateAccess">> => boolean(),
%%   <<"endpointPublicAccess">> => boolean(),
%%   <<"publicAccessCidrs">> => list(string()),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"subnetIds">> => list(string())
%% }
-type vpc_config_request() :: #{binary() => any()}.


%% Example:
%% pod_identity_association_summary() :: #{
%%   <<"associationArn">> => string(),
%%   <<"associationId">> => string(),
%%   <<"clusterName">> => string(),
%%   <<"namespace">> => string(),
%%   <<"ownerArn">> => string(),
%%   <<"serviceAccount">> => string()
%% }
-type pod_identity_association_summary() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% associate_identity_provider_config_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"oidc">> := oidc_identity_provider_config_request(),
%%   <<"tags">> => map()
%% }
-type associate_identity_provider_config_request() :: #{binary() => any()}.


%% Example:
%% create_nodegroup_response() :: #{
%%   <<"nodegroup">> => nodegroup()
%% }
-type create_nodegroup_response() :: #{binary() => any()}.


%% Example:
%% disassociate_identity_provider_config_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"identityProviderConfig">> := identity_provider_config()
%% }
-type disassociate_identity_provider_config_request() :: #{binary() => any()}.


%% Example:
%% o_id_c() :: #{
%%   <<"issuer">> => string()
%% }
-type o_id_c() :: #{binary() => any()}.


%% Example:
%% list_clusters_response() :: #{
%%   <<"clusters">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_clusters_response() :: #{binary() => any()}.


%% Example:
%% delete_cluster_response() :: #{
%%   <<"cluster">> => cluster()
%% }
-type delete_cluster_response() :: #{binary() => any()}.


%% Example:
%% list_fargate_profiles_response() :: #{
%%   <<"fargateProfileNames">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_fargate_profiles_response() :: #{binary() => any()}.


%% Example:
%% node_repair_config() :: #{
%%   <<"enabled">> => boolean()
%% }
-type node_repair_config() :: #{binary() => any()}.

%% Example:
%% delete_fargate_profile_request() :: #{}
-type delete_fargate_profile_request() :: #{}.


%% Example:
%% block_storage() :: #{
%%   <<"enabled">> => boolean()
%% }
-type block_storage() :: #{binary() => any()}.


%% Example:
%% upgrade_policy_request() :: #{
%%   <<"supportType">> => list(any())
%% }
-type upgrade_policy_request() :: #{binary() => any()}.


%% Example:
%% associate_access_policy_response() :: #{
%%   <<"associatedAccessPolicy">> => associated_access_policy(),
%%   <<"clusterName">> => string(),
%%   <<"principalArn">> => string()
%% }
-type associate_access_policy_response() :: #{binary() => any()}.


%% Example:
%% update_addon_response() :: #{
%%   <<"update">> => update()
%% }
-type update_addon_response() :: #{binary() => any()}.


%% Example:
%% list_clusters_request() :: #{
%%   <<"include">> => list(string()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_clusters_request() :: #{binary() => any()}.


%% Example:
%% update_nodegroup_config_response() :: #{
%%   <<"update">> => update()
%% }
-type update_nodegroup_config_response() :: #{binary() => any()}.


%% Example:
%% update_nodegroup_version_response() :: #{
%%   <<"update">> => update()
%% }
-type update_nodegroup_version_response() :: #{binary() => any()}.


%% Example:
%% kubernetes_network_config_request() :: #{
%%   <<"elasticLoadBalancing">> => elastic_load_balancing(),
%%   <<"ipFamily">> => list(any()),
%%   <<"serviceIpv4Cidr">> => string()
%% }
-type kubernetes_network_config_request() :: #{binary() => any()}.


%% Example:
%% control_plane_placement_request() :: #{
%%   <<"groupName">> => string()
%% }
-type control_plane_placement_request() :: #{binary() => any()}.


%% Example:
%% certificate() :: #{
%%   <<"data">> => string()
%% }
-type certificate() :: #{binary() => any()}.


%% Example:
%% marketplace_information() :: #{
%%   <<"productId">> => string(),
%%   <<"productUrl">> => string()
%% }
-type marketplace_information() :: #{binary() => any()}.


%% Example:
%% insight_resource_detail() :: #{
%%   <<"arn">> => string(),
%%   <<"insightStatus">> => insight_status(),
%%   <<"kubernetesResourceUri">> => string()
%% }
-type insight_resource_detail() :: #{binary() => any()}.


%% Example:
%% create_access_entry_response() :: #{
%%   <<"accessEntry">> => access_entry()
%% }
-type create_access_entry_response() :: #{binary() => any()}.


%% Example:
%% associated_access_policy() :: #{
%%   <<"accessScope">> => access_scope(),
%%   <<"associatedAt">> => non_neg_integer(),
%%   <<"modifiedAt">> => non_neg_integer(),
%%   <<"policyArn">> => string()
%% }
-type associated_access_policy() :: #{binary() => any()}.

%% Example:
%% delete_cluster_request() :: #{}
-type delete_cluster_request() :: #{}.


%% Example:
%% delete_eks_anywhere_subscription_response() :: #{
%%   <<"subscription">> => eks_anywhere_subscription()
%% }
-type delete_eks_anywhere_subscription_response() :: #{binary() => any()}.


%% Example:
%% create_fargate_profile_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"fargateProfileName">> := string(),
%%   <<"podExecutionRoleArn">> := string(),
%%   <<"selectors">> => list(fargate_profile_selector()),
%%   <<"subnets">> => list(string()),
%%   <<"tags">> => map()
%% }
-type create_fargate_profile_request() :: #{binary() => any()}.


%% Example:
%% update_eks_anywhere_subscription_request() :: #{
%%   <<"autoRenew">> := boolean(),
%%   <<"clientRequestToken">> => string()
%% }
-type update_eks_anywhere_subscription_request() :: #{binary() => any()}.


%% Example:
%% error_detail() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => string(),
%%   <<"resourceIds">> => list(string())
%% }
-type error_detail() :: #{binary() => any()}.


%% Example:
%% update_param() :: #{
%%   <<"type">> => list(any()),
%%   <<"value">> => string()
%% }
-type update_param() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% eks_anywhere_subscription() :: #{
%%   <<"arn">> => string(),
%%   <<"autoRenew">> => boolean(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"effectiveDate">> => non_neg_integer(),
%%   <<"expirationDate">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"licenseArns">> => list(string()),
%%   <<"licenseQuantity">> => integer(),
%%   <<"licenseType">> => list(any()),
%%   <<"licenses">> => list(license()),
%%   <<"status">> => string(),
%%   <<"tags">> => map(),
%%   <<"term">> => eks_anywhere_subscription_term()
%% }
-type eks_anywhere_subscription() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"addonName">> => string(),
%%   <<"clusterName">> => string(),
%%   <<"fargateProfileName">> => string(),
%%   <<"message">> => string(),
%%   <<"nodegroupName">> => string(),
%%   <<"subscriptionId">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.


%% Example:
%% storage_config_request() :: #{
%%   <<"blockStorage">> => block_storage()
%% }
-type storage_config_request() :: #{binary() => any()}.

%% Example:
%% delete_pod_identity_association_request() :: #{}
-type delete_pod_identity_association_request() :: #{}.


%% Example:
%% cluster_health() :: #{
%%   <<"issues">> => list(cluster_issue())
%% }
-type cluster_health() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% remote_access_config() :: #{
%%   <<"ec2SshKey">> => string(),
%%   <<"sourceSecurityGroups">> => list(string())
%% }
-type remote_access_config() :: #{binary() => any()}.


%% Example:
%% list_identity_provider_configs_response() :: #{
%%   <<"identityProviderConfigs">> => list(identity_provider_config()),
%%   <<"nextToken">> => string()
%% }
-type list_identity_provider_configs_response() :: #{binary() => any()}.


%% Example:
%% list_associated_access_policies_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_associated_access_policies_request() :: #{binary() => any()}.


%% Example:
%% oidc_identity_provider_config_request() :: #{
%%   <<"clientId">> => string(),
%%   <<"groupsClaim">> => string(),
%%   <<"groupsPrefix">> => string(),
%%   <<"identityProviderConfigName">> => string(),
%%   <<"issuerUrl">> => string(),
%%   <<"requiredClaims">> => map(),
%%   <<"usernameClaim">> => string(),
%%   <<"usernamePrefix">> => string()
%% }
-type oidc_identity_provider_config_request() :: #{binary() => any()}.


%% Example:
%% create_access_entry_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"kubernetesGroups">> => list(string()),
%%   <<"principalArn">> := string(),
%%   <<"tags">> => map(),
%%   <<"type">> => string(),
%%   <<"username">> => string()
%% }
-type create_access_entry_request() :: #{binary() => any()}.


%% Example:
%% taint() :: #{
%%   <<"effect">> => list(any()),
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type taint() :: #{binary() => any()}.


%% Example:
%% auto_scaling_group() :: #{
%%   <<"name">> => string()
%% }
-type auto_scaling_group() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% addon_health() :: #{
%%   <<"issues">> => list(addon_issue())
%% }
-type addon_health() :: #{binary() => any()}.


%% Example:
%% describe_update_request() :: #{
%%   <<"addonName">> => string(),
%%   <<"nodegroupName">> => string()
%% }
-type describe_update_request() :: #{binary() => any()}.


%% Example:
%% oidc_identity_provider_config() :: #{
%%   <<"clientId">> => string(),
%%   <<"clusterName">> => string(),
%%   <<"groupsClaim">> => string(),
%%   <<"groupsPrefix">> => string(),
%%   <<"identityProviderConfigArn">> => string(),
%%   <<"identityProviderConfigName">> => string(),
%%   <<"issuerUrl">> => string(),
%%   <<"requiredClaims">> => map(),
%%   <<"status">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"usernameClaim">> => string(),
%%   <<"usernamePrefix">> => string()
%% }
-type oidc_identity_provider_config() :: #{binary() => any()}.


%% Example:
%% nodegroup_health() :: #{
%%   <<"issues">> => list(issue())
%% }
-type nodegroup_health() :: #{binary() => any()}.


%% Example:
%% update_nodegroup_version_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"force">> => boolean(),
%%   <<"launchTemplate">> => launch_template_specification(),
%%   <<"releaseVersion">> => string(),
%%   <<"version">> => string()
%% }
-type update_nodegroup_version_request() :: #{binary() => any()}.


%% Example:
%% connector_config_request() :: #{
%%   <<"provider">> => list(any()),
%%   <<"roleArn">> => string()
%% }
-type connector_config_request() :: #{binary() => any()}.

%% Example:
%% describe_access_entry_request() :: #{}
-type describe_access_entry_request() :: #{}.


%% Example:
%% delete_nodegroup_response() :: #{
%%   <<"nodegroup">> => nodegroup()
%% }
-type delete_nodegroup_response() :: #{binary() => any()}.


%% Example:
%% client_stat() :: #{
%%   <<"lastRequestTime">> => non_neg_integer(),
%%   <<"numberOfRequestsLast30Days">> => integer(),
%%   <<"userAgent">> => string()
%% }
-type client_stat() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"clusterName">> => string(),
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% connector_config_response() :: #{
%%   <<"activationCode">> => string(),
%%   <<"activationExpiry">> => non_neg_integer(),
%%   <<"activationId">> => string(),
%%   <<"provider">> => string(),
%%   <<"roleArn">> => string()
%% }
-type connector_config_response() :: #{binary() => any()}.


%% Example:
%% storage_config_response() :: #{
%%   <<"blockStorage">> => block_storage()
%% }
-type storage_config_response() :: #{binary() => any()}.


%% Example:
%% nodegroup_resources() :: #{
%%   <<"autoScalingGroups">> => list(auto_scaling_group()),
%%   <<"remoteAccessSecurityGroup">> => string()
%% }
-type nodegroup_resources() :: #{binary() => any()}.


%% Example:
%% disassociate_identity_provider_config_response() :: #{
%%   <<"update">> => update()
%% }
-type disassociate_identity_provider_config_response() :: #{binary() => any()}.


%% Example:
%% server_exception() :: #{
%%   <<"addonName">> => string(),
%%   <<"clusterName">> => string(),
%%   <<"message">> => string(),
%%   <<"nodegroupName">> => string(),
%%   <<"subscriptionId">> => string()
%% }
-type server_exception() :: #{binary() => any()}.


%% Example:
%% kubernetes_network_config_response() :: #{
%%   <<"elasticLoadBalancing">> => elastic_load_balancing(),
%%   <<"ipFamily">> => list(any()),
%%   <<"serviceIpv4Cidr">> => string(),
%%   <<"serviceIpv6Cidr">> => string()
%% }
-type kubernetes_network_config_response() :: #{binary() => any()}.


%% Example:
%% fargate_profile() :: #{
%%   <<"clusterName">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"fargateProfileArn">> => string(),
%%   <<"fargateProfileName">> => string(),
%%   <<"health">> => fargate_profile_health(),
%%   <<"podExecutionRoleArn">> => string(),
%%   <<"selectors">> => list(fargate_profile_selector()),
%%   <<"status">> => list(any()),
%%   <<"subnets">> => list(string()),
%%   <<"tags">> => map()
%% }
-type fargate_profile() :: #{binary() => any()}.


%% Example:
%% update_access_config_request() :: #{
%%   <<"authenticationMode">> => list(any())
%% }
-type update_access_config_request() :: #{binary() => any()}.


%% Example:
%% addon_info() :: #{
%%   <<"addonName">> => string(),
%%   <<"addonVersions">> => list(addon_version_info()),
%%   <<"marketplaceInformation">> => marketplace_information(),
%%   <<"owner">> => string(),
%%   <<"publisher">> => string(),
%%   <<"type">> => string()
%% }
-type addon_info() :: #{binary() => any()}.


%% Example:
%% list_eks_anywhere_subscriptions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"subscriptions">> => list(eks_anywhere_subscription())
%% }
-type list_eks_anywhere_subscriptions_response() :: #{binary() => any()}.


%% Example:
%% list_pod_identity_associations_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"namespace">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"serviceAccount">> => string()
%% }
-type list_pod_identity_associations_request() :: #{binary() => any()}.


%% Example:
%% remote_node_network() :: #{
%%   <<"cidrs">> => list(string())
%% }
-type remote_node_network() :: #{binary() => any()}.


%% Example:
%% update_cluster_version_response() :: #{
%%   <<"update">> => update()
%% }
-type update_cluster_version_response() :: #{binary() => any()}.


%% Example:
%% associate_access_policy_request() :: #{
%%   <<"accessScope">> := access_scope(),
%%   <<"policyArn">> := string()
%% }
-type associate_access_policy_request() :: #{binary() => any()}.


%% Example:
%% launch_template_specification() :: #{
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"version">> => string()
%% }
-type launch_template_specification() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% vpc_config_response() :: #{
%%   <<"clusterSecurityGroupId">> => string(),
%%   <<"endpointPrivateAccess">> => boolean(),
%%   <<"endpointPublicAccess">> => boolean(),
%%   <<"publicAccessCidrs">> => list(string()),
%%   <<"securityGroupIds">> => list(string()),
%%   <<"subnetIds">> => list(string()),
%%   <<"vpcId">> => string()
%% }
-type vpc_config_response() :: #{binary() => any()}.


%% Example:
%% update_eks_anywhere_subscription_response() :: #{
%%   <<"subscription">> => eks_anywhere_subscription()
%% }
-type update_eks_anywhere_subscription_response() :: #{binary() => any()}.


%% Example:
%% list_fargate_profiles_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_fargate_profiles_request() :: #{binary() => any()}.

%% Example:
%% describe_pod_identity_association_request() :: #{}
-type describe_pod_identity_association_request() :: #{}.

%% Example:
%% delete_access_entry_request() :: #{}
-type delete_access_entry_request() :: #{}.


%% Example:
%% insight() :: #{
%%   <<"additionalInfo">> => map(),
%%   <<"category">> => list(any()),
%%   <<"categorySpecificSummary">> => insight_category_specific_summary(),
%%   <<"description">> => string(),
%%   <<"id">> => string(),
%%   <<"insightStatus">> => insight_status(),
%%   <<"kubernetesVersion">> => string(),
%%   <<"lastRefreshTime">> => non_neg_integer(),
%%   <<"lastTransitionTime">> => non_neg_integer(),
%%   <<"name">> => string(),
%%   <<"recommendation">> => string(),
%%   <<"resources">> => list(insight_resource_detail())
%% }
-type insight() :: #{binary() => any()}.


%% Example:
%% update_cluster_config_request() :: #{
%%   <<"accessConfig">> => update_access_config_request(),
%%   <<"clientRequestToken">> => string(),
%%   <<"computeConfig">> => compute_config_request(),
%%   <<"kubernetesNetworkConfig">> => kubernetes_network_config_request(),
%%   <<"logging">> => logging(),
%%   <<"remoteNetworkConfig">> => remote_network_config_request(),
%%   <<"resourcesVpcConfig">> => vpc_config_request(),
%%   <<"storageConfig">> => storage_config_request(),
%%   <<"upgradePolicy">> => upgrade_policy_request(),
%%   <<"zonalShiftConfig">> => zonal_shift_config_request()
%% }
-type update_cluster_config_request() :: #{binary() => any()}.


%% Example:
%% remote_pod_network() :: #{
%%   <<"cidrs">> => list(string())
%% }
-type remote_pod_network() :: #{binary() => any()}.


%% Example:
%% cluster_issue() :: #{
%%   <<"code">> => list(any()),
%%   <<"message">> => string(),
%%   <<"resourceIds">> => list(string())
%% }
-type cluster_issue() :: #{binary() => any()}.

%% Example:
%% describe_addon_request() :: #{}
-type describe_addon_request() :: #{}.


%% Example:
%% list_addons_response() :: #{
%%   <<"addons">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_addons_response() :: #{binary() => any()}.


%% Example:
%% insight_category_specific_summary() :: #{
%%   <<"addonCompatibilityDetails">> => list(addon_compatibility_detail()),
%%   <<"deprecationDetails">> => list(deprecation_detail())
%% }
-type insight_category_specific_summary() :: #{binary() => any()}.


%% Example:
%% log_setup() :: #{
%%   <<"enabled">> => boolean(),
%%   <<"types">> => list(list(any())())
%% }
-type log_setup() :: #{binary() => any()}.


%% Example:
%% create_addon_response() :: #{
%%   <<"addon">> => addon()
%% }
-type create_addon_response() :: #{binary() => any()}.


%% Example:
%% register_cluster_response() :: #{
%%   <<"cluster">> => cluster()
%% }
-type register_cluster_response() :: #{binary() => any()}.


%% Example:
%% describe_nodegroup_response() :: #{
%%   <<"nodegroup">> => nodegroup()
%% }
-type describe_nodegroup_response() :: #{binary() => any()}.


%% Example:
%% list_access_entries_response() :: #{
%%   <<"accessEntries">> => list(string()),
%%   <<"nextToken">> => string()
%% }
-type list_access_entries_response() :: #{binary() => any()}.


%% Example:
%% create_pod_identity_association_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"disableSessionTags">> => boolean(),
%%   <<"namespace">> := string(),
%%   <<"roleArn">> := string(),
%%   <<"serviceAccount">> := string(),
%%   <<"tags">> => map(),
%%   <<"targetRoleArn">> => string()
%% }
-type create_pod_identity_association_request() :: #{binary() => any()}.


%% Example:
%% describe_identity_provider_config_response() :: #{
%%   <<"identityProviderConfig">> => identity_provider_config_response()
%% }
-type describe_identity_provider_config_response() :: #{binary() => any()}.


%% Example:
%% fargate_profile_selector() :: #{
%%   <<"labels">> => map(),
%%   <<"namespace">> => string()
%% }
-type fargate_profile_selector() :: #{binary() => any()}.


%% Example:
%% list_access_entries_request() :: #{
%%   <<"associatedPolicyArn">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_access_entries_request() :: #{binary() => any()}.


%% Example:
%% describe_pod_identity_association_response() :: #{
%%   <<"association">> => pod_identity_association()
%% }
-type describe_pod_identity_association_response() :: #{binary() => any()}.


%% Example:
%% logging() :: #{
%%   <<"clusterLogging">> => list(log_setup())
%% }
-type logging() :: #{binary() => any()}.


%% Example:
%% list_identity_provider_configs_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_identity_provider_configs_request() :: #{binary() => any()}.


%% Example:
%% update_cluster_version_request() :: #{
%%   <<"clientRequestToken">> => string(),
%%   <<"force">> => boolean(),
%%   <<"version">> := string()
%% }
-type update_cluster_version_request() :: #{binary() => any()}.


%% Example:
%% resource_propagation_delay_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_propagation_delay_exception() :: #{binary() => any()}.

%% Example:
%% describe_eks_anywhere_subscription_request() :: #{}
-type describe_eks_anywhere_subscription_request() :: #{}.

%% Example:
%% delete_access_entry_response() :: #{}
-type delete_access_entry_response() :: #{}.


%% Example:
%% describe_update_response() :: #{
%%   <<"update">> => update()
%% }
-type describe_update_response() :: #{binary() => any()}.


%% Example:
%% cluster_version_information() :: #{
%%   <<"clusterType">> => string(),
%%   <<"clusterVersion">> => string(),
%%   <<"defaultPlatformVersion">> => string(),
%%   <<"defaultVersion">> => boolean(),
%%   <<"endOfExtendedSupportDate">> => non_neg_integer(),
%%   <<"endOfStandardSupportDate">> => non_neg_integer(),
%%   <<"kubernetesPatchVersion">> => string(),
%%   <<"releaseDate">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"versionStatus">> => list(any())
%% }
-type cluster_version_information() :: #{binary() => any()}.


%% Example:
%% create_pod_identity_association_response() :: #{
%%   <<"association">> => pod_identity_association()
%% }
-type create_pod_identity_association_response() :: #{binary() => any()}.


%% Example:
%% addon_version_info() :: #{
%%   <<"addonVersion">> => string(),
%%   <<"architecture">> => list(string()),
%%   <<"compatibilities">> => list(compatibility()),
%%   <<"computeTypes">> => list(string()),
%%   <<"requiresConfiguration">> => boolean(),
%%   <<"requiresIamPermissions">> => boolean()
%% }
-type addon_version_info() :: #{binary() => any()}.

%% Example:
%% delete_nodegroup_request() :: #{}
-type delete_nodegroup_request() :: #{}.

-type associate_access_policy_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type associate_encryption_config_errors() ::
    server_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    resource_in_use_exception().

-type associate_identity_provider_config_errors() ::
    server_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    resource_in_use_exception().

-type create_access_entry_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type create_addon_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    resource_in_use_exception().

-type create_cluster_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    client_exception() | 
    resource_in_use_exception() | 
    unsupported_availability_zone_exception().

-type create_eks_anywhere_subscription_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    client_exception().

-type create_fargate_profile_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    unsupported_availability_zone_exception().

-type create_nodegroup_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_request_exception() | 
    client_exception() | 
    resource_in_use_exception().

-type create_pod_identity_association_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    resource_limit_exceeded_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_access_entry_errors() ::
    server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type delete_addon_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception().

-type delete_cluster_errors() ::
    server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    resource_in_use_exception().

-type delete_eks_anywhere_subscription_errors() ::
    server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception().

-type delete_fargate_profile_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    client_exception().

-type delete_nodegroup_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    resource_in_use_exception().

-type delete_pod_identity_association_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type deregister_cluster_errors() ::
    server_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    resource_in_use_exception().

-type describe_access_entry_errors() ::
    server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_addon_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception().

-type describe_addon_configuration_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception().

-type describe_addon_versions_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception().

-type describe_cluster_errors() ::
    server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    client_exception().

-type describe_cluster_versions_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception().

-type describe_eks_anywhere_subscription_errors() ::
    server_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    client_exception().

-type describe_fargate_profile_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    client_exception().

-type describe_identity_provider_config_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    client_exception().

-type describe_insight_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_nodegroup_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    client_exception().

-type describe_pod_identity_association_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type describe_update_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    client_exception().

-type disassociate_access_policy_errors() ::
    server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type disassociate_identity_provider_config_errors() ::
    server_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    resource_in_use_exception().

-type list_access_entries_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_access_policies_errors() ::
    server_exception().

-type list_addons_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception().

-type list_associated_access_policies_errors() ::
    server_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_clusters_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    client_exception().

-type list_eks_anywhere_subscriptions_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    client_exception().

-type list_fargate_profiles_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    client_exception().

-type list_identity_provider_configs_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    client_exception().

-type list_insights_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_nodegroups_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    service_unavailable_exception() | 
    resource_not_found_exception() | 
    client_exception().

-type list_pod_identity_associations_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    not_found_exception().

-type list_updates_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    resource_not_found_exception() | 
    client_exception().

-type register_cluster_errors() ::
    resource_propagation_delay_exception() | 
    server_exception() | 
    invalid_parameter_exception() | 
    access_denied_exception() | 
    service_unavailable_exception() | 
    resource_limit_exceeded_exception() | 
    client_exception() | 
    resource_in_use_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    not_found_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    not_found_exception().

-type update_access_entry_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_addon_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    resource_in_use_exception().

-type update_cluster_config_errors() ::
    server_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    resource_in_use_exception().

-type update_cluster_version_errors() ::
    server_exception() | 
    throttling_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    invalid_state_exception() | 
    resource_in_use_exception().

-type update_eks_anywhere_subscription_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception().

-type update_nodegroup_config_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    resource_in_use_exception().

-type update_nodegroup_version_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    client_exception() | 
    resource_in_use_exception().

-type update_pod_identity_association_errors() ::
    server_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates an access policy and its scope to an access entry.
%%
%% For more information
%% about associating access policies, see Associating and disassociating
%% access policies to and from access entries:
%% https://docs.aws.amazon.com/eks/latest/userguide/access-policies.html in
%% the Amazon EKS User Guide.
-spec associate_access_policy(aws_client:aws_client(), binary() | list(), binary() | list(), associate_access_policy_request()) ->
    {ok, associate_access_policy_response(), tuple()} |
    {error, any()} |
    {error, associate_access_policy_errors(), tuple()}.
associate_access_policy(Client, ClusterName, PrincipalArn, Input) ->
    associate_access_policy(Client, ClusterName, PrincipalArn, Input, []).

-spec associate_access_policy(aws_client:aws_client(), binary() | list(), binary() | list(), associate_access_policy_request(), proplists:proplist()) ->
    {ok, associate_access_policy_response(), tuple()} |
    {error, any()} |
    {error, associate_access_policy_errors(), tuple()}.
associate_access_policy(Client, ClusterName, PrincipalArn, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/access-entries/", aws_util:encode_uri(PrincipalArn), "/access-policies"],
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

%% @doc Associates an encryption configuration to an existing cluster.
%%
%% Use this API to enable encryption on existing clusters that don't
%% already have
%% encryption enabled. This allows you to implement a defense-in-depth
%% security strategy
%% without migrating applications to new Amazon EKS clusters.
-spec associate_encryption_config(aws_client:aws_client(), binary() | list(), associate_encryption_config_request()) ->
    {ok, associate_encryption_config_response(), tuple()} |
    {error, any()} |
    {error, associate_encryption_config_errors(), tuple()}.
associate_encryption_config(Client, ClusterName, Input) ->
    associate_encryption_config(Client, ClusterName, Input, []).

-spec associate_encryption_config(aws_client:aws_client(), binary() | list(), associate_encryption_config_request(), proplists:proplist()) ->
    {ok, associate_encryption_config_response(), tuple()} |
    {error, any()} |
    {error, associate_encryption_config_errors(), tuple()}.
associate_encryption_config(Client, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/encryption-config/associate"],
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

%% @doc Associates an identity provider configuration to a cluster.
%%
%% If you want to authenticate identities using an identity provider, you can
%% create an
%% identity provider configuration and associate it to your cluster. After
%% configuring
%% authentication to your cluster you can create Kubernetes `Role' and
%% `ClusterRole' objects, assign permissions to them, and then bind them
%% to
%% the identities using Kubernetes `RoleBinding' and
%% `ClusterRoleBinding'
%% objects. For more information see Using RBAC
%% Authorization:
%% https://kubernetes.io/docs/reference/access-authn-authz/rbac/ in the
%% Kubernetes documentation.
-spec associate_identity_provider_config(aws_client:aws_client(), binary() | list(), associate_identity_provider_config_request()) ->
    {ok, associate_identity_provider_config_response(), tuple()} |
    {error, any()} |
    {error, associate_identity_provider_config_errors(), tuple()}.
associate_identity_provider_config(Client, ClusterName, Input) ->
    associate_identity_provider_config(Client, ClusterName, Input, []).

-spec associate_identity_provider_config(aws_client:aws_client(), binary() | list(), associate_identity_provider_config_request(), proplists:proplist()) ->
    {ok, associate_identity_provider_config_response(), tuple()} |
    {error, any()} |
    {error, associate_identity_provider_config_errors(), tuple()}.
associate_identity_provider_config(Client, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/identity-provider-configs/associate"],
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

%% @doc Creates an access entry.
%%
%% An access entry allows an IAM principal to access your cluster. Access
%% entries can replace the need to maintain entries in the `aws-auth'
%% `ConfigMap' for authentication. You have the following options for
%% authorizing an IAM principal to access Kubernetes objects on your cluster:
%% Kubernetes
%% role-based access control (RBAC), Amazon EKS, or both. Kubernetes RBAC
%% authorization requires you
%% to create and manage Kubernetes `Role', `ClusterRole',
%% `RoleBinding', and `ClusterRoleBinding' objects, in addition
%% to managing access entries. If you use Amazon EKS authorization
%% exclusively, you don't need
%% to create and manage Kubernetes `Role', `ClusterRole',
%% `RoleBinding', and `ClusterRoleBinding' objects.
%%
%% For more information about access entries, see Access entries:
%% https://docs.aws.amazon.com/eks/latest/userguide/access-entries.html in
%% the
%% Amazon EKS User Guide.
-spec create_access_entry(aws_client:aws_client(), binary() | list(), create_access_entry_request()) ->
    {ok, create_access_entry_response(), tuple()} |
    {error, any()} |
    {error, create_access_entry_errors(), tuple()}.
create_access_entry(Client, ClusterName, Input) ->
    create_access_entry(Client, ClusterName, Input, []).

-spec create_access_entry(aws_client:aws_client(), binary() | list(), create_access_entry_request(), proplists:proplist()) ->
    {ok, create_access_entry_response(), tuple()} |
    {error, any()} |
    {error, create_access_entry_errors(), tuple()}.
create_access_entry(Client, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/access-entries"],
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

%% @doc Creates an Amazon EKS add-on.
%%
%% Amazon EKS add-ons help to automate the provisioning and lifecycle
%% management of common
%% operational software for Amazon EKS clusters. For more information, see
%% Amazon EKS
%% add-ons: https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html
%% in the Amazon EKS User Guide.
-spec create_addon(aws_client:aws_client(), binary() | list(), create_addon_request()) ->
    {ok, create_addon_response(), tuple()} |
    {error, any()} |
    {error, create_addon_errors(), tuple()}.
create_addon(Client, ClusterName, Input) ->
    create_addon(Client, ClusterName, Input, []).

-spec create_addon(aws_client:aws_client(), binary() | list(), create_addon_request(), proplists:proplist()) ->
    {ok, create_addon_response(), tuple()} |
    {error, any()} |
    {error, create_addon_errors(), tuple()}.
create_addon(Client, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/addons"],
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

%% @doc Creates an Amazon EKS control plane.
%%
%% The Amazon EKS control plane consists of control plane instances that run
%% the Kubernetes
%% software, such as `etcd' and the API server. The control plane runs in
%% an
%% account managed by Amazon Web Services, and the Kubernetes API is exposed
%% by the Amazon EKS API server endpoint.
%% Each Amazon EKS cluster control plane is single tenant and unique. It runs
%% on its own set of
%% Amazon EC2 instances.
%%
%% The cluster control plane is provisioned across multiple Availability
%% Zones and fronted by an Elastic Load Balancing
%% Network Load Balancer. Amazon EKS also provisions elastic network
%% interfaces in your VPC subnets to provide
%% connectivity from the control plane instances to the nodes (for example,
%% to support
%% `kubectl exec', `logs', and `proxy' data
%% flows).
%%
%% Amazon EKS nodes run in your Amazon Web Services account and connect to
%% your cluster's control plane over
%% the Kubernetes API server endpoint and a certificate file that is created
%% for your
%% cluster.
%%
%% You can use the `endpointPublicAccess' and
%% `endpointPrivateAccess' parameters to enable or disable public and
%% private access to your cluster's Kubernetes API server endpoint. By
%% default, public access is
%% enabled, and private access is disabled. The
%% endpoint domain name and IP address family depends on the value of the
%% `ipFamily' for the cluster. For more information, see Amazon EKS
%% Cluster
%% Endpoint Access Control:
%% https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html in
%% the
%% Amazon EKS User Guide
%% .
%%
%% You can use the `logging' parameter to enable or disable exporting the
%% Kubernetes control plane logs for your cluster to CloudWatch Logs. By
%% default, cluster control plane
%% logs aren't exported to CloudWatch Logs. For more information, see
%% Amazon EKS
%% Cluster Control Plane Logs:
%% https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html
%% in the
%%
%% Amazon EKS User Guide
%% .
%%
%% CloudWatch Logs ingestion, archive storage, and data scanning rates apply
%% to exported
%% control plane logs. For more information, see CloudWatch Pricing:
%% http://aws.amazon.com/cloudwatch/pricing/.
%%
%% In most cases, it takes several minutes to create a cluster. After you
%% create an Amazon EKS
%% cluster, you must configure your Kubernetes tooling to communicate with
%% the API server and
%% launch nodes into your cluster. For more information, see Allowing users
%% to
%% access your cluster:
%% https://docs.aws.amazon.com/eks/latest/userguide/cluster-auth.html and
%% Launching Amazon EKS
%% nodes:
%% https://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html in
%% the Amazon EKS User Guide.
-spec create_cluster(aws_client:aws_client(), create_cluster_request()) ->
    {ok, create_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input) ->
    create_cluster(Client, Input, []).

-spec create_cluster(aws_client:aws_client(), create_cluster_request(), proplists:proplist()) ->
    {ok, create_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input0, Options0) ->
    Method = post,
    Path = ["/clusters"],
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

%% @doc Creates an EKS Anywhere subscription.
%%
%% When a subscription is created, it is a contract
%% agreement for the length of the term specified in the request. Licenses
%% that are used to
%% validate support are provisioned in Amazon Web Services License Manager
%% and the caller account is
%% granted access to EKS Anywhere Curated Packages.
-spec create_eks_anywhere_subscription(aws_client:aws_client(), create_eks_anywhere_subscription_request()) ->
    {ok, create_eks_anywhere_subscription_response(), tuple()} |
    {error, any()} |
    {error, create_eks_anywhere_subscription_errors(), tuple()}.
create_eks_anywhere_subscription(Client, Input) ->
    create_eks_anywhere_subscription(Client, Input, []).

-spec create_eks_anywhere_subscription(aws_client:aws_client(), create_eks_anywhere_subscription_request(), proplists:proplist()) ->
    {ok, create_eks_anywhere_subscription_response(), tuple()} |
    {error, any()} |
    {error, create_eks_anywhere_subscription_errors(), tuple()}.
create_eks_anywhere_subscription(Client, Input0, Options0) ->
    Method = post,
    Path = ["/eks-anywhere-subscriptions"],
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

%% @doc Creates an Fargate profile for your Amazon EKS cluster.
%%
%% You must have at least one
%% Fargate profile in a cluster to be able to run pods on Fargate.
%%
%% The Fargate profile allows an administrator to declare which pods run on
%% Fargate
%% and specify which pods run on which Fargate profile. This declaration is
%% done through
%% the profile's selectors. Each profile can have up to five selectors
%% that contain a
%% namespace and labels. A namespace is required for every selector. The
%% label field
%% consists of multiple optional key-value pairs. Pods that match the
%% selectors are
%% scheduled on Fargate. If a to-be-scheduled pod matches any of the
%% selectors in the
%% Fargate profile, then that pod is run on Fargate.
%%
%% When you create a Fargate profile, you must specify a pod execution role
%% to use with
%% the pods that are scheduled with the profile. This role is added to the
%% cluster's Kubernetes
%% Role
%% Based Access Control:
%% https://kubernetes.io/docs/reference/access-authn-authz/rbac/ (RBAC) for
%% authorization so that the
%% `kubelet' that is running on the Fargate infrastructure can register
%% with your Amazon EKS cluster so that it can appear in your cluster as a
%% node. The pod
%% execution role also provides IAM permissions to the Fargate infrastructure
%% to allow
%% read access to Amazon ECR image repositories. For more information, see
%% Pod
%% Execution Role:
%% https://docs.aws.amazon.com/eks/latest/userguide/pod-execution-role.html
%% in the Amazon EKS User Guide.
%%
%% Fargate profiles are immutable. However, you can create a new updated
%% profile to
%% replace an existing profile and then delete the original after the updated
%% profile has
%% finished creating.
%%
%% If any Fargate profiles in a cluster are in the `DELETING' status, you
%% must wait for that Fargate profile to finish deleting before you can
%% create any other
%% profiles in that cluster.
%%
%% For more information, see Fargate profile:
%% https://docs.aws.amazon.com/eks/latest/userguide/fargate-profile.html in
%% the Amazon EKS User Guide.
-spec create_fargate_profile(aws_client:aws_client(), binary() | list(), create_fargate_profile_request()) ->
    {ok, create_fargate_profile_response(), tuple()} |
    {error, any()} |
    {error, create_fargate_profile_errors(), tuple()}.
create_fargate_profile(Client, ClusterName, Input) ->
    create_fargate_profile(Client, ClusterName, Input, []).

-spec create_fargate_profile(aws_client:aws_client(), binary() | list(), create_fargate_profile_request(), proplists:proplist()) ->
    {ok, create_fargate_profile_response(), tuple()} |
    {error, any()} |
    {error, create_fargate_profile_errors(), tuple()}.
create_fargate_profile(Client, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/fargate-profiles"],
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

%% @doc Creates a managed node group for an Amazon EKS cluster.
%%
%% You can only create a node group for your cluster that is equal to the
%% current Kubernetes
%% version for the cluster. All node groups are created with the latest AMI
%% release version
%% for the respective minor Kubernetes version of the cluster, unless you
%% deploy a custom AMI
%% using a launch template.
%%
%% For later updates, you will only be able to update a node group using a
%% launch
%% template only if it was originally deployed with a launch template.
%% Additionally, the
%% launch template ID or name must match what was used when the node group
%% was created. You
%% can update the launch template version with necessary changes. For more
%% information
%% about using launch templates, see Customizing managed nodes with
%% launch templates:
%% https://docs.aws.amazon.com/eks/latest/userguide/launch-templates.html.
%%
%% An Amazon EKS managed node group is an Amazon EC2 Auto Scaling group and
%% associated Amazon EC2 instances that
%% are managed by Amazon Web Services for an Amazon EKS cluster. For more
%% information, see Managed
%% node groups:
%% https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html
%% in the Amazon EKS User Guide.
%%
%% Windows AMI types are only supported for commercial Amazon Web Services
%% Regions that support
%% Windows on Amazon EKS.
-spec create_nodegroup(aws_client:aws_client(), binary() | list(), create_nodegroup_request()) ->
    {ok, create_nodegroup_response(), tuple()} |
    {error, any()} |
    {error, create_nodegroup_errors(), tuple()}.
create_nodegroup(Client, ClusterName, Input) ->
    create_nodegroup(Client, ClusterName, Input, []).

-spec create_nodegroup(aws_client:aws_client(), binary() | list(), create_nodegroup_request(), proplists:proplist()) ->
    {ok, create_nodegroup_response(), tuple()} |
    {error, any()} |
    {error, create_nodegroup_errors(), tuple()}.
create_nodegroup(Client, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/node-groups"],
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

%% @doc Creates an EKS Pod Identity association between a service account in
%% an Amazon EKS cluster and an IAM role
%% with EKS Pod Identity.
%%
%% Use EKS Pod Identity to give temporary IAM credentials to
%% Pods and the credentials are rotated automatically.
%%
%% Amazon EKS Pod Identity associations provide the ability to manage
%% credentials for your applications, similar to the way that Amazon EC2
%% instance profiles provide credentials to Amazon EC2 instances.
%%
%% If a Pod uses a service account that has an association, Amazon EKS sets
%% environment variables
%% in the containers of the Pod. The environment variables configure the
%% Amazon Web Services SDKs,
%% including the Command Line Interface, to use the EKS Pod Identity
%% credentials.
%%
%% EKS Pod Identity is a simpler method than IAM roles for service
%% accounts, as this method doesn't use OIDC identity providers.
%% Additionally, you can configure a role for EKS Pod Identity once, and
%% reuse it across
%% clusters.
%%
%% Similar to Amazon Web Services IAM behavior, EKS Pod Identity associations
%% are eventually consistent,
%% and may take several seconds to be effective after the initial API call
%% returns
%% successfully. You must design your applications to account for these
%% potential delays.
%% We recommend that you don’t include association create/updates in the
%% critical, high-availability code paths of your application. Instead, make
%% changes in a
%% separate initialization or setup routine that you run less frequently.
%%
%% You can set a target IAM role in the same or a different
%% account for advanced scenarios. With a target role, EKS Pod Identity
%% automatically performs two
%% role assumptions in sequence: first assuming the role in the association
%% that is in this
%% account, then using those credentials to assume the target IAM role. This
%% process
%% provides your Pod with temporary credentials that have the permissions
%% defined in the
%% target role, allowing secure access to resources in another Amazon Web
%% Services account.
-spec create_pod_identity_association(aws_client:aws_client(), binary() | list(), create_pod_identity_association_request()) ->
    {ok, create_pod_identity_association_response(), tuple()} |
    {error, any()} |
    {error, create_pod_identity_association_errors(), tuple()}.
create_pod_identity_association(Client, ClusterName, Input) ->
    create_pod_identity_association(Client, ClusterName, Input, []).

-spec create_pod_identity_association(aws_client:aws_client(), binary() | list(), create_pod_identity_association_request(), proplists:proplist()) ->
    {ok, create_pod_identity_association_response(), tuple()} |
    {error, any()} |
    {error, create_pod_identity_association_errors(), tuple()}.
create_pod_identity_association(Client, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/pod-identity-associations"],
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

%% @doc Deletes an access entry.
%%
%% Deleting an access entry of a type other than `Standard' can cause
%% your
%% cluster to function improperly. If you delete an access entry in error,
%% you can recreate
%% it.
-spec delete_access_entry(aws_client:aws_client(), binary() | list(), binary() | list(), delete_access_entry_request()) ->
    {ok, delete_access_entry_response(), tuple()} |
    {error, any()} |
    {error, delete_access_entry_errors(), tuple()}.
delete_access_entry(Client, ClusterName, PrincipalArn, Input) ->
    delete_access_entry(Client, ClusterName, PrincipalArn, Input, []).

-spec delete_access_entry(aws_client:aws_client(), binary() | list(), binary() | list(), delete_access_entry_request(), proplists:proplist()) ->
    {ok, delete_access_entry_response(), tuple()} |
    {error, any()} |
    {error, delete_access_entry_errors(), tuple()}.
delete_access_entry(Client, ClusterName, PrincipalArn, Input0, Options0) ->
    Method = delete,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/access-entries/", aws_util:encode_uri(PrincipalArn), ""],
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

%% @doc Deletes an Amazon EKS add-on.
%%
%% When you remove an add-on, it's deleted from the cluster. You can
%% always manually
%% start an add-on on the cluster using the Kubernetes API.
-spec delete_addon(aws_client:aws_client(), binary() | list(), binary() | list(), delete_addon_request()) ->
    {ok, delete_addon_response(), tuple()} |
    {error, any()} |
    {error, delete_addon_errors(), tuple()}.
delete_addon(Client, AddonName, ClusterName, Input) ->
    delete_addon(Client, AddonName, ClusterName, Input, []).

-spec delete_addon(aws_client:aws_client(), binary() | list(), binary() | list(), delete_addon_request(), proplists:proplist()) ->
    {ok, delete_addon_response(), tuple()} |
    {error, any()} |
    {error, delete_addon_errors(), tuple()}.
delete_addon(Client, AddonName, ClusterName, Input0, Options0) ->
    Method = delete,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/addons/", aws_util:encode_uri(AddonName), ""],
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
                     {<<"preserve">>, <<"preserve">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Amazon EKS cluster control plane.
%%
%% If you have active services in your cluster that are associated with a
%% load balancer,
%% you must delete those services before deleting the cluster so that the
%% load balancers
%% are deleted properly. Otherwise, you can have orphaned resources in your
%% VPC that
%% prevent you from being able to delete the VPC. For more information, see
%% Deleting a
%% cluster:
%% https://docs.aws.amazon.com/eks/latest/userguide/delete-cluster.html in
%% the Amazon EKS User Guide.
%%
%% If you have managed node groups or Fargate profiles attached to the
%% cluster, you
%% must delete them first. For more information, see `DeleteNodgroup' and
%% `DeleteFargateProfile'.
-spec delete_cluster(aws_client:aws_client(), binary() | list(), delete_cluster_request()) ->
    {ok, delete_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, Name, Input) ->
    delete_cluster(Client, Name, Input, []).

-spec delete_cluster(aws_client:aws_client(), binary() | list(), delete_cluster_request(), proplists:proplist()) ->
    {ok, delete_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/clusters/", aws_util:encode_uri(Name), ""],
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

%% @doc Deletes an expired or inactive subscription.
%%
%% Deleting inactive subscriptions removes
%% them from the Amazon Web Services Management Console view and from
%% list/describe API responses. Subscriptions can
%% only be cancelled within 7 days of creation and are cancelled by creating
%% a ticket in
%% the Amazon Web Services Support Center.
-spec delete_eks_anywhere_subscription(aws_client:aws_client(), binary() | list(), delete_eks_anywhere_subscription_request()) ->
    {ok, delete_eks_anywhere_subscription_response(), tuple()} |
    {error, any()} |
    {error, delete_eks_anywhere_subscription_errors(), tuple()}.
delete_eks_anywhere_subscription(Client, Id, Input) ->
    delete_eks_anywhere_subscription(Client, Id, Input, []).

-spec delete_eks_anywhere_subscription(aws_client:aws_client(), binary() | list(), delete_eks_anywhere_subscription_request(), proplists:proplist()) ->
    {ok, delete_eks_anywhere_subscription_response(), tuple()} |
    {error, any()} |
    {error, delete_eks_anywhere_subscription_errors(), tuple()}.
delete_eks_anywhere_subscription(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/eks-anywhere-subscriptions/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes an Fargate profile.
%%
%% When you delete a Fargate profile, any `Pod' running on Fargate that
%% was created with the profile is deleted. If the `Pod' matches another
%% Fargate profile, then it is scheduled on Fargate with that profile. If it
%% no longer
%% matches any Fargate profiles, then it's not scheduled on Fargate and
%% may remain in a
%% pending state.
%%
%% Only one Fargate profile in a cluster can be in the `DELETING' status
%% at
%% a time. You must wait for a Fargate profile to finish deleting before you
%% can delete
%% any other profiles in that cluster.
-spec delete_fargate_profile(aws_client:aws_client(), binary() | list(), binary() | list(), delete_fargate_profile_request()) ->
    {ok, delete_fargate_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_fargate_profile_errors(), tuple()}.
delete_fargate_profile(Client, ClusterName, FargateProfileName, Input) ->
    delete_fargate_profile(Client, ClusterName, FargateProfileName, Input, []).

-spec delete_fargate_profile(aws_client:aws_client(), binary() | list(), binary() | list(), delete_fargate_profile_request(), proplists:proplist()) ->
    {ok, delete_fargate_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_fargate_profile_errors(), tuple()}.
delete_fargate_profile(Client, ClusterName, FargateProfileName, Input0, Options0) ->
    Method = delete,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/fargate-profiles/", aws_util:encode_uri(FargateProfileName), ""],
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

%% @doc Deletes a managed node group.
-spec delete_nodegroup(aws_client:aws_client(), binary() | list(), binary() | list(), delete_nodegroup_request()) ->
    {ok, delete_nodegroup_response(), tuple()} |
    {error, any()} |
    {error, delete_nodegroup_errors(), tuple()}.
delete_nodegroup(Client, ClusterName, NodegroupName, Input) ->
    delete_nodegroup(Client, ClusterName, NodegroupName, Input, []).

-spec delete_nodegroup(aws_client:aws_client(), binary() | list(), binary() | list(), delete_nodegroup_request(), proplists:proplist()) ->
    {ok, delete_nodegroup_response(), tuple()} |
    {error, any()} |
    {error, delete_nodegroup_errors(), tuple()}.
delete_nodegroup(Client, ClusterName, NodegroupName, Input0, Options0) ->
    Method = delete,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/node-groups/", aws_util:encode_uri(NodegroupName), ""],
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

%% @doc Deletes a EKS Pod Identity association.
%%
%% The temporary Amazon Web Services credentials from the previous IAM role
%% session might still be valid until the session expiry. If you need to
%% immediately revoke the temporary session credentials, then go to the role
%% in the IAM console.
-spec delete_pod_identity_association(aws_client:aws_client(), binary() | list(), binary() | list(), delete_pod_identity_association_request()) ->
    {ok, delete_pod_identity_association_response(), tuple()} |
    {error, any()} |
    {error, delete_pod_identity_association_errors(), tuple()}.
delete_pod_identity_association(Client, AssociationId, ClusterName, Input) ->
    delete_pod_identity_association(Client, AssociationId, ClusterName, Input, []).

-spec delete_pod_identity_association(aws_client:aws_client(), binary() | list(), binary() | list(), delete_pod_identity_association_request(), proplists:proplist()) ->
    {ok, delete_pod_identity_association_response(), tuple()} |
    {error, any()} |
    {error, delete_pod_identity_association_errors(), tuple()}.
delete_pod_identity_association(Client, AssociationId, ClusterName, Input0, Options0) ->
    Method = delete,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/pod-identity-associations/", aws_util:encode_uri(AssociationId), ""],
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

%% @doc Deregisters a connected cluster to remove it from the Amazon EKS
%% control plane.
%%
%% A connected cluster is a Kubernetes cluster that you've connected to
%% your control plane
%% using the Amazon EKS Connector:
%% https://docs.aws.amazon.com/eks/latest/userguide/eks-connector.html.
-spec deregister_cluster(aws_client:aws_client(), binary() | list(), deregister_cluster_request()) ->
    {ok, deregister_cluster_response(), tuple()} |
    {error, any()} |
    {error, deregister_cluster_errors(), tuple()}.
deregister_cluster(Client, Name, Input) ->
    deregister_cluster(Client, Name, Input, []).

-spec deregister_cluster(aws_client:aws_client(), binary() | list(), deregister_cluster_request(), proplists:proplist()) ->
    {ok, deregister_cluster_response(), tuple()} |
    {error, any()} |
    {error, deregister_cluster_errors(), tuple()}.
deregister_cluster(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/cluster-registrations/", aws_util:encode_uri(Name), ""],
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

%% @doc Describes an access entry.
-spec describe_access_entry(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_access_entry_response(), tuple()} |
    {error, any()} |
    {error, describe_access_entry_errors(), tuple()}.
describe_access_entry(Client, ClusterName, PrincipalArn)
  when is_map(Client) ->
    describe_access_entry(Client, ClusterName, PrincipalArn, #{}, #{}).

-spec describe_access_entry(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_access_entry_response(), tuple()} |
    {error, any()} |
    {error, describe_access_entry_errors(), tuple()}.
describe_access_entry(Client, ClusterName, PrincipalArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_access_entry(Client, ClusterName, PrincipalArn, QueryMap, HeadersMap, []).

-spec describe_access_entry(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_access_entry_response(), tuple()} |
    {error, any()} |
    {error, describe_access_entry_errors(), tuple()}.
describe_access_entry(Client, ClusterName, PrincipalArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/access-entries/", aws_util:encode_uri(PrincipalArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an Amazon EKS add-on.
-spec describe_addon(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_addon_response(), tuple()} |
    {error, any()} |
    {error, describe_addon_errors(), tuple()}.
describe_addon(Client, AddonName, ClusterName)
  when is_map(Client) ->
    describe_addon(Client, AddonName, ClusterName, #{}, #{}).

-spec describe_addon(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_addon_response(), tuple()} |
    {error, any()} |
    {error, describe_addon_errors(), tuple()}.
describe_addon(Client, AddonName, ClusterName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_addon(Client, AddonName, ClusterName, QueryMap, HeadersMap, []).

-spec describe_addon(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_addon_response(), tuple()} |
    {error, any()} |
    {error, describe_addon_errors(), tuple()}.
describe_addon(Client, AddonName, ClusterName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/addons/", aws_util:encode_uri(AddonName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns configuration options.
-spec describe_addon_configuration(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_addon_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_addon_configuration_errors(), tuple()}.
describe_addon_configuration(Client, AddonName, AddonVersion)
  when is_map(Client) ->
    describe_addon_configuration(Client, AddonName, AddonVersion, #{}, #{}).

-spec describe_addon_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_addon_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_addon_configuration_errors(), tuple()}.
describe_addon_configuration(Client, AddonName, AddonVersion, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_addon_configuration(Client, AddonName, AddonVersion, QueryMap, HeadersMap, []).

-spec describe_addon_configuration(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_addon_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_addon_configuration_errors(), tuple()}.
describe_addon_configuration(Client, AddonName, AddonVersion, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/addons/configuration-schemas"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"addonName">>, AddonName},
        {<<"addonVersion">>, AddonVersion}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the versions for an add-on.
%%
%% Information such as the Kubernetes versions that you can use the add-on
%% with, the
%% `owner', `publisher', and the `type' of the add-on
%% are returned.
-spec describe_addon_versions(aws_client:aws_client()) ->
    {ok, describe_addon_versions_response(), tuple()} |
    {error, any()} |
    {error, describe_addon_versions_errors(), tuple()}.
describe_addon_versions(Client)
  when is_map(Client) ->
    describe_addon_versions(Client, #{}, #{}).

-spec describe_addon_versions(aws_client:aws_client(), map(), map()) ->
    {ok, describe_addon_versions_response(), tuple()} |
    {error, any()} |
    {error, describe_addon_versions_errors(), tuple()}.
describe_addon_versions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_addon_versions(Client, QueryMap, HeadersMap, []).

-spec describe_addon_versions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_addon_versions_response(), tuple()} |
    {error, any()} |
    {error, describe_addon_versions_errors(), tuple()}.
describe_addon_versions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/addons/supported-versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"addonName">>, maps:get(<<"addonName">>, QueryMap, undefined)},
        {<<"kubernetesVersion">>, maps:get(<<"kubernetesVersion">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"owners">>, maps:get(<<"owners">>, QueryMap, undefined)},
        {<<"publishers">>, maps:get(<<"publishers">>, QueryMap, undefined)},
        {<<"types">>, maps:get(<<"types">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an Amazon EKS cluster.
%%
%% The API server endpoint and certificate authority data returned by this
%% operation are
%% required for `kubelet' and `kubectl' to communicate with your
%% Kubernetes API server. For more information, see Creating or
%% updating a `kubeconfig' file for an Amazon EKS cluster:
%% https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html.
%%
%% The API server endpoint and certificate authority data aren't
%% available until the
%% cluster reaches the `ACTIVE' state.
-spec describe_cluster(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_cluster_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_errors(), tuple()}.
describe_cluster(Client, Name)
  when is_map(Client) ->
    describe_cluster(Client, Name, #{}, #{}).

-spec describe_cluster(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_cluster_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_errors(), tuple()}.
describe_cluster(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_cluster(Client, Name, QueryMap, HeadersMap, []).

-spec describe_cluster(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_cluster_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_errors(), tuple()}.
describe_cluster(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists available Kubernetes versions for Amazon EKS clusters.
-spec describe_cluster_versions(aws_client:aws_client()) ->
    {ok, describe_cluster_versions_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_versions_errors(), tuple()}.
describe_cluster_versions(Client)
  when is_map(Client) ->
    describe_cluster_versions(Client, #{}, #{}).

-spec describe_cluster_versions(aws_client:aws_client(), map(), map()) ->
    {ok, describe_cluster_versions_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_versions_errors(), tuple()}.
describe_cluster_versions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_cluster_versions(Client, QueryMap, HeadersMap, []).

-spec describe_cluster_versions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_cluster_versions_response(), tuple()} |
    {error, any()} |
    {error, describe_cluster_versions_errors(), tuple()}.
describe_cluster_versions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/cluster-versions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"clusterType">>, maps:get(<<"clusterType">>, QueryMap, undefined)},
        {<<"clusterVersions">>, maps:get(<<"clusterVersions">>, QueryMap, undefined)},
        {<<"defaultOnly">>, maps:get(<<"defaultOnly">>, QueryMap, undefined)},
        {<<"includeAll">>, maps:get(<<"includeAll">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"status">>, maps:get(<<"status">>, QueryMap, undefined)},
        {<<"versionStatus">>, maps:get(<<"versionStatus">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns descriptive information about a subscription.
-spec describe_eks_anywhere_subscription(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_eks_anywhere_subscription_response(), tuple()} |
    {error, any()} |
    {error, describe_eks_anywhere_subscription_errors(), tuple()}.
describe_eks_anywhere_subscription(Client, Id)
  when is_map(Client) ->
    describe_eks_anywhere_subscription(Client, Id, #{}, #{}).

-spec describe_eks_anywhere_subscription(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_eks_anywhere_subscription_response(), tuple()} |
    {error, any()} |
    {error, describe_eks_anywhere_subscription_errors(), tuple()}.
describe_eks_anywhere_subscription(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_eks_anywhere_subscription(Client, Id, QueryMap, HeadersMap, []).

-spec describe_eks_anywhere_subscription(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_eks_anywhere_subscription_response(), tuple()} |
    {error, any()} |
    {error, describe_eks_anywhere_subscription_errors(), tuple()}.
describe_eks_anywhere_subscription(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/eks-anywhere-subscriptions/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an Fargate profile.
-spec describe_fargate_profile(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_fargate_profile_response(), tuple()} |
    {error, any()} |
    {error, describe_fargate_profile_errors(), tuple()}.
describe_fargate_profile(Client, ClusterName, FargateProfileName)
  when is_map(Client) ->
    describe_fargate_profile(Client, ClusterName, FargateProfileName, #{}, #{}).

-spec describe_fargate_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_fargate_profile_response(), tuple()} |
    {error, any()} |
    {error, describe_fargate_profile_errors(), tuple()}.
describe_fargate_profile(Client, ClusterName, FargateProfileName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_fargate_profile(Client, ClusterName, FargateProfileName, QueryMap, HeadersMap, []).

-spec describe_fargate_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_fargate_profile_response(), tuple()} |
    {error, any()} |
    {error, describe_fargate_profile_errors(), tuple()}.
describe_fargate_profile(Client, ClusterName, FargateProfileName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/fargate-profiles/", aws_util:encode_uri(FargateProfileName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an identity provider configuration.
-spec describe_identity_provider_config(aws_client:aws_client(), binary() | list(), describe_identity_provider_config_request()) ->
    {ok, describe_identity_provider_config_response(), tuple()} |
    {error, any()} |
    {error, describe_identity_provider_config_errors(), tuple()}.
describe_identity_provider_config(Client, ClusterName, Input) ->
    describe_identity_provider_config(Client, ClusterName, Input, []).

-spec describe_identity_provider_config(aws_client:aws_client(), binary() | list(), describe_identity_provider_config_request(), proplists:proplist()) ->
    {ok, describe_identity_provider_config_response(), tuple()} |
    {error, any()} |
    {error, describe_identity_provider_config_errors(), tuple()}.
describe_identity_provider_config(Client, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/identity-provider-configs/describe"],
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

%% @doc Returns details about an insight that you specify using its ID.
-spec describe_insight(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_insight_response(), tuple()} |
    {error, any()} |
    {error, describe_insight_errors(), tuple()}.
describe_insight(Client, ClusterName, Id)
  when is_map(Client) ->
    describe_insight(Client, ClusterName, Id, #{}, #{}).

-spec describe_insight(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_insight_response(), tuple()} |
    {error, any()} |
    {error, describe_insight_errors(), tuple()}.
describe_insight(Client, ClusterName, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_insight(Client, ClusterName, Id, QueryMap, HeadersMap, []).

-spec describe_insight(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_insight_response(), tuple()} |
    {error, any()} |
    {error, describe_insight_errors(), tuple()}.
describe_insight(Client, ClusterName, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/insights/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a managed node group.
-spec describe_nodegroup(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_nodegroup_response(), tuple()} |
    {error, any()} |
    {error, describe_nodegroup_errors(), tuple()}.
describe_nodegroup(Client, ClusterName, NodegroupName)
  when is_map(Client) ->
    describe_nodegroup(Client, ClusterName, NodegroupName, #{}, #{}).

-spec describe_nodegroup(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_nodegroup_response(), tuple()} |
    {error, any()} |
    {error, describe_nodegroup_errors(), tuple()}.
describe_nodegroup(Client, ClusterName, NodegroupName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_nodegroup(Client, ClusterName, NodegroupName, QueryMap, HeadersMap, []).

-spec describe_nodegroup(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_nodegroup_response(), tuple()} |
    {error, any()} |
    {error, describe_nodegroup_errors(), tuple()}.
describe_nodegroup(Client, ClusterName, NodegroupName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/node-groups/", aws_util:encode_uri(NodegroupName), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns descriptive information about an EKS Pod Identity
%% association.
%%
%% This action requires the ID of the association. You can get the ID from
%% the response to
%% the `CreatePodIdentityAssocation' for newly created associations. Or,
%% you can
%% list the IDs for associations with `ListPodIdentityAssociations' and
%% filter the
%% list by namespace or service account.
-spec describe_pod_identity_association(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_pod_identity_association_response(), tuple()} |
    {error, any()} |
    {error, describe_pod_identity_association_errors(), tuple()}.
describe_pod_identity_association(Client, AssociationId, ClusterName)
  when is_map(Client) ->
    describe_pod_identity_association(Client, AssociationId, ClusterName, #{}, #{}).

-spec describe_pod_identity_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_pod_identity_association_response(), tuple()} |
    {error, any()} |
    {error, describe_pod_identity_association_errors(), tuple()}.
describe_pod_identity_association(Client, AssociationId, ClusterName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_pod_identity_association(Client, AssociationId, ClusterName, QueryMap, HeadersMap, []).

-spec describe_pod_identity_association(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_pod_identity_association_response(), tuple()} |
    {error, any()} |
    {error, describe_pod_identity_association_errors(), tuple()}.
describe_pod_identity_association(Client, AssociationId, ClusterName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/pod-identity-associations/", aws_util:encode_uri(AssociationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes an update to an Amazon EKS resource.
%%
%% When the status of the update is `Successful', the update is complete.
%% If
%% an update fails, the status is `Failed', and an error detail explains
%% the
%% reason for the failure.
-spec describe_update(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_update_response(), tuple()} |
    {error, any()} |
    {error, describe_update_errors(), tuple()}.
describe_update(Client, Name, UpdateId)
  when is_map(Client) ->
    describe_update(Client, Name, UpdateId, #{}, #{}).

-spec describe_update(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_update_response(), tuple()} |
    {error, any()} |
    {error, describe_update_errors(), tuple()}.
describe_update(Client, Name, UpdateId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_update(Client, Name, UpdateId, QueryMap, HeadersMap, []).

-spec describe_update(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_update_response(), tuple()} |
    {error, any()} |
    {error, describe_update_errors(), tuple()}.
describe_update(Client, Name, UpdateId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(Name), "/updates/", aws_util:encode_uri(UpdateId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"addonName">>, maps:get(<<"addonName">>, QueryMap, undefined)},
        {<<"nodegroupName">>, maps:get(<<"nodegroupName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disassociates an access policy from an access entry.
-spec disassociate_access_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), disassociate_access_policy_request()) ->
    {ok, disassociate_access_policy_response(), tuple()} |
    {error, any()} |
    {error, disassociate_access_policy_errors(), tuple()}.
disassociate_access_policy(Client, ClusterName, PolicyArn, PrincipalArn, Input) ->
    disassociate_access_policy(Client, ClusterName, PolicyArn, PrincipalArn, Input, []).

-spec disassociate_access_policy(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), disassociate_access_policy_request(), proplists:proplist()) ->
    {ok, disassociate_access_policy_response(), tuple()} |
    {error, any()} |
    {error, disassociate_access_policy_errors(), tuple()}.
disassociate_access_policy(Client, ClusterName, PolicyArn, PrincipalArn, Input0, Options0) ->
    Method = delete,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/access-entries/", aws_util:encode_uri(PrincipalArn), "/access-policies/", aws_util:encode_uri(PolicyArn), ""],
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

%% @doc Disassociates an identity provider configuration from a cluster.
%%
%% If you disassociate an identity provider from your cluster, users included
%% in the
%% provider can no longer access the cluster. However, you can still access
%% the cluster
%% with IAM principals.
-spec disassociate_identity_provider_config(aws_client:aws_client(), binary() | list(), disassociate_identity_provider_config_request()) ->
    {ok, disassociate_identity_provider_config_response(), tuple()} |
    {error, any()} |
    {error, disassociate_identity_provider_config_errors(), tuple()}.
disassociate_identity_provider_config(Client, ClusterName, Input) ->
    disassociate_identity_provider_config(Client, ClusterName, Input, []).

-spec disassociate_identity_provider_config(aws_client:aws_client(), binary() | list(), disassociate_identity_provider_config_request(), proplists:proplist()) ->
    {ok, disassociate_identity_provider_config_response(), tuple()} |
    {error, any()} |
    {error, disassociate_identity_provider_config_errors(), tuple()}.
disassociate_identity_provider_config(Client, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/identity-provider-configs/disassociate"],
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

%% @doc Lists the access entries for your cluster.
-spec list_access_entries(aws_client:aws_client(), binary() | list()) ->
    {ok, list_access_entries_response(), tuple()} |
    {error, any()} |
    {error, list_access_entries_errors(), tuple()}.
list_access_entries(Client, ClusterName)
  when is_map(Client) ->
    list_access_entries(Client, ClusterName, #{}, #{}).

-spec list_access_entries(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_access_entries_response(), tuple()} |
    {error, any()} |
    {error, list_access_entries_errors(), tuple()}.
list_access_entries(Client, ClusterName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_access_entries(Client, ClusterName, QueryMap, HeadersMap, []).

-spec list_access_entries(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_access_entries_response(), tuple()} |
    {error, any()} |
    {error, list_access_entries_errors(), tuple()}.
list_access_entries(Client, ClusterName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/access-entries"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"associatedPolicyArn">>, maps:get(<<"associatedPolicyArn">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the available access policies.
-spec list_access_policies(aws_client:aws_client()) ->
    {ok, list_access_policies_response(), tuple()} |
    {error, any()} |
    {error, list_access_policies_errors(), tuple()}.
list_access_policies(Client)
  when is_map(Client) ->
    list_access_policies(Client, #{}, #{}).

-spec list_access_policies(aws_client:aws_client(), map(), map()) ->
    {ok, list_access_policies_response(), tuple()} |
    {error, any()} |
    {error, list_access_policies_errors(), tuple()}.
list_access_policies(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_access_policies(Client, QueryMap, HeadersMap, []).

-spec list_access_policies(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_access_policies_response(), tuple()} |
    {error, any()} |
    {error, list_access_policies_errors(), tuple()}.
list_access_policies(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/access-policies"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the installed add-ons.
-spec list_addons(aws_client:aws_client(), binary() | list()) ->
    {ok, list_addons_response(), tuple()} |
    {error, any()} |
    {error, list_addons_errors(), tuple()}.
list_addons(Client, ClusterName)
  when is_map(Client) ->
    list_addons(Client, ClusterName, #{}, #{}).

-spec list_addons(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_addons_response(), tuple()} |
    {error, any()} |
    {error, list_addons_errors(), tuple()}.
list_addons(Client, ClusterName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_addons(Client, ClusterName, QueryMap, HeadersMap, []).

-spec list_addons(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_addons_response(), tuple()} |
    {error, any()} |
    {error, list_addons_errors(), tuple()}.
list_addons(Client, ClusterName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/addons"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the access policies associated with an access entry.
-spec list_associated_access_policies(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_associated_access_policies_response(), tuple()} |
    {error, any()} |
    {error, list_associated_access_policies_errors(), tuple()}.
list_associated_access_policies(Client, ClusterName, PrincipalArn)
  when is_map(Client) ->
    list_associated_access_policies(Client, ClusterName, PrincipalArn, #{}, #{}).

-spec list_associated_access_policies(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_associated_access_policies_response(), tuple()} |
    {error, any()} |
    {error, list_associated_access_policies_errors(), tuple()}.
list_associated_access_policies(Client, ClusterName, PrincipalArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_associated_access_policies(Client, ClusterName, PrincipalArn, QueryMap, HeadersMap, []).

-spec list_associated_access_policies(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_associated_access_policies_response(), tuple()} |
    {error, any()} |
    {error, list_associated_access_policies_errors(), tuple()}.
list_associated_access_policies(Client, ClusterName, PrincipalArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/access-entries/", aws_util:encode_uri(PrincipalArn), "/access-policies"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon EKS clusters in your Amazon Web Services account in
%% the specified Amazon Web Services Region.
-spec list_clusters(aws_client:aws_client()) ->
    {ok, list_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client)
  when is_map(Client) ->
    list_clusters(Client, #{}, #{}).

-spec list_clusters(aws_client:aws_client(), map(), map()) ->
    {ok, list_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_clusters(Client, QueryMap, HeadersMap, []).

-spec list_clusters(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_clusters_response(), tuple()} |
    {error, any()} |
    {error, list_clusters_errors(), tuple()}.
list_clusters(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"include">>, maps:get(<<"include">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays the full description of the subscription.
-spec list_eks_anywhere_subscriptions(aws_client:aws_client()) ->
    {ok, list_eks_anywhere_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, list_eks_anywhere_subscriptions_errors(), tuple()}.
list_eks_anywhere_subscriptions(Client)
  when is_map(Client) ->
    list_eks_anywhere_subscriptions(Client, #{}, #{}).

-spec list_eks_anywhere_subscriptions(aws_client:aws_client(), map(), map()) ->
    {ok, list_eks_anywhere_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, list_eks_anywhere_subscriptions_errors(), tuple()}.
list_eks_anywhere_subscriptions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_eks_anywhere_subscriptions(Client, QueryMap, HeadersMap, []).

-spec list_eks_anywhere_subscriptions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_eks_anywhere_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, list_eks_anywhere_subscriptions_errors(), tuple()}.
list_eks_anywhere_subscriptions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/eks-anywhere-subscriptions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"includeStatus">>, maps:get(<<"includeStatus">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Fargate profiles associated with the specified cluster in
%% your Amazon Web Services
%% account in the specified Amazon Web Services Region.
-spec list_fargate_profiles(aws_client:aws_client(), binary() | list()) ->
    {ok, list_fargate_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_fargate_profiles_errors(), tuple()}.
list_fargate_profiles(Client, ClusterName)
  when is_map(Client) ->
    list_fargate_profiles(Client, ClusterName, #{}, #{}).

-spec list_fargate_profiles(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_fargate_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_fargate_profiles_errors(), tuple()}.
list_fargate_profiles(Client, ClusterName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_fargate_profiles(Client, ClusterName, QueryMap, HeadersMap, []).

-spec list_fargate_profiles(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_fargate_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_fargate_profiles_errors(), tuple()}.
list_fargate_profiles(Client, ClusterName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/fargate-profiles"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the identity provider configurations for your cluster.
-spec list_identity_provider_configs(aws_client:aws_client(), binary() | list()) ->
    {ok, list_identity_provider_configs_response(), tuple()} |
    {error, any()} |
    {error, list_identity_provider_configs_errors(), tuple()}.
list_identity_provider_configs(Client, ClusterName)
  when is_map(Client) ->
    list_identity_provider_configs(Client, ClusterName, #{}, #{}).

-spec list_identity_provider_configs(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_identity_provider_configs_response(), tuple()} |
    {error, any()} |
    {error, list_identity_provider_configs_errors(), tuple()}.
list_identity_provider_configs(Client, ClusterName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_identity_provider_configs(Client, ClusterName, QueryMap, HeadersMap, []).

-spec list_identity_provider_configs(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_identity_provider_configs_response(), tuple()} |
    {error, any()} |
    {error, list_identity_provider_configs_errors(), tuple()}.
list_identity_provider_configs(Client, ClusterName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/identity-provider-configs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all insights checked for against the specified
%% cluster.
%%
%% You can
%% filter which insights are returned by category, associated Kubernetes
%% version, and
%% status. The default filter lists all categories and every status.
%%
%% The following lists the available categories:
%%
%% `UPGRADE_READINESS': Amazon EKS identifies issues that could impact
%% your
%% ability to upgrade to new versions of Kubernetes. These are called upgrade
%% insights.
%%
%% `MISCONFIGURATION': Amazon EKS identifies misconfiguration in your EKS
%% Hybrid Nodes setup that could impair functionality of your cluster or
%% workloads. These are called configuration insights.
-spec list_insights(aws_client:aws_client(), binary() | list(), list_insights_request()) ->
    {ok, list_insights_response(), tuple()} |
    {error, any()} |
    {error, list_insights_errors(), tuple()}.
list_insights(Client, ClusterName, Input) ->
    list_insights(Client, ClusterName, Input, []).

-spec list_insights(aws_client:aws_client(), binary() | list(), list_insights_request(), proplists:proplist()) ->
    {ok, list_insights_response(), tuple()} |
    {error, any()} |
    {error, list_insights_errors(), tuple()}.
list_insights(Client, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/insights"],
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

%% @doc Lists the managed node groups associated with the specified cluster
%% in your Amazon Web Services
%% account in the specified Amazon Web Services Region.
%%
%% Self-managed node groups aren't listed.
-spec list_nodegroups(aws_client:aws_client(), binary() | list()) ->
    {ok, list_nodegroups_response(), tuple()} |
    {error, any()} |
    {error, list_nodegroups_errors(), tuple()}.
list_nodegroups(Client, ClusterName)
  when is_map(Client) ->
    list_nodegroups(Client, ClusterName, #{}, #{}).

-spec list_nodegroups(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_nodegroups_response(), tuple()} |
    {error, any()} |
    {error, list_nodegroups_errors(), tuple()}.
list_nodegroups(Client, ClusterName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_nodegroups(Client, ClusterName, QueryMap, HeadersMap, []).

-spec list_nodegroups(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_nodegroups_response(), tuple()} |
    {error, any()} |
    {error, list_nodegroups_errors(), tuple()}.
list_nodegroups(Client, ClusterName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/node-groups"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the EKS Pod Identity associations in a cluster.
%%
%% You can filter the list by the namespace that the
%% association is in or the service account that the association uses.
-spec list_pod_identity_associations(aws_client:aws_client(), binary() | list()) ->
    {ok, list_pod_identity_associations_response(), tuple()} |
    {error, any()} |
    {error, list_pod_identity_associations_errors(), tuple()}.
list_pod_identity_associations(Client, ClusterName)
  when is_map(Client) ->
    list_pod_identity_associations(Client, ClusterName, #{}, #{}).

-spec list_pod_identity_associations(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_pod_identity_associations_response(), tuple()} |
    {error, any()} |
    {error, list_pod_identity_associations_errors(), tuple()}.
list_pod_identity_associations(Client, ClusterName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_pod_identity_associations(Client, ClusterName, QueryMap, HeadersMap, []).

-spec list_pod_identity_associations(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_pod_identity_associations_response(), tuple()} |
    {error, any()} |
    {error, list_pod_identity_associations_errors(), tuple()}.
list_pod_identity_associations(Client, ClusterName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/pod-identity-associations"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"namespace">>, maps:get(<<"namespace">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"serviceAccount">>, maps:get(<<"serviceAccount">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the tags for an Amazon EKS resource.
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

%% @doc Lists the updates associated with an Amazon EKS resource in your
%% Amazon Web Services account, in the
%% specified Amazon Web Services Region.
-spec list_updates(aws_client:aws_client(), binary() | list()) ->
    {ok, list_updates_response(), tuple()} |
    {error, any()} |
    {error, list_updates_errors(), tuple()}.
list_updates(Client, Name)
  when is_map(Client) ->
    list_updates(Client, Name, #{}, #{}).

-spec list_updates(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_updates_response(), tuple()} |
    {error, any()} |
    {error, list_updates_errors(), tuple()}.
list_updates(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_updates(Client, Name, QueryMap, HeadersMap, []).

-spec list_updates(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_updates_response(), tuple()} |
    {error, any()} |
    {error, list_updates_errors(), tuple()}.
list_updates(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/clusters/", aws_util:encode_uri(Name), "/updates"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"addonName">>, maps:get(<<"addonName">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"nodegroupName">>, maps:get(<<"nodegroupName">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Connects a Kubernetes cluster to the Amazon EKS control plane.
%%
%% Any Kubernetes cluster can be connected to the Amazon EKS control plane to
%% view current
%% information about the cluster and its nodes.
%%
%% Cluster connection requires two steps. First, send a
%% `RegisterClusterRequest'
%% :
%% https://docs.aws.amazon.com/eks/latest/APIReference/API_RegisterClusterRequest.html
%% to add it to the Amazon EKS control
%% plane.
%%
%% Second, a Manifest:
%% https://amazon-eks.s3.us-west-2.amazonaws.com/eks-connector/manifests/eks-connector/latest/eks-connector.yaml
%% containing the `activationID' and
%% `activationCode' must be applied to the Kubernetes cluster through
%% it's native
%% provider to provide visibility.
%%
%% After the manifest is updated and applied, the connected cluster is
%% visible to the
%% Amazon EKS control plane. If the manifest isn't applied within three
%% days, the connected
%% cluster will no longer be visible and must be deregistered using
%% `DeregisterCluster'.
-spec register_cluster(aws_client:aws_client(), register_cluster_request()) ->
    {ok, register_cluster_response(), tuple()} |
    {error, any()} |
    {error, register_cluster_errors(), tuple()}.
register_cluster(Client, Input) ->
    register_cluster(Client, Input, []).

-spec register_cluster(aws_client:aws_client(), register_cluster_request(), proplists:proplist()) ->
    {ok, register_cluster_response(), tuple()} |
    {error, any()} |
    {error, register_cluster_errors(), tuple()}.
register_cluster(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cluster-registrations"],
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

%% @doc Associates the specified tags to an Amazon EKS resource with the
%% specified
%% `resourceArn'.
%%
%% If existing tags on a resource are not specified in the
%% request parameters, they aren't changed. When a resource is deleted,
%% the tags associated
%% with that resource are also deleted. Tags that you create for Amazon EKS
%% resources don't
%% propagate to any other resources associated with the cluster. For example,
%% if you tag a
%% cluster with this operation, that tag doesn't automatically propagate
%% to the subnets and
%% nodes associated with the cluster.
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

%% @doc Deletes specified tags from an Amazon EKS resource.
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an access entry.
-spec update_access_entry(aws_client:aws_client(), binary() | list(), binary() | list(), update_access_entry_request()) ->
    {ok, update_access_entry_response(), tuple()} |
    {error, any()} |
    {error, update_access_entry_errors(), tuple()}.
update_access_entry(Client, ClusterName, PrincipalArn, Input) ->
    update_access_entry(Client, ClusterName, PrincipalArn, Input, []).

-spec update_access_entry(aws_client:aws_client(), binary() | list(), binary() | list(), update_access_entry_request(), proplists:proplist()) ->
    {ok, update_access_entry_response(), tuple()} |
    {error, any()} |
    {error, update_access_entry_errors(), tuple()}.
update_access_entry(Client, ClusterName, PrincipalArn, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/access-entries/", aws_util:encode_uri(PrincipalArn), ""],
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

%% @doc Updates an Amazon EKS add-on.
-spec update_addon(aws_client:aws_client(), binary() | list(), binary() | list(), update_addon_request()) ->
    {ok, update_addon_response(), tuple()} |
    {error, any()} |
    {error, update_addon_errors(), tuple()}.
update_addon(Client, AddonName, ClusterName, Input) ->
    update_addon(Client, AddonName, ClusterName, Input, []).

-spec update_addon(aws_client:aws_client(), binary() | list(), binary() | list(), update_addon_request(), proplists:proplist()) ->
    {ok, update_addon_response(), tuple()} |
    {error, any()} |
    {error, update_addon_errors(), tuple()}.
update_addon(Client, AddonName, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/addons/", aws_util:encode_uri(AddonName), "/update"],
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

%% @doc Updates an Amazon EKS cluster configuration.
%%
%% Your cluster continues to function during the
%% update. The response output includes an update ID that you can use to
%% track the status
%% of your cluster update with `DescribeUpdate'.
%%
%% You can use this operation to do the following actions:
%%
%% You can use this API operation to enable or disable exporting the
%% Kubernetes
%% control plane logs for your cluster to CloudWatch Logs. By default,
%% cluster control plane
%% logs aren't exported to CloudWatch Logs. For more information, see
%% Amazon EKS Cluster control plane logs:
%% https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html
%% in the
%%
%% Amazon EKS User Guide
%% .
%%
%% CloudWatch Logs ingestion, archive storage, and data scanning rates apply
%% to
%% exported control plane logs. For more information, see CloudWatch Pricing:
%% http://aws.amazon.com/cloudwatch/pricing/.
%%
%% You can also use this API operation to enable or disable public and
%% private
%% access to your cluster's Kubernetes API server endpoint. By default,
%% public access is
%% enabled, and private access is disabled. For more information, see
%% Cluster API server endpoint:
%% https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html in
%% the
%%
%% Amazon EKS User Guide
%% .
%%
%% You can also use this API operation to choose different subnets and
%% security
%% groups for the cluster. You must specify at least two subnets that are in
%% different Availability Zones. You can't change which VPC the subnets
%% are from, the subnets
%% must be in the same VPC as the subnets that the cluster was created with.
%% For
%% more information about the VPC requirements, see
%% [https://docs.aws.amazon.com/eks/latest/userguide/network_reqs.html] in
%% the
%%
%% Amazon EKS User Guide
%% .
%%
%% You can also use this API operation to enable or disable ARC zonal shift.
%% If
%% zonal shift is enabled, Amazon Web Services configures zonal autoshift for
%% the cluster.
%%
%% You can also use this API operation to add, change, or remove the
%% configuration in the cluster for EKS Hybrid Nodes. To remove the
%% configuration,
%% use the `remoteNetworkConfig' key with an object containing both
%% subkeys with empty arrays for each. Here is an inline example:
%%
%% ```
%% &quot;remoteNetworkConfig&quot;: { &quot;remoteNodeNetworks&quot;: [],
%% &quot;remotePodNetworks&quot;: [] }'''.
%%
%% Cluster updates are asynchronous, and they should finish within a few
%% minutes. During
%% an update, the cluster status moves to `UPDATING' (this status
%% transition is
%% eventually consistent). When the update is complete (either `Failed'
%% or
%% `Successful'), the cluster status moves to `Active'.
-spec update_cluster_config(aws_client:aws_client(), binary() | list(), update_cluster_config_request()) ->
    {ok, update_cluster_config_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_config_errors(), tuple()}.
update_cluster_config(Client, Name, Input) ->
    update_cluster_config(Client, Name, Input, []).

-spec update_cluster_config(aws_client:aws_client(), binary() | list(), update_cluster_config_request(), proplists:proplist()) ->
    {ok, update_cluster_config_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_config_errors(), tuple()}.
update_cluster_config(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(Name), "/update-config"],
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

%% @doc Updates an Amazon EKS cluster to the specified Kubernetes version.
%%
%% Your cluster continues to
%% function during the update. The response output includes an update ID that
%% you can use
%% to track the status of your cluster update with the
%% `DescribeUpdate'
%% :
%% https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeUpdate.html
%% API operation.
%%
%% Cluster updates are asynchronous, and they should finish within a few
%% minutes. During
%% an update, the cluster status moves to `UPDATING' (this status
%% transition is
%% eventually consistent). When the update is complete (either `Failed'
%% or
%% `Successful'), the cluster status moves to `Active'.
%%
%% If your cluster has managed node groups attached to it, all of your node
%% groups' Kubernetes
%% versions must match the cluster's Kubernetes version in order to
%% update the cluster to a new
%% Kubernetes version.
-spec update_cluster_version(aws_client:aws_client(), binary() | list(), update_cluster_version_request()) ->
    {ok, update_cluster_version_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_version_errors(), tuple()}.
update_cluster_version(Client, Name, Input) ->
    update_cluster_version(Client, Name, Input, []).

-spec update_cluster_version(aws_client:aws_client(), binary() | list(), update_cluster_version_request(), proplists:proplist()) ->
    {ok, update_cluster_version_response(), tuple()} |
    {error, any()} |
    {error, update_cluster_version_errors(), tuple()}.
update_cluster_version(Client, Name, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(Name), "/updates"],
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

%% @doc Update an EKS Anywhere Subscription.
%%
%% Only auto renewal and tags can be updated after
%% subscription creation.
-spec update_eks_anywhere_subscription(aws_client:aws_client(), binary() | list(), update_eks_anywhere_subscription_request()) ->
    {ok, update_eks_anywhere_subscription_response(), tuple()} |
    {error, any()} |
    {error, update_eks_anywhere_subscription_errors(), tuple()}.
update_eks_anywhere_subscription(Client, Id, Input) ->
    update_eks_anywhere_subscription(Client, Id, Input, []).

-spec update_eks_anywhere_subscription(aws_client:aws_client(), binary() | list(), update_eks_anywhere_subscription_request(), proplists:proplist()) ->
    {ok, update_eks_anywhere_subscription_response(), tuple()} |
    {error, any()} |
    {error, update_eks_anywhere_subscription_errors(), tuple()}.
update_eks_anywhere_subscription(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/eks-anywhere-subscriptions/", aws_util:encode_uri(Id), ""],
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

%% @doc Updates an Amazon EKS managed node group configuration.
%%
%% Your node group continues to
%% function during the update. The response output includes an update ID that
%% you can use
%% to track the status of your node group update with the
%% `DescribeUpdate'
%% :
%% https://docs.aws.amazon.com/eks/latest/APIReference/API_DescribeUpdate.html
%% API operation. You can update the Kubernetes labels
%% and taints for a node group and the scaling and version update
%% configuration.
-spec update_nodegroup_config(aws_client:aws_client(), binary() | list(), binary() | list(), update_nodegroup_config_request()) ->
    {ok, update_nodegroup_config_response(), tuple()} |
    {error, any()} |
    {error, update_nodegroup_config_errors(), tuple()}.
update_nodegroup_config(Client, ClusterName, NodegroupName, Input) ->
    update_nodegroup_config(Client, ClusterName, NodegroupName, Input, []).

-spec update_nodegroup_config(aws_client:aws_client(), binary() | list(), binary() | list(), update_nodegroup_config_request(), proplists:proplist()) ->
    {ok, update_nodegroup_config_response(), tuple()} |
    {error, any()} |
    {error, update_nodegroup_config_errors(), tuple()}.
update_nodegroup_config(Client, ClusterName, NodegroupName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/node-groups/", aws_util:encode_uri(NodegroupName), "/update-config"],
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

%% @doc Updates the Kubernetes version or AMI version of an Amazon EKS
%% managed node group.
%%
%% You can update a node group using a launch template only if the node group
%% was
%% originally deployed with a launch template. Additionally, the launch
%% template ID or name
%% must match what was used when the node group was created. You can update
%% the launch
%% template version with necessary changes.
%%
%% If you need to update a custom AMI in a node group that was deployed with
%% a launch
%% template, then update your custom AMI, specify the new ID in a new version
%% of the launch
%% template, and then update the node group to the new version of the launch
%% template.
%%
%% If you update without a launch template, then you can update to the latest
%% available
%% AMI version of a node group's current Kubernetes version by not
%% specifying a Kubernetes version in
%% the request. You can update to the latest AMI version of your
%% cluster's current Kubernetes
%% version by specifying your cluster's Kubernetes version in the
%% request. For information about
%% Linux versions, see Amazon EKS optimized Amazon Linux AMI versions:
%% https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html
%% in the
%% Amazon EKS User Guide. For information about Windows versions, see Amazon
%% EKS
%% optimized Windows AMI versions:
%% https://docs.aws.amazon.com/eks/latest/userguide/eks-ami-versions-windows.html
%% in the Amazon EKS User Guide.
%%
%% You cannot roll back a node group to an earlier Kubernetes version or AMI
%% version.
%%
%% When a node in a managed node group is terminated due to a scaling action
%% or update,
%% every `Pod' on that node is drained first. Amazon EKS attempts to
%% drain the nodes
%% gracefully and will fail if it is unable to do so. You can `force' the
%% update
%% if Amazon EKS is unable to drain the nodes as a result of a `Pod'
%% disruption
%% budget issue.
-spec update_nodegroup_version(aws_client:aws_client(), binary() | list(), binary() | list(), update_nodegroup_version_request()) ->
    {ok, update_nodegroup_version_response(), tuple()} |
    {error, any()} |
    {error, update_nodegroup_version_errors(), tuple()}.
update_nodegroup_version(Client, ClusterName, NodegroupName, Input) ->
    update_nodegroup_version(Client, ClusterName, NodegroupName, Input, []).

-spec update_nodegroup_version(aws_client:aws_client(), binary() | list(), binary() | list(), update_nodegroup_version_request(), proplists:proplist()) ->
    {ok, update_nodegroup_version_response(), tuple()} |
    {error, any()} |
    {error, update_nodegroup_version_errors(), tuple()}.
update_nodegroup_version(Client, ClusterName, NodegroupName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/node-groups/", aws_util:encode_uri(NodegroupName), "/update-version"],
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

%% @doc Updates a EKS Pod Identity association.
%%
%% In an update, you can change the IAM role, the target IAM role, or
%% `disableSessionTags'.
%% You must change at least one of these in an update. An association
%% can't be moved
%% between clusters, namespaces, or service accounts. If you need to edit the
%% namespace
%% or service account, you need to delete the association and then create a
%% new
%% association with your desired settings.
%%
%% Similar to Amazon Web Services IAM behavior, EKS Pod Identity associations
%% are eventually consistent,
%% and may take several seconds to be effective after the initial API call
%% returns
%% successfully. You must design your applications to account for these
%% potential delays.
%% We recommend that you don’t include association create/updates in the
%% critical, high-availability code paths of your application. Instead, make
%% changes in a
%% separate initialization or setup routine that you run less frequently.
%%
%% You can set a target IAM role in the same or a different
%% account for advanced scenarios. With a target role, EKS Pod Identity
%% automatically performs two
%% role assumptions in sequence: first assuming the role in the association
%% that is in this
%% account, then using those credentials to assume the target IAM role. This
%% process
%% provides your Pod with temporary credentials that have the permissions
%% defined in the
%% target role, allowing secure access to resources in another Amazon Web
%% Services account.
-spec update_pod_identity_association(aws_client:aws_client(), binary() | list(), binary() | list(), update_pod_identity_association_request()) ->
    {ok, update_pod_identity_association_response(), tuple()} |
    {error, any()} |
    {error, update_pod_identity_association_errors(), tuple()}.
update_pod_identity_association(Client, AssociationId, ClusterName, Input) ->
    update_pod_identity_association(Client, AssociationId, ClusterName, Input, []).

-spec update_pod_identity_association(aws_client:aws_client(), binary() | list(), binary() | list(), update_pod_identity_association_request(), proplists:proplist()) ->
    {ok, update_pod_identity_association_response(), tuple()} |
    {error, any()} |
    {error, update_pod_identity_association_errors(), tuple()}.
update_pod_identity_association(Client, AssociationId, ClusterName, Input0, Options0) ->
    Method = post,
    Path = ["/clusters/", aws_util:encode_uri(ClusterName), "/pod-identity-associations/", aws_util:encode_uri(AssociationId), ""],
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
    Client1 = Client#{service => <<"eks">>},
    Host = build_host(<<"eks">>, Client1),
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
