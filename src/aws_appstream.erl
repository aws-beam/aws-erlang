%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon AppStream 2.0
%%
%% This is the Amazon AppStream 2.0 API Reference.
%%
%% This documentation provides descriptions and syntax for each of the
%% actions and data types in AppStream 2.0. AppStream 2.0 is a fully managed,
%% secure application streaming service that lets you stream desktop
%% applications to users without rewriting applications. AppStream 2.0
%% manages the AWS resources that are required to host and run your
%% applications, scales automatically, and provides access to your users on
%% demand.
%%
%% You can call the AppStream 2.0 API operations by using an interface VPC
%% endpoint (interface endpoint). For more information, see Access AppStream
%% 2.0 API Operations and CLI Commands Through an Interface VPC Endpoint:
%% https://docs.aws.amazon.com/appstream2/latest/developerguide/access-api-cli-through-interface-vpc-endpoint.html
%% in the Amazon AppStream 2.0 Administration Guide.
%%
%% To learn more about AppStream 2.0, see the following resources:
%%
%% Amazon AppStream 2.0 product page: http://aws.amazon.com/appstream2
%%
%% Amazon AppStream 2.0 documentation:
%% http://aws.amazon.com/documentation/appstream2
-module(aws_appstream).

-export([associate_app_block_builder_app_block/2,
         associate_app_block_builder_app_block/3,
         associate_application_fleet/2,
         associate_application_fleet/3,
         associate_application_to_entitlement/2,
         associate_application_to_entitlement/3,
         associate_fleet/2,
         associate_fleet/3,
         associate_software_to_image_builder/2,
         associate_software_to_image_builder/3,
         batch_associate_user_stack/2,
         batch_associate_user_stack/3,
         batch_disassociate_user_stack/2,
         batch_disassociate_user_stack/3,
         copy_image/2,
         copy_image/3,
         create_app_block/2,
         create_app_block/3,
         create_app_block_builder/2,
         create_app_block_builder/3,
         create_app_block_builder_streaming_url/2,
         create_app_block_builder_streaming_url/3,
         create_application/2,
         create_application/3,
         create_directory_config/2,
         create_directory_config/3,
         create_entitlement/2,
         create_entitlement/3,
         create_fleet/2,
         create_fleet/3,
         create_image_builder/2,
         create_image_builder/3,
         create_image_builder_streaming_url/2,
         create_image_builder_streaming_url/3,
         create_stack/2,
         create_stack/3,
         create_streaming_url/2,
         create_streaming_url/3,
         create_theme_for_stack/2,
         create_theme_for_stack/3,
         create_updated_image/2,
         create_updated_image/3,
         create_usage_report_subscription/2,
         create_usage_report_subscription/3,
         create_user/2,
         create_user/3,
         delete_app_block/2,
         delete_app_block/3,
         delete_app_block_builder/2,
         delete_app_block_builder/3,
         delete_application/2,
         delete_application/3,
         delete_directory_config/2,
         delete_directory_config/3,
         delete_entitlement/2,
         delete_entitlement/3,
         delete_fleet/2,
         delete_fleet/3,
         delete_image/2,
         delete_image/3,
         delete_image_builder/2,
         delete_image_builder/3,
         delete_image_permissions/2,
         delete_image_permissions/3,
         delete_stack/2,
         delete_stack/3,
         delete_theme_for_stack/2,
         delete_theme_for_stack/3,
         delete_usage_report_subscription/2,
         delete_usage_report_subscription/3,
         delete_user/2,
         delete_user/3,
         describe_app_block_builder_app_block_associations/2,
         describe_app_block_builder_app_block_associations/3,
         describe_app_block_builders/2,
         describe_app_block_builders/3,
         describe_app_blocks/2,
         describe_app_blocks/3,
         describe_app_license_usage/2,
         describe_app_license_usage/3,
         describe_application_fleet_associations/2,
         describe_application_fleet_associations/3,
         describe_applications/2,
         describe_applications/3,
         describe_directory_configs/2,
         describe_directory_configs/3,
         describe_entitlements/2,
         describe_entitlements/3,
         describe_fleets/2,
         describe_fleets/3,
         describe_image_builders/2,
         describe_image_builders/3,
         describe_image_permissions/2,
         describe_image_permissions/3,
         describe_images/2,
         describe_images/3,
         describe_sessions/2,
         describe_sessions/3,
         describe_software_associations/2,
         describe_software_associations/3,
         describe_stacks/2,
         describe_stacks/3,
         describe_theme_for_stack/2,
         describe_theme_for_stack/3,
         describe_usage_report_subscriptions/2,
         describe_usage_report_subscriptions/3,
         describe_user_stack_associations/2,
         describe_user_stack_associations/3,
         describe_users/2,
         describe_users/3,
         disable_user/2,
         disable_user/3,
         disassociate_app_block_builder_app_block/2,
         disassociate_app_block_builder_app_block/3,
         disassociate_application_fleet/2,
         disassociate_application_fleet/3,
         disassociate_application_from_entitlement/2,
         disassociate_application_from_entitlement/3,
         disassociate_fleet/2,
         disassociate_fleet/3,
         disassociate_software_from_image_builder/2,
         disassociate_software_from_image_builder/3,
         enable_user/2,
         enable_user/3,
         expire_session/2,
         expire_session/3,
         list_associated_fleets/2,
         list_associated_fleets/3,
         list_associated_stacks/2,
         list_associated_stacks/3,
         list_entitled_applications/2,
         list_entitled_applications/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         start_app_block_builder/2,
         start_app_block_builder/3,
         start_fleet/2,
         start_fleet/3,
         start_image_builder/2,
         start_image_builder/3,
         start_software_deployment_to_image_builder/2,
         start_software_deployment_to_image_builder/3,
         stop_app_block_builder/2,
         stop_app_block_builder/3,
         stop_fleet/2,
         stop_fleet/3,
         stop_image_builder/2,
         stop_image_builder/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_app_block_builder/2,
         update_app_block_builder/3,
         update_application/2,
         update_application/3,
         update_directory_config/2,
         update_directory_config/3,
         update_entitlement/2,
         update_entitlement/3,
         update_fleet/2,
         update_fleet/3,
         update_image_permissions/2,
         update_image_permissions/3,
         update_stack/2,
         update_stack/3,
         update_theme_for_stack/2,
         update_theme_for_stack/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% theme() :: #{
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"StackName">> => string(),
%%   <<"State">> => list(any()),
%%   <<"ThemeFaviconURL">> => string(),
%%   <<"ThemeFooterLinks">> => list(theme_footer_link()),
%%   <<"ThemeOrganizationLogoURL">> => string(),
%%   <<"ThemeStyling">> => list(any()),
%%   <<"ThemeTitleText">> => string()
%% }
-type theme() :: #{binary() => any()}.

%% Example:
%% describe_app_block_builders_result() :: #{
%%   <<"AppBlockBuilders">> => list(app_block_builder()),
%%   <<"NextToken">> => string()
%% }
-type describe_app_block_builders_result() :: #{binary() => any()}.

%% Example:
%% describe_usage_report_subscriptions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_usage_report_subscriptions_request() :: #{binary() => any()}.

%% Example:
%% image_builder() :: #{
%%   <<"AccessEndpoints">> => list(access_endpoint()),
%%   <<"AppstreamAgentVersion">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"DomainJoinInfo">> => domain_join_info(),
%%   <<"EnableDefaultInternetAccess">> => boolean(),
%%   <<"IamRoleArn">> => string(),
%%   <<"ImageArn">> => string(),
%%   <<"ImageBuilderErrors">> => list(resource_error()),
%%   <<"InstanceType">> => string(),
%%   <<"LatestAppstreamAgentVersion">> => list(any()),
%%   <<"Name">> => string(),
%%   <<"NetworkAccessConfiguration">> => network_access_configuration(),
%%   <<"Platform">> => list(any()),
%%   <<"State">> => list(any()),
%%   <<"StateChangeReason">> => image_builder_state_change_reason(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type image_builder() :: #{binary() => any()}.

%% Example:
%% describe_app_license_usage_request() :: #{
%%   <<"BillingPeriod">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_app_license_usage_request() :: #{binary() => any()}.

%% Example:
%% start_image_builder_result() :: #{
%%   <<"ImageBuilder">> => image_builder()
%% }
-type start_image_builder_result() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_image_result() :: #{
%%   <<"Image">> => image()
%% }
-type delete_image_result() :: #{binary() => any()}.

%% Example:
%% delete_fleet_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_fleet_request() :: #{binary() => any()}.

%% Example:
%% batch_disassociate_user_stack_request() :: #{
%%   <<"UserStackAssociations">> := list(user_stack_association())
%% }
-type batch_disassociate_user_stack_request() :: #{binary() => any()}.

%% Example:
%% user_stack_association() :: #{
%%   <<"AuthenticationType">> => list(any()),
%%   <<"SendEmailNotification">> => boolean(),
%%   <<"StackName">> => string(),
%%   <<"UserName">> => string()
%% }
-type user_stack_association() :: #{binary() => any()}.

%% Example:
%% disable_user_result() :: #{

%% }
-type disable_user_result() :: #{binary() => any()}.

%% Example:
%% create_application_result() :: #{
%%   <<"Application">> => application()
%% }
-type create_application_result() :: #{binary() => any()}.

%% Example:
%% disassociate_app_block_builder_app_block_result() :: #{

%% }
-type disassociate_app_block_builder_app_block_result() :: #{binary() => any()}.

%% Example:
%% create_entitlement_result() :: #{
%%   <<"Entitlement">> => entitlement()
%% }
-type create_entitlement_result() :: #{binary() => any()}.

%% Example:
%% stop_app_block_builder_result() :: #{
%%   <<"AppBlockBuilder">> => app_block_builder()
%% }
-type stop_app_block_builder_result() :: #{binary() => any()}.

%% Example:
%% create_streaming_url_result() :: #{
%%   <<"Expires">> => non_neg_integer(),
%%   <<"StreamingURL">> => string()
%% }
-type create_streaming_url_result() :: #{binary() => any()}.

%% Example:
%% describe_app_blocks_result() :: #{
%%   <<"AppBlocks">> => list(app_block()),
%%   <<"NextToken">> => string()
%% }
-type describe_app_blocks_result() :: #{binary() => any()}.

%% Example:
%% disassociate_software_from_image_builder_result() :: #{

%% }
-type disassociate_software_from_image_builder_result() :: #{binary() => any()}.

%% Example:
%% create_app_block_builder_request() :: #{
%%   <<"AccessEndpoints">> => list(access_endpoint()),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"EnableDefaultInternetAccess">> => boolean(),
%%   <<"IamRoleArn">> => string(),
%%   <<"InstanceType">> := string(),
%%   <<"Name">> := string(),
%%   <<"Platform">> := list(any()),
%%   <<"Tags">> => map(),
%%   <<"VpcConfig">> := vpc_config()
%% }
-type create_app_block_builder_request() :: #{binary() => any()}.

%% Example:
%% stop_fleet_result() :: #{

%% }
-type stop_fleet_result() :: #{binary() => any()}.

%% Example:
%% describe_app_license_usage_result() :: #{
%%   <<"AppLicenseUsages">> => list(admin_app_license_usage_record()),
%%   <<"NextToken">> => string()
%% }
-type describe_app_license_usage_result() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% update_directory_config_request() :: #{
%%   <<"CertificateBasedAuthProperties">> => certificate_based_auth_properties(),
%%   <<"DirectoryName">> := string(),
%%   <<"OrganizationalUnitDistinguishedNames">> => list(string()),
%%   <<"ServiceAccountCredentials">> => service_account_credentials()
%% }
-type update_directory_config_request() :: #{binary() => any()}.

%% Example:
%% create_stack_request() :: #{
%%   <<"AccessEndpoints">> => list(access_endpoint()),
%%   <<"ApplicationSettings">> => application_settings(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"EmbedHostDomains">> => list(string()),
%%   <<"FeedbackURL">> => string(),
%%   <<"Name">> := string(),
%%   <<"RedirectURL">> => string(),
%%   <<"StorageConnectors">> => list(storage_connector()),
%%   <<"StreamingExperienceSettings">> => streaming_experience_settings(),
%%   <<"Tags">> => map(),
%%   <<"UserSettings">> => list(user_setting())
%% }
-type create_stack_request() :: #{binary() => any()}.

%% Example:
%% update_stack_request() :: #{
%%   <<"AccessEndpoints">> => list(access_endpoint()),
%%   <<"ApplicationSettings">> => application_settings(),
%%   <<"AttributesToDelete">> => list(list(any())()),
%%   <<"DeleteStorageConnectors">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"EmbedHostDomains">> => list(string()),
%%   <<"FeedbackURL">> => string(),
%%   <<"Name">> := string(),
%%   <<"RedirectURL">> => string(),
%%   <<"StorageConnectors">> => list(storage_connector()),
%%   <<"StreamingExperienceSettings">> => streaming_experience_settings(),
%%   <<"UserSettings">> => list(user_setting())
%% }
-type update_stack_request() :: #{binary() => any()}.

%% Example:
%% app_block_builder() :: #{
%%   <<"AccessEndpoints">> => list(access_endpoint()),
%%   <<"AppBlockBuilderErrors">> => list(resource_error()),
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"EnableDefaultInternetAccess">> => boolean(),
%%   <<"IamRoleArn">> => string(),
%%   <<"InstanceType">> => string(),
%%   <<"Name">> => string(),
%%   <<"Platform">> => list(any()),
%%   <<"State">> => list(any()),
%%   <<"StateChangeReason">> => app_block_builder_state_change_reason(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type app_block_builder() :: #{binary() => any()}.

%% Example:
%% describe_theme_for_stack_request() :: #{
%%   <<"StackName">> := string()
%% }
-type describe_theme_for_stack_request() :: #{binary() => any()}.

%% Example:
%% resource_in_use_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_in_use_exception() :: #{binary() => any()}.

%% Example:
%% describe_images_result() :: #{
%%   <<"Images">> => list(image()),
%%   <<"NextToken">> => string()
%% }
-type describe_images_result() :: #{binary() => any()}.

%% Example:
%% create_fleet_request() :: #{
%%   <<"ComputeCapacity">> => compute_capacity(),
%%   <<"Description">> => string(),
%%   <<"DisconnectTimeoutInSeconds">> => integer(),
%%   <<"DisplayName">> => string(),
%%   <<"DomainJoinInfo">> => domain_join_info(),
%%   <<"EnableDefaultInternetAccess">> => boolean(),
%%   <<"FleetType">> => list(any()),
%%   <<"IamRoleArn">> => string(),
%%   <<"IdleDisconnectTimeoutInSeconds">> => integer(),
%%   <<"ImageArn">> => string(),
%%   <<"ImageName">> => string(),
%%   <<"InstanceType">> := string(),
%%   <<"MaxConcurrentSessions">> => integer(),
%%   <<"MaxSessionsPerInstance">> => integer(),
%%   <<"MaxUserDurationInSeconds">> => integer(),
%%   <<"Name">> := string(),
%%   <<"Platform">> => list(any()),
%%   <<"SessionScriptS3Location">> => s3_location(),
%%   <<"StreamView">> => list(any()),
%%   <<"Tags">> => map(),
%%   <<"UsbDeviceFilterStrings">> => list(string()),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type create_fleet_request() :: #{binary() => any()}.

%% Example:
%% list_associated_stacks_request() :: #{
%%   <<"FleetName">> := string(),
%%   <<"NextToken">> => string()
%% }
-type list_associated_stacks_request() :: #{binary() => any()}.

%% Example:
%% describe_image_builders_result() :: #{
%%   <<"ImageBuilders">> => list(image_builder()),
%%   <<"NextToken">> => string()
%% }
-type describe_image_builders_result() :: #{binary() => any()}.

%% Example:
%% delete_theme_for_stack_result() :: #{

%% }
-type delete_theme_for_stack_result() :: #{binary() => any()}.

%% Example:
%% delete_usage_report_subscription_request() :: #{

%% }
-type delete_usage_report_subscription_request() :: #{binary() => any()}.

%% Example:
%% describe_images_request() :: #{
%%   <<"Arns">> => list(string()),
%%   <<"MaxResults">> => integer(),
%%   <<"Names">> => list(string()),
%%   <<"NextToken">> => string(),
%%   <<"Type">> => list(any())
%% }
-type describe_images_request() :: #{binary() => any()}.

%% Example:
%% copy_image_request() :: #{
%%   <<"DestinationImageDescription">> => string(),
%%   <<"DestinationImageName">> := string(),
%%   <<"DestinationRegion">> := string(),
%%   <<"SourceImageName">> := string()
%% }
-type copy_image_request() :: #{binary() => any()}.

%% Example:
%% create_app_block_request() :: #{
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"Name">> := string(),
%%   <<"PackagingType">> => list(any()),
%%   <<"PostSetupScriptDetails">> => script_details(),
%%   <<"SetupScriptDetails">> => script_details(),
%%   <<"SourceS3Location">> := s3_location(),
%%   <<"Tags">> => map()
%% }
-type create_app_block_request() :: #{binary() => any()}.

%% Example:
%% network_access_configuration() :: #{
%%   <<"EniId">> => string(),
%%   <<"EniPrivateIpAddress">> => string()
%% }
-type network_access_configuration() :: #{binary() => any()}.

%% Example:
%% disassociate_application_from_entitlement_result() :: #{

%% }
-type disassociate_application_from_entitlement_result() :: #{binary() => any()}.

%% Example:
%% image_permissions() :: #{
%%   <<"allowFleet">> => boolean(),
%%   <<"allowImageBuilder">> => boolean()
%% }
-type image_permissions() :: #{binary() => any()}.

%% Example:
%% application_fleet_association() :: #{
%%   <<"ApplicationArn">> => string(),
%%   <<"FleetName">> => string()
%% }
-type application_fleet_association() :: #{binary() => any()}.

%% Example:
%% image_state_change_reason() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type image_state_change_reason() :: #{binary() => any()}.

%% Example:
%% associate_app_block_builder_app_block_result() :: #{
%%   <<"AppBlockBuilderAppBlockAssociation">> => app_block_builder_app_block_association()
%% }
-type associate_app_block_builder_app_block_result() :: #{binary() => any()}.

%% Example:
%% update_app_block_builder_request() :: #{
%%   <<"AccessEndpoints">> => list(access_endpoint()),
%%   <<"AttributesToDelete">> => list(list(any())()),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"EnableDefaultInternetAccess">> => boolean(),
%%   <<"IamRoleArn">> => string(),
%%   <<"InstanceType">> => string(),
%%   <<"Name">> := string(),
%%   <<"Platform">> => list(any()),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type update_app_block_builder_request() :: #{binary() => any()}.

%% Example:
%% describe_theme_for_stack_result() :: #{
%%   <<"Theme">> => theme()
%% }
-type describe_theme_for_stack_result() :: #{binary() => any()}.

%% Example:
%% delete_image_permissions_request() :: #{
%%   <<"Name">> := string(),
%%   <<"SharedAccountId">> := string()
%% }
-type delete_image_permissions_request() :: #{binary() => any()}.

%% Example:
%% create_image_builder_result() :: #{
%%   <<"ImageBuilder">> => image_builder()
%% }
-type create_image_builder_result() :: #{binary() => any()}.

%% Example:
%% associate_application_fleet_result() :: #{
%%   <<"ApplicationFleetAssociation">> => application_fleet_association()
%% }
-type associate_application_fleet_result() :: #{binary() => any()}.

%% Example:
%% create_stack_result() :: #{
%%   <<"Stack">> => stack()
%% }
-type create_stack_result() :: #{binary() => any()}.

%% Example:
%% create_app_block_builder_streaming_url_request() :: #{
%%   <<"AppBlockBuilderName">> := string(),
%%   <<"Validity">> => float()
%% }
-type create_app_block_builder_streaming_url_request() :: #{binary() => any()}.

%% Example:
%% describe_image_builders_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"Names">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type describe_image_builders_request() :: #{binary() => any()}.

%% Example:
%% expire_session_request() :: #{
%%   <<"SessionId">> := string()
%% }
-type expire_session_request() :: #{binary() => any()}.

%% Example:
%% describe_application_fleet_associations_request() :: #{
%%   <<"ApplicationArn">> => string(),
%%   <<"FleetName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_application_fleet_associations_request() :: #{binary() => any()}.

%% Example:
%% describe_users_request() :: #{
%%   <<"AuthenticationType">> := list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_users_request() :: #{binary() => any()}.

%% Example:
%% describe_image_permissions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"Name">> := string(),
%%   <<"NextToken">> => string(),
%%   <<"SharedAwsAccountIds">> => list(string())
%% }
-type describe_image_permissions_request() :: #{binary() => any()}.

%% Example:
%% create_updated_image_result() :: #{
%%   <<"canUpdateImage">> => boolean(),
%%   <<"image">> => image()
%% }
-type create_updated_image_result() :: #{binary() => any()}.

%% Example:
%% request_limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type request_limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% resource_not_available_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_available_exception() :: #{binary() => any()}.

%% Example:
%% app_block_builder_state_change_reason() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type app_block_builder_state_change_reason() :: #{binary() => any()}.

%% Example:
%% update_directory_config_result() :: #{
%%   <<"DirectoryConfig">> => directory_config()
%% }
-type update_directory_config_result() :: #{binary() => any()}.

%% Example:
%% create_app_block_result() :: #{
%%   <<"AppBlock">> => app_block()
%% }
-type create_app_block_result() :: #{binary() => any()}.

%% Example:
%% describe_app_blocks_request() :: #{
%%   <<"Arns">> => list(string()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_app_blocks_request() :: #{binary() => any()}.

%% Example:
%% disassociate_application_fleet_result() :: #{

%% }
-type disassociate_application_fleet_result() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_app_block_builder_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_app_block_builder_request() :: #{binary() => any()}.

%% Example:
%% disassociate_fleet_result() :: #{

%% }
-type disassociate_fleet_result() :: #{binary() => any()}.

%% Example:
%% delete_usage_report_subscription_result() :: #{

%% }
-type delete_usage_report_subscription_result() :: #{binary() => any()}.

%% Example:
%% access_endpoint() :: #{
%%   <<"EndpointType">> => list(any()),
%%   <<"VpceId">> => string()
%% }
-type access_endpoint() :: #{binary() => any()}.

%% Example:
%% create_user_result() :: #{

%% }
-type create_user_result() :: #{binary() => any()}.

%% Example:
%% delete_app_block_builder_result() :: #{

%% }
-type delete_app_block_builder_result() :: #{binary() => any()}.

%% Example:
%% delete_entitlement_result() :: #{

%% }
-type delete_entitlement_result() :: #{binary() => any()}.

%% Example:
%% associate_application_to_entitlement_request() :: #{
%%   <<"ApplicationIdentifier">> := string(),
%%   <<"EntitlementName">> := string(),
%%   <<"StackName">> := string()
%% }
-type associate_application_to_entitlement_request() :: #{binary() => any()}.

%% Example:
%% invalid_parameter_combination_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_parameter_combination_exception() :: #{binary() => any()}.

%% Example:
%% create_app_block_builder_streaming_url_result() :: #{
%%   <<"Expires">> => non_neg_integer(),
%%   <<"StreamingURL">> => string()
%% }
-type create_app_block_builder_streaming_url_result() :: #{binary() => any()}.

%% Example:
%% stop_fleet_request() :: #{
%%   <<"Name">> := string()
%% }
-type stop_fleet_request() :: #{binary() => any()}.

%% Example:
%% update_fleet_result() :: #{
%%   <<"Fleet">> => fleet()
%% }
-type update_fleet_result() :: #{binary() => any()}.

%% Example:
%% delete_stack_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_stack_request() :: #{binary() => any()}.

%% Example:
%% stack() :: #{
%%   <<"AccessEndpoints">> => list(access_endpoint()),
%%   <<"ApplicationSettings">> => application_settings_response(),
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"EmbedHostDomains">> => list(string()),
%%   <<"FeedbackURL">> => string(),
%%   <<"Name">> => string(),
%%   <<"RedirectURL">> => string(),
%%   <<"StackErrors">> => list(stack_error()),
%%   <<"StorageConnectors">> => list(storage_connector()),
%%   <<"StreamingExperienceSettings">> => streaming_experience_settings(),
%%   <<"UserSettings">> => list(user_setting())
%% }
-type stack() :: #{binary() => any()}.

%% Example:
%% enable_user_result() :: #{

%% }
-type enable_user_result() :: #{binary() => any()}.

%% Example:
%% delete_app_block_result() :: #{

%% }
-type delete_app_block_result() :: #{binary() => any()}.

%% Example:
%% create_usage_report_subscription_request() :: #{

%% }
-type create_usage_report_subscription_request() :: #{binary() => any()}.

%% Example:
%% software_associations() :: #{
%%   <<"DeploymentError">> => list(error_details()),
%%   <<"SoftwareName">> => string(),
%%   <<"Status">> => list(any())
%% }
-type software_associations() :: #{binary() => any()}.

%% Example:
%% stop_image_builder_request() :: #{
%%   <<"Name">> := string()
%% }
-type stop_image_builder_request() :: #{binary() => any()}.

%% Example:
%% compute_capacity_status() :: #{
%%   <<"ActiveUserSessions">> => integer(),
%%   <<"ActualUserSessions">> => integer(),
%%   <<"Available">> => integer(),
%%   <<"AvailableUserSessions">> => integer(),
%%   <<"Desired">> => integer(),
%%   <<"DesiredUserSessions">> => integer(),
%%   <<"InUse">> => integer(),
%%   <<"Running">> => integer()
%% }
-type compute_capacity_status() :: #{binary() => any()}.

%% Example:
%% describe_directory_configs_result() :: #{
%%   <<"DirectoryConfigs">> => list(directory_config()),
%%   <<"NextToken">> => string()
%% }
-type describe_directory_configs_result() :: #{binary() => any()}.

%% Example:
%% disassociate_application_from_entitlement_request() :: #{
%%   <<"ApplicationIdentifier">> := string(),
%%   <<"EntitlementName">> := string(),
%%   <<"StackName">> := string()
%% }
-type disassociate_application_from_entitlement_request() :: #{binary() => any()}.

%% Example:
%% associate_application_fleet_request() :: #{
%%   <<"ApplicationArn">> := string(),
%%   <<"FleetName">> := string()
%% }
-type associate_application_fleet_request() :: #{binary() => any()}.

%% Example:
%% associate_software_to_image_builder_request() :: #{
%%   <<"ImageBuilderName">> := string(),
%%   <<"SoftwareNames">> := list(string())
%% }
-type associate_software_to_image_builder_request() :: #{binary() => any()}.

%% Example:
%% disassociate_software_from_image_builder_request() :: #{
%%   <<"ImageBuilderName">> := string(),
%%   <<"SoftwareNames">> := list(string())
%% }
-type disassociate_software_from_image_builder_request() :: #{binary() => any()}.

%% Example:
%% certificate_based_auth_properties() :: #{
%%   <<"CertificateAuthorityArn">> => string(),
%%   <<"Status">> => list(any())
%% }
-type certificate_based_auth_properties() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% compute_capacity() :: #{
%%   <<"DesiredInstances">> => integer(),
%%   <<"DesiredSessions">> => integer()
%% }
-type compute_capacity() :: #{binary() => any()}.

%% Example:
%% update_theme_for_stack_request() :: #{
%%   <<"AttributesToDelete">> => list(list(any())()),
%%   <<"FaviconS3Location">> => s3_location(),
%%   <<"FooterLinks">> => list(theme_footer_link()),
%%   <<"OrganizationLogoS3Location">> => s3_location(),
%%   <<"StackName">> := string(),
%%   <<"State">> => list(any()),
%%   <<"ThemeStyling">> => list(any()),
%%   <<"TitleText">> => string()
%% }
-type update_theme_for_stack_request() :: #{binary() => any()}.

%% Example:
%% fleet_error() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string()
%% }
-type fleet_error() :: #{binary() => any()}.

%% Example:
%% create_updated_image_request() :: #{
%%   <<"dryRun">> => boolean(),
%%   <<"existingImageName">> := string(),
%%   <<"newImageDescription">> => string(),
%%   <<"newImageDisplayName">> => string(),
%%   <<"newImageName">> := string(),
%%   <<"newImageTags">> => map()
%% }
-type create_updated_image_request() :: #{binary() => any()}.

%% Example:
%% associate_application_to_entitlement_result() :: #{

%% }
-type associate_application_to_entitlement_result() :: #{binary() => any()}.

%% Example:
%% describe_stacks_request() :: #{
%%   <<"Names">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type describe_stacks_request() :: #{binary() => any()}.

%% Example:
%% app_block() :: #{
%%   <<"AppBlockErrors">> => list(error_details()),
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"Name">> => string(),
%%   <<"PackagingType">> => list(any()),
%%   <<"PostSetupScriptDetails">> => script_details(),
%%   <<"SetupScriptDetails">> => script_details(),
%%   <<"SourceS3Location">> => s3_location(),
%%   <<"State">> => list(any())
%% }
-type app_block() :: #{binary() => any()}.

%% Example:
%% update_fleet_request() :: #{
%%   <<"AttributesToDelete">> => list(list(any())()),
%%   <<"ComputeCapacity">> => compute_capacity(),
%%   <<"DeleteVpcConfig">> => boolean(),
%%   <<"Description">> => string(),
%%   <<"DisconnectTimeoutInSeconds">> => integer(),
%%   <<"DisplayName">> => string(),
%%   <<"DomainJoinInfo">> => domain_join_info(),
%%   <<"EnableDefaultInternetAccess">> => boolean(),
%%   <<"IamRoleArn">> => string(),
%%   <<"IdleDisconnectTimeoutInSeconds">> => integer(),
%%   <<"ImageArn">> => string(),
%%   <<"ImageName">> => string(),
%%   <<"InstanceType">> => string(),
%%   <<"MaxConcurrentSessions">> => integer(),
%%   <<"MaxSessionsPerInstance">> => integer(),
%%   <<"MaxUserDurationInSeconds">> => integer(),
%%   <<"Name">> => string(),
%%   <<"Platform">> => list(any()),
%%   <<"SessionScriptS3Location">> => s3_location(),
%%   <<"StreamView">> => list(any()),
%%   <<"UsbDeviceFilterStrings">> => list(string()),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type update_fleet_request() :: #{binary() => any()}.

%% Example:
%% usage_report_subscription() :: #{
%%   <<"LastGeneratedReportDate">> => non_neg_integer(),
%%   <<"S3BucketName">> => string(),
%%   <<"Schedule">> => list(any()),
%%   <<"SubscriptionErrors">> => list(last_report_generation_execution_error())
%% }
-type usage_report_subscription() :: #{binary() => any()}.

%% Example:
%% update_entitlement_result() :: #{
%%   <<"Entitlement">> => entitlement()
%% }
-type update_entitlement_result() :: #{binary() => any()}.

%% Example:
%% describe_app_block_builder_app_block_associations_request() :: #{
%%   <<"AppBlockArn">> => string(),
%%   <<"AppBlockBuilderName">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_app_block_builder_app_block_associations_request() :: #{binary() => any()}.

%% Example:
%% create_image_builder_request() :: #{
%%   <<"AccessEndpoints">> => list(access_endpoint()),
%%   <<"AppstreamAgentVersion">> => string(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"DomainJoinInfo">> => domain_join_info(),
%%   <<"EnableDefaultInternetAccess">> => boolean(),
%%   <<"IamRoleArn">> => string(),
%%   <<"ImageArn">> => string(),
%%   <<"ImageName">> => string(),
%%   <<"InstanceType">> := string(),
%%   <<"Name">> := string(),
%%   <<"SoftwaresToInstall">> => list(string()),
%%   <<"SoftwaresToUninstall">> => list(string()),
%%   <<"Tags">> => map(),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type create_image_builder_request() :: #{binary() => any()}.

%% Example:
%% application() :: #{
%%   <<"AppBlockArn">> => string(),
%%   <<"Arn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"Enabled">> => boolean(),
%%   <<"IconS3Location">> => s3_location(),
%%   <<"IconURL">> => string(),
%%   <<"InstanceFamilies">> => list(string()),
%%   <<"LaunchParameters">> => string(),
%%   <<"LaunchPath">> => string(),
%%   <<"Metadata">> => map(),
%%   <<"Name">> => string(),
%%   <<"Platforms">> => list(list(any())()),
%%   <<"WorkingDirectory">> => string()
%% }
-type application() :: #{binary() => any()}.

%% Example:
%% user_setting() :: #{
%%   <<"Action">> => list(any()),
%%   <<"MaximumLength">> => integer(),
%%   <<"Permission">> => list(any())
%% }
-type user_setting() :: #{binary() => any()}.

%% Example:
%% disassociate_application_fleet_request() :: #{
%%   <<"ApplicationArn">> := string(),
%%   <<"FleetName">> := string()
%% }
-type disassociate_application_fleet_request() :: #{binary() => any()}.

%% Example:
%% list_entitled_applications_request() :: #{
%%   <<"EntitlementName">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StackName">> := string()
%% }
-type list_entitled_applications_request() :: #{binary() => any()}.

%% Example:
%% expire_session_result() :: #{

%% }
-type expire_session_result() :: #{binary() => any()}.

%% Example:
%% vpc_config() :: #{
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"SubnetIds">> => list(string())
%% }
-type vpc_config() :: #{binary() => any()}.

%% Example:
%% entitlement_attribute() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type entitlement_attribute() :: #{binary() => any()}.

%% Example:
%% describe_user_stack_associations_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"UserStackAssociations">> => list(user_stack_association())
%% }
-type describe_user_stack_associations_result() :: #{binary() => any()}.

%% Example:
%% describe_directory_configs_request() :: #{
%%   <<"DirectoryNames">> => list(string()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_directory_configs_request() :: #{binary() => any()}.

%% Example:
%% storage_connector() :: #{
%%   <<"ConnectorType">> => list(any()),
%%   <<"Domains">> => list(string()),
%%   <<"DomainsRequireAdminConsent">> => list(string()),
%%   <<"ResourceIdentifier">> => string()
%% }
-type storage_connector() :: #{binary() => any()}.

%% Example:
%% copy_image_response() :: #{
%%   <<"DestinationImageName">> => string()
%% }
-type copy_image_response() :: #{binary() => any()}.

%% Example:
%% error_details() :: #{
%%   <<"ErrorCode">> => string(),
%%   <<"ErrorMessage">> => string()
%% }
-type error_details() :: #{binary() => any()}.

%% Example:
%% describe_applications_request() :: #{
%%   <<"Arns">> => list(string()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_applications_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% create_application_request() :: #{
%%   <<"AppBlockArn">> := string(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"IconS3Location">> := s3_location(),
%%   <<"InstanceFamilies">> := list(string()),
%%   <<"LaunchParameters">> => string(),
%%   <<"LaunchPath">> := string(),
%%   <<"Name">> := string(),
%%   <<"Platforms">> := list(list(any())()),
%%   <<"Tags">> => map(),
%%   <<"WorkingDirectory">> => string()
%% }
-type create_application_request() :: #{binary() => any()}.

%% Example:
%% delete_fleet_result() :: #{

%% }
-type delete_fleet_result() :: #{binary() => any()}.

%% Example:
%% start_fleet_request() :: #{
%%   <<"Name">> := string()
%% }
-type start_fleet_request() :: #{binary() => any()}.

%% Example:
%% delete_image_builder_result() :: #{
%%   <<"ImageBuilder">> => image_builder()
%% }
-type delete_image_builder_result() :: #{binary() => any()}.

%% Example:
%% resource_error() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"ErrorTimestamp">> => non_neg_integer()
%% }
-type resource_error() :: #{binary() => any()}.

%% Example:
%% operation_not_permitted_exception() :: #{
%%   <<"Message">> => string()
%% }
-type operation_not_permitted_exception() :: #{binary() => any()}.

%% Example:
%% s3_location() :: #{
%%   <<"S3Bucket">> => string(),
%%   <<"S3Key">> => string()
%% }
-type s3_location() :: #{binary() => any()}.

%% Example:
%% delete_app_block_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_app_block_request() :: #{binary() => any()}.

%% Example:
%% update_theme_for_stack_result() :: #{
%%   <<"Theme">> => theme()
%% }
-type update_theme_for_stack_result() :: #{binary() => any()}.

%% Example:
%% stop_app_block_builder_request() :: #{
%%   <<"Name">> := string()
%% }
-type stop_app_block_builder_request() :: #{binary() => any()}.

%% Example:
%% update_image_permissions_request() :: #{
%%   <<"ImagePermissions">> := image_permissions(),
%%   <<"Name">> := string(),
%%   <<"SharedAccountId">> := string()
%% }
-type update_image_permissions_request() :: #{binary() => any()}.

%% Example:
%% disassociate_app_block_builder_app_block_request() :: #{
%%   <<"AppBlockArn">> := string(),
%%   <<"AppBlockBuilderName">> := string()
%% }
-type disassociate_app_block_builder_app_block_request() :: #{binary() => any()}.

%% Example:
%% app_block_builder_app_block_association() :: #{
%%   <<"AppBlockArn">> => string(),
%%   <<"AppBlockBuilderName">> => string()
%% }
-type app_block_builder_app_block_association() :: #{binary() => any()}.

%% Example:
%% associate_fleet_result() :: #{

%% }
-type associate_fleet_result() :: #{binary() => any()}.

%% Example:
%% session() :: #{
%%   <<"AuthenticationType">> => list(any()),
%%   <<"ConnectionState">> => list(any()),
%%   <<"FleetName">> => string(),
%%   <<"Id">> => string(),
%%   <<"InstanceId">> => string(),
%%   <<"MaxExpirationTime">> => non_neg_integer(),
%%   <<"NetworkAccessConfiguration">> => network_access_configuration(),
%%   <<"StackName">> => string(),
%%   <<"StartTime">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"UserId">> => string()
%% }
-type session() :: #{binary() => any()}.

%% Example:
%% update_stack_result() :: #{
%%   <<"Stack">> => stack()
%% }
-type update_stack_result() :: #{binary() => any()}.

%% Example:
%% list_entitled_applications_result() :: #{
%%   <<"EntitledApplications">> => list(entitled_application()),
%%   <<"NextToken">> => string()
%% }
-type list_entitled_applications_result() :: #{binary() => any()}.

%% Example:
%% streaming_experience_settings() :: #{
%%   <<"PreferredProtocol">> => list(any())
%% }
-type streaming_experience_settings() :: #{binary() => any()}.

%% Example:
%% delete_user_request() :: #{
%%   <<"AuthenticationType">> := list(any()),
%%   <<"UserName">> := string()
%% }
-type delete_user_request() :: #{binary() => any()}.

%% Example:
%% describe_software_associations_request() :: #{
%%   <<"AssociatedResource">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_software_associations_request() :: #{binary() => any()}.

%% Example:
%% entitlement_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type entitlement_not_found_exception() :: #{binary() => any()}.

%% Example:
%% delete_directory_config_result() :: #{

%% }
-type delete_directory_config_result() :: #{binary() => any()}.

%% Example:
%% invalid_role_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_role_exception() :: #{binary() => any()}.

%% Example:
%% delete_image_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_image_request() :: #{binary() => any()}.

%% Example:
%% create_streaming_url_request() :: #{
%%   <<"ApplicationId">> => string(),
%%   <<"FleetName">> := string(),
%%   <<"SessionContext">> => string(),
%%   <<"StackName">> := string(),
%%   <<"UserId">> := string(),
%%   <<"Validity">> => float()
%% }
-type create_streaming_url_request() :: #{binary() => any()}.

%% Example:
%% create_image_builder_streaming_url_request() :: #{
%%   <<"Name">> := string(),
%%   <<"Validity">> => float()
%% }
-type create_image_builder_streaming_url_request() :: #{binary() => any()}.

%% Example:
%% update_application_request() :: #{
%%   <<"AppBlockArn">> => string(),
%%   <<"AttributesToDelete">> => list(list(any())()),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"IconS3Location">> => s3_location(),
%%   <<"LaunchParameters">> => string(),
%%   <<"LaunchPath">> => string(),
%%   <<"Name">> := string(),
%%   <<"WorkingDirectory">> => string()
%% }
-type update_application_request() :: #{binary() => any()}.

%% Example:
%% delete_image_builder_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_image_builder_request() :: #{binary() => any()}.

%% Example:
%% invalid_account_status_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_account_status_exception() :: #{binary() => any()}.

%% Example:
%% list_associated_fleets_request() :: #{
%%   <<"NextToken">> => string(),
%%   <<"StackName">> := string()
%% }
-type list_associated_fleets_request() :: #{binary() => any()}.

%% Example:
%% stack_error() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string()
%% }
-type stack_error() :: #{binary() => any()}.

%% Example:
%% list_associated_fleets_result() :: #{
%%   <<"Names">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_associated_fleets_result() :: #{binary() => any()}.

%% Example:
%% batch_disassociate_user_stack_result() :: #{
%%   <<"errors">> => list(user_stack_association_error())
%% }
-type batch_disassociate_user_stack_result() :: #{binary() => any()}.

%% Example:
%% delete_application_result() :: #{

%% }
-type delete_application_result() :: #{binary() => any()}.

%% Example:
%% batch_associate_user_stack_request() :: #{
%%   <<"UserStackAssociations">> := list(user_stack_association())
%% }
-type batch_associate_user_stack_request() :: #{binary() => any()}.

%% Example:
%% describe_users_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Users">> => list(user())
%% }
-type describe_users_result() :: #{binary() => any()}.

%% Example:
%% describe_stacks_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Stacks">> => list(stack())
%% }
-type describe_stacks_result() :: #{binary() => any()}.

%% Example:
%% image_builder_state_change_reason() :: #{
%%   <<"Code">> => list(any()),
%%   <<"Message">> => string()
%% }
-type image_builder_state_change_reason() :: #{binary() => any()}.

%% Example:
%% update_application_result() :: #{
%%   <<"Application">> => application()
%% }
-type update_application_result() :: #{binary() => any()}.

%% Example:
%% theme_footer_link() :: #{
%%   <<"DisplayName">> => string(),
%%   <<"FooterLinkURL">> => string()
%% }
-type theme_footer_link() :: #{binary() => any()}.

%% Example:
%% entitlement() :: #{
%%   <<"AppVisibility">> => list(any()),
%%   <<"Attributes">> => list(entitlement_attribute()),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"LastModifiedTime">> => non_neg_integer(),
%%   <<"Name">> => string(),
%%   <<"StackName">> => string()
%% }
-type entitlement() :: #{binary() => any()}.

%% Example:
%% image() :: #{
%%   <<"Applications">> => list(application()),
%%   <<"AppstreamAgentVersion">> => string(),
%%   <<"Arn">> => string(),
%%   <<"BaseImageArn">> => string(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisplayName">> => string(),
%%   <<"DynamicAppProvidersEnabled">> => list(any()),
%%   <<"ImageBuilderName">> => string(),
%%   <<"ImageBuilderSupported">> => boolean(),
%%   <<"ImageErrors">> => list(resource_error()),
%%   <<"ImagePermissions">> => image_permissions(),
%%   <<"ImageSharedWithOthers">> => list(any()),
%%   <<"LatestAppstreamAgentVersion">> => list(any()),
%%   <<"ManagedSoftwareIncluded">> => boolean(),
%%   <<"Name">> => string(),
%%   <<"Platform">> => list(any()),
%%   <<"PublicBaseImageReleasedDate">> => non_neg_integer(),
%%   <<"State">> => list(any()),
%%   <<"StateChangeReason">> => image_state_change_reason(),
%%   <<"SupportedInstanceFamilies">> => list(string()),
%%   <<"Visibility">> => list(any())
%% }
-type image() :: #{binary() => any()}.

%% Example:
%% associate_software_to_image_builder_result() :: #{

%% }
-type associate_software_to_image_builder_result() :: #{binary() => any()}.

%% Example:
%% describe_entitlements_result() :: #{
%%   <<"Entitlements">> => list(entitlement()),
%%   <<"NextToken">> => string()
%% }
-type describe_entitlements_result() :: #{binary() => any()}.

%% Example:
%% shared_image_permissions() :: #{
%%   <<"imagePermissions">> => image_permissions(),
%%   <<"sharedAccountId">> => string()
%% }
-type shared_image_permissions() :: #{binary() => any()}.

%% Example:
%% application_settings() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"SettingsGroup">> => string()
%% }
-type application_settings() :: #{binary() => any()}.

%% Example:
%% incompatible_image_exception() :: #{
%%   <<"Message">> => string()
%% }
-type incompatible_image_exception() :: #{binary() => any()}.

%% Example:
%% create_image_builder_streaming_url_result() :: #{
%%   <<"Expires">> => non_neg_integer(),
%%   <<"StreamingURL">> => string()
%% }
-type create_image_builder_streaming_url_result() :: #{binary() => any()}.

%% Example:
%% create_fleet_result() :: #{
%%   <<"Fleet">> => fleet()
%% }
-type create_fleet_result() :: #{binary() => any()}.

%% Example:
%% describe_software_associations_result() :: #{
%%   <<"AssociatedResource">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SoftwareAssociations">> => list(software_associations())
%% }
-type describe_software_associations_result() :: #{binary() => any()}.

%% Example:
%% describe_app_block_builder_app_block_associations_result() :: #{
%%   <<"AppBlockBuilderAppBlockAssociations">> => list(app_block_builder_app_block_association()),
%%   <<"NextToken">> => string()
%% }
-type describe_app_block_builder_app_block_associations_result() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% directory_config() :: #{
%%   <<"CertificateBasedAuthProperties">> => certificate_based_auth_properties(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"DirectoryName">> => string(),
%%   <<"OrganizationalUnitDistinguishedNames">> => list(string()),
%%   <<"ServiceAccountCredentials">> => service_account_credentials()
%% }
-type directory_config() :: #{binary() => any()}.

%% Example:
%% batch_associate_user_stack_result() :: #{
%%   <<"errors">> => list(user_stack_association_error())
%% }
-type batch_associate_user_stack_result() :: #{binary() => any()}.

%% Example:
%% concurrent_modification_exception() :: #{
%%   <<"Message">> => string()
%% }
-type concurrent_modification_exception() :: #{binary() => any()}.

%% Example:
%% describe_image_permissions_result() :: #{
%%   <<"Name">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"SharedImagePermissionsList">> => list(shared_image_permissions())
%% }
-type describe_image_permissions_result() :: #{binary() => any()}.

%% Example:
%% delete_user_result() :: #{

%% }
-type delete_user_result() :: #{binary() => any()}.

%% Example:
%% associate_app_block_builder_app_block_request() :: #{
%%   <<"AppBlockArn">> := string(),
%%   <<"AppBlockBuilderName">> := string()
%% }
-type associate_app_block_builder_app_block_request() :: #{binary() => any()}.

%% Example:
%% create_app_block_builder_result() :: #{
%%   <<"AppBlockBuilder">> => app_block_builder()
%% }
-type create_app_block_builder_result() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% service_account_credentials() :: #{
%%   <<"AccountName">> => string(),
%%   <<"AccountPassword">> => string()
%% }
-type service_account_credentials() :: #{binary() => any()}.

%% Example:
%% start_fleet_result() :: #{

%% }
-type start_fleet_result() :: #{binary() => any()}.

%% Example:
%% enable_user_request() :: #{
%%   <<"AuthenticationType">> := list(any()),
%%   <<"UserName">> := string()
%% }
-type enable_user_request() :: #{binary() => any()}.

%% Example:
%% script_details() :: #{
%%   <<"ExecutableParameters">> => string(),
%%   <<"ExecutablePath">> => string(),
%%   <<"ScriptS3Location">> => s3_location(),
%%   <<"TimeoutInSeconds">> => integer()
%% }
-type script_details() :: #{binary() => any()}.

%% Example:
%% disassociate_fleet_request() :: #{
%%   <<"FleetName">> := string(),
%%   <<"StackName">> := string()
%% }
-type disassociate_fleet_request() :: #{binary() => any()}.

%% Example:
%% delete_entitlement_request() :: #{
%%   <<"Name">> := string(),
%%   <<"StackName">> := string()
%% }
-type delete_entitlement_request() :: #{binary() => any()}.

%% Example:
%% delete_stack_result() :: #{

%% }
-type delete_stack_result() :: #{binary() => any()}.

%% Example:
%% user() :: #{
%%   <<"Arn">> => string(),
%%   <<"AuthenticationType">> => list(any()),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Enabled">> => boolean(),
%%   <<"FirstName">> => string(),
%%   <<"LastName">> => string(),
%%   <<"Status">> => string(),
%%   <<"UserName">> => string()
%% }
-type user() :: #{binary() => any()}.

%% Example:
%% describe_sessions_request() :: #{
%%   <<"AuthenticationType">> => list(any()),
%%   <<"FleetName">> := string(),
%%   <<"InstanceId">> => string(),
%%   <<"Limit">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StackName">> := string(),
%%   <<"UserId">> => string()
%% }
-type describe_sessions_request() :: #{binary() => any()}.

%% Example:
%% create_usage_report_subscription_result() :: #{
%%   <<"S3BucketName">> => string(),
%%   <<"Schedule">> => list(any())
%% }
-type create_usage_report_subscription_result() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% start_software_deployment_to_image_builder_result() :: #{

%% }
-type start_software_deployment_to_image_builder_result() :: #{binary() => any()}.

%% Example:
%% create_directory_config_result() :: #{
%%   <<"DirectoryConfig">> => directory_config()
%% }
-type create_directory_config_result() :: #{binary() => any()}.

%% Example:
%% last_report_generation_execution_error() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string()
%% }
-type last_report_generation_execution_error() :: #{binary() => any()}.

%% Example:
%% describe_fleets_result() :: #{
%%   <<"Fleets">> => list(fleet()),
%%   <<"NextToken">> => string()
%% }
-type describe_fleets_result() :: #{binary() => any()}.

%% Example:
%% delete_theme_for_stack_request() :: #{
%%   <<"StackName">> := string()
%% }
-type delete_theme_for_stack_request() :: #{binary() => any()}.

%% Example:
%% describe_usage_report_subscriptions_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"UsageReportSubscriptions">> => list(usage_report_subscription())
%% }
-type describe_usage_report_subscriptions_result() :: #{binary() => any()}.

%% Example:
%% list_associated_stacks_result() :: #{
%%   <<"Names">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_associated_stacks_result() :: #{binary() => any()}.

%% Example:
%% associate_fleet_request() :: #{
%%   <<"FleetName">> := string(),
%%   <<"StackName">> := string()
%% }
-type associate_fleet_request() :: #{binary() => any()}.

%% Example:
%% describe_app_block_builders_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"Names">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type describe_app_block_builders_request() :: #{binary() => any()}.

%% Example:
%% describe_user_stack_associations_request() :: #{
%%   <<"AuthenticationType">> => list(any()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StackName">> => string(),
%%   <<"UserName">> => string()
%% }
-type describe_user_stack_associations_request() :: #{binary() => any()}.

%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% stop_image_builder_result() :: #{
%%   <<"ImageBuilder">> => image_builder()
%% }
-type stop_image_builder_result() :: #{binary() => any()}.

%% Example:
%% start_app_block_builder_result() :: #{
%%   <<"AppBlockBuilder">> => app_block_builder()
%% }
-type start_app_block_builder_result() :: #{binary() => any()}.

%% Example:
%% start_image_builder_request() :: #{
%%   <<"AppstreamAgentVersion">> => string(),
%%   <<"Name">> := string()
%% }
-type start_image_builder_request() :: #{binary() => any()}.

%% Example:
%% start_app_block_builder_request() :: #{
%%   <<"Name">> := string()
%% }
-type start_app_block_builder_request() :: #{binary() => any()}.

%% Example:
%% update_app_block_builder_result() :: #{
%%   <<"AppBlockBuilder">> => app_block_builder()
%% }
-type update_app_block_builder_result() :: #{binary() => any()}.

%% Example:
%% delete_image_permissions_result() :: #{

%% }
-type delete_image_permissions_result() :: #{binary() => any()}.

%% Example:
%% entitlement_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type entitlement_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% update_entitlement_request() :: #{
%%   <<"AppVisibility">> => list(any()),
%%   <<"Attributes">> => list(entitlement_attribute()),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"StackName">> := string()
%% }
-type update_entitlement_request() :: #{binary() => any()}.

%% Example:
%% describe_application_fleet_associations_result() :: #{
%%   <<"ApplicationFleetAssociations">> => list(application_fleet_association()),
%%   <<"NextToken">> => string()
%% }
-type describe_application_fleet_associations_result() :: #{binary() => any()}.

%% Example:
%% admin_app_license_usage_record() :: #{
%%   <<"BillingPeriod">> => string(),
%%   <<"LicenseType">> => string(),
%%   <<"OwnerAWSAccountId">> => string(),
%%   <<"SubscriptionFirstUsedDate">> => non_neg_integer(),
%%   <<"SubscriptionLastUsedDate">> => non_neg_integer(),
%%   <<"UserArn">> => string(),
%%   <<"UserId">> => string()
%% }
-type admin_app_license_usage_record() :: #{binary() => any()}.

%% Example:
%% update_image_permissions_result() :: #{

%% }
-type update_image_permissions_result() :: #{binary() => any()}.

%% Example:
%% disable_user_request() :: #{
%%   <<"AuthenticationType">> := list(any()),
%%   <<"UserName">> := string()
%% }
-type disable_user_request() :: #{binary() => any()}.

%% Example:
%% create_theme_for_stack_result() :: #{
%%   <<"Theme">> => theme()
%% }
-type create_theme_for_stack_result() :: #{binary() => any()}.

%% Example:
%% application_settings_response() :: #{
%%   <<"Enabled">> => boolean(),
%%   <<"S3BucketName">> => string(),
%%   <<"SettingsGroup">> => string()
%% }
-type application_settings_response() :: #{binary() => any()}.

%% Example:
%% create_theme_for_stack_request() :: #{
%%   <<"FaviconS3Location">> := s3_location(),
%%   <<"FooterLinks">> => list(theme_footer_link()),
%%   <<"OrganizationLogoS3Location">> := s3_location(),
%%   <<"StackName">> := string(),
%%   <<"ThemeStyling">> := list(any()),
%%   <<"TitleText">> := string()
%% }
-type create_theme_for_stack_request() :: #{binary() => any()}.

%% Example:
%% domain_join_info() :: #{
%%   <<"DirectoryName">> => string(),
%%   <<"OrganizationalUnitDistinguishedName">> => string()
%% }
-type domain_join_info() :: #{binary() => any()}.

%% Example:
%% describe_fleets_request() :: #{
%%   <<"Names">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type describe_fleets_request() :: #{binary() => any()}.

%% Example:
%% fleet() :: #{
%%   <<"Arn">> => string(),
%%   <<"ComputeCapacityStatus">> => compute_capacity_status(),
%%   <<"CreatedTime">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"DisconnectTimeoutInSeconds">> => integer(),
%%   <<"DisplayName">> => string(),
%%   <<"DomainJoinInfo">> => domain_join_info(),
%%   <<"EnableDefaultInternetAccess">> => boolean(),
%%   <<"FleetErrors">> => list(fleet_error()),
%%   <<"FleetType">> => list(any()),
%%   <<"IamRoleArn">> => string(),
%%   <<"IdleDisconnectTimeoutInSeconds">> => integer(),
%%   <<"ImageArn">> => string(),
%%   <<"ImageName">> => string(),
%%   <<"InstanceType">> => string(),
%%   <<"MaxConcurrentSessions">> => integer(),
%%   <<"MaxSessionsPerInstance">> => integer(),
%%   <<"MaxUserDurationInSeconds">> => integer(),
%%   <<"Name">> => string(),
%%   <<"Platform">> => list(any()),
%%   <<"SessionScriptS3Location">> => s3_location(),
%%   <<"State">> => list(any()),
%%   <<"StreamView">> => list(any()),
%%   <<"UsbDeviceFilterStrings">> => list(string()),
%%   <<"VpcConfig">> => vpc_config()
%% }
-type fleet() :: #{binary() => any()}.

%% Example:
%% describe_entitlements_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"Name">> => string(),
%%   <<"NextToken">> => string(),
%%   <<"StackName">> := string()
%% }
-type describe_entitlements_request() :: #{binary() => any()}.

%% Example:
%% describe_applications_result() :: #{
%%   <<"Applications">> => list(application()),
%%   <<"NextToken">> => string()
%% }
-type describe_applications_result() :: #{binary() => any()}.

%% Example:
%% entitled_application() :: #{
%%   <<"ApplicationIdentifier">> => string()
%% }
-type entitled_application() :: #{binary() => any()}.

%% Example:
%% describe_sessions_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Sessions">> => list(session())
%% }
-type describe_sessions_result() :: #{binary() => any()}.

%% Example:
%% user_stack_association_error() :: #{
%%   <<"ErrorCode">> => list(any()),
%%   <<"ErrorMessage">> => string(),
%%   <<"UserStackAssociation">> => user_stack_association()
%% }
-type user_stack_association_error() :: #{binary() => any()}.

%% Example:
%% start_software_deployment_to_image_builder_request() :: #{
%%   <<"ImageBuilderName">> := string(),
%%   <<"RetryFailedDeployments">> => boolean()
%% }
-type start_software_deployment_to_image_builder_request() :: #{binary() => any()}.

%% Example:
%% delete_application_request() :: #{
%%   <<"Name">> := string()
%% }
-type delete_application_request() :: #{binary() => any()}.

%% Example:
%% create_user_request() :: #{
%%   <<"AuthenticationType">> := list(any()),
%%   <<"FirstName">> => string(),
%%   <<"LastName">> => string(),
%%   <<"MessageAction">> => list(any()),
%%   <<"UserName">> := string()
%% }
-type create_user_request() :: #{binary() => any()}.

%% Example:
%% create_entitlement_request() :: #{
%%   <<"AppVisibility">> := list(any()),
%%   <<"Attributes">> := list(entitlement_attribute()),
%%   <<"Description">> => string(),
%%   <<"Name">> := string(),
%%   <<"StackName">> := string()
%% }
-type create_entitlement_request() :: #{binary() => any()}.

%% Example:
%% create_directory_config_request() :: #{
%%   <<"CertificateBasedAuthProperties">> => certificate_based_auth_properties(),
%%   <<"DirectoryName">> := string(),
%%   <<"OrganizationalUnitDistinguishedNames">> := list(string()),
%%   <<"ServiceAccountCredentials">> => service_account_credentials()
%% }
-type create_directory_config_request() :: #{binary() => any()}.

%% Example:
%% delete_directory_config_request() :: #{
%%   <<"DirectoryName">> := string()
%% }
-type delete_directory_config_request() :: #{binary() => any()}.

-type associate_app_block_builder_app_block_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_combination_exception().

-type associate_application_fleet_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_combination_exception().

-type associate_application_to_entitlement_errors() ::
    limit_exceeded_exception() | 
    entitlement_not_found_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type associate_fleet_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    incompatible_image_exception() | 
    invalid_account_status_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type associate_software_to_image_builder_errors() ::
    concurrent_modification_exception() | 
    incompatible_image_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_combination_exception().

-type batch_associate_user_stack_errors() ::
    operation_not_permitted_exception() | 
    invalid_parameter_combination_exception().

-type batch_disassociate_user_stack_errors() ::
    operation_not_permitted_exception() | 
    invalid_parameter_combination_exception().

-type copy_image_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    incompatible_image_exception() | 
    invalid_account_status_exception() | 
    resource_not_found_exception() | 
    resource_not_available_exception().

-type create_app_block_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    operation_not_permitted_exception().

-type create_app_block_builder_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_account_status_exception() | 
    invalid_role_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_combination_exception() | 
    resource_not_available_exception() | 
    request_limit_exceeded_exception().

-type create_app_block_builder_streaming_url_errors() ::
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type create_application_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type create_directory_config_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_account_status_exception() | 
    invalid_role_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type create_entitlement_errors() ::
    entitlement_already_exists_exception() | 
    limit_exceeded_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type create_fleet_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    incompatible_image_exception() | 
    invalid_account_status_exception() | 
    invalid_role_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_combination_exception() | 
    resource_not_available_exception() | 
    request_limit_exceeded_exception().

-type create_image_builder_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    incompatible_image_exception() | 
    invalid_account_status_exception() | 
    invalid_role_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_combination_exception() | 
    resource_not_available_exception() | 
    request_limit_exceeded_exception().

-type create_image_builder_streaming_url_errors() ::
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type create_stack_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_account_status_exception() | 
    invalid_role_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_combination_exception().

-type create_streaming_url_errors() ::
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_combination_exception() | 
    resource_not_available_exception().

-type create_theme_for_stack_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_account_status_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type create_updated_image_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    incompatible_image_exception() | 
    invalid_account_status_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type create_usage_report_subscription_errors() ::
    limit_exceeded_exception() | 
    invalid_account_status_exception() | 
    invalid_role_exception().

-type create_user_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    invalid_account_status_exception() | 
    operation_not_permitted_exception() | 
    invalid_parameter_combination_exception().

-type delete_app_block_errors() ::
    concurrent_modification_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_app_block_builder_errors() ::
    concurrent_modification_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_application_errors() ::
    concurrent_modification_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_directory_config_errors() ::
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_entitlement_errors() ::
    concurrent_modification_exception() | 
    entitlement_not_found_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type delete_fleet_errors() ::
    concurrent_modification_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_image_errors() ::
    concurrent_modification_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_image_builder_errors() ::
    concurrent_modification_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type delete_image_permissions_errors() ::
    resource_not_found_exception() | 
    resource_not_available_exception().

-type delete_stack_errors() ::
    concurrent_modification_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type delete_theme_for_stack_errors() ::
    concurrent_modification_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type delete_usage_report_subscription_errors() ::
    invalid_account_status_exception() | 
    resource_not_found_exception().

-type delete_user_errors() ::
    resource_not_found_exception().

-type describe_app_block_builder_app_block_associations_errors() ::
    operation_not_permitted_exception() | 
    invalid_parameter_combination_exception().

-type describe_app_block_builders_errors() ::
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type describe_app_blocks_errors() ::
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type describe_app_license_usage_errors() ::
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_combination_exception().

-type describe_application_fleet_associations_errors() ::
    operation_not_permitted_exception() | 
    invalid_parameter_combination_exception().

-type describe_applications_errors() ::
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type describe_directory_configs_errors() ::
    resource_not_found_exception().

-type describe_entitlements_errors() ::
    entitlement_not_found_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type describe_fleets_errors() ::
    resource_not_found_exception().

-type describe_image_builders_errors() ::
    resource_not_found_exception().

-type describe_image_permissions_errors() ::
    resource_not_found_exception().

-type describe_images_errors() ::
    resource_not_found_exception() | 
    invalid_parameter_combination_exception().

-type describe_sessions_errors() ::
    invalid_parameter_combination_exception().

-type describe_software_associations_errors() ::
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type describe_stacks_errors() ::
    resource_not_found_exception().

-type describe_theme_for_stack_errors() ::
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type describe_usage_report_subscriptions_errors() ::
    invalid_account_status_exception() | 
    resource_not_found_exception().

-type describe_user_stack_associations_errors() ::
    operation_not_permitted_exception() | 
    invalid_parameter_combination_exception().

-type describe_users_errors() ::
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_combination_exception().

-type disable_user_errors() ::
    resource_not_found_exception().

-type disassociate_app_block_builder_app_block_errors() ::
    concurrent_modification_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_combination_exception().

-type disassociate_application_fleet_errors() ::
    concurrent_modification_exception() | 
    operation_not_permitted_exception() | 
    invalid_parameter_combination_exception().

-type disassociate_application_from_entitlement_errors() ::
    entitlement_not_found_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type disassociate_fleet_errors() ::
    concurrent_modification_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type disassociate_software_from_image_builder_errors() ::
    concurrent_modification_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_combination_exception().

-type enable_user_errors() ::
    invalid_account_status_exception() | 
    resource_not_found_exception().

-type list_entitled_applications_errors() ::
    entitlement_not_found_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    resource_not_found_exception().

-type start_app_block_builder_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_account_status_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    resource_not_available_exception() | 
    request_limit_exceeded_exception().

-type start_fleet_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_account_status_exception() | 
    invalid_role_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    resource_not_available_exception() | 
    request_limit_exceeded_exception().

-type start_image_builder_errors() ::
    concurrent_modification_exception() | 
    incompatible_image_exception() | 
    invalid_account_status_exception() | 
    resource_not_found_exception() | 
    resource_not_available_exception().

-type start_software_deployment_to_image_builder_errors() ::
    concurrent_modification_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type stop_app_block_builder_errors() ::
    concurrent_modification_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type stop_fleet_errors() ::
    concurrent_modification_exception() | 
    resource_not_found_exception().

-type stop_image_builder_errors() ::
    concurrent_modification_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    limit_exceeded_exception() | 
    invalid_account_status_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    resource_not_found_exception().

-type update_app_block_builder_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_account_status_exception() | 
    invalid_role_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_combination_exception() | 
    resource_not_available_exception() | 
    request_limit_exceeded_exception() | 
    resource_in_use_exception().

-type update_application_errors() ::
    concurrent_modification_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type update_directory_config_errors() ::
    concurrent_modification_exception() | 
    incompatible_image_exception() | 
    invalid_role_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    resource_in_use_exception().

-type update_entitlement_errors() ::
    concurrent_modification_exception() | 
    entitlement_not_found_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception().

-type update_fleet_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    incompatible_image_exception() | 
    invalid_account_status_exception() | 
    invalid_role_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_combination_exception() | 
    resource_not_available_exception() | 
    request_limit_exceeded_exception() | 
    resource_in_use_exception().

-type update_image_permissions_errors() ::
    limit_exceeded_exception() | 
    resource_not_found_exception() | 
    resource_not_available_exception().

-type update_stack_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    incompatible_image_exception() | 
    invalid_account_status_exception() | 
    invalid_role_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_combination_exception() | 
    resource_in_use_exception().

-type update_theme_for_stack_errors() ::
    limit_exceeded_exception() | 
    concurrent_modification_exception() | 
    invalid_account_status_exception() | 
    operation_not_permitted_exception() | 
    resource_not_found_exception() | 
    invalid_parameter_combination_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates the specified app block builder with the specified app
%% block.
-spec associate_app_block_builder_app_block(aws_client:aws_client(), associate_app_block_builder_app_block_request()) ->
    {ok, associate_app_block_builder_app_block_result(), tuple()} |
    {error, any()} |
    {error, associate_app_block_builder_app_block_errors(), tuple()}.
associate_app_block_builder_app_block(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_app_block_builder_app_block(Client, Input, []).

-spec associate_app_block_builder_app_block(aws_client:aws_client(), associate_app_block_builder_app_block_request(), proplists:proplist()) ->
    {ok, associate_app_block_builder_app_block_result(), tuple()} |
    {error, any()} |
    {error, associate_app_block_builder_app_block_errors(), tuple()}.
associate_app_block_builder_app_block(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateAppBlockBuilderAppBlock">>, Input, Options).

%% @doc Associates the specified application with the specified fleet.
%%
%% This is only supported for Elastic fleets.
-spec associate_application_fleet(aws_client:aws_client(), associate_application_fleet_request()) ->
    {ok, associate_application_fleet_result(), tuple()} |
    {error, any()} |
    {error, associate_application_fleet_errors(), tuple()}.
associate_application_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_application_fleet(Client, Input, []).

-spec associate_application_fleet(aws_client:aws_client(), associate_application_fleet_request(), proplists:proplist()) ->
    {ok, associate_application_fleet_result(), tuple()} |
    {error, any()} |
    {error, associate_application_fleet_errors(), tuple()}.
associate_application_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateApplicationFleet">>, Input, Options).

%% @doc Associates an application to entitle.
-spec associate_application_to_entitlement(aws_client:aws_client(), associate_application_to_entitlement_request()) ->
    {ok, associate_application_to_entitlement_result(), tuple()} |
    {error, any()} |
    {error, associate_application_to_entitlement_errors(), tuple()}.
associate_application_to_entitlement(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_application_to_entitlement(Client, Input, []).

-spec associate_application_to_entitlement(aws_client:aws_client(), associate_application_to_entitlement_request(), proplists:proplist()) ->
    {ok, associate_application_to_entitlement_result(), tuple()} |
    {error, any()} |
    {error, associate_application_to_entitlement_errors(), tuple()}.
associate_application_to_entitlement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateApplicationToEntitlement">>, Input, Options).

%% @doc Associates the specified fleet with the specified stack.
-spec associate_fleet(aws_client:aws_client(), associate_fleet_request()) ->
    {ok, associate_fleet_result(), tuple()} |
    {error, any()} |
    {error, associate_fleet_errors(), tuple()}.
associate_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_fleet(Client, Input, []).

-spec associate_fleet(aws_client:aws_client(), associate_fleet_request(), proplists:proplist()) ->
    {ok, associate_fleet_result(), tuple()} |
    {error, any()} |
    {error, associate_fleet_errors(), tuple()}.
associate_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateFleet">>, Input, Options).

%% @doc Associates license included application(s) with an existing image
%% builder instance.
-spec associate_software_to_image_builder(aws_client:aws_client(), associate_software_to_image_builder_request()) ->
    {ok, associate_software_to_image_builder_result(), tuple()} |
    {error, any()} |
    {error, associate_software_to_image_builder_errors(), tuple()}.
associate_software_to_image_builder(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_software_to_image_builder(Client, Input, []).

-spec associate_software_to_image_builder(aws_client:aws_client(), associate_software_to_image_builder_request(), proplists:proplist()) ->
    {ok, associate_software_to_image_builder_result(), tuple()} |
    {error, any()} |
    {error, associate_software_to_image_builder_errors(), tuple()}.
associate_software_to_image_builder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateSoftwareToImageBuilder">>, Input, Options).

%% @doc Associates the specified users with the specified stacks.
%%
%% Users in a user pool cannot be assigned to stacks with fleets that are
%% joined to an Active Directory domain.
-spec batch_associate_user_stack(aws_client:aws_client(), batch_associate_user_stack_request()) ->
    {ok, batch_associate_user_stack_result(), tuple()} |
    {error, any()} |
    {error, batch_associate_user_stack_errors(), tuple()}.
batch_associate_user_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_associate_user_stack(Client, Input, []).

-spec batch_associate_user_stack(aws_client:aws_client(), batch_associate_user_stack_request(), proplists:proplist()) ->
    {ok, batch_associate_user_stack_result(), tuple()} |
    {error, any()} |
    {error, batch_associate_user_stack_errors(), tuple()}.
batch_associate_user_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchAssociateUserStack">>, Input, Options).

%% @doc Disassociates the specified users from the specified stacks.
-spec batch_disassociate_user_stack(aws_client:aws_client(), batch_disassociate_user_stack_request()) ->
    {ok, batch_disassociate_user_stack_result(), tuple()} |
    {error, any()} |
    {error, batch_disassociate_user_stack_errors(), tuple()}.
batch_disassociate_user_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_disassociate_user_stack(Client, Input, []).

-spec batch_disassociate_user_stack(aws_client:aws_client(), batch_disassociate_user_stack_request(), proplists:proplist()) ->
    {ok, batch_disassociate_user_stack_result(), tuple()} |
    {error, any()} |
    {error, batch_disassociate_user_stack_errors(), tuple()}.
batch_disassociate_user_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDisassociateUserStack">>, Input, Options).

%% @doc Copies the image within the same region or to a new region within the
%% same AWS account.
%%
%% Note that any tags you added to the image will not be copied.
-spec copy_image(aws_client:aws_client(), copy_image_request()) ->
    {ok, copy_image_response(), tuple()} |
    {error, any()} |
    {error, copy_image_errors(), tuple()}.
copy_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_image(Client, Input, []).

-spec copy_image(aws_client:aws_client(), copy_image_request(), proplists:proplist()) ->
    {ok, copy_image_response(), tuple()} |
    {error, any()} |
    {error, copy_image_errors(), tuple()}.
copy_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyImage">>, Input, Options).

%% @doc Creates an app block.
%%
%% App blocks are an Amazon AppStream 2.0 resource that stores the details
%% about the
%% virtual hard disk in an S3 bucket. It also stores the setup script with
%% details about
%% how to mount the virtual hard disk. The virtual hard disk includes the
%% application
%% binaries and other files necessary to launch your applications. Multiple
%% applications
%% can be assigned to a single app block.
%%
%% This is only supported for Elastic fleets.
-spec create_app_block(aws_client:aws_client(), create_app_block_request()) ->
    {ok, create_app_block_result(), tuple()} |
    {error, any()} |
    {error, create_app_block_errors(), tuple()}.
create_app_block(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_app_block(Client, Input, []).

-spec create_app_block(aws_client:aws_client(), create_app_block_request(), proplists:proplist()) ->
    {ok, create_app_block_result(), tuple()} |
    {error, any()} |
    {error, create_app_block_errors(), tuple()}.
create_app_block(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAppBlock">>, Input, Options).

%% @doc Creates an app block builder.
-spec create_app_block_builder(aws_client:aws_client(), create_app_block_builder_request()) ->
    {ok, create_app_block_builder_result(), tuple()} |
    {error, any()} |
    {error, create_app_block_builder_errors(), tuple()}.
create_app_block_builder(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_app_block_builder(Client, Input, []).

-spec create_app_block_builder(aws_client:aws_client(), create_app_block_builder_request(), proplists:proplist()) ->
    {ok, create_app_block_builder_result(), tuple()} |
    {error, any()} |
    {error, create_app_block_builder_errors(), tuple()}.
create_app_block_builder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAppBlockBuilder">>, Input, Options).

%% @doc Creates a URL to start a create app block builder streaming session.
-spec create_app_block_builder_streaming_url(aws_client:aws_client(), create_app_block_builder_streaming_url_request()) ->
    {ok, create_app_block_builder_streaming_url_result(), tuple()} |
    {error, any()} |
    {error, create_app_block_builder_streaming_url_errors(), tuple()}.
create_app_block_builder_streaming_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_app_block_builder_streaming_url(Client, Input, []).

-spec create_app_block_builder_streaming_url(aws_client:aws_client(), create_app_block_builder_streaming_url_request(), proplists:proplist()) ->
    {ok, create_app_block_builder_streaming_url_result(), tuple()} |
    {error, any()} |
    {error, create_app_block_builder_streaming_url_errors(), tuple()}.
create_app_block_builder_streaming_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAppBlockBuilderStreamingURL">>, Input, Options).

%% @doc Creates an application.
%%
%% Applications are an Amazon AppStream 2.0 resource that stores the details
%% about how to
%% launch applications on Elastic fleet streaming instances. An application
%% consists of the
%% launch details, icon, and display name. Applications are associated with
%% an app block
%% that contains the application binaries and other files. The applications
%% assigned to an
%% Elastic fleet are the applications users can launch.
%%
%% This is only supported for Elastic fleets.
-spec create_application(aws_client:aws_client(), create_application_request()) ->
    {ok, create_application_result(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_application(Client, Input, []).

-spec create_application(aws_client:aws_client(), create_application_request(), proplists:proplist()) ->
    {ok, create_application_result(), tuple()} |
    {error, any()} |
    {error, create_application_errors(), tuple()}.
create_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateApplication">>, Input, Options).

%% @doc Creates a Directory Config object in AppStream 2.0.
%%
%% This object includes the configuration information required to join fleets
%% and image builders to Microsoft Active Directory domains.
-spec create_directory_config(aws_client:aws_client(), create_directory_config_request()) ->
    {ok, create_directory_config_result(), tuple()} |
    {error, any()} |
    {error, create_directory_config_errors(), tuple()}.
create_directory_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_directory_config(Client, Input, []).

-spec create_directory_config(aws_client:aws_client(), create_directory_config_request(), proplists:proplist()) ->
    {ok, create_directory_config_result(), tuple()} |
    {error, any()} |
    {error, create_directory_config_errors(), tuple()}.
create_directory_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDirectoryConfig">>, Input, Options).

%% @doc Creates a new entitlement.
%%
%% Entitlements control access to specific applications within
%% a stack, based on user attributes. Entitlements apply to SAML 2.0
%% federated user
%% identities. Amazon AppStream 2.0 user pool and streaming URL users are
%% entitled to all
%% applications in a stack. Entitlements don't apply to the desktop
%% stream view
%% application, or to applications managed by a dynamic app provider using
%% the Dynamic
%% Application Framework.
-spec create_entitlement(aws_client:aws_client(), create_entitlement_request()) ->
    {ok, create_entitlement_result(), tuple()} |
    {error, any()} |
    {error, create_entitlement_errors(), tuple()}.
create_entitlement(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_entitlement(Client, Input, []).

-spec create_entitlement(aws_client:aws_client(), create_entitlement_request(), proplists:proplist()) ->
    {ok, create_entitlement_result(), tuple()} |
    {error, any()} |
    {error, create_entitlement_errors(), tuple()}.
create_entitlement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEntitlement">>, Input, Options).

%% @doc Creates a fleet.
%%
%% A fleet consists of streaming instances that your users access for their
%% applications and desktops.
-spec create_fleet(aws_client:aws_client(), create_fleet_request()) ->
    {ok, create_fleet_result(), tuple()} |
    {error, any()} |
    {error, create_fleet_errors(), tuple()}.
create_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_fleet(Client, Input, []).

-spec create_fleet(aws_client:aws_client(), create_fleet_request(), proplists:proplist()) ->
    {ok, create_fleet_result(), tuple()} |
    {error, any()} |
    {error, create_fleet_errors(), tuple()}.
create_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateFleet">>, Input, Options).

%% @doc Creates an image builder.
%%
%% An image builder is a virtual machine that is used to create an image.
%%
%% The initial state of the builder is `PENDING'. When it is ready, the
%% state is `RUNNING'.
-spec create_image_builder(aws_client:aws_client(), create_image_builder_request()) ->
    {ok, create_image_builder_result(), tuple()} |
    {error, any()} |
    {error, create_image_builder_errors(), tuple()}.
create_image_builder(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_image_builder(Client, Input, []).

-spec create_image_builder(aws_client:aws_client(), create_image_builder_request(), proplists:proplist()) ->
    {ok, create_image_builder_result(), tuple()} |
    {error, any()} |
    {error, create_image_builder_errors(), tuple()}.
create_image_builder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateImageBuilder">>, Input, Options).

%% @doc Creates a URL to start an image builder streaming session.
-spec create_image_builder_streaming_url(aws_client:aws_client(), create_image_builder_streaming_url_request()) ->
    {ok, create_image_builder_streaming_url_result(), tuple()} |
    {error, any()} |
    {error, create_image_builder_streaming_url_errors(), tuple()}.
create_image_builder_streaming_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_image_builder_streaming_url(Client, Input, []).

-spec create_image_builder_streaming_url(aws_client:aws_client(), create_image_builder_streaming_url_request(), proplists:proplist()) ->
    {ok, create_image_builder_streaming_url_result(), tuple()} |
    {error, any()} |
    {error, create_image_builder_streaming_url_errors(), tuple()}.
create_image_builder_streaming_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateImageBuilderStreamingURL">>, Input, Options).

%% @doc Creates a stack to start streaming applications to users.
%%
%% A stack consists of an associated fleet, user access policies, and storage
%% configurations.
-spec create_stack(aws_client:aws_client(), create_stack_request()) ->
    {ok, create_stack_result(), tuple()} |
    {error, any()} |
    {error, create_stack_errors(), tuple()}.
create_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_stack(Client, Input, []).

-spec create_stack(aws_client:aws_client(), create_stack_request(), proplists:proplist()) ->
    {ok, create_stack_result(), tuple()} |
    {error, any()} |
    {error, create_stack_errors(), tuple()}.
create_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStack">>, Input, Options).

%% @doc Creates a temporary URL to start an AppStream 2.0 streaming session
%% for the specified user.
%%
%% A streaming URL enables application streaming to be tested without user
%% setup.
-spec create_streaming_url(aws_client:aws_client(), create_streaming_url_request()) ->
    {ok, create_streaming_url_result(), tuple()} |
    {error, any()} |
    {error, create_streaming_url_errors(), tuple()}.
create_streaming_url(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_streaming_url(Client, Input, []).

-spec create_streaming_url(aws_client:aws_client(), create_streaming_url_request(), proplists:proplist()) ->
    {ok, create_streaming_url_result(), tuple()} |
    {error, any()} |
    {error, create_streaming_url_errors(), tuple()}.
create_streaming_url(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateStreamingURL">>, Input, Options).

%% @doc Creates custom branding that customizes the appearance of the
%% streaming application catalog page.
-spec create_theme_for_stack(aws_client:aws_client(), create_theme_for_stack_request()) ->
    {ok, create_theme_for_stack_result(), tuple()} |
    {error, any()} |
    {error, create_theme_for_stack_errors(), tuple()}.
create_theme_for_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_theme_for_stack(Client, Input, []).

-spec create_theme_for_stack(aws_client:aws_client(), create_theme_for_stack_request(), proplists:proplist()) ->
    {ok, create_theme_for_stack_result(), tuple()} |
    {error, any()} |
    {error, create_theme_for_stack_errors(), tuple()}.
create_theme_for_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateThemeForStack">>, Input, Options).

%% @doc Creates a new image with the latest Windows operating system updates,
%% driver updates, and AppStream 2.0 agent software.
%%
%% For more information, see the &quot;Update an Image by Using
%% Managed AppStream 2.0 Image Updates&quot; section in Administer Your
%% AppStream 2.0 Images:
%% https://docs.aws.amazon.com/appstream2/latest/developerguide/administer-images.html,
%% in the Amazon AppStream 2.0 Administration Guide.
-spec create_updated_image(aws_client:aws_client(), create_updated_image_request()) ->
    {ok, create_updated_image_result(), tuple()} |
    {error, any()} |
    {error, create_updated_image_errors(), tuple()}.
create_updated_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_updated_image(Client, Input, []).

-spec create_updated_image(aws_client:aws_client(), create_updated_image_request(), proplists:proplist()) ->
    {ok, create_updated_image_result(), tuple()} |
    {error, any()} |
    {error, create_updated_image_errors(), tuple()}.
create_updated_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUpdatedImage">>, Input, Options).

%% @doc Creates a usage report subscription.
%%
%% Usage reports are generated daily.
-spec create_usage_report_subscription(aws_client:aws_client(), create_usage_report_subscription_request()) ->
    {ok, create_usage_report_subscription_result(), tuple()} |
    {error, any()} |
    {error, create_usage_report_subscription_errors(), tuple()}.
create_usage_report_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_usage_report_subscription(Client, Input, []).

-spec create_usage_report_subscription(aws_client:aws_client(), create_usage_report_subscription_request(), proplists:proplist()) ->
    {ok, create_usage_report_subscription_result(), tuple()} |
    {error, any()} |
    {error, create_usage_report_subscription_errors(), tuple()}.
create_usage_report_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUsageReportSubscription">>, Input, Options).

%% @doc Creates a new user in the user pool.
-spec create_user(aws_client:aws_client(), create_user_request()) ->
    {ok, create_user_result(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_user(Client, Input, []).

-spec create_user(aws_client:aws_client(), create_user_request(), proplists:proplist()) ->
    {ok, create_user_result(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateUser">>, Input, Options).

%% @doc Deletes an app block.
-spec delete_app_block(aws_client:aws_client(), delete_app_block_request()) ->
    {ok, delete_app_block_result(), tuple()} |
    {error, any()} |
    {error, delete_app_block_errors(), tuple()}.
delete_app_block(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_app_block(Client, Input, []).

-spec delete_app_block(aws_client:aws_client(), delete_app_block_request(), proplists:proplist()) ->
    {ok, delete_app_block_result(), tuple()} |
    {error, any()} |
    {error, delete_app_block_errors(), tuple()}.
delete_app_block(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAppBlock">>, Input, Options).

%% @doc Deletes an app block builder.
%%
%% An app block builder can only be deleted when it has no association with
%% an app
%% block.
-spec delete_app_block_builder(aws_client:aws_client(), delete_app_block_builder_request()) ->
    {ok, delete_app_block_builder_result(), tuple()} |
    {error, any()} |
    {error, delete_app_block_builder_errors(), tuple()}.
delete_app_block_builder(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_app_block_builder(Client, Input, []).

-spec delete_app_block_builder(aws_client:aws_client(), delete_app_block_builder_request(), proplists:proplist()) ->
    {ok, delete_app_block_builder_result(), tuple()} |
    {error, any()} |
    {error, delete_app_block_builder_errors(), tuple()}.
delete_app_block_builder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAppBlockBuilder">>, Input, Options).

%% @doc Deletes an application.
-spec delete_application(aws_client:aws_client(), delete_application_request()) ->
    {ok, delete_application_result(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_application(Client, Input, []).

-spec delete_application(aws_client:aws_client(), delete_application_request(), proplists:proplist()) ->
    {ok, delete_application_result(), tuple()} |
    {error, any()} |
    {error, delete_application_errors(), tuple()}.
delete_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteApplication">>, Input, Options).

%% @doc Deletes the specified Directory Config object from AppStream 2.0.
%%
%% This object includes the information required to join streaming instances
%% to an Active Directory domain.
-spec delete_directory_config(aws_client:aws_client(), delete_directory_config_request()) ->
    {ok, delete_directory_config_result(), tuple()} |
    {error, any()} |
    {error, delete_directory_config_errors(), tuple()}.
delete_directory_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_directory_config(Client, Input, []).

-spec delete_directory_config(aws_client:aws_client(), delete_directory_config_request(), proplists:proplist()) ->
    {ok, delete_directory_config_result(), tuple()} |
    {error, any()} |
    {error, delete_directory_config_errors(), tuple()}.
delete_directory_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDirectoryConfig">>, Input, Options).

%% @doc Deletes the specified entitlement.
-spec delete_entitlement(aws_client:aws_client(), delete_entitlement_request()) ->
    {ok, delete_entitlement_result(), tuple()} |
    {error, any()} |
    {error, delete_entitlement_errors(), tuple()}.
delete_entitlement(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_entitlement(Client, Input, []).

-spec delete_entitlement(aws_client:aws_client(), delete_entitlement_request(), proplists:proplist()) ->
    {ok, delete_entitlement_result(), tuple()} |
    {error, any()} |
    {error, delete_entitlement_errors(), tuple()}.
delete_entitlement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEntitlement">>, Input, Options).

%% @doc Deletes the specified fleet.
-spec delete_fleet(aws_client:aws_client(), delete_fleet_request()) ->
    {ok, delete_fleet_result(), tuple()} |
    {error, any()} |
    {error, delete_fleet_errors(), tuple()}.
delete_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_fleet(Client, Input, []).

-spec delete_fleet(aws_client:aws_client(), delete_fleet_request(), proplists:proplist()) ->
    {ok, delete_fleet_result(), tuple()} |
    {error, any()} |
    {error, delete_fleet_errors(), tuple()}.
delete_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteFleet">>, Input, Options).

%% @doc Deletes the specified image.
%%
%% You cannot delete an image when it is in use.
%% After you delete an image, you cannot provision new capacity using the
%% image.
-spec delete_image(aws_client:aws_client(), delete_image_request()) ->
    {ok, delete_image_result(), tuple()} |
    {error, any()} |
    {error, delete_image_errors(), tuple()}.
delete_image(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_image(Client, Input, []).

-spec delete_image(aws_client:aws_client(), delete_image_request(), proplists:proplist()) ->
    {ok, delete_image_result(), tuple()} |
    {error, any()} |
    {error, delete_image_errors(), tuple()}.
delete_image(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteImage">>, Input, Options).

%% @doc Deletes the specified image builder and releases the capacity.
-spec delete_image_builder(aws_client:aws_client(), delete_image_builder_request()) ->
    {ok, delete_image_builder_result(), tuple()} |
    {error, any()} |
    {error, delete_image_builder_errors(), tuple()}.
delete_image_builder(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_image_builder(Client, Input, []).

-spec delete_image_builder(aws_client:aws_client(), delete_image_builder_request(), proplists:proplist()) ->
    {ok, delete_image_builder_result(), tuple()} |
    {error, any()} |
    {error, delete_image_builder_errors(), tuple()}.
delete_image_builder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteImageBuilder">>, Input, Options).

%% @doc Deletes permissions for the specified private image.
%%
%% After you delete permissions for an image, AWS accounts to which you
%% previously granted these permissions can no longer use the image.
-spec delete_image_permissions(aws_client:aws_client(), delete_image_permissions_request()) ->
    {ok, delete_image_permissions_result(), tuple()} |
    {error, any()} |
    {error, delete_image_permissions_errors(), tuple()}.
delete_image_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_image_permissions(Client, Input, []).

-spec delete_image_permissions(aws_client:aws_client(), delete_image_permissions_request(), proplists:proplist()) ->
    {ok, delete_image_permissions_result(), tuple()} |
    {error, any()} |
    {error, delete_image_permissions_errors(), tuple()}.
delete_image_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteImagePermissions">>, Input, Options).

%% @doc Deletes the specified stack.
%%
%% After the stack is deleted, the application streaming environment provided
%% by the stack is no longer available to users. Also, any reservations made
%% for application streaming sessions for the stack are released.
-spec delete_stack(aws_client:aws_client(), delete_stack_request()) ->
    {ok, delete_stack_result(), tuple()} |
    {error, any()} |
    {error, delete_stack_errors(), tuple()}.
delete_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_stack(Client, Input, []).

-spec delete_stack(aws_client:aws_client(), delete_stack_request(), proplists:proplist()) ->
    {ok, delete_stack_result(), tuple()} |
    {error, any()} |
    {error, delete_stack_errors(), tuple()}.
delete_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteStack">>, Input, Options).

%% @doc Deletes custom branding that customizes the appearance of the
%% streaming application catalog page.
-spec delete_theme_for_stack(aws_client:aws_client(), delete_theme_for_stack_request()) ->
    {ok, delete_theme_for_stack_result(), tuple()} |
    {error, any()} |
    {error, delete_theme_for_stack_errors(), tuple()}.
delete_theme_for_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_theme_for_stack(Client, Input, []).

-spec delete_theme_for_stack(aws_client:aws_client(), delete_theme_for_stack_request(), proplists:proplist()) ->
    {ok, delete_theme_for_stack_result(), tuple()} |
    {error, any()} |
    {error, delete_theme_for_stack_errors(), tuple()}.
delete_theme_for_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteThemeForStack">>, Input, Options).

%% @doc Disables usage report generation.
-spec delete_usage_report_subscription(aws_client:aws_client(), delete_usage_report_subscription_request()) ->
    {ok, delete_usage_report_subscription_result(), tuple()} |
    {error, any()} |
    {error, delete_usage_report_subscription_errors(), tuple()}.
delete_usage_report_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_usage_report_subscription(Client, Input, []).

-spec delete_usage_report_subscription(aws_client:aws_client(), delete_usage_report_subscription_request(), proplists:proplist()) ->
    {ok, delete_usage_report_subscription_result(), tuple()} |
    {error, any()} |
    {error, delete_usage_report_subscription_errors(), tuple()}.
delete_usage_report_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUsageReportSubscription">>, Input, Options).

%% @doc Deletes a user from the user pool.
-spec delete_user(aws_client:aws_client(), delete_user_request()) ->
    {ok, delete_user_result(), tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_user(Client, Input, []).

-spec delete_user(aws_client:aws_client(), delete_user_request(), proplists:proplist()) ->
    {ok, delete_user_result(), tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteUser">>, Input, Options).

%% @doc Retrieves a list that describes one or more app block builder
%% associations.
-spec describe_app_block_builder_app_block_associations(aws_client:aws_client(), describe_app_block_builder_app_block_associations_request()) ->
    {ok, describe_app_block_builder_app_block_associations_result(), tuple()} |
    {error, any()} |
    {error, describe_app_block_builder_app_block_associations_errors(), tuple()}.
describe_app_block_builder_app_block_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_app_block_builder_app_block_associations(Client, Input, []).

-spec describe_app_block_builder_app_block_associations(aws_client:aws_client(), describe_app_block_builder_app_block_associations_request(), proplists:proplist()) ->
    {ok, describe_app_block_builder_app_block_associations_result(), tuple()} |
    {error, any()} |
    {error, describe_app_block_builder_app_block_associations_errors(), tuple()}.
describe_app_block_builder_app_block_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAppBlockBuilderAppBlockAssociations">>, Input, Options).

%% @doc Retrieves a list that describes one or more app block builders.
-spec describe_app_block_builders(aws_client:aws_client(), describe_app_block_builders_request()) ->
    {ok, describe_app_block_builders_result(), tuple()} |
    {error, any()} |
    {error, describe_app_block_builders_errors(), tuple()}.
describe_app_block_builders(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_app_block_builders(Client, Input, []).

-spec describe_app_block_builders(aws_client:aws_client(), describe_app_block_builders_request(), proplists:proplist()) ->
    {ok, describe_app_block_builders_result(), tuple()} |
    {error, any()} |
    {error, describe_app_block_builders_errors(), tuple()}.
describe_app_block_builders(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAppBlockBuilders">>, Input, Options).

%% @doc Retrieves a list that describes one or more app blocks.
-spec describe_app_blocks(aws_client:aws_client(), describe_app_blocks_request()) ->
    {ok, describe_app_blocks_result(), tuple()} |
    {error, any()} |
    {error, describe_app_blocks_errors(), tuple()}.
describe_app_blocks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_app_blocks(Client, Input, []).

-spec describe_app_blocks(aws_client:aws_client(), describe_app_blocks_request(), proplists:proplist()) ->
    {ok, describe_app_blocks_result(), tuple()} |
    {error, any()} |
    {error, describe_app_blocks_errors(), tuple()}.
describe_app_blocks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAppBlocks">>, Input, Options).

%% @doc Retrieves license included application usage information.
-spec describe_app_license_usage(aws_client:aws_client(), describe_app_license_usage_request()) ->
    {ok, describe_app_license_usage_result(), tuple()} |
    {error, any()} |
    {error, describe_app_license_usage_errors(), tuple()}.
describe_app_license_usage(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_app_license_usage(Client, Input, []).

-spec describe_app_license_usage(aws_client:aws_client(), describe_app_license_usage_request(), proplists:proplist()) ->
    {ok, describe_app_license_usage_result(), tuple()} |
    {error, any()} |
    {error, describe_app_license_usage_errors(), tuple()}.
describe_app_license_usage(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAppLicenseUsage">>, Input, Options).

%% @doc Retrieves a list that describes one or more application fleet
%% associations.
%%
%% Either ApplicationArn or FleetName must be specified.
-spec describe_application_fleet_associations(aws_client:aws_client(), describe_application_fleet_associations_request()) ->
    {ok, describe_application_fleet_associations_result(), tuple()} |
    {error, any()} |
    {error, describe_application_fleet_associations_errors(), tuple()}.
describe_application_fleet_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_application_fleet_associations(Client, Input, []).

-spec describe_application_fleet_associations(aws_client:aws_client(), describe_application_fleet_associations_request(), proplists:proplist()) ->
    {ok, describe_application_fleet_associations_result(), tuple()} |
    {error, any()} |
    {error, describe_application_fleet_associations_errors(), tuple()}.
describe_application_fleet_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplicationFleetAssociations">>, Input, Options).

%% @doc Retrieves a list that describes one or more applications.
-spec describe_applications(aws_client:aws_client(), describe_applications_request()) ->
    {ok, describe_applications_result(), tuple()} |
    {error, any()} |
    {error, describe_applications_errors(), tuple()}.
describe_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_applications(Client, Input, []).

-spec describe_applications(aws_client:aws_client(), describe_applications_request(), proplists:proplist()) ->
    {ok, describe_applications_result(), tuple()} |
    {error, any()} |
    {error, describe_applications_errors(), tuple()}.
describe_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeApplications">>, Input, Options).

%% @doc Retrieves a list that describes one or more specified Directory
%% Config objects for AppStream 2.0, if the names for these objects are
%% provided.
%%
%% Otherwise, all Directory Config objects in the account are described.
%% These objects include the configuration information required to join
%% fleets and image builders to Microsoft Active Directory domains.
%%
%% Although the response syntax in this topic includes the account password,
%% this password is not returned in the actual response.
-spec describe_directory_configs(aws_client:aws_client(), describe_directory_configs_request()) ->
    {ok, describe_directory_configs_result(), tuple()} |
    {error, any()} |
    {error, describe_directory_configs_errors(), tuple()}.
describe_directory_configs(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_directory_configs(Client, Input, []).

-spec describe_directory_configs(aws_client:aws_client(), describe_directory_configs_request(), proplists:proplist()) ->
    {ok, describe_directory_configs_result(), tuple()} |
    {error, any()} |
    {error, describe_directory_configs_errors(), tuple()}.
describe_directory_configs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDirectoryConfigs">>, Input, Options).

%% @doc Retrieves a list that describes one of more entitlements.
-spec describe_entitlements(aws_client:aws_client(), describe_entitlements_request()) ->
    {ok, describe_entitlements_result(), tuple()} |
    {error, any()} |
    {error, describe_entitlements_errors(), tuple()}.
describe_entitlements(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_entitlements(Client, Input, []).

-spec describe_entitlements(aws_client:aws_client(), describe_entitlements_request(), proplists:proplist()) ->
    {ok, describe_entitlements_result(), tuple()} |
    {error, any()} |
    {error, describe_entitlements_errors(), tuple()}.
describe_entitlements(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEntitlements">>, Input, Options).

%% @doc Retrieves a list that describes one or more specified fleets, if the
%% fleet names are provided.
%%
%% Otherwise, all fleets in the account are described.
-spec describe_fleets(aws_client:aws_client(), describe_fleets_request()) ->
    {ok, describe_fleets_result(), tuple()} |
    {error, any()} |
    {error, describe_fleets_errors(), tuple()}.
describe_fleets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_fleets(Client, Input, []).

-spec describe_fleets(aws_client:aws_client(), describe_fleets_request(), proplists:proplist()) ->
    {ok, describe_fleets_result(), tuple()} |
    {error, any()} |
    {error, describe_fleets_errors(), tuple()}.
describe_fleets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeFleets">>, Input, Options).

%% @doc Retrieves a list that describes one or more specified image builders,
%% if the image builder names are provided.
%%
%% Otherwise, all image builders in the account are described.
-spec describe_image_builders(aws_client:aws_client(), describe_image_builders_request()) ->
    {ok, describe_image_builders_result(), tuple()} |
    {error, any()} |
    {error, describe_image_builders_errors(), tuple()}.
describe_image_builders(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_image_builders(Client, Input, []).

-spec describe_image_builders(aws_client:aws_client(), describe_image_builders_request(), proplists:proplist()) ->
    {ok, describe_image_builders_result(), tuple()} |
    {error, any()} |
    {error, describe_image_builders_errors(), tuple()}.
describe_image_builders(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImageBuilders">>, Input, Options).

%% @doc Retrieves a list that describes the permissions for shared AWS
%% account IDs on a private image that you own.
-spec describe_image_permissions(aws_client:aws_client(), describe_image_permissions_request()) ->
    {ok, describe_image_permissions_result(), tuple()} |
    {error, any()} |
    {error, describe_image_permissions_errors(), tuple()}.
describe_image_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_image_permissions(Client, Input, []).

-spec describe_image_permissions(aws_client:aws_client(), describe_image_permissions_request(), proplists:proplist()) ->
    {ok, describe_image_permissions_result(), tuple()} |
    {error, any()} |
    {error, describe_image_permissions_errors(), tuple()}.
describe_image_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImagePermissions">>, Input, Options).

%% @doc Retrieves a list that describes one or more specified images, if the
%% image names or image ARNs are provided.
%%
%% Otherwise, all images in the account are described.
-spec describe_images(aws_client:aws_client(), describe_images_request()) ->
    {ok, describe_images_result(), tuple()} |
    {error, any()} |
    {error, describe_images_errors(), tuple()}.
describe_images(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_images(Client, Input, []).

-spec describe_images(aws_client:aws_client(), describe_images_request(), proplists:proplist()) ->
    {ok, describe_images_result(), tuple()} |
    {error, any()} |
    {error, describe_images_errors(), tuple()}.
describe_images(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeImages">>, Input, Options).

%% @doc Retrieves a list that describes the streaming sessions for a
%% specified stack and fleet.
%%
%% If a UserId is provided for the stack and fleet,
%% only streaming sessions for that user are described. If an authentication
%% type is not provided,
%% the default is to authenticate users using a streaming URL.
-spec describe_sessions(aws_client:aws_client(), describe_sessions_request()) ->
    {ok, describe_sessions_result(), tuple()} |
    {error, any()} |
    {error, describe_sessions_errors(), tuple()}.
describe_sessions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_sessions(Client, Input, []).

-spec describe_sessions(aws_client:aws_client(), describe_sessions_request(), proplists:proplist()) ->
    {ok, describe_sessions_result(), tuple()} |
    {error, any()} |
    {error, describe_sessions_errors(), tuple()}.
describe_sessions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSessions">>, Input, Options).

%% @doc Retrieves license included application associations for a specified
%% resource.
-spec describe_software_associations(aws_client:aws_client(), describe_software_associations_request()) ->
    {ok, describe_software_associations_result(), tuple()} |
    {error, any()} |
    {error, describe_software_associations_errors(), tuple()}.
describe_software_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_software_associations(Client, Input, []).

-spec describe_software_associations(aws_client:aws_client(), describe_software_associations_request(), proplists:proplist()) ->
    {ok, describe_software_associations_result(), tuple()} |
    {error, any()} |
    {error, describe_software_associations_errors(), tuple()}.
describe_software_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSoftwareAssociations">>, Input, Options).

%% @doc Retrieves a list that describes one or more specified stacks, if the
%% stack names are provided.
%%
%% Otherwise, all stacks in the account are described.
-spec describe_stacks(aws_client:aws_client(), describe_stacks_request()) ->
    {ok, describe_stacks_result(), tuple()} |
    {error, any()} |
    {error, describe_stacks_errors(), tuple()}.
describe_stacks(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_stacks(Client, Input, []).

-spec describe_stacks(aws_client:aws_client(), describe_stacks_request(), proplists:proplist()) ->
    {ok, describe_stacks_result(), tuple()} |
    {error, any()} |
    {error, describe_stacks_errors(), tuple()}.
describe_stacks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeStacks">>, Input, Options).

%% @doc Retrieves a list that describes the theme for a specified stack.
%%
%% A theme is custom branding that customizes the appearance of the streaming
%% application catalog page.
-spec describe_theme_for_stack(aws_client:aws_client(), describe_theme_for_stack_request()) ->
    {ok, describe_theme_for_stack_result(), tuple()} |
    {error, any()} |
    {error, describe_theme_for_stack_errors(), tuple()}.
describe_theme_for_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_theme_for_stack(Client, Input, []).

-spec describe_theme_for_stack(aws_client:aws_client(), describe_theme_for_stack_request(), proplists:proplist()) ->
    {ok, describe_theme_for_stack_result(), tuple()} |
    {error, any()} |
    {error, describe_theme_for_stack_errors(), tuple()}.
describe_theme_for_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeThemeForStack">>, Input, Options).

%% @doc Retrieves a list that describes one or more usage report
%% subscriptions.
-spec describe_usage_report_subscriptions(aws_client:aws_client(), describe_usage_report_subscriptions_request()) ->
    {ok, describe_usage_report_subscriptions_result(), tuple()} |
    {error, any()} |
    {error, describe_usage_report_subscriptions_errors(), tuple()}.
describe_usage_report_subscriptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_usage_report_subscriptions(Client, Input, []).

-spec describe_usage_report_subscriptions(aws_client:aws_client(), describe_usage_report_subscriptions_request(), proplists:proplist()) ->
    {ok, describe_usage_report_subscriptions_result(), tuple()} |
    {error, any()} |
    {error, describe_usage_report_subscriptions_errors(), tuple()}.
describe_usage_report_subscriptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUsageReportSubscriptions">>, Input, Options).

%% @doc Retrieves a list that describes the UserStackAssociation objects.
%%
%% You must specify either or both of the following:
%%
%% The stack name
%%
%% The user name (email address of the user associated with the stack) and
%% the authentication type for the user
-spec describe_user_stack_associations(aws_client:aws_client(), describe_user_stack_associations_request()) ->
    {ok, describe_user_stack_associations_result(), tuple()} |
    {error, any()} |
    {error, describe_user_stack_associations_errors(), tuple()}.
describe_user_stack_associations(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_user_stack_associations(Client, Input, []).

-spec describe_user_stack_associations(aws_client:aws_client(), describe_user_stack_associations_request(), proplists:proplist()) ->
    {ok, describe_user_stack_associations_result(), tuple()} |
    {error, any()} |
    {error, describe_user_stack_associations_errors(), tuple()}.
describe_user_stack_associations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUserStackAssociations">>, Input, Options).

%% @doc Retrieves a list that describes one or more specified users in the
%% user pool.
-spec describe_users(aws_client:aws_client(), describe_users_request()) ->
    {ok, describe_users_result(), tuple()} |
    {error, any()} |
    {error, describe_users_errors(), tuple()}.
describe_users(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_users(Client, Input, []).

-spec describe_users(aws_client:aws_client(), describe_users_request(), proplists:proplist()) ->
    {ok, describe_users_result(), tuple()} |
    {error, any()} |
    {error, describe_users_errors(), tuple()}.
describe_users(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeUsers">>, Input, Options).

%% @doc Disables the specified user in the user pool.
%%
%% Users can't sign in to AppStream 2.0 until they are re-enabled. This
%% action does not delete the user.
-spec disable_user(aws_client:aws_client(), disable_user_request()) ->
    {ok, disable_user_result(), tuple()} |
    {error, any()} |
    {error, disable_user_errors(), tuple()}.
disable_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_user(Client, Input, []).

-spec disable_user(aws_client:aws_client(), disable_user_request(), proplists:proplist()) ->
    {ok, disable_user_result(), tuple()} |
    {error, any()} |
    {error, disable_user_errors(), tuple()}.
disable_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableUser">>, Input, Options).

%% @doc Disassociates a specified app block builder from a specified app
%% block.
-spec disassociate_app_block_builder_app_block(aws_client:aws_client(), disassociate_app_block_builder_app_block_request()) ->
    {ok, disassociate_app_block_builder_app_block_result(), tuple()} |
    {error, any()} |
    {error, disassociate_app_block_builder_app_block_errors(), tuple()}.
disassociate_app_block_builder_app_block(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_app_block_builder_app_block(Client, Input, []).

-spec disassociate_app_block_builder_app_block(aws_client:aws_client(), disassociate_app_block_builder_app_block_request(), proplists:proplist()) ->
    {ok, disassociate_app_block_builder_app_block_result(), tuple()} |
    {error, any()} |
    {error, disassociate_app_block_builder_app_block_errors(), tuple()}.
disassociate_app_block_builder_app_block(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateAppBlockBuilderAppBlock">>, Input, Options).

%% @doc Disassociates the specified application from the fleet.
-spec disassociate_application_fleet(aws_client:aws_client(), disassociate_application_fleet_request()) ->
    {ok, disassociate_application_fleet_result(), tuple()} |
    {error, any()} |
    {error, disassociate_application_fleet_errors(), tuple()}.
disassociate_application_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_application_fleet(Client, Input, []).

-spec disassociate_application_fleet(aws_client:aws_client(), disassociate_application_fleet_request(), proplists:proplist()) ->
    {ok, disassociate_application_fleet_result(), tuple()} |
    {error, any()} |
    {error, disassociate_application_fleet_errors(), tuple()}.
disassociate_application_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateApplicationFleet">>, Input, Options).

%% @doc Deletes the specified application from the specified entitlement.
-spec disassociate_application_from_entitlement(aws_client:aws_client(), disassociate_application_from_entitlement_request()) ->
    {ok, disassociate_application_from_entitlement_result(), tuple()} |
    {error, any()} |
    {error, disassociate_application_from_entitlement_errors(), tuple()}.
disassociate_application_from_entitlement(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_application_from_entitlement(Client, Input, []).

-spec disassociate_application_from_entitlement(aws_client:aws_client(), disassociate_application_from_entitlement_request(), proplists:proplist()) ->
    {ok, disassociate_application_from_entitlement_result(), tuple()} |
    {error, any()} |
    {error, disassociate_application_from_entitlement_errors(), tuple()}.
disassociate_application_from_entitlement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateApplicationFromEntitlement">>, Input, Options).

%% @doc Disassociates the specified fleet from the specified stack.
-spec disassociate_fleet(aws_client:aws_client(), disassociate_fleet_request()) ->
    {ok, disassociate_fleet_result(), tuple()} |
    {error, any()} |
    {error, disassociate_fleet_errors(), tuple()}.
disassociate_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_fleet(Client, Input, []).

-spec disassociate_fleet(aws_client:aws_client(), disassociate_fleet_request(), proplists:proplist()) ->
    {ok, disassociate_fleet_result(), tuple()} |
    {error, any()} |
    {error, disassociate_fleet_errors(), tuple()}.
disassociate_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateFleet">>, Input, Options).

%% @doc Removes license included application(s) association(s) from an image
%% builder instance.
-spec disassociate_software_from_image_builder(aws_client:aws_client(), disassociate_software_from_image_builder_request()) ->
    {ok, disassociate_software_from_image_builder_result(), tuple()} |
    {error, any()} |
    {error, disassociate_software_from_image_builder_errors(), tuple()}.
disassociate_software_from_image_builder(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_software_from_image_builder(Client, Input, []).

-spec disassociate_software_from_image_builder(aws_client:aws_client(), disassociate_software_from_image_builder_request(), proplists:proplist()) ->
    {ok, disassociate_software_from_image_builder_result(), tuple()} |
    {error, any()} |
    {error, disassociate_software_from_image_builder_errors(), tuple()}.
disassociate_software_from_image_builder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateSoftwareFromImageBuilder">>, Input, Options).

%% @doc Enables a user in the user pool.
%%
%% After being enabled, users can sign in to AppStream 2.0 and open
%% applications from the stacks to which they are assigned.
-spec enable_user(aws_client:aws_client(), enable_user_request()) ->
    {ok, enable_user_result(), tuple()} |
    {error, any()} |
    {error, enable_user_errors(), tuple()}.
enable_user(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_user(Client, Input, []).

-spec enable_user(aws_client:aws_client(), enable_user_request(), proplists:proplist()) ->
    {ok, enable_user_result(), tuple()} |
    {error, any()} |
    {error, enable_user_errors(), tuple()}.
enable_user(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableUser">>, Input, Options).

%% @doc Immediately stops the specified streaming session.
-spec expire_session(aws_client:aws_client(), expire_session_request()) ->
    {ok, expire_session_result(), tuple()} |
    {error, any()}.
expire_session(Client, Input)
  when is_map(Client), is_map(Input) ->
    expire_session(Client, Input, []).

-spec expire_session(aws_client:aws_client(), expire_session_request(), proplists:proplist()) ->
    {ok, expire_session_result(), tuple()} |
    {error, any()}.
expire_session(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExpireSession">>, Input, Options).

%% @doc Retrieves the name of the fleet that is associated with the specified
%% stack.
-spec list_associated_fleets(aws_client:aws_client(), list_associated_fleets_request()) ->
    {ok, list_associated_fleets_result(), tuple()} |
    {error, any()}.
list_associated_fleets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_associated_fleets(Client, Input, []).

-spec list_associated_fleets(aws_client:aws_client(), list_associated_fleets_request(), proplists:proplist()) ->
    {ok, list_associated_fleets_result(), tuple()} |
    {error, any()}.
list_associated_fleets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssociatedFleets">>, Input, Options).

%% @doc Retrieves the name of the stack with which the specified fleet is
%% associated.
-spec list_associated_stacks(aws_client:aws_client(), list_associated_stacks_request()) ->
    {ok, list_associated_stacks_result(), tuple()} |
    {error, any()}.
list_associated_stacks(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_associated_stacks(Client, Input, []).

-spec list_associated_stacks(aws_client:aws_client(), list_associated_stacks_request(), proplists:proplist()) ->
    {ok, list_associated_stacks_result(), tuple()} |
    {error, any()}.
list_associated_stacks(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAssociatedStacks">>, Input, Options).

%% @doc Retrieves a list of entitled applications.
-spec list_entitled_applications(aws_client:aws_client(), list_entitled_applications_request()) ->
    {ok, list_entitled_applications_result(), tuple()} |
    {error, any()} |
    {error, list_entitled_applications_errors(), tuple()}.
list_entitled_applications(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_entitled_applications(Client, Input, []).

-spec list_entitled_applications(aws_client:aws_client(), list_entitled_applications_request(), proplists:proplist()) ->
    {ok, list_entitled_applications_result(), tuple()} |
    {error, any()} |
    {error, list_entitled_applications_errors(), tuple()}.
list_entitled_applications(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEntitledApplications">>, Input, Options).

%% @doc Retrieves a list of all tags for the specified AppStream 2.0
%% resource.
%%
%% You can tag AppStream 2.0 image builders, images, fleets, and stacks.
%%
%% For more information about tags, see Tagging Your Resources:
%% https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html
%% in the Amazon AppStream 2.0 Administration Guide.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Starts an app block builder.
%%
%% An app block builder can only be started when it's associated with an
%% app
%% block.
%%
%% Starting an app block builder starts a new instance, which is equivalent
%% to an elastic
%% fleet instance with application builder assistance functionality.
-spec start_app_block_builder(aws_client:aws_client(), start_app_block_builder_request()) ->
    {ok, start_app_block_builder_result(), tuple()} |
    {error, any()} |
    {error, start_app_block_builder_errors(), tuple()}.
start_app_block_builder(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_app_block_builder(Client, Input, []).

-spec start_app_block_builder(aws_client:aws_client(), start_app_block_builder_request(), proplists:proplist()) ->
    {ok, start_app_block_builder_result(), tuple()} |
    {error, any()} |
    {error, start_app_block_builder_errors(), tuple()}.
start_app_block_builder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartAppBlockBuilder">>, Input, Options).

%% @doc Starts the specified fleet.
-spec start_fleet(aws_client:aws_client(), start_fleet_request()) ->
    {ok, start_fleet_result(), tuple()} |
    {error, any()} |
    {error, start_fleet_errors(), tuple()}.
start_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_fleet(Client, Input, []).

-spec start_fleet(aws_client:aws_client(), start_fleet_request(), proplists:proplist()) ->
    {ok, start_fleet_result(), tuple()} |
    {error, any()} |
    {error, start_fleet_errors(), tuple()}.
start_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartFleet">>, Input, Options).

%% @doc Starts the specified image builder.
-spec start_image_builder(aws_client:aws_client(), start_image_builder_request()) ->
    {ok, start_image_builder_result(), tuple()} |
    {error, any()} |
    {error, start_image_builder_errors(), tuple()}.
start_image_builder(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_image_builder(Client, Input, []).

-spec start_image_builder(aws_client:aws_client(), start_image_builder_request(), proplists:proplist()) ->
    {ok, start_image_builder_result(), tuple()} |
    {error, any()} |
    {error, start_image_builder_errors(), tuple()}.
start_image_builder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartImageBuilder">>, Input, Options).

%% @doc Initiates license included applications deployment to an image
%% builder instance.
-spec start_software_deployment_to_image_builder(aws_client:aws_client(), start_software_deployment_to_image_builder_request()) ->
    {ok, start_software_deployment_to_image_builder_result(), tuple()} |
    {error, any()} |
    {error, start_software_deployment_to_image_builder_errors(), tuple()}.
start_software_deployment_to_image_builder(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_software_deployment_to_image_builder(Client, Input, []).

-spec start_software_deployment_to_image_builder(aws_client:aws_client(), start_software_deployment_to_image_builder_request(), proplists:proplist()) ->
    {ok, start_software_deployment_to_image_builder_result(), tuple()} |
    {error, any()} |
    {error, start_software_deployment_to_image_builder_errors(), tuple()}.
start_software_deployment_to_image_builder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartSoftwareDeploymentToImageBuilder">>, Input, Options).

%% @doc Stops an app block builder.
%%
%% Stopping an app block builder terminates the instance, and the instance
%% state is not
%% persisted.
-spec stop_app_block_builder(aws_client:aws_client(), stop_app_block_builder_request()) ->
    {ok, stop_app_block_builder_result(), tuple()} |
    {error, any()} |
    {error, stop_app_block_builder_errors(), tuple()}.
stop_app_block_builder(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_app_block_builder(Client, Input, []).

-spec stop_app_block_builder(aws_client:aws_client(), stop_app_block_builder_request(), proplists:proplist()) ->
    {ok, stop_app_block_builder_result(), tuple()} |
    {error, any()} |
    {error, stop_app_block_builder_errors(), tuple()}.
stop_app_block_builder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopAppBlockBuilder">>, Input, Options).

%% @doc Stops the specified fleet.
-spec stop_fleet(aws_client:aws_client(), stop_fleet_request()) ->
    {ok, stop_fleet_result(), tuple()} |
    {error, any()} |
    {error, stop_fleet_errors(), tuple()}.
stop_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_fleet(Client, Input, []).

-spec stop_fleet(aws_client:aws_client(), stop_fleet_request(), proplists:proplist()) ->
    {ok, stop_fleet_result(), tuple()} |
    {error, any()} |
    {error, stop_fleet_errors(), tuple()}.
stop_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopFleet">>, Input, Options).

%% @doc Stops the specified image builder.
-spec stop_image_builder(aws_client:aws_client(), stop_image_builder_request()) ->
    {ok, stop_image_builder_result(), tuple()} |
    {error, any()} |
    {error, stop_image_builder_errors(), tuple()}.
stop_image_builder(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_image_builder(Client, Input, []).

-spec stop_image_builder(aws_client:aws_client(), stop_image_builder_request(), proplists:proplist()) ->
    {ok, stop_image_builder_result(), tuple()} |
    {error, any()} |
    {error, stop_image_builder_errors(), tuple()}.
stop_image_builder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopImageBuilder">>, Input, Options).

%% @doc Adds or overwrites one or more tags for the specified AppStream 2.0
%% resource.
%%
%% You can tag AppStream 2.0 image builders, images, fleets, and stacks.
%%
%% Each tag consists of a key and an optional value. If a resource already
%% has a tag with the same key,
%% this operation updates its value.
%%
%% To list the current tags for your resources, use
%% `ListTagsForResource'.
%% To disassociate tags from your resources, use `UntagResource'.
%%
%% For more information about tags, see Tagging Your Resources:
%% https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html
%% in the Amazon AppStream 2.0 Administration Guide.
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

%% @doc Disassociates one or more specified tags from the specified AppStream
%% 2.0 resource.
%%
%% To list the current tags for your resources, use
%% `ListTagsForResource'.
%%
%% For more information about tags, see Tagging Your Resources:
%% https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html
%% in the Amazon AppStream 2.0 Administration Guide.
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

%% @doc Updates an app block builder.
%%
%% If the app block builder is in the `STARTING' or `STOPPING'
%% state, you can't update it. If the app block builder is in the
%% `RUNNING'
%% state, you can only update the DisplayName and Description. If the app
%% block builder is
%% in the `STOPPED' state, you can update any attribute except the Name.
-spec update_app_block_builder(aws_client:aws_client(), update_app_block_builder_request()) ->
    {ok, update_app_block_builder_result(), tuple()} |
    {error, any()} |
    {error, update_app_block_builder_errors(), tuple()}.
update_app_block_builder(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_app_block_builder(Client, Input, []).

-spec update_app_block_builder(aws_client:aws_client(), update_app_block_builder_request(), proplists:proplist()) ->
    {ok, update_app_block_builder_result(), tuple()} |
    {error, any()} |
    {error, update_app_block_builder_errors(), tuple()}.
update_app_block_builder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateAppBlockBuilder">>, Input, Options).

%% @doc Updates the specified application.
-spec update_application(aws_client:aws_client(), update_application_request()) ->
    {ok, update_application_result(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_application(Client, Input, []).

-spec update_application(aws_client:aws_client(), update_application_request(), proplists:proplist()) ->
    {ok, update_application_result(), tuple()} |
    {error, any()} |
    {error, update_application_errors(), tuple()}.
update_application(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateApplication">>, Input, Options).

%% @doc Updates the specified Directory Config object in AppStream 2.0.
%%
%% This object includes the configuration information required to join fleets
%% and image builders to Microsoft Active Directory domains.
-spec update_directory_config(aws_client:aws_client(), update_directory_config_request()) ->
    {ok, update_directory_config_result(), tuple()} |
    {error, any()} |
    {error, update_directory_config_errors(), tuple()}.
update_directory_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_directory_config(Client, Input, []).

-spec update_directory_config(aws_client:aws_client(), update_directory_config_request(), proplists:proplist()) ->
    {ok, update_directory_config_result(), tuple()} |
    {error, any()} |
    {error, update_directory_config_errors(), tuple()}.
update_directory_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDirectoryConfig">>, Input, Options).

%% @doc Updates the specified entitlement.
-spec update_entitlement(aws_client:aws_client(), update_entitlement_request()) ->
    {ok, update_entitlement_result(), tuple()} |
    {error, any()} |
    {error, update_entitlement_errors(), tuple()}.
update_entitlement(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_entitlement(Client, Input, []).

-spec update_entitlement(aws_client:aws_client(), update_entitlement_request(), proplists:proplist()) ->
    {ok, update_entitlement_result(), tuple()} |
    {error, any()} |
    {error, update_entitlement_errors(), tuple()}.
update_entitlement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEntitlement">>, Input, Options).

%% @doc Updates the specified fleet.
%%
%% If the fleet is in the `STOPPED' state, you can update any attribute
%% except
%% the fleet name.
%%
%% If the fleet is in the `RUNNING' state, you can update the following
%% based
%% on the fleet type:
%%
%% Always-On and On-Demand fleet types
%%
%% You can update the `DisplayName', `ComputeCapacity',
%% `ImageARN', `ImageName',
%% `IdleDisconnectTimeoutInSeconds', and
%% `DisconnectTimeoutInSeconds' attributes.
%%
%% Elastic fleet type
%%
%% You can update the `DisplayName',
%% `IdleDisconnectTimeoutInSeconds',
%% `DisconnectTimeoutInSeconds', `MaxConcurrentSessions',
%% `SessionScriptS3Location'
%% and `UsbDeviceFilterStrings' attributes.
%%
%% If the fleet is in the `STARTING' or `STOPPED' state, you
%% can't update it.
-spec update_fleet(aws_client:aws_client(), update_fleet_request()) ->
    {ok, update_fleet_result(), tuple()} |
    {error, any()} |
    {error, update_fleet_errors(), tuple()}.
update_fleet(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_fleet(Client, Input, []).

-spec update_fleet(aws_client:aws_client(), update_fleet_request(), proplists:proplist()) ->
    {ok, update_fleet_result(), tuple()} |
    {error, any()} |
    {error, update_fleet_errors(), tuple()}.
update_fleet(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateFleet">>, Input, Options).

%% @doc Adds or updates permissions for the specified private image.
-spec update_image_permissions(aws_client:aws_client(), update_image_permissions_request()) ->
    {ok, update_image_permissions_result(), tuple()} |
    {error, any()} |
    {error, update_image_permissions_errors(), tuple()}.
update_image_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_image_permissions(Client, Input, []).

-spec update_image_permissions(aws_client:aws_client(), update_image_permissions_request(), proplists:proplist()) ->
    {ok, update_image_permissions_result(), tuple()} |
    {error, any()} |
    {error, update_image_permissions_errors(), tuple()}.
update_image_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateImagePermissions">>, Input, Options).

%% @doc Updates the specified fields for the specified stack.
-spec update_stack(aws_client:aws_client(), update_stack_request()) ->
    {ok, update_stack_result(), tuple()} |
    {error, any()} |
    {error, update_stack_errors(), tuple()}.
update_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_stack(Client, Input, []).

-spec update_stack(aws_client:aws_client(), update_stack_request(), proplists:proplist()) ->
    {ok, update_stack_result(), tuple()} |
    {error, any()} |
    {error, update_stack_errors(), tuple()}.
update_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateStack">>, Input, Options).

%% @doc Updates custom branding that customizes the appearance of the
%% streaming application catalog page.
-spec update_theme_for_stack(aws_client:aws_client(), update_theme_for_stack_request()) ->
    {ok, update_theme_for_stack_result(), tuple()} |
    {error, any()} |
    {error, update_theme_for_stack_errors(), tuple()}.
update_theme_for_stack(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_theme_for_stack(Client, Input, []).

-spec update_theme_for_stack(aws_client:aws_client(), update_theme_for_stack_request(), proplists:proplist()) ->
    {ok, update_theme_for_stack_result(), tuple()} |
    {error, any()} |
    {error, update_theme_for_stack_errors(), tuple()}.
update_theme_for_stack(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateThemeForStack">>, Input, Options).

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
    Client1 = Client#{service => <<"appstream">>},
    Host = build_host(<<"appstream2">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"PhotonAdminProxyService.", Action/binary>>}
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
