%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Provide APIs to create and manage Amazon Connect Campaigns.
-module(aws_connectcampaigns).

-export([create_campaign/2,
         create_campaign/3,
         delete_campaign/3,
         delete_campaign/4,
         delete_connect_instance_config/3,
         delete_connect_instance_config/4,
         delete_instance_onboarding_job/3,
         delete_instance_onboarding_job/4,
         describe_campaign/2,
         describe_campaign/4,
         describe_campaign/5,
         get_campaign_state/2,
         get_campaign_state/4,
         get_campaign_state/5,
         get_campaign_state_batch/2,
         get_campaign_state_batch/3,
         get_connect_instance_config/2,
         get_connect_instance_config/4,
         get_connect_instance_config/5,
         get_instance_onboarding_job_status/2,
         get_instance_onboarding_job_status/4,
         get_instance_onboarding_job_status/5,
         list_campaigns/2,
         list_campaigns/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         pause_campaign/3,
         pause_campaign/4,
         put_dial_request_batch/3,
         put_dial_request_batch/4,
         resume_campaign/3,
         resume_campaign/4,
         start_campaign/3,
         start_campaign/4,
         start_instance_onboarding_job/3,
         start_instance_onboarding_job/4,
         stop_campaign/3,
         stop_campaign/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_campaign_dialer_config/3,
         update_campaign_dialer_config/4,
         update_campaign_name/3,
         update_campaign_name/4,
         update_campaign_outbound_call_config/3,
         update_campaign_outbound_call_config/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% answer_machine_detection_config() :: #{
%%   <<"awaitAnswerMachinePrompt">> => [boolean()],
%%   <<"enableAnswerMachineDetection">> => [boolean()]
%% }
-type answer_machine_detection_config() :: #{binary() => any()}.


%% Example:
%% describe_campaign_response() :: #{
%%   <<"campaign">> => campaign()
%% }
-type describe_campaign_response() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"tags">> => map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% encryption_config() :: #{
%%   <<"enabled">> => boolean(),
%%   <<"encryptionType">> => string(),
%%   <<"keyArn">> => string()
%% }
-type encryption_config() :: #{binary() => any()}.


%% Example:
%% campaign() :: #{
%%   <<"arn">> => string(),
%%   <<"connectInstanceId">> => string(),
%%   <<"dialerConfig">> => list(),
%%   <<"id">> => string(),
%%   <<"name">> => string(),
%%   <<"outboundCallConfig">> => outbound_call_config(),
%%   <<"tags">> => map()
%% }
-type campaign() :: #{binary() => any()}.


%% Example:
%% successful_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"id">> => string()
%% }
-type successful_request() :: #{binary() => any()}.

%% Example:
%% delete_instance_onboarding_job_request() :: #{}
-type delete_instance_onboarding_job_request() :: #{}.

%% Example:
%% delete_connect_instance_config_request() :: #{}
-type delete_connect_instance_config_request() :: #{}.


%% Example:
%% get_campaign_state_batch_response() :: #{
%%   <<"failedRequests">> => list(failed_campaign_state_response()),
%%   <<"successfulRequests">> => list(successful_campaign_state_response())
%% }
-type get_campaign_state_batch_response() :: #{binary() => any()}.


%% Example:
%% instance_onboarding_job_status() :: #{
%%   <<"connectInstanceId">> => string(),
%%   <<"failureCode">> => string(),
%%   <<"status">> => string()
%% }
-type instance_onboarding_job_status() :: #{binary() => any()}.


%% Example:
%% list_campaigns_response() :: #{
%%   <<"campaignSummaryList">> => list(campaign_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_campaigns_response() :: #{binary() => any()}.


%% Example:
%% get_campaign_state_response() :: #{
%%   <<"state">> => string()
%% }
-type get_campaign_state_response() :: #{binary() => any()}.

%% Example:
%% delete_campaign_request() :: #{}
-type delete_campaign_request() :: #{}.

%% Example:
%% describe_campaign_request() :: #{}
-type describe_campaign_request() :: #{}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"tagKeys">> => list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% invalid_state_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"xAmzErrorType">> => string()
%% }
-type invalid_state_exception() :: #{binary() => any()}.


%% Example:
%% instance_id_filter() :: #{
%%   <<"operator">> => string(),
%%   <<"value">> => string()
%% }
-type instance_id_filter() :: #{binary() => any()}.


%% Example:
%% invalid_campaign_state_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"state">> => string(),
%%   <<"xAmzErrorType">> => string()
%% }
-type invalid_campaign_state_exception() :: #{binary() => any()}.


%% Example:
%% list_campaigns_request() :: #{
%%   <<"filters">> => campaign_filters(),
%%   <<"maxResults">> => integer(),
%%   <<"nextToken">> => string()
%% }
-type list_campaigns_request() :: #{binary() => any()}.


%% Example:
%% dial_request() :: #{
%%   <<"attributes">> => map(),
%%   <<"clientToken">> => string(),
%%   <<"expirationTime">> => non_neg_integer(),
%%   <<"phoneNumber">> => string()
%% }
-type dial_request() :: #{binary() => any()}.


%% Example:
%% update_campaign_name_request() :: #{
%%   <<"name">> => string()
%% }
-type update_campaign_name_request() :: #{binary() => any()}.


%% Example:
%% start_instance_onboarding_job_response() :: #{
%%   <<"connectInstanceOnboardingJobStatus">> => instance_onboarding_job_status()
%% }
-type start_instance_onboarding_job_response() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"xAmzErrorType">> => string()
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"xAmzErrorType">> => string()
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% get_campaign_state_request() :: #{}
-type get_campaign_state_request() :: #{}.


%% Example:
%% agentless_dialer_config() :: #{
%%   <<"dialingCapacity">> => float()
%% }
-type agentless_dialer_config() :: #{binary() => any()}.


%% Example:
%% put_dial_request_batch_response() :: #{
%%   <<"failedRequests">> => list(failed_request()),
%%   <<"successfulRequests">> => list(successful_request())
%% }
-type put_dial_request_batch_response() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"xAmzErrorType">> => string()
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% resume_campaign_request() :: #{}
-type resume_campaign_request() :: #{}.

%% Example:
%% get_connect_instance_config_request() :: #{}
-type get_connect_instance_config_request() :: #{}.


%% Example:
%% get_campaign_state_batch_request() :: #{
%%   <<"campaignIds">> => list(string())
%% }
-type get_campaign_state_batch_request() :: #{binary() => any()}.


%% Example:
%% update_campaign_dialer_config_request() :: #{
%%   <<"dialerConfig">> => list()
%% }
-type update_campaign_dialer_config_request() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% put_dial_request_batch_request() :: #{
%%   <<"dialRequests">> => list(dial_request())
%% }
-type put_dial_request_batch_request() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"xAmzErrorType">> => string()
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% progressive_dialer_config() :: #{
%%   <<"bandwidthAllocation">> => float(),
%%   <<"dialingCapacity">> => float()
%% }
-type progressive_dialer_config() :: #{binary() => any()}.

%% Example:
%% stop_campaign_request() :: #{}
-type stop_campaign_request() :: #{}.

%% Example:
%% pause_campaign_request() :: #{}
-type pause_campaign_request() :: #{}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"xAmzErrorType">> => string()
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% start_campaign_request() :: #{}
-type start_campaign_request() :: #{}.


%% Example:
%% create_campaign_request() :: #{
%%   <<"connectInstanceId">> => string(),
%%   <<"dialerConfig">> => list(),
%%   <<"name">> => string(),
%%   <<"outboundCallConfig">> => outbound_call_config(),
%%   <<"tags">> => map()
%% }
-type create_campaign_request() :: #{binary() => any()}.


%% Example:
%% get_instance_onboarding_job_status_response() :: #{
%%   <<"connectInstanceOnboardingJobStatus">> => instance_onboarding_job_status()
%% }
-type get_instance_onboarding_job_status_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"xAmzErrorType">> => string()
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% get_connect_instance_config_response() :: #{
%%   <<"connectInstanceConfig">> => instance_config()
%% }
-type get_connect_instance_config_response() :: #{binary() => any()}.


%% Example:
%% instance_config() :: #{
%%   <<"connectInstanceId">> => string(),
%%   <<"encryptionConfig">> => encryption_config(),
%%   <<"serviceLinkedRoleArn">> => string()
%% }
-type instance_config() :: #{binary() => any()}.


%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"xAmzErrorType">> => string()
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% outbound_call_config() :: #{
%%   <<"answerMachineDetectionConfig">> => answer_machine_detection_config(),
%%   <<"connectContactFlowId">> => string(),
%%   <<"connectQueueId">> => string(),
%%   <<"connectSourcePhoneNumber">> => string()
%% }
-type outbound_call_config() :: #{binary() => any()}.


%% Example:
%% update_campaign_outbound_call_config_request() :: #{
%%   <<"answerMachineDetectionConfig">> => answer_machine_detection_config(),
%%   <<"connectContactFlowId">> => string(),
%%   <<"connectSourcePhoneNumber">> => string()
%% }
-type update_campaign_outbound_call_config_request() :: #{binary() => any()}.


%% Example:
%% failed_request() :: #{
%%   <<"clientToken">> => string(),
%%   <<"failureCode">> => string(),
%%   <<"id">> => string()
%% }
-type failed_request() :: #{binary() => any()}.


%% Example:
%% predictive_dialer_config() :: #{
%%   <<"bandwidthAllocation">> => float(),
%%   <<"dialingCapacity">> => float()
%% }
-type predictive_dialer_config() :: #{binary() => any()}.


%% Example:
%% create_campaign_response() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"tags">> => map()
%% }
-type create_campaign_response() :: #{binary() => any()}.


%% Example:
%% successful_campaign_state_response() :: #{
%%   <<"campaignId">> => string(),
%%   <<"state">> => string()
%% }
-type successful_campaign_state_response() :: #{binary() => any()}.


%% Example:
%% campaign_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"connectInstanceId">> => string(),
%%   <<"id">> => string(),
%%   <<"name">> => string()
%% }
-type campaign_summary() :: #{binary() => any()}.

%% Example:
%% get_instance_onboarding_job_status_request() :: #{}
-type get_instance_onboarding_job_status_request() :: #{}.


%% Example:
%% failed_campaign_state_response() :: #{
%%   <<"campaignId">> => string(),
%%   <<"failureCode">> => string()
%% }
-type failed_campaign_state_response() :: #{binary() => any()}.


%% Example:
%% start_instance_onboarding_job_request() :: #{
%%   <<"encryptionConfig">> => encryption_config()
%% }
-type start_instance_onboarding_job_request() :: #{binary() => any()}.


%% Example:
%% campaign_filters() :: #{
%%   <<"instanceIdFilter">> => instance_id_filter()
%% }
-type campaign_filters() :: #{binary() => any()}.

-type create_campaign_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_campaign_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type delete_connect_instance_config_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type delete_instance_onboarding_job_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    invalid_state_exception().

-type describe_campaign_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_campaign_state_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_campaign_state_batch_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type get_connect_instance_config_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_instance_onboarding_job_status_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_campaigns_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type pause_campaign_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    invalid_campaign_state_exception().

-type put_dial_request_batch_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    invalid_campaign_state_exception().

-type resume_campaign_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    invalid_campaign_state_exception().

-type start_campaign_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    invalid_campaign_state_exception().

-type start_instance_onboarding_job_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type stop_campaign_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception() | 
    invalid_campaign_state_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type update_campaign_dialer_config_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_campaign_name_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_campaign_outbound_call_config_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a campaign for the specified Amazon Connect account.
%%
%% This API is idempotent.
-spec create_campaign(aws_client:aws_client(), create_campaign_request()) ->
    {ok, create_campaign_response(), tuple()} |
    {error, any()} |
    {error, create_campaign_errors(), tuple()}.
create_campaign(Client, Input) ->
    create_campaign(Client, Input, []).

-spec create_campaign(aws_client:aws_client(), create_campaign_request(), proplists:proplist()) ->
    {ok, create_campaign_response(), tuple()} |
    {error, any()} |
    {error, create_campaign_errors(), tuple()}.
create_campaign(Client, Input0, Options0) ->
    Method = put,
    Path = ["/campaigns"],
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

%% @doc Deletes a campaign from the specified Amazon Connect account.
-spec delete_campaign(aws_client:aws_client(), binary() | list(), delete_campaign_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_campaign_errors(), tuple()}.
delete_campaign(Client, Id, Input) ->
    delete_campaign(Client, Id, Input, []).

-spec delete_campaign(aws_client:aws_client(), binary() | list(), delete_campaign_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_campaign_errors(), tuple()}.
delete_campaign(Client, Id, Input0, Options0) ->
    Method = delete,
    Path = ["/campaigns/", aws_util:encode_uri(Id), ""],
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

%% @doc Deletes a connect instance config from the specified AWS account.
-spec delete_connect_instance_config(aws_client:aws_client(), binary() | list(), delete_connect_instance_config_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_connect_instance_config_errors(), tuple()}.
delete_connect_instance_config(Client, ConnectInstanceId, Input) ->
    delete_connect_instance_config(Client, ConnectInstanceId, Input, []).

-spec delete_connect_instance_config(aws_client:aws_client(), binary() | list(), delete_connect_instance_config_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_connect_instance_config_errors(), tuple()}.
delete_connect_instance_config(Client, ConnectInstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/connect-instance/", aws_util:encode_uri(ConnectInstanceId), "/config"],
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

%% @doc Delete the Connect Campaigns onboarding job for the specified Amazon
%% Connect instance.
-spec delete_instance_onboarding_job(aws_client:aws_client(), binary() | list(), delete_instance_onboarding_job_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_instance_onboarding_job_errors(), tuple()}.
delete_instance_onboarding_job(Client, ConnectInstanceId, Input) ->
    delete_instance_onboarding_job(Client, ConnectInstanceId, Input, []).

-spec delete_instance_onboarding_job(aws_client:aws_client(), binary() | list(), delete_instance_onboarding_job_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_instance_onboarding_job_errors(), tuple()}.
delete_instance_onboarding_job(Client, ConnectInstanceId, Input0, Options0) ->
    Method = delete,
    Path = ["/connect-instance/", aws_util:encode_uri(ConnectInstanceId), "/onboarding"],
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

%% @doc Describes the specific campaign.
-spec describe_campaign(aws_client:aws_client(), binary() | list()) ->
    {ok, describe_campaign_response(), tuple()} |
    {error, any()} |
    {error, describe_campaign_errors(), tuple()}.
describe_campaign(Client, Id)
  when is_map(Client) ->
    describe_campaign(Client, Id, #{}, #{}).

-spec describe_campaign(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, describe_campaign_response(), tuple()} |
    {error, any()} |
    {error, describe_campaign_errors(), tuple()}.
describe_campaign(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_campaign(Client, Id, QueryMap, HeadersMap, []).

-spec describe_campaign(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, describe_campaign_response(), tuple()} |
    {error, any()} |
    {error, describe_campaign_errors(), tuple()}.
describe_campaign(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/campaigns/", aws_util:encode_uri(Id), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get state of a campaign for the specified Amazon Connect account.
-spec get_campaign_state(aws_client:aws_client(), binary() | list()) ->
    {ok, get_campaign_state_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_state_errors(), tuple()}.
get_campaign_state(Client, Id)
  when is_map(Client) ->
    get_campaign_state(Client, Id, #{}, #{}).

-spec get_campaign_state(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_campaign_state_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_state_errors(), tuple()}.
get_campaign_state(Client, Id, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_campaign_state(Client, Id, QueryMap, HeadersMap, []).

-spec get_campaign_state(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_campaign_state_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_state_errors(), tuple()}.
get_campaign_state(Client, Id, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/campaigns/", aws_util:encode_uri(Id), "/state"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get state of campaigns for the specified Amazon Connect account.
-spec get_campaign_state_batch(aws_client:aws_client(), get_campaign_state_batch_request()) ->
    {ok, get_campaign_state_batch_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_state_batch_errors(), tuple()}.
get_campaign_state_batch(Client, Input) ->
    get_campaign_state_batch(Client, Input, []).

-spec get_campaign_state_batch(aws_client:aws_client(), get_campaign_state_batch_request(), proplists:proplist()) ->
    {ok, get_campaign_state_batch_response(), tuple()} |
    {error, any()} |
    {error, get_campaign_state_batch_errors(), tuple()}.
get_campaign_state_batch(Client, Input0, Options0) ->
    Method = post,
    Path = ["/campaigns-state"],
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

%% @doc Get the specific Connect instance config.
-spec get_connect_instance_config(aws_client:aws_client(), binary() | list()) ->
    {ok, get_connect_instance_config_response(), tuple()} |
    {error, any()} |
    {error, get_connect_instance_config_errors(), tuple()}.
get_connect_instance_config(Client, ConnectInstanceId)
  when is_map(Client) ->
    get_connect_instance_config(Client, ConnectInstanceId, #{}, #{}).

-spec get_connect_instance_config(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_connect_instance_config_response(), tuple()} |
    {error, any()} |
    {error, get_connect_instance_config_errors(), tuple()}.
get_connect_instance_config(Client, ConnectInstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_connect_instance_config(Client, ConnectInstanceId, QueryMap, HeadersMap, []).

-spec get_connect_instance_config(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_connect_instance_config_response(), tuple()} |
    {error, any()} |
    {error, get_connect_instance_config_errors(), tuple()}.
get_connect_instance_config(Client, ConnectInstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/connect-instance/", aws_util:encode_uri(ConnectInstanceId), "/config"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get the specific instance onboarding job status.
-spec get_instance_onboarding_job_status(aws_client:aws_client(), binary() | list()) ->
    {ok, get_instance_onboarding_job_status_response(), tuple()} |
    {error, any()} |
    {error, get_instance_onboarding_job_status_errors(), tuple()}.
get_instance_onboarding_job_status(Client, ConnectInstanceId)
  when is_map(Client) ->
    get_instance_onboarding_job_status(Client, ConnectInstanceId, #{}, #{}).

-spec get_instance_onboarding_job_status(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_instance_onboarding_job_status_response(), tuple()} |
    {error, any()} |
    {error, get_instance_onboarding_job_status_errors(), tuple()}.
get_instance_onboarding_job_status(Client, ConnectInstanceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_instance_onboarding_job_status(Client, ConnectInstanceId, QueryMap, HeadersMap, []).

-spec get_instance_onboarding_job_status(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_instance_onboarding_job_status_response(), tuple()} |
    {error, any()} |
    {error, get_instance_onboarding_job_status_errors(), tuple()}.
get_instance_onboarding_job_status(Client, ConnectInstanceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/connect-instance/", aws_util:encode_uri(ConnectInstanceId), "/onboarding"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides summary information about the campaigns under the specified
%% Amazon Connect account.
-spec list_campaigns(aws_client:aws_client(), list_campaigns_request()) ->
    {ok, list_campaigns_response(), tuple()} |
    {error, any()} |
    {error, list_campaigns_errors(), tuple()}.
list_campaigns(Client, Input) ->
    list_campaigns(Client, Input, []).

-spec list_campaigns(aws_client:aws_client(), list_campaigns_request(), proplists:proplist()) ->
    {ok, list_campaigns_response(), tuple()} |
    {error, any()} |
    {error, list_campaigns_errors(), tuple()}.
list_campaigns(Client, Input0, Options0) ->
    Method = post,
    Path = ["/campaigns-summary"],
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

%% @doc List tags for a resource.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Arn)
  when is_map(Client) ->
    list_tags_for_resource(Client, Arn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Arn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, Arn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, Arn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(Arn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Pauses a campaign for the specified Amazon Connect account.
-spec pause_campaign(aws_client:aws_client(), binary() | list(), pause_campaign_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, pause_campaign_errors(), tuple()}.
pause_campaign(Client, Id, Input) ->
    pause_campaign(Client, Id, Input, []).

-spec pause_campaign(aws_client:aws_client(), binary() | list(), pause_campaign_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, pause_campaign_errors(), tuple()}.
pause_campaign(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/campaigns/", aws_util:encode_uri(Id), "/pause"],
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

%% @doc Creates dials requests for the specified campaign Amazon Connect
%% account.
%%
%% This API is idempotent.
-spec put_dial_request_batch(aws_client:aws_client(), binary() | list(), put_dial_request_batch_request()) ->
    {ok, put_dial_request_batch_response(), tuple()} |
    {error, any()} |
    {error, put_dial_request_batch_errors(), tuple()}.
put_dial_request_batch(Client, Id, Input) ->
    put_dial_request_batch(Client, Id, Input, []).

-spec put_dial_request_batch(aws_client:aws_client(), binary() | list(), put_dial_request_batch_request(), proplists:proplist()) ->
    {ok, put_dial_request_batch_response(), tuple()} |
    {error, any()} |
    {error, put_dial_request_batch_errors(), tuple()}.
put_dial_request_batch(Client, Id, Input0, Options0) ->
    Method = put,
    Path = ["/campaigns/", aws_util:encode_uri(Id), "/dial-requests"],
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

%% @doc Stops a campaign for the specified Amazon Connect account.
-spec resume_campaign(aws_client:aws_client(), binary() | list(), resume_campaign_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, resume_campaign_errors(), tuple()}.
resume_campaign(Client, Id, Input) ->
    resume_campaign(Client, Id, Input, []).

-spec resume_campaign(aws_client:aws_client(), binary() | list(), resume_campaign_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, resume_campaign_errors(), tuple()}.
resume_campaign(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/campaigns/", aws_util:encode_uri(Id), "/resume"],
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

%% @doc Starts a campaign for the specified Amazon Connect account.
-spec start_campaign(aws_client:aws_client(), binary() | list(), start_campaign_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_campaign_errors(), tuple()}.
start_campaign(Client, Id, Input) ->
    start_campaign(Client, Id, Input, []).

-spec start_campaign(aws_client:aws_client(), binary() | list(), start_campaign_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, start_campaign_errors(), tuple()}.
start_campaign(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/campaigns/", aws_util:encode_uri(Id), "/start"],
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

%% @doc Onboard the specific Amazon Connect instance to Connect Campaigns.
-spec start_instance_onboarding_job(aws_client:aws_client(), binary() | list(), start_instance_onboarding_job_request()) ->
    {ok, start_instance_onboarding_job_response(), tuple()} |
    {error, any()} |
    {error, start_instance_onboarding_job_errors(), tuple()}.
start_instance_onboarding_job(Client, ConnectInstanceId, Input) ->
    start_instance_onboarding_job(Client, ConnectInstanceId, Input, []).

-spec start_instance_onboarding_job(aws_client:aws_client(), binary() | list(), start_instance_onboarding_job_request(), proplists:proplist()) ->
    {ok, start_instance_onboarding_job_response(), tuple()} |
    {error, any()} |
    {error, start_instance_onboarding_job_errors(), tuple()}.
start_instance_onboarding_job(Client, ConnectInstanceId, Input0, Options0) ->
    Method = put,
    Path = ["/connect-instance/", aws_util:encode_uri(ConnectInstanceId), "/onboarding"],
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

%% @doc Stops a campaign for the specified Amazon Connect account.
-spec stop_campaign(aws_client:aws_client(), binary() | list(), stop_campaign_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_campaign_errors(), tuple()}.
stop_campaign(Client, Id, Input) ->
    stop_campaign(Client, Id, Input, []).

-spec stop_campaign(aws_client:aws_client(), binary() | list(), stop_campaign_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, stop_campaign_errors(), tuple()}.
stop_campaign(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/campaigns/", aws_util:encode_uri(Id), "/stop"],
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

%% @doc Tag a resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Arn, Input) ->
    tag_resource(Client, Arn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Arn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(Arn), ""],
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

%% @doc Untag a resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Arn, Input) ->
    untag_resource(Client, Arn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Arn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(Arn), ""],
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

%% @doc Updates the dialer config of a campaign.
%%
%% This API is idempotent.
-spec update_campaign_dialer_config(aws_client:aws_client(), binary() | list(), update_campaign_dialer_config_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_campaign_dialer_config_errors(), tuple()}.
update_campaign_dialer_config(Client, Id, Input) ->
    update_campaign_dialer_config(Client, Id, Input, []).

-spec update_campaign_dialer_config(aws_client:aws_client(), binary() | list(), update_campaign_dialer_config_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_campaign_dialer_config_errors(), tuple()}.
update_campaign_dialer_config(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/campaigns/", aws_util:encode_uri(Id), "/dialer-config"],
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

%% @doc Updates the name of a campaign.
%%
%% This API is idempotent.
-spec update_campaign_name(aws_client:aws_client(), binary() | list(), update_campaign_name_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_campaign_name_errors(), tuple()}.
update_campaign_name(Client, Id, Input) ->
    update_campaign_name(Client, Id, Input, []).

-spec update_campaign_name(aws_client:aws_client(), binary() | list(), update_campaign_name_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_campaign_name_errors(), tuple()}.
update_campaign_name(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/campaigns/", aws_util:encode_uri(Id), "/name"],
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

%% @doc Updates the outbound call config of a campaign.
%%
%% This API is idempotent.
-spec update_campaign_outbound_call_config(aws_client:aws_client(), binary() | list(), update_campaign_outbound_call_config_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_campaign_outbound_call_config_errors(), tuple()}.
update_campaign_outbound_call_config(Client, Id, Input) ->
    update_campaign_outbound_call_config(Client, Id, Input, []).

-spec update_campaign_outbound_call_config(aws_client:aws_client(), binary() | list(), update_campaign_outbound_call_config_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, update_campaign_outbound_call_config_errors(), tuple()}.
update_campaign_outbound_call_config(Client, Id, Input0, Options0) ->
    Method = post,
    Path = ["/campaigns/", aws_util:encode_uri(Id), "/outbound-call-config"],
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
    Client1 = Client#{service => <<"connect-campaigns">>},
    Host = build_host(<<"connect-campaigns">>, Client1),
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
