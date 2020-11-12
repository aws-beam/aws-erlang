%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc
%%
%% This is the ACM Private CA API Reference.
%%
%% It provides descriptions, syntax, and usage examples for each of the
%% actions and data types involved in creating and managing private
%% certificate authorities (CA) for your organization.
%%
%% The documentation for each action shows the Query API request parameters
%% and the XML response. Alternatively, you can use one of the AWS SDKs to
%% access an API that's tailored to the programming language or platform that
%% you're using. For more information, see AWS SDKs.
%%
%% Each ACM Private CA API action has a quota that determines the number of
%% times the action can be called per second. For more information, see API
%% Rate Quotas in ACM Private CA in the ACM Private CA user guide.
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
         delete_policy/2,
         delete_policy/3,
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
         get_policy/2,
         get_policy/3,
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
         put_policy/2,
         put_policy/3,
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

%% @doc Creates a root or subordinate private certificate authority (CA).
%%
%% You must specify the CA configuration, the certificate revocation list
%% (CRL) configuration, the CA type, and an optional idempotency token to
%% avoid accidental creation of multiple CAs. The CA configuration specifies
%% the name of the algorithm and key size to be used to create the CA private
%% key, the type of signing algorithm that the CA uses, and X.500 subject
%% information. The CRL configuration specifies the CRL expiration period in
%% days (the validity period of the CRL), the Amazon S3 bucket that will
%% contain the CRL, and a CNAME alias for the S3 bucket that is included in
%% certificates issued by the CA. If successful, this action returns the
%% Amazon Resource Name (ARN) of the CA.
%%
%% ACM Private CAA assets that are stored in Amazon S3 can be protected with
%% encryption. For more information, see Encrypting Your CRLs.
%%
%% Both PCA and the IAM principal must have permission to write to the S3
%% bucket that you specify. If the IAM principal making the call does not
%% have permission to write to the bucket, then an exception is thrown. For
%% more information, see Configure Access to ACM Private CA.
create_certificate_authority(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_certificate_authority(Client, Input, []).
create_certificate_authority(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCertificateAuthority">>, Input, Options).

%% @doc Creates an audit report that lists every time that your CA private
%% key is used.
%%
%% The report is saved in the Amazon S3 bucket that you specify on input. The
%% IssueCertificate and RevokeCertificate actions use the private key.
%%
%% Both PCA and the IAM principal must have permission to write to the S3
%% bucket that you specify. If the IAM principal making the call does not
%% have permission to write to the bucket, then an exception is thrown. For
%% more information, see Configure Access to ACM Private CA.
%%
%% ACM Private CAA assets that are stored in Amazon S3 can be protected with
%% encryption. For more information, see Encrypting Your Audit Reports.
create_certificate_authority_audit_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_certificate_authority_audit_report(Client, Input, []).
create_certificate_authority_audit_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCertificateAuthorityAuditReport">>, Input, Options).

%% @doc Grants one or more permissions on a private CA to the AWS Certificate
%% Manager (ACM) service principal (`acm.amazonaws.com').
%%
%% These permissions allow ACM to issue and renew ACM certificates that
%% reside in the same AWS account as the CA.
%%
%% You can list current permissions with the ListPermissions action and
%% revoke them with the DeletePermission action.
%%
%% == About Permissions ==
%%
%% <ul> <li> If the private CA and the certificates it issues reside in the
%% same account, you can use `CreatePermission' to grant permissions for ACM
%% to carry out automatic certificate renewals.
%%
%% </li> <li> For automatic certificate renewal to succeed, the ACM service
%% principal needs permissions to create, retrieve, and list certificates.
%%
%% </li> <li> If the private CA and the ACM certificates reside in different
%% accounts, then permissions cannot be used to enable automatic renewals.
%% Instead, the ACM certificate owner must set up a resource-based policy to
%% enable cross-account issuance and renewals. For more information, see
%% Using a Resource Based Policy with ACM Private CA.
%%
%% </li> </ul>
create_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_permission(Client, Input, []).
create_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreatePermission">>, Input, Options).

%% @doc Deletes a private certificate authority (CA).
%%
%% You must provide the Amazon Resource Name (ARN) of the private CA that you
%% want to delete. You can find the ARN by calling the
%% ListCertificateAuthorities action.
%%
%% Deleting a CA will invalidate other CAs and certificates below it in your
%% CA hierarchy.
%%
%% Before you can delete a CA that you have created and activated, you must
%% disable it. To do this, call the UpdateCertificateAuthority action and set
%% the CertificateAuthorityStatus parameter to `DISABLED'.
%%
%% Additionally, you can delete a CA if you are waiting for it to be created
%% (that is, the status of the CA is `CREATING'). You can also delete it if
%% the CA has been created but you haven't yet imported the signed
%% certificate into ACM Private CA (that is, the status of the CA is
%% `PENDING_CERTIFICATE').
%%
%% When you successfully call DeleteCertificateAuthority, the CA's status
%% changes to `DELETED'. However, the CA won't be permanently deleted until
%% the restoration period has passed. By default, if you do not set the
%% `PermanentDeletionTimeInDays' parameter, the CA remains restorable for 30
%% days. You can set the parameter from 7 to 30 days. The
%% DescribeCertificateAuthority action returns the time remaining in the
%% restoration window of a private CA in the `DELETED' state. To restore an
%% eligible CA, call the RestoreCertificateAuthority action.
delete_certificate_authority(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_certificate_authority(Client, Input, []).
delete_certificate_authority(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCertificateAuthority">>, Input, Options).

%% @doc Revokes permissions on a private CA granted to the AWS Certificate
%% Manager (ACM) service principal (acm.amazonaws.com).
%%
%% These permissions allow ACM to issue and renew ACM certificates that
%% reside in the same AWS account as the CA. If you revoke these permissions,
%% ACM will no longer renew the affected certificates automatically.
%%
%% Permissions can be granted with the CreatePermission action and listed
%% with the ListPermissions action.
%%
%% == About Permissions ==
%%
%% <ul> <li> If the private CA and the certificates it issues reside in the
%% same account, you can use `CreatePermission' to grant permissions for ACM
%% to carry out automatic certificate renewals.
%%
%% </li> <li> For automatic certificate renewal to succeed, the ACM service
%% principal needs permissions to create, retrieve, and list certificates.
%%
%% </li> <li> If the private CA and the ACM certificates reside in different
%% accounts, then permissions cannot be used to enable automatic renewals.
%% Instead, the ACM certificate owner must set up a resource-based policy to
%% enable cross-account issuance and renewals. For more information, see
%% Using a Resource Based Policy with ACM Private CA.
%%
%% </li> </ul>
delete_permission(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_permission(Client, Input, []).
delete_permission(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePermission">>, Input, Options).

%% @doc Deletes the resource-based policy attached to a private CA.
%%
%% Deletion will remove any access that the policy has granted. If there is
%% no policy attached to the private CA, this action will return successful.
%%
%% If you delete a policy that was applied through AWS Resource Access
%% Manager (RAM), the CA will be removed from all shares in which it was
%% included.
%%
%% The AWS Certificate Manager Service Linked Role that the policy supports
%% is not affected when you delete the policy.
%%
%% The current policy can be shown with GetPolicy and updated with PutPolicy.
%%
%% == About Policies ==
%%
%% <ul> <li> A policy grants access on a private CA to an AWS customer
%% account, to AWS Organizations, or to an AWS Organizations unit. Policies
%% are under the control of a CA administrator. For more information, see
%% Using a Resource Based Policy with ACM Private CA.
%%
%% </li> <li> A policy permits a user of AWS Certificate Manager (ACM) to
%% issue ACM certificates signed by a CA in another account.
%%
%% </li> <li> For ACM to manage automatic renewal of these certificates, the
%% ACM user must configure a Service Linked Role (SLR). The SLR allows the
%% ACM service to assume the identity of the user, subject to confirmation
%% against the ACM Private CA policy. For more information, see Using a
%% Service Linked Role with ACM.
%%
%% </li> <li> Updates made in AWS Resource Manager (RAM) are reflected in
%% policies. For more information, see Using AWS Resource Access Manager
%% (RAM) with ACM Private CA.
%%
%% </li> </ul>
delete_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_policy(Client, Input, []).
delete_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeletePolicy">>, Input, Options).

%% @doc Lists information about your private certificate authority (CA) or
%% one that has been shared with you.
%%
%% You specify the private CA on input by its ARN (Amazon Resource Name). The
%% output contains the status of your CA. This can be any of the following:
%%
%% <ul> <li> `CREATING' - ACM Private CA is creating your private certificate
%% authority.
%%
%% </li> <li> `PENDING_CERTIFICATE' - The certificate is pending. You must
%% use your ACM Private CA-hosted or on-premises root or subordinate CA to
%% sign your private CA CSR and then import it into PCA.
%%
%% </li> <li> `ACTIVE' - Your private CA is active.
%%
%% </li> <li> `DISABLED' - Your private CA has been disabled.
%%
%% </li> <li> `EXPIRED' - Your private CA certificate has expired.
%%
%% </li> <li> `FAILED' - Your private CA has failed. Your CA can fail because
%% of problems such a network outage or backend AWS failure or other errors.
%% A failed CA can never return to the pending state. You must create a new
%% CA.
%%
%% </li> <li> `DELETED' - Your private CA is within the restoration period,
%% after which it is permanently deleted. The length of time remaining in the
%% CA's restoration period is also included in this action's output.
%%
%% </li> </ul>
describe_certificate_authority(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_certificate_authority(Client, Input, []).
describe_certificate_authority(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCertificateAuthority">>, Input, Options).

%% @doc Lists information about a specific audit report created by calling
%% the CreateCertificateAuthorityAuditReport action.
%%
%% Audit information is created every time the certificate authority (CA)
%% private key is used. The private key is used when you call the
%% IssueCertificate action or the RevokeCertificate action.
describe_certificate_authority_audit_report(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_certificate_authority_audit_report(Client, Input, []).
describe_certificate_authority_audit_report(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeCertificateAuthorityAuditReport">>, Input, Options).

%% @doc Retrieves a certificate from your private CA or one that has been
%% shared with you.
%%
%% The ARN of the certificate is returned when you call the IssueCertificate
%% action. You must specify both the ARN of your private CA and the ARN of
%% the issued certificate when calling the GetCertificate action. You can
%% retrieve the certificate if it is in the ISSUED state. You can call the
%% CreateCertificateAuthorityAuditReport action to create a report that
%% contains information about all of the certificates issued and revoked by
%% your private CA.
get_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_certificate(Client, Input, []).
get_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCertificate">>, Input, Options).

%% @doc Retrieves the certificate and certificate chain for your private
%% certificate authority (CA) or one that has been shared with you.
%%
%% Both the certificate and the chain are base64 PEM-encoded. The chain does
%% not include the CA certificate. Each certificate in the chain signs the
%% one before it.
get_certificate_authority_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_certificate_authority_certificate(Client, Input, []).
get_certificate_authority_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCertificateAuthorityCertificate">>, Input, Options).

%% @doc Retrieves the certificate signing request (CSR) for your private
%% certificate authority (CA).
%%
%% The CSR is created when you call the CreateCertificateAuthority action.
%% Sign the CSR with your ACM Private CA-hosted or on-premises root or
%% subordinate CA. Then import the signed certificate back into ACM Private
%% CA by calling the ImportCertificateAuthorityCertificate action. The CSR is
%% returned as a base64 PEM-encoded string.
get_certificate_authority_csr(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_certificate_authority_csr(Client, Input, []).
get_certificate_authority_csr(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCertificateAuthorityCsr">>, Input, Options).

%% @doc Retrieves the resource-based policy attached to a private CA.
%%
%% If either the private CA resource or the policy cannot be found, this
%% action returns a `ResourceNotFoundException'.
%%
%% The policy can be attached or updated with PutPolicy and removed with
%% DeletePolicy.
%%
%% == About Policies ==
%%
%% <ul> <li> A policy grants access on a private CA to an AWS customer
%% account, to AWS Organizations, or to an AWS Organizations unit. Policies
%% are under the control of a CA administrator. For more information, see
%% Using a Resource Based Policy with ACM Private CA.
%%
%% </li> <li> A policy permits a user of AWS Certificate Manager (ACM) to
%% issue ACM certificates signed by a CA in another account.
%%
%% </li> <li> For ACM to manage automatic renewal of these certificates, the
%% ACM user must configure a Service Linked Role (SLR). The SLR allows the
%% ACM service to assume the identity of the user, subject to confirmation
%% against the ACM Private CA policy. For more information, see Using a
%% Service Linked Role with ACM.
%%
%% </li> <li> Updates made in AWS Resource Manager (RAM) are reflected in
%% policies. For more information, see Using AWS Resource Access Manager
%% (RAM) with ACM Private CA.
%%
%% </li> </ul>
get_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_policy(Client, Input, []).
get_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetPolicy">>, Input, Options).

%% @doc Imports a signed private CA certificate into ACM Private CA.
%%
%% This action is used when you are using a chain of trust whose root is
%% located outside ACM Private CA. Before you can call this action, the
%% following preparations must in place:
%%
%% <ol> <li> In ACM Private CA, call the CreateCertificateAuthority action to
%% create the private CA that that you plan to back with the imported
%% certificate.
%%
%% </li> <li> Call the GetCertificateAuthorityCsr action to generate a
%% certificate signing request (CSR).
%%
%% </li> <li> Sign the CSR using a root or intermediate CA hosted by either
%% an on-premises PKI hierarchy or by a commercial CA.
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
%% </li> <li> The maximum allowed size of a certificate is 32 KB.
%%
%% </li> <li> The maximum allowed size of a certificate chain is 2 MB.
%%
%% </li> </ul> Enforcement of Critical Constraints
%%
%% ACM Private CA allows the following extensions to be marked critical in
%% the imported CA certificate or chain.
%%
%% <ul> <li> Basic constraints (must be marked critical)
%%
%% </li> <li> Subject alternative names
%%
%% </li> <li> Key usage
%%
%% </li> <li> Extended key usage
%%
%% </li> <li> Authority key identifier
%%
%% </li> <li> Subject key identifier
%%
%% </li> <li> Issuer alternative name
%%
%% </li> <li> Subject directory attributes
%%
%% </li> <li> Subject information access
%%
%% </li> <li> Certificate policies
%%
%% </li> <li> Policy mappings
%%
%% </li> <li> Inhibit anyPolicy
%%
%% </li> </ul> ACM Private CA rejects the following extensions when they are
%% marked critical in an imported CA certificate or chain.
%%
%% <ul> <li> Name constraints
%%
%% </li> <li> Policy constraints
%%
%% </li> <li> CRL distribution points
%%
%% </li> <li> Authority information access
%%
%% </li> <li> Freshest CRL
%%
%% </li> <li> Any other extension
%%
%% </li> </ul>
import_certificate_authority_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    import_certificate_authority_certificate(Client, Input, []).
import_certificate_authority_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ImportCertificateAuthorityCertificate">>, Input, Options).

%% @doc Uses your private certificate authority (CA), or one that has been
%% shared with you, to issue a client certificate.
%%
%% This action returns the Amazon Resource Name (ARN) of the certificate. You
%% can retrieve the certificate by calling the GetCertificate action and
%% specifying the ARN.
%%
%% You cannot use the ACM ListCertificateAuthorities action to retrieve the
%% ARNs of the certificates that you issue by using ACM Private CA.
issue_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    issue_certificate(Client, Input, []).
issue_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"IssueCertificate">>, Input, Options).

%% @doc Lists the private certificate authorities that you created by using
%% the CreateCertificateAuthority action.
list_certificate_authorities(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_certificate_authorities(Client, Input, []).
list_certificate_authorities(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListCertificateAuthorities">>, Input, Options).

%% @doc List all permissions on a private CA, if any, granted to the AWS
%% Certificate Manager (ACM) service principal (acm.amazonaws.com).
%%
%% These permissions allow ACM to issue and renew ACM certificates that
%% reside in the same AWS account as the CA.
%%
%% Permissions can be granted with the CreatePermission action and revoked
%% with the DeletePermission action.
%%
%% == About Permissions ==
%%
%% <ul> <li> If the private CA and the certificates it issues reside in the
%% same account, you can use `CreatePermission' to grant permissions for ACM
%% to carry out automatic certificate renewals.
%%
%% </li> <li> For automatic certificate renewal to succeed, the ACM service
%% principal needs permissions to create, retrieve, and list certificates.
%%
%% </li> <li> If the private CA and the ACM certificates reside in different
%% accounts, then permissions cannot be used to enable automatic renewals.
%% Instead, the ACM certificate owner must set up a resource-based policy to
%% enable cross-account issuance and renewals. For more information, see
%% Using a Resource Based Policy with ACM Private CA.
%%
%% </li> </ul>
list_permissions(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_permissions(Client, Input, []).
list_permissions(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListPermissions">>, Input, Options).

%% @doc Lists the tags, if any, that are associated with your private CA or
%% one that has been shared with you.
%%
%% Tags are labels that you can use to identify and organize your CAs. Each
%% tag consists of a key and an optional value. Call the
%% TagCertificateAuthority action to add one or more tags to your CA. Call
%% the UntagCertificateAuthority action to remove tags.
list_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags(Client, Input, []).
list_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTags">>, Input, Options).

%% @doc Attaches a resource-based policy to a private CA.
%%
%% A policy can also be applied by sharing a private CA through AWS Resource
%% Access Manager (RAM).
%%
%% The policy can be displayed with GetPolicy and removed with DeletePolicy.
%%
%% == About Policies ==
%%
%% <ul> <li> A policy grants access on a private CA to an AWS customer
%% account, to AWS Organizations, or to an AWS Organizations unit. Policies
%% are under the control of a CA administrator. For more information, see
%% Using a Resource Based Policy with ACM Private CA.
%%
%% </li> <li> A policy permits a user of AWS Certificate Manager (ACM) to
%% issue ACM certificates signed by a CA in another account.
%%
%% </li> <li> For ACM to manage automatic renewal of these certificates, the
%% ACM user must configure a Service Linked Role (SLR). The SLR allows the
%% ACM service to assume the identity of the user, subject to confirmation
%% against the ACM Private CA policy. For more information, see Using a
%% Service Linked Role with ACM.
%%
%% </li> <li> Updates made in AWS Resource Manager (RAM) are reflected in
%% policies. For more information, see Using AWS Resource Access Manager
%% (RAM) with ACM Private CA.
%%
%% </li> </ul>
put_policy(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_policy(Client, Input, []).
put_policy(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutPolicy">>, Input, Options).

%% @doc Restores a certificate authority (CA) that is in the `DELETED' state.
%%
%% You can restore a CA during the period that you defined in the
%% PermanentDeletionTimeInDays parameter of the DeleteCertificateAuthority
%% action. Currently, you can specify 7 to 30 days. If you did not specify a
%% PermanentDeletionTimeInDays value, by default you can restore the CA at
%% any time in a 30 day period. You can check the time remaining in the
%% restoration period of a private CA in the `DELETED' state by calling the
%% DescribeCertificateAuthority or ListCertificateAuthorities actions. The
%% status of a restored CA is set to its pre-deletion status when the
%% RestoreCertificateAuthority action returns. To change its status to
%% `ACTIVE', call the UpdateCertificateAuthority action. If the private CA
%% was in the `PENDING_CERTIFICATE' state at deletion, you must use the
%% ImportCertificateAuthorityCertificate action to import a certificate
%% authority into the private CA before it can be activated. You cannot
%% restore a CA after the restoration period has ended.
restore_certificate_authority(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_certificate_authority(Client, Input, []).
restore_certificate_authority(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreCertificateAuthority">>, Input, Options).

%% @doc Revokes a certificate that was issued inside ACM Private CA.
%%
%% If you enable a certificate revocation list (CRL) when you create or
%% update your private CA, information about the revoked certificates will be
%% included in the CRL. ACM Private CA writes the CRL to an S3 bucket that
%% you specify. A CRL is typically updated approximately 30 minutes after a
%% certificate is revoked. If for any reason the CRL update fails, ACM
%% Private CA attempts makes further attempts every 15 minutes. With Amazon
%% CloudWatch, you can create alarms for the metrics `CRLGenerated' and
%% `MisconfiguredCRLBucket'. For more information, see Supported CloudWatch
%% Metrics.
%%
%% Both PCA and the IAM principal must have permission to write to the S3
%% bucket that you specify. If the IAM principal making the call does not
%% have permission to write to the bucket, then an exception is thrown. For
%% more information, see Configure Access to ACM Private CA.
%%
%% ACM Private CA also writes revocation information to the audit report. For
%% more information, see CreateCertificateAuthorityAuditReport.
%%
%% You cannot revoke a root CA self-signed certificate.
revoke_certificate(Client, Input)
  when is_map(Client), is_map(Input) ->
    revoke_certificate(Client, Input, []).
revoke_certificate(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RevokeCertificate">>, Input, Options).

%% @doc Adds one or more tags to your private CA.
%%
%% Tags are labels that you can use to identify and organize your AWS
%% resources. Each tag consists of a key and an optional value. You specify
%% the private CA on input by its Amazon Resource Name (ARN). You specify the
%% tag by using a key-value pair. You can apply a tag to just one private CA
%% if you want to identify a specific characteristic of that CA, or you can
%% apply the same tag to multiple private CAs if you want to filter for a
%% common relationship among those CAs. To remove one or more tags, use the
%% UntagCertificateAuthority action. Call the ListTags action to see what
%% tags are associated with your CA.
tag_certificate_authority(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_certificate_authority(Client, Input, []).
tag_certificate_authority(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagCertificateAuthority">>, Input, Options).

%% @doc Remove one or more tags from your private CA.
%%
%% A tag consists of a key-value pair. If you do not specify the value
%% portion of the tag when calling this action, the tag will be removed
%% regardless of value. If you specify a value, the tag is removed only if it
%% is associated with the specified value. To add tags to a private CA, use
%% the TagCertificateAuthority. Call the ListTags action to see what tags are
%% associated with your CA.
untag_certificate_authority(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_certificate_authority(Client, Input, []).
untag_certificate_authority(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagCertificateAuthority">>, Input, Options).

%% @doc Updates the status or configuration of a private certificate
%% authority (CA).
%%
%% Your private CA must be in the `ACTIVE' or `DISABLED' state before you can
%% update it. You can disable a private CA that is in the `ACTIVE' state or
%% make a CA that is in the `DISABLED' state active again.
%%
%% Both PCA and the IAM principal must have permission to write to the S3
%% bucket that you specify. If the IAM principal making the call does not
%% have permission to write to the bucket, then an exception is thrown. For
%% more information, see Configure Access to ACM Private CA.
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
