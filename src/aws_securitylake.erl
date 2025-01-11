%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Security Lake is a fully managed security data lake service.
%%
%% You can use Security Lake to
%% automatically centralize security data from cloud, on-premises, and custom
%% sources into a
%% data lake that's stored in your Amazon Web Services account. Amazon
%% Web Services Organizations
%% is an account management service that lets you consolidate multiple Amazon
%% Web Services
%% accounts into an organization that you create and centrally manage. With
%% Organizations, you
%% can create member accounts and invite existing accounts to join your
%% organization.
%% Security Lake helps you analyze security data for a more complete
%% understanding of your
%% security posture across the entire organization. It can also help you
%% improve the
%% protection of your workloads, applications, and data.
%%
%% The data lake is backed by Amazon Simple Storage Service (Amazon S3)
%% buckets, and you
%% retain ownership over your data.
%%
%% Amazon Security Lake integrates with CloudTrail, a service that provides a
%% record of
%% actions taken by a user, role, or an Amazon Web Services service. In
%% Security Lake, CloudTrail captures API calls for Security Lake as events.
%% The calls captured include calls
%% from the Security Lake console and code calls to the Security Lake API
%% operations. If you create a
%% trail, you can enable continuous delivery of CloudTrail events to an
%% Amazon S3 bucket, including events for Security Lake. If you don't
%% configure a trail, you can still
%% view the most recent events in the CloudTrail console in Event history.
%% Using the
%% information collected by CloudTrail you can determine the request that was
%% made to
%% Security Lake, the IP address from which the request was made, who made
%% the request, when it
%% was made, and additional details. To learn more about Security Lake
%% information in CloudTrail, see the Amazon Security Lake User Guide:
%% https://docs.aws.amazon.com/security-lake/latest/userguide/securitylake-cloudtrail.html.
%%
%% Security Lake automates the collection of security-related log and event
%% data from
%% integrated Amazon Web Services services and third-party services. It also
%% helps you manage
%% the lifecycle of data with customizable retention and replication
%% settings. Security Lake
%% converts ingested data into Apache Parquet format and a standard
%% open-source schema called
%% the Open Cybersecurity Schema Framework (OCSF).
%%
%% Other Amazon Web Services services and third-party services can subscribe
%% to the data that's stored in Security Lake for
%% incident response and security data analytics.
-module(aws_securitylake).

-export([create_aws_log_source/2,
         create_aws_log_source/3,
         create_custom_log_source/2,
         create_custom_log_source/3,
         create_data_lake/2,
         create_data_lake/3,
         create_data_lake_exception_subscription/2,
         create_data_lake_exception_subscription/3,
         create_data_lake_organization_configuration/2,
         create_data_lake_organization_configuration/3,
         create_subscriber/2,
         create_subscriber/3,
         create_subscriber_notification/3,
         create_subscriber_notification/4,
         delete_aws_log_source/2,
         delete_aws_log_source/3,
         delete_custom_log_source/3,
         delete_custom_log_source/4,
         delete_data_lake/2,
         delete_data_lake/3,
         delete_data_lake_exception_subscription/2,
         delete_data_lake_exception_subscription/3,
         delete_data_lake_organization_configuration/2,
         delete_data_lake_organization_configuration/3,
         delete_subscriber/3,
         delete_subscriber/4,
         delete_subscriber_notification/3,
         delete_subscriber_notification/4,
         deregister_data_lake_delegated_administrator/2,
         deregister_data_lake_delegated_administrator/3,
         get_data_lake_exception_subscription/1,
         get_data_lake_exception_subscription/3,
         get_data_lake_exception_subscription/4,
         get_data_lake_organization_configuration/1,
         get_data_lake_organization_configuration/3,
         get_data_lake_organization_configuration/4,
         get_data_lake_sources/2,
         get_data_lake_sources/3,
         get_subscriber/2,
         get_subscriber/4,
         get_subscriber/5,
         list_data_lake_exceptions/2,
         list_data_lake_exceptions/3,
         list_data_lakes/1,
         list_data_lakes/3,
         list_data_lakes/4,
         list_log_sources/2,
         list_log_sources/3,
         list_subscribers/1,
         list_subscribers/3,
         list_subscribers/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         register_data_lake_delegated_administrator/2,
         register_data_lake_delegated_administrator/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_data_lake/2,
         update_data_lake/3,
         update_data_lake_exception_subscription/2,
         update_data_lake_exception_subscription/3,
         update_subscriber/3,
         update_subscriber/4,
         update_subscriber_notification/3,
         update_subscriber_notification/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> := list(tag()())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_data_lake_exceptions_response() :: #{
%%   <<"exceptions">> => list(data_lake_exception()()),
%%   <<"nextToken">> => string()
%% }
-type list_data_lake_exceptions_response() :: #{binary() => any()}.


%% Example:
%% create_aws_log_source_response() :: #{
%%   <<"failed">> => list(string()())
%% }
-type create_aws_log_source_response() :: #{binary() => any()}.

%% Example:
%% delete_subscriber_request() :: #{}
-type delete_subscriber_request() :: #{}.


%% Example:
%% list_data_lakes_request() :: #{
%%   <<"regions">> => list(string()())
%% }
-type list_data_lakes_request() :: #{binary() => any()}.


%% Example:
%% data_lake_replication_configuration() :: #{
%%   <<"regions">> => list(string()()),
%%   <<"roleArn">> => string()
%% }
-type data_lake_replication_configuration() :: #{binary() => any()}.


%% Example:
%% create_custom_log_source_response() :: #{
%%   <<"source">> => custom_log_source_resource()
%% }
-type create_custom_log_source_response() :: #{binary() => any()}.


%% Example:
%% custom_log_source_attributes() :: #{
%%   <<"crawlerArn">> => string(),
%%   <<"databaseArn">> => string(),
%%   <<"tableArn">> => string()
%% }
-type custom_log_source_attributes() :: #{binary() => any()}.


%% Example:
%% list_log_sources_request() :: #{
%%   <<"accounts">> => list(string()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"regions">> => list(string()()),
%%   <<"sources">> => list(list()())
%% }
-type list_log_sources_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.

%% Example:
%% update_data_lake_exception_subscription_response() :: #{}
-type update_data_lake_exception_subscription_response() :: #{}.


%% Example:
%% update_subscriber_response() :: #{
%%   <<"subscriber">> => subscriber_resource()
%% }
-type update_subscriber_response() :: #{binary() => any()}.


%% Example:
%% get_data_lake_sources_request() :: #{
%%   <<"accounts">> => list(string()()),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type get_data_lake_sources_request() :: #{binary() => any()}.


%% Example:
%% create_data_lake_request() :: #{
%%   <<"configurations">> := list(data_lake_configuration()()),
%%   <<"metaStoreManagerRoleArn">> := string(),
%%   <<"tags">> => list(tag()())
%% }
-type create_data_lake_request() :: #{binary() => any()}.


%% Example:
%% custom_log_source_configuration() :: #{
%%   <<"crawlerConfiguration">> => custom_log_source_crawler_configuration(),
%%   <<"providerIdentity">> => aws_identity()
%% }
-type custom_log_source_configuration() :: #{binary() => any()}.


%% Example:
%% list_data_lakes_response() :: #{
%%   <<"dataLakes">> => list(data_lake_resource()())
%% }
-type list_data_lakes_response() :: #{binary() => any()}.

%% Example:
%% delete_custom_log_source_response() :: #{}
-type delete_custom_log_source_response() :: #{}.


%% Example:
%% create_subscriber_response() :: #{
%%   <<"subscriber">> => subscriber_resource()
%% }
-type create_subscriber_response() :: #{binary() => any()}.

%% Example:
%% create_data_lake_organization_configuration_response() :: #{}
-type create_data_lake_organization_configuration_response() :: #{}.


%% Example:
%% data_lake_source_status() :: #{
%%   <<"resource">> => [string()],
%%   <<"status">> => list(any())
%% }
-type data_lake_source_status() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> := list(string()())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% create_data_lake_exception_subscription_response() :: #{}
-type create_data_lake_exception_subscription_response() :: #{}.


%% Example:
%% update_data_lake_exception_subscription_request() :: #{
%%   <<"exceptionTimeToLive">> => [float()],
%%   <<"notificationEndpoint">> := string(),
%%   <<"subscriptionProtocol">> := string()
%% }
-type update_data_lake_exception_subscription_request() :: #{binary() => any()}.


%% Example:
%% data_lake_auto_enable_new_account_configuration() :: #{
%%   <<"region">> => string(),
%%   <<"sources">> => list(aws_log_source_resource()())
%% }
-type data_lake_auto_enable_new_account_configuration() :: #{binary() => any()}.


%% Example:
%% update_data_lake_request() :: #{
%%   <<"configurations">> := list(data_lake_configuration()()),
%%   <<"metaStoreManagerRoleArn">> => string()
%% }
-type update_data_lake_request() :: #{binary() => any()}.

%% Example:
%% delete_subscriber_response() :: #{}
-type delete_subscriber_response() :: #{}.


%% Example:
%% create_aws_log_source_request() :: #{
%%   <<"sources">> := list(aws_log_source_configuration()())
%% }
-type create_aws_log_source_request() :: #{binary() => any()}.


%% Example:
%% get_data_lake_sources_response() :: #{
%%   <<"dataLakeArn">> => string(),
%%   <<"dataLakeSources">> => list(data_lake_source()()),
%%   <<"nextToken">> => string()
%% }
-type get_data_lake_sources_response() :: #{binary() => any()}.


%% Example:
%% aws_log_source_resource() :: #{
%%   <<"sourceName">> => list(any()),
%%   <<"sourceVersion">> => string()
%% }
-type aws_log_source_resource() :: #{binary() => any()}.


%% Example:
%% data_lake_encryption_configuration() :: #{
%%   <<"kmsKeyId">> => [string()]
%% }
-type data_lake_encryption_configuration() :: #{binary() => any()}.

%% Example:
%% delete_data_lake_organization_configuration_response() :: #{}
-type delete_data_lake_organization_configuration_response() :: #{}.


%% Example:
%% update_data_lake_response() :: #{
%%   <<"dataLakes">> => list(data_lake_resource()())
%% }
-type update_data_lake_response() :: #{binary() => any()}.


%% Example:
%% create_data_lake_response() :: #{
%%   <<"dataLakes">> => list(data_lake_resource()())
%% }
-type create_data_lake_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceName">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceName">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% update_subscriber_request() :: #{
%%   <<"sources">> => list(list()()),
%%   <<"subscriberDescription">> => string(),
%%   <<"subscriberIdentity">> => aws_identity(),
%%   <<"subscriberName">> => string()
%% }
-type update_subscriber_request() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% get_subscriber_response() :: #{
%%   <<"subscriber">> => subscriber_resource()
%% }
-type get_subscriber_response() :: #{binary() => any()}.


%% Example:
%% data_lake_lifecycle_transition() :: #{
%%   <<"days">> => [integer()],
%%   <<"storageClass">> => string()
%% }
-type data_lake_lifecycle_transition() :: #{binary() => any()}.


%% Example:
%% data_lake_configuration() :: #{
%%   <<"encryptionConfiguration">> => data_lake_encryption_configuration(),
%%   <<"lifecycleConfiguration">> => data_lake_lifecycle_configuration(),
%%   <<"region">> => string(),
%%   <<"replicationConfiguration">> => data_lake_replication_configuration()
%% }
-type data_lake_configuration() :: #{binary() => any()}.


%% Example:
%% aws_identity() :: #{
%%   <<"externalId">> => string(),
%%   <<"principal">> => string()
%% }
-type aws_identity() :: #{binary() => any()}.

%% Example:
%% delete_subscriber_notification_response() :: #{}
-type delete_subscriber_notification_response() :: #{}.


%% Example:
%% get_data_lake_exception_subscription_response() :: #{
%%   <<"exceptionTimeToLive">> => [float()],
%%   <<"notificationEndpoint">> => string(),
%%   <<"subscriptionProtocol">> => string()
%% }
-type get_data_lake_exception_subscription_response() :: #{binary() => any()}.


%% Example:
%% update_subscriber_notification_request() :: #{
%%   <<"configuration">> := list()
%% }
-type update_subscriber_notification_request() :: #{binary() => any()}.


%% Example:
%% create_data_lake_exception_subscription_request() :: #{
%%   <<"exceptionTimeToLive">> => [float()],
%%   <<"notificationEndpoint">> := string(),
%%   <<"subscriptionProtocol">> := string()
%% }
-type create_data_lake_exception_subscription_request() :: #{binary() => any()}.

%% Example:
%% sqs_notification_configuration() :: #{}
-type sqs_notification_configuration() :: #{}.


%% Example:
%% create_subscriber_notification_request() :: #{
%%   <<"configuration">> := list()
%% }
-type create_subscriber_notification_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag()())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% subscriber_resource() :: #{
%%   <<"accessTypes">> => list(list(any())()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"resourceShareArn">> => string(),
%%   <<"resourceShareName">> => string(),
%%   <<"roleArn">> => string(),
%%   <<"s3BucketArn">> => string(),
%%   <<"sources">> => list(list()()),
%%   <<"subscriberArn">> => string(),
%%   <<"subscriberDescription">> => string(),
%%   <<"subscriberEndpoint">> => string(),
%%   <<"subscriberId">> => string(),
%%   <<"subscriberIdentity">> => aws_identity(),
%%   <<"subscriberName">> => string(),
%%   <<"subscriberStatus">> => list(any()),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type subscriber_resource() :: #{binary() => any()}.


%% Example:
%% create_data_lake_organization_configuration_request() :: #{
%%   <<"autoEnableNewAccount">> => list(data_lake_auto_enable_new_account_configuration()())
%% }
-type create_data_lake_organization_configuration_request() :: #{binary() => any()}.

%% Example:
%% deregister_data_lake_delegated_administrator_response() :: #{}
-type deregister_data_lake_delegated_administrator_response() :: #{}.


%% Example:
%% list_data_lake_exceptions_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string(),
%%   <<"regions">> => list(string()())
%% }
-type list_data_lake_exceptions_request() :: #{binary() => any()}.

%% Example:
%% deregister_data_lake_delegated_administrator_request() :: #{}
-type deregister_data_lake_delegated_administrator_request() :: #{}.


%% Example:
%% list_subscribers_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"subscribers">> => list(subscriber_resource()())
%% }
-type list_subscribers_response() :: #{binary() => any()}.


%% Example:
%% delete_data_lake_organization_configuration_request() :: #{
%%   <<"autoEnableNewAccount">> => list(data_lake_auto_enable_new_account_configuration()())
%% }
-type delete_data_lake_organization_configuration_request() :: #{binary() => any()}.


%% Example:
%% aws_log_source_configuration() :: #{
%%   <<"accounts">> => list(string()()),
%%   <<"regions">> => list(string()()),
%%   <<"sourceName">> => list(any()),
%%   <<"sourceVersion">> => string()
%% }
-type aws_log_source_configuration() :: #{binary() => any()}.


%% Example:
%% custom_log_source_crawler_configuration() :: #{
%%   <<"roleArn">> => string()
%% }
-type custom_log_source_crawler_configuration() :: #{binary() => any()}.


%% Example:
%% data_lake_source() :: #{
%%   <<"account">> => [string()],
%%   <<"eventClasses">> => list(string()()),
%%   <<"sourceName">> => [string()],
%%   <<"sourceStatuses">> => list(data_lake_source_status()())
%% }
-type data_lake_source() :: #{binary() => any()}.

%% Example:
%% get_subscriber_request() :: #{}
-type get_subscriber_request() :: #{}.


%% Example:
%% data_lake_lifecycle_expiration() :: #{
%%   <<"days">> => [integer()]
%% }
-type data_lake_lifecycle_expiration() :: #{binary() => any()}.


%% Example:
%% log_source() :: #{
%%   <<"account">> => string(),
%%   <<"region">> => string(),
%%   <<"sources">> => list(list()())
%% }
-type log_source() :: #{binary() => any()}.


%% Example:
%% data_lake_resource() :: #{
%%   <<"createStatus">> => list(any()),
%%   <<"dataLakeArn">> => string(),
%%   <<"encryptionConfiguration">> => data_lake_encryption_configuration(),
%%   <<"lifecycleConfiguration">> => data_lake_lifecycle_configuration(),
%%   <<"region">> => string(),
%%   <<"replicationConfiguration">> => data_lake_replication_configuration(),
%%   <<"s3BucketArn">> => string(),
%%   <<"updateStatus">> => data_lake_update_status()
%% }
-type data_lake_resource() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% delete_aws_log_source_response() :: #{
%%   <<"failed">> => list(string()())
%% }
-type delete_aws_log_source_response() :: #{binary() => any()}.


%% Example:
%% data_lake_lifecycle_configuration() :: #{
%%   <<"expiration">> => data_lake_lifecycle_expiration(),
%%   <<"transitions">> => list(data_lake_lifecycle_transition()())
%% }
-type data_lake_lifecycle_configuration() :: #{binary() => any()}.

%% Example:
%% delete_data_lake_response() :: #{}
-type delete_data_lake_response() :: #{}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"errorCode">> => [string()],
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% get_data_lake_organization_configuration_request() :: #{}
-type get_data_lake_organization_configuration_request() :: #{}.


%% Example:
%% list_log_sources_response() :: #{
%%   <<"nextToken">> => string(),
%%   <<"sources">> => list(log_source()())
%% }
-type list_log_sources_response() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% data_lake_update_exception() :: #{
%%   <<"code">> => [string()],
%%   <<"reason">> => [string()]
%% }
-type data_lake_update_exception() :: #{binary() => any()}.


%% Example:
%% create_custom_log_source_request() :: #{
%%   <<"configuration">> := custom_log_source_configuration(),
%%   <<"eventClasses">> => list(string()()),
%%   <<"sourceName">> := string(),
%%   <<"sourceVersion">> => string()
%% }
-type create_custom_log_source_request() :: #{binary() => any()}.


%% Example:
%% custom_log_source_provider() :: #{
%%   <<"location">> => string(),
%%   <<"roleArn">> => string()
%% }
-type custom_log_source_provider() :: #{binary() => any()}.


%% Example:
%% delete_data_lake_request() :: #{
%%   <<"regions">> := list(string()())
%% }
-type delete_data_lake_request() :: #{binary() => any()}.

%% Example:
%% delete_data_lake_exception_subscription_response() :: #{}
-type delete_data_lake_exception_subscription_response() :: #{}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"retryAfterSeconds">> => [integer()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% data_lake_exception() :: #{
%%   <<"exception">> => string(),
%%   <<"region">> => string(),
%%   <<"remediation">> => string(),
%%   <<"timestamp">> => [non_neg_integer()]
%% }
-type data_lake_exception() :: #{binary() => any()}.


%% Example:
%% update_subscriber_notification_response() :: #{
%%   <<"subscriberEndpoint">> => string()
%% }
-type update_subscriber_notification_response() :: #{binary() => any()}.


%% Example:
%% create_subscriber_notification_response() :: #{
%%   <<"subscriberEndpoint">> => string()
%% }
-type create_subscriber_notification_response() :: #{binary() => any()}.

%% Example:
%% register_data_lake_delegated_administrator_response() :: #{}
-type register_data_lake_delegated_administrator_response() :: #{}.


%% Example:
%% delete_custom_log_source_request() :: #{
%%   <<"sourceVersion">> => string()
%% }
-type delete_custom_log_source_request() :: #{binary() => any()}.


%% Example:
%% custom_log_source_resource() :: #{
%%   <<"attributes">> => custom_log_source_attributes(),
%%   <<"provider">> => custom_log_source_provider(),
%%   <<"sourceName">> => string(),
%%   <<"sourceVersion">> => string()
%% }
-type custom_log_source_resource() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% get_data_lake_organization_configuration_response() :: #{
%%   <<"autoEnableNewAccount">> => list(data_lake_auto_enable_new_account_configuration()())
%% }
-type get_data_lake_organization_configuration_response() :: #{binary() => any()}.

%% Example:
%% get_data_lake_exception_subscription_request() :: #{}
-type get_data_lake_exception_subscription_request() :: #{}.


%% Example:
%% register_data_lake_delegated_administrator_request() :: #{
%%   <<"accountId">> := string()
%% }
-type register_data_lake_delegated_administrator_request() :: #{binary() => any()}.

%% Example:
%% delete_subscriber_notification_request() :: #{}
-type delete_subscriber_notification_request() :: #{}.


%% Example:
%% create_subscriber_request() :: #{
%%   <<"accessTypes">> => list(list(any())()),
%%   <<"sources">> := list(list()()),
%%   <<"subscriberDescription">> => string(),
%%   <<"subscriberIdentity">> := aws_identity(),
%%   <<"subscriberName">> := [string()],
%%   <<"tags">> => list(tag()())
%% }
-type create_subscriber_request() :: #{binary() => any()}.


%% Example:
%% delete_aws_log_source_request() :: #{
%%   <<"sources">> := list(aws_log_source_configuration()())
%% }
-type delete_aws_log_source_request() :: #{binary() => any()}.


%% Example:
%% list_subscribers_request() :: #{
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_subscribers_request() :: #{binary() => any()}.


%% Example:
%% data_lake_update_status() :: #{
%%   <<"exception">> => data_lake_update_exception(),
%%   <<"requestId">> => [string()],
%%   <<"status">> => list(any())
%% }
-type data_lake_update_status() :: #{binary() => any()}.

%% Example:
%% delete_data_lake_exception_subscription_request() :: #{}
-type delete_data_lake_exception_subscription_request() :: #{}.


%% Example:
%% https_notification_configuration() :: #{
%%   <<"authorizationApiKeyName">> => [string()],
%%   <<"authorizationApiKeyValue">> => [string()],
%%   <<"endpoint">> => [string()],
%%   <<"httpMethod">> => list(any()),
%%   <<"targetRoleArn">> => string()
%% }
-type https_notification_configuration() :: #{binary() => any()}.

-type create_aws_log_source_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_custom_log_source_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_data_lake_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_data_lake_exception_subscription_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_data_lake_organization_configuration_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_subscriber_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_subscriber_notification_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_aws_log_source_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_custom_log_source_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_data_lake_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_data_lake_exception_subscription_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_data_lake_organization_configuration_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_subscriber_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_subscriber_notification_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type deregister_data_lake_delegated_administrator_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_data_lake_exception_subscription_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_data_lake_organization_configuration_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_data_lake_sources_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_subscriber_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_data_lake_exceptions_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_data_lakes_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_log_sources_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_subscribers_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type list_tags_for_resource_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type register_data_lake_delegated_administrator_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type tag_resource_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_data_lake_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_data_lake_exception_subscription_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_subscriber_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_subscriber_notification_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Adds a natively supported Amazon Web Services service as an Amazon
%% Security Lake source.
%%
%% Enables
%% source types for member accounts in required Amazon Web Services Regions,
%% based on the
%% parameters you specify. You can choose any source type in any Region for
%% either accounts
%% that are part of a trusted organization or standalone accounts. Once you
%% add an Amazon Web Services service as a source, Security Lake starts
%% collecting logs and events from it.
%%
%% You can use this API only to enable natively supported Amazon Web Services
%% services as a
%% source. Use `CreateCustomLogSource' to enable data collection from a
%% custom
%% source.
-spec create_aws_log_source(aws_client:aws_client(), create_aws_log_source_request()) ->
    {ok, create_aws_log_source_response(), tuple()} |
    {error, any()} |
    {error, create_aws_log_source_errors(), tuple()}.
create_aws_log_source(Client, Input) ->
    create_aws_log_source(Client, Input, []).

-spec create_aws_log_source(aws_client:aws_client(), create_aws_log_source_request(), proplists:proplist()) ->
    {ok, create_aws_log_source_response(), tuple()} |
    {error, any()} |
    {error, create_aws_log_source_errors(), tuple()}.
create_aws_log_source(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/logsources/aws"],
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

%% @doc Adds a third-party custom source in Amazon Security Lake, from the
%% Amazon Web Services Region
%% where you want to create a custom source.
%%
%% Security Lake can collect logs and events from
%% third-party custom sources. After creating the appropriate IAM role to
%% invoke Glue crawler, use this API to add a custom source name in Security
%% Lake. This
%% operation creates a partition in the Amazon S3 bucket for Security Lake as
%% the target
%% location for log files from the custom source. In addition, this operation
%% also creates an
%% associated Glue table and an Glue crawler.
-spec create_custom_log_source(aws_client:aws_client(), create_custom_log_source_request()) ->
    {ok, create_custom_log_source_response(), tuple()} |
    {error, any()} |
    {error, create_custom_log_source_errors(), tuple()}.
create_custom_log_source(Client, Input) ->
    create_custom_log_source(Client, Input, []).

-spec create_custom_log_source(aws_client:aws_client(), create_custom_log_source_request(), proplists:proplist()) ->
    {ok, create_custom_log_source_response(), tuple()} |
    {error, any()} |
    {error, create_custom_log_source_errors(), tuple()}.
create_custom_log_source(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/logsources/custom"],
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

%% @doc Initializes an Amazon Security Lake instance with the provided (or
%% default) configuration.
%%
%% You
%% can enable Security Lake in Amazon Web Services Regions with customized
%% settings before enabling
%% log collection in Regions. To specify particular Regions, configure these
%% Regions using the
%% `configurations' parameter. If you have already enabled Security Lake
%% in a Region
%% when you call this command, the command will update the Region if you
%% provide new
%% configuration parameters. If you have not already enabled Security Lake in
%% the Region when you
%% call this API, it will set up the data lake in the Region with the
%% specified
%% configurations.
%%
%% When you enable Security Lake, it starts ingesting security data after the
%% `CreateAwsLogSource' call and after you create subscribers using the
%% `CreateSubscriber' API. This includes ingesting security data from
%% sources, storing data, and making data accessible to subscribers. Security
%% Lake also enables
%% all the existing settings and resources that it stores or maintains for
%% your Amazon Web Services account in the current Region, including security
%% log and event data. For
%% more information, see the Amazon Security Lake User
%% Guide:
%% https://docs.aws.amazon.com/security-lake/latest/userguide/what-is-security-lake.html.
-spec create_data_lake(aws_client:aws_client(), create_data_lake_request()) ->
    {ok, create_data_lake_response(), tuple()} |
    {error, any()} |
    {error, create_data_lake_errors(), tuple()}.
create_data_lake(Client, Input) ->
    create_data_lake(Client, Input, []).

-spec create_data_lake(aws_client:aws_client(), create_data_lake_request(), proplists:proplist()) ->
    {ok, create_data_lake_response(), tuple()} |
    {error, any()} |
    {error, create_data_lake_errors(), tuple()}.
create_data_lake(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake"],
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

%% @doc Creates the specified notification subscription in Amazon Security
%% Lake for the organization
%% you specify.
%%
%% The notification subscription is created for exceptions that cannot be
%% resolved by Security Lake automatically.
-spec create_data_lake_exception_subscription(aws_client:aws_client(), create_data_lake_exception_subscription_request()) ->
    {ok, create_data_lake_exception_subscription_response(), tuple()} |
    {error, any()} |
    {error, create_data_lake_exception_subscription_errors(), tuple()}.
create_data_lake_exception_subscription(Client, Input) ->
    create_data_lake_exception_subscription(Client, Input, []).

-spec create_data_lake_exception_subscription(aws_client:aws_client(), create_data_lake_exception_subscription_request(), proplists:proplist()) ->
    {ok, create_data_lake_exception_subscription_response(), tuple()} |
    {error, any()} |
    {error, create_data_lake_exception_subscription_errors(), tuple()}.
create_data_lake_exception_subscription(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/exceptions/subscription"],
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

%% @doc Automatically enables Amazon Security Lake for new member accounts in
%% your organization.
%%
%% Security Lake is not automatically enabled for any existing member
%% accounts in your
%% organization.
%%
%% This operation merges the new data lake organization configuration with
%% the existing configuration for Security Lake in your organization. If you
%% want to create a new data lake organization configuration, you must delete
%% the existing one using DeleteDataLakeOrganizationConfiguration:
%% https://docs.aws.amazon.com/security-lake/latest/APIReference/API_DeleteDataLakeOrganizationConfiguration.html.
-spec create_data_lake_organization_configuration(aws_client:aws_client(), create_data_lake_organization_configuration_request()) ->
    {ok, create_data_lake_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_data_lake_organization_configuration_errors(), tuple()}.
create_data_lake_organization_configuration(Client, Input) ->
    create_data_lake_organization_configuration(Client, Input, []).

-spec create_data_lake_organization_configuration(aws_client:aws_client(), create_data_lake_organization_configuration_request(), proplists:proplist()) ->
    {ok, create_data_lake_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, create_data_lake_organization_configuration_errors(), tuple()}.
create_data_lake_organization_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/organization/configuration"],
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

%% @doc Creates a subscriber for accounts that are already enabled in Amazon
%% Security Lake.
%%
%% You can
%% create a subscriber with access to data in the current Amazon Web Services
%% Region.
-spec create_subscriber(aws_client:aws_client(), create_subscriber_request()) ->
    {ok, create_subscriber_response(), tuple()} |
    {error, any()} |
    {error, create_subscriber_errors(), tuple()}.
create_subscriber(Client, Input) ->
    create_subscriber(Client, Input, []).

-spec create_subscriber(aws_client:aws_client(), create_subscriber_request(), proplists:proplist()) ->
    {ok, create_subscriber_response(), tuple()} |
    {error, any()} |
    {error, create_subscriber_errors(), tuple()}.
create_subscriber(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/subscribers"],
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

%% @doc Notifies the subscriber when new data is written to the data lake for
%% the sources that
%% the subscriber consumes in Security Lake.
%%
%% You can create only one subscriber notification per
%% subscriber.
-spec create_subscriber_notification(aws_client:aws_client(), binary() | list(), create_subscriber_notification_request()) ->
    {ok, create_subscriber_notification_response(), tuple()} |
    {error, any()} |
    {error, create_subscriber_notification_errors(), tuple()}.
create_subscriber_notification(Client, SubscriberId, Input) ->
    create_subscriber_notification(Client, SubscriberId, Input, []).

-spec create_subscriber_notification(aws_client:aws_client(), binary() | list(), create_subscriber_notification_request(), proplists:proplist()) ->
    {ok, create_subscriber_notification_response(), tuple()} |
    {error, any()} |
    {error, create_subscriber_notification_errors(), tuple()}.
create_subscriber_notification(Client, SubscriberId, Input0, Options0) ->
    Method = post,
    Path = ["/v1/subscribers/", aws_util:encode_uri(SubscriberId), "/notification"],
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

%% @doc Removes a natively supported Amazon Web Services service as an Amazon
%% Security Lake source.
%%
%% You
%% can remove a source for one or more Regions. When you remove the source,
%% Security Lake stops
%% collecting data from that source in the specified Regions and accounts,
%% and subscribers can
%% no longer consume new data from the source. However, subscribers can still
%% consume data
%% that Security Lake collected from the source before removal.
%%
%% You can choose any source type in any Amazon Web Services Region for
%% either accounts that
%% are part of a trusted organization or standalone accounts.
-spec delete_aws_log_source(aws_client:aws_client(), delete_aws_log_source_request()) ->
    {ok, delete_aws_log_source_response(), tuple()} |
    {error, any()} |
    {error, delete_aws_log_source_errors(), tuple()}.
delete_aws_log_source(Client, Input) ->
    delete_aws_log_source(Client, Input, []).

-spec delete_aws_log_source(aws_client:aws_client(), delete_aws_log_source_request(), proplists:proplist()) ->
    {ok, delete_aws_log_source_response(), tuple()} |
    {error, any()} |
    {error, delete_aws_log_source_errors(), tuple()}.
delete_aws_log_source(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/logsources/aws/delete"],
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

%% @doc Removes a custom log source from Amazon Security Lake, to stop
%% sending data from the custom
%% source to Security Lake.
-spec delete_custom_log_source(aws_client:aws_client(), binary() | list(), delete_custom_log_source_request()) ->
    {ok, delete_custom_log_source_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_log_source_errors(), tuple()}.
delete_custom_log_source(Client, SourceName, Input) ->
    delete_custom_log_source(Client, SourceName, Input, []).

-spec delete_custom_log_source(aws_client:aws_client(), binary() | list(), delete_custom_log_source_request(), proplists:proplist()) ->
    {ok, delete_custom_log_source_response(), tuple()} |
    {error, any()} |
    {error, delete_custom_log_source_errors(), tuple()}.
delete_custom_log_source(Client, SourceName, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/datalake/logsources/custom/", aws_util:encode_uri(SourceName), ""],
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
                     {<<"sourceVersion">>, <<"sourceVersion">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc When you disable Amazon Security Lake from your account, Security
%% Lake is disabled in all Amazon Web Services Regions and it stops
%% collecting data from your sources.
%%
%% Also, this API
%% automatically takes steps to remove the account from Security Lake.
%% However, Security Lake retains
%% all of your existing settings and the resources that it created in your
%% Amazon Web Services
%% account in the current Amazon Web Services Region.
%%
%% The `DeleteDataLake' operation does not delete the data that is stored
%% in
%% your Amazon S3 bucket, which is owned by your Amazon Web Services account.
%% For more
%% information, see the Amazon Security Lake User
%% Guide:
%% https://docs.aws.amazon.com/security-lake/latest/userguide/disable-security-lake.html.
-spec delete_data_lake(aws_client:aws_client(), delete_data_lake_request()) ->
    {ok, delete_data_lake_response(), tuple()} |
    {error, any()} |
    {error, delete_data_lake_errors(), tuple()}.
delete_data_lake(Client, Input) ->
    delete_data_lake(Client, Input, []).

-spec delete_data_lake(aws_client:aws_client(), delete_data_lake_request(), proplists:proplist()) ->
    {ok, delete_data_lake_response(), tuple()} |
    {error, any()} |
    {error, delete_data_lake_errors(), tuple()}.
delete_data_lake(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/delete"],
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

%% @doc Deletes the specified notification subscription in Amazon Security
%% Lake for the organization
%% you specify.
-spec delete_data_lake_exception_subscription(aws_client:aws_client(), delete_data_lake_exception_subscription_request()) ->
    {ok, delete_data_lake_exception_subscription_response(), tuple()} |
    {error, any()} |
    {error, delete_data_lake_exception_subscription_errors(), tuple()}.
delete_data_lake_exception_subscription(Client, Input) ->
    delete_data_lake_exception_subscription(Client, Input, []).

-spec delete_data_lake_exception_subscription(aws_client:aws_client(), delete_data_lake_exception_subscription_request(), proplists:proplist()) ->
    {ok, delete_data_lake_exception_subscription_response(), tuple()} |
    {error, any()} |
    {error, delete_data_lake_exception_subscription_errors(), tuple()}.
delete_data_lake_exception_subscription(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/datalake/exceptions/subscription"],
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

%% @doc Turns off automatic enablement of Amazon Security Lake for member
%% accounts that are added to an organization in Organizations.
%%
%% Only the delegated
%% Security Lake administrator for an organization can perform this
%% operation. If the delegated Security Lake administrator performs this
%% operation, new member
%% accounts won't automatically contribute data to the data lake.
-spec delete_data_lake_organization_configuration(aws_client:aws_client(), delete_data_lake_organization_configuration_request()) ->
    {ok, delete_data_lake_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_data_lake_organization_configuration_errors(), tuple()}.
delete_data_lake_organization_configuration(Client, Input) ->
    delete_data_lake_organization_configuration(Client, Input, []).

-spec delete_data_lake_organization_configuration(aws_client:aws_client(), delete_data_lake_organization_configuration_request(), proplists:proplist()) ->
    {ok, delete_data_lake_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, delete_data_lake_organization_configuration_errors(), tuple()}.
delete_data_lake_organization_configuration(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/organization/configuration/delete"],
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

%% @doc Deletes the subscription permission and all notification settings for
%% accounts that are
%% already enabled in Amazon Security Lake.
%%
%% When you run `DeleteSubscriber', the
%% subscriber will no longer consume data from Security Lake and the
%% subscriber is removed. This
%% operation deletes the subscriber and removes access to data in the current
%% Amazon Web Services Region.
-spec delete_subscriber(aws_client:aws_client(), binary() | list(), delete_subscriber_request()) ->
    {ok, delete_subscriber_response(), tuple()} |
    {error, any()} |
    {error, delete_subscriber_errors(), tuple()}.
delete_subscriber(Client, SubscriberId, Input) ->
    delete_subscriber(Client, SubscriberId, Input, []).

-spec delete_subscriber(aws_client:aws_client(), binary() | list(), delete_subscriber_request(), proplists:proplist()) ->
    {ok, delete_subscriber_response(), tuple()} |
    {error, any()} |
    {error, delete_subscriber_errors(), tuple()}.
delete_subscriber(Client, SubscriberId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/subscribers/", aws_util:encode_uri(SubscriberId), ""],
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

%% @doc Deletes the specified subscription notification in Amazon Security
%% Lake for the organization
%% you specify.
-spec delete_subscriber_notification(aws_client:aws_client(), binary() | list(), delete_subscriber_notification_request()) ->
    {ok, delete_subscriber_notification_response(), tuple()} |
    {error, any()} |
    {error, delete_subscriber_notification_errors(), tuple()}.
delete_subscriber_notification(Client, SubscriberId, Input) ->
    delete_subscriber_notification(Client, SubscriberId, Input, []).

-spec delete_subscriber_notification(aws_client:aws_client(), binary() | list(), delete_subscriber_notification_request(), proplists:proplist()) ->
    {ok, delete_subscriber_notification_response(), tuple()} |
    {error, any()} |
    {error, delete_subscriber_notification_errors(), tuple()}.
delete_subscriber_notification(Client, SubscriberId, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/subscribers/", aws_util:encode_uri(SubscriberId), "/notification"],
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

%% @doc Deletes the Amazon Security Lake delegated administrator account for
%% the organization.
%%
%% This API
%% can only be called by the organization management account. The
%% organization management
%% account cannot be the delegated administrator account.
-spec deregister_data_lake_delegated_administrator(aws_client:aws_client(), deregister_data_lake_delegated_administrator_request()) ->
    {ok, deregister_data_lake_delegated_administrator_response(), tuple()} |
    {error, any()} |
    {error, deregister_data_lake_delegated_administrator_errors(), tuple()}.
deregister_data_lake_delegated_administrator(Client, Input) ->
    deregister_data_lake_delegated_administrator(Client, Input, []).

-spec deregister_data_lake_delegated_administrator(aws_client:aws_client(), deregister_data_lake_delegated_administrator_request(), proplists:proplist()) ->
    {ok, deregister_data_lake_delegated_administrator_response(), tuple()} |
    {error, any()} |
    {error, deregister_data_lake_delegated_administrator_errors(), tuple()}.
deregister_data_lake_delegated_administrator(Client, Input0, Options0) ->
    Method = delete,
    Path = ["/v1/datalake/delegate"],
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

%% @doc Retrieves the protocol and endpoint that were provided when
%% subscribing to Amazon SNS topics for exception notifications.
-spec get_data_lake_exception_subscription(aws_client:aws_client()) ->
    {ok, get_data_lake_exception_subscription_response(), tuple()} |
    {error, any()} |
    {error, get_data_lake_exception_subscription_errors(), tuple()}.
get_data_lake_exception_subscription(Client)
  when is_map(Client) ->
    get_data_lake_exception_subscription(Client, #{}, #{}).

-spec get_data_lake_exception_subscription(aws_client:aws_client(), map(), map()) ->
    {ok, get_data_lake_exception_subscription_response(), tuple()} |
    {error, any()} |
    {error, get_data_lake_exception_subscription_errors(), tuple()}.
get_data_lake_exception_subscription(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_lake_exception_subscription(Client, QueryMap, HeadersMap, []).

-spec get_data_lake_exception_subscription(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_data_lake_exception_subscription_response(), tuple()} |
    {error, any()} |
    {error, get_data_lake_exception_subscription_errors(), tuple()}.
get_data_lake_exception_subscription(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/datalake/exceptions/subscription"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the configuration that will be automatically set up for
%% accounts added to the
%% organization after the organization has onboarded to Amazon Security Lake.
%%
%% This API does not take
%% input parameters.
-spec get_data_lake_organization_configuration(aws_client:aws_client()) ->
    {ok, get_data_lake_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_data_lake_organization_configuration_errors(), tuple()}.
get_data_lake_organization_configuration(Client)
  when is_map(Client) ->
    get_data_lake_organization_configuration(Client, #{}, #{}).

-spec get_data_lake_organization_configuration(aws_client:aws_client(), map(), map()) ->
    {ok, get_data_lake_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_data_lake_organization_configuration_errors(), tuple()}.
get_data_lake_organization_configuration(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_data_lake_organization_configuration(Client, QueryMap, HeadersMap, []).

-spec get_data_lake_organization_configuration(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, get_data_lake_organization_configuration_response(), tuple()} |
    {error, any()} |
    {error, get_data_lake_organization_configuration_errors(), tuple()}.
get_data_lake_organization_configuration(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/datalake/organization/configuration"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a snapshot of the current Region, including whether Amazon
%% Security Lake is enabled
%% for those accounts and which sources Security Lake is collecting data
%% from.
-spec get_data_lake_sources(aws_client:aws_client(), get_data_lake_sources_request()) ->
    {ok, get_data_lake_sources_response(), tuple()} |
    {error, any()} |
    {error, get_data_lake_sources_errors(), tuple()}.
get_data_lake_sources(Client, Input) ->
    get_data_lake_sources(Client, Input, []).

-spec get_data_lake_sources(aws_client:aws_client(), get_data_lake_sources_request(), proplists:proplist()) ->
    {ok, get_data_lake_sources_response(), tuple()} |
    {error, any()} |
    {error, get_data_lake_sources_errors(), tuple()}.
get_data_lake_sources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/sources"],
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

%% @doc Retrieves the subscription information for the specified subscription
%% ID.
%%
%% You can get
%% information about a specific subscriber.
-spec get_subscriber(aws_client:aws_client(), binary() | list()) ->
    {ok, get_subscriber_response(), tuple()} |
    {error, any()} |
    {error, get_subscriber_errors(), tuple()}.
get_subscriber(Client, SubscriberId)
  when is_map(Client) ->
    get_subscriber(Client, SubscriberId, #{}, #{}).

-spec get_subscriber(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_subscriber_response(), tuple()} |
    {error, any()} |
    {error, get_subscriber_errors(), tuple()}.
get_subscriber(Client, SubscriberId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_subscriber(Client, SubscriberId, QueryMap, HeadersMap, []).

-spec get_subscriber(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_subscriber_response(), tuple()} |
    {error, any()} |
    {error, get_subscriber_errors(), tuple()}.
get_subscriber(Client, SubscriberId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/subscribers/", aws_util:encode_uri(SubscriberId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the Amazon Security Lake exceptions that you can use to find
%% the source of problems and
%% fix them.
-spec list_data_lake_exceptions(aws_client:aws_client(), list_data_lake_exceptions_request()) ->
    {ok, list_data_lake_exceptions_response(), tuple()} |
    {error, any()} |
    {error, list_data_lake_exceptions_errors(), tuple()}.
list_data_lake_exceptions(Client, Input) ->
    list_data_lake_exceptions(Client, Input, []).

-spec list_data_lake_exceptions(aws_client:aws_client(), list_data_lake_exceptions_request(), proplists:proplist()) ->
    {ok, list_data_lake_exceptions_response(), tuple()} |
    {error, any()} |
    {error, list_data_lake_exceptions_errors(), tuple()}.
list_data_lake_exceptions(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/exceptions"],
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

%% @doc Retrieves the Amazon Security Lake configuration object for the
%% specified Amazon Web Services Regions.
%%
%% You can use this operation to determine whether
%% Security Lake is enabled for a Region.
-spec list_data_lakes(aws_client:aws_client()) ->
    {ok, list_data_lakes_response(), tuple()} |
    {error, any()} |
    {error, list_data_lakes_errors(), tuple()}.
list_data_lakes(Client)
  when is_map(Client) ->
    list_data_lakes(Client, #{}, #{}).

-spec list_data_lakes(aws_client:aws_client(), map(), map()) ->
    {ok, list_data_lakes_response(), tuple()} |
    {error, any()} |
    {error, list_data_lakes_errors(), tuple()}.
list_data_lakes(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_data_lakes(Client, QueryMap, HeadersMap, []).

-spec list_data_lakes(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_data_lakes_response(), tuple()} |
    {error, any()} |
    {error, list_data_lakes_errors(), tuple()}.
list_data_lakes(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/datalakes"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"regions">>, maps:get(<<"regions">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the log sources.
-spec list_log_sources(aws_client:aws_client(), list_log_sources_request()) ->
    {ok, list_log_sources_response(), tuple()} |
    {error, any()} |
    {error, list_log_sources_errors(), tuple()}.
list_log_sources(Client, Input) ->
    list_log_sources(Client, Input, []).

-spec list_log_sources(aws_client:aws_client(), list_log_sources_request(), proplists:proplist()) ->
    {ok, list_log_sources_response(), tuple()} |
    {error, any()} |
    {error, list_log_sources_errors(), tuple()}.
list_log_sources(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/logsources/list"],
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

%% @doc Lists all subscribers for the specific Amazon Security Lake account
%% ID.
%%
%% You can retrieve a list
%% of subscriptions associated with a specific organization or Amazon Web
%% Services account.
-spec list_subscribers(aws_client:aws_client()) ->
    {ok, list_subscribers_response(), tuple()} |
    {error, any()} |
    {error, list_subscribers_errors(), tuple()}.
list_subscribers(Client)
  when is_map(Client) ->
    list_subscribers(Client, #{}, #{}).

-spec list_subscribers(aws_client:aws_client(), map(), map()) ->
    {ok, list_subscribers_response(), tuple()} |
    {error, any()} |
    {error, list_subscribers_errors(), tuple()}.
list_subscribers(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_subscribers(Client, QueryMap, HeadersMap, []).

-spec list_subscribers(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_subscribers_response(), tuple()} |
    {error, any()} |
    {error, list_subscribers_errors(), tuple()}.
list_subscribers(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/v1/subscribers"],
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

%% @doc Retrieves the tags (keys and values) that are associated with an
%% Amazon Security Lake resource: a subscriber, or the data lake
%% configuration for
%% your Amazon Web Services account in a particular Amazon Web Services
%% Region.
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

%% @doc Designates the Amazon Security Lake delegated administrator account
%% for the organization.
%%
%% This
%% API can only be called by the organization management account. The
%% organization management
%% account cannot be the delegated administrator account.
-spec register_data_lake_delegated_administrator(aws_client:aws_client(), register_data_lake_delegated_administrator_request()) ->
    {ok, register_data_lake_delegated_administrator_response(), tuple()} |
    {error, any()} |
    {error, register_data_lake_delegated_administrator_errors(), tuple()}.
register_data_lake_delegated_administrator(Client, Input) ->
    register_data_lake_delegated_administrator(Client, Input, []).

-spec register_data_lake_delegated_administrator(aws_client:aws_client(), register_data_lake_delegated_administrator_request(), proplists:proplist()) ->
    {ok, register_data_lake_delegated_administrator_response(), tuple()} |
    {error, any()} |
    {error, register_data_lake_delegated_administrator_errors(), tuple()}.
register_data_lake_delegated_administrator(Client, Input0, Options0) ->
    Method = post,
    Path = ["/v1/datalake/delegate"],
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

%% @doc Adds or updates one or more tags that are associated with an Amazon
%% Security Lake resource: a subscriber, or the data lake configuration for
%% your
%% Amazon Web Services account in a particular Amazon Web Services Region.
%%
%% A tag is a label that you can define and associate with
%% Amazon Web Services resources. Each tag consists of a required tag key and
%% an associated tag value. A
%% tag key is a general label that acts as a category for a more specific tag
%% value. A tag value acts as a
%% descriptor for a tag key. Tags can help you identify, categorize, and
%% manage resources in different ways, such as by owner, environment, or
%% other
%% criteria. For more information, see
%% Tagging Amazon Security Lake resources:
%% https://docs.aws.amazon.com/security-lake/latest/userguide/tagging-resources.html
%% in the
%% Amazon Security Lake User Guide.
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
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc Removes one or more tags (keys and values) from an Amazon Security
%% Lake resource: a subscriber, or the data lake configuration for your
%% Amazon Web Services account in a particular Amazon Web Services Region.
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
    Path = ["/v1/tags/", aws_util:encode_uri(ResourceArn), ""],
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
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc You can use `UpdateDataLake' to specify where to store your
%% security data, how it should
%% be encrypted at rest and for how long.
%%
%% You can add a Rollup
%% Region:
%% https://docs.aws.amazon.com/security-lake/latest/userguide/manage-regions.html#add-rollup-region
%% to consolidate data from multiple Amazon Web Services Regions, replace
%% default encryption (SSE-S3) with Customer Manged Key:
%% https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#customer-cmk,
%% or specify transition and expiration actions through storage Lifecycle
%% management:
%% https://docs.aws.amazon.com/security-lake/latest/userguide/lifecycle-management.html.
%% The `UpdateDataLake' API works as an &quot;upsert&quot; operation that
%% performs an insert if the specified item or record does not exist, or an
%% update if it
%% already exists. Security Lake securely stores your data at rest using
%% Amazon Web Services encryption solutions. For more details, see Data
%% protection in Amazon Security Lake:
%% https://docs.aws.amazon.com/security-lake/latest/userguide/data-protection.html.
%%
%% For example, omitting the key `encryptionConfiguration' from a Region
%% that is
%% included in an update call that currently uses KMS will leave that
%% Region's KMS key in
%% place, but specifying `encryptionConfiguration: {kmsKeyId:
%% 'S3_MANAGED_KEY'}'
%% for that same Region will reset the key to `S3-managed'.
%%
%% For more details about lifecycle management and how to update retention
%% settings for one or more Regions after enabling Security Lake, see the
%% Amazon Security Lake User Guide:
%% https://docs.aws.amazon.com/security-lake/latest/userguide/lifecycle-management.html.
-spec update_data_lake(aws_client:aws_client(), update_data_lake_request()) ->
    {ok, update_data_lake_response(), tuple()} |
    {error, any()} |
    {error, update_data_lake_errors(), tuple()}.
update_data_lake(Client, Input) ->
    update_data_lake(Client, Input, []).

-spec update_data_lake(aws_client:aws_client(), update_data_lake_request(), proplists:proplist()) ->
    {ok, update_data_lake_response(), tuple()} |
    {error, any()} |
    {error, update_data_lake_errors(), tuple()}.
update_data_lake(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/datalake"],
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

%% @doc Updates the specified notification subscription in Amazon Security
%% Lake for the organization
%% you specify.
-spec update_data_lake_exception_subscription(aws_client:aws_client(), update_data_lake_exception_subscription_request()) ->
    {ok, update_data_lake_exception_subscription_response(), tuple()} |
    {error, any()} |
    {error, update_data_lake_exception_subscription_errors(), tuple()}.
update_data_lake_exception_subscription(Client, Input) ->
    update_data_lake_exception_subscription(Client, Input, []).

-spec update_data_lake_exception_subscription(aws_client:aws_client(), update_data_lake_exception_subscription_request(), proplists:proplist()) ->
    {ok, update_data_lake_exception_subscription_response(), tuple()} |
    {error, any()} |
    {error, update_data_lake_exception_subscription_errors(), tuple()}.
update_data_lake_exception_subscription(Client, Input0, Options0) ->
    Method = put,
    Path = ["/v1/datalake/exceptions/subscription"],
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

%% @doc Updates an existing subscription for the given Amazon Security Lake
%% account ID.
%%
%% You can update
%% a subscriber by changing the sources that the subscriber consumes data
%% from.
-spec update_subscriber(aws_client:aws_client(), binary() | list(), update_subscriber_request()) ->
    {ok, update_subscriber_response(), tuple()} |
    {error, any()} |
    {error, update_subscriber_errors(), tuple()}.
update_subscriber(Client, SubscriberId, Input) ->
    update_subscriber(Client, SubscriberId, Input, []).

-spec update_subscriber(aws_client:aws_client(), binary() | list(), update_subscriber_request(), proplists:proplist()) ->
    {ok, update_subscriber_response(), tuple()} |
    {error, any()} |
    {error, update_subscriber_errors(), tuple()}.
update_subscriber(Client, SubscriberId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/subscribers/", aws_util:encode_uri(SubscriberId), ""],
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

%% @doc Updates an existing notification method for the subscription (SQS or
%% HTTPs endpoint) or
%% switches the notification subscription endpoint for a subscriber.
-spec update_subscriber_notification(aws_client:aws_client(), binary() | list(), update_subscriber_notification_request()) ->
    {ok, update_subscriber_notification_response(), tuple()} |
    {error, any()} |
    {error, update_subscriber_notification_errors(), tuple()}.
update_subscriber_notification(Client, SubscriberId, Input) ->
    update_subscriber_notification(Client, SubscriberId, Input, []).

-spec update_subscriber_notification(aws_client:aws_client(), binary() | list(), update_subscriber_notification_request(), proplists:proplist()) ->
    {ok, update_subscriber_notification_response(), tuple()} |
    {error, any()} |
    {error, update_subscriber_notification_errors(), tuple()}.
update_subscriber_notification(Client, SubscriberId, Input0, Options0) ->
    Method = put,
    Path = ["/v1/subscribers/", aws_util:encode_uri(SubscriberId), "/notification"],
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
    Client1 = Client#{service => <<"securitylake">>},
    Host = build_host(<<"securitylake">>, Client1),
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
