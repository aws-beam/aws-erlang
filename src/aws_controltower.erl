%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Control Tower offers application programming
%% interface (API)
%% operations that support programmatic interaction with these types of
%% resources:
%%
%% Controls
%% : https://docs.aws.amazon.com/controltower/latest/userguide/controls.html
%%
%% DisableControl:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_DisableControl.html
%%
%% EnableControl:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_EnableControl.html
%%
%% GetEnabledControl:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_GetEnabledControl.html
%%
%% ListControlOperations:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_ListControlOperations.html
%%
%% ListEnabledControls:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_ListEnabledControls.html
%%
%% UpdateEnabledControl:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_UpdateEnabledControl.html
%%
%% Landing
%% zones
%% :
%% https://docs.aws.amazon.com/controltower/latest/userguide/lz-api-launch.html
%%
%% CreateLandingZone:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_CreateLandingZone.html
%%
%% DeleteLandingZone:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_DeleteLandingZone.html
%%
%% GetLandingZone:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_GetLandingZone.html
%%
%% GetLandingZoneOperation:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_GetLandingZoneOperation.html
%%
%% ListLandingZones:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_ListLandingZones.html
%%
%% ListLandingZoneOperations:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_ListLandingZoneOperations.html
%%
%% ResetLandingZone:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_ResetLandingZone.html
%%
%% UpdateLandingZone:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_UpdateLandingZone.html
%%
%% Baselines
%% :
%% https://docs.aws.amazon.com/controltower/latest/userguide/types-of-baselines.html
%%
%% DisableBaseline:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_DisableBaseline.html
%%
%% EnableBaseline:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_EnableBaseline.html
%%
%% GetBaseline:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_GetBaseline.html
%%
%% GetBaselineOperation:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_GetBaselineOperation.html
%%
%% GetEnabledBaseline:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_GetEnabledBaseline.html
%%
%% ListBaselines:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_ListBaselines.html
%%
%% ListEnabledBaselines:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_ListEnabledBaselines.html
%%
%% ResetEnabledBaseline:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_ResetEnabledBaseline.html
%%
%% UpdateEnabledBaseline:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_UpdateEnabledBaseline.html
%%
%% Tagging
%% :
%% https://docs.aws.amazon.com/controltower/latest/controlreference/tagging.html
%%
%% ListTagsForResource:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_ListTagsForResource.html
%%
%% TagResource:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_TagResource.html
%%
%% UntagResource:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_UntagResource.html
%%
%% For more information about these types of resources, see the
%% Amazon Web Services Control Tower User Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/userguide/what-is-control-tower.html.
%%
%% About control APIs
%%
%% These interfaces allow you to apply the Amazon Web Services library of
%% pre-defined
%% controls to your organizational units, programmatically. In Amazon Web
%% Services Control Tower, the terms &quot;control&quot; and
%% &quot;guardrail&quot; are synonyms.
%%
%% To call these APIs, you'll need to know:
%%
%% the `controlIdentifier' for the control--or guardrail--you are
%% targeting.
%%
%% the ARN associated with the target organizational unit (OU), which we call
%% the
%% `targetIdentifier'.
%%
%% the ARN associated with a resource that you wish to tag or untag.
%%
%% To get the `controlIdentifier' for your Amazon Web Services Control
%% Tower control:
%%
%% The `controlIdentifier' is an ARN that is specified for each control.
%% You can
%% view the `controlIdentifier' in the console on the Control
%% details page, as well as in the documentation.
%%
%% About identifiers for Amazon Web Services Control Tower
%%
%% The Amazon Web Services Control Tower `controlIdentifier' is unique in
%% each Amazon Web Services Region for each
%% control. You can find the `controlIdentifier' for each Region and
%% control in the
%% Tables of control metadata:
%% https://docs.aws.amazon.com/controltower/latest/controlreference/control-metadata-tables.html
%% or the Control
%% availability by Region tables:
%% https://docs.aws.amazon.com/controltower/latest/controlreference/control-region-tables.html
%% in the Amazon Web Services Control Tower
%% Controls Reference Guide.
%%
%% A quick-reference list of control identifers for the Amazon Web Services
%% Control Tower
%% legacy Strongly recommended and Elective controls
%% is given in Resource
%% identifiers for APIs and controls:
%% https://docs.aws.amazon.com/controltower/latest/controlreference/control-identifiers.html.html
%% in the
%% Amazon Web Services Control Tower Controls Reference Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/controlreference/control-identifiers.html.
%% Remember
%% that Mandatory controls cannot be added or removed.
%%
%% Some controls have two identifiers
%%
%% ARN format for Amazon Web Services Control
%% Tower:
%% `arn:aws:controltower:{REGION}::control/{CONTROL_TOWER_OPAQUE_ID}'
%%
%% Example:
%%
%% `arn:aws:controltower:us-west-2::control/AWS-GR_AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED'
%%
%% ARN format for Amazon Web Services Control
%% Catalog:
%% `arn:{PARTITION}:controlcatalog:::control/{CONTROL_CATALOG_OPAQUE_ID}'
%%
%% You can find the `{CONTROL_CATALOG_OPAQUE_ID}' in the
%% Amazon Web Services Control Tower Controls Reference
%% Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/controlreference/all-global-identifiers.html,
%% or in the Amazon Web Services Control Tower console, on the
%% Control details page.
%%
%% The Amazon Web Services Control Tower APIs for enabled controls, such as
%% `GetEnabledControl' and `ListEnabledControls' always return an
%% ARN of the same type given when the control was enabled.
%%
%% To get the `targetIdentifier':
%%
%% The `targetIdentifier' is the ARN for an OU.
%%
%% In the Amazon Web Services Organizations console, you can find the ARN for
%% the OU on the
%% Organizational unit details page associated with that
%% OU.
%%
%% OU ARN format:
%%
%% `arn:${Partition}:organizations::${MasterAccountId}:ou/o-${OrganizationId}/ou-${OrganizationalUnitId}'
%%
%% About landing zone APIs
%%
%% You can configure and launch an Amazon Web Services Control Tower landing
%% zone with APIs.
%% For an introduction and steps, see Getting started with
%% Amazon Web Services Control Tower using APIs:
%% https://docs.aws.amazon.com/controltower/latest/userguide/getting-started-apis.html.
%%
%% For an overview of landing zone API operations, see
%% Amazon Web Services Control Tower supports landing zone APIs:
%% https://docs.aws.amazon.com/controltower/latest/userguide/2023-all.html#landing-zone-apis.
%% The individual API
%% operations for landing zones are detailed in this document, the API
%% reference
%% manual:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_Operations.html,
%% in the &quot;Actions&quot; section.
%%
%% About baseline APIs
%%
%% You can apply the `AWSControlTowerBaseline' baseline to an
%% organizational
%% unit (OU) as a way to register the OU with Amazon Web Services Control
%% Tower,
%% programmatically. For a general overview of this capability, see Amazon
%% Web Services Control Tower supports APIs for OU registration and
%% configuration
%% with baselines:
%% https://docs.aws.amazon.com/controltower/latest/userguide/2024-all.html#baseline-apis.
%%
%% You can call the baseline API operations to view the baselines that Amazon
%% Web Services
%% Control Tower enables for your landing zone, on your behalf, when setting
%% up the landing
%% zone. These baselines are read-only baselines.
%%
%% The individual API operations for baselines are detailed in this document,
%% the API
%% reference manual:
%% https://docs.aws.amazon.com/controltower/latest/APIReference/API_Operations.html,
%% in the &quot;Actions&quot; section. For usage examples, see Baseline API
%% input and output examples with CLI:
%% https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html.
%%
%% About Amazon Web Services Control Catalog identifiers
%%
%% The `EnableControl' and `DisableControl' API operations can
%% be called by specifying either the Amazon Web Services Control Tower
%% identifer or the
%% Amazon Web Services Control Catalog identifier. The API response returns
%% the same
%% type of identifier that you specified when calling the API.
%%
%% If you use an Amazon Web Services Control Tower identifier to call the
%% `EnableControl' API, and then call `EnableControl' again
%% with an Amazon Web Services Control Catalog identifier, Amazon Web
%% Services Control
%% Tower returns an error message stating that the control is already
%% enabled. Similar
%% behavior applies to the `DisableControl' API operation.
%%
%% Mandatory controls and the landing-zone-level Region deny control have
%% Amazon Web Services Control Tower identifiers only.
%%
%% == Details and examples ==
%%
%% Control API input and output examples with CLI:
%% https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html
%%
%% Baseline API input
%% and output examples with CLI:
%% https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html
%%
%% Enable controls
%% with CloudFormation:
%% https://docs.aws.amazon.com/controltower/latest/controlreference/enable-controls.html
%%
%% Launch a landing zone
%% with CloudFormation:
%% https://docs.aws.amazon.com/controltower/latest/userguide/lz-apis-cfn-setup.html
%%
%% Control
%% metadata tables (large page):
%% https://docs.aws.amazon.com/controltower/latest/controlreference/control-metadata-tables.html
%%
%% Control
%% availability by Region tables (large page):
%% https://docs.aws.amazon.com/controltower/latest/controlreference/control-region-tables.html
%%
%% List of
%% identifiers for legacy controls:
%% https://docs.aws.amazon.com/controltower/latest/controlreference/control-identifiers.html
%%
%% Controls reference
%% guide:
%% https://docs.aws.amazon.com/controltower/latest/controlreference/controls.html
%%
%% Controls
%% library groupings:
%% https://docs.aws.amazon.com/controltower/latest/controlreference/controls-reference.html
%%
%% Creating Amazon Web Services Control Tower resources with Amazon Web
%% Services
%% CloudFormation:
%% https://docs.aws.amazon.com/controltower/latest/userguide/creating-resources-with-cloudformation.html
%%
%% To view the open source resource repository on GitHub, see
%% aws-cloudformation/aws-cloudformation-resource-providers-controltower:
%% https://github.com/aws-cloudformation/aws-cloudformation-resource-providers-controltower
%%
%% Recording API Requests
%%
%% Amazon Web Services Control Tower supports Amazon Web Services CloudTrail,
%% a service that
%% records Amazon Web Services API calls for your Amazon Web Services account
%% and delivers log
%% files to an Amazon S3 bucket. By using information collected by
%% CloudTrail, you can
%% determine which requests the Amazon Web Services Control Tower service
%% received, who made
%% the request and when, and so on. For more about Amazon Web Services
%% Control Tower and its
%% support for CloudTrail, see Logging Amazon Web Services Control Tower
%% Actions with Amazon Web Services CloudTrail:
%% https://docs.aws.amazon.com/controltower/latest/userguide/logging-using-cloudtrail.html
%% in the
%% Amazon Web Services Control Tower User Guide. To learn more about
%% CloudTrail, including
%% how to turn it on and find your log files, see the Amazon Web Services
%% CloudTrail User
%% Guide.
-module(aws_controltower).

-export([create_landing_zone/2,
         create_landing_zone/3,
         delete_landing_zone/2,
         delete_landing_zone/3,
         disable_baseline/2,
         disable_baseline/3,
         disable_control/2,
         disable_control/3,
         enable_baseline/2,
         enable_baseline/3,
         enable_control/2,
         enable_control/3,
         get_baseline/2,
         get_baseline/3,
         get_baseline_operation/2,
         get_baseline_operation/3,
         get_control_operation/2,
         get_control_operation/3,
         get_enabled_baseline/2,
         get_enabled_baseline/3,
         get_enabled_control/2,
         get_enabled_control/3,
         get_landing_zone/2,
         get_landing_zone/3,
         get_landing_zone_operation/2,
         get_landing_zone_operation/3,
         list_baselines/2,
         list_baselines/3,
         list_control_operations/2,
         list_control_operations/3,
         list_enabled_baselines/2,
         list_enabled_baselines/3,
         list_enabled_controls/2,
         list_enabled_controls/3,
         list_landing_zone_operations/2,
         list_landing_zone_operations/3,
         list_landing_zones/2,
         list_landing_zones/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         reset_enabled_baseline/2,
         reset_enabled_baseline/3,
         reset_enabled_control/2,
         reset_enabled_control/3,
         reset_landing_zone/2,
         reset_landing_zone/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_enabled_baseline/2,
         update_enabled_baseline/3,
         update_enabled_control/2,
         update_enabled_control/3,
         update_landing_zone/2,
         update_landing_zone/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% list_enabled_controls_output() :: #{
%%   <<"enabledControls">> => list(enabled_control_summary()()),
%%   <<"nextToken">> => [string()]
%% }
-type list_enabled_controls_output() :: #{binary() => any()}.


%% Example:
%% disable_control_input() :: #{
%%   <<"controlIdentifier">> := string(),
%%   <<"targetIdentifier">> := string()
%% }
-type disable_control_input() :: #{binary() => any()}.


%% Example:
%% disable_control_output() :: #{
%%   <<"operationIdentifier">> => string()
%% }
-type disable_control_output() :: #{binary() => any()}.


%% Example:
%% enablement_status_summary() :: #{
%%   <<"lastOperationIdentifier">> => string(),
%%   <<"status">> => list(any())
%% }
-type enablement_status_summary() :: #{binary() => any()}.


%% Example:
%% enabled_control_parameter() :: #{
%%   <<"key">> => [string()],
%%   <<"value">> => [any()]
%% }
-type enabled_control_parameter() :: #{binary() => any()}.


%% Example:
%% list_enabled_baselines_input() :: #{
%%   <<"filter">> => enabled_baseline_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_enabled_baselines_input() :: #{binary() => any()}.


%% Example:
%% enabled_control_filter() :: #{
%%   <<"controlIdentifiers">> => list(string()()),
%%   <<"driftStatuses">> => list(list(any())()),
%%   <<"statuses">> => list(list(any())())
%% }
-type enabled_control_filter() :: #{binary() => any()}.


%% Example:
%% landing_zone_operation_summary() :: #{
%%   <<"operationIdentifier">> => string(),
%%   <<"operationType">> => list(any()),
%%   <<"status">> => list(any())
%% }
-type landing_zone_operation_summary() :: #{binary() => any()}.


%% Example:
%% enable_control_input() :: #{
%%   <<"controlIdentifier">> := string(),
%%   <<"parameters">> => list(enabled_control_parameter()()),
%%   <<"tags">> => map(),
%%   <<"targetIdentifier">> := string()
%% }
-type enable_control_input() :: #{binary() => any()}.


%% Example:
%% update_landing_zone_output() :: #{
%%   <<"operationIdentifier">> => string()
%% }
-type update_landing_zone_output() :: #{binary() => any()}.


%% Example:
%% get_enabled_control_output() :: #{
%%   <<"enabledControlDetails">> => enabled_control_details()
%% }
-type get_enabled_control_output() :: #{binary() => any()}.


%% Example:
%% list_enabled_controls_input() :: #{
%%   <<"filter">> => enabled_control_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()],
%%   <<"targetIdentifier">> => string()
%% }
-type list_enabled_controls_input() :: #{binary() => any()}.


%% Example:
%% reset_enabled_control_input() :: #{
%%   <<"enabledControlIdentifier">> := string()
%% }
-type reset_enabled_control_input() :: #{binary() => any()}.


%% Example:
%% list_landing_zones_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()]
%% }
-type list_landing_zones_input() :: #{binary() => any()}.


%% Example:
%% list_control_operations_output() :: #{
%%   <<"controlOperations">> => list(control_operation_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_control_operations_output() :: #{binary() => any()}.


%% Example:
%% reset_enabled_baseline_input() :: #{
%%   <<"enabledBaselineIdentifier">> := string()
%% }
-type reset_enabled_baseline_input() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_output() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_output() :: #{binary() => any()}.


%% Example:
%% enabled_baseline_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"baselineIdentifier">> => [string()],
%%   <<"baselineVersion">> => [string()],
%%   <<"statusSummary">> => enablement_status_summary(),
%%   <<"targetIdentifier">> => [string()]
%% }
-type enabled_baseline_summary() :: #{binary() => any()}.


%% Example:
%% get_baseline_operation_input() :: #{
%%   <<"operationIdentifier">> := string()
%% }
-type get_baseline_operation_input() :: #{binary() => any()}.


%% Example:
%% landing_zone_operation_filter() :: #{
%%   <<"statuses">> => list(list(any())()),
%%   <<"types">> => list(list(any())())
%% }
-type landing_zone_operation_filter() :: #{binary() => any()}.


%% Example:
%% list_baselines_output() :: #{
%%   <<"baselines">> => list(baseline_summary()()),
%%   <<"nextToken">> => [string()]
%% }
-type list_baselines_output() :: #{binary() => any()}.


%% Example:
%% list_enabled_baselines_output() :: #{
%%   <<"enabledBaselines">> => list(enabled_baseline_summary()()),
%%   <<"nextToken">> => string()
%% }
-type list_enabled_baselines_output() :: #{binary() => any()}.


%% Example:
%% enabled_control_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"controlIdentifier">> => string(),
%%   <<"driftStatusSummary">> => drift_status_summary(),
%%   <<"statusSummary">> => enablement_status_summary(),
%%   <<"targetIdentifier">> => string()
%% }
-type enabled_control_summary() :: #{binary() => any()}.


%% Example:
%% region() :: #{
%%   <<"name">> => string()
%% }
-type region() :: #{binary() => any()}.


%% Example:
%% disable_baseline_input() :: #{
%%   <<"enabledBaselineIdentifier">> := string()
%% }
-type disable_baseline_input() :: #{binary() => any()}.


%% Example:
%% get_enabled_baseline_output() :: #{
%%   <<"enabledBaselineDetails">> => enabled_baseline_details()
%% }
-type get_enabled_baseline_output() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% enabled_baseline_parameter() :: #{
%%   <<"key">> => [string()],
%%   <<"value">> => any()
%% }
-type enabled_baseline_parameter() :: #{binary() => any()}.


%% Example:
%% create_landing_zone_input() :: #{
%%   <<"manifest">> := any(),
%%   <<"tags">> => map(),
%%   <<"version">> := string()
%% }
-type create_landing_zone_input() :: #{binary() => any()}.


%% Example:
%% get_enabled_control_input() :: #{
%%   <<"enabledControlIdentifier">> := string()
%% }
-type get_enabled_control_input() :: #{binary() => any()}.


%% Example:
%% landing_zone_detail() :: #{
%%   <<"arn">> => string(),
%%   <<"driftStatus">> => landing_zone_drift_status_summary(),
%%   <<"latestAvailableVersion">> => string(),
%%   <<"manifest">> => any(),
%%   <<"status">> => list(any()),
%%   <<"version">> => string()
%% }
-type landing_zone_detail() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% update_landing_zone_input() :: #{
%%   <<"landingZoneIdentifier">> := [string()],
%%   <<"manifest">> := any(),
%%   <<"version">> := string()
%% }
-type update_landing_zone_input() :: #{binary() => any()}.


%% Example:
%% list_landing_zones_output() :: #{
%%   <<"landingZones">> => list(landing_zone_summary()()),
%%   <<"nextToken">> => [string()]
%% }
-type list_landing_zones_output() :: #{binary() => any()}.


%% Example:
%% get_landing_zone_output() :: #{
%%   <<"landingZone">> => landing_zone_detail()
%% }
-type get_landing_zone_output() :: #{binary() => any()}.


%% Example:
%% get_landing_zone_operation_input() :: #{
%%   <<"operationIdentifier">> := string()
%% }
-type get_landing_zone_operation_input() :: #{binary() => any()}.


%% Example:
%% enabled_control_parameter_summary() :: #{
%%   <<"key">> => [string()],
%%   <<"value">> => [any()]
%% }
-type enabled_control_parameter_summary() :: #{binary() => any()}.


%% Example:
%% enable_baseline_output() :: #{
%%   <<"arn">> => string(),
%%   <<"operationIdentifier">> => string()
%% }
-type enable_baseline_output() :: #{binary() => any()}.


%% Example:
%% get_control_operation_input() :: #{
%%   <<"operationIdentifier">> := string()
%% }
-type get_control_operation_input() :: #{binary() => any()}.


%% Example:
%% delete_landing_zone_input() :: #{
%%   <<"landingZoneIdentifier">> := [string()]
%% }
-type delete_landing_zone_input() :: #{binary() => any()}.


%% Example:
%% delete_landing_zone_output() :: #{
%%   <<"operationIdentifier">> => string()
%% }
-type delete_landing_zone_output() :: #{binary() => any()}.


%% Example:
%% get_landing_zone_operation_output() :: #{
%%   <<"operationDetails">> => landing_zone_operation_detail()
%% }
-type get_landing_zone_operation_output() :: #{binary() => any()}.


%% Example:
%% tag_resource_input() :: #{
%%   <<"tags">> := map()
%% }
-type tag_resource_input() :: #{binary() => any()}.


%% Example:
%% enable_control_output() :: #{
%%   <<"arn">> => string(),
%%   <<"operationIdentifier">> => string()
%% }
-type enable_control_output() :: #{binary() => any()}.


%% Example:
%% landing_zone_summary() :: #{
%%   <<"arn">> => string()
%% }
-type landing_zone_summary() :: #{binary() => any()}.


%% Example:
%% list_landing_zone_operations_input() :: #{
%%   <<"filter">> => landing_zone_operation_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()]
%% }
-type list_landing_zone_operations_input() :: #{binary() => any()}.

%% Example:
%% tag_resource_output() :: #{}
-type tag_resource_output() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% get_baseline_operation_output() :: #{
%%   <<"baselineOperation">> => baseline_operation()
%% }
-type get_baseline_operation_output() :: #{binary() => any()}.


%% Example:
%% baseline_operation() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"operationIdentifier">> => string(),
%%   <<"operationType">> => list(any()),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => [string()]
%% }
-type baseline_operation() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% enabled_baseline_filter() :: #{
%%   <<"baselineIdentifiers">> => list(string()()),
%%   <<"targetIdentifiers">> => list(string()())
%% }
-type enabled_baseline_filter() :: #{binary() => any()}.


%% Example:
%% untag_resource_input() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_input() :: #{binary() => any()}.


%% Example:
%% enable_baseline_input() :: #{
%%   <<"baselineIdentifier">> := string(),
%%   <<"baselineVersion">> := string(),
%%   <<"parameters">> => list(enabled_baseline_parameter()()),
%%   <<"tags">> => map(),
%%   <<"targetIdentifier">> := string()
%% }
-type enable_baseline_input() :: #{binary() => any()}.


%% Example:
%% control_operation() :: #{
%%   <<"controlIdentifier">> => string(),
%%   <<"enabledControlIdentifier">> => string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"operationIdentifier">> => string(),
%%   <<"operationType">> => list(any()),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => [string()],
%%   <<"targetIdentifier">> => string()
%% }
-type control_operation() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_input() :: #{}
-type list_tags_for_resource_input() :: #{}.

%% Example:
%% untag_resource_output() :: #{}
-type untag_resource_output() :: #{}.


%% Example:
%% list_control_operations_input() :: #{
%%   <<"filter">> => control_operation_filter(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_control_operations_input() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% update_enabled_baseline_input() :: #{
%%   <<"baselineVersion">> := string(),
%%   <<"enabledBaselineIdentifier">> := string(),
%%   <<"parameters">> => list(enabled_baseline_parameter()())
%% }
-type update_enabled_baseline_input() :: #{binary() => any()}.


%% Example:
%% control_operation_filter() :: #{
%%   <<"controlIdentifiers">> => list(string()()),
%%   <<"controlOperationTypes">> => list(list(any())()),
%%   <<"enabledControlIdentifiers">> => list(string()()),
%%   <<"statuses">> => list(list(any())()),
%%   <<"targetIdentifiers">> => list(string()())
%% }
-type control_operation_filter() :: #{binary() => any()}.


%% Example:
%% get_enabled_baseline_input() :: #{
%%   <<"enabledBaselineIdentifier">> := string()
%% }
-type get_enabled_baseline_input() :: #{binary() => any()}.


%% Example:
%% enabled_baseline_details() :: #{
%%   <<"arn">> => string(),
%%   <<"baselineIdentifier">> => [string()],
%%   <<"baselineVersion">> => [string()],
%%   <<"parameters">> => list(enabled_baseline_parameter_summary()()),
%%   <<"statusSummary">> => enablement_status_summary(),
%%   <<"targetIdentifier">> => [string()]
%% }
-type enabled_baseline_details() :: #{binary() => any()}.


%% Example:
%% landing_zone_drift_status_summary() :: #{
%%   <<"status">> => list(any())
%% }
-type landing_zone_drift_status_summary() :: #{binary() => any()}.


%% Example:
%% update_enabled_control_input() :: #{
%%   <<"enabledControlIdentifier">> := string(),
%%   <<"parameters">> := list(enabled_control_parameter()())
%% }
-type update_enabled_control_input() :: #{binary() => any()}.


%% Example:
%% baseline_summary() :: #{
%%   <<"arn">> => [string()],
%%   <<"description">> => [string()],
%%   <<"name">> => [string()]
%% }
-type baseline_summary() :: #{binary() => any()}.


%% Example:
%% reset_landing_zone_input() :: #{
%%   <<"landingZoneIdentifier">> := [string()]
%% }
-type reset_landing_zone_input() :: #{binary() => any()}.


%% Example:
%% enabled_control_details() :: #{
%%   <<"arn">> => string(),
%%   <<"controlIdentifier">> => string(),
%%   <<"driftStatusSummary">> => drift_status_summary(),
%%   <<"parameters">> => list(enabled_control_parameter_summary()()),
%%   <<"statusSummary">> => enablement_status_summary(),
%%   <<"targetIdentifier">> => string(),
%%   <<"targetRegions">> => list(region()())
%% }
-type enabled_control_details() :: #{binary() => any()}.


%% Example:
%% get_control_operation_output() :: #{
%%   <<"controlOperation">> => control_operation()
%% }
-type get_control_operation_output() :: #{binary() => any()}.


%% Example:
%% update_enabled_baseline_output() :: #{
%%   <<"operationIdentifier">> => string()
%% }
-type update_enabled_baseline_output() :: #{binary() => any()}.


%% Example:
%% create_landing_zone_output() :: #{
%%   <<"arn">> => string(),
%%   <<"operationIdentifier">> => string()
%% }
-type create_landing_zone_output() :: #{binary() => any()}.


%% Example:
%% get_baseline_output() :: #{
%%   <<"arn">> => string(),
%%   <<"description">> => [string()],
%%   <<"name">> => [string()]
%% }
-type get_baseline_output() :: #{binary() => any()}.


%% Example:
%% reset_landing_zone_output() :: #{
%%   <<"operationIdentifier">> => string()
%% }
-type reset_landing_zone_output() :: #{binary() => any()}.


%% Example:
%% list_landing_zone_operations_output() :: #{
%%   <<"landingZoneOperations">> => list(landing_zone_operation_summary()()),
%%   <<"nextToken">> => [string()]
%% }
-type list_landing_zone_operations_output() :: #{binary() => any()}.


%% Example:
%% enabled_baseline_parameter_summary() :: #{
%%   <<"key">> => [string()],
%%   <<"value">> => any()
%% }
-type enabled_baseline_parameter_summary() :: #{binary() => any()}.


%% Example:
%% list_baselines_input() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => [string()]
%% }
-type list_baselines_input() :: #{binary() => any()}.


%% Example:
%% reset_enabled_baseline_output() :: #{
%%   <<"operationIdentifier">> => string()
%% }
-type reset_enabled_baseline_output() :: #{binary() => any()}.


%% Example:
%% get_landing_zone_input() :: #{
%%   <<"landingZoneIdentifier">> := [string()]
%% }
-type get_landing_zone_input() :: #{binary() => any()}.


%% Example:
%% drift_status_summary() :: #{
%%   <<"driftStatus">> => list(any())
%% }
-type drift_status_summary() :: #{binary() => any()}.


%% Example:
%% landing_zone_operation_detail() :: #{
%%   <<"endTime">> => non_neg_integer(),
%%   <<"operationIdentifier">> => string(),
%%   <<"operationType">> => list(any()),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => [string()]
%% }
-type landing_zone_operation_detail() :: #{binary() => any()}.


%% Example:
%% update_enabled_control_output() :: #{
%%   <<"operationIdentifier">> => string()
%% }
-type update_enabled_control_output() :: #{binary() => any()}.


%% Example:
%% disable_baseline_output() :: #{
%%   <<"operationIdentifier">> => string()
%% }
-type disable_baseline_output() :: #{binary() => any()}.


%% Example:
%% reset_enabled_control_output() :: #{
%%   <<"operationIdentifier">> => string()
%% }
-type reset_enabled_control_output() :: #{binary() => any()}.


%% Example:
%% control_operation_summary() :: #{
%%   <<"controlIdentifier">> => string(),
%%   <<"enabledControlIdentifier">> => string(),
%%   <<"endTime">> => non_neg_integer(),
%%   <<"operationIdentifier">> => string(),
%%   <<"operationType">> => list(any()),
%%   <<"startTime">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"statusMessage">> => [string()],
%%   <<"targetIdentifier">> => string()
%% }
-type control_operation_summary() :: #{binary() => any()}.


%% Example:
%% get_baseline_input() :: #{
%%   <<"baselineIdentifier">> := string()
%% }
-type get_baseline_input() :: #{binary() => any()}.

-type create_landing_zone_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    conflict_exception().

-type delete_landing_zone_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disable_baseline_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disable_control_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type enable_baseline_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type enable_control_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_baseline_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_baseline_operation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_control_operation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_enabled_baseline_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_enabled_control_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_landing_zone_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_landing_zone_operation_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_baselines_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_control_operations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_enabled_baselines_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_enabled_controls_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_landing_zone_operations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_landing_zones_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type reset_enabled_baseline_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type reset_enabled_control_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type reset_landing_zone_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_enabled_baseline_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_enabled_control_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_landing_zone_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a new landing zone.
%%
%% This API call starts an asynchronous operation that creates and configures
%% a landing zone,
%% based on the parameters specified in the manifest JSON file.
-spec create_landing_zone(aws_client:aws_client(), create_landing_zone_input()) ->
    {ok, create_landing_zone_output(), tuple()} |
    {error, any()} |
    {error, create_landing_zone_errors(), tuple()}.
create_landing_zone(Client, Input) ->
    create_landing_zone(Client, Input, []).

-spec create_landing_zone(aws_client:aws_client(), create_landing_zone_input(), proplists:proplist()) ->
    {ok, create_landing_zone_output(), tuple()} |
    {error, any()} |
    {error, create_landing_zone_errors(), tuple()}.
create_landing_zone(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-landingzone"],
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

%% @doc Decommissions a landing zone.
%%
%% This API call starts an asynchronous operation that deletes Amazon Web
%% Services Control Tower
%% resources deployed in accounts managed by Amazon Web Services Control
%% Tower.
-spec delete_landing_zone(aws_client:aws_client(), delete_landing_zone_input()) ->
    {ok, delete_landing_zone_output(), tuple()} |
    {error, any()} |
    {error, delete_landing_zone_errors(), tuple()}.
delete_landing_zone(Client, Input) ->
    delete_landing_zone(Client, Input, []).

-spec delete_landing_zone(aws_client:aws_client(), delete_landing_zone_input(), proplists:proplist()) ->
    {ok, delete_landing_zone_output(), tuple()} |
    {error, any()} |
    {error, delete_landing_zone_errors(), tuple()}.
delete_landing_zone(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-landingzone"],
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

%% @doc Disable an `EnabledBaseline' resource on the specified Target.
%%
%% This API starts an asynchronous operation to remove all resources deployed
%% as part of the baseline enablement. The resource will vary depending on
%% the enabled baseline. For usage examples, see
%% the Amazon Web Services Control Tower User Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html.
-spec disable_baseline(aws_client:aws_client(), disable_baseline_input()) ->
    {ok, disable_baseline_output(), tuple()} |
    {error, any()} |
    {error, disable_baseline_errors(), tuple()}.
disable_baseline(Client, Input) ->
    disable_baseline(Client, Input, []).

-spec disable_baseline(aws_client:aws_client(), disable_baseline_input(), proplists:proplist()) ->
    {ok, disable_baseline_output(), tuple()} |
    {error, any()} |
    {error, disable_baseline_errors(), tuple()}.
disable_baseline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disable-baseline"],
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

%% @doc This API call turns off a control.
%%
%% It starts an asynchronous operation that deletes Amazon Web Services
%% resources on the specified organizational unit and the accounts it
%% contains. The resources
%% will vary according to the control that you specify. For usage examples,
%% see the
%% Controls Reference Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html.
-spec disable_control(aws_client:aws_client(), disable_control_input()) ->
    {ok, disable_control_output(), tuple()} |
    {error, any()} |
    {error, disable_control_errors(), tuple()}.
disable_control(Client, Input) ->
    disable_control(Client, Input, []).

-spec disable_control(aws_client:aws_client(), disable_control_input(), proplists:proplist()) ->
    {ok, disable_control_output(), tuple()} |
    {error, any()} |
    {error, disable_control_errors(), tuple()}.
disable_control(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disable-control"],
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

%% @doc Enable (apply) a `Baseline' to a Target.
%%
%% This API starts an asynchronous operation to deploy resources specified by
%% the `Baseline' to the specified Target. For usage examples, see
%% the Amazon Web Services Control Tower User Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html.
-spec enable_baseline(aws_client:aws_client(), enable_baseline_input()) ->
    {ok, enable_baseline_output(), tuple()} |
    {error, any()} |
    {error, enable_baseline_errors(), tuple()}.
enable_baseline(Client, Input) ->
    enable_baseline(Client, Input, []).

-spec enable_baseline(aws_client:aws_client(), enable_baseline_input(), proplists:proplist()) ->
    {ok, enable_baseline_output(), tuple()} |
    {error, any()} |
    {error, enable_baseline_errors(), tuple()}.
enable_baseline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/enable-baseline"],
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

%% @doc This API call activates a control.
%%
%% It starts an asynchronous operation that creates Amazon Web Services
%% resources on the specified organizational unit and the accounts it
%% contains. The resources
%% created will vary according to the control that you specify. For usage
%% examples, see the
%% Controls Reference Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html.
-spec enable_control(aws_client:aws_client(), enable_control_input()) ->
    {ok, enable_control_output(), tuple()} |
    {error, any()} |
    {error, enable_control_errors(), tuple()}.
enable_control(Client, Input) ->
    enable_control(Client, Input, []).

-spec enable_control(aws_client:aws_client(), enable_control_input(), proplists:proplist()) ->
    {ok, enable_control_output(), tuple()} |
    {error, any()} |
    {error, enable_control_errors(), tuple()}.
enable_control(Client, Input0, Options0) ->
    Method = post,
    Path = ["/enable-control"],
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

%% @doc Retrieve details about an existing `Baseline' resource by
%% specifying its identifier.
%%
%% For usage examples, see
%% the Amazon Web Services Control Tower User Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html.
-spec get_baseline(aws_client:aws_client(), get_baseline_input()) ->
    {ok, get_baseline_output(), tuple()} |
    {error, any()} |
    {error, get_baseline_errors(), tuple()}.
get_baseline(Client, Input) ->
    get_baseline(Client, Input, []).

-spec get_baseline(aws_client:aws_client(), get_baseline_input(), proplists:proplist()) ->
    {ok, get_baseline_output(), tuple()} |
    {error, any()} |
    {error, get_baseline_errors(), tuple()}.
get_baseline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-baseline"],
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

%% @doc Returns the details of an asynchronous baseline operation, as
%% initiated by any of these APIs: `EnableBaseline',
%% `DisableBaseline', `UpdateEnabledBaseline',
%% `ResetEnabledBaseline'.
%%
%% A status message is displayed in case of operation failure. For usage
%% examples, see
%% the Amazon Web Services Control Tower User Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html.
-spec get_baseline_operation(aws_client:aws_client(), get_baseline_operation_input()) ->
    {ok, get_baseline_operation_output(), tuple()} |
    {error, any()} |
    {error, get_baseline_operation_errors(), tuple()}.
get_baseline_operation(Client, Input) ->
    get_baseline_operation(Client, Input, []).

-spec get_baseline_operation(aws_client:aws_client(), get_baseline_operation_input(), proplists:proplist()) ->
    {ok, get_baseline_operation_output(), tuple()} |
    {error, any()} |
    {error, get_baseline_operation_errors(), tuple()}.
get_baseline_operation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-baseline-operation"],
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

%% @doc Returns the status of a particular `EnableControl' or
%% `DisableControl' operation.
%%
%% Displays a message in case of error. Details for an
%% operation are available for 90 days. For usage examples, see the
%% Controls Reference Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html.
-spec get_control_operation(aws_client:aws_client(), get_control_operation_input()) ->
    {ok, get_control_operation_output(), tuple()} |
    {error, any()} |
    {error, get_control_operation_errors(), tuple()}.
get_control_operation(Client, Input) ->
    get_control_operation(Client, Input, []).

-spec get_control_operation(aws_client:aws_client(), get_control_operation_input(), proplists:proplist()) ->
    {ok, get_control_operation_output(), tuple()} |
    {error, any()} |
    {error, get_control_operation_errors(), tuple()}.
get_control_operation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-control-operation"],
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

%% @doc Retrieve details of an `EnabledBaseline' resource by specifying
%% its identifier.
-spec get_enabled_baseline(aws_client:aws_client(), get_enabled_baseline_input()) ->
    {ok, get_enabled_baseline_output(), tuple()} |
    {error, any()} |
    {error, get_enabled_baseline_errors(), tuple()}.
get_enabled_baseline(Client, Input) ->
    get_enabled_baseline(Client, Input, []).

-spec get_enabled_baseline(aws_client:aws_client(), get_enabled_baseline_input(), proplists:proplist()) ->
    {ok, get_enabled_baseline_output(), tuple()} |
    {error, any()} |
    {error, get_enabled_baseline_errors(), tuple()}.
get_enabled_baseline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-enabled-baseline"],
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

%% @doc Retrieves details about an enabled control.
%%
%% For usage examples, see the
%% Controls Reference Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html.
-spec get_enabled_control(aws_client:aws_client(), get_enabled_control_input()) ->
    {ok, get_enabled_control_output(), tuple()} |
    {error, any()} |
    {error, get_enabled_control_errors(), tuple()}.
get_enabled_control(Client, Input) ->
    get_enabled_control(Client, Input, []).

-spec get_enabled_control(aws_client:aws_client(), get_enabled_control_input(), proplists:proplist()) ->
    {ok, get_enabled_control_output(), tuple()} |
    {error, any()} |
    {error, get_enabled_control_errors(), tuple()}.
get_enabled_control(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-enabled-control"],
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

%% @doc Returns details about the landing zone.
%%
%% Displays a message in case of error.
-spec get_landing_zone(aws_client:aws_client(), get_landing_zone_input()) ->
    {ok, get_landing_zone_output(), tuple()} |
    {error, any()} |
    {error, get_landing_zone_errors(), tuple()}.
get_landing_zone(Client, Input) ->
    get_landing_zone(Client, Input, []).

-spec get_landing_zone(aws_client:aws_client(), get_landing_zone_input(), proplists:proplist()) ->
    {ok, get_landing_zone_output(), tuple()} |
    {error, any()} |
    {error, get_landing_zone_errors(), tuple()}.
get_landing_zone(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-landingzone"],
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

%% @doc Returns the status of the specified landing zone operation.
%%
%% Details for an operation are available for
%% 90 days.
-spec get_landing_zone_operation(aws_client:aws_client(), get_landing_zone_operation_input()) ->
    {ok, get_landing_zone_operation_output(), tuple()} |
    {error, any()} |
    {error, get_landing_zone_operation_errors(), tuple()}.
get_landing_zone_operation(Client, Input) ->
    get_landing_zone_operation(Client, Input, []).

-spec get_landing_zone_operation(aws_client:aws_client(), get_landing_zone_operation_input(), proplists:proplist()) ->
    {ok, get_landing_zone_operation_output(), tuple()} |
    {error, any()} |
    {error, get_landing_zone_operation_errors(), tuple()}.
get_landing_zone_operation(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-landingzone-operation"],
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

%% @doc Returns a summary list of all available baselines.
%%
%% For usage examples, see
%% the Amazon Web Services Control Tower User Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html.
-spec list_baselines(aws_client:aws_client(), list_baselines_input()) ->
    {ok, list_baselines_output(), tuple()} |
    {error, any()} |
    {error, list_baselines_errors(), tuple()}.
list_baselines(Client, Input) ->
    list_baselines(Client, Input, []).

-spec list_baselines(aws_client:aws_client(), list_baselines_input(), proplists:proplist()) ->
    {ok, list_baselines_output(), tuple()} |
    {error, any()} |
    {error, list_baselines_errors(), tuple()}.
list_baselines(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-baselines"],
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

%% @doc Provides a list of operations in progress or queued.
%%
%% For usage examples, see ListControlOperation examples:
%% https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html#list-control-operations-api-examples.
-spec list_control_operations(aws_client:aws_client(), list_control_operations_input()) ->
    {ok, list_control_operations_output(), tuple()} |
    {error, any()} |
    {error, list_control_operations_errors(), tuple()}.
list_control_operations(Client, Input) ->
    list_control_operations(Client, Input, []).

-spec list_control_operations(aws_client:aws_client(), list_control_operations_input(), proplists:proplist()) ->
    {ok, list_control_operations_output(), tuple()} |
    {error, any()} |
    {error, list_control_operations_errors(), tuple()}.
list_control_operations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-control-operations"],
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

%% @doc Returns a list of summaries describing `EnabledBaseline'
%% resources.
%%
%% You can filter the list by the corresponding `Baseline' or
%% `Target' of the `EnabledBaseline' resources. For usage examples,
%% see
%% the Amazon Web Services Control Tower User Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html.
-spec list_enabled_baselines(aws_client:aws_client(), list_enabled_baselines_input()) ->
    {ok, list_enabled_baselines_output(), tuple()} |
    {error, any()} |
    {error, list_enabled_baselines_errors(), tuple()}.
list_enabled_baselines(Client, Input) ->
    list_enabled_baselines(Client, Input, []).

-spec list_enabled_baselines(aws_client:aws_client(), list_enabled_baselines_input(), proplists:proplist()) ->
    {ok, list_enabled_baselines_output(), tuple()} |
    {error, any()} |
    {error, list_enabled_baselines_errors(), tuple()}.
list_enabled_baselines(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-enabled-baselines"],
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

%% @doc Lists the controls enabled by Amazon Web Services Control Tower on
%% the specified organizational unit and
%% the accounts it contains.
%%
%% For usage examples, see the
%% Controls Reference Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html.
-spec list_enabled_controls(aws_client:aws_client(), list_enabled_controls_input()) ->
    {ok, list_enabled_controls_output(), tuple()} |
    {error, any()} |
    {error, list_enabled_controls_errors(), tuple()}.
list_enabled_controls(Client, Input) ->
    list_enabled_controls(Client, Input, []).

-spec list_enabled_controls(aws_client:aws_client(), list_enabled_controls_input(), proplists:proplist()) ->
    {ok, list_enabled_controls_output(), tuple()} |
    {error, any()} |
    {error, list_enabled_controls_errors(), tuple()}.
list_enabled_controls(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-enabled-controls"],
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

%% @doc Lists all landing zone operations from the past 90 days.
%%
%% Results are sorted by time, with the most recent operation first.
-spec list_landing_zone_operations(aws_client:aws_client(), list_landing_zone_operations_input()) ->
    {ok, list_landing_zone_operations_output(), tuple()} |
    {error, any()} |
    {error, list_landing_zone_operations_errors(), tuple()}.
list_landing_zone_operations(Client, Input) ->
    list_landing_zone_operations(Client, Input, []).

-spec list_landing_zone_operations(aws_client:aws_client(), list_landing_zone_operations_input(), proplists:proplist()) ->
    {ok, list_landing_zone_operations_output(), tuple()} |
    {error, any()} |
    {error, list_landing_zone_operations_errors(), tuple()}.
list_landing_zone_operations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-landingzone-operations"],
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

%% @doc Returns the landing zone ARN for the landing zone deployed in your
%% managed account.
%%
%% This API also
%% creates an ARN for existing accounts that do not yet have a landing zone
%% ARN.
%%
%% Returns one landing zone ARN.
-spec list_landing_zones(aws_client:aws_client(), list_landing_zones_input()) ->
    {ok, list_landing_zones_output(), tuple()} |
    {error, any()} |
    {error, list_landing_zones_errors(), tuple()}.
list_landing_zones(Client, Input) ->
    list_landing_zones(Client, Input, []).

-spec list_landing_zones(aws_client:aws_client(), list_landing_zones_input(), proplists:proplist()) ->
    {ok, list_landing_zones_output(), tuple()} |
    {error, any()} |
    {error, list_landing_zones_errors(), tuple()}.
list_landing_zones(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-landingzones"],
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

%% @doc Returns a list of tags associated with the resource.
%%
%% For usage examples, see the
%% Controls Reference Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html.
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

%% @doc Re-enables an `EnabledBaseline' resource.
%%
%% For example, this API can re-apply the existing `Baseline' after a new
%% member account is moved to the target OU. For usage examples, see
%% the Amazon Web Services Control Tower User Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html.
-spec reset_enabled_baseline(aws_client:aws_client(), reset_enabled_baseline_input()) ->
    {ok, reset_enabled_baseline_output(), tuple()} |
    {error, any()} |
    {error, reset_enabled_baseline_errors(), tuple()}.
reset_enabled_baseline(Client, Input) ->
    reset_enabled_baseline(Client, Input, []).

-spec reset_enabled_baseline(aws_client:aws_client(), reset_enabled_baseline_input(), proplists:proplist()) ->
    {ok, reset_enabled_baseline_output(), tuple()} |
    {error, any()} |
    {error, reset_enabled_baseline_errors(), tuple()}.
reset_enabled_baseline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/reset-enabled-baseline"],
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

%% @doc Resets an enabled control.
-spec reset_enabled_control(aws_client:aws_client(), reset_enabled_control_input()) ->
    {ok, reset_enabled_control_output(), tuple()} |
    {error, any()} |
    {error, reset_enabled_control_errors(), tuple()}.
reset_enabled_control(Client, Input) ->
    reset_enabled_control(Client, Input, []).

-spec reset_enabled_control(aws_client:aws_client(), reset_enabled_control_input(), proplists:proplist()) ->
    {ok, reset_enabled_control_output(), tuple()} |
    {error, any()} |
    {error, reset_enabled_control_errors(), tuple()}.
reset_enabled_control(Client, Input0, Options0) ->
    Method = post,
    Path = ["/reset-enabled-control"],
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

%% @doc This API call resets a landing zone.
%%
%% It starts an asynchronous operation that resets the
%% landing zone to the parameters specified in the original configuration,
%% which you specified
%% in the manifest file. Nothing in the manifest file's original landing
%% zone configuration is changed
%% during the reset process, by default. This API is not the same as a
%% rollback of a landing
%% zone version, which is not a supported operation.
-spec reset_landing_zone(aws_client:aws_client(), reset_landing_zone_input()) ->
    {ok, reset_landing_zone_output(), tuple()} |
    {error, any()} |
    {error, reset_landing_zone_errors(), tuple()}.
reset_landing_zone(Client, Input) ->
    reset_landing_zone(Client, Input, []).

-spec reset_landing_zone(aws_client:aws_client(), reset_landing_zone_input(), proplists:proplist()) ->
    {ok, reset_landing_zone_output(), tuple()} |
    {error, any()} |
    {error, reset_landing_zone_errors(), tuple()}.
reset_landing_zone(Client, Input0, Options0) ->
    Method = post,
    Path = ["/reset-landingzone"],
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

%% @doc Applies tags to a resource.
%%
%% For usage examples, see the
%% Controls Reference Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html.
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

%% @doc Removes tags from a resource.
%%
%% For usage examples, see the
%% Controls Reference Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html.
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

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an `EnabledBaseline' resource's applied parameters or
%% version.
%%
%% For usage examples, see
%% the Amazon Web Services Control Tower User Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/userguide/baseline-api-examples.html.
-spec update_enabled_baseline(aws_client:aws_client(), update_enabled_baseline_input()) ->
    {ok, update_enabled_baseline_output(), tuple()} |
    {error, any()} |
    {error, update_enabled_baseline_errors(), tuple()}.
update_enabled_baseline(Client, Input) ->
    update_enabled_baseline(Client, Input, []).

-spec update_enabled_baseline(aws_client:aws_client(), update_enabled_baseline_input(), proplists:proplist()) ->
    {ok, update_enabled_baseline_output(), tuple()} |
    {error, any()} |
    {error, update_enabled_baseline_errors(), tuple()}.
update_enabled_baseline(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-enabled-baseline"],
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
%% Updates the configuration of an already enabled control.
%%
%% If the enabled control shows an `EnablementStatus' of SUCCEEDED,
%% supply parameters that are different from the currently configured
%% parameters. Otherwise, Amazon Web Services Control Tower will not accept
%% the request.
%%
%% If the enabled control shows an `EnablementStatus' of FAILED, Amazon
%% Web Services Control Tower updates the control to match any valid
%% parameters that you supply.
%%
%% If the `DriftSummary' status for the control shows as `DRIFTED',
%% you cannot call this API. Instead, you can update the control by calling
%% the `ResetEnabledControl' API. Alternatively, you can call
%% `DisableControl' and then call `EnableControl' again. Also, you
%% can run an extending governance operation to repair drift. For usage
%% examples, see the
%% Controls Reference Guide
%% :
%% https://docs.aws.amazon.com/controltower/latest/controlreference/control-api-examples-short.html.
-spec update_enabled_control(aws_client:aws_client(), update_enabled_control_input()) ->
    {ok, update_enabled_control_output(), tuple()} |
    {error, any()} |
    {error, update_enabled_control_errors(), tuple()}.
update_enabled_control(Client, Input) ->
    update_enabled_control(Client, Input, []).

-spec update_enabled_control(aws_client:aws_client(), update_enabled_control_input(), proplists:proplist()) ->
    {ok, update_enabled_control_output(), tuple()} |
    {error, any()} |
    {error, update_enabled_control_errors(), tuple()}.
update_enabled_control(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-enabled-control"],
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

%% @doc This API call updates the landing zone.
%%
%% It starts an asynchronous operation that updates the
%% landing zone based on the new landing zone version, or on the changed
%% parameters specified in the
%% updated manifest file.
-spec update_landing_zone(aws_client:aws_client(), update_landing_zone_input()) ->
    {ok, update_landing_zone_output(), tuple()} |
    {error, any()} |
    {error, update_landing_zone_errors(), tuple()}.
update_landing_zone(Client, Input) ->
    update_landing_zone(Client, Input, []).

-spec update_landing_zone(aws_client:aws_client(), update_landing_zone_input(), proplists:proplist()) ->
    {ok, update_landing_zone_output(), tuple()} |
    {error, any()} |
    {error, update_landing_zone_errors(), tuple()}.
update_landing_zone(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-landingzone"],
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
    Client1 = Client#{service => <<"controltower">>},
    Host = build_host(<<"controltower">>, Client1),
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
