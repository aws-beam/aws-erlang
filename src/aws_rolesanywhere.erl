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
create_profile(Client, Input) ->
    create_profile(Client, Input, []).
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
create_trust_anchor(Client, Input) ->
    create_trust_anchor(Client, Input, []).
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

%% @doc Deletes a certificate revocation list (CRL).
%%
%% Required permissions:
%% `rolesanywhere:DeleteCrl'.
delete_crl(Client, CrlId, Input) ->
    delete_crl(Client, CrlId, Input, []).
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
delete_profile(Client, ProfileId, Input) ->
    delete_profile(Client, ProfileId, Input, []).
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
delete_trust_anchor(Client, TrustAnchorId, Input) ->
    delete_trust_anchor(Client, TrustAnchorId, Input, []).
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
disable_crl(Client, CrlId, Input) ->
    disable_crl(Client, CrlId, Input, []).
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
disable_profile(Client, ProfileId, Input) ->
    disable_profile(Client, ProfileId, Input, []).
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
disable_trust_anchor(Client, TrustAnchorId, Input) ->
    disable_trust_anchor(Client, TrustAnchorId, Input, []).
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
enable_crl(Client, CrlId, Input) ->
    enable_crl(Client, CrlId, Input, []).
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
enable_profile(Client, ProfileId, Input) ->
    enable_profile(Client, ProfileId, Input, []).
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
enable_trust_anchor(Client, TrustAnchorId, Input) ->
    enable_trust_anchor(Client, TrustAnchorId, Input, []).
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
get_crl(Client, CrlId)
  when is_map(Client) ->
    get_crl(Client, CrlId, #{}, #{}).

get_crl(Client, CrlId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_crl(Client, CrlId, QueryMap, HeadersMap, []).

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
get_profile(Client, ProfileId)
  when is_map(Client) ->
    get_profile(Client, ProfileId, #{}, #{}).

get_profile(Client, ProfileId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_profile(Client, ProfileId, QueryMap, HeadersMap, []).

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
get_subject(Client, SubjectId)
  when is_map(Client) ->
    get_subject(Client, SubjectId, #{}, #{}).

get_subject(Client, SubjectId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_subject(Client, SubjectId, QueryMap, HeadersMap, []).

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
get_trust_anchor(Client, TrustAnchorId)
  when is_map(Client) ->
    get_trust_anchor(Client, TrustAnchorId, #{}, #{}).

get_trust_anchor(Client, TrustAnchorId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_trust_anchor(Client, TrustAnchorId, QueryMap, HeadersMap, []).

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
%% been revoked by the issuing certificate Authority (CA). IAM Roles Anywhere
%% validates against the CRL before issuing credentials.
%%
%% Required permissions:
%% `rolesanywhere:ImportCrl'.
import_crl(Client, Input) ->
    import_crl(Client, Input, []).
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
list_crls(Client)
  when is_map(Client) ->
    list_crls(Client, #{}, #{}).

list_crls(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_crls(Client, QueryMap, HeadersMap, []).

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
list_profiles(Client)
  when is_map(Client) ->
    list_profiles(Client, #{}, #{}).

list_profiles(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_profiles(Client, QueryMap, HeadersMap, []).

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
list_subjects(Client)
  when is_map(Client) ->
    list_subjects(Client, #{}, #{}).

list_subjects(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_subjects(Client, QueryMap, HeadersMap, []).

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
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

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
list_trust_anchors(Client)
  when is_map(Client) ->
    list_trust_anchors(Client, #{}, #{}).

list_trust_anchors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_trust_anchors(Client, QueryMap, HeadersMap, []).

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

%% @doc Attaches a list of notification settings to a trust anchor.
%%
%% A notification setting includes information such as event name, threshold,
%% status of
%% the notification setting, and the channel to notify.
%%
%% Required permissions:
%% `rolesanywhere:PutNotificationSettings'.
put_notification_settings(Client, Input) ->
    put_notification_settings(Client, Input, []).
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
reset_notification_settings(Client, Input) ->
    reset_notification_settings(Client, Input, []).
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
tag_resource(Client, Input) ->
    tag_resource(Client, Input, []).
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
untag_resource(Client, Input) ->
    untag_resource(Client, Input, []).
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
update_crl(Client, CrlId, Input) ->
    update_crl(Client, CrlId, Input, []).
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
update_profile(Client, ProfileId, Input) ->
    update_profile(Client, ProfileId, Input, []).
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
update_trust_anchor(Client, TrustAnchorId, Input) ->
    update_trust_anchor(Client, TrustAnchorId, Input, []).
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

-spec proplists_take(any(), proplists:proplists(), any()) -> {any(), proplists:proplists()}.
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
