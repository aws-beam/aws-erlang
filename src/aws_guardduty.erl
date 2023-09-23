%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon GuardDuty is a continuous security monitoring service that
%% analyzes and processes the following data sources: VPC flow logs, Amazon
%% Web Services CloudTrail management event logs, CloudTrail S3 data event
%% logs, EKS audit logs, DNS logs, and Amazon EBS volume data.
%%
%% It uses threat intelligence feeds, such as lists of malicious IPs and
%% domains, and machine learning to identify unexpected, potentially
%% unauthorized, and malicious activity within your Amazon Web Services
%% environment. This can include issues like escalations of privileges, uses
%% of exposed credentials, or communication with malicious IPs, domains, or
%% presence of malware on your Amazon EC2 instances and container workloads.
%% For example, GuardDuty can detect compromised EC2 instances and container
%% workloads serving malware, or mining bitcoin.
%%
%% GuardDuty also monitors Amazon Web Services account access behavior for
%% signs of compromise, such as unauthorized infrastructure deployments like
%% EC2 instances deployed in a Region that has never been used, or unusual
%% API calls like a password policy change to reduce password strength.
%%
%% GuardDuty informs you about the status of your Amazon Web Services
%% environment by producing security findings that you can view in the
%% GuardDuty console or through Amazon EventBridge. For more information, see
%% the Amazon GuardDuty User Guide .
-module(aws_guardduty).

-export([accept_administrator_invitation/3,
         accept_administrator_invitation/4,
         accept_invitation/3,
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
         describe_malware_scans/3,
         describe_malware_scans/4,
         describe_organization_configuration/2,
         describe_organization_configuration/4,
         describe_organization_configuration/5,
         describe_publishing_destination/3,
         describe_publishing_destination/5,
         describe_publishing_destination/6,
         disable_organization_admin_account/2,
         disable_organization_admin_account/3,
         disassociate_from_administrator_account/3,
         disassociate_from_administrator_account/4,
         disassociate_from_master_account/3,
         disassociate_from_master_account/4,
         disassociate_members/3,
         disassociate_members/4,
         enable_organization_admin_account/2,
         enable_organization_admin_account/3,
         get_administrator_account/2,
         get_administrator_account/4,
         get_administrator_account/5,
         get_coverage_statistics/3,
         get_coverage_statistics/4,
         get_detector/2,
         get_detector/4,
         get_detector/5,
         get_filter/3,
         get_filter/5,
         get_filter/6,
         get_findings/3,
         get_findings/4,
         get_findings_statistics/3,
         get_findings_statistics/4,
         get_invitations_count/1,
         get_invitations_count/3,
         get_invitations_count/4,
         get_ip_set/3,
         get_ip_set/5,
         get_ip_set/6,
         get_malware_scan_settings/2,
         get_malware_scan_settings/4,
         get_malware_scan_settings/5,
         get_master_account/2,
         get_master_account/4,
         get_master_account/5,
         get_member_detectors/3,
         get_member_detectors/4,
         get_members/3,
         get_members/4,
         get_remaining_free_trial_days/3,
         get_remaining_free_trial_days/4,
         get_threat_intel_set/3,
         get_threat_intel_set/5,
         get_threat_intel_set/6,
         get_usage_statistics/3,
         get_usage_statistics/4,
         invite_members/3,
         invite_members/4,
         list_coverage/3,
         list_coverage/4,
         list_detectors/1,
         list_detectors/3,
         list_detectors/4,
         list_filters/2,
         list_filters/4,
         list_filters/5,
         list_findings/3,
         list_findings/4,
         list_invitations/1,
         list_invitations/3,
         list_invitations/4,
         list_ip_sets/2,
         list_ip_sets/4,
         list_ip_sets/5,
         list_members/2,
         list_members/4,
         list_members/5,
         list_organization_admin_accounts/1,
         list_organization_admin_accounts/3,
         list_organization_admin_accounts/4,
         list_publishing_destinations/2,
         list_publishing_destinations/4,
         list_publishing_destinations/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_threat_intel_sets/2,
         list_threat_intel_sets/4,
         list_threat_intel_sets/5,
         start_malware_scan/2,
         start_malware_scan/3,
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
         update_malware_scan_settings/3,
         update_malware_scan_settings/4,
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

%% @doc Accepts the invitation to be a member account and get monitored by a
%% GuardDuty administrator account that sent the invitation.
accept_administrator_invitation(Client, DetectorId, Input) ->
    accept_administrator_invitation(Client, DetectorId, Input, []).
accept_administrator_invitation(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/administrator"],
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

%% @doc Accepts the invitation to be monitored by a GuardDuty administrator
%% account.
accept_invitation(Client, DetectorId, Input) ->
    accept_invitation(Client, DetectorId, Input, []).
accept_invitation(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/master"],
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

%% @doc Archives GuardDuty findings that are specified by the list of finding
%% IDs.
%%
%% Only the administrator account can archive findings. Member accounts
%% don't have permission to archive findings from their accounts.
archive_findings(Client, DetectorId, Input) ->
    archive_findings(Client, DetectorId, Input, []).
archive_findings(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/findings/archive"],
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

%% @doc Creates a single Amazon GuardDuty detector.
%%
%% A detector is a resource that represents the GuardDuty service. To start
%% using GuardDuty, you must create a detector in each Region where you
%% enable the service. You can have only one detector per account per Region.
%% All data sources are enabled in a new detector by default.
%%
%% There might be regional differences because some data sources might not be
%% available in all the Amazon Web Services Regions where GuardDuty is
%% presently supported. For more information, see Regions and endpoints.
create_detector(Client, Input) ->
    create_detector(Client, Input, []).
create_detector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/detector"],
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

%% @doc Creates a filter using the specified finding criteria.
%%
%% The maximum number of saved filters per Amazon Web Services account per
%% Region is 100. For more information, see Quotas for GuardDuty.
create_filter(Client, DetectorId, Input) ->
    create_filter(Client, DetectorId, Input, []).
create_filter(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/filter"],
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

%% @doc Creates a new IPSet, which is called a trusted IP list in the console
%% user interface.
%%
%% An IPSet is a list of IP addresses that are trusted for secure
%% communication with Amazon Web Services infrastructure and applications.
%% GuardDuty doesn't generate findings for IP addresses that are included
%% in IPSets. Only users from the administrator account can use this
%% operation.
create_ip_set(Client, DetectorId, Input) ->
    create_ip_set(Client, DetectorId, Input, []).
create_ip_set(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/ipset"],
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

%% @doc Creates member accounts of the current Amazon Web Services account by
%% specifying a list of Amazon Web Services account IDs.
%%
%% This step is a prerequisite for managing the associated member accounts
%% either by invitation or through an organization.
%%
%% As a delegated administrator, using `CreateMembers' will enable
%% GuardDuty in the added member accounts, with the exception of the
%% organization delegated administrator account. A delegated administrator
%% must enable GuardDuty prior to being added as a member.
%%
%% If you are adding accounts by invitation, before using InviteMembers, use
%% `CreateMembers' after GuardDuty has been enabled in potential member
%% accounts.
%%
%% If you disassociate a member from a GuardDuty delegated administrator, the
%% member account details obtained from this API, including the associated
%% email addresses, will be retained. This is done so that the delegated
%% administrator can invoke the InviteMembers API without the need to invoke
%% the CreateMembers API again. To remove the details associated with a
%% member account, the delegated administrator must invoke the DeleteMembers
%% API.
create_members(Client, DetectorId, Input) ->
    create_members(Client, DetectorId, Input, []).
create_members(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member"],
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

%% @doc Creates a publishing destination to export findings to.
%%
%% The resource to export findings to must exist before you use this
%% operation.
create_publishing_destination(Client, DetectorId, Input) ->
    create_publishing_destination(Client, DetectorId, Input, []).
create_publishing_destination(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/publishingDestination"],
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

%% @doc Generates sample findings of types specified by the list of finding
%% types.
%%
%% If 'NULL' is specified for `findingTypes', the API generates
%% sample findings of all supported finding types.
create_sample_findings(Client, DetectorId, Input) ->
    create_sample_findings(Client, DetectorId, Input, []).
create_sample_findings(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/findings/create"],
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

%% @doc Creates a new ThreatIntelSet.
%%
%% ThreatIntelSets consist of known malicious IP addresses. GuardDuty
%% generates findings based on ThreatIntelSets. Only users of the
%% administrator account can use this operation.
create_threat_intel_set(Client, DetectorId, Input) ->
    create_threat_intel_set(Client, DetectorId, Input, []).
create_threat_intel_set(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/threatintelset"],
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

%% @doc Declines invitations sent to the current member account by Amazon Web
%% Services accounts specified by their account IDs.
decline_invitations(Client, Input) ->
    decline_invitations(Client, Input, []).
decline_invitations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/invitation/decline"],
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

%% @doc Deletes an Amazon GuardDuty detector that is specified by the
%% detector ID.
delete_detector(Client, DetectorId, Input) ->
    delete_detector(Client, DetectorId, Input, []).
delete_detector(Client, DetectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), ""],
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

%% @doc Deletes the filter specified by the filter name.
delete_filter(Client, DetectorId, FilterName, Input) ->
    delete_filter(Client, DetectorId, FilterName, Input, []).
delete_filter(Client, DetectorId, FilterName, Input0, Options0) ->
    Method = delete,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/filter/", aws_util:encode_uri(FilterName), ""],
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

%% @doc Deletes invitations sent to the current member account by Amazon Web
%% Services accounts specified by their account IDs.
delete_invitations(Client, Input) ->
    delete_invitations(Client, Input, []).
delete_invitations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/invitation/delete"],
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

%% @doc Deletes the IPSet specified by the `ipSetId'.
%%
%% IPSets are called trusted IP lists in the console user interface.
delete_ip_set(Client, DetectorId, IpSetId, Input) ->
    delete_ip_set(Client, DetectorId, IpSetId, Input, []).
delete_ip_set(Client, DetectorId, IpSetId, Input0, Options0) ->
    Method = delete,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/ipset/", aws_util:encode_uri(IpSetId), ""],
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

%% @doc Deletes GuardDuty member accounts (to the current GuardDuty
%% administrator account) specified by the account IDs.
%%
%% With `autoEnableOrganizationMembers' configuration for your
%% organization set to `ALL', you'll receive an error if you attempt
%% to disable GuardDuty for a member account in your organization.
delete_members(Client, DetectorId, Input) ->
    delete_members(Client, DetectorId, Input, []).
delete_members(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/delete"],
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

%% @doc Deletes the publishing definition with the specified
%% `destinationId'.
delete_publishing_destination(Client, DestinationId, DetectorId, Input) ->
    delete_publishing_destination(Client, DestinationId, DetectorId, Input, []).
delete_publishing_destination(Client, DestinationId, DetectorId, Input0, Options0) ->
    Method = delete,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/publishingDestination/", aws_util:encode_uri(DestinationId), ""],
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

%% @doc Deletes the ThreatIntelSet specified by the ThreatIntelSet ID.
delete_threat_intel_set(Client, DetectorId, ThreatIntelSetId, Input) ->
    delete_threat_intel_set(Client, DetectorId, ThreatIntelSetId, Input, []).
delete_threat_intel_set(Client, DetectorId, ThreatIntelSetId, Input0, Options0) ->
    Method = delete,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/threatintelset/", aws_util:encode_uri(ThreatIntelSetId), ""],
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

%% @doc Returns a list of malware scans.
%%
%% Each member account can view the malware scans for their own accounts. An
%% administrator can view the malware scans for all the member accounts.
%%
%% There might be regional differences because some data sources might not be
%% available in all the Amazon Web Services Regions where GuardDuty is
%% presently supported. For more information, see Regions and endpoints.
describe_malware_scans(Client, DetectorId, Input) ->
    describe_malware_scans(Client, DetectorId, Input, []).
describe_malware_scans(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/malware-scans"],
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

%% @doc Returns information about the account selected as the delegated
%% administrator for GuardDuty.
%%
%% There might be regional differences because some data sources might not be
%% available in all the Amazon Web Services Regions where GuardDuty is
%% presently supported. For more information, see Regions and endpoints.
describe_organization_configuration(Client, DetectorId)
  when is_map(Client) ->
    describe_organization_configuration(Client, DetectorId, #{}, #{}).

describe_organization_configuration(Client, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_organization_configuration(Client, DetectorId, QueryMap, HeadersMap, []).

describe_organization_configuration(Client, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/admin"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the publishing destination specified by the
%% provided `destinationId'.
describe_publishing_destination(Client, DestinationId, DetectorId)
  when is_map(Client) ->
    describe_publishing_destination(Client, DestinationId, DetectorId, #{}, #{}).

describe_publishing_destination(Client, DestinationId, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_publishing_destination(Client, DestinationId, DetectorId, QueryMap, HeadersMap, []).

describe_publishing_destination(Client, DestinationId, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/publishingDestination/", aws_util:encode_uri(DestinationId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Removes the existing GuardDuty delegated administrator of the
%% organization.
%%
%% Only the organization's management account can run this API operation.
disable_organization_admin_account(Client, Input) ->
    disable_organization_admin_account(Client, Input, []).
disable_organization_admin_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/admin/disable"],
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

%% @doc Disassociates the current GuardDuty member account from its
%% administrator account.
%%
%% When you disassociate an invited member from a GuardDuty delegated
%% administrator, the member account details obtained from the CreateMembers
%% API, including the associated email addresses, are retained. This is done
%% so that the delegated administrator can invoke the InviteMembers API
%% without the need to invoke the CreateMembers API again. To remove the
%% details associated with a member account, the delegated administrator must
%% invoke the DeleteMembers API.
%%
%% With `autoEnableOrganizationMembers' configuration for your
%% organization set to `ALL', you'll receive an error if you attempt
%% to disable GuardDuty in a member account.
disassociate_from_administrator_account(Client, DetectorId, Input) ->
    disassociate_from_administrator_account(Client, DetectorId, Input, []).
disassociate_from_administrator_account(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/administrator/disassociate"],
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

%% @doc Disassociates the current GuardDuty member account from its
%% administrator account.
%%
%% When you disassociate an invited member from a GuardDuty delegated
%% administrator, the member account details obtained from the CreateMembers
%% API, including the associated email addresses, are retained. This is done
%% so that the delegated administrator can invoke the InviteMembers API
%% without the need to invoke the CreateMembers API again. To remove the
%% details associated with a member account, the delegated administrator must
%% invoke the DeleteMembers API.
disassociate_from_master_account(Client, DetectorId, Input) ->
    disassociate_from_master_account(Client, DetectorId, Input, []).
disassociate_from_master_account(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/master/disassociate"],
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

%% @doc Disassociates GuardDuty member accounts (from the current
%% administrator account) specified by the account IDs.
%%
%% When you disassociate an invited member from a GuardDuty delegated
%% administrator, the member account details obtained from the CreateMembers
%% API, including the associated email addresses, are retained. This is done
%% so that the delegated administrator can invoke the InviteMembers API
%% without the need to invoke the CreateMembers API again. To remove the
%% details associated with a member account, the delegated administrator must
%% invoke the DeleteMembers API.
%%
%% With `autoEnableOrganizationMembers' configuration for your
%% organization set to `ALL', you'll receive an error if you attempt
%% to disassociate a member account before removing them from your
%% organization.
disassociate_members(Client, DetectorId, Input) ->
    disassociate_members(Client, DetectorId, Input, []).
disassociate_members(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/disassociate"],
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

%% @doc Designates an Amazon Web Services account within the organization as
%% your GuardDuty delegated administrator.
%%
%% Only the organization's management account can run this API operation.
enable_organization_admin_account(Client, Input) ->
    enable_organization_admin_account(Client, Input, []).
enable_organization_admin_account(Client, Input0, Options0) ->
    Method = post,
    Path = ["/admin/enable"],
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

%% @doc Provides the details of the GuardDuty administrator account
%% associated with the current GuardDuty member account.
%%
%% If the organization's management account or a delegated administrator
%% runs this API, it will return success (`HTTP 200') but no content.
get_administrator_account(Client, DetectorId)
  when is_map(Client) ->
    get_administrator_account(Client, DetectorId, #{}, #{}).

get_administrator_account(Client, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_administrator_account(Client, DetectorId, QueryMap, HeadersMap, []).

get_administrator_account(Client, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/administrator"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves aggregated statistics for your account.
%%
%% If you are a GuardDuty administrator, you can retrieve the statistics for
%% all the resources associated with the active member accounts in your
%% organization who have enabled EKS Runtime Monitoring and have the
%% GuardDuty agent running on their EKS nodes.
get_coverage_statistics(Client, DetectorId, Input) ->
    get_coverage_statistics(Client, DetectorId, Input, []).
get_coverage_statistics(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/coverage/statistics"],
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

%% @doc Retrieves an Amazon GuardDuty detector specified by the detectorId.
%%
%% There might be regional differences because some data sources might not be
%% available in all the Amazon Web Services Regions where GuardDuty is
%% presently supported. For more information, see Regions and endpoints.
get_detector(Client, DetectorId)
  when is_map(Client) ->
    get_detector(Client, DetectorId, #{}, #{}).

get_detector(Client, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_detector(Client, DetectorId, QueryMap, HeadersMap, []).

get_detector(Client, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the details of the filter specified by the filter name.
get_filter(Client, DetectorId, FilterName)
  when is_map(Client) ->
    get_filter(Client, DetectorId, FilterName, #{}, #{}).

get_filter(Client, DetectorId, FilterName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_filter(Client, DetectorId, FilterName, QueryMap, HeadersMap, []).

get_filter(Client, DetectorId, FilterName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/filter/", aws_util:encode_uri(FilterName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes Amazon GuardDuty findings specified by finding IDs.
get_findings(Client, DetectorId, Input) ->
    get_findings(Client, DetectorId, Input, []).
get_findings(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/findings/get"],
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

%% @doc Lists Amazon GuardDuty findings statistics for the specified detector
%% ID.
get_findings_statistics(Client, DetectorId, Input) ->
    get_findings_statistics(Client, DetectorId, Input, []).
get_findings_statistics(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/findings/statistics"],
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

%% @doc Returns the count of all GuardDuty membership invitations that were
%% sent to the current member account except the currently accepted
%% invitation.
get_invitations_count(Client)
  when is_map(Client) ->
    get_invitations_count(Client, #{}, #{}).

get_invitations_count(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_invitations_count(Client, QueryMap, HeadersMap, []).

get_invitations_count(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/invitation/count"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the IPSet specified by the `ipSetId'.
get_ip_set(Client, DetectorId, IpSetId)
  when is_map(Client) ->
    get_ip_set(Client, DetectorId, IpSetId, #{}, #{}).

get_ip_set(Client, DetectorId, IpSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_ip_set(Client, DetectorId, IpSetId, QueryMap, HeadersMap, []).

get_ip_set(Client, DetectorId, IpSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/ipset/", aws_util:encode_uri(IpSetId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the details of the malware scan settings.
%%
%% There might be regional differences because some data sources might not be
%% available in all the Amazon Web Services Regions where GuardDuty is
%% presently supported. For more information, see Regions and endpoints.
get_malware_scan_settings(Client, DetectorId)
  when is_map(Client) ->
    get_malware_scan_settings(Client, DetectorId, #{}, #{}).

get_malware_scan_settings(Client, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_malware_scan_settings(Client, DetectorId, QueryMap, HeadersMap, []).

get_malware_scan_settings(Client, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/malware-scan-settings"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides the details for the GuardDuty administrator account
%% associated with the current GuardDuty member account.
get_master_account(Client, DetectorId)
  when is_map(Client) ->
    get_master_account(Client, DetectorId, #{}, #{}).

get_master_account(Client, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_master_account(Client, DetectorId, QueryMap, HeadersMap, []).

get_master_account(Client, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/master"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes which data sources are enabled for the member account's
%% detector.
%%
%% There might be regional differences because some data sources might not be
%% available in all the Amazon Web Services Regions where GuardDuty is
%% presently supported. For more information, see Regions and endpoints.
get_member_detectors(Client, DetectorId, Input) ->
    get_member_detectors(Client, DetectorId, Input, []).
get_member_detectors(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/detector/get"],
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

%% @doc Retrieves GuardDuty member accounts (of the current GuardDuty
%% administrator account) specified by the account IDs.
get_members(Client, DetectorId, Input) ->
    get_members(Client, DetectorId, Input, []).
get_members(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/get"],
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

%% @doc Provides the number of days left for each data source used in the
%% free trial period.
get_remaining_free_trial_days(Client, DetectorId, Input) ->
    get_remaining_free_trial_days(Client, DetectorId, Input, []).
get_remaining_free_trial_days(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/freeTrial/daysRemaining"],
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

%% @doc Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet
%% ID.
get_threat_intel_set(Client, DetectorId, ThreatIntelSetId)
  when is_map(Client) ->
    get_threat_intel_set(Client, DetectorId, ThreatIntelSetId, #{}, #{}).

get_threat_intel_set(Client, DetectorId, ThreatIntelSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_threat_intel_set(Client, DetectorId, ThreatIntelSetId, QueryMap, HeadersMap, []).

get_threat_intel_set(Client, DetectorId, ThreatIntelSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/threatintelset/", aws_util:encode_uri(ThreatIntelSetId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Amazon GuardDuty usage statistics over the last 30 days for the
%% specified detector ID.
%%
%% For newly enabled detectors or data sources, the cost returned will
%% include only the usage so far under 30 days. This may differ from the cost
%% metrics in the console, which project usage over 30 days to provide a
%% monthly cost estimate. For more information, see Understanding How Usage
%% Costs are Calculated.
get_usage_statistics(Client, DetectorId, Input) ->
    get_usage_statistics(Client, DetectorId, Input, []).
get_usage_statistics(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/usage/statistics"],
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

%% @doc Invites Amazon Web Services accounts to become members of an
%% organization administered by the Amazon Web Services account that invokes
%% this API.
%%
%% If you are using Amazon Web Services Organizations to manage your
%% GuardDuty environment, this step is not needed. For more information, see
%% Managing accounts with organizations.
%%
%% To invite Amazon Web Services accounts, the first step is to ensure that
%% GuardDuty has been enabled in the potential member accounts. You can now
%% invoke this API to add accounts by invitation. The invited accounts can
%% either accept or decline the invitation from their GuardDuty accounts.
%% Each invited Amazon Web Services account can choose to accept the
%% invitation from only one Amazon Web Services account. For more
%% information, see Managing GuardDuty accounts by invitation.
%%
%% After the invite has been accepted and you choose to disassociate a member
%% account (by using DisassociateMembers) from your account, the details of
%% the member account obtained by invoking CreateMembers, including the
%% associated email addresses, will be retained. This is done so that you can
%% invoke InviteMembers without the need to invoke CreateMembers again. To
%% remove the details associated with a member account, you must also invoke
%% DeleteMembers.
invite_members(Client, DetectorId, Input) ->
    invite_members(Client, DetectorId, Input, []).
invite_members(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/invite"],
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

%% @doc Lists coverage details for your GuardDuty account.
%%
%% If you're a GuardDuty administrator, you can retrieve all resources
%% associated with the active member accounts in your organization.
%%
%% Make sure the accounts have EKS Runtime Monitoring enabled and GuardDuty
%% agent running on their EKS nodes.
list_coverage(Client, DetectorId, Input) ->
    list_coverage(Client, DetectorId, Input, []).
list_coverage(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/coverage"],
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

%% @doc Lists detectorIds of all the existing Amazon GuardDuty detector
%% resources.
list_detectors(Client)
  when is_map(Client) ->
    list_detectors(Client, #{}, #{}).

list_detectors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_detectors(Client, QueryMap, HeadersMap, []).

list_detectors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a paginated list of the current filters.
list_filters(Client, DetectorId)
  when is_map(Client) ->
    list_filters(Client, DetectorId, #{}, #{}).

list_filters(Client, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_filters(Client, DetectorId, QueryMap, HeadersMap, []).

list_filters(Client, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/filter"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists Amazon GuardDuty findings for the specified detector ID.
list_findings(Client, DetectorId, Input) ->
    list_findings(Client, DetectorId, Input, []).
list_findings(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/findings"],
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

%% @doc Lists all GuardDuty membership invitations that were sent to the
%% current Amazon Web Services account.
list_invitations(Client)
  when is_map(Client) ->
    list_invitations(Client, #{}, #{}).

list_invitations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_invitations(Client, QueryMap, HeadersMap, []).

list_invitations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/invitation"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the IPSets of the GuardDuty service specified by the detector
%% ID.
%%
%% If you use this operation from a member account, the IPSets returned are
%% the IPSets from the associated administrator account.
list_ip_sets(Client, DetectorId)
  when is_map(Client) ->
    list_ip_sets(Client, DetectorId, #{}, #{}).

list_ip_sets(Client, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_ip_sets(Client, DetectorId, QueryMap, HeadersMap, []).

list_ip_sets(Client, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/ipset"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists details about all member accounts for the current GuardDuty
%% administrator account.
list_members(Client, DetectorId)
  when is_map(Client) ->
    list_members(Client, DetectorId, #{}, #{}).

list_members(Client, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_members(Client, DetectorId, QueryMap, HeadersMap, []).

list_members(Client, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"onlyAssociated">>, maps:get(<<"onlyAssociated">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the accounts designated as GuardDuty delegated administrators.
%%
%% Only the organization's management account can run this API operation.
list_organization_admin_accounts(Client)
  when is_map(Client) ->
    list_organization_admin_accounts(Client, #{}, #{}).

list_organization_admin_accounts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_organization_admin_accounts(Client, QueryMap, HeadersMap, []).

list_organization_admin_accounts(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/admin"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of publishing destinations associated with the
%% specified `detectorId'.
list_publishing_destinations(Client, DetectorId)
  when is_map(Client) ->
    list_publishing_destinations(Client, DetectorId, #{}, #{}).

list_publishing_destinations(Client, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_publishing_destinations(Client, DetectorId, QueryMap, HeadersMap, []).

list_publishing_destinations(Client, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/publishingDestination"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists tags for a resource.
%%
%% Tagging is currently supported for detectors, finding filters, IP sets,
%% threat intel sets, and publishing destination, with a limit of 50 tags per
%% resource. When invoked, this operation returns all assigned tags for a
%% given resource.
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

%% @doc Lists the ThreatIntelSets of the GuardDuty service specified by the
%% detector ID.
%%
%% If you use this operation from a member account, the ThreatIntelSets
%% associated with the administrator account are returned.
list_threat_intel_sets(Client, DetectorId)
  when is_map(Client) ->
    list_threat_intel_sets(Client, DetectorId, #{}, #{}).

list_threat_intel_sets(Client, DetectorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_threat_intel_sets(Client, DetectorId, QueryMap, HeadersMap, []).

list_threat_intel_sets(Client, DetectorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/threatintelset"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Initiates the malware scan.
%%
%% Invoking this API will automatically create the Service-linked role in the
%% corresponding account.
start_malware_scan(Client, Input) ->
    start_malware_scan(Client, Input, []).
start_malware_scan(Client, Input0, Options0) ->
    Method = post,
    Path = ["/malware-scan/start"],
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

%% @doc Turns on GuardDuty monitoring of the specified member accounts.
%%
%% Use this operation to restart monitoring of accounts that you stopped
%% monitoring with the StopMonitoringMembers operation.
start_monitoring_members(Client, DetectorId, Input) ->
    start_monitoring_members(Client, DetectorId, Input, []).
start_monitoring_members(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/start"],
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

%% @doc Stops GuardDuty monitoring for the specified member accounts.
%%
%% Use the `StartMonitoringMembers' operation to restart monitoring for
%% those accounts.
%%
%% With `autoEnableOrganizationMembers' configuration for your
%% organization set to `ALL', you'll receive an error if you attempt
%% to stop monitoring the member accounts in your organization.
stop_monitoring_members(Client, DetectorId, Input) ->
    stop_monitoring_members(Client, DetectorId, Input, []).
stop_monitoring_members(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/stop"],
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
    SuccessStatusCode = 204,
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

%% @doc Unarchives GuardDuty findings specified by the `findingIds'.
unarchive_findings(Client, DetectorId, Input) ->
    unarchive_findings(Client, DetectorId, Input, []).
unarchive_findings(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/findings/unarchive"],
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
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the Amazon GuardDuty detector specified by the detectorId.
%%
%% There might be regional differences because some data sources might not be
%% available in all the Amazon Web Services Regions where GuardDuty is
%% presently supported. For more information, see Regions and endpoints.
update_detector(Client, DetectorId, Input) ->
    update_detector(Client, DetectorId, Input, []).
update_detector(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), ""],
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

%% @doc Updates the filter specified by the filter name.
update_filter(Client, DetectorId, FilterName, Input) ->
    update_filter(Client, DetectorId, FilterName, Input, []).
update_filter(Client, DetectorId, FilterName, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/filter/", aws_util:encode_uri(FilterName), ""],
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

%% @doc Marks the specified GuardDuty findings as useful or not useful.
update_findings_feedback(Client, DetectorId, Input) ->
    update_findings_feedback(Client, DetectorId, Input, []).
update_findings_feedback(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/findings/feedback"],
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

%% @doc Updates the IPSet specified by the IPSet ID.
update_ip_set(Client, DetectorId, IpSetId, Input) ->
    update_ip_set(Client, DetectorId, IpSetId, Input, []).
update_ip_set(Client, DetectorId, IpSetId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/ipset/", aws_util:encode_uri(IpSetId), ""],
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

%% @doc Updates the malware scan settings.
%%
%% There might be regional differences because some data sources might not be
%% available in all the Amazon Web Services Regions where GuardDuty is
%% presently supported. For more information, see Regions and endpoints.
update_malware_scan_settings(Client, DetectorId, Input) ->
    update_malware_scan_settings(Client, DetectorId, Input, []).
update_malware_scan_settings(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/malware-scan-settings"],
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

%% @doc Contains information on member accounts to be updated.
%%
%% There might be regional differences because some data sources might not be
%% available in all the Amazon Web Services Regions where GuardDuty is
%% presently supported. For more information, see Regions and endpoints.
update_member_detectors(Client, DetectorId, Input) ->
    update_member_detectors(Client, DetectorId, Input, []).
update_member_detectors(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/member/detector/update"],
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

%% @doc Configures the delegated administrator account with the provided
%% values.
%%
%% You must provide a value for either `autoEnableOrganizationMembers' or
%% `autoEnable', but not both.
%%
%% There might be regional differences because some data sources might not be
%% available in all the Amazon Web Services Regions where GuardDuty is
%% presently supported. For more information, see Regions and endpoints.
update_organization_configuration(Client, DetectorId, Input) ->
    update_organization_configuration(Client, DetectorId, Input, []).
update_organization_configuration(Client, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/admin"],
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

%% @doc Updates information about the publishing destination specified by the
%% `destinationId'.
update_publishing_destination(Client, DestinationId, DetectorId, Input) ->
    update_publishing_destination(Client, DestinationId, DetectorId, Input, []).
update_publishing_destination(Client, DestinationId, DetectorId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/publishingDestination/", aws_util:encode_uri(DestinationId), ""],
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

%% @doc Updates the ThreatIntelSet specified by the ThreatIntelSet ID.
update_threat_intel_set(Client, DetectorId, ThreatIntelSetId, Input) ->
    update_threat_intel_set(Client, DetectorId, ThreatIntelSetId, Input, []).
update_threat_intel_set(Client, DetectorId, ThreatIntelSetId, Input0, Options0) ->
    Method = post,
    Path = ["/detector/", aws_util:encode_uri(DetectorId), "/threatintelset/", aws_util:encode_uri(ThreatIntelSetId), ""],
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
    Client1 = Client#{service => <<"guardduty">>},
    Host = build_host(<<"guardduty">>, Client1),
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
