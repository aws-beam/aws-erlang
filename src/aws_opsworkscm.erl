%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc OpsWorks CM
%%
%% The OpsWorks services have reached end of life and have been disabled for
%% both new and existing customers.
%%
%% We strongly recommend customers migrate their workloads to other solutions
%% as soon as possible. If you have questions about migration, reach out to
%% the Amazon Web ServicesSupport Team on Amazon Web Services re:Post:
%% https://repost.aws/ or through Amazon Web Services Premium Support:
%% https://aws.amazon.com/support.
%%
%% OpsWorks CM is a service that runs and manages
%% configuration management servers. You can use OpsWorks CM to create and
%% manage OpsWorks for Chef Automate and
%% OpsWorks for Puppet Enterprise servers, and add or remove
%% nodes for the servers to manage.
%%
%% Glossary of terms
%%
%% Server: A configuration management server that can be
%% highly-available. The configuration management server runs on
%% an Amazon Elastic Compute Cloud (EC2) instance, and may use various other
%% Amazon Web Services services, such as Amazon Relational Database Service
%% (RDS) and Elastic Load Balancing. A server is a generic abstraction over
%% the configuration
%% manager that you want to use, much like Amazon RDS. In OpsWorks CM, you do
%% not start
%% or stop servers. After you create servers, they continue to run until they
%% are deleted.
%%
%% Engine: The engine is the specific configuration manager
%% that you want to use. Valid values in this release include
%% `ChefAutomate' and `Puppet'.
%%
%% Backup: This
%% is an application-level backup of the data that the configuration manager
%% stores. OpsWorks CM
%% creates an S3 bucket for backups when you launch the first
%% server. A backup maintains a snapshot of a server's
%% configuration-related
%% attributes at the time the backup starts.
%%
%% Events:
%% Events are always related to a server. Events are written
%% during server creation, when health checks run, when backups
%% are created, when system maintenance is performed, etc. When you delete a
%% server, the server's events are
%% also deleted.
%%
%% Account attributes:
%% Every account has attributes that are assigned in the OpsWorks CM
%% database. These attributes store information about configuration limits
%% (servers,
%% backups, etc.) and your customer account.
%%
%% Endpoints
%%
%% OpsWorks CM supports the following endpoints, all HTTPS. You must connect
%% to one of the following endpoints.
%% Your servers
%% can only be accessed or managed within the endpoint in which they are
%% created.
%%
%% opsworks-cm.us-east-1.amazonaws.com
%%
%% opsworks-cm.us-east-2.amazonaws.com
%%
%% opsworks-cm.us-west-1.amazonaws.com
%%
%% opsworks-cm.us-west-2.amazonaws.com
%%
%% opsworks-cm.ap-northeast-1.amazonaws.com
%%
%% opsworks-cm.ap-southeast-1.amazonaws.com
%%
%% opsworks-cm.ap-southeast-2.amazonaws.com
%%
%% opsworks-cm.eu-central-1.amazonaws.com
%%
%% opsworks-cm.eu-west-1.amazonaws.com
%%
%% For more information, see OpsWorks endpoints and quotas:
%% https://docs.aws.amazon.com/general/latest/gr/opsworks-service.html in the
%% Amazon Web Services General Reference.
%%
%% Throttling limits
%%
%% All API operations allow for five requests per second with a burst of 10
%% requests per second.
-module(aws_opsworkscm).

-export([associate_node/2,
         associate_node/3,
         create_backup/2,
         create_backup/3,
         create_server/2,
         create_server/3,
         delete_backup/2,
         delete_backup/3,
         delete_server/2,
         delete_server/3,
         describe_account_attributes/2,
         describe_account_attributes/3,
         describe_backups/2,
         describe_backups/3,
         describe_events/2,
         describe_events/3,
         describe_node_association_status/2,
         describe_node_association_status/3,
         describe_servers/2,
         describe_servers/3,
         disassociate_node/2,
         disassociate_node/3,
         export_server_engine_attribute/2,
         export_server_engine_attribute/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         restore_server/2,
         restore_server/3,
         start_maintenance/2,
         start_maintenance/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_server/2,
         update_server/3,
         update_server_engine_attributes/2,
         update_server_engine_attributes/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% describe_node_association_status_response() :: #{
%%   <<"EngineAttributes">> => list(engine_attribute()),
%%   <<"NodeAssociationStatus">> => list(any())
%% }
-type describe_node_association_status_response() :: #{binary() => any()}.

%% Example:
%% export_server_engine_attribute_response() :: #{
%%   <<"EngineAttribute">> => engine_attribute(),
%%   <<"ServerName">> => string()
%% }
-type export_server_engine_attribute_response() :: #{binary() => any()}.

%% Example:
%% associate_node_response() :: #{
%%   <<"NodeAssociationStatusToken">> => string()
%% }
-type associate_node_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"Tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% update_server_response() :: #{
%%   <<"Server">> => server()
%% }
-type update_server_response() :: #{binary() => any()}.

%% Example:
%% update_server_request() :: #{
%%   <<"BackupRetentionCount">> => integer(),
%%   <<"DisableAutomatedBackup">> => boolean(),
%%   <<"PreferredBackupWindow">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"ServerName">> := string()
%% }
-type update_server_request() :: #{binary() => any()}.

%% Example:
%% start_maintenance_request() :: #{
%%   <<"EngineAttributes">> => list(engine_attribute()),
%%   <<"ServerName">> := string()
%% }
-type start_maintenance_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% update_server_engine_attributes_request() :: #{
%%   <<"AttributeName">> := string(),
%%   <<"AttributeValue">> => string(),
%%   <<"ServerName">> := string()
%% }
-type update_server_engine_attributes_request() :: #{binary() => any()}.

%% Example:
%% restore_server_response() :: #{
%%   <<"Server">> => server()
%% }
-type restore_server_response() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% invalid_state_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_state_exception() :: #{binary() => any()}.

%% Example:
%% create_server_request() :: #{
%%   <<"AssociatePublicIpAddress">> => boolean(),
%%   <<"BackupId">> => string(),
%%   <<"BackupRetentionCount">> => integer(),
%%   <<"CustomCertificate">> => string(),
%%   <<"CustomDomain">> => string(),
%%   <<"CustomPrivateKey">> => string(),
%%   <<"DisableAutomatedBackup">> => boolean(),
%%   <<"Engine">> := string(),
%%   <<"EngineAttributes">> => list(engine_attribute()),
%%   <<"EngineModel">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"InstanceProfileArn">> := string(),
%%   <<"InstanceType">> := string(),
%%   <<"KeyPair">> => string(),
%%   <<"PreferredBackupWindow">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"ServerName">> := string(),
%%   <<"ServiceRoleArn">> := string(),
%%   <<"SubnetIds">> => list(string()),
%%   <<"Tags">> => list(tag())
%% }
-type create_server_request() :: #{binary() => any()}.

%% Example:
%% restore_server_request() :: #{
%%   <<"BackupId">> := string(),
%%   <<"InstanceType">> => string(),
%%   <<"KeyPair">> => string(),
%%   <<"ServerName">> := string()
%% }
-type restore_server_request() :: #{binary() => any()}.

%% Example:
%% engine_attribute() :: #{
%%   <<"Name">> => string(),
%%   <<"Value">> => string()
%% }
-type engine_attribute() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% describe_backups_request() :: #{
%%   <<"BackupId">> => string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ServerName">> => string()
%% }
-type describe_backups_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% create_server_response() :: #{
%%   <<"Server">> => server()
%% }
-type create_server_response() :: #{binary() => any()}.

%% Example:
%% invalid_next_token_exception() :: #{
%%   <<"Message">> => string()
%% }
-type invalid_next_token_exception() :: #{binary() => any()}.

%% Example:
%% delete_backup_response() :: #{

%% }
-type delete_backup_response() :: #{binary() => any()}.

%% Example:
%% describe_node_association_status_request() :: #{
%%   <<"NodeAssociationStatusToken">> := string(),
%%   <<"ServerName">> := string()
%% }
-type describe_node_association_status_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% describe_account_attributes_response() :: #{
%%   <<"Attributes">> => list(account_attribute())
%% }
-type describe_account_attributes_response() :: #{binary() => any()}.

%% Example:
%% export_server_engine_attribute_request() :: #{
%%   <<"ExportAttributeName">> := string(),
%%   <<"InputAttributes">> => list(engine_attribute()),
%%   <<"ServerName">> := string()
%% }
-type export_server_engine_attribute_request() :: #{binary() => any()}.

%% Example:
%% backup() :: #{
%%   <<"BackupArn">> => string(),
%%   <<"BackupId">> => string(),
%%   <<"BackupType">> => list(any()),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"Description">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EngineModel">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"InstanceProfileArn">> => string(),
%%   <<"InstanceType">> => string(),
%%   <<"KeyPair">> => string(),
%%   <<"PreferredBackupWindow">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"S3DataSize">> => integer(),
%%   <<"S3DataUrl">> => string(),
%%   <<"S3LogUrl">> => string(),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"ServerName">> => string(),
%%   <<"ServiceRoleArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusDescription">> => string(),
%%   <<"SubnetIds">> => list(string()),
%%   <<"ToolsVersion">> => string(),
%%   <<"UserArn">> => string()
%% }
-type backup() :: #{binary() => any()}.

%% Example:
%% describe_events_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ServerName">> := string()
%% }
-type describe_events_request() :: #{binary() => any()}.

%% Example:
%% disassociate_node_request() :: #{
%%   <<"EngineAttributes">> => list(engine_attribute()),
%%   <<"NodeName">> := string(),
%%   <<"ServerName">> := string()
%% }
-type disassociate_node_request() :: #{binary() => any()}.

%% Example:
%% delete_server_response() :: #{

%% }
-type delete_server_response() :: #{binary() => any()}.

%% Example:
%% update_server_engine_attributes_response() :: #{
%%   <<"Server">> => server()
%% }
-type update_server_engine_attributes_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% server() :: #{
%%   <<"AssociatePublicIpAddress">> => boolean(),
%%   <<"BackupRetentionCount">> => integer(),
%%   <<"CloudFormationStackArn">> => string(),
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"CustomDomain">> => string(),
%%   <<"DisableAutomatedBackup">> => boolean(),
%%   <<"Endpoint">> => string(),
%%   <<"Engine">> => string(),
%%   <<"EngineAttributes">> => list(engine_attribute()),
%%   <<"EngineModel">> => string(),
%%   <<"EngineVersion">> => string(),
%%   <<"InstanceProfileArn">> => string(),
%%   <<"InstanceType">> => string(),
%%   <<"KeyPair">> => string(),
%%   <<"MaintenanceStatus">> => list(any()),
%%   <<"PreferredBackupWindow">> => string(),
%%   <<"PreferredMaintenanceWindow">> => string(),
%%   <<"SecurityGroupIds">> => list(string()),
%%   <<"ServerArn">> => string(),
%%   <<"ServerName">> => string(),
%%   <<"ServiceRoleArn">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => string(),
%%   <<"SubnetIds">> => list(string())
%% }
-type server() :: #{binary() => any()}.

%% Example:
%% describe_servers_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ServerName">> => string()
%% }
-type describe_servers_request() :: #{binary() => any()}.

%% Example:
%% associate_node_request() :: #{
%%   <<"EngineAttributes">> := list(engine_attribute()),
%%   <<"NodeName">> := string(),
%%   <<"ServerName">> := string()
%% }
-type associate_node_request() :: #{binary() => any()}.

%% Example:
%% describe_servers_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"Servers">> => list(server())
%% }
-type describe_servers_response() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string(),
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% start_maintenance_response() :: #{
%%   <<"Server">> => server()
%% }
-type start_maintenance_response() :: #{binary() => any()}.

%% Example:
%% account_attribute() :: #{
%%   <<"Maximum">> => integer(),
%%   <<"Name">> => string(),
%%   <<"Used">> => integer()
%% }
-type account_attribute() :: #{binary() => any()}.

%% Example:
%% limit_exceeded_exception() :: #{
%%   <<"Message">> => string()
%% }
-type limit_exceeded_exception() :: #{binary() => any()}.

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
%% create_backup_request() :: #{
%%   <<"Description">> => string(),
%%   <<"ServerName">> := string(),
%%   <<"Tags">> => list(tag())
%% }
-type create_backup_request() :: #{binary() => any()}.

%% Example:
%% disassociate_node_response() :: #{
%%   <<"NodeAssociationStatusToken">> => string()
%% }
-type disassociate_node_response() :: #{binary() => any()}.

%% Example:
%% resource_already_exists_exception() :: #{
%%   <<"Message">> => string()
%% }
-type resource_already_exists_exception() :: #{binary() => any()}.

%% Example:
%% server_event() :: #{
%%   <<"CreatedAt">> => non_neg_integer(),
%%   <<"LogUrl">> => string(),
%%   <<"Message">> => string(),
%%   <<"ServerName">> => string()
%% }
-type server_event() :: #{binary() => any()}.

%% Example:
%% describe_account_attributes_request() :: #{

%% }
-type describe_account_attributes_request() :: #{binary() => any()}.

%% Example:
%% create_backup_response() :: #{
%%   <<"Backup">> => backup()
%% }
-type create_backup_response() :: #{binary() => any()}.

%% Example:
%% describe_events_response() :: #{
%%   <<"NextToken">> => string(),
%%   <<"ServerEvents">> => list(server_event())
%% }
-type describe_events_response() :: #{binary() => any()}.

%% Example:
%% delete_server_request() :: #{
%%   <<"ServerName">> := string()
%% }
-type delete_server_request() :: #{binary() => any()}.

-type associate_node_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type create_backup_errors() ::
    limit_exceeded_exception() | 
    validation_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type create_server_errors() ::
    resource_already_exists_exception() | 
    limit_exceeded_exception() | 
    validation_exception() | 
    resource_not_found_exception().

-type delete_backup_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type delete_server_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type describe_backups_errors() ::
    validation_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception().

-type describe_events_errors() ::
    validation_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception().

-type describe_node_association_status_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type describe_servers_errors() ::
    validation_exception() | 
    invalid_next_token_exception() | 
    resource_not_found_exception().

-type disassociate_node_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type export_server_engine_attribute_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception().

-type restore_server_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type start_maintenance_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type update_server_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type update_server_engine_attributes_errors() ::
    validation_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a new node with the server.
%%
%% For more information about how to disassociate a node, see
%% `DisassociateNode'.
%%
%% On a Chef server: This command is an alternative to `knife bootstrap'.
%%
%% Example (Chef): `aws opsworks-cm associate-node --server-name MyServer
%% --node-name MyManagedNode --engine-attributes
%% &quot;Name=CHEF_ORGANIZATION,Value=default&quot;
%% &quot;Name=CHEF_AUTOMATE_NODE_PUBLIC_KEY,Value=public-key-pem&quot;'
%%
%% On a Puppet server, this command is an alternative to the `puppet cert
%% sign' command that signs a Puppet node CSR.
%%
%% Example (Puppet): `aws opsworks-cm associate-node --server-name MyServer
%% --node-name MyManagedNode --engine-attributes
%% &quot;Name=PUPPET_NODE_CSR,Value=csr-pem&quot;'
%%
%% A node can can only be associated with servers that are in a `HEALTHY'
%% state. Otherwise, an `InvalidStateException' is thrown.
%% A `ResourceNotFoundException' is thrown when the server does not
%% exist. A `ValidationException' is raised when parameters of the
%% request are not valid.
%% The AssociateNode API call can be integrated into Auto Scaling
%% configurations, CloudFormation templates, or the user data
%% of a server's instance.
-spec associate_node(aws_client:aws_client(), associate_node_request()) ->
    {ok, associate_node_response(), tuple()} |
    {error, any()} |
    {error, associate_node_errors(), tuple()}.
associate_node(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_node(Client, Input, []).

-spec associate_node(aws_client:aws_client(), associate_node_request(), proplists:proplist()) ->
    {ok, associate_node_response(), tuple()} |
    {error, any()} |
    {error, associate_node_errors(), tuple()}.
associate_node(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateNode">>, Input, Options).

%% @doc
%% Creates an application-level backup of a server.
%%
%% While the
%% server is in the `BACKING_UP' state, the server cannot be
%% changed, and no additional backup can be created.
%%
%% Backups can be created for servers in `RUNNING', `HEALTHY', and
%% `UNHEALTHY' states.
%% By default, you can create a maximum of 50
%% manual backups.
%%
%% This operation is asynchronous.
%%
%% A `LimitExceededException' is thrown when the maximum number of manual
%% backups is reached.
%% An `InvalidStateException' is thrown when the server is not in any of
%% the following states: RUNNING, HEALTHY, or UNHEALTHY.
%% A `ResourceNotFoundException' is thrown when the server is not found.
%% A `ValidationException' is thrown when parameters of the request are
%% not valid.
-spec create_backup(aws_client:aws_client(), create_backup_request()) ->
    {ok, create_backup_response(), tuple()} |
    {error, any()} |
    {error, create_backup_errors(), tuple()}.
create_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_backup(Client, Input, []).

-spec create_backup(aws_client:aws_client(), create_backup_request(), proplists:proplist()) ->
    {ok, create_backup_response(), tuple()} |
    {error, any()} |
    {error, create_backup_errors(), tuple()}.
create_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateBackup">>, Input, Options).

%% @doc
%% Creates and immedately starts a new server.
%%
%% The server is ready to use when it is in the `HEALTHY' state. By
%% default, you can create a maximum of 10 servers.
%%
%% This operation is asynchronous.
%%
%% A `LimitExceededException' is thrown when you have created the maximum
%% number of servers (10). A
%% `ResourceAlreadyExistsException'
%% is thrown when a server with the same name already exists in the account.
%% A `ResourceNotFoundException' is thrown when
%% you
%% specify a backup ID that is not valid or is for a backup that does not
%% exist. A `ValidationException' is thrown when
%% parameters
%% of the request are not valid.
%%
%% If you do not specify a security group by adding the
%% `SecurityGroupIds' parameter, OpsWorks creates a new
%% security group.
%%
%% Chef Automate: The default security group opens the Chef server to the
%% world on TCP port 443. If
%% a KeyName is present, OpsWorks enables SSH access. SSH is also open to the
%% world on TCP port 22.
%%
%% Puppet Enterprise: The default security group opens TCP ports 22, 443,
%% 4433, 8140, 8142, 8143, and 8170. If a KeyName is present, OpsWorks
%% enables SSH access. SSH is also open to the world on TCP port 22.
%%
%% By default, your server is accessible from any IP address. We
%% recommend that you update your security group rules to allow
%% access from known IP addresses and address ranges only. To edit security
%% group rules, open Security Groups
%% in the navigation pane of the EC2 management console.
%%
%% To specify your own domain for a server, and provide your own self-signed
%% or CA-signed certificate and private key,
%% specify values for `CustomDomain',
%% `CustomCertificate', and `CustomPrivateKey'.
-spec create_server(aws_client:aws_client(), create_server_request()) ->
    {ok, create_server_response(), tuple()} |
    {error, any()} |
    {error, create_server_errors(), tuple()}.
create_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_server(Client, Input, []).

-spec create_server(aws_client:aws_client(), create_server_request(), proplists:proplist()) ->
    {ok, create_server_response(), tuple()} |
    {error, any()} |
    {error, create_server_errors(), tuple()}.
create_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateServer">>, Input, Options).

%% @doc
%% Deletes a backup.
%%
%% You can delete both manual and automated backups. This operation is
%% asynchronous.
%%
%% An `InvalidStateException' is thrown when a backup deletion is already
%% in progress.
%% A `ResourceNotFoundException' is thrown when the backup does not
%% exist.
%% A `ValidationException' is thrown when parameters of the request are
%% not valid.
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

%% @doc
%% Deletes the server and the underlying CloudFormation stacks
%% (including the server's EC2 instance).
%%
%% When you run this command, the server state is updated
%% to `DELETING'. After the server is deleted, it is no longer returned
%% by
%% `DescribeServer' requests. If the CloudFormation stack cannot be
%% deleted, the server cannot be deleted.
%%
%% This operation is asynchronous.
%%
%% An `InvalidStateException' is thrown when a server deletion is already
%% in progress.
%% A `ResourceNotFoundException' is thrown when the server does not
%% exist.
%% A `ValidationException' is raised when parameters of the request are
%% not valid.
-spec delete_server(aws_client:aws_client(), delete_server_request()) ->
    {ok, delete_server_response(), tuple()} |
    {error, any()} |
    {error, delete_server_errors(), tuple()}.
delete_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_server(Client, Input, []).

-spec delete_server(aws_client:aws_client(), delete_server_request(), proplists:proplist()) ->
    {ok, delete_server_response(), tuple()} |
    {error, any()} |
    {error, delete_server_errors(), tuple()}.
delete_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServer">>, Input, Options).

%% @doc
%% Describes your OpsWorks CM account attributes.
%%
%% This operation is synchronous.
-spec describe_account_attributes(aws_client:aws_client(), describe_account_attributes_request()) ->
    {ok, describe_account_attributes_response(), tuple()} |
    {error, any()}.
describe_account_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_attributes(Client, Input, []).

-spec describe_account_attributes(aws_client:aws_client(), describe_account_attributes_request(), proplists:proplist()) ->
    {ok, describe_account_attributes_response(), tuple()} |
    {error, any()}.
describe_account_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountAttributes">>, Input, Options).

%% @doc
%% Describes backups.
%%
%% The results are ordered by time, with newest backups first.
%% If you do not specify a BackupId or ServerName, the command returns all
%% backups.
%%
%% This operation is synchronous.
%%
%% A `ResourceNotFoundException' is thrown when the backup does not
%% exist.
%% A `ValidationException' is raised when parameters of the request are
%% not valid.
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

%% @doc
%% Describes events for a specified server.
%%
%% Results are ordered by time, with newest events first.
%%
%% This operation is synchronous.
%%
%% A `ResourceNotFoundException' is thrown when the server does not
%% exist.
%% A `ValidationException' is raised when parameters of the request are
%% not valid.
-spec describe_events(aws_client:aws_client(), describe_events_request()) ->
    {ok, describe_events_response(), tuple()} |
    {error, any()} |
    {error, describe_events_errors(), tuple()}.
describe_events(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_events(Client, Input, []).

-spec describe_events(aws_client:aws_client(), describe_events_request(), proplists:proplist()) ->
    {ok, describe_events_response(), tuple()} |
    {error, any()} |
    {error, describe_events_errors(), tuple()}.
describe_events(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEvents">>, Input, Options).

%% @doc
%% Returns the current status of an existing association or disassociation
%% request.
%%
%% A `ResourceNotFoundException' is thrown when no recent association or
%% disassociation request with the specified token is found,
%% or when the server does not exist. A `ValidationException' is raised
%% when parameters of the request are not valid.
-spec describe_node_association_status(aws_client:aws_client(), describe_node_association_status_request()) ->
    {ok, describe_node_association_status_response(), tuple()} |
    {error, any()} |
    {error, describe_node_association_status_errors(), tuple()}.
describe_node_association_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_node_association_status(Client, Input, []).

-spec describe_node_association_status(aws_client:aws_client(), describe_node_association_status_request(), proplists:proplist()) ->
    {ok, describe_node_association_status_response(), tuple()} |
    {error, any()} |
    {error, describe_node_association_status_errors(), tuple()}.
describe_node_association_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeNodeAssociationStatus">>, Input, Options).

%% @doc
%% Lists all configuration management servers that are identified with your
%% account.
%%
%% Only the stored results from Amazon DynamoDB
%% are returned. OpsWorks CM does not query other services.
%%
%% This operation is synchronous.
%%
%% A `ResourceNotFoundException' is thrown when the server does not
%% exist.
%% A `ValidationException' is raised when parameters of the request are
%% not valid.
-spec describe_servers(aws_client:aws_client(), describe_servers_request()) ->
    {ok, describe_servers_response(), tuple()} |
    {error, any()} |
    {error, describe_servers_errors(), tuple()}.
describe_servers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_servers(Client, Input, []).

-spec describe_servers(aws_client:aws_client(), describe_servers_request(), proplists:proplist()) ->
    {ok, describe_servers_response(), tuple()} |
    {error, any()} |
    {error, describe_servers_errors(), tuple()}.
describe_servers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeServers">>, Input, Options).

%% @doc
%% Disassociates a node from an OpsWorks CM server, and removes the node from
%% the server's managed nodes.
%%
%% After a node is disassociated,
%% the node key pair is no longer valid for accessing the configuration
%% manager's API. For more information about how to associate a node, see
%% `AssociateNode'.
%%
%% A node can can only be disassociated from a server that is in a
%% `HEALTHY' state. Otherwise, an `InvalidStateException' is thrown.
%% A `ResourceNotFoundException' is thrown when the server does not
%% exist.
%% A `ValidationException' is raised when parameters of the request are
%% not valid.
-spec disassociate_node(aws_client:aws_client(), disassociate_node_request()) ->
    {ok, disassociate_node_response(), tuple()} |
    {error, any()} |
    {error, disassociate_node_errors(), tuple()}.
disassociate_node(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_node(Client, Input, []).

-spec disassociate_node(aws_client:aws_client(), disassociate_node_request(), proplists:proplist()) ->
    {ok, disassociate_node_response(), tuple()} |
    {error, any()} |
    {error, disassociate_node_errors(), tuple()}.
disassociate_node(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateNode">>, Input, Options).

%% @doc
%% Exports a specified server engine attribute as a base64-encoded string.
%%
%% For example, you can export user data that you can
%% use in EC2 to associate nodes with a server.
%%
%% This operation is synchronous.
%%
%% A `ValidationException' is raised when parameters of the request are
%% not valid.
%% A `ResourceNotFoundException' is thrown when the server does not
%% exist.
%% An `InvalidStateException' is thrown when the server is in any of the
%% following states: CREATING, TERMINATED,
%% FAILED or DELETING.
-spec export_server_engine_attribute(aws_client:aws_client(), export_server_engine_attribute_request()) ->
    {ok, export_server_engine_attribute_response(), tuple()} |
    {error, any()} |
    {error, export_server_engine_attribute_errors(), tuple()}.
export_server_engine_attribute(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_server_engine_attribute(Client, Input, []).

-spec export_server_engine_attribute(aws_client:aws_client(), export_server_engine_attribute_request(), proplists:proplist()) ->
    {ok, export_server_engine_attribute_response(), tuple()} |
    {error, any()} |
    {error, export_server_engine_attribute_errors(), tuple()}.
export_server_engine_attribute(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportServerEngineAttribute">>, Input, Options).

%% @doc Returns a list of tags that are applied to the specified OpsWorks for
%% Chef Automate or
%% OpsWorks for Puppet Enterprise servers or backups.
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

%% @doc
%% Restores a backup to a server that is in a `CONNECTION_LOST',
%% `HEALTHY', `RUNNING', `UNHEALTHY', or `TERMINATED' state.
%%
%% When you run RestoreServer, the server's EC2 instance is deleted, and
%% a new EC2 instance is configured. RestoreServer maintains
%% the existing server endpoint, so configuration management of the
%% server's client devices (nodes) should continue to work.
%%
%% Restoring from a backup is performed by creating a new EC2 instance. If
%% restoration is successful, and the server is in a `HEALTHY' state,
%% OpsWorks CM switches traffic over to the new instance. After restoration
%% is finished, the old EC2 instance is maintained in a
%% `Running' or `Stopped' state, but is eventually terminated.
%%
%% This operation is asynchronous.
%%
%% An `InvalidStateException' is thrown when the server is not in a valid
%% state. A `ResourceNotFoundException' is thrown
%% when the server does not exist. A `ValidationException' is raised when
%% parameters of the request are not valid.
-spec restore_server(aws_client:aws_client(), restore_server_request()) ->
    {ok, restore_server_response(), tuple()} |
    {error, any()} |
    {error, restore_server_errors(), tuple()}.
restore_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_server(Client, Input, []).

-spec restore_server(aws_client:aws_client(), restore_server_request(), proplists:proplist()) ->
    {ok, restore_server_response(), tuple()} |
    {error, any()} |
    {error, restore_server_errors(), tuple()}.
restore_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreServer">>, Input, Options).

%% @doc
%% Manually starts server maintenance.
%%
%% This command can be useful if an earlier maintenance attempt failed, and
%% the underlying
%% cause of maintenance failure has been resolved. The server is in an
%% `UNDER_MAINTENANCE' state while maintenance is in progress.
%%
%% Maintenance can only be started on servers in `HEALTHY' and
%% `UNHEALTHY' states. Otherwise, an `InvalidStateException' is
%% thrown.
%% A `ResourceNotFoundException' is thrown when the server does not
%% exist. A `ValidationException' is raised when parameters of the
%% request are not valid.
-spec start_maintenance(aws_client:aws_client(), start_maintenance_request()) ->
    {ok, start_maintenance_response(), tuple()} |
    {error, any()} |
    {error, start_maintenance_errors(), tuple()}.
start_maintenance(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_maintenance(Client, Input, []).

-spec start_maintenance(aws_client:aws_client(), start_maintenance_request(), proplists:proplist()) ->
    {ok, start_maintenance_response(), tuple()} |
    {error, any()} |
    {error, start_maintenance_errors(), tuple()}.
start_maintenance(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartMaintenance">>, Input, Options).

%% @doc Applies tags to an OpsWorks for Chef Automate or OpsWorks for Puppet
%% Enterprise server, or to server backups.
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

%% @doc Removes specified tags from an OpsWorks CM server or backup.
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

%% @doc
%% Updates settings for a server.
%%
%% This operation is synchronous.
-spec update_server(aws_client:aws_client(), update_server_request()) ->
    {ok, update_server_response(), tuple()} |
    {error, any()} |
    {error, update_server_errors(), tuple()}.
update_server(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_server(Client, Input, []).

-spec update_server(aws_client:aws_client(), update_server_request(), proplists:proplist()) ->
    {ok, update_server_response(), tuple()} |
    {error, any()} |
    {error, update_server_errors(), tuple()}.
update_server(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServer">>, Input, Options).

%% @doc
%% Updates engine-specific attributes on a specified server.
%%
%% The server
%% enters the `MODIFYING' state when this operation
%% is in progress. Only one update can occur at a time.
%% You can use this command to reset a Chef server's public key
%% (`CHEF_PIVOTAL_KEY') or a Puppet server's
%% admin password (`PUPPET_ADMIN_PASSWORD').
%%
%% This operation is asynchronous.
%%
%% This operation can only be called for servers in `HEALTHY' or
%% `UNHEALTHY' states.
%% Otherwise, an `InvalidStateException' is raised.
%% A `ResourceNotFoundException' is thrown when the server does not
%% exist. A `ValidationException' is
%% raised when parameters of the request are not valid.
-spec update_server_engine_attributes(aws_client:aws_client(), update_server_engine_attributes_request()) ->
    {ok, update_server_engine_attributes_response(), tuple()} |
    {error, any()} |
    {error, update_server_engine_attributes_errors(), tuple()}.
update_server_engine_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_server_engine_attributes(Client, Input, []).

-spec update_server_engine_attributes(aws_client:aws_client(), update_server_engine_attributes_request(), proplists:proplist()) ->
    {ok, update_server_engine_attributes_response(), tuple()} |
    {error, any()} |
    {error, update_server_engine_attributes_errors(), tuple()}.
update_server_engine_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateServerEngineAttributes">>, Input, Options).

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
    Client1 = Client#{service => <<"opsworks-cm">>},
    Host = build_host(<<"opsworks-cm">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"OpsWorksCM_V2016_11_01.", Action/binary>>}
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
