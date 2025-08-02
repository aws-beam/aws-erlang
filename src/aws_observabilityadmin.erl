%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%% You can use Amazon CloudWatch Observability Admin to discover and
%% understand the state of telemetry configuration in CloudWatch for your
%% Amazon Web Services Organization or account.
%%
%% This simplifies the process of auditing your telemetry collection
%% configurations across multiple resource types within your Amazon Web
%% Services Organization or account. By providing a consolidated view, it
%% allows you to easily review and manage telemetry settings, helping you
%% ensure proper monitoring and data collection across your Amazon Web
%% Services environment.
%% For more information, see Auditing CloudWatch telemetry conﬁgurations:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/telemetry-config-cloudwatch.html
%% in the CloudWatch User Guide.
%%
%% For information on the permissions you need to use this API, see Identity
%% and access management for Amazon CloudWatch:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/auth-and-access-control-cw.html
%% in the CloudWatch User Guide.
-module(aws_observabilityadmin).

-export([create_telemetry_rule/2,
         create_telemetry_rule/3,
         create_telemetry_rule_for_organization/2,
         create_telemetry_rule_for_organization/3,
         delete_telemetry_rule/2,
         delete_telemetry_rule/3,
         delete_telemetry_rule_for_organization/2,
         delete_telemetry_rule_for_organization/3,
         get_telemetry_evaluation_status/2,
         get_telemetry_evaluation_status/3,
         get_telemetry_evaluation_status_for_organization/2,
         get_telemetry_evaluation_status_for_organization/3,
         get_telemetry_rule/2,
         get_telemetry_rule/3,
         get_telemetry_rule_for_organization/2,
         get_telemetry_rule_for_organization/3,
         list_resource_telemetry/2,
         list_resource_telemetry/3,
         list_resource_telemetry_for_organization/2,
         list_resource_telemetry_for_organization/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_telemetry_rules/2,
         list_telemetry_rules/3,
         list_telemetry_rules_for_organization/2,
         list_telemetry_rules_for_organization/3,
         start_telemetry_evaluation/2,
         start_telemetry_evaluation/3,
         start_telemetry_evaluation_for_organization/2,
         start_telemetry_evaluation_for_organization/3,
         stop_telemetry_evaluation/2,
         stop_telemetry_evaluation/3,
         stop_telemetry_evaluation_for_organization/2,
         stop_telemetry_evaluation_for_organization/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_telemetry_rule/2,
         update_telemetry_rule/3,
         update_telemetry_rule_for_organization/2,
         update_telemetry_rule_for_organization/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_resource_telemetry_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceIdentifierPrefix">> => string(),
%%   <<"ResourceTags">> => map(),
%%   <<"ResourceTypes">> => list(list(any())()),
%%   <<"TelemetryConfigurationState">> => map()
%% }
-type list_resource_telemetry_input() :: #{binary() => any()}.


%% Example:
%% create_telemetry_rule_input() :: #{
%%   <<"Rule">> := telemetry_rule(),
%%   <<"RuleName">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_telemetry_rule_input() :: #{binary() => any()}.


%% Example:
%% get_telemetry_rule_output() :: #{
%%   <<"CreatedTimeStamp">> => [float()],
%%   <<"LastUpdateTimeStamp">> => [float()],
%%   <<"RuleArn">> => string(),
%%   <<"RuleName">> => string(),
%%   <<"TelemetryRule">> => telemetry_rule()
%% }
-type get_telemetry_rule_output() :: #{binary() => any()}.


%% Example:
%% get_telemetry_evaluation_status_for_organization_output() :: #{
%%   <<"FailureReason">> => string(),
%%   <<"Status">> => list(any())
%% }
-type get_telemetry_evaluation_status_for_organization_output() :: #{binary() => any()}.


%% Example:
%% get_telemetry_evaluation_status_output() :: #{
%%   <<"FailureReason">> => string(),
%%   <<"Status">> => list(any())
%% }
-type get_telemetry_evaluation_status_output() :: #{binary() => any()}.


%% Example:
%% create_telemetry_rule_for_organization_output() :: #{
%%   <<"RuleArn">> => string()
%% }
-type create_telemetry_rule_for_organization_output() :: #{binary() => any()}.


%% Example:
%% get_telemetry_rule_for_organization_input() :: #{
%%   <<"RuleIdentifier">> := string()
%% }
-type get_telemetry_rule_for_organization_input() :: #{binary() => any()}.


%% Example:
%% telemetry_destination_configuration() :: #{
%%   <<"DestinationPattern">> => [string()],
%%   <<"DestinationType">> => list(any()),
%%   <<"RetentionInDays">> => integer(),
%%   <<"VPCFlowLogParameters">> => vpc_flow_log_parameters()
%% }
-type telemetry_destination_configuration() :: #{binary() => any()}.


%% Example:
%% too_many_requests_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type too_many_requests_exception() :: #{binary() => any()}.


%% Example:
%% get_telemetry_rule_input() :: #{
%%   <<"RuleIdentifier">> := string()
%% }
-type get_telemetry_rule_input() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% get_telemetry_rule_for_organization_output() :: #{
%%   <<"CreatedTimeStamp">> => [float()],
%%   <<"LastUpdateTimeStamp">> => [float()],
%%   <<"RuleArn">> => string(),
%%   <<"RuleName">> => string(),
%%   <<"TelemetryRule">> => telemetry_rule()
%% }
-type get_telemetry_rule_for_organization_output() :: #{binary() => any()}.


%% Example:
%% telemetry_configuration() :: #{
%%   <<"AccountIdentifier">> => string(),
%%   <<"LastUpdateTimeStamp">> => [float()],
%%   <<"ResourceIdentifier">> => string(),
%%   <<"ResourceTags">> => map(),
%%   <<"ResourceType">> => list(any()),
%%   <<"TelemetryConfigurationState">> => map()
%% }
-type telemetry_configuration() :: #{binary() => any()}.


%% Example:
%% list_resource_telemetry_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TelemetryConfigurations">> => list(telemetry_configuration())
%% }
-type list_resource_telemetry_output() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% update_telemetry_rule_for_organization_output() :: #{
%%   <<"RuleArn">> => string()
%% }
-type update_telemetry_rule_for_organization_output() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"amznErrorType">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% list_telemetry_rules_for_organization_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TelemetryRuleSummaries">> => list(telemetry_rule_summary())
%% }
-type list_telemetry_rules_for_organization_output() :: #{binary() => any()}.


%% Example:
%% list_resource_telemetry_for_organization_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TelemetryConfigurations">> => list(telemetry_configuration())
%% }
-type list_resource_telemetry_for_organization_output() :: #{binary() => any()}.


%% Example:
%% update_telemetry_rule_for_organization_input() :: #{
%%   <<"Rule">> := telemetry_rule(),
%%   <<"RuleIdentifier">> := string()
%% }
-type update_telemetry_rule_for_organization_input() :: #{binary() => any()}.


%% Example:
%% list_telemetry_rules_for_organization_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RuleNamePrefix">> => [string()],
%%   <<"SourceAccountIds">> => list(string()),
%%   <<"SourceOrganizationUnitIds">> => list(string())
%% }
-type list_telemetry_rules_for_organization_input() :: #{binary() => any()}.


%% Example:
%% list_resource_telemetry_for_organization_input() :: #{
%%   <<"AccountIdentifiers">> => list(string()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceIdentifierPrefix">> => string(),
%%   <<"ResourceTags">> => map(),
%%   <<"ResourceTypes">> => list(list(any())()),
%%   <<"TelemetryConfigurationState">> => map()
%% }
-type list_resource_telemetry_for_organization_input() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% update_telemetry_rule_output() :: #{
%%   <<"RuleArn">> => string()
%% }
-type update_telemetry_rule_output() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"amznErrorType">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"amznErrorType">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% vpc_flow_log_parameters() :: #{
%%   <<"LogFormat">> => [string()],
%%   <<"MaxAggregationInterval">> => [integer()],
%%   <<"TrafficType">> => [string()]
%% }
-type vpc_flow_log_parameters() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% update_telemetry_rule_input() :: #{
%%   <<"Rule">> := telemetry_rule(),
%%   <<"RuleIdentifier">> := string()
%% }
-type update_telemetry_rule_input() :: #{binary() => any()}.


%% Example:
%% list_telemetry_rules_input() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RuleNamePrefix">> => [string()]
%% }
-type list_telemetry_rules_input() :: #{binary() => any()}.


%% Example:
%% telemetry_rule_summary() :: #{
%%   <<"CreatedTimeStamp">> => [float()],
%%   <<"LastUpdateTimeStamp">> => [float()],
%%   <<"ResourceType">> => list(any()),
%%   <<"RuleArn">> => string(),
%%   <<"RuleName">> => string(),
%%   <<"TelemetryType">> => list(any())
%% }
-type telemetry_rule_summary() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_input() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_input() :: #{binary() => any()}.


%% Example:
%% create_telemetry_rule_for_organization_input() :: #{
%%   <<"Rule">> := telemetry_rule(),
%%   <<"RuleName">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_telemetry_rule_for_organization_input() :: #{binary() => any()}.


%% Example:
%% telemetry_rule() :: #{
%%   <<"DestinationConfiguration">> => telemetry_destination_configuration(),
%%   <<"ResourceType">> => list(any()),
%%   <<"Scope">> => [string()],
%%   <<"SelectionCriteria">> => [string()],
%%   <<"TelemetryType">> => list(any())
%% }
-type telemetry_rule() :: #{binary() => any()}.


%% Example:
%% delete_telemetry_rule_input() :: #{
%%   <<"RuleIdentifier">> := string()
%% }
-type delete_telemetry_rule_input() :: #{binary() => any()}.


%% Example:
%% delete_telemetry_rule_for_organization_input() :: #{
%%   <<"RuleIdentifier">> := string()
%% }
-type delete_telemetry_rule_for_organization_input() :: #{binary() => any()}.


%% Example:
%% create_telemetry_rule_output() :: #{
%%   <<"RuleArn">> => string()
%% }
-type create_telemetry_rule_output() :: #{binary() => any()}.


%% Example:
%% list_telemetry_rules_output() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TelemetryRuleSummaries">> => list(telemetry_rule_summary())
%% }
-type list_telemetry_rules_output() :: #{binary() => any()}.

-type create_telemetry_rule_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type create_telemetry_rule_for_organization_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception() | 
    too_many_requests_exception().

-type delete_telemetry_rule_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type delete_telemetry_rule_for_organization_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_telemetry_evaluation_status_errors() ::
    access_denied_exception() | 
    internal_server_exception() | 
    too_many_requests_exception().

-type get_telemetry_evaluation_status_for_organization_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    too_many_requests_exception().

-type get_telemetry_rule_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type get_telemetry_rule_for_organization_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_resource_telemetry_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    too_many_requests_exception().

-type list_resource_telemetry_for_organization_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    too_many_requests_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type list_telemetry_rules_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    too_many_requests_exception().

-type list_telemetry_rules_for_organization_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    too_many_requests_exception().

-type start_telemetry_evaluation_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    too_many_requests_exception().

-type start_telemetry_evaluation_for_organization_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    too_many_requests_exception().

-type stop_telemetry_evaluation_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    too_many_requests_exception().

-type stop_telemetry_evaluation_for_organization_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    too_many_requests_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type update_telemetry_rule_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

-type update_telemetry_rule_for_organization_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    too_many_requests_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc
%% Creates a telemetry rule that defines how telemetry should be configured
%% for Amazon Web Services resources in your account.
%%
%% The rule specifies which resources should have telemetry enabled and how
%% that telemetry data should be collected based on resource type, telemetry
%% type, and selection criteria.
-spec create_telemetry_rule(aws_client:aws_client(), create_telemetry_rule_input()) ->
    {ok, create_telemetry_rule_output(), tuple()} |
    {error, any()} |
    {error, create_telemetry_rule_errors(), tuple()}.
create_telemetry_rule(Client, Input) ->
    create_telemetry_rule(Client, Input, []).

-spec create_telemetry_rule(aws_client:aws_client(), create_telemetry_rule_input(), proplists:proplist()) ->
    {ok, create_telemetry_rule_output(), tuple()} |
    {error, any()} |
    {error, create_telemetry_rule_errors(), tuple()}.
create_telemetry_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateTelemetryRule"],
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

%% @doc
%% Creates a telemetry rule that applies across an Amazon Web Services
%% Organization.
%%
%% This operation can only be called by the organization's management
%% account or a delegated administrator account.
-spec create_telemetry_rule_for_organization(aws_client:aws_client(), create_telemetry_rule_for_organization_input()) ->
    {ok, create_telemetry_rule_for_organization_output(), tuple()} |
    {error, any()} |
    {error, create_telemetry_rule_for_organization_errors(), tuple()}.
create_telemetry_rule_for_organization(Client, Input) ->
    create_telemetry_rule_for_organization(Client, Input, []).

-spec create_telemetry_rule_for_organization(aws_client:aws_client(), create_telemetry_rule_for_organization_input(), proplists:proplist()) ->
    {ok, create_telemetry_rule_for_organization_output(), tuple()} |
    {error, any()} |
    {error, create_telemetry_rule_for_organization_errors(), tuple()}.
create_telemetry_rule_for_organization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateTelemetryRuleForOrganization"],
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

%% @doc
%% Deletes a telemetry rule from your account.
%%
%% Any telemetry configurations previously created by the rule will remain
%% but no new resources will be configured by this rule.
-spec delete_telemetry_rule(aws_client:aws_client(), delete_telemetry_rule_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_telemetry_rule_errors(), tuple()}.
delete_telemetry_rule(Client, Input) ->
    delete_telemetry_rule(Client, Input, []).

-spec delete_telemetry_rule(aws_client:aws_client(), delete_telemetry_rule_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_telemetry_rule_errors(), tuple()}.
delete_telemetry_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteTelemetryRule"],
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

%% @doc
%% Deletes an organization-wide telemetry rule.
%%
%% This operation can only be called by the organization's management
%% account or a delegated administrator account.
-spec delete_telemetry_rule_for_organization(aws_client:aws_client(), delete_telemetry_rule_for_organization_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_telemetry_rule_for_organization_errors(), tuple()}.
delete_telemetry_rule_for_organization(Client, Input) ->
    delete_telemetry_rule_for_organization(Client, Input, []).

-spec delete_telemetry_rule_for_organization(aws_client:aws_client(), delete_telemetry_rule_for_organization_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_telemetry_rule_for_organization_errors(), tuple()}.
delete_telemetry_rule_for_organization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteTelemetryRuleForOrganization"],
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

%% @doc
%% Returns the current onboarding status of the telemetry config feature,
%% including the status of the feature and reason the feature failed to start
%% or stop.
-spec get_telemetry_evaluation_status(aws_client:aws_client(), #{}) ->
    {ok, get_telemetry_evaluation_status_output(), tuple()} |
    {error, any()} |
    {error, get_telemetry_evaluation_status_errors(), tuple()}.
get_telemetry_evaluation_status(Client, Input) ->
    get_telemetry_evaluation_status(Client, Input, []).

-spec get_telemetry_evaluation_status(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, get_telemetry_evaluation_status_output(), tuple()} |
    {error, any()} |
    {error, get_telemetry_evaluation_status_errors(), tuple()}.
get_telemetry_evaluation_status(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetTelemetryEvaluationStatus"],
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

%% @doc
%% This returns the onboarding status of the telemetry configuration feature
%% for the organization.
%%
%% It can only be called by a Management Account of an Amazon Web Services
%% Organization or an assigned Delegated Admin Account of Amazon CloudWatch
%% telemetry config.
-spec get_telemetry_evaluation_status_for_organization(aws_client:aws_client(), #{}) ->
    {ok, get_telemetry_evaluation_status_for_organization_output(), tuple()} |
    {error, any()} |
    {error, get_telemetry_evaluation_status_for_organization_errors(), tuple()}.
get_telemetry_evaluation_status_for_organization(Client, Input) ->
    get_telemetry_evaluation_status_for_organization(Client, Input, []).

-spec get_telemetry_evaluation_status_for_organization(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, get_telemetry_evaluation_status_for_organization_output(), tuple()} |
    {error, any()} |
    {error, get_telemetry_evaluation_status_for_organization_errors(), tuple()}.
get_telemetry_evaluation_status_for_organization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetTelemetryEvaluationStatusForOrganization"],
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

%% @doc
%% Retrieves the details of a specific telemetry rule in your account.
-spec get_telemetry_rule(aws_client:aws_client(), get_telemetry_rule_input()) ->
    {ok, get_telemetry_rule_output(), tuple()} |
    {error, any()} |
    {error, get_telemetry_rule_errors(), tuple()}.
get_telemetry_rule(Client, Input) ->
    get_telemetry_rule(Client, Input, []).

-spec get_telemetry_rule(aws_client:aws_client(), get_telemetry_rule_input(), proplists:proplist()) ->
    {ok, get_telemetry_rule_output(), tuple()} |
    {error, any()} |
    {error, get_telemetry_rule_errors(), tuple()}.
get_telemetry_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetTelemetryRule"],
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

%% @doc
%% Retrieves the details of a specific organization telemetry rule.
%%
%% This operation can only be called by the organization's management
%% account or a delegated administrator account.
-spec get_telemetry_rule_for_organization(aws_client:aws_client(), get_telemetry_rule_for_organization_input()) ->
    {ok, get_telemetry_rule_for_organization_output(), tuple()} |
    {error, any()} |
    {error, get_telemetry_rule_for_organization_errors(), tuple()}.
get_telemetry_rule_for_organization(Client, Input) ->
    get_telemetry_rule_for_organization(Client, Input, []).

-spec get_telemetry_rule_for_organization(aws_client:aws_client(), get_telemetry_rule_for_organization_input(), proplists:proplist()) ->
    {ok, get_telemetry_rule_for_organization_output(), tuple()} |
    {error, any()} |
    {error, get_telemetry_rule_for_organization_errors(), tuple()}.
get_telemetry_rule_for_organization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetTelemetryRuleForOrganization"],
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

%% @doc
%% Returns a list of telemetry configurations for Amazon Web Services
%% resources supported by telemetry config.
%%
%% For more information, see Auditing CloudWatch telemetry configurations:
%% https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/telemetry-config-cloudwatch.html.
-spec list_resource_telemetry(aws_client:aws_client(), list_resource_telemetry_input()) ->
    {ok, list_resource_telemetry_output(), tuple()} |
    {error, any()} |
    {error, list_resource_telemetry_errors(), tuple()}.
list_resource_telemetry(Client, Input) ->
    list_resource_telemetry(Client, Input, []).

-spec list_resource_telemetry(aws_client:aws_client(), list_resource_telemetry_input(), proplists:proplist()) ->
    {ok, list_resource_telemetry_output(), tuple()} |
    {error, any()} |
    {error, list_resource_telemetry_errors(), tuple()}.
list_resource_telemetry(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListResourceTelemetry"],
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

%% @doc
%% Returns a list of telemetry configurations for Amazon Web Services
%% resources supported by telemetry config in the organization.
-spec list_resource_telemetry_for_organization(aws_client:aws_client(), list_resource_telemetry_for_organization_input()) ->
    {ok, list_resource_telemetry_for_organization_output(), tuple()} |
    {error, any()} |
    {error, list_resource_telemetry_for_organization_errors(), tuple()}.
list_resource_telemetry_for_organization(Client, Input) ->
    list_resource_telemetry_for_organization(Client, Input, []).

-spec list_resource_telemetry_for_organization(aws_client:aws_client(), list_resource_telemetry_for_organization_input(), proplists:proplist()) ->
    {ok, list_resource_telemetry_for_organization_output(), tuple()} |
    {error, any()} |
    {error, list_resource_telemetry_for_organization_errors(), tuple()}.
list_resource_telemetry_for_organization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListResourceTelemetryForOrganization"],
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

%% @doc
%% Lists all tags attached to the specified telemetry rule resource.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_input(), proplists:proplist()) ->
    {ok, list_tags_for_resource_output(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListTagsForResource"],
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

%% @doc
%% Lists all telemetry rules in your account.
%%
%% You can filter the results by specifying a rule name prefix.
-spec list_telemetry_rules(aws_client:aws_client(), list_telemetry_rules_input()) ->
    {ok, list_telemetry_rules_output(), tuple()} |
    {error, any()} |
    {error, list_telemetry_rules_errors(), tuple()}.
list_telemetry_rules(Client, Input) ->
    list_telemetry_rules(Client, Input, []).

-spec list_telemetry_rules(aws_client:aws_client(), list_telemetry_rules_input(), proplists:proplist()) ->
    {ok, list_telemetry_rules_output(), tuple()} |
    {error, any()} |
    {error, list_telemetry_rules_errors(), tuple()}.
list_telemetry_rules(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListTelemetryRules"],
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

%% @doc
%% Lists all telemetry rules in your organization.
%%
%% This operation can only be called by the organization's management
%% account or a delegated administrator account.
-spec list_telemetry_rules_for_organization(aws_client:aws_client(), list_telemetry_rules_for_organization_input()) ->
    {ok, list_telemetry_rules_for_organization_output(), tuple()} |
    {error, any()} |
    {error, list_telemetry_rules_for_organization_errors(), tuple()}.
list_telemetry_rules_for_organization(Client, Input) ->
    list_telemetry_rules_for_organization(Client, Input, []).

-spec list_telemetry_rules_for_organization(aws_client:aws_client(), list_telemetry_rules_for_organization_input(), proplists:proplist()) ->
    {ok, list_telemetry_rules_for_organization_output(), tuple()} |
    {error, any()} |
    {error, list_telemetry_rules_for_organization_errors(), tuple()}.
list_telemetry_rules_for_organization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListTelemetryRulesForOrganization"],
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

%% @doc
%% This action begins onboarding the caller Amazon Web Services account to
%% the telemetry config feature.
-spec start_telemetry_evaluation(aws_client:aws_client(), #{}) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_telemetry_evaluation_errors(), tuple()}.
start_telemetry_evaluation(Client, Input) ->
    start_telemetry_evaluation(Client, Input, []).

-spec start_telemetry_evaluation(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_telemetry_evaluation_errors(), tuple()}.
start_telemetry_evaluation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartTelemetryEvaluation"],
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

%% @doc
%% This actions begins onboarding the organization and all member accounts to
%% the telemetry config feature.
-spec start_telemetry_evaluation_for_organization(aws_client:aws_client(), #{}) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_telemetry_evaluation_for_organization_errors(), tuple()}.
start_telemetry_evaluation_for_organization(Client, Input) ->
    start_telemetry_evaluation_for_organization(Client, Input, []).

-spec start_telemetry_evaluation_for_organization(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_telemetry_evaluation_for_organization_errors(), tuple()}.
start_telemetry_evaluation_for_organization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StartTelemetryEvaluationForOrganization"],
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

%% @doc
%% This action begins offboarding the caller Amazon Web Services account from
%% the telemetry config feature.
-spec stop_telemetry_evaluation(aws_client:aws_client(), #{}) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_telemetry_evaluation_errors(), tuple()}.
stop_telemetry_evaluation(Client, Input) ->
    stop_telemetry_evaluation(Client, Input, []).

-spec stop_telemetry_evaluation(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_telemetry_evaluation_errors(), tuple()}.
stop_telemetry_evaluation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StopTelemetryEvaluation"],
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

%% @doc
%% This action offboards the Organization of the caller Amazon Web Services
%% account from the telemetry config feature.
-spec stop_telemetry_evaluation_for_organization(aws_client:aws_client(), #{}) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_telemetry_evaluation_for_organization_errors(), tuple()}.
stop_telemetry_evaluation_for_organization(Client, Input) ->
    stop_telemetry_evaluation_for_organization(Client, Input, []).

-spec stop_telemetry_evaluation_for_organization(aws_client:aws_client(), #{}, proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_telemetry_evaluation_for_organization_errors(), tuple()}.
stop_telemetry_evaluation_for_organization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/StopTelemetryEvaluationForOrganization"],
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

%% @doc
%% Adds or updates tags for a telemetry rule resource.
-spec tag_resource(aws_client:aws_client(), tag_resource_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TagResource"],
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

%% @doc
%% Removes tags from a telemetry rule resource.
-spec untag_resource(aws_client:aws_client(), untag_resource_input()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_input(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UntagResource"],
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

%% @doc
%% Updates an existing telemetry rule in your account.
-spec update_telemetry_rule(aws_client:aws_client(), update_telemetry_rule_input()) ->
    {ok, update_telemetry_rule_output(), tuple()} |
    {error, any()} |
    {error, update_telemetry_rule_errors(), tuple()}.
update_telemetry_rule(Client, Input) ->
    update_telemetry_rule(Client, Input, []).

-spec update_telemetry_rule(aws_client:aws_client(), update_telemetry_rule_input(), proplists:proplist()) ->
    {ok, update_telemetry_rule_output(), tuple()} |
    {error, any()} |
    {error, update_telemetry_rule_errors(), tuple()}.
update_telemetry_rule(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateTelemetryRule"],
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

%% @doc
%% Updates an existing telemetry rule that applies across an Amazon Web
%% Services Organization.
%%
%% This operation can only be called by the organization's management
%% account or a delegated administrator account.
-spec update_telemetry_rule_for_organization(aws_client:aws_client(), update_telemetry_rule_for_organization_input()) ->
    {ok, update_telemetry_rule_for_organization_output(), tuple()} |
    {error, any()} |
    {error, update_telemetry_rule_for_organization_errors(), tuple()}.
update_telemetry_rule_for_organization(Client, Input) ->
    update_telemetry_rule_for_organization(Client, Input, []).

-spec update_telemetry_rule_for_organization(aws_client:aws_client(), update_telemetry_rule_for_organization_input(), proplists:proplist()) ->
    {ok, update_telemetry_rule_for_organization_output(), tuple()} |
    {error, any()} |
    {error, update_telemetry_rule_for_organization_errors(), tuple()}.
update_telemetry_rule_for_organization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateTelemetryRuleForOrganization"],
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
    Client1 = Client#{service => <<"observabilityadmin">>},
    Host = build_host(<<"observabilityadmin">>, Client1),
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
