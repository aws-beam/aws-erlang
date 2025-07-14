%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%% Amazon Web Services Telco Network Builder (TNB) is a network automation
%% service that helps
%% you deploy and manage telecom networks.
%%
%% AWS TNB helps you with the lifecycle management of
%% your telecommunication network functions throughout planning, deployment,
%% and
%% post-deployment activities.
-module(aws_tnb).

-export([cancel_sol_network_operation/3,
         cancel_sol_network_operation/4,
         create_sol_function_package/2,
         create_sol_function_package/3,
         create_sol_network_instance/2,
         create_sol_network_instance/3,
         create_sol_network_package/2,
         create_sol_network_package/3,
         delete_sol_function_package/3,
         delete_sol_function_package/4,
         delete_sol_network_instance/3,
         delete_sol_network_instance/4,
         delete_sol_network_package/3,
         delete_sol_network_package/4,
         get_sol_function_instance/2,
         get_sol_function_instance/4,
         get_sol_function_instance/5,
         get_sol_function_package/2,
         get_sol_function_package/4,
         get_sol_function_package/5,
         get_sol_function_package_content/3,
         get_sol_function_package_content/5,
         get_sol_function_package_content/6,
         get_sol_function_package_descriptor/3,
         get_sol_function_package_descriptor/5,
         get_sol_function_package_descriptor/6,
         get_sol_network_instance/2,
         get_sol_network_instance/4,
         get_sol_network_instance/5,
         get_sol_network_operation/2,
         get_sol_network_operation/4,
         get_sol_network_operation/5,
         get_sol_network_package/2,
         get_sol_network_package/4,
         get_sol_network_package/5,
         get_sol_network_package_content/3,
         get_sol_network_package_content/5,
         get_sol_network_package_content/6,
         get_sol_network_package_descriptor/2,
         get_sol_network_package_descriptor/4,
         get_sol_network_package_descriptor/5,
         instantiate_sol_network_instance/3,
         instantiate_sol_network_instance/4,
         list_sol_function_instances/1,
         list_sol_function_instances/3,
         list_sol_function_instances/4,
         list_sol_function_packages/1,
         list_sol_function_packages/3,
         list_sol_function_packages/4,
         list_sol_network_instances/1,
         list_sol_network_instances/3,
         list_sol_network_instances/4,
         list_sol_network_operations/1,
         list_sol_network_operations/3,
         list_sol_network_operations/4,
         list_sol_network_packages/1,
         list_sol_network_packages/3,
         list_sol_network_packages/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_sol_function_package_content/3,
         put_sol_function_package_content/4,
         put_sol_network_package_content/3,
         put_sol_network_package_content/4,
         tag_resource/3,
         tag_resource/4,
         terminate_sol_network_instance/3,
         terminate_sol_network_instance/4,
         untag_resource/3,
         untag_resource/4,
         update_sol_function_package/3,
         update_sol_function_package/4,
         update_sol_network_instance/3,
         update_sol_network_instance/4,
         update_sol_network_package/3,
         update_sol_network_package/4,
         validate_sol_function_package_content/3,
         validate_sol_function_package_content/4,
         validate_sol_network_package_content/3,
         validate_sol_network_package_content/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% update_sol_network_package_output() :: #{
%%   <<"nsdOperationalState">> => list(any())
%% }
-type update_sol_network_package_output() :: #{binary() => any()}.


%% Example:
%% get_sol_vnf_info() :: #{
%%   <<"vnfState">> => list(any()),
%%   <<"vnfcResourceInfo">> => list(get_sol_vnfc_resource_info())
%% }
-type get_sol_vnf_info() :: #{binary() => any()}.

%% Example:
%% delete_sol_function_package_input() :: #{}
-type delete_sol_function_package_input() :: #{}.

%% Example:
%% delete_sol_network_instance_input() :: #{}
-type delete_sol_network_instance_input() :: #{}.


%% Example:
%% create_sol_network_package_output() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"nsdOnboardingState">> => list(any()),
%%   <<"nsdOperationalState">> => list(any()),
%%   <<"nsdUsageState">> => list(any()),
%%   <<"tags">> => map()
%% }
-type create_sol_network_package_output() :: #{binary() => any()}.


%% Example:
%% get_sol_function_package_output() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"metadata">> => get_sol_function_package_metadata(),
%%   <<"onboardingState">> => list(any()),
%%   <<"operationalState">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"usageState">> => list(any()),
%%   <<"vnfProductName">> => [string()],
%%   <<"vnfProvider">> => [string()],
%%   <<"vnfdId">> => [string()],
%%   <<"vnfdVersion">> => [string()]
%% }
-type get_sol_function_package_output() :: #{binary() => any()}.


%% Example:
%% list_sol_function_instance_metadata() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"lastModified">> => [non_neg_integer()]
%% }
-type list_sol_function_instance_metadata() :: #{binary() => any()}.


%% Example:
%% list_sol_function_instances_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_sol_function_instances_input() :: #{binary() => any()}.


%% Example:
%% list_sol_network_operations_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"nsInstanceId">> => string()
%% }
-type list_sol_network_operations_input() :: #{binary() => any()}.


%% Example:
%% validate_sol_network_package_content_metadata() :: #{
%%   <<"nsd">> => network_artifact_meta()
%% }
-type validate_sol_network_package_content_metadata() :: #{binary() => any()}.


%% Example:
%% list_sol_network_packages_output() :: #{
%%   <<"networkPackages">> => list(list_sol_network_package_info()),
%%   <<"nextToken">> => string()
%% }
-type list_sol_network_packages_output() :: #{binary() => any()}.


%% Example:
%% get_sol_function_instance_metadata() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"lastModified">> => [non_neg_integer()]
%% }
-type get_sol_function_instance_metadata() :: #{binary() => any()}.


%% Example:
%% create_sol_network_package_input() :: #{
%%   <<"tags">> => map()
%% }
-type create_sol_network_package_input() :: #{binary() => any()}.


%% Example:
%% put_sol_function_package_content_metadata() :: #{
%%   <<"vnfd">> => function_artifact_meta()
%% }
-type put_sol_function_package_content_metadata() :: #{binary() => any()}.

%% Example:
%% get_sol_network_package_descriptor_input() :: #{}
-type get_sol_network_package_descriptor_input() :: #{}.


%% Example:
%% get_sol_function_package_descriptor_input() :: #{
%%   <<"accept">> := list(any())
%% }
-type get_sol_function_package_descriptor_input() :: #{binary() => any()}.


%% Example:
%% get_sol_function_instance_output() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"instantiatedVnfInfo">> => get_sol_vnf_info(),
%%   <<"instantiationState">> => list(any()),
%%   <<"metadata">> => get_sol_function_instance_metadata(),
%%   <<"nsInstanceId">> => string(),
%%   <<"tags">> => map(),
%%   <<"vnfPkgId">> => string(),
%%   <<"vnfProductName">> => [string()],
%%   <<"vnfProvider">> => [string()],
%%   <<"vnfdId">> => string(),
%%   <<"vnfdVersion">> => [string()]
%% }
-type get_sol_function_instance_output() :: #{binary() => any()}.


%% Example:
%% get_sol_network_package_output() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"metadata">> => get_sol_network_package_metadata(),
%%   <<"nsdId">> => string(),
%%   <<"nsdName">> => [string()],
%%   <<"nsdOnboardingState">> => list(any()),
%%   <<"nsdOperationalState">> => list(any()),
%%   <<"nsdUsageState">> => list(any()),
%%   <<"nsdVersion">> => [string()],
%%   <<"tags">> => map(),
%%   <<"vnfPkgIds">> => list(string())
%% }
-type get_sol_network_package_output() :: #{binary() => any()}.


%% Example:
%% error_info() :: #{
%%   <<"cause">> => string(),
%%   <<"details">> => string()
%% }
-type error_info() :: #{binary() => any()}.


%% Example:
%% put_sol_function_package_content_output() :: #{
%%   <<"id">> => string(),
%%   <<"metadata">> => put_sol_function_package_content_metadata(),
%%   <<"vnfProductName">> => [string()],
%%   <<"vnfProvider">> => [string()],
%%   <<"vnfdId">> => string(),
%%   <<"vnfdVersion">> => [string()]
%% }
-type put_sol_function_package_content_output() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.

%% Example:
%% get_sol_network_package_input() :: #{}
-type get_sol_network_package_input() :: #{}.


%% Example:
%% list_sol_network_packages_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_sol_network_packages_input() :: #{binary() => any()}.


%% Example:
%% validate_sol_network_package_content_input() :: #{
%%   <<"contentType">> => list(any()),
%%   <<"file">> := binary()
%% }
-type validate_sol_network_package_content_input() :: #{binary() => any()}.


%% Example:
%% put_sol_network_package_content_input() :: #{
%%   <<"contentType">> => list(any()),
%%   <<"file">> := binary()
%% }
-type put_sol_network_package_content_input() :: #{binary() => any()}.


%% Example:
%% list_sol_network_operations_info() :: #{
%%   <<"arn">> => string(),
%%   <<"error">> => problem_details(),
%%   <<"id">> => string(),
%%   <<"lcmOperationType">> => list(any()),
%%   <<"metadata">> => list_sol_network_operations_metadata(),
%%   <<"nsInstanceId">> => string(),
%%   <<"operationState">> => list(any()),
%%   <<"updateType">> => list(any())
%% }
-type list_sol_network_operations_info() :: #{binary() => any()}.


%% Example:
%% terminate_sol_network_instance_input() :: #{
%%   <<"tags">> => map()
%% }
-type terminate_sol_network_instance_input() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% get_sol_instantiated_vnf_info() :: #{
%%   <<"vnfState">> => list(any())
%% }
-type get_sol_instantiated_vnf_info() :: #{binary() => any()}.


%% Example:
%% get_sol_vnfc_resource_info() :: #{
%%   <<"metadata">> => get_sol_vnfc_resource_info_metadata()
%% }
-type get_sol_vnfc_resource_info() :: #{binary() => any()}.


%% Example:
%% list_sol_network_package_metadata() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"lastModified">> => [non_neg_integer()]
%% }
-type list_sol_network_package_metadata() :: #{binary() => any()}.


%% Example:
%% update_ns_metadata() :: #{
%%   <<"additionalParamsForNs">> => [any()],
%%   <<"nsdInfoId">> => string()
%% }
-type update_ns_metadata() :: #{binary() => any()}.


%% Example:
%% put_sol_network_package_content_output() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"metadata">> => put_sol_network_package_content_metadata(),
%%   <<"nsdId">> => string(),
%%   <<"nsdName">> => [string()],
%%   <<"nsdVersion">> => [string()],
%%   <<"vnfPkgIds">> => list(string())
%% }
-type put_sol_network_package_content_output() :: #{binary() => any()}.


%% Example:
%% list_sol_network_instances_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_sol_network_instances_input() :: #{binary() => any()}.


%% Example:
%% put_sol_network_package_content_metadata() :: #{
%%   <<"nsd">> => network_artifact_meta()
%% }
-type put_sol_network_package_content_metadata() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_sol_network_operations_metadata() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"lastModified">> => [non_neg_integer()],
%%   <<"nsdInfoId">> => string(),
%%   <<"vnfInstanceId">> => string()
%% }
-type list_sol_network_operations_metadata() :: #{binary() => any()}.


%% Example:
%% get_sol_network_package_content_output() :: #{
%%   <<"contentType">> => list(any()),
%%   <<"nsdContent">> => [binary()]
%% }
-type get_sol_network_package_content_output() :: #{binary() => any()}.


%% Example:
%% update_sol_network_instance_output() :: #{
%%   <<"nsLcmOpOccId">> => string(),
%%   <<"tags">> => map()
%% }
-type update_sol_network_instance_output() :: #{binary() => any()}.


%% Example:
%% problem_details() :: #{
%%   <<"detail">> => [string()],
%%   <<"title">> => [string()]
%% }
-type problem_details() :: #{binary() => any()}.


%% Example:
%% create_sol_network_instance_output() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"nsInstanceName">> => [string()],
%%   <<"nsdInfoId">> => string(),
%%   <<"tags">> => map()
%% }
-type create_sol_network_instance_output() :: #{binary() => any()}.


%% Example:
%% terminate_sol_network_instance_output() :: #{
%%   <<"nsLcmOpOccId">> => string(),
%%   <<"tags">> => map()
%% }
-type terminate_sol_network_instance_output() :: #{binary() => any()}.


%% Example:
%% put_sol_function_package_content_input() :: #{
%%   <<"contentType">> => list(any()),
%%   <<"file">> := binary()
%% }
-type put_sol_function_package_content_input() :: #{binary() => any()}.


%% Example:
%% instantiate_sol_network_instance_input() :: #{
%%   <<"additionalParamsForNs">> => [any()],
%%   <<"dryRun">> => [boolean()],
%%   <<"tags">> => map()
%% }
-type instantiate_sol_network_instance_input() :: #{binary() => any()}.


%% Example:
%% list_sol_function_packages_output() :: #{
%%   <<"functionPackages">> => list(list_sol_function_package_info()),
%%   <<"nextToken">> => string()
%% }
-type list_sol_function_packages_output() :: #{binary() => any()}.


%% Example:
%% create_sol_function_package_output() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"onboardingState">> => list(any()),
%%   <<"operationalState">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"usageState">> => list(any())
%% }
-type create_sol_function_package_output() :: #{binary() => any()}.

%% Example:
%% cancel_sol_network_operation_input() :: #{}
-type cancel_sol_network_operation_input() :: #{}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% update_sol_network_modify() :: #{
%%   <<"vnfConfigurableProperties">> => [any()],
%%   <<"vnfInstanceId">> => string()
%% }
-type update_sol_network_modify() :: #{binary() => any()}.


%% Example:
%% update_sol_network_service_data() :: #{
%%   <<"additionalParamsForNs">> => [any()],
%%   <<"nsdInfoId">> => string()
%% }
-type update_sol_network_service_data() :: #{binary() => any()}.


%% Example:
%% list_sol_network_instance_metadata() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"lastModified">> => [non_neg_integer()]
%% }
-type list_sol_network_instance_metadata() :: #{binary() => any()}.


%% Example:
%% get_sol_network_instance_output() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"lcmOpInfo">> => lcm_operation_info(),
%%   <<"metadata">> => get_sol_network_instance_metadata(),
%%   <<"nsInstanceDescription">> => [string()],
%%   <<"nsInstanceName">> => [string()],
%%   <<"nsState">> => list(any()),
%%   <<"nsdId">> => string(),
%%   <<"nsdInfoId">> => string(),
%%   <<"tags">> => map()
%% }
-type get_sol_network_instance_output() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% modify_vnf_info_metadata() :: #{
%%   <<"vnfConfigurableProperties">> => [any()],
%%   <<"vnfInstanceId">> => string()
%% }
-type modify_vnf_info_metadata() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% get_sol_function_package_descriptor_output() :: #{
%%   <<"contentType">> => list(any()),
%%   <<"vnfd">> => [binary()]
%% }
-type get_sol_function_package_descriptor_output() :: #{binary() => any()}.


%% Example:
%% get_sol_network_instance_metadata() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"lastModified">> => [non_neg_integer()]
%% }
-type get_sol_network_instance_metadata() :: #{binary() => any()}.


%% Example:
%% get_sol_network_package_metadata() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"lastModified">> => [non_neg_integer()],
%%   <<"nsd">> => network_artifact_meta()
%% }
-type get_sol_network_package_metadata() :: #{binary() => any()}.

%% Example:
%% get_sol_network_operation_input() :: #{}
-type get_sol_network_operation_input() :: #{}.


%% Example:
%% update_sol_network_package_input() :: #{
%%   <<"nsdOperationalState">> := list(any())
%% }
-type update_sol_network_package_input() :: #{binary() => any()}.


%% Example:
%% create_sol_function_package_input() :: #{
%%   <<"tags">> => map()
%% }
-type create_sol_function_package_input() :: #{binary() => any()}.


%% Example:
%% update_sol_function_package_output() :: #{
%%   <<"operationalState">> => list(any())
%% }
-type update_sol_function_package_output() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% get_sol_network_operation_task_details() :: #{
%%   <<"taskContext">> => map(),
%%   <<"taskEndTime">> => [non_neg_integer()],
%%   <<"taskErrorDetails">> => error_info(),
%%   <<"taskName">> => [string()],
%%   <<"taskStartTime">> => [non_neg_integer()],
%%   <<"taskStatus">> => list(any())
%% }
-type get_sol_network_operation_task_details() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% get_sol_network_package_content_input() :: #{
%%   <<"accept">> := list(any())
%% }
-type get_sol_network_package_content_input() :: #{binary() => any()}.

%% Example:
%% delete_sol_network_package_input() :: #{}
-type delete_sol_network_package_input() :: #{}.

%% Example:
%% get_sol_function_package_input() :: #{}
-type get_sol_function_package_input() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.


%% Example:
%% validate_sol_network_package_content_output() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"metadata">> => validate_sol_network_package_content_metadata(),
%%   <<"nsdId">> => string(),
%%   <<"nsdName">> => [string()],
%%   <<"nsdVersion">> => [string()],
%%   <<"vnfPkgIds">> => list(string())
%% }
-type validate_sol_network_package_content_output() :: #{binary() => any()}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.


%% Example:
%% get_sol_function_package_content_input() :: #{
%%   <<"accept">> := list(any())
%% }
-type get_sol_function_package_content_input() :: #{binary() => any()}.


%% Example:
%% get_sol_function_package_metadata() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"lastModified">> => [non_neg_integer()],
%%   <<"vnfd">> => function_artifact_meta()
%% }
-type get_sol_function_package_metadata() :: #{binary() => any()}.


%% Example:
%% update_sol_network_instance_input() :: #{
%%   <<"modifyVnfInfoData">> => update_sol_network_modify(),
%%   <<"tags">> => map(),
%%   <<"updateNs">> => update_sol_network_service_data(),
%%   <<"updateType">> := list(any())
%% }
-type update_sol_network_instance_input() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% instantiate_sol_network_instance_output() :: #{
%%   <<"nsLcmOpOccId">> => string(),
%%   <<"tags">> => map()
%% }
-type instantiate_sol_network_instance_output() :: #{binary() => any()}.


%% Example:
%% tosca_override() :: #{
%%   <<"defaultValue">> => [string()],
%%   <<"name">> => [string()]
%% }
-type tosca_override() :: #{binary() => any()}.


%% Example:
%% get_sol_network_operation_metadata() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"instantiateMetadata">> => instantiate_metadata(),
%%   <<"lastModified">> => [non_neg_integer()],
%%   <<"modifyVnfInfoMetadata">> => modify_vnf_info_metadata(),
%%   <<"updateNsMetadata">> => update_ns_metadata()
%% }
-type get_sol_network_operation_metadata() :: #{binary() => any()}.


%% Example:
%% list_sol_network_operations_output() :: #{
%%   <<"networkOperations">> => list(list_sol_network_operations_info()),
%%   <<"nextToken">> => string()
%% }
-type list_sol_network_operations_output() :: #{binary() => any()}.


%% Example:
%% list_sol_function_package_metadata() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"lastModified">> => [non_neg_integer()]
%% }
-type list_sol_function_package_metadata() :: #{binary() => any()}.

%% Example:
%% get_sol_function_instance_input() :: #{}
-type get_sol_function_instance_input() :: #{}.


%% Example:
%% get_sol_vnfc_resource_info_metadata() :: #{
%%   <<"cluster">> => [string()],
%%   <<"helmChart">> => [string()],
%%   <<"nodeGroup">> => [string()]
%% }
-type get_sol_vnfc_resource_info_metadata() :: #{binary() => any()}.

%% Example:
%% get_sol_network_instance_input() :: #{}
-type get_sol_network_instance_input() :: #{}.


%% Example:
%% instantiate_metadata() :: #{
%%   <<"additionalParamsForNs">> => [any()],
%%   <<"nsdInfoId">> => string()
%% }
-type instantiate_metadata() :: #{binary() => any()}.


%% Example:
%% list_sol_network_instances_output() :: #{
%%   <<"networkInstances">> => list(list_sol_network_instance_info()),
%%   <<"nextToken">> => string()
%% }
-type list_sol_network_instances_output() :: #{binary() => any()}.


%% Example:
%% create_sol_network_instance_input() :: #{
%%   <<"nsDescription">> => [string()],
%%   <<"nsName">> := [string()],
%%   <<"nsdInfoId">> := string(),
%%   <<"tags">> => map()
%% }
-type create_sol_network_instance_input() :: #{binary() => any()}.


%% Example:
%% list_sol_network_instance_info() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"metadata">> => list_sol_network_instance_metadata(),
%%   <<"nsInstanceDescription">> => [string()],
%%   <<"nsInstanceName">> => [string()],
%%   <<"nsState">> => list(any()),
%%   <<"nsdId">> => string(),
%%   <<"nsdInfoId">> => string()
%% }
-type list_sol_network_instance_info() :: #{binary() => any()}.


%% Example:
%% list_sol_function_package_info() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"metadata">> => list_sol_function_package_metadata(),
%%   <<"onboardingState">> => list(any()),
%%   <<"operationalState">> => list(any()),
%%   <<"usageState">> => list(any()),
%%   <<"vnfProductName">> => [string()],
%%   <<"vnfProvider">> => [string()],
%%   <<"vnfdId">> => [string()],
%%   <<"vnfdVersion">> => [string()]
%% }
-type list_sol_function_package_info() :: #{binary() => any()}.


%% Example:
%% function_artifact_meta() :: #{
%%   <<"overrides">> => list(tosca_override())
%% }
-type function_artifact_meta() :: #{binary() => any()}.


%% Example:
%% validate_sol_function_package_content_input() :: #{
%%   <<"contentType">> => list(any()),
%%   <<"file">> := binary()
%% }
-type validate_sol_function_package_content_input() :: #{binary() => any()}.


%% Example:
%% validate_sol_function_package_content_output() :: #{
%%   <<"id">> => string(),
%%   <<"metadata">> => validate_sol_function_package_content_metadata(),
%%   <<"vnfProductName">> => [string()],
%%   <<"vnfProvider">> => [string()],
%%   <<"vnfdId">> => string(),
%%   <<"vnfdVersion">> => [string()]
%% }
-type validate_sol_function_package_content_output() :: #{binary() => any()}.


%% Example:
%% get_sol_network_package_descriptor_output() :: #{
%%   <<"contentType">> => list(any()),
%%   <<"nsd">> => [binary()]
%% }
-type get_sol_network_package_descriptor_output() :: #{binary() => any()}.


%% Example:
%% validate_sol_function_package_content_metadata() :: #{
%%   <<"vnfd">> => function_artifact_meta()
%% }
-type validate_sol_function_package_content_metadata() :: #{binary() => any()}.


%% Example:
%% get_sol_function_package_content_output() :: #{
%%   <<"contentType">> => list(any()),
%%   <<"packageContent">> => [binary()]
%% }
-type get_sol_function_package_content_output() :: #{binary() => any()}.


%% Example:
%% get_sol_network_operation_output() :: #{
%%   <<"arn">> => string(),
%%   <<"error">> => problem_details(),
%%   <<"id">> => string(),
%%   <<"lcmOperationType">> => list(any()),
%%   <<"metadata">> => get_sol_network_operation_metadata(),
%%   <<"nsInstanceId">> => string(),
%%   <<"operationState">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"tasks">> => list(get_sol_network_operation_task_details()),
%%   <<"updateType">> => list(any())
%% }
-type get_sol_network_operation_output() :: #{binary() => any()}.


%% Example:
%% list_sol_function_instance_info() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"instantiatedVnfInfo">> => get_sol_instantiated_vnf_info(),
%%   <<"instantiationState">> => list(any()),
%%   <<"metadata">> => list_sol_function_instance_metadata(),
%%   <<"nsInstanceId">> => string(),
%%   <<"vnfPkgId">> => string(),
%%   <<"vnfPkgName">> => [string()]
%% }
-type list_sol_function_instance_info() :: #{binary() => any()}.


%% Example:
%% lcm_operation_info() :: #{
%%   <<"nsLcmOpOccId">> => string()
%% }
-type lcm_operation_info() :: #{binary() => any()}.


%% Example:
%% update_sol_function_package_input() :: #{
%%   <<"operationalState">> := list(any())
%% }
-type update_sol_function_package_input() :: #{binary() => any()}.


%% Example:
%% list_sol_function_instances_output() :: #{
%%   <<"functionInstances">> => list(list_sol_function_instance_info()),
%%   <<"nextToken">> => string()
%% }
-type list_sol_function_instances_output() :: #{binary() => any()}.


%% Example:
%% list_sol_network_package_info() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"metadata">> => list_sol_network_package_metadata(),
%%   <<"nsdDesigner">> => [string()],
%%   <<"nsdId">> => [string()],
%%   <<"nsdInvariantId">> => [string()],
%%   <<"nsdName">> => [string()],
%%   <<"nsdOnboardingState">> => list(any()),
%%   <<"nsdOperationalState">> => list(any()),
%%   <<"nsdUsageState">> => list(any()),
%%   <<"nsdVersion">> => [string()],
%%   <<"vnfPkgIds">> => list(string())
%% }
-type list_sol_network_package_info() :: #{binary() => any()}.


%% Example:
%% list_sol_function_packages_input() :: #{
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string()
%% }
-type list_sol_function_packages_input() :: #{binary() => any()}.


%% Example:
%% network_artifact_meta() :: #{
%%   <<"overrides">> => list(tosca_override())
%% }
-type network_artifact_meta() :: #{binary() => any()}.

-type cancel_sol_network_operation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_sol_function_package_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type create_sol_network_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type create_sol_network_package_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception().

-type delete_sol_function_package_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_sol_network_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_sol_network_package_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_sol_function_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_sol_function_package_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_sol_function_package_content_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_sol_function_package_descriptor_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_sol_network_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_sol_network_operation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_sol_network_package_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_sol_network_package_content_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_sol_network_package_descriptor_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type instantiate_sol_network_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type list_sol_function_instances_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_sol_function_packages_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_sol_network_instances_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_sol_network_operations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_sol_network_packages_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_sol_function_package_content_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type put_sol_network_package_content_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type terminate_sol_network_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_sol_function_package_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_sol_network_instance_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception().

-type update_sol_network_package_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type validate_sol_function_package_content_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type validate_sol_network_package_content_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Cancels a network operation.
%%
%% A network operation is any operation that is done to your network, such as
%% network instance instantiation or termination.
-spec cancel_sol_network_operation(aws_client:aws_client(), binary() | list(), cancel_sol_network_operation_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_sol_network_operation_errors(), tuple()}.
cancel_sol_network_operation(Client, NsLcmOpOccId, Input) ->
    cancel_sol_network_operation(Client, NsLcmOpOccId, Input, []).

-spec cancel_sol_network_operation(aws_client:aws_client(), binary() | list(), cancel_sol_network_operation_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_sol_network_operation_errors(), tuple()}.
cancel_sol_network_operation(Client, NsLcmOpOccId, Input0, Options0) ->
    Method = post,
    Path = ["/sol/nslcm/v1/ns_lcm_op_occs/", aws_util:encode_uri(NsLcmOpOccId), "/cancel"],
    SuccessStatusCode = 202,
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

%% @doc Creates a function package.
%%
%% A function package is a .zip file in CSAR (Cloud Service Archive) format
%% that contains a network function (an ETSI standard telecommunication
%% application) and function package descriptor that uses the TOSCA standard
%% to describe how the network functions should run on your network. For more
%% information, see Function packages:
%% https://docs.aws.amazon.com/tnb/latest/ug/function-packages.html in the
%% Amazon Web Services Telco Network Builder User Guide.
%%
%% Creating a function package is the first step for creating a network in
%% AWS TNB. This
%% request creates an empty container with an ID. The next step is to upload
%% the actual CSAR
%% zip file into that empty container. To upload function package content,
%% see PutSolFunctionPackageContent:
%% https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolFunctionPackageContent.html.
-spec create_sol_function_package(aws_client:aws_client(), create_sol_function_package_input()) ->
    {ok, create_sol_function_package_output(), tuple()} |
    {error, any()} |
    {error, create_sol_function_package_errors(), tuple()}.
create_sol_function_package(Client, Input) ->
    create_sol_function_package(Client, Input, []).

-spec create_sol_function_package(aws_client:aws_client(), create_sol_function_package_input(), proplists:proplist()) ->
    {ok, create_sol_function_package_output(), tuple()} |
    {error, any()} |
    {error, create_sol_function_package_errors(), tuple()}.
create_sol_function_package(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sol/vnfpkgm/v1/vnf_packages"],
    SuccessStatusCode = 201,
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

%% @doc Creates a network instance.
%%
%% A network instance is a single network created in Amazon Web Services TNB
%% that can be deployed and on which life-cycle operations (like terminate,
%% update, and delete) can be performed. Creating a network instance is the
%% third step after creating a network
%% package. For more information about network instances, Network instances:
%% https://docs.aws.amazon.com/tnb/latest/ug/network-instances.html in the
%% Amazon Web Services Telco Network Builder User Guide.
%%
%% Once you create a network instance, you can instantiate it. To instantiate
%% a network,
%% see InstantiateSolNetworkInstance:
%% https://docs.aws.amazon.com/tnb/latest/APIReference/API_InstantiateSolNetworkInstance.html.
-spec create_sol_network_instance(aws_client:aws_client(), create_sol_network_instance_input()) ->
    {ok, create_sol_network_instance_output(), tuple()} |
    {error, any()} |
    {error, create_sol_network_instance_errors(), tuple()}.
create_sol_network_instance(Client, Input) ->
    create_sol_network_instance(Client, Input, []).

-spec create_sol_network_instance(aws_client:aws_client(), create_sol_network_instance_input(), proplists:proplist()) ->
    {ok, create_sol_network_instance_output(), tuple()} |
    {error, any()} |
    {error, create_sol_network_instance_errors(), tuple()}.
create_sol_network_instance(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sol/nslcm/v1/ns_instances"],
    SuccessStatusCode = 201,
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

%% @doc Creates a network package.
%%
%% A network package is a .zip file in CSAR (Cloud Service Archive) format
%% defines the function packages you want to deploy and the Amazon Web
%% Services infrastructure you want to deploy them on. For more information,
%% see Network instances:
%% https://docs.aws.amazon.com/tnb/latest/ug/network-instances.html in the
%% Amazon Web Services Telco Network Builder User Guide.
%%
%% A network package consists of a network service descriptor (NSD) file
%% (required) and any
%% additional files (optional), such as scripts specific to your needs. For
%% example, if you
%% have multiple function packages in your network package, you can use the
%% NSD to define
%% which network functions should run in certain VPCs, subnets, or EKS
%% clusters.
%%
%% This request creates an empty network package container with an ID. Once
%% you create a
%% network package, you can upload the network package content using
%% PutSolNetworkPackageContent:
%% https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolNetworkPackageContent.html.
-spec create_sol_network_package(aws_client:aws_client(), create_sol_network_package_input()) ->
    {ok, create_sol_network_package_output(), tuple()} |
    {error, any()} |
    {error, create_sol_network_package_errors(), tuple()}.
create_sol_network_package(Client, Input) ->
    create_sol_network_package(Client, Input, []).

-spec create_sol_network_package(aws_client:aws_client(), create_sol_network_package_input(), proplists:proplist()) ->
    {ok, create_sol_network_package_output(), tuple()} |
    {error, any()} |
    {error, create_sol_network_package_errors(), tuple()}.
create_sol_network_package(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sol/nsd/v1/ns_descriptors"],
    SuccessStatusCode = 201,
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

%% @doc Deletes a function package.
%%
%% A function package is a .zip file in CSAR (Cloud Service Archive) format
%% that contains a network function (an ETSI standard telecommunication
%% application) and function package descriptor that uses the TOSCA standard
%% to describe how the network functions should run on your network.
%%
%% To delete a function package, the package must be in a disabled state. To
%% disable a
%% function package, see UpdateSolFunctionPackage:
%% https://docs.aws.amazon.com/tnb/latest/APIReference/API_UpdateSolFunctionPackage.html.
-spec delete_sol_function_package(aws_client:aws_client(), binary() | list(), delete_sol_function_package_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_sol_function_package_errors(), tuple()}.
delete_sol_function_package(Client, VnfPkgId, Input) ->
    delete_sol_function_package(Client, VnfPkgId, Input, []).

-spec delete_sol_function_package(aws_client:aws_client(), binary() | list(), delete_sol_function_package_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_sol_function_package_errors(), tuple()}.
delete_sol_function_package(Client, VnfPkgId, Input0, Options0) ->
    Method = delete,
    Path = ["/sol/vnfpkgm/v1/vnf_packages/", aws_util:encode_uri(VnfPkgId), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes a network instance.
%%
%% A network instance is a single network created in Amazon Web Services TNB
%% that can be deployed and on which life-cycle operations (like terminate,
%% update, and delete) can be performed.
%%
%% To delete a network instance, the instance must be in a stopped or
%% terminated state. To
%% terminate a network instance, see TerminateSolNetworkInstance:
%% https://docs.aws.amazon.com/tnb/latest/APIReference/API_TerminateSolNetworkInstance.html.
-spec delete_sol_network_instance(aws_client:aws_client(), binary() | list(), delete_sol_network_instance_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_sol_network_instance_errors(), tuple()}.
delete_sol_network_instance(Client, NsInstanceId, Input) ->
    delete_sol_network_instance(Client, NsInstanceId, Input, []).

-spec delete_sol_network_instance(aws_client:aws_client(), binary() | list(), delete_sol_network_instance_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_sol_network_instance_errors(), tuple()}.
delete_sol_network_instance(Client, NsInstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/sol/nslcm/v1/ns_instances/", aws_util:encode_uri(NsInstanceId), ""],
    SuccessStatusCode = 204,
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

%% @doc Deletes network package.
%%
%% A network package is a .zip file in CSAR (Cloud Service Archive) format
%% defines the function packages you want to deploy and the Amazon Web
%% Services infrastructure you want to deploy them on.
%%
%% To delete a network package, the package must be in a disable state. To
%% disable a
%% network package, see UpdateSolNetworkPackage:
%% https://docs.aws.amazon.com/tnb/latest/APIReference/API_UpdateSolNetworkPackage.html.
-spec delete_sol_network_package(aws_client:aws_client(), binary() | list(), delete_sol_network_package_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_sol_network_package_errors(), tuple()}.
delete_sol_network_package(Client, NsdInfoId, Input) ->
    delete_sol_network_package(Client, NsdInfoId, Input, []).

-spec delete_sol_network_package(aws_client:aws_client(), binary() | list(), delete_sol_network_package_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_sol_network_package_errors(), tuple()}.
delete_sol_network_package(Client, NsdInfoId, Input0, Options0) ->
    Method = delete,
    Path = ["/sol/nsd/v1/ns_descriptors/", aws_util:encode_uri(NsdInfoId), ""],
    SuccessStatusCode = 204,
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

%% @doc Gets the details of a network function instance, including the
%% instantiation state and
%% metadata from the function package descriptor in the network function
%% package.
%%
%% A network function instance is a function in a function package .
-spec get_sol_function_instance(aws_client:aws_client(), binary() | list()) ->
    {ok, get_sol_function_instance_output(), tuple()} |
    {error, any()} |
    {error, get_sol_function_instance_errors(), tuple()}.
get_sol_function_instance(Client, VnfInstanceId)
  when is_map(Client) ->
    get_sol_function_instance(Client, VnfInstanceId, #{}, #{}).

-spec get_sol_function_instance(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_sol_function_instance_output(), tuple()} |
    {error, any()} |
    {error, get_sol_function_instance_errors(), tuple()}.
get_sol_function_instance(Client, VnfInstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sol_function_instance(Client, VnfInstanceId, QueryMap, HeadersMap, []).

-spec get_sol_function_instance(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sol_function_instance_output(), tuple()} |
    {error, any()} |
    {error, get_sol_function_instance_errors(), tuple()}.
get_sol_function_instance(Client, VnfInstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/vnflcm/v1/vnf_instances/", aws_util:encode_uri(VnfInstanceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the details of an individual function package, such as the
%% operational state and
%% whether the package is in use.
%%
%% A function package is a .zip file in CSAR (Cloud Service Archive) format
%% that contains a network function (an ETSI standard telecommunication
%% application) and function package descriptor that uses the TOSCA standard
%% to describe how the network functions should run on your network..
-spec get_sol_function_package(aws_client:aws_client(), binary() | list()) ->
    {ok, get_sol_function_package_output(), tuple()} |
    {error, any()} |
    {error, get_sol_function_package_errors(), tuple()}.
get_sol_function_package(Client, VnfPkgId)
  when is_map(Client) ->
    get_sol_function_package(Client, VnfPkgId, #{}, #{}).

-spec get_sol_function_package(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_sol_function_package_output(), tuple()} |
    {error, any()} |
    {error, get_sol_function_package_errors(), tuple()}.
get_sol_function_package(Client, VnfPkgId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sol_function_package(Client, VnfPkgId, QueryMap, HeadersMap, []).

-spec get_sol_function_package(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sol_function_package_output(), tuple()} |
    {error, any()} |
    {error, get_sol_function_package_errors(), tuple()}.
get_sol_function_package(Client, VnfPkgId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/vnfpkgm/v1/vnf_packages/", aws_util:encode_uri(VnfPkgId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the contents of a function package.
%%
%% A function package is a .zip file in CSAR (Cloud Service Archive) format
%% that contains a network function (an ETSI standard telecommunication
%% application) and function package descriptor that uses the TOSCA standard
%% to describe how the network functions should run on your network.
-spec get_sol_function_package_content(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_sol_function_package_content_output(), tuple()} |
    {error, any()} |
    {error, get_sol_function_package_content_errors(), tuple()}.
get_sol_function_package_content(Client, VnfPkgId, Accept)
  when is_map(Client) ->
    get_sol_function_package_content(Client, VnfPkgId, Accept, #{}, #{}).

-spec get_sol_function_package_content(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_sol_function_package_content_output(), tuple()} |
    {error, any()} |
    {error, get_sol_function_package_content_errors(), tuple()}.
get_sol_function_package_content(Client, VnfPkgId, Accept, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sol_function_package_content(Client, VnfPkgId, Accept, QueryMap, HeadersMap, []).

-spec get_sol_function_package_content(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sol_function_package_content_output(), tuple()} |
    {error, any()} |
    {error, get_sol_function_package_content_errors(), tuple()}.
get_sol_function_package_content(Client, VnfPkgId, Accept, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/vnfpkgm/v1/vnf_packages/", aws_util:encode_uri(VnfPkgId), "/package_content"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Accept">>, Accept}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Type">>, <<"contentType">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets a function package descriptor in a function package.
%%
%% A function package descriptor is a .yaml file in a function package that
%% uses the TOSCA standard to describe how the network function in the
%% function package should run on your network.
%%
%% A function package is a .zip file in CSAR (Cloud Service Archive) format
%% that contains a network function (an ETSI standard telecommunication
%% application) and function package descriptor that uses the TOSCA standard
%% to describe how the network functions should run on your network.
-spec get_sol_function_package_descriptor(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_sol_function_package_descriptor_output(), tuple()} |
    {error, any()} |
    {error, get_sol_function_package_descriptor_errors(), tuple()}.
get_sol_function_package_descriptor(Client, VnfPkgId, Accept)
  when is_map(Client) ->
    get_sol_function_package_descriptor(Client, VnfPkgId, Accept, #{}, #{}).

-spec get_sol_function_package_descriptor(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_sol_function_package_descriptor_output(), tuple()} |
    {error, any()} |
    {error, get_sol_function_package_descriptor_errors(), tuple()}.
get_sol_function_package_descriptor(Client, VnfPkgId, Accept, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sol_function_package_descriptor(Client, VnfPkgId, Accept, QueryMap, HeadersMap, []).

-spec get_sol_function_package_descriptor(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sol_function_package_descriptor_output(), tuple()} |
    {error, any()} |
    {error, get_sol_function_package_descriptor_errors(), tuple()}.
get_sol_function_package_descriptor(Client, VnfPkgId, Accept, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/vnfpkgm/v1/vnf_packages/", aws_util:encode_uri(VnfPkgId), "/vnfd"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Accept">>, Accept}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Type">>, <<"contentType">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets the details of the network instance.
%%
%% A network instance is a single network created in Amazon Web Services TNB
%% that can be deployed and on which life-cycle operations (like terminate,
%% update, and delete) can be performed.
-spec get_sol_network_instance(aws_client:aws_client(), binary() | list()) ->
    {ok, get_sol_network_instance_output(), tuple()} |
    {error, any()} |
    {error, get_sol_network_instance_errors(), tuple()}.
get_sol_network_instance(Client, NsInstanceId)
  when is_map(Client) ->
    get_sol_network_instance(Client, NsInstanceId, #{}, #{}).

-spec get_sol_network_instance(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_sol_network_instance_output(), tuple()} |
    {error, any()} |
    {error, get_sol_network_instance_errors(), tuple()}.
get_sol_network_instance(Client, NsInstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sol_network_instance(Client, NsInstanceId, QueryMap, HeadersMap, []).

-spec get_sol_network_instance(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sol_network_instance_output(), tuple()} |
    {error, any()} |
    {error, get_sol_network_instance_errors(), tuple()}.
get_sol_network_instance(Client, NsInstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/nslcm/v1/ns_instances/", aws_util:encode_uri(NsInstanceId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the details of a network operation, including the tasks involved
%% in the network
%% operation and the status of the tasks.
%%
%% A network operation is any operation that is done to your network, such as
%% network instance instantiation or termination.
-spec get_sol_network_operation(aws_client:aws_client(), binary() | list()) ->
    {ok, get_sol_network_operation_output(), tuple()} |
    {error, any()} |
    {error, get_sol_network_operation_errors(), tuple()}.
get_sol_network_operation(Client, NsLcmOpOccId)
  when is_map(Client) ->
    get_sol_network_operation(Client, NsLcmOpOccId, #{}, #{}).

-spec get_sol_network_operation(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_sol_network_operation_output(), tuple()} |
    {error, any()} |
    {error, get_sol_network_operation_errors(), tuple()}.
get_sol_network_operation(Client, NsLcmOpOccId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sol_network_operation(Client, NsLcmOpOccId, QueryMap, HeadersMap, []).

-spec get_sol_network_operation(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sol_network_operation_output(), tuple()} |
    {error, any()} |
    {error, get_sol_network_operation_errors(), tuple()}.
get_sol_network_operation(Client, NsLcmOpOccId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/nslcm/v1/ns_lcm_op_occs/", aws_util:encode_uri(NsLcmOpOccId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the details of a network package.
%%
%% A network package is a .zip file in CSAR (Cloud Service Archive) format
%% defines the function packages you want to deploy and the Amazon Web
%% Services infrastructure you want to deploy them on.
-spec get_sol_network_package(aws_client:aws_client(), binary() | list()) ->
    {ok, get_sol_network_package_output(), tuple()} |
    {error, any()} |
    {error, get_sol_network_package_errors(), tuple()}.
get_sol_network_package(Client, NsdInfoId)
  when is_map(Client) ->
    get_sol_network_package(Client, NsdInfoId, #{}, #{}).

-spec get_sol_network_package(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_sol_network_package_output(), tuple()} |
    {error, any()} |
    {error, get_sol_network_package_errors(), tuple()}.
get_sol_network_package(Client, NsdInfoId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sol_network_package(Client, NsdInfoId, QueryMap, HeadersMap, []).

-spec get_sol_network_package(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sol_network_package_output(), tuple()} |
    {error, any()} |
    {error, get_sol_network_package_errors(), tuple()}.
get_sol_network_package(Client, NsdInfoId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/nsd/v1/ns_descriptors/", aws_util:encode_uri(NsdInfoId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the contents of a network package.
%%
%% A network package is a .zip file in CSAR (Cloud Service Archive) format
%% defines the function packages you want to deploy and the Amazon Web
%% Services infrastructure you want to deploy them on.
-spec get_sol_network_package_content(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_sol_network_package_content_output(), tuple()} |
    {error, any()} |
    {error, get_sol_network_package_content_errors(), tuple()}.
get_sol_network_package_content(Client, NsdInfoId, Accept)
  when is_map(Client) ->
    get_sol_network_package_content(Client, NsdInfoId, Accept, #{}, #{}).

-spec get_sol_network_package_content(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_sol_network_package_content_output(), tuple()} |
    {error, any()} |
    {error, get_sol_network_package_content_errors(), tuple()}.
get_sol_network_package_content(Client, NsdInfoId, Accept, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sol_network_package_content(Client, NsdInfoId, Accept, QueryMap, HeadersMap, []).

-spec get_sol_network_package_content(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sol_network_package_content_output(), tuple()} |
    {error, any()} |
    {error, get_sol_network_package_content_errors(), tuple()}.
get_sol_network_package_content(Client, NsdInfoId, Accept, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/nsd/v1/ns_descriptors/", aws_util:encode_uri(NsdInfoId), "/nsd_content"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers0 =
      [
        {<<"Accept">>, Accept}
      ],
    Headers = [H || {_, V} = H <- Headers0, V =/= undefined],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Type">>, <<"contentType">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Gets the content of the network service descriptor.
%%
%% A network service descriptor is a .yaml file in a network package that
%% uses the TOSCA standard to describe the network functions you want to
%% deploy and the Amazon Web Services infrastructure you want to deploy the
%% network functions on.
-spec get_sol_network_package_descriptor(aws_client:aws_client(), binary() | list()) ->
    {ok, get_sol_network_package_descriptor_output(), tuple()} |
    {error, any()} |
    {error, get_sol_network_package_descriptor_errors(), tuple()}.
get_sol_network_package_descriptor(Client, NsdInfoId)
  when is_map(Client) ->
    get_sol_network_package_descriptor(Client, NsdInfoId, #{}, #{}).

-spec get_sol_network_package_descriptor(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_sol_network_package_descriptor_output(), tuple()} |
    {error, any()} |
    {error, get_sol_network_package_descriptor_errors(), tuple()}.
get_sol_network_package_descriptor(Client, NsdInfoId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_sol_network_package_descriptor(Client, NsdInfoId, QueryMap, HeadersMap, []).

-spec get_sol_network_package_descriptor(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_sol_network_package_descriptor_output(), tuple()} |
    {error, any()} |
    {error, get_sol_network_package_descriptor_errors(), tuple()}.
get_sol_network_package_descriptor(Client, NsdInfoId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/nsd/v1/ns_descriptors/", aws_util:encode_uri(NsdInfoId), "/nsd"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    case request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode) of
      {ok, Body0, {_, ResponseHeaders, _} = Response} ->
        ResponseHeadersParams =
          [
            {<<"Content-Type">>, <<"contentType">>}
          ],
        FoldFun = fun({Name_, Key_}, Acc_) ->
                      case lists:keyfind(Name_, 1, ResponseHeaders) of
                        false -> Acc_;
                        {_, Value_} -> Acc_#{Key_ => Value_}
                      end
                  end,
        Body = lists:foldl(FoldFun, Body0, ResponseHeadersParams),
        {ok, Body, Response};
      Result ->
        Result
    end.

%% @doc Instantiates a network instance.
%%
%% A network instance is a single network created in Amazon Web Services TNB
%% that can be deployed and on which life-cycle operations (like terminate,
%% update, and delete) can be performed.
%%
%% Before you can instantiate a network instance, you have to create a
%% network instance.
%% For more information, see CreateSolNetworkInstance:
%% https://docs.aws.amazon.com/tnb/latest/APIReference/API_CreateSolNetworkInstance.html.
-spec instantiate_sol_network_instance(aws_client:aws_client(), binary() | list(), instantiate_sol_network_instance_input()) ->
    {ok, instantiate_sol_network_instance_output(), tuple()} |
    {error, any()} |
    {error, instantiate_sol_network_instance_errors(), tuple()}.
instantiate_sol_network_instance(Client, NsInstanceId, Input) ->
    instantiate_sol_network_instance(Client, NsInstanceId, Input, []).

-spec instantiate_sol_network_instance(aws_client:aws_client(), binary() | list(), instantiate_sol_network_instance_input(), proplists:proplist()) ->
    {ok, instantiate_sol_network_instance_output(), tuple()} |
    {error, any()} |
    {error, instantiate_sol_network_instance_errors(), tuple()}.
instantiate_sol_network_instance(Client, NsInstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/sol/nslcm/v1/ns_instances/", aws_util:encode_uri(NsInstanceId), "/instantiate"],
    SuccessStatusCode = 201,
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
                     {<<"dry_run">>, <<"dryRun">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists network function instances.
%%
%% A network function instance is a function in a function package .
-spec list_sol_function_instances(aws_client:aws_client()) ->
    {ok, list_sol_function_instances_output(), tuple()} |
    {error, any()} |
    {error, list_sol_function_instances_errors(), tuple()}.
list_sol_function_instances(Client)
  when is_map(Client) ->
    list_sol_function_instances(Client, #{}, #{}).

-spec list_sol_function_instances(aws_client:aws_client(), map(), map()) ->
    {ok, list_sol_function_instances_output(), tuple()} |
    {error, any()} |
    {error, list_sol_function_instances_errors(), tuple()}.
list_sol_function_instances(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sol_function_instances(Client, QueryMap, HeadersMap, []).

-spec list_sol_function_instances(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_sol_function_instances_output(), tuple()} |
    {error, any()} |
    {error, list_sol_function_instances_errors(), tuple()}.
list_sol_function_instances(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/vnflcm/v1/vnf_instances"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"nextpage_opaque_marker">>, maps:get(<<"nextpage_opaque_marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists information about function packages.
%%
%% A function package is a .zip file in CSAR (Cloud Service Archive) format
%% that contains a network function (an ETSI standard telecommunication
%% application) and function package descriptor that uses the TOSCA standard
%% to describe how the network functions should run on your network.
-spec list_sol_function_packages(aws_client:aws_client()) ->
    {ok, list_sol_function_packages_output(), tuple()} |
    {error, any()} |
    {error, list_sol_function_packages_errors(), tuple()}.
list_sol_function_packages(Client)
  when is_map(Client) ->
    list_sol_function_packages(Client, #{}, #{}).

-spec list_sol_function_packages(aws_client:aws_client(), map(), map()) ->
    {ok, list_sol_function_packages_output(), tuple()} |
    {error, any()} |
    {error, list_sol_function_packages_errors(), tuple()}.
list_sol_function_packages(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sol_function_packages(Client, QueryMap, HeadersMap, []).

-spec list_sol_function_packages(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_sol_function_packages_output(), tuple()} |
    {error, any()} |
    {error, list_sol_function_packages_errors(), tuple()}.
list_sol_function_packages(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/vnfpkgm/v1/vnf_packages"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"nextpage_opaque_marker">>, maps:get(<<"nextpage_opaque_marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists your network instances.
%%
%% A network instance is a single network created in Amazon Web Services TNB
%% that can be deployed and on which life-cycle operations (like terminate,
%% update, and delete) can be performed.
-spec list_sol_network_instances(aws_client:aws_client()) ->
    {ok, list_sol_network_instances_output(), tuple()} |
    {error, any()} |
    {error, list_sol_network_instances_errors(), tuple()}.
list_sol_network_instances(Client)
  when is_map(Client) ->
    list_sol_network_instances(Client, #{}, #{}).

-spec list_sol_network_instances(aws_client:aws_client(), map(), map()) ->
    {ok, list_sol_network_instances_output(), tuple()} |
    {error, any()} |
    {error, list_sol_network_instances_errors(), tuple()}.
list_sol_network_instances(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sol_network_instances(Client, QueryMap, HeadersMap, []).

-spec list_sol_network_instances(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_sol_network_instances_output(), tuple()} |
    {error, any()} |
    {error, list_sol_network_instances_errors(), tuple()}.
list_sol_network_instances(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/nslcm/v1/ns_instances"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"nextpage_opaque_marker">>, maps:get(<<"nextpage_opaque_marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists details for a network operation, including when the operation
%% started and the
%% status of the operation.
%%
%% A network operation is any operation that is done to your network, such as
%% network instance instantiation or termination.
-spec list_sol_network_operations(aws_client:aws_client()) ->
    {ok, list_sol_network_operations_output(), tuple()} |
    {error, any()} |
    {error, list_sol_network_operations_errors(), tuple()}.
list_sol_network_operations(Client)
  when is_map(Client) ->
    list_sol_network_operations(Client, #{}, #{}).

-spec list_sol_network_operations(aws_client:aws_client(), map(), map()) ->
    {ok, list_sol_network_operations_output(), tuple()} |
    {error, any()} |
    {error, list_sol_network_operations_errors(), tuple()}.
list_sol_network_operations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sol_network_operations(Client, QueryMap, HeadersMap, []).

-spec list_sol_network_operations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_sol_network_operations_output(), tuple()} |
    {error, any()} |
    {error, list_sol_network_operations_errors(), tuple()}.
list_sol_network_operations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/nslcm/v1/ns_lcm_op_occs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"nextpage_opaque_marker">>, maps:get(<<"nextpage_opaque_marker">>, QueryMap, undefined)},
        {<<"nsInstanceId">>, maps:get(<<"nsInstanceId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists network packages.
%%
%% A network package is a .zip file in CSAR (Cloud Service Archive) format
%% defines the function packages you want to deploy and the Amazon Web
%% Services infrastructure you want to deploy them on.
-spec list_sol_network_packages(aws_client:aws_client()) ->
    {ok, list_sol_network_packages_output(), tuple()} |
    {error, any()} |
    {error, list_sol_network_packages_errors(), tuple()}.
list_sol_network_packages(Client)
  when is_map(Client) ->
    list_sol_network_packages(Client, #{}, #{}).

-spec list_sol_network_packages(aws_client:aws_client(), map(), map()) ->
    {ok, list_sol_network_packages_output(), tuple()} |
    {error, any()} |
    {error, list_sol_network_packages_errors(), tuple()}.
list_sol_network_packages(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_sol_network_packages(Client, QueryMap, HeadersMap, []).

-spec list_sol_network_packages(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_sol_network_packages_output(), tuple()} |
    {error, any()} |
    {error, list_sol_network_packages_errors(), tuple()}.
list_sol_network_packages(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sol/nsd/v1/ns_descriptors"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"max_results">>, maps:get(<<"max_results">>, QueryMap, undefined)},
        {<<"nextpage_opaque_marker">>, maps:get(<<"nextpage_opaque_marker">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists tags for AWS TNB resources.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
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

%% @doc Uploads the contents of a function package.
%%
%% A function package is a .zip file in CSAR (Cloud Service Archive) format
%% that contains a network function (an ETSI standard telecommunication
%% application) and function package descriptor that uses the TOSCA standard
%% to describe how the network functions should run on your network.
-spec put_sol_function_package_content(aws_client:aws_client(), binary() | list(), put_sol_function_package_content_input()) ->
    {ok, put_sol_function_package_content_output(), tuple()} |
    {error, any()} |
    {error, put_sol_function_package_content_errors(), tuple()}.
put_sol_function_package_content(Client, VnfPkgId, Input) ->
    put_sol_function_package_content(Client, VnfPkgId, Input, []).

-spec put_sol_function_package_content(aws_client:aws_client(), binary() | list(), put_sol_function_package_content_input(), proplists:proplist()) ->
    {ok, put_sol_function_package_content_output(), tuple()} |
    {error, any()} |
    {error, put_sol_function_package_content_errors(), tuple()}.
put_sol_function_package_content(Client, VnfPkgId, Input0, Options0) ->
    Method = put,
    Path = ["/sol/vnfpkgm/v1/vnf_packages/", aws_util:encode_uri(VnfPkgId), "/package_content"],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Content-Type">>, <<"contentType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Uploads the contents of a network package.
%%
%% A network package is a .zip file in CSAR (Cloud Service Archive) format
%% defines the function packages you want to deploy and the Amazon Web
%% Services infrastructure you want to deploy them on.
-spec put_sol_network_package_content(aws_client:aws_client(), binary() | list(), put_sol_network_package_content_input()) ->
    {ok, put_sol_network_package_content_output(), tuple()} |
    {error, any()} |
    {error, put_sol_network_package_content_errors(), tuple()}.
put_sol_network_package_content(Client, NsdInfoId, Input) ->
    put_sol_network_package_content(Client, NsdInfoId, Input, []).

-spec put_sol_network_package_content(aws_client:aws_client(), binary() | list(), put_sol_network_package_content_input(), proplists:proplist()) ->
    {ok, put_sol_network_package_content_output(), tuple()} |
    {error, any()} |
    {error, put_sol_network_package_content_errors(), tuple()}.
put_sol_network_package_content(Client, NsdInfoId, Input0, Options0) ->
    Method = put,
    Path = ["/sol/nsd/v1/ns_descriptors/", aws_util:encode_uri(NsdInfoId), "/nsd_content"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Content-Type">>, <<"contentType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Tags an AWS TNB resource.
%%
%% A tag is a label that you assign to an Amazon Web Services resource. Each
%% tag consists of a key and an optional value. You can use tags to search
%% and filter your resources or track your Amazon Web Services costs.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input()) ->
    {ok, tag_resource_output(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_input(), proplists:proplist()) ->
    {ok, tag_resource_output(), tuple()} |
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

%% @doc Terminates a network instance.
%%
%% A network instance is a single network created in Amazon Web Services TNB
%% that can be deployed and on which life-cycle operations (like terminate,
%% update, and delete) can be performed.
%%
%% You must terminate a network instance before you can delete it.
-spec terminate_sol_network_instance(aws_client:aws_client(), binary() | list(), terminate_sol_network_instance_input()) ->
    {ok, terminate_sol_network_instance_output(), tuple()} |
    {error, any()} |
    {error, terminate_sol_network_instance_errors(), tuple()}.
terminate_sol_network_instance(Client, NsInstanceId, Input) ->
    terminate_sol_network_instance(Client, NsInstanceId, Input, []).

-spec terminate_sol_network_instance(aws_client:aws_client(), binary() | list(), terminate_sol_network_instance_input(), proplists:proplist()) ->
    {ok, terminate_sol_network_instance_output(), tuple()} |
    {error, any()} |
    {error, terminate_sol_network_instance_errors(), tuple()}.
terminate_sol_network_instance(Client, NsInstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/sol/nslcm/v1/ns_instances/", aws_util:encode_uri(NsInstanceId), "/terminate"],
    SuccessStatusCode = 201,
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

%% @doc Untags an AWS TNB resource.
%%
%% A tag is a label that you assign to an Amazon Web Services resource. Each
%% tag consists of a key and an optional value. You can use tags to search
%% and filter your resources or track your Amazon Web Services costs.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input()) ->
    {ok, untag_resource_output(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_input(), proplists:proplist()) ->
    {ok, untag_resource_output(), tuple()} |
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

%% @doc Updates the operational state of function package.
%%
%% A function package is a .zip file in CSAR (Cloud Service Archive) format
%% that contains a network function (an ETSI standard telecommunication
%% application) and function package descriptor that uses the TOSCA standard
%% to describe how the network functions should run on your network.
-spec update_sol_function_package(aws_client:aws_client(), binary() | list(), update_sol_function_package_input()) ->
    {ok, update_sol_function_package_output(), tuple()} |
    {error, any()} |
    {error, update_sol_function_package_errors(), tuple()}.
update_sol_function_package(Client, VnfPkgId, Input) ->
    update_sol_function_package(Client, VnfPkgId, Input, []).

-spec update_sol_function_package(aws_client:aws_client(), binary() | list(), update_sol_function_package_input(), proplists:proplist()) ->
    {ok, update_sol_function_package_output(), tuple()} |
    {error, any()} |
    {error, update_sol_function_package_errors(), tuple()}.
update_sol_function_package(Client, VnfPkgId, Input0, Options0) ->
    Method = patch,
    Path = ["/sol/vnfpkgm/v1/vnf_packages/", aws_util:encode_uri(VnfPkgId), ""],
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

%% @doc Update a network instance.
%%
%% A network instance is a single network created in Amazon Web Services TNB
%% that can be deployed and on which life-cycle operations (like terminate,
%% update, and delete) can be performed.
%%
%% Choose the updateType parameter to target the necessary update of the
%% network instance.
-spec update_sol_network_instance(aws_client:aws_client(), binary() | list(), update_sol_network_instance_input()) ->
    {ok, update_sol_network_instance_output(), tuple()} |
    {error, any()} |
    {error, update_sol_network_instance_errors(), tuple()}.
update_sol_network_instance(Client, NsInstanceId, Input) ->
    update_sol_network_instance(Client, NsInstanceId, Input, []).

-spec update_sol_network_instance(aws_client:aws_client(), binary() | list(), update_sol_network_instance_input(), proplists:proplist()) ->
    {ok, update_sol_network_instance_output(), tuple()} |
    {error, any()} |
    {error, update_sol_network_instance_errors(), tuple()}.
update_sol_network_instance(Client, NsInstanceId, Input0, Options0) ->
    Method = post,
    Path = ["/sol/nslcm/v1/ns_instances/", aws_util:encode_uri(NsInstanceId), "/update"],
    SuccessStatusCode = 201,
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

%% @doc Updates the operational state of a network package.
%%
%% A network package is a .zip file in CSAR (Cloud Service Archive) format
%% defines the function packages you want to deploy and the Amazon Web
%% Services infrastructure you want to deploy them on.
%%
%% A network service descriptor is a .yaml file in a network package that
%% uses the TOSCA standard to describe the network functions you want to
%% deploy and the Amazon Web Services infrastructure you want to deploy the
%% network functions on.
-spec update_sol_network_package(aws_client:aws_client(), binary() | list(), update_sol_network_package_input()) ->
    {ok, update_sol_network_package_output(), tuple()} |
    {error, any()} |
    {error, update_sol_network_package_errors(), tuple()}.
update_sol_network_package(Client, NsdInfoId, Input) ->
    update_sol_network_package(Client, NsdInfoId, Input, []).

-spec update_sol_network_package(aws_client:aws_client(), binary() | list(), update_sol_network_package_input(), proplists:proplist()) ->
    {ok, update_sol_network_package_output(), tuple()} |
    {error, any()} |
    {error, update_sol_network_package_errors(), tuple()}.
update_sol_network_package(Client, NsdInfoId, Input0, Options0) ->
    Method = patch,
    Path = ["/sol/nsd/v1/ns_descriptors/", aws_util:encode_uri(NsdInfoId), ""],
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

%% @doc Validates function package content.
%%
%% This can be used as a dry run before uploading
%% function package content with PutSolFunctionPackageContent:
%% https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolFunctionPackageContent.html.
%%
%% A function package is a .zip file in CSAR (Cloud Service Archive) format
%% that contains a network function (an ETSI standard telecommunication
%% application) and function package descriptor that uses the TOSCA standard
%% to describe how the network functions should run on your network.
-spec validate_sol_function_package_content(aws_client:aws_client(), binary() | list(), validate_sol_function_package_content_input()) ->
    {ok, validate_sol_function_package_content_output(), tuple()} |
    {error, any()} |
    {error, validate_sol_function_package_content_errors(), tuple()}.
validate_sol_function_package_content(Client, VnfPkgId, Input) ->
    validate_sol_function_package_content(Client, VnfPkgId, Input, []).

-spec validate_sol_function_package_content(aws_client:aws_client(), binary() | list(), validate_sol_function_package_content_input(), proplists:proplist()) ->
    {ok, validate_sol_function_package_content_output(), tuple()} |
    {error, any()} |
    {error, validate_sol_function_package_content_errors(), tuple()}.
validate_sol_function_package_content(Client, VnfPkgId, Input0, Options0) ->
    Method = put,
    Path = ["/sol/vnfpkgm/v1/vnf_packages/", aws_util:encode_uri(VnfPkgId), "/package_content/validate"],
    SuccessStatusCode = 202,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Content-Type">>, <<"contentType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Validates network package content.
%%
%% This can be used as a dry run before uploading
%% network package content with PutSolNetworkPackageContent:
%% https://docs.aws.amazon.com/tnb/latest/APIReference/API_PutSolNetworkPackageContent.html.
%%
%% A network package is a .zip file in CSAR (Cloud Service Archive) format
%% defines the function packages you want to deploy and the Amazon Web
%% Services infrastructure you want to deploy them on.
-spec validate_sol_network_package_content(aws_client:aws_client(), binary() | list(), validate_sol_network_package_content_input()) ->
    {ok, validate_sol_network_package_content_output(), tuple()} |
    {error, any()} |
    {error, validate_sol_network_package_content_errors(), tuple()}.
validate_sol_network_package_content(Client, NsdInfoId, Input) ->
    validate_sol_network_package_content(Client, NsdInfoId, Input, []).

-spec validate_sol_network_package_content(aws_client:aws_client(), binary() | list(), validate_sol_network_package_content_input(), proplists:proplist()) ->
    {ok, validate_sol_network_package_content_output(), tuple()} |
    {error, any()} |
    {error, validate_sol_network_package_content_errors(), tuple()}.
validate_sol_network_package_content(Client, NsdInfoId, Input0, Options0) ->
    Method = put,
    Path = ["/sol/nsd/v1/ns_descriptors/", aws_util:encode_uri(NsdInfoId), "/nsd_content/validate"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"Content-Type">>, <<"contentType">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

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
    Client1 = Client#{service => <<"tnb">>},
    Host = build_host(<<"tnb">>, Client1),
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
