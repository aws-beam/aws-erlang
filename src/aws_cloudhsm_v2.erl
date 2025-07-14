%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc For more information about CloudHSM, see CloudHSM:
%% http://aws.amazon.com/cloudhsm/ and the
%% CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/.
-module(aws_cloudhsm_v2).

-export([copy_backup_to_region/2,
         copy_backup_to_region/3,
         create_cluster/2,
         create_cluster/3,
         create_hsm/2,
         create_hsm/3,
         delete_backup/2,
         delete_backup/3,
         delete_cluster/2,
         delete_cluster/3,
         delete_hsm/2,
         delete_hsm/3,
         delete_resource_policy/2,
         delete_resource_policy/3,
         describe_backups/2,
         describe_backups/3,
         describe_clusters/2,
         describe_clusters/3,
         get_resource_policy/2,
         get_resource_policy/3,
         initialize_cluster/2,
         initialize_cluster/3,
         list_tags/2,
         list_tags/3,
         modify_backup_attributes/2,
         modify_backup_attributes/3,
         modify_cluster/2,
         modify_cluster/3,
         put_resource_policy/2,
         put_resource_policy/3,
         restore_backup/2,
         restore_backup/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% delete_hsm_request() :: #{
%%   <<"ClusterId">> := string(),
%%   <<"EniId">> => string(),
%%   <<"EniIp">> => string(),
%%   <<"HsmId">> => string()
%% }
-type delete_hsm_request() :: #{binary() => any()}.

%% Example:
%% create_hsm_response() :: #{
%%   <<"Hsm">> => hsm()
%% }
-type create_hsm_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"TagList">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_response() :: #{
%%   <<"Policy">> => string(),
%%   <<"ResourceArn">> => string()
%% }
-type delete_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% create_cluster_response() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type create_cluster_response() :: #{binary() => any()}.

%% Example:
%% cloud_hsm_resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type cloud_hsm_resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% modify_backup_attributes_response() :: #{
%%   <<"Backup">> => backup()
%% }
-type modify_backup_attributes_response() :: #{binary() => any()}.

%% Example:
%% list_tags_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TagList">> => list(tag())
%% }
-type list_tags_response() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_response() :: #{
%%   <<"Policy">> => string()
%% }
-type get_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% cloud_hsm_access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type cloud_hsm_access_denied_exception() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceId">> := string(),
%%   <<"TagKeyList">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% restore_backup_response() :: #{
%%   <<"Backup">> => backup()
%% }
-type restore_backup_response() :: #{binary() => any()}.

%% Example:
%% modify_backup_attributes_request() :: #{
%%   <<"BackupId">> := string(),
%%   <<"NeverExpires">> := boolean()
%% }
-type modify_backup_attributes_request() :: #{binary() => any()}.

%% Example:
%% delete_hsm_response() :: #{
%%   <<"HsmId">> => string()
%% }
-type delete_hsm_response() :: #{binary() => any()}.

%% Example:
%% cloud_hsm_resource_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type cloud_hsm_resource_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% modify_cluster_response() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type modify_cluster_response() :: #{binary() => any()}.

%% Example:
%% destination_backup() :: #{
%%   <<"CreateTimestamp">> => non_neg_integer(),
%%   <<"SourceBackup">> => string(),
%%   <<"SourceCluster">> => string(),
%%   <<"SourceRegion">> => string()
%% }
-type destination_backup() :: #{binary() => any()}.

%% Example:
%% cloud_hsm_internal_failure_exception() :: #{
%%   <<"Message">> => string()
%% }
-type cloud_hsm_internal_failure_exception() :: #{binary() => any()}.

%% Example:
%% create_cluster_request() :: #{
%%   <<"BackupRetentionPolicy">> => backup_retention_policy(),
%%   <<"HsmType">> := string(),
%%   <<"Mode">> => list(any()),
%%   <<"NetworkType">> => list(any()),
%%   <<"SourceBackupId">> => string(),
%%   <<"SubnetIds">> := list(string()),
%%   <<"TagList">> => list(tag())
%% }
-type create_cluster_request() :: #{binary() => any()}.

%% Example:
%% describe_backups_request() :: #{
%%   <<"Filters">> => map(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Shared">> => boolean(),
%%   <<"SortAscending">> => boolean()
%% }
-type describe_backups_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% cluster() :: #{
%%   <<"BackupPolicy">> => list(any()),
%%   <<"BackupRetentionPolicy">> => backup_retention_policy(),
%%   <<"Certificates">> => certificates(),
%%   <<"ClusterId">> => string(),
%%   <<"CreateTimestamp">> => non_neg_integer(),
%%   <<"HsmType">> => string(),
%%   <<"HsmTypeRollbackExpiration">> => non_neg_integer(),
%%   <<"Hsms">> => list(hsm()),
%%   <<"Mode">> => list(any()),
%%   <<"NetworkType">> => list(any()),
%%   <<"PreCoPassword">> => string(),
%%   <<"SecurityGroup">> => string(),
%%   <<"SourceBackupId">> => string(),
%%   <<"State">> => list(any()),
%%   <<"StateMessage">> => string(),
%%   <<"SubnetMapping">> => map(),
%%   <<"TagList">> => list(tag()),
%%   <<"VpcId">> => string()
%% }
-type cluster() :: #{binary() => any()}.

%% Example:
%% create_hsm_request() :: #{
%%   <<"AvailabilityZone">> := string(),
%%   <<"ClusterId">> := string(),
%%   <<"IpAddress">> => string()
%% }
-type create_hsm_request() :: #{binary() => any()}.

%% Example:
%% delete_backup_response() :: #{
%%   <<"Backup">> => backup()
%% }
-type delete_backup_response() :: #{binary() => any()}.

%% Example:
%% copy_backup_to_region_request() :: #{
%%   <<"BackupId">> := string(),
%%   <<"DestinationRegion">> := string(),
%%   <<"TagList">> => list(tag())
%% }
-type copy_backup_to_region_request() :: #{binary() => any()}.

%% Example:
%% get_resource_policy_request() :: #{
%%   <<"ResourceArn">> => string()
%% }
-type get_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% delete_cluster_response() :: #{
%%   <<"Cluster">> => cluster()
%% }
-type delete_cluster_response() :: #{binary() => any()}.

%% Example:
%% modify_cluster_request() :: #{
%%   <<"BackupRetentionPolicy">> => backup_retention_policy(),
%%   <<"ClusterId">> := string(),
%%   <<"HsmType">> => string()
%% }
-type modify_cluster_request() :: #{binary() => any()}.

%% Example:
%% backup() :: #{
%%   <<"BackupArn">> => string(),
%%   <<"BackupId">> => string(),
%%   <<"BackupState">> => list(any()),
%%   <<"ClusterId">> => string(),
%%   <<"CopyTimestamp">> => non_neg_integer(),
%%   <<"CreateTimestamp">> => non_neg_integer(),
%%   <<"DeleteTimestamp">> => non_neg_integer(),
%%   <<"HsmType">> => string(),
%%   <<"Mode">> => list(any()),
%%   <<"NeverExpires">> => boolean(),
%%   <<"SourceBackup">> => string(),
%%   <<"SourceCluster">> => string(),
%%   <<"SourceRegion">> => string(),
%%   <<"TagList">> => list(tag())
%% }
-type backup() :: #{binary() => any()}.

%% Example:
%% initialize_cluster_response() :: #{
%%   <<"State">> => list(any()),
%%   <<"StateMessage">> => string()
%% }
-type initialize_cluster_response() :: #{binary() => any()}.

%% Example:
%% delete_cluster_request() :: #{
%%   <<"ClusterId">> := string()
%% }
-type delete_cluster_request() :: #{binary() => any()}.

%% Example:
%% restore_backup_request() :: #{
%%   <<"BackupId">> := string()
%% }
-type restore_backup_request() :: #{binary() => any()}.

%% Example:
%% cloud_hsm_invalid_request_exception() :: #{
%%   <<"Message">> => string()
%% }
-type cloud_hsm_invalid_request_exception() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_request() :: #{
%%   <<"Policy">> => string(),
%%   <<"ResourceArn">> => string()
%% }
-type put_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% hsm() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"ClusterId">> => string(),
%%   <<"EniId">> => string(),
%%   <<"EniIp">> => string(),
%%   <<"EniIpV6">> => string(),
%%   <<"HsmId">> => string(),
%%   <<"HsmType">> => string(),
%%   <<"State">> => list(any()),
%%   <<"StateMessage">> => string(),
%%   <<"SubnetId">> => string()
%% }
-type hsm() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% describe_clusters_response() :: #{
%%   <<"Clusters">> => list(cluster()),
%%   <<"NextToken">> => string()
%% }
-type describe_clusters_response() :: #{binary() => any()}.

%% Example:
%% cloud_hsm_service_exception() :: #{
%%   <<"Message">> => string()
%% }
-type cloud_hsm_service_exception() :: #{binary() => any()}.

%% Example:
%% copy_backup_to_region_response() :: #{
%%   <<"DestinationBackup">> => destination_backup()
%% }
-type copy_backup_to_region_response() :: #{binary() => any()}.

%% Example:
%% certificates() :: #{
%%   <<"AwsHardwareCertificate">> => string(),
%%   <<"ClusterCertificate">> => string(),
%%   <<"ClusterCsr">> => string(),
%%   <<"HsmCertificate">> => string(),
%%   <<"ManufacturerHardwareCertificate">> => string()
%% }
-type certificates() :: #{binary() => any()}.

%% Example:
%% put_resource_policy_response() :: #{
%%   <<"Policy">> => string(),
%%   <<"ResourceArn">> => string()
%% }
-type put_resource_policy_response() :: #{binary() => any()}.

%% Example:
%% initialize_cluster_request() :: #{
%%   <<"ClusterId">> := string(),
%%   <<"SignedCert">> := string(),
%%   <<"TrustAnchor">> := string()
%% }
-type initialize_cluster_request() :: #{binary() => any()}.

%% Example:
%% delete_resource_policy_request() :: #{
%%   <<"ResourceArn">> => string()
%% }
-type delete_resource_policy_request() :: #{binary() => any()}.

%% Example:
%% describe_backups_response() :: #{
%%   <<"Backups">> => list(backup()),
%%   <<"NextToken">> => string()
%% }
-type describe_backups_response() :: #{binary() => any()}.

%% Example:
%% delete_backup_request() :: #{
%%   <<"BackupId">> := string()
%% }
-type delete_backup_request() :: #{binary() => any()}.

%% Example:
%% list_tags_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceId">> := string()
%% }
-type list_tags_request() :: #{binary() => any()}.

%% Example:
%% backup_retention_policy() :: #{
%%   <<"Type">> => list(any()),
%%   <<"Value">> => string()
%% }
-type backup_retention_policy() :: #{binary() => any()}.

%% Example:
%% cloud_hsm_tag_exception() :: #{
%%   <<"Message">> => string()
%% }
-type cloud_hsm_tag_exception() :: #{binary() => any()}.

%% Example:
%% describe_clusters_request() :: #{
%%   <<"Filters">> => map(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_clusters_request() :: #{binary() => any()}.

-type copy_backup_to_region_errors() ::
    cloud_hsm_tag_exception() | 
    cloud_hsm_service_exception() | 
    cloud_hsm_invalid_request_exception() | 
    cloud_hsm_internal_failure_exception() | 
    cloud_hsm_access_denied_exception() | 
    cloud_hsm_resource_not_found_exception().

-type create_cluster_errors() ::
    cloud_hsm_tag_exception() | 
    cloud_hsm_service_exception() | 
    cloud_hsm_invalid_request_exception() | 
    cloud_hsm_internal_failure_exception() | 
    cloud_hsm_access_denied_exception() | 
    cloud_hsm_resource_not_found_exception().

-type create_hsm_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_invalid_request_exception() | 
    cloud_hsm_internal_failure_exception() | 
    cloud_hsm_access_denied_exception() | 
    cloud_hsm_resource_not_found_exception().

-type delete_backup_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_invalid_request_exception() | 
    cloud_hsm_internal_failure_exception() | 
    cloud_hsm_access_denied_exception() | 
    cloud_hsm_resource_not_found_exception().

-type delete_cluster_errors() ::
    cloud_hsm_tag_exception() | 
    cloud_hsm_service_exception() | 
    cloud_hsm_invalid_request_exception() | 
    cloud_hsm_internal_failure_exception() | 
    cloud_hsm_access_denied_exception() | 
    cloud_hsm_resource_not_found_exception().

-type delete_hsm_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_invalid_request_exception() | 
    cloud_hsm_internal_failure_exception() | 
    cloud_hsm_access_denied_exception() | 
    cloud_hsm_resource_not_found_exception().

-type delete_resource_policy_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_invalid_request_exception() | 
    cloud_hsm_internal_failure_exception() | 
    cloud_hsm_access_denied_exception() | 
    cloud_hsm_resource_not_found_exception().

-type describe_backups_errors() ::
    cloud_hsm_tag_exception() | 
    cloud_hsm_service_exception() | 
    cloud_hsm_invalid_request_exception() | 
    cloud_hsm_internal_failure_exception() | 
    cloud_hsm_access_denied_exception() | 
    cloud_hsm_resource_not_found_exception().

-type describe_clusters_errors() ::
    cloud_hsm_tag_exception() | 
    cloud_hsm_service_exception() | 
    cloud_hsm_invalid_request_exception() | 
    cloud_hsm_internal_failure_exception() | 
    cloud_hsm_access_denied_exception().

-type get_resource_policy_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_invalid_request_exception() | 
    cloud_hsm_internal_failure_exception() | 
    cloud_hsm_access_denied_exception() | 
    cloud_hsm_resource_not_found_exception().

-type initialize_cluster_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_invalid_request_exception() | 
    cloud_hsm_internal_failure_exception() | 
    cloud_hsm_access_denied_exception() | 
    cloud_hsm_resource_not_found_exception().

-type list_tags_errors() ::
    cloud_hsm_tag_exception() | 
    cloud_hsm_service_exception() | 
    cloud_hsm_invalid_request_exception() | 
    cloud_hsm_internal_failure_exception() | 
    cloud_hsm_access_denied_exception() | 
    cloud_hsm_resource_not_found_exception().

-type modify_backup_attributes_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_invalid_request_exception() | 
    cloud_hsm_internal_failure_exception() | 
    cloud_hsm_access_denied_exception() | 
    cloud_hsm_resource_not_found_exception().

-type modify_cluster_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_invalid_request_exception() | 
    cloud_hsm_internal_failure_exception() | 
    cloud_hsm_access_denied_exception() | 
    cloud_hsm_resource_not_found_exception().

-type put_resource_policy_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_invalid_request_exception() | 
    cloud_hsm_internal_failure_exception() | 
    cloud_hsm_access_denied_exception() | 
    cloud_hsm_resource_not_found_exception().

-type restore_backup_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_invalid_request_exception() | 
    cloud_hsm_internal_failure_exception() | 
    cloud_hsm_access_denied_exception() | 
    cloud_hsm_resource_not_found_exception().

-type tag_resource_errors() ::
    cloud_hsm_tag_exception() | 
    cloud_hsm_service_exception() | 
    cloud_hsm_invalid_request_exception() | 
    cloud_hsm_internal_failure_exception() | 
    cloud_hsm_resource_limit_exceeded_exception() | 
    cloud_hsm_access_denied_exception() | 
    cloud_hsm_resource_not_found_exception().

-type untag_resource_errors() ::
    cloud_hsm_tag_exception() | 
    cloud_hsm_service_exception() | 
    cloud_hsm_invalid_request_exception() | 
    cloud_hsm_internal_failure_exception() | 
    cloud_hsm_access_denied_exception() | 
    cloud_hsm_resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Copy an CloudHSM cluster backup to a different region.
%%
%% Cross-account use: No. You cannot perform this operation on an CloudHSM
%% backup in a different Amazon Web Services account.
-spec copy_backup_to_region(aws_client:aws_client(), copy_backup_to_region_request()) ->
    {ok, copy_backup_to_region_response(), tuple()} |
    {error, any()} |
    {error, copy_backup_to_region_errors(), tuple()}.
copy_backup_to_region(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_backup_to_region(Client, Input, []).

-spec copy_backup_to_region(aws_client:aws_client(), copy_backup_to_region_request(), proplists:proplist()) ->
    {ok, copy_backup_to_region_response(), tuple()} |
    {error, any()} |
    {error, copy_backup_to_region_errors(), tuple()}.
copy_backup_to_region(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyBackupToRegion">>, Input, Options).

%% @doc Creates a new CloudHSM cluster.
%%
%% Cross-account use: Yes. To perform this operation with an CloudHSM backup
%% in a different AWS account, specify the full backup
%% ARN in the value of the SourceBackupId parameter.
-spec create_cluster(aws_client:aws_client(), create_cluster_request()) ->
    {ok, create_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster(Client, Input, []).

-spec create_cluster(aws_client:aws_client(), create_cluster_request(), proplists:proplist()) ->
    {ok, create_cluster_response(), tuple()} |
    {error, any()} |
    {error, create_cluster_errors(), tuple()}.
create_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCluster">>, Input, Options).

%% @doc Creates a new hardware security module (HSM) in the specified
%% CloudHSM
%% cluster.
%%
%% Cross-account use: No. You cannot perform this operation on an CloudHSM
%% cluster in a different Amazon Web Service account.
-spec create_hsm(aws_client:aws_client(), create_hsm_request()) ->
    {ok, create_hsm_response(), tuple()} |
    {error, any()} |
    {error, create_hsm_errors(), tuple()}.
create_hsm(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hsm(Client, Input, []).

-spec create_hsm(aws_client:aws_client(), create_hsm_request(), proplists:proplist()) ->
    {ok, create_hsm_response(), tuple()} |
    {error, any()} |
    {error, create_hsm_errors(), tuple()}.
create_hsm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHsm">>, Input, Options).

%% @doc Deletes a specified CloudHSM backup.
%%
%% A backup can be restored up to 7 days
%% after the DeleteBackup request is made. For more information on restoring
%% a backup, see
%% `RestoreBackup'.
%%
%% Cross-account use: No. You cannot perform this operation on an CloudHSM
%% backup in a different Amazon Web Services account.
-spec delete_backup(aws_client:aws_client(), delete_backup_request()) ->
    {ok, delete_backup_response(), tuple()} |
    {error, any()} |
    {error, delete_backup_errors(), tuple()}.
delete_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_backup(Client, Input, []).

-spec delete_backup(aws_client:aws_client(), delete_backup_request(), proplists:proplist()) ->
    {ok, delete_backup_response(), tuple()} |
    {error, any()} |
    {error, delete_backup_errors(), tuple()}.
delete_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBackup">>, Input, Options).

%% @doc Deletes the specified CloudHSM cluster.
%%
%% Before you can delete a cluster, you must
%% delete all HSMs in the cluster. To see if the cluster contains any HSMs,
%% use `DescribeClusters'. To delete an HSM, use `DeleteHsm'.
%%
%% Cross-account use: No. You cannot perform this operation on an CloudHSM
%% cluster in a different Amazon Web Services account.
-spec delete_cluster(aws_client:aws_client(), delete_cluster_request()) ->
    {ok, delete_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cluster(Client, Input, []).

-spec delete_cluster(aws_client:aws_client(), delete_cluster_request(), proplists:proplist()) ->
    {ok, delete_cluster_response(), tuple()} |
    {error, any()} |
    {error, delete_cluster_errors(), tuple()}.
delete_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCluster">>, Input, Options).

%% @doc Deletes the specified HSM.
%%
%% To specify an HSM, you can use its identifier (ID), the IP
%% address of the HSM's elastic network interface (ENI), or the ID of the
%% HSM's ENI. You need to
%% specify only one of these values. To find these values, use
%% `DescribeClusters'.
%%
%% Cross-account use: No. You cannot perform this operation on an CloudHSM
%% hsm in a different Amazon Web Services account.
-spec delete_hsm(aws_client:aws_client(), delete_hsm_request()) ->
    {ok, delete_hsm_response(), tuple()} |
    {error, any()} |
    {error, delete_hsm_errors(), tuple()}.
delete_hsm(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_hsm(Client, Input, []).

-spec delete_hsm(aws_client:aws_client(), delete_hsm_request(), proplists:proplist()) ->
    {ok, delete_hsm_response(), tuple()} |
    {error, any()} |
    {error, delete_hsm_errors(), tuple()}.
delete_hsm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHsm">>, Input, Options).

%% @doc Deletes an CloudHSM resource policy.
%%
%% Deleting a resource policy will result in the resource being unshared and
%% removed from
%% any RAM resource shares. Deleting the resource policy attached to a backup
%% will not impact any clusters created from that
%% backup.
%%
%% Cross-account use: No. You cannot perform this operation on an CloudHSM
%% resource in a different Amazon Web Services account.
-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_resource_policy(Client, Input, []).

-spec delete_resource_policy(aws_client:aws_client(), delete_resource_policy_request(), proplists:proplist()) ->
    {ok, delete_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, delete_resource_policy_errors(), tuple()}.
delete_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteResourcePolicy">>, Input, Options).

%% @doc Gets information about backups of CloudHSM clusters.
%%
%% Lists either the backups you own or the backups shared with you when the
%% Shared parameter is true.
%%
%% This is a paginated operation, which means that each response might
%% contain only a
%% subset of all the backups. When the response contains only a subset of
%% backups, it includes a
%% `NextToken' value. Use this value in a subsequent
%% `DescribeBackups'
%% request to get more backups. When you receive a response with no
%% `NextToken' (or an
%% empty or null value), that means there are no more backups to get.
%%
%% Cross-account use: Yes. Customers can describe backups in other Amazon Web
%% Services accounts that are shared with them.
-spec describe_backups(aws_client:aws_client(), describe_backups_request()) ->
    {ok, describe_backups_response(), tuple()} |
    {error, any()} |
    {error, describe_backups_errors(), tuple()}.
describe_backups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_backups(Client, Input, []).

-spec describe_backups(aws_client:aws_client(), describe_backups_request(), proplists:proplist()) ->
    {ok, describe_backups_response(), tuple()} |
    {error, any()} |
    {error, describe_backups_errors(), tuple()}.
describe_backups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBackups">>, Input, Options).

%% @doc Gets information about CloudHSM clusters.
%%
%% This is a paginated operation, which means that each response might
%% contain only a
%% subset of all the clusters. When the response contains only a subset of
%% clusters, it includes
%% a `NextToken' value. Use this value in a subsequent
%% `DescribeClusters'
%% request to get more clusters. When you receive a response with no
%% `NextToken' (or
%% an empty or null value), that means there are no more clusters to get.
%%
%% Cross-account use: No. You cannot perform this operation on CloudHSM
%% clusters in a different Amazon Web Services account.
-spec describe_clusters(aws_client:aws_client(), describe_clusters_request()) ->
    {ok, describe_clusters_response(), tuple()} |
    {error, any()} |
    {error, describe_clusters_errors(), tuple()}.
describe_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_clusters(Client, Input, []).

-spec describe_clusters(aws_client:aws_client(), describe_clusters_request(), proplists:proplist()) ->
    {ok, describe_clusters_response(), tuple()} |
    {error, any()} |
    {error, describe_clusters_errors(), tuple()}.
describe_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusters">>, Input, Options).

%% @doc Retrieves the resource policy document attached to a given resource.
%%
%% Cross-account use: No. You cannot perform this operation on an CloudHSM
%% resource in a different Amazon Web Services account.
-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_request()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_resource_policy(Client, Input, []).

-spec get_resource_policy(aws_client:aws_client(), get_resource_policy_request(), proplists:proplist()) ->
    {ok, get_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, get_resource_policy_errors(), tuple()}.
get_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetResourcePolicy">>, Input, Options).

%% @doc Claims an CloudHSM cluster by submitting the cluster certificate
%% issued by your
%% issuing certificate authority (CA) and the CA's root certificate.
%%
%% Before you can claim a
%% cluster, you must sign the cluster's certificate signing request (CSR)
%% with your issuing CA.
%% To get the cluster's CSR, use `DescribeClusters'.
%%
%% Cross-account use: No. You cannot perform this operation on an CloudHSM
%% cluster in a different Amazon Web Services account.
-spec initialize_cluster(aws_client:aws_client(), initialize_cluster_request()) ->
    {ok, initialize_cluster_response(), tuple()} |
    {error, any()} |
    {error, initialize_cluster_errors(), tuple()}.
initialize_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    initialize_cluster(Client, Input, []).

-spec initialize_cluster(aws_client:aws_client(), initialize_cluster_request(), proplists:proplist()) ->
    {ok, initialize_cluster_response(), tuple()} |
    {error, any()} |
    {error, initialize_cluster_errors(), tuple()}.
initialize_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InitializeCluster">>, Input, Options).

%% @doc Gets a list of tags for the specified CloudHSM cluster.
%%
%% This is a paginated operation, which means that each response might
%% contain only a
%% subset of all the tags. When the response contains only a subset of tags,
%% it includes a
%% `NextToken' value. Use this value in a subsequent `ListTags'
%% request to
%% get more tags. When you receive a response with no `NextToken' (or an
%% empty or null
%% value), that means there are no more tags to get.
%%
%% Cross-account use: No. You cannot perform this operation on an CloudHSM
%% resource in a different Amazon Web Services account.
-spec list_tags(aws_client:aws_client(), list_tags_request()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags(Client, Input, []).

-spec list_tags(aws_client:aws_client(), list_tags_request(), proplists:proplist()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTags">>, Input, Options).

%% @doc Modifies attributes for CloudHSM backup.
%%
%% Cross-account use: No. You cannot perform this operation on an CloudHSM
%% backup in a different Amazon Web Services account.
-spec modify_backup_attributes(aws_client:aws_client(), modify_backup_attributes_request()) ->
    {ok, modify_backup_attributes_response(), tuple()} |
    {error, any()} |
    {error, modify_backup_attributes_errors(), tuple()}.
modify_backup_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_backup_attributes(Client, Input, []).

-spec modify_backup_attributes(aws_client:aws_client(), modify_backup_attributes_request(), proplists:proplist()) ->
    {ok, modify_backup_attributes_response(), tuple()} |
    {error, any()} |
    {error, modify_backup_attributes_errors(), tuple()}.
modify_backup_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyBackupAttributes">>, Input, Options).

%% @doc Modifies CloudHSM cluster.
%%
%% Cross-account use: No. You cannot perform this operation on an CloudHSM
%% cluster in a different Amazon Web Services account.
-spec modify_cluster(aws_client:aws_client(), modify_cluster_request()) ->
    {ok, modify_cluster_response(), tuple()} |
    {error, any()} |
    {error, modify_cluster_errors(), tuple()}.
modify_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cluster(Client, Input, []).

-spec modify_cluster(aws_client:aws_client(), modify_cluster_request(), proplists:proplist()) ->
    {ok, modify_cluster_response(), tuple()} |
    {error, any()} |
    {error, modify_cluster_errors(), tuple()}.
modify_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCluster">>, Input, Options).

%% @doc Creates or updates an CloudHSM resource policy.
%%
%% A resource policy helps you to define the IAM entity
%% (for example, an Amazon Web Services account) that can manage your
%% CloudHSM resources. The following resources support
%% CloudHSM resource policies:
%%
%% Backup - The resource policy allows you to describe the backup and restore
%% a cluster from the backup in another Amazon Web Services account.
%%
%% In order to share a backup, it must be in a 'READY' state and you
%% must own it.
%%
%% While you can share a backup using the CloudHSM PutResourcePolicy
%% operation, we recommend using Resource Access Manager
%% (RAM) instead. Using RAM provides multiple benefits as it creates the
%% policy for you, allows multiple resources to be shared at
%% one time, and increases the discoverability of shared resources. If you
%% use PutResourcePolicy and want consumers to be able to
%% describe the backups you share with them, you must promote the backup to a
%% standard RAM
%% Resource Share using the RAM PromoteResourceShareCreatedFromPolicy API
%% operation.
%%
%% For more information, see Working with shared backups:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/sharing.html in the
%% CloudHSM User Guide
%%
%% Cross-account use: No. You cannot perform this operation on an CloudHSM
%% resource in a different Amazon Web Services account.
-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_resource_policy(Client, Input, []).

-spec put_resource_policy(aws_client:aws_client(), put_resource_policy_request(), proplists:proplist()) ->
    {ok, put_resource_policy_response(), tuple()} |
    {error, any()} |
    {error, put_resource_policy_errors(), tuple()}.
put_resource_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutResourcePolicy">>, Input, Options).

%% @doc Restores a specified CloudHSM backup that is in the
%% `PENDING_DELETION' state.
%%
%% For more information on deleting a backup, see
%% `DeleteBackup'.
%%
%% Cross-account use: No. You cannot perform this operation on an CloudHSM
%% backup in a different Amazon Web Services account.
-spec restore_backup(aws_client:aws_client(), restore_backup_request()) ->
    {ok, restore_backup_response(), tuple()} |
    {error, any()} |
    {error, restore_backup_errors(), tuple()}.
restore_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_backup(Client, Input, []).

-spec restore_backup(aws_client:aws_client(), restore_backup_request(), proplists:proplist()) ->
    {ok, restore_backup_response(), tuple()} |
    {error, any()} |
    {error, restore_backup_errors(), tuple()}.
restore_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreBackup">>, Input, Options).

%% @doc Adds or overwrites one or more tags for the specified CloudHSM
%% cluster.
%%
%% Cross-account use: No. You cannot perform this operation on an CloudHSM
%% resource in a different Amazon Web Services account.
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

%% @doc Removes the specified tag or tags from the specified CloudHSM
%% cluster.
%%
%% Cross-account use: No. You cannot perform this operation on an CloudHSM
%% resource in a different Amazon Web Services account.
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
    Client1 = Client#{service => <<"cloudhsm">>},
    Host = build_host(<<"cloudhsmv2">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"BaldrApiService.", Action/binary>>}
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
