%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Partner Central Channel service for managing partner
%% relationships, handshakes, and program management accounts.
-module(aws_partnercentral_channel).

-export([accept_channel_handshake/2,
         accept_channel_handshake/3,
         cancel_channel_handshake/2,
         cancel_channel_handshake/3,
         create_channel_handshake/2,
         create_channel_handshake/3,
         create_program_management_account/2,
         create_program_management_account/3,
         create_relationship/2,
         create_relationship/3,
         delete_program_management_account/2,
         delete_program_management_account/3,
         delete_relationship/2,
         delete_relationship/3,
         get_relationship/2,
         get_relationship/3,
         list_channel_handshakes/2,
         list_channel_handshakes/3,
         list_program_management_accounts/2,
         list_program_management_accounts/3,
         list_relationships/2,
         list_relationships/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         reject_channel_handshake/2,
         reject_channel_handshake/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_program_management_account/2,
         update_program_management_account/3,
         update_relationship/2,
         update_relationship/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% accept_channel_handshake_detail() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"status">> => list(any())
%% }
-type accept_channel_handshake_detail() :: #{binary() => any()}.

%% Example:
%% program_management_account_type_sort() :: #{
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type program_management_account_type_sort() :: #{binary() => any()}.

%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.

%% Example:
%% update_program_management_account_response() :: #{
%%   <<"programManagementAccountDetail">> => update_program_management_account_detail()
%% }
-type update_program_management_account_response() :: #{binary() => any()}.

%% Example:
%% delete_program_management_account_request() :: #{
%%   <<"catalog">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"identifier">> := string()
%% }
-type delete_program_management_account_request() :: #{binary() => any()}.

%% Example:
%% partner_led_support() :: #{
%%   <<"coverage">> => list(any()),
%%   <<"provider">> => list(any()),
%%   <<"tamLocation">> => [string()]
%% }
-type partner_led_support() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{

%% }
-type untag_resource_response() :: #{binary() => any()}.

%% Example:
%% update_relationship_request() :: #{
%%   <<"catalog">> := string(),
%%   <<"displayName">> => string(),
%%   <<"identifier">> := string(),
%%   <<"programManagementAccountIdentifier">> := string(),
%%   <<"requestedSupportPlan">> => list(),
%%   <<"revision">> => string()
%% }
-type update_relationship_request() :: #{binary() => any()}.

%% Example:
%% delete_program_management_account_response() :: #{

%% }
-type delete_program_management_account_response() :: #{binary() => any()}.

%% Example:
%% reject_channel_handshake_detail() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"status">> => list(any())
%% }
-type reject_channel_handshake_detail() :: #{binary() => any()}.

%% Example:
%% revoke_service_period_payload() :: #{
%%   <<"note">> => string(),
%%   <<"programManagementAccountIdentifier">> => string()
%% }
-type revoke_service_period_payload() :: #{binary() => any()}.

%% Example:
%% cancel_channel_handshake_response() :: #{
%%   <<"channelHandshakeDetail">> => cancel_channel_handshake_detail()
%% }
-type cancel_channel_handshake_response() :: #{binary() => any()}.

%% Example:
%% list_relationships_request() :: #{
%%   <<"associatedAccountIds">> => list(string()),
%%   <<"associationTypes">> => list(list(any())()),
%%   <<"catalog">> := string(),
%%   <<"displayNames">> => list(string()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"programManagementAccountIdentifiers">> => list(string()),
%%   <<"sort">> => list_relationships_sort_base()
%% }
-type list_relationships_request() :: #{binary() => any()}.

%% Example:
%% update_relationship_response() :: #{
%%   <<"relationshipDetail">> => update_relationship_detail()
%% }
-type update_relationship_response() :: #{binary() => any()}.

%% Example:
%% channel_handshake_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"associatedResourceId">> => string(),
%%   <<"catalog">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"detail">> => list(),
%%   <<"handshakeType">> => list(any()),
%%   <<"id">> => string(),
%%   <<"ownerAccountId">> => string(),
%%   <<"receiverAccountId">> => string(),
%%   <<"senderAccountId">> => string(),
%%   <<"senderDisplayName">> => string(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type channel_handshake_summary() :: #{binary() => any()}.

%% Example:
%% create_relationship_request() :: #{
%%   <<"associatedAccountId">> := string(),
%%   <<"associationType">> := list(any()),
%%   <<"catalog">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"displayName">> := string(),
%%   <<"programManagementAccountIdentifier">> := string(),
%%   <<"requestedSupportPlan">> => list(),
%%   <<"resaleAccountModel">> => list(any()),
%%   <<"sector">> := list(any()),
%%   <<"tags">> => list(tag())
%% }
-type create_relationship_request() :: #{binary() => any()}.

%% Example:
%% create_channel_handshake_request() :: #{
%%   <<"associatedResourceIdentifier">> := string(),
%%   <<"catalog">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"handshakeType">> := list(any()),
%%   <<"payload">> => list(),
%%   <<"tags">> => list(tag())
%% }
-type create_channel_handshake_request() :: #{binary() => any()}.

%% Example:
%% revoke_service_period_handshake_detail() :: #{
%%   <<"endDate">> => non_neg_integer(),
%%   <<"minimumNoticeDays">> => string(),
%%   <<"note">> => string(),
%%   <<"servicePeriodType">> => list(any()),
%%   <<"startDate">> => non_neg_integer()
%% }
-type revoke_service_period_handshake_detail() :: #{binary() => any()}.

%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.

%% Example:
%% reject_channel_handshake_request() :: #{
%%   <<"catalog">> := string(),
%%   <<"identifier">> := string()
%% }
-type reject_channel_handshake_request() :: #{binary() => any()}.

%% Example:
%% update_program_management_account_request() :: #{
%%   <<"catalog">> := string(),
%%   <<"displayName">> => string(),
%%   <<"identifier">> := string(),
%%   <<"revision">> => string()
%% }
-type update_program_management_account_request() :: #{binary() => any()}.

%% Example:
%% create_program_management_account_request() :: #{
%%   <<"accountId">> := string(),
%%   <<"catalog">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"displayName">> := string(),
%%   <<"program">> := list(any()),
%%   <<"tags">> => list(tag())
%% }
-type create_program_management_account_request() :: #{binary() => any()}.

%% Example:
%% list_program_management_accounts_request() :: #{
%%   <<"accountIds">> => list(string()),
%%   <<"catalog">> := string(),
%%   <<"displayNames">> => list(string()),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"programs">> => list(list(any())()),
%%   <<"sort">> => list_program_management_accounts_sort_base(),
%%   <<"statuses">> => list(list(any())())
%% }
-type list_program_management_accounts_request() :: #{binary() => any()}.

%% Example:
%% create_channel_handshake_response() :: #{
%%   <<"channelHandshakeDetail">> => create_channel_handshake_detail()
%% }
-type create_channel_handshake_response() :: #{binary() => any()}.

%% Example:
%% list_program_management_accounts_response() :: #{
%%   <<"items">> => list(program_management_account_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_program_management_accounts_response() :: #{binary() => any()}.

%% Example:
%% list_relationships_sort_base() :: #{
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type list_relationships_sort_base() :: #{binary() => any()}.

%% Example:
%% cancel_channel_handshake_detail() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string(),
%%   <<"status">> => list(any())
%% }
-type cancel_channel_handshake_detail() :: #{binary() => any()}.

%% Example:
%% relationship_detail() :: #{
%%   <<"arn">> => string(),
%%   <<"associatedAccountId">> => string(),
%%   <<"associationType">> => list(any()),
%%   <<"catalog">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"displayName">> => string(),
%%   <<"id">> => string(),
%%   <<"programManagementAccountId">> => string(),
%%   <<"resaleAccountModel">> => list(any()),
%%   <<"revision">> => string(),
%%   <<"sector">> => list(any()),
%%   <<"startDate">> => non_neg_integer(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type relationship_detail() :: #{binary() => any()}.

%% Example:
%% create_program_management_account_response() :: #{
%%   <<"programManagementAccountDetail">> => create_program_management_account_detail()
%% }
-type create_program_management_account_response() :: #{binary() => any()}.

%% Example:
%% conflict_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.

%% Example:
%% get_relationship_request() :: #{
%%   <<"catalog">> := string(),
%%   <<"identifier">> := string(),
%%   <<"programManagementAccountIdentifier">> := string()
%% }
-type get_relationship_request() :: #{binary() => any()}.

%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.

%% Example:
%% resold_enterprise() :: #{
%%   <<"chargeAccountId">> => string(),
%%   <<"coverage">> => list(any()),
%%   <<"tamLocation">> => [string()]
%% }
-type resold_enterprise() :: #{binary() => any()}.

%% Example:
%% update_relationship_detail() :: #{
%%   <<"arn">> => string(),
%%   <<"displayName">> => string(),
%%   <<"id">> => string(),
%%   <<"revision">> => string()
%% }
-type update_relationship_detail() :: #{binary() => any()}.

%% Example:
%% revoke_service_period_type_filters() :: #{
%%   <<"servicePeriodTypes">> => list(list(any())())
%% }
-type revoke_service_period_type_filters() :: #{binary() => any()}.

%% Example:
%% relationship_summary() :: #{
%%   <<"arn">> => string(),
%%   <<"associatedAccountId">> => string(),
%%   <<"associationType">> => list(any()),
%%   <<"catalog">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"displayName">> => string(),
%%   <<"id">> => string(),
%%   <<"programManagementAccountId">> => string(),
%%   <<"revision">> => string(),
%%   <<"sector">> => list(any()),
%%   <<"startDate">> => non_neg_integer(),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type relationship_summary() :: #{binary() => any()}.

%% Example:
%% create_program_management_account_detail() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string()
%% }
-type create_program_management_account_detail() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.

%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"resourceId">> => [string()],
%%   <<"resourceType">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.

%% Example:
%% list_channel_handshakes_response() :: #{
%%   <<"items">> => list(channel_handshake_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_channel_handshakes_response() :: #{binary() => any()}.

%% Example:
%% list_relationships_response() :: #{
%%   <<"items">> => list(relationship_summary()),
%%   <<"nextToken">> => string()
%% }
-type list_relationships_response() :: #{binary() => any()}.

%% Example:
%% validation_exception_field() :: #{
%%   <<"code">> => [string()],
%%   <<"message">> => [string()],
%%   <<"name">> => [string()]
%% }
-type validation_exception_field() :: #{binary() => any()}.

%% Example:
%% start_service_period_handshake_detail() :: #{
%%   <<"endDate">> => non_neg_integer(),
%%   <<"minimumNoticeDays">> => string(),
%%   <<"note">> => string(),
%%   <<"servicePeriodType">> => list(any()),
%%   <<"startDate">> => non_neg_integer()
%% }
-type start_service_period_handshake_detail() :: #{binary() => any()}.

%% Example:
%% reject_channel_handshake_response() :: #{
%%   <<"channelHandshakeDetail">> => reject_channel_handshake_detail()
%% }
-type reject_channel_handshake_response() :: #{binary() => any()}.

%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.

%% Example:
%% accept_channel_handshake_request() :: #{
%%   <<"catalog">> := string(),
%%   <<"identifier">> := string()
%% }
-type accept_channel_handshake_request() :: #{binary() => any()}.

%% Example:
%% list_channel_handshakes_request() :: #{
%%   <<"associatedResourceIdentifiers">> => list(string()),
%%   <<"catalog">> := string(),
%%   <<"handshakeType">> := list(any()),
%%   <<"handshakeTypeFilters">> => list(),
%%   <<"handshakeTypeSort">> => list(),
%%   <<"maxResults">> => [integer()],
%%   <<"nextToken">> => string(),
%%   <<"participantType">> := list(any()),
%%   <<"statuses">> => list(list(any())())
%% }
-type list_channel_handshakes_request() :: #{binary() => any()}.

%% Example:
%% create_channel_handshake_detail() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string()
%% }
-type create_channel_handshake_detail() :: #{binary() => any()}.

%% Example:
%% delete_relationship_response() :: #{

%% }
-type delete_relationship_response() :: #{binary() => any()}.

%% Example:
%% create_relationship_detail() :: #{
%%   <<"arn">> => string(),
%%   <<"id">> => string()
%% }
-type create_relationship_detail() :: #{binary() => any()}.

%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"reason">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% cancel_channel_handshake_request() :: #{
%%   <<"catalog">> := string(),
%%   <<"identifier">> := string()
%% }
-type cancel_channel_handshake_request() :: #{binary() => any()}.

%% Example:
%% list_program_management_accounts_sort_base() :: #{
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type list_program_management_accounts_sort_base() :: #{binary() => any()}.

%% Example:
%% start_service_period_type_filters() :: #{
%%   <<"servicePeriodTypes">> => list(list(any())())
%% }
-type start_service_period_type_filters() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{

%% }
-type tag_resource_response() :: #{binary() => any()}.

%% Example:
%% program_management_account_handshake_detail() :: #{
%%   <<"program">> => list(any())
%% }
-type program_management_account_handshake_detail() :: #{binary() => any()}.

%% Example:
%% create_relationship_response() :: #{
%%   <<"relationshipDetail">> => create_relationship_detail()
%% }
-type create_relationship_response() :: #{binary() => any()}.

%% Example:
%% update_program_management_account_detail() :: #{
%%   <<"arn">> => string(),
%%   <<"displayName">> => string(),
%%   <<"id">> => string(),
%%   <<"revision">> => string()
%% }
-type update_program_management_account_detail() :: #{binary() => any()}.

%% Example:
%% validation_exception() :: #{
%%   <<"fieldList">> => list(validation_exception_field()),
%%   <<"message">> => [string()],
%%   <<"reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.

%% Example:
%% throttling_exception() :: #{
%%   <<"message">> => [string()],
%%   <<"quotaCode">> => [string()],
%%   <<"serviceCode">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.

%% Example:
%% delete_relationship_request() :: #{
%%   <<"catalog">> := string(),
%%   <<"clientToken">> => string(),
%%   <<"identifier">> := string(),
%%   <<"programManagementAccountIdentifier">> := string()
%% }
-type delete_relationship_request() :: #{binary() => any()}.

%% Example:
%% program_management_account_summary() :: #{
%%   <<"accountId">> => string(),
%%   <<"arn">> => string(),
%%   <<"catalog">> => string(),
%%   <<"createdAt">> => non_neg_integer(),
%%   <<"displayName">> => string(),
%%   <<"id">> => string(),
%%   <<"program">> => list(any()),
%%   <<"revision">> => string(),
%%   <<"startDate">> => non_neg_integer(),
%%   <<"status">> => list(any()),
%%   <<"updatedAt">> => non_neg_integer()
%% }
-type program_management_account_summary() :: #{binary() => any()}.

%% Example:
%% revoke_service_period_type_sort() :: #{
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type revoke_service_period_type_sort() :: #{binary() => any()}.

%% Example:
%% resold_business() :: #{
%%   <<"coverage">> => list(any())
%% }
-type resold_business() :: #{binary() => any()}.

%% Example:
%% accept_channel_handshake_response() :: #{
%%   <<"channelHandshakeDetail">> => accept_channel_handshake_detail()
%% }
-type accept_channel_handshake_response() :: #{binary() => any()}.

%% Example:
%% start_service_period_type_sort() :: #{
%%   <<"sortBy">> => list(any()),
%%   <<"sortOrder">> => list(any())
%% }
-type start_service_period_type_sort() :: #{binary() => any()}.

%% Example:
%% get_relationship_response() :: #{
%%   <<"relationshipDetail">> => relationship_detail()
%% }
-type get_relationship_response() :: #{binary() => any()}.

%% Example:
%% start_service_period_payload() :: #{
%%   <<"endDate">> => non_neg_integer(),
%%   <<"minimumNoticeDays">> => string(),
%%   <<"note">> => string(),
%%   <<"programManagementAccountIdentifier">> => string(),
%%   <<"servicePeriodType">> => list(any())
%% }
-type start_service_period_payload() :: #{binary() => any()}.

%% Example:
%% program_management_account_type_filters() :: #{
%%   <<"programs">> => list(list(any())())
%% }
-type program_management_account_type_filters() :: #{binary() => any()}.

-type accept_channel_handshake_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type cancel_channel_handshake_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type create_channel_handshake_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_program_management_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_relationship_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_program_management_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_relationship_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_relationship_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_channel_handshakes_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_program_management_accounts_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_relationships_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type reject_channel_handshake_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_program_management_account_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type update_relationship_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts a pending channel handshake request from another AWS account.
-spec accept_channel_handshake(aws_client:aws_client(), accept_channel_handshake_request()) ->
    {ok, accept_channel_handshake_response(), tuple()} |
    {error, any()} |
    {error, accept_channel_handshake_errors(), tuple()}.
accept_channel_handshake(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_channel_handshake(Client, Input, []).

-spec accept_channel_handshake(aws_client:aws_client(), accept_channel_handshake_request(), proplists:proplist()) ->
    {ok, accept_channel_handshake_response(), tuple()} |
    {error, any()} |
    {error, accept_channel_handshake_errors(), tuple()}.
accept_channel_handshake(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptChannelHandshake">>, Input, Options).

%% @doc Cancels a pending channel handshake request.
-spec cancel_channel_handshake(aws_client:aws_client(), cancel_channel_handshake_request()) ->
    {ok, cancel_channel_handshake_response(), tuple()} |
    {error, any()} |
    {error, cancel_channel_handshake_errors(), tuple()}.
cancel_channel_handshake(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_channel_handshake(Client, Input, []).

-spec cancel_channel_handshake(aws_client:aws_client(), cancel_channel_handshake_request(), proplists:proplist()) ->
    {ok, cancel_channel_handshake_response(), tuple()} |
    {error, any()} |
    {error, cancel_channel_handshake_errors(), tuple()}.
cancel_channel_handshake(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelChannelHandshake">>, Input, Options).

%% @doc Creates a new channel handshake request to establish a partnership
%% with another AWS account.
-spec create_channel_handshake(aws_client:aws_client(), create_channel_handshake_request()) ->
    {ok, create_channel_handshake_response(), tuple()} |
    {error, any()} |
    {error, create_channel_handshake_errors(), tuple()}.
create_channel_handshake(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_channel_handshake(Client, Input, []).

-spec create_channel_handshake(aws_client:aws_client(), create_channel_handshake_request(), proplists:proplist()) ->
    {ok, create_channel_handshake_response(), tuple()} |
    {error, any()} |
    {error, create_channel_handshake_errors(), tuple()}.
create_channel_handshake(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateChannelHandshake">>, Input, Options).

%% @doc Creates a new program management account for managing partner
%% relationships.
-spec create_program_management_account(aws_client:aws_client(), create_program_management_account_request()) ->
    {ok, create_program_management_account_response(), tuple()} |
    {error, any()} |
    {error, create_program_management_account_errors(), tuple()}.
create_program_management_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_program_management_account(Client, Input, []).

-spec create_program_management_account(aws_client:aws_client(), create_program_management_account_request(), proplists:proplist()) ->
    {ok, create_program_management_account_response(), tuple()} |
    {error, any()} |
    {error, create_program_management_account_errors(), tuple()}.
create_program_management_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateProgramManagementAccount">>, Input, Options).

%% @doc Creates a new partner relationship between accounts.
-spec create_relationship(aws_client:aws_client(), create_relationship_request()) ->
    {ok, create_relationship_response(), tuple()} |
    {error, any()} |
    {error, create_relationship_errors(), tuple()}.
create_relationship(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_relationship(Client, Input, []).

-spec create_relationship(aws_client:aws_client(), create_relationship_request(), proplists:proplist()) ->
    {ok, create_relationship_response(), tuple()} |
    {error, any()} |
    {error, create_relationship_errors(), tuple()}.
create_relationship(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRelationship">>, Input, Options).

%% @doc Deletes a program management account.
-spec delete_program_management_account(aws_client:aws_client(), delete_program_management_account_request()) ->
    {ok, delete_program_management_account_response(), tuple()} |
    {error, any()} |
    {error, delete_program_management_account_errors(), tuple()}.
delete_program_management_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_program_management_account(Client, Input, []).

-spec delete_program_management_account(aws_client:aws_client(), delete_program_management_account_request(), proplists:proplist()) ->
    {ok, delete_program_management_account_response(), tuple()} |
    {error, any()} |
    {error, delete_program_management_account_errors(), tuple()}.
delete_program_management_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteProgramManagementAccount">>, Input, Options).

%% @doc Deletes a partner relationship.
-spec delete_relationship(aws_client:aws_client(), delete_relationship_request()) ->
    {ok, delete_relationship_response(), tuple()} |
    {error, any()} |
    {error, delete_relationship_errors(), tuple()}.
delete_relationship(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_relationship(Client, Input, []).

-spec delete_relationship(aws_client:aws_client(), delete_relationship_request(), proplists:proplist()) ->
    {ok, delete_relationship_response(), tuple()} |
    {error, any()} |
    {error, delete_relationship_errors(), tuple()}.
delete_relationship(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRelationship">>, Input, Options).

%% @doc Retrieves details of a specific partner relationship.
-spec get_relationship(aws_client:aws_client(), get_relationship_request()) ->
    {ok, get_relationship_response(), tuple()} |
    {error, any()} |
    {error, get_relationship_errors(), tuple()}.
get_relationship(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_relationship(Client, Input, []).

-spec get_relationship(aws_client:aws_client(), get_relationship_request(), proplists:proplist()) ->
    {ok, get_relationship_response(), tuple()} |
    {error, any()} |
    {error, get_relationship_errors(), tuple()}.
get_relationship(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRelationship">>, Input, Options).

%% @doc Lists channel handshakes based on specified criteria.
-spec list_channel_handshakes(aws_client:aws_client(), list_channel_handshakes_request()) ->
    {ok, list_channel_handshakes_response(), tuple()} |
    {error, any()} |
    {error, list_channel_handshakes_errors(), tuple()}.
list_channel_handshakes(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_channel_handshakes(Client, Input, []).

-spec list_channel_handshakes(aws_client:aws_client(), list_channel_handshakes_request(), proplists:proplist()) ->
    {ok, list_channel_handshakes_response(), tuple()} |
    {error, any()} |
    {error, list_channel_handshakes_errors(), tuple()}.
list_channel_handshakes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListChannelHandshakes">>, Input, Options).

%% @doc Lists program management accounts based on specified criteria.
-spec list_program_management_accounts(aws_client:aws_client(), list_program_management_accounts_request()) ->
    {ok, list_program_management_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_program_management_accounts_errors(), tuple()}.
list_program_management_accounts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_program_management_accounts(Client, Input, []).

-spec list_program_management_accounts(aws_client:aws_client(), list_program_management_accounts_request(), proplists:proplist()) ->
    {ok, list_program_management_accounts_response(), tuple()} |
    {error, any()} |
    {error, list_program_management_accounts_errors(), tuple()}.
list_program_management_accounts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListProgramManagementAccounts">>, Input, Options).

%% @doc Lists partner relationships based on specified criteria.
-spec list_relationships(aws_client:aws_client(), list_relationships_request()) ->
    {ok, list_relationships_response(), tuple()} |
    {error, any()} |
    {error, list_relationships_errors(), tuple()}.
list_relationships(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_relationships(Client, Input, []).

-spec list_relationships(aws_client:aws_client(), list_relationships_request(), proplists:proplist()) ->
    {ok, list_relationships_response(), tuple()} |
    {error, any()} |
    {error, list_relationships_errors(), tuple()}.
list_relationships(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRelationships">>, Input, Options).

%% @doc Lists tags associated with a specific resource.
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

%% @doc Rejects a pending channel handshake request.
-spec reject_channel_handshake(aws_client:aws_client(), reject_channel_handshake_request()) ->
    {ok, reject_channel_handshake_response(), tuple()} |
    {error, any()} |
    {error, reject_channel_handshake_errors(), tuple()}.
reject_channel_handshake(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_channel_handshake(Client, Input, []).

-spec reject_channel_handshake(aws_client:aws_client(), reject_channel_handshake_request(), proplists:proplist()) ->
    {ok, reject_channel_handshake_response(), tuple()} |
    {error, any()} |
    {error, reject_channel_handshake_errors(), tuple()}.
reject_channel_handshake(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectChannelHandshake">>, Input, Options).

%% @doc Adds or updates tags for a specified resource.
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

%% @doc Removes tags from a specified resource.
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

%% @doc Updates the properties of a program management account.
-spec update_program_management_account(aws_client:aws_client(), update_program_management_account_request()) ->
    {ok, update_program_management_account_response(), tuple()} |
    {error, any()} |
    {error, update_program_management_account_errors(), tuple()}.
update_program_management_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_program_management_account(Client, Input, []).

-spec update_program_management_account(aws_client:aws_client(), update_program_management_account_request(), proplists:proplist()) ->
    {ok, update_program_management_account_response(), tuple()} |
    {error, any()} |
    {error, update_program_management_account_errors(), tuple()}.
update_program_management_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProgramManagementAccount">>, Input, Options).

%% @doc Updates the properties of a partner relationship.
-spec update_relationship(aws_client:aws_client(), update_relationship_request()) ->
    {ok, update_relationship_response(), tuple()} |
    {error, any()} |
    {error, update_relationship_errors(), tuple()}.
update_relationship(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_relationship(Client, Input, []).

-spec update_relationship(aws_client:aws_client(), update_relationship_request(), proplists:proplist()) ->
    {ok, update_relationship_response(), tuple()} |
    {error, any()} |
    {error, update_relationship_errors(), tuple()}.
update_relationship(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRelationship">>, Input, Options).

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
    Client1 = Client#{service => <<"partnercentral-channel">>},
    Host = build_host(<<"partnercentral-channel">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"PartnerCentralChannel.", Action/binary>>}
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
