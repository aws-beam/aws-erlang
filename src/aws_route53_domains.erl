%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.


-module(aws_route53_domains).

-export([check_domain_availability/2,
         check_domain_availability/3,
         delete_tags_for_domain/2,
         delete_tags_for_domain/3,
         disable_domain_auto_renew/2,
         disable_domain_auto_renew/3,
         disable_domain_transfer_lock/2,
         disable_domain_transfer_lock/3,
         enable_domain_auto_renew/2,
         enable_domain_auto_renew/3,
         enable_domain_transfer_lock/2,
         enable_domain_transfer_lock/3,
         get_domain_detail/2,
         get_domain_detail/3,
         get_operation_detail/2,
         get_operation_detail/3,
         list_domains/2,
         list_domains/3,
         list_operations/2,
         list_operations/3,
         list_tags_for_domain/2,
         list_tags_for_domain/3,
         register_domain/2,
         register_domain/3,
         retrieve_domain_auth_code/2,
         retrieve_domain_auth_code/3,
         transfer_domain/2,
         transfer_domain/3,
         update_domain_contact/2,
         update_domain_contact/3,
         update_domain_contact_privacy/2,
         update_domain_contact_privacy/3,
         update_domain_nameservers/2,
         update_domain_nameservers/3,
         update_tags_for_domain/2,
         update_tags_for_domain/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc This operation checks the availability of one domain name. You can
%% access this API without authenticating. Note that if the availability
%% status of a domain is pending, you must submit another request to
%% determine the availability of the domain name.
check_domain_availability(Client, Input)
  when is_map(Client), is_map(Input) ->
    check_domain_availability(Client, Input, []).
check_domain_availability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CheckDomainAvailability">>, Input, Options).

%% @doc This operation deletes the specified tags for a domain.
%%
%% All tag operations are eventually consistent; subsequent operations may
%% not immediately represent all issued operations.
delete_tags_for_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tags_for_domain(Client, Input, []).
delete_tags_for_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTagsForDomain">>, Input, Options).

%% @doc This operation disables automatic renewal of domain registration for
%% the specified domain.
%%
%% <note>Caution! Amazon Route 53 doesn't have a manual renewal process, so
%% if you disable automatic renewal, registration for the domain will not be
%% renewed when the expiration date passes, and you will lose control of the
%% domain name.</note>
disable_domain_auto_renew(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_domain_auto_renew(Client, Input, []).
disable_domain_auto_renew(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableDomainAutoRenew">>, Input, Options).

%% @doc This operation removes the transfer lock on the domain (specifically
%% the <code>clientTransferProhibited</code> status) to allow domain
%% transfers. We recommend you refrain from performing this action unless you
%% intend to transfer the domain to a different registrar. Successful
%% submission returns an operation ID that you can use to track the progress
%% and completion of the action. If the request is not completed
%% successfully, the domain registrant will be notified by email.
disable_domain_transfer_lock(Client, Input)
  when is_map(Client), is_map(Input) ->
    disable_domain_transfer_lock(Client, Input, []).
disable_domain_transfer_lock(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisableDomainTransferLock">>, Input, Options).

%% @doc This operation configures Amazon Route 53 to automatically renew the
%% specified domain before the domain registration expires. The cost of
%% renewing your domain registration is billed to your AWS account.
%%
%% The period during which you can renew a domain name varies by TLD. For a
%% list of TLDs and their renewal policies, see <a
%% href="http://wiki.gandi.net/en/domains/renew#renewal_restoration_and_deletion_times">"Renewal,
%% restoration, and deletion times"</a> on the website for our registrar
%% partner, Gandi. Route 53 requires that you renew before the end of the
%% renewal period that is listed on the Gandi website so we can complete
%% processing before the deadline.
enable_domain_auto_renew(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_domain_auto_renew(Client, Input, []).
enable_domain_auto_renew(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableDomainAutoRenew">>, Input, Options).

%% @doc This operation sets the transfer lock on the domain (specifically the
%% <code>clientTransferProhibited</code> status) to prevent domain transfers.
%% Successful submission returns an operation ID that you can use to track
%% the progress and completion of the action. If the request is not completed
%% successfully, the domain registrant will be notified by email.
enable_domain_transfer_lock(Client, Input)
  when is_map(Client), is_map(Input) ->
    enable_domain_transfer_lock(Client, Input, []).
enable_domain_transfer_lock(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"EnableDomainTransferLock">>, Input, Options).

%% @doc This operation returns detailed information about the domain. The
%% domain's contact information is also returned as part of the output.
get_domain_detail(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_domain_detail(Client, Input, []).
get_domain_detail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDomainDetail">>, Input, Options).

%% @doc This operation returns the current status of an operation that is not
%% completed.
get_operation_detail(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_operation_detail(Client, Input, []).
get_operation_detail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetOperationDetail">>, Input, Options).

%% @doc This operation returns all the domain names registered with Amazon
%% Route 53 for the current AWS account.
list_domains(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_domains(Client, Input, []).
list_domains(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDomains">>, Input, Options).

%% @doc This operation returns the operation IDs of operations that are not
%% yet complete.
list_operations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_operations(Client, Input, []).
list_operations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOperations">>, Input, Options).

%% @doc This operation returns all of the tags that are associated with the
%% specified domain.
%%
%% All tag operations are eventually consistent; subsequent operations may
%% not immediately represent all issued operations.
list_tags_for_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_domain(Client, Input, []).
list_tags_for_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForDomain">>, Input, Options).

%% @doc This operation registers a domain. Domains are registered by the AWS
%% registrar partner, Gandi. For some top-level domains (TLDs), this
%% operation requires extra parameters.
%%
%% When you register a domain, Amazon Route 53 does the following:
%%
%% <ul> <li>Creates a Amazon Route 53 hosted zone that has the same name as
%% the domain. Amazon Route 53 assigns four name servers to your hosted zone
%% and automatically updates your domain registration with the names of these
%% name servers.</li> <li>Enables autorenew, so your domain registration will
%% renew automatically each year. We'll notify you in advance of the renewal
%% date so you can choose whether to renew the registration.</li>
%% <li>Optionally enables privacy protection, so WHOIS queries return contact
%% information for our registrar partner, Gandi, instead of the information
%% you entered for registrant, admin, and tech contacts.</li> <li>If
%% registration is successful, returns an operation ID that you can use to
%% track the progress and completion of the action. If the request is not
%% completed successfully, the domain registrant is notified by email.</li>
%% <li>Charges your AWS account an amount based on the top-level domain. For
%% more information, see <a
%% href="http://aws.amazon.com/route53/pricing/">Amazon Route 53
%% Pricing</a>.</li> </ul>
register_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_domain(Client, Input, []).
register_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterDomain">>, Input, Options).

%% @doc This operation returns the AuthCode for the domain. To transfer a
%% domain to another registrar, you provide this value to the new registrar.
retrieve_domain_auth_code(Client, Input)
  when is_map(Client), is_map(Input) ->
    retrieve_domain_auth_code(Client, Input, []).
retrieve_domain_auth_code(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RetrieveDomainAuthCode">>, Input, Options).

%% @doc This operation transfers a domain from another registrar to Amazon
%% Route 53. When the transfer is complete, the domain is registered with the
%% AWS registrar partner, Gandi.
%%
%% For transfer requirements, a detailed procedure, and information about
%% viewing the status of a domain transfer, see <a
%% href="http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html">Transferring
%% Registration for a Domain to Amazon Route 53</a> in the Amazon Route 53
%% Developer Guide.
%%
%% If the registrar for your domain is also the DNS service provider for the
%% domain, we highly recommend that you consider transferring your DNS
%% service to Amazon Route 53 or to another DNS service provider before you
%% transfer your registration. Some registrars provide free DNS service when
%% you purchase a domain registration. When you transfer the registration,
%% the previous registrar will not renew your domain registration and could
%% end your DNS service at any time.
%%
%% <note>Caution! If the registrar for your domain is also the DNS service
%% provider for the domain and you don't transfer DNS service to another
%% provider, your website, email, and the web applications associated with
%% the domain might become unavailable.</note> If the transfer is successful,
%% this method returns an operation ID that you can use to track the progress
%% and completion of the action. If the transfer doesn't complete
%% successfully, the domain registrant will be notified by email.
transfer_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    transfer_domain(Client, Input, []).
transfer_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TransferDomain">>, Input, Options).

%% @doc This operation updates the contact information for a particular
%% domain. Information for at least one contact (registrant, administrator,
%% or technical) must be supplied for update.
%%
%% If the update is successful, this method returns an operation ID that you
%% can use to track the progress and completion of the action. If the request
%% is not completed successfully, the domain registrant will be notified by
%% email.
update_domain_contact(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_domain_contact(Client, Input, []).
update_domain_contact(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDomainContact">>, Input, Options).

%% @doc This operation updates the specified domain contact's privacy
%% setting. When the privacy option is enabled, personal information such as
%% postal or email address is hidden from the results of a public WHOIS
%% query. The privacy services are provided by the AWS registrar, Gandi. For
%% more information, see the <a
%% href="http://www.gandi.net/domain/whois/?currency=USD&amp;amp;lang=en">Gandi
%% privacy features</a>.
%%
%% This operation only affects the privacy of the specified contact type
%% (registrant, administrator, or tech). Successful acceptance returns an
%% operation ID that you can use with GetOperationDetail to track the
%% progress and completion of the action. If the request is not completed
%% successfully, the domain registrant will be notified by email.
update_domain_contact_privacy(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_domain_contact_privacy(Client, Input, []).
update_domain_contact_privacy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDomainContactPrivacy">>, Input, Options).

%% @doc This operation replaces the current set of name servers for the
%% domain with the specified set of name servers. If you use Amazon Route 53
%% as your DNS service, specify the four name servers in the delegation set
%% for the hosted zone for the domain.
%%
%% If successful, this operation returns an operation ID that you can use to
%% track the progress and completion of the action. If the request is not
%% completed successfully, the domain registrant will be notified by email.
update_domain_nameservers(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_domain_nameservers(Client, Input, []).
update_domain_nameservers(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateDomainNameservers">>, Input, Options).

%% @doc This operation adds or updates tags for a specified domain.
%%
%% All tag operations are eventually consistent; subsequent operations may
%% not immediately represent all issued operations.
update_tags_for_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_tags_for_domain(Client, Input, []).
update_tags_for_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTagsForDomain">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"route53domains">>},
    Host = aws_util:binary_join([<<"route53domains.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"Route53Domains_v20140515.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    #{<<"__type">> := Exception,
      <<"message">> := Reason} = jsx:decode(Body, [return_maps]),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.
