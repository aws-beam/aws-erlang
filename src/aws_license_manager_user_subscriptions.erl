%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc With License Manager, you can create user-based subscriptions to
%% utilize licensed software with a per user subscription fee on Amazon EC2
%% instances.
-module(aws_license_manager_user_subscriptions).

-export([associate_user/2,
         associate_user/3,
         create_license_server_endpoint/2,
         create_license_server_endpoint/3,
         delete_license_server_endpoint/2,
         delete_license_server_endpoint/3,
         deregister_identity_provider/2,
         deregister_identity_provider/3,
         disassociate_user/2,
         disassociate_user/3,
         list_identity_providers/2,
         list_identity_providers/3,
         list_instances/2,
         list_instances/3,
         list_license_server_endpoints/2,
         list_license_server_endpoints/3,
         list_product_subscriptions/2,
         list_product_subscriptions/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_user_associations/2,
         list_user_associations/3,
         register_identity_provider/2,
         register_identity_provider/3,
         start_product_subscription/2,
         start_product_subscription/3,
         stop_product_subscription/2,
         stop_product_subscription/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_identity_provider_settings/2,
         update_identity_provider_settings/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% stop_product_subscription_request() :: #{
%%   <<"Domain">> => [string()],
%%   <<"IdentityProvider">> => list(),
%%   <<"Product">> => [string()],
%%   <<"ProductUserArn">> => string(),
%%   <<"Username">> => [string()]
%% }
-type stop_product_subscription_request() :: #{binary() => any()}.


%% Example:
%% list_license_server_endpoints_response() :: #{
%%   <<"LicenseServerEndpoints">> => list(license_server_endpoint()),
%%   <<"NextToken">> => [string()]
%% }
-type list_license_server_endpoints_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% disassociate_user_request() :: #{
%%   <<"Domain">> => [string()],
%%   <<"IdentityProvider">> => list(),
%%   <<"InstanceId">> => [string()],
%%   <<"InstanceUserArn">> => string(),
%%   <<"Username">> => [string()]
%% }
-type disassociate_user_request() :: #{binary() => any()}.


%% Example:
%% list_identity_providers_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_identity_providers_request() :: #{binary() => any()}.


%% Example:
%% create_license_server_endpoint_response() :: #{
%%   <<"IdentityProviderArn">> => string(),
%%   <<"LicenseServerEndpointArn">> => string()
%% }
-type create_license_server_endpoint_response() :: #{binary() => any()}.


%% Example:
%% list_product_subscriptions_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"IdentityProvider">> := list(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()],
%%   <<"Product">> => [string()]
%% }
-type list_product_subscriptions_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.


%% Example:
%% instance_user_summary() :: #{
%%   <<"AssociationDate">> => [string()],
%%   <<"DisassociationDate">> => [string()],
%%   <<"Domain">> => [string()],
%%   <<"IdentityProvider">> => list(),
%%   <<"InstanceId">> => [string()],
%%   <<"InstanceUserArn">> => string(),
%%   <<"Status">> => [string()],
%%   <<"StatusMessage">> => [string()],
%%   <<"Username">> => [string()]
%% }
-type instance_user_summary() :: #{binary() => any()}.


%% Example:
%% create_license_server_endpoint_request() :: #{
%%   <<"IdentityProviderArn">> := string(),
%%   <<"LicenseServerSettings">> := license_server_settings(),
%%   <<"Tags">> => map()
%% }
-type create_license_server_endpoint_request() :: #{binary() => any()}.


%% Example:
%% delete_license_server_endpoint_request() :: #{
%%   <<"LicenseServerEndpointArn">> := string(),
%%   <<"ServerType">> := string()
%% }
-type delete_license_server_endpoint_request() :: #{binary() => any()}.


%% Example:
%% update_settings() :: #{
%%   <<"AddSubnets">> => list(string()),
%%   <<"RemoveSubnets">> => list(string()),
%%   <<"SecurityGroupId">> => string()
%% }
-type update_settings() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list([string()]())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% active_directory_settings() :: #{
%%   <<"DomainCredentialsProvider">> => list(),
%%   <<"DomainIpv4List">> => list(string()),
%%   <<"DomainName">> => [string()],
%%   <<"DomainNetworkSettings">> => domain_network_settings()
%% }
-type active_directory_settings() :: #{binary() => any()}.


%% Example:
%% server_endpoint() :: #{
%%   <<"Endpoint">> => [string()]
%% }
-type server_endpoint() :: #{binary() => any()}.


%% Example:
%% deregister_identity_provider_request() :: #{
%%   <<"IdentityProvider">> => list(),
%%   <<"IdentityProviderArn">> => string(),
%%   <<"Product">> => [string()]
%% }
-type deregister_identity_provider_request() :: #{binary() => any()}.


%% Example:
%% list_user_associations_response() :: #{
%%   <<"InstanceUserSummaries">> => list(instance_user_summary()),
%%   <<"NextToken">> => [string()]
%% }
-type list_user_associations_response() :: #{binary() => any()}.


%% Example:
%% update_identity_provider_settings_response() :: #{
%%   <<"IdentityProviderSummary">> => identity_provider_summary()
%% }
-type update_identity_provider_settings_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% register_identity_provider_response() :: #{
%%   <<"IdentityProviderSummary">> => identity_provider_summary()
%% }
-type register_identity_provider_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% settings() :: #{
%%   <<"SecurityGroupId">> => string(),
%%   <<"Subnets">> => list(string())
%% }
-type settings() :: #{binary() => any()}.


%% Example:
%% stop_product_subscription_response() :: #{
%%   <<"ProductUserSummary">> => product_user_summary()
%% }
-type stop_product_subscription_response() :: #{binary() => any()}.


%% Example:
%% disassociate_user_response() :: #{
%%   <<"InstanceUserSummary">> => instance_user_summary()
%% }
-type disassociate_user_response() :: #{binary() => any()}.


%% Example:
%% associate_user_response() :: #{
%%   <<"InstanceUserSummary">> => instance_user_summary()
%% }
-type associate_user_response() :: #{binary() => any()}.


%% Example:
%% secrets_manager_credentials_provider() :: #{
%%   <<"SecretId">> => [string()]
%% }
-type secrets_manager_credentials_provider() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% product_user_summary() :: #{
%%   <<"Domain">> => [string()],
%%   <<"IdentityProvider">> => list(),
%%   <<"Product">> => [string()],
%%   <<"ProductUserArn">> => string(),
%%   <<"Status">> => [string()],
%%   <<"StatusMessage">> => [string()],
%%   <<"SubscriptionEndDate">> => [string()],
%%   <<"SubscriptionStartDate">> => [string()],
%%   <<"Username">> => [string()]
%% }
-type product_user_summary() :: #{binary() => any()}.


%% Example:
%% identity_provider_summary() :: #{
%%   <<"FailureMessage">> => [string()],
%%   <<"IdentityProvider">> => list(),
%%   <<"IdentityProviderArn">> => string(),
%%   <<"OwnerAccountId">> => [string()],
%%   <<"Product">> => [string()],
%%   <<"Settings">> => settings(),
%%   <<"Status">> => [string()]
%% }
-type identity_provider_summary() :: #{binary() => any()}.


%% Example:
%% domain_network_settings() :: #{
%%   <<"Subnets">> => list(string())
%% }
-type domain_network_settings() :: #{binary() => any()}.


%% Example:
%% list_instances_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_instances_request() :: #{binary() => any()}.


%% Example:
%% filter() :: #{
%%   <<"Attribute">> => [string()],
%%   <<"Operation">> => [string()],
%%   <<"Value">> => [string()]
%% }
-type filter() :: #{binary() => any()}.


%% Example:
%% list_product_subscriptions_response() :: #{
%%   <<"NextToken">> => [string()],
%%   <<"ProductUserSummaries">> => list(product_user_summary())
%% }
-type list_product_subscriptions_response() :: #{binary() => any()}.


%% Example:
%% list_instances_response() :: #{
%%   <<"InstanceSummaries">> => list(instance_summary()),
%%   <<"NextToken">> => [string()]
%% }
-type list_instances_response() :: #{binary() => any()}.


%% Example:
%% delete_license_server_endpoint_response() :: #{
%%   <<"LicenseServerEndpoint">> => license_server_endpoint()
%% }
-type delete_license_server_endpoint_response() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% list_license_server_endpoints_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_license_server_endpoints_request() :: #{binary() => any()}.


%% Example:
%% update_identity_provider_settings_request() :: #{
%%   <<"IdentityProvider">> => list(),
%%   <<"IdentityProviderArn">> => string(),
%%   <<"Product">> => [string()],
%%   <<"UpdateSettings">> := update_settings()
%% }
-type update_identity_provider_settings_request() :: #{binary() => any()}.


%% Example:
%% register_identity_provider_request() :: #{
%%   <<"IdentityProvider">> := list(),
%%   <<"Product">> := [string()],
%%   <<"Settings">> => settings(),
%%   <<"Tags">> => map()
%% }
-type register_identity_provider_request() :: #{binary() => any()}.


%% Example:
%% deregister_identity_provider_response() :: #{
%%   <<"IdentityProviderSummary">> => identity_provider_summary()
%% }
-type deregister_identity_provider_response() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% license_server_endpoint() :: #{
%%   <<"CreationTime">> => [non_neg_integer()],
%%   <<"IdentityProviderArn">> => [string()],
%%   <<"LicenseServerEndpointArn">> => string(),
%%   <<"LicenseServerEndpointId">> => string(),
%%   <<"LicenseServerEndpointProvisioningStatus">> => string(),
%%   <<"LicenseServers">> => list(license_server()),
%%   <<"ServerEndpoint">> => server_endpoint(),
%%   <<"ServerType">> => string(),
%%   <<"StatusMessage">> => [string()]
%% }
-type license_server_endpoint() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% list_identity_providers_response() :: #{
%%   <<"IdentityProviderSummaries">> => list(identity_provider_summary()),
%%   <<"NextToken">> => [string()]
%% }
-type list_identity_providers_response() :: #{binary() => any()}.


%% Example:
%% instance_summary() :: #{
%%   <<"IdentityProvider">> => list(),
%%   <<"InstanceId">> => [string()],
%%   <<"LastStatusCheckDate">> => [string()],
%%   <<"OwnerAccountId">> => [string()],
%%   <<"Products">> => list([string()]()),
%%   <<"Status">> => [string()],
%%   <<"StatusMessage">> => [string()]
%% }
-type instance_summary() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% license_server_settings() :: #{
%%   <<"ServerSettings">> => list(),
%%   <<"ServerType">> => string()
%% }
-type license_server_settings() :: #{binary() => any()}.


%% Example:
%% start_product_subscription_request() :: #{
%%   <<"Domain">> => [string()],
%%   <<"IdentityProvider">> := list(),
%%   <<"Product">> := [string()],
%%   <<"Tags">> => map(),
%%   <<"Username">> := [string()]
%% }
-type start_product_subscription_request() :: #{binary() => any()}.


%% Example:
%% start_product_subscription_response() :: #{
%%   <<"ProductUserSummary">> => product_user_summary()
%% }
-type start_product_subscription_response() :: #{binary() => any()}.


%% Example:
%% associate_user_request() :: #{
%%   <<"Domain">> => [string()],
%%   <<"IdentityProvider">> := list(),
%%   <<"InstanceId">> := [string()],
%%   <<"Tags">> => map(),
%%   <<"Username">> := [string()]
%% }
-type associate_user_request() :: #{binary() => any()}.


%% Example:
%% license_server() :: #{
%%   <<"HealthStatus">> => string(),
%%   <<"Ipv4Address">> => [string()],
%%   <<"ProvisioningStatus">> => string()
%% }
-type license_server() :: #{binary() => any()}.


%% Example:
%% list_user_associations_request() :: #{
%%   <<"Filters">> => list(filter()),
%%   <<"IdentityProvider">> := list(),
%%   <<"InstanceId">> := [string()],
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => [string()]
%% }
-type list_user_associations_request() :: #{binary() => any()}.


%% Example:
%% active_directory_identity_provider() :: #{
%%   <<"ActiveDirectorySettings">> => active_directory_settings(),
%%   <<"ActiveDirectoryType">> => string(),
%%   <<"DirectoryId">> => string(),
%%   <<"IsSharedActiveDirectory">> => [boolean()]
%% }
-type active_directory_identity_provider() :: #{binary() => any()}.


%% Example:
%% rds_sal_settings() :: #{
%%   <<"RdsSalCredentialsProvider">> => list()
%% }
-type rds_sal_settings() :: #{binary() => any()}.

-type associate_user_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_license_server_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_license_server_endpoint_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type deregister_identity_provider_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type disassociate_user_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_identity_providers_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_instances_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_license_server_endpoints_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    conflict_exception().

-type list_product_subscriptions_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_user_associations_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type register_identity_provider_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type start_product_subscription_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_product_subscription_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    validation_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    internal_server_exception() | 
    resource_not_found_exception().

-type update_identity_provider_settings_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Associates the user to an EC2 instance to utilize user-based
%% subscriptions.
%%
%% Your estimated bill for charges on the number of users and related costs
%% will take 48 hours to appear for billing periods that haven't closed
%% (marked as Pending billing status) in Amazon Web Services Billing. For
%% more information, see Viewing your monthly charges:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/invoice.html
%% in the Amazon Web Services Billing User Guide.
-spec associate_user(aws_client:aws_client(), associate_user_request()) ->
    {ok, associate_user_response(), tuple()} |
    {error, any()} |
    {error, associate_user_errors(), tuple()}.
associate_user(Client, Input) ->
    associate_user(Client, Input, []).

-spec associate_user(aws_client:aws_client(), associate_user_request(), proplists:proplist()) ->
    {ok, associate_user_response(), tuple()} |
    {error, any()} |
    {error, associate_user_errors(), tuple()}.
associate_user(Client, Input0, Options0) ->
    Method = post,
    Path = ["/user/AssociateUser"],
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

%% @doc Creates a network endpoint for the Remote Desktop Services (RDS)
%% license server.
-spec create_license_server_endpoint(aws_client:aws_client(), create_license_server_endpoint_request()) ->
    {ok, create_license_server_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_license_server_endpoint_errors(), tuple()}.
create_license_server_endpoint(Client, Input) ->
    create_license_server_endpoint(Client, Input, []).

-spec create_license_server_endpoint(aws_client:aws_client(), create_license_server_endpoint_request(), proplists:proplist()) ->
    {ok, create_license_server_endpoint_response(), tuple()} |
    {error, any()} |
    {error, create_license_server_endpoint_errors(), tuple()}.
create_license_server_endpoint(Client, Input0, Options0) ->
    Method = post,
    Path = ["/license-server/CreateLicenseServerEndpoint"],
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

%% @doc Deletes a `LicenseServerEndpoint' resource.
-spec delete_license_server_endpoint(aws_client:aws_client(), delete_license_server_endpoint_request()) ->
    {ok, delete_license_server_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_license_server_endpoint_errors(), tuple()}.
delete_license_server_endpoint(Client, Input) ->
    delete_license_server_endpoint(Client, Input, []).

-spec delete_license_server_endpoint(aws_client:aws_client(), delete_license_server_endpoint_request(), proplists:proplist()) ->
    {ok, delete_license_server_endpoint_response(), tuple()} |
    {error, any()} |
    {error, delete_license_server_endpoint_errors(), tuple()}.
delete_license_server_endpoint(Client, Input0, Options0) ->
    Method = post,
    Path = ["/license-server/DeleteLicenseServerEndpoint"],
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

%% @doc Deregisters the Active Directory identity provider from License
%% Manager user-based subscriptions.
-spec deregister_identity_provider(aws_client:aws_client(), deregister_identity_provider_request()) ->
    {ok, deregister_identity_provider_response(), tuple()} |
    {error, any()} |
    {error, deregister_identity_provider_errors(), tuple()}.
deregister_identity_provider(Client, Input) ->
    deregister_identity_provider(Client, Input, []).

-spec deregister_identity_provider(aws_client:aws_client(), deregister_identity_provider_request(), proplists:proplist()) ->
    {ok, deregister_identity_provider_response(), tuple()} |
    {error, any()} |
    {error, deregister_identity_provider_errors(), tuple()}.
deregister_identity_provider(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identity-provider/DeregisterIdentityProvider"],
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

%% @doc Disassociates the user from an EC2 instance providing user-based
%% subscriptions.
-spec disassociate_user(aws_client:aws_client(), disassociate_user_request()) ->
    {ok, disassociate_user_response(), tuple()} |
    {error, any()} |
    {error, disassociate_user_errors(), tuple()}.
disassociate_user(Client, Input) ->
    disassociate_user(Client, Input, []).

-spec disassociate_user(aws_client:aws_client(), disassociate_user_request(), proplists:proplist()) ->
    {ok, disassociate_user_response(), tuple()} |
    {error, any()} |
    {error, disassociate_user_errors(), tuple()}.
disassociate_user(Client, Input0, Options0) ->
    Method = post,
    Path = ["/user/DisassociateUser"],
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

%% @doc Lists the Active Directory identity providers for user-based
%% subscriptions.
-spec list_identity_providers(aws_client:aws_client(), list_identity_providers_request()) ->
    {ok, list_identity_providers_response(), tuple()} |
    {error, any()} |
    {error, list_identity_providers_errors(), tuple()}.
list_identity_providers(Client, Input) ->
    list_identity_providers(Client, Input, []).

-spec list_identity_providers(aws_client:aws_client(), list_identity_providers_request(), proplists:proplist()) ->
    {ok, list_identity_providers_response(), tuple()} |
    {error, any()} |
    {error, list_identity_providers_errors(), tuple()}.
list_identity_providers(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identity-provider/ListIdentityProviders"],
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

%% @doc Lists the EC2 instances providing user-based subscriptions.
-spec list_instances(aws_client:aws_client(), list_instances_request()) ->
    {ok, list_instances_response(), tuple()} |
    {error, any()} |
    {error, list_instances_errors(), tuple()}.
list_instances(Client, Input) ->
    list_instances(Client, Input, []).

-spec list_instances(aws_client:aws_client(), list_instances_request(), proplists:proplist()) ->
    {ok, list_instances_response(), tuple()} |
    {error, any()} |
    {error, list_instances_errors(), tuple()}.
list_instances(Client, Input0, Options0) ->
    Method = post,
    Path = ["/instance/ListInstances"],
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

%% @doc List the Remote Desktop Services (RDS) License Server endpoints
-spec list_license_server_endpoints(aws_client:aws_client(), list_license_server_endpoints_request()) ->
    {ok, list_license_server_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_license_server_endpoints_errors(), tuple()}.
list_license_server_endpoints(Client, Input) ->
    list_license_server_endpoints(Client, Input, []).

-spec list_license_server_endpoints(aws_client:aws_client(), list_license_server_endpoints_request(), proplists:proplist()) ->
    {ok, list_license_server_endpoints_response(), tuple()} |
    {error, any()} |
    {error, list_license_server_endpoints_errors(), tuple()}.
list_license_server_endpoints(Client, Input0, Options0) ->
    Method = post,
    Path = ["/license-server/ListLicenseServerEndpoints"],
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

%% @doc Lists the user-based subscription products available from an identity
%% provider.
-spec list_product_subscriptions(aws_client:aws_client(), list_product_subscriptions_request()) ->
    {ok, list_product_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, list_product_subscriptions_errors(), tuple()}.
list_product_subscriptions(Client, Input) ->
    list_product_subscriptions(Client, Input, []).

-spec list_product_subscriptions(aws_client:aws_client(), list_product_subscriptions_request(), proplists:proplist()) ->
    {ok, list_product_subscriptions_response(), tuple()} |
    {error, any()} |
    {error, list_product_subscriptions_errors(), tuple()}.
list_product_subscriptions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/user/ListProductSubscriptions"],
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

%% @doc Returns the list of tags for the specified resource.
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

%% @doc Lists user associations for an identity provider.
-spec list_user_associations(aws_client:aws_client(), list_user_associations_request()) ->
    {ok, list_user_associations_response(), tuple()} |
    {error, any()} |
    {error, list_user_associations_errors(), tuple()}.
list_user_associations(Client, Input) ->
    list_user_associations(Client, Input, []).

-spec list_user_associations(aws_client:aws_client(), list_user_associations_request(), proplists:proplist()) ->
    {ok, list_user_associations_response(), tuple()} |
    {error, any()} |
    {error, list_user_associations_errors(), tuple()}.
list_user_associations(Client, Input0, Options0) ->
    Method = post,
    Path = ["/user/ListUserAssociations"],
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

%% @doc Registers an identity provider for user-based subscriptions.
-spec register_identity_provider(aws_client:aws_client(), register_identity_provider_request()) ->
    {ok, register_identity_provider_response(), tuple()} |
    {error, any()} |
    {error, register_identity_provider_errors(), tuple()}.
register_identity_provider(Client, Input) ->
    register_identity_provider(Client, Input, []).

-spec register_identity_provider(aws_client:aws_client(), register_identity_provider_request(), proplists:proplist()) ->
    {ok, register_identity_provider_response(), tuple()} |
    {error, any()} |
    {error, register_identity_provider_errors(), tuple()}.
register_identity_provider(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identity-provider/RegisterIdentityProvider"],
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

%% @doc Starts a product subscription for a user with the specified identity
%% provider.
%%
%% Your estimated bill for charges on the number of users and related costs
%% will take 48 hours to appear for billing periods that haven't closed
%% (marked as Pending billing status) in Amazon Web Services Billing. For
%% more information, see Viewing your monthly charges:
%% https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/invoice.html
%% in the Amazon Web Services Billing User Guide.
-spec start_product_subscription(aws_client:aws_client(), start_product_subscription_request()) ->
    {ok, start_product_subscription_response(), tuple()} |
    {error, any()} |
    {error, start_product_subscription_errors(), tuple()}.
start_product_subscription(Client, Input) ->
    start_product_subscription(Client, Input, []).

-spec start_product_subscription(aws_client:aws_client(), start_product_subscription_request(), proplists:proplist()) ->
    {ok, start_product_subscription_response(), tuple()} |
    {error, any()} |
    {error, start_product_subscription_errors(), tuple()}.
start_product_subscription(Client, Input0, Options0) ->
    Method = post,
    Path = ["/user/StartProductSubscription"],
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

%% @doc Stops a product subscription for a user with the specified identity
%% provider.
-spec stop_product_subscription(aws_client:aws_client(), stop_product_subscription_request()) ->
    {ok, stop_product_subscription_response(), tuple()} |
    {error, any()} |
    {error, stop_product_subscription_errors(), tuple()}.
stop_product_subscription(Client, Input) ->
    stop_product_subscription(Client, Input, []).

-spec stop_product_subscription(aws_client:aws_client(), stop_product_subscription_request(), proplists:proplist()) ->
    {ok, stop_product_subscription_response(), tuple()} |
    {error, any()} |
    {error, stop_product_subscription_errors(), tuple()}.
stop_product_subscription(Client, Input0, Options0) ->
    Method = post,
    Path = ["/user/StopProductSubscription"],
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

%% @doc Adds tags to a resource.
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
    Method = put,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes tags from a resource.
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
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates additional product configuration settings for the registered
%% identity provider.
-spec update_identity_provider_settings(aws_client:aws_client(), update_identity_provider_settings_request()) ->
    {ok, update_identity_provider_settings_response(), tuple()} |
    {error, any()} |
    {error, update_identity_provider_settings_errors(), tuple()}.
update_identity_provider_settings(Client, Input) ->
    update_identity_provider_settings(Client, Input, []).

-spec update_identity_provider_settings(aws_client:aws_client(), update_identity_provider_settings_request(), proplists:proplist()) ->
    {ok, update_identity_provider_settings_response(), tuple()} |
    {error, any()} |
    {error, update_identity_provider_settings_errors(), tuple()}.
update_identity_provider_settings(Client, Input0, Options0) ->
    Method = post,
    Path = ["/identity-provider/UpdateIdentityProviderSettings"],
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
    Client1 = Client#{service => <<"license-manager-user-subscriptions">>},
    Host = build_host(<<"license-manager-user-subscriptions">>, Client1),
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
