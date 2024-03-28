%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Amazon Nimble Studio API reference.
%%
%% This API reference provides
%% methods, schema, resources, parameters, and more to help you get the most
%% out of Nimble
%% Studio.
%%
%% Nimble Studio is a virtual studio that empowers visual effects, animation,
%% and
%% interactive content teams to create content securely within a scalable,
%% private cloud
%% service.
-module(aws_nimble).

-export([accept_eulas/3,
         accept_eulas/4,
         create_launch_profile/3,
         create_launch_profile/4,
         create_streaming_image/3,
         create_streaming_image/4,
         create_streaming_session/3,
         create_streaming_session/4,
         create_streaming_session_stream/4,
         create_streaming_session_stream/5,
         create_studio/2,
         create_studio/3,
         create_studio_component/3,
         create_studio_component/4,
         delete_launch_profile/4,
         delete_launch_profile/5,
         delete_launch_profile_member/5,
         delete_launch_profile_member/6,
         delete_streaming_image/4,
         delete_streaming_image/5,
         delete_streaming_session/4,
         delete_streaming_session/5,
         delete_studio/3,
         delete_studio/4,
         delete_studio_component/4,
         delete_studio_component/5,
         delete_studio_member/4,
         delete_studio_member/5,
         get_eula/2,
         get_eula/4,
         get_eula/5,
         get_launch_profile/3,
         get_launch_profile/5,
         get_launch_profile/6,
         get_launch_profile_details/3,
         get_launch_profile_details/5,
         get_launch_profile_details/6,
         get_launch_profile_initialization/6,
         get_launch_profile_initialization/8,
         get_launch_profile_initialization/9,
         get_launch_profile_member/4,
         get_launch_profile_member/6,
         get_launch_profile_member/7,
         get_streaming_image/3,
         get_streaming_image/5,
         get_streaming_image/6,
         get_streaming_session/3,
         get_streaming_session/5,
         get_streaming_session/6,
         get_streaming_session_backup/3,
         get_streaming_session_backup/5,
         get_streaming_session_backup/6,
         get_streaming_session_stream/4,
         get_streaming_session_stream/6,
         get_streaming_session_stream/7,
         get_studio/2,
         get_studio/4,
         get_studio/5,
         get_studio_component/3,
         get_studio_component/5,
         get_studio_component/6,
         get_studio_member/3,
         get_studio_member/5,
         get_studio_member/6,
         list_eula_acceptances/2,
         list_eula_acceptances/4,
         list_eula_acceptances/5,
         list_eulas/1,
         list_eulas/3,
         list_eulas/4,
         list_launch_profile_members/3,
         list_launch_profile_members/5,
         list_launch_profile_members/6,
         list_launch_profiles/2,
         list_launch_profiles/4,
         list_launch_profiles/5,
         list_streaming_images/2,
         list_streaming_images/4,
         list_streaming_images/5,
         list_streaming_session_backups/2,
         list_streaming_session_backups/4,
         list_streaming_session_backups/5,
         list_streaming_sessions/2,
         list_streaming_sessions/4,
         list_streaming_sessions/5,
         list_studio_components/2,
         list_studio_components/4,
         list_studio_components/5,
         list_studio_members/2,
         list_studio_members/4,
         list_studio_members/5,
         list_studios/1,
         list_studios/3,
         list_studios/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_launch_profile_members/4,
         put_launch_profile_members/5,
         put_studio_members/3,
         put_studio_members/4,
         start_streaming_session/4,
         start_streaming_session/5,
         start_studio_s_s_o_configuration_repair/3,
         start_studio_s_s_o_configuration_repair/4,
         stop_streaming_session/4,
         stop_streaming_session/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_launch_profile/4,
         update_launch_profile/5,
         update_launch_profile_member/5,
         update_launch_profile_member/6,
         update_streaming_image/4,
         update_streaming_image/5,
         update_studio/3,
         update_studio/4,
         update_studio_component/4,
         update_studio_component/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% delete_launch_profile_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_launch_profile_request() :: #{binary() => any()}.

%% Example:
%% get_streaming_image_request() :: #{}
-type get_streaming_image_request() :: #{}.


%% Example:
%% put_studio_members_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"identityStoreId">> := string(),
%%   <<"members">> := list(new_studio_member()())
%% }
-type put_studio_members_request() :: #{binary() => any()}.


%% Example:
%% studio_component_initialization_script() :: #{
%%   <<"launchProfileProtocolVersion">> => string(),
%%   <<"platform">> => list(any()),
%%   <<"runContext">> => list(any()),
%%   <<"script">> => string()
%% }
-type studio_component_initialization_script() :: #{binary() => any()}.


%% Example:
%% launch_profile_initialization() :: #{
%%   <<"activeDirectory">> => launch_profile_initialization_active_directory(),
%%   <<"ec2SecurityGroupIds">> => list(string()()),
%%   <<"launchProfileId">> => string(),
%%   <<"launchProfileProtocolVersion">> => string(),
%%   <<"launchPurpose">> => string(),
%%   <<"name">> => string(),
%%   <<"platform">> => list(any()),
%%   <<"systemInitializationScripts">> => list(launch_profile_initialization_script()()),
%%   <<"userInitializationScripts">> => list(launch_profile_initialization_script()())
%% }
-type launch_profile_initialization() :: #{binary() => any()}.


%% Example:
%% list_streaming_sessions_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"sessions">> => list(streaming_session()())
%% }
-type list_streaming_sessions_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> => map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% launch_profile_membership() :: #{
%%   <<"identityStoreId">> => string(),
%%   <<"persona">> => list(any()),
%%   <<"principalId">> => string(),
%%   <<"sid">> => string()
%% }
-type launch_profile_membership() :: #{binary() => any()}.


%% Example:
%% create_studio_component_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"configuration">> => list(),
%%   <<"description">> => string(),
%%   <<"ec2SecurityGroupIds">> => list(string()()),
%%   <<"initializationScripts">> => list(studio_component_initialization_script()()),
%%   <<"name">> := string(),
%%   <<"runtimeRoleArn">> => string(),
%%   <<"scriptParameters">> => list(script_parameter_key_value()()),
%%   <<"secureInitializationRoleArn">> => string(),
%%   <<"subtype">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"type">> := list(any())
%% }
-type create_studio_component_request() :: #{binary() => any()}.


%% Example:
%% delete_launch_profile_member_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_launch_profile_member_request() :: #{binary() => any()}.


%% Example:
%% update_streaming_image_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string()
%% }
-type update_streaming_image_request() :: #{binary() => any()}.


%% Example:
%% list_eulas_response() :: #{
%%   <<"eulas">> => list(eula()()),
%%   <<"nextToken">> => string()
%% }
-type list_eulas_response() :: #{binary() => any()}.


%% Example:
%% eula_acceptance() :: #{
%%   <<"acceptedAt">> => non_neg_integer(),
%%   <<"acceptedBy">> => string(),
%%   <<"accepteeId">> => string(),
%%   <<"eulaAcceptanceId">> => string(),
%%   <<"eulaId">> => string()
%% }
-type eula_acceptance() :: #{binary() => any()}.

%% Example:
%% get_streaming_session_backup_request() :: #{}
-type get_streaming_session_backup_request() :: #{}.


%% Example:
%% create_launch_profile_response() :: #{
%%   <<"launchProfile">> => launch_profile()
%% }
-type create_launch_profile_response() :: #{binary() => any()}.


%% Example:
%% launch_profile_initialization_script() :: #{
%%   <<"runtimeRoleArn">> => string(),
%%   <<"script">> => string(),
%%   <<"secureInitializationRoleArn">> => string(),
%%   <<"studioComponentId">> => string(),
%%   <<"studioComponentName">> => string()
%% }
-type launch_profile_initialization_script() :: #{binary() => any()}.


%% Example:
%% studio_component() :: #{
%%   <<"arn">> => string(),
%%   <<"configuration">> => list(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"ec2SecurityGroupIds">> => list(string()()),
%%   <<"initializationScripts">> => list(studio_component_initialization_script()()),
%%   <<"name">> => string(),
%%   <<"runtimeRoleArn">> => string(),
%%   <<"scriptParameters">> => list(script_parameter_key_value()()),
%%   <<"secureInitializationRoleArn">> => string(),
%%   <<"state">> => list(any()),
%%   <<"statusCode">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"studioComponentId">> => string(),
%%   <<"subtype">> => list(any()),
%%   <<"tags">> => map(),
%%   <<"type">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type studio_component() :: #{binary() => any()}.


%% Example:
%% delete_studio_response() :: #{
%%   <<"studio">> => studio()
%% }
-type delete_studio_response() :: #{binary() => any()}.


%% Example:
%% streaming_session() :: #{
%%   <<"arn">> => string(),
%%   <<"automaticTerminationMode">> => list(any()),
%%   <<"backupMode">> => list(any()),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"ec2InstanceType">> => string(),
%%   <<"launchProfileId">> => string(),
%%   <<"maxBackupsToRetain">> => integer(),
%%   <<"ownedBy">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"sessionPersistenceMode">> => list(any()),
%%   <<"startedAt">> => non_neg_integer(),
%%   <<"startedBy">> => string(),
%%   <<"startedFromBackupId">> => string(),
%%   <<"state">> => list(any()),
%%   <<"statusCode">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"stopAt">> => non_neg_integer(),
%%   <<"stoppedAt">> => non_neg_integer(),
%%   <<"stoppedBy">> => string(),
%%   <<"streamingImageId">> => string(),
%%   <<"tags">> => map(),
%%   <<"terminateAt">> => non_neg_integer(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string(),
%%   <<"volumeConfiguration">> => volume_configuration(),
%%   <<"volumeRetentionMode">> => list(any())
%% }
-type streaming_session() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% list_launch_profiles_response() :: #{
%%   <<"launchProfiles">> => list(launch_profile()()),
%%   <<"nextToken">> => string()
%% }
-type list_launch_profiles_response() :: #{binary() => any()}.

%% Example:
%% delete_launch_profile_member_response() :: #{}
-type delete_launch_profile_member_response() :: #{}.


%% Example:
%% list_studio_members_response() :: #{
%%   <<"members">> => list(studio_membership()()),
%%   <<"nextToken">> => string()
%% }
-type list_studio_members_response() :: #{binary() => any()}.


%% Example:
%% list_streaming_images_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"streamingImages">> => list(streaming_image()())
%% }
-type list_streaming_images_response() :: #{binary() => any()}.


%% Example:
%% get_studio_response() :: #{
%%   <<"studio">> => studio()
%% }
-type get_studio_response() :: #{binary() => any()}.


%% Example:
%% stop_streaming_session_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"volumeRetentionMode">> => list(any())
%% }
-type stop_streaming_session_request() :: #{binary() => any()}.

%% Example:
%% get_studio_component_request() :: #{}
-type get_studio_component_request() :: #{}.


%% Example:
%% list_launch_profiles_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"principalId">> => string(),
%%   <<"states">> => list(list(any())())
%% }
-type list_launch_profiles_request() :: #{binary() => any()}.


%% Example:
%% stream_configuration_session_storage() :: #{
%%   <<"mode">> => list(list(any())()),
%%   <<"root">> => streaming_session_storage_root()
%% }
-type stream_configuration_session_storage() :: #{binary() => any()}.


%% Example:
%% get_eula_response() :: #{
%%   <<"eula">> => eula()
%% }
-type get_eula_response() :: #{binary() => any()}.


%% Example:
%% list_launch_profile_members_response() :: #{
%%   <<"members">> => list(launch_profile_membership()()),
%%   <<"nextToken">> => string()
%% }
-type list_launch_profile_members_response() :: #{binary() => any()}.


%% Example:
%% get_streaming_session_response() :: #{
%%   <<"session">> => streaming_session()
%% }
-type get_streaming_session_response() :: #{binary() => any()}.


%% Example:
%% get_launch_profile_initialization_request() :: #{
%%   <<"launchProfileProtocolVersions">> := list(string()()),
%%   <<"launchPurpose">> := string(),
%%   <<"platform">> := string()
%% }
-type get_launch_profile_initialization_request() :: #{binary() => any()}.


%% Example:
%% start_streaming_session_request() :: #{
%%   <<"backupId">> => string(),
%%   <<"clientToken">> => string()
%% }
-type start_streaming_session_request() :: #{binary() => any()}.


%% Example:
%% create_streaming_session_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"ec2InstanceType">> => list(any()),
%%   <<"launchProfileId">> := string(),
%%   <<"ownedBy">> => string(),
%%   <<"streamingImageId">> => string(),
%%   <<"tags">> => map()
%% }
-type create_streaming_session_request() :: #{binary() => any()}.


%% Example:
%% list_streaming_session_backups_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"streamingSessionBackups">> => list(streaming_session_backup()())
%% }
-type list_streaming_session_backups_response() :: #{binary() => any()}.


%% Example:
%% update_launch_profile_response() :: #{
%%   <<"launchProfile">> => launch_profile()
%% }
-type update_launch_profile_response() :: #{binary() => any()}.


%% Example:
%% update_launch_profile_member_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"persona">> := list(any())
%% }
-type update_launch_profile_member_request() :: #{binary() => any()}.

%% Example:
%% get_eula_request() :: #{}
-type get_eula_request() :: #{}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_studios_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"studios">> => list(studio()())
%% }
-type list_studios_response() :: #{binary() => any()}.


%% Example:
%% list_launch_profile_members_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_launch_profile_members_request() :: #{binary() => any()}.


%% Example:
%% shared_file_system_configuration() :: #{
%%   <<"endpoint">> => string(),
%%   <<"fileSystemId">> => string(),
%%   <<"linuxMountPoint">> => string(),
%%   <<"shareName">> => string(),
%%   <<"windowsMountDrive">> => string()
%% }
-type shared_file_system_configuration() :: #{binary() => any()}.


%% Example:
%% delete_streaming_session_response() :: #{
%%   <<"session">> => streaming_session()
%% }
-type delete_streaming_session_response() :: #{binary() => any()}.


%% Example:
%% new_studio_member() :: #{
%%   <<"persona">> => list(any()),
%%   <<"principalId">> => string()
%% }
-type new_studio_member() :: #{binary() => any()}.


%% Example:
%% validation_result() :: #{
%%   <<"state">> => list(any()),
%%   <<"statusCode">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"type">> => list(any())
%% }
-type validation_result() :: #{binary() => any()}.


%% Example:
%% streaming_session_stream() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"expiresAt">> => non_neg_integer(),
%%   <<"ownedBy">> => string(),
%%   <<"state">> => list(any()),
%%   <<"statusCode">> => list(any()),
%%   <<"streamId">> => string(),
%%   <<"url">> => string()
%% }
-type streaming_session_stream() :: #{binary() => any()}.


%% Example:
%% stream_configuration_session_backup() :: #{
%%   <<"maxBackupsToRetain">> => integer(),
%%   <<"mode">> => list(any())
%% }
-type stream_configuration_session_backup() :: #{binary() => any()}.


%% Example:
%% update_studio_component_response() :: #{
%%   <<"studioComponent">> => studio_component()
%% }
-type update_studio_component_response() :: #{binary() => any()}.


%% Example:
%% create_streaming_session_response() :: #{
%%   <<"session">> => streaming_session()
%% }
-type create_streaming_session_response() :: #{binary() => any()}.


%% Example:
%% get_launch_profile_details_response() :: #{
%%   <<"launchProfile">> => launch_profile(),
%%   <<"streamingImages">> => list(streaming_image()()),
%%   <<"studioComponentSummaries">> => list(studio_component_summary()())
%% }
-type get_launch_profile_details_response() :: #{binary() => any()}.


%% Example:
%% create_streaming_session_stream_response() :: #{
%%   <<"stream">> => streaming_session_stream()
%% }
-type create_streaming_session_stream_response() :: #{binary() => any()}.

%% Example:
%% get_streaming_session_stream_request() :: #{}
-type get_streaming_session_stream_request() :: #{}.


%% Example:
%% delete_studio_component_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_studio_component_request() :: #{binary() => any()}.


%% Example:
%% get_launch_profile_response() :: #{
%%   <<"launchProfile">> => launch_profile()
%% }
-type get_launch_profile_response() :: #{binary() => any()}.

%% Example:
%% get_studio_member_request() :: #{}
-type get_studio_member_request() :: #{}.


%% Example:
%% conflict_exception() :: #{
%%   <<"code">> => string(),
%%   <<"context">> => map(),
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"code">> => string(),
%%   <<"context">> => map(),
%%   <<"message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% launch_profile_initialization_active_directory() :: #{
%%   <<"computerAttributes">> => list(active_directory_computer_attribute()()),
%%   <<"directoryId">> => string(),
%%   <<"directoryName">> => string(),
%%   <<"dnsIpAddresses">> => list(string()()),
%%   <<"organizationalUnitDistinguishedName">> => string(),
%%   <<"studioComponentId">> => string(),
%%   <<"studioComponentName">> => string()
%% }
-type launch_profile_initialization_active_directory() :: #{binary() => any()}.


%% Example:
%% start_studio_s_s_o_configuration_repair_response() :: #{
%%   <<"studio">> => studio()
%% }
-type start_studio_s_s_o_configuration_repair_response() :: #{binary() => any()}.


%% Example:
%% get_studio_member_response() :: #{
%%   <<"member">> => studio_membership()
%% }
-type get_studio_member_response() :: #{binary() => any()}.


%% Example:
%% list_eula_acceptances_response() :: #{
%%   <<"eulaAcceptances">> => list(eula_acceptance()()),
%%   <<"nextToken">> => string()
%% }
-type list_eula_acceptances_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"code">> => string(),
%%   <<"context">> => map(),
%%   <<"message">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% delete_launch_profile_response() :: #{
%%   <<"launchProfile">> => launch_profile()
%% }
-type delete_launch_profile_response() :: #{binary() => any()}.


%% Example:
%% create_studio_response() :: #{
%%   <<"studio">> => studio()
%% }
-type create_studio_response() :: #{binary() => any()}.


%% Example:
%% delete_streaming_image_response() :: #{
%%   <<"streamingImage">> => streaming_image()
%% }
-type delete_streaming_image_response() :: #{binary() => any()}.


%% Example:
%% put_launch_profile_members_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"identityStoreId">> := string(),
%%   <<"members">> := list(new_launch_profile_member()())
%% }
-type put_launch_profile_members_request() :: #{binary() => any()}.


%% Example:
%% streaming_session_backup() :: #{
%%   <<"arn">> => string(),
%%   <<"backupId">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"launchProfileId">> => string(),
%%   <<"ownedBy">> => string(),
%%   <<"sessionId">> => string(),
%%   <<"state">> => list(any()),
%%   <<"statusCode">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"tags">> => map()
%% }
-type streaming_session_backup() :: #{binary() => any()}.


%% Example:
%% start_streaming_session_response() :: #{
%%   <<"session">> => streaming_session()
%% }
-type start_streaming_session_response() :: #{binary() => any()}.


%% Example:
%% list_studio_members_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_studio_members_request() :: #{binary() => any()}.


%% Example:
%% create_studio_component_response() :: #{
%%   <<"studioComponent">> => studio_component()
%% }
-type create_studio_component_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% eula() :: #{
%%   <<"content">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"eulaId">> => string(),
%%   <<"name">> => string(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type eula() :: #{binary() => any()}.


%% Example:
%% create_studio_request() :: #{
%%   <<"adminRoleArn">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"displayName">> := string(),
%%   <<"studioEncryptionConfiguration">> => studio_encryption_configuration(),
%%   <<"studioName">> := string(),
%%   <<"tags">> => map(),
%%   <<"userRoleArn">> := string()
%% }
-type create_studio_request() :: #{binary() => any()}.


%% Example:
%% streaming_image_encryption_configuration() :: #{
%%   <<"keyArn">> => string(),
%%   <<"keyType">> => list(any())
%% }
-type streaming_image_encryption_configuration() :: #{binary() => any()}.


%% Example:
%% list_studio_components_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"states">> => list(list(any())()),
%%   <<"types">> => list(list(any())())
%% }
-type list_studio_components_request() :: #{binary() => any()}.


%% Example:
%% list_streaming_session_backups_request() :: #{
%%   <<"nextToken">> => string(),
%%   <<"ownedBy">> => string()
%% }
-type list_streaming_session_backups_request() :: #{binary() => any()}.


%% Example:
%% create_streaming_session_stream_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"expirationInSeconds">> => integer()
%% }
-type create_streaming_session_stream_request() :: #{binary() => any()}.


%% Example:
%% create_launch_profile_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"ec2SubnetIds">> := list(string()()),
%%   <<"launchProfileProtocolVersions">> := list(string()()),
%%   <<"name">> := string(),
%%   <<"streamConfiguration">> := stream_configuration_create(),
%%   <<"studioComponentIds">> := list(string()()),
%%   <<"tags">> => map()
%% }
-type create_launch_profile_request() :: #{binary() => any()}.

%% Example:
%% get_streaming_session_request() :: #{}
-type get_streaming_session_request() :: #{}.


%% Example:
%% update_launch_profile_member_response() :: #{
%%   <<"member">> => launch_profile_membership()
%% }
-type update_launch_profile_member_response() :: #{binary() => any()}.


%% Example:
%% active_directory_computer_attribute() :: #{
%%   <<"name">> => string(),
%%   <<"value">> => string()
%% }
-type active_directory_computer_attribute() :: #{binary() => any()}.


%% Example:
%% start_studio_s_s_o_configuration_repair_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type start_studio_s_s_o_configuration_repair_request() :: #{binary() => any()}.


%% Example:
%% studio_encryption_configuration() :: #{
%%   <<"keyArn">> => string(),
%%   <<"keyType">> => list(any())
%% }
-type studio_encryption_configuration() :: #{binary() => any()}.


%% Example:
%% update_launch_profile_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"launchProfileProtocolVersions">> => list(string()()),
%%   <<"name">> => string(),
%%   <<"streamConfiguration">> => stream_configuration_create(),
%%   <<"studioComponentIds">> => list(string()())
%% }
-type update_launch_profile_request() :: #{binary() => any()}.


%% Example:
%% list_studios_request() :: #{
%%   <<"nextToken">> => string()
%% }
-type list_studios_request() :: #{binary() => any()}.

%% Example:
%% get_launch_profile_request() :: #{}
-type get_launch_profile_request() :: #{}.


%% Example:
%% delete_studio_component_response() :: #{
%%   <<"studioComponent">> => studio_component()
%% }
-type delete_studio_component_response() :: #{binary() => any()}.

%% Example:
%% put_launch_profile_members_response() :: #{}
-type put_launch_profile_members_response() :: #{}.


%% Example:
%% stop_streaming_session_response() :: #{
%%   <<"session">> => streaming_session()
%% }
-type stop_streaming_session_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"code">> => string(),
%%   <<"context">> => map(),
%%   <<"message">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% list_streaming_sessions_request() :: #{
%%   <<"createdBy">> => string(),
%%   <<"nextToken">> => string(),
%%   <<"ownedBy">> => string(),
%%   <<"sessionIds">> => string()
%% }
-type list_streaming_sessions_request() :: #{binary() => any()}.


%% Example:
%% studio_membership() :: #{
%%   <<"identityStoreId">> => string(),
%%   <<"persona">> => list(any()),
%%   <<"principalId">> => string(),
%%   <<"sid">> => string()
%% }
-type studio_membership() :: #{binary() => any()}.


%% Example:
%% get_streaming_session_backup_response() :: #{
%%   <<"streamingSessionBackup">> => streaming_session_backup()
%% }
-type get_streaming_session_backup_response() :: #{binary() => any()}.

%% Example:
%% get_launch_profile_details_request() :: #{}
-type get_launch_profile_details_request() :: #{}.


%% Example:
%% update_studio_request() :: #{
%%   <<"adminRoleArn">> => string(),
%%   <<"clientToken">> => string(),
%%   <<"displayName">> => string(),
%%   <<"userRoleArn">> => string()
%% }
-type update_studio_request() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"code">> => string(),
%%   <<"context">> => map(),
%%   <<"message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_studio_components_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"studioComponents">> => list(studio_component()())
%% }
-type list_studio_components_response() :: #{binary() => any()}.


%% Example:
%% streaming_image() :: #{
%%   <<"arn">> => string(),
%%   <<"description">> => string(),
%%   <<"ec2ImageId">> => string(),
%%   <<"encryptionConfiguration">> => streaming_image_encryption_configuration(),
%%   <<"eulaIds">> => list(string()()),
%%   <<"name">> => string(),
%%   <<"owner">> => string(),
%%   <<"platform">> => string(),
%%   <<"state">> => list(any()),
%%   <<"statusCode">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"streamingImageId">> => string(),
%%   <<"tags">> => map()
%% }
-type streaming_image() :: #{binary() => any()}.


%% Example:
%% internal_server_error_exception() :: #{
%%   <<"code">> => string(),
%%   <<"context">> => map(),
%%   <<"message">> => string()
%% }
-type internal_server_error_exception() :: #{binary() => any()}.


%% Example:
%% delete_streaming_session_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_streaming_session_request() :: #{binary() => any()}.


%% Example:
%% launch_profile() :: #{
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"ec2SubnetIds">> => list(string()()),
%%   <<"launchProfileId">> => string(),
%%   <<"launchProfileProtocolVersions">> => list(string()()),
%%   <<"name">> => string(),
%%   <<"state">> => list(any()),
%%   <<"statusCode">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"streamConfiguration">> => stream_configuration(),
%%   <<"studioComponentIds">> => list(string()()),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string(),
%%   <<"validationResults">> => list(validation_result()())
%% }
-type launch_profile() :: #{binary() => any()}.


%% Example:
%% delete_studio_member_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_studio_member_request() :: #{binary() => any()}.


%% Example:
%% accept_eulas_response() :: #{
%%   <<"eulaAcceptances">> => list(eula_acceptance()())
%% }
-type accept_eulas_response() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"code">> => string(),
%%   <<"context">> => map(),
%%   <<"message">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% new_launch_profile_member() :: #{
%%   <<"persona">> => list(any()),
%%   <<"principalId">> => string()
%% }
-type new_launch_profile_member() :: #{binary() => any()}.


%% Example:
%% get_streaming_image_response() :: #{
%%   <<"streamingImage">> => streaming_image()
%% }
-type get_streaming_image_response() :: #{binary() => any()}.


%% Example:
%% compute_farm_configuration() :: #{
%%   <<"activeDirectoryUser">> => string(),
%%   <<"endpoint">> => string()
%% }
-type compute_farm_configuration() :: #{binary() => any()}.


%% Example:
%% list_streaming_images_request() :: #{
%%   <<"nextToken">> => string(),
%%   <<"owner">> => string()
%% }
-type list_streaming_images_request() :: #{binary() => any()}.


%% Example:
%% stream_configuration_create() :: #{
%%   <<"automaticTerminationMode">> => list(any()),
%%   <<"clipboardMode">> => list(any()),
%%   <<"ec2InstanceTypes">> => list(list(any())()),
%%   <<"maxSessionLengthInMinutes">> => integer(),
%%   <<"maxStoppedSessionLengthInMinutes">> => integer(),
%%   <<"sessionBackup">> => stream_configuration_session_backup(),
%%   <<"sessionPersistenceMode">> => list(any()),
%%   <<"sessionStorage">> => stream_configuration_session_storage(),
%%   <<"streamingImageIds">> => list(string()()),
%%   <<"volumeConfiguration">> => volume_configuration()
%% }
-type stream_configuration_create() :: #{binary() => any()}.


%% Example:
%% accept_eulas_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"eulaIds">> => list(string()())
%% }
-type accept_eulas_request() :: #{binary() => any()}.


%% Example:
%% get_studio_component_response() :: #{
%%   <<"studioComponent">> => studio_component()
%% }
-type get_studio_component_response() :: #{binary() => any()}.


%% Example:
%% update_studio_component_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"configuration">> => list(),
%%   <<"description">> => string(),
%%   <<"ec2SecurityGroupIds">> => list(string()()),
%%   <<"initializationScripts">> => list(studio_component_initialization_script()()),
%%   <<"name">> => string(),
%%   <<"runtimeRoleArn">> => string(),
%%   <<"scriptParameters">> => list(script_parameter_key_value()()),
%%   <<"secureInitializationRoleArn">> => string(),
%%   <<"subtype">> => list(any()),
%%   <<"type">> => list(any())
%% }
-type update_studio_component_request() :: #{binary() => any()}.


%% Example:
%% delete_streaming_image_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_streaming_image_request() :: #{binary() => any()}.


%% Example:
%% active_directory_configuration() :: #{
%%   <<"computerAttributes">> => list(active_directory_computer_attribute()()),
%%   <<"directoryId">> => string(),
%%   <<"organizationalUnitDistinguishedName">> => string()
%% }
-type active_directory_configuration() :: #{binary() => any()}.


%% Example:
%% volume_configuration() :: #{
%%   <<"iops">> => integer(),
%%   <<"size">> => integer(),
%%   <<"throughput">> => integer()
%% }
-type volume_configuration() :: #{binary() => any()}.


%% Example:
%% create_streaming_image_response() :: #{
%%   <<"streamingImage">> => streaming_image()
%% }
-type create_streaming_image_response() :: #{binary() => any()}.


%% Example:
%% create_streaming_image_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"description">> => string(),
%%   <<"ec2ImageId">> := string(),
%%   <<"name">> := string(),
%%   <<"tags">> => map()
%% }
-type create_streaming_image_request() :: #{binary() => any()}.


%% Example:
%% get_streaming_session_stream_response() :: #{
%%   <<"stream">> => streaming_session_stream()
%% }
-type get_streaming_session_stream_response() :: #{binary() => any()}.


%% Example:
%% delete_studio_request() :: #{
%%   <<"clientToken">> => string()
%% }
-type delete_studio_request() :: #{binary() => any()}.

%% Example:
%% get_studio_request() :: #{}
-type get_studio_request() :: #{}.


%% Example:
%% update_studio_response() :: #{
%%   <<"studio">> => studio()
%% }
-type update_studio_response() :: #{binary() => any()}.


%% Example:
%% script_parameter_key_value() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type script_parameter_key_value() :: #{binary() => any()}.

%% Example:
%% delete_studio_member_response() :: #{}
-type delete_studio_member_response() :: #{}.

%% Example:
%% put_studio_members_response() :: #{}
-type put_studio_members_response() :: #{}.


%% Example:
%% studio() :: #{
%%   <<"adminRoleArn">> => string(),
%%   <<"arn">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"displayName">> => string(),
%%   <<"homeRegion">> => string(),
%%   <<"ssoClientId">> => string(),
%%   <<"state">> => list(any()),
%%   <<"statusCode">> => list(any()),
%%   <<"statusMessage">> => string(),
%%   <<"studioEncryptionConfiguration">> => studio_encryption_configuration(),
%%   <<"studioId">> => string(),
%%   <<"studioName">> => string(),
%%   <<"studioUrl">> => string(),
%%   <<"tags">> => map(),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"userRoleArn">> => string()
%% }
-type studio() :: #{binary() => any()}.

%% Example:
%% get_launch_profile_member_request() :: #{}
-type get_launch_profile_member_request() :: #{}.


%% Example:
%% license_service_configuration() :: #{
%%   <<"endpoint">> => string()
%% }
-type license_service_configuration() :: #{binary() => any()}.


%% Example:
%% list_eula_acceptances_request() :: #{
%%   <<"eulaIds">> => list(string()()),
%%   <<"nextToken">> => string()
%% }
-type list_eula_acceptances_request() :: #{binary() => any()}.


%% Example:
%% streaming_session_storage_root() :: #{
%%   <<"linux">> => string(),
%%   <<"windows">> => string()
%% }
-type streaming_session_storage_root() :: #{binary() => any()}.


%% Example:
%% update_streaming_image_response() :: #{
%%   <<"streamingImage">> => streaming_image()
%% }
-type update_streaming_image_response() :: #{binary() => any()}.


%% Example:
%% get_launch_profile_member_response() :: #{
%%   <<"member">> => launch_profile_membership()
%% }
-type get_launch_profile_member_response() :: #{binary() => any()}.


%% Example:
%% studio_component_summary() :: #{
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"createdBy">> => string(),
%%   <<"description">> => string(),
%%   <<"name">> => string(),
%%   <<"studioComponentId">> => string(),
%%   <<"subtype">> => list(any()),
%%   <<"type">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer(),
%%   <<"updatedBy">> => string()
%% }
-type studio_component_summary() :: #{binary() => any()}.


%% Example:
%% stream_configuration() :: #{
%%   <<"automaticTerminationMode">> => list(any()),
%%   <<"clipboardMode">> => list(any()),
%%   <<"ec2InstanceTypes">> => list(list(any())()),
%%   <<"maxSessionLengthInMinutes">> => integer(),
%%   <<"maxStoppedSessionLengthInMinutes">> => integer(),
%%   <<"sessionBackup">> => stream_configuration_session_backup(),
%%   <<"sessionPersistenceMode">> => list(any()),
%%   <<"sessionStorage">> => stream_configuration_session_storage(),
%%   <<"streamingImageIds">> => list(string()()),
%%   <<"volumeConfiguration">> => volume_configuration()
%% }
-type stream_configuration() :: #{binary() => any()}.


%% Example:
%% get_launch_profile_initialization_response() :: #{
%%   <<"launchProfileInitialization">> => launch_profile_initialization()
%% }
-type get_launch_profile_initialization_response() :: #{binary() => any()}.


%% Example:
%% list_eulas_request() :: #{
%%   <<"eulaIds">> => list(string()()),
%%   <<"nextToken">> => string()
%% }
-type list_eulas_request() :: #{binary() => any()}.

-type accept_eulas_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_launch_profile_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_streaming_image_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_streaming_session_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_streaming_session_stream_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_studio_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_studio_component_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_launch_profile_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_launch_profile_member_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_streaming_image_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_streaming_session_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_studio_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_studio_component_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_studio_member_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_eula_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_launch_profile_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_launch_profile_details_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_launch_profile_initialization_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_launch_profile_member_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_streaming_image_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_streaming_session_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_streaming_session_backup_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_streaming_session_stream_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_studio_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_studio_component_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_studio_member_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_eula_acceptances_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_eulas_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_launch_profile_members_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_launch_profiles_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_streaming_images_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_streaming_session_backups_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_streaming_sessions_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_studio_components_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_studio_members_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_studios_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_launch_profile_members_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type put_studio_members_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_streaming_session_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_studio_s_s_o_configuration_repair_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_streaming_session_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_launch_profile_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_launch_profile_member_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_streaming_image_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_studio_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_studio_component_errors() ::
    throttling_exception() | 
    internal_server_error_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Accept EULAs.
-spec accept_eulas(aws_client:aws_client(), binary() | list(), accept_eulas_request()) ->
    {ok, accept_eulas_response(), tuple()} |
    {error, any()} |
    {error, accept_eulas_errors(), tuple()}.
accept_eulas(Client, StudioId, Input) ->
    accept_eulas(Client, StudioId, Input, []).

-spec accept_eulas(aws_client:aws_client(), binary() | list(), accept_eulas_request(), proplists:proplist()) ->
    {ok, accept_eulas_response(), tuple()} |
    {error, any()} |
    {error, accept_eulas_errors(), tuple()}.
accept_eulas(Client, StudioId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/eula-acceptances"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create a launch profile.
-spec create_launch_profile(aws_client:aws_client(), binary() | list(), create_launch_profile_request()) ->
    {ok, create_launch_profile_response(), tuple()} |
    {error, any()} |
    {error, create_launch_profile_errors(), tuple()}.
create_launch_profile(Client, StudioId, Input) ->
    create_launch_profile(Client, StudioId, Input, []).

-spec create_launch_profile(aws_client:aws_client(), binary() | list(), create_launch_profile_request(), proplists:proplist()) ->
    {ok, create_launch_profile_response(), tuple()} |
    {error, any()} |
    {error, create_launch_profile_errors(), tuple()}.
create_launch_profile(Client, StudioId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a streaming image resource in a studio.
-spec create_streaming_image(aws_client:aws_client(), binary() | list(), create_streaming_image_request()) ->
    {ok, create_streaming_image_response(), tuple()} |
    {error, any()} |
    {error, create_streaming_image_errors(), tuple()}.
create_streaming_image(Client, StudioId, Input) ->
    create_streaming_image(Client, StudioId, Input, []).

-spec create_streaming_image(aws_client:aws_client(), binary() | list(), create_streaming_image_request(), proplists:proplist()) ->
    {ok, create_streaming_image_response(), tuple()} |
    {error, any()} |
    {error, create_streaming_image_errors(), tuple()}.
create_streaming_image(Client, StudioId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-images"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a streaming session in a studio.
%%
%% After invoking this operation, you must poll GetStreamingSession until the
%% streaming
%% session is in the `READY' state.
-spec create_streaming_session(aws_client:aws_client(), binary() | list(), create_streaming_session_request()) ->
    {ok, create_streaming_session_response(), tuple()} |
    {error, any()} |
    {error, create_streaming_session_errors(), tuple()}.
create_streaming_session(Client, StudioId, Input) ->
    create_streaming_session(Client, StudioId, Input, []).

-spec create_streaming_session(aws_client:aws_client(), binary() | list(), create_streaming_session_request(), proplists:proplist()) ->
    {ok, create_streaming_session_response(), tuple()} |
    {error, any()} |
    {error, create_streaming_session_errors(), tuple()}.
create_streaming_session(Client, StudioId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-sessions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a streaming session stream for a streaming session.
%%
%% After invoking this API, invoke GetStreamingSessionStream with the
%% returned streamId
%% to poll the resource until it is in the `READY' state.
-spec create_streaming_session_stream(aws_client:aws_client(), binary() | list(), binary() | list(), create_streaming_session_stream_request()) ->
    {ok, create_streaming_session_stream_response(), tuple()} |
    {error, any()} |
    {error, create_streaming_session_stream_errors(), tuple()}.
create_streaming_session_stream(Client, SessionId, StudioId, Input) ->
    create_streaming_session_stream(Client, SessionId, StudioId, Input, []).

-spec create_streaming_session_stream(aws_client:aws_client(), binary() | list(), binary() | list(), create_streaming_session_stream_request(), proplists:proplist()) ->
    {ok, create_streaming_session_stream_response(), tuple()} |
    {error, any()} |
    {error, create_streaming_session_stream_errors(), tuple()}.
create_streaming_session_stream(Client, SessionId, StudioId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-sessions/", aws_util:encode_uri(SessionId), "/streams"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create a new studio.
%%
%% When creating a studio, two IAM roles must be provided: the admin role
%% and the user role. These roles are assumed by your users when they log in
%% to the Nimble Studio portal.
%%
%% The user role must have the `AmazonNimbleStudio-StudioUser' managed
%% policy
%% attached for the portal to function properly.
%%
%% The admin role must have the `AmazonNimbleStudio-StudioAdmin' managed
%% policy attached for the portal to function properly.
%%
%% You may optionally specify a KMS key in the
%% `StudioEncryptionConfiguration'.
%%
%% In Nimble Studio, resource names, descriptions, initialization scripts,
%% and other
%% data you provide are always encrypted at rest using an KMS key. By
%% default, this key is
%% owned by Amazon Web Services and managed on your behalf. You may provide
%% your own KMS key
%% when calling `CreateStudio' to encrypt this data using a key you own
%% and
%% manage.
%%
%% When providing an KMS key during studio creation, Nimble Studio creates
%% KMS
%% grants in your account to provide your studio user and admin roles access
%% to these KMS
%% keys.
%%
%% If you delete this grant, the studio will no longer be accessible to your
%% portal
%% users.
%%
%% If you delete the studio KMS key, your studio will no longer be
%% accessible.
-spec create_studio(aws_client:aws_client(), create_studio_request()) ->
    {ok, create_studio_response(), tuple()} |
    {error, any()} |
    {error, create_studio_errors(), tuple()}.
create_studio(Client, Input) ->
    create_studio(Client, Input, []).

-spec create_studio(aws_client:aws_client(), create_studio_request(), proplists:proplist()) ->
    {ok, create_studio_response(), tuple()} |
    {error, any()} |
    {error, create_studio_errors(), tuple()}.
create_studio(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a studio component resource.
-spec create_studio_component(aws_client:aws_client(), binary() | list(), create_studio_component_request()) ->
    {ok, create_studio_component_response(), tuple()} |
    {error, any()} |
    {error, create_studio_component_errors(), tuple()}.
create_studio_component(Client, StudioId, Input) ->
    create_studio_component(Client, StudioId, Input, []).

-spec create_studio_component(aws_client:aws_client(), binary() | list(), create_studio_component_request(), proplists:proplist()) ->
    {ok, create_studio_component_response(), tuple()} |
    {error, any()} |
    {error, create_studio_component_errors(), tuple()}.
create_studio_component(Client, StudioId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/studio-components"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Permanently delete a launch profile.
-spec delete_launch_profile(aws_client:aws_client(), binary() | list(), binary() | list(), delete_launch_profile_request()) ->
    {ok, delete_launch_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_launch_profile_errors(), tuple()}.
delete_launch_profile(Client, LaunchProfileId, StudioId, Input) ->
    delete_launch_profile(Client, LaunchProfileId, StudioId, Input, []).

-spec delete_launch_profile(aws_client:aws_client(), binary() | list(), binary() | list(), delete_launch_profile_request(), proplists:proplist()) ->
    {ok, delete_launch_profile_response(), tuple()} |
    {error, any()} |
    {error, delete_launch_profile_errors(), tuple()}.
delete_launch_profile(Client, LaunchProfileId, StudioId, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles/", aws_util:encode_uri(LaunchProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a user from launch profile membership.
-spec delete_launch_profile_member(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_launch_profile_member_request()) ->
    {ok, delete_launch_profile_member_response(), tuple()} |
    {error, any()} |
    {error, delete_launch_profile_member_errors(), tuple()}.
delete_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId, Input) ->
    delete_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId, Input, []).

-spec delete_launch_profile_member(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), delete_launch_profile_member_request(), proplists:proplist()) ->
    {ok, delete_launch_profile_member_response(), tuple()} |
    {error, any()} |
    {error, delete_launch_profile_member_errors(), tuple()}.
delete_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles/", aws_util:encode_uri(LaunchProfileId), "/membership/", aws_util:encode_uri(PrincipalId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete streaming image.
-spec delete_streaming_image(aws_client:aws_client(), binary() | list(), binary() | list(), delete_streaming_image_request()) ->
    {ok, delete_streaming_image_response(), tuple()} |
    {error, any()} |
    {error, delete_streaming_image_errors(), tuple()}.
delete_streaming_image(Client, StreamingImageId, StudioId, Input) ->
    delete_streaming_image(Client, StreamingImageId, StudioId, Input, []).

-spec delete_streaming_image(aws_client:aws_client(), binary() | list(), binary() | list(), delete_streaming_image_request(), proplists:proplist()) ->
    {ok, delete_streaming_image_response(), tuple()} |
    {error, any()} |
    {error, delete_streaming_image_errors(), tuple()}.
delete_streaming_image(Client, StreamingImageId, StudioId, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-images/", aws_util:encode_uri(StreamingImageId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes streaming session resource.
%%
%% After invoking this operation, use GetStreamingSession to poll the
%% resource until it
%% transitions to a `DELETED' state.
%%
%% A streaming session will count against your streaming session quota until
%% it is marked
%% `DELETED'.
-spec delete_streaming_session(aws_client:aws_client(), binary() | list(), binary() | list(), delete_streaming_session_request()) ->
    {ok, delete_streaming_session_response(), tuple()} |
    {error, any()} |
    {error, delete_streaming_session_errors(), tuple()}.
delete_streaming_session(Client, SessionId, StudioId, Input) ->
    delete_streaming_session(Client, SessionId, StudioId, Input, []).

-spec delete_streaming_session(aws_client:aws_client(), binary() | list(), binary() | list(), delete_streaming_session_request(), proplists:proplist()) ->
    {ok, delete_streaming_session_response(), tuple()} |
    {error, any()} |
    {error, delete_streaming_session_errors(), tuple()}.
delete_streaming_session(Client, SessionId, StudioId, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-sessions/", aws_util:encode_uri(SessionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a studio resource.
-spec delete_studio(aws_client:aws_client(), binary() | list(), delete_studio_request()) ->
    {ok, delete_studio_response(), tuple()} |
    {error, any()} |
    {error, delete_studio_errors(), tuple()}.
delete_studio(Client, StudioId, Input) ->
    delete_studio(Client, StudioId, Input, []).

-spec delete_studio(aws_client:aws_client(), binary() | list(), delete_studio_request(), proplists:proplist()) ->
    {ok, delete_studio_response(), tuple()} |
    {error, any()} |
    {error, delete_studio_errors(), tuple()}.
delete_studio(Client, StudioId, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a studio component resource.
-spec delete_studio_component(aws_client:aws_client(), binary() | list(), binary() | list(), delete_studio_component_request()) ->
    {ok, delete_studio_component_response(), tuple()} |
    {error, any()} |
    {error, delete_studio_component_errors(), tuple()}.
delete_studio_component(Client, StudioComponentId, StudioId, Input) ->
    delete_studio_component(Client, StudioComponentId, StudioId, Input, []).

-spec delete_studio_component(aws_client:aws_client(), binary() | list(), binary() | list(), delete_studio_component_request(), proplists:proplist()) ->
    {ok, delete_studio_component_response(), tuple()} |
    {error, any()} |
    {error, delete_studio_component_errors(), tuple()}.
delete_studio_component(Client, StudioComponentId, StudioId, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/studio-components/", aws_util:encode_uri(StudioComponentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a user from studio membership.
-spec delete_studio_member(aws_client:aws_client(), binary() | list(), binary() | list(), delete_studio_member_request()) ->
    {ok, delete_studio_member_response(), tuple()} |
    {error, any()} |
    {error, delete_studio_member_errors(), tuple()}.
delete_studio_member(Client, PrincipalId, StudioId, Input) ->
    delete_studio_member(Client, PrincipalId, StudioId, Input, []).

-spec delete_studio_member(aws_client:aws_client(), binary() | list(), binary() | list(), delete_studio_member_request(), proplists:proplist()) ->
    {ok, delete_studio_member_response(), tuple()} |
    {error, any()} |
    {error, delete_studio_member_errors(), tuple()}.
delete_studio_member(Client, PrincipalId, StudioId, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/membership/", aws_util:encode_uri(PrincipalId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Get EULA.
-spec get_eula(aws_client:aws_client(), binary() | list()) ->
    {ok, get_eula_response(), tuple()} |
    {error, any()} |
    {error, get_eula_errors(), tuple()}.
get_eula(Client, EulaId)
  when is_map(Client) ->
    get_eula(Client, EulaId, #{}, #{}).

-spec get_eula(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_eula_response(), tuple()} |
    {error, any()} |
    {error, get_eula_errors(), tuple()}.
get_eula(Client, EulaId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_eula(Client, EulaId, QueryMap, HeadersMap, []).

-spec get_eula(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_eula_response(), tuple()} |
    {error, any()} |
    {error, get_eula_errors(), tuple()}.
get_eula(Client, EulaId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/eulas/", aws_util:encode_uri(EulaId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a launch profile.
-spec get_launch_profile(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_launch_profile_response(), tuple()} |
    {error, any()} |
    {error, get_launch_profile_errors(), tuple()}.
get_launch_profile(Client, LaunchProfileId, StudioId)
  when is_map(Client) ->
    get_launch_profile(Client, LaunchProfileId, StudioId, #{}, #{}).

-spec get_launch_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_launch_profile_response(), tuple()} |
    {error, any()} |
    {error, get_launch_profile_errors(), tuple()}.
get_launch_profile(Client, LaunchProfileId, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_launch_profile(Client, LaunchProfileId, StudioId, QueryMap, HeadersMap, []).

-spec get_launch_profile(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_launch_profile_response(), tuple()} |
    {error, any()} |
    {error, get_launch_profile_errors(), tuple()}.
get_launch_profile(Client, LaunchProfileId, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles/", aws_util:encode_uri(LaunchProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Launch profile details include the launch profile resource and
%% summary information of
%% resources that are used by, or available to, the launch profile.
%%
%% This includes the name
%% and description of all studio components used by the launch profiles, and
%% the name and
%% description of streaming images that can be used with this launch profile.
-spec get_launch_profile_details(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_launch_profile_details_response(), tuple()} |
    {error, any()} |
    {error, get_launch_profile_details_errors(), tuple()}.
get_launch_profile_details(Client, LaunchProfileId, StudioId)
  when is_map(Client) ->
    get_launch_profile_details(Client, LaunchProfileId, StudioId, #{}, #{}).

-spec get_launch_profile_details(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_launch_profile_details_response(), tuple()} |
    {error, any()} |
    {error, get_launch_profile_details_errors(), tuple()}.
get_launch_profile_details(Client, LaunchProfileId, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_launch_profile_details(Client, LaunchProfileId, StudioId, QueryMap, HeadersMap, []).

-spec get_launch_profile_details(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_launch_profile_details_response(), tuple()} |
    {error, any()} |
    {error, get_launch_profile_details_errors(), tuple()}.
get_launch_profile_details(Client, LaunchProfileId, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles/", aws_util:encode_uri(LaunchProfileId), "/details"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a launch profile initialization.
-spec get_launch_profile_initialization(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_launch_profile_initialization_response(), tuple()} |
    {error, any()} |
    {error, get_launch_profile_initialization_errors(), tuple()}.
get_launch_profile_initialization(Client, LaunchProfileId, StudioId, LaunchProfileProtocolVersions, LaunchPurpose, Platform)
  when is_map(Client) ->
    get_launch_profile_initialization(Client, LaunchProfileId, StudioId, LaunchProfileProtocolVersions, LaunchPurpose, Platform, #{}, #{}).

-spec get_launch_profile_initialization(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_launch_profile_initialization_response(), tuple()} |
    {error, any()} |
    {error, get_launch_profile_initialization_errors(), tuple()}.
get_launch_profile_initialization(Client, LaunchProfileId, StudioId, LaunchProfileProtocolVersions, LaunchPurpose, Platform, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_launch_profile_initialization(Client, LaunchProfileId, StudioId, LaunchProfileProtocolVersions, LaunchPurpose, Platform, QueryMap, HeadersMap, []).

-spec get_launch_profile_initialization(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_launch_profile_initialization_response(), tuple()} |
    {error, any()} |
    {error, get_launch_profile_initialization_errors(), tuple()}.
get_launch_profile_initialization(Client, LaunchProfileId, StudioId, LaunchProfileProtocolVersions, LaunchPurpose, Platform, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles/", aws_util:encode_uri(LaunchProfileId), "/init"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"launchProfileProtocolVersions">>, LaunchProfileProtocolVersions},
        {<<"launchPurpose">>, LaunchPurpose},
        {<<"platform">>, Platform}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a user persona in launch profile membership.
-spec get_launch_profile_member(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_launch_profile_member_response(), tuple()} |
    {error, any()} |
    {error, get_launch_profile_member_errors(), tuple()}.
get_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId)
  when is_map(Client) ->
    get_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId, #{}, #{}).

-spec get_launch_profile_member(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_launch_profile_member_response(), tuple()} |
    {error, any()} |
    {error, get_launch_profile_member_errors(), tuple()}.
get_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId, QueryMap, HeadersMap, []).

-spec get_launch_profile_member(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_launch_profile_member_response(), tuple()} |
    {error, any()} |
    {error, get_launch_profile_member_errors(), tuple()}.
get_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles/", aws_util:encode_uri(LaunchProfileId), "/membership/", aws_util:encode_uri(PrincipalId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get streaming image.
-spec get_streaming_image(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_streaming_image_response(), tuple()} |
    {error, any()} |
    {error, get_streaming_image_errors(), tuple()}.
get_streaming_image(Client, StreamingImageId, StudioId)
  when is_map(Client) ->
    get_streaming_image(Client, StreamingImageId, StudioId, #{}, #{}).

-spec get_streaming_image(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_streaming_image_response(), tuple()} |
    {error, any()} |
    {error, get_streaming_image_errors(), tuple()}.
get_streaming_image(Client, StreamingImageId, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_streaming_image(Client, StreamingImageId, StudioId, QueryMap, HeadersMap, []).

-spec get_streaming_image(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_streaming_image_response(), tuple()} |
    {error, any()} |
    {error, get_streaming_image_errors(), tuple()}.
get_streaming_image(Client, StreamingImageId, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-images/", aws_util:encode_uri(StreamingImageId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets StreamingSession resource.
%%
%% Invoke this operation to poll for a streaming session state while creating
%% or deleting
%% a session.
-spec get_streaming_session(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_streaming_session_response(), tuple()} |
    {error, any()} |
    {error, get_streaming_session_errors(), tuple()}.
get_streaming_session(Client, SessionId, StudioId)
  when is_map(Client) ->
    get_streaming_session(Client, SessionId, StudioId, #{}, #{}).

-spec get_streaming_session(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_streaming_session_response(), tuple()} |
    {error, any()} |
    {error, get_streaming_session_errors(), tuple()}.
get_streaming_session(Client, SessionId, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_streaming_session(Client, SessionId, StudioId, QueryMap, HeadersMap, []).

-spec get_streaming_session(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_streaming_session_response(), tuple()} |
    {error, any()} |
    {error, get_streaming_session_errors(), tuple()}.
get_streaming_session(Client, SessionId, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-sessions/", aws_util:encode_uri(SessionId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets `StreamingSessionBackup' resource.
%%
%% Invoke this operation to poll for a streaming session backup while
%% stopping a
%% streaming session.
-spec get_streaming_session_backup(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_streaming_session_backup_response(), tuple()} |
    {error, any()} |
    {error, get_streaming_session_backup_errors(), tuple()}.
get_streaming_session_backup(Client, BackupId, StudioId)
  when is_map(Client) ->
    get_streaming_session_backup(Client, BackupId, StudioId, #{}, #{}).

-spec get_streaming_session_backup(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_streaming_session_backup_response(), tuple()} |
    {error, any()} |
    {error, get_streaming_session_backup_errors(), tuple()}.
get_streaming_session_backup(Client, BackupId, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_streaming_session_backup(Client, BackupId, StudioId, QueryMap, HeadersMap, []).

-spec get_streaming_session_backup(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_streaming_session_backup_response(), tuple()} |
    {error, any()} |
    {error, get_streaming_session_backup_errors(), tuple()}.
get_streaming_session_backup(Client, BackupId, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-session-backups/", aws_util:encode_uri(BackupId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a StreamingSessionStream for a streaming session.
%%
%% Invoke this operation to poll the resource after invoking
%% `CreateStreamingSessionStream'.
%%
%% After the `StreamingSessionStream' changes to the `READY' state,
%% the url property will contain a stream to be used with the DCV streaming
%% client.
-spec get_streaming_session_stream(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list()) ->
    {ok, get_streaming_session_stream_response(), tuple()} |
    {error, any()} |
    {error, get_streaming_session_stream_errors(), tuple()}.
get_streaming_session_stream(Client, SessionId, StreamId, StudioId)
  when is_map(Client) ->
    get_streaming_session_stream(Client, SessionId, StreamId, StudioId, #{}, #{}).

-spec get_streaming_session_stream(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_streaming_session_stream_response(), tuple()} |
    {error, any()} |
    {error, get_streaming_session_stream_errors(), tuple()}.
get_streaming_session_stream(Client, SessionId, StreamId, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_streaming_session_stream(Client, SessionId, StreamId, StudioId, QueryMap, HeadersMap, []).

-spec get_streaming_session_stream(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_streaming_session_stream_response(), tuple()} |
    {error, any()} |
    {error, get_streaming_session_stream_errors(), tuple()}.
get_streaming_session_stream(Client, SessionId, StreamId, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-sessions/", aws_util:encode_uri(SessionId), "/streams/", aws_util:encode_uri(StreamId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a studio resource.
-spec get_studio(aws_client:aws_client(), binary() | list()) ->
    {ok, get_studio_response(), tuple()} |
    {error, any()} |
    {error, get_studio_errors(), tuple()}.
get_studio(Client, StudioId)
  when is_map(Client) ->
    get_studio(Client, StudioId, #{}, #{}).

-spec get_studio(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_studio_response(), tuple()} |
    {error, any()} |
    {error, get_studio_errors(), tuple()}.
get_studio(Client, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_studio(Client, StudioId, QueryMap, HeadersMap, []).

-spec get_studio(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_studio_response(), tuple()} |
    {error, any()} |
    {error, get_studio_errors(), tuple()}.
get_studio(Client, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a studio component resource.
-spec get_studio_component(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_studio_component_response(), tuple()} |
    {error, any()} |
    {error, get_studio_component_errors(), tuple()}.
get_studio_component(Client, StudioComponentId, StudioId)
  when is_map(Client) ->
    get_studio_component(Client, StudioComponentId, StudioId, #{}, #{}).

-spec get_studio_component(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_studio_component_response(), tuple()} |
    {error, any()} |
    {error, get_studio_component_errors(), tuple()}.
get_studio_component(Client, StudioComponentId, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_studio_component(Client, StudioComponentId, StudioId, QueryMap, HeadersMap, []).

-spec get_studio_component(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_studio_component_response(), tuple()} |
    {error, any()} |
    {error, get_studio_component_errors(), tuple()}.
get_studio_component(Client, StudioComponentId, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/studio-components/", aws_util:encode_uri(StudioComponentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a user's membership in a studio.
-spec get_studio_member(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, get_studio_member_response(), tuple()} |
    {error, any()} |
    {error, get_studio_member_errors(), tuple()}.
get_studio_member(Client, PrincipalId, StudioId)
  when is_map(Client) ->
    get_studio_member(Client, PrincipalId, StudioId, #{}, #{}).

-spec get_studio_member(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, get_studio_member_response(), tuple()} |
    {error, any()} |
    {error, get_studio_member_errors(), tuple()}.
get_studio_member(Client, PrincipalId, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_studio_member(Client, PrincipalId, StudioId, QueryMap, HeadersMap, []).

-spec get_studio_member(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_studio_member_response(), tuple()} |
    {error, any()} |
    {error, get_studio_member_errors(), tuple()}.
get_studio_member(Client, PrincipalId, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/membership/", aws_util:encode_uri(PrincipalId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List EULA acceptances.
-spec list_eula_acceptances(aws_client:aws_client(), binary() | list()) ->
    {ok, list_eula_acceptances_response(), tuple()} |
    {error, any()} |
    {error, list_eula_acceptances_errors(), tuple()}.
list_eula_acceptances(Client, StudioId)
  when is_map(Client) ->
    list_eula_acceptances(Client, StudioId, #{}, #{}).

-spec list_eula_acceptances(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_eula_acceptances_response(), tuple()} |
    {error, any()} |
    {error, list_eula_acceptances_errors(), tuple()}.
list_eula_acceptances(Client, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_eula_acceptances(Client, StudioId, QueryMap, HeadersMap, []).

-spec list_eula_acceptances(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_eula_acceptances_response(), tuple()} |
    {error, any()} |
    {error, list_eula_acceptances_errors(), tuple()}.
list_eula_acceptances(Client, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/eula-acceptances"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"eulaIds">>, maps:get(<<"eulaIds">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List EULAs.
-spec list_eulas(aws_client:aws_client()) ->
    {ok, list_eulas_response(), tuple()} |
    {error, any()} |
    {error, list_eulas_errors(), tuple()}.
list_eulas(Client)
  when is_map(Client) ->
    list_eulas(Client, #{}, #{}).

-spec list_eulas(aws_client:aws_client(), map(), map()) ->
    {ok, list_eulas_response(), tuple()} |
    {error, any()} |
    {error, list_eulas_errors(), tuple()}.
list_eulas(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_eulas(Client, QueryMap, HeadersMap, []).

-spec list_eulas(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_eulas_response(), tuple()} |
    {error, any()} |
    {error, list_eulas_errors(), tuple()}.
list_eulas(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/eulas"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"eulaIds">>, maps:get(<<"eulaIds">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get all users in a given launch profile membership.
-spec list_launch_profile_members(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, list_launch_profile_members_response(), tuple()} |
    {error, any()} |
    {error, list_launch_profile_members_errors(), tuple()}.
list_launch_profile_members(Client, LaunchProfileId, StudioId)
  when is_map(Client) ->
    list_launch_profile_members(Client, LaunchProfileId, StudioId, #{}, #{}).

-spec list_launch_profile_members(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, list_launch_profile_members_response(), tuple()} |
    {error, any()} |
    {error, list_launch_profile_members_errors(), tuple()}.
list_launch_profile_members(Client, LaunchProfileId, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_launch_profile_members(Client, LaunchProfileId, StudioId, QueryMap, HeadersMap, []).

-spec list_launch_profile_members(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_launch_profile_members_response(), tuple()} |
    {error, any()} |
    {error, list_launch_profile_members_errors(), tuple()}.
list_launch_profile_members(Client, LaunchProfileId, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles/", aws_util:encode_uri(LaunchProfileId), "/membership"],
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

%% @doc List all the launch profiles a studio.
-spec list_launch_profiles(aws_client:aws_client(), binary() | list()) ->
    {ok, list_launch_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_launch_profiles_errors(), tuple()}.
list_launch_profiles(Client, StudioId)
  when is_map(Client) ->
    list_launch_profiles(Client, StudioId, #{}, #{}).

-spec list_launch_profiles(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_launch_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_launch_profiles_errors(), tuple()}.
list_launch_profiles(Client, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_launch_profiles(Client, StudioId, QueryMap, HeadersMap, []).

-spec list_launch_profiles(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_launch_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_launch_profiles_errors(), tuple()}.
list_launch_profiles(Client, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles"],
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
        {<<"principalId">>, maps:get(<<"principalId">>, QueryMap, undefined)},
        {<<"states">>, maps:get(<<"states">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the streaming image resources available to this studio.
%%
%% This list will contain both images provided by Amazon Web Services, as
%% well as
%% streaming images that you have created in your studio.
-spec list_streaming_images(aws_client:aws_client(), binary() | list()) ->
    {ok, list_streaming_images_response(), tuple()} |
    {error, any()} |
    {error, list_streaming_images_errors(), tuple()}.
list_streaming_images(Client, StudioId)
  when is_map(Client) ->
    list_streaming_images(Client, StudioId, #{}, #{}).

-spec list_streaming_images(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_streaming_images_response(), tuple()} |
    {error, any()} |
    {error, list_streaming_images_errors(), tuple()}.
list_streaming_images(Client, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_streaming_images(Client, StudioId, QueryMap, HeadersMap, []).

-spec list_streaming_images(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_streaming_images_response(), tuple()} |
    {error, any()} |
    {error, list_streaming_images_errors(), tuple()}.
list_streaming_images(Client, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-images"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"owner">>, maps:get(<<"owner">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the backups of a streaming session in a studio.
-spec list_streaming_session_backups(aws_client:aws_client(), binary() | list()) ->
    {ok, list_streaming_session_backups_response(), tuple()} |
    {error, any()} |
    {error, list_streaming_session_backups_errors(), tuple()}.
list_streaming_session_backups(Client, StudioId)
  when is_map(Client) ->
    list_streaming_session_backups(Client, StudioId, #{}, #{}).

-spec list_streaming_session_backups(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_streaming_session_backups_response(), tuple()} |
    {error, any()} |
    {error, list_streaming_session_backups_errors(), tuple()}.
list_streaming_session_backups(Client, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_streaming_session_backups(Client, StudioId, QueryMap, HeadersMap, []).

-spec list_streaming_session_backups(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_streaming_session_backups_response(), tuple()} |
    {error, any()} |
    {error, list_streaming_session_backups_errors(), tuple()}.
list_streaming_session_backups(Client, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-session-backups"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"ownedBy">>, maps:get(<<"ownedBy">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the streaming sessions in a studio.
-spec list_streaming_sessions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_streaming_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_streaming_sessions_errors(), tuple()}.
list_streaming_sessions(Client, StudioId)
  when is_map(Client) ->
    list_streaming_sessions(Client, StudioId, #{}, #{}).

-spec list_streaming_sessions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_streaming_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_streaming_sessions_errors(), tuple()}.
list_streaming_sessions(Client, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_streaming_sessions(Client, StudioId, QueryMap, HeadersMap, []).

-spec list_streaming_sessions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_streaming_sessions_response(), tuple()} |
    {error, any()} |
    {error, list_streaming_sessions_errors(), tuple()}.
list_streaming_sessions(Client, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-sessions"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"createdBy">>, maps:get(<<"createdBy">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"ownedBy">>, maps:get(<<"ownedBy">>, QueryMap, undefined)},
        {<<"sessionIds">>, maps:get(<<"sessionIds">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the `StudioComponents' in a studio.
-spec list_studio_components(aws_client:aws_client(), binary() | list()) ->
    {ok, list_studio_components_response(), tuple()} |
    {error, any()} |
    {error, list_studio_components_errors(), tuple()}.
list_studio_components(Client, StudioId)
  when is_map(Client) ->
    list_studio_components(Client, StudioId, #{}, #{}).

-spec list_studio_components(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_studio_components_response(), tuple()} |
    {error, any()} |
    {error, list_studio_components_errors(), tuple()}.
list_studio_components(Client, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_studio_components(Client, StudioId, QueryMap, HeadersMap, []).

-spec list_studio_components(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_studio_components_response(), tuple()} |
    {error, any()} |
    {error, list_studio_components_errors(), tuple()}.
list_studio_components(Client, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/studio-components"],
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
        {<<"states">>, maps:get(<<"states">>, QueryMap, undefined)},
        {<<"types">>, maps:get(<<"types">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get all users in a given studio membership.
%%
%% `ListStudioMembers' only returns admin members.
-spec list_studio_members(aws_client:aws_client(), binary() | list()) ->
    {ok, list_studio_members_response(), tuple()} |
    {error, any()} |
    {error, list_studio_members_errors(), tuple()}.
list_studio_members(Client, StudioId)
  when is_map(Client) ->
    list_studio_members(Client, StudioId, #{}, #{}).

-spec list_studio_members(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_studio_members_response(), tuple()} |
    {error, any()} |
    {error, list_studio_members_errors(), tuple()}.
list_studio_members(Client, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_studio_members(Client, StudioId, QueryMap, HeadersMap, []).

-spec list_studio_members(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_studio_members_response(), tuple()} |
    {error, any()} |
    {error, list_studio_members_errors(), tuple()}.
list_studio_members(Client, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/membership"],
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

%% @doc List studios in your Amazon Web Services accounts in the requested
%% Amazon Web Services Region.
-spec list_studios(aws_client:aws_client()) ->
    {ok, list_studios_response(), tuple()} |
    {error, any()} |
    {error, list_studios_errors(), tuple()}.
list_studios(Client)
  when is_map(Client) ->
    list_studios(Client, #{}, #{}).

-spec list_studios(aws_client:aws_client(), map(), map()) ->
    {ok, list_studios_response(), tuple()} |
    {error, any()} |
    {error, list_studios_errors(), tuple()}.
list_studios(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_studios(Client, QueryMap, HeadersMap, []).

-spec list_studios(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_studios_response(), tuple()} |
    {error, any()} |
    {error, list_studios_errors(), tuple()}.
list_studios(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the tags for a resource, given its Amazon Resource Names (ARN).
%%
%% This operation supports ARNs for all resource types in Nimble Studio that
%% support
%% tags, including studio, studio component, launch profile, streaming image,
%% and streaming
%% session. All resources that can be tagged will contain an ARN property, so
%% you do not
%% have to create this ARN yourself.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Add/update users with given persona to launch profile membership.
-spec put_launch_profile_members(aws_client:aws_client(), binary() | list(), binary() | list(), put_launch_profile_members_request()) ->
    {ok, put_launch_profile_members_response(), tuple()} |
    {error, any()} |
    {error, put_launch_profile_members_errors(), tuple()}.
put_launch_profile_members(Client, LaunchProfileId, StudioId, Input) ->
    put_launch_profile_members(Client, LaunchProfileId, StudioId, Input, []).

-spec put_launch_profile_members(aws_client:aws_client(), binary() | list(), binary() | list(), put_launch_profile_members_request(), proplists:proplist()) ->
    {ok, put_launch_profile_members_response(), tuple()} |
    {error, any()} |
    {error, put_launch_profile_members_errors(), tuple()}.
put_launch_profile_members(Client, LaunchProfileId, StudioId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles/", aws_util:encode_uri(LaunchProfileId), "/membership"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Add/update users with given persona to studio membership.
-spec put_studio_members(aws_client:aws_client(), binary() | list(), put_studio_members_request()) ->
    {ok, put_studio_members_response(), tuple()} |
    {error, any()} |
    {error, put_studio_members_errors(), tuple()}.
put_studio_members(Client, StudioId, Input) ->
    put_studio_members(Client, StudioId, Input, []).

-spec put_studio_members(aws_client:aws_client(), binary() | list(), put_studio_members_request(), proplists:proplist()) ->
    {ok, put_studio_members_response(), tuple()} |
    {error, any()} |
    {error, put_studio_members_errors(), tuple()}.
put_studio_members(Client, StudioId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/membership"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Transitions sessions from the `STOPPED' state into the
%% `READY'
%% state.
%%
%% The `START_IN_PROGRESS' state is the intermediate state between the
%% `STOPPED' and `READY' states.
-spec start_streaming_session(aws_client:aws_client(), binary() | list(), binary() | list(), start_streaming_session_request()) ->
    {ok, start_streaming_session_response(), tuple()} |
    {error, any()} |
    {error, start_streaming_session_errors(), tuple()}.
start_streaming_session(Client, SessionId, StudioId, Input) ->
    start_streaming_session(Client, SessionId, StudioId, Input, []).

-spec start_streaming_session(aws_client:aws_client(), binary() | list(), binary() | list(), start_streaming_session_request(), proplists:proplist()) ->
    {ok, start_streaming_session_response(), tuple()} |
    {error, any()} |
    {error, start_streaming_session_errors(), tuple()}.
start_streaming_session(Client, SessionId, StudioId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-sessions/", aws_util:encode_uri(SessionId), "/start"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Repairs the IAM Identity Center configuration for a given studio.
%%
%% If the studio has a valid IAM Identity Center configuration currently
%% associated with
%% it, this operation will fail with a validation error.
%%
%% If the studio does not have a valid IAM Identity Center configuration
%% currently
%% associated with it, then a new IAM Identity Center application is created
%% for the studio
%% and the studio is changed to the `READY' state.
%%
%% After the IAM Identity Center application is repaired, you must use the
%% Amazon Nimble Studio console to add administrators and users to your
%% studio.
-spec start_studio_s_s_o_configuration_repair(aws_client:aws_client(), binary() | list(), start_studio_s_s_o_configuration_repair_request()) ->
    {ok, start_studio_s_s_o_configuration_repair_response(), tuple()} |
    {error, any()} |
    {error, start_studio_s_s_o_configuration_repair_errors(), tuple()}.
start_studio_s_s_o_configuration_repair(Client, StudioId, Input) ->
    start_studio_s_s_o_configuration_repair(Client, StudioId, Input, []).

-spec start_studio_s_s_o_configuration_repair(aws_client:aws_client(), binary() | list(), start_studio_s_s_o_configuration_repair_request(), proplists:proplist()) ->
    {ok, start_studio_s_s_o_configuration_repair_response(), tuple()} |
    {error, any()} |
    {error, start_studio_s_s_o_configuration_repair_errors(), tuple()}.
start_studio_s_s_o_configuration_repair(Client, StudioId, Input0, Options0) ->
    Method = put,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/sso-configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Transitions sessions from the `READY' state into the
%% `STOPPED'
%% state.
%%
%% The `STOP_IN_PROGRESS' state is the intermediate state between the
%% `READY' and `STOPPED' states.
-spec stop_streaming_session(aws_client:aws_client(), binary() | list(), binary() | list(), stop_streaming_session_request()) ->
    {ok, stop_streaming_session_response(), tuple()} |
    {error, any()} |
    {error, stop_streaming_session_errors(), tuple()}.
stop_streaming_session(Client, SessionId, StudioId, Input) ->
    stop_streaming_session(Client, SessionId, StudioId, Input, []).

-spec stop_streaming_session(aws_client:aws_client(), binary() | list(), binary() | list(), stop_streaming_session_request(), proplists:proplist()) ->
    {ok, stop_streaming_session_response(), tuple()} |
    {error, any()} |
    {error, stop_streaming_session_errors(), tuple()}.
stop_streaming_session(Client, SessionId, StudioId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-sessions/", aws_util:encode_uri(SessionId), "/stop"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates tags for a resource, given its ARN.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Deletes the tags for a resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-08-01/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Update a launch profile.
-spec update_launch_profile(aws_client:aws_client(), binary() | list(), binary() | list(), update_launch_profile_request()) ->
    {ok, update_launch_profile_response(), tuple()} |
    {error, any()} |
    {error, update_launch_profile_errors(), tuple()}.
update_launch_profile(Client, LaunchProfileId, StudioId, Input) ->
    update_launch_profile(Client, LaunchProfileId, StudioId, Input, []).

-spec update_launch_profile(aws_client:aws_client(), binary() | list(), binary() | list(), update_launch_profile_request(), proplists:proplist()) ->
    {ok, update_launch_profile_response(), tuple()} |
    {error, any()} |
    {error, update_launch_profile_errors(), tuple()}.
update_launch_profile(Client, LaunchProfileId, StudioId, Input0, Options0) ->
    Method = patch,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles/", aws_util:encode_uri(LaunchProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update a user persona in launch profile membership.
-spec update_launch_profile_member(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_launch_profile_member_request()) ->
    {ok, update_launch_profile_member_response(), tuple()} |
    {error, any()} |
    {error, update_launch_profile_member_errors(), tuple()}.
update_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId, Input) ->
    update_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId, Input, []).

-spec update_launch_profile_member(aws_client:aws_client(), binary() | list(), binary() | list(), binary() | list(), update_launch_profile_member_request(), proplists:proplist()) ->
    {ok, update_launch_profile_member_response(), tuple()} |
    {error, any()} |
    {error, update_launch_profile_member_errors(), tuple()}.
update_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId, Input0, Options0) ->
    Method = patch,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles/", aws_util:encode_uri(LaunchProfileId), "/membership/", aws_util:encode_uri(PrincipalId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update streaming image.
-spec update_streaming_image(aws_client:aws_client(), binary() | list(), binary() | list(), update_streaming_image_request()) ->
    {ok, update_streaming_image_response(), tuple()} |
    {error, any()} |
    {error, update_streaming_image_errors(), tuple()}.
update_streaming_image(Client, StreamingImageId, StudioId, Input) ->
    update_streaming_image(Client, StreamingImageId, StudioId, Input, []).

-spec update_streaming_image(aws_client:aws_client(), binary() | list(), binary() | list(), update_streaming_image_request(), proplists:proplist()) ->
    {ok, update_streaming_image_response(), tuple()} |
    {error, any()} |
    {error, update_streaming_image_errors(), tuple()}.
update_streaming_image(Client, StreamingImageId, StudioId, Input0, Options0) ->
    Method = patch,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-images/", aws_util:encode_uri(StreamingImageId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update a Studio resource.
%%
%% Currently, this operation only supports updating the displayName of your
%% studio.
-spec update_studio(aws_client:aws_client(), binary() | list(), update_studio_request()) ->
    {ok, update_studio_response(), tuple()} |
    {error, any()} |
    {error, update_studio_errors(), tuple()}.
update_studio(Client, StudioId, Input) ->
    update_studio(Client, StudioId, Input, []).

-spec update_studio(aws_client:aws_client(), binary() | list(), update_studio_request(), proplists:proplist()) ->
    {ok, update_studio_response(), tuple()} |
    {error, any()} |
    {error, update_studio_errors(), tuple()}.
update_studio(Client, StudioId, Input0, Options0) ->
    Method = patch,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a studio component resource.
-spec update_studio_component(aws_client:aws_client(), binary() | list(), binary() | list(), update_studio_component_request()) ->
    {ok, update_studio_component_response(), tuple()} |
    {error, any()} |
    {error, update_studio_component_errors(), tuple()}.
update_studio_component(Client, StudioComponentId, StudioId, Input) ->
    update_studio_component(Client, StudioComponentId, StudioId, Input, []).

-spec update_studio_component(aws_client:aws_client(), binary() | list(), binary() | list(), update_studio_component_request(), proplists:proplist()) ->
    {ok, update_studio_component_response(), tuple()} |
    {error, any()} |
    {error, update_studio_component_errors(), tuple()}.
update_studio_component(Client, StudioComponentId, StudioId, Input0, Options0) ->
    Method = patch,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/studio-components/", aws_util:encode_uri(StudioComponentId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

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
    Client1 = Client#{service => <<"nimble">>},
    Host = build_host(<<"nimble">>, Client1),
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
