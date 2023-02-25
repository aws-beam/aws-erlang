%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Amazon Pinpoint SMS and Voice, version 2 API
%% Reference.
%%
%% This guide provides information about Amazon Pinpoint SMS and Voice,
%% version 2 API resources, including supported HTTP methods, parameters, and
%% schemas.
%%
%% Amazon Pinpoint is an Amazon Web Services service that you can use to
%% engage with your recipients across multiple messaging channels. The Amazon
%% Pinpoint SMS and Voice, version 2 API provides programmatic access to
%% options that are unique to the SMS and voice channels and supplements the
%% resources provided by the Amazon Pinpoint API.
%%
%% If you're new to Amazon Pinpoint, it's also helpful to review the
%% Amazon Pinpoint Developer Guide. The Amazon Pinpoint Developer Guide
%% provides tutorials, code samples, and procedures that demonstrate how to
%% use Amazon Pinpoint features programmatically and how to integrate Amazon
%% Pinpoint functionality into mobile apps and other types of applications.
%% The guide also provides key information, such as Amazon Pinpoint
%% integration with other Amazon Web Services services, and the quotas that
%% apply to use of the service.
-module(aws_pinpoint_sms_voice_v2).

-export([associate_origination_identity/2,
         associate_origination_identity/3,
         create_configuration_set/2,
         create_configuration_set/3,
         create_event_destination/2,
         create_event_destination/3,
         create_opt_out_list/2,
         create_opt_out_list/3,
         create_pool/2,
         create_pool/3,
         delete_configuration_set/2,
         delete_configuration_set/3,
         delete_default_message_type/2,
         delete_default_message_type/3,
         delete_default_sender_id/2,
         delete_default_sender_id/3,
         delete_event_destination/2,
         delete_event_destination/3,
         delete_keyword/2,
         delete_keyword/3,
         delete_opt_out_list/2,
         delete_opt_out_list/3,
         delete_opted_out_number/2,
         delete_opted_out_number/3,
         delete_pool/2,
         delete_pool/3,
         delete_text_message_spend_limit_override/2,
         delete_text_message_spend_limit_override/3,
         delete_voice_message_spend_limit_override/2,
         delete_voice_message_spend_limit_override/3,
         describe_account_attributes/2,
         describe_account_attributes/3,
         describe_account_limits/2,
         describe_account_limits/3,
         describe_configuration_sets/2,
         describe_configuration_sets/3,
         describe_keywords/2,
         describe_keywords/3,
         describe_opt_out_lists/2,
         describe_opt_out_lists/3,
         describe_opted_out_numbers/2,
         describe_opted_out_numbers/3,
         describe_phone_numbers/2,
         describe_phone_numbers/3,
         describe_pools/2,
         describe_pools/3,
         describe_sender_ids/2,
         describe_sender_ids/3,
         describe_spend_limits/2,
         describe_spend_limits/3,
         disassociate_origination_identity/2,
         disassociate_origination_identity/3,
         list_pool_origination_identities/2,
         list_pool_origination_identities/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_keyword/2,
         put_keyword/3,
         put_opted_out_number/2,
         put_opted_out_number/3,
         release_phone_number/2,
         release_phone_number/3,
         request_phone_number/2,
         request_phone_number/3,
         send_text_message/2,
         send_text_message/3,
         send_voice_message/2,
         send_voice_message/3,
         set_default_message_type/2,
         set_default_message_type/3,
         set_default_sender_id/2,
         set_default_sender_id/3,
         set_text_message_spend_limit_override/2,
         set_text_message_spend_limit_override/3,
         set_voice_message_spend_limit_override/2,
         set_voice_message_spend_limit_override/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_event_destination/2,
         update_event_destination/3,
         update_phone_number/2,
         update_phone_number/3,
         update_pool/2,
         update_pool/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates the specified origination identity with a pool.
%%
%% If the origination identity is a phone number and is already associated
%% with another pool, an Error is returned. A sender ID can be associated
%% with multiple pools.
%%
%% If the origination identity configuration doesn't match the pool's
%% configuration, an Error is returned.
associate_origination_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_origination_identity(Client, Input, []).
associate_origination_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateOriginationIdentity">>, Input, Options).

%% @doc Creates a new configuration set.
%%
%% After you create the configuration set, you can add one or more event
%% destinations to it.
%%
%% A configuration set is a set of rules that you apply to the SMS and voice
%% messages that you send.
%%
%% When you send a message, you can optionally specify a single configuration
%% set.
create_configuration_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_configuration_set(Client, Input, []).
create_configuration_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateConfigurationSet">>, Input, Options).

%% @doc Creates a new event destination in a configuration set.
%%
%% An event destination is a location where you send message events. The
%% event options are Amazon CloudWatch, Amazon Kinesis Data Firehose, or
%% Amazon SNS. For example, when a message is delivered successfully, you can
%% send information about that event to an event destination, or send
%% notifications to endpoints that are subscribed to an Amazon SNS topic.
%%
%% Each configuration set can contain between 0 and 5 event destinations.
%% Each event destination can contain a reference to a single destination,
%% such as a CloudWatch or Kinesis Data Firehose destination.
create_event_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_event_destination(Client, Input, []).
create_event_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateEventDestination">>, Input, Options).

%% @doc Creates a new opt-out list.
%%
%% If the opt-out list name already exists, an Error is returned.
%%
%% An opt-out list is a list of phone numbers that are opted out, meaning you
%% can't send SMS or voice messages to them. If end user replies with the
%% keyword &quot;STOP,&quot; an entry for the phone number is added to the
%% opt-out list. In addition to STOP, your recipients can use any supported
%% opt-out keyword, such as CANCEL or OPTOUT. For a list of supported opt-out
%% keywords, see SMS opt out in the Amazon Pinpoint User Guide.
create_opt_out_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_opt_out_list(Client, Input, []).
create_opt_out_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateOptOutList">>, Input, Options).

%% @doc Creates a new pool and associates the specified origination identity
%% to the pool.
%%
%% A pool can include one or more phone numbers and SenderIds that are
%% associated with your Amazon Web Services account.
%%
%% The new pool inherits its configuration from the specified origination
%% identity. This includes keywords, message type, opt-out list, two-way
%% configuration, and self-managed opt-out configuration. Deletion protection
%% isn't inherited from the origination identity and defaults to false.
%%
%% If the origination identity is a phone number and is already associated
%% with another pool, an Error is returned. A sender ID can be associated
%% with multiple pools.
create_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_pool(Client, Input, []).
create_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePool">>, Input, Options).

%% @doc Deletes an existing configuration set.
%%
%% A configuration set is a set of rules that you apply to voice and SMS
%% messages that you send. In a configuration set, you can specify a
%% destination for specific types of events related to voice and SMS
%% messages.
delete_configuration_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_configuration_set(Client, Input, []).
delete_configuration_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteConfigurationSet">>, Input, Options).

%% @doc Deletes an existing default message type on a configuration set.
%%
%% A message type is a type of messages that you plan to send. If you send
%% account-related messages or time-sensitive messages such as one-time
%% passcodes, choose Transactional. If you plan to send messages that contain
%% marketing material or other promotional content, choose Promotional. This
%% setting applies to your entire Amazon Web Services account.
delete_default_message_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_default_message_type(Client, Input, []).
delete_default_message_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDefaultMessageType">>, Input, Options).

%% @doc Deletes an existing default sender ID on a configuration set.
%%
%% A default sender ID is the identity that appears on recipients'
%% devices when they receive SMS messages. Support for sender ID capabilities
%% varies by country or region.
delete_default_sender_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_default_sender_id(Client, Input, []).
delete_default_sender_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDefaultSenderId">>, Input, Options).

%% @doc Deletes an existing event destination.
%%
%% An event destination is a location where you send response information
%% about the messages that you send. For example, when a message is delivered
%% successfully, you can send information about that event to an Amazon
%% CloudWatch destination, or send notifications to endpoints that are
%% subscribed to an Amazon SNS topic.
delete_event_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_event_destination(Client, Input, []).
delete_event_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteEventDestination">>, Input, Options).

%% @doc Deletes an existing keyword from an origination phone number or pool.
%%
%% A keyword is a word that you can search for on a particular phone number
%% or pool. It is also a specific word or phrase that an end user can send to
%% your number to elicit a response, such as an informational message or a
%% special offer. When your number receives a message that begins with a
%% keyword, Amazon Pinpoint responds with a customizable message.
%%
%% Keywords &quot;HELP&quot; and &quot;STOP&quot; can't be deleted or
%% modified.
delete_keyword(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_keyword(Client, Input, []).
delete_keyword(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteKeyword">>, Input, Options).

%% @doc Deletes an existing opt-out list.
%%
%% All opted out phone numbers in the opt-out list are deleted.
%%
%% If the specified opt-out list name doesn't exist or is in-use by an
%% origination phone number or pool, an Error is returned.
delete_opt_out_list(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_opt_out_list(Client, Input, []).
delete_opt_out_list(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOptOutList">>, Input, Options).

%% @doc Deletes an existing opted out destination phone number from the
%% specified opt-out list.
%%
%% Each destination phone number can only be deleted once every 30 days.
%%
%% If the specified destination phone number doesn't exist or if the
%% opt-out list doesn't exist, an Error is returned.
delete_opted_out_number(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_opted_out_number(Client, Input, []).
delete_opted_out_number(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteOptedOutNumber">>, Input, Options).

%% @doc Deletes an existing pool.
%%
%% Deleting a pool disassociates all origination identities from that pool.
%%
%% If the pool status isn't active or if deletion protection is enabled,
%% an Error is returned.
%%
%% A pool is a collection of phone numbers and SenderIds. A pool can include
%% one or more phone numbers and SenderIds that are associated with your
%% Amazon Web Services account.
delete_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_pool(Client, Input, []).
delete_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePool">>, Input, Options).

%% @doc Deletes an account-level monthly spending limit override for sending
%% text messages.
%%
%% Deleting a spend limit override will set the `EnforcedLimit' to equal
%% the `MaxLimit', which is controlled by Amazon Web Services. For more
%% information on spend limits (quotas) see Amazon Pinpoint quotas in the
%% Amazon Pinpoint Developer Guide.
delete_text_message_spend_limit_override(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_text_message_spend_limit_override(Client, Input, []).
delete_text_message_spend_limit_override(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTextMessageSpendLimitOverride">>, Input, Options).

%% @doc Deletes an account level monthly spend limit override for sending
%% voice messages.
%%
%% Deleting a spend limit override sets the `EnforcedLimit' equal to the
%% `MaxLimit', which is controlled by Amazon Web Services. For more
%% information on spending limits (quotas) see Amazon Pinpoint quotas in the
%% Amazon Pinpoint Developer Guide.
delete_voice_message_spend_limit_override(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_voice_message_spend_limit_override(Client, Input, []).
delete_voice_message_spend_limit_override(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteVoiceMessageSpendLimitOverride">>, Input, Options).

%% @doc Describes attributes of your Amazon Web Services account.
%%
%% The supported account attributes include account tier, which indicates
%% whether your account is in the sandbox or production environment. When
%% you're ready to move your account out of the sandbox, create an Amazon
%% Web Services Support case for a service limit increase request.
%%
%% New Amazon Pinpoint accounts are placed into an SMS or voice sandbox. The
%% sandbox protects both Amazon Web Services end recipients and SMS or voice
%% recipients from fraud and abuse.
describe_account_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_attributes(Client, Input, []).
describe_account_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountAttributes">>, Input, Options).

%% @doc Describes the current Amazon Pinpoint SMS Voice V2 resource quotas
%% for your account.
%%
%% The description for a quota includes the quota name, current usage toward
%% that quota, and the quota's maximum value.
%%
%% When you establish an Amazon Web Services account, the account has initial
%% quotas on the maximum number of configuration sets, opt-out lists, phone
%% numbers, and pools that you can create in a given Region. For more
%% information see Amazon Pinpoint quotas in the Amazon Pinpoint Developer
%% Guide.
describe_account_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_account_limits(Client, Input, []).
describe_account_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeAccountLimits">>, Input, Options).

%% @doc Describes the specified configuration sets or all in your account.
%%
%% If you specify configuration set names, the output includes information
%% for only the specified configuration sets. If you specify filters, the
%% output includes information for only those configuration sets that meet
%% the filter criteria. If you don't specify configuration set names or
%% filters, the output includes information for all configuration sets.
%%
%% If you specify a configuration set name that isn't valid, an error is
%% returned.
describe_configuration_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_configuration_sets(Client, Input, []).
describe_configuration_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeConfigurationSets">>, Input, Options).

%% @doc Describes the specified keywords or all keywords on your origination
%% phone number or pool.
%%
%% A keyword is a word that you can search for on a particular phone number
%% or pool. It is also a specific word or phrase that an end user can send to
%% your number to elicit a response, such as an informational message or a
%% special offer. When your number receives a message that begins with a
%% keyword, Amazon Pinpoint responds with a customizable message.
%%
%% If you specify a keyword that isn't valid, an Error is returned.
describe_keywords(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_keywords(Client, Input, []).
describe_keywords(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeKeywords">>, Input, Options).

%% @doc Describes the specified opt-out list or all opt-out lists in your
%% account.
%%
%% If you specify opt-out list names, the output includes information for
%% only the specified opt-out lists. Opt-out lists include only those that
%% meet the filter criteria. If you don't specify opt-out list names or
%% filters, the output includes information for all opt-out lists.
%%
%% If you specify an opt-out list name that isn't valid, an Error is
%% returned.
describe_opt_out_lists(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_opt_out_lists(Client, Input, []).
describe_opt_out_lists(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOptOutLists">>, Input, Options).

%% @doc Describes the specified opted out destination numbers or all opted
%% out destination numbers in an opt-out list.
%%
%% If you specify opted out numbers, the output includes information for only
%% the specified opted out numbers. If you specify filters, the output
%% includes information for only those opted out numbers that meet the filter
%% criteria. If you don't specify opted out numbers or filters, the
%% output includes information for all opted out destination numbers in your
%% opt-out list.
%%
%% If you specify an opted out number that isn't valid, an Error is
%% returned.
describe_opted_out_numbers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_opted_out_numbers(Client, Input, []).
describe_opted_out_numbers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeOptedOutNumbers">>, Input, Options).

%% @doc Describes the specified origination phone number, or all the phone
%% numbers in your account.
%%
%% If you specify phone number IDs, the output includes information for only
%% the specified phone numbers. If you specify filters, the output includes
%% information for only those phone numbers that meet the filter criteria. If
%% you don't specify phone number IDs or filters, the output includes
%% information for all phone numbers.
%%
%% If you specify a phone number ID that isn't valid, an Error is
%% returned.
describe_phone_numbers(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_phone_numbers(Client, Input, []).
describe_phone_numbers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePhoneNumbers">>, Input, Options).

%% @doc Retrieves the specified pools or all pools associated with your
%% Amazon Web Services account.
%%
%% If you specify pool IDs, the output includes information for only the
%% specified pools. If you specify filters, the output includes information
%% for only those pools that meet the filter criteria. If you don't
%% specify pool IDs or filters, the output includes information for all
%% pools.
%%
%% If you specify a pool ID that isn't valid, an Error is returned.
%%
%% A pool is a collection of phone numbers and SenderIds. A pool can include
%% one or more phone numbers and SenderIds that are associated with your
%% Amazon Web Services account.
describe_pools(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_pools(Client, Input, []).
describe_pools(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePools">>, Input, Options).

%% @doc Describes the specified SenderIds or all SenderIds associated with
%% your Amazon Web Services account.
%%
%% If you specify SenderIds, the output includes information for only the
%% specified SenderIds. If you specify filters, the output includes
%% information for only those SenderIds that meet the filter criteria. If you
%% don't specify SenderIds or filters, the output includes information
%% for all SenderIds.
%%
%% f you specify a sender ID that isn't valid, an Error is returned.
describe_sender_ids(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_sender_ids(Client, Input, []).
describe_sender_ids(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSenderIds">>, Input, Options).

%% @doc Describes the current Amazon Pinpoint monthly spend limits for
%% sending voice and text messages.
%%
%% When you establish an Amazon Web Services account, the account has initial
%% monthly spend limit in a given Region. For more information on increasing
%% your monthly spend limit, see Requesting increases to your monthly SMS
%% spending quota for Amazon Pinpoint in the Amazon Pinpoint User Guide.
describe_spend_limits(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_spend_limits(Client, Input, []).
describe_spend_limits(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeSpendLimits">>, Input, Options).

%% @doc Removes the specified origination identity from an existing pool.
%%
%% If the origination identity isn't associated with the specified pool,
%% an Error is returned.
disassociate_origination_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_origination_identity(Client, Input, []).
disassociate_origination_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateOriginationIdentity">>, Input, Options).

%% @doc Lists all associated origination identities in your pool.
%%
%% If you specify filters, the output includes information for only those
%% origination identities that meet the filter criteria.
list_pool_origination_identities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pool_origination_identities(Client, Input, []).
list_pool_origination_identities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPoolOriginationIdentities">>, Input, Options).

%% @doc List all tags associated with a resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Creates or updates a keyword configuration on an origination phone
%% number or pool.
%%
%% A keyword is a word that you can search for on a particular phone number
%% or pool. It is also a specific word or phrase that an end user can send to
%% your number to elicit a response, such as an informational message or a
%% special offer. When your number receives a message that begins with a
%% keyword, Amazon Pinpoint responds with a customizable message.
%%
%% If you specify a keyword that isn't valid, an Error is returned.
put_keyword(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_keyword(Client, Input, []).
put_keyword(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutKeyword">>, Input, Options).

%% @doc Creates an opted out destination phone number in the opt-out list.
%%
%% If the destination phone number isn't valid or if the specified
%% opt-out list doesn't exist, an Error is returned.
put_opted_out_number(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_opted_out_number(Client, Input, []).
put_opted_out_number(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutOptedOutNumber">>, Input, Options).

%% @doc Releases an existing origination phone number in your account.
%%
%% Once released, a phone number is no longer available for sending messages.
%%
%% If the origination phone number has deletion protection enabled or is
%% associated with a pool, an Error is returned.
release_phone_number(Client, Input)
  when is_map(Client), is_map(Input) ->
    release_phone_number(Client, Input, []).
release_phone_number(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ReleasePhoneNumber">>, Input, Options).

%% @doc Request an origination phone number for use in your account.
%%
%% For more information on phone number request see Requesting a number in
%% the Amazon Pinpoint User Guide.
request_phone_number(Client, Input)
  when is_map(Client), is_map(Input) ->
    request_phone_number(Client, Input, []).
request_phone_number(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RequestPhoneNumber">>, Input, Options).

%% @doc Creates a new text message and sends it to a recipient's phone
%% number.
%%
%% SMS throughput limits are measured in Message Parts per Second (MPS). Your
%% MPS limit depends on the destination country of your messages, as well as
%% the type of phone number (origination number) that you use to send the
%% message. For more information, see Message Parts per Second (MPS) limits
%% in the Amazon Pinpoint User Guide.
send_text_message(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_text_message(Client, Input, []).
send_text_message(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendTextMessage">>, Input, Options).

%% @doc Allows you to send a request that sends a text message through Amazon
%% Pinpoint.
%%
%% This operation uses Amazon Polly to convert a text script into a voice
%% message.
send_voice_message(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_voice_message(Client, Input, []).
send_voice_message(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendVoiceMessage">>, Input, Options).

%% @doc Sets the default message type on a configuration set.
%%
%% Choose the category of SMS messages that you plan to send from this
%% account. If you send account-related messages or time-sensitive messages
%% such as one-time passcodes, choose Transactional. If you plan to send
%% messages that contain marketing material or other promotional content,
%% choose Promotional. This setting applies to your entire Amazon Web
%% Services account.
set_default_message_type(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_default_message_type(Client, Input, []).
set_default_message_type(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetDefaultMessageType">>, Input, Options).

%% @doc Sets default sender ID on a configuration set.
%%
%% When sending a text message to a destination country that supports sender
%% IDs, the default sender ID on the configuration set specified will be used
%% if no dedicated origination phone numbers or registered sender IDs are
%% available in your account.
set_default_sender_id(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_default_sender_id(Client, Input, []).
set_default_sender_id(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetDefaultSenderId">>, Input, Options).

%% @doc Sets an account level monthly spend limit override for sending text
%% messages.
%%
%% The requested spend limit must be less than or equal to the
%% `MaxLimit', which is set by Amazon Web Services.
set_text_message_spend_limit_override(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_text_message_spend_limit_override(Client, Input, []).
set_text_message_spend_limit_override(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetTextMessageSpendLimitOverride">>, Input, Options).

%% @doc Sets an account level monthly spend limit override for sending voice
%% messages.
%%
%% The requested spend limit must be less than or equal to the
%% `MaxLimit', which is set by Amazon Web Services.
set_voice_message_spend_limit_override(Client, Input)
  when is_map(Client), is_map(Input) ->
    set_voice_message_spend_limit_override(Client, Input, []).
set_voice_message_spend_limit_override(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SetVoiceMessageSpendLimitOverride">>, Input, Options).

%% @doc Adds or overwrites only the specified tags for the specified Amazon
%% Pinpoint SMS Voice, version 2 resource.
%%
%% When you specify an existing tag key, the value is overwritten with the
%% new value. Each resource can have a maximum of 50 tags. Each tag consists
%% of a key and an optional value. Tag keys must be unique per resource. For
%% more information about tags, see Tagging Amazon Pinpoint resources in the
%% Amazon Pinpoint Developer Guide.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes the association of the specified tags from an Amazon Pinpoint
%% SMS Voice V2 resource.
%%
%% For more information on tags see Tagging Amazon Pinpoint resources in the
%% Amazon Pinpoint Developer Guide.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates an existing event destination in a configuration set.
%%
%% You can update the IAM role ARN for CloudWatch Logs and Kinesis Data
%% Firehose. You can also enable or disable the event destination.
%%
%% You may want to update an event destination to change its matching event
%% types or updating the destination resource ARN. You can't change an
%% event destination's type between CloudWatch Logs, Kinesis Data
%% Firehose, and Amazon SNS.
update_event_destination(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_event_destination(Client, Input, []).
update_event_destination(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateEventDestination">>, Input, Options).

%% @doc Updates the configuration of an existing origination phone number.
%%
%% You can update the opt-out list, enable or disable two-way messaging,
%% change the TwoWayChannelArn, enable or disable self-managed opt-outs, and
%% enable or disable deletion protection.
%%
%% If the origination phone number is associated with a pool, an Error is
%% returned.
update_phone_number(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_phone_number(Client, Input, []).
update_phone_number(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePhoneNumber">>, Input, Options).

%% @doc Updates the configuration of an existing pool.
%%
%% You can update the opt-out list, enable or disable two-way messaging,
%% change the `TwoWayChannelArn', enable or disable self-managed
%% opt-outs, enable or disable deletion protection, and enable or disable
%% shared routes.
update_pool(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_pool(Client, Input, []).
update_pool(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdatePool">>, Input, Options).

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
    Client1 = Client#{service => <<"sms-voice">>},
    Host = build_host(<<"sms-voice">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.0">>},
        {<<"X-Amz-Target">>, <<"PinpointSMSVoiceV2.", Action/binary>>}
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
