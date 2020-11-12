%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Connect is a cloud-based contact center solution that makes it
%% easy to set up and manage a customer contact center and provide reliable
%% customer engagement at any scale.
%%
%% Amazon Connect provides rich metrics and real-time reporting that allow
%% you to optimize contact routing. You can also resolve customer issues more
%% efficiently by putting customers in touch with the right agents.
%%
%% There are limits to the number of Amazon Connect resources that you can
%% create and limits to the number of requests that you can make per second.
%% For more information, see Amazon Connect Service Quotas in the Amazon
%% Connect Administrator Guide.
%%
%% To connect programmatically to an AWS service, you use an endpoint. For a
%% list of Amazon Connect endpoints, see Amazon Connect Endpoints.
%%
%% Working with contact flows? Check out the Amazon Connect Flow language.
-module(aws_connect).

-export([associate_routing_profile_queues/4,
         associate_routing_profile_queues/5,
         create_contact_flow/3,
         create_contact_flow/4,
         create_routing_profile/3,
         create_routing_profile/4,
         create_user/3,
         create_user/4,
         delete_user/4,
         delete_user/5,
         describe_contact_flow/3,
         describe_contact_flow/4,
         describe_routing_profile/3,
         describe_routing_profile/4,
         describe_user/3,
         describe_user/4,
         describe_user_hierarchy_group/3,
         describe_user_hierarchy_group/4,
         describe_user_hierarchy_structure/2,
         describe_user_hierarchy_structure/3,
         disassociate_routing_profile_queues/4,
         disassociate_routing_profile_queues/5,
         get_contact_attributes/3,
         get_contact_attributes/4,
         get_current_metric_data/3,
         get_current_metric_data/4,
         get_federation_token/2,
         get_federation_token/3,
         get_metric_data/3,
         get_metric_data/4,
         list_contact_flows/5,
         list_contact_flows/6,
         list_hours_of_operations/4,
         list_hours_of_operations/5,
         list_phone_numbers/6,
         list_phone_numbers/7,
         list_prompts/4,
         list_prompts/5,
         list_queues/5,
         list_queues/6,
         list_routing_profile_queues/5,
         list_routing_profile_queues/6,
         list_routing_profiles/4,
         list_routing_profiles/5,
         list_security_profiles/4,
         list_security_profiles/5,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         list_user_hierarchy_groups/4,
         list_user_hierarchy_groups/5,
         list_users/4,
         list_users/5,
         resume_contact_recording/2,
         resume_contact_recording/3,
         start_chat_contact/2,
         start_chat_contact/3,
         start_contact_recording/2,
         start_contact_recording/3,
         start_outbound_voice_contact/2,
         start_outbound_voice_contact/3,
         stop_contact/2,
         stop_contact/3,
         stop_contact_recording/2,
         stop_contact_recording/3,
         suspend_contact_recording/2,
         suspend_contact_recording/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_contact_attributes/2,
         update_contact_attributes/3,
         update_contact_flow_content/4,
         update_contact_flow_content/5,
         update_contact_flow_name/4,
         update_contact_flow_name/5,
         update_routing_profile_concurrency/4,
         update_routing_profile_concurrency/5,
         update_routing_profile_default_outbound_queue/4,
         update_routing_profile_default_outbound_queue/5,
         update_routing_profile_name/4,
         update_routing_profile_name/5,
         update_routing_profile_queues/4,
         update_routing_profile_queues/5,
         update_user_hierarchy/4,
         update_user_hierarchy/5,
         update_user_identity_info/4,
         update_user_identity_info/5,
         update_user_phone_config/4,
         update_user_phone_config/5,
         update_user_routing_profile/4,
         update_user_routing_profile/5,
         update_user_security_profiles/4,
         update_user_security_profiles/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates a set of queues with a routing profile.
associate_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input) ->
    associate_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input, []).
associate_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input0, Options) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/associate-queues"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a contact flow for the specified Amazon Connect instance.
%%
%% You can also create and update contact flows using the Amazon Connect Flow
%% language.
create_contact_flow(Client, InstanceId, Input) ->
    create_contact_flow(Client, InstanceId, Input, []).
create_contact_flow(Client, InstanceId, Input0, Options) ->
    Method = put,
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a new routing profile.
create_routing_profile(Client, InstanceId, Input) ->
    create_routing_profile(Client, InstanceId, Input, []).
create_routing_profile(Client, InstanceId, Input0, Options) ->
    Method = put,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a user account for the specified Amazon Connect instance.
%%
%% For information about how to create user accounts using the Amazon Connect
%% console, see Add Users in the Amazon Connect Administrator Guide.
create_user(Client, InstanceId, Input) ->
    create_user(Client, InstanceId, Input, []).
create_user(Client, InstanceId, Input0, Options) ->
    Method = put,
    Path = ["/users/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a user account from the specified Amazon Connect instance.
%%
%% For information about what happens to a user's data when their account is
%% deleted, see Delete Users from Your Amazon Connect Instance in the Amazon
%% Connect Administrator Guide.
delete_user(Client, InstanceId, UserId, Input) ->
    delete_user(Client, InstanceId, UserId, Input, []).
delete_user(Client, InstanceId, UserId, Input0, Options) ->
    Method = delete,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Describes the specified contact flow.
%%
%% You can also create and update contact flows using the Amazon Connect Flow
%% language.
describe_contact_flow(Client, ContactFlowId, InstanceId)
  when is_map(Client) ->
    describe_contact_flow(Client, ContactFlowId, InstanceId, []).
describe_contact_flow(Client, ContactFlowId, InstanceId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the specified routing profile.
describe_routing_profile(Client, InstanceId, RoutingProfileId)
  when is_map(Client) ->
    describe_routing_profile(Client, InstanceId, RoutingProfileId, []).
describe_routing_profile(Client, InstanceId, RoutingProfileId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the specified user account.
%%
%% You can find the instance ID in the console (it’s the final part of the
%% ARN). The console does not display the user IDs. Instead, list the users
%% and note the IDs provided in the output.
describe_user(Client, InstanceId, UserId)
  when is_map(Client) ->
    describe_user(Client, InstanceId, UserId, []).
describe_user(Client, InstanceId, UserId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the specified hierarchy group.
describe_user_hierarchy_group(Client, HierarchyGroupId, InstanceId)
  when is_map(Client) ->
    describe_user_hierarchy_group(Client, HierarchyGroupId, InstanceId, []).
describe_user_hierarchy_group(Client, HierarchyGroupId, InstanceId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/user-hierarchy-groups/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(HierarchyGroupId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes the hierarchy structure of the specified Amazon Connect
%% instance.
describe_user_hierarchy_structure(Client, InstanceId)
  when is_map(Client) ->
    describe_user_hierarchy_structure(Client, InstanceId, []).
describe_user_hierarchy_structure(Client, InstanceId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/user-hierarchy-structure/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Disassociates a set of queues from a routing profile.
disassociate_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input) ->
    disassociate_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input, []).
disassociate_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input0, Options) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/disassociate-queues"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the contact attributes for the specified contact.
get_contact_attributes(Client, InitialContactId, InstanceId)
  when is_map(Client) ->
    get_contact_attributes(Client, InitialContactId, InstanceId, []).
get_contact_attributes(Client, InitialContactId, InstanceId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/contact/attributes/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(InitialContactId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the real-time metric data from the specified Amazon Connect
%% instance.
%%
%% For a description of each metric, see Real-time Metrics Definitions in the
%% Amazon Connect Administrator Guide.
get_current_metric_data(Client, InstanceId, Input) ->
    get_current_metric_data(Client, InstanceId, Input, []).
get_current_metric_data(Client, InstanceId, Input0, Options) ->
    Method = post,
    Path = ["/metrics/current/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves a token for federation.
get_federation_token(Client, InstanceId)
  when is_map(Client) ->
    get_federation_token(Client, InstanceId, []).
get_federation_token(Client, InstanceId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/user/federate/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets historical metric data from the specified Amazon Connect
%% instance.
%%
%% For a description of each historical metric, see Historical Metrics
%% Definitions in the Amazon Connect Administrator Guide.
get_metric_data(Client, InstanceId, Input) ->
    get_metric_data(Client, InstanceId, Input, []).
get_metric_data(Client, InstanceId, Input0, Options) ->
    Method = post,
    Path = ["/metrics/historical/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Provides information about the contact flows for the specified Amazon
%% Connect instance.
%%
%% You can also create and update contact flows using the Amazon Connect Flow
%% language.
%%
%% For more information about contact flows, see Contact Flows in the Amazon
%% Connect Administrator Guide.
list_contact_flows(Client, InstanceId, ContactFlowTypes, MaxResults, NextToken)
  when is_map(Client) ->
    list_contact_flows(Client, InstanceId, ContactFlowTypes, MaxResults, NextToken, []).
list_contact_flows(Client, InstanceId, ContactFlowTypes, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/contact-flows-summary/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"contactFlowTypes">>, ContactFlowTypes},
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides information about the hours of operation for the specified
%% Amazon Connect instance.
%%
%% For more information about hours of operation, see Set the Hours of
%% Operation for a Queue in the Amazon Connect Administrator Guide.
list_hours_of_operations(Client, InstanceId, MaxResults, NextToken)
  when is_map(Client) ->
    list_hours_of_operations(Client, InstanceId, MaxResults, NextToken, []).
list_hours_of_operations(Client, InstanceId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/hours-of-operations-summary/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides information about the phone numbers for the specified Amazon
%% Connect instance.
%%
%% For more information about phone numbers, see Set Up Phone Numbers for
%% Your Contact Center in the Amazon Connect Administrator Guide.
list_phone_numbers(Client, InstanceId, MaxResults, NextToken, PhoneNumberCountryCodes, PhoneNumberTypes)
  when is_map(Client) ->
    list_phone_numbers(Client, InstanceId, MaxResults, NextToken, PhoneNumberCountryCodes, PhoneNumberTypes, []).
list_phone_numbers(Client, InstanceId, MaxResults, NextToken, PhoneNumberCountryCodes, PhoneNumberTypes, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/phone-numbers-summary/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"phoneNumberCountryCodes">>, PhoneNumberCountryCodes},
        {<<"phoneNumberTypes">>, PhoneNumberTypes}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides information about the prompts for the specified Amazon
%% Connect instance.
list_prompts(Client, InstanceId, MaxResults, NextToken)
  when is_map(Client) ->
    list_prompts(Client, InstanceId, MaxResults, NextToken, []).
list_prompts(Client, InstanceId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/prompts-summary/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides information about the queues for the specified Amazon
%% Connect instance.
%%
%% For more information about queues, see Queues: Standard and Agent in the
%% Amazon Connect Administrator Guide.
list_queues(Client, InstanceId, MaxResults, NextToken, QueueTypes)
  when is_map(Client) ->
    list_queues(Client, InstanceId, MaxResults, NextToken, QueueTypes, []).
list_queues(Client, InstanceId, MaxResults, NextToken, QueueTypes, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/queues-summary/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken},
        {<<"queueTypes">>, QueueTypes}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the queues associated with a routing profile.
list_routing_profile_queues(Client, InstanceId, RoutingProfileId, MaxResults, NextToken)
  when is_map(Client) ->
    list_routing_profile_queues(Client, InstanceId, RoutingProfileId, MaxResults, NextToken, []).
list_routing_profile_queues(Client, InstanceId, RoutingProfileId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/queues"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides summary information about the routing profiles for the
%% specified Amazon Connect instance.
%%
%% For more information about routing profiles, see Routing Profiles and
%% Create a Routing Profile in the Amazon Connect Administrator Guide.
list_routing_profiles(Client, InstanceId, MaxResults, NextToken)
  when is_map(Client) ->
    list_routing_profiles(Client, InstanceId, MaxResults, NextToken, []).
list_routing_profiles(Client, InstanceId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/routing-profiles-summary/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides summary information about the security profiles for the
%% specified Amazon Connect instance.
%%
%% For more information about security profiles, see Security Profiles in the
%% Amazon Connect Administrator Guide.
list_security_profiles(Client, InstanceId, MaxResults, NextToken)
  when is_map(Client) ->
    list_security_profiles(Client, InstanceId, MaxResults, NextToken, []).
list_security_profiles(Client, InstanceId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/security-profiles-summary/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags for the specified resource.
%%
%% For sample policies that use tags, see Amazon Connect Identity-Based
%% Policy Examples in the Amazon Connect Administrator Guide.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, []).
list_tags_for_resource(Client, ResourceArn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides summary information about the hierarchy groups for the
%% specified Amazon Connect instance.
%%
%% For more information about agent hierarchies, see Set Up Agent Hierarchies
%% in the Amazon Connect Administrator Guide.
list_user_hierarchy_groups(Client, InstanceId, MaxResults, NextToken)
  when is_map(Client) ->
    list_user_hierarchy_groups(Client, InstanceId, MaxResults, NextToken, []).
list_user_hierarchy_groups(Client, InstanceId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/user-hierarchy-groups-summary/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides summary information about the users for the specified Amazon
%% Connect instance.
list_users(Client, InstanceId, MaxResults, NextToken)
  when is_map(Client) ->
    list_users(Client, InstanceId, MaxResults, NextToken, []).
list_users(Client, InstanceId, MaxResults, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/users-summary/", aws_util:encode_uri(InstanceId), ""],
    SuccessStatusCode = undefined,

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, MaxResults},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc When a contact is being recorded, and the recording has been
%% suspended using SuspendContactRecording, this API resumes recording the
%% call.
%%
%% Only voice recordings are supported at this time.
resume_contact_recording(Client, Input) ->
    resume_contact_recording(Client, Input, []).
resume_contact_recording(Client, Input0, Options) ->
    Method = post,
    Path = ["/contact/resume-recording"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Initiates a contact flow to start a new chat for the customer.
%%
%% Response of this API provides a token required to obtain credentials from
%% the CreateParticipantConnection API in the Amazon Connect Participant
%% Service.
%%
%% When a new chat contact is successfully created, clients need to subscribe
%% to the participant’s connection for the created chat within 5 minutes.
%% This is achieved by invoking CreateParticipantConnection with WEBSOCKET
%% and CONNECTION_CREDENTIALS.
%%
%% A 429 error occurs in two situations:
%%
%% <ul> <li> API rate limit is exceeded. API TPS throttling returns a
%% `TooManyRequests' exception from the API Gateway.
%%
%% </li> <li> The quota for concurrent active chats is exceeded. Active chat
%% throttling returns a `LimitExceededException'.
%%
%% </li> </ul> For more information about how chat works, see Chat in the
%% Amazon Connect Administrator Guide.
start_chat_contact(Client, Input) ->
    start_chat_contact(Client, Input, []).
start_chat_contact(Client, Input0, Options) ->
    Method = put,
    Path = ["/contact/chat"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc This API starts recording the contact when the agent joins the call.
%%
%% StartContactRecording is a one-time action. For example, if you use
%% StopContactRecording to stop recording an ongoing call, you can't use
%% StartContactRecording to restart it. For scenarios where the recording has
%% started and you want to suspend and resume it, such as when collecting
%% sensitive information (for example, a credit card number), use
%% SuspendContactRecording and ResumeContactRecording.
%%
%% You can use this API to override the recording behavior configured in the
%% Set recording behavior block.
%%
%% Only voice recordings are supported at this time.
start_contact_recording(Client, Input) ->
    start_contact_recording(Client, Input, []).
start_contact_recording(Client, Input0, Options) ->
    Method = post,
    Path = ["/contact/start-recording"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc This API places an outbound call to a contact, and then initiates the
%% contact flow.
%%
%% It performs the actions in the contact flow that's specified (in
%% `ContactFlowId').
%%
%% Agents are not involved in initiating the outbound API (that is, dialing
%% the contact). If the contact flow places an outbound call to a contact,
%% and then puts the contact in queue, that's when the call is routed to the
%% agent, like any other inbound case.
%%
%% There is a 60 second dialing timeout for this operation. If the call is
%% not connected after 60 seconds, it fails.
%%
%% UK numbers with a 447 prefix are not allowed by default. Before you can
%% dial these UK mobile numbers, you must submit a service quota increase
%% request. For more information, see Amazon Connect Service Quotas in the
%% Amazon Connect Administrator Guide.
start_outbound_voice_contact(Client, Input) ->
    start_outbound_voice_contact(Client, Input, []).
start_outbound_voice_contact(Client, Input0, Options) ->
    Method = put,
    Path = ["/contact/outbound-voice"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Ends the specified contact.
stop_contact(Client, Input) ->
    stop_contact(Client, Input, []).
stop_contact(Client, Input0, Options) ->
    Method = post,
    Path = ["/contact/stop"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc When a contact is being recorded, this API stops recording the call.
%%
%% StopContactRecording is a one-time action. If you use StopContactRecording
%% to stop recording an ongoing call, you can't use StartContactRecording to
%% restart it. For scenarios where the recording has started and you want to
%% suspend it for sensitive information (for example, to collect a credit
%% card number), and then restart it, use SuspendContactRecording and
%% ResumeContactRecording.
%%
%% Only voice recordings are supported at this time.
stop_contact_recording(Client, Input) ->
    stop_contact_recording(Client, Input, []).
stop_contact_recording(Client, Input0, Options) ->
    Method = post,
    Path = ["/contact/stop-recording"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc When a contact is being recorded, this API suspends recording the
%% call.
%%
%% For example, you might suspend the call recording while collecting
%% sensitive information, such as a credit card number. Then use
%% ResumeContactRecording to restart recording.
%%
%% The period of time that the recording is suspended is filled with silence
%% in the final recording.
%%
%% Only voice recordings are supported at this time.
suspend_contact_recording(Client, Input) ->
    suspend_contact_recording(Client, Input, []).
suspend_contact_recording(Client, Input0, Options) ->
    Method = post,
    Path = ["/contact/suspend-recording"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds the specified tags to the specified resource.
%%
%% The supported resource types are users, routing profiles, and contact
%% flows.
%%
%% For sample policies that use tags, see Amazon Connect Identity-Based
%% Policy Examples in the Amazon Connect Administrator Guide.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified tags from the specified resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates or updates the contact attributes associated with the
%% specified contact.
%%
%% You can add or update attributes for both ongoing and completed contacts.
%% For example, you can update the customer's name or the reason the customer
%% called while the call is active, or add notes about steps that the agent
%% took during the call that are displayed to the next agent that takes the
%% call. You can also update attributes for a contact using data from your
%% CRM application and save the data with the contact in Amazon Connect. You
%% could also flag calls for additional analysis, such as legal review or
%% identifying abusive callers.
%%
%% Contact attributes are available in Amazon Connect for 24 months, and are
%% then deleted.
%%
%% This operation is also available in the Amazon Connect Flow language. See
%% UpdateContactAttributes.
%%
%% Important: You cannot use the operation to update attributes for contacts
%% that occurred prior to the release of the API, September 12, 2018. You can
%% update attributes only for contacts that started after the release of the
%% API. If you attempt to update attributes for a contact that occurred prior
%% to the release of the API, a 400 error is returned. This applies also to
%% queued callbacks that were initiated prior to the release of the API but
%% are still active in your instance.
update_contact_attributes(Client, Input) ->
    update_contact_attributes(Client, Input, []).
update_contact_attributes(Client, Input0, Options) ->
    Method = post,
    Path = ["/contact/attributes"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified contact flow.
%%
%% You can also create and update contact flows using the Amazon Connect Flow
%% language.
update_contact_flow_content(Client, ContactFlowId, InstanceId, Input) ->
    update_contact_flow_content(Client, ContactFlowId, InstanceId, Input, []).
update_contact_flow_content(Client, ContactFlowId, InstanceId, Input0, Options) ->
    Method = post,
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowId), "/content"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc The name of the contact flow.
update_contact_flow_name(Client, ContactFlowId, InstanceId, Input) ->
    update_contact_flow_name(Client, ContactFlowId, InstanceId, Input, []).
update_contact_flow_name(Client, ContactFlowId, InstanceId, Input0, Options) ->
    Method = post,
    Path = ["/contact-flows/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(ContactFlowId), "/name"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the channels that agents can handle in the Contact Control
%% Panel (CCP) for a routing profile.
update_routing_profile_concurrency(Client, InstanceId, RoutingProfileId, Input) ->
    update_routing_profile_concurrency(Client, InstanceId, RoutingProfileId, Input, []).
update_routing_profile_concurrency(Client, InstanceId, RoutingProfileId, Input0, Options) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/concurrency"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the default outbound queue of a routing profile.
update_routing_profile_default_outbound_queue(Client, InstanceId, RoutingProfileId, Input) ->
    update_routing_profile_default_outbound_queue(Client, InstanceId, RoutingProfileId, Input, []).
update_routing_profile_default_outbound_queue(Client, InstanceId, RoutingProfileId, Input0, Options) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/default-outbound-queue"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the name and description of a routing profile.
%%
%% The request accepts the following data in JSON format. At least `Name' or
%% `Description' must be provided.
update_routing_profile_name(Client, InstanceId, RoutingProfileId, Input) ->
    update_routing_profile_name(Client, InstanceId, RoutingProfileId, Input, []).
update_routing_profile_name(Client, InstanceId, RoutingProfileId, Input0, Options) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/name"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the properties associated with a set of queues for a routing
%% profile.
update_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input) ->
    update_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input, []).
update_routing_profile_queues(Client, InstanceId, RoutingProfileId, Input0, Options) ->
    Method = post,
    Path = ["/routing-profiles/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(RoutingProfileId), "/queues"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Assigns the specified hierarchy group to the specified user.
update_user_hierarchy(Client, InstanceId, UserId, Input) ->
    update_user_hierarchy(Client, InstanceId, UserId, Input, []).
update_user_hierarchy(Client, InstanceId, UserId, Input0, Options) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/hierarchy"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the identity information for the specified user.
%%
%% Someone with the ability to invoke `UpdateUserIndentityInfo' can change
%% the login credentials of other users by changing their email address. This
%% poses a security risk to your organization. They can change the email
%% address of a user to the attacker's email address, and then reset the
%% password through email. We strongly recommend limiting who has the ability
%% to invoke `UpdateUserIndentityInfo'. For more information, see Best
%% Practices for Security Profiles in the Amazon Connect Administrator Guide.
update_user_identity_info(Client, InstanceId, UserId, Input) ->
    update_user_identity_info(Client, InstanceId, UserId, Input, []).
update_user_identity_info(Client, InstanceId, UserId, Input0, Options) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/identity-info"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the phone configuration settings for the specified user.
update_user_phone_config(Client, InstanceId, UserId, Input) ->
    update_user_phone_config(Client, InstanceId, UserId, Input, []).
update_user_phone_config(Client, InstanceId, UserId, Input0, Options) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/phone-config"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Assigns the specified routing profile to the specified user.
update_user_routing_profile(Client, InstanceId, UserId, Input) ->
    update_user_routing_profile(Client, InstanceId, UserId, Input, []).
update_user_routing_profile(Client, InstanceId, UserId, Input0, Options) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/routing-profile"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Assigns the specified security profiles to the specified user.
update_user_security_profiles(Client, InstanceId, UserId, Input) ->
    update_user_security_profiles(Client, InstanceId, UserId, Input, []).
update_user_security_profiles(Client, InstanceId, UserId, Input0, Options) ->
    Method = post,
    Path = ["/users/", aws_util:encode_uri(InstanceId), "/", aws_util:encode_uri(UserId), "/security-profiles"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"connect">>},
    Host = build_host(<<"connect">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
