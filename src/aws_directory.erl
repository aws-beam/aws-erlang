%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Directory Service
%%
%% AWS Directory Service is a web service that makes it easy for you to setup
%% and run directories in the AWS cloud, or connect your AWS resources with
%% an existing on-premises Microsoft Active Directory.
%%
%% This guide provides detailed information about AWS Directory Service
%% operations, data types, parameters, and errors. For information about AWS
%% Directory Services features, see AWS Directory Service and the AWS
%% Directory Service Administration Guide.
%%
%% AWS provides SDKs that consist of libraries and sample code for various
%% programming languages and platforms (Java, Ruby, .Net, iOS, Android,
%% etc.). The SDKs provide a convenient way to create programmatic access to
%% AWS Directory Service and other AWS services. For more information about
%% the AWS SDKs, including how to download and install them, see Tools for
%% Amazon Web Services.
-module(aws_directory).

-export([accept_shared_directory/2,
         accept_shared_directory/3,
         add_ip_routes/2,
         add_ip_routes/3,
         add_region/2,
         add_region/3,
         add_tags_to_resource/2,
         add_tags_to_resource/3,
         cancel_schema_extension/2,
         cancel_schema_extension/3,
         connect_directory/2,
         connect_directory/3,
         create_alias/2,
         create_alias/3,
         create_computer/2,
         create_computer/3,
         create_conditional_forwarder/2,
         create_conditional_forwarder/3,
         create_directory/2,
         create_directory/3,
         create_log_subscription/2,
         create_log_subscription/3,
         create_microsoft_ad/2,
         create_microsoft_ad/3,
         create_snapshot/2,
         create_snapshot/3,
         create_trust/2,
         create_trust/3,
         delete_conditional_forwarder/2,
         delete_conditional_forwarder/3,
         delete_directory/2,
         delete_directory/3,
         delete_log_subscription/2,
         delete_log_subscription/3,
         delete_snapshot/2,
         delete_snapshot/3,
         delete_trust/2,
         delete_trust/3,
         deregister_certificate/2,
         deregister_certificate/3,
         deregister_event_topic/2,
         deregister_event_topic/3,
         describe_certificate/2,
         describe_certificate/3,
         describe_conditional_forwarders/2,
         describe_conditional_forwarders/3,
         describe_directories/2,
         describe_directories/3,
         describe_domain_controllers/2,
         describe_domain_controllers/3,
         describe_event_topics/2,
         describe_event_topics/3,
         describe_ldaps_settings/2,
         describe_ldaps_settings/3,
         describe_regions/2,
         describe_regions/3,
         describe_shared_directories/2,
         describe_shared_directories/3,
         describe_snapshots/2,
         describe_snapshots/3,
         describe_trusts/2,
         describe_trusts/3,
         disable_ldaps/2,
         disable_ldaps/3,
         disable_radius/2,
         disable_radius/3,
         disable_sso/2,
         disable_sso/3,
         enable_ldaps/2,
         enable_ldaps/3,
         enable_radius/2,
         enable_radius/3,
         enable_sso/2,
         enable_sso/3,
         get_directory_limits/2,
         get_directory_limits/3,
         get_snapshot_limits/2,
         get_snapshot_limits/3,
         list_certificates/2,
         list_certificates/3,
         list_ip_routes/2,
         list_ip_routes/3,
         list_log_subscriptions/2,
         list_log_subscriptions/3,
         list_schema_extensions/2,
         list_schema_extensions/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         register_certificate/2,
         register_certificate/3,
         register_event_topic/2,
         register_event_topic/3,
         reject_shared_directory/2,
         reject_shared_directory/3,
         remove_ip_routes/2,
         remove_ip_routes/3,
         remove_region/2,
         remove_region/3,
         remove_tags_from_resource/2,
         remove_tags_from_resource/3,
         reset_user_password/2,
         reset_user_password/3,
         restore_from_snapshot/2,
         restore_from_snapshot/3,
         share_directory/2,
         share_directory/3,
         start_schema_extension/2,
         start_schema_extension/3,
         unshare_directory/2,
         unshare_directory/3,
         update_conditional_forwarder/2,
         update_conditional_forwarder/3,
         update_number_of_domain_controllers/2,
         update_number_of_domain_controllers/3,
         update_radius/2,
         update_radius/3,
         update_trust/2,
         update_trust/3,
         verify_trust/2,
         verify_trust/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts a directory sharing request that was sent from the directory
%% owner account.
accept_shared_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_shared_directory(Client, Input, []).
accept_shared_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptSharedDirectory">>, Input, Options).

%% @doc If the DNS server for your on-premises domain uses a publicly
%% addressable IP address, you must add a CIDR address block to correctly
%% route traffic to and from your Microsoft AD on Amazon Web Services.
%%
%% AddIpRoutes adds this address block. You can also use AddIpRoutes to
%% facilitate routing traffic that uses public IP ranges from your Microsoft
%% AD on AWS to a peer VPC.
%%
%% Before you call AddIpRoutes, ensure that all of the required permissions
%% have been explicitly granted through a policy. For details about what
%% permissions are required to run the AddIpRoutes operation, see AWS
%% Directory Service API Permissions: Actions, Resources, and Conditions
%% Reference.
add_ip_routes(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_ip_routes(Client, Input, []).
add_ip_routes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddIpRoutes">>, Input, Options).

%% @doc Adds two domain controllers in the specified Region for the specified
%% directory.
add_region(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_region(Client, Input, []).
add_region(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddRegion">>, Input, Options).

%% @doc Adds or overwrites one or more tags for the specified directory.
%%
%% Each directory can have a maximum of 50 tags. Each tag consists of a key
%% and optional value. Tag keys must be unique to each resource.
add_tags_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_resource(Client, Input, []).
add_tags_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToResource">>, Input, Options).

%% @doc Cancels an in-progress schema extension to a Microsoft AD directory.
%%
%% Once a schema extension has started replicating to all domain controllers,
%% the task can no longer be canceled. A schema extension can be canceled
%% during any of the following states; `Initializing', `CreatingSnapshot',
%% and `UpdatingSchema'.
cancel_schema_extension(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_schema_extension(Client, Input, []).
cancel_schema_extension(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelSchemaExtension">>, Input, Options).

%% @doc Creates an AD Connector to connect to an on-premises directory.
%%
%% Before you call `ConnectDirectory', ensure that all of the required
%% permissions have been explicitly granted through a policy. For details
%% about what permissions are required to run the `ConnectDirectory'
%% operation, see AWS Directory Service API Permissions: Actions, Resources,
%% and Conditions Reference.
connect_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    connect_directory(Client, Input, []).
connect_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ConnectDirectory">>, Input, Options).

%% @doc Creates an alias for a directory and assigns the alias to the
%% directory.
%%
%% The alias is used to construct the access URL for the directory, such as
%% `http://<alias>.awsapps.com'.
%%
%% After an alias has been created, it cannot be deleted or reused, so this
%% operation should only be used when absolutely necessary.
create_alias(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_alias(Client, Input, []).
create_alias(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateAlias">>, Input, Options).

%% @doc Creates an Active Directory computer object in the specified
%% directory.
create_computer(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_computer(Client, Input, []).
create_computer(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateComputer">>, Input, Options).

%% @doc Creates a conditional forwarder associated with your AWS directory.
%%
%% Conditional forwarders are required in order to set up a trust
%% relationship with another domain. The conditional forwarder points to the
%% trusted domain.
create_conditional_forwarder(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_conditional_forwarder(Client, Input, []).
create_conditional_forwarder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConditionalForwarder">>, Input, Options).

%% @doc Creates a Simple AD directory.
%%
%% For more information, see Simple Active Directory in the AWS Directory
%% Service Admin Guide.
%%
%% Before you call `CreateDirectory', ensure that all of the required
%% permissions have been explicitly granted through a policy. For details
%% about what permissions are required to run the `CreateDirectory'
%% operation, see AWS Directory Service API Permissions: Actions, Resources,
%% and Conditions Reference.
create_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_directory(Client, Input, []).
create_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDirectory">>, Input, Options).

%% @doc Creates a subscription to forward real-time Directory Service domain
%% controller security logs to the specified Amazon CloudWatch log group in
%% your AWS account.
create_log_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_log_subscription(Client, Input, []).
create_log_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLogSubscription">>, Input, Options).

%% @doc Creates a Microsoft AD directory in the AWS Cloud.
%%
%% For more information, see AWS Managed Microsoft AD in the AWS Directory
%% Service Admin Guide.
%%
%% Before you call CreateMicrosoftAD, ensure that all of the required
%% permissions have been explicitly granted through a policy. For details
%% about what permissions are required to run the CreateMicrosoftAD
%% operation, see AWS Directory Service API Permissions: Actions, Resources,
%% and Conditions Reference.
create_microsoft_ad(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_microsoft_ad(Client, Input, []).
create_microsoft_ad(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateMicrosoftAD">>, Input, Options).

%% @doc Creates a snapshot of a Simple AD or Microsoft AD directory in the
%% AWS cloud.
%%
%% You cannot take snapshots of AD Connector directories.
create_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_snapshot(Client, Input, []).
create_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSnapshot">>, Input, Options).

%% @doc AWS Directory Service for Microsoft Active Directory allows you to
%% configure trust relationships.
%%
%% For example, you can establish a trust between your AWS Managed Microsoft
%% AD directory, and your existing on-premises Microsoft Active Directory.
%% This would allow you to provide users and groups access to resources in
%% either domain, with a single set of credentials.
%%
%% This action initiates the creation of the AWS side of a trust relationship
%% between an AWS Managed Microsoft AD directory and an external domain. You
%% can create either a forest trust or an external trust.
create_trust(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_trust(Client, Input, []).
create_trust(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateTrust">>, Input, Options).

%% @doc Deletes a conditional forwarder that has been set up for your AWS
%% directory.
delete_conditional_forwarder(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_conditional_forwarder(Client, Input, []).
delete_conditional_forwarder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConditionalForwarder">>, Input, Options).

%% @doc Deletes an AWS Directory Service directory.
%%
%% Before you call `DeleteDirectory', ensure that all of the required
%% permissions have been explicitly granted through a policy. For details
%% about what permissions are required to run the `DeleteDirectory'
%% operation, see AWS Directory Service API Permissions: Actions, Resources,
%% and Conditions Reference.
delete_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_directory(Client, Input, []).
delete_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDirectory">>, Input, Options).

%% @doc Deletes the specified log subscription.
delete_log_subscription(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_log_subscription(Client, Input, []).
delete_log_subscription(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLogSubscription">>, Input, Options).

%% @doc Deletes a directory snapshot.
delete_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_snapshot(Client, Input, []).
delete_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSnapshot">>, Input, Options).

%% @doc Deletes an existing trust relationship between your AWS Managed
%% Microsoft AD directory and an external domain.
delete_trust(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_trust(Client, Input, []).
delete_trust(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTrust">>, Input, Options).

%% @doc Deletes from the system the certificate that was registered for a
%% secured LDAP connection.
deregister_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_certificate(Client, Input, []).
deregister_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterCertificate">>, Input, Options).

%% @doc Removes the specified directory as a publisher to the specified SNS
%% topic.
deregister_event_topic(Client, Input)
  when is_map(Client), is_map(Input) ->
    deregister_event_topic(Client, Input, []).
deregister_event_topic(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeregisterEventTopic">>, Input, Options).

%% @doc Displays information about the certificate registered for a secured
%% LDAP connection.
describe_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_certificate(Client, Input, []).
describe_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCertificate">>, Input, Options).

%% @doc Obtains information about the conditional forwarders for this
%% account.
%%
%% If no input parameters are provided for RemoteDomainNames, this request
%% describes all conditional forwarders for the specified directory ID.
describe_conditional_forwarders(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_conditional_forwarders(Client, Input, []).
describe_conditional_forwarders(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConditionalForwarders">>, Input, Options).

%% @doc Obtains information about the directories that belong to this
%% account.
%%
%% You can retrieve information about specific directories by passing the
%% directory identifiers in the `DirectoryIds' parameter. Otherwise, all
%% directories that belong to the current account are returned.
%%
%% This operation supports pagination with the use of the `NextToken' request
%% and response parameters. If more results are available, the
%% `DescribeDirectoriesResult.NextToken' member contains a token that you
%% pass in the next call to `DescribeDirectories' to retrieve the next set of
%% items.
%%
%% You can also specify a maximum number of return results with the `Limit'
%% parameter.
describe_directories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_directories(Client, Input, []).
describe_directories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDirectories">>, Input, Options).

%% @doc Provides information about any domain controllers in your directory.
describe_domain_controllers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_domain_controllers(Client, Input, []).
describe_domain_controllers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeDomainControllers">>, Input, Options).

%% @doc Obtains information about which SNS topics receive status messages
%% from the specified directory.
%%
%% If no input parameters are provided, such as DirectoryId or TopicName,
%% this request describes all of the associations in the account.
describe_event_topics(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_event_topics(Client, Input, []).
describe_event_topics(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEventTopics">>, Input, Options).

%% @doc Describes the status of LDAP security for the specified directory.
describe_ldaps_settings(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_ldaps_settings(Client, Input, []).
describe_ldaps_settings(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLDAPSSettings">>, Input, Options).

%% @doc Provides information about the Regions that are configured for
%% multi-Region replication.
describe_regions(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_regions(Client, Input, []).
describe_regions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRegions">>, Input, Options).

%% @doc Returns the shared directories in your account.
describe_shared_directories(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_shared_directories(Client, Input, []).
describe_shared_directories(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSharedDirectories">>, Input, Options).

%% @doc Obtains information about the directory snapshots that belong to this
%% account.
%%
%% This operation supports pagination with the use of the NextToken request
%% and response parameters. If more results are available, the
%% DescribeSnapshots.NextToken member contains a token that you pass in the
%% next call to `DescribeSnapshots' to retrieve the next set of items.
%%
%% You can also specify a maximum number of return results with the Limit
%% parameter.
describe_snapshots(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_snapshots(Client, Input, []).
describe_snapshots(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSnapshots">>, Input, Options).

%% @doc Obtains information about the trust relationships for this account.
%%
%% If no input parameters are provided, such as DirectoryId or TrustIds, this
%% request describes all the trust relationships belonging to the account.
describe_trusts(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_trusts(Client, Input, []).
describe_trusts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeTrusts">>, Input, Options).

%% @doc Deactivates LDAP secure calls for the specified directory.
disable_ldaps(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_ldaps(Client, Input, []).
disable_ldaps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableLDAPS">>, Input, Options).

%% @doc Disables multi-factor authentication (MFA) with the Remote
%% Authentication Dial In User Service (RADIUS) server for an AD Connector or
%% Microsoft AD directory.
disable_radius(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_radius(Client, Input, []).
disable_radius(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableRadius">>, Input, Options).

%% @doc Disables single-sign on for a directory.
disable_sso(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_sso(Client, Input, []).
disable_sso(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableSso">>, Input, Options).

%% @doc Activates the switch for the specific directory to always use LDAP
%% secure calls.
enable_ldaps(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_ldaps(Client, Input, []).
enable_ldaps(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableLDAPS">>, Input, Options).

%% @doc Enables multi-factor authentication (MFA) with the Remote
%% Authentication Dial In User Service (RADIUS) server for an AD Connector or
%% Microsoft AD directory.
enable_radius(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_radius(Client, Input, []).
enable_radius(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableRadius">>, Input, Options).

%% @doc Enables single sign-on for a directory.
%%
%% Single sign-on allows users in your directory to access certain AWS
%% services from a computer joined to the directory without having to enter
%% their credentials separately.
enable_sso(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_sso(Client, Input, []).
enable_sso(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableSso">>, Input, Options).

%% @doc Obtains directory limit information for the current Region.
get_directory_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_directory_limits(Client, Input, []).
get_directory_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDirectoryLimits">>, Input, Options).

%% @doc Obtains the manual snapshot limits for a directory.
get_snapshot_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_snapshot_limits(Client, Input, []).
get_snapshot_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSnapshotLimits">>, Input, Options).

%% @doc For the specified directory, lists all the certificates registered
%% for a secured LDAP connection.
list_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_certificates(Client, Input, []).
list_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCertificates">>, Input, Options).

%% @doc Lists the address blocks that you have added to a directory.
list_ip_routes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_ip_routes(Client, Input, []).
list_ip_routes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIpRoutes">>, Input, Options).

%% @doc Lists the active log subscriptions for the AWS account.
list_log_subscriptions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_log_subscriptions(Client, Input, []).
list_log_subscriptions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLogSubscriptions">>, Input, Options).

%% @doc Lists all schema extensions applied to a Microsoft AD Directory.
list_schema_extensions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_schema_extensions(Client, Input, []).
list_schema_extensions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSchemaExtensions">>, Input, Options).

%% @doc Lists all tags on a directory.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Registers a certificate for secured LDAP connection.
register_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_certificate(Client, Input, []).
register_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterCertificate">>, Input, Options).

%% @doc Associates a directory with an SNS topic.
%%
%% This establishes the directory as a publisher to the specified SNS topic.
%% You can then receive email or text (SMS) messages when the status of your
%% directory changes. You get notified if your directory goes from an Active
%% status to an Impaired or Inoperable status. You also receive a
%% notification when the directory returns to an Active status.
register_event_topic(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_event_topic(Client, Input, []).
register_event_topic(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterEventTopic">>, Input, Options).

%% @doc Rejects a directory sharing request that was sent from the directory
%% owner account.
reject_shared_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_shared_directory(Client, Input, []).
reject_shared_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectSharedDirectory">>, Input, Options).

%% @doc Removes IP address blocks from a directory.
remove_ip_routes(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_ip_routes(Client, Input, []).
remove_ip_routes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveIpRoutes">>, Input, Options).

%% @doc Stops all replication and removes the domain controllers from the
%% specified Region.
%%
%% You cannot remove the primary Region with this operation. Instead, use the
%% `DeleteDirectory' API.
remove_region(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_region(Client, Input, []).
remove_region(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveRegion">>, Input, Options).

%% @doc Removes tags from a directory.
remove_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_resource(Client, Input, []).
remove_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromResource">>, Input, Options).

%% @doc Resets the password for any user in your AWS Managed Microsoft AD or
%% Simple AD directory.
%%
%% You can reset the password for any user in your directory with the
%% following exceptions:
%%
%% <ul> <li> For Simple AD, you cannot reset the password for any user that
%% is a member of either the Domain Admins or Enterprise Admins group except
%% for the administrator user.
%%
%% </li> <li> For AWS Managed Microsoft AD, you can only reset the password
%% for a user that is in an OU based off of the NetBIOS name that you typed
%% when you created your directory. For example, you cannot reset the
%% password for a user in the AWS Reserved OU. For more information about the
%% OU structure for an AWS Managed Microsoft AD directory, see What Gets
%% Created in the AWS Directory Service Administration Guide.
%%
%% </li> </ul>
reset_user_password(Client, Input)
  when is_map(Client), is_map(Input) ->
    reset_user_password(Client, Input, []).
reset_user_password(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResetUserPassword">>, Input, Options).

%% @doc Restores a directory using an existing directory snapshot.
%%
%% When you restore a directory from a snapshot, any changes made to the
%% directory after the snapshot date are overwritten.
%%
%% This action returns as soon as the restore operation is initiated. You can
%% monitor the progress of the restore operation by calling the
%% `DescribeDirectories' operation with the directory identifier. When the
%% DirectoryDescription.Stage value changes to `Active', the restore
%% operation is complete.
restore_from_snapshot(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_from_snapshot(Client, Input, []).
restore_from_snapshot(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreFromSnapshot">>, Input, Options).

%% @doc Shares a specified directory (`DirectoryId') in your AWS account
%% (directory owner) with another AWS account (directory consumer).
%%
%% With this operation you can use your directory from any AWS account and
%% from any Amazon VPC within an AWS Region.
%%
%% When you share your AWS Managed Microsoft AD directory, AWS Directory
%% Service creates a shared directory in the directory consumer account. This
%% shared directory contains the metadata to provide access to the directory
%% within the directory owner account. The shared directory is visible in all
%% VPCs in the directory consumer account.
%%
%% The `ShareMethod' parameter determines whether the specified directory can
%% be shared between AWS accounts inside the same AWS organization
%% (`ORGANIZATIONS'). It also determines whether you can share the directory
%% with any other AWS account either inside or outside of the organization
%% (`HANDSHAKE').
%%
%% The `ShareNotes' parameter is only used when `HANDSHAKE' is called, which
%% sends a directory sharing request to the directory consumer.
share_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    share_directory(Client, Input, []).
share_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ShareDirectory">>, Input, Options).

%% @doc Applies a schema extension to a Microsoft AD directory.
start_schema_extension(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_schema_extension(Client, Input, []).
start_schema_extension(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartSchemaExtension">>, Input, Options).

%% @doc Stops the directory sharing between the directory owner and consumer
%% accounts.
unshare_directory(Client, Input)
  when is_map(Client), is_map(Input) ->
    unshare_directory(Client, Input, []).
unshare_directory(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UnshareDirectory">>, Input, Options).

%% @doc Updates a conditional forwarder that has been set up for your AWS
%% directory.
update_conditional_forwarder(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_conditional_forwarder(Client, Input, []).
update_conditional_forwarder(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateConditionalForwarder">>, Input, Options).

%% @doc Adds or removes domain controllers to or from the directory.
%%
%% Based on the difference between current value and new value (provided
%% through this API call), domain controllers will be added or removed. It
%% may take up to 45 minutes for any new domain controllers to become fully
%% active once the requested number of domain controllers is updated. During
%% this time, you cannot make another update request.
update_number_of_domain_controllers(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_number_of_domain_controllers(Client, Input, []).
update_number_of_domain_controllers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateNumberOfDomainControllers">>, Input, Options).

%% @doc Updates the Remote Authentication Dial In User Service (RADIUS)
%% server information for an AD Connector or Microsoft AD directory.
update_radius(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_radius(Client, Input, []).
update_radius(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRadius">>, Input, Options).

%% @doc Updates the trust that has been set up between your AWS Managed
%% Microsoft AD directory and an on-premises Active Directory.
update_trust(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_trust(Client, Input, []).
update_trust(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTrust">>, Input, Options).

%% @doc AWS Directory Service for Microsoft Active Directory allows you to
%% configure and verify trust relationships.
%%
%% This action verifies a trust relationship between your AWS Managed
%% Microsoft AD directory and an external domain.
verify_trust(Client, Input)
  when is_map(Client), is_map(Input) ->
    verify_trust(Client, Input, []).
verify_trust(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"VerifyTrust">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"ds">>},
    Host = build_host(<<"ds">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"DirectoryService_20150416.", Action/binary>>}
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
