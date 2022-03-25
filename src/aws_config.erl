%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Config
%%
%% Config provides a way to keep track of the configurations of all the
%% Amazon Web Services resources associated with your Amazon Web Services
%% account.
%%
%% You can use Config to get the current and historical configurations of
%% each Amazon Web Services resource and also to get information about the
%% relationship between the resources. An Amazon Web Services resource can be
%% an Amazon Compute Cloud (Amazon EC2) instance, an Elastic Block Store
%% (EBS) volume, an elastic network Interface (ENI), or a security group. For
%% a complete list of resources currently supported by Config, see Supported
%% Amazon Web Services resources.
%%
%% You can access and manage Config through the Amazon Web Services
%% Management Console, the Amazon Web Services Command Line Interface (Amazon
%% Web Services CLI), the Config API, or the Amazon Web Services SDKs for
%% Config. This reference guide contains documentation for the Config API and
%% the Amazon Web Services CLI commands that you can use to manage Config.
%% The Config API uses the Signature Version 4 protocol for signing requests.
%% For more information about how to sign a request with this protocol, see
%% Signature Version 4 Signing Process. For detailed information about Config
%% features and their associated actions or commands, as well as how to work
%% with Amazon Web Services Management Console, see What Is Config in the
%% Config Developer Guide.
-module(aws_config).

-export([batch_get_aggregate_resource_config/2,
         batch_get_aggregate_resource_config/3,
         batch_get_resource_config/2,
         batch_get_resource_config/3,
         delete_aggregation_authorization/2,
         delete_aggregation_authorization/3,
         delete_config_rule/2,
         delete_config_rule/3,
         delete_configuration_aggregator/2,
         delete_configuration_aggregator/3,
         delete_configuration_recorder/2,
         delete_configuration_recorder/3,
         delete_conformance_pack/2,
         delete_conformance_pack/3,
         delete_delivery_channel/2,
         delete_delivery_channel/3,
         delete_evaluation_results/2,
         delete_evaluation_results/3,
         delete_organization_config_rule/2,
         delete_organization_config_rule/3,
         delete_organization_conformance_pack/2,
         delete_organization_conformance_pack/3,
         delete_pending_aggregation_request/2,
         delete_pending_aggregation_request/3,
         delete_remediation_configuration/2,
         delete_remediation_configuration/3,
         delete_remediation_exceptions/2,
         delete_remediation_exceptions/3,
         delete_resource_config/2,
         delete_resource_config/3,
         delete_retention_configuration/2,
         delete_retention_configuration/3,
         delete_stored_query/2,
         delete_stored_query/3,
         deliver_config_snapshot/2,
         deliver_config_snapshot/3,
         describe_aggregate_compliance_by_config_rules/2,
         describe_aggregate_compliance_by_config_rules/3,
         describe_aggregate_compliance_by_conformance_packs/2,
         describe_aggregate_compliance_by_conformance_packs/3,
         describe_aggregation_authorizations/2,
         describe_aggregation_authorizations/3,
         describe_compliance_by_config_rule/2,
         describe_compliance_by_config_rule/3,
         describe_compliance_by_resource/2,
         describe_compliance_by_resource/3,
         describe_config_rule_evaluation_status/2,
         describe_config_rule_evaluation_status/3,
         describe_config_rules/2,
         describe_config_rules/3,
         describe_configuration_aggregator_sources_status/2,
         describe_configuration_aggregator_sources_status/3,
         describe_configuration_aggregators/2,
         describe_configuration_aggregators/3,
         describe_configuration_recorder_status/2,
         describe_configuration_recorder_status/3,
         describe_configuration_recorders/2,
         describe_configuration_recorders/3,
         describe_conformance_pack_compliance/2,
         describe_conformance_pack_compliance/3,
         describe_conformance_pack_status/2,
         describe_conformance_pack_status/3,
         describe_conformance_packs/2,
         describe_conformance_packs/3,
         describe_delivery_channel_status/2,
         describe_delivery_channel_status/3,
         describe_delivery_channels/2,
         describe_delivery_channels/3,
         describe_organization_config_rule_statuses/2,
         describe_organization_config_rule_statuses/3,
         describe_organization_config_rules/2,
         describe_organization_config_rules/3,
         describe_organization_conformance_pack_statuses/2,
         describe_organization_conformance_pack_statuses/3,
         describe_organization_conformance_packs/2,
         describe_organization_conformance_packs/3,
         describe_pending_aggregation_requests/2,
         describe_pending_aggregation_requests/3,
         describe_remediation_configurations/2,
         describe_remediation_configurations/3,
         describe_remediation_exceptions/2,
         describe_remediation_exceptions/3,
         describe_remediation_execution_status/2,
         describe_remediation_execution_status/3,
         describe_retention_configurations/2,
         describe_retention_configurations/3,
         get_aggregate_compliance_details_by_config_rule/2,
         get_aggregate_compliance_details_by_config_rule/3,
         get_aggregate_config_rule_compliance_summary/2,
         get_aggregate_config_rule_compliance_summary/3,
         get_aggregate_conformance_pack_compliance_summary/2,
         get_aggregate_conformance_pack_compliance_summary/3,
         get_aggregate_discovered_resource_counts/2,
         get_aggregate_discovered_resource_counts/3,
         get_aggregate_resource_config/2,
         get_aggregate_resource_config/3,
         get_compliance_details_by_config_rule/2,
         get_compliance_details_by_config_rule/3,
         get_compliance_details_by_resource/2,
         get_compliance_details_by_resource/3,
         get_compliance_summary_by_config_rule/2,
         get_compliance_summary_by_config_rule/3,
         get_compliance_summary_by_resource_type/2,
         get_compliance_summary_by_resource_type/3,
         get_conformance_pack_compliance_details/2,
         get_conformance_pack_compliance_details/3,
         get_conformance_pack_compliance_summary/2,
         get_conformance_pack_compliance_summary/3,
         get_custom_rule_policy/2,
         get_custom_rule_policy/3,
         get_discovered_resource_counts/2,
         get_discovered_resource_counts/3,
         get_organization_config_rule_detailed_status/2,
         get_organization_config_rule_detailed_status/3,
         get_organization_conformance_pack_detailed_status/2,
         get_organization_conformance_pack_detailed_status/3,
         get_organization_custom_rule_policy/2,
         get_organization_custom_rule_policy/3,
         get_resource_config_history/2,
         get_resource_config_history/3,
         get_stored_query/2,
         get_stored_query/3,
         list_aggregate_discovered_resources/2,
         list_aggregate_discovered_resources/3,
         list_discovered_resources/2,
         list_discovered_resources/3,
         list_stored_queries/2,
         list_stored_queries/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_aggregation_authorization/2,
         put_aggregation_authorization/3,
         put_config_rule/2,
         put_config_rule/3,
         put_configuration_aggregator/2,
         put_configuration_aggregator/3,
         put_configuration_recorder/2,
         put_configuration_recorder/3,
         put_conformance_pack/2,
         put_conformance_pack/3,
         put_delivery_channel/2,
         put_delivery_channel/3,
         put_evaluations/2,
         put_evaluations/3,
         put_external_evaluation/2,
         put_external_evaluation/3,
         put_organization_config_rule/2,
         put_organization_config_rule/3,
         put_organization_conformance_pack/2,
         put_organization_conformance_pack/3,
         put_remediation_configurations/2,
         put_remediation_configurations/3,
         put_remediation_exceptions/2,
         put_remediation_exceptions/3,
         put_resource_config/2,
         put_resource_config/3,
         put_retention_configuration/2,
         put_retention_configuration/3,
         put_stored_query/2,
         put_stored_query/3,
         select_aggregate_resource_config/2,
         select_aggregate_resource_config/3,
         select_resource_config/2,
         select_resource_config/3,
         start_config_rules_evaluation/2,
         start_config_rules_evaluation/3,
         start_configuration_recorder/2,
         start_configuration_recorder/3,
         start_remediation_execution/2,
         start_remediation_execution/3,
         stop_configuration_recorder/2,
         stop_configuration_recorder/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Returns the current configuration items for resources that are
%% present in your Config aggregator.
%%
%% The operation also returns a list of resources that are not processed in
%% the current request. If there are no unprocessed resources, the operation
%% returns an empty `unprocessedResourceIdentifiers' list.
%%
%% The API does not return results for deleted resources.
%%
%% The API does not return tags and relationships.
batch_get_aggregate_resource_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_aggregate_resource_config(Client, Input, []).
batch_get_aggregate_resource_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetAggregateResourceConfig">>, Input, Options).

%% @doc Returns the `BaseConfigurationItem' for one or more requested
%% resources.
%%
%% The operation also returns a list of resources that are not processed in
%% the current request. If there are no unprocessed resources, the operation
%% returns an empty unprocessedResourceKeys list.
%%
%% The API does not return results for deleted resources.
%%
%% The API does not return any tags for the requested resources. This
%% information is filtered out of the supplementaryConfiguration section of
%% the API response.
batch_get_resource_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_get_resource_config(Client, Input, []).
batch_get_resource_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchGetResourceConfig">>, Input, Options).

%% @doc Deletes the authorization granted to the specified configuration
%% aggregator account in a specified region.
delete_aggregation_authorization(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_aggregation_authorization(Client, Input, []).
delete_aggregation_authorization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAggregationAuthorization">>, Input, Options).

%% @doc Deletes the specified Config rule and all of its evaluation results.
%%
%% Config sets the state of a rule to `DELETING' until the deletion is
%% complete. You cannot update a rule while it is in this state. If you make
%% a `PutConfigRule' or `DeleteConfigRule' request for the rule, you will
%% receive a `ResourceInUseException'.
%%
%% You can check the state of a rule by using the `DescribeConfigRules'
%% request.
delete_config_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_config_rule(Client, Input, []).
delete_config_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConfigRule">>, Input, Options).

%% @doc Deletes the specified configuration aggregator and the aggregated
%% data associated with the aggregator.
delete_configuration_aggregator(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_configuration_aggregator(Client, Input, []).
delete_configuration_aggregator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConfigurationAggregator">>, Input, Options).

%% @doc Deletes the configuration recorder.
%%
%% After the configuration recorder is deleted, Config will not record
%% resource configuration changes until you create a new configuration
%% recorder.
%%
%% This action does not delete the configuration information that was
%% previously recorded. You will be able to access the previously recorded
%% information by using the `GetResourceConfigHistory' action, but you will
%% not be able to access this information in the Config console until you
%% create a new configuration recorder.
delete_configuration_recorder(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_configuration_recorder(Client, Input, []).
delete_configuration_recorder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConfigurationRecorder">>, Input, Options).

%% @doc Deletes the specified conformance pack and all the Config rules,
%% remediation actions, and all evaluation results within that conformance
%% pack.
%%
%% Config sets the conformance pack to `DELETE_IN_PROGRESS' until the
%% deletion is complete. You cannot update a conformance pack while it is in
%% this state.
delete_conformance_pack(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_conformance_pack(Client, Input, []).
delete_conformance_pack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConformancePack">>, Input, Options).

%% @doc Deletes the delivery channel.
%%
%% Before you can delete the delivery channel, you must stop the
%% configuration recorder by using the `StopConfigurationRecorder' action.
delete_delivery_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_delivery_channel(Client, Input, []).
delete_delivery_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDeliveryChannel">>, Input, Options).

%% @doc Deletes the evaluation results for the specified Config rule.
%%
%% You can specify one Config rule per request. After you delete the
%% evaluation results, you can call the `StartConfigRulesEvaluation' API to
%% start evaluating your Amazon Web Services resources against the rule.
delete_evaluation_results(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_evaluation_results(Client, Input, []).
delete_evaluation_results(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEvaluationResults">>, Input, Options).

%% @doc Deletes the specified organization Config rule and all of its
%% evaluation results from all member accounts in that organization.
%%
%% Only a master account and a delegated administrator account can delete an
%% organization Config rule. When calling this API with a delegated
%% administrator, you must ensure Organizations `ListDelegatedAdministrator'
%% permissions are added.
%%
%% Config sets the state of a rule to DELETE_IN_PROGRESS until the deletion
%% is complete. You cannot update a rule while it is in this state.
delete_organization_config_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_organization_config_rule(Client, Input, []).
delete_organization_config_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOrganizationConfigRule">>, Input, Options).

%% @doc Deletes the specified organization conformance pack and all of the
%% Config rules and remediation actions from all member accounts in that
%% organization.
%%
%% Only a master account or a delegated administrator account can delete an
%% organization conformance pack. When calling this API with a delegated
%% administrator, you must ensure Organizations `ListDelegatedAdministrator'
%% permissions are added.
%%
%% Config sets the state of a conformance pack to DELETE_IN_PROGRESS until
%% the deletion is complete. You cannot update a conformance pack while it is
%% in this state.
delete_organization_conformance_pack(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_organization_conformance_pack(Client, Input, []).
delete_organization_conformance_pack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOrganizationConformancePack">>, Input, Options).

%% @doc Deletes pending authorization requests for a specified aggregator
%% account in a specified region.
delete_pending_aggregation_request(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_pending_aggregation_request(Client, Input, []).
delete_pending_aggregation_request(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePendingAggregationRequest">>, Input, Options).

%% @doc Deletes the remediation configuration.
delete_remediation_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_remediation_configuration(Client, Input, []).
delete_remediation_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRemediationConfiguration">>, Input, Options).

%% @doc Deletes one or more remediation exceptions mentioned in the resource
%% keys.
%%
%% Config generates a remediation exception when a problem occurs executing a
%% remediation action to a specific resource. Remediation exceptions blocks
%% auto-remediation until the exception is cleared.
delete_remediation_exceptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_remediation_exceptions(Client, Input, []).
delete_remediation_exceptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRemediationExceptions">>, Input, Options).

%% @doc Records the configuration state for a custom resource that has been
%% deleted.
%%
%% This API records a new ConfigurationItem with a ResourceDeleted status.
%% You can retrieve the ConfigurationItems recorded for this resource in your
%% Config History.
delete_resource_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_config(Client, Input, []).
delete_resource_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourceConfig">>, Input, Options).

%% @doc Deletes the retention configuration.
delete_retention_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_retention_configuration(Client, Input, []).
delete_retention_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRetentionConfiguration">>, Input, Options).

%% @doc Deletes the stored query for a single Amazon Web Services account and
%% a single Amazon Web Services Region.
delete_stored_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_stored_query(Client, Input, []).
delete_stored_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStoredQuery">>, Input, Options).

%% @doc Schedules delivery of a configuration snapshot to the Amazon S3
%% bucket in the specified delivery channel.
%%
%% After the delivery has started, Config sends the following notifications
%% using an Amazon SNS topic that you have specified.
%%
%% <ul> <li> Notification of the start of the delivery.
%%
%% </li> <li> Notification of the completion of the delivery, if the delivery
%% was successfully completed.
%%
%% </li> <li> Notification of delivery failure, if the delivery failed.
%%
%% </li> </ul>
deliver_config_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    deliver_config_snapshot(Client, Input, []).
deliver_config_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeliverConfigSnapshot">>, Input, Options).

%% @doc Returns a list of compliant and noncompliant rules with the number of
%% resources for compliant and noncompliant rules.
%%
%% Does not display rules that do not have compliance results.
%%
%% The results can return an empty result page, but if you have a
%% `nextToken', the results are displayed on the next page.
describe_aggregate_compliance_by_config_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_aggregate_compliance_by_config_rules(Client, Input, []).
describe_aggregate_compliance_by_config_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAggregateComplianceByConfigRules">>, Input, Options).

%% @doc Returns a list of the conformance packs and their associated
%% compliance status with the count of compliant and noncompliant Config
%% rules within each conformance pack.
%%
%% Also returns the total rule count which includes compliant rules,
%% noncompliant rules, and rules that cannot be evaluated due to insufficient
%% data.
%%
%% The results can return an empty result page, but if you have a
%% `nextToken', the results are displayed on the next page.
describe_aggregate_compliance_by_conformance_packs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_aggregate_compliance_by_conformance_packs(Client, Input, []).
describe_aggregate_compliance_by_conformance_packs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAggregateComplianceByConformancePacks">>, Input, Options).

%% @doc Returns a list of authorizations granted to various aggregator
%% accounts and regions.
describe_aggregation_authorizations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_aggregation_authorizations(Client, Input, []).
describe_aggregation_authorizations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAggregationAuthorizations">>, Input, Options).

%% @doc Indicates whether the specified Config rules are compliant.
%%
%% If a rule is noncompliant, this action returns the number of Amazon Web
%% Services resources that do not comply with the rule.
%%
%% A rule is compliant if all of the evaluated resources comply with it. It
%% is noncompliant if any of these resources do not comply.
%%
%% If Config has no current evaluation results for the rule, it returns
%% `INSUFFICIENT_DATA'. This result might indicate one of the following
%% conditions:
%%
%% <ul> <li> Config has never invoked an evaluation for the rule. To check
%% whether it has, use the `DescribeConfigRuleEvaluationStatus' action to get
%% the `LastSuccessfulInvocationTime' and `LastFailedInvocationTime'.
%%
%% </li> <li> The rule's Lambda function is failing to send evaluation
%% results to Config. Verify that the role you assigned to your configuration
%% recorder includes the `config:PutEvaluations' permission. If the rule is a
%% custom rule, verify that the Lambda execution role includes the
%% `config:PutEvaluations' permission.
%%
%% </li> <li> The rule's Lambda function has returned `NOT_APPLICABLE' for
%% all evaluation results. This can occur if the resources were deleted or
%% removed from the rule's scope.
%%
%% </li> </ul>
describe_compliance_by_config_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_compliance_by_config_rule(Client, Input, []).
describe_compliance_by_config_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeComplianceByConfigRule">>, Input, Options).

%% @doc Indicates whether the specified Amazon Web Services resources are
%% compliant.
%%
%% If a resource is noncompliant, this action returns the number of Config
%% rules that the resource does not comply with.
%%
%% A resource is compliant if it complies with all the Config rules that
%% evaluate it. It is noncompliant if it does not comply with one or more of
%% these rules.
%%
%% If Config has no current evaluation results for the resource, it returns
%% `INSUFFICIENT_DATA'. This result might indicate one of the following
%% conditions about the rules that evaluate the resource:
%%
%% <ul> <li> Config has never invoked an evaluation for the rule. To check
%% whether it has, use the `DescribeConfigRuleEvaluationStatus' action to get
%% the `LastSuccessfulInvocationTime' and `LastFailedInvocationTime'.
%%
%% </li> <li> The rule's Lambda function is failing to send evaluation
%% results to Config. Verify that the role that you assigned to your
%% configuration recorder includes the `config:PutEvaluations' permission. If
%% the rule is a custom rule, verify that the Lambda execution role includes
%% the `config:PutEvaluations' permission.
%%
%% </li> <li> The rule's Lambda function has returned `NOT_APPLICABLE' for
%% all evaluation results. This can occur if the resources were deleted or
%% removed from the rule's scope.
%%
%% </li> </ul>
describe_compliance_by_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_compliance_by_resource(Client, Input, []).
describe_compliance_by_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeComplianceByResource">>, Input, Options).

%% @doc Returns status information for each of your Config managed rules.
%%
%% The status includes information such as the last time Config invoked the
%% rule, the last time Config failed to invoke the rule, and the related
%% error for the last failure.
describe_config_rule_evaluation_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_config_rule_evaluation_status(Client, Input, []).
describe_config_rule_evaluation_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigRuleEvaluationStatus">>, Input, Options).

%% @doc Returns details about your Config rules.
describe_config_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_config_rules(Client, Input, []).
describe_config_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigRules">>, Input, Options).

%% @doc Returns status information for sources within an aggregator.
%%
%% The status includes information about the last time Config verified
%% authorization between the source account and an aggregator account. In
%% case of a failure, the status contains the related error code or message.
describe_configuration_aggregator_sources_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configuration_aggregator_sources_status(Client, Input, []).
describe_configuration_aggregator_sources_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurationAggregatorSourcesStatus">>, Input, Options).

%% @doc Returns the details of one or more configuration aggregators.
%%
%% If the configuration aggregator is not specified, this action returns the
%% details for all the configuration aggregators associated with the account.
describe_configuration_aggregators(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configuration_aggregators(Client, Input, []).
describe_configuration_aggregators(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurationAggregators">>, Input, Options).

%% @doc Returns the current status of the specified configuration recorder.
%%
%% If a configuration recorder is not specified, this action returns the
%% status of all configuration recorders associated with the account.
%%
%% Currently, you can specify only one configuration recorder per region in
%% your account.
describe_configuration_recorder_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configuration_recorder_status(Client, Input, []).
describe_configuration_recorder_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurationRecorderStatus">>, Input, Options).

%% @doc Returns the details for the specified configuration recorders.
%%
%% If the configuration recorder is not specified, this action returns the
%% details for all configuration recorders associated with the account.
%%
%% Currently, you can specify only one configuration recorder per region in
%% your account.
describe_configuration_recorders(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configuration_recorders(Client, Input, []).
describe_configuration_recorders(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurationRecorders">>, Input, Options).

%% @doc Returns compliance details for each rule in that conformance pack.
%%
%% You must provide exact rule names.
describe_conformance_pack_compliance(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_conformance_pack_compliance(Client, Input, []).
describe_conformance_pack_compliance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConformancePackCompliance">>, Input, Options).

%% @doc Provides one or more conformance packs deployment status.
%%
%% If there are no conformance packs then you will see an empty result.
describe_conformance_pack_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_conformance_pack_status(Client, Input, []).
describe_conformance_pack_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConformancePackStatus">>, Input, Options).

%% @doc Returns a list of one or more conformance packs.
describe_conformance_packs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_conformance_packs(Client, Input, []).
describe_conformance_packs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConformancePacks">>, Input, Options).

%% @doc Returns the current status of the specified delivery channel.
%%
%% If a delivery channel is not specified, this action returns the current
%% status of all delivery channels associated with the account.
%%
%% Currently, you can specify only one delivery channel per region in your
%% account.
describe_delivery_channel_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_delivery_channel_status(Client, Input, []).
describe_delivery_channel_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDeliveryChannelStatus">>, Input, Options).

%% @doc Returns details about the specified delivery channel.
%%
%% If a delivery channel is not specified, this action returns the details of
%% all delivery channels associated with the account.
%%
%% Currently, you can specify only one delivery channel per region in your
%% account.
describe_delivery_channels(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_delivery_channels(Client, Input, []).
describe_delivery_channels(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDeliveryChannels">>, Input, Options).

%% @doc Provides organization Config rule deployment status for an
%% organization.
%%
%% The status is not considered successful until organization Config rule is
%% successfully deployed in all the member accounts with an exception of
%% excluded accounts.
%%
%% When you specify the limit and the next token, you receive a paginated
%% response. Limit and next token are not applicable if you specify
%% organization Config rule names. It is only applicable, when you request
%% all the organization Config rules.
describe_organization_config_rule_statuses(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_organization_config_rule_statuses(Client, Input, []).
describe_organization_config_rule_statuses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrganizationConfigRuleStatuses">>, Input, Options).

%% @doc Returns a list of organization Config rules.
%%
%% When you specify the limit and the next token, you receive a paginated
%% response. Limit and next token are not applicable if you specify
%% organization Config rule names. It is only applicable, when you request
%% all the organization Config rules.
describe_organization_config_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_organization_config_rules(Client, Input, []).
describe_organization_config_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrganizationConfigRules">>, Input, Options).

%% @doc Provides organization conformance pack deployment status for an
%% organization.
%%
%% The status is not considered successful until organization conformance
%% pack is successfully deployed in all the member accounts with an exception
%% of excluded accounts.
%%
%% When you specify the limit and the next token, you receive a paginated
%% response. Limit and next token are not applicable if you specify
%% organization conformance pack names. They are only applicable, when you
%% request all the organization conformance packs.
describe_organization_conformance_pack_statuses(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_organization_conformance_pack_statuses(Client, Input, []).
describe_organization_conformance_pack_statuses(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrganizationConformancePackStatuses">>, Input, Options).

%% @doc Returns a list of organization conformance packs.
%%
%% When you specify the limit and the next token, you receive a paginated
%% response.
%%
%% Limit and next token are not applicable if you specify organization
%% conformance packs names. They are only applicable, when you request all
%% the organization conformance packs.
describe_organization_conformance_packs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_organization_conformance_packs(Client, Input, []).
describe_organization_conformance_packs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOrganizationConformancePacks">>, Input, Options).

%% @doc Returns a list of all pending aggregation requests.
describe_pending_aggregation_requests(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pending_aggregation_requests(Client, Input, []).
describe_pending_aggregation_requests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePendingAggregationRequests">>, Input, Options).

%% @doc Returns the details of one or more remediation configurations.
describe_remediation_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_remediation_configurations(Client, Input, []).
describe_remediation_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRemediationConfigurations">>, Input, Options).

%% @doc Returns the details of one or more remediation exceptions.
%%
%% A detailed view of a remediation exception for a set of resources that
%% includes an explanation of an exception and the time when the exception
%% will be deleted. When you specify the limit and the next token, you
%% receive a paginated response.
%%
%% Config generates a remediation exception when a problem occurs executing a
%% remediation action to a specific resource. Remediation exceptions blocks
%% auto-remediation until the exception is cleared.
%%
%% When you specify the limit and the next token, you receive a paginated
%% response.
%%
%% Limit and next token are not applicable if you request resources in batch.
%% It is only applicable, when you request all resources.
describe_remediation_exceptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_remediation_exceptions(Client, Input, []).
describe_remediation_exceptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRemediationExceptions">>, Input, Options).

%% @doc Provides a detailed view of a Remediation Execution for a set of
%% resources including state, timestamps for when steps for the remediation
%% execution occur, and any error messages for steps that have failed.
%%
%% When you specify the limit and the next token, you receive a paginated
%% response.
describe_remediation_execution_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_remediation_execution_status(Client, Input, []).
describe_remediation_execution_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRemediationExecutionStatus">>, Input, Options).

%% @doc Returns the details of one or more retention configurations.
%%
%% If the retention configuration name is not specified, this action returns
%% the details for all the retention configurations for that account.
%%
%% Currently, Config supports only one retention configuration per region in
%% your account.
describe_retention_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_retention_configurations(Client, Input, []).
describe_retention_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRetentionConfigurations">>, Input, Options).

%% @doc Returns the evaluation results for the specified Config rule for a
%% specific resource in a rule.
%%
%% The results indicate which Amazon Web Services resources were evaluated by
%% the rule, when each resource was last evaluated, and whether each resource
%% complies with the rule.
%%
%% The results can return an empty result page. But if you have a
%% `nextToken', the results are displayed on the next page.
get_aggregate_compliance_details_by_config_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_aggregate_compliance_details_by_config_rule(Client, Input, []).
get_aggregate_compliance_details_by_config_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAggregateComplianceDetailsByConfigRule">>, Input, Options).

%% @doc Returns the number of compliant and noncompliant rules for one or
%% more accounts and regions in an aggregator.
%%
%% The results can return an empty result page, but if you have a nextToken,
%% the results are displayed on the next page.
get_aggregate_config_rule_compliance_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_aggregate_config_rule_compliance_summary(Client, Input, []).
get_aggregate_config_rule_compliance_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAggregateConfigRuleComplianceSummary">>, Input, Options).

%% @doc Returns the count of compliant and noncompliant conformance packs
%% across all Amazon Web Services accounts and Amazon Web Services Regions in
%% an aggregator.
%%
%% You can filter based on Amazon Web Services account ID or Amazon Web
%% Services Region.
%%
%% The results can return an empty result page, but if you have a nextToken,
%% the results are displayed on the next page.
get_aggregate_conformance_pack_compliance_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_aggregate_conformance_pack_compliance_summary(Client, Input, []).
get_aggregate_conformance_pack_compliance_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAggregateConformancePackComplianceSummary">>, Input, Options).

%% @doc Returns the resource counts across accounts and regions that are
%% present in your Config aggregator.
%%
%% You can request the resource counts by providing filters and GroupByKey.
%%
%% For example, if the input contains accountID 12345678910 and region
%% us-east-1 in filters, the API returns the count of resources in account ID
%% 12345678910 and region us-east-1. If the input contains ACCOUNT_ID as a
%% GroupByKey, the API returns resource counts for all source accounts that
%% are present in your aggregator.
get_aggregate_discovered_resource_counts(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_aggregate_discovered_resource_counts(Client, Input, []).
get_aggregate_discovered_resource_counts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAggregateDiscoveredResourceCounts">>, Input, Options).

%% @doc Returns configuration item that is aggregated for your specific
%% resource in a specific source account and region.
get_aggregate_resource_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_aggregate_resource_config(Client, Input, []).
get_aggregate_resource_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAggregateResourceConfig">>, Input, Options).

%% @doc Returns the evaluation results for the specified Config rule.
%%
%% The results indicate which Amazon Web Services resources were evaluated by
%% the rule, when each resource was last evaluated, and whether each resource
%% complies with the rule.
get_compliance_details_by_config_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_compliance_details_by_config_rule(Client, Input, []).
get_compliance_details_by_config_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComplianceDetailsByConfigRule">>, Input, Options).

%% @doc Returns the evaluation results for the specified Amazon Web Services
%% resource.
%%
%% The results indicate which Config rules were used to evaluate the
%% resource, when each rule was last used, and whether the resource complies
%% with each rule.
get_compliance_details_by_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_compliance_details_by_resource(Client, Input, []).
get_compliance_details_by_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComplianceDetailsByResource">>, Input, Options).

%% @doc Returns the number of Config rules that are compliant and
%% noncompliant, up to a maximum of 25 for each.
get_compliance_summary_by_config_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_compliance_summary_by_config_rule(Client, Input, []).
get_compliance_summary_by_config_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComplianceSummaryByConfigRule">>, Input, Options).

%% @doc Returns the number of resources that are compliant and the number
%% that are noncompliant.
%%
%% You can specify one or more resource types to get these numbers for each
%% resource type. The maximum number returned is 100.
get_compliance_summary_by_resource_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_compliance_summary_by_resource_type(Client, Input, []).
get_compliance_summary_by_resource_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetComplianceSummaryByResourceType">>, Input, Options).

%% @doc Returns compliance details of a conformance pack for all Amazon Web
%% Services resources that are monitered by conformance pack.
get_conformance_pack_compliance_details(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_conformance_pack_compliance_details(Client, Input, []).
get_conformance_pack_compliance_details(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConformancePackComplianceDetails">>, Input, Options).

%% @doc Returns compliance details for the conformance pack based on the
%% cumulative compliance results of all the rules in that conformance pack.
get_conformance_pack_compliance_summary(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_conformance_pack_compliance_summary(Client, Input, []).
get_conformance_pack_compliance_summary(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConformancePackComplianceSummary">>, Input, Options).

%% @doc Returns the policy definition containing the logic for your Config
%% Custom Policy rule.
get_custom_rule_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_custom_rule_policy(Client, Input, []).
get_custom_rule_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCustomRulePolicy">>, Input, Options).

%% @doc Returns the resource types, the number of each resource type, and the
%% total number of resources that Config is recording in this region for your
%% Amazon Web Services account.
%%
%% == Example ==
%%
%% <ol> <li> Config is recording three resource types in the US East (Ohio)
%% Region for your account: 25 EC2 instances, 20 IAM users, and 15 S3
%% buckets.
%%
%% </li> <li> You make a call to the `GetDiscoveredResourceCounts' action and
%% specify that you want all resource types.
%%
%% </li> <li> Config returns the following:
%%
%% <ul> <li> The resource types (EC2 instances, IAM users, and S3 buckets).
%%
%% </li> <li> The number of each resource type (25, 20, and 15).
%%
%% </li> <li> The total number of all resources (60).
%%
%% </li> </ul> </li> </ol> The response is paginated. By default, Config
%% lists 100 `ResourceCount' objects on each page. You can customize this
%% number with the `limit' parameter. The response includes a `nextToken'
%% string. To get the next page of results, run the request again and specify
%% the string for the `nextToken' parameter.
%%
%% If you make a call to the `GetDiscoveredResourceCounts' action, you might
%% not immediately receive resource counts in the following situations:
%%
%% You are a new Config customer.
%%
%% You just enabled resource recording.
%%
%% It might take a few minutes for Config to record and count your resources.
%% Wait a few minutes and then retry the `GetDiscoveredResourceCounts'
%% action.
get_discovered_resource_counts(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_discovered_resource_counts(Client, Input, []).
get_discovered_resource_counts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDiscoveredResourceCounts">>, Input, Options).

%% @doc Returns detailed status for each member account within an
%% organization for a given organization Config rule.
get_organization_config_rule_detailed_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_organization_config_rule_detailed_status(Client, Input, []).
get_organization_config_rule_detailed_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOrganizationConfigRuleDetailedStatus">>, Input, Options).

%% @doc Returns detailed status for each member account within an
%% organization for a given organization conformance pack.
get_organization_conformance_pack_detailed_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_organization_conformance_pack_detailed_status(Client, Input, []).
get_organization_conformance_pack_detailed_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOrganizationConformancePackDetailedStatus">>, Input, Options).

%% @doc Returns the policy definition containing the logic for your
%% organization Config Custom Policy rule.
get_organization_custom_rule_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_organization_custom_rule_policy(Client, Input, []).
get_organization_custom_rule_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOrganizationCustomRulePolicy">>, Input, Options).

%% @doc Returns a list of `ConfigurationItems' for the specified resource.
%%
%% The list contains details about each state of the resource during the
%% specified time interval. If you specified a retention period to retain
%% your `ConfigurationItems' between a minimum of 30 days and a maximum of 7
%% years (2557 days), Config returns the `ConfigurationItems' for the
%% specified retention period.
%%
%% The response is paginated. By default, Config returns a limit of 10
%% configuration items per page. You can customize this number with the
%% `limit' parameter. The response includes a `nextToken' string. To get the
%% next page of results, run the request again and specify the string for the
%% `nextToken' parameter.
%%
%% Each call to the API is limited to span a duration of seven days. It is
%% likely that the number of records returned is smaller than the specified
%% `limit'. In such cases, you can make another call, using the `nextToken'.
get_resource_config_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_config_history(Client, Input, []).
get_resource_config_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourceConfigHistory">>, Input, Options).

%% @doc Returns the details of a specific stored query.
get_stored_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_stored_query(Client, Input, []).
get_stored_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetStoredQuery">>, Input, Options).

%% @doc Accepts a resource type and returns a list of resource identifiers
%% that are aggregated for a specific resource type across accounts and
%% regions.
%%
%% A resource identifier includes the resource type, ID, (if available) the
%% custom resource name, source account, and source region. You can narrow
%% the results to include only resources that have specific resource IDs, or
%% a resource name, or source account ID, or source region.
%%
%% For example, if the input consists of accountID 12345678910 and the region
%% is us-east-1 for resource type `AWS::EC2::Instance' then the API returns
%% all the EC2 instance identifiers of accountID 12345678910 and region
%% us-east-1.
list_aggregate_discovered_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_aggregate_discovered_resources(Client, Input, []).
list_aggregate_discovered_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAggregateDiscoveredResources">>, Input, Options).

%% @doc Accepts a resource type and returns a list of resource identifiers
%% for the resources of that type.
%%
%% A resource identifier includes the resource type, ID, and (if available)
%% the custom resource name. The results consist of resources that Config has
%% discovered, including those that Config is not currently recording. You
%% can narrow the results to include only resources that have specific
%% resource IDs or a resource name.
%%
%% You can specify either resource IDs or a resource name, but not both, in
%% the same request.
%%
%% The response is paginated. By default, Config lists 100 resource
%% identifiers on each page. You can customize this number with the `limit'
%% parameter. The response includes a `nextToken' string. To get the next
%% page of results, run the request again and specify the string for the
%% `nextToken' parameter.
list_discovered_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_discovered_resources(Client, Input, []).
list_discovered_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDiscoveredResources">>, Input, Options).

%% @doc Lists the stored queries for a single Amazon Web Services account and
%% a single Amazon Web Services Region.
%%
%% The default is 100.
list_stored_queries(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_stored_queries(Client, Input, []).
list_stored_queries(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListStoredQueries">>, Input, Options).

%% @doc List the tags for Config resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Authorizes the aggregator account and region to collect data from the
%% source account and region.
put_aggregation_authorization(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_aggregation_authorization(Client, Input, []).
put_aggregation_authorization(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAggregationAuthorization">>, Input, Options).

%% @doc Adds or updates an Config rule for evaluating whether your Amazon Web
%% Services resources comply with your desired configurations.
%%
%% You can use this action for custom Config rules and Config managed rules.
%% A custom Config rule is a rule that you develop and maintain. An Config
%% managed rule is a customizable, predefined rule that Config provides.
%%
%% If you are adding a new custom Config rule, you must first create the
%% Lambda function that the rule invokes to evaluate your resources. When you
%% use the `PutConfigRule' action to add the rule to Config, you must specify
%% the Amazon Resource Name (ARN) that Lambda assigns to the function.
%% Specify the ARN for the `SourceIdentifier' key. This key is part of the
%% `Source' object, which is part of the `ConfigRule' object.
%%
%% If you are adding an Config managed rule, specify the rule's identifier
%% for the `SourceIdentifier' key. To reference Config managed rule
%% identifiers, see About Config managed rules.
%%
%% For any new rule that you add, specify the `ConfigRuleName' in the
%% `ConfigRule' object. Do not specify the `ConfigRuleArn' or the
%% `ConfigRuleId'. These values are generated by Config for new rules.
%%
%% If you are updating a rule that you added previously, you can specify the
%% rule by `ConfigRuleName', `ConfigRuleId', or `ConfigRuleArn' in the
%% `ConfigRule' data type that you use in this request.
%%
%% The maximum number of rules that Config supports is 150.
%%
%% For information about requesting a rule limit increase, see Config Limits
%% in the Amazon Web Services General Reference Guide.
%%
%% For more information about developing and using Config rules, see
%% Evaluating Amazon Web Services resource Configurations with Config in the
%% Config Developer Guide.
put_config_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_config_rule(Client, Input, []).
put_config_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutConfigRule">>, Input, Options).

%% @doc Creates and updates the configuration aggregator with the selected
%% source accounts and regions.
%%
%% The source account can be individual account(s) or an organization.
%%
%% `accountIds' that are passed will be replaced with existing accounts. If
%% you want to add additional accounts into the aggregator, call
%% `DescribeConfigurationAggregators' to get the previous accounts and then
%% append new ones.
%%
%% Config should be enabled in source accounts and regions you want to
%% aggregate.
%%
%% If your source type is an organization, you must be signed in to the
%% management account or a registered delegated administrator and all the
%% features must be enabled in your organization. If the caller is a
%% management account, Config calls `EnableAwsServiceAccess' API to enable
%% integration between Config and Organizations. If the caller is a
%% registered delegated administrator, Config calls
%% `ListDelegatedAdministrators' API to verify whether the caller is a valid
%% delegated administrator.
%%
%% To register a delegated administrator, see Register a Delegated
%% Administrator in the Config developer guide.
put_configuration_aggregator(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_configuration_aggregator(Client, Input, []).
put_configuration_aggregator(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutConfigurationAggregator">>, Input, Options).

%% @doc Creates a new configuration recorder to record the selected resource
%% configurations.
%%
%% You can use this action to change the role `roleARN' or the
%% `recordingGroup' of an existing recorder. To change the role, call the
%% action on the existing configuration recorder and specify a role.
%%
%% Currently, you can specify only one configuration recorder per region in
%% your account.
%%
%% If `ConfigurationRecorder' does not have the recordingGroup parameter
%% specified, the default is to record all supported resource types.
put_configuration_recorder(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_configuration_recorder(Client, Input, []).
put_configuration_recorder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutConfigurationRecorder">>, Input, Options).

%% @doc Creates or updates a conformance pack.
%%
%% A conformance pack is a collection of Config rules that can be easily
%% deployed in an account and a region and across Amazon Web Services
%% Organization.
%%
%% This API creates a service linked role `AWSServiceRoleForConfigConforms'
%% in your account. The service linked role is created only when the role
%% does not exist in your account.
%%
%% You must specify either the `TemplateS3Uri' or the `TemplateBody'
%% parameter, but not both. If you provide both Config uses the
%% `TemplateS3Uri' parameter and ignores the `TemplateBody' parameter.
put_conformance_pack(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_conformance_pack(Client, Input, []).
put_conformance_pack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutConformancePack">>, Input, Options).

%% @doc Creates a delivery channel object to deliver configuration
%% information to an Amazon S3 bucket and Amazon SNS topic.
%%
%% Before you can create a delivery channel, you must create a configuration
%% recorder.
%%
%% You can use this action to change the Amazon S3 bucket or an Amazon SNS
%% topic of the existing delivery channel. To change the Amazon S3 bucket or
%% an Amazon SNS topic, call this action and specify the changed values for
%% the S3 bucket and the SNS topic. If you specify a different value for
%% either the S3 bucket or the SNS topic, this action will keep the existing
%% value for the parameter that is not changed.
%%
%% You can have only one delivery channel per region in your account.
put_delivery_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_delivery_channel(Client, Input, []).
put_delivery_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutDeliveryChannel">>, Input, Options).

%% @doc Used by an Lambda function to deliver evaluation results to Config.
%%
%% This action is required in every Lambda function that is invoked by an
%% Config rule.
put_evaluations(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_evaluations(Client, Input, []).
put_evaluations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutEvaluations">>, Input, Options).

%% @doc Add or updates the evaluations for process checks.
%%
%% This API checks if the rule is a process check when the name of the Config
%% rule is provided.
put_external_evaluation(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_external_evaluation(Client, Input, []).
put_external_evaluation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutExternalEvaluation">>, Input, Options).

%% @doc Adds or updates organization Config rule for your entire organization
%% evaluating whether your Amazon Web Services resources comply with your
%% desired configurations.
%%
%% Only a master account and a delegated administrator can create or update
%% an organization Config rule. When calling this API with a delegated
%% administrator, you must ensure Organizations `ListDelegatedAdministrator'
%% permissions are added.
%%
%% This API enables organization service access through the
%% `EnableAWSServiceAccess' action and creates a service linked role
%% `AWSServiceRoleForConfigMultiAccountSetup' in the master or delegated
%% administrator account of your organization. The service linked role is
%% created only when the role does not exist in the caller account. Config
%% verifies the existence of role with `GetRole' action.
%%
%% To use this API with delegated administrator, register a delegated
%% administrator by calling Amazon Web Services Organization
%% `register-delegated-administrator' for
%% `config-multiaccountsetup.amazonaws.com'.
%%
%% You can use this action to create both custom Config rules and Config
%% managed rules. If you are adding a new custom Config rule, you must first
%% create Lambda function in the master account or a delegated administrator
%% that the rule invokes to evaluate your resources. You also need to create
%% an IAM role in the managed-account that can be assumed by the Lambda
%% function. When you use the `PutOrganizationConfigRule' action to add the
%% rule to Config, you must specify the Amazon Resource Name (ARN) that
%% Lambda assigns to the function. If you are adding an Config managed rule,
%% specify the rule's identifier for the `RuleIdentifier' key.
%%
%% The maximum number of organization Config rules that Config supports is
%% 150 and 3 delegated administrator per organization.
%%
%% Prerequisite: Ensure you call `EnableAllFeatures' API to enable all
%% features in an organization.
%%
%% Specify either `OrganizationCustomRuleMetadata' or
%% `OrganizationManagedRuleMetadata'.
put_organization_config_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_organization_config_rule(Client, Input, []).
put_organization_config_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutOrganizationConfigRule">>, Input, Options).

%% @doc Deploys conformance packs across member accounts in an Amazon Web
%% Services Organization.
%%
%% Only a master account and a delegated administrator can call this API.
%% When calling this API with a delegated administrator, you must ensure
%% Organizations `ListDelegatedAdministrator' permissions are added.
%%
%% This API enables organization service access for
%% `config-multiaccountsetup.amazonaws.com' through the
%% `EnableAWSServiceAccess' action and creates a service linked role
%% `AWSServiceRoleForConfigMultiAccountSetup' in the master or delegated
%% administrator account of your organization. The service linked role is
%% created only when the role does not exist in the caller account. To use
%% this API with delegated administrator, register a delegated administrator
%% by calling Amazon Web Services Organization `register-delegate-admin' for
%% `config-multiaccountsetup.amazonaws.com'.
%%
%% Prerequisite: Ensure you call `EnableAllFeatures' API to enable all
%% features in an organization.
%%
%% You must specify either the `TemplateS3Uri' or the `TemplateBody'
%% parameter, but not both. If you provide both Config uses the
%% `TemplateS3Uri' parameter and ignores the `TemplateBody' parameter.
%%
%% Config sets the state of a conformance pack to CREATE_IN_PROGRESS and
%% UPDATE_IN_PROGRESS until the conformance pack is created or updated. You
%% cannot update a conformance pack while it is in this state.
%%
%% You can create 50 conformance packs with 25 Config rules in each pack and
%% 3 delegated administrator per organization.
put_organization_conformance_pack(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_organization_conformance_pack(Client, Input, []).
put_organization_conformance_pack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutOrganizationConformancePack">>, Input, Options).

%% @doc Adds or updates the remediation configuration with a specific Config
%% rule with the selected target or action.
%%
%% The API creates the `RemediationConfiguration' object for the Config rule.
%% The Config rule must already exist for you to add a remediation
%% configuration. The target (SSM document) must exist and have permissions
%% to use the target.
%%
%% If you make backward incompatible changes to the SSM document, you must
%% call this again to ensure the remediations can run.
%%
%% This API does not support adding remediation configurations for
%% service-linked Config Rules such as Organization Config rules, the rules
%% deployed by conformance packs, and rules deployed by Amazon Web Services
%% Security Hub.
put_remediation_configurations(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_remediation_configurations(Client, Input, []).
put_remediation_configurations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRemediationConfigurations">>, Input, Options).

%% @doc A remediation exception is when a specific resource is no longer
%% considered for auto-remediation.
%%
%% This API adds a new exception or updates an existing exception for a
%% specific resource with a specific Config rule.
%%
%% Config generates a remediation exception when a problem occurs executing a
%% remediation action to a specific resource. Remediation exceptions blocks
%% auto-remediation until the exception is cleared.
put_remediation_exceptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_remediation_exceptions(Client, Input, []).
put_remediation_exceptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRemediationExceptions">>, Input, Options).

%% @doc Records the configuration state for the resource provided in the
%% request.
%%
%% The configuration state of a resource is represented in Config as
%% Configuration Items. Once this API records the configuration item, you can
%% retrieve the list of configuration items for the custom resource type
%% using existing Config APIs.
%%
%% The custom resource type must be registered with CloudFormation. This API
%% accepts the configuration item registered with CloudFormation.
%%
%% When you call this API, Config only stores configuration state of the
%% resource provided in the request. This API does not change or remediate
%% the configuration of the resource.
%%
%% Write-only schema properites are not recorded as part of the published
%% configuration item.
put_resource_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_config(Client, Input, []).
put_resource_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourceConfig">>, Input, Options).

%% @doc Creates and updates the retention configuration with details about
%% retention period (number of days) that Config stores your historical
%% information.
%%
%% The API creates the `RetentionConfiguration' object and names the object
%% as default. When you have a `RetentionConfiguration' object named default,
%% calling the API modifies the default object.
%%
%% Currently, Config supports only one retention configuration per region in
%% your account.
put_retention_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_retention_configuration(Client, Input, []).
put_retention_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutRetentionConfiguration">>, Input, Options).

%% @doc Saves a new query or updates an existing saved query.
%%
%% The `QueryName' must be unique for a single Amazon Web Services account
%% and a single Amazon Web Services Region. You can create upto 300 queries
%% in a single Amazon Web Services account and a single Amazon Web Services
%% Region.
put_stored_query(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_stored_query(Client, Input, []).
put_stored_query(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutStoredQuery">>, Input, Options).

%% @doc Accepts a structured query language (SQL) SELECT command and an
%% aggregator to query configuration state of Amazon Web Services resources
%% across multiple accounts and regions, performs the corresponding search,
%% and returns resource configurations matching the properties.
%%
%% For more information about query components, see the Query Components
%% section in the Config Developer Guide.
%%
%% If you run an aggregation query (i.e., using `GROUP BY' or using aggregate
%% functions such as `COUNT'; e.g., `SELECT resourceId, COUNT(*) WHERE
%% resourceType = 'AWS::IAM::Role' GROUP BY resourceId') and do not specify
%% the `MaxResults' or the `Limit' query parameters, the default page size is
%% set to 500.
%%
%% If you run a non-aggregation query (i.e., not using `GROUP BY' or
%% aggregate function; e.g., `SELECT * WHERE resourceType =
%% 'AWS::IAM::Role'') and do not specify the `MaxResults' or the `Limit'
%% query parameters, the default page size is set to 25.
select_aggregate_resource_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    select_aggregate_resource_config(Client, Input, []).
select_aggregate_resource_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SelectAggregateResourceConfig">>, Input, Options).

%% @doc Accepts a structured query language (SQL) `SELECT' command, performs
%% the corresponding search, and returns resource configurations matching the
%% properties.
%%
%% For more information about query components, see the Query Components
%% section in the Config Developer Guide.
select_resource_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    select_resource_config(Client, Input, []).
select_resource_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SelectResourceConfig">>, Input, Options).

%% @doc Runs an on-demand evaluation for the specified Config rules against
%% the last known configuration state of the resources.
%%
%% Use `StartConfigRulesEvaluation' when you want to test that a rule you
%% updated is working as expected. `StartConfigRulesEvaluation' does not
%% re-record the latest configuration state for your resources. It re-runs an
%% evaluation against the last known state of your resources.
%%
%% You can specify up to 25 Config rules per request.
%%
%% An existing `StartConfigRulesEvaluation' call for the specified rules must
%% complete before you can call the API again. If you chose to have Config
%% stream to an Amazon SNS topic, you will receive a
%% `ConfigRuleEvaluationStarted' notification when the evaluation starts.
%%
%% You don't need to call the `StartConfigRulesEvaluation' API to run an
%% evaluation for a new rule. When you create a rule, Config evaluates your
%% resources against the rule automatically.
%%
%% The `StartConfigRulesEvaluation' API is useful if you want to run
%% on-demand evaluations, such as the following example:
%%
%% <ol> <li> You have a custom rule that evaluates your IAM resources every
%% 24 hours.
%%
%% </li> <li> You update your Lambda function to add additional conditions to
%% your rule.
%%
%% </li> <li> Instead of waiting for the next periodic evaluation, you call
%% the `StartConfigRulesEvaluation' API.
%%
%% </li> <li> Config invokes your Lambda function and evaluates your IAM
%% resources.
%%
%% </li> <li> Your custom rule will still run periodic evaluations every 24
%% hours.
%%
%% </li> </ol>
start_config_rules_evaluation(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_config_rules_evaluation(Client, Input, []).
start_config_rules_evaluation(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartConfigRulesEvaluation">>, Input, Options).

%% @doc Starts recording configurations of the Amazon Web Services resources
%% you have selected to record in your Amazon Web Services account.
%%
%% You must have created at least one delivery channel to successfully start
%% the configuration recorder.
start_configuration_recorder(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_configuration_recorder(Client, Input, []).
start_configuration_recorder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartConfigurationRecorder">>, Input, Options).

%% @doc Runs an on-demand remediation for the specified Config rules against
%% the last known remediation configuration.
%%
%% It runs an execution against the current state of your resources.
%% Remediation execution is asynchronous.
%%
%% You can specify up to 100 resource keys per request. An existing
%% StartRemediationExecution call for the specified resource keys must
%% complete before you can call the API again.
start_remediation_execution(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_remediation_execution(Client, Input, []).
start_remediation_execution(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartRemediationExecution">>, Input, Options).

%% @doc Stops recording configurations of the Amazon Web Services resources
%% you have selected to record in your Amazon Web Services account.
stop_configuration_recorder(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_configuration_recorder(Client, Input, []).
stop_configuration_recorder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopConfigurationRecorder">>, Input, Options).

%% @doc Associates the specified tags to a resource with the specified
%% resourceArn.
%%
%% If existing tags on a resource are not specified in the request
%% parameters, they are not changed. When a resource is deleted, the tags
%% associated with that resource are deleted as well.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Deletes specified tags from a resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

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
    Client1 = Client#{service => <<"config">>},
    Host = build_host(<<"config">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"StarlingDoveService.", Action/binary>>}
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
