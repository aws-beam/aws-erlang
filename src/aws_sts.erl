%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Security Token Service
%%
%% Security Token Service (STS) enables you to request temporary,
%% limited-privilege
%% credentials for users.
%%
%% This guide provides descriptions of the STS API. For
%% more information about using this service, see Temporary Security
%% Credentials:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html.
-module(aws_sts).

-export([assume_role/2,
         assume_role/3,
         assume_role_with_saml/2,
         assume_role_with_saml/3,
         assume_role_with_web_identity/2,
         assume_role_with_web_identity/3,
         assume_root/2,
         assume_root/3,
         decode_authorization_message/2,
         decode_authorization_message/3,
         get_access_key_info/2,
         get_access_key_info/3,
         get_caller_identity/2,
         get_caller_identity/3,
         get_federation_token/2,
         get_federation_token/3,
         get_session_token/2,
         get_session_token/3]).

-include_lib("hackney/include/hackney_lib.hrl").


%% Example:
%% assume_role_request() :: #{
%%   <<"DurationSeconds">> => integer(),
%%   <<"ExternalId">> => string(),
%%   <<"Policy">> => string(),
%%   <<"PolicyArns">> => list(policy_descriptor_type()),
%%   <<"ProvidedContexts">> => list(provided_context()),
%%   <<"RoleArn">> := string(),
%%   <<"RoleSessionName">> := string(),
%%   <<"SerialNumber">> => string(),
%%   <<"SourceIdentity">> => string(),
%%   <<"Tags">> => list(tag()),
%%   <<"TokenCode">> => string(),
%%   <<"TransitiveTagKeys">> => list(string())
%% }
-type assume_role_request() :: #{binary() => any()}.

%% Example:
%% assume_role_response() :: #{
%%   <<"AssumedRoleUser">> => assumed_role_user(),
%%   <<"Credentials">> => credentials(),
%%   <<"PackedPolicySize">> => integer(),
%%   <<"SourceIdentity">> => string()
%% }
-type assume_role_response() :: #{binary() => any()}.

%% Example:
%% assume_role_with_saml_request() :: #{
%%   <<"DurationSeconds">> => integer(),
%%   <<"Policy">> => string(),
%%   <<"PolicyArns">> => list(policy_descriptor_type()),
%%   <<"PrincipalArn">> := string(),
%%   <<"RoleArn">> := string(),
%%   <<"SAMLAssertion">> := string()
%% }
-type assume_role_with_saml_request() :: #{binary() => any()}.

%% Example:
%% assume_role_with_saml_response() :: #{
%%   <<"AssumedRoleUser">> => assumed_role_user(),
%%   <<"Audience">> => string(),
%%   <<"Credentials">> => credentials(),
%%   <<"Issuer">> => string(),
%%   <<"NameQualifier">> => string(),
%%   <<"PackedPolicySize">> => integer(),
%%   <<"SourceIdentity">> => string(),
%%   <<"Subject">> => string(),
%%   <<"SubjectType">> => string()
%% }
-type assume_role_with_saml_response() :: #{binary() => any()}.

%% Example:
%% assume_role_with_web_identity_request() :: #{
%%   <<"DurationSeconds">> => integer(),
%%   <<"Policy">> => string(),
%%   <<"PolicyArns">> => list(policy_descriptor_type()),
%%   <<"ProviderId">> => string(),
%%   <<"RoleArn">> := string(),
%%   <<"RoleSessionName">> := string(),
%%   <<"WebIdentityToken">> := string()
%% }
-type assume_role_with_web_identity_request() :: #{binary() => any()}.

%% Example:
%% assume_role_with_web_identity_response() :: #{
%%   <<"AssumedRoleUser">> => assumed_role_user(),
%%   <<"Audience">> => string(),
%%   <<"Credentials">> => credentials(),
%%   <<"PackedPolicySize">> => integer(),
%%   <<"Provider">> => string(),
%%   <<"SourceIdentity">> => string(),
%%   <<"SubjectFromWebIdentityToken">> => string()
%% }
-type assume_role_with_web_identity_response() :: #{binary() => any()}.

%% Example:
%% assume_root_request() :: #{
%%   <<"DurationSeconds">> => integer(),
%%   <<"TargetPrincipal">> := string(),
%%   <<"TaskPolicyArn">> := policy_descriptor_type()
%% }
-type assume_root_request() :: #{binary() => any()}.

%% Example:
%% assume_root_response() :: #{
%%   <<"Credentials">> => credentials(),
%%   <<"SourceIdentity">> => string()
%% }
-type assume_root_response() :: #{binary() => any()}.

%% Example:
%% assumed_role_user() :: #{
%%   <<"Arn">> => string(),
%%   <<"AssumedRoleId">> => string()
%% }
-type assumed_role_user() :: #{binary() => any()}.

%% Example:
%% credentials() :: #{
%%   <<"AccessKeyId">> => string(),
%%   <<"Expiration">> => non_neg_integer(),
%%   <<"SecretAccessKey">> => string(),
%%   <<"SessionToken">> => string()
%% }
-type credentials() :: #{binary() => any()}.

%% Example:
%% decode_authorization_message_request() :: #{
%%   <<"EncodedMessage">> := string()
%% }
-type decode_authorization_message_request() :: #{binary() => any()}.

%% Example:
%% decode_authorization_message_response() :: #{
%%   <<"DecodedMessage">> => string()
%% }
-type decode_authorization_message_response() :: #{binary() => any()}.

%% Example:
%% expired_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type expired_token_exception() :: #{binary() => any()}.

%% Example:
%% federated_user() :: #{
%%   <<"Arn">> => string(),
%%   <<"FederatedUserId">> => string()
%% }
-type federated_user() :: #{binary() => any()}.

%% Example:
%% get_access_key_info_request() :: #{
%%   <<"AccessKeyId">> := string()
%% }
-type get_access_key_info_request() :: #{binary() => any()}.

%% Example:
%% get_access_key_info_response() :: #{
%%   <<"Account">> => string()
%% }
-type get_access_key_info_response() :: #{binary() => any()}.

%% Example:
%% get_caller_identity_request() :: #{

%% }
-type get_caller_identity_request() :: #{binary() => any()}.

%% Example:
%% get_caller_identity_response() :: #{
%%   <<"Account">> => string(),
%%   <<"Arn">> => string(),
%%   <<"UserId">> => string()
%% }
-type get_caller_identity_response() :: #{binary() => any()}.

%% Example:
%% get_federation_token_request() :: #{
%%   <<"DurationSeconds">> => integer(),
%%   <<"Name">> := string(),
%%   <<"Policy">> => string(),
%%   <<"PolicyArns">> => list(policy_descriptor_type()),
%%   <<"Tags">> => list(tag())
%% }
-type get_federation_token_request() :: #{binary() => any()}.

%% Example:
%% get_federation_token_response() :: #{
%%   <<"Credentials">> => credentials(),
%%   <<"FederatedUser">> => federated_user(),
%%   <<"PackedPolicySize">> => integer()
%% }
-type get_federation_token_response() :: #{binary() => any()}.

%% Example:
%% get_session_token_request() :: #{
%%   <<"DurationSeconds">> => integer(),
%%   <<"SerialNumber">> => string(),
%%   <<"TokenCode">> => string()
%% }
-type get_session_token_request() :: #{binary() => any()}.

%% Example:
%% get_session_token_response() :: #{
%%   <<"Credentials">> => credentials()
%% }
-type get_session_token_response() :: #{binary() => any()}.

%% Example:
%% id_p_communication_error_exception() :: #{
%%   <<"message">> => string()
%% }
-type id_p_communication_error_exception() :: #{binary() => any()}.

%% Example:
%% id_p_rejected_claim_exception() :: #{
%%   <<"message">> => string()
%% }
-type id_p_rejected_claim_exception() :: #{binary() => any()}.

%% Example:
%% invalid_authorization_message_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_authorization_message_exception() :: #{binary() => any()}.

%% Example:
%% invalid_identity_token_exception() :: #{
%%   <<"message">> => string()
%% }
-type invalid_identity_token_exception() :: #{binary() => any()}.

%% Example:
%% malformed_policy_document_exception() :: #{
%%   <<"message">> => string()
%% }
-type malformed_policy_document_exception() :: #{binary() => any()}.

%% Example:
%% packed_policy_too_large_exception() :: #{
%%   <<"message">> => string()
%% }
-type packed_policy_too_large_exception() :: #{binary() => any()}.

%% Example:
%% policy_descriptor_type() :: #{
%%   <<"arn">> => string()
%% }
-type policy_descriptor_type() :: #{binary() => any()}.

%% Example:
%% provided_context() :: #{
%%   <<"ContextAssertion">> => string(),
%%   <<"ProviderArn">> => string()
%% }
-type provided_context() :: #{binary() => any()}.

%% Example:
%% region_disabled_exception() :: #{
%%   <<"message">> => string()
%% }
-type region_disabled_exception() :: #{binary() => any()}.

%% Example:
%% tag() :: #{
%%   <<"Key">> => string(),
%%   <<"Value">> => string()
%% }
-type tag() :: #{binary() => any()}.

-type assume_role_errors() ::
    region_disabled_exception() | 
    packed_policy_too_large_exception() | 
    malformed_policy_document_exception() | 
    expired_token_exception().

-type assume_role_with_saml_errors() ::
    region_disabled_exception() | 
    packed_policy_too_large_exception() | 
    malformed_policy_document_exception() | 
    invalid_identity_token_exception() | 
    id_p_rejected_claim_exception() | 
    expired_token_exception().

-type assume_role_with_web_identity_errors() ::
    region_disabled_exception() | 
    packed_policy_too_large_exception() | 
    malformed_policy_document_exception() | 
    invalid_identity_token_exception() | 
    id_p_rejected_claim_exception() | 
    id_p_communication_error_exception() | 
    expired_token_exception().

-type assume_root_errors() ::
    region_disabled_exception() | 
    expired_token_exception().

-type decode_authorization_message_errors() ::
    invalid_authorization_message_exception().

-type get_federation_token_errors() ::
    region_disabled_exception() | 
    packed_policy_too_large_exception() | 
    malformed_policy_document_exception().

-type get_session_token_errors() ::
    region_disabled_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Returns a set of temporary security credentials that you can use to
%% access Amazon Web Services
%% resources.
%%
%% These temporary credentials consist of an access key ID, a secret access
%% key,
%% and a security token. Typically, you use `AssumeRole' within your
%% account or for
%% cross-account access. For a comparison of `AssumeRole' with other API
%% operations
%% that produce temporary credentials, see Requesting Temporary Security
%% Credentials:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html
%% and Compare STS
%% credentials:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_sts-comparison.html
%% in the IAM User Guide.
%%
%% Permissions
%%
%% The temporary security credentials created by `AssumeRole' can be used
%% to
%% make API calls to any Amazon Web Services service with the following
%% exception: You cannot call the
%% Amazon Web Services STS `GetFederationToken' or `GetSessionToken'
%% API
%% operations.
%%
%% (Optional) You can pass inline or managed session policies to this
%% operation. You can
%% pass a single JSON policy document to use as an inline session policy. You
%% can also specify
%% up to 10 managed policy Amazon Resource Names (ARNs) to use as managed
%% session policies.
%% The plaintext that you use for both inline and managed session policies
%% can't exceed 2,048
%% characters. Passing policies to this operation returns new
%% temporary credentials. The resulting session's permissions are the
%% intersection of the
%% role's identity-based policy and the session policies. You can use the
%% role's temporary
%% credentials in subsequent Amazon Web Services API calls to access
%% resources in the account that owns
%% the role. You cannot use session policies to grant more permissions than
%% those allowed
%% by the identity-based policy of the role that is being assumed. For more
%% information, see
%% Session
%% Policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session
%% in the IAM User Guide.
%%
%% When you create a role, you create two policies: a role trust policy that
%% specifies
%% who can assume the role, and a permissions policy that specifies
%% what can be done with the role. You specify the trusted principal
%% that is allowed to assume the role in the role trust policy.
%%
%% To assume a role from a different account, your Amazon Web Services
%% account must be trusted by the
%% role. The trust relationship is defined in the role's trust policy
%% when the role is
%% created. That trust policy states which accounts are allowed to delegate
%% that access to
%% users in the account.
%%
%% A user who wants to access a role in a different account must also have
%% permissions that
%% are delegated from the account administrator. The administrator must
%% attach a policy that
%% allows the user to call `AssumeRole' for the ARN of the role in the
%% other
%% account.
%%
%% To allow a user to assume a role in the same account, you can do either of
%% the
%% following:
%%
%% Attach a policy to the user that allows the user to call `AssumeRole'
%% (as long as the role's trust policy trusts the account).
%%
%% Add the user as a principal directly in the role's trust policy.
%%
%% You can do either because the role’s trust policy acts as an IAM
%% resource-based
%% policy. When a resource-based policy grants access to a principal in the
%% same account, no
%% additional identity-based policy is required. For more information about
%% trust policies and
%% resource-based policies, see IAM Policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html in
%% the
%% IAM User Guide.
%%
%% Tags
%%
%% (Optional) You can pass tag key-value pairs to your session. These tags
%% are called
%% session tags. For more information about session tags, see Passing Session
%% Tags in STS:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html in
%% the
%% IAM User Guide.
%%
%% An administrator must grant you the permissions necessary to pass session
%% tags. The
%% administrator can also create granular permissions to allow you to pass
%% only specific
%% session tags. For more information, see Tutorial: Using Tags
%% for Attribute-Based Access Control:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html
%% in the
%% IAM User Guide.
%%
%% You can set the session tags as transitive. Transitive tags persist during
%% role
%% chaining. For more information, see Chaining Roles
%% with Session Tags:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining
%% in the IAM User Guide.
%%
%% Using MFA with AssumeRole
%%
%% (Optional) You can include multi-factor authentication (MFA) information
%% when you call
%% `AssumeRole'. This is useful for cross-account scenarios to ensure
%% that the
%% user that assumes the role has been authenticated with an Amazon Web
%% Services MFA device. In that
%% scenario, the trust policy of the role being assumed includes a condition
%% that tests for
%% MFA authentication. If the caller does not include valid MFA information,
%% the request to
%% assume the role is denied. The condition in a trust policy that tests for
%% MFA
%% authentication might look like the following example.
%%
%% `&quot;Condition&quot;: {&quot;Bool&quot;:
%% {&quot;aws:MultiFactorAuthPresent&quot;: true}}'
%%
%% For more information, see Configuring MFA-Protected API Access:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/MFAProtectedAPI.html
%% in the IAM User Guide guide.
%%
%% To use MFA with `AssumeRole', you pass values for the
%% `SerialNumber' and `TokenCode' parameters. The
%% `SerialNumber' value identifies the user's hardware or virtual MFA
%% device.
%% The `TokenCode' is the time-based one-time password (TOTP) that the
%% MFA device
%% produces.
-spec assume_role(aws_client:aws_client(), assume_role_request()) ->
    {ok, assume_role_response(), tuple()} |
    {error, any()} |
    {error, assume_role_errors(), tuple()}.
assume_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    assume_role(Client, Input, []).

-spec assume_role(aws_client:aws_client(), assume_role_request(), proplists:proplist()) ->
    {ok, assume_role_response(), tuple()} |
    {error, any()} |
    {error, assume_role_errors(), tuple()}.
assume_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssumeRole">>, Input, Options).

%% @doc Returns a set of temporary security credentials for users who have
%% been authenticated
%% via a SAML authentication response.
%%
%% This operation provides a mechanism for tying an
%% enterprise identity store or directory to role-based Amazon Web Services
%% access without user-specific
%% credentials or configuration. For a comparison of `AssumeRoleWithSAML'
%% with the
%% other API operations that produce temporary credentials, see Requesting
%% Temporary Security
%% Credentials:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html
%% and Compare STS
%% credentials:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_sts-comparison.html
%% in the IAM User Guide.
%%
%% The temporary security credentials returned by this operation consist of
%% an access key
%% ID, a secret access key, and a security token. Applications can use these
%% temporary
%% security credentials to sign calls to Amazon Web Services services.
%%
%% Session Duration
%%
%% By default, the temporary security credentials created by
%% `AssumeRoleWithSAML' last for one hour. However, you can use the
%% optional
%% `DurationSeconds' parameter to specify the duration of your session.
%% Your
%% role session lasts for the duration that you specify, or until the time
%% specified in the
%% SAML authentication response's `SessionNotOnOrAfter' value,
%% whichever is
%% shorter. You can provide a `DurationSeconds' value from 900 seconds
%% (15 minutes)
%% up to the maximum session duration setting for the role. This setting can
%% have a value from
%% 1 hour to 12 hours. To learn how to view the maximum value for your role,
%% see View the
%% Maximum Session Duration Setting for a Role:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session
%% in the
%% IAM User Guide. The maximum session duration limit applies when
%% you use the `AssumeRole*' API operations or the `assume-role*' CLI
%% commands. However the limit does not apply when you use those operations
%% to create a
%% console URL. For more information, see Using IAM Roles:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html in the
%% IAM User Guide.
%%
%% Role chaining:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-role-chaining
%% limits your CLI or Amazon Web Services API role
%% session to a maximum of one hour. When you use the `AssumeRole' API
%% operation
%% to assume a role, you can specify the duration of your role session with
%% the
%% `DurationSeconds' parameter. You can specify a parameter value of up
%% to
%% 43200 seconds (12 hours), depending on the maximum session duration
%% setting for your
%% role. However, if you assume a role using role chaining and provide a
%% `DurationSeconds' parameter value greater than one hour, the operation
%% fails.
%%
%% Permissions
%%
%% The temporary security credentials created by `AssumeRoleWithSAML' can
%% be
%% used to make API calls to any Amazon Web Services service with the
%% following exception: you cannot call
%% the STS `GetFederationToken' or `GetSessionToken' API
%% operations.
%%
%% (Optional) You can pass inline or managed session policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session
%% to
%% this operation. You can pass a single JSON policy document to use as an
%% inline session
%% policy. You can also specify up to 10 managed policy Amazon Resource Names
%% (ARNs) to use as
%% managed session policies. The plaintext that you use for both inline and
%% managed session
%% policies can't exceed 2,048 characters. Passing policies to this
%% operation returns new
%% temporary credentials. The resulting session's permissions are the
%% intersection of the
%% role's identity-based policy and the session policies. You can use the
%% role's temporary
%% credentials in subsequent Amazon Web Services API calls to access
%% resources in the account that owns
%% the role. You cannot use session policies to grant more permissions than
%% those allowed
%% by the identity-based policy of the role that is being assumed. For more
%% information, see
%% Session
%% Policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session
%% in the IAM User Guide.
%%
%% Calling `AssumeRoleWithSAML' does not require the use of Amazon Web
%% Services security
%% credentials. The identity of the caller is validated by using keys in the
%% metadata document
%% that is uploaded for the SAML provider entity for your identity provider.
%%
%% Calling `AssumeRoleWithSAML' can result in an entry in your CloudTrail
%% logs.
%% The entry includes the value in the `NameID' element of the SAML
%% assertion.
%% We recommend that you use a `NameIDType' that is not associated with
%% any
%% personally identifiable information (PII). For example, you could instead
%% use the
%% persistent identifier
%% (`urn:oasis:names:tc:SAML:2.0:nameid-format:persistent').
%%
%% Tags
%%
%% (Optional) You can configure your IdP to pass attributes into your SAML
%% assertion as
%% session tags. Each session tag consists of a key name and an associated
%% value. For more
%% information about session tags, see Passing Session Tags in STS:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html in
%% the
%% IAM User Guide.
%%
%% You can pass up to 50 session tags. The plaintext session tag keys can’t
%% exceed 128
%% characters and the values can’t exceed 256 characters. For these and
%% additional limits, see
%% IAM
%% and STS Character Limits:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length
%% in the IAM User Guide.
%%
%% An Amazon Web Services conversion compresses the passed inline session
%% policy, managed policy ARNs,
%% and session tags into a packed binary format that has a separate limit.
%% Your request can
%% fail for this limit even if your plaintext meets the other requirements.
%% The
%% `PackedPolicySize' response element indicates by percentage how close
%% the
%% policies and tags for your request are to the upper size limit.
%%
%% You can pass a session tag with the same key as a tag that is attached to
%% the role. When
%% you do, session tags override the role's tags with the same key.
%%
%% An administrator must grant you the permissions necessary to pass session
%% tags. The
%% administrator can also create granular permissions to allow you to pass
%% only specific
%% session tags. For more information, see Tutorial: Using Tags
%% for Attribute-Based Access Control:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html
%% in the
%% IAM User Guide.
%%
%% You can set the session tags as transitive. Transitive tags persist during
%% role
%% chaining. For more information, see Chaining Roles
%% with Session Tags:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining
%% in the IAM User Guide.
%%
%% SAML Configuration
%%
%% Before your application can call `AssumeRoleWithSAML', you must
%% configure
%% your SAML identity provider (IdP) to issue the claims required by Amazon
%% Web Services. Additionally, you
%% must use Identity and Access Management (IAM) to create a SAML provider
%% entity in your Amazon Web Services account that
%% represents your identity provider. You must also create an IAM role that
%% specifies this
%% SAML provider in its trust policy.
%%
%% For more information, see the following resources:
%%
%% About
%% SAML 2.0-based Federation:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html
%% in the IAM User Guide.
%%
%% Creating SAML Identity Providers:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml.html
%% in the
%% IAM User Guide.
%%
%% Configuring
%% a Relying Party and Claims:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml_relying-party.html
%% in the IAM User Guide.
%%
%% Creating a Role for SAML 2.0 Federation:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_saml.html
%% in the
%% IAM User Guide.
-spec assume_role_with_saml(aws_client:aws_client(), assume_role_with_saml_request()) ->
    {ok, assume_role_with_saml_response(), tuple()} |
    {error, any()} |
    {error, assume_role_with_saml_errors(), tuple()}.
assume_role_with_saml(Client, Input)
  when is_map(Client), is_map(Input) ->
    assume_role_with_saml(Client, Input, []).

-spec assume_role_with_saml(aws_client:aws_client(), assume_role_with_saml_request(), proplists:proplist()) ->
    {ok, assume_role_with_saml_response(), tuple()} |
    {error, any()} |
    {error, assume_role_with_saml_errors(), tuple()}.
assume_role_with_saml(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssumeRoleWithSAML">>, Input, Options).

%% @doc Returns a set of temporary security credentials for users who have
%% been authenticated in
%% a mobile or web application with a web identity provider.
%%
%% Example providers include the
%% OAuth 2.0 providers Login with Amazon and Facebook, or any OpenID
%% Connect-compatible
%% identity provider such as Google or Amazon Cognito federated identities:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html.
%%
%% For mobile applications, we recommend that you use Amazon Cognito. You can
%% use Amazon Cognito with the
%% Amazon Web Services SDK for iOS Developer Guide:
%% http://aws.amazon.com/sdkforios/ and the Amazon Web Services SDK for
%% Android Developer Guide: http://aws.amazon.com/sdkforandroid/ to uniquely
%% identify a user. You can also supply the user with a consistent identity
%% throughout the
%% lifetime of an application.
%%
%% To learn more about Amazon Cognito, see Amazon Cognito identity
%% pools:
%% https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html
%% in Amazon Cognito Developer Guide.
%%
%% Calling `AssumeRoleWithWebIdentity' does not require the use of Amazon
%% Web Services
%% security credentials. Therefore, you can distribute an application (for
%% example, on mobile
%% devices) that requests temporary security credentials without including
%% long-term Amazon Web Services
%% credentials in the application. You also don't need to deploy
%% server-based proxy services
%% that use long-term Amazon Web Services credentials. Instead, the identity
%% of the caller is validated by
%% using a token from the web identity provider. For a comparison of
%% `AssumeRoleWithWebIdentity' with the other API operations that produce
%% temporary credentials, see Requesting Temporary Security
%% Credentials:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html
%% and Compare STS
%% credentials:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_sts-comparison.html
%% in the IAM User Guide.
%%
%% The temporary security credentials returned by this API consist of an
%% access key ID, a
%% secret access key, and a security token. Applications can use these
%% temporary security
%% credentials to sign calls to Amazon Web Services service API operations.
%%
%% Session Duration
%%
%% By default, the temporary security credentials created by
%% `AssumeRoleWithWebIdentity' last for one hour. However, you can use
%% the
%% optional `DurationSeconds' parameter to specify the duration of your
%% session.
%% You can provide a value from 900 seconds (15 minutes) up to the maximum
%% session duration
%% setting for the role. This setting can have a value from 1 hour to 12
%% hours. To learn how
%% to view the maximum value for your role, see Update the maximum session
%% duration for a role :
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_update-role-settings.html#id_roles_update-session-duration
%% in the
%% IAM User Guide. The maximum session duration limit applies when
%% you use the `AssumeRole*' API operations or the `assume-role*' CLI
%% commands. However the limit does not apply when you use those operations
%% to create a
%% console URL. For more information, see Using IAM Roles:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html in the
%% IAM User Guide.
%%
%% Permissions
%%
%% The temporary security credentials created by
%% `AssumeRoleWithWebIdentity' can
%% be used to make API calls to any Amazon Web Services service with the
%% following exception: you cannot
%% call the STS `GetFederationToken' or `GetSessionToken' API
%% operations.
%%
%% (Optional) You can pass inline or managed session policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session
%% to
%% this operation. You can pass a single JSON policy document to use as an
%% inline session
%% policy. You can also specify up to 10 managed policy Amazon Resource Names
%% (ARNs) to use as
%% managed session policies. The plaintext that you use for both inline and
%% managed session
%% policies can't exceed 2,048 characters. Passing policies to this
%% operation returns new
%% temporary credentials. The resulting session's permissions are the
%% intersection of the
%% role's identity-based policy and the session policies. You can use the
%% role's temporary
%% credentials in subsequent Amazon Web Services API calls to access
%% resources in the account that owns
%% the role. You cannot use session policies to grant more permissions than
%% those allowed
%% by the identity-based policy of the role that is being assumed. For more
%% information, see
%% Session
%% Policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session
%% in the IAM User Guide.
%%
%% Tags
%%
%% (Optional) You can configure your IdP to pass attributes into your web
%% identity token as
%% session tags. Each session tag consists of a key name and an associated
%% value. For more
%% information about session tags, see Passing Session Tags in STS:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html in
%% the
%% IAM User Guide.
%%
%% You can pass up to 50 session tags. The plaintext session tag keys can’t
%% exceed 128
%% characters and the values can’t exceed 256 characters. For these and
%% additional limits, see
%% IAM
%% and STS Character Limits:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length
%% in the IAM User Guide.
%%
%% An Amazon Web Services conversion compresses the passed inline session
%% policy, managed policy ARNs,
%% and session tags into a packed binary format that has a separate limit.
%% Your request can
%% fail for this limit even if your plaintext meets the other requirements.
%% The
%% `PackedPolicySize' response element indicates by percentage how close
%% the
%% policies and tags for your request are to the upper size limit.
%%
%% You can pass a session tag with the same key as a tag that is attached to
%% the role. When
%% you do, the session tag overrides the role tag with the same key.
%%
%% An administrator must grant you the permissions necessary to pass session
%% tags. The
%% administrator can also create granular permissions to allow you to pass
%% only specific
%% session tags. For more information, see Tutorial: Using Tags
%% for Attribute-Based Access Control:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html
%% in the
%% IAM User Guide.
%%
%% You can set the session tags as transitive. Transitive tags persist during
%% role
%% chaining. For more information, see Chaining Roles
%% with Session Tags:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining
%% in the IAM User Guide.
%%
%% Identities
%%
%% Before your application can call `AssumeRoleWithWebIdentity', you must
%% have
%% an identity token from a supported identity provider and create a role
%% that the application
%% can assume. The role that your application assumes must trust the identity
%% provider that is
%% associated with the identity token. In other words, the identity provider
%% must be specified
%% in the role's trust policy.
%%
%% Calling `AssumeRoleWithWebIdentity' can result in an entry in your
%% CloudTrail logs. The entry includes the Subject:
%% http://openid.net/specs/openid-connect-core-1_0.html#Claims of
%% the provided web identity token. We recommend that you avoid using any
%% personally
%% identifiable information (PII) in this field. For example, you could
%% instead use a GUID
%% or a pairwise identifier, as suggested
%% in the OIDC specification:
%% http://openid.net/specs/openid-connect-core-1_0.html#SubjectIDTypes.
%%
%% For more information about how to use OIDC federation and the
%% `AssumeRoleWithWebIdentity' API, see the following resources:
%%
%% Using Web Identity Federation API Operations for Mobile Apps:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc_manual.html
%% and Federation Through a Web-based Identity Provider:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity.
%%
%% Amazon Web Services SDK for iOS Developer Guide:
%% http://aws.amazon.com/sdkforios/ and Amazon Web Services SDK for Android
%% Developer Guide: http://aws.amazon.com/sdkforandroid/. These toolkits
%% contain sample apps that show how to invoke the identity providers. The
%% toolkits then
%% show how to use the information from these providers to get and use
%% temporary
%% security credentials.
-spec assume_role_with_web_identity(aws_client:aws_client(), assume_role_with_web_identity_request()) ->
    {ok, assume_role_with_web_identity_response(), tuple()} |
    {error, any()} |
    {error, assume_role_with_web_identity_errors(), tuple()}.
assume_role_with_web_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    assume_role_with_web_identity(Client, Input, []).

-spec assume_role_with_web_identity(aws_client:aws_client(), assume_role_with_web_identity_request(), proplists:proplist()) ->
    {ok, assume_role_with_web_identity_response(), tuple()} |
    {error, any()} |
    {error, assume_role_with_web_identity_errors(), tuple()}.
assume_role_with_web_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssumeRoleWithWebIdentity">>, Input, Options).

%% @doc Returns a set of short term credentials you can use to perform
%% privileged tasks on a
%% member account in your organization.
%%
%% Before you can launch a privileged session, you must have centralized root
%% access in
%% your organization. For steps to enable this feature, see Centralize root
%% access for
%% member accounts:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_root-enable-root-access.html
%% in the IAM User Guide.
%%
%% The STS global endpoint is not supported for AssumeRoot. You must send
%% this request
%% to a Regional STS endpoint. For more information, see Endpoints:
%% https://docs.aws.amazon.com/STS/latest/APIReference/welcome.html#sts-endpoints.
%%
%% You can track AssumeRoot in CloudTrail logs to determine what actions were
%% performed in a
%% session. For more information, see Track privileged tasks
%% in CloudTrail:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-track-privileged-tasks.html
%% in the IAM User Guide.
-spec assume_root(aws_client:aws_client(), assume_root_request()) ->
    {ok, assume_root_response(), tuple()} |
    {error, any()} |
    {error, assume_root_errors(), tuple()}.
assume_root(Client, Input)
  when is_map(Client), is_map(Input) ->
    assume_root(Client, Input, []).

-spec assume_root(aws_client:aws_client(), assume_root_request(), proplists:proplist()) ->
    {ok, assume_root_response(), tuple()} |
    {error, any()} |
    {error, assume_root_errors(), tuple()}.
assume_root(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssumeRoot">>, Input, Options).

%% @doc Decodes additional information about the authorization status of a
%% request from an
%% encoded message returned in response to an Amazon Web Services request.
%%
%% For example, if a user is not authorized to perform an operation that he
%% or she has
%% requested, the request returns a `Client.UnauthorizedOperation'
%% response (an
%% HTTP 403 response). Some Amazon Web Services operations additionally
%% return an encoded message that can
%% provide details about this authorization failure.
%%
%% Only certain Amazon Web Services operations return an encoded
%% authorization message. The
%% documentation for an individual operation indicates whether that operation
%% returns an
%% encoded message in addition to returning an HTTP code.
%%
%% The message is encoded because the details of the authorization status can
%% contain
%% privileged information that the user who requested the operation should
%% not see. To decode
%% an authorization status message, a user must be granted permissions
%% through an IAM policy:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html to
%% request the `DecodeAuthorizationMessage'
%% (`sts:DecodeAuthorizationMessage') action.
%%
%% The decoded message includes the following type of information:
%%
%% Whether the request was denied due to an explicit deny or due to the
%% absence of an
%% explicit allow. For more information, see Determining Whether a Request is
%% Allowed or Denied:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-denyallow
%% in the
%% IAM User Guide.
%%
%% The principal who made the request.
%%
%% The requested action.
%%
%% The requested resource.
%%
%% The values of condition keys in the context of the user's request.
-spec decode_authorization_message(aws_client:aws_client(), decode_authorization_message_request()) ->
    {ok, decode_authorization_message_response(), tuple()} |
    {error, any()} |
    {error, decode_authorization_message_errors(), tuple()}.
decode_authorization_message(Client, Input)
  when is_map(Client), is_map(Input) ->
    decode_authorization_message(Client, Input, []).

-spec decode_authorization_message(aws_client:aws_client(), decode_authorization_message_request(), proplists:proplist()) ->
    {ok, decode_authorization_message_response(), tuple()} |
    {error, any()} |
    {error, decode_authorization_message_errors(), tuple()}.
decode_authorization_message(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DecodeAuthorizationMessage">>, Input, Options).

%% @doc Returns the account identifier for the specified access key ID.
%%
%% Access keys consist of two parts: an access key ID (for example,
%% `AKIAIOSFODNN7EXAMPLE') and a secret access key (for example,
%% `wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY'). For more information
%% about
%% access keys, see Managing Access Keys for IAM
%% Users:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html
%% in the IAM User Guide.
%%
%% When you pass an access key ID to this operation, it returns the ID of the
%% Amazon Web Services account
%% to which the keys belong. Access key IDs beginning with `AKIA' are
%% long-term
%% credentials for an IAM user or the Amazon Web Services account root user.
%% Access key IDs
%% beginning with `ASIA' are temporary credentials that are created using
%% STS
%% operations. If the account in the response belongs to you, you can sign in
%% as the root user and review your root user access keys. Then, you can pull
%% a credentials
%% report:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_getting-report.html
%% to learn which IAM user owns the keys. To learn who
%% requested the temporary credentials for an `ASIA' access key, view the
%% STS
%% events in your CloudTrail logs:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html
%% in the IAM User Guide.
%%
%% This operation does not indicate the state of the access key. The key
%% might be active,
%% inactive, or deleted. Active keys might not have permissions to perform an
%% operation.
%% Providing a deleted access key might return an error that the key
%% doesn't exist.
-spec get_access_key_info(aws_client:aws_client(), get_access_key_info_request()) ->
    {ok, get_access_key_info_response(), tuple()} |
    {error, any()}.
get_access_key_info(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_access_key_info(Client, Input, []).

-spec get_access_key_info(aws_client:aws_client(), get_access_key_info_request(), proplists:proplist()) ->
    {ok, get_access_key_info_response(), tuple()} |
    {error, any()}.
get_access_key_info(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccessKeyInfo">>, Input, Options).

%% @doc Returns details about the IAM user or role whose credentials are used
%% to
%% call the operation.
%%
%% No permissions are required to perform this operation. If an administrator
%% attaches a
%% policy to your identity that explicitly denies access to the
%% `sts:GetCallerIdentity' action, you can still perform this operation.
%% Permissions are not required because the same information is returned when
%% access is
%% denied. To view an example response, see I Am Not Authorized to Perform:
%% iam:DeleteVirtualMFADevice:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_access-denied-delete-mfa
%% in the
%% IAM User Guide.
-spec get_caller_identity(aws_client:aws_client(), get_caller_identity_request()) ->
    {ok, get_caller_identity_response(), tuple()} |
    {error, any()}.
get_caller_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_caller_identity(Client, Input, []).

-spec get_caller_identity(aws_client:aws_client(), get_caller_identity_request(), proplists:proplist()) ->
    {ok, get_caller_identity_response(), tuple()} |
    {error, any()}.
get_caller_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCallerIdentity">>, Input, Options).

%% @doc Returns a set of temporary security credentials (consisting of an
%% access key ID, a
%% secret access key, and a security token) for a user.
%%
%% A typical use is in a proxy
%% application that gets temporary security credentials on behalf of
%% distributed applications
%% inside a corporate network.
%%
%% You must call the `GetFederationToken' operation using the long-term
%% security
%% credentials of an IAM user. As a result, this call is appropriate in
%% contexts where those credentials can be safeguarded, usually in a
%% server-based application.
%% For a comparison of `GetFederationToken' with the other API operations
%% that
%% produce temporary credentials, see Requesting Temporary Security
%% Credentials:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html
%% and Compare STS
%% credentials:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_sts-comparison.html
%% in the IAM User Guide.
%%
%% Although it is possible to call `GetFederationToken' using the
%% security
%% credentials of an Amazon Web Services account root user rather than an IAM
%% user that you
%% create for the purpose of a proxy application, we do not recommend it. For
%% more
%% information, see Safeguard your root user credentials and don't use
%% them for everyday tasks:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#lock-away-credentials
%% in the
%% IAM User Guide.
%%
%% You can create a mobile-based or browser-based app that can authenticate
%% users using
%% a web identity provider like Login with Amazon, Facebook, Google, or an
%% OpenID
%% Connect-compatible identity provider. In this case, we recommend that you
%% use Amazon Cognito: http://aws.amazon.com/cognito/ or
%% `AssumeRoleWithWebIdentity'. For more information, see Federation
%% Through a Web-based Identity Provider:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity
%% in the
%% IAM User Guide.
%%
%% Session duration
%%
%% The temporary credentials are valid for the specified duration, from 900
%% seconds (15
%% minutes) up to a maximum of 129,600 seconds (36 hours). The default
%% session duration is
%% 43,200 seconds (12 hours). Temporary credentials obtained by using the
%% root user
%% credentials have a maximum duration of 3,600 seconds (1 hour).
%%
%% Permissions
%%
%% You can use the temporary credentials created by `GetFederationToken'
%% in any
%% Amazon Web Services service with the following exceptions:
%%
%% You cannot call any IAM operations using the CLI or the Amazon Web
%% Services API. This
%% limitation does not apply to console sessions.
%%
%% You cannot call any STS operations except `GetCallerIdentity'.
%%
%% You can use temporary credentials for single sign-on (SSO) to the console.
%%
%% You must pass an inline or managed session policy:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session
%% to
%% this operation. You can pass a single JSON policy document to use as an
%% inline session
%% policy. You can also specify up to 10 managed policy Amazon Resource Names
%% (ARNs) to use as
%% managed session policies. The plaintext that you use for both inline and
%% managed session
%% policies can't exceed 2,048 characters.
%%
%% Though the session policy parameters are optional, if you do not pass a
%% policy, then the
%% resulting federated user session has no permissions. When you pass session
%% policies, the
%% session permissions are the intersection of the IAM user policies and the
%% session policies that you pass. This gives you a way to further restrict
%% the permissions
%% for a federated user. You cannot use session policies to grant more
%% permissions than those
%% that are defined in the permissions policy of the IAM user. For more
%% information, see Session Policies:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session
%% in
%% the IAM User Guide. For information about using
%% `GetFederationToken' to create temporary security credentials, see
%% GetFederationToken—Federation Through a Custom Identity Broker:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getfederationtoken.
%%
%% You can use the credentials to access a resource that has a resource-based
%% policy. If
%% that policy specifically references the federated user session in the
%% `Principal' element of the policy, the session has the permissions
%% allowed by
%% the policy. These permissions are granted in addition to the permissions
%% granted by the
%% session policies.
%%
%% Tags
%%
%% (Optional) You can pass tag key-value pairs to your session. These are
%% called session
%% tags. For more information about session tags, see Passing Session Tags in
%% STS: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html
%% in the
%% IAM User Guide.
%%
%% You can create a mobile-based or browser-based app that can authenticate
%% users using
%% a web identity provider like Login with Amazon, Facebook, Google, or an
%% OpenID
%% Connect-compatible identity provider. In this case, we recommend that you
%% use Amazon Cognito: http://aws.amazon.com/cognito/ or
%% `AssumeRoleWithWebIdentity'. For more information, see Federation
%% Through a Web-based Identity Provider:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity
%% in the
%% IAM User Guide.
%%
%% An administrator must grant you the permissions necessary to pass session
%% tags. The
%% administrator can also create granular permissions to allow you to pass
%% only specific
%% session tags. For more information, see Tutorial: Using Tags
%% for Attribute-Based Access Control:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html
%% in the
%% IAM User Guide.
%%
%% Tag key–value pairs are not case sensitive, but case is preserved. This
%% means that you
%% cannot have separate `Department' and `department' tag keys.
%% Assume
%% that the user that you are federating has the
%% `Department'=`Marketing' tag and you pass the
%% `department'=`engineering' session tag. `Department'
%% and `department' are not saved as separate tags, and the session tag
%% passed in
%% the request takes precedence over the user tag.
-spec get_federation_token(aws_client:aws_client(), get_federation_token_request()) ->
    {ok, get_federation_token_response(), tuple()} |
    {error, any()} |
    {error, get_federation_token_errors(), tuple()}.
get_federation_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_federation_token(Client, Input, []).

-spec get_federation_token(aws_client:aws_client(), get_federation_token_request(), proplists:proplist()) ->
    {ok, get_federation_token_response(), tuple()} |
    {error, any()} |
    {error, get_federation_token_errors(), tuple()}.
get_federation_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFederationToken">>, Input, Options).

%% @doc Returns a set of temporary credentials for an Amazon Web Services
%% account or IAM user.
%%
%% The credentials consist of an access key ID, a secret access key, and a
%% security token.
%% Typically, you use `GetSessionToken' if you want to use MFA to protect
%% programmatic calls to specific Amazon Web Services API operations like
%% Amazon EC2
%% `StopInstances'.
%%
%% MFA-enabled IAM users must call `GetSessionToken' and submit
%% an MFA code that is associated with their MFA device. Using the temporary
%% security
%% credentials that the call returns, IAM users can then make programmatic
%% calls to API operations that require MFA authentication. An incorrect MFA
%% code causes the
%% API to return an access denied error. For a comparison of
%% `GetSessionToken' with
%% the other API operations that produce temporary credentials, see
%% Requesting
%% Temporary Security Credentials:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html
%% and Compare STS
%% credentials:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_sts-comparison.html
%% in the IAM User Guide.
%%
%% No permissions are required for users to perform this operation. The
%% purpose of the
%% `sts:GetSessionToken' operation is to authenticate the user using MFA.
%% You
%% cannot use policies to control authentication operations. For more
%% information, see
%% Permissions for GetSessionToken:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_getsessiontoken.html
%% in the
%% IAM User Guide.
%%
%% Session Duration
%%
%% The `GetSessionToken' operation must be called by using the long-term
%% Amazon Web Services
%% security credentials of an IAM user. Credentials that are created by IAM
%% users are valid for the duration that you specify. This duration can range
%% from 900 seconds (15 minutes) up to a maximum of 129,600 seconds (36
%% hours), with a default
%% of 43,200 seconds (12 hours). Credentials based on account credentials can
%% range from 900
%% seconds (15 minutes) up to 3,600 seconds (1 hour), with a default of 1
%% hour.
%%
%% Permissions
%%
%% The temporary security credentials created by `GetSessionToken' can be
%% used
%% to make API calls to any Amazon Web Services service with the following
%% exceptions:
%%
%% You cannot call any IAM API operations unless MFA authentication
%% information is
%% included in the request.
%%
%% You cannot call any STS API except
%% `AssumeRole' or `GetCallerIdentity'.
%%
%% The credentials that `GetSessionToken' returns are based on
%% permissions
%% associated with the IAM user whose credentials were used to call the
%% operation. The temporary credentials have the same permissions as the IAM
%% user.
%%
%% Although it is possible to call `GetSessionToken' using the security
%% credentials of an Amazon Web Services account root user rather than an IAM
%% user, we do
%% not recommend it. If `GetSessionToken' is called using root user
%% credentials, the temporary credentials have root user permissions. For
%% more
%% information, see Safeguard your root user credentials and don't use
%% them for everyday tasks:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#lock-away-credentials
%% in the
%% IAM User Guide
%%
%% For more information about using `GetSessionToken' to create temporary
%% credentials, see Temporary
%% Credentials for Users in Untrusted Environments:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getsessiontoken
%% in the
%% IAM User Guide.
-spec get_session_token(aws_client:aws_client(), get_session_token_request()) ->
    {ok, get_session_token_response(), tuple()} |
    {error, any()} |
    {error, get_session_token_errors(), tuple()}.
get_session_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_session_token(Client, Input, []).

-spec get_session_token(aws_client:aws_client(), get_session_token_request(), proplists:proplist()) ->
    {ok, get_session_token_response(), tuple()} |
    {error, any()} |
    {error, get_session_token_errors(), tuple()}.
get_session_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSessionToken">>, Input, Options).

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
    Client1 = Client#{service => <<"sts">>},
    Host = build_host(<<"sts">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],

    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2011-06-15">>
                   },

    Payload = aws_util:encode_query(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = aws_util:decode_xml(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
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
