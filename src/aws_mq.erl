%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon MQ is a managed message broker service for Apache ActiveMQ and
%% RabbitMQ that makes it easy to set up and operate message brokers in the
%% cloud.
%%
%% A message broker allows software applications and components to
%% communicate using various programming languages, operating systems, and
%% formal messaging protocols.
-module(aws_mq).

-export([create_broker/2,
         create_broker/3,
         create_configuration/2,
         create_configuration/3,
         create_tags/3,
         create_tags/4,
         create_user/4,
         create_user/5,
         delete_broker/3,
         delete_broker/4,
         delete_configuration/3,
         delete_configuration/4,
         delete_tags/3,
         delete_tags/4,
         delete_user/4,
         delete_user/5,
         describe_broker/2,
         describe_broker/4,
         describe_broker/5,
         describe_broker_engine_types/1,
         describe_broker_engine_types/3,
         describe_broker_engine_types/4,
         describe_broker_instance_options/1,
         describe_broker_instance_options/3,
         describe_broker_instance_options/4,
         describe_configuration/2,
         describe_configuration/4,
         describe_configuration/5,
         describe_configuration_revision/3,
         describe_configuration_revision/5,
         describe_configuration_revision/6,
         describe_user/3,
         describe_user/5,
         describe_user/6,
         list_brokers/1,
         list_brokers/3,
         list_brokers/4,
         list_configuration_revisions/2,
         list_configuration_revisions/4,
         list_configuration_revisions/5,
         list_configurations/1,
         list_configurations/3,
         list_configurations/4,
         list_tags/2,
         list_tags/4,
         list_tags/5,
         list_users/2,
         list_users/4,
         list_users/5,
         promote/3,
         promote/4,
         reboot_broker/3,
         reboot_broker/4,
         update_broker/3,
         update_broker/4,
         update_configuration/3,
         update_configuration/4,
         update_user/4,
         update_user/5]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% user_pending_changes() :: #{
%%   <<"ConsoleAccess">> => boolean(),
%%   <<"Groups">> => list(string()),
%%   <<"PendingChange">> => list(any())
%% }
-type user_pending_changes() :: #{binary() => any()}.


%% Example:
%% sanitization_warning() :: #{
%%   <<"AttributeName">> => string(),
%%   <<"ElementName">> => string(),
%%   <<"Reason">> => list(any())
%% }
-type sanitization_warning() :: #{binary() => any()}.


%% Example:
%% user_summary() :: #{
%%   <<"PendingChange">> => list(any()),
%%   <<"Username">> => string()
%% }
-type user_summary() :: #{binary() => any()}.


%% Example:
%% describe_broker_response() :: #{
%%   <<"PendingDataReplicationMetadata">> => data_replication_metadata_output(),
%%   <<"LdapServerMetadata">> => ldap_server_metadata_output(),
%%   <<"BrokerArn">> => string(),
%%   <<"AuthenticationStrategy">> => list(any()),
%%   <<"PendingDataReplicationMode">> => list(any()),
%%   <<"Logs">> => logs_summary(),
%%   <<"PendingEngineVersion">> => string(),
%%   <<"PendingAuthenticationStrategy">> => list(any()),
%%   <<"DataReplicationMode">> => list(any()),
%%   <<"SubnetIds">> => list(string()),
%%   <<"EncryptionOptions">> => encryption_options(),
%%   <<"DeploymentMode">> => list(any()),
%%   <<"MaintenanceWindowStartTime">> => weekly_start_time(),
%%   <<"BrokerState">> => list(any()),
%%   <<"StorageType">> => list(any()),
%%   <<"Created">> => non_neg_integer(),
%%   <<"DataReplicationMetadata">> => data_replication_metadata_output(),
%%   <<"EngineVersion">> => string(),
%%   <<"Configurations">> => configurations(),
%%   <<"PubliclyAccessible">> => boolean(),
%%   <<"Users">> => list(user_summary()),
%%   <<"SecurityGroups">> => list(string()),
%%   <<"PendingSecurityGroups">> => list(string()),
%%   <<"Tags">> => map(),
%%   <<"PendingHostInstanceType">> => string(),
%%   <<"PendingLdapServerMetadata">> => ldap_server_metadata_output(),
%%   <<"ActionsRequired">> => list(action_required()),
%%   <<"BrokerId">> => string(),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"BrokerName">> => string(),
%%   <<"EngineType">> => list(any()),
%%   <<"HostInstanceType">> => string(),
%%   <<"BrokerInstances">> => list(broker_instance())
%% }
-type describe_broker_response() :: #{binary() => any()}.


%% Example:
%% promote_response() :: #{
%%   <<"BrokerId">> => string()
%% }
-type promote_response() :: #{binary() => any()}.


%% Example:
%% delete_tags_request() :: #{
%%   <<"TagKeys">> := list(string())
%% }
-type delete_tags_request() :: #{binary() => any()}.


%% Example:
%% availability_zone() :: #{
%%   <<"Name">> => string()
%% }
-type availability_zone() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"ErrorAttribute">> => string(),
%%   <<"Message">> => string()
%% }
-type unauthorized_exception() :: #{binary() => any()}.


%% Example:
%% create_broker_request() :: #{
%%   <<"AuthenticationStrategy">> => list(any()),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"BrokerName">> := string(),
%%   <<"Configuration">> => configuration_id(),
%%   <<"CreatorRequestId">> => string(),
%%   <<"DataReplicationMode">> => list(any()),
%%   <<"DataReplicationPrimaryBrokerArn">> => string(),
%%   <<"DeploymentMode">> := list(any()),
%%   <<"EncryptionOptions">> => encryption_options(),
%%   <<"EngineType">> := list(any()),
%%   <<"EngineVersion">> => string(),
%%   <<"HostInstanceType">> := string(),
%%   <<"LdapServerMetadata">> => ldap_server_metadata_input(),
%%   <<"Logs">> => logs(),
%%   <<"MaintenanceWindowStartTime">> => weekly_start_time(),
%%   <<"PubliclyAccessible">> := boolean(),
%%   <<"SecurityGroups">> => list(string()),
%%   <<"StorageType">> => list(any()),
%%   <<"SubnetIds">> => list(string()),
%%   <<"Tags">> => map(),
%%   <<"Users">> => list(user())
%% }
-type create_broker_request() :: #{binary() => any()}.


%% Example:
%% update_configuration_request() :: #{
%%   <<"Data">> := string(),
%%   <<"Description">> => string()
%% }
-type update_configuration_request() :: #{binary() => any()}.


%% Example:
%% describe_broker_engine_types_response() :: #{
%%   <<"BrokerEngineTypes">> => list(broker_engine_type()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_broker_engine_types_response() :: #{binary() => any()}.


%% Example:
%% create_broker_response() :: #{
%%   <<"BrokerArn">> => string(),
%%   <<"BrokerId">> => string()
%% }
-type create_broker_response() :: #{binary() => any()}.

%% Example:
%% update_user_response() :: #{}
-type update_user_response() :: #{}.


%% Example:
%% engine_version() :: #{
%%   <<"Name">> => string()
%% }
-type engine_version() :: #{binary() => any()}.


%% Example:
%% forbidden_exception() :: #{
%%   <<"ErrorAttribute">> => string(),
%%   <<"Message">> => string()
%% }
-type forbidden_exception() :: #{binary() => any()}.


%% Example:
%% list_configurations_response() :: #{
%%   <<"Configurations">> => list(configuration()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_configurations_response() :: #{binary() => any()}.

%% Example:
%% reboot_broker_response() :: #{}
-type reboot_broker_response() :: #{}.


%% Example:
%% data_replication_metadata_output() :: #{
%%   <<"DataReplicationCounterpart">> => data_replication_counterpart(),
%%   <<"DataReplicationRole">> => string()
%% }
-type data_replication_metadata_output() :: #{binary() => any()}.


%% Example:
%% list_tags_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_response() :: #{binary() => any()}.


%% Example:
%% delete_broker_response() :: #{
%%   <<"BrokerId">> => string()
%% }
-type delete_broker_response() :: #{binary() => any()}.


%% Example:
%% configuration() :: #{
%%   <<"Arn">> => string(),
%%   <<"AuthenticationStrategy">> => list(any()),
%%   <<"Created">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EngineType">> => list(any()),
%%   <<"EngineVersion">> => string(),
%%   <<"Id">> => string(),
%%   <<"LatestRevision">> => configuration_revision(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map()
%% }
-type configuration() :: #{binary() => any()}.


%% Example:
%% logs() :: #{
%%   <<"Audit">> => boolean(),
%%   <<"General">> => boolean()
%% }
-type logs() :: #{binary() => any()}.


%% Example:
%% encryption_options() :: #{
%%   <<"KmsKeyId">> => string(),
%%   <<"UseAwsOwnedKey">> => boolean()
%% }
-type encryption_options() :: #{binary() => any()}.


%% Example:
%% list_configurations_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_configurations_request() :: #{binary() => any()}.


%% Example:
%% delete_configuration_response() :: #{
%%   <<"ConfigurationId">> => string()
%% }
-type delete_configuration_response() :: #{binary() => any()}.


%% Example:
%% create_tags_request() :: #{
%%   <<"Tags">> => map()
%% }
-type create_tags_request() :: #{binary() => any()}.


%% Example:
%% pending_logs() :: #{
%%   <<"Audit">> => boolean(),
%%   <<"General">> => boolean()
%% }
-type pending_logs() :: #{binary() => any()}.


%% Example:
%% list_brokers_response() :: #{
%%   <<"BrokerSummaries">> => list(broker_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_brokers_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"ErrorAttribute">> => string(),
%%   <<"Message">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% delete_configuration_request() :: #{}
-type delete_configuration_request() :: #{}.


%% Example:
%% describe_broker_engine_types_request() :: #{
%%   <<"EngineType">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_broker_engine_types_request() :: #{binary() => any()}.


%% Example:
%% promote_request() :: #{
%%   <<"Mode">> := list(any())
%% }
-type promote_request() :: #{binary() => any()}.

%% Example:
%% reboot_broker_request() :: #{}
-type reboot_broker_request() :: #{}.

%% Example:
%% describe_configuration_revision_request() :: #{}
-type describe_configuration_revision_request() :: #{}.


%% Example:
%% list_users_response() :: #{
%%   <<"BrokerId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Users">> => list(user_summary())
%% }
-type list_users_response() :: #{binary() => any()}.


%% Example:
%% not_found_exception() :: #{
%%   <<"ErrorAttribute">> => string(),
%%   <<"Message">> => string()
%% }
-type not_found_exception() :: #{binary() => any()}.


%% Example:
%% broker_summary() :: #{
%%   <<"BrokerArn">> => string(),
%%   <<"BrokerId">> => string(),
%%   <<"BrokerName">> => string(),
%%   <<"BrokerState">> => list(any()),
%%   <<"Created">> => non_neg_integer(),
%%   <<"DeploymentMode">> => list(any()),
%%   <<"EngineType">> => list(any()),
%%   <<"HostInstanceType">> => string()
%% }
-type broker_summary() :: #{binary() => any()}.


%% Example:
%% create_configuration_request() :: #{
%%   <<"AuthenticationStrategy">> => list(any()),
%%   <<"EngineType">> := list(any()),
%%   <<"EngineVersion">> => string(),
%%   <<"Name">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_configuration_request() :: #{binary() => any()}.


%% Example:
%% list_configuration_revisions_response() :: #{
%%   <<"ConfigurationId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"Revisions">> => list(configuration_revision())
%% }
-type list_configuration_revisions_response() :: #{binary() => any()}.

%% Example:
%% delete_user_request() :: #{}
-type delete_user_request() :: #{}.


%% Example:
%% create_configuration_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AuthenticationStrategy">> => list(any()),
%%   <<"Created">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"LatestRevision">> => configuration_revision(),
%%   <<"Name">> => string()
%% }
-type create_configuration_response() :: #{binary() => any()}.


%% Example:
%% ldap_server_metadata_input() :: #{
%%   <<"Hosts">> => list(string()),
%%   <<"RoleBase">> => string(),
%%   <<"RoleName">> => string(),
%%   <<"RoleSearchMatching">> => string(),
%%   <<"RoleSearchSubtree">> => boolean(),
%%   <<"ServiceAccountPassword">> => string(),
%%   <<"ServiceAccountUsername">> => string(),
%%   <<"UserBase">> => string(),
%%   <<"UserRoleName">> => string(),
%%   <<"UserSearchMatching">> => string(),
%%   <<"UserSearchSubtree">> => boolean()
%% }
-type ldap_server_metadata_input() :: #{binary() => any()}.

%% Example:
%% delete_broker_request() :: #{}
-type delete_broker_request() :: #{}.

%% Example:
%% delete_user_response() :: #{}
-type delete_user_response() :: #{}.


%% Example:
%% describe_broker_instance_options_request() :: #{
%%   <<"EngineType">> => string(),
%%   <<"HostInstanceType">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"StorageType">> => string()
%% }
-type describe_broker_instance_options_request() :: #{binary() => any()}.


%% Example:
%% update_configuration_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"Created">> => non_neg_integer(),
%%   <<"Id">> => string(),
%%   <<"LatestRevision">> => configuration_revision(),
%%   <<"Name">> => string(),
%%   <<"Warnings">> => list(sanitization_warning())
%% }
-type update_configuration_response() :: #{binary() => any()}.


%% Example:
%% broker_engine_type() :: #{
%%   <<"EngineType">> => list(any()),
%%   <<"EngineVersions">> => list(engine_version())
%% }
-type broker_engine_type() :: #{binary() => any()}.


%% Example:
%% describe_configuration_revision_response() :: #{
%%   <<"ConfigurationId">> => string(),
%%   <<"Created">> => non_neg_integer(),
%%   <<"Data">> => string(),
%%   <<"Description">> => string()
%% }
-type describe_configuration_revision_response() :: #{binary() => any()}.


%% Example:
%% describe_user_response() :: #{
%%   <<"BrokerId">> => string(),
%%   <<"ConsoleAccess">> => boolean(),
%%   <<"Groups">> => list(string()),
%%   <<"Pending">> => user_pending_changes(),
%%   <<"ReplicationUser">> => boolean(),
%%   <<"Username">> => string()
%% }
-type describe_user_response() :: #{binary() => any()}.


%% Example:
%% ldap_server_metadata_output() :: #{
%%   <<"Hosts">> => list(string()),
%%   <<"RoleBase">> => string(),
%%   <<"RoleName">> => string(),
%%   <<"RoleSearchMatching">> => string(),
%%   <<"RoleSearchSubtree">> => boolean(),
%%   <<"ServiceAccountUsername">> => string(),
%%   <<"UserBase">> => string(),
%%   <<"UserRoleName">> => string(),
%%   <<"UserSearchMatching">> => string(),
%%   <<"UserSearchSubtree">> => boolean()
%% }
-type ldap_server_metadata_output() :: #{binary() => any()}.


%% Example:
%% broker_instance() :: #{
%%   <<"ConsoleURL">> => string(),
%%   <<"Endpoints">> => list(string()),
%%   <<"IpAddress">> => string()
%% }
-type broker_instance() :: #{binary() => any()}.


%% Example:
%% describe_configuration_response() :: #{
%%   <<"Arn">> => string(),
%%   <<"AuthenticationStrategy">> => list(any()),
%%   <<"Created">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"EngineType">> => list(any()),
%%   <<"EngineVersion">> => string(),
%%   <<"Id">> => string(),
%%   <<"LatestRevision">> => configuration_revision(),
%%   <<"Name">> => string(),
%%   <<"Tags">> => map()
%% }
-type describe_configuration_response() :: #{binary() => any()}.


%% Example:
%% weekly_start_time() :: #{
%%   <<"DayOfWeek">> => list(any()),
%%   <<"TimeOfDay">> => string(),
%%   <<"TimeZone">> => string()
%% }
-type weekly_start_time() :: #{binary() => any()}.

%% Example:
%% describe_user_request() :: #{}
-type describe_user_request() :: #{}.


%% Example:
%% update_user_request() :: #{
%%   <<"ConsoleAccess">> => boolean(),
%%   <<"Groups">> => list(string()),
%%   <<"Password">> => string(),
%%   <<"ReplicationUser">> => boolean()
%% }
-type update_user_request() :: #{binary() => any()}.


%% Example:
%% internal_server_error_exception() :: #{
%%   <<"ErrorAttribute">> => string(),
%%   <<"Message">> => string()
%% }
-type internal_server_error_exception() :: #{binary() => any()}.


%% Example:
%% user() :: #{
%%   <<"ConsoleAccess">> => boolean(),
%%   <<"Groups">> => list(string()),
%%   <<"Password">> => string(),
%%   <<"ReplicationUser">> => boolean(),
%%   <<"Username">> => string()
%% }
-type user() :: #{binary() => any()}.


%% Example:
%% logs_summary() :: #{
%%   <<"Audit">> => boolean(),
%%   <<"AuditLogGroup">> => string(),
%%   <<"General">> => boolean(),
%%   <<"GeneralLogGroup">> => string(),
%%   <<"Pending">> => pending_logs()
%% }
-type logs_summary() :: #{binary() => any()}.


%% Example:
%% list_users_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_users_request() :: #{binary() => any()}.

%% Example:
%% describe_broker_request() :: #{}
-type describe_broker_request() :: #{}.


%% Example:
%% broker_instance_option() :: #{
%%   <<"AvailabilityZones">> => list(availability_zone()),
%%   <<"EngineType">> => list(any()),
%%   <<"HostInstanceType">> => string(),
%%   <<"StorageType">> => list(any()),
%%   <<"SupportedDeploymentModes">> => list(list(any())()),
%%   <<"SupportedEngineVersions">> => list(string())
%% }
-type broker_instance_option() :: #{binary() => any()}.

%% Example:
%% describe_configuration_request() :: #{}
-type describe_configuration_request() :: #{}.


%% Example:
%% configuration_id() :: #{
%%   <<"Id">> => string(),
%%   <<"Revision">> => integer()
%% }
-type configuration_id() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"ErrorAttribute">> => string(),
%%   <<"Message">> => string()
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% update_broker_response() :: #{
%%   <<"AuthenticationStrategy">> => list(any()),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"BrokerId">> => string(),
%%   <<"Configuration">> => configuration_id(),
%%   <<"DataReplicationMetadata">> => data_replication_metadata_output(),
%%   <<"DataReplicationMode">> => list(any()),
%%   <<"EngineVersion">> => string(),
%%   <<"HostInstanceType">> => string(),
%%   <<"LdapServerMetadata">> => ldap_server_metadata_output(),
%%   <<"Logs">> => logs(),
%%   <<"MaintenanceWindowStartTime">> => weekly_start_time(),
%%   <<"PendingDataReplicationMetadata">> => data_replication_metadata_output(),
%%   <<"PendingDataReplicationMode">> => list(any()),
%%   <<"SecurityGroups">> => list(string())
%% }
-type update_broker_response() :: #{binary() => any()}.


%% Example:
%% data_replication_counterpart() :: #{
%%   <<"BrokerId">> => string(),
%%   <<"Region">> => string()
%% }
-type data_replication_counterpart() :: #{binary() => any()}.


%% Example:
%% configurations() :: #{
%%   <<"Current">> => configuration_id(),
%%   <<"History">> => list(configuration_id()),
%%   <<"Pending">> => configuration_id()
%% }
-type configurations() :: #{binary() => any()}.


%% Example:
%% configuration_revision() :: #{
%%   <<"Created">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Revision">> => integer()
%% }
-type configuration_revision() :: #{binary() => any()}.

%% Example:
%% list_tags_request() :: #{}
-type list_tags_request() :: #{}.


%% Example:
%% describe_broker_instance_options_response() :: #{
%%   <<"BrokerInstanceOptions">> => list(broker_instance_option()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type describe_broker_instance_options_response() :: #{binary() => any()}.


%% Example:
%% update_broker_request() :: #{
%%   <<"AuthenticationStrategy">> => list(any()),
%%   <<"AutoMinorVersionUpgrade">> => boolean(),
%%   <<"Configuration">> => configuration_id(),
%%   <<"DataReplicationMode">> => list(any()),
%%   <<"EngineVersion">> => string(),
%%   <<"HostInstanceType">> => string(),
%%   <<"LdapServerMetadata">> => ldap_server_metadata_input(),
%%   <<"Logs">> => logs(),
%%   <<"MaintenanceWindowStartTime">> => weekly_start_time(),
%%   <<"SecurityGroups">> => list(string())
%% }
-type update_broker_request() :: #{binary() => any()}.

%% Example:
%% create_user_response() :: #{}
-type create_user_response() :: #{}.


%% Example:
%% action_required() :: #{
%%   <<"ActionRequiredCode">> => string(),
%%   <<"ActionRequiredInfo">> => string()
%% }
-type action_required() :: #{binary() => any()}.


%% Example:
%% list_configuration_revisions_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_configuration_revisions_request() :: #{binary() => any()}.


%% Example:
%% list_brokers_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_brokers_request() :: #{binary() => any()}.


%% Example:
%% create_user_request() :: #{
%%   <<"ConsoleAccess">> => boolean(),
%%   <<"Groups">> => list(string()),
%%   <<"Password">> := string(),
%%   <<"ReplicationUser">> => boolean()
%% }
-type create_user_request() :: #{binary() => any()}.

-type create_broker_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    conflict_exception() | 
    forbidden_exception() | 
    unauthorized_exception().

-type create_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    conflict_exception() | 
    forbidden_exception().

-type create_tags_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type create_user_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    forbidden_exception().

-type delete_broker_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type delete_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    forbidden_exception().

-type delete_tags_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type delete_user_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type describe_broker_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type describe_broker_engine_types_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    forbidden_exception().

-type describe_broker_instance_options_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    forbidden_exception().

-type describe_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type describe_configuration_revision_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type describe_user_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type list_brokers_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    forbidden_exception().

-type list_configuration_revisions_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type list_configurations_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    forbidden_exception().

-type list_tags_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type list_users_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type promote_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type reboot_broker_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    forbidden_exception().

-type update_broker_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    forbidden_exception().

-type update_configuration_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    forbidden_exception().

-type update_user_errors() ::
    bad_request_exception() | 
    internal_server_error_exception() | 
    not_found_exception() | 
    conflict_exception() | 
    forbidden_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a broker.
%%
%% Note: This API is asynchronous.
%%
%% To create a broker, you must either use the AmazonMQFullAccess IAM policy
%% or include the following EC2 permissions in your IAM policy.
%%
%% ec2:CreateNetworkInterface
%%
%% This permission is required to allow Amazon MQ to create an elastic
%% network interface (ENI) on behalf of your account.
%%
%% ec2:CreateNetworkInterfacePermission
%%
%% This permission is required to attach the ENI to the broker instance.
%%
%% ec2:DeleteNetworkInterface
%%
%% ec2:DeleteNetworkInterfacePermission
%%
%% ec2:DetachNetworkInterface
%%
%% ec2:DescribeInternetGateways
%%
%% ec2:DescribeNetworkInterfaces
%%
%% ec2:DescribeNetworkInterfacePermissions
%%
%% ec2:DescribeRouteTables
%%
%% ec2:DescribeSecurityGroups
%%
%% ec2:DescribeSubnets
%%
%% ec2:DescribeVpcs
%%
%% For more information, see Create an IAM User and Get Your Amazon Web
%% Services Credentials:
%% https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/amazon-mq-setting-up.html#create-iam-user
%% and Never Modify or Delete the Amazon MQ Elastic Network Interface:
%% https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/connecting-to-amazon-mq.html#never-modify-delete-elastic-network-interface
%% in the Amazon MQ Developer Guide.
-spec create_broker(aws_client:aws_client(), create_broker_request()) ->
    {ok, create_broker_response(), tuple()} |
    {error, any()} |
    {error, create_broker_errors(), tuple()}.
create_broker(Client, Input) ->
    create_broker(Client, Input, []).

-spec create_broker(aws_client:aws_client(), create_broker_request(), proplists:proplist()) ->
    {ok, create_broker_response(), tuple()} |
    {error, any()} |
    {error, create_broker_errors(), tuple()}.
create_broker(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/brokers"],
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

%% @doc Creates a new configuration for the specified configuration name.
%%
%% Amazon MQ uses the default configuration (the engine type and version).
-spec create_configuration(aws_client:aws_client(), create_configuration_request()) ->
    {ok, create_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_configuration_errors(), tuple()}.
create_configuration(Client, Input) ->
    create_configuration(Client, Input, []).

-spec create_configuration(aws_client:aws_client(), create_configuration_request(), proplists:proplist()) ->
    {ok, create_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_configuration_errors(), tuple()}.
create_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/configurations"],
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

%% @doc Add a tag to a resource.
-spec create_tags(aws_client:aws_client(), binary() | list(), create_tags_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_tags_errors(), tuple()}.
create_tags(Client, ResourceArn, Input) ->
    create_tags(Client, ResourceArn, Input, []).

-spec create_tags(aws_client:aws_client(), binary() | list(), create_tags_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, create_tags_errors(), tuple()}.
create_tags(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Creates an ActiveMQ user.
%%
%% Do not add personally identifiable information (PII) or other confidential
%% or sensitive information in broker usernames. Broker usernames are
%% accessible to other Amazon Web Services services, including CloudWatch
%% Logs. Broker usernames are not intended to be used for private or
%% sensitive data.
-spec create_user(aws_client:aws_client(), binary() | list(), binary() | list(), create_user_request()) ->
    {ok, create_user_response(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, BrokerId, Username, Input) ->
    create_user(Client, BrokerId, Username, Input, []).

-spec create_user(aws_client:aws_client(), binary() | list(), binary() | list(), create_user_request(), proplists:proplist()) ->
    {ok, create_user_response(), tuple()} |
    {error, any()} |
    {error, create_user_errors(), tuple()}.
create_user(Client, BrokerId, Username, Input0, Options0) ->
    Method = post,
    Path = ["/v1/brokers/", aws_util:encode_uri(BrokerId), "/users/", aws_util:encode_uri(Username), ""],
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

%% @doc Deletes a broker.
%%
%% Note: This API is asynchronous.
-spec delete_broker(aws_client:aws_client(), binary() | list(), delete_broker_request()) ->
    {ok, delete_broker_response(), tuple()} |
    {error, any()} |
    {error, delete_broker_errors(), tuple()}.
delete_broker(Client, BrokerId, Input) ->
    delete_broker(Client, BrokerId, Input, []).

-spec delete_broker(aws_client:aws_client(), binary() | list(), delete_broker_request(), proplists:proplist()) ->
    {ok, delete_broker_response(), tuple()} |
    {error, any()} |
    {error, delete_broker_errors(), tuple()}.
delete_broker(Client, BrokerId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/brokers/", aws_util:encode_uri(BrokerId), ""],
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

%% @doc Deletes the specified configuration.
-spec delete_configuration(aws_client:aws_client(), binary() | list(), delete_configuration_request()) ->
    {ok, delete_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_configuration_errors(), tuple()}.
delete_configuration(Client, ConfigurationId, Input) ->
    delete_configuration(Client, ConfigurationId, Input, []).

-spec delete_configuration(aws_client:aws_client(), binary() | list(), delete_configuration_request(), proplists:proplist()) ->
    {ok, delete_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_configuration_errors(), tuple()}.
delete_configuration(Client, ConfigurationId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/configurations/", aws_util:encode_uri(ConfigurationId), ""],
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

%% @doc Removes a tag from a resource.
-spec delete_tags(aws_client:aws_client(), binary() | list(), delete_tags_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_tags_errors(), tuple()}.
delete_tags(Client, ResourceArn, Input) ->
    delete_tags(Client, ResourceArn, Input, []).

-spec delete_tags(aws_client:aws_client(), binary() | list(), delete_tags_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_tags_errors(), tuple()}.
delete_tags(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Deletes an ActiveMQ user.
-spec delete_user(aws_client:aws_client(), binary() | list(), binary() | list(), delete_user_request()) ->
    {ok, delete_user_response(), tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, BrokerId, Username, Input) ->
    delete_user(Client, BrokerId, Username, Input, []).

-spec delete_user(aws_client:aws_client(), binary() | list(), binary() | list(), delete_user_request(), proplists:proplist()) ->
    {ok, delete_user_response(), tuple()} |
    {error, any()} |
    {error, delete_user_errors(), tuple()}.
delete_user(Client, BrokerId, Username, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/brokers/", aws_util:encode_uri(BrokerId), "/users/", aws_util:encode_uri(Username), ""],
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

%% @doc Returns information about the specified broker.
-spec describe_broker(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_broker_response(), tuple()} |
    {error, any()} |
    {error, describe_broker_errors(), tuple()}.
describe_broker(Client, BrokerId)
  when is_map(Client) ->
    describe_broker(Client, BrokerId, #{}, #{}).

-spec describe_broker(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_broker_response(), tuple()} |
    {error, any()} |
    {error, describe_broker_errors(), tuple()}.
describe_broker(Client, BrokerId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_broker(Client, BrokerId, QueryMap, HeadersMap, []).

-spec describe_broker(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_broker_response(), tuple()} |
    {error, any()} |
    {error, describe_broker_errors(), tuple()}.
describe_broker(Client, BrokerId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/brokers/", aws_util:encode_uri(BrokerId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describe available engine types and versions.
-spec describe_broker_engine_types(aws_client:aws_client()) ->
    {ok, describe_broker_engine_types_response(), tuple()} |
    {error, any()} |
    {error, describe_broker_engine_types_errors(), tuple()}.
describe_broker_engine_types(Client)
  when is_map(Client) ->
    describe_broker_engine_types(Client, #{}, #{}).

-spec describe_broker_engine_types(aws_client:aws_client(), map(), map()) ->
    {ok, describe_broker_engine_types_response(), tuple()} |
    {error, any()} |
    {error, describe_broker_engine_types_errors(), tuple()}.
describe_broker_engine_types(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_broker_engine_types(Client, QueryMap, HeadersMap, []).

-spec describe_broker_engine_types(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_broker_engine_types_response(), tuple()} |
    {error, any()} |
    {error, describe_broker_engine_types_errors(), tuple()}.
describe_broker_engine_types(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/broker-engine-types"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"engineType">>, maps:get(<<"engineType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describe available broker instance options.
-spec describe_broker_instance_options(aws_client:aws_client()) ->
    {ok, describe_broker_instance_options_response(), tuple()} |
    {error, any()} |
    {error, describe_broker_instance_options_errors(), tuple()}.
describe_broker_instance_options(Client)
  when is_map(Client) ->
    describe_broker_instance_options(Client, #{}, #{}).

-spec describe_broker_instance_options(aws_client:aws_client(), map(), map()) ->
    {ok, describe_broker_instance_options_response(), tuple()} |
    {error, any()} |
    {error, describe_broker_instance_options_errors(), tuple()}.
describe_broker_instance_options(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_broker_instance_options(Client, QueryMap, HeadersMap, []).

-spec describe_broker_instance_options(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, describe_broker_instance_options_response(), tuple()} |
    {error, any()} |
    {error, describe_broker_instance_options_errors(), tuple()}.
describe_broker_instance_options(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/broker-instance-options"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"engineType">>, maps:get(<<"engineType">>, QueryMap, undefined)},
        {<<"hostInstanceType">>, maps:get(<<"hostInstanceType">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"storageType">>, maps:get(<<"storageType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about the specified configuration.
-spec describe_configuration(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_errors(), tuple()}.
describe_configuration(Client, ConfigurationId)
  when is_map(Client) ->
    describe_configuration(Client, ConfigurationId, #{}, #{}).

-spec describe_configuration(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_errors(), tuple()}.
describe_configuration(Client, ConfigurationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_configuration(Client, ConfigurationId, QueryMap, HeadersMap, []).

-spec describe_configuration(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_configuration_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_errors(), tuple()}.
describe_configuration(Client, ConfigurationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/configurations/", aws_util:encode_uri(ConfigurationId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the specified configuration revision for the specified
%% configuration.
-spec describe_configuration_revision(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_configuration_revision_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_revision_errors(), tuple()}.
describe_configuration_revision(Client, ConfigurationId, ConfigurationRevision)
  when is_map(Client) ->
    describe_configuration_revision(Client, ConfigurationId, ConfigurationRevision, #{}, #{}).

-spec describe_configuration_revision(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_configuration_revision_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_revision_errors(), tuple()}.
describe_configuration_revision(Client, ConfigurationId, ConfigurationRevision, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_configuration_revision(Client, ConfigurationId, ConfigurationRevision, QueryMap, HeadersMap, []).

-spec describe_configuration_revision(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_configuration_revision_response(), tuple()} |
    {error, any()} |
    {error, describe_configuration_revision_errors(), tuple()}.
describe_configuration_revision(Client, ConfigurationId, ConfigurationRevision, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/configurations/", aws_util:encode_uri(ConfigurationId), "/revisions/", aws_util:encode_uri(ConfigurationRevision), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns information about an ActiveMQ user.
-spec describe_user(aws_client:aws_client(), binary() | list(), binary() | list()) ->
    {ok, describe_user_response(), tuple()} |
    {error, any()} |
    {error, describe_user_errors(), tuple()}.
describe_user(Client, BrokerId, Username)
  when is_map(Client) ->
    describe_user(Client, BrokerId, Username, #{}, #{}).

-spec describe_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map()) ->
    {ok, describe_user_response(), tuple()} |
    {error, any()} |
    {error, describe_user_errors(), tuple()}.
describe_user(Client, BrokerId, Username, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_user(Client, BrokerId, Username, QueryMap, HeadersMap, []).

-spec describe_user(aws_client:aws_client(), binary() | list(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_user_response(), tuple()} |
    {error, any()} |
    {error, describe_user_errors(), tuple()}.
describe_user(Client, BrokerId, Username, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/brokers/", aws_util:encode_uri(BrokerId), "/users/", aws_util:encode_uri(Username), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all brokers.
-spec list_brokers(aws_client:aws_client()) ->
    {ok, list_brokers_response(), tuple()} |
    {error, any()} |
    {error, list_brokers_errors(), tuple()}.
list_brokers(Client)
  when is_map(Client) ->
    list_brokers(Client, #{}, #{}).

-spec list_brokers(aws_client:aws_client(), map(), map()) ->
    {ok, list_brokers_response(), tuple()} |
    {error, any()} |
    {error, list_brokers_errors(), tuple()}.
list_brokers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_brokers(Client, QueryMap, HeadersMap, []).

-spec list_brokers(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_brokers_response(), tuple()} |
    {error, any()} |
    {error, list_brokers_errors(), tuple()}.
list_brokers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/brokers"],
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

%% @doc Returns a list of all revisions for the specified configuration.
-spec list_configuration_revisions(aws_client:aws_client(), binary() | list()) ->
    {ok, list_configuration_revisions_response(), tuple()} |
    {error, any()} |
    {error, list_configuration_revisions_errors(), tuple()}.
list_configuration_revisions(Client, ConfigurationId)
  when is_map(Client) ->
    list_configuration_revisions(Client, ConfigurationId, #{}, #{}).

-spec list_configuration_revisions(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_configuration_revisions_response(), tuple()} |
    {error, any()} |
    {error, list_configuration_revisions_errors(), tuple()}.
list_configuration_revisions(Client, ConfigurationId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configuration_revisions(Client, ConfigurationId, QueryMap, HeadersMap, []).

-spec list_configuration_revisions(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_configuration_revisions_response(), tuple()} |
    {error, any()} |
    {error, list_configuration_revisions_errors(), tuple()}.
list_configuration_revisions(Client, ConfigurationId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/configurations/", aws_util:encode_uri(ConfigurationId), "/revisions"],
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

%% @doc Returns a list of all configurations.
-spec list_configurations(aws_client:aws_client()) ->
    {ok, list_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_configurations_errors(), tuple()}.
list_configurations(Client)
  when is_map(Client) ->
    list_configurations(Client, #{}, #{}).

-spec list_configurations(aws_client:aws_client(), map(), map()) ->
    {ok, list_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_configurations_errors(), tuple()}.
list_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_configurations(Client, QueryMap, HeadersMap, []).

-spec list_configurations(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_configurations_response(), tuple()} |
    {error, any()} |
    {error, list_configurations_errors(), tuple()}.
list_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/configurations"],
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

%% @doc Lists tags for a resource.
-spec list_tags(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, ResourceArn)
  when is_map(Client) ->
    list_tags(Client, ResourceArn, #{}, #{}).

-spec list_tags(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_response(), tuple()} |
    {error, any()} |
    {error, list_tags_errors(), tuple()}.
list_tags(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of all ActiveMQ users.
-spec list_users(aws_client:aws_client(), binary() | list()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, BrokerId)
  when is_map(Client) ->
    list_users(Client, BrokerId, #{}, #{}).

-spec list_users(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, BrokerId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_users(Client, BrokerId, QueryMap, HeadersMap, []).

-spec list_users(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_users_response(), tuple()} |
    {error, any()} |
    {error, list_users_errors(), tuple()}.
list_users(Client, BrokerId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/brokers/", aws_util:encode_uri(BrokerId), "/users"],
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

%% @doc Promotes a data replication replica broker to the primary broker
%% role.
-spec promote(aws_client:aws_client(), binary() | list(), promote_request()) ->
    {ok, promote_response(), tuple()} |
    {error, any()} |
    {error, promote_errors(), tuple()}.
promote(Client, BrokerId, Input) ->
    promote(Client, BrokerId, Input, []).

-spec promote(aws_client:aws_client(), binary() | list(), promote_request(), proplists:proplist()) ->
    {ok, promote_response(), tuple()} |
    {error, any()} |
    {error, promote_errors(), tuple()}.
promote(Client, BrokerId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/brokers/", aws_util:encode_uri(BrokerId), "/promote"],
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

%% @doc Reboots a broker.
%%
%% Note: This API is asynchronous.
-spec reboot_broker(aws_client:aws_client(), binary() | list(), reboot_broker_request()) ->
    {ok, reboot_broker_response(), tuple()} |
    {error, any()} |
    {error, reboot_broker_errors(), tuple()}.
reboot_broker(Client, BrokerId, Input) ->
    reboot_broker(Client, BrokerId, Input, []).

-spec reboot_broker(aws_client:aws_client(), binary() | list(), reboot_broker_request(), proplists:proplist()) ->
    {ok, reboot_broker_response(), tuple()} |
    {error, any()} |
    {error, reboot_broker_errors(), tuple()}.
reboot_broker(Client, BrokerId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/brokers/", aws_util:encode_uri(BrokerId), "/reboot"],
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

%% @doc Adds a pending configuration change to a broker.
-spec update_broker(aws_client:aws_client(), binary() | list(), update_broker_request()) ->
    {ok, update_broker_response(), tuple()} |
    {error, any()} |
    {error, update_broker_errors(), tuple()}.
update_broker(Client, BrokerId, Input) ->
    update_broker(Client, BrokerId, Input, []).

-spec update_broker(aws_client:aws_client(), binary() | list(), update_broker_request(), proplists:proplist()) ->
    {ok, update_broker_response(), tuple()} |
    {error, any()} |
    {error, update_broker_errors(), tuple()}.
update_broker(Client, BrokerId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/brokers/", aws_util:encode_uri(BrokerId), ""],
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

%% @doc Updates the specified configuration.
-spec update_configuration(aws_client:aws_client(), binary() | list(), update_configuration_request()) ->
    {ok, update_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_configuration_errors(), tuple()}.
update_configuration(Client, ConfigurationId, Input) ->
    update_configuration(Client, ConfigurationId, Input, []).

-spec update_configuration(aws_client:aws_client(), binary() | list(), update_configuration_request(), proplists:proplist()) ->
    {ok, update_configuration_response(), tuple()} |
    {error, any()} |
    {error, update_configuration_errors(), tuple()}.
update_configuration(Client, ConfigurationId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/configurations/", aws_util:encode_uri(ConfigurationId), ""],
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

%% @doc Updates the information for an ActiveMQ user.
-spec update_user(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_request()) ->
    {ok, update_user_response(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, BrokerId, Username, Input) ->
    update_user(Client, BrokerId, Username, Input, []).

-spec update_user(aws_client:aws_client(), binary() | list(), binary() | list(), update_user_request(), proplists:proplist()) ->
    {ok, update_user_response(), tuple()} |
    {error, any()} |
    {error, update_user_errors(), tuple()}.
update_user(Client, BrokerId, Username, Input0, Options0) ->
    Method = put,
    Path = ["/v1/brokers/", aws_util:encode_uri(BrokerId), "/users/", aws_util:encode_uri(Username), ""],
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
    Client1 = Client#{service => <<"mq">>},
    Host = build_host(<<"mq">>, Client1),
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
