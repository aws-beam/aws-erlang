%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Data Exchange is a service that makes it easy for AWS customers
%% to exchange data in
%% the cloud.
%%
%% You can use the AWS Data Exchange APIs to create, update, manage, and
%% access
%% file-based data set in the AWS Cloud.
%%
%% As a subscriber, you can view and access the data sets that you have an
%% entitlement to
%% through a subscription. You can use the APIs to download or copy your
%% entitled data sets to
%% Amazon Simple Storage Service (Amazon S3) for use across a variety of AWS
%% analytics and
%% machine learning services.
%%
%% As a provider, you can create and manage your data sets that you would
%% like to publish
%% to a product. Being able to package and provide your data sets into
%% products requires a few
%% steps to determine eligibility. For more information, visit the AWS Data
%% Exchange
%% User Guide.
%%
%% A data set is a collection of data that can be changed or updated over
%% time. Data sets
%% can be updated using revisions, which represent a new version or
%% incremental change to a
%% data set. A revision contains one or more assets. An asset in AWS Data
%% Exchange is a piece
%% of data that can be stored as an Amazon S3 object, Redshift datashare, API
%% Gateway API, AWS
%% Lake Formation data permission, or Amazon S3 data access. The asset can be
%% a structured
%% data file, an image file, or some other data file. Jobs are asynchronous
%% import or export
%% operations used to create or copy assets.
-module(aws_dataexchange).

-export([accept_data_grant/3,
         accept_data_grant/4,
         cancel_job/3,
         cancel_job/4,
         create_data_grant/2,
         create_data_grant/3,
         create_data_set/2,
         create_data_set/3,
         create_event_action/2,
         create_event_action/3,
         create_job/2,
         create_job/3,
         create_revision/3,
         create_revision/4,
         delete_asset/5,
         delete_asset/6,
         delete_data_grant/3,
         delete_data_grant/4,
         delete_data_set/3,
         delete_data_set/4,
         delete_event_action/3,
         delete_event_action/4,
         delete_revision/4,
         delete_revision/5,
         get_asset/4,
         get_asset/6,
         get_asset/7,
         get_data_grant/2,
         get_data_grant/4,
         get_data_grant/5,
         get_data_set/2,
         get_data_set/4,
         get_data_set/5,
         get_event_action/2,
         get_event_action/4,
         get_event_action/5,
         get_job/2,
         get_job/4,
         get_job/5,
         get_received_data_grant/2,
         get_received_data_grant/4,
         get_received_data_grant/5,
         get_revision/3,
         get_revision/5,
         get_revision/6,
         list_data_grants/1,
         list_data_grants/3,
         list_data_grants/4,
         list_data_set_revisions/2,
         list_data_set_revisions/4,
         list_data_set_revisions/5,
         list_data_sets/1,
         list_data_sets/3,
         list_data_sets/4,
         list_event_actions/1,
         list_event_actions/3,
         list_event_actions/4,
         list_jobs/1,
         list_jobs/3,
         list_jobs/4,
         list_received_data_grants/1,
         list_received_data_grants/3,
         list_received_data_grants/4,
         list_revision_assets/3,
         list_revision_assets/5,
         list_revision_assets/6,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         revoke_revision/4,
         revoke_revision/5,
         send_api_asset/2,
         send_api_asset/3,
         send_data_set_notification/3,
         send_data_set_notification/4,
         start_job/3,
         start_job/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_asset/5,
         update_asset/6,
         update_data_set/3,
         update_data_set/4,
         update_event_action/3,
         update_event_action/4,
         update_revision/4,
         update_revision/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% redshift_data_share_details() :: #{
%%   <<"Arn">> => string(),
%%   <<"Database">> => string(),
%%   <<"Function">> => string(),
%%   <<"Schema">> => string(),
%%   <<"Table">> => string(),
%%   <<"View">> => string()
%% }
-type redshift_data_share_details() :: #{binary() => any()}.


%% Example:
%% import_asset_from_api_gateway_api_response_details() :: #{
%%   <<"ApiDescription">> => string(),
%%   <<"ApiId">> => string(),
%%   <<"ApiKey">> => string(),
%%   <<"ApiName">> => string(),
%%   <<"ApiSpecificationMd5Hash">> => string(),
%%   <<"ApiSpecificationUploadUrl">> => string(),
%%   <<"ApiSpecificationUploadUrlExpiresAt">> => non_neg_integer(),
%%   <<"DataSetId">> => string(),
%%   <<"ProtocolType">> => string(),
%%   <<"RevisionId">> => string(),
%%   <<"Stage">> => string()
%% }
-type import_asset_from_api_gateway_api_response_details() :: #{binary() => any()}.

%% Example:
%% cancel_job_request() :: #{}
-type cancel_job_request() :: #{}.


%% Example:
%% event_action_entry() :: #{
%%   <<"Action">> => action(),
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Event">> => event(),
%%   <<"Id">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type event_action_entry() :: #{binary() => any()}.


%% Example:
%% scope_details() :: #{
%%   <<"LakeFormationTagPolicies">> => list(lake_formation_tag_policy_details()),
%%   <<"RedshiftDataShares">> => list(redshift_data_share_details()),
%%   <<"S3DataAccesses">> => list(s3_data_access_details())
%% }
-type scope_details() :: #{binary() => any()}.


%% Example:
%% get_data_set_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssetType">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Origin">> => string(),
%%   <<"OriginDetails">> => origin_details(),
%%   <<"SourceId">> => string(),
%%   <<"Tags">> => map(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type get_data_set_response() :: #{binary() => any()}.

%% Example:
%% accept_data_grant_request() :: #{}
-type accept_data_grant_request() :: #{}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_revision_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Comment">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DataSetId">> => string(),
%%   <<"Finalized">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"RevocationComment">> => string(),
%%   <<"Revoked">> => boolean(),
%%   <<"RevokedAt">> => non_neg_integer(),
%%   <<"SourceId">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type update_revision_response() :: #{binary() => any()}.


%% Example:
%% get_revision_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Comment">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DataSetId">> => string(),
%%   <<"Finalized">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"RevocationComment">> => string(),
%%   <<"Revoked">> => boolean(),
%%   <<"RevokedAt">> => non_neg_integer(),
%%   <<"SourceId">> => string(),
%%   <<"Tags">> => map(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type get_revision_response() :: #{binary() => any()}.


%% Example:
%% list_received_data_grants_request() :: #{
%%   <<"AcceptanceState">> => list(string()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_received_data_grants_request() :: #{binary() => any()}.


%% Example:
%% list_data_sets_response() :: #{
%%   <<"DataSets">> => list(data_set_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_data_sets_response() :: #{binary() => any()}.


%% Example:
%% export_revisions_to_s3_response_details() :: #{
%%   <<"DataSetId">> => string(),
%%   <<"Encryption">> => export_server_side_encryption(),
%%   <<"EventActionArn">> => string(),
%%   <<"RevisionDestinations">> => list(revision_destination_entry())
%% }
-type export_revisions_to_s3_response_details() :: #{binary() => any()}.


%% Example:
%% create_job_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Details">> => response_details(),
%%   <<"Errors">> => list(job_error()),
%%   <<"Id">> => string(),
%%   <<"State">> => string(),
%%   <<"Type">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type create_job_response() :: #{binary() => any()}.


%% Example:
%% get_received_data_grant_response() :: #{
%%   <<"AcceptanceState">> => string(),
%%   <<"AcceptedAt">> => non_neg_integer(),
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DataSetId">> => string(),
%%   <<"Description">> => string(),
%%   <<"EndsAt">> => non_neg_integer(),
%%   <<"GrantDistributionScope">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ReceiverPrincipal">> => string(),
%%   <<"SenderPrincipal">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type get_received_data_grant_response() :: #{binary() => any()}.


%% Example:
%% l_f_tag() :: #{
%%   <<"TagKey">> => [string()],
%%   <<"TagValues">> => list([string()]())
%% }
-type l_f_tag() :: #{binary() => any()}.


%% Example:
%% list_received_data_grants_response() :: #{
%%   <<"DataGrantSummaries">> => list(received_data_grant_summaries_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_received_data_grants_response() :: #{binary() => any()}.


%% Example:
%% redshift_data_share_asset_source_entry() :: #{
%%   <<"DataShareArn">> => string()
%% }
-type redshift_data_share_asset_source_entry() :: #{binary() => any()}.


%% Example:
%% create_event_action_request() :: #{
%%   <<"Action">> := action(),
%%   <<"Event">> := event(),
%%   <<"Tags">> => map()
%% }
-type create_event_action_request() :: #{binary() => any()}.


%% Example:
%% send_data_set_notification_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"Comment">> => string(),
%%   <<"Details">> => notification_details(),
%%   <<"Scope">> => scope_details(),
%%   <<"Type">> := string()
%% }
-type send_data_set_notification_request() :: #{binary() => any()}.

%% Example:
%% get_revision_request() :: #{}
-type get_revision_request() :: #{}.


%% Example:
%% import_asset_from_signed_url_job_error_details() :: #{
%%   <<"AssetName">> => string()
%% }
-type import_asset_from_signed_url_job_error_details() :: #{binary() => any()}.


%% Example:
%% list_jobs_request() :: #{
%%   <<"DataSetId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"RevisionId">> => string()
%% }
-type list_jobs_request() :: #{binary() => any()}.


%% Example:
%% create_data_grant_response() :: #{
%%   <<"AcceptanceState">> => string(),
%%   <<"AcceptedAt">> => non_neg_integer(),
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DataSetId">> => string(),
%%   <<"Description">> => string(),
%%   <<"EndsAt">> => non_neg_integer(),
%%   <<"GrantDistributionScope">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ReceiverPrincipal">> => string(),
%%   <<"SenderPrincipal">> => string(),
%%   <<"SourceDataSetId">> => string(),
%%   <<"Tags">> => map(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type create_data_grant_response() :: #{binary() => any()}.

%% Example:
%% start_job_response() :: #{}
-type start_job_response() :: #{}.


%% Example:
%% redshift_data_share_asset() :: #{
%%   <<"Arn">> => string()
%% }
-type redshift_data_share_asset() :: #{binary() => any()}.


%% Example:
%% list_data_sets_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Origin">> => string()
%% }
-type list_data_sets_request() :: #{binary() => any()}.


%% Example:
%% notification_details() :: #{
%%   <<"DataUpdate">> => data_update_request_details(),
%%   <<"Deprecation">> => deprecation_request_details(),
%%   <<"SchemaChange">> => schema_change_request_details()
%% }
-type notification_details() :: #{binary() => any()}.


%% Example:
%% data_set_entry() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssetType">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Origin">> => string(),
%%   <<"OriginDetails">> => origin_details(),
%%   <<"SourceId">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type data_set_entry() :: #{binary() => any()}.


%% Example:
%% list_jobs_response() :: #{
%%   <<"Jobs">> => list(job_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_jobs_response() :: #{binary() => any()}.


%% Example:
%% create_job_request() :: #{
%%   <<"Details">> := request_details(),
%%   <<"Type">> := string()
%% }
-type create_job_request() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% database_l_f_tag_policy_and_permissions() :: #{
%%   <<"Expression">> => list(l_f_tag()),
%%   <<"Permissions">> => list(string())
%% }
-type database_l_f_tag_policy_and_permissions() :: #{binary() => any()}.


%% Example:
%% import_asset_from_api_gateway_api_request_details() :: #{
%%   <<"ApiDescription">> => string(),
%%   <<"ApiId">> => string(),
%%   <<"ApiKey">> => string(),
%%   <<"ApiName">> => string(),
%%   <<"ApiSpecificationMd5Hash">> => string(),
%%   <<"DataSetId">> => string(),
%%   <<"ProtocolType">> => string(),
%%   <<"RevisionId">> => string(),
%%   <<"Stage">> => string()
%% }
-type import_asset_from_api_gateway_api_request_details() :: #{binary() => any()}.


%% Example:
%% kms_key_to_grant() :: #{
%%   <<"KmsKeyArn">> => string()
%% }
-type kms_key_to_grant() :: #{binary() => any()}.


%% Example:
%% send_api_asset_response() :: #{
%%   <<"Body">> => string(),
%%   <<"ResponseHeaders">> => map()
%% }
-type send_api_asset_response() :: #{binary() => any()}.


%% Example:
%% export_server_side_encryption() :: #{
%%   <<"KmsKeyArn">> => string(),
%%   <<"Type">> => string()
%% }
-type export_server_side_encryption() :: #{binary() => any()}.


%% Example:
%% lake_formation_tag_policy_details() :: #{
%%   <<"Database">> => string(),
%%   <<"Table">> => string()
%% }
-type lake_formation_tag_policy_details() :: #{binary() => any()}.


%% Example:
%% update_data_set_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssetType">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Origin">> => string(),
%%   <<"OriginDetails">> => origin_details(),
%%   <<"SourceId">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type update_data_set_response() :: #{binary() => any()}.


%% Example:
%% revision_entry() :: #{
%%   <<"Arn">> => string(),
%%   <<"Comment">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DataSetId">> => string(),
%%   <<"Finalized">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"RevocationComment">> => string(),
%%   <<"Revoked">> => boolean(),
%%   <<"RevokedAt">> => non_neg_integer(),
%%   <<"SourceId">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type revision_entry() :: #{binary() => any()}.


%% Example:
%% update_asset_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssetDetails">> => asset_details(),
%%   <<"AssetType">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DataSetId">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"RevisionId">> => string(),
%%   <<"SourceId">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type update_asset_response() :: #{binary() => any()}.


%% Example:
%% schema_change_details() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string(),
%%   <<"Type">> => string()
%% }
-type schema_change_details() :: #{binary() => any()}.


%% Example:
%% create_data_grant_request() :: #{
%%   <<"Description">> => string(),
%%   <<"EndsAt">> => non_neg_integer(),
%%   <<"GrantDistributionScope">> := string(),
%%   <<"Name">> := string(),
%%   <<"ReceiverPrincipal">> := string(),
%%   <<"SourceDataSetId">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_data_grant_request() :: #{binary() => any()}.

%% Example:
%% get_received_data_grant_request() :: #{}
-type get_received_data_grant_request() :: #{}.


%% Example:
%% list_data_set_revisions_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Revisions">> => list(revision_entry())
%% }
-type list_data_set_revisions_response() :: #{binary() => any()}.


%% Example:
%% export_asset_to_signed_url_response_details() :: #{
%%   <<"AssetId">> => string(),
%%   <<"DataSetId">> => string(),
%%   <<"RevisionId">> => string(),
%%   <<"SignedUrl">> => string(),
%%   <<"SignedUrlExpiresAt">> => non_neg_integer()
%% }
-type export_asset_to_signed_url_response_details() :: #{binary() => any()}.


%% Example:
%% export_asset_to_signed_url_request_details() :: #{
%%   <<"AssetId">> => string(),
%%   <<"DataSetId">> => string(),
%%   <<"RevisionId">> => string()
%% }
-type export_asset_to_signed_url_request_details() :: #{binary() => any()}.


%% Example:
%% list_revision_assets_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_revision_assets_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% import_assets_from_lake_formation_tag_policy_response_details() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DataSetId">> => string(),
%%   <<"Database">> => database_l_f_tag_policy_and_permissions(),
%%   <<"RevisionId">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Table">> => table_l_f_tag_policy_and_permissions()
%% }
-type import_assets_from_lake_formation_tag_policy_response_details() :: #{binary() => any()}.


%% Example:
%% table_l_f_tag_policy_and_permissions() :: #{
%%   <<"Expression">> => list(l_f_tag()),
%%   <<"Permissions">> => list(string())
%% }
-type table_l_f_tag_policy_and_permissions() :: #{binary() => any()}.


%% Example:
%% export_assets_to_s3_request_details() :: #{
%%   <<"AssetDestinations">> => list(asset_destination_entry()),
%%   <<"DataSetId">> => string(),
%%   <<"Encryption">> => export_server_side_encryption(),
%%   <<"RevisionId">> => string()
%% }
-type export_assets_to_s3_request_details() :: #{binary() => any()}.


%% Example:
%% accept_data_grant_response() :: #{
%%   <<"AcceptanceState">> => string(),
%%   <<"AcceptedAt">> => non_neg_integer(),
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DataSetId">> => string(),
%%   <<"Description">> => string(),
%%   <<"EndsAt">> => non_neg_integer(),
%%   <<"GrantDistributionScope">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ReceiverPrincipal">> => string(),
%%   <<"SenderPrincipal">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type accept_data_grant_response() :: #{binary() => any()}.


%% Example:
%% create_data_set_request() :: #{
%%   <<"AssetType">> := string(),
%%   <<"Description">> := string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_data_set_request() :: #{binary() => any()}.


%% Example:
%% export_assets_to_s3_response_details() :: #{
%%   <<"AssetDestinations">> => list(asset_destination_entry()),
%%   <<"DataSetId">> => string(),
%%   <<"Encryption">> => export_server_side_encryption(),
%%   <<"RevisionId">> => string()
%% }
-type export_assets_to_s3_response_details() :: #{binary() => any()}.


%% Example:
%% list_revision_assets_response() :: #{
%%   <<"Assets">> => list(asset_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_revision_assets_response() :: #{binary() => any()}.


%% Example:
%% details() :: #{
%%   <<"ImportAssetFromSignedUrlJobErrorDetails">> => import_asset_from_signed_url_job_error_details(),
%%   <<"ImportAssetsFromS3JobErrorDetails">> => list(asset_source_entry())
%% }
-type details() :: #{binary() => any()}.


%% Example:
%% get_event_action_response() :: #{
%%   <<"Action">> => action(),
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Event">> => event(),
%%   <<"Id">> => string(),
%%   <<"Tags">> => map(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type get_event_action_response() :: #{binary() => any()}.

%% Example:
%% get_event_action_request() :: #{}
-type get_event_action_request() :: #{}.


%% Example:
%% create_s3_data_access_from_s3_bucket_request_details() :: #{
%%   <<"AssetSource">> => s3_data_access_asset_source_entry(),
%%   <<"DataSetId">> => string(),
%%   <<"RevisionId">> => string()
%% }
-type create_s3_data_access_from_s3_bucket_request_details() :: #{binary() => any()}.

%% Example:
%% delete_event_action_request() :: #{}
-type delete_event_action_request() :: #{}.


%% Example:
%% schema_change_request_details() :: #{
%%   <<"Changes">> => list(schema_change_details()),
%%   <<"SchemaChangeAt">> => non_neg_integer()
%% }
-type schema_change_request_details() :: #{binary() => any()}.


%% Example:
%% create_data_set_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssetType">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"Origin">> => string(),
%%   <<"OriginDetails">> => origin_details(),
%%   <<"SourceId">> => string(),
%%   <<"Tags">> => map(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type create_data_set_response() :: #{binary() => any()}.


%% Example:
%% database_l_f_tag_policy() :: #{
%%   <<"Expression">> => list(l_f_tag())
%% }
-type database_l_f_tag_policy() :: #{binary() => any()}.


%% Example:
%% s3_data_access_asset() :: #{
%%   <<"Bucket">> => string(),
%%   <<"KeyPrefixes">> => list(string()),
%%   <<"Keys">> => list(string()),
%%   <<"KmsKeysToGrant">> => list(kms_key_to_grant()),
%%   <<"S3AccessPointAlias">> => string(),
%%   <<"S3AccessPointArn">> => string()
%% }
-type s3_data_access_asset() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% revoke_revision_request() :: #{
%%   <<"RevocationComment">> := string()
%% }
-type revoke_revision_request() :: #{binary() => any()}.


%% Example:
%% table_l_f_tag_policy() :: #{
%%   <<"Expression">> => list(l_f_tag())
%% }
-type table_l_f_tag_policy() :: #{binary() => any()}.


%% Example:
%% update_event_action_request() :: #{
%%   <<"Action">> => action()
%% }
-type update_event_action_request() :: #{binary() => any()}.

%% Example:
%% delete_revision_request() :: #{}
-type delete_revision_request() :: #{}.


%% Example:
%% lake_formation_data_permission_details() :: #{
%%   <<"LFTagPolicy">> => l_f_tag_policy_details()
%% }
-type lake_formation_data_permission_details() :: #{binary() => any()}.


%% Example:
%% get_asset_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssetDetails">> => asset_details(),
%%   <<"AssetType">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DataSetId">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"RevisionId">> => string(),
%%   <<"SourceId">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type get_asset_response() :: #{binary() => any()}.

%% Example:
%% start_job_request() :: #{}
-type start_job_request() :: #{}.


%% Example:
%% update_event_action_response() :: #{
%%   <<"Action">> => action(),
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Event">> => event(),
%%   <<"Id">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type update_event_action_response() :: #{binary() => any()}.


%% Example:
%% s3_data_access_asset_source_entry() :: #{
%%   <<"Bucket">> => string(),
%%   <<"KeyPrefixes">> => list(string()),
%%   <<"Keys">> => list(string()),
%%   <<"KmsKeysToGrant">> => list(kms_key_to_grant())
%% }
-type s3_data_access_asset_source_entry() :: #{binary() => any()}.


%% Example:
%% create_s3_data_access_from_s3_bucket_response_details() :: #{
%%   <<"AssetSource">> => s3_data_access_asset_source_entry(),
%%   <<"DataSetId">> => string(),
%%   <<"RevisionId">> => string()
%% }
-type create_s3_data_access_from_s3_bucket_response_details() :: #{binary() => any()}.


%% Example:
%% data_update_request_details() :: #{
%%   <<"DataUpdatedAt">> => non_neg_integer()
%% }
-type data_update_request_details() :: #{binary() => any()}.


%% Example:
%% api_gateway_api_asset() :: #{
%%   <<"ApiDescription">> => string(),
%%   <<"ApiEndpoint">> => string(),
%%   <<"ApiId">> => string(),
%%   <<"ApiKey">> => string(),
%%   <<"ApiName">> => string(),
%%   <<"ApiSpecificationDownloadUrl">> => string(),
%%   <<"ApiSpecificationDownloadUrlExpiresAt">> => non_neg_integer(),
%%   <<"ProtocolType">> => string(),
%%   <<"Stage">> => string()
%% }
-type api_gateway_api_asset() :: #{binary() => any()}.


%% Example:
%% origin_details() :: #{
%%   <<"DataGrantId">> => string(),
%%   <<"ProductId">> => string()
%% }
-type origin_details() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% send_data_set_notification_response() :: #{}
-type send_data_set_notification_response() :: #{}.

%% Example:
%% delete_data_set_request() :: #{}
-type delete_data_set_request() :: #{}.


%% Example:
%% l_f_resource_details() :: #{
%%   <<"Database">> => database_l_f_tag_policy(),
%%   <<"Table">> => table_l_f_tag_policy()
%% }
-type l_f_resource_details() :: #{binary() => any()}.


%% Example:
%% create_revision_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Comment">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DataSetId">> => string(),
%%   <<"Finalized">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"RevocationComment">> => string(),
%%   <<"Revoked">> => boolean(),
%%   <<"RevokedAt">> => non_neg_integer(),
%%   <<"SourceId">> => string(),
%%   <<"Tags">> => map(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type create_revision_response() :: #{binary() => any()}.


%% Example:
%% asset_entry() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssetDetails">> => asset_details(),
%%   <<"AssetType">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DataSetId">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"RevisionId">> => string(),
%%   <<"SourceId">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type asset_entry() :: #{binary() => any()}.


%% Example:
%% s3_data_access_details() :: #{
%%   <<"KeyPrefixes">> => list(string()),
%%   <<"Keys">> => list(string())
%% }
-type s3_data_access_details() :: #{binary() => any()}.


%% Example:
%% asset_details() :: #{
%%   <<"ApiGatewayApiAsset">> => api_gateway_api_asset(),
%%   <<"LakeFormationDataPermissionAsset">> => lake_formation_data_permission_asset(),
%%   <<"RedshiftDataShareAsset">> => redshift_data_share_asset(),
%%   <<"S3DataAccessAsset">> => s3_data_access_asset(),
%%   <<"S3SnapshotAsset">> => s3_snapshot_asset()
%% }
-type asset_details() :: #{binary() => any()}.


%% Example:
%% event() :: #{
%%   <<"RevisionPublished">> => revision_published()
%% }
-type event() :: #{binary() => any()}.


%% Example:
%% action() :: #{
%%   <<"ExportRevisionToS3">> => auto_export_revision_to_s3_request_details()
%% }
-type action() :: #{binary() => any()}.


%% Example:
%% import_assets_from_s3_response_details() :: #{
%%   <<"AssetSources">> => list(asset_source_entry()),
%%   <<"DataSetId">> => string(),
%%   <<"RevisionId">> => string()
%% }
-type import_assets_from_s3_response_details() :: #{binary() => any()}.

%% Example:
%% delete_asset_request() :: #{}
-type delete_asset_request() :: #{}.


%% Example:
%% import_assets_from_redshift_data_shares_request_details() :: #{
%%   <<"AssetSources">> => list(redshift_data_share_asset_source_entry()),
%%   <<"DataSetId">> => string(),
%%   <<"RevisionId">> => string()
%% }
-type import_assets_from_redshift_data_shares_request_details() :: #{binary() => any()}.


%% Example:
%% revision_published() :: #{
%%   <<"DataSetId">> => string()
%% }
-type revision_published() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% update_asset_request() :: #{
%%   <<"Name">> := string()
%% }
-type update_asset_request() :: #{binary() => any()}.


%% Example:
%% import_assets_from_redshift_data_shares_response_details() :: #{
%%   <<"AssetSources">> => list(redshift_data_share_asset_source_entry()),
%%   <<"DataSetId">> => string(),
%%   <<"RevisionId">> => string()
%% }
-type import_assets_from_redshift_data_shares_response_details() :: #{binary() => any()}.


%% Example:
%% auto_export_revision_destination_entry() :: #{
%%   <<"Bucket">> => string(),
%%   <<"KeyPattern">> => string()
%% }
-type auto_export_revision_destination_entry() :: #{binary() => any()}.


%% Example:
%% asset_source_entry() :: #{
%%   <<"Bucket">> => string(),
%%   <<"Key">> => string()
%% }
-type asset_source_entry() :: #{binary() => any()}.


%% Example:
%% data_grant_summary_entry() :: #{
%%   <<"AcceptanceState">> => string(),
%%   <<"AcceptedAt">> => non_neg_integer(),
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DataSetId">> => string(),
%%   <<"EndsAt">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ReceiverPrincipal">> => string(),
%%   <<"SenderPrincipal">> => string(),
%%   <<"SourceDataSetId">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type data_grant_summary_entry() :: #{binary() => any()}.


%% Example:
%% get_job_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Details">> => response_details(),
%%   <<"Errors">> => list(job_error()),
%%   <<"Id">> => string(),
%%   <<"State">> => string(),
%%   <<"Type">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type get_job_response() :: #{binary() => any()}.

%% Example:
%% get_data_grant_request() :: #{}
-type get_data_grant_request() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"ExceptionCause">> => string(),
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% auto_export_revision_to_s3_request_details() :: #{
%%   <<"Encryption">> => export_server_side_encryption(),
%%   <<"RevisionDestination">> => auto_export_revision_destination_entry()
%% }
-type auto_export_revision_to_s3_request_details() :: #{binary() => any()}.


%% Example:
%% l_f_tag_policy_details() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"ResourceDetails">> => l_f_resource_details(),
%%   <<"ResourceType">> => string()
%% }
-type l_f_tag_policy_details() :: #{binary() => any()}.


%% Example:
%% deprecation_request_details() :: #{
%%   <<"DeprecationAt">> => non_neg_integer()
%% }
-type deprecation_request_details() :: #{binary() => any()}.


%% Example:
%% service_limit_exceeded_exception() :: #{
%%   <<"LimitName">> => string(),
%%   <<"LimitValue">> => float(),
%%   <<"Message">> => string()
%% }
-type service_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% get_asset_request() :: #{}
-type get_asset_request() :: #{}.


%% Example:
%% list_data_grants_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_data_grants_request() :: #{binary() => any()}.

%% Example:
%% get_job_request() :: #{}
-type get_job_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% delete_data_grant_request() :: #{}
-type delete_data_grant_request() :: #{}.


%% Example:
%% send_api_asset_request() :: #{
%%   <<"AssetId">> := string(),
%%   <<"Body">> => string(),
%%   <<"DataSetId">> := string(),
%%   <<"Method">> => string(),
%%   <<"Path">> => string(),
%%   <<"QueryStringParameters">> => map(),
%%   <<"RequestHeaders">> => map(),
%%   <<"RevisionId">> := string()
%% }
-type send_api_asset_request() :: #{binary() => any()}.

%% Example:
%% get_data_set_request() :: #{}
-type get_data_set_request() :: #{}.


%% Example:
%% create_revision_request() :: #{
%%   <<"Comment">> => string(),
%%   <<"Tags">> => map()
%% }
-type create_revision_request() :: #{binary() => any()}.


%% Example:
%% import_assets_from_s3_request_details() :: #{
%%   <<"AssetSources">> => list(asset_source_entry()),
%%   <<"DataSetId">> => string(),
%%   <<"RevisionId">> => string()
%% }
-type import_assets_from_s3_request_details() :: #{binary() => any()}.


%% Example:
%% lake_formation_data_permission_asset() :: #{
%%   <<"LakeFormationDataPermissionDetails">> => lake_formation_data_permission_details(),
%%   <<"LakeFormationDataPermissionType">> => string(),
%%   <<"Permissions">> => list(string()),
%%   <<"RoleArn">> => string()
%% }
-type lake_formation_data_permission_asset() :: #{binary() => any()}.


%% Example:
%% list_event_actions_request() :: #{
%%   <<"EventSourceId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_event_actions_request() :: #{binary() => any()}.


%% Example:
%% list_data_grants_response() :: #{
%%   <<"DataGrantSummaries">> => list(data_grant_summary_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_data_grants_response() :: #{binary() => any()}.


%% Example:
%% list_data_set_revisions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_data_set_revisions_request() :: #{binary() => any()}.


%% Example:
%% asset_destination_entry() :: #{
%%   <<"AssetId">> => string(),
%%   <<"Bucket">> => string(),
%%   <<"Key">> => string()
%% }
-type asset_destination_entry() :: #{binary() => any()}.


%% Example:
%% get_data_grant_response() :: #{
%%   <<"AcceptanceState">> => string(),
%%   <<"AcceptedAt">> => non_neg_integer(),
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DataSetId">> => string(),
%%   <<"Description">> => string(),
%%   <<"EndsAt">> => non_neg_integer(),
%%   <<"GrantDistributionScope">> => string(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ReceiverPrincipal">> => string(),
%%   <<"SenderPrincipal">> => string(),
%%   <<"SourceDataSetId">> => string(),
%%   <<"Tags">> => map(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type get_data_grant_response() :: #{binary() => any()}.


%% Example:
%% list_event_actions_response() :: #{
%%   <<"EventActions">> => list(event_action_entry()),
%%   <<"NextToken">> => string()
%% }
-type list_event_actions_response() :: #{binary() => any()}.


%% Example:
%% request_details() :: #{
%%   <<"CreateS3DataAccessFromS3Bucket">> => create_s3_data_access_from_s3_bucket_request_details(),
%%   <<"ExportAssetToSignedUrl">> => export_asset_to_signed_url_request_details(),
%%   <<"ExportAssetsToS3">> => export_assets_to_s3_request_details(),
%%   <<"ExportRevisionsToS3">> => export_revisions_to_s3_request_details(),
%%   <<"ImportAssetFromApiGatewayApi">> => import_asset_from_api_gateway_api_request_details(),
%%   <<"ImportAssetFromSignedUrl">> => import_asset_from_signed_url_request_details(),
%%   <<"ImportAssetsFromLakeFormationTagPolicy">> => import_assets_from_lake_formation_tag_policy_request_details(),
%%   <<"ImportAssetsFromRedshiftDataShares">> => import_assets_from_redshift_data_shares_request_details(),
%%   <<"ImportAssetsFromS3">> => import_assets_from_s3_request_details()
%% }
-type request_details() :: #{binary() => any()}.


%% Example:
%% job_entry() :: #{
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Details">> => response_details(),
%%   <<"Errors">> => list(job_error()),
%%   <<"Id">> => string(),
%%   <<"State">> => string(),
%%   <<"Type">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type job_entry() :: #{binary() => any()}.


%% Example:
%% import_asset_from_signed_url_request_details() :: #{
%%   <<"AssetName">> => string(),
%%   <<"DataSetId">> => string(),
%%   <<"Md5Hash">> => string(),
%%   <<"RevisionId">> => string()
%% }
-type import_asset_from_signed_url_request_details() :: #{binary() => any()}.


%% Example:
%% import_asset_from_signed_url_response_details() :: #{
%%   <<"AssetName">> => string(),
%%   <<"DataSetId">> => string(),
%%   <<"Md5Hash">> => string(),
%%   <<"RevisionId">> => string(),
%%   <<"SignedUrl">> => string(),
%%   <<"SignedUrlExpiresAt">> => non_neg_integer()
%% }
-type import_asset_from_signed_url_response_details() :: #{binary() => any()}.


%% Example:
%% response_details() :: #{
%%   <<"CreateS3DataAccessFromS3Bucket">> => create_s3_data_access_from_s3_bucket_response_details(),
%%   <<"ExportAssetToSignedUrl">> => export_asset_to_signed_url_response_details(),
%%   <<"ExportAssetsToS3">> => export_assets_to_s3_response_details(),
%%   <<"ExportRevisionsToS3">> => export_revisions_to_s3_response_details(),
%%   <<"ImportAssetFromApiGatewayApi">> => import_asset_from_api_gateway_api_response_details(),
%%   <<"ImportAssetFromSignedUrl">> => import_asset_from_signed_url_response_details(),
%%   <<"ImportAssetsFromLakeFormationTagPolicy">> => import_assets_from_lake_formation_tag_policy_response_details(),
%%   <<"ImportAssetsFromRedshiftDataShares">> => import_assets_from_redshift_data_shares_response_details(),
%%   <<"ImportAssetsFromS3">> => import_assets_from_s3_response_details()
%% }
-type response_details() :: #{binary() => any()}.


%% Example:
%% import_assets_from_lake_formation_tag_policy_request_details() :: #{
%%   <<"CatalogId">> => string(),
%%   <<"DataSetId">> => string(),
%%   <<"Database">> => database_l_f_tag_policy_and_permissions(),
%%   <<"RevisionId">> => string(),
%%   <<"RoleArn">> => string(),
%%   <<"Table">> => table_l_f_tag_policy_and_permissions()
%% }
-type import_assets_from_lake_formation_tag_policy_request_details() :: #{binary() => any()}.


%% Example:
%% received_data_grant_summaries_entry() :: #{
%%   <<"AcceptanceState">> => string(),
%%   <<"AcceptedAt">> => non_neg_integer(),
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DataSetId">> => string(),
%%   <<"EndsAt">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"Name">> => string(),
%%   <<"ReceiverPrincipal">> => string(),
%%   <<"SenderPrincipal">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type received_data_grant_summaries_entry() :: #{binary() => any()}.


%% Example:
%% update_revision_request() :: #{
%%   <<"Comment">> => string(),
%%   <<"Finalized">> => boolean()
%% }
-type update_revision_request() :: #{binary() => any()}.


%% Example:
%% s3_snapshot_asset() :: #{
%%   <<"Size">> => float()
%% }
-type s3_snapshot_asset() :: #{binary() => any()}.


%% Example:
%% export_revisions_to_s3_request_details() :: #{
%%   <<"DataSetId">> => string(),
%%   <<"Encryption">> => export_server_side_encryption(),
%%   <<"RevisionDestinations">> => list(revision_destination_entry())
%% }
-type export_revisions_to_s3_request_details() :: #{binary() => any()}.


%% Example:
%% revoke_revision_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Comment">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"DataSetId">> => string(),
%%   <<"Finalized">> => boolean(),
%%   <<"Id">> => string(),
%%   <<"RevocationComment">> => string(),
%%   <<"Revoked">> => boolean(),
%%   <<"RevokedAt">> => non_neg_integer(),
%%   <<"SourceId">> => string(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type revoke_revision_response() :: #{binary() => any()}.


%% Example:
%% job_error() :: #{
%%   <<"Code">> => string(),
%%   <<"Details">> => details(),
%%   <<"LimitName">> => string(),
%%   <<"LimitValue">> => float(),
%%   <<"Message">> => string(),
%%   <<"ResourceId">> => string(),
%%   <<"ResourceType">> => string()
%% }
-type job_error() :: #{binary() => any()}.


%% Example:
%% update_data_set_request() :: #{
%%   <<"Description">> => string(),
%%   <<"Name">> => string()
%% }
-type update_data_set_request() :: #{binary() => any()}.


%% Example:
%% revision_destination_entry() :: #{
%%   <<"Bucket">> => string(),
%%   <<"KeyPattern">> => string(),
%%   <<"RevisionId">> => string()
%% }
-type revision_destination_entry() :: #{binary() => any()}.


%% Example:
%% create_event_action_response() :: #{
%%   <<"Action">> => action(),
%%   <<"Arn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Event">> => event(),
%%   <<"Id">> => string(),
%%   <<"Tags">> => map(),
%%   <<"UpdatedAt">> => non_neg_integer()
%% }
-type create_event_action_response() :: #{binary() => any()}.

-type accept_data_grant_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type cancel_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_data_grant_errors() ::
    throttling_exception() | 
    service_limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_data_set_errors() ::
    throttling_exception() | 
    service_limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type create_event_action_errors() ::
    throttling_exception() | 
    service_limit_exceeded_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type create_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_revision_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_asset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_data_grant_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_data_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_event_action_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_revision_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_asset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_data_grant_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_data_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_event_action_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_received_data_grant_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_revision_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_data_grants_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_data_set_revisions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_data_sets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_event_actions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_jobs_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_received_data_grants_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_revision_assets_errors() ::
    throttling_exception() | 
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type revoke_revision_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type send_api_asset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type send_data_set_notification_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_asset_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_data_set_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_event_action_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_revision_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc This operation accepts a data grant.
-spec accept_data_grant(aws_client:aws_client(), binary() | list(), accept_data_grant_request()) ->
    {ok, accept_data_grant_response(), tuple()} |
    {error, any()} |
    {error, accept_data_grant_errors(), tuple()}.
accept_data_grant(Client, DataGrantArn, Input) ->
    accept_data_grant(Client, DataGrantArn, Input, []).

-spec accept_data_grant(aws_client:aws_client(), binary() | list(), accept_data_grant_request(), proplists:proplist()) ->
    {ok, accept_data_grant_response(), tuple()} |
    {error, any()} |
    {error, accept_data_grant_errors(), tuple()}.
accept_data_grant(Client, DataGrantArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/data-grants/", aws_util:encode_uri(DataGrantArn), "/accept"],
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

%% @doc This operation cancels a job.
%%
%% Jobs can be cancelled only when they are in the WAITING
%% state.
-spec cancel_job(aws_client:aws_client(), binary() | list(), cancel_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_job_errors(), tuple()}.
cancel_job(Client, JobId, Input) ->
    cancel_job(Client, JobId, Input, []).

-spec cancel_job(aws_client:aws_client(), binary() | list(), cancel_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, cancel_job_errors(), tuple()}.
cancel_job(Client, JobId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/jobs/", aws_util:encode_uri(JobId), ""],
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

%% @doc This operation creates a data grant.
-spec create_data_grant(aws_client:aws_client(), create_data_grant_request()) ->
    {ok, create_data_grant_response(), tuple()} |
    {error, any()} |
    {error, create_data_grant_errors(), tuple()}.
create_data_grant(Client, Input) ->
    create_data_grant(Client, Input, []).

-spec create_data_grant(aws_client:aws_client(), create_data_grant_request(), proplists:proplist()) ->
    {ok, create_data_grant_response(), tuple()} |
    {error, any()} |
    {error, create_data_grant_errors(), tuple()}.
create_data_grant(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/data-grants"],
    SuccessStatusCode = 201,
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

%% @doc This operation creates a data set.
-spec create_data_set(aws_client:aws_client(), create_data_set_request()) ->
    {ok, create_data_set_response(), tuple()} |
    {error, any()} |
    {error, create_data_set_errors(), tuple()}.
create_data_set(Client, Input) ->
    create_data_set(Client, Input, []).

-spec create_data_set(aws_client:aws_client(), create_data_set_request(), proplists:proplist()) ->
    {ok, create_data_set_response(), tuple()} |
    {error, any()} |
    {error, create_data_set_errors(), tuple()}.
create_data_set(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/data-sets"],
    SuccessStatusCode = 201,
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

%% @doc This operation creates an event action.
-spec create_event_action(aws_client:aws_client(), create_event_action_request()) ->
    {ok, create_event_action_response(), tuple()} |
    {error, any()} |
    {error, create_event_action_errors(), tuple()}.
create_event_action(Client, Input) ->
    create_event_action(Client, Input, []).

-spec create_event_action(aws_client:aws_client(), create_event_action_request(), proplists:proplist()) ->
    {ok, create_event_action_response(), tuple()} |
    {error, any()} |
    {error, create_event_action_errors(), tuple()}.
create_event_action(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/event-actions"],
    SuccessStatusCode = 201,
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

%% @doc This operation creates a job.
-spec create_job(aws_client:aws_client(), create_job_request()) ->
    {ok, create_job_response(), tuple()} |
    {error, any()} |
    {error, create_job_errors(), tuple()}.
create_job(Client, Input) ->
    create_job(Client, Input, []).

-spec create_job(aws_client:aws_client(), create_job_request(), proplists:proplist()) ->
    {ok, create_job_response(), tuple()} |
    {error, any()} |
    {error, create_job_errors(), tuple()}.
create_job(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/jobs"],
    SuccessStatusCode = 201,
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

%% @doc This operation creates a revision for a data set.
-spec create_revision(aws_client:aws_client(), binary() | list(), create_revision_request()) ->
    {ok, create_revision_response(), tuple()} |
    {error, any()} |
    {error, create_revision_errors(), tuple()}.
create_revision(Client, DataSetId, Input) ->
    create_revision(Client, DataSetId, Input, []).

-spec create_revision(aws_client:aws_client(), binary() | list(), create_revision_request(), proplists:proplist()) ->
    {ok, create_revision_response(), tuple()} |
    {error, any()} |
    {error, create_revision_errors(), tuple()}.
create_revision(Client, DataSetId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), "/revisions"],
    SuccessStatusCode = 201,
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

%% @doc This operation deletes an asset.
-spec delete_asset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_asset_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_asset_errors(), tuple()}.
delete_asset(Client, AssetId, DataSetId, RevisionId, Input) ->
    delete_asset(Client, AssetId, DataSetId, RevisionId, Input, []).

-spec delete_asset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_asset_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_asset_errors(), tuple()}.
delete_asset(Client, AssetId, DataSetId, RevisionId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), "/revisions/", aws_util:encode_uri(RevisionId), "/assets/", aws_util:encode_uri(AssetId), ""],
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

%% @doc This operation deletes a data grant.
-spec delete_data_grant(aws_client:aws_client(), binary() | list(), delete_data_grant_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_data_grant_errors(), tuple()}.
delete_data_grant(Client, DataGrantId, Input) ->
    delete_data_grant(Client, DataGrantId, Input, []).

-spec delete_data_grant(aws_client:aws_client(), binary() | list(), delete_data_grant_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_data_grant_errors(), tuple()}.
delete_data_grant(Client, DataGrantId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/data-grants/", aws_util:encode_uri(DataGrantId), ""],
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

%% @doc This operation deletes a data set.
-spec delete_data_set(aws_client:aws_client(), binary() | list(), delete_data_set_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_data_set_errors(), tuple()}.
delete_data_set(Client, DataSetId, Input) ->
    delete_data_set(Client, DataSetId, Input, []).

-spec delete_data_set(aws_client:aws_client(), binary() | list(), delete_data_set_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_data_set_errors(), tuple()}.
delete_data_set(Client, DataSetId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), ""],
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

%% @doc This operation deletes the event action.
-spec delete_event_action(aws_client:aws_client(), binary() | list(), delete_event_action_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_event_action_errors(), tuple()}.
delete_event_action(Client, EventActionId, Input) ->
    delete_event_action(Client, EventActionId, Input, []).

-spec delete_event_action(aws_client:aws_client(), binary() | list(), delete_event_action_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_event_action_errors(), tuple()}.
delete_event_action(Client, EventActionId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/event-actions/", aws_util:encode_uri(EventActionId), ""],
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

%% @doc This operation deletes a revision.
-spec delete_revision(aws_client:aws_client(), binary() | list(), binary() | list(), delete_revision_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_revision_errors(), tuple()}.
delete_revision(Client, DataSetId, RevisionId, Input) ->
    delete_revision(Client, DataSetId, RevisionId, Input, []).

-spec delete_revision(aws_client:aws_client(), binary() | list(), binary() | list(), delete_revision_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_revision_errors(), tuple()}.
delete_revision(Client, DataSetId, RevisionId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), "/revisions/", aws_util:encode_uri(RevisionId), ""],
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

%% @doc This operation returns information about an asset.
-spec get_asset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_asset_response(), tuple()} |
    {error, any()} |
    {error, get_asset_errors(), tuple()}.
get_asset(Client, AssetId, DataSetId, RevisionId)
  when is_map(Client) ->
    get_asset(Client, AssetId, DataSetId, RevisionId, #{}, #{}).

-spec get_asset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_asset_response(), tuple()} |
    {error, any()} |
    {error, get_asset_errors(), tuple()}.
get_asset(Client, AssetId, DataSetId, RevisionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_asset(Client, AssetId, DataSetId, RevisionId, QueryMap, HeadersMap, []).

-spec get_asset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_asset_response(), tuple()} |
    {error, any()} |
    {error, get_asset_errors(), tuple()}.
get_asset(Client, AssetId, DataSetId, RevisionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), "/revisions/", aws_util:encode_uri(RevisionId), "/assets/", aws_util:encode_uri(AssetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation returns information about a data grant.
-spec get_data_grant(aws_client:aws_client(), binary() | list()) ->
    {ok, get_data_grant_response(), tuple()} |
    {error, any()} |
    {error, get_data_grant_errors(), tuple()}.
get_data_grant(Client, DataGrantId)
  when is_map(Client) ->
    get_data_grant(Client, DataGrantId, #{}, #{}).

-spec get_data_grant(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_data_grant_response(), tuple()} |
    {error, any()} |
    {error, get_data_grant_errors(), tuple()}.
get_data_grant(Client, DataGrantId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_grant(Client, DataGrantId, QueryMap, HeadersMap, []).

-spec get_data_grant(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_grant_response(), tuple()} |
    {error, any()} |
    {error, get_data_grant_errors(), tuple()}.
get_data_grant(Client, DataGrantId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/data-grants/", aws_util:encode_uri(DataGrantId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation returns information about a data set.
-spec get_data_set(aws_client:aws_client(), binary() | list()) ->
    {ok, get_data_set_response(), tuple()} |
    {error, any()} |
    {error, get_data_set_errors(), tuple()}.
get_data_set(Client, DataSetId)
  when is_map(Client) ->
    get_data_set(Client, DataSetId, #{}, #{}).

-spec get_data_set(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_data_set_response(), tuple()} |
    {error, any()} |
    {error, get_data_set_errors(), tuple()}.
get_data_set(Client, DataSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_set(Client, DataSetId, QueryMap, HeadersMap, []).

-spec get_data_set(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_data_set_response(), tuple()} |
    {error, any()} |
    {error, get_data_set_errors(), tuple()}.
get_data_set(Client, DataSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation retrieves information about an event action.
-spec get_event_action(aws_client:aws_client(), binary() | list()) ->
    {ok, get_event_action_response(), tuple()} |
    {error, any()} |
    {error, get_event_action_errors(), tuple()}.
get_event_action(Client, EventActionId)
  when is_map(Client) ->
    get_event_action(Client, EventActionId, #{}, #{}).

-spec get_event_action(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_event_action_response(), tuple()} |
    {error, any()} |
    {error, get_event_action_errors(), tuple()}.
get_event_action(Client, EventActionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_event_action(Client, EventActionId, QueryMap, HeadersMap, []).

-spec get_event_action(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_event_action_response(), tuple()} |
    {error, any()} |
    {error, get_event_action_errors(), tuple()}.
get_event_action(Client, EventActionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/event-actions/", aws_util:encode_uri(EventActionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation returns information about a job.
-spec get_job(aws_client:aws_client(), binary() | list()) ->
    {ok, get_job_response(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, JobId)
  when is_map(Client) ->
    get_job(Client, JobId, #{}, #{}).

-spec get_job(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_job_response(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, JobId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_job(Client, JobId, QueryMap, HeadersMap, []).

-spec get_job(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_job_response(), tuple()} |
    {error, any()} |
    {error, get_job_errors(), tuple()}.
get_job(Client, JobId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation returns information about a received data grant.
-spec get_received_data_grant(aws_client:aws_client(), binary() | list()) ->
    {ok, get_received_data_grant_response(), tuple()} |
    {error, any()} |
    {error, get_received_data_grant_errors(), tuple()}.
get_received_data_grant(Client, DataGrantArn)
  when is_map(Client) ->
    get_received_data_grant(Client, DataGrantArn, #{}, #{}).

-spec get_received_data_grant(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_received_data_grant_response(), tuple()} |
    {error, any()} |
    {error, get_received_data_grant_errors(), tuple()}.
get_received_data_grant(Client, DataGrantArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_received_data_grant(Client, DataGrantArn, QueryMap, HeadersMap, []).

-spec get_received_data_grant(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_received_data_grant_response(), tuple()} |
    {error, any()} |
    {error, get_received_data_grant_errors(), tuple()}.
get_received_data_grant(Client, DataGrantArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/received-data-grants/", aws_util:encode_uri(DataGrantArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation returns information about a revision.
-spec get_revision(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_revision_response(), tuple()} |
    {error, any()} |
    {error, get_revision_errors(), tuple()}.
get_revision(Client, DataSetId, RevisionId)
  when is_map(Client) ->
    get_revision(Client, DataSetId, RevisionId, #{}, #{}).

-spec get_revision(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_revision_response(), tuple()} |
    {error, any()} |
    {error, get_revision_errors(), tuple()}.
get_revision(Client, DataSetId, RevisionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_revision(Client, DataSetId, RevisionId, QueryMap, HeadersMap, []).

-spec get_revision(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_revision_response(), tuple()} |
    {error, any()} |
    {error, get_revision_errors(), tuple()}.
get_revision(Client, DataSetId, RevisionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), "/revisions/", aws_util:encode_uri(RevisionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation returns information about all data grants.
-spec list_data_grants(aws_client:aws_client()) ->
    {ok, list_data_grants_response(), tuple()} |
    {error, any()} |
    {error, list_data_grants_errors(), tuple()}.
list_data_grants(Client)
  when is_map(Client) ->
    list_data_grants(Client, #{}, #{}).

-spec list_data_grants(aws_client:aws_client(), map(), map()) ->
    {ok, list_data_grants_response(), tuple()} |
    {error, any()} |
    {error, list_data_grants_errors(), tuple()}.
list_data_grants(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_grants(Client, QueryMap, HeadersMap, []).

-spec list_data_grants(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_data_grants_response(), tuple()} |
    {error, any()} |
    {error, list_data_grants_errors(), tuple()}.
list_data_grants(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/data-grants"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation lists a data set's revisions sorted by CreatedAt
%% in descending
%% order.
-spec list_data_set_revisions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_data_set_revisions_response(), tuple()} |
    {error, any()} |
    {error, list_data_set_revisions_errors(), tuple()}.
list_data_set_revisions(Client, DataSetId)
  when is_map(Client) ->
    list_data_set_revisions(Client, DataSetId, #{}, #{}).

-spec list_data_set_revisions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_data_set_revisions_response(), tuple()} |
    {error, any()} |
    {error, list_data_set_revisions_errors(), tuple()}.
list_data_set_revisions(Client, DataSetId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_set_revisions(Client, DataSetId, QueryMap, HeadersMap, []).

-spec list_data_set_revisions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_data_set_revisions_response(), tuple()} |
    {error, any()} |
    {error, list_data_set_revisions_errors(), tuple()}.
list_data_set_revisions(Client, DataSetId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), "/revisions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation lists your data sets.
%%
%% When listing by origin OWNED, results are sorted by
%% CreatedAt in descending order. When listing by origin ENTITLED, there is
%% no order.
-spec list_data_sets(aws_client:aws_client()) ->
    {ok, list_data_sets_response(), tuple()} |
    {error, any()} |
    {error, list_data_sets_errors(), tuple()}.
list_data_sets(Client)
  when is_map(Client) ->
    list_data_sets(Client, #{}, #{}).

-spec list_data_sets(aws_client:aws_client(), map(), map()) ->
    {ok, list_data_sets_response(), tuple()} |
    {error, any()} |
    {error, list_data_sets_errors(), tuple()}.
list_data_sets(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_sets(Client, QueryMap, HeadersMap, []).

-spec list_data_sets(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_data_sets_response(), tuple()} |
    {error, any()} |
    {error, list_data_sets_errors(), tuple()}.
list_data_sets(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/data-sets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"origin">>, maps:get(<<"origin">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation lists your event actions.
-spec list_event_actions(aws_client:aws_client()) ->
    {ok, list_event_actions_response(), tuple()} |
    {error, any()} |
    {error, list_event_actions_errors(), tuple()}.
list_event_actions(Client)
  when is_map(Client) ->
    list_event_actions(Client, #{}, #{}).

-spec list_event_actions(aws_client:aws_client(), map(), map()) ->
    {ok, list_event_actions_response(), tuple()} |
    {error, any()} |
    {error, list_event_actions_errors(), tuple()}.
list_event_actions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_event_actions(Client, QueryMap, HeadersMap, []).

-spec list_event_actions(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_event_actions_response(), tuple()} |
    {error, any()} |
    {error, list_event_actions_errors(), tuple()}.
list_event_actions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/event-actions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"eventSourceId">>, maps:get(<<"eventSourceId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation lists your jobs sorted by CreatedAt in descending
%% order.
-spec list_jobs(aws_client:aws_client()) ->
    {ok, list_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client)
  when is_map(Client) ->
    list_jobs(Client, #{}, #{}).

-spec list_jobs(aws_client:aws_client(), map(), map()) ->
    {ok, list_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_jobs(Client, QueryMap, HeadersMap, []).

-spec list_jobs(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_jobs_response(), tuple()} |
    {error, any()} |
    {error, list_jobs_errors(), tuple()}.
list_jobs(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/jobs"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"dataSetId">>, maps:get(<<"dataSetId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"revisionId">>, maps:get(<<"revisionId">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation returns information about all received data grants.
-spec list_received_data_grants(aws_client:aws_client()) ->
    {ok, list_received_data_grants_response(), tuple()} |
    {error, any()} |
    {error, list_received_data_grants_errors(), tuple()}.
list_received_data_grants(Client)
  when is_map(Client) ->
    list_received_data_grants(Client, #{}, #{}).

-spec list_received_data_grants(aws_client:aws_client(), map(), map()) ->
    {ok, list_received_data_grants_response(), tuple()} |
    {error, any()} |
    {error, list_received_data_grants_errors(), tuple()}.
list_received_data_grants(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_received_data_grants(Client, QueryMap, HeadersMap, []).

-spec list_received_data_grants(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_received_data_grants_response(), tuple()} |
    {error, any()} |
    {error, list_received_data_grants_errors(), tuple()}.
list_received_data_grants(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/received-data-grants"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"acceptanceState">>, maps:get(<<"acceptanceState">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation lists a revision's assets sorted alphabetically in
%% descending
%% order.
-spec list_revision_assets(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_revision_assets_response(), tuple()} |
    {error, any()} |
    {error, list_revision_assets_errors(), tuple()}.
list_revision_assets(Client, DataSetId, RevisionId)
  when is_map(Client) ->
    list_revision_assets(Client, DataSetId, RevisionId, #{}, #{}).

-spec list_revision_assets(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_revision_assets_response(), tuple()} |
    {error, any()} |
    {error, list_revision_assets_errors(), tuple()}.
list_revision_assets(Client, DataSetId, RevisionId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_revision_assets(Client, DataSetId, RevisionId, QueryMap, HeadersMap, []).

-spec list_revision_assets(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_revision_assets_response(), tuple()} |
    {error, any()} |
    {error, list_revision_assets_errors(), tuple()}.
list_revision_assets(Client, DataSetId, RevisionId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), "/revisions/", aws_util:encode_uri(RevisionId), "/assets"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc This operation lists the tags on the resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()}.
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

%% @doc This operation revokes subscribers' access to a revision.
-spec revoke_revision(aws_client:aws_client(), binary() | list(), binary() | list(), revoke_revision_request()) ->
    {ok, revoke_revision_response(), tuple()} |
    {error, any()} |
    {error, revoke_revision_errors(), tuple()}.
revoke_revision(Client, DataSetId, RevisionId, Input) ->
    revoke_revision(Client, DataSetId, RevisionId, Input, []).

-spec revoke_revision(aws_client:aws_client(), binary() | list(), binary() | list(), revoke_revision_request(), proplists:proplist()) ->
    {ok, revoke_revision_response(), tuple()} |
    {error, any()} |
    {error, revoke_revision_errors(), tuple()}.
revoke_revision(Client, DataSetId, RevisionId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), "/revisions/", aws_util:encode_uri(RevisionId), "/revoke"],
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

%% @doc This operation invokes an API Gateway API asset.
%%
%% The request is proxied to the
%% provider’s API Gateway API.
-spec send_api_asset(aws_client:aws_client(), send_api_asset_request()) ->
    {ok, send_api_asset_response(), tuple()} |
    {error, any()} |
    {error, send_api_asset_errors(), tuple()}.
send_api_asset(Client, Input) ->
    send_api_asset(Client, Input, []).

-spec send_api_asset(aws_client:aws_client(), send_api_asset_request(), proplists:proplist()) ->
    {ok, send_api_asset_response(), tuple()} |
    {error, any()} |
    {error, send_api_asset_errors(), tuple()}.
send_api_asset(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, true),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, true),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"x-amzn-dataexchange-asset-id">>, <<"AssetId">>},
                       {<<"x-amzn-dataexchange-data-set-id">>, <<"DataSetId">>},
                       {<<"x-amzn-dataexchange-http-method">>, <<"Method">>},
                       {<<"x-amzn-dataexchange-path">>, <<"Path">>},
                       {<<"x-amzn-dataexchange-revision-id">>, <<"RevisionId">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeadersMapping = [
                             {<<"x-amzn-dataexchange-header-">>, <<"RequestHeaders">>}
                          ],
    {CustomHeaders, Input2} = aws_request:build_custom_headers(CustomHeadersMapping, Input1),

    QueryMapping = [
                     {<<"QueryStringParameters">>, <<"QueryStringParameters">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The type of event associated with the data set.
-spec send_data_set_notification(aws_client:aws_client(), binary() | list(), send_data_set_notification_request()) ->
    {ok, send_data_set_notification_response(), tuple()} |
    {error, any()} |
    {error, send_data_set_notification_errors(), tuple()}.
send_data_set_notification(Client, DataSetId, Input) ->
    send_data_set_notification(Client, DataSetId, Input, []).

-spec send_data_set_notification(aws_client:aws_client(), binary() | list(), send_data_set_notification_request(), proplists:proplist()) ->
    {ok, send_data_set_notification_response(), tuple()} |
    {error, any()} |
    {error, send_data_set_notification_errors(), tuple()}.
send_data_set_notification(Client, DataSetId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), "/notification"],
    SuccessStatusCode = 202,
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

%% @doc This operation starts a job.
-spec start_job(aws_client:aws_client(), binary() | list(), start_job_request()) ->
    {ok, start_job_response(), tuple()} |
    {error, any()} |
    {error, start_job_errors(), tuple()}.
start_job(Client, JobId, Input) ->
    start_job(Client, JobId, Input, []).

-spec start_job(aws_client:aws_client(), binary() | list(), start_job_request(), proplists:proplist()) ->
    {ok, start_job_response(), tuple()} |
    {error, any()} |
    {error, start_job_errors(), tuple()}.
start_job(Client, JobId, Input0, Options0) ->
    Method = patch,
    Path = ["/v1/jobs/", aws_util:encode_uri(JobId), ""],
    SuccessStatusCode = 202,
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

%% @doc This operation tags a resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
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

%% @doc This operation removes one or more tags from a resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()}.
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc This operation updates an asset.
-spec update_asset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_asset_request()) ->
    {ok, update_asset_response(), tuple()} |
    {error, any()} |
    {error, update_asset_errors(), tuple()}.
update_asset(Client, AssetId, DataSetId, RevisionId, Input) ->
    update_asset(Client, AssetId, DataSetId, RevisionId, Input, []).

-spec update_asset(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_asset_request(), proplists:proplist()) ->
    {ok, update_asset_response(), tuple()} |
    {error, any()} |
    {error, update_asset_errors(), tuple()}.
update_asset(Client, AssetId, DataSetId, RevisionId, Input0, Options0) ->
    Method = patch,
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), "/revisions/", aws_util:encode_uri(RevisionId), "/assets/", aws_util:encode_uri(AssetId), ""],
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

%% @doc This operation updates a data set.
-spec update_data_set(aws_client:aws_client(), binary() | list(), update_data_set_request()) ->
    {ok, update_data_set_response(), tuple()} |
    {error, any()} |
    {error, update_data_set_errors(), tuple()}.
update_data_set(Client, DataSetId, Input) ->
    update_data_set(Client, DataSetId, Input, []).

-spec update_data_set(aws_client:aws_client(), binary() | list(), update_data_set_request(), proplists:proplist()) ->
    {ok, update_data_set_response(), tuple()} |
    {error, any()} |
    {error, update_data_set_errors(), tuple()}.
update_data_set(Client, DataSetId, Input0, Options0) ->
    Method = patch,
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), ""],
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

%% @doc This operation updates the event action.
-spec update_event_action(aws_client:aws_client(), binary() | list(), update_event_action_request()) ->
    {ok, update_event_action_response(), tuple()} |
    {error, any()} |
    {error, update_event_action_errors(), tuple()}.
update_event_action(Client, EventActionId, Input) ->
    update_event_action(Client, EventActionId, Input, []).

-spec update_event_action(aws_client:aws_client(), binary() | list(), update_event_action_request(), proplists:proplist()) ->
    {ok, update_event_action_response(), tuple()} |
    {error, any()} |
    {error, update_event_action_errors(), tuple()}.
update_event_action(Client, EventActionId, Input0, Options0) ->
    Method = patch,
    Path = ["/v1/event-actions/", aws_util:encode_uri(EventActionId), ""],
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

%% @doc This operation updates a revision.
-spec update_revision(aws_client:aws_client(), binary() | list(), binary() | list(), update_revision_request()) ->
    {ok, update_revision_response(), tuple()} |
    {error, any()} |
    {error, update_revision_errors(), tuple()}.
update_revision(Client, DataSetId, RevisionId, Input) ->
    update_revision(Client, DataSetId, RevisionId, Input, []).

-spec update_revision(aws_client:aws_client(), binary() | list(), binary() | list(), update_revision_request(), proplists:proplist()) ->
    {ok, update_revision_response(), tuple()} |
    {error, any()} |
    {error, update_revision_errors(), tuple()}.
update_revision(Client, DataSetId, RevisionId, Input0, Options0) ->
    Method = patch,
    Path = ["/v1/data-sets/", aws_util:encode_uri(DataSetId), "/revisions/", aws_util:encode_uri(RevisionId), ""],
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
    Client1 = Client#{service => <<"dataexchange">>},
    Host = build_host(<<"dataexchange">>, Client1),
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
