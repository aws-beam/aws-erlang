%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The AWS Chatbot API Reference provides descriptions, API request
%% parameters, and the XML response for each of the AWS Chatbot API actions.
%%
%% AWS Chatbot APIs are currently available in the following Regions:
%%
%% US East (Ohio) - `us-east-2'
%%
%% US West (Oregon) - `us-west-2'
%%
%% Asia Pacific (Singapore) - `ap-southeast-1'
%%
%% Europe (Ireland) - `eu-west-1'
%%
%% The AWS Chatbot console can only be used in US East (Ohio). Your
%% configuration data however, is stored in each of the relevant available
%% Regions.
%%
%% Your AWS CloudTrail events are logged in whatever Region you call from,
%% not US East (N. Virginia) by default.
-module(aws_chatbot).

-export([associate_to_configuration/2,
         associate_to_configuration/3,
         create_chime_webhook_configuration/2,
         create_chime_webhook_configuration/3,
         create_custom_action/2,
         create_custom_action/3,
         create_microsoft_teams_channel_configuration/2,
         create_microsoft_teams_channel_configuration/3,
         create_slack_channel_configuration/2,
         create_slack_channel_configuration/3,
         delete_chime_webhook_configuration/2,
         delete_chime_webhook_configuration/3,
         delete_custom_action/2,
         delete_custom_action/3,
         delete_microsoft_teams_channel_configuration/2,
         delete_microsoft_teams_channel_configuration/3,
         delete_microsoft_teams_configured_team/2,
         delete_microsoft_teams_configured_team/3,
         delete_microsoft_teams_user_identity/2,
         delete_microsoft_teams_user_identity/3,
         delete_slack_channel_configuration/2,
         delete_slack_channel_configuration/3,
         delete_slack_user_identity/2,
         delete_slack_user_identity/3,
         delete_slack_workspace_authorization/2,
         delete_slack_workspace_authorization/3,
         describe_chime_webhook_configurations/2,
         describe_chime_webhook_configurations/3,
         describe_slack_channel_configurations/2,
         describe_slack_channel_configurations/3,
         describe_slack_user_identities/2,
         describe_slack_user_identities/3,
         describe_slack_workspaces/2,
         describe_slack_workspaces/3,
         disassociate_from_configuration/2,
         disassociate_from_configuration/3,
         get_account_preferences/2,
         get_account_preferences/3,
         get_custom_action/2,
         get_custom_action/3,
         get_microsoft_teams_channel_configuration/2,
         get_microsoft_teams_channel_configuration/3,
         list_associations/2,
         list_associations/3,
         list_custom_actions/2,
         list_custom_actions/3,
         list_microsoft_teams_channel_configurations/2,
         list_microsoft_teams_channel_configurations/3,
         list_microsoft_teams_configured_teams/2,
         list_microsoft_teams_configured_teams/3,
         list_microsoft_teams_user_identities/2,
         list_microsoft_teams_user_identities/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_account_preferences/2,
         update_account_preferences/3,
         update_chime_webhook_configuration/2,
         update_chime_webhook_configuration/3,
         update_custom_action/2,
         update_custom_action/3,
         update_microsoft_teams_channel_configuration/2,
         update_microsoft_teams_channel_configuration/3,
         update_slack_channel_configuration/2,
         update_slack_channel_configuration/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% create_teams_channel_configuration_request() :: #{
%%   <<"ChannelId">> := string(),
%%   <<"ChannelName">> => string(),
%%   <<"ConfigurationName">> := string(),
%%   <<"GuardrailPolicyArns">> => list(string()),
%%   <<"IamRoleArn">> := string(),
%%   <<"LoggingLevel">> => string(),
%%   <<"SnsTopicArns">> => list(string()),
%%   <<"Tags">> => list(tag()),
%%   <<"TeamId">> := string(),
%%   <<"TeamName">> => string(),
%%   <<"TenantId">> := string(),
%%   <<"UserAuthorizationRequired">> => boolean()
%% }
-type create_teams_channel_configuration_request() :: #{binary() => any()}.


%% Example:
%% delete_slack_workspace_authorization_fault() :: #{
%%   <<"Message">> => string()
%% }
-type delete_slack_workspace_authorization_fault() :: #{binary() => any()}.


%% Example:
%% list_teams_channel_configurations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"TeamId">> => string()
%% }
-type list_teams_channel_configurations_request() :: #{binary() => any()}.


%% Example:
%% delete_teams_configured_team_request() :: #{
%%   <<"TeamId">> := string()
%% }
-type delete_teams_configured_team_request() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% delete_slack_channel_configuration_result() :: #{}
-type delete_slack_channel_configuration_result() :: #{}.


%% Example:
%% describe_slack_channel_configurations_request() :: #{
%%   <<"ChatConfigurationArn">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_slack_channel_configurations_request() :: #{binary() => any()}.


%% Example:
%% get_custom_action_result() :: #{
%%   <<"CustomAction">> => custom_action()
%% }
-type get_custom_action_result() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"message">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% update_custom_action_request() :: #{
%%   <<"AliasName">> => string(),
%%   <<"Attachments">> => list(custom_action_attachment()),
%%   <<"CustomActionArn">> := string(),
%%   <<"Definition">> := custom_action_definition()
%% }
-type update_custom_action_request() :: #{binary() => any()}.


%% Example:
%% create_custom_action_result() :: #{
%%   <<"CustomActionArn">> => string()
%% }
-type create_custom_action_result() :: #{binary() => any()}.

%% Example:
%% delete_slack_workspace_authorization_result() :: #{}
-type delete_slack_workspace_authorization_result() :: #{}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% describe_slack_workspaces_exception() :: #{
%%   <<"Message">> => string()
%% }
-type describe_slack_workspaces_exception() :: #{binary() => any()}.


%% Example:
%% update_account_preferences_request() :: #{
%%   <<"TrainingDataCollectionEnabled">> => boolean(),
%%   <<"UserAuthorizationRequired">> => boolean()
%% }
-type update_account_preferences_request() :: #{binary() => any()}.


%% Example:
%% create_slack_channel_configuration_result() :: #{
%%   <<"ChannelConfiguration">> => slack_channel_configuration()
%% }
-type create_slack_channel_configuration_result() :: #{binary() => any()}.


%% Example:
%% delete_teams_channel_configuration_exception() :: #{
%%   <<"Message">> => string()
%% }
-type delete_teams_channel_configuration_exception() :: #{binary() => any()}.


%% Example:
%% list_custom_actions_request() :: #{
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => [string()]
%% }
-type list_custom_actions_request() :: #{binary() => any()}.


%% Example:
%% list_microsoft_teams_configured_teams_result() :: #{
%%   <<"ConfiguredTeams">> => list(configured_team()),
%%   <<"NextToken">> => string()
%% }
-type list_microsoft_teams_configured_teams_result() :: #{binary() => any()}.


%% Example:
%% list_microsoft_teams_configured_teams_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_microsoft_teams_configured_teams_request() :: #{binary() => any()}.


%% Example:
%% update_slack_channel_configuration_request() :: #{
%%   <<"ChatConfigurationArn">> := string(),
%%   <<"GuardrailPolicyArns">> => list(string()),
%%   <<"IamRoleArn">> => string(),
%%   <<"LoggingLevel">> => string(),
%%   <<"SlackChannelId">> := string(),
%%   <<"SlackChannelName">> => string(),
%%   <<"SnsTopicArns">> => list(string()),
%%   <<"UserAuthorizationRequired">> => boolean()
%% }
-type update_slack_channel_configuration_request() :: #{binary() => any()}.


%% Example:
%% update_teams_channel_configuration_exception() :: #{
%%   <<"Message">> => string()
%% }
-type update_teams_channel_configuration_exception() :: #{binary() => any()}.


%% Example:
%% list_microsoft_teams_configured_teams_exception() :: #{
%%   <<"Message">> => string()
%% }
-type list_microsoft_teams_configured_teams_exception() :: #{binary() => any()}.

%% Example:
%% delete_teams_configured_team_result() :: #{}
-type delete_teams_configured_team_result() :: #{}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceARN">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% delete_slack_channel_configuration_request() :: #{
%%   <<"ChatConfigurationArn">> := string()
%% }
-type delete_slack_channel_configuration_request() :: #{binary() => any()}.


%% Example:
%% list_custom_actions_result() :: #{
%%   <<"CustomActions">> => list(string()),
%%   <<"NextToken">> => [string()]
%% }
-type list_custom_actions_result() :: #{binary() => any()}.


%% Example:
%% get_account_preferences_exception() :: #{
%%   <<"Message">> => string()
%% }
-type get_account_preferences_exception() :: #{binary() => any()}.

%% Example:
%% delete_microsoft_teams_user_identity_result() :: #{}
-type delete_microsoft_teams_user_identity_result() :: #{}.


%% Example:
%% custom_action_attachment_criteria() :: #{
%%   <<"Operator">> => list(any()),
%%   <<"Value">> => [string()],
%%   <<"VariableName">> => [string()]
%% }
-type custom_action_attachment_criteria() :: #{binary() => any()}.


%% Example:
%% create_chime_webhook_configuration_result() :: #{
%%   <<"WebhookConfiguration">> => chime_webhook_configuration()
%% }
-type create_chime_webhook_configuration_result() :: #{binary() => any()}.

%% Example:
%% disassociate_from_configuration_result() :: #{}
-type disassociate_from_configuration_result() :: #{}.


%% Example:
%% update_teams_channel_configuration_request() :: #{
%%   <<"ChannelId">> := string(),
%%   <<"ChannelName">> => string(),
%%   <<"ChatConfigurationArn">> := string(),
%%   <<"GuardrailPolicyArns">> => list(string()),
%%   <<"IamRoleArn">> => string(),
%%   <<"LoggingLevel">> => string(),
%%   <<"SnsTopicArns">> => list(string()),
%%   <<"UserAuthorizationRequired">> => boolean()
%% }
-type update_teams_channel_configuration_request() :: #{binary() => any()}.


%% Example:
%% delete_custom_action_request() :: #{
%%   <<"CustomActionArn">> := string()
%% }
-type delete_custom_action_request() :: #{binary() => any()}.


%% Example:
%% describe_chime_webhook_configurations_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"WebhookConfigurations">> => list(chime_webhook_configuration())
%% }
-type describe_chime_webhook_configurations_result() :: #{binary() => any()}.


%% Example:
%% disassociate_from_configuration_request() :: #{
%%   <<"ChatConfiguration">> := string(),
%%   <<"Resource">> := string()
%% }
-type disassociate_from_configuration_request() :: #{binary() => any()}.


%% Example:
%% list_microsoft_teams_user_identities_request() :: #{
%%   <<"ChatConfigurationArn">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_microsoft_teams_user_identities_request() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% delete_slack_user_identity_result() :: #{}
-type delete_slack_user_identity_result() :: #{}.


%% Example:
%% teams_user_identity() :: #{
%%   <<"AwsUserIdentity">> => string(),
%%   <<"ChatConfigurationArn">> => string(),
%%   <<"IamRoleArn">> => string(),
%%   <<"TeamId">> => string(),
%%   <<"TeamsChannelId">> => string(),
%%   <<"TeamsTenantId">> => string(),
%%   <<"UserId">> => string()
%% }
-type teams_user_identity() :: #{binary() => any()}.


%% Example:
%% get_account_preferences_result() :: #{
%%   <<"AccountPreferences">> => account_preferences()
%% }
-type get_account_preferences_result() :: #{binary() => any()}.


%% Example:
%% update_account_preferences_result() :: #{
%%   <<"AccountPreferences">> => account_preferences()
%% }
-type update_account_preferences_result() :: #{binary() => any()}.


%% Example:
%% delete_teams_configured_team_exception() :: #{
%%   <<"Message">> => string()
%% }
-type delete_teams_configured_team_exception() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"TagKey">> => string(),
%%   <<"TagValue">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% get_account_preferences_request() :: #{}
-type get_account_preferences_request() :: #{}.


%% Example:
%% invalid_request_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_request_exception() :: #{binary() => any()}.


%% Example:
%% create_slack_channel_configuration_exception() :: #{
%%   <<"Message">> => string()
%% }
-type create_slack_channel_configuration_exception() :: #{binary() => any()}.


%% Example:
%% custom_action_attachment() :: #{
%%   <<"ButtonText">> => string(),
%%   <<"Criteria">> => list(custom_action_attachment_criteria()),
%%   <<"NotificationType">> => string(),
%%   <<"Variables">> => map()
%% }
-type custom_action_attachment() :: #{binary() => any()}.


%% Example:
%% describe_slack_workspaces_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SlackWorkspaces">> => list(slack_workspace())
%% }
-type describe_slack_workspaces_result() :: #{binary() => any()}.


%% Example:
%% delete_teams_channel_configuration_request() :: #{
%%   <<"ChatConfigurationArn">> := string()
%% }
-type delete_teams_channel_configuration_request() :: #{binary() => any()}.


%% Example:
%% list_teams_channel_configurations_exception() :: #{
%%   <<"Message">> => string()
%% }
-type list_teams_channel_configurations_exception() :: #{binary() => any()}.


%% Example:
%% update_chime_webhook_configuration_exception() :: #{
%%   <<"Message">> => string()
%% }
-type update_chime_webhook_configuration_exception() :: #{binary() => any()}.


%% Example:
%% list_associations_result() :: #{
%%   <<"Associations">> => list(association_listing()),
%%   <<"NextToken">> => string()
%% }
-type list_associations_result() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% create_teams_channel_configuration_result() :: #{
%%   <<"ChannelConfiguration">> => teams_channel_configuration()
%% }
-type create_teams_channel_configuration_result() :: #{binary() => any()}.


%% Example:
%% delete_microsoft_teams_user_identity_request() :: #{
%%   <<"ChatConfigurationArn">> := string(),
%%   <<"UserId">> := string()
%% }
-type delete_microsoft_teams_user_identity_request() :: #{binary() => any()}.


%% Example:
%% service_unavailable_exception() :: #{
%%   <<"message">> => string()
%% }
-type service_unavailable_exception() :: #{binary() => any()}.


%% Example:
%% create_teams_channel_configuration_exception() :: #{
%%   <<"Message">> => string()
%% }
-type create_teams_channel_configuration_exception() :: #{binary() => any()}.


%% Example:
%% list_teams_channel_configurations_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TeamChannelConfigurations">> => list(teams_channel_configuration())
%% }
-type list_teams_channel_configurations_result() :: #{binary() => any()}.


%% Example:
%% update_chime_webhook_configuration_result() :: #{
%%   <<"WebhookConfiguration">> => chime_webhook_configuration()
%% }
-type update_chime_webhook_configuration_result() :: #{binary() => any()}.


%% Example:
%% account_preferences() :: #{
%%   <<"TrainingDataCollectionEnabled">> => boolean(),
%%   <<"UserAuthorizationRequired">> => boolean()
%% }
-type account_preferences() :: #{binary() => any()}.


%% Example:
%% update_account_preferences_exception() :: #{
%%   <<"Message">> => string()
%% }
-type update_account_preferences_exception() :: #{binary() => any()}.


%% Example:
%% delete_microsoft_teams_user_identity_exception() :: #{
%%   <<"Message">> => string()
%% }
-type delete_microsoft_teams_user_identity_exception() :: #{binary() => any()}.


%% Example:
%% slack_workspace() :: #{
%%   <<"SlackTeamId">> => string(),
%%   <<"SlackTeamName">> => string(),
%%   <<"State">> => string(),
%%   <<"StateReason">> => string()
%% }
-type slack_workspace() :: #{binary() => any()}.


%% Example:
%% create_custom_action_request() :: #{
%%   <<"ActionName">> := string(),
%%   <<"AliasName">> => string(),
%%   <<"Attachments">> => list(custom_action_attachment()),
%%   <<"ClientToken">> => string(),
%%   <<"Definition">> := custom_action_definition(),
%%   <<"Tags">> => list(tag())
%% }
-type create_custom_action_request() :: #{binary() => any()}.


%% Example:
%% associate_to_configuration_request() :: #{
%%   <<"ChatConfiguration">> := string(),
%%   <<"Resource">> := string()
%% }
-type associate_to_configuration_request() :: #{binary() => any()}.


%% Example:
%% create_chime_webhook_configuration_request() :: #{
%%   <<"ConfigurationName">> := string(),
%%   <<"IamRoleArn">> := string(),
%%   <<"LoggingLevel">> => string(),
%%   <<"SnsTopicArns">> := list(string()),
%%   <<"Tags">> => list(tag()),
%%   <<"WebhookDescription">> := string(),
%%   <<"WebhookUrl">> := string()
%% }
-type create_chime_webhook_configuration_request() :: #{binary() => any()}.


%% Example:
%% describe_slack_workspaces_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_slack_workspaces_request() :: #{binary() => any()}.


%% Example:
%% get_teams_channel_configuration_request() :: #{
%%   <<"ChatConfigurationArn">> := string()
%% }
-type get_teams_channel_configuration_request() :: #{binary() => any()}.


%% Example:
%% create_slack_channel_configuration_request() :: #{
%%   <<"ConfigurationName">> := string(),
%%   <<"GuardrailPolicyArns">> => list(string()),
%%   <<"IamRoleArn">> := string(),
%%   <<"LoggingLevel">> => string(),
%%   <<"SlackChannelId">> := string(),
%%   <<"SlackChannelName">> => string(),
%%   <<"SlackTeamId">> := string(),
%%   <<"SnsTopicArns">> => list(string()),
%%   <<"Tags">> => list(tag()),
%%   <<"UserAuthorizationRequired">> => boolean()
%% }
-type create_slack_channel_configuration_request() :: #{binary() => any()}.


%% Example:
%% update_chime_webhook_configuration_request() :: #{
%%   <<"ChatConfigurationArn">> := string(),
%%   <<"IamRoleArn">> => string(),
%%   <<"LoggingLevel">> => string(),
%%   <<"SnsTopicArns">> => list(string()),
%%   <<"WebhookDescription">> => string(),
%%   <<"WebhookUrl">> => string()
%% }
-type update_chime_webhook_configuration_request() :: #{binary() => any()}.


%% Example:
%% configured_team() :: #{
%%   <<"State">> => string(),
%%   <<"StateReason">> => string(),
%%   <<"TeamId">> => string(),
%%   <<"TeamName">> => string(),
%%   <<"TenantId">> => string()
%% }
-type configured_team() :: #{binary() => any()}.


%% Example:
%% delete_slack_user_identity_request() :: #{
%%   <<"ChatConfigurationArn">> := string(),
%%   <<"SlackTeamId">> := string(),
%%   <<"SlackUserId">> := string()
%% }
-type delete_slack_user_identity_request() :: #{binary() => any()}.


%% Example:
%% update_slack_channel_configuration_exception() :: #{
%%   <<"Message">> => string()
%% }
-type update_slack_channel_configuration_exception() :: #{binary() => any()}.


%% Example:
%% custom_action() :: #{
%%   <<"ActionName">> => string(),
%%   <<"AliasName">> => string(),
%%   <<"Attachments">> => list(custom_action_attachment()),
%%   <<"CustomActionArn">> => string(),
%%   <<"Definition">> => custom_action_definition()
%% }
-type custom_action() :: #{binary() => any()}.


%% Example:
%% list_associations_request() :: #{
%%   <<"ChatConfiguration">> := string(),
%%   <<"MaxResults">> => [integer()],
%%   <<"NextToken">> => string()
%% }
-type list_associations_request() :: #{binary() => any()}.


%% Example:
%% delete_slack_user_identity_exception() :: #{
%%   <<"Message">> => string()
%% }
-type delete_slack_user_identity_exception() :: #{binary() => any()}.


%% Example:
%% describe_chime_webhook_configurations_exception() :: #{
%%   <<"Message">> => string()
%% }
-type describe_chime_webhook_configurations_exception() :: #{binary() => any()}.


%% Example:
%% custom_action_definition() :: #{
%%   <<"CommandText">> => [string()]
%% }
-type custom_action_definition() :: #{binary() => any()}.


%% Example:
%% list_microsoft_teams_user_identities_exception() :: #{
%%   <<"Message">> => string()
%% }
-type list_microsoft_teams_user_identities_exception() :: #{binary() => any()}.


%% Example:
%% delete_chime_webhook_configuration_exception() :: #{
%%   <<"Message">> => string()
%% }
-type delete_chime_webhook_configuration_exception() :: #{binary() => any()}.


%% Example:
%% invalid_parameter_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_parameter_exception() :: #{binary() => any()}.


%% Example:
%% delete_slack_workspace_authorization_request() :: #{
%%   <<"SlackTeamId">> := string()
%% }
-type delete_slack_workspace_authorization_request() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% internal_service_error() :: #{
%%   <<"Message">> => string()
%% }
-type internal_service_error() :: #{binary() => any()}.


%% Example:
%% update_custom_action_result() :: #{
%%   <<"CustomActionArn">> => string()
%% }
-type update_custom_action_result() :: #{binary() => any()}.


%% Example:
%% describe_slack_user_identities_exception() :: #{
%%   <<"Message">> => string()
%% }
-type describe_slack_user_identities_exception() :: #{binary() => any()}.


%% Example:
%% slack_channel_configuration() :: #{
%%   <<"ChatConfigurationArn">> => string(),
%%   <<"ConfigurationName">> => string(),
%%   <<"GuardrailPolicyArns">> => list(string()),
%%   <<"IamRoleArn">> => string(),
%%   <<"LoggingLevel">> => string(),
%%   <<"SlackChannelId">> => string(),
%%   <<"SlackChannelName">> => string(),
%%   <<"SlackTeamId">> => string(),
%%   <<"SlackTeamName">> => string(),
%%   <<"SnsTopicArns">> => list(string()),
%%   <<"State">> => string(),
%%   <<"StateReason">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"UserAuthorizationRequired">> => boolean()
%% }
-type slack_channel_configuration() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceARN">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% list_microsoft_teams_user_identities_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"TeamsUserIdentities">> => list(teams_user_identity())
%% }
-type list_microsoft_teams_user_identities_result() :: #{binary() => any()}.


%% Example:
%% association_listing() :: #{
%%   <<"Resource">> => string()
%% }
-type association_listing() :: #{binary() => any()}.


%% Example:
%% get_teams_channel_configuration_result() :: #{
%%   <<"ChannelConfiguration">> => teams_channel_configuration()
%% }
-type get_teams_channel_configuration_result() :: #{binary() => any()}.


%% Example:
%% chime_webhook_configuration() :: #{
%%   <<"ChatConfigurationArn">> => string(),
%%   <<"ConfigurationName">> => string(),
%%   <<"IamRoleArn">> => string(),
%%   <<"LoggingLevel">> => string(),
%%   <<"SnsTopicArns">> => list(string()),
%%   <<"State">> => string(),
%%   <<"StateReason">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"WebhookDescription">> => string()
%% }
-type chime_webhook_configuration() :: #{binary() => any()}.


%% Example:
%% slack_user_identity() :: #{
%%   <<"AwsUserIdentity">> => string(),
%%   <<"ChatConfigurationArn">> => string(),
%%   <<"IamRoleArn">> => string(),
%%   <<"SlackTeamId">> => string(),
%%   <<"SlackUserId">> => string()
%% }
-type slack_user_identity() :: #{binary() => any()}.


%% Example:
%% get_custom_action_request() :: #{
%%   <<"CustomActionArn">> := string()
%% }
-type get_custom_action_request() :: #{binary() => any()}.

%% Example:
%% delete_chime_webhook_configuration_result() :: #{}
-type delete_chime_webhook_configuration_result() :: #{}.


%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% create_chime_webhook_configuration_exception() :: #{
%%   <<"Message">> => string()
%% }
-type create_chime_webhook_configuration_exception() :: #{binary() => any()}.

%% Example:
%% delete_teams_channel_configuration_result() :: #{}
-type delete_teams_channel_configuration_result() :: #{}.


%% Example:
%% describe_chime_webhook_configurations_request() :: #{
%%   <<"ChatConfigurationArn">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_chime_webhook_configurations_request() :: #{binary() => any()}.


%% Example:
%% update_slack_channel_configuration_result() :: #{
%%   <<"ChannelConfiguration">> => slack_channel_configuration()
%% }
-type update_slack_channel_configuration_result() :: #{binary() => any()}.


%% Example:
%% update_teams_channel_configuration_result() :: #{
%%   <<"ChannelConfiguration">> => teams_channel_configuration()
%% }
-type update_teams_channel_configuration_result() :: #{binary() => any()}.


%% Example:
%% teams_channel_configuration() :: #{
%%   <<"ChannelId">> => string(),
%%   <<"ChannelName">> => string(),
%%   <<"ChatConfigurationArn">> => string(),
%%   <<"ConfigurationName">> => string(),
%%   <<"GuardrailPolicyArns">> => list(string()),
%%   <<"IamRoleArn">> => string(),
%%   <<"LoggingLevel">> => string(),
%%   <<"SnsTopicArns">> => list(string()),
%%   <<"State">> => string(),
%%   <<"StateReason">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TeamId">> => string(),
%%   <<"TeamName">> => string(),
%%   <<"TenantId">> => string(),
%%   <<"UserAuthorizationRequired">> => boolean()
%% }
-type teams_channel_configuration() :: #{binary() => any()}.


%% Example:
%% describe_slack_user_identities_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SlackUserIdentities">> => list(slack_user_identity())
%% }
-type describe_slack_user_identities_result() :: #{binary() => any()}.

%% Example:
%% associate_to_configuration_result() :: #{}
-type associate_to_configuration_result() :: #{}.


%% Example:
%% delete_slack_channel_configuration_exception() :: #{
%%   <<"Message">> => string()
%% }
-type delete_slack_channel_configuration_exception() :: #{binary() => any()}.


%% Example:
%% delete_chime_webhook_configuration_request() :: #{
%%   <<"ChatConfigurationArn">> := string()
%% }
-type delete_chime_webhook_configuration_request() :: #{binary() => any()}.


%% Example:
%% get_teams_channel_configuration_exception() :: #{
%%   <<"Message">> => string()
%% }
-type get_teams_channel_configuration_exception() :: #{binary() => any()}.


%% Example:
%% describe_slack_user_identities_request() :: #{
%%   <<"ChatConfigurationArn">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_slack_user_identities_request() :: #{binary() => any()}.


%% Example:
%% describe_slack_channel_configurations_exception() :: #{
%%   <<"Message">> => string()
%% }
-type describe_slack_channel_configurations_exception() :: #{binary() => any()}.


%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => string()
%% }
-type too_many_tags_exception() :: #{binary() => any()}.


%% Example:
%% describe_slack_channel_configurations_result() :: #{
%%   <<"NextToken">> => string(),
%%   <<"SlackChannelConfigurations">> => list(slack_channel_configuration())
%% }
-type describe_slack_channel_configurations_result() :: #{binary() => any()}.

%% Example:
%% delete_custom_action_result() :: #{}
-type delete_custom_action_result() :: #{}.

-type associate_to_configuration_errors() ::
    internal_service_error() | 
    invalid_request_exception() | 
    unauthorized_exception().

-type create_chime_webhook_configuration_errors() ::
    create_chime_webhook_configuration_exception() | 
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    conflict_exception().

-type create_custom_action_errors() ::
    limit_exceeded_exception() | 
    internal_service_error() | 
    invalid_request_exception() | 
    conflict_exception() | 
    unauthorized_exception().

-type create_microsoft_teams_channel_configuration_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    create_teams_channel_configuration_exception() | 
    invalid_request_exception() | 
    conflict_exception().

-type create_slack_channel_configuration_errors() ::
    limit_exceeded_exception() | 
    invalid_parameter_exception() | 
    create_slack_channel_configuration_exception() | 
    invalid_request_exception() | 
    conflict_exception().

-type delete_chime_webhook_configuration_errors() ::
    invalid_parameter_exception() | 
    delete_chime_webhook_configuration_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type delete_custom_action_errors() ::
    internal_service_error() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type delete_microsoft_teams_channel_configuration_errors() ::
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    delete_teams_channel_configuration_exception().

-type delete_microsoft_teams_configured_team_errors() ::
    invalid_parameter_exception() | 
    delete_teams_configured_team_exception().

-type delete_microsoft_teams_user_identity_errors() ::
    invalid_parameter_exception() | 
    delete_microsoft_teams_user_identity_exception() | 
    resource_not_found_exception().

-type delete_slack_channel_configuration_errors() ::
    delete_slack_channel_configuration_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type delete_slack_user_identity_errors() ::
    invalid_parameter_exception() | 
    delete_slack_user_identity_exception() | 
    resource_not_found_exception().

-type delete_slack_workspace_authorization_errors() ::
    invalid_parameter_exception() | 
    delete_slack_workspace_authorization_fault().

-type describe_chime_webhook_configurations_errors() ::
    invalid_parameter_exception() | 
    describe_chime_webhook_configurations_exception() | 
    invalid_request_exception().

-type describe_slack_channel_configurations_errors() ::
    describe_slack_channel_configurations_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception().

-type describe_slack_user_identities_errors() ::
    describe_slack_user_identities_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception().

-type describe_slack_workspaces_errors() ::
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    describe_slack_workspaces_exception().

-type disassociate_from_configuration_errors() ::
    internal_service_error() | 
    invalid_request_exception() | 
    unauthorized_exception().

-type get_account_preferences_errors() ::
    invalid_request_exception() | 
    get_account_preferences_exception().

-type get_custom_action_errors() ::
    internal_service_error() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type get_microsoft_teams_channel_configuration_errors() ::
    get_teams_channel_configuration_exception() | 
    invalid_parameter_exception() | 
    invalid_request_exception().

-type list_custom_actions_errors() ::
    internal_service_error() | 
    invalid_request_exception() | 
    unauthorized_exception().

-type list_microsoft_teams_channel_configurations_errors() ::
    invalid_parameter_exception() | 
    list_teams_channel_configurations_exception() | 
    invalid_request_exception().

-type list_microsoft_teams_configured_teams_errors() ::
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    list_microsoft_teams_configured_teams_exception().

-type list_microsoft_teams_user_identities_errors() ::
    invalid_parameter_exception() | 
    list_microsoft_teams_user_identities_exception() | 
    invalid_request_exception().

-type list_tags_for_resource_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    internal_service_error() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    internal_service_error() | 
    service_unavailable_exception() | 
    resource_not_found_exception().

-type update_account_preferences_errors() ::
    invalid_parameter_exception() | 
    update_account_preferences_exception() | 
    invalid_request_exception().

-type update_chime_webhook_configuration_errors() ::
    invalid_parameter_exception() | 
    update_chime_webhook_configuration_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

-type update_custom_action_errors() ::
    internal_service_error() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    unauthorized_exception().

-type update_microsoft_teams_channel_configuration_errors() ::
    invalid_parameter_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception() | 
    update_teams_channel_configuration_exception().

-type update_slack_channel_configuration_errors() ::
    invalid_parameter_exception() | 
    update_slack_channel_configuration_exception() | 
    invalid_request_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Links a resource (for example, a custom action) to a channel
%% configuration.
-spec associate_to_configuration(aws_client:aws_client(), associate_to_configuration_request()) ->
    {ok, associate_to_configuration_result(), tuple()} |
    {error, any()} |
    {error, associate_to_configuration_errors(), tuple()}.
associate_to_configuration(Client, Input) ->
    associate_to_configuration(Client, Input, []).

-spec associate_to_configuration(aws_client:aws_client(), associate_to_configuration_request(), proplists:proplist()) ->
    {ok, associate_to_configuration_result(), tuple()} |
    {error, any()} |
    {error, associate_to_configuration_errors(), tuple()}.
associate_to_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/associate-to-configuration"],
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

%% @doc Creates an AWS Chatbot configuration for Amazon Chime.
-spec create_chime_webhook_configuration(aws_client:aws_client(), create_chime_webhook_configuration_request()) ->
    {ok, create_chime_webhook_configuration_result(), tuple()} |
    {error, any()} |
    {error, create_chime_webhook_configuration_errors(), tuple()}.
create_chime_webhook_configuration(Client, Input) ->
    create_chime_webhook_configuration(Client, Input, []).

-spec create_chime_webhook_configuration(aws_client:aws_client(), create_chime_webhook_configuration_request(), proplists:proplist()) ->
    {ok, create_chime_webhook_configuration_result(), tuple()} |
    {error, any()} |
    {error, create_chime_webhook_configuration_errors(), tuple()}.
create_chime_webhook_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-chime-webhook-configuration"],
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

%% @doc Creates a custom action that can be invoked as an alias or as a
%% button on a notification.
-spec create_custom_action(aws_client:aws_client(), create_custom_action_request()) ->
    {ok, create_custom_action_result(), tuple()} |
    {error, any()} |
    {error, create_custom_action_errors(), tuple()}.
create_custom_action(Client, Input) ->
    create_custom_action(Client, Input, []).

-spec create_custom_action(aws_client:aws_client(), create_custom_action_request(), proplists:proplist()) ->
    {ok, create_custom_action_result(), tuple()} |
    {error, any()} |
    {error, create_custom_action_errors(), tuple()}.
create_custom_action(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-custom-action"],
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

%% @doc Creates an AWS Chatbot configuration for Microsoft Teams.
-spec create_microsoft_teams_channel_configuration(aws_client:aws_client(), create_teams_channel_configuration_request()) ->
    {ok, create_teams_channel_configuration_result(), tuple()} |
    {error, any()} |
    {error, create_microsoft_teams_channel_configuration_errors(), tuple()}.
create_microsoft_teams_channel_configuration(Client, Input) ->
    create_microsoft_teams_channel_configuration(Client, Input, []).

-spec create_microsoft_teams_channel_configuration(aws_client:aws_client(), create_teams_channel_configuration_request(), proplists:proplist()) ->
    {ok, create_teams_channel_configuration_result(), tuple()} |
    {error, any()} |
    {error, create_microsoft_teams_channel_configuration_errors(), tuple()}.
create_microsoft_teams_channel_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-ms-teams-channel-configuration"],
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

%% @doc Creates an AWS Chatbot confugration for Slack.
-spec create_slack_channel_configuration(aws_client:aws_client(), create_slack_channel_configuration_request()) ->
    {ok, create_slack_channel_configuration_result(), tuple()} |
    {error, any()} |
    {error, create_slack_channel_configuration_errors(), tuple()}.
create_slack_channel_configuration(Client, Input) ->
    create_slack_channel_configuration(Client, Input, []).

-spec create_slack_channel_configuration(aws_client:aws_client(), create_slack_channel_configuration_request(), proplists:proplist()) ->
    {ok, create_slack_channel_configuration_result(), tuple()} |
    {error, any()} |
    {error, create_slack_channel_configuration_errors(), tuple()}.
create_slack_channel_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/create-slack-channel-configuration"],
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

%% @doc Deletes a Amazon Chime webhook configuration for AWS Chatbot.
-spec delete_chime_webhook_configuration(aws_client:aws_client(), delete_chime_webhook_configuration_request()) ->
    {ok, delete_chime_webhook_configuration_result(), tuple()} |
    {error, any()} |
    {error, delete_chime_webhook_configuration_errors(), tuple()}.
delete_chime_webhook_configuration(Client, Input) ->
    delete_chime_webhook_configuration(Client, Input, []).

-spec delete_chime_webhook_configuration(aws_client:aws_client(), delete_chime_webhook_configuration_request(), proplists:proplist()) ->
    {ok, delete_chime_webhook_configuration_result(), tuple()} |
    {error, any()} |
    {error, delete_chime_webhook_configuration_errors(), tuple()}.
delete_chime_webhook_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-chime-webhook-configuration"],
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

%% @doc Deletes a custom action.
-spec delete_custom_action(aws_client:aws_client(), delete_custom_action_request()) ->
    {ok, delete_custom_action_result(), tuple()} |
    {error, any()} |
    {error, delete_custom_action_errors(), tuple()}.
delete_custom_action(Client, Input) ->
    delete_custom_action(Client, Input, []).

-spec delete_custom_action(aws_client:aws_client(), delete_custom_action_request(), proplists:proplist()) ->
    {ok, delete_custom_action_result(), tuple()} |
    {error, any()} |
    {error, delete_custom_action_errors(), tuple()}.
delete_custom_action(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-custom-action"],
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

%% @doc Deletes a Microsoft Teams channel configuration for AWS Chatbot
-spec delete_microsoft_teams_channel_configuration(aws_client:aws_client(), delete_teams_channel_configuration_request()) ->
    {ok, delete_teams_channel_configuration_result(), tuple()} |
    {error, any()} |
    {error, delete_microsoft_teams_channel_configuration_errors(), tuple()}.
delete_microsoft_teams_channel_configuration(Client, Input) ->
    delete_microsoft_teams_channel_configuration(Client, Input, []).

-spec delete_microsoft_teams_channel_configuration(aws_client:aws_client(), delete_teams_channel_configuration_request(), proplists:proplist()) ->
    {ok, delete_teams_channel_configuration_result(), tuple()} |
    {error, any()} |
    {error, delete_microsoft_teams_channel_configuration_errors(), tuple()}.
delete_microsoft_teams_channel_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-ms-teams-channel-configuration"],
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

%% @doc Deletes the Microsoft Teams team authorization allowing for channels
%% to be configured in that Microsoft Teams team.
%%
%% Note that the Microsoft Teams team must have no channels configured to
%% remove it.
-spec delete_microsoft_teams_configured_team(aws_client:aws_client(), delete_teams_configured_team_request()) ->
    {ok, delete_teams_configured_team_result(), tuple()} |
    {error, any()} |
    {error, delete_microsoft_teams_configured_team_errors(), tuple()}.
delete_microsoft_teams_configured_team(Client, Input) ->
    delete_microsoft_teams_configured_team(Client, Input, []).

-spec delete_microsoft_teams_configured_team(aws_client:aws_client(), delete_teams_configured_team_request(), proplists:proplist()) ->
    {ok, delete_teams_configured_team_result(), tuple()} |
    {error, any()} |
    {error, delete_microsoft_teams_configured_team_errors(), tuple()}.
delete_microsoft_teams_configured_team(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-ms-teams-configured-teams"],
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

%% @doc Identifes a user level permission for a channel configuration.
-spec delete_microsoft_teams_user_identity(aws_client:aws_client(), delete_microsoft_teams_user_identity_request()) ->
    {ok, delete_microsoft_teams_user_identity_result(), tuple()} |
    {error, any()} |
    {error, delete_microsoft_teams_user_identity_errors(), tuple()}.
delete_microsoft_teams_user_identity(Client, Input) ->
    delete_microsoft_teams_user_identity(Client, Input, []).

-spec delete_microsoft_teams_user_identity(aws_client:aws_client(), delete_microsoft_teams_user_identity_request(), proplists:proplist()) ->
    {ok, delete_microsoft_teams_user_identity_result(), tuple()} |
    {error, any()} |
    {error, delete_microsoft_teams_user_identity_errors(), tuple()}.
delete_microsoft_teams_user_identity(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-ms-teams-user-identity"],
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

%% @doc Deletes a Slack channel configuration for AWS Chatbot
-spec delete_slack_channel_configuration(aws_client:aws_client(), delete_slack_channel_configuration_request()) ->
    {ok, delete_slack_channel_configuration_result(), tuple()} |
    {error, any()} |
    {error, delete_slack_channel_configuration_errors(), tuple()}.
delete_slack_channel_configuration(Client, Input) ->
    delete_slack_channel_configuration(Client, Input, []).

-spec delete_slack_channel_configuration(aws_client:aws_client(), delete_slack_channel_configuration_request(), proplists:proplist()) ->
    {ok, delete_slack_channel_configuration_result(), tuple()} |
    {error, any()} |
    {error, delete_slack_channel_configuration_errors(), tuple()}.
delete_slack_channel_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-slack-channel-configuration"],
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

%% @doc Deletes a user level permission for a Slack channel configuration.
-spec delete_slack_user_identity(aws_client:aws_client(), delete_slack_user_identity_request()) ->
    {ok, delete_slack_user_identity_result(), tuple()} |
    {error, any()} |
    {error, delete_slack_user_identity_errors(), tuple()}.
delete_slack_user_identity(Client, Input) ->
    delete_slack_user_identity(Client, Input, []).

-spec delete_slack_user_identity(aws_client:aws_client(), delete_slack_user_identity_request(), proplists:proplist()) ->
    {ok, delete_slack_user_identity_result(), tuple()} |
    {error, any()} |
    {error, delete_slack_user_identity_errors(), tuple()}.
delete_slack_user_identity(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-slack-user-identity"],
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

%% @doc Deletes the Slack workspace authorization that allows channels to be
%% configured in that workspace.
%%
%% This requires all configured channels in the workspace to be deleted.
-spec delete_slack_workspace_authorization(aws_client:aws_client(), delete_slack_workspace_authorization_request()) ->
    {ok, delete_slack_workspace_authorization_result(), tuple()} |
    {error, any()} |
    {error, delete_slack_workspace_authorization_errors(), tuple()}.
delete_slack_workspace_authorization(Client, Input) ->
    delete_slack_workspace_authorization(Client, Input, []).

-spec delete_slack_workspace_authorization(aws_client:aws_client(), delete_slack_workspace_authorization_request(), proplists:proplist()) ->
    {ok, delete_slack_workspace_authorization_result(), tuple()} |
    {error, any()} |
    {error, delete_slack_workspace_authorization_errors(), tuple()}.
delete_slack_workspace_authorization(Client, Input0, Options0) ->
    Method = post,
    Path = ["/delete-slack-workspace-authorization"],
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

%% @doc Lists Amazon Chime webhook configurations optionally filtered by
%% ChatConfigurationArn
-spec describe_chime_webhook_configurations(aws_client:aws_client(), describe_chime_webhook_configurations_request()) ->
    {ok, describe_chime_webhook_configurations_result(), tuple()} |
    {error, any()} |
    {error, describe_chime_webhook_configurations_errors(), tuple()}.
describe_chime_webhook_configurations(Client, Input) ->
    describe_chime_webhook_configurations(Client, Input, []).

-spec describe_chime_webhook_configurations(aws_client:aws_client(), describe_chime_webhook_configurations_request(), proplists:proplist()) ->
    {ok, describe_chime_webhook_configurations_result(), tuple()} |
    {error, any()} |
    {error, describe_chime_webhook_configurations_errors(), tuple()}.
describe_chime_webhook_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-chime-webhook-configurations"],
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

%% @doc Lists Slack channel configurations optionally filtered by
%% ChatConfigurationArn
-spec describe_slack_channel_configurations(aws_client:aws_client(), describe_slack_channel_configurations_request()) ->
    {ok, describe_slack_channel_configurations_result(), tuple()} |
    {error, any()} |
    {error, describe_slack_channel_configurations_errors(), tuple()}.
describe_slack_channel_configurations(Client, Input) ->
    describe_slack_channel_configurations(Client, Input, []).

-spec describe_slack_channel_configurations(aws_client:aws_client(), describe_slack_channel_configurations_request(), proplists:proplist()) ->
    {ok, describe_slack_channel_configurations_result(), tuple()} |
    {error, any()} |
    {error, describe_slack_channel_configurations_errors(), tuple()}.
describe_slack_channel_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-slack-channel-configurations"],
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

%% @doc Lists all Slack user identities with a mapped role.
-spec describe_slack_user_identities(aws_client:aws_client(), describe_slack_user_identities_request()) ->
    {ok, describe_slack_user_identities_result(), tuple()} |
    {error, any()} |
    {error, describe_slack_user_identities_errors(), tuple()}.
describe_slack_user_identities(Client, Input) ->
    describe_slack_user_identities(Client, Input, []).

-spec describe_slack_user_identities(aws_client:aws_client(), describe_slack_user_identities_request(), proplists:proplist()) ->
    {ok, describe_slack_user_identities_result(), tuple()} |
    {error, any()} |
    {error, describe_slack_user_identities_errors(), tuple()}.
describe_slack_user_identities(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-slack-user-identities"],
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

%% @doc List all authorized Slack workspaces connected to the AWS Account
%% onboarded with AWS Chatbot.
-spec describe_slack_workspaces(aws_client:aws_client(), describe_slack_workspaces_request()) ->
    {ok, describe_slack_workspaces_result(), tuple()} |
    {error, any()} |
    {error, describe_slack_workspaces_errors(), tuple()}.
describe_slack_workspaces(Client, Input) ->
    describe_slack_workspaces(Client, Input, []).

-spec describe_slack_workspaces(aws_client:aws_client(), describe_slack_workspaces_request(), proplists:proplist()) ->
    {ok, describe_slack_workspaces_result(), tuple()} |
    {error, any()} |
    {error, describe_slack_workspaces_errors(), tuple()}.
describe_slack_workspaces(Client, Input0, Options0) ->
    Method = post,
    Path = ["/describe-slack-workspaces"],
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

%% @doc Unlink a resource, for example a custom action, from a channel
%% configuration.
-spec disassociate_from_configuration(aws_client:aws_client(), disassociate_from_configuration_request()) ->
    {ok, disassociate_from_configuration_result(), tuple()} |
    {error, any()} |
    {error, disassociate_from_configuration_errors(), tuple()}.
disassociate_from_configuration(Client, Input) ->
    disassociate_from_configuration(Client, Input, []).

-spec disassociate_from_configuration(aws_client:aws_client(), disassociate_from_configuration_request(), proplists:proplist()) ->
    {ok, disassociate_from_configuration_result(), tuple()} |
    {error, any()} |
    {error, disassociate_from_configuration_errors(), tuple()}.
disassociate_from_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/disassociate-from-configuration"],
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

%% @doc Returns AWS Chatbot account preferences.
-spec get_account_preferences(aws_client:aws_client(), get_account_preferences_request()) ->
    {ok, get_account_preferences_result(), tuple()} |
    {error, any()} |
    {error, get_account_preferences_errors(), tuple()}.
get_account_preferences(Client, Input) ->
    get_account_preferences(Client, Input, []).

-spec get_account_preferences(aws_client:aws_client(), get_account_preferences_request(), proplists:proplist()) ->
    {ok, get_account_preferences_result(), tuple()} |
    {error, any()} |
    {error, get_account_preferences_errors(), tuple()}.
get_account_preferences(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-account-preferences"],
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

%% @doc Returns a custom action.
-spec get_custom_action(aws_client:aws_client(), get_custom_action_request()) ->
    {ok, get_custom_action_result(), tuple()} |
    {error, any()} |
    {error, get_custom_action_errors(), tuple()}.
get_custom_action(Client, Input) ->
    get_custom_action(Client, Input, []).

-spec get_custom_action(aws_client:aws_client(), get_custom_action_request(), proplists:proplist()) ->
    {ok, get_custom_action_result(), tuple()} |
    {error, any()} |
    {error, get_custom_action_errors(), tuple()}.
get_custom_action(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-custom-action"],
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

%% @doc Returns a Microsoft Teams channel configuration in an AWS account.
-spec get_microsoft_teams_channel_configuration(aws_client:aws_client(), get_teams_channel_configuration_request()) ->
    {ok, get_teams_channel_configuration_result(), tuple()} |
    {error, any()} |
    {error, get_microsoft_teams_channel_configuration_errors(), tuple()}.
get_microsoft_teams_channel_configuration(Client, Input) ->
    get_microsoft_teams_channel_configuration(Client, Input, []).

-spec get_microsoft_teams_channel_configuration(aws_client:aws_client(), get_teams_channel_configuration_request(), proplists:proplist()) ->
    {ok, get_teams_channel_configuration_result(), tuple()} |
    {error, any()} |
    {error, get_microsoft_teams_channel_configuration_errors(), tuple()}.
get_microsoft_teams_channel_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/get-ms-teams-channel-configuration"],
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

%% @doc Lists resources associated with a channel configuration.
-spec list_associations(aws_client:aws_client(), list_associations_request()) ->
    {ok, list_associations_result(), tuple()} |
    {error, any()}.
list_associations(Client, Input) ->
    list_associations(Client, Input, []).

-spec list_associations(aws_client:aws_client(), list_associations_request(), proplists:proplist()) ->
    {ok, list_associations_result(), tuple()} |
    {error, any()}.
list_associations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-associations"],
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

%% @doc Lists custom actions defined in this account.
-spec list_custom_actions(aws_client:aws_client(), list_custom_actions_request()) ->
    {ok, list_custom_actions_result(), tuple()} |
    {error, any()} |
    {error, list_custom_actions_errors(), tuple()}.
list_custom_actions(Client, Input) ->
    list_custom_actions(Client, Input, []).

-spec list_custom_actions(aws_client:aws_client(), list_custom_actions_request(), proplists:proplist()) ->
    {ok, list_custom_actions_result(), tuple()} |
    {error, any()} |
    {error, list_custom_actions_errors(), tuple()}.
list_custom_actions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-custom-actions"],
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

%% @doc Lists all AWS Chatbot Microsoft Teams channel configurations in an
%% AWS account.
-spec list_microsoft_teams_channel_configurations(aws_client:aws_client(), list_teams_channel_configurations_request()) ->
    {ok, list_teams_channel_configurations_result(), tuple()} |
    {error, any()} |
    {error, list_microsoft_teams_channel_configurations_errors(), tuple()}.
list_microsoft_teams_channel_configurations(Client, Input) ->
    list_microsoft_teams_channel_configurations(Client, Input, []).

-spec list_microsoft_teams_channel_configurations(aws_client:aws_client(), list_teams_channel_configurations_request(), proplists:proplist()) ->
    {ok, list_teams_channel_configurations_result(), tuple()} |
    {error, any()} |
    {error, list_microsoft_teams_channel_configurations_errors(), tuple()}.
list_microsoft_teams_channel_configurations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-ms-teams-channel-configurations"],
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

%% @doc Lists all authorized Microsoft Teams for an AWS Account
-spec list_microsoft_teams_configured_teams(aws_client:aws_client(), list_microsoft_teams_configured_teams_request()) ->
    {ok, list_microsoft_teams_configured_teams_result(), tuple()} |
    {error, any()} |
    {error, list_microsoft_teams_configured_teams_errors(), tuple()}.
list_microsoft_teams_configured_teams(Client, Input) ->
    list_microsoft_teams_configured_teams(Client, Input, []).

-spec list_microsoft_teams_configured_teams(aws_client:aws_client(), list_microsoft_teams_configured_teams_request(), proplists:proplist()) ->
    {ok, list_microsoft_teams_configured_teams_result(), tuple()} |
    {error, any()} |
    {error, list_microsoft_teams_configured_teams_errors(), tuple()}.
list_microsoft_teams_configured_teams(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-ms-teams-configured-teams"],
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

%% @doc A list all Microsoft Teams user identities with a mapped role.
-spec list_microsoft_teams_user_identities(aws_client:aws_client(), list_microsoft_teams_user_identities_request()) ->
    {ok, list_microsoft_teams_user_identities_result(), tuple()} |
    {error, any()} |
    {error, list_microsoft_teams_user_identities_errors(), tuple()}.
list_microsoft_teams_user_identities(Client, Input) ->
    list_microsoft_teams_user_identities(Client, Input, []).

-spec list_microsoft_teams_user_identities(aws_client:aws_client(), list_microsoft_teams_user_identities_request(), proplists:proplist()) ->
    {ok, list_microsoft_teams_user_identities_result(), tuple()} |
    {error, any()} |
    {error, list_microsoft_teams_user_identities_errors(), tuple()}.
list_microsoft_teams_user_identities(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-ms-teams-user-identities"],
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

%% @doc Lists all of the tags associated with the Amazon Resource Name (ARN)
%% that you specify.
%%
%% The resource can be a user, server, or role.
-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input) ->
    list_tags_for_resource(Client, Input, []).

-spec list_tags_for_resource(aws_client:aws_client(), list_tags_for_resource_request(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/list-tags-for-resource"],
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

%% @doc Attaches a key-value pair to a resource, as identified by its Amazon
%% Resource Name (ARN).
%%
%% Resources are users, servers, roles, and other entities.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/tag-resource"],
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

%% @doc Detaches a key-value pair from a resource, as identified by its
%% Amazon Resource Name (ARN).
%%
%% Resources are users, servers, roles, and other entities.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/untag-resource"],
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

%% @doc Updates AWS Chatbot account preferences.
-spec update_account_preferences(aws_client:aws_client(), update_account_preferences_request()) ->
    {ok, update_account_preferences_result(), tuple()} |
    {error, any()} |
    {error, update_account_preferences_errors(), tuple()}.
update_account_preferences(Client, Input) ->
    update_account_preferences(Client, Input, []).

-spec update_account_preferences(aws_client:aws_client(), update_account_preferences_request(), proplists:proplist()) ->
    {ok, update_account_preferences_result(), tuple()} |
    {error, any()} |
    {error, update_account_preferences_errors(), tuple()}.
update_account_preferences(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-account-preferences"],
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

%% @doc Updates a Amazon Chime webhook configuration.
-spec update_chime_webhook_configuration(aws_client:aws_client(), update_chime_webhook_configuration_request()) ->
    {ok, update_chime_webhook_configuration_result(), tuple()} |
    {error, any()} |
    {error, update_chime_webhook_configuration_errors(), tuple()}.
update_chime_webhook_configuration(Client, Input) ->
    update_chime_webhook_configuration(Client, Input, []).

-spec update_chime_webhook_configuration(aws_client:aws_client(), update_chime_webhook_configuration_request(), proplists:proplist()) ->
    {ok, update_chime_webhook_configuration_result(), tuple()} |
    {error, any()} |
    {error, update_chime_webhook_configuration_errors(), tuple()}.
update_chime_webhook_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-chime-webhook-configuration"],
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

%% @doc Updates a custom action.
-spec update_custom_action(aws_client:aws_client(), update_custom_action_request()) ->
    {ok, update_custom_action_result(), tuple()} |
    {error, any()} |
    {error, update_custom_action_errors(), tuple()}.
update_custom_action(Client, Input) ->
    update_custom_action(Client, Input, []).

-spec update_custom_action(aws_client:aws_client(), update_custom_action_request(), proplists:proplist()) ->
    {ok, update_custom_action_result(), tuple()} |
    {error, any()} |
    {error, update_custom_action_errors(), tuple()}.
update_custom_action(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-custom-action"],
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

%% @doc Updates an Microsoft Teams channel configuration.
-spec update_microsoft_teams_channel_configuration(aws_client:aws_client(), update_teams_channel_configuration_request()) ->
    {ok, update_teams_channel_configuration_result(), tuple()} |
    {error, any()} |
    {error, update_microsoft_teams_channel_configuration_errors(), tuple()}.
update_microsoft_teams_channel_configuration(Client, Input) ->
    update_microsoft_teams_channel_configuration(Client, Input, []).

-spec update_microsoft_teams_channel_configuration(aws_client:aws_client(), update_teams_channel_configuration_request(), proplists:proplist()) ->
    {ok, update_teams_channel_configuration_result(), tuple()} |
    {error, any()} |
    {error, update_microsoft_teams_channel_configuration_errors(), tuple()}.
update_microsoft_teams_channel_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-ms-teams-channel-configuration"],
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

%% @doc Updates a Slack channel configuration.
-spec update_slack_channel_configuration(aws_client:aws_client(), update_slack_channel_configuration_request()) ->
    {ok, update_slack_channel_configuration_result(), tuple()} |
    {error, any()} |
    {error, update_slack_channel_configuration_errors(), tuple()}.
update_slack_channel_configuration(Client, Input) ->
    update_slack_channel_configuration(Client, Input, []).

-spec update_slack_channel_configuration(aws_client:aws_client(), update_slack_channel_configuration_request(), proplists:proplist()) ->
    {ok, update_slack_channel_configuration_result(), tuple()} |
    {error, any()} |
    {error, update_slack_channel_configuration_errors(), tuple()}.
update_slack_channel_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/update-slack-channel-configuration"],
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
    Client1 = Client#{service => <<"chatbot">>},
    Host = build_host(<<"chatbot">>, Client1),
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
