%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Systems Manager Incident Manager is an incident management console
%% designed to help users mitigate and recover from incidents affecting their
%% Amazon Web Services-hosted applications.
%%
%% An incident is any unplanned interruption or reduction in quality of
%% services.
%%
%% Incident Manager increases incident resolution by notifying responders of
%% impact, highlighting relevant troubleshooting data, and providing
%% collaboration tools to get services back up and running. To achieve the
%% primary goal of reducing the time-to-resolution of critical incidents,
%% Incident Manager automates response plans and enables responder team
%% escalation.
-module(aws_ssm_contacts).

-export([accept_page/2,
         accept_page/3,
         activate_contact_channel/2,
         activate_contact_channel/3,
         create_contact/2,
         create_contact/3,
         create_contact_channel/2,
         create_contact_channel/3,
         deactivate_contact_channel/2,
         deactivate_contact_channel/3,
         delete_contact/2,
         delete_contact/3,
         delete_contact_channel/2,
         delete_contact_channel/3,
         describe_engagement/2,
         describe_engagement/3,
         describe_page/2,
         describe_page/3,
         get_contact/2,
         get_contact/3,
         get_contact_channel/2,
         get_contact_channel/3,
         get_contact_policy/2,
         get_contact_policy/3,
         list_contact_channels/2,
         list_contact_channels/3,
         list_contacts/2,
         list_contacts/3,
         list_engagements/2,
         list_engagements/3,
         list_page_receipts/2,
         list_page_receipts/3,
         list_pages_by_contact/2,
         list_pages_by_contact/3,
         list_pages_by_engagement/2,
         list_pages_by_engagement/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_contact_policy/2,
         put_contact_policy/3,
         send_activation_code/2,
         send_activation_code/3,
         start_engagement/2,
         start_engagement/3,
         stop_engagement/2,
         stop_engagement/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_contact/2,
         update_contact/3,
         update_contact_channel/2,
         update_contact_channel/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Used to acknowledge an engagement to a contact channel during an
%% incident.
accept_page(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_page(Client, Input, []).
accept_page(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptPage">>, Input, Options).

%% @doc Activates a contact's contact channel.
%%
%% Incident Manager can't engage a contact until the contact channel has been
%% activated.
activate_contact_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    activate_contact_channel(Client, Input, []).
activate_contact_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ActivateContactChannel">>, Input, Options).

%% @doc Contacts are either the contacts that Incident Manager engages during
%% an incident or the escalation plans that Incident Manager uses to engage
%% contacts in phases during an incident.
create_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_contact(Client, Input, []).
create_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateContact">>, Input, Options).

%% @doc A contact channel is the method that Incident Manager uses to engage
%% your contact.
create_contact_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_contact_channel(Client, Input, []).
create_contact_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateContactChannel">>, Input, Options).

%% @doc To no longer receive Incident Manager engagements to a contact
%% channel, you can deactivate the channel.
deactivate_contact_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    deactivate_contact_channel(Client, Input, []).
deactivate_contact_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeactivateContactChannel">>, Input, Options).

%% @doc To remove a contact from Incident Manager, you can delete the
%% contact.
%%
%% Deleting a contact removes them from all escalation plans and related
%% response plans. Deleting an escalation plan removes it from all related
%% response plans. You will have to recreate the contact and its contact
%% channels before you can use it again.
delete_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_contact(Client, Input, []).
delete_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteContact">>, Input, Options).

%% @doc To no longer receive engagements on a contact channel, you can delete
%% the channel from a contact.
%%
%% Deleting the contact channel removes it from the contact's engagement
%% plan. If you delete the only contact channel for a contact, you won't be
%% able to engage that contact during an incident.
delete_contact_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_contact_channel(Client, Input, []).
delete_contact_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteContactChannel">>, Input, Options).

%% @doc Incident Manager uses engagements to engage contacts and escalation
%% plans during an incident.
%%
%% Use this command to describe the engagement that occurred during an
%% incident.
describe_engagement(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_engagement(Client, Input, []).
describe_engagement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeEngagement">>, Input, Options).

%% @doc Lists details of the engagement to a contact channel.
describe_page(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_page(Client, Input, []).
describe_page(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribePage">>, Input, Options).

%% @doc Retrieves information about the specified contact or escalation plan.
get_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_contact(Client, Input, []).
get_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContact">>, Input, Options).

%% @doc List details about a specific contact channel.
get_contact_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_contact_channel(Client, Input, []).
get_contact_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContactChannel">>, Input, Options).

%% @doc Retrieves the resource policies attached to the specified contact or
%% escalation plan.
get_contact_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_contact_policy(Client, Input, []).
get_contact_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContactPolicy">>, Input, Options).

%% @doc Lists all contact channels for the specified contact.
list_contact_channels(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_contact_channels(Client, Input, []).
list_contact_channels(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListContactChannels">>, Input, Options).

%% @doc Lists all contacts and escalation plans in Incident Manager.
list_contacts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_contacts(Client, Input, []).
list_contacts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListContacts">>, Input, Options).

%% @doc Lists all engagements that have happened in an incident.
list_engagements(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_engagements(Client, Input, []).
list_engagements(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListEngagements">>, Input, Options).

%% @doc Lists all of the engagements to contact channels that have been
%% acknowledged.
list_page_receipts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_page_receipts(Client, Input, []).
list_page_receipts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPageReceipts">>, Input, Options).

%% @doc Lists the engagements to a contact's contact channels.
list_pages_by_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pages_by_contact(Client, Input, []).
list_pages_by_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPagesByContact">>, Input, Options).

%% @doc Lists the engagements to contact channels that occurred by engaging a
%% contact.
list_pages_by_engagement(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_pages_by_engagement(Client, Input, []).
list_pages_by_engagement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPagesByEngagement">>, Input, Options).

%% @doc Lists the tags of an escalation plan or contact.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Adds a resource to the specified contact or escalation plan.
put_contact_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_contact_policy(Client, Input, []).
put_contact_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutContactPolicy">>, Input, Options).

%% @doc Sends an activation code to a contact channel.
%%
%% The contact can use this code to activate the contact channel in the
%% console or with the `ActivateChannel' operation. Incident Manager can't
%% engage a contact channel until it has been activated.
send_activation_code(Client, Input)
  when is_map(Client), is_map(Input) ->
    send_activation_code(Client, Input, []).
send_activation_code(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SendActivationCode">>, Input, Options).

%% @doc Starts an engagement to a contact or escalation plan.
%%
%% The engagement engages each contact specified in the incident.
start_engagement(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_engagement(Client, Input, []).
start_engagement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartEngagement">>, Input, Options).

%% @doc Stops an engagement before it finishes the final stage of the
%% escalation plan or engagement plan.
%%
%% Further contacts aren't engaged.
stop_engagement(Client, Input)
  when is_map(Client), is_map(Input) ->
    stop_engagement(Client, Input, []).
stop_engagement(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StopEngagement">>, Input, Options).

%% @doc Tags a contact or escalation plan.
%%
%% You can tag only contacts and escalation plans in the first region of your
%% replication set.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes tags from the specified resource.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

%% @doc Updates the contact or escalation plan specified.
update_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_contact(Client, Input, []).
update_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateContact">>, Input, Options).

%% @doc Updates a contact's contact channel.
update_contact_channel(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_contact_channel(Client, Input, []).
update_contact_channel(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateContactChannel">>, Input, Options).

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
    Client1 = Client#{service => <<"ssm-contacts">>},
    Host = build_host(<<"ssm-contacts">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"SSMContacts.", Action/binary>>}
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
