%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc <fullname>AWS Security Token Service</fullname>
%%
%% The AWS Security Token Service (STS) is a web service that enables you to
%% request temporary, limited-privilege credentials for AWS Identity and
%% Access Management (IAM) users or for users that you authenticate
%% (federated users). This guide provides descriptions of the STS API. For
%% more detailed information about using this service, go to <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html">Temporary
%% Security Credentials</a>.
%%
%% For information about setting up signatures and authorization through the
%% API, go to <a
%% href="https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html">Signing
%% AWS API Requests</a> in the <i>AWS General Reference</i>. For general
%% information about the Query API, go to <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making
%% Query Requests</a> in <i>Using IAM</i>. For information about using
%% security tokens with other AWS products, go to <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html">AWS
%% Services That Work with IAM</a> in the <i>IAM User Guide</i>.
%%
%% If you're new to AWS and need additional technical information about a
%% specific AWS product, you can find the product's technical documentation
%% at <a
%% href="http://aws.amazon.com/documentation/">http://aws.amazon.com/documentation/</a>.
%%
%% <b>Endpoints</b>
%%
%% By default, AWS Security Token Service (STS) is available as a global
%% service, and all AWS STS requests go to a single endpoint at
%% <code>https://sts.amazonaws.com</code>. Global requests map to the US East
%% (N. Virginia) region. AWS recommends using Regional AWS STS endpoints
%% instead of the global endpoint to reduce latency, build in redundancy, and
%% increase session token validity. For more information, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Managing
%% AWS STS in an AWS Region</a> in the <i>IAM User Guide</i>.
%%
%% Most AWS Regions are enabled for operations in all AWS services by
%% default. Those Regions are automatically activated for use with AWS STS.
%% Some Regions, such as Asia Pacific (Hong Kong), must be manually enabled.
%% To learn more about enabling and disabling AWS Regions, see <a
%% href="https://docs.aws.amazon.com/general/latest/gr/rande-manage.html">Managing
%% AWS Regions</a> in the <i>AWS General Reference</i>. When you enable these
%% AWS Regions, they are automatically activated for use with AWS STS. You
%% cannot activate the STS endpoint for a Region that is disabled. Tokens
%% that are valid in all AWS Regions are longer than tokens that are valid in
%% Regions that are enabled by default. Changing this setting might affect
%% existing systems where you temporarily store tokens. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html#sts-regions-manage-tokens">Managing
%% Global Endpoint Session Tokens</a> in the <i>IAM User Guide</i>.
%%
%% After you activate a Region for use with AWS STS, you can direct AWS STS
%% API calls to that Region. AWS STS recommends that you provide both the
%% Region and endpoint when you make calls to a Regional endpoint. You can
%% provide the Region alone for manually enabled Regions, such as Asia
%% Pacific (Hong Kong). In this case, the calls are directed to the STS
%% Regional endpoint. However, if you provide the Region alone for Regions
%% enabled by default, the calls are directed to the global endpoint of
%% <code>https://sts.amazonaws.com</code>.
%%
%% To view the list of AWS STS endpoints and whether they are active by
%% default, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html#id_credentials_temp_enable-regions_writing_code">Writing
%% Code to Use AWS STS Regions</a> in the <i>IAM User Guide</i>.
%%
%% <b>Recording API requests</b>
%%
%% STS supports AWS CloudTrail, which is a service that records AWS calls for
%% your AWS account and delivers log files to an Amazon S3 bucket. By using
%% information collected by CloudTrail, you can determine what requests were
%% successfully made to STS, who made the request, when it was made, and so
%% on.
%%
%% If you activate AWS STS endpoints in Regions other than the default global
%% endpoint, then you must also turn on CloudTrail logging in those Regions.
%% This is necessary to record any AWS STS API calls that are made in those
%% Regions. For more information, see <a
%% href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/aggregating_logs_regions_turn_on_ct.html">Turning
%% On CloudTrail in Additional Regions</a> in the <i>AWS CloudTrail User
%% Guide</i>.
%%
%% AWS Security Token Service (STS) is a global service with a single
%% endpoint at <code>https://sts.amazonaws.com</code>. Calls to this endpoint
%% are logged as calls to a global service. However, because this endpoint is
%% physically located in the US East (N. Virginia) Region, your logs list
%% <code>us-east-1</code> as the event Region. CloudTrail does not write
%% these logs to the US East (Ohio) Region unless you choose to include
%% global service logs in that Region. CloudTrail writes calls to all
%% Regional endpoints to their respective Regions. For example, calls to
%% sts.us-east-2.amazonaws.com are published to the US East (Ohio) Region and
%% calls to sts.eu-central-1.amazonaws.com are published to the EU
%% (Frankfurt) Region.
%%
%% To learn more about CloudTrail, including how to turn it on and find your
%% log files, see the <a
%% href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html">AWS
%% CloudTrail User Guide</a>.
-module(aws_sts).

-export([assume_role/2,
         assume_role/3,
         assume_role_with_s_a_m_l/2,
         assume_role_with_s_a_m_l/3,
         assume_role_with_web_identity/2,
         assume_role_with_web_identity/3,
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

%%====================================================================
%% API
%%====================================================================

%% @doc Returns a set of temporary security credentials that you can use to
%% access AWS resources that you might not normally have access to. These
%% temporary credentials consist of an access key ID, a secret access key,
%% and a security token. Typically, you use <code>AssumeRole</code> within
%% your account or for cross-account access. For a comparison of
%% <code>AssumeRole</code> with other API operations that produce temporary
%% credentials, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting
%% Temporary Security Credentials</a> and <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison">Comparing
%% the AWS STS API operations</a> in the <i>IAM User Guide</i>.
%%
%% <important> You cannot use AWS account root user credentials to call
%% <code>AssumeRole</code>. You must use credentials for an IAM user or an
%% IAM role to call <code>AssumeRole</code>.
%%
%% </important> For cross-account access, imagine that you own multiple
%% accounts and need to access resources in each account. You could create
%% long-term credentials in each account to access those resources. However,
%% managing all those credentials and remembering which one can access which
%% account can be time consuming. Instead, you can create one set of
%% long-term credentials in one account. Then use temporary security
%% credentials to access all the other accounts by assuming roles in those
%% accounts. For more information about roles, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM
%% Roles</a> in the <i>IAM User Guide</i>.
%%
%% <b>Session Duration</b>
%%
%% By default, the temporary security credentials created by
%% <code>AssumeRole</code> last for one hour. However, you can use the
%% optional <code>DurationSeconds</code> parameter to specify the duration of
%% your session. You can provide a value from 900 seconds (15 minutes) up to
%% the maximum session duration setting for the role. This setting can have a
%% value from 1 hour to 12 hours. To learn how to view the maximum value for
%% your role, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session">View
%% the Maximum Session Duration Setting for a Role</a> in the <i>IAM User
%% Guide</i>. The maximum session duration limit applies when you use the
%% <code>AssumeRole*</code> API operations or the <code>assume-role*</code>
%% CLI commands. However the limit does not apply when you use those
%% operations to create a console URL. For more information, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html">Using
%% IAM Roles</a> in the <i>IAM User Guide</i>.
%%
%% <b>Permissions</b>
%%
%% The temporary security credentials created by <code>AssumeRole</code> can
%% be used to make API calls to any AWS service with the following exception:
%% You cannot call the AWS STS <code>GetFederationToken</code> or
%% <code>GetSessionToken</code> API operations.
%%
%% (Optional) You can pass inline or managed <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">session
%% policies</a> to this operation. You can pass a single JSON policy document
%% to use as an inline session policy. You can also specify up to 10 managed
%% policies to use as managed session policies. The plain text that you use
%% for both inline and managed session policies can't exceed 2,048
%% characters. Passing policies to this operation returns new temporary
%% credentials. The resulting session's permissions are the intersection of
%% the role's identity-based policy and the session policies. You can use the
%% role's temporary credentials in subsequent AWS API calls to access
%% resources in the account that owns the role. You cannot use session
%% policies to grant more permissions than those allowed by the
%% identity-based policy of the role that is being assumed. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
%% Policies</a> in the <i>IAM User Guide</i>.
%%
%% To assume a role from a different account, your AWS account must be
%% trusted by the role. The trust relationship is defined in the role's trust
%% policy when the role is created. That trust policy states which accounts
%% are allowed to delegate that access to users in the account.
%%
%% A user who wants to access a role in a different account must also have
%% permissions that are delegated from the user account administrator. The
%% administrator must attach a policy that allows the user to call
%% <code>AssumeRole</code> for the ARN of the role in the other account. If
%% the user is in the same account as the role, then you can do either of the
%% following:
%%
%% <ul> <li> Attach a policy to the user (identical to the previous user in a
%% different account).
%%
%% </li> <li> Add the user as a principal directly in the role's trust
%% policy.
%%
%% </li> </ul> In this case, the trust policy acts as an IAM resource-based
%% policy. Users in the same account as the role do not need explicit
%% permission to assume the role. For more information about trust policies
%% and resource-based policies, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html">IAM
%% Policies</a> in the <i>IAM User Guide</i>.
%%
%% <b>Tags</b>
%%
%% (Optional) You can pass tag key-value pairs to your session. These tags
%% are called session tags. For more information about session tags, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Passing
%% Session Tags in STS</a> in the <i>IAM User Guide</i>.
%%
%% An administrator must grant you the permissions necessary to pass session
%% tags. The administrator can also create granular permissions to allow you
%% to pass only specific session tags. For more information, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html">Tutorial:
%% Using Tags for Attribute-Based Access Control</a> in the <i>IAM User
%% Guide</i>.
%%
%% You can set the session tags as transitive. Transitive tags persist during
%% role chaining. For more information, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining">Chaining
%% Roles with Session Tags</a> in the <i>IAM User Guide</i>.
%%
%% <b>Using MFA with AssumeRole</b>
%%
%% (Optional) You can include multi-factor authentication (MFA) information
%% when you call <code>AssumeRole</code>. This is useful for cross-account
%% scenarios to ensure that the user that assumes the role has been
%% authenticated with an AWS MFA device. In that scenario, the trust policy
%% of the role being assumed includes a condition that tests for MFA
%% authentication. If the caller does not include valid MFA information, the
%% request to assume the role is denied. The condition in a trust policy that
%% tests for MFA authentication might look like the following example.
%%
%% <code>"Condition": {"Bool": {"aws:MultiFactorAuthPresent": true}}</code>
%%
%% For more information, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/MFAProtectedAPI.html">Configuring
%% MFA-Protected API Access</a> in the <i>IAM User Guide</i> guide.
%%
%% To use MFA with <code>AssumeRole</code>, you pass values for the
%% <code>SerialNumber</code> and <code>TokenCode</code> parameters. The
%% <code>SerialNumber</code> value identifies the user's hardware or virtual
%% MFA device. The <code>TokenCode</code> is the time-based one-time password
%% (TOTP) that the MFA device produces.
assume_role(Client, Input)
  when is_map(Client), is_map(Input) ->
    assume_role(Client, Input, []).
assume_role(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssumeRole">>, Input, Options).

%% @doc Returns a set of temporary security credentials for users who have
%% been authenticated via a SAML authentication response. This operation
%% provides a mechanism for tying an enterprise identity store or directory
%% to role-based AWS access without user-specific credentials or
%% configuration. For a comparison of <code>AssumeRoleWithSAML</code> with
%% the other API operations that produce temporary credentials, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting
%% Temporary Security Credentials</a> and <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison">Comparing
%% the AWS STS API operations</a> in the <i>IAM User Guide</i>.
%%
%% The temporary security credentials returned by this operation consist of
%% an access key ID, a secret access key, and a security token. Applications
%% can use these temporary security credentials to sign calls to AWS
%% services.
%%
%% <b>Session Duration</b>
%%
%% By default, the temporary security credentials created by
%% <code>AssumeRoleWithSAML</code> last for one hour. However, you can use
%% the optional <code>DurationSeconds</code> parameter to specify the
%% duration of your session. Your role session lasts for the duration that
%% you specify, or until the time specified in the SAML authentication
%% response's <code>SessionNotOnOrAfter</code> value, whichever is shorter.
%% You can provide a <code>DurationSeconds</code> value from 900 seconds (15
%% minutes) up to the maximum session duration setting for the role. This
%% setting can have a value from 1 hour to 12 hours. To learn how to view the
%% maximum value for your role, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session">View
%% the Maximum Session Duration Setting for a Role</a> in the <i>IAM User
%% Guide</i>. The maximum session duration limit applies when you use the
%% <code>AssumeRole*</code> API operations or the <code>assume-role*</code>
%% CLI commands. However the limit does not apply when you use those
%% operations to create a console URL. For more information, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html">Using
%% IAM Roles</a> in the <i>IAM User Guide</i>.
%%
%% <b>Permissions</b>
%%
%% The temporary security credentials created by
%% <code>AssumeRoleWithSAML</code> can be used to make API calls to any AWS
%% service with the following exception: you cannot call the STS
%% <code>GetFederationToken</code> or <code>GetSessionToken</code> API
%% operations.
%%
%% (Optional) You can pass inline or managed <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">session
%% policies</a> to this operation. You can pass a single JSON policy document
%% to use as an inline session policy. You can also specify up to 10 managed
%% policies to use as managed session policies. The plain text that you use
%% for both inline and managed session policies can't exceed 2,048
%% characters. Passing policies to this operation returns new temporary
%% credentials. The resulting session's permissions are the intersection of
%% the role's identity-based policy and the session policies. You can use the
%% role's temporary credentials in subsequent AWS API calls to access
%% resources in the account that owns the role. You cannot use session
%% policies to grant more permissions than those allowed by the
%% identity-based policy of the role that is being assumed. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
%% Policies</a> in the <i>IAM User Guide</i>.
%%
%% Calling <code>AssumeRoleWithSAML</code> does not require the use of AWS
%% security credentials. The identity of the caller is validated by using
%% keys in the metadata document that is uploaded for the SAML provider
%% entity for your identity provider.
%%
%% <important> Calling <code>AssumeRoleWithSAML</code> can result in an entry
%% in your AWS CloudTrail logs. The entry includes the value in the
%% <code>NameID</code> element of the SAML assertion. We recommend that you
%% use a <code>NameIDType</code> that is not associated with any personally
%% identifiable information (PII). For example, you could instead use the
%% persistent identifier
%% (<code>urn:oasis:names:tc:SAML:2.0:nameid-format:persistent</code>).
%%
%% </important> <b>Tags</b>
%%
%% (Optional) You can configure your IdP to pass attributes into your SAML
%% assertion as session tags. Each session tag consists of a key name and an
%% associated value. For more information about session tags, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Passing
%% Session Tags in STS</a> in the <i>IAM User Guide</i>.
%%
%% You can pass up to 50 session tags. The plain text session tag keys can’t
%% exceed 128 characters and the values can’t exceed 256 characters. For
%% these and additional limits, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length">IAM
%% and STS Character Limits</a> in the <i>IAM User Guide</i>.
%%
%% <note> An AWS conversion compresses the passed session policies and
%% session tags into a packed binary format that has a separate limit. Your
%% request can fail for this limit even if your plain text meets the other
%% requirements. The <code>PackedPolicySize</code> response element indicates
%% by percentage how close the policies and tags for your request are to the
%% upper size limit.
%%
%% </note> You can pass a session tag with the same key as a tag that is
%% attached to the role. When you do, session tags override the role's tags
%% with the same key.
%%
%% An administrator must grant you the permissions necessary to pass session
%% tags. The administrator can also create granular permissions to allow you
%% to pass only specific session tags. For more information, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html">Tutorial:
%% Using Tags for Attribute-Based Access Control</a> in the <i>IAM User
%% Guide</i>.
%%
%% You can set the session tags as transitive. Transitive tags persist during
%% role chaining. For more information, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining">Chaining
%% Roles with Session Tags</a> in the <i>IAM User Guide</i>.
%%
%% <b>SAML Configuration</b>
%%
%% Before your application can call <code>AssumeRoleWithSAML</code>, you must
%% configure your SAML identity provider (IdP) to issue the claims required
%% by AWS. Additionally, you must use AWS Identity and Access Management
%% (IAM) to create a SAML provider entity in your AWS account that represents
%% your identity provider. You must also create an IAM role that specifies
%% this SAML provider in its trust policy.
%%
%% For more information, see the following resources:
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html">About
%% SAML 2.0-based Federation</a> in the <i>IAM User Guide</i>.
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml.html">Creating
%% SAML Identity Providers</a> in the <i>IAM User Guide</i>.
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_create_saml_relying-party.html">Configuring
%% a Relying Party and Claims</a> in the <i>IAM User Guide</i>.
%%
%% </li> <li> <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_saml.html">Creating
%% a Role for SAML 2.0 Federation</a> in the <i>IAM User Guide</i>.
%%
%% </li> </ul>
assume_role_with_s_a_m_l(Client, Input)
  when is_map(Client), is_map(Input) ->
    assume_role_with_s_a_m_l(Client, Input, []).
assume_role_with_s_a_m_l(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssumeRoleWithSAML">>, Input, Options).

%% @doc Returns a set of temporary security credentials for users who have
%% been authenticated in a mobile or web application with a web identity
%% provider. Example providers include Amazon Cognito, Login with Amazon,
%% Facebook, Google, or any OpenID Connect-compatible identity provider.
%%
%% <note> For mobile applications, we recommend that you use Amazon Cognito.
%% You can use Amazon Cognito with the <a
%% href="http://aws.amazon.com/sdkforios/">AWS SDK for iOS Developer
%% Guide</a> and the <a href="http://aws.amazon.com/sdkforandroid/">AWS SDK
%% for Android Developer Guide</a> to uniquely identify a user. You can also
%% supply the user with a consistent identity throughout the lifetime of an
%% application.
%%
%% To learn more about Amazon Cognito, see <a
%% href="https://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/cognito-auth.html#d0e840">Amazon
%% Cognito Overview</a> in <i>AWS SDK for Android Developer Guide</i> and <a
%% href="https://docs.aws.amazon.com/mobile/sdkforios/developerguide/cognito-auth.html#d0e664">Amazon
%% Cognito Overview</a> in the <i>AWS SDK for iOS Developer Guide</i>.
%%
%% </note> Calling <code>AssumeRoleWithWebIdentity</code> does not require
%% the use of AWS security credentials. Therefore, you can distribute an
%% application (for example, on mobile devices) that requests temporary
%% security credentials without including long-term AWS credentials in the
%% application. You also don't need to deploy server-based proxy services
%% that use long-term AWS credentials. Instead, the identity of the caller is
%% validated by using a token from the web identity provider. For a
%% comparison of <code>AssumeRoleWithWebIdentity</code> with the other API
%% operations that produce temporary credentials, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting
%% Temporary Security Credentials</a> and <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison">Comparing
%% the AWS STS API operations</a> in the <i>IAM User Guide</i>.
%%
%% The temporary security credentials returned by this API consist of an
%% access key ID, a secret access key, and a security token. Applications can
%% use these temporary security credentials to sign calls to AWS service API
%% operations.
%%
%% <b>Session Duration</b>
%%
%% By default, the temporary security credentials created by
%% <code>AssumeRoleWithWebIdentity</code> last for one hour. However, you can
%% use the optional <code>DurationSeconds</code> parameter to specify the
%% duration of your session. You can provide a value from 900 seconds (15
%% minutes) up to the maximum session duration setting for the role. This
%% setting can have a value from 1 hour to 12 hours. To learn how to view the
%% maximum value for your role, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html#id_roles_use_view-role-max-session">View
%% the Maximum Session Duration Setting for a Role</a> in the <i>IAM User
%% Guide</i>. The maximum session duration limit applies when you use the
%% <code>AssumeRole*</code> API operations or the <code>assume-role*</code>
%% CLI commands. However the limit does not apply when you use those
%% operations to create a console URL. For more information, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html">Using
%% IAM Roles</a> in the <i>IAM User Guide</i>.
%%
%% <b>Permissions</b>
%%
%% The temporary security credentials created by
%% <code>AssumeRoleWithWebIdentity</code> can be used to make API calls to
%% any AWS service with the following exception: you cannot call the STS
%% <code>GetFederationToken</code> or <code>GetSessionToken</code> API
%% operations.
%%
%% (Optional) You can pass inline or managed <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">session
%% policies</a> to this operation. You can pass a single JSON policy document
%% to use as an inline session policy. You can also specify up to 10 managed
%% policies to use as managed session policies. The plain text that you use
%% for both inline and managed session policies can't exceed 2,048
%% characters. Passing policies to this operation returns new temporary
%% credentials. The resulting session's permissions are the intersection of
%% the role's identity-based policy and the session policies. You can use the
%% role's temporary credentials in subsequent AWS API calls to access
%% resources in the account that owns the role. You cannot use session
%% policies to grant more permissions than those allowed by the
%% identity-based policy of the role that is being assumed. For more
%% information, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
%% Policies</a> in the <i>IAM User Guide</i>.
%%
%% <b>Tags</b>
%%
%% (Optional) You can configure your IdP to pass attributes into your web
%% identity token as session tags. Each session tag consists of a key name
%% and an associated value. For more information about session tags, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Passing
%% Session Tags in STS</a> in the <i>IAM User Guide</i>.
%%
%% You can pass up to 50 session tags. The plain text session tag keys can’t
%% exceed 128 characters and the values can’t exceed 256 characters. For
%% these and additional limits, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-limits.html#reference_iam-limits-entity-length">IAM
%% and STS Character Limits</a> in the <i>IAM User Guide</i>.
%%
%% <note> An AWS conversion compresses the passed session policies and
%% session tags into a packed binary format that has a separate limit. Your
%% request can fail for this limit even if your plain text meets the other
%% requirements. The <code>PackedPolicySize</code> response element indicates
%% by percentage how close the policies and tags for your request are to the
%% upper size limit.
%%
%% </note> You can pass a session tag with the same key as a tag that is
%% attached to the role. When you do, the session tag overrides the role tag
%% with the same key.
%%
%% An administrator must grant you the permissions necessary to pass session
%% tags. The administrator can also create granular permissions to allow you
%% to pass only specific session tags. For more information, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html">Tutorial:
%% Using Tags for Attribute-Based Access Control</a> in the <i>IAM User
%% Guide</i>.
%%
%% You can set the session tags as transitive. Transitive tags persist during
%% role chaining. For more information, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html#id_session-tags_role-chaining">Chaining
%% Roles with Session Tags</a> in the <i>IAM User Guide</i>.
%%
%% <b>Identities</b>
%%
%% Before your application can call <code>AssumeRoleWithWebIdentity</code>,
%% you must have an identity token from a supported identity provider and
%% create a role that the application can assume. The role that your
%% application assumes must trust the identity provider that is associated
%% with the identity token. In other words, the identity provider must be
%% specified in the role's trust policy.
%%
%% <important> Calling <code>AssumeRoleWithWebIdentity</code> can result in
%% an entry in your AWS CloudTrail logs. The entry includes the <a
%% href="http://openid.net/specs/openid-connect-core-1_0.html#Claims">Subject</a>
%% of the provided Web Identity Token. We recommend that you avoid using any
%% personally identifiable information (PII) in this field. For example, you
%% could instead use a GUID or a pairwise identifier, as <a
%% href="http://openid.net/specs/openid-connect-core-1_0.html#SubjectIDTypes">suggested
%% in the OIDC specification</a>.
%%
%% </important> For more information about how to use web identity federation
%% and the <code>AssumeRoleWithWebIdentity</code> API, see the following
%% resources:
%%
%% <ul> <li> <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc_manual.html">Using
%% Web Identity Federation API Operations for Mobile Apps</a> and <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity">Federation
%% Through a Web-based Identity Provider</a>.
%%
%% </li> <li> <a
%% href="https://web-identity-federation-playground.s3.amazonaws.com/index.html">
%% Web Identity Federation Playground</a>. Walk through the process of
%% authenticating through Login with Amazon, Facebook, or Google, getting
%% temporary security credentials, and then using those credentials to make a
%% request to AWS.
%%
%% </li> <li> <a href="http://aws.amazon.com/sdkforios/">AWS SDK for iOS
%% Developer Guide</a> and <a href="http://aws.amazon.com/sdkforandroid/">AWS
%% SDK for Android Developer Guide</a>. These toolkits contain sample apps
%% that show how to invoke the identity providers. The toolkits then show how
%% to use the information from these providers to get and use temporary
%% security credentials.
%%
%% </li> <li> <a
%% href="http://aws.amazon.com/articles/web-identity-federation-with-mobile-applications">Web
%% Identity Federation with Mobile Applications</a>. This article discusses
%% web identity federation and shows an example of how to use web identity
%% federation to get access to content in Amazon S3.
%%
%% </li> </ul>
assume_role_with_web_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    assume_role_with_web_identity(Client, Input, []).
assume_role_with_web_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssumeRoleWithWebIdentity">>, Input, Options).

%% @doc Decodes additional information about the authorization status of a
%% request from an encoded message returned in response to an AWS request.
%%
%% For example, if a user is not authorized to perform an operation that he
%% or she has requested, the request returns a
%% <code>Client.UnauthorizedOperation</code> response (an HTTP 403 response).
%% Some AWS operations additionally return an encoded message that can
%% provide details about this authorization failure.
%%
%% <note> Only certain AWS operations return an encoded authorization
%% message. The documentation for an individual operation indicates whether
%% that operation returns an encoded message in addition to returning an HTTP
%% code.
%%
%% </note> The message is encoded because the details of the authorization
%% status can constitute privileged information that the user who requested
%% the operation should not see. To decode an authorization status message, a
%% user must be granted permissions via an IAM policy to request the
%% <code>DecodeAuthorizationMessage</code>
%% (<code>sts:DecodeAuthorizationMessage</code>) action.
%%
%% The decoded message includes the following type of information:
%%
%% <ul> <li> Whether the request was denied due to an explicit deny or due to
%% the absence of an explicit allow. For more information, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-denyallow">Determining
%% Whether a Request is Allowed or Denied</a> in the <i>IAM User Guide</i>.
%%
%% </li> <li> The principal who made the request.
%%
%% </li> <li> The requested action.
%%
%% </li> <li> The requested resource.
%%
%% </li> <li> The values of condition keys in the context of the user's
%% request.
%%
%% </li> </ul>
decode_authorization_message(Client, Input)
  when is_map(Client), is_map(Input) ->
    decode_authorization_message(Client, Input, []).
decode_authorization_message(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DecodeAuthorizationMessage">>, Input, Options).

%% @doc Returns the account identifier for the specified access key ID.
%%
%% Access keys consist of two parts: an access key ID (for example,
%% <code>AKIAIOSFODNN7EXAMPLE</code>) and a secret access key (for example,
%% <code>wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY</code>). For more
%% information about access keys, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html">Managing
%% Access Keys for IAM Users</a> in the <i>IAM User Guide</i>.
%%
%% When you pass an access key ID to this operation, it returns the ID of the
%% AWS account to which the keys belong. Access key IDs beginning with
%% <code>AKIA</code> are long-term credentials for an IAM user or the AWS
%% account root user. Access key IDs beginning with <code>ASIA</code> are
%% temporary credentials that are created using STS operations. If the
%% account in the response belongs to you, you can sign in as the root user
%% and review your root user access keys. Then, you can pull a <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_getting-report.html">credentials
%% report</a> to learn which IAM user owns the keys. To learn who requested
%% the temporary credentials for an <code>ASIA</code> access key, view the
%% STS events in your <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html">CloudTrail
%% logs</a> in the <i>IAM User Guide</i>.
%%
%% This operation does not indicate the state of the access key. The key
%% might be active, inactive, or deleted. Active keys might not have
%% permissions to perform an operation. Providing a deleted access key might
%% return an error that the key doesn't exist.
get_access_key_info(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_access_key_info(Client, Input, []).
get_access_key_info(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAccessKeyInfo">>, Input, Options).

%% @doc Returns details about the IAM user or role whose credentials are used
%% to call the operation.
%%
%% <note> No permissions are required to perform this operation. If an
%% administrator adds a policy to your IAM user or role that explicitly
%% denies access to the <code>sts:GetCallerIdentity</code> action, you can
%% still perform this operation. Permissions are not required because the
%% same information is returned when an IAM user or role is denied access. To
%% view an example response, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_access-denied-delete-mfa">I
%% Am Not Authorized to Perform: iam:DeleteVirtualMFADevice</a> in the <i>IAM
%% User Guide</i>.
%%
%% </note>
get_caller_identity(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_caller_identity(Client, Input, []).
get_caller_identity(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetCallerIdentity">>, Input, Options).

%% @doc Returns a set of temporary security credentials (consisting of an
%% access key ID, a secret access key, and a security token) for a federated
%% user. A typical use is in a proxy application that gets temporary security
%% credentials on behalf of distributed applications inside a corporate
%% network. You must call the <code>GetFederationToken</code> operation using
%% the long-term security credentials of an IAM user. As a result, this call
%% is appropriate in contexts where those credentials can be safely stored,
%% usually in a server-based application. For a comparison of
%% <code>GetFederationToken</code> with the other API operations that produce
%% temporary credentials, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting
%% Temporary Security Credentials</a> and <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison">Comparing
%% the AWS STS API operations</a> in the <i>IAM User Guide</i>.
%%
%% <note> You can create a mobile-based or browser-based app that can
%% authenticate users using a web identity provider like Login with Amazon,
%% Facebook, Google, or an OpenID Connect-compatible identity provider. In
%% this case, we recommend that you use <a
%% href="http://aws.amazon.com/cognito/">Amazon Cognito</a> or
%% <code>AssumeRoleWithWebIdentity</code>. For more information, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_assumerolewithwebidentity">Federation
%% Through a Web-based Identity Provider</a> in the <i>IAM User Guide</i>.
%%
%% </note> You can also call <code>GetFederationToken</code> using the
%% security credentials of an AWS account root user, but we do not recommend
%% it. Instead, we recommend that you create an IAM user for the purpose of
%% the proxy application. Then attach a policy to the IAM user that limits
%% federated users to only the actions and resources that they need to
%% access. For more information, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html">IAM
%% Best Practices</a> in the <i>IAM User Guide</i>.
%%
%% <b>Session duration</b>
%%
%% The temporary credentials are valid for the specified duration, from 900
%% seconds (15 minutes) up to a maximum of 129,600 seconds (36 hours). The
%% default session duration is 43,200 seconds (12 hours). Temporary
%% credentials that are obtained by using AWS account root user credentials
%% have a maximum duration of 3,600 seconds (1 hour).
%%
%% <b>Permissions</b>
%%
%% You can use the temporary credentials created by
%% <code>GetFederationToken</code> in any AWS service except the following:
%%
%% <ul> <li> You cannot call any IAM operations using the AWS CLI or the AWS
%% API.
%%
%% </li> <li> You cannot call any STS operations except
%% <code>GetCallerIdentity</code>.
%%
%% </li> </ul> You must pass an inline or managed <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">session
%% policy</a> to this operation. You can pass a single JSON policy document
%% to use as an inline session policy. You can also specify up to 10 managed
%% policies to use as managed session policies. The plain text that you use
%% for both inline and managed session policies can't exceed 2,048
%% characters.
%%
%% Though the session policy parameters are optional, if you do not pass a
%% policy, then the resulting federated user session has no permissions. When
%% you pass session policies, the session permissions are the intersection of
%% the IAM user policies and the session policies that you pass. This gives
%% you a way to further restrict the permissions for a federated user. You
%% cannot use session policies to grant more permissions than those that are
%% defined in the permissions policy of the IAM user. For more information,
%% see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#policies_session">Session
%% Policies</a> in the <i>IAM User Guide</i>. For information about using
%% <code>GetFederationToken</code> to create temporary security credentials,
%% see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getfederationtoken">GetFederationToken—Federation
%% Through a Custom Identity Broker</a>.
%%
%% You can use the credentials to access a resource that has a resource-based
%% policy. If that policy specifically references the federated user session
%% in the <code>Principal</code> element of the policy, the session has the
%% permissions allowed by the policy. These permissions are granted in
%% addition to the permissions granted by the session policies.
%%
%% <b>Tags</b>
%%
%% (Optional) You can pass tag key-value pairs to your session. These are
%% called session tags. For more information about session tags, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_session-tags.html">Passing
%% Session Tags in STS</a> in the <i>IAM User Guide</i>.
%%
%% An administrator must grant you the permissions necessary to pass session
%% tags. The administrator can also create granular permissions to allow you
%% to pass only specific session tags. For more information, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_attribute-based-access-control.html">Tutorial:
%% Using Tags for Attribute-Based Access Control</a> in the <i>IAM User
%% Guide</i>.
%%
%% Tag key–value pairs are not case sensitive, but case is preserved. This
%% means that you cannot have separate <code>Department</code> and
%% <code>department</code> tag keys. Assume that the user that you are
%% federating has the <code>Department</code>=<code>Marketing</code> tag and
%% you pass the <code>department</code>=<code>engineering</code> session tag.
%% <code>Department</code> and <code>department</code> are not saved as
%% separate tags, and the session tag passed in the request takes precedence
%% over the user tag.
get_federation_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_federation_token(Client, Input, []).
get_federation_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetFederationToken">>, Input, Options).

%% @doc Returns a set of temporary credentials for an AWS account or IAM
%% user. The credentials consist of an access key ID, a secret access key,
%% and a security token. Typically, you use <code>GetSessionToken</code> if
%% you want to use MFA to protect programmatic calls to specific AWS API
%% operations like Amazon EC2 <code>StopInstances</code>. MFA-enabled IAM
%% users would need to call <code>GetSessionToken</code> and submit an MFA
%% code that is associated with their MFA device. Using the temporary
%% security credentials that are returned from the call, IAM users can then
%% make programmatic calls to API operations that require MFA authentication.
%% If you do not supply a correct MFA code, then the API returns an access
%% denied error. For a comparison of <code>GetSessionToken</code> with the
%% other API operations that produce temporary credentials, see <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html">Requesting
%% Temporary Security Credentials</a> and <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#stsapi_comparison">Comparing
%% the AWS STS API operations</a> in the <i>IAM User Guide</i>.
%%
%% <b>Session Duration</b>
%%
%% The <code>GetSessionToken</code> operation must be called by using the
%% long-term AWS security credentials of the AWS account root user or an IAM
%% user. Credentials that are created by IAM users are valid for the duration
%% that you specify. This duration can range from 900 seconds (15 minutes) up
%% to a maximum of 129,600 seconds (36 hours), with a default of 43,200
%% seconds (12 hours). Credentials based on account credentials can range
%% from 900 seconds (15 minutes) up to 3,600 seconds (1 hour), with a default
%% of 1 hour.
%%
%% <b>Permissions</b>
%%
%% The temporary security credentials created by <code>GetSessionToken</code>
%% can be used to make API calls to any AWS service with the following
%% exceptions:
%%
%% <ul> <li> You cannot call any IAM API operations unless MFA authentication
%% information is included in the request.
%%
%% </li> <li> You cannot call any STS API <i>except</i>
%% <code>AssumeRole</code> or <code>GetCallerIdentity</code>.
%%
%% </li> </ul> <note> We recommend that you do not call
%% <code>GetSessionToken</code> with AWS account root user credentials.
%% Instead, follow our <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#create-iam-users">best
%% practices</a> by creating one or more IAM users, giving them the necessary
%% permissions, and using IAM users for everyday interaction with AWS.
%%
%% </note> The credentials that are returned by <code>GetSessionToken</code>
%% are based on permissions associated with the user whose credentials were
%% used to call the operation. If <code>GetSessionToken</code> is called
%% using AWS account root user credentials, the temporary credentials have
%% root user permissions. Similarly, if <code>GetSessionToken</code> is
%% called using the credentials of an IAM user, the temporary credentials
%% have the same permissions as the IAM user.
%%
%% For more information about using <code>GetSessionToken</code> to create
%% temporary credentials, go to <a
%% href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_request.html#api_getsessiontoken">Temporary
%% Credentials for Users in Untrusted Environments</a> in the <i>IAM User
%% Guide</i>.
get_session_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_session_token(Client, Input, []).
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
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"sts">>},
    Host = get_host(<<"sts">>, Client1),
    URL = get_url(Host, Client1),
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

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
