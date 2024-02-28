%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Inspector is a vulnerability discovery service that automates
%% continuous scanning for security vulnerabilities within your Amazon EC2,
%% Amazon ECR, and Amazon Web Services Lambda environments.
-module(aws_inspector2).

-export([associate_member/2,
         associate_member/3,
         batch_get_account_status/2,
         batch_get_account_status/3,
         batch_get_code_snippet/2,
         batch_get_code_snippet/3,
         batch_get_finding_details/2,
         batch_get_finding_details/3,
         batch_get_free_trial_info/2,
         batch_get_free_trial_info/3,
         batch_get_member_ec2_deep_inspection_status/2,
         batch_get_member_ec2_deep_inspection_status/3,
         batch_update_member_ec2_deep_inspection_status/2,
         batch_update_member_ec2_deep_inspection_status/3,
         cancel_findings_report/2,
         cancel_findings_report/3,
         cancel_sbom_export/2,
         cancel_sbom_export/3,
         create_cis_scan_configuration/2,
         create_cis_scan_configuration/3,
         create_filter/2,
         create_filter/3,
         create_findings_report/2,
         create_findings_report/3,
         create_sbom_export/2,
         create_sbom_export/3,
         delete_cis_scan_configuration/2,
         delete_cis_scan_configuration/3,
         delete_filter/2,
         delete_filter/3,
         describe_organization_configuration/2,
         describe_organization_configuration/3,
         disable/2,
         disable/3,
         disable_delegated_admin_account/2,
         disable_delegated_admin_account/3,
         disassociate_member/2,
         disassociate_member/3,
         enable/2,
         enable/3,
         enable_delegated_admin_account/2,
         enable_delegated_admin_account/3,
         get_cis_scan_report/2,
         get_cis_scan_report/3,
         get_cis_scan_result_details/2,
         get_cis_scan_result_details/3,
         get_configuration/2,
         get_configuration/3,
         get_delegated_admin_account/2,
         get_delegated_admin_account/3,
         get_ec2_deep_inspection_configuration/2,
         get_ec2_deep_inspection_configuration/3,
         get_encryption_key/3,
         get_encryption_key/5,
         get_encryption_key/6,
         get_findings_report_status/2,
         get_findings_report_status/3,
         get_member/2,
         get_member/3,
         get_sbom_export/2,
         get_sbom_export/3,
         list_account_permissions/2,
         list_account_permissions/3,
         list_cis_scan_configurations/2,
         list_cis_scan_configurations/3,
         list_cis_scan_results_aggregated_by_checks/2,
         list_cis_scan_results_aggregated_by_checks/3,
         list_cis_scan_results_aggregated_by_target_resource/2,
         list_cis_scan_results_aggregated_by_target_resource/3,
         list_cis_scans/2,
         list_cis_scans/3,
         list_coverage/2,
         list_coverage/3,
         list_coverage_statistics/2,
         list_coverage_statistics/3,
         list_delegated_admin_accounts/2,
         list_delegated_admin_accounts/3,
         list_filters/2,
         list_filters/3,
         list_finding_aggregations/2,
         list_finding_aggregations/3,
         list_findings/2,
         list_findings/3,
         list_members/2,
         list_members/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_usage_totals/2,
         list_usage_totals/3,
         reset_encryption_key/2,
         reset_encryption_key/3,
         search_vulnerabilities/2,
         search_vulnerabilities/3,
         send_cis_session_health/2,
         send_cis_session_health/3,
         send_cis_session_telemetry/2,
         send_cis_session_telemetry/3,
         start_cis_session/2,
         start_cis_session/3,
         stop_cis_session/2,
         stop_cis_session/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_cis_scan_configuration/2,
         update_cis_scan_configuration/3,
         update_configuration/2,
         update_configuration/3,
         update_ec2_deep_inspection_configuration/2,
         update_ec2_deep_inspection_configuration/3,
         update_encryption_key/2,
         update_encryption_key/3,
         update_filter/2,
         update_filter/3,
         update_org_ec2_deep_inspection_configuration/2,
         update_org_ec2_deep_inspection_configuration/3,
         update_organization_configuration/2,
         update_organization_configuration/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates an Amazon Web Services account with an Amazon Inspector
%% delegated administrator.
%%
%% An HTTP 200 response indicates the association was successfully started,
%% but doesn’t indicate whether it was completed. You can check if the
%% association completed by using ListMembers:
%% https://docs.aws.amazon.com/inspector/v2/APIReference/API_ListMembers.html
%% for multiple accounts or GetMembers:
%% https://docs.aws.amazon.com/inspector/v2/APIReference/API_GetMember.html
%% for a single account.
associate_member(Client, Input) ->
    associate_member(Client, Input, []).
associate_member(Client, Input0, Options0) ->
    Method = post,
    Path = ["/members/associate"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the Amazon Inspector status of multiple Amazon Web Services
%% accounts within your environment.
batch_get_account_status(Client, Input) ->
    batch_get_account_status(Client, Input, []).
batch_get_account_status(Client, Input0, Options0) ->
    Method = post,
    Path = ["/status/batch/get"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves code snippets from findings that Amazon Inspector detected
%% code vulnerabilities in.
batch_get_code_snippet(Client, Input) ->
    batch_get_code_snippet(Client, Input, []).
batch_get_code_snippet(Client, Input0, Options0) ->
    Method = post,
    Path = ["/codesnippet/batchget"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets vulnerability details for findings.
batch_get_finding_details(Client, Input) ->
    batch_get_finding_details(Client, Input, []).
batch_get_finding_details(Client, Input0, Options0) ->
    Method = post,
    Path = ["/findings/details/batch/get"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets free trial status for multiple Amazon Web Services accounts.
batch_get_free_trial_info(Client, Input) ->
    batch_get_free_trial_info(Client, Input, []).
batch_get_free_trial_info(Client, Input0, Options0) ->
    Method = post,
    Path = ["/freetrialinfo/batchget"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves Amazon Inspector deep inspection activation status of
%% multiple member accounts within your organization.
%%
%% You must be the delegated administrator of an organization in Amazon
%% Inspector to use this API.
batch_get_member_ec2_deep_inspection_status(Client, Input) ->
    batch_get_member_ec2_deep_inspection_status(Client, Input, []).
batch_get_member_ec2_deep_inspection_status(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ec2deepinspectionstatus/member/batch/get"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Activates or deactivates Amazon Inspector deep inspection for the
%% provided member accounts in your organization.
%%
%% You must be the delegated administrator of an organization in Amazon
%% Inspector to use this API.
batch_update_member_ec2_deep_inspection_status(Client, Input) ->
    batch_update_member_ec2_deep_inspection_status(Client, Input, []).
batch_update_member_ec2_deep_inspection_status(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ec2deepinspectionstatus/member/batch/update"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels the given findings report.
cancel_findings_report(Client, Input) ->
    cancel_findings_report(Client, Input, []).
cancel_findings_report(Client, Input0, Options0) ->
    Method = post,
    Path = ["/reporting/cancel"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Cancels a software bill of materials (SBOM) report.
cancel_sbom_export(Client, Input) ->
    cancel_sbom_export(Client, Input, []).
cancel_sbom_export(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sbomexport/cancel"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a CIS scan configuration.
create_cis_scan_configuration(Client, Input) ->
    create_cis_scan_configuration(Client, Input, []).
create_cis_scan_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cis/scan-configuration/create"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a filter resource using specified filter criteria.
%%
%% When the filter action is set to `SUPPRESS' this action creates a
%% suppression rule.
create_filter(Client, Input) ->
    create_filter(Client, Input, []).
create_filter(Client, Input0, Options0) ->
    Method = post,
    Path = ["/filters/create"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a finding report.
%%
%% By default only `ACTIVE' findings are returned in the report. To see
%% `SUPRESSED' or `CLOSED' findings you must specify a value for the
%% `findingStatus' filter criteria.
create_findings_report(Client, Input) ->
    create_findings_report(Client, Input, []).
create_findings_report(Client, Input0, Options0) ->
    Method = post,
    Path = ["/reporting/create"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a software bill of materials (SBOM) report.
create_sbom_export(Client, Input) ->
    create_sbom_export(Client, Input, []).
create_sbom_export(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sbomexport/create"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a CIS scan configuration.
delete_cis_scan_configuration(Client, Input) ->
    delete_cis_scan_configuration(Client, Input, []).
delete_cis_scan_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cis/scan-configuration/delete"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a filter resource.
delete_filter(Client, Input) ->
    delete_filter(Client, Input, []).
delete_filter(Client, Input0, Options0) ->
    Method = post,
    Path = ["/filters/delete"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describe Amazon Inspector configuration settings for an Amazon Web
%% Services organization.
describe_organization_configuration(Client, Input) ->
    describe_organization_configuration(Client, Input, []).
describe_organization_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/organizationconfiguration/describe"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables Amazon Inspector scans for one or more Amazon Web Services
%% accounts.
%%
%% Disabling all scan types in an account disables the Amazon Inspector
%% service.
disable(Client, Input) ->
    disable(Client, Input, []).
disable(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disable"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables the Amazon Inspector delegated administrator for your
%% organization.
disable_delegated_admin_account(Client, Input) ->
    disable_delegated_admin_account(Client, Input, []).
disable_delegated_admin_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delegatedadminaccounts/disable"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a member account from an Amazon Inspector delegated
%% administrator.
disassociate_member(Client, Input) ->
    disassociate_member(Client, Input, []).
disassociate_member(Client, Input0, Options0) ->
    Method = post,
    Path = ["/members/disassociate"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables Amazon Inspector scans for one or more Amazon Web Services
%% accounts.
enable(Client, Input) ->
    enable(Client, Input, []).
enable(Client, Input0, Options0) ->
    Method = post,
    Path = ["/enable"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables the Amazon Inspector delegated administrator for your
%% Organizations organization.
enable_delegated_admin_account(Client, Input) ->
    enable_delegated_admin_account(Client, Input, []).
enable_delegated_admin_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delegatedadminaccounts/enable"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a CIS scan report.
get_cis_scan_report(Client, Input) ->
    get_cis_scan_report(Client, Input, []).
get_cis_scan_report(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cis/scan/report/get"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves CIS scan result details.
get_cis_scan_result_details(Client, Input) ->
    get_cis_scan_result_details(Client, Input, []).
get_cis_scan_result_details(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cis/scan-result/details/get"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves setting configurations for Inspector scans.
get_configuration(Client, Input) ->
    get_configuration(Client, Input, []).
get_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configuration/get"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves information about the Amazon Inspector delegated
%% administrator for your organization.
get_delegated_admin_account(Client, Input) ->
    get_delegated_admin_account(Client, Input, []).
get_delegated_admin_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delegatedadminaccounts/get"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the activation status of Amazon Inspector deep inspection
%% and custom paths associated with your account.
get_ec2_deep_inspection_configuration(Client, Input) ->
    get_ec2_deep_inspection_configuration(Client, Input, []).
get_ec2_deep_inspection_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ec2deepinspectionconfiguration/get"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets an encryption key.
get_encryption_key(Client, ResourceType, ScanType)
  when is_map(Client) ->
    get_encryption_key(Client, ResourceType, ScanType, #{}, #{}).

get_encryption_key(Client, ResourceType, ScanType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_encryption_key(Client, ResourceType, ScanType, QueryMap, HeadersMap, []).

get_encryption_key(Client, ResourceType, ScanType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/encryptionkey/get"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"resourceType">>, ResourceType},
        {<<"scanType">>, ScanType}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the status of a findings report.
get_findings_report_status(Client, Input) ->
    get_findings_report_status(Client, Input, []).
get_findings_report_status(Client, Input0, Options0) ->
    Method = post,
    Path = ["/reporting/status/get"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets member information for your organization.
get_member(Client, Input) ->
    get_member(Client, Input, []).
get_member(Client, Input0, Options0) ->
    Method = post,
    Path = ["/members/get"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets details of a software bill of materials (SBOM) report.
get_sbom_export(Client, Input) ->
    get_sbom_export(Client, Input, []).
get_sbom_export(Client, Input0, Options0) ->
    Method = post,
    Path = ["/sbomexport/get"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the permissions an account has to configure Amazon Inspector.
list_account_permissions(Client, Input) ->
    list_account_permissions(Client, Input, []).
list_account_permissions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/accountpermissions/list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists CIS scan configurations.
list_cis_scan_configurations(Client, Input) ->
    list_cis_scan_configurations(Client, Input, []).
list_cis_scan_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cis/scan-configuration/list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists scan results aggregated by checks.
list_cis_scan_results_aggregated_by_checks(Client, Input) ->
    list_cis_scan_results_aggregated_by_checks(Client, Input, []).
list_cis_scan_results_aggregated_by_checks(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cis/scan-result/check/list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists scan results aggregated by a target resource.
list_cis_scan_results_aggregated_by_target_resource(Client, Input) ->
    list_cis_scan_results_aggregated_by_target_resource(Client, Input, []).
list_cis_scan_results_aggregated_by_target_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cis/scan-result/resource/list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a CIS scan list.
list_cis_scans(Client, Input) ->
    list_cis_scans(Client, Input, []).
list_cis_scans(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cis/scan/list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists coverage details for you environment.
list_coverage(Client, Input) ->
    list_coverage(Client, Input, []).
list_coverage(Client, Input0, Options0) ->
    Method = post,
    Path = ["/coverage/list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists Amazon Inspector coverage statistics for your environment.
list_coverage_statistics(Client, Input) ->
    list_coverage_statistics(Client, Input, []).
list_coverage_statistics(Client, Input0, Options0) ->
    Method = post,
    Path = ["/coverage/statistics/list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists information about the Amazon Inspector delegated administrator
%% of your organization.
list_delegated_admin_accounts(Client, Input) ->
    list_delegated_admin_accounts(Client, Input, []).
list_delegated_admin_accounts(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delegatedadminaccounts/list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the filters associated with your account.
list_filters(Client, Input) ->
    list_filters(Client, Input, []).
list_filters(Client, Input0, Options0) ->
    Method = post,
    Path = ["/filters/list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists aggregated finding data for your environment based on specific
%% criteria.
list_finding_aggregations(Client, Input) ->
    list_finding_aggregations(Client, Input, []).
list_finding_aggregations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/findings/aggregation/list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists findings for your environment.
list_findings(Client, Input) ->
    list_findings(Client, Input, []).
list_findings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/findings/list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc List members associated with the Amazon Inspector delegated
%% administrator for your organization.
list_members(Client, Input) ->
    list_members(Client, Input, []).
list_members(Client, Input0, Options0) ->
    Method = post,
    Path = ["/members/list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all tags attached to a given resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon Inspector usage totals over the last 30 days.
list_usage_totals(Client, Input) ->
    list_usage_totals(Client, Input, []).
list_usage_totals(Client, Input0, Options0) ->
    Method = post,
    Path = ["/usage/list"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Resets an encryption key.
%%
%% After the key is reset your resources will be encrypted by an Amazon Web
%% Services owned key.
reset_encryption_key(Client, Input) ->
    reset_encryption_key(Client, Input, []).
reset_encryption_key(Client, Input0, Options0) ->
    Method = put,
    Path = ["/encryptionkey/reset"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists Amazon Inspector coverage details for a specific vulnerability.
search_vulnerabilities(Client, Input) ->
    search_vulnerabilities(Client, Input, []).
search_vulnerabilities(Client, Input0, Options0) ->
    Method = post,
    Path = ["/vulnerabilities/search"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sends a CIS session health.
%%
%% This API is used by the Amazon Inspector SSM plugin to communicate with
%% the Amazon Inspector service. The Amazon Inspector SSM plugin calls this
%% API to start a CIS scan session for the scan ID supplied by the service.
send_cis_session_health(Client, Input) ->
    send_cis_session_health(Client, Input, []).
send_cis_session_health(Client, Input0, Options0) ->
    Method = put,
    Path = ["/cissession/health/send"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Sends a CIS session telemetry.
%%
%% This API is used by the Amazon Inspector SSM plugin to communicate with
%% the Amazon Inspector service. The Amazon Inspector SSM plugin calls this
%% API to start a CIS scan session for the scan ID supplied by the service.
send_cis_session_telemetry(Client, Input) ->
    send_cis_session_telemetry(Client, Input, []).
send_cis_session_telemetry(Client, Input0, Options0) ->
    Method = put,
    Path = ["/cissession/telemetry/send"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts a CIS session.
%%
%% This API is used by the Amazon Inspector SSM plugin to communicate with
%% the Amazon Inspector service. The Amazon Inspector SSM plugin calls this
%% API to start a CIS scan session for the scan ID supplied by the service.
start_cis_session(Client, Input) ->
    start_cis_session(Client, Input, []).
start_cis_session(Client, Input0, Options0) ->
    Method = put,
    Path = ["/cissession/start"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stops a CIS session.
%%
%% This API is used by the Amazon Inspector SSM plugin to communicate with
%% the Amazon Inspector service. The Amazon Inspector SSM plugin calls this
%% API to start a CIS scan session for the scan ID supplied by the service.
stop_cis_session(Client, Input) ->
    stop_cis_session(Client, Input, []).
stop_cis_session(Client, Input0, Options0) ->
    Method = put,
    Path = ["/cissession/stop"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Adds tags to a resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a CIS scan configuration.
update_cis_scan_configuration(Client, Input) ->
    update_cis_scan_configuration(Client, Input, []).
update_cis_scan_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/cis/scan-configuration/update"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates setting configurations for your Amazon Inspector account.
%%
%% When you use this API as an Amazon Inspector delegated administrator this
%% updates the setting for all accounts you manage. Member accounts in an
%% organization cannot update this setting.
update_configuration(Client, Input) ->
    update_configuration(Client, Input, []).
update_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/configuration/update"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Activates, deactivates Amazon Inspector deep inspection, or updates
%% custom paths for your account.
update_ec2_deep_inspection_configuration(Client, Input) ->
    update_ec2_deep_inspection_configuration(Client, Input, []).
update_ec2_deep_inspection_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ec2deepinspectionconfiguration/update"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates an encryption key.
%%
%% A `ResourceNotFoundException' means that an Amazon Web Services owned
%% key is being used for encryption.
update_encryption_key(Client, Input) ->
    update_encryption_key(Client, Input, []).
update_encryption_key(Client, Input0, Options0) ->
    Method = put,
    Path = ["/encryptionkey/update"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Specifies the action that is to be applied to the findings that match
%% the filter.
update_filter(Client, Input) ->
    update_filter(Client, Input, []).
update_filter(Client, Input0, Options0) ->
    Method = post,
    Path = ["/filters/update"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the Amazon Inspector deep inspection custom paths for your
%% organization.
%%
%% You must be an Amazon Inspector delegated administrator to use this API.
update_org_ec2_deep_inspection_configuration(Client, Input) ->
    update_org_ec2_deep_inspection_configuration(Client, Input, []).
update_org_ec2_deep_inspection_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ec2deepinspectionconfiguration/org/update"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the configurations for your Amazon Inspector organization.
update_organization_configuration(Client, Input) ->
    update_organization_configuration(Client, Input, []).
update_organization_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/organizationconfiguration/update"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
    Client1 = Client#{service => <<"inspector2">>},
    Host = build_host(<<"inspector2">>, Client1),
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
