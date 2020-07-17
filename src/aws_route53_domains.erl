%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Route 53 API actions let you register domain names and perform
%% related operations.
-module(aws_route53_domains).

-export([accept_domain_transfer_from_another_aws_account/2,
         accept_domain_transfer_from_another_aws_account/3,
         cancel_domain_transfer_to_another_aws_account/2,
         cancel_domain_transfer_to_another_aws_account/3,
         check_domain_availability/2,
         check_domain_availability/3,
         check_domain_transferability/2,
         check_domain_transferability/3,
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
         get_contact_reachability_status/2,
         get_contact_reachability_status/3,
         get_domain_detail/2,
         get_domain_detail/3,
         get_domain_suggestions/2,
         get_domain_suggestions/3,
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
         reject_domain_transfer_from_another_aws_account/2,
         reject_domain_transfer_from_another_aws_account/3,
         renew_domain/2,
         renew_domain/3,
         resend_contact_reachability_email/2,
         resend_contact_reachability_email/3,
         retrieve_domain_auth_code/2,
         retrieve_domain_auth_code/3,
         transfer_domain/2,
         transfer_domain/3,
         transfer_domain_to_another_aws_account/2,
         transfer_domain_to_another_aws_account/3,
         update_domain_contact/2,
         update_domain_contact/3,
         update_domain_contact_privacy/2,
         update_domain_contact_privacy/3,
         update_domain_nameservers/2,
         update_domain_nameservers/3,
         update_tags_for_domain/2,
         update_tags_for_domain/3,
         view_billing/2,
         view_billing/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Accepts the transfer of a domain from another AWS account to the
%% current AWS account. You initiate a transfer between AWS accounts using <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a>.
%%
%% Use either <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html">ListOperations</a>
%% or <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>
%% to determine whether the operation succeeded. <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>
%% provides additional information, for example, <code>Domain Transfer from
%% Aws Account 111122223333 has been cancelled</code>.
accept_domain_transfer_from_another_aws_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    accept_domain_transfer_from_another_aws_account(Client, Input, []).
accept_domain_transfer_from_another_aws_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AcceptDomainTransferFromAnotherAwsAccount">>, Input, Options).

%% @doc Cancels the transfer of a domain from the current AWS account to
%% another AWS account. You initiate a transfer between AWS accounts using <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a>.
%%
%% <important> You must cancel the transfer before the other AWS account
%% accepts the transfer using <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html">AcceptDomainTransferFromAnotherAwsAccount</a>.
%%
%% </important> Use either <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html">ListOperations</a>
%% or <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>
%% to determine whether the operation succeeded. <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>
%% provides additional information, for example, <code>Domain Transfer from
%% Aws Account 111122223333 has been cancelled</code>.
cancel_domain_transfer_to_another_aws_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    cancel_domain_transfer_to_another_aws_account(Client, Input, []).
cancel_domain_transfer_to_another_aws_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CancelDomainTransferToAnotherAwsAccount">>, Input, Options).

%% @doc This operation checks the availability of one domain name. Note that
%% if the availability status of a domain is pending, you must submit another
%% request to determine the availability of the domain name.
check_domain_availability(Client, Input)
  when is_map(Client), is_map(Input) ->
    check_domain_availability(Client, Input, []).
check_domain_availability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CheckDomainAvailability">>, Input, Options).

%% @doc Checks whether a domain name can be transferred to Amazon Route 53.
check_domain_transferability(Client, Input)
  when is_map(Client), is_map(Input) ->
    check_domain_transferability(Client, Input, []).
check_domain_transferability(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CheckDomainTransferability">>, Input, Options).

%% @doc This operation deletes the specified tags for a domain.
%%
%% All tag operations are eventually consistent; subsequent operations might
%% not immediately represent all issued operations.
delete_tags_for_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_tags_for_domain(Client, Input, []).
delete_tags_for_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteTagsForDomain">>, Input, Options).

%% @doc This operation disables automatic renewal of domain registration for
%% the specified domain.
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
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html">Domains
%% That You Can Register with Amazon Route 53</a> in the <i>Amazon Route 53
%% Developer Guide</i>. Route 53 requires that you renew before the end of
%% the renewal period so we can complete processing before the deadline.
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

%% @doc For operations that require confirmation that the email address for
%% the registrant contact is valid, such as registering a new domain, this
%% operation returns information about whether the registrant contact has
%% responded.
%%
%% If you want us to resend the email, use the
%% <code>ResendContactReachabilityEmail</code> operation.
get_contact_reachability_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_contact_reachability_status(Client, Input, []).
get_contact_reachability_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetContactReachabilityStatus">>, Input, Options).

%% @doc This operation returns detailed information about a specified domain
%% that is associated with the current AWS account. Contact information for
%% the domain is also returned as part of the output.
get_domain_detail(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_domain_detail(Client, Input, []).
get_domain_detail(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDomainDetail">>, Input, Options).

%% @doc The GetDomainSuggestions operation returns a list of suggested domain
%% names.
get_domain_suggestions(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_domain_suggestions(Client, Input, []).
get_domain_suggestions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetDomainSuggestions">>, Input, Options).

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

%% @doc Returns information about all of the operations that return an
%% operation ID and that have ever been performed on domains that were
%% registered by the current account.
list_operations(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_operations(Client, Input, []).
list_operations(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListOperations">>, Input, Options).

%% @doc This operation returns all of the tags that are associated with the
%% specified domain.
%%
%% All tag operations are eventually consistent; subsequent operations might
%% not immediately represent all issued operations.
list_tags_for_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_domain(Client, Input, []).
list_tags_for_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForDomain">>, Input, Options).

%% @doc This operation registers a domain. Domains are registered either by
%% Amazon Registrar (for .com, .net, and .org domains) or by our registrar
%% associate, Gandi (for all other domains). For some top-level domains
%% (TLDs), this operation requires extra parameters.
%%
%% When you register a domain, Amazon Route 53 does the following:
%%
%% <ul> <li> Creates a Route 53 hosted zone that has the same name as the
%% domain. Route 53 assigns four name servers to your hosted zone and
%% automatically updates your domain registration with the names of these
%% name servers.
%%
%% </li> <li> Enables autorenew, so your domain registration will renew
%% automatically each year. We'll notify you in advance of the renewal date
%% so you can choose whether to renew the registration.
%%
%% </li> <li> Optionally enables privacy protection, so WHOIS queries return
%% contact information either for Amazon Registrar (for .com, .net, and .org
%% domains) or for our registrar associate, Gandi (for all other TLDs). If
%% you don't enable privacy protection, WHOIS queries return the information
%% that you entered for the registrant, admin, and tech contacts.
%%
%% </li> <li> If registration is successful, returns an operation ID that you
%% can use to track the progress and completion of the action. If the request
%% is not completed successfully, the domain registrant is notified by email.
%%
%% </li> <li> Charges your AWS account an amount based on the top-level
%% domain. For more information, see <a
%% href="http://aws.amazon.com/route53/pricing/">Amazon Route 53 Pricing</a>.
%%
%% </li> </ul>
register_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    register_domain(Client, Input, []).
register_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RegisterDomain">>, Input, Options).

%% @doc Rejects the transfer of a domain from another AWS account to the
%% current AWS account. You initiate a transfer between AWS accounts using <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a>.
%%
%% Use either <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html">ListOperations</a>
%% or <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>
%% to determine whether the operation succeeded. <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>
%% provides additional information, for example, <code>Domain Transfer from
%% Aws Account 111122223333 has been cancelled</code>.
reject_domain_transfer_from_another_aws_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    reject_domain_transfer_from_another_aws_account(Client, Input, []).
reject_domain_transfer_from_another_aws_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RejectDomainTransferFromAnotherAwsAccount">>, Input, Options).

%% @doc This operation renews a domain for the specified number of years. The
%% cost of renewing your domain is billed to your AWS account.
%%
%% We recommend that you renew your domain several weeks before the
%% expiration date. Some TLD registries delete domains before the expiration
%% date if you haven't renewed far enough in advance. For more information
%% about renewing domain registration, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-renew.html">Renewing
%% Registration for a Domain</a> in the <i>Amazon Route 53 Developer
%% Guide</i>.
renew_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    renew_domain(Client, Input, []).
renew_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RenewDomain">>, Input, Options).

%% @doc For operations that require confirmation that the email address for
%% the registrant contact is valid, such as registering a new domain, this
%% operation resends the confirmation email to the current email address for
%% the registrant contact.
resend_contact_reachability_email(Client, Input)
  when is_map(Client), is_map(Input) ->
    resend_contact_reachability_email(Client, Input, []).
resend_contact_reachability_email(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResendContactReachabilityEmail">>, Input, Options).

%% @doc This operation returns the AuthCode for the domain. To transfer a
%% domain to another registrar, you provide this value to the new registrar.
retrieve_domain_auth_code(Client, Input)
  when is_map(Client), is_map(Input) ->
    retrieve_domain_auth_code(Client, Input, []).
retrieve_domain_auth_code(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RetrieveDomainAuthCode">>, Input, Options).

%% @doc Transfers a domain from another registrar to Amazon Route 53. When
%% the transfer is complete, the domain is registered either with Amazon
%% Registrar (for .com, .net, and .org domains) or with our registrar
%% associate, Gandi (for all other TLDs).
%%
%% For more information about transferring domains, see the following topics:
%%
%% <ul> <li> For transfer requirements, a detailed procedure, and information
%% about viewing the status of a domain that you're transferring to Route 53,
%% see <a
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-to-route-53.html">Transferring
%% Registration for a Domain to Amazon Route 53</a> in the <i>Amazon Route 53
%% Developer Guide</i>.
%%
%% </li> <li> For information about how to transfer a domain from one AWS
%% account to another, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_TransferDomainToAnotherAwsAccount.html">TransferDomainToAnotherAwsAccount</a>.
%%
%% </li> <li> For information about how to transfer a domain to another
%% domain registrar, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-transfer-from-route-53.html">Transferring
%% a Domain from Amazon Route 53 to Another Registrar</a> in the <i>Amazon
%% Route 53 Developer Guide</i>.
%%
%% </li> </ul> If the registrar for your domain is also the DNS service
%% provider for the domain, we highly recommend that you transfer your DNS
%% service to Route 53 or to another DNS service provider before you transfer
%% your registration. Some registrars provide free DNS service when you
%% purchase a domain registration. When you transfer the registration, the
%% previous registrar will not renew your domain registration and could end
%% your DNS service at any time.
%%
%% <important> If the registrar for your domain is also the DNS service
%% provider for the domain and you don't transfer DNS service to another
%% provider, your website, email, and the web applications associated with
%% the domain might become unavailable.
%%
%% </important> If the transfer is successful, this method returns an
%% operation ID that you can use to track the progress and completion of the
%% action. If the transfer doesn't complete successfully, the domain
%% registrant will be notified by email.
transfer_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    transfer_domain(Client, Input, []).
transfer_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TransferDomain">>, Input, Options).

%% @doc Transfers a domain from the current AWS account to another AWS
%% account. Note the following:
%%
%% <ul> <li> The AWS account that you're transferring the domain to must
%% accept the transfer. If the other account doesn't accept the transfer
%% within 3 days, we cancel the transfer. See <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_AcceptDomainTransferFromAnotherAwsAccount.html">AcceptDomainTransferFromAnotherAwsAccount</a>.
%%
%% </li> <li> You can cancel the transfer before the other account accepts
%% it. See <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_CancelDomainTransferToAnotherAwsAccount.html">CancelDomainTransferToAnotherAwsAccount</a>.
%%
%% </li> <li> The other account can reject the transfer. See <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_RejectDomainTransferFromAnotherAwsAccount.html">RejectDomainTransferFromAnotherAwsAccount</a>.
%%
%% </li> </ul> <important> When you transfer a domain from one AWS account to
%% another, Route 53 doesn't transfer the hosted zone that is associated with
%% the domain. DNS resolution isn't affected if the domain and the hosted
%% zone are owned by separate accounts, so transferring the hosted zone is
%% optional. For information about transferring the hosted zone to another
%% AWS account, see <a
%% href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/hosted-zones-migrating.html">Migrating
%% a Hosted Zone to a Different AWS Account</a> in the <i>Amazon Route 53
%% Developer Guide</i>.
%%
%% </important> Use either <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_ListOperations.html">ListOperations</a>
%% or <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>
%% to determine whether the operation succeeded. <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>
%% provides additional information, for example, <code>Domain Transfer from
%% Aws Account 111122223333 has been cancelled</code>.
transfer_domain_to_another_aws_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    transfer_domain_to_another_aws_account(Client, Input, []).
transfer_domain_to_another_aws_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TransferDomainToAnotherAwsAccount">>, Input, Options).

%% @doc This operation updates the contact information for a particular
%% domain. You must specify information for at least one contact: registrant,
%% administrator, or technical.
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
%% setting. When privacy protection is enabled, contact information such as
%% email address is replaced either with contact information for Amazon
%% Registrar (for .com, .net, and .org domains) or with contact information
%% for our registrar associate, Gandi.
%%
%% This operation affects only the contact information for the specified
%% contact type (registrant, administrator, or tech). If the request
%% succeeds, Amazon Route 53 returns an operation ID that you can use with <a
%% href="https://docs.aws.amazon.com/Route53/latest/APIReference/API_domains_GetOperationDetail.html">GetOperationDetail</a>
%% to track the progress and completion of the action. If the request doesn't
%% complete successfully, the domain registrant will be notified by email.
%%
%% <important> By disabling the privacy service via API, you consent to the
%% publication of the contact information provided for this domain via the
%% public WHOIS database. You certify that you are the registrant of this
%% domain name and have the authority to make this decision. You may withdraw
%% your consent at any time by enabling privacy protection using either
%% <code>UpdateDomainContactPrivacy</code> or the Route 53 console. Enabling
%% privacy protection removes the contact information provided for this
%% domain from the WHOIS database. For more information on our privacy
%% practices, see <a
%% href="https://aws.amazon.com/privacy/">https://aws.amazon.com/privacy/</a>.
%%
%% </important>
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
%% All tag operations are eventually consistent; subsequent operations might
%% not immediately represent all issued operations.
update_tags_for_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_tags_for_domain(Client, Input, []).
update_tags_for_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateTagsForDomain">>, Input, Options).

%% @doc Returns all the domain-related billing records for the current AWS
%% account for a specified period
view_billing(Client, Input)
  when is_map(Client), is_map(Input) ->
    view_billing(Client, Input, []).
view_billing(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ViewBilling">>, Input, Options).

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
    Host = get_host(<<"route53domains">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, << <<"Route53Domains_v20140515.">>/binary, Action/binary>>}
    ],
    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
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
    Error = jsx:decode(Body, [return_maps]),
    Exception = maps:get(<<"__type">>, Error, undefined),
    Reason = maps:get(<<"message">>, Error, undefined),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, <<".">>, Region, <<".">>, Endpoint], <<"">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
