%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS CloudHSM Service
%%
%% This is documentation for AWS CloudHSM Classic.
%%
%% For
%% more information, see AWS CloudHSM
%% Classic FAQs: http://aws.amazon.com/cloudhsm/faqs-classic/, the AWS
%% CloudHSM Classic User Guide:
%% https://docs.aws.amazon.com/cloudhsm/classic/userguide/, and the AWS
%% CloudHSM Classic API Reference:
%% https://docs.aws.amazon.com/cloudhsm/classic/APIReference/.
%%
%% For information about the current version of AWS
%% CloudHSM, see AWS CloudHSM: http://aws.amazon.com/cloudhsm/, the
%% AWS CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/,
%% and the AWS CloudHSM API
%% Reference: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/.
-module(aws_cloudhsm).

-export([add_tags_to_resource/2,
         add_tags_to_resource/3,
         create_hapg/2,
         create_hapg/3,
         create_hsm/2,
         create_hsm/3,
         create_luna_client/2,
         create_luna_client/3,
         delete_hapg/2,
         delete_hapg/3,
         delete_hsm/2,
         delete_hsm/3,
         delete_luna_client/2,
         delete_luna_client/3,
         describe_hapg/2,
         describe_hapg/3,
         describe_hsm/2,
         describe_hsm/3,
         describe_luna_client/2,
         describe_luna_client/3,
         get_config/2,
         get_config/3,
         list_available_zones/2,
         list_available_zones/3,
         list_hapgs/2,
         list_hapgs/3,
         list_hsms/2,
         list_hsms/3,
         list_luna_clients/2,
         list_luna_clients/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         modify_hapg/2,
         modify_hapg/3,
         modify_hsm/2,
         modify_hsm/3,
         modify_luna_client/2,
         modify_luna_client/3,
         remove_tags_from_resource/2,
         remove_tags_from_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% delete_hsm_request() :: #{
%%   <<"HsmArn">> := string()
%% }
-type delete_hsm_request() :: #{binary() => any()}.

%% Example:
%% create_hsm_response() :: #{
%%   <<"HsmArn">> => string()
%% }
-type create_hsm_response() :: #{binary() => any()}.

%% Example:
%% modify_hapg_response() :: #{
%%   <<"HapgArn">> => string()
%% }
-type modify_hapg_response() :: #{binary() => any()}.

%% Example:
%% modify_luna_client_request() :: #{
%%   <<"Certificate">> := string(),
%%   <<"ClientArn">> := string()
%% }
-type modify_luna_client_request() :: #{binary() => any()}.

%% Example:
%% modify_hsm_request() :: #{
%%   <<"EniIp">> => string(),
%%   <<"ExternalId">> => string(),
%%   <<"HsmArn">> := string(),
%%   <<"IamRoleArn">> => string(),
%%   <<"SubnetId">> => string(),
%%   <<"SyslogIp">> => string()
%% }
-type modify_hsm_request() :: #{binary() => any()}.

%% Example:
%% list_hapgs_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type list_hapgs_request() :: #{binary() => any()}.

%% Example:
%% remove_tags_from_resource_response() :: #{
%%   <<"Status">> => string()
%% }
-type remove_tags_from_resource_response() :: #{binary() => any()}.

%% Example:
%% get_config_request() :: #{
%%   <<"ClientArn">> := string(),
%%   <<"ClientVersion">> := list(any()),
%%   <<"HapgList">> := list(string())
%% }
-type get_config_request() :: #{binary() => any()}.

%% Example:
%% list_hsms_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type list_hsms_request() :: #{binary() => any()}.

%% Example:
%% list_luna_clients_request() :: #{
%%   <<"NextToken">> => string()
%% }
-type list_luna_clients_request() :: #{binary() => any()}.

%% Example:
%% get_config_response() :: #{
%%   <<"ConfigCred">> => string(),
%%   <<"ConfigFile">> => string(),
%%   <<"ConfigType">> => string()
%% }
-type get_config_response() :: #{binary() => any()}.

%% Example:
%% describe_hapg_request() :: #{
%%   <<"HapgArn">> := string()
%% }
-type describe_hapg_request() :: #{binary() => any()}.

%% Example:
%% delete_luna_client_request() :: #{
%%   <<"ClientArn">> := string()
%% }
-type delete_luna_client_request() :: #{binary() => any()}.

%% Example:
%% add_tags_to_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagList">> := list(tag())
%% }
-type add_tags_to_resource_request() :: #{binary() => any()}.

%% Example:
%% describe_hsm_response() :: #{
%%   <<"AvailabilityZone">> => string(),
%%   <<"EniId">> => string(),
%%   <<"EniIp">> => string(),
%%   <<"HsmArn">> => string(),
%%   <<"HsmType">> => string(),
%%   <<"IamRoleArn">> => string(),
%%   <<"Partitions">> => list(string()),
%%   <<"SerialNumber">> => string(),
%%   <<"ServerCertLastUpdated">> => string(),
%%   <<"ServerCertUri">> => string(),
%%   <<"SoftwareVersion">> => string(),
%%   <<"SshKeyLastUpdated">> => string(),
%%   <<"SshPublicKey">> => string(),
%%   <<"Status">> => list(any()),
%%   <<"StatusDetails">> => string(),
%%   <<"SubnetId">> => string(),
%%   <<"SubscriptionEndDate">> => string(),
%%   <<"SubscriptionStartDate">> => string(),
%%   <<"SubscriptionType">> => list(any()),
%%   <<"VendorName">> => string(),
%%   <<"VpcId">> => string()
%% }
-type describe_hsm_response() :: #{binary() => any()}.

%% Example:
%% describe_luna_client_response() :: #{
%%   <<"Certificate">> => string(),
%%   <<"CertificateFingerprint">> => string(),
%%   <<"ClientArn">> => string(),
%%   <<"Label">> => string(),
%%   <<"LastModifiedTimestamp">> => string()
%% }
-type describe_luna_client_response() :: #{binary() => any()}.

%% Example:
%% delete_luna_client_response() :: #{
%%   <<"Status">> => string()
%% }
-type delete_luna_client_response() :: #{binary() => any()}.

%% Example:
%% create_luna_client_response() :: #{
%%   <<"ClientArn">> => string()
%% }
-type create_luna_client_response() :: #{binary() => any()}.

%% Example:
%% delete_hsm_response() :: #{
%%   <<"Status">> => string()
%% }
-type delete_hsm_response() :: #{binary() => any()}.

%% Example:
%% delete_hapg_request() :: #{
%%   <<"HapgArn">> := string()
%% }
-type delete_hapg_request() :: #{binary() => any()}.

%% Example:
%% modify_luna_client_response() :: #{
%%   <<"ClientArn">> => string()
%% }
-type modify_luna_client_response() :: #{binary() => any()}.

%% Example:
%% modify_hapg_request() :: #{
%%   <<"HapgArn">> := string(),
%%   <<"Label">> => string(),
%%   <<"PartitionSerialList">> => list(string())
%% }
-type modify_hapg_request() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% invalid_request_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryable">> => boolean()
%% }
-type invalid_request_exception() :: #{binary() => any()}.

%% Example:
%% create_hapg_response() :: #{
%%   <<"HapgArn">> => string()
%% }
-type create_hapg_response() :: #{binary() => any()}.

%% Example:
%% create_hsm_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"EniIp">> => string(),
%%   <<"ExternalId">> => string(),
%%   <<"IamRoleArn">> := string(),
%%   <<"SshKey">> := string(),
%%   <<"SubnetId">> := string(),
%%   <<"SubscriptionType">> := list(any()),
%%   <<"SyslogIp">> => string()
%% }
-type create_hsm_request() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"TagList">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% remove_tags_from_resource_request() :: #{
%%   <<"ResourceArn">> := string(),
%%   <<"TagKeyList">> := list(string())
%% }
-type remove_tags_from_resource_request() :: #{binary() => any()}.

%% Example:
%% add_tags_to_resource_response() :: #{
%%   <<"Status">> => string()
%% }
-type add_tags_to_resource_response() :: #{binary() => any()}.

%% Example:
%% cloud_hsm_internal_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryable">> => boolean()
%% }
-type cloud_hsm_internal_exception() :: #{binary() => any()}.

%% Example:
%% list_hapgs_response() :: #{
%%   <<"HapgList">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_hapgs_response() :: #{binary() => any()}.

%% Example:
%% describe_hsm_request() :: #{
%%   <<"HsmArn">> => string(),
%%   <<"HsmSerialNumber">> => string()
%% }
-type describe_hsm_request() :: #{binary() => any()}.

%% Example:
%% list_available_zones_request() :: #{

%% }
-type list_available_zones_request() :: #{binary() => any()}.

%% Example:
%% cloud_hsm_service_exception() :: #{
%%   <<"message">> => string(),
%%   <<"retryable">> => boolean()
%% }
-type cloud_hsm_service_exception() :: #{binary() => any()}.

%% Example:
%% list_luna_clients_response() :: #{
%%   <<"ClientList">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_luna_clients_response() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"ResourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% list_available_zones_response() :: #{
%%   <<"AZList">> => list(string())
%% }
-type list_available_zones_response() :: #{binary() => any()}.

%% Example:
%% create_hapg_request() :: #{
%%   <<"Label">> := string()
%% }
-type create_hapg_request() :: #{binary() => any()}.

%% Example:
%% list_hsms_response() :: #{
%%   <<"HsmList">> => list(string()),
%%   <<"NextToken">> => string()
%% }
-type list_hsms_response() :: #{binary() => any()}.

%% Example:
%% describe_luna_client_request() :: #{
%%   <<"CertificateFingerprint">> => string(),
%%   <<"ClientArn">> => string()
%% }
-type describe_luna_client_request() :: #{binary() => any()}.

%% Example:
%% delete_hapg_response() :: #{
%%   <<"Status">> => string()
%% }
-type delete_hapg_response() :: #{binary() => any()}.

%% Example:
%% describe_hapg_response() :: #{
%%   <<"HapgArn">> => string(),
%%   <<"HapgSerial">> => string(),
%%   <<"HsmsLastActionFailed">> => list(string()),
%%   <<"HsmsPendingDeletion">> => list(string()),
%%   <<"HsmsPendingRegistration">> => list(string()),
%%   <<"Label">> => string(),
%%   <<"LastModifiedTimestamp">> => string(),
%%   <<"PartitionSerialList">> => list(string()),
%%   <<"State">> => list(any())
%% }
-type describe_hapg_response() :: #{binary() => any()}.

%% Example:
%% modify_hsm_response() :: #{
%%   <<"HsmArn">> => string()
%% }
-type modify_hsm_response() :: #{binary() => any()}.

%% Example:
%% create_luna_client_request() :: #{
%%   <<"Certificate">> := string(),
%%   <<"Label">> => string()
%% }
-type create_luna_client_request() :: #{binary() => any()}.

-type add_tags_to_resource_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_internal_exception() | 
    invalid_request_exception().

-type create_hapg_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_internal_exception() | 
    invalid_request_exception().

-type create_hsm_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_internal_exception() | 
    invalid_request_exception().

-type create_luna_client_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_internal_exception() | 
    invalid_request_exception().

-type delete_hapg_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_internal_exception() | 
    invalid_request_exception().

-type delete_hsm_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_internal_exception() | 
    invalid_request_exception().

-type delete_luna_client_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_internal_exception() | 
    invalid_request_exception().

-type describe_hapg_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_internal_exception() | 
    invalid_request_exception().

-type describe_hsm_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_internal_exception() | 
    invalid_request_exception().

-type describe_luna_client_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_internal_exception() | 
    invalid_request_exception().

-type get_config_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_internal_exception() | 
    invalid_request_exception().

-type list_available_zones_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_internal_exception() | 
    invalid_request_exception().

-type list_hapgs_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_internal_exception() | 
    invalid_request_exception().

-type list_hsms_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_internal_exception() | 
    invalid_request_exception().

-type list_luna_clients_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_internal_exception() | 
    invalid_request_exception().

-type list_tags_for_resource_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_internal_exception() | 
    invalid_request_exception().

-type modify_hapg_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_internal_exception() | 
    invalid_request_exception().

-type modify_hsm_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_internal_exception() | 
    invalid_request_exception().

-type modify_luna_client_errors() ::
    cloud_hsm_service_exception().

-type remove_tags_from_resource_errors() ::
    cloud_hsm_service_exception() | 
    cloud_hsm_internal_exception() | 
    invalid_request_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For
%% more information, see AWS CloudHSM
%% Classic FAQs: http://aws.amazon.com/cloudhsm/faqs-classic/, the AWS
%% CloudHSM Classic User Guide:
%% https://docs.aws.amazon.com/cloudhsm/classic/userguide/, and the AWS
%% CloudHSM Classic API Reference:
%% https://docs.aws.amazon.com/cloudhsm/classic/APIReference/.
%%
%% For information about the current version of AWS
%% CloudHSM, see AWS CloudHSM: http://aws.amazon.com/cloudhsm/, the
%% AWS CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/,
%% and the AWS CloudHSM API
%% Reference: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/.
%%
%% Adds or overwrites one or more tags for the specified AWS CloudHSM
%% resource.
%%
%% Each tag consists of a key and a value. Tag keys must be unique to each
%% resource.
-spec add_tags_to_resource(aws_client:aws_client(), add_tags_to_resource_request()) ->
    {ok, add_tags_to_resource_response(), tuple()} |
    {error, any()} |
    {error, add_tags_to_resource_errors(), tuple()}.
add_tags_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_resource(Client, Input, []).

-spec add_tags_to_resource(aws_client:aws_client(), add_tags_to_resource_request(), proplists:proplist()) ->
    {ok, add_tags_to_resource_response(), tuple()} |
    {error, any()} |
    {error, add_tags_to_resource_errors(), tuple()}.
add_tags_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToResource">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For
%% more information, see AWS CloudHSM
%% Classic FAQs: http://aws.amazon.com/cloudhsm/faqs-classic/, the AWS
%% CloudHSM Classic User Guide:
%% https://docs.aws.amazon.com/cloudhsm/classic/userguide/, and the AWS
%% CloudHSM Classic API Reference:
%% https://docs.aws.amazon.com/cloudhsm/classic/APIReference/.
%%
%% For information about the current version of AWS
%% CloudHSM, see AWS CloudHSM: http://aws.amazon.com/cloudhsm/, the
%% AWS CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/,
%% and the AWS CloudHSM API
%% Reference: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/.
%%
%% Creates a high-availability partition group. A high-availability partition
%% group is a
%% group of partitions that spans multiple physical HSMs.
-spec create_hapg(aws_client:aws_client(), create_hapg_request()) ->
    {ok, create_hapg_response(), tuple()} |
    {error, any()} |
    {error, create_hapg_errors(), tuple()}.
create_hapg(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hapg(Client, Input, []).

-spec create_hapg(aws_client:aws_client(), create_hapg_request(), proplists:proplist()) ->
    {ok, create_hapg_response(), tuple()} |
    {error, any()} |
    {error, create_hapg_errors(), tuple()}.
create_hapg(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHapg">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For
%% more information, see AWS CloudHSM
%% Classic FAQs: http://aws.amazon.com/cloudhsm/faqs-classic/, the AWS
%% CloudHSM Classic User Guide:
%% https://docs.aws.amazon.com/cloudhsm/classic/userguide/, and the AWS
%% CloudHSM Classic API Reference:
%% https://docs.aws.amazon.com/cloudhsm/classic/APIReference/.
%%
%% For information about the current version of AWS
%% CloudHSM, see AWS CloudHSM: http://aws.amazon.com/cloudhsm/, the
%% AWS CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/,
%% and the AWS CloudHSM API
%% Reference: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/.
%%
%% Creates an uninitialized HSM instance.
%%
%% There is an upfront fee charged for each HSM instance that you create with
%% the
%% `CreateHsm' operation. If you accidentally provision an HSM and want
%% to request a
%% refund, delete the instance using the `DeleteHsm' operation, go to the
%% AWS Support Center: https://console.aws.amazon.com/support/home, create a
%% new case, and select
%% Account and Billing Support.
%%
%% It can take up to 20 minutes to create and provision an HSM. You can
%% monitor the
%% status of the HSM with the `DescribeHsm' operation. The HSM is ready
%% to be
%% initialized when the status changes to `RUNNING'.
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

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For
%% more information, see AWS CloudHSM
%% Classic FAQs: http://aws.amazon.com/cloudhsm/faqs-classic/, the AWS
%% CloudHSM Classic User Guide:
%% https://docs.aws.amazon.com/cloudhsm/classic/userguide/, and the AWS
%% CloudHSM Classic API Reference:
%% https://docs.aws.amazon.com/cloudhsm/classic/APIReference/.
%%
%% For information about the current version of AWS
%% CloudHSM, see AWS CloudHSM: http://aws.amazon.com/cloudhsm/, the
%% AWS CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/,
%% and the AWS CloudHSM API
%% Reference: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/.
%%
%% Creates an HSM client.
-spec create_luna_client(aws_client:aws_client(), create_luna_client_request()) ->
    {ok, create_luna_client_response(), tuple()} |
    {error, any()} |
    {error, create_luna_client_errors(), tuple()}.
create_luna_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_luna_client(Client, Input, []).

-spec create_luna_client(aws_client:aws_client(), create_luna_client_request(), proplists:proplist()) ->
    {ok, create_luna_client_response(), tuple()} |
    {error, any()} |
    {error, create_luna_client_errors(), tuple()}.
create_luna_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLunaClient">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For
%% more information, see AWS CloudHSM
%% Classic FAQs: http://aws.amazon.com/cloudhsm/faqs-classic/, the AWS
%% CloudHSM Classic User Guide:
%% https://docs.aws.amazon.com/cloudhsm/classic/userguide/, and the AWS
%% CloudHSM Classic API Reference:
%% https://docs.aws.amazon.com/cloudhsm/classic/APIReference/.
%%
%% For information about the current version of AWS
%% CloudHSM, see AWS CloudHSM: http://aws.amazon.com/cloudhsm/, the
%% AWS CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/,
%% and the AWS CloudHSM API
%% Reference: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/.
%%
%% Deletes a high-availability partition group.
-spec delete_hapg(aws_client:aws_client(), delete_hapg_request()) ->
    {ok, delete_hapg_response(), tuple()} |
    {error, any()} |
    {error, delete_hapg_errors(), tuple()}.
delete_hapg(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_hapg(Client, Input, []).

-spec delete_hapg(aws_client:aws_client(), delete_hapg_request(), proplists:proplist()) ->
    {ok, delete_hapg_response(), tuple()} |
    {error, any()} |
    {error, delete_hapg_errors(), tuple()}.
delete_hapg(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHapg">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For
%% more information, see AWS CloudHSM
%% Classic FAQs: http://aws.amazon.com/cloudhsm/faqs-classic/, the AWS
%% CloudHSM Classic User Guide:
%% https://docs.aws.amazon.com/cloudhsm/classic/userguide/, and the AWS
%% CloudHSM Classic API Reference:
%% https://docs.aws.amazon.com/cloudhsm/classic/APIReference/.
%%
%% For information about the current version of AWS
%% CloudHSM, see AWS CloudHSM: http://aws.amazon.com/cloudhsm/, the
%% AWS CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/,
%% and the AWS CloudHSM API
%% Reference: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/.
%%
%% Deletes an HSM. After completion, this operation cannot be undone and your
%% key material
%% cannot be recovered.
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

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For
%% more information, see AWS CloudHSM
%% Classic FAQs: http://aws.amazon.com/cloudhsm/faqs-classic/, the AWS
%% CloudHSM Classic User Guide:
%% https://docs.aws.amazon.com/cloudhsm/classic/userguide/, and the AWS
%% CloudHSM Classic API Reference:
%% https://docs.aws.amazon.com/cloudhsm/classic/APIReference/.
%%
%% For information about the current version of AWS
%% CloudHSM, see AWS CloudHSM: http://aws.amazon.com/cloudhsm/, the
%% AWS CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/,
%% and the AWS CloudHSM API
%% Reference: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/.
%%
%% Deletes a client.
-spec delete_luna_client(aws_client:aws_client(), delete_luna_client_request()) ->
    {ok, delete_luna_client_response(), tuple()} |
    {error, any()} |
    {error, delete_luna_client_errors(), tuple()}.
delete_luna_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_luna_client(Client, Input, []).

-spec delete_luna_client(aws_client:aws_client(), delete_luna_client_request(), proplists:proplist()) ->
    {ok, delete_luna_client_response(), tuple()} |
    {error, any()} |
    {error, delete_luna_client_errors(), tuple()}.
delete_luna_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLunaClient">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For
%% more information, see AWS CloudHSM
%% Classic FAQs: http://aws.amazon.com/cloudhsm/faqs-classic/, the AWS
%% CloudHSM Classic User Guide:
%% https://docs.aws.amazon.com/cloudhsm/classic/userguide/, and the AWS
%% CloudHSM Classic API Reference:
%% https://docs.aws.amazon.com/cloudhsm/classic/APIReference/.
%%
%% For information about the current version of AWS
%% CloudHSM, see AWS CloudHSM: http://aws.amazon.com/cloudhsm/, the
%% AWS CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/,
%% and the AWS CloudHSM API
%% Reference: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/.
%%
%% Retrieves information about a high-availability partition group.
-spec describe_hapg(aws_client:aws_client(), describe_hapg_request()) ->
    {ok, describe_hapg_response(), tuple()} |
    {error, any()} |
    {error, describe_hapg_errors(), tuple()}.
describe_hapg(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_hapg(Client, Input, []).

-spec describe_hapg(aws_client:aws_client(), describe_hapg_request(), proplists:proplist()) ->
    {ok, describe_hapg_response(), tuple()} |
    {error, any()} |
    {error, describe_hapg_errors(), tuple()}.
describe_hapg(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHapg">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For
%% more information, see AWS CloudHSM
%% Classic FAQs: http://aws.amazon.com/cloudhsm/faqs-classic/, the AWS
%% CloudHSM Classic User Guide:
%% https://docs.aws.amazon.com/cloudhsm/classic/userguide/, and the AWS
%% CloudHSM Classic API Reference:
%% https://docs.aws.amazon.com/cloudhsm/classic/APIReference/.
%%
%% For information about the current version of AWS
%% CloudHSM, see AWS CloudHSM: http://aws.amazon.com/cloudhsm/, the
%% AWS CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/,
%% and the AWS CloudHSM API
%% Reference: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/.
%%
%% Retrieves information about an HSM. You can identify the HSM by its ARN or
%% its serial
%% number.
-spec describe_hsm(aws_client:aws_client(), describe_hsm_request()) ->
    {ok, describe_hsm_response(), tuple()} |
    {error, any()} |
    {error, describe_hsm_errors(), tuple()}.
describe_hsm(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_hsm(Client, Input, []).

-spec describe_hsm(aws_client:aws_client(), describe_hsm_request(), proplists:proplist()) ->
    {ok, describe_hsm_response(), tuple()} |
    {error, any()} |
    {error, describe_hsm_errors(), tuple()}.
describe_hsm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHsm">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For
%% more information, see AWS CloudHSM
%% Classic FAQs: http://aws.amazon.com/cloudhsm/faqs-classic/, the AWS
%% CloudHSM Classic User Guide:
%% https://docs.aws.amazon.com/cloudhsm/classic/userguide/, and the AWS
%% CloudHSM Classic API Reference:
%% https://docs.aws.amazon.com/cloudhsm/classic/APIReference/.
%%
%% For information about the current version of AWS
%% CloudHSM, see AWS CloudHSM: http://aws.amazon.com/cloudhsm/, the
%% AWS CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/,
%% and the AWS CloudHSM API
%% Reference: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/.
%%
%% Retrieves information about an HSM client.
-spec describe_luna_client(aws_client:aws_client(), describe_luna_client_request()) ->
    {ok, describe_luna_client_response(), tuple()} |
    {error, any()} |
    {error, describe_luna_client_errors(), tuple()}.
describe_luna_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_luna_client(Client, Input, []).

-spec describe_luna_client(aws_client:aws_client(), describe_luna_client_request(), proplists:proplist()) ->
    {ok, describe_luna_client_response(), tuple()} |
    {error, any()} |
    {error, describe_luna_client_errors(), tuple()}.
describe_luna_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLunaClient">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For
%% more information, see AWS CloudHSM
%% Classic FAQs: http://aws.amazon.com/cloudhsm/faqs-classic/, the AWS
%% CloudHSM Classic User Guide:
%% https://docs.aws.amazon.com/cloudhsm/classic/userguide/, and the AWS
%% CloudHSM Classic API Reference:
%% https://docs.aws.amazon.com/cloudhsm/classic/APIReference/.
%%
%% For information about the current version of AWS
%% CloudHSM, see AWS CloudHSM: http://aws.amazon.com/cloudhsm/, the
%% AWS CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/,
%% and the AWS CloudHSM API
%% Reference: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/.
%%
%% Gets the configuration files necessary to connect to all high availability
%% partition
%% groups the client is associated with.
-spec get_config(aws_client:aws_client(), get_config_request()) ->
    {ok, get_config_response(), tuple()} |
    {error, any()} |
    {error, get_config_errors(), tuple()}.
get_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_config(Client, Input, []).

-spec get_config(aws_client:aws_client(), get_config_request(), proplists:proplist()) ->
    {ok, get_config_response(), tuple()} |
    {error, any()} |
    {error, get_config_errors(), tuple()}.
get_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConfig">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For
%% more information, see AWS CloudHSM
%% Classic FAQs: http://aws.amazon.com/cloudhsm/faqs-classic/, the AWS
%% CloudHSM Classic User Guide:
%% https://docs.aws.amazon.com/cloudhsm/classic/userguide/, and the AWS
%% CloudHSM Classic API Reference:
%% https://docs.aws.amazon.com/cloudhsm/classic/APIReference/.
%%
%% For information about the current version of AWS
%% CloudHSM, see AWS CloudHSM: http://aws.amazon.com/cloudhsm/, the
%% AWS CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/,
%% and the AWS CloudHSM API
%% Reference: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/.
%%
%% Lists the Availability Zones that have available AWS CloudHSM capacity.
-spec list_available_zones(aws_client:aws_client(), list_available_zones_request()) ->
    {ok, list_available_zones_response(), tuple()} |
    {error, any()} |
    {error, list_available_zones_errors(), tuple()}.
list_available_zones(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_available_zones(Client, Input, []).

-spec list_available_zones(aws_client:aws_client(), list_available_zones_request(), proplists:proplist()) ->
    {ok, list_available_zones_response(), tuple()} |
    {error, any()} |
    {error, list_available_zones_errors(), tuple()}.
list_available_zones(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAvailableZones">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For
%% more information, see AWS CloudHSM
%% Classic FAQs: http://aws.amazon.com/cloudhsm/faqs-classic/, the AWS
%% CloudHSM Classic User Guide:
%% https://docs.aws.amazon.com/cloudhsm/classic/userguide/, and the AWS
%% CloudHSM Classic API Reference:
%% https://docs.aws.amazon.com/cloudhsm/classic/APIReference/.
%%
%% For information about the current version of AWS
%% CloudHSM, see AWS CloudHSM: http://aws.amazon.com/cloudhsm/, the
%% AWS CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/,
%% and the AWS CloudHSM API
%% Reference: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/.
%%
%% Lists the high-availability partition groups for the account.
%%
%% This operation supports pagination with the use of the `NextToken'
%% member.
%% If more results are available, the `NextToken' member of the response
%% contains a
%% token that you pass in the next call to `ListHapgs' to retrieve the
%% next set of
%% items.
-spec list_hapgs(aws_client:aws_client(), list_hapgs_request()) ->
    {ok, list_hapgs_response(), tuple()} |
    {error, any()} |
    {error, list_hapgs_errors(), tuple()}.
list_hapgs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hapgs(Client, Input, []).

-spec list_hapgs(aws_client:aws_client(), list_hapgs_request(), proplists:proplist()) ->
    {ok, list_hapgs_response(), tuple()} |
    {error, any()} |
    {error, list_hapgs_errors(), tuple()}.
list_hapgs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHapgs">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For
%% more information, see AWS CloudHSM
%% Classic FAQs: http://aws.amazon.com/cloudhsm/faqs-classic/, the AWS
%% CloudHSM Classic User Guide:
%% https://docs.aws.amazon.com/cloudhsm/classic/userguide/, and the AWS
%% CloudHSM Classic API Reference:
%% https://docs.aws.amazon.com/cloudhsm/classic/APIReference/.
%%
%% For information about the current version of AWS
%% CloudHSM, see AWS CloudHSM: http://aws.amazon.com/cloudhsm/, the
%% AWS CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/,
%% and the AWS CloudHSM API
%% Reference: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/.
%%
%% Retrieves the identifiers of all of the HSMs provisioned for the current
%% customer.
%%
%% This operation supports pagination with the use of the `NextToken'
%% member.
%% If more results are available, the `NextToken' member of the response
%% contains a
%% token that you pass in the next call to `ListHsms' to retrieve the
%% next set of
%% items.
-spec list_hsms(aws_client:aws_client(), list_hsms_request()) ->
    {ok, list_hsms_response(), tuple()} |
    {error, any()} |
    {error, list_hsms_errors(), tuple()}.
list_hsms(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hsms(Client, Input, []).

-spec list_hsms(aws_client:aws_client(), list_hsms_request(), proplists:proplist()) ->
    {ok, list_hsms_response(), tuple()} |
    {error, any()} |
    {error, list_hsms_errors(), tuple()}.
list_hsms(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHsms">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For
%% more information, see AWS CloudHSM
%% Classic FAQs: http://aws.amazon.com/cloudhsm/faqs-classic/, the AWS
%% CloudHSM Classic User Guide:
%% https://docs.aws.amazon.com/cloudhsm/classic/userguide/, and the AWS
%% CloudHSM Classic API Reference:
%% https://docs.aws.amazon.com/cloudhsm/classic/APIReference/.
%%
%% For information about the current version of AWS
%% CloudHSM, see AWS CloudHSM: http://aws.amazon.com/cloudhsm/, the
%% AWS CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/,
%% and the AWS CloudHSM API
%% Reference: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/.
%%
%% Lists all of the clients.
%%
%% This operation supports pagination with the use of the `NextToken'
%% member.
%% If more results are available, the `NextToken' member of the response
%% contains a
%% token that you pass in the next call to `ListLunaClients' to retrieve
%% the next set
%% of items.
-spec list_luna_clients(aws_client:aws_client(), list_luna_clients_request()) ->
    {ok, list_luna_clients_response(), tuple()} |
    {error, any()} |
    {error, list_luna_clients_errors(), tuple()}.
list_luna_clients(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_luna_clients(Client, Input, []).

-spec list_luna_clients(aws_client:aws_client(), list_luna_clients_request(), proplists:proplist()) ->
    {ok, list_luna_clients_response(), tuple()} |
    {error, any()} |
    {error, list_luna_clients_errors(), tuple()}.
list_luna_clients(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLunaClients">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For
%% more information, see AWS CloudHSM
%% Classic FAQs: http://aws.amazon.com/cloudhsm/faqs-classic/, the AWS
%% CloudHSM Classic User Guide:
%% https://docs.aws.amazon.com/cloudhsm/classic/userguide/, and the AWS
%% CloudHSM Classic API Reference:
%% https://docs.aws.amazon.com/cloudhsm/classic/APIReference/.
%%
%% For information about the current version of AWS
%% CloudHSM, see AWS CloudHSM: http://aws.amazon.com/cloudhsm/, the
%% AWS CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/,
%% and the AWS CloudHSM API
%% Reference: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/.
%%
%% Returns a list of all tags for the specified AWS CloudHSM resource.
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

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For
%% more information, see AWS CloudHSM
%% Classic FAQs: http://aws.amazon.com/cloudhsm/faqs-classic/, the AWS
%% CloudHSM Classic User Guide:
%% https://docs.aws.amazon.com/cloudhsm/classic/userguide/, and the AWS
%% CloudHSM Classic API Reference:
%% https://docs.aws.amazon.com/cloudhsm/classic/APIReference/.
%%
%% For information about the current version of AWS
%% CloudHSM, see AWS CloudHSM: http://aws.amazon.com/cloudhsm/, the
%% AWS CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/,
%% and the AWS CloudHSM API
%% Reference: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/.
%%
%% Modifies an existing high-availability partition group.
-spec modify_hapg(aws_client:aws_client(), modify_hapg_request()) ->
    {ok, modify_hapg_response(), tuple()} |
    {error, any()} |
    {error, modify_hapg_errors(), tuple()}.
modify_hapg(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_hapg(Client, Input, []).

-spec modify_hapg(aws_client:aws_client(), modify_hapg_request(), proplists:proplist()) ->
    {ok, modify_hapg_response(), tuple()} |
    {error, any()} |
    {error, modify_hapg_errors(), tuple()}.
modify_hapg(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyHapg">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For
%% more information, see AWS CloudHSM
%% Classic FAQs: http://aws.amazon.com/cloudhsm/faqs-classic/, the AWS
%% CloudHSM Classic User Guide:
%% https://docs.aws.amazon.com/cloudhsm/classic/userguide/, and the AWS
%% CloudHSM Classic API Reference:
%% https://docs.aws.amazon.com/cloudhsm/classic/APIReference/.
%%
%% For information about the current version of AWS
%% CloudHSM, see AWS CloudHSM: http://aws.amazon.com/cloudhsm/, the
%% AWS CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/,
%% and the AWS CloudHSM API
%% Reference: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/.
%%
%% Modifies an HSM.
%%
%% This operation can result in the HSM being offline for up to 15 minutes
%% while the AWS
%% CloudHSM service is reconfigured. If you are modifying a production HSM,
%% you should ensure
%% that your AWS CloudHSM service is configured for high availability, and
%% consider executing this
%% operation during a maintenance window.
-spec modify_hsm(aws_client:aws_client(), modify_hsm_request()) ->
    {ok, modify_hsm_response(), tuple()} |
    {error, any()} |
    {error, modify_hsm_errors(), tuple()}.
modify_hsm(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_hsm(Client, Input, []).

-spec modify_hsm(aws_client:aws_client(), modify_hsm_request(), proplists:proplist()) ->
    {ok, modify_hsm_response(), tuple()} |
    {error, any()} |
    {error, modify_hsm_errors(), tuple()}.
modify_hsm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyHsm">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For
%% more information, see AWS CloudHSM
%% Classic FAQs: http://aws.amazon.com/cloudhsm/faqs-classic/, the AWS
%% CloudHSM Classic User Guide:
%% https://docs.aws.amazon.com/cloudhsm/classic/userguide/, and the AWS
%% CloudHSM Classic API Reference:
%% https://docs.aws.amazon.com/cloudhsm/classic/APIReference/.
%%
%% For information about the current version of AWS
%% CloudHSM, see AWS CloudHSM: http://aws.amazon.com/cloudhsm/, the
%% AWS CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/,
%% and the AWS CloudHSM API
%% Reference: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/.
%%
%% Modifies the certificate used by the client.
%%
%% This action can potentially start a workflow to install the new
%% certificate on the
%% client's HSMs.
-spec modify_luna_client(aws_client:aws_client(), modify_luna_client_request()) ->
    {ok, modify_luna_client_response(), tuple()} |
    {error, any()} |
    {error, modify_luna_client_errors(), tuple()}.
modify_luna_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_luna_client(Client, Input, []).

-spec modify_luna_client(aws_client:aws_client(), modify_luna_client_request(), proplists:proplist()) ->
    {ok, modify_luna_client_response(), tuple()} |
    {error, any()} |
    {error, modify_luna_client_errors(), tuple()}.
modify_luna_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyLunaClient">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For
%% more information, see AWS CloudHSM
%% Classic FAQs: http://aws.amazon.com/cloudhsm/faqs-classic/, the AWS
%% CloudHSM Classic User Guide:
%% https://docs.aws.amazon.com/cloudhsm/classic/userguide/, and the AWS
%% CloudHSM Classic API Reference:
%% https://docs.aws.amazon.com/cloudhsm/classic/APIReference/.
%%
%% For information about the current version of AWS
%% CloudHSM, see AWS CloudHSM: http://aws.amazon.com/cloudhsm/, the
%% AWS CloudHSM User Guide:
%% https://docs.aws.amazon.com/cloudhsm/latest/userguide/,
%% and the AWS CloudHSM API
%% Reference: https://docs.aws.amazon.com/cloudhsm/latest/APIReference/.
%%
%% Removes one or more tags from the specified AWS CloudHSM resource.
%%
%% To remove a tag, specify only the tag key to remove (not the value). To
%% overwrite the
%% value for an existing tag, use `AddTagsToResource'.
-spec remove_tags_from_resource(aws_client:aws_client(), remove_tags_from_resource_request()) ->
    {ok, remove_tags_from_resource_response(), tuple()} |
    {error, any()} |
    {error, remove_tags_from_resource_errors(), tuple()}.
remove_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_resource(Client, Input, []).

-spec remove_tags_from_resource(aws_client:aws_client(), remove_tags_from_resource_request(), proplists:proplist()) ->
    {ok, remove_tags_from_resource_response(), tuple()} |
    {error, any()} |
    {error, remove_tags_from_resource_errors(), tuple()}.
remove_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromResource">>, Input, Options).

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
    Host = build_host(<<"cloudhsm">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"CloudHsmFrontendService.", Action/binary>>}
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
