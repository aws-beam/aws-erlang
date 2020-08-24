%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc This is the <i>ACM Private CA API Reference</i>. It provides
%% descriptions, syntax, and usage examples for each of the actions and data
%% types involved in creating and managing private certificate authorities
%% (CA) for your organization.
%%
%% The documentation for each action shows the Query API request parameters
%% and the XML response. Alternatively, you can use one of the AWS SDKs to
%% access an API that's tailored to the programming language or platform that
%% you're using. For more information, see <a
%% href="https://aws.amazon.com/tools/#SDKs">AWS SDKs</a>.
%%
%% <note> Each ACM Private CA API action has a throttling limit which
%% determines the number of times the action can be called per second. For
%% more information, see <a
%% href="https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaLimits.html#PcaLimits-api">API
%% Rate Limits in ACM Private CA</a> in the ACM Private CA user guide.
%%
%% </note>
-module(aws_acm_pca).

-export([create_certificate_authority/2,
         create_certificate_authority/3,
         create_certificate_authority_audit_report/2,
         create_certificate_authority_audit_report/3,
         create_permission/2,
         create_permission/3,
         delete_certificate_authority/2,
         delete_certificate_authority/3,
         delete_permission/2,
         delete_permission/3,
         describe_certificate_authority/2,
         describe_certificate_authority/3,
         describe_certificate_authority_audit_report/2,
         describe_certificate_authority_audit_report/3,
         get_certificate/2,
         get_certificate/3,
         get_certificate_authority_certificate/2,
         get_certificate_authority_certificate/3,
         get_certificate_authority_csr/2,
         get_certificate_authority_csr/3,
         import_certificate_authority_certificate/2,
         import_certificate_authority_certificate/3,
         issue_certificate/2,
         issue_certificate/3,
         list_certificate_authorities/2,
         list_certificate_authorities/3,
         list_permissions/2,
         list_permissions/3,
         list_tags/2,
         list_tags/3,
         restore_certificate_authority/2,
         restore_certificate_authority/3,
         revoke_certificate/2,
         revoke_certificate/3,
         tag_certificate_authority/2,
         tag_certificate_authority/3,
         untag_certificate_authority/2,
         untag_certificate_authority/3,
         update_certificate_authority/2,
         update_certificate_authority/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a root or subordinate private certificate authority (CA). You
%% must specify the CA configuration, the certificate revocation list (CRL)
%% configuration, the CA type, and an optional idempotency token to avoid
%% accidental creation of multiple CAs. The CA configuration specifies the
%% name of the algorithm and key size to be used to create the CA private
%% key, the type of signing algorithm that the CA uses, and X.500 subject
%% information. The CRL configuration specifies the CRL expiration period in
%% days (the validity period of the CRL), the Amazon S3 bucket that will
%% contain the CRL, and a CNAME alias for the S3 bucket that is included in
%% certificates issued by the CA. If successful, this action returns the
%% Amazon Resource Name (ARN) of the CA.
create_certificate_authority(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_certificate_authority(Client, Input, []).
create_certificate_authority(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCertificateAuthority">>, Input, Options).

%% @doc Creates an audit report that lists every time that your CA private
%% key is used. The report is saved in the Amazon S3 bucket that you specify
%% on input. The <a>IssueCertificate</a> and <a>RevokeCertificate</a> actions
%% use the private key.
create_certificate_authority_audit_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_certificate_authority_audit_report(Client, Input, []).
create_certificate_authority_audit_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCertificateAuthorityAuditReport">>, Input, Options).

%% @doc Assigns permissions from a private CA to a designated AWS service.
%% Services are specified by their service principals and can be given
%% permission to create and retrieve certificates on a private CA. Services
%% can also be given permission to list the active permissions that the
%% private CA has granted. For ACM to automatically renew your private CA's
%% certificates, you must assign all possible permissions from the CA to the
%% ACM service principal.
%%
%% At this time, you can only assign permissions to ACM
%% (<code>acm.amazonaws.com</code>). Permissions can be revoked with the
%% <a>DeletePermission</a> action and listed with the <a>ListPermissions</a>
%% action.
create_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_permission(Client, Input, []).
create_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePermission">>, Input, Options).

%% @doc Deletes a private certificate authority (CA). You must provide the
%% Amazon Resource Name (ARN) of the private CA that you want to delete. You
%% can find the ARN by calling the <a>ListCertificateAuthorities</a> action.
%%
%% <note> Deleting a CA will invalidate other CAs and certificates below it
%% in your CA hierarchy.
%%
%% </note> Before you can delete a CA that you have created and activated,
%% you must disable it. To do this, call the
%% <a>UpdateCertificateAuthority</a> action and set the
%% <b>CertificateAuthorityStatus</b> parameter to <code>DISABLED</code>.
%%
%% Additionally, you can delete a CA if you are waiting for it to be created
%% (that is, the status of the CA is <code>CREATING</code>). You can also
%% delete it if the CA has been created but you haven't yet imported the
%% signed certificate into ACM Private CA (that is, the status of the CA is
%% <code>PENDING_CERTIFICATE</code>).
%%
%% When you successfully call <a>DeleteCertificateAuthority</a>, the CA's
%% status changes to <code>DELETED</code>. However, the CA won't be
%% permanently deleted until the restoration period has passed. By default,
%% if you do not set the <code>PermanentDeletionTimeInDays</code> parameter,
%% the CA remains restorable for 30 days. You can set the parameter from 7 to
%% 30 days. The <a>DescribeCertificateAuthority</a> action returns the time
%% remaining in the restoration window of a private CA in the
%% <code>DELETED</code> state. To restore an eligible CA, call the
%% <a>RestoreCertificateAuthority</a> action.
delete_certificate_authority(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_certificate_authority(Client, Input, []).
delete_certificate_authority(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCertificateAuthority">>, Input, Options).

%% @doc Revokes permissions that a private CA assigned to a designated AWS
%% service. Permissions can be created with the <a>CreatePermission</a>
%% action and listed with the <a>ListPermissions</a> action.
delete_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_permission(Client, Input, []).
delete_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePermission">>, Input, Options).

%% @doc Lists information about your private certificate authority (CA). You
%% specify the private CA on input by its ARN (Amazon Resource Name). The
%% output contains the status of your CA. This can be any of the following:
%%
%% <ul> <li> <code>CREATING</code> - ACM Private CA is creating your private
%% certificate authority.
%%
%% </li> <li> <code>PENDING_CERTIFICATE</code> - The certificate is pending.
%% You must use your ACM Private CA-hosted or on-premises root or subordinate
%% CA to sign your private CA CSR and then import it into PCA.
%%
%% </li> <li> <code>ACTIVE</code> - Your private CA is active.
%%
%% </li> <li> <code>DISABLED</code> - Your private CA has been disabled.
%%
%% </li> <li> <code>EXPIRED</code> - Your private CA certificate has expired.
%%
%% </li> <li> <code>FAILED</code> - Your private CA has failed. Your CA can
%% fail because of problems such a network outage or backend AWS failure or
%% other errors. A failed CA can never return to the pending state. You must
%% create a new CA.
%%
%% </li> <li> <code>DELETED</code> - Your private CA is within the
%% restoration period, after which it is permanently deleted. The length of
%% time remaining in the CA's restoration period is also included in this
%% action's output.
%%
%% </li> </ul>
describe_certificate_authority(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_certificate_authority(Client, Input, []).
describe_certificate_authority(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCertificateAuthority">>, Input, Options).

%% @doc Lists information about a specific audit report created by calling
%% the <a>CreateCertificateAuthorityAuditReport</a> action. Audit information
%% is created every time the certificate authority (CA) private key is used.
%% The private key is used when you call the <a>IssueCertificate</a> action
%% or the <a>RevokeCertificate</a> action.
describe_certificate_authority_audit_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_certificate_authority_audit_report(Client, Input, []).
describe_certificate_authority_audit_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCertificateAuthorityAuditReport">>, Input, Options).

%% @doc Retrieves a certificate from your private CA. The ARN of the
%% certificate is returned when you call the <a>IssueCertificate</a> action.
%% You must specify both the ARN of your private CA and the ARN of the issued
%% certificate when calling the <b>GetCertificate</b> action. You can
%% retrieve the certificate if it is in the <b>ISSUED</b> state. You can call
%% the <a>CreateCertificateAuthorityAuditReport</a> action to create a report
%% that contains information about all of the certificates issued and revoked
%% by your private CA.
get_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_certificate(Client, Input, []).
get_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCertificate">>, Input, Options).

%% @doc Retrieves the certificate and certificate chain for your private
%% certificate authority (CA). Both the certificate and the chain are base64
%% PEM-encoded. The chain does not include the CA certificate. Each
%% certificate in the chain signs the one before it.
get_certificate_authority_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_certificate_authority_certificate(Client, Input, []).
get_certificate_authority_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCertificateAuthorityCertificate">>, Input, Options).

%% @doc Retrieves the certificate signing request (CSR) for your private
%% certificate authority (CA). The CSR is created when you call the
%% <a>CreateCertificateAuthority</a> action. Sign the CSR with your ACM
%% Private CA-hosted or on-premises root or subordinate CA. Then import the
%% signed certificate back into ACM Private CA by calling the
%% <a>ImportCertificateAuthorityCertificate</a> action. The CSR is returned
%% as a base64 PEM-encoded string.
get_certificate_authority_csr(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_certificate_authority_csr(Client, Input, []).
get_certificate_authority_csr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCertificateAuthorityCsr">>, Input, Options).

%% @doc Imports a signed private CA certificate into ACM Private CA. This
%% action is used when you are using a chain of trust whose root is located
%% outside ACM Private CA. Before you can call this action, the following
%% preparations must in place:
%%
%% <ol> <li> In ACM Private CA, call the <a>CreateCertificateAuthority</a>
%% action to create the private CA that that you plan to back with the
%% imported certificate.
%%
%% </li> <li> Call the <a>GetCertificateAuthorityCsr</a> action to generate a
%% certificate signing request (CSR).
%%
%% </li> <li> Sign the CSR using a root or intermediate CA hosted either by
%% an on-premises PKI hierarchy or a commercial CA..
%%
%% </li> <li> Create a certificate chain and copy the signed certificate and
%% the certificate chain to your working directory.
%%
%% </li> </ol> The following requirements apply when you import a CA
%% certificate.
%%
%% <ul> <li> You cannot import a non-self-signed certificate for use as a
%% root CA.
%%
%% </li> <li> You cannot import a self-signed certificate for use as a
%% subordinate CA.
%%
%% </li> <li> Your certificate chain must not include the private CA
%% certificate that you are importing.
%%
%% </li> <li> Your ACM Private CA-hosted or on-premises CA certificate must
%% be the last certificate in your chain. The subordinate certificate, if
%% any, that your root CA signed must be next to last. The subordinate
%% certificate signed by the preceding subordinate CA must come next, and so
%% on until your chain is built.
%%
%% </li> <li> The chain must be PEM-encoded.
%%
%% </li> </ul>
import_certificate_authority_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_certificate_authority_certificate(Client, Input, []).
import_certificate_authority_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportCertificateAuthorityCertificate">>, Input, Options).

%% @doc Uses your private certificate authority (CA) to issue a client
%% certificate. This action returns the Amazon Resource Name (ARN) of the
%% certificate. You can retrieve the certificate by calling the
%% <a>GetCertificate</a> action and specifying the ARN.
%%
%% <note> You cannot use the ACM <b>ListCertificateAuthorities</b> action to
%% retrieve the ARNs of the certificates that you issue by using ACM Private
%% CA.
%%
%% </note>
issue_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    issue_certificate(Client, Input, []).
issue_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"IssueCertificate">>, Input, Options).

%% @doc Lists the private certificate authorities that you created by using
%% the <a>CreateCertificateAuthority</a> action.
list_certificate_authorities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_certificate_authorities(Client, Input, []).
list_certificate_authorities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCertificateAuthorities">>, Input, Options).

%% @doc Lists all the permissions, if any, that have been assigned by a
%% private CA. Permissions can be granted with the <a>CreatePermission</a>
%% action and revoked with the <a>DeletePermission</a> action.
list_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_permissions(Client, Input, []).
list_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPermissions">>, Input, Options).

%% @doc Lists the tags, if any, that are associated with your private CA.
%% Tags are labels that you can use to identify and organize your CAs. Each
%% tag consists of a key and an optional value. Call the
%% <a>TagCertificateAuthority</a> action to add one or more tags to your CA.
%% Call the <a>UntagCertificateAuthority</a> action to remove tags.
list_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags(Client, Input, []).
list_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTags">>, Input, Options).

%% @doc Restores a certificate authority (CA) that is in the
%% <code>DELETED</code> state. You can restore a CA during the period that
%% you defined in the <b>PermanentDeletionTimeInDays</b> parameter of the
%% <a>DeleteCertificateAuthority</a> action. Currently, you can specify 7 to
%% 30 days. If you did not specify a <b>PermanentDeletionTimeInDays</b>
%% value, by default you can restore the CA at any time in a 30 day period.
%% You can check the time remaining in the restoration period of a private CA
%% in the <code>DELETED</code> state by calling the
%% <a>DescribeCertificateAuthority</a> or <a>ListCertificateAuthorities</a>
%% actions. The status of a restored CA is set to its pre-deletion status
%% when the <b>RestoreCertificateAuthority</b> action returns. To change its
%% status to <code>ACTIVE</code>, call the <a>UpdateCertificateAuthority</a>
%% action. If the private CA was in the <code>PENDING_CERTIFICATE</code>
%% state at deletion, you must use the
%% <a>ImportCertificateAuthorityCertificate</a> action to import a
%% certificate authority into the private CA before it can be activated. You
%% cannot restore a CA after the restoration period has ended.
restore_certificate_authority(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_certificate_authority(Client, Input, []).
restore_certificate_authority(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreCertificateAuthority">>, Input, Options).

%% @doc Revokes a certificate that was issued inside ACM Private CA. If you
%% enable a certificate revocation list (CRL) when you create or update your
%% private CA, information about the revoked certificates will be included in
%% the CRL. ACM Private CA writes the CRL to an S3 bucket that you specify.
%% For more information about revocation, see the <a>CrlConfiguration</a>
%% structure. ACM Private CA also writes revocation information to the audit
%% report. For more information, see
%% <a>CreateCertificateAuthorityAuditReport</a>.
%%
%% <note> You cannot revoke a root CA self-signed certificate.
%%
%% </note>
revoke_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_certificate(Client, Input, []).
revoke_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeCertificate">>, Input, Options).

%% @doc Adds one or more tags to your private CA. Tags are labels that you
%% can use to identify and organize your AWS resources. Each tag consists of
%% a key and an optional value. You specify the private CA on input by its
%% Amazon Resource Name (ARN). You specify the tag by using a key-value pair.
%% You can apply a tag to just one private CA if you want to identify a
%% specific characteristic of that CA, or you can apply the same tag to
%% multiple private CAs if you want to filter for a common relationship among
%% those CAs. To remove one or more tags, use the
%% <a>UntagCertificateAuthority</a> action. Call the <a>ListTags</a> action
%% to see what tags are associated with your CA.
tag_certificate_authority(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_certificate_authority(Client, Input, []).
tag_certificate_authority(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagCertificateAuthority">>, Input, Options).

%% @doc Remove one or more tags from your private CA. A tag consists of a
%% key-value pair. If you do not specify the value portion of the tag when
%% calling this action, the tag will be removed regardless of value. If you
%% specify a value, the tag is removed only if it is associated with the
%% specified value. To add tags to a private CA, use the
%% <a>TagCertificateAuthority</a>. Call the <a>ListTags</a> action to see
%% what tags are associated with your CA.
untag_certificate_authority(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_certificate_authority(Client, Input, []).
untag_certificate_authority(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagCertificateAuthority">>, Input, Options).

%% @doc Updates the status or configuration of a private certificate
%% authority (CA). Your private CA must be in the <code>ACTIVE</code> or
%% <code>DISABLED</code> state before you can update it. You can disable a
%% private CA that is in the <code>ACTIVE</code> state or make a CA that is
%% in the <code>DISABLED</code> state active again.
update_certificate_authority(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_certificate_authority(Client, Input, []).
update_certificate_authority(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateCertificateAuthority">>, Input, Options).

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
    Client1 = Client#{service => <<"acm-pca">>},
    Host = build_host(<<"acm-pca">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"ACMPrivateCA.", Action/binary>>}
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

build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
