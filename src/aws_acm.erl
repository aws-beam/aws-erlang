%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Certificate Manager
%%
%% You can use Amazon Web Services Certificate Manager (ACM) to manage
%% SSL/TLS certificates for your Amazon Web Services-based websites and
%% applications.
%%
%% For more information about using ACM, see the Amazon Web Services
%% Certificate Manager User Guide.
-module(aws_acm).

-export([add_tags_to_certificate/2,
         add_tags_to_certificate/3,
         delete_certificate/2,
         delete_certificate/3,
         describe_certificate/2,
         describe_certificate/3,
         export_certificate/2,
         export_certificate/3,
         get_account_configuration/2,
         get_account_configuration/3,
         get_certificate/2,
         get_certificate/3,
         import_certificate/2,
         import_certificate/3,
         list_certificates/2,
         list_certificates/3,
         list_tags_for_certificate/2,
         list_tags_for_certificate/3,
         put_account_configuration/2,
         put_account_configuration/3,
         remove_tags_from_certificate/2,
         remove_tags_from_certificate/3,
         renew_certificate/2,
         renew_certificate/3,
         request_certificate/2,
         request_certificate/3,
         resend_validation_email/2,
         resend_validation_email/3,
         update_certificate_options/2,
         update_certificate_options/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Adds one or more tags to an ACM certificate.
%%
%% Tags are labels that you can use to identify and organize your Amazon Web
%% Services resources. Each tag consists of a `key' and an optional `value'.
%% You specify the certificate on input by its Amazon Resource Name (ARN).
%% You specify the tag by using a key-value pair.
%%
%% You can apply a tag to just one certificate if you want to identify a
%% specific characteristic of that certificate, or you can apply the same tag
%% to multiple certificates if you want to filter for a common relationship
%% among those certificates. Similarly, you can apply the same tag to
%% multiple resources if you want to specify a relationship among those
%% resources. For example, you can add the same tag to an ACM certificate and
%% an Elastic Load Balancing load balancer to indicate that they are both
%% used by the same website. For more information, see Tagging ACM
%% certificates.
%%
%% To remove one or more tags, use the `RemoveTagsFromCertificate' action. To
%% view all of the tags that have been applied to the certificate, use the
%% `ListTagsForCertificate' action.
add_tags_to_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_certificate(Client, Input, []).
add_tags_to_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToCertificate">>, Input, Options).

%% @doc Deletes a certificate and its associated private key.
%%
%% If this action succeeds, the certificate no longer appears in the list
%% that can be displayed by calling the `ListCertificates' action or be
%% retrieved by calling the `GetCertificate' action. The certificate will not
%% be available for use by Amazon Web Services services integrated with ACM.
%%
%% You cannot delete an ACM certificate that is being used by another Amazon
%% Web Services service. To delete a certificate that is in use, the
%% certificate association must first be removed.
delete_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_certificate(Client, Input, []).
delete_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCertificate">>, Input, Options).

%% @doc Returns detailed metadata about the specified ACM certificate.
describe_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_certificate(Client, Input, []).
describe_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCertificate">>, Input, Options).

%% @doc Exports a private certificate issued by a private certificate
%% authority (CA) for use anywhere.
%%
%% The exported file contains the certificate, the certificate chain, and the
%% encrypted private 2048-bit RSA key associated with the public key that is
%% embedded in the certificate. For security, you must assign a passphrase
%% for the private key when exporting it.
%%
%% For information about exporting and formatting a certificate using the ACM
%% console or CLI, see Export a Private Certificate.
export_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    export_certificate(Client, Input, []).
export_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ExportCertificate">>, Input, Options).

%% @doc Returns the account configuration options associated with an Amazon
%% Web Services account.
get_account_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_account_configuration(Client, Input, []).
get_account_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccountConfiguration">>, Input, Options).

%% @doc Retrieves an Amazon-issued certificate and its certificate chain.
%%
%% The chain consists of the certificate of the issuing CA and the
%% intermediate certificates of any other subordinate CAs. All of the
%% certificates are base64 encoded. You can use OpenSSL to decode the
%% certificates and inspect individual fields.
get_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_certificate(Client, Input, []).
get_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCertificate">>, Input, Options).

%% @doc Imports a certificate into Amazon Web Services Certificate Manager
%% (ACM) to use with services that are integrated with ACM.
%%
%% Note that integrated services allow only certificate types and keys they
%% support to be associated with their resources. Further, their support
%% differs depending on whether the certificate is imported into IAM or into
%% ACM. For more information, see the documentation for each service. For
%% more information about importing certificates into ACM, see Importing
%% Certificates in the Amazon Web Services Certificate Manager User Guide.
%%
%% ACM does not provide managed renewal for certificates that you import.
%%
%% Note the following guidelines when importing third party certificates:
%%
%% <ul> <li> You must enter the private key that matches the certificate you
%% are importing.
%%
%% </li> <li> The private key must be unencrypted. You cannot import a
%% private key that is protected by a password or a passphrase.
%%
%% </li> <li> The private key must be no larger than 5 KB (5,120 bytes).
%%
%% </li> <li> If the certificate you are importing is not self-signed, you
%% must enter its certificate chain.
%%
%% </li> <li> If a certificate chain is included, the issuer must be the
%% subject of one of the certificates in the chain.
%%
%% </li> <li> The certificate, private key, and certificate chain must be
%% PEM-encoded.
%%
%% </li> <li> The current time must be between the `Not Before' and `Not
%% After' certificate fields.
%%
%% </li> <li> The `Issuer' field must not be empty.
%%
%% </li> <li> The OCSP authority URL, if present, must not exceed 1000
%% characters.
%%
%% </li> <li> To import a new certificate, omit the `CertificateArn'
%% argument. Include this argument only when you want to replace a previously
%% imported certificate.
%%
%% </li> <li> When you import a certificate by using the CLI, you must
%% specify the certificate, the certificate chain, and the private key by
%% their file names preceded by `fileb://'. For example, you can specify a
%% certificate saved in the `C:\temp' folder as
%% `fileb://C:\temp\certificate_to_import.pem'. If you are making an HTTP or
%% HTTPS Query request, include these arguments as BLOBs.
%%
%% </li> <li> When you import a certificate by using an SDK, you must specify
%% the certificate, the certificate chain, and the private key files in the
%% manner required by the programming language you're using.
%%
%% </li> <li> The cryptographic algorithm of an imported certificate must
%% match the algorithm of the signing CA. For example, if the signing CA key
%% type is RSA, then the certificate key type must also be RSA.
%%
%% </li> </ul> This operation returns the Amazon Resource Name (ARN) of the
%% imported certificate.
import_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_certificate(Client, Input, []).
import_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportCertificate">>, Input, Options).

%% @doc Retrieves a list of certificate ARNs and domain names.
%%
%% You can request that only certificates that match a specific status be
%% listed. You can also filter by specific attributes of the certificate.
%% Default filtering returns only `RSA_2048' certificates. For more
%% information, see `Filters'.
list_certificates(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_certificates(Client, Input, []).
list_certificates(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCertificates">>, Input, Options).

%% @doc Lists the tags that have been applied to the ACM certificate.
%%
%% Use the certificate's Amazon Resource Name (ARN) to specify the
%% certificate. To add a tag to an ACM certificate, use the
%% `AddTagsToCertificate' action. To delete a tag, use the
%% `RemoveTagsFromCertificate' action.
list_tags_for_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_certificate(Client, Input, []).
list_tags_for_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForCertificate">>, Input, Options).

%% @doc Adds or modifies account-level configurations in ACM.
%%
%% The supported configuration option is `DaysBeforeExpiry'. This option
%% specifies the number of days prior to certificate expiration when ACM
%% starts generating `EventBridge' events. ACM sends one event per day per
%% certificate until the certificate expires. By default, accounts receive
%% events starting 45 days before certificate expiration.
put_account_configuration(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_account_configuration(Client, Input, []).
put_account_configuration(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAccountConfiguration">>, Input, Options).

%% @doc Remove one or more tags from an ACM certificate.
%%
%% A tag consists of a key-value pair. If you do not specify the value
%% portion of the tag when calling this function, the tag will be removed
%% regardless of value. If you specify a value, the tag is removed only if it
%% is associated with the specified value.
%%
%% To add tags to a certificate, use the `AddTagsToCertificate' action. To
%% view all of the tags that have been applied to a specific ACM certificate,
%% use the `ListTagsForCertificate' action.
remove_tags_from_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_certificate(Client, Input, []).
remove_tags_from_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromCertificate">>, Input, Options).

%% @doc Renews an eligible ACM certificate.
%%
%% At this time, only exported private certificates can be renewed with this
%% operation. In order to renew your ACM PCA certificates with ACM, you must
%% first grant the ACM service principal permission to do so. For more
%% information, see Testing Managed Renewal in the ACM User Guide.
renew_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    renew_certificate(Client, Input, []).
renew_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RenewCertificate">>, Input, Options).

%% @doc Requests an ACM certificate for use with other Amazon Web Services
%% services.
%%
%% To request an ACM certificate, you must specify a fully qualified domain
%% name (FQDN) in the `DomainName' parameter. You can also specify additional
%% FQDNs in the `SubjectAlternativeNames' parameter.
%%
%% If you are requesting a private certificate, domain validation is not
%% required. If you are requesting a public certificate, each domain name
%% that you specify must be validated to verify that you own or control the
%% domain. You can use DNS validation or email validation. We recommend that
%% you use DNS validation. ACM issues public certificates after receiving
%% approval from the domain owner.
%%
%% ACM behavior differs from the
%% [https://tools.ietf.org/html/rfc6125#appendix-B.2]RFC 6125 specification
%% of the certificate validation process. first checks for a subject
%% alternative name, and, if it finds one, ignores the common name (CN)
request_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    request_certificate(Client, Input, []).
request_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RequestCertificate">>, Input, Options).

%% @doc Resends the email that requests domain ownership validation.
%%
%% The domain owner or an authorized representative must approve the ACM
%% certificate before it can be issued. The certificate can be approved by
%% clicking a link in the mail to navigate to the Amazon certificate approval
%% website and then clicking I Approve. However, the validation email can be
%% blocked by spam filters. Therefore, if you do not receive the original
%% mail, you can request that the mail be resent within 72 hours of
%% requesting the ACM certificate. If more than 72 hours have elapsed since
%% your original request or since your last attempt to resend validation
%% mail, you must request a new certificate. For more information about
%% setting up your contact email addresses, see Configure Email for your
%% Domain.
resend_validation_email(Client, Input)
  when is_map(Client), is_map(Input) ->
    resend_validation_email(Client, Input, []).
resend_validation_email(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ResendValidationEmail">>, Input, Options).

%% @doc Updates a certificate.
%%
%% Currently, you can use this function to specify whether to opt in to or
%% out of recording your certificate in a certificate transparency log. For
%% more information, see Opting Out of Certificate Transparency Logging.
update_certificate_options(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_certificate_options(Client, Input, []).
update_certificate_options(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCertificateOptions">>, Input, Options).

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
    Client1 = Client#{service => <<"acm">>},
    Host = build_host(<<"acm">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"CertificateManager.", Action/binary>>}
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
