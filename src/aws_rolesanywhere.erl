%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Identity and Access Management Roles Anywhere provides a secure way
%% for your workloads such as
%% servers, containers, and applications that run outside of Amazon Web
%% Services to obtain
%% temporary Amazon Web Services credentials.
%%
%% Your workloads can use the same IAM policies and roles you have for native
%% Amazon Web Services applications to access Amazon Web Services resources.
%% Using IAM Roles Anywhere eliminates the need to
%% manage long-term credentials for workloads running outside of Amazon Web
%% Services.
%%
%% To use IAM Roles Anywhere, your workloads must use X.509 certificates
%% issued by their certificate authority (CA). You register the CA with IAM
%% Roles Anywhere as a trust anchor to establish trust between your public
%% key infrastructure
%% (PKI) and IAM Roles Anywhere. If you don't manage your own PKI system,
%% you
%% can use Private Certificate Authority to create a CA and then use that to
%% establish trust with
%% IAM Roles Anywhere.
%%
%% This guide describes the IAM Roles Anywhere operations that you can call
%% programmatically. For more information about IAM Roles Anywhere, see the
%% IAM Roles Anywhere User Guide:
%% https://docs.aws.amazon.com/rolesanywhere/latest/userguide/introduction.html.
-module(aws_rolesanywhere).

-export([create_profile/2,
         create_profile/3,
         create_trust_anchor/2,
         create_trust_anchor/3,
         delete_attribute_mapping/3,
         delete_attribute_mapping/4,
         delete_crl/3,
         delete_crl/4,
         delete_profile/3,
         delete_profile/4,
         delete_trust_anchor/3,
         delete_trust_anchor/4,
         disable_crl/3,
         disable_crl/4,
         disable_profile/3,
         disable_profile/4,
         disable_trust_anchor/3,
         disable_trust_anchor/4,
         enable_crl/3,
         enable_crl/4,
         enable_profile/3,
         enable_profile/4,
         enable_trust_anchor/3,
         enable_trust_anchor/4,
         get_crl/2,
         get_crl/4,
         get_crl/5,
         get_profile/2,
         get_profile/4,
         get_profile/5,
         get_subject/2,
         get_subject/4,
         get_subject/5,
         get_trust_anchor/2,
         get_trust_anchor/4,
         get_trust_anchor/5,
         import_crl/2,
         import_crl/3,
         list_crls/1,
         list_crls/3,
         list_crls/4,
         list_profiles/1,
         list_profiles/3,
         list_profiles/4,
         list_subjects/1,
         list_subjects/3,
         list_subjects/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_trust_anchors/1,
         list_trust_anchors/3,
         list_trust_anchors/4,
         put_attribute_mapping/3,
         put_attribute_mapping/4,
         put_notification_settings/2,
         put_notification_settings/3,
         reset_notification_settings/2,
         reset_notification_settings/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3,
         update_crl/3,
         update_crl/4,
         update_profile/3,
         update_profile/4,
         update_trust_anchor/3,
         update_trust_anchor/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% subject_detail() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"credentials">> => list(credential_summary()),
%%   <<"enabled">> => [boolean()],
%%   <<"instanceProperties">> => list(instance_property()),
%%   <<"lastSeenAt">> => [non_neg_integer()],
%%   <<"subjectArn">> => [string()],
%%   <<"subjectId">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"x509Subject">> => [string()]
%% }
-type subject_detail() :: #{binary() => any()}.


%% Example:
%% credential_summary() :: #{
%%   <<"enabled">> => [boolean()],
%%   <<"failed">> => [boolean()],
%%   <<"issuer">> => [string()],
%%   <<"seenAt">> => [non_neg_integer()],
%%   <<"serialNumber">> => [string()],
%%   <<"x509CertificateData">> => [string()]
%% }
-type credential_summary() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tags">> := list(tag())
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% profile_detail_response() :: #{
%%   <<"profile">> => profile_detail()
%% }
-type profile_detail_response() :: #{binary() => any()}.


%% Example:
%% put_notification_settings_request() :: #{
%%   <<"notificationSettings">> := list(notification_setting()),
%%   <<"trustAnchorId">> := string()
%% }
-type put_notification_settings_request() :: #{binary() => any()}.

%% Example:
%% untag_resource_response() :: #{}
-type untag_resource_response() :: #{}.

%% Example:
%% scalar_profile_request() :: #{}
-type scalar_profile_request() :: #{}.

%% Example:
%% scalar_crl_request() :: #{}
-type scalar_crl_request() :: #{}.


%% Example:
%% notification_setting_key() :: #{
%%   <<"channel">> => string(),
%%   <<"event">> => string()
%% }
-type notification_setting_key() :: #{binary() => any()}.


%% Example:
%% subject_summary() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"enabled">> => [boolean()],
%%   <<"lastSeenAt">> => [non_neg_integer()],
%%   <<"subjectArn">> => [string()],
%%   <<"subjectId">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()],
%%   <<"x509Subject">> => [string()]
%% }
-type subject_summary() :: #{binary() => any()}.


%% Example:
%% subject_detail_response() :: #{
%%   <<"subject">> => subject_detail()
%% }
-type subject_detail_response() :: #{binary() => any()}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"resourceArn">> := string(),
%%   <<"tagKeys">> := list(string())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% update_crl_request() :: #{
%%   <<"crlData">> => [binary()],
%%   <<"name">> => string()
%% }
-type update_crl_request() :: #{binary() => any()}.


%% Example:
%% list_subjects_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"subjects">> => list(subject_summary())
%% }
-type list_subjects_response() :: #{binary() => any()}.


%% Example:
%% list_crls_response() :: #{
%%   <<"crls">> => list(crl_detail()),
%%   <<"nextToken">> => [string()]
%% }
-type list_crls_response() :: #{binary() => any()}.


%% Example:
%% crl_detail() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"crlArn">> => [string()],
%%   <<"crlData">> => [binary()],
%%   <<"crlId">> => string(),
%%   <<"enabled">> => [boolean()],
%%   <<"name">> => [string()],
%%   <<"trustAnchorArn">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type crl_detail() :: #{binary() => any()}.


%% Example:
%% update_trust_anchor_request() :: #{
%%   <<"name">> => string(),
%%   <<"source">> => source()
%% }
-type update_trust_anchor_request() :: #{binary() => any()}.


%% Example:
%% delete_attribute_mapping_response() :: #{
%%   <<"profile">> => profile_detail()
%% }
-type delete_attribute_mapping_response() :: #{binary() => any()}.


%% Example:
%% create_profile_request() :: #{
%%   <<"acceptRoleSessionName">> => [boolean()],
%%   <<"durationSeconds">> => [integer()],
%%   <<"enabled">> => [boolean()],
%%   <<"managedPolicyArns">> => list([string()]()),
%%   <<"name">> := string(),
%%   <<"requireInstanceProperties">> => [boolean()],
%%   <<"roleArns">> := list(string()),
%%   <<"sessionPolicy">> => [string()],
%%   <<"tags">> => list(tag())
%% }
-type create_profile_request() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% mapping_rule() :: #{
%%   <<"specifier">> => [string()]
%% }
-type mapping_rule() :: #{binary() => any()}.


%% Example:
%% trust_anchor_detail() :: #{
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"enabled">> => [boolean()],
%%   <<"name">> => string(),
%%   <<"notificationSettings">> => list(notification_setting_detail()),
%%   <<"source">> => source(),
%%   <<"trustAnchorArn">> => [string()],
%%   <<"trustAnchorId">> => string(),
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type trust_anchor_detail() :: #{binary() => any()}.


%% Example:
%% update_profile_request() :: #{
%%   <<"acceptRoleSessionName">> => [boolean()],
%%   <<"durationSeconds">> => [integer()],
%%   <<"managedPolicyArns">> => list([string()]()),
%%   <<"name">> => string(),
%%   <<"roleArns">> => list(string()),
%%   <<"sessionPolicy">> => [string()]
%% }
-type update_profile_request() :: #{binary() => any()}.


%% Example:
%% tag() :: #{
%%   <<"key">> => string(),
%%   <<"value">> => string()
%% }
-type tag() :: #{binary() => any()}.


%% Example:
%% attribute_mapping() :: #{
%%   <<"certificateField">> => string(),
%%   <<"mappingRules">> => list(mapping_rule())
%% }
-type attribute_mapping() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"tags">> => list(tag())
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% profile_detail() :: #{
%%   <<"acceptRoleSessionName">> => [boolean()],
%%   <<"attributeMappings">> => list(attribute_mapping()),
%%   <<"createdAt">> => [non_neg_integer()],
%%   <<"createdBy">> => [string()],
%%   <<"durationSeconds">> => [integer()],
%%   <<"enabled">> => [boolean()],
%%   <<"managedPolicyArns">> => list([string()]()),
%%   <<"name">> => string(),
%%   <<"profileArn">> => string(),
%%   <<"profileId">> => string(),
%%   <<"requireInstanceProperties">> => [boolean()],
%%   <<"roleArns">> => list(string()),
%%   <<"sessionPolicy">> => [string()],
%%   <<"updatedAt">> => [non_neg_integer()]
%% }
-type profile_detail() :: #{binary() => any()}.


%% Example:
%% delete_attribute_mapping_request() :: #{
%%   <<"certificateField">> := string(),
%%   <<"specifiers">> => list([string()]())
%% }
-type delete_attribute_mapping_request() :: #{binary() => any()}.

%% Example:
%% scalar_subject_request() :: #{}
-type scalar_subject_request() :: #{}.


%% Example:
%% source() :: #{
%%   <<"sourceData">> => list(),
%%   <<"sourceType">> => string()
%% }
-type source() :: #{binary() => any()}.


%% Example:
%% put_attribute_mapping_response() :: #{
%%   <<"profile">> => profile_detail()
%% }
-type put_attribute_mapping_response() :: #{binary() => any()}.


%% Example:
%% instance_property() :: #{
%%   <<"failed">> => [boolean()],
%%   <<"properties">> => map(),
%%   <<"seenAt">> => [non_neg_integer()]
%% }
-type instance_property() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.

%% Example:
%% tag_resource_response() :: #{}
-type tag_resource_response() :: #{}.


%% Example:
%% list_profiles_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"profiles">> => list(profile_detail())
%% }
-type list_profiles_response() :: #{binary() => any()}.


%% Example:
%% put_notification_settings_response() :: #{
%%   <<"trustAnchor">> => trust_anchor_detail()
%% }
-type put_notification_settings_response() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type validation_exception() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_request() :: #{
%%   <<"resourceArn">> := string()
%% }
-type list_tags_for_resource_request() :: #{binary() => any()}.


%% Example:
%% reset_notification_settings_response() :: #{
%%   <<"trustAnchor">> => trust_anchor_detail()
%% }
-type reset_notification_settings_response() :: #{binary() => any()}.


%% Example:
%% trust_anchor_detail_response() :: #{
%%   <<"trustAnchor">> := trust_anchor_detail()
%% }
-type trust_anchor_detail_response() :: #{binary() => any()}.


%% Example:
%% import_crl_request() :: #{
%%   <<"crlData">> := [binary()],
%%   <<"enabled">> => [boolean()],
%%   <<"name">> := string(),
%%   <<"tags">> => list(tag()),
%%   <<"trustAnchorArn">> := string()
%% }
-type import_crl_request() :: #{binary() => any()}.


%% Example:
%% list_request() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"pageSize">> => [integer()]
%% }
-type list_request() :: #{binary() => any()}.

%% Example:
%% scalar_trust_anchor_request() :: #{}
-type scalar_trust_anchor_request() :: #{}.


%% Example:
%% list_trust_anchors_response() :: #{
%%   <<"nextToken">> => [string()],
%%   <<"trustAnchors">> => list(trust_anchor_detail())
%% }
-type list_trust_anchors_response() :: #{binary() => any()}.


%% Example:
%% notification_setting() :: #{
%%   <<"channel">> => string(),
%%   <<"enabled">> => [boolean()],
%%   <<"event">> => string(),
%%   <<"threshold">> => [integer()]
%% }
-type notification_setting() :: #{binary() => any()}.


%% Example:
%% reset_notification_settings_request() :: #{
%%   <<"notificationSettingKeys">> := list(notification_setting_key()),
%%   <<"trustAnchorId">> := string()
%% }
-type reset_notification_settings_request() :: #{binary() => any()}.


%% Example:
%% create_trust_anchor_request() :: #{
%%   <<"enabled">> => [boolean()],
%%   <<"name">> := string(),
%%   <<"notificationSettings">> => list(notification_setting()),
%%   <<"source">> := source(),
%%   <<"tags">> => list(tag())
%% }
-type create_trust_anchor_request() :: #{binary() => any()}.


%% Example:
%% crl_detail_response() :: #{
%%   <<"crl">> := crl_detail()
%% }
-type crl_detail_response() :: #{binary() => any()}.


%% Example:
%% too_many_tags_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type too_many_tags_exception() :: #{binary() => any()}.


%% Example:
%% notification_setting_detail() :: #{
%%   <<"channel">> => string(),
%%   <<"configuredBy">> => [string()],
%%   <<"enabled">> => [boolean()],
%%   <<"event">> => string(),
%%   <<"threshold">> => [integer()]
%% }
-type notification_setting_detail() :: #{binary() => any()}.


%% Example:
%% put_attribute_mapping_request() :: #{
%%   <<"certificateField">> := string(),
%%   <<"mappingRules">> := list(mapping_rule())
%% }
-type put_attribute_mapping_request() :: #{binary() => any()}.

-type create_profile_errors() ::
    validation_exception() | 
    access_denied_exception().

-type create_trust_anchor_errors() ::
    validation_exception() | 
    access_denied_exception().

-type delete_attribute_mapping_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type delete_crl_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type delete_profile_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type delete_trust_anchor_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type disable_crl_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type disable_profile_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type disable_trust_anchor_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type enable_crl_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type enable_profile_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type enable_trust_anchor_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type get_crl_errors() ::
    resource_not_found_exception().

-type get_profile_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type get_subject_errors() ::
    access_denied_exception() | 
    resource_not_found_exception().

-type get_trust_anchor_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type import_crl_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_crls_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_profiles_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_subjects_errors() ::
    validation_exception() | 
    access_denied_exception().

-type list_tags_for_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type list_trust_anchors_errors() ::
    validation_exception() | 
    access_denied_exception().

-type put_attribute_mapping_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type put_notification_settings_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type reset_notification_settings_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    too_many_tags_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_crl_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_profile_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

-type update_trust_anchor_errors() ::
    validation_exception() | 
    access_denied_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a profile, a list of the roles that Roles Anywhere service is
%% trusted to assume.
%%
%% You use profiles to intersect permissions with IAM managed policies.
%%
%% Required permissions:
%% `rolesanywhere:CreateProfile'.
-spec create_profile(aws_client:aws_client(), create_profile_request()) ->
    {ok, profile_detail_response(), tuple()} |
    {error, any()} |
    {error, create_profile_errors(), tuple()}.
create_profile(Client, Input) ->
    create_profile(Client, Input, []).

-spec create_profile(aws_client:aws_client(), create_profile_request(), proplists:proplist()) ->
    {ok, profile_detail_response(), tuple()} |
    {error, any()} |
    {error, create_profile_errors(), tuple()}.
create_profile(Client, Input0, Options0) ->
    Method = post,
    Path = ["/profiles"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a trust anchor to establish trust between IAM Roles Anywhere
%% and
%% your certificate authority (CA).
%%
%% You can define a trust anchor as a reference to an Private Certificate
%% Authority (Private CA) or by uploading a CA certificate. Your Amazon Web
%% Services workloads can authenticate with the trust anchor using
%% certificates issued by
%% the CA in exchange for temporary Amazon Web Services credentials.
%%
%% Required permissions:
%% `rolesanywhere:CreateTrustAnchor'.
-spec create_trust_anchor(aws_client:aws_client(), create_trust_anchor_request()) ->
    {ok, trust_anchor_detail_response(), tuple()} |
    {error, any()} |
    {error, create_trust_anchor_errors(), tuple()}.
create_trust_anchor(Client, Input) ->
    create_trust_anchor(Client, Input, []).

-spec create_trust_anchor(aws_client:aws_client(), create_trust_anchor_request(), proplists:proplist()) ->
    {ok, trust_anchor_detail_response(), tuple()} |
    {error, any()} |
    {error, create_trust_anchor_errors(), tuple()}.
create_trust_anchor(Client, Input0, Options0) ->
    Method = post,
    Path = ["/trustanchors"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete an entry from the attribute mapping rules enforced by a given
%% profile.
-spec delete_attribute_mapping(aws_client:aws_client(), binary() | list(), delete_attribute_mapping_request()) ->
    {ok, delete_attribute_mapping_response(), tuple()} |
    {error, any()} |
    {error, delete_attribute_mapping_errors(), tuple()}.
delete_attribute_mapping(Client, ProfileId, Input) ->
    delete_attribute_mapping(Client, ProfileId, Input, []).

-spec delete_attribute_mapping(aws_client:aws_client(), binary() | list(), delete_attribute_mapping_request(), proplists:proplist()) ->
    {ok, delete_attribute_mapping_response(), tuple()} |
    {error, any()} |
    {error, delete_attribute_mapping_errors(), tuple()}.
delete_attribute_mapping(Client, ProfileId, Input0, Options0) ->
    Method = delete,
    Path = ["/profiles/", aws_util:encode_uri(ProfileId), "/mappings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"certificateField">>, <<"certificateField">>},
                     {<<"specifiers">>, <<"specifiers">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a certificate revocation list (CRL).
%%
%% Required permissions:
%% `rolesanywhere:DeleteCrl'.
-spec delete_crl(aws_client:aws_client(), binary() | list(), scalar_crl_request()) ->
    {ok, crl_detail_response(), tuple()} |
    {error, any()} |
    {error, delete_crl_errors(), tuple()}.
delete_crl(Client, CrlId, Input) ->
    delete_crl(Client, CrlId, Input, []).

-spec delete_crl(aws_client:aws_client(), binary() | list(), scalar_crl_request(), proplists:proplist()) ->
    {ok, crl_detail_response(), tuple()} |
    {error, any()} |
    {error, delete_crl_errors(), tuple()}.
delete_crl(Client, CrlId, Input0, Options0) ->
    Method = delete,
    Path = ["/crl/", aws_util:encode_uri(CrlId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a profile.
%%
%% Required permissions:
%% `rolesanywhere:DeleteProfile'.
-spec delete_profile(aws_client:aws_client(), binary() | list(), scalar_profile_request()) ->
    {ok, profile_detail_response(), tuple()} |
    {error, any()} |
    {error, delete_profile_errors(), tuple()}.
delete_profile(Client, ProfileId, Input) ->
    delete_profile(Client, ProfileId, Input, []).

-spec delete_profile(aws_client:aws_client(), binary() | list(), scalar_profile_request(), proplists:proplist()) ->
    {ok, profile_detail_response(), tuple()} |
    {error, any()} |
    {error, delete_profile_errors(), tuple()}.
delete_profile(Client, ProfileId, Input0, Options0) ->
    Method = delete,
    Path = ["/profile/", aws_util:encode_uri(ProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a trust anchor.
%%
%% Required permissions:
%% `rolesanywhere:DeleteTrustAnchor'.
-spec delete_trust_anchor(aws_client:aws_client(), binary() | list(), scalar_trust_anchor_request()) ->
    {ok, trust_anchor_detail_response(), tuple()} |
    {error, any()} |
    {error, delete_trust_anchor_errors(), tuple()}.
delete_trust_anchor(Client, TrustAnchorId, Input) ->
    delete_trust_anchor(Client, TrustAnchorId, Input, []).

-spec delete_trust_anchor(aws_client:aws_client(), binary() | list(), scalar_trust_anchor_request(), proplists:proplist()) ->
    {ok, trust_anchor_detail_response(), tuple()} |
    {error, any()} |
    {error, delete_trust_anchor_errors(), tuple()}.
delete_trust_anchor(Client, TrustAnchorId, Input0, Options0) ->
    Method = delete,
    Path = ["/trustanchor/", aws_util:encode_uri(TrustAnchorId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables a certificate revocation list (CRL).
%%
%% Required permissions:
%% `rolesanywhere:DisableCrl'.
-spec disable_crl(aws_client:aws_client(), binary() | list(), scalar_crl_request()) ->
    {ok, crl_detail_response(), tuple()} |
    {error, any()} |
    {error, disable_crl_errors(), tuple()}.
disable_crl(Client, CrlId, Input) ->
    disable_crl(Client, CrlId, Input, []).

-spec disable_crl(aws_client:aws_client(), binary() | list(), scalar_crl_request(), proplists:proplist()) ->
    {ok, crl_detail_response(), tuple()} |
    {error, any()} |
    {error, disable_crl_errors(), tuple()}.
disable_crl(Client, CrlId, Input0, Options0) ->
    Method = post,
    Path = ["/crl/", aws_util:encode_uri(CrlId), "/disable"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables a profile.
%%
%% When disabled, temporary credential requests with this profile fail.
%%
%% Required permissions:
%% `rolesanywhere:DisableProfile'.
-spec disable_profile(aws_client:aws_client(), binary() | list(), scalar_profile_request()) ->
    {ok, profile_detail_response(), tuple()} |
    {error, any()} |
    {error, disable_profile_errors(), tuple()}.
disable_profile(Client, ProfileId, Input) ->
    disable_profile(Client, ProfileId, Input, []).

-spec disable_profile(aws_client:aws_client(), binary() | list(), scalar_profile_request(), proplists:proplist()) ->
    {ok, profile_detail_response(), tuple()} |
    {error, any()} |
    {error, disable_profile_errors(), tuple()}.
disable_profile(Client, ProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/profile/", aws_util:encode_uri(ProfileId), "/disable"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Disables a trust anchor.
%%
%% When disabled, temporary credential requests specifying this trust anchor
%% are unauthorized.
%%
%% Required permissions:
%% `rolesanywhere:DisableTrustAnchor'.
-spec disable_trust_anchor(aws_client:aws_client(), binary() | list(), scalar_trust_anchor_request()) ->
    {ok, trust_anchor_detail_response(), tuple()} |
    {error, any()} |
    {error, disable_trust_anchor_errors(), tuple()}.
disable_trust_anchor(Client, TrustAnchorId, Input) ->
    disable_trust_anchor(Client, TrustAnchorId, Input, []).

-spec disable_trust_anchor(aws_client:aws_client(), binary() | list(), scalar_trust_anchor_request(), proplists:proplist()) ->
    {ok, trust_anchor_detail_response(), tuple()} |
    {error, any()} |
    {error, disable_trust_anchor_errors(), tuple()}.
disable_trust_anchor(Client, TrustAnchorId, Input0, Options0) ->
    Method = post,
    Path = ["/trustanchor/", aws_util:encode_uri(TrustAnchorId), "/disable"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables a certificate revocation list (CRL).
%%
%% When enabled, certificates stored in the CRL are unauthorized to receive
%% session credentials.
%%
%% Required permissions:
%% `rolesanywhere:EnableCrl'.
-spec enable_crl(aws_client:aws_client(), binary() | list(), scalar_crl_request()) ->
    {ok, crl_detail_response(), tuple()} |
    {error, any()} |
    {error, enable_crl_errors(), tuple()}.
enable_crl(Client, CrlId, Input) ->
    enable_crl(Client, CrlId, Input, []).

-spec enable_crl(aws_client:aws_client(), binary() | list(), scalar_crl_request(), proplists:proplist()) ->
    {ok, crl_detail_response(), tuple()} |
    {error, any()} |
    {error, enable_crl_errors(), tuple()}.
enable_crl(Client, CrlId, Input0, Options0) ->
    Method = post,
    Path = ["/crl/", aws_util:encode_uri(CrlId), "/enable"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables temporary credential requests for a profile.
%%
%% Required permissions:
%% `rolesanywhere:EnableProfile'.
-spec enable_profile(aws_client:aws_client(), binary() | list(), scalar_profile_request()) ->
    {ok, profile_detail_response(), tuple()} |
    {error, any()} |
    {error, enable_profile_errors(), tuple()}.
enable_profile(Client, ProfileId, Input) ->
    enable_profile(Client, ProfileId, Input, []).

-spec enable_profile(aws_client:aws_client(), binary() | list(), scalar_profile_request(), proplists:proplist()) ->
    {ok, profile_detail_response(), tuple()} |
    {error, any()} |
    {error, enable_profile_errors(), tuple()}.
enable_profile(Client, ProfileId, Input0, Options0) ->
    Method = post,
    Path = ["/profile/", aws_util:encode_uri(ProfileId), "/enable"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Enables a trust anchor.
%%
%% When enabled, certificates in the trust anchor chain are authorized for
%% trust validation.
%%
%% Required permissions:
%% `rolesanywhere:EnableTrustAnchor'.
-spec enable_trust_anchor(aws_client:aws_client(), binary() | list(), scalar_trust_anchor_request()) ->
    {ok, trust_anchor_detail_response(), tuple()} |
    {error, any()} |
    {error, enable_trust_anchor_errors(), tuple()}.
enable_trust_anchor(Client, TrustAnchorId, Input) ->
    enable_trust_anchor(Client, TrustAnchorId, Input, []).

-spec enable_trust_anchor(aws_client:aws_client(), binary() | list(), scalar_trust_anchor_request(), proplists:proplist()) ->
    {ok, trust_anchor_detail_response(), tuple()} |
    {error, any()} |
    {error, enable_trust_anchor_errors(), tuple()}.
enable_trust_anchor(Client, TrustAnchorId, Input0, Options0) ->
    Method = post,
    Path = ["/trustanchor/", aws_util:encode_uri(TrustAnchorId), "/enable"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Gets a certificate revocation list (CRL).
%%
%% Required permissions:
%% `rolesanywhere:GetCrl'.
-spec get_crl(aws_client:aws_client(), binary() | list()) ->
    {ok, crl_detail_response(), tuple()} |
    {error, any()} |
    {error, get_crl_errors(), tuple()}.
get_crl(Client, CrlId)
  when is_map(Client) ->
    get_crl(Client, CrlId, #{}, #{}).

-spec get_crl(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, crl_detail_response(), tuple()} |
    {error, any()} |
    {error, get_crl_errors(), tuple()}.
get_crl(Client, CrlId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_crl(Client, CrlId, QueryMap, HeadersMap, []).

-spec get_crl(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, crl_detail_response(), tuple()} |
    {error, any()} |
    {error, get_crl_errors(), tuple()}.
get_crl(Client, CrlId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/crl/", aws_util:encode_uri(CrlId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a profile.
%%
%% Required permissions:
%% `rolesanywhere:GetProfile'.
-spec get_profile(aws_client:aws_client(), binary() | list()) ->
    {ok, profile_detail_response(), tuple()} |
    {error, any()} |
    {error, get_profile_errors(), tuple()}.
get_profile(Client, ProfileId)
  when is_map(Client) ->
    get_profile(Client, ProfileId, #{}, #{}).

-spec get_profile(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, profile_detail_response(), tuple()} |
    {error, any()} |
    {error, get_profile_errors(), tuple()}.
get_profile(Client, ProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_profile(Client, ProfileId, QueryMap, HeadersMap, []).

-spec get_profile(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, profile_detail_response(), tuple()} |
    {error, any()} |
    {error, get_profile_errors(), tuple()}.
get_profile(Client, ProfileId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profile/", aws_util:encode_uri(ProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a subject, which associates a certificate identity with
%% authentication attempts.
%%
%% The subject stores auditing information such as the status
%% of the last authentication attempt, the certificate data used in the
%% attempt, and the
%% last time the associated identity attempted authentication.
%%
%% Required permissions:
%% `rolesanywhere:GetSubject'.
-spec get_subject(aws_client:aws_client(), binary() | list()) ->
    {ok, subject_detail_response(), tuple()} |
    {error, any()} |
    {error, get_subject_errors(), tuple()}.
get_subject(Client, SubjectId)
  when is_map(Client) ->
    get_subject(Client, SubjectId, #{}, #{}).

-spec get_subject(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, subject_detail_response(), tuple()} |
    {error, any()} |
    {error, get_subject_errors(), tuple()}.
get_subject(Client, SubjectId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_subject(Client, SubjectId, QueryMap, HeadersMap, []).

-spec get_subject(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, subject_detail_response(), tuple()} |
    {error, any()} |
    {error, get_subject_errors(), tuple()}.
get_subject(Client, SubjectId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/subject/", aws_util:encode_uri(SubjectId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a trust anchor.
%%
%% Required permissions:
%% `rolesanywhere:GetTrustAnchor'.
-spec get_trust_anchor(aws_client:aws_client(), binary() | list()) ->
    {ok, trust_anchor_detail_response(), tuple()} |
    {error, any()} |
    {error, get_trust_anchor_errors(), tuple()}.
get_trust_anchor(Client, TrustAnchorId)
  when is_map(Client) ->
    get_trust_anchor(Client, TrustAnchorId, #{}, #{}).

-spec get_trust_anchor(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, trust_anchor_detail_response(), tuple()} |
    {error, any()} |
    {error, get_trust_anchor_errors(), tuple()}.
get_trust_anchor(Client, TrustAnchorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_trust_anchor(Client, TrustAnchorId, QueryMap, HeadersMap, []).

-spec get_trust_anchor(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, trust_anchor_detail_response(), tuple()} |
    {error, any()} |
    {error, get_trust_anchor_errors(), tuple()}.
get_trust_anchor(Client, TrustAnchorId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/trustanchor/", aws_util:encode_uri(TrustAnchorId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Imports the certificate revocation list (CRL).
%%
%% A CRL is a list of certificates that have
%% been revoked by the issuing certificate Authority (CA).In order to be
%% properly imported, a CRL must be in PEM
%% format. IAM Roles Anywhere
%% validates against the CRL before issuing credentials.
%%
%% Required permissions:
%% `rolesanywhere:ImportCrl'.
-spec import_crl(aws_client:aws_client(), import_crl_request()) ->
    {ok, crl_detail_response(), tuple()} |
    {error, any()} |
    {error, import_crl_errors(), tuple()}.
import_crl(Client, Input) ->
    import_crl(Client, Input, []).

-spec import_crl(aws_client:aws_client(), import_crl_request(), proplists:proplist()) ->
    {ok, crl_detail_response(), tuple()} |
    {error, any()} |
    {error, import_crl_errors(), tuple()}.
import_crl(Client, Input0, Options0) ->
    Method = post,
    Path = ["/crls"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists all certificate revocation lists (CRL) in the authenticated
%% account and Amazon Web Services Region.
%%
%% Required permissions:
%% `rolesanywhere:ListCrls'.
-spec list_crls(aws_client:aws_client()) ->
    {ok, list_crls_response(), tuple()} |
    {error, any()} |
    {error, list_crls_errors(), tuple()}.
list_crls(Client)
  when is_map(Client) ->
    list_crls(Client, #{}, #{}).

-spec list_crls(aws_client:aws_client(), map(), map()) ->
    {ok, list_crls_response(), tuple()} |
    {error, any()} |
    {error, list_crls_errors(), tuple()}.
list_crls(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_crls(Client, QueryMap, HeadersMap, []).

-spec list_crls(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_crls_response(), tuple()} |
    {error, any()} |
    {error, list_crls_errors(), tuple()}.
list_crls(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/crls"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"pageSize">>, maps:get(<<"pageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists all profiles in the authenticated account and Amazon Web
%% Services Region.
%%
%% Required permissions:
%% `rolesanywhere:ListProfiles'.
-spec list_profiles(aws_client:aws_client()) ->
    {ok, list_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_profiles_errors(), tuple()}.
list_profiles(Client)
  when is_map(Client) ->
    list_profiles(Client, #{}, #{}).

-spec list_profiles(aws_client:aws_client(), map(), map()) ->
    {ok, list_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_profiles_errors(), tuple()}.
list_profiles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profiles(Client, QueryMap, HeadersMap, []).

-spec list_profiles(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_profiles_response(), tuple()} |
    {error, any()} |
    {error, list_profiles_errors(), tuple()}.
list_profiles(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/profiles"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"pageSize">>, maps:get(<<"pageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the subjects in the authenticated account and Amazon Web
%% Services Region.
%%
%% Required permissions:
%% `rolesanywhere:ListSubjects'.
-spec list_subjects(aws_client:aws_client()) ->
    {ok, list_subjects_response(), tuple()} |
    {error, any()} |
    {error, list_subjects_errors(), tuple()}.
list_subjects(Client)
  when is_map(Client) ->
    list_subjects(Client, #{}, #{}).

-spec list_subjects(aws_client:aws_client(), map(), map()) ->
    {ok, list_subjects_response(), tuple()} |
    {error, any()} |
    {error, list_subjects_errors(), tuple()}.
list_subjects(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_subjects(Client, QueryMap, HeadersMap, []).

-spec list_subjects(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_subjects_response(), tuple()} |
    {error, any()} |
    {error, list_subjects_errors(), tuple()}.
list_subjects(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/subjects"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"pageSize">>, maps:get(<<"pageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the tags attached to the resource.
%%
%% Required permissions:
%% `rolesanywhere:ListTagsForResource'.
-spec list_tags_for_resource(aws_client:aws_client(), binary() | list()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

-spec list_tags_for_resource(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_tags_for_resource_response(), tuple()} |
    {error, any()} |
    {error, list_tags_for_resource_errors(), tuple()}.
list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/ListTagsForResource"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the trust anchors in the authenticated account and Amazon Web
%% Services Region.
%%
%% Required permissions:
%% `rolesanywhere:ListTrustAnchors'.
-spec list_trust_anchors(aws_client:aws_client()) ->
    {ok, list_trust_anchors_response(), tuple()} |
    {error, any()} |
    {error, list_trust_anchors_errors(), tuple()}.
list_trust_anchors(Client)
  when is_map(Client) ->
    list_trust_anchors(Client, #{}, #{}).

-spec list_trust_anchors(aws_client:aws_client(), map(), map()) ->
    {ok, list_trust_anchors_response(), tuple()} |
    {error, any()} |
    {error, list_trust_anchors_errors(), tuple()}.
list_trust_anchors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_trust_anchors(Client, QueryMap, HeadersMap, []).

-spec list_trust_anchors(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_trust_anchors_response(), tuple()} |
    {error, any()} |
    {error, list_trust_anchors_errors(), tuple()}.
list_trust_anchors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/trustanchors"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"pageSize">>, maps:get(<<"pageSize">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Put an entry in the attribute mapping rules that will be enforced by
%% a given profile.
%%
%% A mapping specifies a certificate field and one or more specifiers that
%% have contextual meanings.
-spec put_attribute_mapping(aws_client:aws_client(), binary() | list(), put_attribute_mapping_request()) ->
    {ok, put_attribute_mapping_response(), tuple()} |
    {error, any()} |
    {error, put_attribute_mapping_errors(), tuple()}.
put_attribute_mapping(Client, ProfileId, Input) ->
    put_attribute_mapping(Client, ProfileId, Input, []).

-spec put_attribute_mapping(aws_client:aws_client(), binary() | list(), put_attribute_mapping_request(), proplists:proplist()) ->
    {ok, put_attribute_mapping_response(), tuple()} |
    {error, any()} |
    {error, put_attribute_mapping_errors(), tuple()}.
put_attribute_mapping(Client, ProfileId, Input0, Options0) ->
    Method = put,
    Path = ["/profiles/", aws_util:encode_uri(ProfileId), "/mappings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Attaches a list of notification settings to a trust anchor.
%%
%% A notification setting includes information such as event name, threshold,
%% status of
%% the notification setting, and the channel to notify.
%%
%% Required permissions:
%% `rolesanywhere:PutNotificationSettings'.
-spec put_notification_settings(aws_client:aws_client(), put_notification_settings_request()) ->
    {ok, put_notification_settings_response(), tuple()} |
    {error, any()} |
    {error, put_notification_settings_errors(), tuple()}.
put_notification_settings(Client, Input) ->
    put_notification_settings(Client, Input, []).

-spec put_notification_settings(aws_client:aws_client(), put_notification_settings_request(), proplists:proplist()) ->
    {ok, put_notification_settings_response(), tuple()} |
    {error, any()} |
    {error, put_notification_settings_errors(), tuple()}.
put_notification_settings(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/put-notifications-settings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Resets the custom notification setting to IAM Roles Anywhere default
%% setting.
%%
%% Required permissions:
%% `rolesanywhere:ResetNotificationSettings'.
-spec reset_notification_settings(aws_client:aws_client(), reset_notification_settings_request()) ->
    {ok, reset_notification_settings_response(), tuple()} |
    {error, any()} |
    {error, reset_notification_settings_errors(), tuple()}.
reset_notification_settings(Client, Input) ->
    reset_notification_settings(Client, Input, []).

-spec reset_notification_settings(aws_client:aws_client(), reset_notification_settings_request(), proplists:proplist()) ->
    {ok, reset_notification_settings_response(), tuple()} |
    {error, any()} |
    {error, reset_notification_settings_errors(), tuple()}.
reset_notification_settings(Client, Input0, Options0) ->
    Method = patch,
    Path = ["/reset-notifications-settings"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Attaches tags to a resource.
%%
%% Required permissions:
%% `rolesanywhere:TagResource'.
-spec tag_resource(aws_client:aws_client(), tag_resource_request()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).

-spec tag_resource(aws_client:aws_client(), tag_resource_request(), proplists:proplist()) ->
    {ok, tag_resource_response(), tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/TagResource"],
    SuccessStatusCode = 201,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Removes tags from the resource.
%%
%% Required permissions:
%% `rolesanywhere:UntagResource'.
-spec untag_resource(aws_client:aws_client(), untag_resource_request()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).

-spec untag_resource(aws_client:aws_client(), untag_resource_request(), proplists:proplist()) ->
    {ok, untag_resource_response(), tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UntagResource"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the certificate revocation list (CRL).
%%
%% A CRL is a list of certificates that have
%% been revoked by the issuing certificate authority (CA). IAM Roles Anywhere
%% validates against the CRL before issuing credentials.
%%
%% Required permissions:
%% `rolesanywhere:UpdateCrl'.
-spec update_crl(aws_client:aws_client(), binary() | list(), update_crl_request()) ->
    {ok, crl_detail_response(), tuple()} |
    {error, any()} |
    {error, update_crl_errors(), tuple()}.
update_crl(Client, CrlId, Input) ->
    update_crl(Client, CrlId, Input, []).

-spec update_crl(aws_client:aws_client(), binary() | list(), update_crl_request(), proplists:proplist()) ->
    {ok, crl_detail_response(), tuple()} |
    {error, any()} |
    {error, update_crl_errors(), tuple()}.
update_crl(Client, CrlId, Input0, Options0) ->
    Method = patch,
    Path = ["/crl/", aws_util:encode_uri(CrlId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a profile, a list of the roles that IAM
%% Roles Anywhere service is trusted to assume.
%%
%% You use profiles to intersect permissions with
%% IAM managed policies.
%%
%% Required permissions:
%% `rolesanywhere:UpdateProfile'.
-spec update_profile(aws_client:aws_client(), binary() | list(), update_profile_request()) ->
    {ok, profile_detail_response(), tuple()} |
    {error, any()} |
    {error, update_profile_errors(), tuple()}.
update_profile(Client, ProfileId, Input) ->
    update_profile(Client, ProfileId, Input, []).

-spec update_profile(aws_client:aws_client(), binary() | list(), update_profile_request(), proplists:proplist()) ->
    {ok, profile_detail_response(), tuple()} |
    {error, any()} |
    {error, update_profile_errors(), tuple()}.
update_profile(Client, ProfileId, Input0, Options0) ->
    Method = patch,
    Path = ["/profile/", aws_util:encode_uri(ProfileId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a trust anchor.
%%
%% You establish trust between IAM Roles Anywhere
%% and your certificate authority (CA) by configuring a trust anchor. You can
%% define a trust
%% anchor as a reference to an Private Certificate Authority (Private CA) or
%% by uploading a
%% CA certificate. Your Amazon Web Services workloads can authenticate with
%% the trust anchor
%% using certificates issued by the CA in exchange for temporary Amazon Web
%% Services
%% credentials.
%%
%% Required permissions:
%% `rolesanywhere:UpdateTrustAnchor'.
-spec update_trust_anchor(aws_client:aws_client(), binary() | list(), update_trust_anchor_request()) ->
    {ok, trust_anchor_detail_response(), tuple()} |
    {error, any()} |
    {error, update_trust_anchor_errors(), tuple()}.
update_trust_anchor(Client, TrustAnchorId, Input) ->
    update_trust_anchor(Client, TrustAnchorId, Input, []).

-spec update_trust_anchor(aws_client:aws_client(), binary() | list(), update_trust_anchor_request(), proplists:proplist()) ->
    {ok, trust_anchor_detail_response(), tuple()} |
    {error, any()} |
    {error, update_trust_anchor_errors(), tuple()}.
update_trust_anchor(Client, TrustAnchorId, Input0, Options0) ->
    Method = patch,
    Path = ["/trustanchor/", aws_util:encode_uri(TrustAnchorId), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, {integer(), list()}} |
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
  RequestFun = fun() -> do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) end,
  aws_request:request(RequestFun, Options).

do_request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"rolesanywhere">>},
    Host = build_host(<<"rolesanywhere">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
                          true ->
                            add_checksum_hash_header(AdditionalHeaders1, Payload);
                          false ->
                            AdditionalHeaders1
                        end,
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

add_checksum_hash_header(Headers, Body) ->
  [ {<<"X-Amz-CheckSum-SHA256">>, base64:encode(crypto:hash(sha256, Body))}
  | Headers
  ].

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= 206;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true ->
                         try
                           jsx:decode(Body)
                         catch
                           Error:Reason:Stack ->
                             erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
                         end;
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
