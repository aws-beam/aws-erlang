%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Verified Permissions is a permissions management service from
%% Amazon Web Services.
%%
%% You can use Verified Permissions to manage
%% permissions for your application, and authorize user access based on those
%% permissions.
%% Using Verified Permissions, application developers can grant access based
%% on information about the
%% users, resources, and requested actions. You can also evaluate additional
%% information
%% like group membership, attributes of the resources, and session context,
%% such as time of
%% request and IP addresses. Verified Permissions manages these permissions
%% by letting you create and
%% store authorization policies for your applications, such as
%% consumer-facing web sites
%% and enterprise business systems.
%%
%% Verified Permissions uses Cedar as the policy language to express your
%% permission requirements.
%% Cedar supports both role-based access control (RBAC) and attribute-based
%% access
%% control (ABAC) authorization models.
%%
%% For more information about configuring, administering, and using Amazon
%% Verified Permissions in your
%% applications, see the Amazon Verified Permissions User Guide:
%% https://docs.aws.amazon.com/verifiedpermissions/latest/userguide/.
%%
%% For more information about the Cedar policy language, see the Cedar Policy
%% Language Guide: https://docs.cedarpolicy.com/.
%%
%% When you write Cedar policies that reference principals, resources and
%% actions,
%% you can define the unique identifiers used for each of those elements. We
%% strongly
%% recommend that you follow these best practices:
%%
%% Use values like universally unique identifiers
%% (UUIDs) for all principal and resource identifiers.
%%
%% For example, if user `jane' leaves the company, and you later
%% let someone else use the name `jane', then that new user
%% automatically gets access to everything granted by policies that still
%% reference `User::&quot;jane&quot;'. Cedar can’t distinguish between
%% the
%% new user and the old. This applies to both principal and resource
%% identifiers. Always use identifiers that are guaranteed unique and never
%% reused to ensure that you don’t unintentionally grant access because of
%% the
%% presence of an old identifier in a policy.
%%
%% Where you use a UUID for an entity, we recommend that you follow it with
%% the // comment specifier and the ‘friendly’ name of your entity. This
%% helps
%% to make your policies easier to understand. For example: principal ==
%% User::&quot;a1b2c3d4-e5f6-a1b2-c3d4-EXAMPLE11111&quot;, // alice
%%
%% Do not include personally identifying, confidential,
%% or sensitive information as part of the unique identifier for your
%% principals or resources. These identifiers are included in
%% log entries shared in CloudTrail trails.
%%
%% Several operations return structures that appear similar, but have
%% different purposes.
%% As new functionality is added to the product, the structure used in a
%% parameter of one
%% operation might need to change in a way that wouldn't make sense for
%% the same parameter
%% in a different operation. To help you understand the purpose of each, the
%% following
%% naming convention is used for the structures:
%%
%% Parameter type structures that end in `Detail' are used in
%% `Get' operations.
%%
%% Parameter type structures that end in `Item' are used in
%% `List' operations.
%%
%% Parameter type structures that use neither suffix are used in the mutating
%% (create and update) operations.
-module(aws_verifiedpermissions).

-export([batch_get_policy/2,
         batch_get_policy/3,
         batch_is_authorized/2,
         batch_is_authorized/3,
         batch_is_authorized_with_token/2,
         batch_is_authorized_with_token/3,
         create_identity_source/2,
         create_identity_source/3,
         create_policy/2,
         create_policy/3,
         create_policy_store/2,
         create_policy_store/3,
         create_policy_template/2,
         create_policy_template/3,
         delete_identity_source/2,
         delete_identity_source/3,
         delete_policy/2,
         delete_policy/3,
         delete_policy_store/2,
         delete_policy_store/3,
         delete_policy_template/2,
         delete_policy_template/3,
         get_identity_source/2,
         get_identity_source/3,
         get_policy/2,
         get_policy/3,
         get_policy_store/2,
         get_policy_store/3,
         get_policy_template/2,
         get_policy_template/3,
         get_schema/2,
         get_schema/3,
         is_authorized/2,
         is_authorized/3,
         is_authorized_with_token/2,
         is_authorized_with_token/3,
         list_identity_sources/2,
         list_identity_sources/3,
         list_policies/2,
         list_policies/3,
         list_policy_stores/2,
         list_policy_stores/3,
         list_policy_templates/2,
         list_policy_templates/3,
         put_schema/2,
         put_schema/3,
         update_identity_source/2,
         update_identity_source/3,
         update_policy/2,
         update_policy/3,
         update_policy_store/2,
         update_policy_store/3,
         update_policy_template/2,
         update_policy_template/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% is_authorized_with_token_input() :: #{
%%   <<"accessToken">> => string(),
%%   <<"action">> => action_identifier(),
%%   <<"context">> => list(),
%%   <<"entities">> => list(),
%%   <<"identityToken">> => string(),
%%   <<"policyStoreId">> := string(),
%%   <<"resource">> => entity_identifier()
%% }
-type is_authorized_with_token_input() :: #{binary() => any()}.

%% Example:
%% is_authorized_input() :: #{
%%   <<"action">> => action_identifier(),
%%   <<"context">> => list(),
%%   <<"entities">> => list(),
%%   <<"policyStoreId">> := string(),
%%   <<"principal">> => entity_identifier(),
%%   <<"resource">> => entity_identifier()
%% }
-type is_authorized_input() :: #{binary() => any()}.

%% Example:
%% create_policy_template_output() :: #{
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"policyStoreId">> => string(),
%%   <<"policyTemplateId">> => string()
%% }
-type create_policy_template_output() :: #{binary() => any()}.

%% Example:
%% batch_is_authorized_with_token_input_item() :: #{
%%   <<"action">> => action_identifier(),
%%   <<"context">> => list(),
%%   <<"resource">> => entity_identifier()
%% }
-type batch_is_authorized_with_token_input_item() :: #{binary() => any()}.

%% Example:
%% update_identity_source_input() :: #{
%%   <<"identitySourceId">> := string(),
%%   <<"policyStoreId">> := string(),
%%   <<"principalEntityType">> => string(),
%%   <<"updateConfiguration">> := list()
%% }
-type update_identity_source_input() :: #{binary() => any()}.

%% Example:
%% is_authorized_output() :: #{
%%   <<"decision">> => list(any()),
%%   <<"determiningPolicies">> => list(determining_policy_item()()),
%%   <<"errors">> => list(evaluation_error_item()())
%% }
-type is_authorized_output() :: #{binary() => any()}.

%% Example:
%% delete_policy_template_input() :: #{
%%   <<"policyStoreId">> := string(),
%%   <<"policyTemplateId">> := string()
%% }
-type delete_policy_template_input() :: #{binary() => any()}.

%% Example:
%% open_id_connect_identity_token_configuration() :: #{
%%   <<"clientIds">> => list(string()()),
%%   <<"principalIdClaim">> => string()
%% }
-type open_id_connect_identity_token_configuration() :: #{binary() => any()}.

%% Example:
%% list_policy_templates_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"policyTemplates">> => list(policy_template_item()())
%% }
-type list_policy_templates_output() :: #{binary() => any()}.

%% Example:
%% determining_policy_item() :: #{
%%   <<"policyId">> => string()
%% }
-type determining_policy_item() :: #{binary() => any()}.

%% Example:
%% delete_policy_store_input() :: #{
%%   <<"policyStoreId">> := string()
%% }
-type delete_policy_store_input() :: #{binary() => any()}.

%% Example:
%% list_policy_templates_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"policyStoreId">> := string()
%% }
-type list_policy_templates_input() :: #{binary() => any()}.

%% Example:
%% template_linked_policy_definition() :: #{
%%   <<"policyTemplateId">> => string(),
%%   <<"principal">> => entity_identifier(),
%%   <<"resource">> => entity_identifier()
%% }
-type template_linked_policy_definition() :: #{binary() => any()}.

%% Example:
%% open_id_connect_access_token_configuration() :: #{
%%   <<"audiences">> => list(string()()),
%%   <<"principalIdClaim">> => string()
%% }
-type open_id_connect_access_token_configuration() :: #{binary() => any()}.

%% Example:
%% open_id_connect_access_token_configuration_detail() :: #{
%%   <<"audiences">> => list(string()()),
%%   <<"principalIdClaim">> => string()
%% }
-type open_id_connect_access_token_configuration_detail() :: #{binary() => any()}.

%% Example:
%% create_policy_store_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"validationSettings">> := validation_settings()
%% }
-type create_policy_store_input() :: #{binary() => any()}.

%% Example:
%% get_policy_input() :: #{
%%   <<"policyId">> := string(),
%%   <<"policyStoreId">> := string()
%% }
-type get_policy_input() :: #{binary() => any()}.

%% Example:
%% update_identity_source_output() :: #{
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"identitySourceId">> => string(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"policyStoreId">> => string()
%% }
-type update_identity_source_output() :: #{binary() => any()}.

%% Example:
%% get_identity_source_input() :: #{
%%   <<"identitySourceId">> := string(),
%%   <<"policyStoreId">> := string()
%% }
-type get_identity_source_input() :: #{binary() => any()}.

%% Example:
%% policy_template_item() :: #{
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"policyStoreId">> => string(),
%%   <<"policyTemplateId">> => string()
%% }
-type policy_template_item() :: #{binary() => any()}.

%% Example:
%% update_policy_store_output() :: #{
%%   <<"arn">> => string(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"policyStoreId">> => string()
%% }
-type update_policy_store_output() :: #{binary() => any()}.

%% Example:
%% batch_get_policy_input() :: #{
%%   <<"requests">> := list(batch_get_policy_input_item()())
%% }
-type batch_get_policy_input() :: #{binary() => any()}.

%% Example:
%% batch_is_authorized_with_token_output_item() :: #{
%%   <<"decision">> => list(any()),
%%   <<"determiningPolicies">> => list(determining_policy_item()()),
%%   <<"errors">> => list(evaluation_error_item()()),
%%   <<"request">> => batch_is_authorized_with_token_input_item()
%% }
-type batch_is_authorized_with_token_output_item() :: #{binary() => any()}.

%% Example:
%% policy_item() :: #{
%%   <<"actions">> => list(action_identifier()()),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"definition">> => list(),
%%   <<"effect">> => list(any()),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"policyId">> => string(),
%%   <<"policyStoreId">> => string(),
%%   <<"policyType">> => list(any()),
%%   <<"principal">> => entity_identifier(),
%%   <<"resource">> => entity_identifier()
%% }
-type policy_item() :: #{binary() => any()}.

%% Example:
%% cognito_group_configuration_detail() :: #{
%%   <<"groupEntityType">> => string()
%% }
-type cognito_group_configuration_detail() :: #{binary() => any()}.

%% Example:
%% static_policy_definition_item() :: #{
%%   <<"description">> => string()
%% }
-type static_policy_definition_item() :: #{binary() => any()}.

%% Example:
%% open_id_connect_configuration_detail() :: #{
%%   <<"entityIdPrefix">> => string(),
%%   <<"groupConfiguration">> => open_id_connect_group_configuration_detail(),
%%   <<"issuer">> => string(),
%%   <<"tokenSelection">> => list()
%% }
-type open_id_connect_configuration_detail() :: #{binary() => any()}.

%% Example:
%% create_policy_store_output() :: #{
%%   <<"arn">> => string(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"policyStoreId">> => string()
%% }
-type create_policy_store_output() :: #{binary() => any()}.

%% Example:
%% batch_get_policy_error_item() :: #{
%%   <<"code">> => list(any()),
%%   <<"message">> => [string()],
%%   <<"policyId">> => [string()],
%%   <<"policyStoreId">> => [string()]
%% }
-type batch_get_policy_error_item() :: #{binary() => any()}.

%% Example:
%% batch_is_authorized_output() :: #{
%%   <<"results">> => list(batch_is_authorized_output_item()())
%% }
-type batch_is_authorized_output() :: #{binary() => any()}.

%% Example:
%% batch_is_authorized_input_item() :: #{
%%   <<"action">> => action_identifier(),
%%   <<"context">> => list(),
%%   <<"principal">> => entity_identifier(),
%%   <<"resource">> => entity_identifier()
%% }
-type batch_is_authorized_input_item() :: #{binary() => any()}.

%% Example:
%% update_policy_input() :: #{
%%   <<"definition">> := list(),
%%   <<"policyId">> := string(),
%%   <<"policyStoreId">> := string()
%% }
-type update_policy_input() :: #{binary() => any()}.

%% Example:
%% action_identifier() :: #{
%%   <<"actionId">> => string(),
%%   <<"actionType">> => string()
%% }
-type action_identifier() :: #{binary() => any()}.

%% Example:
%% list_policies_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"policies">> => list(policy_item()())
%% }
-type list_policies_output() :: #{binary() => any()}.

%% Example:
%% put_schema_output() :: #{
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"namespaces">> => list(string()()),
%%   <<"policyStoreId">> => string()
%% }
-type put_schema_output() :: #{binary() => any()}.

%% Example:
%% update_open_id_connect_group_configuration() :: #{
%%   <<"groupClaim">> => string(),
%%   <<"groupEntityType">> => string()
%% }
-type update_open_id_connect_group_configuration() :: #{binary() => any()}.

%% Example:
%% evaluation_error_item() :: #{
%%   <<"errorDescription">> => [string()]
%% }
-type evaluation_error_item() :: #{binary() => any()}.

%% Example:
%% update_cognito_group_configuration() :: #{
%%   <<"groupEntityType">> => string()
%% }
-type update_cognito_group_configuration() :: #{binary() => any()}.

%% Example:
%% update_policy_store_input() :: #{
%%   <<"description">> => string(),
%%   <<"policyStoreId">> := string(),
%%   <<"validationSettings">> := validation_settings()
%% }
-type update_policy_store_input() :: #{binary() => any()}.

%% Example:
%% list_policy_stores_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_policy_stores_input() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resources">> => list(resource_conflict()())
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => list(any())
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% cognito_user_pool_configuration_item() :: #{
%%   <<"clientIds">> => list(string()()),
%%   <<"groupConfiguration">> => cognito_group_configuration_item(),
%%   <<"issuer">> => string(),
%%   <<"userPoolArn">> => string()
%% }
-type cognito_user_pool_configuration_item() :: #{binary() => any()}.

%% Example:
%% batch_is_authorized_with_token_input() :: #{
%%   <<"accessToken">> => string(),
%%   <<"entities">> => list(),
%%   <<"identityToken">> => string(),
%%   <<"policyStoreId">> := string(),
%%   <<"requests">> := list(batch_is_authorized_with_token_input_item()())
%% }
-type batch_is_authorized_with_token_input() :: #{binary() => any()}.

%% Example:
%% open_id_connect_configuration() :: #{
%%   <<"entityIdPrefix">> => string(),
%%   <<"groupConfiguration">> => open_id_connect_group_configuration(),
%%   <<"issuer">> => string(),
%%   <<"tokenSelection">> => list()
%% }
-type open_id_connect_configuration() :: #{binary() => any()}.

%% Example:
%% update_policy_template_output() :: #{
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"policyStoreId">> => string(),
%%   <<"policyTemplateId">> => string()
%% }
-type update_policy_template_output() :: #{binary() => any()}.

%% Example:
%% list_identity_sources_output() :: #{
%%   <<"identitySources">> => list(identity_source_item()()),
%%   <<"nextToken">> => string()
%% }
-type list_identity_sources_output() :: #{binary() => any()}.

%% Example:
%% policy_store_item() :: #{
%%   <<"arn">> => string(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"policyStoreId">> => string()
%% }
-type policy_store_item() :: #{binary() => any()}.

%% Example:
%% identity_source_details() :: #{
%%   <<"clientIds">> => list(string()()),
%%   <<"discoveryUrl">> => string(),
%%   <<"openIdIssuer">> => list(any()),
%%   <<"userPoolArn">> => string()
%% }
-type identity_source_details() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => list(any()),
%%   <<"serviceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% update_open_id_connect_configuration() :: #{
%%   <<"entityIdPrefix">> => string(),
%%   <<"groupConfiguration">> => update_open_id_connect_group_configuration(),
%%   <<"issuer">> => string(),
%%   <<"tokenSelection">> => list()
%% }
-type update_open_id_connect_configuration() :: #{binary() => any()}.

%% Example:
%% delete_policy_input() :: #{
%%   <<"policyId">> := string(),
%%   <<"policyStoreId">> := string()
%% }
-type delete_policy_input() :: #{binary() => any()}.

%% Example:
%% get_schema_output() :: #{
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"namespaces">> => list(string()()),
%%   <<"policyStoreId">> => string(),
%%   <<"schema">> => string()
%% }
-type get_schema_output() :: #{binary() => any()}.

%% Example:
%% cognito_group_configuration() :: #{
%%   <<"groupEntityType">> => string()
%% }
-type cognito_group_configuration() :: #{binary() => any()}.

%% Example:
%% delete_policy_store_output() :: #{

%% }
-type delete_policy_store_output() :: #{binary() => any()}.

%% Example:
%% delete_identity_source_output() :: #{

%% }
-type delete_identity_source_output() :: #{binary() => any()}.

%% Example:
%% cognito_user_pool_configuration_detail() :: #{
%%   <<"clientIds">> => list(string()()),
%%   <<"groupConfiguration">> => cognito_group_configuration_detail(),
%%   <<"issuer">> => string(),
%%   <<"userPoolArn">> => string()
%% }
-type cognito_user_pool_configuration_detail() :: #{binary() => any()}.

%% Example:
%% static_policy_definition() :: #{
%%   <<"description">> => string(),
%%   <<"statement">> => string()
%% }
-type static_policy_definition() :: #{binary() => any()}.

%% Example:
%% get_policy_store_input() :: #{
%%   <<"policyStoreId">> := string()
%% }
-type get_policy_store_input() :: #{binary() => any()}.

%% Example:
%% put_schema_input() :: #{
%%   <<"definition">> := list(),
%%   <<"policyStoreId">> := string()
%% }
-type put_schema_input() :: #{binary() => any()}.

%% Example:
%% open_id_connect_configuration_item() :: #{
%%   <<"entityIdPrefix">> => string(),
%%   <<"groupConfiguration">> => open_id_connect_group_configuration_item(),
%%   <<"issuer">> => string(),
%%   <<"tokenSelection">> => list()
%% }
-type open_id_connect_configuration_item() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"message">> => [string()],
%%   <<"path">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% identity_source_item_details() :: #{
%%   <<"clientIds">> => list(string()()),
%%   <<"discoveryUrl">> => string(),
%%   <<"openIdIssuer">> => list(any()),
%%   <<"userPoolArn">> => string()
%% }
-type identity_source_item_details() :: #{binary() => any()}.

%% Example:
%% delete_policy_template_output() :: #{

%% }
-type delete_policy_template_output() :: #{binary() => any()}.

%% Example:
%% validation_settings() :: #{
%%   <<"mode">> => list(any())
%% }
-type validation_settings() :: #{binary() => any()}.

%% Example:
%% delete_identity_source_input() :: #{
%%   <<"identitySourceId">> := string(),
%%   <<"policyStoreId">> := string()
%% }
-type delete_identity_source_input() :: #{binary() => any()}.

%% Example:
%% update_open_id_connect_identity_token_configuration() :: #{
%%   <<"clientIds">> => list(string()()),
%%   <<"principalIdClaim">> => string()
%% }
-type update_open_id_connect_identity_token_configuration() :: #{binary() => any()}.

%% Example:
%% open_id_connect_group_configuration_item() :: #{
%%   <<"groupClaim">> => string(),
%%   <<"groupEntityType">> => string()
%% }
-type open_id_connect_group_configuration_item() :: #{binary() => any()}.

%% Example:
%% cognito_user_pool_configuration() :: #{
%%   <<"clientIds">> => list(string()()),
%%   <<"groupConfiguration">> => cognito_group_configuration(),
%%   <<"userPoolArn">> => string()
%% }
-type cognito_user_pool_configuration() :: #{binary() => any()}.

%% Example:
%% list_policies_input() :: #{
%%   <<"filter">> => policy_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"policyStoreId">> := string()
%% }
-type list_policies_input() :: #{binary() => any()}.

%% Example:
%% policy_filter() :: #{
%%   <<"policyTemplateId">> => string(),
%%   <<"policyType">> => list(any()),
%%   <<"principal">> => list(),
%%   <<"resource">> => list()
%% }
-type policy_filter() :: #{binary() => any()}.

%% Example:
%% create_policy_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"definition">> := list(),
%%   <<"policyStoreId">> := string()
%% }
-type create_policy_input() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% batch_is_authorized_input() :: #{
%%   <<"entities">> => list(),
%%   <<"policyStoreId">> := string(),
%%   <<"requests">> := list(batch_is_authorized_input_item()())
%% }
-type batch_is_authorized_input() :: #{binary() => any()}.

%% Example:
%% template_linked_policy_definition_detail() :: #{
%%   <<"policyTemplateId">> => string(),
%%   <<"principal">> => entity_identifier(),
%%   <<"resource">> => entity_identifier()
%% }
-type template_linked_policy_definition_detail() :: #{binary() => any()}.

%% Example:
%% update_cognito_user_pool_configuration() :: #{
%%   <<"clientIds">> => list(string()()),
%%   <<"groupConfiguration">> => update_cognito_group_configuration(),
%%   <<"userPoolArn">> => string()
%% }
-type update_cognito_user_pool_configuration() :: #{binary() => any()}.

%% Example:
%% update_policy_template_input() :: #{
%%   <<"description">> => string(),
%%   <<"policyStoreId">> := string(),
%%   <<"policyTemplateId">> := string(),
%%   <<"statement">> := string()
%% }
-type update_policy_template_input() :: #{binary() => any()}.

%% Example:
%% is_authorized_with_token_output() :: #{
%%   <<"decision">> => list(any()),
%%   <<"determiningPolicies">> => list(determining_policy_item()()),
%%   <<"errors">> => list(evaluation_error_item()()),
%%   <<"principal">> => entity_identifier()
%% }
-type is_authorized_with_token_output() :: #{binary() => any()}.

%% Example:
%% create_policy_template_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"policyStoreId">> := string(),
%%   <<"statement">> := string()
%% }
-type create_policy_template_input() :: #{binary() => any()}.

%% Example:
%% cognito_group_configuration_item() :: #{
%%   <<"groupEntityType">> => string()
%% }
-type cognito_group_configuration_item() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% get_policy_store_output() :: #{
%%   <<"arn">> => string(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"policyStoreId">> => string(),
%%   <<"validationSettings">> => validation_settings()
%% }
-type get_policy_store_output() :: #{binary() => any()}.

%% Example:
%% template_linked_policy_definition_item() :: #{
%%   <<"policyTemplateId">> => string(),
%%   <<"principal">> => entity_identifier(),
%%   <<"resource">> => entity_identifier()
%% }
-type template_linked_policy_definition_item() :: #{binary() => any()}.

%% Example:
%% create_identity_source_output() :: #{
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"identitySourceId">> => string(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"policyStoreId">> => string()
%% }
-type create_identity_source_output() :: #{binary() => any()}.

%% Example:
%% update_static_policy_definition() :: #{
%%   <<"description">> => string(),
%%   <<"statement">> => string()
%% }
-type update_static_policy_definition() :: #{binary() => any()}.

%% Example:
%% get_schema_input() :: #{
%%   <<"policyStoreId">> := string()
%% }
-type get_schema_input() :: #{binary() => any()}.

%% Example:
%% resource_conflict() :: #{
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => list(any())
%% }
-type resource_conflict() :: #{binary() => any()}.

%% Example:
%% open_id_connect_access_token_configuration_item() :: #{
%%   <<"audiences">> => list(string()()),
%%   <<"principalIdClaim">> => string()
%% }
-type open_id_connect_access_token_configuration_item() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()()),
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% get_policy_template_output() :: #{
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"description">> => string(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"policyStoreId">> => string(),
%%   <<"policyTemplateId">> => string(),
%%   <<"statement">> => string()
%% }
-type get_policy_template_output() :: #{binary() => any()}.

%% Example:
%% batch_get_policy_output() :: #{
%%   <<"errors">> => list(batch_get_policy_error_item()()),
%%   <<"results">> => list(batch_get_policy_output_item()())
%% }
-type batch_get_policy_output() :: #{binary() => any()}.

%% Example:
%% create_policy_output() :: #{
%%   <<"actions">> => list(action_identifier()()),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"effect">> => list(any()),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"policyId">> => string(),
%%   <<"policyStoreId">> => string(),
%%   <<"policyType">> => list(any()),
%%   <<"principal">> => entity_identifier(),
%%   <<"resource">> => entity_identifier()
%% }
-type create_policy_output() :: #{binary() => any()}.

%% Example:
%% create_identity_source_input() :: #{
%%   <<"clientToken">> => string(),
%%   <<"configuration">> := list(),
%%   <<"policyStoreId">> := string(),
%%   <<"principalEntityType">> => string()
%% }
-type create_identity_source_input() :: #{binary() => any()}.

%% Example:
%% entity_identifier() :: #{
%%   <<"entityId">> => string(),
%%   <<"entityType">> => string()
%% }
-type entity_identifier() :: #{binary() => any()}.

%% Example:
%% get_policy_template_input() :: #{
%%   <<"policyStoreId">> := string(),
%%   <<"policyTemplateId">> := string()
%% }
-type get_policy_template_input() :: #{binary() => any()}.

%% Example:
%% update_open_id_connect_access_token_configuration() :: #{
%%   <<"audiences">> => list(string()()),
%%   <<"principalIdClaim">> => string()
%% }
-type update_open_id_connect_access_token_configuration() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% open_id_connect_group_configuration_detail() :: #{
%%   <<"groupClaim">> => string(),
%%   <<"groupEntityType">> => string()
%% }
-type open_id_connect_group_configuration_detail() :: #{binary() => any()}.

%% Example:
%% identity_source_item() :: #{
%%   <<"configuration">> => list(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"details">> => identity_source_item_details(),
%%   <<"identitySourceId">> => string(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"policyStoreId">> => string(),
%%   <<"principalEntityType">> => string()
%% }
-type identity_source_item() :: #{binary() => any()}.

%% Example:
%% open_id_connect_group_configuration() :: #{
%%   <<"groupClaim">> => string(),
%%   <<"groupEntityType">> => string()
%% }
-type open_id_connect_group_configuration() :: #{binary() => any()}.

%% Example:
%% identity_source_filter() :: #{
%%   <<"principalEntityType">> => string()
%% }
-type identity_source_filter() :: #{binary() => any()}.

%% Example:
%% batch_is_authorized_with_token_output() :: #{
%%   <<"principal">> => entity_identifier(),
%%   <<"results">> => list(batch_is_authorized_with_token_output_item()())
%% }
-type batch_is_authorized_with_token_output() :: #{binary() => any()}.

%% Example:
%% list_identity_sources_input() :: #{
%%   <<"filters">> => list(identity_source_filter()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"policyStoreId">> := string()
%% }
-type list_identity_sources_input() :: #{binary() => any()}.

%% Example:
%% batch_is_authorized_output_item() :: #{
%%   <<"decision">> => list(any()),
%%   <<"determiningPolicies">> => list(determining_policy_item()()),
%%   <<"errors">> => list(evaluation_error_item()()),
%%   <<"request">> => batch_is_authorized_input_item()
%% }
-type batch_is_authorized_output_item() :: #{binary() => any()}.

%% Example:
%% update_policy_output() :: #{
%%   <<"actions">> => list(action_identifier()()),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"effect">> => list(any()),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"policyId">> => string(),
%%   <<"policyStoreId">> => string(),
%%   <<"policyType">> => list(any()),
%%   <<"principal">> => entity_identifier(),
%%   <<"resource">> => entity_identifier()
%% }
-type update_policy_output() :: #{binary() => any()}.

%% Example:
%% batch_get_policy_input_item() :: #{
%%   <<"policyId">> => string(),
%%   <<"policyStoreId">> => string()
%% }
-type batch_get_policy_input_item() :: #{binary() => any()}.

%% Example:
%% static_policy_definition_detail() :: #{
%%   <<"description">> => string(),
%%   <<"statement">> => string()
%% }
-type static_policy_definition_detail() :: #{binary() => any()}.

%% Example:
%% delete_policy_output() :: #{

%% }
-type delete_policy_output() :: #{binary() => any()}.

%% Example:
%% entity_item() :: #{
%%   <<"attributes">> => map(),
%%   <<"identifier">> => entity_identifier(),
%%   <<"parents">> => list(entity_identifier()())
%% }
-type entity_item() :: #{binary() => any()}.

%% Example:
%% batch_get_policy_output_item() :: #{
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"definition">> => list(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"policyId">> => string(),
%%   <<"policyStoreId">> => string(),
%%   <<"policyType">> => list(any())
%% }
-type batch_get_policy_output_item() :: #{binary() => any()}.

%% Example:
%% list_policy_stores_output() :: #{
%%   <<"nextToken">> => string(),
%%   <<"policyStores">> => list(policy_store_item()())
%% }
-type list_policy_stores_output() :: #{binary() => any()}.

%% Example:
%% open_id_connect_identity_token_configuration_item() :: #{
%%   <<"clientIds">> => list(string()()),
%%   <<"principalIdClaim">> => string()
%% }
-type open_id_connect_identity_token_configuration_item() :: #{binary() => any()}.

%% Example:
%% get_identity_source_output() :: #{
%%   <<"configuration">> => list(),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"details">> => identity_source_details(),
%%   <<"identitySourceId">> => string(),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"policyStoreId">> => string(),
%%   <<"principalEntityType">> => string()
%% }
-type get_identity_source_output() :: #{binary() => any()}.

%% Example:
%% open_id_connect_identity_token_configuration_detail() :: #{
%%   <<"clientIds">> => list(string()()),
%%   <<"principalIdClaim">> => string()
%% }
-type open_id_connect_identity_token_configuration_detail() :: #{binary() => any()}.

%% Example:
%% get_policy_output() :: #{
%%   <<"actions">> => list(action_identifier()()),
%%   <<"createdDate">> => non_neg_integer(),
%%   <<"definition">> => list(),
%%   <<"effect">> => list(any()),
%%   <<"lastUpdatedDate">> => non_neg_integer(),
%%   <<"policyId">> => string(),
%%   <<"policyStoreId">> => string(),
%%   <<"policyType">> => list(any()),
%%   <<"principal">> => entity_identifier(),
%%   <<"resource">> => entity_identifier()
%% }
-type get_policy_output() :: #{binary() => any()}.

-type batch_is_authorized_errors() ::
    resource_not_found_exception().

-type batch_is_authorized_with_token_errors() ::
    resource_not_found_exception().

-type create_identity_source_errors() ::
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_policy_errors() ::
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_policy_store_errors() ::
    service_quota_exceeded_exception() | 
    conflict_exception().

-type create_policy_template_errors() ::
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_identity_source_errors() ::
    resource_not_found_exception() | 
    conflict_exception().

-type delete_policy_errors() ::
    resource_not_found_exception() | 
    conflict_exception().

-type delete_policy_template_errors() ::
    resource_not_found_exception() | 
    conflict_exception().

-type get_identity_source_errors() ::
    resource_not_found_exception().

-type get_policy_errors() ::
    resource_not_found_exception().

-type get_policy_store_errors() ::
    resource_not_found_exception().

-type get_policy_template_errors() ::
    resource_not_found_exception().

-type get_schema_errors() ::
    resource_not_found_exception().

-type is_authorized_errors() ::
    resource_not_found_exception().

-type is_authorized_with_token_errors() ::
    resource_not_found_exception().

-type list_identity_sources_errors() ::
    resource_not_found_exception().

-type list_policies_errors() ::
    resource_not_found_exception().

-type list_policy_templates_errors() ::
    resource_not_found_exception().

-type put_schema_errors() ::
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_identity_source_errors() ::
    resource_not_found_exception() | 
    conflict_exception().

-type update_policy_errors() ::
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_policy_store_errors() ::
    resource_not_found_exception() | 
    conflict_exception().

-type update_policy_template_errors() ::
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Retrieves information about a group (batch) of policies.
%%
%% The `BatchGetPolicy' operation doesn't have its own IAM
%% permission. To authorize this operation for Amazon Web Services
%% principals, include the permission
%% `verifiedpermissions:GetPolicy' in their IAM policies.
-spec batch_get_policy(aws_client:aws_client(), batch_get_policy_input()) ->
    {ok, batch_get_policy_output(), tuple()} |
    {error, any()}.
batch_get_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_policy(Client, Input, []).

-spec batch_get_policy(aws_client:aws_client(), batch_get_policy_input(), proplists:proplist()) ->
    {ok, batch_get_policy_output(), tuple()} |
    {error, any()}.
batch_get_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetPolicy">>, Input, Options).

%% @doc Makes a series of decisions about multiple authorization requests for
%% one principal or
%% resource.
%%
%% Each request contains the equivalent content of an `IsAuthorized'
%% request: principal, action, resource, and context. Either the
%% `principal' or
%% the `resource' parameter must be identical across all requests. For
%% example,
%% Verified Permissions won't evaluate a pair of requests where `bob'
%% views
%% `photo1' and `alice' views `photo2'. Authorization
%% of `bob' to view `photo1' and `photo2', or
%% `bob' and `alice' to view `photo1', are valid
%% batches.
%%
%% The request is evaluated against all policies in the specified policy
%% store that match the
%% entities that you declare. The result of the decisions is a series of
%% `Allow'
%% or `Deny' responses, along with the IDs of the policies that produced
%% each
%% decision.
%%
%% The `entities' of a `BatchIsAuthorized' API request can contain
%% up to 100 principals and up to 100 resources. The `requests' of a
%% `BatchIsAuthorized' API request can contain up to 30 requests.
%%
%% The `BatchIsAuthorized' operation doesn't have its own IAM
%% permission. To authorize this operation for Amazon Web Services
%% principals, include the permission
%% `verifiedpermissions:IsAuthorized' in their IAM policies.
-spec batch_is_authorized(aws_client:aws_client(), batch_is_authorized_input()) ->
    {ok, batch_is_authorized_output(), tuple()} |
    {error, any()} |
    {error, batch_is_authorized_errors(), tuple()}.
batch_is_authorized(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_is_authorized(Client, Input, []).

-spec batch_is_authorized(aws_client:aws_client(), batch_is_authorized_input(), proplists:proplist()) ->
    {ok, batch_is_authorized_output(), tuple()} |
    {error, any()} |
    {error, batch_is_authorized_errors(), tuple()}.
batch_is_authorized(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchIsAuthorized">>, Input, Options).

%% @doc Makes a series of decisions about multiple authorization requests for
%% one token.
%%
%% The
%% principal in this request comes from an external identity source in the
%% form of an identity or
%% access token, formatted as a JSON
%% web token (JWT): https://wikipedia.org/wiki/JSON_Web_Token. The
%% information in the parameters can also define
%% additional context that Verified Permissions can include in the
%% evaluations.
%%
%% The request is evaluated against all policies in the specified policy
%% store that match the
%% entities that you provide in the entities declaration and in the token.
%% The result of
%% the decisions is a series of `Allow' or `Deny' responses, along
%% with the IDs of the policies that produced each decision.
%%
%% The `entities' of a `BatchIsAuthorizedWithToken' API request can
%% contain up to 100 resources and up to 99 user groups. The `requests'
%% of a
%% `BatchIsAuthorizedWithToken' API request can contain up to 30
%% requests.
%%
%% The `BatchIsAuthorizedWithToken' operation doesn't have its own
%% IAM permission. To authorize this operation for Amazon Web Services
%% principals, include the
%% permission `verifiedpermissions:IsAuthorizedWithToken' in their IAM
%% policies.
-spec batch_is_authorized_with_token(aws_client:aws_client(), batch_is_authorized_with_token_input()) ->
    {ok, batch_is_authorized_with_token_output(), tuple()} |
    {error, any()} |
    {error, batch_is_authorized_with_token_errors(), tuple()}.
batch_is_authorized_with_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_is_authorized_with_token(Client, Input, []).

-spec batch_is_authorized_with_token(aws_client:aws_client(), batch_is_authorized_with_token_input(), proplists:proplist()) ->
    {ok, batch_is_authorized_with_token_output(), tuple()} |
    {error, any()} |
    {error, batch_is_authorized_with_token_errors(), tuple()}.
batch_is_authorized_with_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchIsAuthorizedWithToken">>, Input, Options).

%% @doc Adds an identity source to a policy store–an Amazon Cognito user pool
%% or OpenID Connect
%% (OIDC) identity provider (IdP).
%%
%% After you create an identity source, you can use the identities provided
%% by the IdP as proxies
%% for the principal in authorization queries that use the
%% IsAuthorizedWithToken:
%% https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html
%% or
%% BatchIsAuthorizedWithToken:
%% https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_BatchIsAuthorizedWithToken.html
%% API operations. These identities take the form
%% of tokens that contain claims about the user, such as IDs, attributes and
%% group
%% memberships. Identity sources provide identity (ID) tokens and access
%% tokens. Verified Permissions
%% derives information about your user and session from token claims. Access
%% tokens provide
%% action `context' to your policies, and ID tokens provide principal
%% `Attributes'.
%%
%% Tokens from an identity source user continue to be usable until they
%% expire.
%% Token revocation and resource deletion have no effect on the validity of a
%% token in your policy store
%%
%% To reference a user from this identity source in your Cedar policies,
%% refer to the
%% following syntax examples.
%%
%% Amazon Cognito user pool:
%% ```
%% Namespace::[Entity type]::[User pool ID]|[user principal
%% attribute]''', for example
%% `MyCorp::User::us-east-1_EXAMPLE|a1b2c3d4-5678-90ab-cdef-EXAMPLE11111'.
%%
%% OpenID Connect (OIDC) provider:
%% ```
%% Namespace::[Entity type]::[entityIdPrefix]|[user principal
%% attribute]''', for example
%% `MyCorp::User::MyOIDCProvider|a1b2c3d4-5678-90ab-cdef-EXAMPLE22222'.
%%
%% Verified Permissions is
%% eventually consistent: https://wikipedia.org/wiki/Eventual_consistency
%% . It can take a few seconds for a new or changed element to propagate
%% through
%% the service and be visible in the results of other Verified Permissions
%% operations.
-spec create_identity_source(aws_client:aws_client(), create_identity_source_input()) ->
    {ok, create_identity_source_output(), tuple()} |
    {error, any()} |
    {error, create_identity_source_errors(), tuple()}.
create_identity_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_identity_source(Client, Input, []).

-spec create_identity_source(aws_client:aws_client(), create_identity_source_input(), proplists:proplist()) ->
    {ok, create_identity_source_output(), tuple()} |
    {error, any()} |
    {error, create_identity_source_errors(), tuple()}.
create_identity_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIdentitySource">>, Input, Options).

%% @doc Creates a Cedar policy and saves it in the specified policy store.
%%
%% You can create either a
%% static policy or a policy linked to a policy template.
%%
%% To create a static policy, provide the Cedar policy text in the
%% `StaticPolicy' section of the
%% `PolicyDefinition'.
%%
%% To create a policy that is dynamically linked to a policy template,
%% specify the policy template ID
%% and the principal and resource to associate with this policy in the
%% `templateLinked' section of the `PolicyDefinition'. If the
%% policy template is ever updated, any policies linked to the policy
%% template automatically use the
%% updated template.
%%
%% Creating a policy causes it to be validated against the schema in the
%% policy store. If the
%% policy doesn't pass validation, the operation fails and the policy
%% isn't
%% stored.
%%
%% Verified Permissions is
%% eventually consistent: https://wikipedia.org/wiki/Eventual_consistency
%% . It can take a few seconds for a new or changed element to propagate
%% through
%% the service and be visible in the results of other Verified Permissions
%% operations.
-spec create_policy(aws_client:aws_client(), create_policy_input()) ->
    {ok, create_policy_output(), tuple()} |
    {error, any()} |
    {error, create_policy_errors(), tuple()}.
create_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_policy(Client, Input, []).

-spec create_policy(aws_client:aws_client(), create_policy_input(), proplists:proplist()) ->
    {ok, create_policy_output(), tuple()} |
    {error, any()} |
    {error, create_policy_errors(), tuple()}.
create_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePolicy">>, Input, Options).

%% @doc Creates a policy store.
%%
%% A policy store is a container for policy resources.
%%
%% Although Cedar supports multiple namespaces:
%% https://docs.cedarpolicy.com/schema/schema.html#namespace, Verified
%% Permissions currently supports only one
%% namespace per policy store.
%%
%% Verified Permissions is
%% eventually consistent: https://wikipedia.org/wiki/Eventual_consistency
%% . It can take a few seconds for a new or changed element to propagate
%% through
%% the service and be visible in the results of other Verified Permissions
%% operations.
-spec create_policy_store(aws_client:aws_client(), create_policy_store_input()) ->
    {ok, create_policy_store_output(), tuple()} |
    {error, any()} |
    {error, create_policy_store_errors(), tuple()}.
create_policy_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_policy_store(Client, Input, []).

-spec create_policy_store(aws_client:aws_client(), create_policy_store_input(), proplists:proplist()) ->
    {ok, create_policy_store_output(), tuple()} |
    {error, any()} |
    {error, create_policy_store_errors(), tuple()}.
create_policy_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePolicyStore">>, Input, Options).

%% @doc Creates a policy template.
%%
%% A template can use placeholders for the principal and resource. A
%% template must be instantiated into a policy by associating it with
%% specific principals
%% and resources to use for the placeholders. That instantiated policy can
%% then be
%% considered in authorization decisions. The instantiated policy works
%% identically to any
%% other policy, except that it is dynamically linked to the template. If the
%% template
%% changes, then any policies that are linked to that template are
%% immediately updated as
%% well.
%%
%% Verified Permissions is
%% eventually consistent: https://wikipedia.org/wiki/Eventual_consistency
%% . It can take a few seconds for a new or changed element to propagate
%% through
%% the service and be visible in the results of other Verified Permissions
%% operations.
-spec create_policy_template(aws_client:aws_client(), create_policy_template_input()) ->
    {ok, create_policy_template_output(), tuple()} |
    {error, any()} |
    {error, create_policy_template_errors(), tuple()}.
create_policy_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_policy_template(Client, Input, []).

-spec create_policy_template(aws_client:aws_client(), create_policy_template_input(), proplists:proplist()) ->
    {ok, create_policy_template_output(), tuple()} |
    {error, any()} |
    {error, create_policy_template_errors(), tuple()}.
create_policy_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePolicyTemplate">>, Input, Options).

%% @doc Deletes an identity source that references an identity provider (IdP)
%% such as Amazon Cognito.
%%
%% After
%% you delete the identity source, you can no longer use tokens for
%% identities from that identity source to
%% represent principals in authorization queries made using
%% IsAuthorizedWithToken:
%% https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_IsAuthorizedWithToken.html.
%% operations.
-spec delete_identity_source(aws_client:aws_client(), delete_identity_source_input()) ->
    {ok, delete_identity_source_output(), tuple()} |
    {error, any()} |
    {error, delete_identity_source_errors(), tuple()}.
delete_identity_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_identity_source(Client, Input, []).

-spec delete_identity_source(aws_client:aws_client(), delete_identity_source_input(), proplists:proplist()) ->
    {ok, delete_identity_source_output(), tuple()} |
    {error, any()} |
    {error, delete_identity_source_errors(), tuple()}.
delete_identity_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIdentitySource">>, Input, Options).

%% @doc Deletes the specified policy from the policy store.
%%
%% This operation is idempotent; if you specify a policy that doesn't
%% exist, the request response returns a successful `HTTP 200' status
%% code.
-spec delete_policy(aws_client:aws_client(), delete_policy_input()) ->
    {ok, delete_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_policy_errors(), tuple()}.
delete_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_policy(Client, Input, []).

-spec delete_policy(aws_client:aws_client(), delete_policy_input(), proplists:proplist()) ->
    {ok, delete_policy_output(), tuple()} |
    {error, any()} |
    {error, delete_policy_errors(), tuple()}.
delete_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePolicy">>, Input, Options).

%% @doc Deletes the specified policy store.
%%
%% This operation is idempotent. If you specify a policy store that does not
%% exist, the request
%% response will still return a successful HTTP 200 status code.
-spec delete_policy_store(aws_client:aws_client(), delete_policy_store_input()) ->
    {ok, delete_policy_store_output(), tuple()} |
    {error, any()}.
delete_policy_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_policy_store(Client, Input, []).

-spec delete_policy_store(aws_client:aws_client(), delete_policy_store_input(), proplists:proplist()) ->
    {ok, delete_policy_store_output(), tuple()} |
    {error, any()}.
delete_policy_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePolicyStore">>, Input, Options).

%% @doc Deletes the specified policy template from the policy store.
%%
%% This operation also deletes any policies that were created from the
%% specified
%% policy template. Those policies are immediately removed from all future
%% API responses, and are
%% asynchronously deleted from the policy store.
-spec delete_policy_template(aws_client:aws_client(), delete_policy_template_input()) ->
    {ok, delete_policy_template_output(), tuple()} |
    {error, any()} |
    {error, delete_policy_template_errors(), tuple()}.
delete_policy_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_policy_template(Client, Input, []).

-spec delete_policy_template(aws_client:aws_client(), delete_policy_template_input(), proplists:proplist()) ->
    {ok, delete_policy_template_output(), tuple()} |
    {error, any()} |
    {error, delete_policy_template_errors(), tuple()}.
delete_policy_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePolicyTemplate">>, Input, Options).

%% @doc Retrieves the details about the specified identity source.
-spec get_identity_source(aws_client:aws_client(), get_identity_source_input()) ->
    {ok, get_identity_source_output(), tuple()} |
    {error, any()} |
    {error, get_identity_source_errors(), tuple()}.
get_identity_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_identity_source(Client, Input, []).

-spec get_identity_source(aws_client:aws_client(), get_identity_source_input(), proplists:proplist()) ->
    {ok, get_identity_source_output(), tuple()} |
    {error, any()} |
    {error, get_identity_source_errors(), tuple()}.
get_identity_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIdentitySource">>, Input, Options).

%% @doc Retrieves information about the specified policy.
-spec get_policy(aws_client:aws_client(), get_policy_input()) ->
    {ok, get_policy_output(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_policy(Client, Input, []).

-spec get_policy(aws_client:aws_client(), get_policy_input(), proplists:proplist()) ->
    {ok, get_policy_output(), tuple()} |
    {error, any()} |
    {error, get_policy_errors(), tuple()}.
get_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPolicy">>, Input, Options).

%% @doc Retrieves details about a policy store.
-spec get_policy_store(aws_client:aws_client(), get_policy_store_input()) ->
    {ok, get_policy_store_output(), tuple()} |
    {error, any()} |
    {error, get_policy_store_errors(), tuple()}.
get_policy_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_policy_store(Client, Input, []).

-spec get_policy_store(aws_client:aws_client(), get_policy_store_input(), proplists:proplist()) ->
    {ok, get_policy_store_output(), tuple()} |
    {error, any()} |
    {error, get_policy_store_errors(), tuple()}.
get_policy_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPolicyStore">>, Input, Options).

%% @doc Retrieve the details for the specified policy template in the
%% specified policy store.
-spec get_policy_template(aws_client:aws_client(), get_policy_template_input()) ->
    {ok, get_policy_template_output(), tuple()} |
    {error, any()} |
    {error, get_policy_template_errors(), tuple()}.
get_policy_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_policy_template(Client, Input, []).

-spec get_policy_template(aws_client:aws_client(), get_policy_template_input(), proplists:proplist()) ->
    {ok, get_policy_template_output(), tuple()} |
    {error, any()} |
    {error, get_policy_template_errors(), tuple()}.
get_policy_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPolicyTemplate">>, Input, Options).

%% @doc Retrieve the details for the specified schema in the specified policy
%% store.
-spec get_schema(aws_client:aws_client(), get_schema_input()) ->
    {ok, get_schema_output(), tuple()} |
    {error, any()} |
    {error, get_schema_errors(), tuple()}.
get_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_schema(Client, Input, []).

-spec get_schema(aws_client:aws_client(), get_schema_input(), proplists:proplist()) ->
    {ok, get_schema_output(), tuple()} |
    {error, any()} |
    {error, get_schema_errors(), tuple()}.
get_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSchema">>, Input, Options).

%% @doc Makes an authorization decision about a service request described in
%% the parameters.
%%
%% The information in the parameters can also define additional context that
%% Verified Permissions can
%% include in the evaluation. The request is evaluated against all matching
%% policies in the
%% specified policy store. The result of the decision is either `Allow'
%% or
%% `Deny', along with a list of the policies that resulted in the
%% decision.
-spec is_authorized(aws_client:aws_client(), is_authorized_input()) ->
    {ok, is_authorized_output(), tuple()} |
    {error, any()} |
    {error, is_authorized_errors(), tuple()}.
is_authorized(Client, Input)
  when is_map(Client), is_map(Input) ->
    is_authorized(Client, Input, []).

-spec is_authorized(aws_client:aws_client(), is_authorized_input(), proplists:proplist()) ->
    {ok, is_authorized_output(), tuple()} |
    {error, any()} |
    {error, is_authorized_errors(), tuple()}.
is_authorized(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"IsAuthorized">>, Input, Options).

%% @doc Makes an authorization decision about a service request described in
%% the parameters.
%%
%% The principal in this request comes from an external identity source in
%% the form of an identity
%% token formatted as a JSON web
%% token (JWT): https://wikipedia.org/wiki/JSON_Web_Token. The information in
%% the parameters can also define additional
%% context that Verified Permissions can include in the evaluation. The
%% request is evaluated against all
%% matching policies in the specified policy store. The result of the
%% decision is either
%% `Allow' or `Deny', along with a list of the policies that
%% resulted in the decision.
%%
%% Verified Permissions validates each token that is specified in a request
%% by checking its expiration
%% date and its signature.
%%
%% Tokens from an identity source user continue to be usable until they
%% expire.
%% Token revocation and resource deletion have no effect on the validity of a
%% token in your policy store
-spec is_authorized_with_token(aws_client:aws_client(), is_authorized_with_token_input()) ->
    {ok, is_authorized_with_token_output(), tuple()} |
    {error, any()} |
    {error, is_authorized_with_token_errors(), tuple()}.
is_authorized_with_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    is_authorized_with_token(Client, Input, []).

-spec is_authorized_with_token(aws_client:aws_client(), is_authorized_with_token_input(), proplists:proplist()) ->
    {ok, is_authorized_with_token_output(), tuple()} |
    {error, any()} |
    {error, is_authorized_with_token_errors(), tuple()}.
is_authorized_with_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"IsAuthorizedWithToken">>, Input, Options).

%% @doc Returns a paginated list of all of the identity sources defined in
%% the specified policy store.
-spec list_identity_sources(aws_client:aws_client(), list_identity_sources_input()) ->
    {ok, list_identity_sources_output(), tuple()} |
    {error, any()} |
    {error, list_identity_sources_errors(), tuple()}.
list_identity_sources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_identity_sources(Client, Input, []).

-spec list_identity_sources(aws_client:aws_client(), list_identity_sources_input(), proplists:proplist()) ->
    {ok, list_identity_sources_output(), tuple()} |
    {error, any()} |
    {error, list_identity_sources_errors(), tuple()}.
list_identity_sources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIdentitySources">>, Input, Options).

%% @doc Returns a paginated list of all policies stored in the specified
%% policy store.
-spec list_policies(aws_client:aws_client(), list_policies_input()) ->
    {ok, list_policies_output(), tuple()} |
    {error, any()} |
    {error, list_policies_errors(), tuple()}.
list_policies(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_policies(Client, Input, []).

-spec list_policies(aws_client:aws_client(), list_policies_input(), proplists:proplist()) ->
    {ok, list_policies_output(), tuple()} |
    {error, any()} |
    {error, list_policies_errors(), tuple()}.
list_policies(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPolicies">>, Input, Options).

%% @doc Returns a paginated list of all policy stores in the calling Amazon
%% Web Services account.
-spec list_policy_stores(aws_client:aws_client(), list_policy_stores_input()) ->
    {ok, list_policy_stores_output(), tuple()} |
    {error, any()}.
list_policy_stores(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_policy_stores(Client, Input, []).

-spec list_policy_stores(aws_client:aws_client(), list_policy_stores_input(), proplists:proplist()) ->
    {ok, list_policy_stores_output(), tuple()} |
    {error, any()}.
list_policy_stores(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPolicyStores">>, Input, Options).

%% @doc Returns a paginated list of all policy templates in the specified
%% policy store.
-spec list_policy_templates(aws_client:aws_client(), list_policy_templates_input()) ->
    {ok, list_policy_templates_output(), tuple()} |
    {error, any()} |
    {error, list_policy_templates_errors(), tuple()}.
list_policy_templates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_policy_templates(Client, Input, []).

-spec list_policy_templates(aws_client:aws_client(), list_policy_templates_input(), proplists:proplist()) ->
    {ok, list_policy_templates_output(), tuple()} |
    {error, any()} |
    {error, list_policy_templates_errors(), tuple()}.
list_policy_templates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPolicyTemplates">>, Input, Options).

%% @doc Creates or updates the policy schema in the specified policy store.
%%
%% The schema is used to
%% validate any Cedar policies and policy templates submitted to the policy
%% store. Any changes to the schema
%% validate only policies and templates submitted after the schema change.
%% Existing
%% policies and templates are not re-evaluated against the changed schema. If
%% you later
%% update a policy, then it is evaluated against the new schema at that time.
%%
%% Verified Permissions is
%% eventually consistent: https://wikipedia.org/wiki/Eventual_consistency
%% . It can take a few seconds for a new or changed element to propagate
%% through
%% the service and be visible in the results of other Verified Permissions
%% operations.
-spec put_schema(aws_client:aws_client(), put_schema_input()) ->
    {ok, put_schema_output(), tuple()} |
    {error, any()} |
    {error, put_schema_errors(), tuple()}.
put_schema(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_schema(Client, Input, []).

-spec put_schema(aws_client:aws_client(), put_schema_input(), proplists:proplist()) ->
    {ok, put_schema_output(), tuple()} |
    {error, any()} |
    {error, put_schema_errors(), tuple()}.
put_schema(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutSchema">>, Input, Options).

%% @doc Updates the specified identity source to use a new identity provider
%% (IdP), or to change
%% the mapping of identities from the IdP to a different principal entity
%% type.
%%
%% Verified Permissions is
%% eventually consistent: https://wikipedia.org/wiki/Eventual_consistency
%% . It can take a few seconds for a new or changed element to propagate
%% through
%% the service and be visible in the results of other Verified Permissions
%% operations.
-spec update_identity_source(aws_client:aws_client(), update_identity_source_input()) ->
    {ok, update_identity_source_output(), tuple()} |
    {error, any()} |
    {error, update_identity_source_errors(), tuple()}.
update_identity_source(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_identity_source(Client, Input, []).

-spec update_identity_source(aws_client:aws_client(), update_identity_source_input(), proplists:proplist()) ->
    {ok, update_identity_source_output(), tuple()} |
    {error, any()} |
    {error, update_identity_source_errors(), tuple()}.
update_identity_source(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateIdentitySource">>, Input, Options).

%% @doc Modifies a Cedar static policy in the specified policy store.
%%
%% You can change only certain elements of
%% the UpdatePolicyDefinition:
%% https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyInput.html#amazonverifiedpermissions-UpdatePolicy-request-UpdatePolicyDefinition
%% parameter. You can directly update only static policies. To
%% change a template-linked policy, you must update the template instead,
%% using UpdatePolicyTemplate:
%% https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyTemplate.html.
%%
%% If policy validation is enabled in the policy store, then updating a
%% static policy causes
%% Verified Permissions to validate the policy against the schema in the
%% policy store. If the updated
%% static policy doesn't pass validation, the operation fails and the
%% update isn't
%% stored.
%%
%% When you edit a static policy, you can change only certain elements of a
%% static
%% policy:
%%
%% The action referenced by the policy.
%%
%% A condition clause, such as when and unless.
%%
%% You can't change these elements of a static policy:
%%
%% Changing a policy from a static policy to a template-linked
%% policy.
%%
%% Changing the effect of a static policy from permit or forbid.
%%
%% The principal referenced by a static policy.
%%
%% The resource referenced by a static policy.
%%
%% To update a template-linked policy, you must update the template instead.
%%
%% Verified Permissions is
%% eventually consistent: https://wikipedia.org/wiki/Eventual_consistency
%% . It can take a few seconds for a new or changed element to propagate
%% through
%% the service and be visible in the results of other Verified Permissions
%% operations.
-spec update_policy(aws_client:aws_client(), update_policy_input()) ->
    {ok, update_policy_output(), tuple()} |
    {error, any()} |
    {error, update_policy_errors(), tuple()}.
update_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_policy(Client, Input, []).

-spec update_policy(aws_client:aws_client(), update_policy_input(), proplists:proplist()) ->
    {ok, update_policy_output(), tuple()} |
    {error, any()} |
    {error, update_policy_errors(), tuple()}.
update_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePolicy">>, Input, Options).

%% @doc Modifies the validation setting for a policy store.
%%
%% Verified Permissions is
%% eventually consistent: https://wikipedia.org/wiki/Eventual_consistency
%% . It can take a few seconds for a new or changed element to propagate
%% through
%% the service and be visible in the results of other Verified Permissions
%% operations.
-spec update_policy_store(aws_client:aws_client(), update_policy_store_input()) ->
    {ok, update_policy_store_output(), tuple()} |
    {error, any()} |
    {error, update_policy_store_errors(), tuple()}.
update_policy_store(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_policy_store(Client, Input, []).

-spec update_policy_store(aws_client:aws_client(), update_policy_store_input(), proplists:proplist()) ->
    {ok, update_policy_store_output(), tuple()} |
    {error, any()} |
    {error, update_policy_store_errors(), tuple()}.
update_policy_store(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePolicyStore">>, Input, Options).

%% @doc Updates the specified policy template.
%%
%% You can update only the description and the some elements
%% of the policyBody:
%% https://docs.aws.amazon.com/verifiedpermissions/latest/apireference/API_UpdatePolicyTemplate.html#amazonverifiedpermissions-UpdatePolicyTemplate-request-policyBody.
%%
%% Changes you make to the policy template content are immediately (within
%% the constraints of
%% eventual consistency) reflected in authorization decisions that involve
%% all template-linked policies
%% instantiated from this template.
%%
%% Verified Permissions is
%% eventually consistent: https://wikipedia.org/wiki/Eventual_consistency
%% . It can take a few seconds for a new or changed element to propagate
%% through
%% the service and be visible in the results of other Verified Permissions
%% operations.
-spec update_policy_template(aws_client:aws_client(), update_policy_template_input()) ->
    {ok, update_policy_template_output(), tuple()} |
    {error, any()} |
    {error, update_policy_template_errors(), tuple()}.
update_policy_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_policy_template(Client, Input, []).

-spec update_policy_template(aws_client:aws_client(), update_policy_template_input(), proplists:proplist()) ->
    {ok, update_policy_template_output(), tuple()} |
    {error, any()} |
    {error, update_policy_template_errors(), tuple()}.
update_policy_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePolicyTemplate">>, Input, Options).

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
    Client1 = Client#{service => <<"verifiedpermissions">>},
    Host = build_host(<<"verifiedpermissions">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"VerifiedPermissions.", Action/binary>>}
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
