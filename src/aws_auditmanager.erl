%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the AWS Audit Manager API reference.
%%
%% This guide is for developers who need detailed information about the AWS
%% Audit Manager API operations, data types, and errors.
%%
%% AWS Audit Manager is a service that provides automated evidence collection
%% so that you can continuously audit your AWS usage, and assess the
%% effectiveness of your controls to better manage risk and simplify
%% compliance.
%%
%% AWS Audit Manager provides pre-built frameworks that structure and
%% automate assessments for a given compliance standard. Frameworks include a
%% pre-built collection of controls with descriptions and testing procedures,
%% which are grouped according to the requirements of the specified
%% compliance standard or regulation. You can also customize frameworks and
%% controls to support internal audits with unique requirements.
%%
%% Use the following links to get started with the AWS Audit Manager API:
%%
%% <ul> <li> Actions: An alphabetical list of all AWS Audit Manager API
%% operations.
%%
%% </li> <li> Data types: An alphabetical list of all AWS Audit Manager data
%% types.
%%
%% </li> <li> Common parameters: Parameters that all Query operations can
%% use.
%%
%% </li> <li> Common errors: Client and server errors that all operations can
%% return.
%%
%% </li> </ul> If you're new to AWS Audit Manager, we recommend that you
%% review the AWS Audit Manager User Guide.
-module(aws_auditmanager).

-export([associate_assessment_report_evidence_folder/3,
         associate_assessment_report_evidence_folder/4,
         batch_associate_assessment_report_evidence/3,
         batch_associate_assessment_report_evidence/4,
         batch_create_delegation_by_assessment/3,
         batch_create_delegation_by_assessment/4,
         batch_delete_delegation_by_assessment/3,
         batch_delete_delegation_by_assessment/4,
         batch_disassociate_assessment_report_evidence/3,
         batch_disassociate_assessment_report_evidence/4,
         batch_import_evidence_to_assessment_control/5,
         batch_import_evidence_to_assessment_control/6,
         create_assessment/2,
         create_assessment/3,
         create_assessment_framework/2,
         create_assessment_framework/3,
         create_assessment_report/3,
         create_assessment_report/4,
         create_control/2,
         create_control/3,
         delete_assessment/3,
         delete_assessment/4,
         delete_assessment_framework/3,
         delete_assessment_framework/4,
         delete_assessment_report/4,
         delete_assessment_report/5,
         delete_control/3,
         delete_control/4,
         deregister_account/2,
         deregister_account/3,
         deregister_organization_admin_account/2,
         deregister_organization_admin_account/3,
         disassociate_assessment_report_evidence_folder/3,
         disassociate_assessment_report_evidence_folder/4,
         get_account_status/1,
         get_account_status/2,
         get_assessment/2,
         get_assessment/3,
         get_assessment_framework/2,
         get_assessment_framework/3,
         get_assessment_report_url/3,
         get_assessment_report_url/4,
         get_change_logs/6,
         get_change_logs/7,
         get_control/2,
         get_control/3,
         get_delegations/3,
         get_delegations/4,
         get_evidence/5,
         get_evidence/6,
         get_evidence_by_evidence_folder/6,
         get_evidence_by_evidence_folder/7,
         get_evidence_folder/4,
         get_evidence_folder/5,
         get_evidence_folders_by_assessment/4,
         get_evidence_folders_by_assessment/5,
         get_evidence_folders_by_assessment_control/6,
         get_evidence_folders_by_assessment_control/7,
         get_organization_admin_account/1,
         get_organization_admin_account/2,
         get_services_in_scope/1,
         get_services_in_scope/2,
         get_settings/2,
         get_settings/3,
         list_assessment_frameworks/4,
         list_assessment_frameworks/5,
         list_assessment_reports/3,
         list_assessment_reports/4,
         list_assessments/3,
         list_assessments/4,
         list_controls/4,
         list_controls/5,
         list_keywords_for_data_source/4,
         list_keywords_for_data_source/5,
         list_notifications/3,
         list_notifications/4,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         register_account/2,
         register_account/3,
         register_organization_admin_account/2,
         register_organization_admin_account/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_assessment/3,
         update_assessment/4,
         update_assessment_control/5,
         update_assessment_control/6,
         update_assessment_control_set_status/4,
         update_assessment_control_set_status/5,
         update_assessment_framework/3,
         update_assessment_framework/4,
         update_assessment_status/3,
         update_assessment_status/4,
         update_control/3,
         update_control/4,
         update_settings/2,
         update_settings/3,
         validate_assessment_report_integrity/2,
         validate_assessment_report_integrity/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates an evidence folder to the specified assessment report in
%% AWS Audit Manager.
associate_assessment_report_evidence_folder(Client, AssessmentId, Input) ->
    associate_assessment_report_evidence_folder(Client, AssessmentId, Input, []).
associate_assessment_report_evidence_folder(Client, AssessmentId, Input0, Options) ->
    Method = put,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/associateToAssessmentReport"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Associates a list of evidence to an assessment report in an AWS Audit
%% Manager assessment.
batch_associate_assessment_report_evidence(Client, AssessmentId, Input) ->
    batch_associate_assessment_report_evidence(Client, AssessmentId, Input, []).
batch_associate_assessment_report_evidence(Client, AssessmentId, Input0, Options) ->
    Method = put,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/batchAssociateToAssessmentReport"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Create a batch of delegations for a specified assessment in AWS Audit
%% Manager.
batch_create_delegation_by_assessment(Client, AssessmentId, Input) ->
    batch_create_delegation_by_assessment(Client, AssessmentId, Input, []).
batch_create_delegation_by_assessment(Client, AssessmentId, Input0, Options) ->
    Method = post,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/delegations"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the delegations in the specified AWS Audit Manager
%% assessment.
batch_delete_delegation_by_assessment(Client, AssessmentId, Input) ->
    batch_delete_delegation_by_assessment(Client, AssessmentId, Input, []).
batch_delete_delegation_by_assessment(Client, AssessmentId, Input0, Options) ->
    Method = put,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/delegations"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a list of evidence from the specified assessment report
%% in AWS Audit Manager.
batch_disassociate_assessment_report_evidence(Client, AssessmentId, Input) ->
    batch_disassociate_assessment_report_evidence(Client, AssessmentId, Input, []).
batch_disassociate_assessment_report_evidence(Client, AssessmentId, Input0, Options) ->
    Method = put,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/batchDisassociateFromAssessmentReport"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Uploads one or more pieces of evidence to the specified control in
%% the assessment in AWS Audit Manager.
batch_import_evidence_to_assessment_control(Client, AssessmentId, ControlId, ControlSetId, Input) ->
    batch_import_evidence_to_assessment_control(Client, AssessmentId, ControlId, ControlSetId, Input, []).
batch_import_evidence_to_assessment_control(Client, AssessmentId, ControlId, ControlSetId, Input0, Options) ->
    Method = post,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/controlSets/", aws_util:encode_uri(ControlSetId), "/controls/", aws_util:encode_uri(ControlId), "/evidence"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an assessment in AWS Audit Manager.
create_assessment(Client, Input) ->
    create_assessment(Client, Input, []).
create_assessment(Client, Input0, Options) ->
    Method = post,
    Path = ["/assessments"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a custom framework in AWS Audit Manager.
create_assessment_framework(Client, Input) ->
    create_assessment_framework(Client, Input, []).
create_assessment_framework(Client, Input0, Options) ->
    Method = post,
    Path = ["/assessmentFrameworks"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an assessment report for the specified assessment.
create_assessment_report(Client, AssessmentId, Input) ->
    create_assessment_report(Client, AssessmentId, Input, []).
create_assessment_report(Client, AssessmentId, Input0, Options) ->
    Method = post,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/reports"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new custom control in AWS Audit Manager.
create_control(Client, Input) ->
    create_control(Client, Input, []).
create_control(Client, Input0, Options) ->
    Method = post,
    Path = ["/controls"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an assessment in AWS Audit Manager.
delete_assessment(Client, AssessmentId, Input) ->
    delete_assessment(Client, AssessmentId, Input, []).
delete_assessment(Client, AssessmentId, Input0, Options) ->
    Method = delete,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a custom framework in AWS Audit Manager.
delete_assessment_framework(Client, FrameworkId, Input) ->
    delete_assessment_framework(Client, FrameworkId, Input, []).
delete_assessment_framework(Client, FrameworkId, Input0, Options) ->
    Method = delete,
    Path = ["/assessmentFrameworks/", aws_util:encode_uri(FrameworkId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an assessment report from an assessment in AWS Audit Manager.
delete_assessment_report(Client, AssessmentId, AssessmentReportId, Input) ->
    delete_assessment_report(Client, AssessmentId, AssessmentReportId, Input, []).
delete_assessment_report(Client, AssessmentId, AssessmentReportId, Input0, Options) ->
    Method = delete,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/reports/", aws_util:encode_uri(AssessmentReportId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a custom control in AWS Audit Manager.
delete_control(Client, ControlId, Input) ->
    delete_control(Client, ControlId, Input, []).
delete_control(Client, ControlId, Input0, Options) ->
    Method = delete,
    Path = ["/controls/", aws_util:encode_uri(ControlId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deregisters an account in AWS Audit Manager.
deregister_account(Client, Input) ->
    deregister_account(Client, Input, []).
deregister_account(Client, Input0, Options) ->
    Method = post,
    Path = ["/account/deregisterAccount"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deregisters the delegated AWS administrator account from the AWS
%% organization.
deregister_organization_admin_account(Client, Input) ->
    deregister_organization_admin_account(Client, Input, []).
deregister_organization_admin_account(Client, Input0, Options) ->
    Method = post,
    Path = ["/account/deregisterOrganizationAdminAccount"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates an evidence folder from the specified assessment report
%% in AWS Audit Manager.
disassociate_assessment_report_evidence_folder(Client, AssessmentId, Input) ->
    disassociate_assessment_report_evidence_folder(Client, AssessmentId, Input, []).
disassociate_assessment_report_evidence_folder(Client, AssessmentId, Input0, Options) ->
    Method = put,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/disassociateFromAssessmentReport"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the registration status of an account in AWS Audit Manager.
get_account_status(Client)
  when is_map(Client) ->
    get_account_status(Client, []).
get_account_status(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/account/status"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an assessment from AWS Audit Manager.
get_assessment(Client, AssessmentId)
  when is_map(Client) ->
    get_assessment(Client, AssessmentId, []).
get_assessment(Client, AssessmentId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a framework from AWS Audit Manager.
get_assessment_framework(Client, FrameworkId)
  when is_map(Client) ->
    get_assessment_framework(Client, FrameworkId, []).
get_assessment_framework(Client, FrameworkId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/assessmentFrameworks/", aws_util:encode_uri(FrameworkId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the URL of a specified assessment report in AWS Audit
%% Manager.
get_assessment_report_url(Client, AssessmentId, AssessmentReportId)
  when is_map(Client) ->
    get_assessment_report_url(Client, AssessmentId, AssessmentReportId, []).
get_assessment_report_url(Client, AssessmentId, AssessmentReportId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/reports/", aws_util:encode_uri(AssessmentReportId), "/url"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of changelogs from AWS Audit Manager.
get_change_logs(Client, AssessmentId, ControlId, ControlSetId, MaxResults, NextToken)
  when is_map(Client) ->
    get_change_logs(Client, AssessmentId, ControlId, ControlSetId, MaxResults, NextToken, []).
get_change_logs(Client, AssessmentId, ControlId, ControlSetId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/changelogs"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"controlId">>, ControlId},
        {<<"controlSetId">>, ControlSetId},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a control from AWS Audit Manager.
get_control(Client, ControlId)
  when is_map(Client) ->
    get_control(Client, ControlId, []).
get_control(Client, ControlId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/controls/", aws_util:encode_uri(ControlId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of delegations from an audit owner to a delegate.
get_delegations(Client, MaxResults, NextToken)
  when is_map(Client) ->
    get_delegations(Client, MaxResults, NextToken, []).
get_delegations(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/delegations"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns evidence from AWS Audit Manager.
get_evidence(Client, AssessmentId, ControlSetId, EvidenceFolderId, EvidenceId)
  when is_map(Client) ->
    get_evidence(Client, AssessmentId, ControlSetId, EvidenceFolderId, EvidenceId, []).
get_evidence(Client, AssessmentId, ControlSetId, EvidenceFolderId, EvidenceId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/controlSets/", aws_util:encode_uri(ControlSetId), "/evidenceFolders/", aws_util:encode_uri(EvidenceFolderId), "/evidence/", aws_util:encode_uri(EvidenceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns all evidence from a specified evidence folder in AWS Audit
%% Manager.
get_evidence_by_evidence_folder(Client, AssessmentId, ControlSetId, EvidenceFolderId, MaxResults, NextToken)
  when is_map(Client) ->
    get_evidence_by_evidence_folder(Client, AssessmentId, ControlSetId, EvidenceFolderId, MaxResults, NextToken, []).
get_evidence_by_evidence_folder(Client, AssessmentId, ControlSetId, EvidenceFolderId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/controlSets/", aws_util:encode_uri(ControlSetId), "/evidenceFolders/", aws_util:encode_uri(EvidenceFolderId), "/evidence"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns an evidence folder from the specified assessment in AWS Audit
%% Manager.
get_evidence_folder(Client, AssessmentId, ControlSetId, EvidenceFolderId)
  when is_map(Client) ->
    get_evidence_folder(Client, AssessmentId, ControlSetId, EvidenceFolderId, []).
get_evidence_folder(Client, AssessmentId, ControlSetId, EvidenceFolderId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/controlSets/", aws_util:encode_uri(ControlSetId), "/evidenceFolders/", aws_util:encode_uri(EvidenceFolderId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the evidence folders from a specified assessment in AWS Audit
%% Manager.
get_evidence_folders_by_assessment(Client, AssessmentId, MaxResults, NextToken)
  when is_map(Client) ->
    get_evidence_folders_by_assessment(Client, AssessmentId, MaxResults, NextToken, []).
get_evidence_folders_by_assessment(Client, AssessmentId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/evidenceFolders"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of evidence folders associated with a specified
%% control of an assessment in AWS Audit Manager.
get_evidence_folders_by_assessment_control(Client, AssessmentId, ControlId, ControlSetId, MaxResults, NextToken)
  when is_map(Client) ->
    get_evidence_folders_by_assessment_control(Client, AssessmentId, ControlId, ControlSetId, MaxResults, NextToken, []).
get_evidence_folders_by_assessment_control(Client, AssessmentId, ControlId, ControlSetId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/evidenceFolders-by-assessment-control/", aws_util:encode_uri(ControlSetId), "/", aws_util:encode_uri(ControlId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the name of the delegated AWS administrator account for the
%% AWS organization.
get_organization_admin_account(Client)
  when is_map(Client) ->
    get_organization_admin_account(Client, []).
get_organization_admin_account(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/account/organizationAdminAccount"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the in-scope AWS services for the specified
%% assessment.
get_services_in_scope(Client)
  when is_map(Client) ->
    get_services_in_scope(Client, []).
get_services_in_scope(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/services"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the settings for the specified AWS account.
get_settings(Client, Attribute)
  when is_map(Client) ->
    get_settings(Client, Attribute, []).
get_settings(Client, Attribute, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/settings/", aws_util:encode_uri(Attribute), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of the frameworks available in the AWS Audit Manager
%% framework library.
list_assessment_frameworks(Client, FrameworkType, MaxResults, NextToken)
  when is_map(Client) ->
    list_assessment_frameworks(Client, FrameworkType, MaxResults, NextToken, []).
list_assessment_frameworks(Client, FrameworkType, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/assessmentFrameworks"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"frameworkType">>, FrameworkType},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of assessment reports created in AWS Audit Manager.
list_assessment_reports(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_assessment_reports(Client, MaxResults, NextToken, []).
list_assessment_reports(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/assessmentReports"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of current and past assessments from AWS Audit
%% Manager.
list_assessments(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_assessments(Client, MaxResults, NextToken, []).
list_assessments(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/assessments"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of controls from AWS Audit Manager.
list_controls(Client, ControlType, MaxResults, NextToken)
  when is_map(Client) ->
    list_controls(Client, ControlType, MaxResults, NextToken, []).
list_controls(Client, ControlType, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/controls"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"controlType">>, ControlType},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of keywords that pre-mapped to the specified control
%% data source.
list_keywords_for_data_source(Client, MaxResults, NextToken, Source)
  when is_map(Client) ->
    list_keywords_for_data_source(Client, MaxResults, NextToken, Source, []).
list_keywords_for_data_source(Client, MaxResults, NextToken, Source, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/dataSourceKeywords"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"source">>, Source}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all AWS Audit Manager notifications.
list_notifications(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_notifications(Client, MaxResults, NextToken, []).
list_notifications(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/notifications"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of tags for the specified resource in AWS Audit
%% Manager.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Enables AWS Audit Manager for the specified AWS account.
register_account(Client, Input) ->
    register_account(Client, Input, []).
register_account(Client, Input0, Options) ->
    Method = post,
    Path = ["/account/registerAccount"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Enables an AWS account within the organization as the delegated
%% administrator for AWS Audit Manager.
register_organization_admin_account(Client, Input) ->
    register_organization_admin_account(Client, Input, []).
register_organization_admin_account(Client, Input0, Options) ->
    Method = post,
    Path = ["/account/registerOrganizationAdminAccount"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Tags the specified resource in AWS Audit Manager.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes a tag from a resource in AWS Audit Manager.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Edits an AWS Audit Manager assessment.
update_assessment(Client, AssessmentId, Input) ->
    update_assessment(Client, AssessmentId, Input, []).
update_assessment(Client, AssessmentId, Input0, Options) ->
    Method = put,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a control within an assessment in AWS Audit Manager.
update_assessment_control(Client, AssessmentId, ControlId, ControlSetId, Input) ->
    update_assessment_control(Client, AssessmentId, ControlId, ControlSetId, Input, []).
update_assessment_control(Client, AssessmentId, ControlId, ControlSetId, Input0, Options) ->
    Method = put,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/controlSets/", aws_util:encode_uri(ControlSetId), "/controls/", aws_util:encode_uri(ControlId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the status of a control set in an AWS Audit Manager
%% assessment.
update_assessment_control_set_status(Client, AssessmentId, ControlSetId, Input) ->
    update_assessment_control_set_status(Client, AssessmentId, ControlSetId, Input, []).
update_assessment_control_set_status(Client, AssessmentId, ControlSetId, Input0, Options) ->
    Method = put,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/controlSets/", aws_util:encode_uri(ControlSetId), "/status"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a custom framework in AWS Audit Manager.
update_assessment_framework(Client, FrameworkId, Input) ->
    update_assessment_framework(Client, FrameworkId, Input, []).
update_assessment_framework(Client, FrameworkId, Input0, Options) ->
    Method = put,
    Path = ["/assessmentFrameworks/", aws_util:encode_uri(FrameworkId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the status of an assessment in AWS Audit Manager.
update_assessment_status(Client, AssessmentId, Input) ->
    update_assessment_status(Client, AssessmentId, Input, []).
update_assessment_status(Client, AssessmentId, Input0, Options) ->
    Method = put,
    Path = ["/assessments/", aws_util:encode_uri(AssessmentId), "/status"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a custom control in AWS Audit Manager.
update_control(Client, ControlId, Input) ->
    update_control(Client, ControlId, Input, []).
update_control(Client, ControlId, Input0, Options) ->
    Method = put,
    Path = ["/controls/", aws_util:encode_uri(ControlId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates AWS Audit Manager settings for the current user account.
update_settings(Client, Input) ->
    update_settings(Client, Input, []).
update_settings(Client, Input0, Options) ->
    Method = put,
    Path = ["/settings"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Validates the integrity of an assessment report in AWS Audit Manager.
validate_assessment_report_integrity(Client, Input) ->
    validate_assessment_report_integrity(Client, Input, []).
validate_assessment_report_integrity(Client, Input0, Options) ->
    Method = post,
    Path = ["/assessmentReports/integrity"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"auditmanager">>},
    Host = build_host(<<"auditmanager">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(should_send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        undefined ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
