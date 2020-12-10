%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon GuardDuty is a continuous security monitoring service that
%% analyzes and processes the following data sources: VPC Flow Logs, AWS
%% CloudTrail event logs, and DNS logs.
%%
%% It uses threat intelligence feeds (such as lists of malicious IPs and
%% domains) and machine learning to identify unexpected, potentially
%% unauthorized, and malicious activity within your AWS environment. This can
%% include issues like escalations of privileges, uses of exposed
%% credentials, or communication with malicious IPs, URLs, or domains. For
%% example, GuardDuty can detect compromised EC2 instances that serve malware
%% or mine bitcoin.
%%
%% GuardDuty also monitors AWS account access behavior for signs of
%% compromise. Some examples of this are unauthorized infrastructure
%% deployments such as EC2 instances deployed in a Region that has never been
%% used, or unusual API calls like a password policy change to reduce
%% password strength.
%%
%% GuardDuty informs you of the status of your AWS environment by producing
%% security findings that you can view in the GuardDuty console or through
%% Amazon CloudWatch events. For more information, see the Amazon GuardDuty
%% User Guide .
-module(aws_guardduty).

-export([accept_invitation/3,
         accept_invitation/4,
         archive_findings/3,
         archive_findings/4,
         create_detector/2,
         create_detector/3,
         create_filter/3,
         create_filter/4,
         create_ip_set/3,
         create_ip_set/4,
         create_members/3,
         create_members/4,
         create_publishing_destination/3,
         create_publishing_destination/4,
         create_sample_findings/3,
         create_sample_findings/4,
         create_threat_intel_set/3,
         create_threat_intel_set/4,
         decline_invitations/2,
         decline_invitations/3,
         delete_detector/3,
         delete_detector/4,
         delete_filter/4,
         delete_filter/5,
         delete_invitations/2,
         delete_invitations/3,
         delete_ip_set/4,
         delete_ip_set/5,
         delete_members/3,
         delete_members/4,
         delete_publishing_destination/4,
         delete_publishing_destination/5,
         delete_threat_intel_set/4,
         delete_threat_intel_set/5,
         describe_organization_configuration/2,
         describe_organization_configuration/3,
         describe_publishing_destination/3,
         describe_publishing_destination/4,
         disable_organization_admin_account/2,
         disable_organization_admin_account/3,
         disassociate_from_master_account/3,
         disassociate_from_master_account/4,
         disassociate_members/3,
         disassociate_members/4,
         enable_organization_admin_account/2,
         enable_organization_admin_account/3,
         get_detector/2,
         get_detector/3,
         get_filter/3,
         get_filter/4,
         get_findings/3,
         get_findings/4,
         get_findings_statistics/3,
         get_findings_statistics/4,
         get_invitations_count/1,
         get_invitations_count/2,
         get_ip_set/3,
         get_ip_set/4,
         get_master_account/2,
         get_master_account/3,
         get_member_detectors/3,
         get_member_detectors/4,
         get_members/3,
         get_members/4,
         get_threat_intel_set/3,
         get_threat_intel_set/4,
         get_usage_statistics/3,
         get_usage_statistics/4,
         invite_members/3,
         invite_members/4,
         list_detectors/3,
         list_detectors/4,
         list_filters/4,
         list_filters/5,
         list_findings/3,
         list_findings/4,
         list_invitations/3,
         list_invitations/4,
         list_ip_sets/4,
         list_ip_sets/5,
         list_members/5,
         list_members/6,
         list_organization_admin_accounts/3,
         list_organization_admin_accounts/4,
         list_publishing_destinations/4,
         list_publishing_destinations/5,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_threat_intel_sets/4,
         list_threat_intel_sets/5,
         start_monitoring_members/3,
         start_monitoring_members/4,
         stop_monitoring_members/3,
         stop_monitoring_members/4,
         tag_resource/3,
         tag_resource/4,
         unarchive_findings/3,
         unarchive_findings/4,
         untag_resource/3,
         untag_resource/4,
         update_detector/3,
         update_detector/4,
         update_filter/4,
         update_filter/5,
         update_findings_feedback/3,
         update_findings_feedback/4,
         update_ip_set/4,
         update_ip_set/5,
         update_member_detectors/3,
         update_member_detectors/4,
         update_organization_configuration/3,
         update_organization_configuration/4,
         update_publishing_destination/4,
         update_publishing_destination/5,
         update_threat_intel_set/4,
         update_threat_intel_set/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts the invitation to be monitored by a master GuardDuty account.
accept_invitation(Client, DetectorId, Input) ->
    accept_invitation(Client, DetectorId, Input, []).
accept_invitation(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/master"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Archives GuardDuty findings that are specified by the list of finding
%% IDs.
%%
%% Only the master account can archive findings. Member accounts don't have
%% permission to archive findings from their accounts.
archive_findings(Client, DetectorId, Input) ->
    archive_findings(Client, DetectorId, Input, []).
archive_findings(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/findings/archive"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a single Amazon GuardDuty detector.
%%
%% A detector is a resource that represents the GuardDuty service. To start
%% using GuardDuty, you must create a detector in each Region where you
%% enable the service. You can have only one detector per account per Region.
%% All data sources are enabled in a new detector by default.
create_detector(Client, Input) ->
    create_detector(Client, Input, []).
create_detector(Client, Input0, Options) ->
    Method = post,
    Path = ["/detector"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a filter using the specified finding criteria.
create_filter(Client, DetectorId, Input) ->
    create_filter(Client, DetectorId, Input, []).
create_filter(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/filter"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new IPSet, which is called a trusted IP list in the console
%% user interface.
%%
%% An IPSet is a list of IP addresses that are trusted for secure
%% communication with AWS infrastructure and applications. GuardDuty doesn't
%% generate findings for IP addresses that are included in IPSets. Only users
%% from the master account can use this operation.
create_ip_set(Client, DetectorId, Input) ->
    create_ip_set(Client, DetectorId, Input, []).
create_ip_set(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/ipset"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates member accounts of the current AWS account by specifying a
%% list of AWS account IDs.
%%
%% This step is a prerequisite for managing the associated member accounts
%% either by invitation or through an organization.
%%
%% When using `Create Members' as an organizations delegated administrator
%% this action will enable GuardDuty in the added member accounts, with the
%% exception of the organization master account, which must enable GuardDuty
%% prior to being added as a member.
%%
%% If you are adding accounts by invitation use this action after GuardDuty
%% has been enabled in potential member accounts and before using `Invite
%% Members' .
create_members(Client, DetectorId, Input) ->
    create_members(Client, DetectorId, Input, []).
create_members(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a publishing destination to export findings to.
%%
%% The resource to export findings to must exist before you use this
%% operation.
create_publishing_destination(Client, DetectorId, Input) ->
    create_publishing_destination(Client, DetectorId, Input, []).
create_publishing_destination(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/publishingDestination"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Generates example findings of types specified by the list of finding
%% types.
%%
%% If 'NULL' is specified for `findingTypes', the API generates example
%% findings of all supported finding types.
create_sample_findings(Client, DetectorId, Input) ->
    create_sample_findings(Client, DetectorId, Input, []).
create_sample_findings(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/findings/create"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new ThreatIntelSet.
%%
%% ThreatIntelSets consist of known malicious IP addresses. GuardDuty
%% generates findings based on ThreatIntelSets. Only users of the master
%% account can use this operation.
create_threat_intel_set(Client, DetectorId, Input) ->
    create_threat_intel_set(Client, DetectorId, Input, []).
create_threat_intel_set(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/threatintelset"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Declines invitations sent to the current member account by AWS
%% accounts specified by their account IDs.
decline_invitations(Client, Input) ->
    decline_invitations(Client, Input, []).
decline_invitations(Client, Input0, Options) ->
    Method = post,
    Path = ["/invitation/decline"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes an Amazon GuardDuty detector that is specified by the
%% detector ID.
delete_detector(Client, DetectorId, Input) ->
    delete_detector(Client, DetectorId, Input, []).
delete_detector(Client, DetectorId, Input0, Options) ->
    Method = delete,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the filter specified by the filter name.
delete_filter(Client, DetectorId, FilterName, Input) ->
    delete_filter(Client, DetectorId, FilterName, Input, []).
delete_filter(Client, DetectorId, FilterName, Input0, Options) ->
    Method = delete,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/filter/", aws_util:encode_uri(FilterName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes invitations sent to the current member account by AWS
%% accounts specified by their account IDs.
delete_invitations(Client, Input) ->
    delete_invitations(Client, Input, []).
delete_invitations(Client, Input0, Options) ->
    Method = post,
    Path = ["/invitation/delete"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the IPSet specified by the `ipSetId'.
%%
%% IPSets are called trusted IP lists in the console user interface.
delete_ip_set(Client, DetectorId, IpSetId, Input) ->
    delete_ip_set(Client, DetectorId, IpSetId, Input, []).
delete_ip_set(Client, DetectorId, IpSetId, Input0, Options) ->
    Method = delete,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/ipset/", aws_util:encode_uri(IpSetId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes GuardDuty member accounts (to the current GuardDuty master
%% account) specified by the account IDs.
delete_members(Client, DetectorId, Input) ->
    delete_members(Client, DetectorId, Input, []).
delete_members(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/delete"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the publishing definition with the specified `destinationId'.
delete_publishing_destination(Client, DestinationId, DetectorId, Input) ->
    delete_publishing_destination(Client, DestinationId, DetectorId, Input, []).
delete_publishing_destination(Client, DestinationId, DetectorId, Input0, Options) ->
    Method = delete,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/publishingDestination/", aws_util:encode_uri(DestinationId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the ThreatIntelSet specified by the ThreatIntelSet ID.
delete_threat_intel_set(Client, DetectorId, ThreatIntelSetId, Input) ->
    delete_threat_intel_set(Client, DetectorId, ThreatIntelSetId, Input, []).
delete_threat_intel_set(Client, DetectorId, ThreatIntelSetId, Input0, Options) ->
    Method = delete,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/threatintelset/", aws_util:encode_uri(ThreatIntelSetId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns information about the account selected as the delegated
%% administrator for GuardDuty.
describe_organization_configuration(Client, DetectorId)
  when is_map(Client) ->
    describe_organization_configuration(Client, DetectorId, []).
describe_organization_configuration(Client, DetectorId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/admin"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the publishing destination specified by the
%% provided `destinationId'.
describe_publishing_destination(Client, DestinationId, DetectorId)
  when is_map(Client) ->
    describe_publishing_destination(Client, DestinationId, DetectorId, []).
describe_publishing_destination(Client, DestinationId, DetectorId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/publishingDestination/", aws_util:encode_uri(DestinationId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disables an AWS account within the Organization as the GuardDuty
%% delegated administrator.
disable_organization_admin_account(Client, Input) ->
    disable_organization_admin_account(Client, Input, []).
disable_organization_admin_account(Client, Input0, Options) ->
    Method = post,
    Path = ["/admin/disable"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates the current GuardDuty member account from its master
%% account.
disassociate_from_master_account(Client, DetectorId, Input) ->
    disassociate_from_master_account(Client, DetectorId, Input, []).
disassociate_from_master_account(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/master/disassociate"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates GuardDuty member accounts (to the current GuardDuty
%% master account) specified by the account IDs.
disassociate_members(Client, DetectorId, Input) ->
    disassociate_members(Client, DetectorId, Input, []).
disassociate_members(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/disassociate"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Enables an AWS account within the organization as the GuardDuty
%% delegated administrator.
enable_organization_admin_account(Client, Input) ->
    enable_organization_admin_account(Client, Input, []).
enable_organization_admin_account(Client, Input0, Options) ->
    Method = post,
    Path = ["/admin/enable"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves an Amazon GuardDuty detector specified by the detectorId.
get_detector(Client, DetectorId)
  when is_map(Client) ->
    get_detector(Client, DetectorId, []).
get_detector(Client, DetectorId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the details of the filter specified by the filter name.
get_filter(Client, DetectorId, FilterName)
  when is_map(Client) ->
    get_filter(Client, DetectorId, FilterName, []).
get_filter(Client, DetectorId, FilterName, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/filter/", aws_util:encode_uri(FilterName), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes Amazon GuardDuty findings specified by finding IDs.
get_findings(Client, DetectorId, Input) ->
    get_findings(Client, DetectorId, Input, []).
get_findings(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/findings/get"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Lists Amazon GuardDuty findings statistics for the specified detector
%% ID.
get_findings_statistics(Client, DetectorId, Input) ->
    get_findings_statistics(Client, DetectorId, Input, []).
get_findings_statistics(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/findings/statistics"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the count of all GuardDuty membership invitations that were
%% sent to the current member account except the currently accepted
%% invitation.
get_invitations_count(Client)
  when is_map(Client) ->
    get_invitations_count(Client, []).
get_invitations_count(Client, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/invitation/count"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the IPSet specified by the `ipSetId'.
get_ip_set(Client, DetectorId, IpSetId)
  when is_map(Client) ->
    get_ip_set(Client, DetectorId, IpSetId, []).
get_ip_set(Client, DetectorId, IpSetId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/ipset/", aws_util:encode_uri(IpSetId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides the details for the GuardDuty master account associated with
%% the current GuardDuty member account.
get_master_account(Client, DetectorId)
  when is_map(Client) ->
    get_master_account(Client, DetectorId, []).
get_master_account(Client, DetectorId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/master"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes which data sources are enabled for the member account's
%% detector.
get_member_detectors(Client, DetectorId, Input) ->
    get_member_detectors(Client, DetectorId, Input, []).
get_member_detectors(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/detector/get"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves GuardDuty member accounts (to the current GuardDuty master
%% account) specified by the account IDs.
get_members(Client, DetectorId, Input) ->
    get_members(Client, DetectorId, Input, []).
get_members(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/get"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet
%% ID.
get_threat_intel_set(Client, DetectorId, ThreatIntelSetId)
  when is_map(Client) ->
    get_threat_intel_set(Client, DetectorId, ThreatIntelSetId, []).
get_threat_intel_set(Client, DetectorId, ThreatIntelSetId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/threatintelset/", aws_util:encode_uri(ThreatIntelSetId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Amazon GuardDuty usage statistics over the last 30 days for the
%% specified detector ID.
%%
%% For newly enabled detectors or data sources the cost returned will include
%% only the usage so far under 30 days, this may differ from the cost metrics
%% in the console, which projects usage over 30 days to provide a monthly
%% cost estimate. For more information see Understanding How Usage Costs are
%% Calculated.
get_usage_statistics(Client, DetectorId, Input) ->
    get_usage_statistics(Client, DetectorId, Input, []).
get_usage_statistics(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/usage/statistics"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Invites other AWS accounts (created as members of the current AWS
%% account by CreateMembers) to enable GuardDuty, and allow the current AWS
%% account to view and manage these accounts' GuardDuty findings on their
%% behalf as the master account.
invite_members(Client, DetectorId, Input) ->
    invite_members(Client, DetectorId, Input, []).
invite_members(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/invite"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Lists detectorIds of all the existing Amazon GuardDuty detector
%% resources.
list_detectors(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_detectors(Client, MaxResults, NextToken, []).
list_detectors(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/detector"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of the current filters.
list_filters(Client, DetectorId, MaxResults, NextToken)
  when is_map(Client) ->
    list_filters(Client, DetectorId, MaxResults, NextToken, []).
list_filters(Client, DetectorId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/filter"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Amazon GuardDuty findings for the specified detector ID.
list_findings(Client, DetectorId, Input) ->
    list_findings(Client, DetectorId, Input, []).
list_findings(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/findings"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all GuardDuty membership invitations that were sent to the
%% current AWS account.
list_invitations(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_invitations(Client, MaxResults, NextToken, []).
list_invitations(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/invitation"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the IPSets of the GuardDuty service specified by the detector
%% ID.
%%
%% If you use this operation from a member account, the IPSets returned are
%% the IPSets from the associated master account.
list_ip_sets(Client, DetectorId, MaxResults, NextToken)
  when is_map(Client) ->
    list_ip_sets(Client, DetectorId, MaxResults, NextToken, []).
list_ip_sets(Client, DetectorId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/ipset"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists details about all member accounts for the current GuardDuty
%% master account.
list_members(Client, DetectorId, MaxResults, NextToken, OnlyAssociated)
  when is_map(Client) ->
    list_members(Client, DetectorId, MaxResults, NextToken, OnlyAssociated, []).
list_members(Client, DetectorId, MaxResults, NextToken, OnlyAssociated, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"onlyAssociated">>, OnlyAssociated}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the accounts configured as GuardDuty delegated administrators.
list_organization_admin_accounts(Client, MaxResults, NextToken)
  when is_map(Client) ->
    list_organization_admin_accounts(Client, MaxResults, NextToken, []).
list_organization_admin_accounts(Client, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/admin"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of publishing destinations associated with the
%% specified `dectectorId'.
list_publishing_destinations(Client, DetectorId, MaxResults, NextToken)
  when is_map(Client) ->
    list_publishing_destinations(Client, DetectorId, MaxResults, NextToken, []).
list_publishing_destinations(Client, DetectorId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/publishingDestination"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists tags for a resource.
%%
%% Tagging is currently supported for detectors, finding filters, IP sets,
%% and threat intel sets, with a limit of 50 tags per resource. When invoked,
%% this operation returns all assigned tags for a given resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the ThreatIntelSets of the GuardDuty service specified by the
%% detector ID.
%%
%% If you use this operation from a member account, the ThreatIntelSets
%% associated with the master account are returned.
list_threat_intel_sets(Client, DetectorId, MaxResults, NextToken)
  when is_map(Client) ->
    list_threat_intel_sets(Client, DetectorId, MaxResults, NextToken, []).
list_threat_intel_sets(Client, DetectorId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/threatintelset"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Turns on GuardDuty monitoring of the specified member accounts.
%%
%% Use this operation to restart monitoring of accounts that you stopped
%% monitoring with the `StopMonitoringMembers' operation.
start_monitoring_members(Client, DetectorId, Input) ->
    start_monitoring_members(Client, DetectorId, Input, []).
start_monitoring_members(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/start"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Stops GuardDuty monitoring for the specified member accounts.
%%
%% Use the `StartMonitoringMembers' operation to restart monitoring for those
%% accounts.
stop_monitoring_members(Client, DetectorId, Input) ->
    stop_monitoring_members(Client, DetectorId, Input, []).
stop_monitoring_members(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/stop"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds tags to a resource.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Unarchives GuardDuty findings specified by the `findingIds'.
unarchive_findings(Client, DetectorId, Input) ->
    unarchive_findings(Client, DetectorId, Input, []).
unarchive_findings(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/findings/unarchive"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the Amazon GuardDuty detector specified by the detectorId.
update_detector(Client, DetectorId, Input) ->
    update_detector(Client, DetectorId, Input, []).
update_detector(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the filter specified by the filter name.
update_filter(Client, DetectorId, FilterName, Input) ->
    update_filter(Client, DetectorId, FilterName, Input, []).
update_filter(Client, DetectorId, FilterName, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/filter/", aws_util:encode_uri(FilterName), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Marks the specified GuardDuty findings as useful or not useful.
update_findings_feedback(Client, DetectorId, Input) ->
    update_findings_feedback(Client, DetectorId, Input, []).
update_findings_feedback(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/findings/feedback"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the IPSet specified by the IPSet ID.
update_ip_set(Client, DetectorId, IpSetId, Input) ->
    update_ip_set(Client, DetectorId, IpSetId, Input, []).
update_ip_set(Client, DetectorId, IpSetId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/ipset/", aws_util:encode_uri(IpSetId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Contains information on member accounts to be updated.
update_member_detectors(Client, DetectorId, Input) ->
    update_member_detectors(Client, DetectorId, Input, []).
update_member_detectors(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/detector/update"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the delegated administrator account with the values provided.
update_organization_configuration(Client, DetectorId, Input) ->
    update_organization_configuration(Client, DetectorId, Input, []).
update_organization_configuration(Client, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/admin"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates information about the publishing destination specified by the
%% `destinationId'.
update_publishing_destination(Client, DestinationId, DetectorId, Input) ->
    update_publishing_destination(Client, DestinationId, DetectorId, Input, []).
update_publishing_destination(Client, DestinationId, DetectorId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/publishingDestination/", aws_util:encode_uri(DestinationId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the ThreatIntelSet specified by the ThreatIntelSet ID.
update_threat_intel_set(Client, DetectorId, ThreatIntelSetId, Input) ->
    update_threat_intel_set(Client, DetectorId, ThreatIntelSetId, Input, []).
update_threat_intel_set(Client, DetectorId, ThreatIntelSetId, Input0, Options) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/threatintelset/", aws_util:encode_uri(ThreatIntelSetId), ""],
    SuccessStatusCode = 200,

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
    Client1 = Client#{service => <<"guardduty">>},
    Host = build_host(<<"guardduty">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
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
