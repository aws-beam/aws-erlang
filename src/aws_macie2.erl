%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Macie is a fully managed data security and data privacy
%% service that uses machine learning and pattern matching to discover and
%% protect your sensitive data in AWS.
%%
%% Macie automates the discovery of sensitive data, such as PII and
%% intellectual property, to provide you with insight into the data that your
%% organization stores in AWS. Macie also provides an inventory of your
%% Amazon S3 buckets, which it continually monitors for you. If Macie detects
%% sensitive data or potential data access issues, it generates detailed
%% findings for you to review and act upon as necessary.
-module(aws_macie2).

-export([accept_invitation/2,
         accept_invitation/3,
         batch_get_custom_data_identifiers/2,
         batch_get_custom_data_identifiers/3,
         create_classification_job/2,
         create_classification_job/3,
         create_custom_data_identifier/2,
         create_custom_data_identifier/3,
         create_findings_filter/2,
         create_findings_filter/3,
         create_invitations/2,
         create_invitations/3,
         create_member/2,
         create_member/3,
         create_sample_findings/2,
         create_sample_findings/3,
         decline_invitations/2,
         decline_invitations/3,
         delete_custom_data_identifier/3,
         delete_custom_data_identifier/4,
         delete_findings_filter/3,
         delete_findings_filter/4,
         delete_invitations/2,
         delete_invitations/3,
         delete_member/3,
         delete_member/4,
         describe_buckets/2,
         describe_buckets/3,
         describe_classification_job/2,
         describe_classification_job/4,
         describe_classification_job/5,
         describe_organization_configuration/1,
         describe_organization_configuration/3,
         describe_organization_configuration/4,
         disable_macie/2,
         disable_macie/3,
         disable_organization_admin_account/2,
         disable_organization_admin_account/3,
         disassociate_from_administrator_account/2,
         disassociate_from_administrator_account/3,
         disassociate_from_master_account/2,
         disassociate_from_master_account/3,
         disassociate_member/3,
         disassociate_member/4,
         enable_macie/2,
         enable_macie/3,
         enable_organization_admin_account/2,
         enable_organization_admin_account/3,
         get_administrator_account/1,
         get_administrator_account/3,
         get_administrator_account/4,
         get_bucket_statistics/2,
         get_bucket_statistics/3,
         get_classification_export_configuration/1,
         get_classification_export_configuration/3,
         get_classification_export_configuration/4,
         get_custom_data_identifier/2,
         get_custom_data_identifier/4,
         get_custom_data_identifier/5,
         get_finding_statistics/2,
         get_finding_statistics/3,
         get_findings/2,
         get_findings/3,
         get_findings_filter/2,
         get_findings_filter/4,
         get_findings_filter/5,
         get_invitations_count/1,
         get_invitations_count/3,
         get_invitations_count/4,
         get_macie_session/1,
         get_macie_session/3,
         get_macie_session/4,
         get_master_account/1,
         get_master_account/3,
         get_master_account/4,
         get_member/2,
         get_member/4,
         get_member/5,
         get_usage_statistics/2,
         get_usage_statistics/3,
         get_usage_totals/1,
         get_usage_totals/3,
         get_usage_totals/4,
         list_classification_jobs/2,
         list_classification_jobs/3,
         list_custom_data_identifiers/2,
         list_custom_data_identifiers/3,
         list_findings/2,
         list_findings/3,
         list_findings_filters/1,
         list_findings_filters/3,
         list_findings_filters/4,
         list_invitations/1,
         list_invitations/3,
         list_invitations/4,
         list_members/1,
         list_members/3,
         list_members/4,
         list_organization_admin_accounts/1,
         list_organization_admin_accounts/3,
         list_organization_admin_accounts/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_classification_export_configuration/2,
         put_classification_export_configuration/3,
         tag_resource/3,
         tag_resource/4,
         test_custom_data_identifier/2,
         test_custom_data_identifier/3,
         untag_resource/3,
         untag_resource/4,
         update_classification_job/3,
         update_classification_job/4,
         update_findings_filter/3,
         update_findings_filter/4,
         update_macie_session/2,
         update_macie_session/3,
         update_member_session/3,
         update_member_session/4,
         update_organization_configuration/2,
         update_organization_configuration/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts an Amazon Macie membership invitation that was received from
%% a specific account.
accept_invitation(Client, Input) ->
    accept_invitation(Client, Input, []).
accept_invitation(Client, Input0, Options) ->
    Method = post,
    Path = ["/invitations/accept"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves information about one or more custom data identifiers.
batch_get_custom_data_identifiers(Client, Input) ->
    batch_get_custom_data_identifiers(Client, Input, []).
batch_get_custom_data_identifiers(Client, Input0, Options) ->
    Method = post,
    Path = ["/custom-data-identifiers/get"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates and defines the settings for a classification job.
create_classification_job(Client, Input) ->
    create_classification_job(Client, Input, []).
create_classification_job(Client, Input0, Options) ->
    Method = post,
    Path = ["/jobs"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates and defines the criteria and other settings for a custom data
%% identifier.
create_custom_data_identifier(Client, Input) ->
    create_custom_data_identifier(Client, Input, []).
create_custom_data_identifier(Client, Input0, Options) ->
    Method = post,
    Path = ["/custom-data-identifiers"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates and defines the criteria and other settings for a findings
%% filter.
create_findings_filter(Client, Input) ->
    create_findings_filter(Client, Input, []).
create_findings_filter(Client, Input0, Options) ->
    Method = post,
    Path = ["/findingsfilters"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Sends an Amazon Macie membership invitation to one or more accounts.
create_invitations(Client, Input) ->
    create_invitations(Client, Input, []).
create_invitations(Client, Input0, Options) ->
    Method = post,
    Path = ["/invitations"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Associates an account with an Amazon Macie administrator account.
create_member(Client, Input) ->
    create_member(Client, Input, []).
create_member(Client, Input0, Options) ->
    Method = post,
    Path = ["/members"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates sample findings.
create_sample_findings(Client, Input) ->
    create_sample_findings(Client, Input, []).
create_sample_findings(Client, Input0, Options) ->
    Method = post,
    Path = ["/findings/sample"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Declines Amazon Macie membership invitations that were received from
%% specific accounts.
decline_invitations(Client, Input) ->
    decline_invitations(Client, Input, []).
decline_invitations(Client, Input0, Options) ->
    Method = post,
    Path = ["/invitations/decline"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Soft deletes a custom data identifier.
delete_custom_data_identifier(Client, Id, Input) ->
    delete_custom_data_identifier(Client, Id, Input, []).
delete_custom_data_identifier(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/custom-data-identifiers/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a findings filter.
delete_findings_filter(Client, Id, Input) ->
    delete_findings_filter(Client, Id, Input, []).
delete_findings_filter(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/findingsfilters/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes Amazon Macie membership invitations that were received from
%% specific accounts.
delete_invitations(Client, Input) ->
    delete_invitations(Client, Input, []).
delete_invitations(Client, Input0, Options) ->
    Method = post,
    Path = ["/invitations/delete"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the association between an Amazon Macie administrator account
%% and an account.
delete_member(Client, Id, Input) ->
    delete_member(Client, Id, Input, []).
delete_member(Client, Id, Input0, Options) ->
    Method = delete,
    Path = ["/members/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves (queries) statistical data and other information about one
%% or more S3 buckets that Amazon Macie monitors and analyzes.
describe_buckets(Client, Input) ->
    describe_buckets(Client, Input, []).
describe_buckets(Client, Input0, Options) ->
    Method = post,
    Path = ["/datasources/s3"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the status and settings for a classification job.
describe_classification_job(Client, JobId)
  when is_map(Client) ->
    describe_classification_job(Client, JobId, #{}, #{}).

describe_classification_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_classification_job(Client, JobId, QueryMap, HeadersMap, []).

describe_classification_job(Client, JobId, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the Amazon Macie configuration settings for an AWS
%% organization.
describe_organization_configuration(Client)
  when is_map(Client) ->
    describe_organization_configuration(Client, #{}, #{}).

describe_organization_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_organization_configuration(Client, QueryMap, HeadersMap, []).

describe_organization_configuration(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/admin/configuration"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disables an Amazon Macie account and deletes Macie resources for the
%% account.
disable_macie(Client, Input) ->
    disable_macie(Client, Input, []).
disable_macie(Client, Input0, Options) ->
    Method = delete,
    Path = ["/macie"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disables an account as the delegated Amazon Macie administrator
%% account for an AWS organization.
disable_organization_admin_account(Client, Input) ->
    disable_organization_admin_account(Client, Input, []).
disable_organization_admin_account(Client, Input0, Options) ->
    Method = delete,
    Path = ["/admin"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"adminAccountId">>, <<"adminAccountId">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates a member account from its Amazon Macie administrator
%% account.
disassociate_from_administrator_account(Client, Input) ->
    disassociate_from_administrator_account(Client, Input, []).
disassociate_from_administrator_account(Client, Input0, Options) ->
    Method = post,
    Path = ["/administrator/disassociate"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc (Deprecated) Disassociates a member account from its Amazon Macie
%% administrator account.
%%
%% This operation has been replaced by the
%% DisassociateFromAdministratorAccount operation.
disassociate_from_master_account(Client, Input) ->
    disassociate_from_master_account(Client, Input, []).
disassociate_from_master_account(Client, Input0, Options) ->
    Method = post,
    Path = ["/master/disassociate"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Disassociates an Amazon Macie administrator account from a member
%% account.
disassociate_member(Client, Id, Input) ->
    disassociate_member(Client, Id, Input, []).
disassociate_member(Client, Id, Input0, Options) ->
    Method = post,
    Path = ["/members/disassociate/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Enables Amazon Macie and specifies the configuration settings for a
%% Macie account.
enable_macie(Client, Input) ->
    enable_macie(Client, Input, []).
enable_macie(Client, Input0, Options) ->
    Method = post,
    Path = ["/macie"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Designates an account as the delegated Amazon Macie administrator
%% account for an AWS organization.
enable_organization_admin_account(Client, Input) ->
    enable_organization_admin_account(Client, Input, []).
enable_organization_admin_account(Client, Input0, Options) ->
    Method = post,
    Path = ["/admin"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves information about the Amazon Macie administrator account
%% for an account.
get_administrator_account(Client)
  when is_map(Client) ->
    get_administrator_account(Client, #{}, #{}).

get_administrator_account(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_administrator_account(Client, QueryMap, HeadersMap, []).

get_administrator_account(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/administrator"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves (queries) aggregated statistical data for all the S3
%% buckets that Amazon Macie monitors and analyzes.
get_bucket_statistics(Client, Input) ->
    get_bucket_statistics(Client, Input, []).
get_bucket_statistics(Client, Input0, Options) ->
    Method = post,
    Path = ["/datasources/s3/statistics"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the configuration settings for storing data classification
%% results.
get_classification_export_configuration(Client)
  when is_map(Client) ->
    get_classification_export_configuration(Client, #{}, #{}).

get_classification_export_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_classification_export_configuration(Client, QueryMap, HeadersMap, []).

get_classification_export_configuration(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/classification-export-configuration"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the criteria and other settings for a custom data
%% identifier.
get_custom_data_identifier(Client, Id)
  when is_map(Client) ->
    get_custom_data_identifier(Client, Id, #{}, #{}).

get_custom_data_identifier(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_custom_data_identifier(Client, Id, QueryMap, HeadersMap, []).

get_custom_data_identifier(Client, Id, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/custom-data-identifiers/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves (queries) aggregated statistical data about findings.
get_finding_statistics(Client, Input) ->
    get_finding_statistics(Client, Input, []).
get_finding_statistics(Client, Input0, Options) ->
    Method = post,
    Path = ["/findings/statistics"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the details of one or more findings.
get_findings(Client, Input) ->
    get_findings(Client, Input, []).
get_findings(Client, Input0, Options) ->
    Method = post,
    Path = ["/findings/describe"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the criteria and other settings for a findings filter.
get_findings_filter(Client, Id)
  when is_map(Client) ->
    get_findings_filter(Client, Id, #{}, #{}).

get_findings_filter(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_findings_filter(Client, Id, QueryMap, HeadersMap, []).

get_findings_filter(Client, Id, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/findingsfilters/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the count of Amazon Macie membership invitations that were
%% received by an account.
get_invitations_count(Client)
  when is_map(Client) ->
    get_invitations_count(Client, #{}, #{}).

get_invitations_count(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_invitations_count(Client, QueryMap, HeadersMap, []).

get_invitations_count(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/invitations/count"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the current status and configuration settings for an Amazon
%% Macie account.
get_macie_session(Client)
  when is_map(Client) ->
    get_macie_session(Client, #{}, #{}).

get_macie_session(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_macie_session(Client, QueryMap, HeadersMap, []).

get_macie_session(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/macie"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc (Deprecated) Retrieves information about the Amazon Macie
%% administrator account for an account.
%%
%% This operation has been replaced by the GetAdministratorAccount operation.
get_master_account(Client)
  when is_map(Client) ->
    get_master_account(Client, #{}, #{}).

get_master_account(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_master_account(Client, QueryMap, HeadersMap, []).

get_master_account(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/master"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about an account that's associated with an
%% Amazon Macie administrator account.
get_member(Client, Id)
  when is_map(Client) ->
    get_member(Client, Id, #{}, #{}).

get_member(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_member(Client, Id, QueryMap, HeadersMap, []).

get_member(Client, Id, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/members/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves (queries) quotas and aggregated usage data for one or more
%% accounts.
get_usage_statistics(Client, Input) ->
    get_usage_statistics(Client, Input, []).
get_usage_statistics(Client, Input0, Options) ->
    Method = post,
    Path = ["/usage/statistics"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves (queries) aggregated usage data for an account.
get_usage_totals(Client)
  when is_map(Client) ->
    get_usage_totals(Client, #{}, #{}).

get_usage_totals(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_usage_totals(Client, QueryMap, HeadersMap, []).

get_usage_totals(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/usage"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"timeRange">>, maps:get(<<"timeRange">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a subset of information about one or more classification
%% jobs.
list_classification_jobs(Client, Input) ->
    list_classification_jobs(Client, Input, []).
list_classification_jobs(Client, Input0, Options) ->
    Method = post,
    Path = ["/jobs/list"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a subset of information about all the custom data
%% identifiers for an account.
list_custom_data_identifiers(Client, Input) ->
    list_custom_data_identifiers(Client, Input, []).
list_custom_data_identifiers(Client, Input0, Options) ->
    Method = post,
    Path = ["/custom-data-identifiers/list"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a subset of information about one or more findings.
list_findings(Client, Input) ->
    list_findings(Client, Input, []).
list_findings(Client, Input0, Options) ->
    Method = post,
    Path = ["/findings"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a subset of information about all the findings filters for
%% an account.
list_findings_filters(Client)
  when is_map(Client) ->
    list_findings_filters(Client, #{}, #{}).

list_findings_filters(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_findings_filters(Client, QueryMap, HeadersMap, []).

list_findings_filters(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/findingsfilters"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about all the Amazon Macie membership
%% invitations that were received by an account.
list_invitations(Client)
  when is_map(Client) ->
    list_invitations(Client, #{}, #{}).

list_invitations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_invitations(Client, QueryMap, HeadersMap, []).

list_invitations(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/invitations"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the accounts that are associated with an
%% Amazon Macie administrator account.
list_members(Client)
  when is_map(Client) ->
    list_members(Client, #{}, #{}).

list_members(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_members(Client, QueryMap, HeadersMap, []).

list_members(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/members"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"onlyAssociated">>, maps:get(<<"onlyAssociated">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the delegated Amazon Macie administrator
%% account for an AWS organization.
list_organization_admin_accounts(Client)
  when is_map(Client) ->
    list_organization_admin_accounts(Client, #{}, #{}).

list_organization_admin_accounts(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_organization_admin_accounts(Client, QueryMap, HeadersMap, []).

list_organization_admin_accounts(Client, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/admin"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the tags (keys and values) that are associated with a
%% classification job, custom data identifier, findings filter, or member
%% account.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Creates or updates the configuration settings for storing data
%% classification results.
put_classification_export_configuration(Client, Input) ->
    put_classification_export_configuration(Client, Input, []).
put_classification_export_configuration(Client, Input0, Options) ->
    Method = put,
    Path = ["/classification-export-configuration"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds or updates one or more tags (keys and values) that are
%% associated with a classification job, custom data identifier, findings
%% filter, or member account.
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

%% @doc Tests a custom data identifier.
test_custom_data_identifier(Client, Input) ->
    test_custom_data_identifier(Client, Input, []).
test_custom_data_identifier(Client, Input0, Options) ->
    Method = post,
    Path = ["/custom-data-identifiers/test"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes one or more tags (keys and values) from a classification job,
%% custom data identifier, findings filter, or member account.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Changes the status of a classification job.
update_classification_job(Client, JobId, Input) ->
    update_classification_job(Client, JobId, Input, []).
update_classification_job(Client, JobId, Input0, Options) ->
    Method = patch,
    Path = ["/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the criteria and other settings for a findings filter.
update_findings_filter(Client, Id, Input) ->
    update_findings_filter(Client, Id, Input, []).
update_findings_filter(Client, Id, Input0, Options) ->
    Method = patch,
    Path = ["/findingsfilters/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Suspends or re-enables an Amazon Macie account, or updates the
%% configuration settings for a Macie account.
update_macie_session(Client, Input) ->
    update_macie_session(Client, Input, []).
update_macie_session(Client, Input0, Options) ->
    Method = patch,
    Path = ["/macie"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Enables an Amazon Macie administrator to suspend or re-enable a
%% member account.
update_member_session(Client, Id, Input) ->
    update_member_session(Client, Id, Input, []).
update_member_session(Client, Id, Input0, Options) ->
    Method = patch,
    Path = ["/macie/members/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the Amazon Macie configuration settings for an AWS
%% organization.
update_organization_configuration(Client, Input) ->
    update_organization_configuration(Client, Input, []).
update_organization_configuration(Client, Input0, Options) ->
    Method = patch,
    Path = ["/admin/configuration"],
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
    Client1 = Client#{service => <<"macie2">>},
    Host = build_host(<<"macie2">>, Client1),
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
