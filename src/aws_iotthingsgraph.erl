%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS IoT Things Graph
%%
%% AWS IoT Things Graph provides an integrated set of tools that enable
%% developers to connect devices and services that use different standards,
%% such as units of measure and communication protocols.
%%
%% AWS IoT Things Graph makes it possible to build IoT applications with
%% little to no code by connecting devices and services
%% and defining how they interact at an abstract level.
%%
%% For more information about how AWS IoT Things Graph works, see the User
%% Guide:
%% https://docs.aws.amazon.com/thingsgraph/latest/ug/iot-tg-whatis.html.
%%
%% The AWS IoT Things Graph service is discontinued.
-module(aws_iotthingsgraph).

-export([associate_entity_to_thing/2,
         associate_entity_to_thing/3,
         create_flow_template/2,
         create_flow_template/3,
         create_system_instance/2,
         create_system_instance/3,
         create_system_template/2,
         create_system_template/3,
         delete_flow_template/2,
         delete_flow_template/3,
         delete_namespace/2,
         delete_namespace/3,
         delete_system_instance/2,
         delete_system_instance/3,
         delete_system_template/2,
         delete_system_template/3,
         deploy_system_instance/2,
         deploy_system_instance/3,
         deprecate_flow_template/2,
         deprecate_flow_template/3,
         deprecate_system_template/2,
         deprecate_system_template/3,
         describe_namespace/2,
         describe_namespace/3,
         dissociate_entity_from_thing/2,
         dissociate_entity_from_thing/3,
         get_entities/2,
         get_entities/3,
         get_flow_template/2,
         get_flow_template/3,
         get_flow_template_revisions/2,
         get_flow_template_revisions/3,
         get_namespace_deletion_status/2,
         get_namespace_deletion_status/3,
         get_system_instance/2,
         get_system_instance/3,
         get_system_template/2,
         get_system_template/3,
         get_system_template_revisions/2,
         get_system_template_revisions/3,
         get_upload_status/2,
         get_upload_status/3,
         list_flow_execution_messages/2,
         list_flow_execution_messages/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         search_entities/2,
         search_entities/3,
         search_flow_executions/2,
         search_flow_executions/3,
         search_flow_templates/2,
         search_flow_templates/3,
         search_system_instances/2,
         search_system_instances/3,
         search_system_templates/2,
         search_system_templates/3,
         search_things/2,
         search_things/3,
         tag_resource/2,
         tag_resource/3,
         undeploy_system_instance/2,
         undeploy_system_instance/3,
         untag_resource/2,
         untag_resource/3,
         update_flow_template/2,
         update_flow_template/3,
         update_system_template/2,
         update_system_template/3,
         upload_entity_definitions/2,
         upload_entity_definitions/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% delete_namespace_response() :: #{
%%   <<"namespaceArn">> => string(),
%%   <<"namespaceName">> => string()
%% }
-type delete_namespace_response() :: #{binary() => any()}.

%% Example:
%% describe_namespace_response() :: #{
%%   <<"namespaceArn">> => string(),
%%   <<"namespaceName">> => string(),
%%   <<"namespaceVersion">> => float(),
%%   <<"trackingNamespaceName">> => string(),
%%   <<"trackingNamespaceVersion">> => float()
%% }
-type describe_namespace_response() :: #{binary() => any()}.

%% Example:
%% search_flow_templates_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"summaries">> => list(flow_template_summary())
%% }
-type search_flow_templates_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% internal_failure_exception() :: #{
%%   <<"message">> => string()
%% }
-type internal_failure_exception() :: #{binary() => any()}.

%% Example:
%% search_things_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"things">> => list(thing())
%% }
-type search_things_response() :: #{binary() => any()}.

%% Example:
%% upload_entity_definitions_request() :: #{
%%   <<"deprecateExistingEntities">> => boolean(),
%%   <<"document">> => definition_document(),
%%   <<"syncWithPublicNamespace">> => boolean()
%% }
-type upload_entity_definitions_request() :: #{binary() => any()}.

%% Example:
%% get_namespace_deletion_status_response() :: #{
%%   <<"errorCode">> => list(any()),
%%   <<"errorMessage">> => string(),
%%   <<"namespaceArn">> => string(),
%%   <<"namespaceName">> => string(),
%%   <<"status">> => list(any())
%% }
-type get_namespace_deletion_status_response() :: #{binary() => any()}.

%% Example:
%% flow_execution_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"flowExecutionId">> => string(),
%%   <<"flowTemplateId">> => string(),
%%   <<"status">> => list(any()),
%%   <<"systemInstanceId">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type flow_execution_summary() :: #{binary() => any()}.

%% Example:
%% system_instance_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"value">> => list(string())
%% }
-type system_instance_filter() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% upload_entity_definitions_response() :: #{
%%   <<"uploadId">> => string()
%% }
-type upload_entity_definitions_response() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% delete_system_instance_request() :: #{
%%   <<"id">> => string()
%% }
-type delete_system_instance_request() :: #{binary() => any()}.

%% Example:
%% associate_entity_to_thing_request() :: #{
%%   <<"entityId">> := string(),
%%   <<"namespaceVersion">> => float(),
%%   <<"thingName">> := string()
%% }
-type associate_entity_to_thing_request() :: #{binary() => any()}.

%% Example:
%% entity_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"value">> => list(string())
%% }
-type entity_filter() :: #{binary() => any()}.

%% Example:
%% update_system_template_request() :: #{
%%   <<"compatibleNamespaceVersion">> => float(),
%%   <<"definition">> := definition_document(),
%%   <<"id">> := string()
%% }
-type update_system_template_request() :: #{binary() => any()}.

%% Example:
%% get_upload_status_response() :: #{
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"failureReason">> => list(string()),
%%   <<"namespaceArn">> => string(),
%%   <<"namespaceName">> => string(),
%%   <<"namespaceVersion">> => float(),
%%   <<"uploadId">> => string(),
%%   <<"uploadStatus">> => list(any())
%% }
-type get_upload_status_response() :: #{binary() => any()}.

%% Example:
%% get_system_template_revisions_request() :: #{
%%   <<"id">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_system_template_revisions_request() :: #{binary() => any()}.

%% Example:
%% undeploy_system_instance_response() :: #{
%%   <<"summary">> => system_instance_summary()
%% }
-type undeploy_system_instance_response() :: #{binary() => any()}.

%% Example:
%% get_entities_request() :: #{
%%   <<"ids">> := list(string()),
%%   <<"namespaceVersion">> => float()
%% }
-type get_entities_request() :: #{binary() => any()}.

%% Example:
%% search_entities_response() :: #{
%%   <<"descriptions">> => list(entity_description()),
%%   <<"nextToken">> => string()
%% }
-type search_entities_response() :: #{binary() => any()}.

%% Example:
%% get_upload_status_request() :: #{
%%   <<"uploadId">> := string()
%% }
-type get_upload_status_request() :: #{binary() => any()}.

%% Example:
%% get_entities_response() :: #{
%%   <<"descriptions">> => list(entity_description())
%% }
-type get_entities_response() :: #{binary() => any()}.

%% Example:
%% get_system_instance_response() :: #{
%%   <<"description">> => system_instance_description()
%% }
-type get_system_instance_response() :: #{binary() => any()}.

%% Example:
%% get_system_instance_request() :: #{
%%   <<"id">> := string()
%% }
-type get_system_instance_request() :: #{binary() => any()}.

%% Example:
%% describe_namespace_request() :: #{
%%   <<"namespaceName">> => string()
%% }
-type describe_namespace_request() :: #{binary() => any()}.

%% Example:
%% update_flow_template_response() :: #{
%%   <<"summary">> => flow_template_summary()
%% }
-type update_flow_template_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% get_system_template_response() :: #{
%%   <<"description">> => system_template_description()
%% }
-type get_system_template_response() :: #{binary() => any()}.

%% Example:
%% create_system_template_request() :: #{
%%   <<"compatibleNamespaceVersion">> => float(),
%%   <<"definition">> := definition_document()
%% }
-type create_system_template_request() :: #{binary() => any()}.

%% Example:
%% create_system_instance_request() :: #{
%%   <<"definition">> := definition_document(),
%%   <<"flowActionsRoleArn">> => string(),
%%   <<"greengrassGroupName">> => string(),
%%   <<"metricsConfiguration">> => metrics_configuration(),
%%   <<"s3BucketName">> => string(),
%%   <<"tags">> => list(tag()),
%%   <<"target">> := list(any())
%% }
-type create_system_instance_request() :: #{binary() => any()}.

%% Example:
%% delete_system_instance_response() :: #{

%% }
-type delete_system_instance_response() :: #{binary() => any()}.

%% Example:
%% deprecate_flow_template_response() :: #{

%% }
-type deprecate_flow_template_response() :: #{binary() => any()}.

%% Example:
%% search_system_templates_request() :: #{
%%   <<"filters">> => list(system_template_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type search_system_templates_request() :: #{binary() => any()}.

%% Example:
%% search_flow_executions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"summaries">> => list(flow_execution_summary())
%% }
-type search_flow_executions_response() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% entity_description() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"definition">> => definition_document(),
%%   <<"id">> => string(),
%%   <<"type">> => list(any())
%% }
-type entity_description() :: #{binary() => any()}.

%% Example:
%% system_template_description() :: #{
%%   <<"definition">> => definition_document(),
%%   <<"summary">> => system_template_summary(),
%%   <<"validatedNamespaceVersion">> => float()
%% }
-type system_template_description() :: #{binary() => any()}.

%% Example:
%% dissociate_entity_from_thing_response() :: #{

%% }
-type dissociate_entity_from_thing_response() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% get_flow_template_request() :: #{
%%   <<"id">> := string(),
%%   <<"revisionNumber">> => float()
%% }
-type get_flow_template_request() :: #{binary() => any()}.

%% Example:
%% invalid_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.

%% Example:
%% delete_system_template_request() :: #{
%%   <<"id">> := string()
%% }
-type delete_system_template_request() :: #{binary() => any()}.

%% Example:
%% get_system_template_request() :: #{
%%   <<"id">> := string(),
%%   <<"revisionNumber">> => float()
%% }
-type get_system_template_request() :: #{binary() => any()}.

%% Example:
%% thing() :: #{
%%   <<"thingArn">> => string(),
%%   <<"thingName">> => string()
%% }
-type thing() :: #{binary() => any()}.

%% Example:
%% get_namespace_deletion_status_request() :: #{

%% }
-type get_namespace_deletion_status_request() :: #{binary() => any()}.

%% Example:
%% search_system_instances_request() :: #{
%%   <<"filters">> => list(system_instance_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type search_system_instances_request() :: #{binary() => any()}.

%% Example:
%% search_flow_templates_request() :: #{
%%   <<"filters">> => list(flow_template_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type search_flow_templates_request() :: #{binary() => any()}.

%% Example:
%% system_template_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"revisionNumber">> => float()
%% }
-type system_template_summary() :: #{binary() => any()}.

%% Example:
%% create_flow_template_response() :: #{
%%   <<"summary">> => flow_template_summary()
%% }
-type create_flow_template_response() :: #{binary() => any()}.

%% Example:
%% list_flow_execution_messages_request() :: #{
%%   <<"flowExecutionId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_flow_execution_messages_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% undeploy_system_instance_request() :: #{
%%   <<"id">> => string()
%% }
-type undeploy_system_instance_request() :: #{binary() => any()}.

%% Example:
%% system_instance_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"greengrassGroupId">> => string(),
%%   <<"greengrassGroupName">> => string(),
%%   <<"greengrassGroupVersionId">> => string(),
%%   <<"id">> => string(),
%%   <<"status">> => list(any()),
%%   <<"target">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type system_instance_summary() :: #{binary() => any()}.

%% Example:
%% create_flow_template_request() :: #{
%%   <<"compatibleNamespaceVersion">> => float(),
%%   <<"definition">> := definition_document()
%% }
-type create_flow_template_request() :: #{binary() => any()}.

%% Example:
%% get_flow_template_revisions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"summaries">> => list(flow_template_summary())
%% }
-type get_flow_template_revisions_response() :: #{binary() => any()}.

%% Example:
%% search_things_request() :: #{
%%   <<"entityId">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"namespaceVersion">> => float(),
%%   <<"nextToken">> => string()
%% }
-type search_things_request() :: #{binary() => any()}.

%% Example:
%% delete_system_template_response() :: #{

%% }
-type delete_system_template_response() :: #{binary() => any()}.

%% Example:
%% search_entities_request() :: #{
%%   <<"entityTypes">> := list(list(any())()),
%%   <<"filters">> => list(entity_filter()),
%%   <<"maxResults">> => integer(),
%%   <<"namespaceVersion">> => float(),
%%   <<"nextToken">> => string()
%% }
-type search_entities_request() :: #{binary() => any()}.

%% Example:
%% deprecate_system_template_response() :: #{

%% }
-type deprecate_system_template_response() :: #{binary() => any()}.

%% Example:
%% flow_template_description() :: #{
%%   <<"definition">> => definition_document(),
%%   <<"summary">> => flow_template_summary(),
%%   <<"validatedNamespaceVersion">> => float()
%% }
-type flow_template_description() :: #{binary() => any()}.

%% Example:
%% search_system_instances_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"summaries">> => list(system_instance_summary())
%% }
-type search_system_instances_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% flow_execution_message() :: #{
%%   <<"eventType">> => list(any()),
%%   <<"messageId">> => string(),
%%   <<"payload">> => string(),
%%   <<"timestamp">> => non_neg_integer()
%% }
-type flow_execution_message() :: #{binary() => any()}.

%% Example:
%% create_system_template_response() :: #{
%%   <<"summary">> => system_template_summary()
%% }
-type create_system_template_response() :: #{binary() => any()}.

%% Example:
%% definition_document() :: #{
%%   <<"language">> => list(any()),
%%   <<"text">> => string()
%% }
-type definition_document() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% system_instance_description() :: #{
%%   <<"definition">> => definition_document(),
%%   <<"flowActionsRoleArn">> => string(),
%%   <<"metricsConfiguration">> => metrics_configuration(),
%%   <<"s3BucketName">> => string(),
%%   <<"summary">> => system_instance_summary(),
%%   <<"validatedDependencyRevisions">> => list(dependency_revision()),
%%   <<"validatedNamespaceVersion">> => float()
%% }
-type system_instance_description() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% delete_namespace_request() :: #{

%% }
-type delete_namespace_request() :: #{binary() => any()}.

%% Example:
%% get_flow_template_revisions_request() :: #{
%%   <<"id">> := string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_flow_template_revisions_request() :: #{binary() => any()}.

%% Example:
%% update_flow_template_request() :: #{
%%   <<"compatibleNamespaceVersion">> => float(),
%%   <<"definition">> := definition_document(),
%%   <<"id">> := string()
%% }
-type update_flow_template_request() :: #{binary() => any()}.

%% Example:
%% create_system_instance_response() :: #{
%%   <<"summary">> => system_instance_summary()
%% }
-type create_system_instance_response() :: #{binary() => any()}.

%% Example:
%% system_template_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"value">> => list(string())
%% }
-type system_template_filter() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% search_system_templates_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"summaries">> => list(system_template_summary())
%% }
-type search_system_templates_response() :: #{binary() => any()}.

%% Example:
%% associate_entity_to_thing_response() :: #{

%% }
-type associate_entity_to_thing_response() :: #{binary() => any()}.

%% Example:
%% update_system_template_response() :: #{
%%   <<"summary">> => system_template_summary()
%% }
-type update_system_template_response() :: #{binary() => any()}.

%% Example:
%% get_system_template_revisions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"summaries">> => list(system_template_summary())
%% }
-type get_system_template_revisions_response() :: #{binary() => any()}.

%% Example:
%% dissociate_entity_from_thing_request() :: #{
%%   <<"entityType">> := list(any()),
%%   <<"thingName">> := string()
%% }
-type dissociate_entity_from_thing_request() :: #{binary() => any()}.

%% Example:
%% flow_template_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"id">> => string(),
%%   <<"revisionNumber">> => float()
%% }
-type flow_template_summary() :: #{binary() => any()}.

%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"message">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% delete_flow_template_request() :: #{
%%   <<"id">> := string()
%% }
-type delete_flow_template_request() :: #{binary() => any()}.

%% Example:
%% list_flow_execution_messages_response() :: #{
%%   <<"messages">> => list(flow_execution_message()),
%%   <<"nextToken">> => string()
%% }
-type list_flow_execution_messages_response() :: #{binary() => any()}.

%% Example:
%% dependency_revision() :: #{
%%   <<"id">> => string(),
%%   <<"revisionNumber">> => float()
%% }
-type dependency_revision() :: #{binary() => any()}.

%% Example:
%% search_flow_executions_request() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"flowExecutionId">> => string(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"systemInstanceId">> := string()
%% }
-type search_flow_executions_request() :: #{binary() => any()}.

%% Example:
%% deprecate_flow_template_request() :: #{
%%   <<"id">> := string()
%% }
-type deprecate_flow_template_request() :: #{binary() => any()}.

%% Example:
%% get_flow_template_response() :: #{
%%   <<"description">> => flow_template_description()
%% }
-type get_flow_template_response() :: #{binary() => any()}.

%% Example:
%% flow_template_filter() :: #{
%%   <<"name">> => list(any()),
%%   <<"value">> => list(string())
%% }
-type flow_template_filter() :: #{binary() => any()}.

%% Example:
%% delete_flow_template_response() :: #{

%% }
-type delete_flow_template_response() :: #{binary() => any()}.

%% Example:
%% deprecate_system_template_request() :: #{
%%   <<"id">> := string()
%% }
-type deprecate_system_template_request() :: #{binary() => any()}.

%% Example:
%% deploy_system_instance_response() :: #{
%%   <<"greengrassDeploymentId">> => string(),
%%   <<"summary">> => system_instance_summary()
%% }
-type deploy_system_instance_response() :: #{binary() => any()}.

%% Example:
%% metrics_configuration() :: #{
%%   <<"cloudMetricEnabled">> => boolean(),
%%   <<"metricRuleRoleArn">> => string()
%% }
-type metrics_configuration() :: #{binary() => any()}.

%% Example:
%% deploy_system_instance_request() :: #{
%%   <<"id">> => string()
%% }
-type deploy_system_instance_request() :: #{binary() => any()}.

-type associate_entity_to_thing_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type create_flow_template_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type create_system_instance_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type create_system_template_errors() ::
    resource_already_exists_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type delete_flow_template_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type delete_namespace_errors() ::
    throttling_exception() | 
    internal_failure_exception().

-type delete_system_instance_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type delete_system_template_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type deploy_system_instance_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type deprecate_flow_template_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type deprecate_system_template_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type describe_namespace_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type dissociate_entity_from_thing_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type get_entities_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type get_flow_template_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type get_flow_template_revisions_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type get_namespace_deletion_status_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type get_system_instance_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type get_system_template_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type get_system_template_revisions_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type get_upload_status_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_flow_execution_messages_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type list_tags_for_resource_errors() ::
    resource_already_exists_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type search_entities_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type search_flow_executions_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type search_flow_templates_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type search_system_instances_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type search_system_templates_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type search_things_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type tag_resource_errors() ::
    resource_already_exists_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type undeploy_system_instance_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception() | 
    internal_failure_exception().

-type untag_resource_errors() ::
    resource_already_exists_exception() | 
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

-type update_flow_template_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type update_system_template_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    internal_failure_exception().

-type upload_entity_definitions_errors() ::
    throttling_exception() | 
    invalid_request_exception() | 
    internal_failure_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a device with a concrete thing that is in the user's
%% registry.
%%
%% A thing can be associated with only one device at a time. If you associate
%% a thing with a new device id, its previous association will be removed.
-spec associate_entity_to_thing(aws_client:aws_client(), associate_entity_to_thing_request()) ->
    {ok, associate_entity_to_thing_response(), tuple()} |
    {error, any()} |
    {error, associate_entity_to_thing_errors(), tuple()}.
associate_entity_to_thing(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_entity_to_thing(Client, Input, []).

-spec associate_entity_to_thing(aws_client:aws_client(), associate_entity_to_thing_request(), proplists:proplist()) ->
    {ok, associate_entity_to_thing_response(), tuple()} |
    {error, any()} |
    {error, associate_entity_to_thing_errors(), tuple()}.
associate_entity_to_thing(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateEntityToThing">>, Input, Options).

%% @doc Creates a workflow template.
%%
%% Workflows can be created only in the user's namespace. (The public
%% namespace contains only
%% entities.) The workflow can contain only entities in the specified
%% namespace. The workflow is validated against the entities in the
%% latest version of the user's namespace unless another namespace
%% version is specified in the request.
-spec create_flow_template(aws_client:aws_client(), create_flow_template_request()) ->
    {ok, create_flow_template_response(), tuple()} |
    {error, any()} |
    {error, create_flow_template_errors(), tuple()}.
create_flow_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_flow_template(Client, Input, []).

-spec create_flow_template(aws_client:aws_client(), create_flow_template_request(), proplists:proplist()) ->
    {ok, create_flow_template_response(), tuple()} |
    {error, any()} |
    {error, create_flow_template_errors(), tuple()}.
create_flow_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFlowTemplate">>, Input, Options).

%% @doc Creates a system instance.
%%
%% This action validates the system instance, prepares the deployment-related
%% resources. For Greengrass deployments, it updates the Greengrass group
%% that is
%% specified by the `greengrassGroupName' parameter. It also adds a file
%% to the S3 bucket specified by the `s3BucketName' parameter. You need
%% to
%% call `DeploySystemInstance' after running this action.
%%
%% For Greengrass deployments, since this action modifies and adds resources
%% to a Greengrass group and an S3 bucket on the caller's behalf, the
%% calling identity must have write permissions
%% to both the specified Greengrass group and S3 bucket. Otherwise, the call
%% will fail with an authorization error.
%%
%% For cloud deployments, this action requires a `flowActionsRoleArn'
%% value. This is an IAM role
%% that has permissions to access AWS services, such as AWS Lambda and AWS
%% IoT, that the flow uses when it executes.
%%
%% If the definition document doesn't specify a version of the user's
%% namespace, the latest version will be used by default.
-spec create_system_instance(aws_client:aws_client(), create_system_instance_request()) ->
    {ok, create_system_instance_response(), tuple()} |
    {error, any()} |
    {error, create_system_instance_errors(), tuple()}.
create_system_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_system_instance(Client, Input, []).

-spec create_system_instance(aws_client:aws_client(), create_system_instance_request(), proplists:proplist()) ->
    {ok, create_system_instance_response(), tuple()} |
    {error, any()} |
    {error, create_system_instance_errors(), tuple()}.
create_system_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSystemInstance">>, Input, Options).

%% @doc Creates a system.
%%
%% The system is validated against the entities in the
%% latest version of the user's namespace unless another namespace
%% version is specified in the request.
-spec create_system_template(aws_client:aws_client(), create_system_template_request()) ->
    {ok, create_system_template_response(), tuple()} |
    {error, any()} |
    {error, create_system_template_errors(), tuple()}.
create_system_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_system_template(Client, Input, []).

-spec create_system_template(aws_client:aws_client(), create_system_template_request(), proplists:proplist()) ->
    {ok, create_system_template_response(), tuple()} |
    {error, any()} |
    {error, create_system_template_errors(), tuple()}.
create_system_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSystemTemplate">>, Input, Options).

%% @doc Deletes a workflow.
%%
%% Any new system or deployment that contains this workflow will fail to
%% update or deploy.
%% Existing deployments that contain the workflow will continue to run (since
%% they use a snapshot of the workflow taken at the time of deployment).
-spec delete_flow_template(aws_client:aws_client(), delete_flow_template_request()) ->
    {ok, delete_flow_template_response(), tuple()} |
    {error, any()} |
    {error, delete_flow_template_errors(), tuple()}.
delete_flow_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_flow_template(Client, Input, []).

-spec delete_flow_template(aws_client:aws_client(), delete_flow_template_request(), proplists:proplist()) ->
    {ok, delete_flow_template_response(), tuple()} |
    {error, any()} |
    {error, delete_flow_template_errors(), tuple()}.
delete_flow_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFlowTemplate">>, Input, Options).

%% @doc Deletes the specified namespace.
%%
%% This action deletes all of the entities in the namespace. Delete the
%% systems and flows that use entities in the namespace before performing
%% this action. This action takes no
%% request parameters.
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

%% @doc Deletes a system instance.
%%
%% Only system instances that have never been deployed, or that have been
%% undeployed can be deleted.
%%
%% Users can create a new system instance that has the same ID as a deleted
%% system instance.
-spec delete_system_instance(aws_client:aws_client(), delete_system_instance_request()) ->
    {ok, delete_system_instance_response(), tuple()} |
    {error, any()} |
    {error, delete_system_instance_errors(), tuple()}.
delete_system_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_system_instance(Client, Input, []).

-spec delete_system_instance(aws_client:aws_client(), delete_system_instance_request(), proplists:proplist()) ->
    {ok, delete_system_instance_response(), tuple()} |
    {error, any()} |
    {error, delete_system_instance_errors(), tuple()}.
delete_system_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSystemInstance">>, Input, Options).

%% @doc Deletes a system.
%%
%% New deployments can't contain the system after its deletion.
%% Existing deployments that contain the system will continue to work because
%% they use a snapshot of the system that is taken when it is deployed.
-spec delete_system_template(aws_client:aws_client(), delete_system_template_request()) ->
    {ok, delete_system_template_response(), tuple()} |
    {error, any()} |
    {error, delete_system_template_errors(), tuple()}.
delete_system_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_system_template(Client, Input, []).

-spec delete_system_template(aws_client:aws_client(), delete_system_template_request(), proplists:proplist()) ->
    {ok, delete_system_template_response(), tuple()} |
    {error, any()} |
    {error, delete_system_template_errors(), tuple()}.
delete_system_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSystemTemplate">>, Input, Options).

%% @doc
%% Greengrass and Cloud Deployments
%%
%% Deploys the system instance to the target specified in
%% `CreateSystemInstance'.
%%
%% Greengrass Deployments
%%
%% If the system or any workflows and entities have been updated before this
%% action is called, then the deployment will create a new Amazon Simple
%% Storage Service
%% resource file and then deploy it.
%%
%% Since this action creates a Greengrass deployment on the caller's
%% behalf, the calling identity must have write permissions
%% to the specified Greengrass group. Otherwise, the call will fail with an
%% authorization error.
%%
%% For information about the artifacts that get added to your Greengrass core
%% device when you use this API, see AWS IoT Things Graph and AWS IoT
%% Greengrass:
%% https://docs.aws.amazon.com/thingsgraph/latest/ug/iot-tg-greengrass.html.
-spec deploy_system_instance(aws_client:aws_client(), deploy_system_instance_request()) ->
    {ok, deploy_system_instance_response(), tuple()} |
    {error, any()} |
    {error, deploy_system_instance_errors(), tuple()}.
deploy_system_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    deploy_system_instance(Client, Input, []).

-spec deploy_system_instance(aws_client:aws_client(), deploy_system_instance_request(), proplists:proplist()) ->
    {ok, deploy_system_instance_response(), tuple()} |
    {error, any()} |
    {error, deploy_system_instance_errors(), tuple()}.
deploy_system_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeploySystemInstance">>, Input, Options).

%% @doc Deprecates the specified workflow.
%%
%% This action marks the workflow for deletion. Deprecated flows can't be
%% deployed, but existing deployments will continue to run.
-spec deprecate_flow_template(aws_client:aws_client(), deprecate_flow_template_request()) ->
    {ok, deprecate_flow_template_response(), tuple()} |
    {error, any()} |
    {error, deprecate_flow_template_errors(), tuple()}.
deprecate_flow_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    deprecate_flow_template(Client, Input, []).

-spec deprecate_flow_template(aws_client:aws_client(), deprecate_flow_template_request(), proplists:proplist()) ->
    {ok, deprecate_flow_template_response(), tuple()} |
    {error, any()} |
    {error, deprecate_flow_template_errors(), tuple()}.
deprecate_flow_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeprecateFlowTemplate">>, Input, Options).

%% @doc Deprecates the specified system.
-spec deprecate_system_template(aws_client:aws_client(), deprecate_system_template_request()) ->
    {ok, deprecate_system_template_response(), tuple()} |
    {error, any()} |
    {error, deprecate_system_template_errors(), tuple()}.
deprecate_system_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    deprecate_system_template(Client, Input, []).

-spec deprecate_system_template(aws_client:aws_client(), deprecate_system_template_request(), proplists:proplist()) ->
    {ok, deprecate_system_template_response(), tuple()} |
    {error, any()} |
    {error, deprecate_system_template_errors(), tuple()}.
deprecate_system_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeprecateSystemTemplate">>, Input, Options).

%% @doc Gets the latest version of the user's namespace and the public
%% version that it is tracking.
-spec describe_namespace(aws_client:aws_client(), describe_namespace_request()) ->
    {ok, describe_namespace_response(), tuple()} |
    {error, any()} |
    {error, describe_namespace_errors(), tuple()}.
describe_namespace(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_namespace(Client, Input, []).

-spec describe_namespace(aws_client:aws_client(), describe_namespace_request(), proplists:proplist()) ->
    {ok, describe_namespace_response(), tuple()} |
    {error, any()} |
    {error, describe_namespace_errors(), tuple()}.
describe_namespace(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNamespace">>, Input, Options).

%% @doc Dissociates a device entity from a concrete thing.
%%
%% The action takes only the type of the entity that you need to dissociate
%% because only
%% one entity of a particular type can be associated with a thing.
-spec dissociate_entity_from_thing(aws_client:aws_client(), dissociate_entity_from_thing_request()) ->
    {ok, dissociate_entity_from_thing_response(), tuple()} |
    {error, any()} |
    {error, dissociate_entity_from_thing_errors(), tuple()}.
dissociate_entity_from_thing(Client, Input)
  when is_map(Client), is_map(Input) ->
    dissociate_entity_from_thing(Client, Input, []).

-spec dissociate_entity_from_thing(aws_client:aws_client(), dissociate_entity_from_thing_request(), proplists:proplist()) ->
    {ok, dissociate_entity_from_thing_response(), tuple()} |
    {error, any()} |
    {error, dissociate_entity_from_thing_errors(), tuple()}.
dissociate_entity_from_thing(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DissociateEntityFromThing">>, Input, Options).

%% @doc Gets definitions of the specified entities.
%%
%% Uses the latest version of the user's namespace by default. This API
%% returns the
%% following TDM entities.
%%
%% Properties
%%
%% States
%%
%% Events
%%
%% Actions
%%
%% Capabilities
%%
%% Mappings
%%
%% Devices
%%
%% Device Models
%%
%% Services
%%
%% This action doesn't return definitions for systems, flows, and
%% deployments.
-spec get_entities(aws_client:aws_client(), get_entities_request()) ->
    {ok, get_entities_response(), tuple()} |
    {error, any()} |
    {error, get_entities_errors(), tuple()}.
get_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_entities(Client, Input, []).

-spec get_entities(aws_client:aws_client(), get_entities_request(), proplists:proplist()) ->
    {ok, get_entities_response(), tuple()} |
    {error, any()} |
    {error, get_entities_errors(), tuple()}.
get_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetEntities">>, Input, Options).

%% @doc Gets the latest version of the `DefinitionDocument' and
%% `FlowTemplateSummary' for the specified workflow.
-spec get_flow_template(aws_client:aws_client(), get_flow_template_request()) ->
    {ok, get_flow_template_response(), tuple()} |
    {error, any()} |
    {error, get_flow_template_errors(), tuple()}.
get_flow_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_flow_template(Client, Input, []).

-spec get_flow_template(aws_client:aws_client(), get_flow_template_request(), proplists:proplist()) ->
    {ok, get_flow_template_response(), tuple()} |
    {error, any()} |
    {error, get_flow_template_errors(), tuple()}.
get_flow_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFlowTemplate">>, Input, Options).

%% @doc Gets revisions of the specified workflow.
%%
%% Only the last 100 revisions are stored. If the workflow has been
%% deprecated,
%% this action will return revisions that occurred before the deprecation.
%% This action won't work for workflows that have been deleted.
-spec get_flow_template_revisions(aws_client:aws_client(), get_flow_template_revisions_request()) ->
    {ok, get_flow_template_revisions_response(), tuple()} |
    {error, any()} |
    {error, get_flow_template_revisions_errors(), tuple()}.
get_flow_template_revisions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_flow_template_revisions(Client, Input, []).

-spec get_flow_template_revisions(aws_client:aws_client(), get_flow_template_revisions_request(), proplists:proplist()) ->
    {ok, get_flow_template_revisions_response(), tuple()} |
    {error, any()} |
    {error, get_flow_template_revisions_errors(), tuple()}.
get_flow_template_revisions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFlowTemplateRevisions">>, Input, Options).

%% @doc Gets the status of a namespace deletion task.
-spec get_namespace_deletion_status(aws_client:aws_client(), get_namespace_deletion_status_request()) ->
    {ok, get_namespace_deletion_status_response(), tuple()} |
    {error, any()} |
    {error, get_namespace_deletion_status_errors(), tuple()}.
get_namespace_deletion_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_namespace_deletion_status(Client, Input, []).

-spec get_namespace_deletion_status(aws_client:aws_client(), get_namespace_deletion_status_request(), proplists:proplist()) ->
    {ok, get_namespace_deletion_status_response(), tuple()} |
    {error, any()} |
    {error, get_namespace_deletion_status_errors(), tuple()}.
get_namespace_deletion_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetNamespaceDeletionStatus">>, Input, Options).

%% @doc Gets a system instance.
-spec get_system_instance(aws_client:aws_client(), get_system_instance_request()) ->
    {ok, get_system_instance_response(), tuple()} |
    {error, any()} |
    {error, get_system_instance_errors(), tuple()}.
get_system_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_system_instance(Client, Input, []).

-spec get_system_instance(aws_client:aws_client(), get_system_instance_request(), proplists:proplist()) ->
    {ok, get_system_instance_response(), tuple()} |
    {error, any()} |
    {error, get_system_instance_errors(), tuple()}.
get_system_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSystemInstance">>, Input, Options).

%% @doc Gets a system.
-spec get_system_template(aws_client:aws_client(), get_system_template_request()) ->
    {ok, get_system_template_response(), tuple()} |
    {error, any()} |
    {error, get_system_template_errors(), tuple()}.
get_system_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_system_template(Client, Input, []).

-spec get_system_template(aws_client:aws_client(), get_system_template_request(), proplists:proplist()) ->
    {ok, get_system_template_response(), tuple()} |
    {error, any()} |
    {error, get_system_template_errors(), tuple()}.
get_system_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSystemTemplate">>, Input, Options).

%% @doc Gets revisions made to the specified system template.
%%
%% Only the previous 100 revisions are stored. If the system has been
%% deprecated, this action will return
%% the revisions that occurred before its deprecation. This action won't
%% work with systems that have been deleted.
-spec get_system_template_revisions(aws_client:aws_client(), get_system_template_revisions_request()) ->
    {ok, get_system_template_revisions_response(), tuple()} |
    {error, any()} |
    {error, get_system_template_revisions_errors(), tuple()}.
get_system_template_revisions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_system_template_revisions(Client, Input, []).

-spec get_system_template_revisions(aws_client:aws_client(), get_system_template_revisions_request(), proplists:proplist()) ->
    {ok, get_system_template_revisions_response(), tuple()} |
    {error, any()} |
    {error, get_system_template_revisions_errors(), tuple()}.
get_system_template_revisions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSystemTemplateRevisions">>, Input, Options).

%% @doc Gets the status of the specified upload.
-spec get_upload_status(aws_client:aws_client(), get_upload_status_request()) ->
    {ok, get_upload_status_response(), tuple()} |
    {error, any()} |
    {error, get_upload_status_errors(), tuple()}.
get_upload_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_upload_status(Client, Input, []).

-spec get_upload_status(aws_client:aws_client(), get_upload_status_request(), proplists:proplist()) ->
    {ok, get_upload_status_response(), tuple()} |
    {error, any()} |
    {error, get_upload_status_errors(), tuple()}.
get_upload_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetUploadStatus">>, Input, Options).

%% @doc Returns a list of objects that contain information about events in a
%% flow execution.
-spec list_flow_execution_messages(aws_client:aws_client(), list_flow_execution_messages_request()) ->
    {ok, list_flow_execution_messages_response(), tuple()} |
    {error, any()} |
    {error, list_flow_execution_messages_errors(), tuple()}.
list_flow_execution_messages(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_flow_execution_messages(Client, Input, []).

-spec list_flow_execution_messages(aws_client:aws_client(), list_flow_execution_messages_request(), proplists:proplist()) ->
    {ok, list_flow_execution_messages_response(), tuple()} |
    {error, any()} |
    {error, list_flow_execution_messages_errors(), tuple()}.
list_flow_execution_messages(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListFlowExecutionMessages">>, Input, Options).

%% @doc Lists all tags on an AWS IoT Things Graph resource.
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

%% @doc Searches for entities of the specified type.
%%
%% You can search for entities in your namespace and the public namespace
%% that you're tracking.
-spec search_entities(aws_client:aws_client(), search_entities_request()) ->
    {ok, search_entities_response(), tuple()} |
    {error, any()} |
    {error, search_entities_errors(), tuple()}.
search_entities(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_entities(Client, Input, []).

-spec search_entities(aws_client:aws_client(), search_entities_request(), proplists:proplist()) ->
    {ok, search_entities_response(), tuple()} |
    {error, any()} |
    {error, search_entities_errors(), tuple()}.
search_entities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchEntities">>, Input, Options).

%% @doc Searches for AWS IoT Things Graph workflow execution instances.
-spec search_flow_executions(aws_client:aws_client(), search_flow_executions_request()) ->
    {ok, search_flow_executions_response(), tuple()} |
    {error, any()} |
    {error, search_flow_executions_errors(), tuple()}.
search_flow_executions(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_flow_executions(Client, Input, []).

-spec search_flow_executions(aws_client:aws_client(), search_flow_executions_request(), proplists:proplist()) ->
    {ok, search_flow_executions_response(), tuple()} |
    {error, any()} |
    {error, search_flow_executions_errors(), tuple()}.
search_flow_executions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchFlowExecutions">>, Input, Options).

%% @doc Searches for summary information about workflows.
-spec search_flow_templates(aws_client:aws_client(), search_flow_templates_request()) ->
    {ok, search_flow_templates_response(), tuple()} |
    {error, any()} |
    {error, search_flow_templates_errors(), tuple()}.
search_flow_templates(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_flow_templates(Client, Input, []).

-spec search_flow_templates(aws_client:aws_client(), search_flow_templates_request(), proplists:proplist()) ->
    {ok, search_flow_templates_response(), tuple()} |
    {error, any()} |
    {error, search_flow_templates_errors(), tuple()}.
search_flow_templates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchFlowTemplates">>, Input, Options).

%% @doc Searches for system instances in the user's account.
-spec search_system_instances(aws_client:aws_client(), search_system_instances_request()) ->
    {ok, search_system_instances_response(), tuple()} |
    {error, any()} |
    {error, search_system_instances_errors(), tuple()}.
search_system_instances(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_system_instances(Client, Input, []).

-spec search_system_instances(aws_client:aws_client(), search_system_instances_request(), proplists:proplist()) ->
    {ok, search_system_instances_response(), tuple()} |
    {error, any()} |
    {error, search_system_instances_errors(), tuple()}.
search_system_instances(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchSystemInstances">>, Input, Options).

%% @doc Searches for summary information about systems in the user's
%% account.
%%
%% You can filter by the ID of a workflow to return only systems that use the
%% specified workflow.
-spec search_system_templates(aws_client:aws_client(), search_system_templates_request()) ->
    {ok, search_system_templates_response(), tuple()} |
    {error, any()} |
    {error, search_system_templates_errors(), tuple()}.
search_system_templates(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_system_templates(Client, Input, []).

-spec search_system_templates(aws_client:aws_client(), search_system_templates_request(), proplists:proplist()) ->
    {ok, search_system_templates_response(), tuple()} |
    {error, any()} |
    {error, search_system_templates_errors(), tuple()}.
search_system_templates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchSystemTemplates">>, Input, Options).

%% @doc Searches for things associated with the specified entity.
%%
%% You can search by both device and device model.
%%
%% For example, if two different devices, camera1 and camera2, implement the
%% camera device model, the user can associate thing1 to camera1 and thing2
%% to camera2.
%% `SearchThings(camera2)' will return only thing2, but
%% `SearchThings(camera)' will return both thing1 and thing2.
%%
%% This action searches for exact matches and doesn't perform partial
%% text matching.
-spec search_things(aws_client:aws_client(), search_things_request()) ->
    {ok, search_things_response(), tuple()} |
    {error, any()} |
    {error, search_things_errors(), tuple()}.
search_things(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_things(Client, Input, []).

-spec search_things(aws_client:aws_client(), search_things_request(), proplists:proplist()) ->
    {ok, search_things_response(), tuple()} |
    {error, any()} |
    {error, search_things_errors(), tuple()}.
search_things(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchThings">>, Input, Options).

%% @doc Creates a tag for the specified resource.
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

%% @doc Removes a system instance from its target (Cloud or Greengrass).
-spec undeploy_system_instance(aws_client:aws_client(), undeploy_system_instance_request()) ->
    {ok, undeploy_system_instance_response(), tuple()} |
    {error, any()} |
    {error, undeploy_system_instance_errors(), tuple()}.
undeploy_system_instance(Client, Input)
  when is_map(Client), is_map(Input) ->
    undeploy_system_instance(Client, Input, []).

-spec undeploy_system_instance(aws_client:aws_client(), undeploy_system_instance_request(), proplists:proplist()) ->
    {ok, undeploy_system_instance_response(), tuple()} |
    {error, any()} |
    {error, undeploy_system_instance_errors(), tuple()}.
undeploy_system_instance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UndeploySystemInstance">>, Input, Options).

%% @doc Removes a tag from the specified resource.
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

%% @doc Updates the specified workflow.
%%
%% All deployed systems and system instances that use the workflow will see
%% the changes in the flow when it is redeployed. If you don't want this
%% behavior, copy the workflow (creating a new workflow with a different ID),
%% and update the copy. The workflow can contain only entities in the
%% specified namespace.
-spec update_flow_template(aws_client:aws_client(), update_flow_template_request()) ->
    {ok, update_flow_template_response(), tuple()} |
    {error, any()} |
    {error, update_flow_template_errors(), tuple()}.
update_flow_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_flow_template(Client, Input, []).

-spec update_flow_template(aws_client:aws_client(), update_flow_template_request(), proplists:proplist()) ->
    {ok, update_flow_template_response(), tuple()} |
    {error, any()} |
    {error, update_flow_template_errors(), tuple()}.
update_flow_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFlowTemplate">>, Input, Options).

%% @doc Updates the specified system.
%%
%% You don't need to run this action after updating a workflow. Any
%% deployment that uses the system will see the changes in the system when it
%% is redeployed.
-spec update_system_template(aws_client:aws_client(), update_system_template_request()) ->
    {ok, update_system_template_response(), tuple()} |
    {error, any()} |
    {error, update_system_template_errors(), tuple()}.
update_system_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_system_template(Client, Input, []).

-spec update_system_template(aws_client:aws_client(), update_system_template_request(), proplists:proplist()) ->
    {ok, update_system_template_response(), tuple()} |
    {error, any()} |
    {error, update_system_template_errors(), tuple()}.
update_system_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSystemTemplate">>, Input, Options).

%% @doc Asynchronously uploads one or more entity definitions to the
%% user's namespace.
%%
%% The `document' parameter is required if
%% `syncWithPublicNamespace' and `deleteExistingEntites' are false.
%% If the `syncWithPublicNamespace' parameter is set to
%% `true', the user's namespace will synchronize with the latest
%% version of the public namespace. If `deprecateExistingEntities' is set
%% to true,
%% all entities in the latest version will be deleted before the new
%% `DefinitionDocument' is uploaded.
%%
%% When a user uploads entity definitions for the first time, the service
%% creates a new namespace for the user. The new namespace tracks the public
%% namespace. Currently users
%% can have only one namespace. The namespace version increments whenever a
%% user uploads entity definitions that are backwards-incompatible and
%% whenever a user sets the
%% `syncWithPublicNamespace' parameter or the
%% `deprecateExistingEntities' parameter to `true'.
%%
%% The IDs for all of the entities should be in URN format. Each entity must
%% be in the user's namespace. Users can't create entities in the
%% public namespace, but entity definitions can refer to entities in the
%% public namespace.
%%
%% Valid entities are `Device', `DeviceModel', `Service',
%% `Capability', `State', `Action', `Event', `Property',
%% `Mapping', `Enum'.
-spec upload_entity_definitions(aws_client:aws_client(), upload_entity_definitions_request()) ->
    {ok, upload_entity_definitions_response(), tuple()} |
    {error, any()} |
    {error, upload_entity_definitions_errors(), tuple()}.
upload_entity_definitions(Client, Input)
  when is_map(Client), is_map(Input) ->
    upload_entity_definitions(Client, Input, []).

-spec upload_entity_definitions(aws_client:aws_client(), upload_entity_definitions_request(), proplists:proplist()) ->
    {ok, upload_entity_definitions_response(), tuple()} |
    {error, any()} |
    {error, upload_entity_definitions_errors(), tuple()}.
upload_entity_definitions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UploadEntityDefinitions">>, Input, Options).

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
    Client1 = Client#{service => <<"iotthingsgraph">>},
    Host = build_host(<<"iotthingsgraph">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"IotThingsGraphFrontEndService.", Action/binary>>}
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
