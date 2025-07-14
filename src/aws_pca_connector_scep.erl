%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Connector for SCEP creates a connector between Amazon Web Services
%% Private CA and your SCEP-enabled clients and devices.
%%
%% For more information, see Connector for SCEP:
%% https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep.html
%% in the Amazon Web Services Private CA User Guide.
-module(aws_pca_connector_scep).

-export([create_challenge/2,
         create_challenge/3,
         create_connector/2,
         create_connector/3,
         delete_challenge/3,
         delete_challenge/4,
         delete_connector/3,
         delete_connector/4,
         get_challenge_metadata/2,
         get_challenge_metadata/4,
         get_challenge_metadata/5,
         get_challenge_password/2,
         get_challenge_password/4,
         get_challenge_password/5,
         get_connector/2,
         get_connector/4,
         get_connector/5,
         list_challenge_metadata/2,
         list_challenge_metadata/4,
         list_challenge_metadata/5,
         list_connectors/1,
         list_connectors/3,
         list_connectors/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% connector() :: #{
%%   <<"Arn">> => string(),
%%   <<"CertificateAuthorityArn">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Endpoint">> => [string()],
%%   <<"MobileDeviceManagement">> => list(),
%%   <<"OpenIdConfiguration">> => open_id_configuration(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type connector() :: #{binary() => any()}.


%% Example:
%% tag_resource_request() :: #{
%%   <<"Tags">> := map()
%% }
-type tag_resource_request() :: #{binary() => any()}.


%% Example:
%% list_connectors_response() :: #{
%%   <<"Connectors">> => list(connector_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_connectors_response() :: #{binary() => any()}.


%% Example:
%% create_challenge_response() :: #{
%%   <<"Challenge">> => challenge()
%% }
-type create_challenge_response() :: #{binary() => any()}.


%% Example:
%% get_challenge_metadata_response() :: #{
%%   <<"ChallengeMetadata">> => challenge_metadata()
%% }
-type get_challenge_metadata_response() :: #{binary() => any()}.


%% Example:
%% list_connectors_request() :: #{
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_connectors_request() :: #{binary() => any()}.

%% Example:
%% get_challenge_password_request() :: #{}
-type get_challenge_password_request() :: #{}.


%% Example:
%% untag_resource_request() :: #{
%%   <<"TagKeys">> := list([string()]())
%% }
-type untag_resource_request() :: #{binary() => any()}.


%% Example:
%% create_challenge_request() :: #{
%%   <<"ClientToken">> => string(),
%%   <<"ConnectorArn">> := string(),
%%   <<"Tags">> => map()
%% }
-type create_challenge_request() :: #{binary() => any()}.


%% Example:
%% challenge_metadata_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"ConnectorArn">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type challenge_metadata_summary() :: #{binary() => any()}.


%% Example:
%% conflict_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"ResourceId">> => [string()],
%%   <<"ResourceType">> => [string()]
%% }
-type conflict_exception() :: #{binary() => any()}.


%% Example:
%% resource_not_found_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"ResourceId">> => [string()],
%%   <<"ResourceType">> => [string()]
%% }
-type resource_not_found_exception() :: #{binary() => any()}.


%% Example:
%% service_quota_exceeded_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"QuotaCode">> => [string()],
%%   <<"ResourceType">> => [string()],
%%   <<"ServiceCode">> => [string()]
%% }
-type service_quota_exceeded_exception() :: #{binary() => any()}.


%% Example:
%% open_id_configuration() :: #{
%%   <<"Audience">> => [string()],
%%   <<"Issuer">> => [string()],
%%   <<"Subject">> => [string()]
%% }
-type open_id_configuration() :: #{binary() => any()}.

%% Example:
%% delete_challenge_request() :: #{}
-type delete_challenge_request() :: #{}.


%% Example:
%% create_connector_response() :: #{
%%   <<"ConnectorArn">> => string()
%% }
-type create_connector_response() :: #{binary() => any()}.


%% Example:
%% list_tags_for_resource_response() :: #{
%%   <<"Tags">> => map()
%% }
-type list_tags_for_resource_response() :: #{binary() => any()}.


%% Example:
%% challenge() :: #{
%%   <<"Arn">> => string(),
%%   <<"ConnectorArn">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Password">> => string(),
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type challenge() :: #{binary() => any()}.

%% Example:
%% get_connector_request() :: #{}
-type get_connector_request() :: #{}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% access_denied_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% create_connector_request() :: #{
%%   <<"CertificateAuthorityArn">> := string(),
%%   <<"ClientToken">> => string(),
%%   <<"MobileDeviceManagement">> => list(),
%%   <<"Tags">> => map()
%% }
-type create_connector_request() :: #{binary() => any()}.


%% Example:
%% connector_summary() :: #{
%%   <<"Arn">> => string(),
%%   <<"CertificateAuthorityArn">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"Endpoint">> => [string()],
%%   <<"MobileDeviceManagement">> => list(),
%%   <<"OpenIdConfiguration">> => open_id_configuration(),
%%   <<"Status">> => list(any()),
%%   <<"StatusReason">> => list(any()),
%%   <<"Type">> => list(any()),
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type connector_summary() :: #{binary() => any()}.


%% Example:
%% validation_exception() :: #{
%%   <<"Message">> => [string()],
%%   <<"Reason">> => list(any())
%% }
-type validation_exception() :: #{binary() => any()}.

%% Example:
%% list_tags_for_resource_request() :: #{}
-type list_tags_for_resource_request() :: #{}.


%% Example:
%% throttling_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type throttling_exception() :: #{binary() => any()}.


%% Example:
%% get_connector_response() :: #{
%%   <<"Connector">> => connector()
%% }
-type get_connector_response() :: #{binary() => any()}.


%% Example:
%% list_challenge_metadata_request() :: #{
%%   <<"ConnectorArn">> := string(),
%%   <<"MaxResults">> => integer(),
%%   <<"NextToken">> => string()
%% }
-type list_challenge_metadata_request() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"Message">> => [string()]
%% }
-type bad_request_exception() :: #{binary() => any()}.

%% Example:
%% delete_connector_request() :: #{}
-type delete_connector_request() :: #{}.


%% Example:
%% challenge_metadata() :: #{
%%   <<"Arn">> => string(),
%%   <<"ConnectorArn">> => string(),
%%   <<"CreatedAt">> => [non_neg_integer()],
%%   <<"UpdatedAt">> => [non_neg_integer()]
%% }
-type challenge_metadata() :: #{binary() => any()}.

%% Example:
%% get_challenge_metadata_request() :: #{}
-type get_challenge_metadata_request() :: #{}.


%% Example:
%% intune_configuration() :: #{
%%   <<"AzureApplicationId">> => string(),
%%   <<"Domain">> => string()
%% }
-type intune_configuration() :: #{binary() => any()}.


%% Example:
%% list_challenge_metadata_response() :: #{
%%   <<"Challenges">> => list(challenge_metadata_summary()),
%%   <<"NextToken">> => string()
%% }
-type list_challenge_metadata_response() :: #{binary() => any()}.


%% Example:
%% get_challenge_password_response() :: #{
%%   <<"Password">> => string()
%% }
-type get_challenge_password_response() :: #{binary() => any()}.

-type create_challenge_errors() ::
    bad_request_exception() | 
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type create_connector_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    service_quota_exceeded_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_challenge_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type delete_connector_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception() | 
    conflict_exception().

-type get_challenge_metadata_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_challenge_password_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type get_connector_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_challenge_metadata_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type list_connectors_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception().

-type list_tags_for_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type tag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

-type untag_resource_errors() ::
    throttling_exception() | 
    validation_exception() | 
    access_denied_exception() | 
    internal_server_exception() | 
    resource_not_found_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc For general-purpose connectors.
%%
%% Creates a challenge password for the specified connector. The SCEP
%% protocol uses a challenge password to authenticate a request before
%% issuing a certificate from a certificate authority (CA). Your SCEP clients
%% include the challenge password as part of their certificate request to
%% Connector for SCEP. To retrieve the connector Amazon Resource Names (ARNs)
%% for the connectors in your account, call ListConnectors:
%% https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_ListConnectors.html.
%%
%% To create additional challenge passwords for the connector, call
%% `CreateChallenge' again. We recommend frequently rotating your
%% challenge passwords.
-spec create_challenge(aws_client:aws_client(), create_challenge_request()) ->
    {ok, create_challenge_response(), tuple()} |
    {error, any()} |
    {error, create_challenge_errors(), tuple()}.
create_challenge(Client, Input) ->
    create_challenge(Client, Input, []).

-spec create_challenge(aws_client:aws_client(), create_challenge_request(), proplists:proplist()) ->
    {ok, create_challenge_response(), tuple()} |
    {error, any()} |
    {error, create_challenge_errors(), tuple()}.
create_challenge(Client, Input0, Options0) ->
    Method = post,
    Path = ["/challenges"],
    SuccessStatusCode = 202,
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

%% @doc Creates a SCEP connector.
%%
%% A SCEP connector links Amazon Web Services Private Certificate Authority
%% to your SCEP-compatible devices and mobile device management (MDM)
%% systems. Before you create a connector, you must complete a set of
%% prerequisites, including creation of a private certificate authority (CA)
%% to use with this connector. For more information, see Connector for SCEP
%% prerequisites:
%% https://docs.aws.amazon.com/privateca/latest/userguide/scep-connector.htmlconnector-for-scep-prerequisites.html.
-spec create_connector(aws_client:aws_client(), create_connector_request()) ->
    {ok, create_connector_response(), tuple()} |
    {error, any()} |
    {error, create_connector_errors(), tuple()}.
create_connector(Client, Input) ->
    create_connector(Client, Input, []).

-spec create_connector(aws_client:aws_client(), create_connector_request(), proplists:proplist()) ->
    {ok, create_connector_response(), tuple()} |
    {error, any()} |
    {error, create_connector_errors(), tuple()}.
create_connector(Client, Input0, Options0) ->
    Method = post,
    Path = ["/connectors"],
    SuccessStatusCode = 202,
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

%% @doc Deletes the specified Challenge:
%% https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_Challenge.html.
-spec delete_challenge(aws_client:aws_client(), binary() | list(), delete_challenge_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_challenge_errors(), tuple()}.
delete_challenge(Client, ChallengeArn, Input) ->
    delete_challenge(Client, ChallengeArn, Input, []).

-spec delete_challenge(aws_client:aws_client(), binary() | list(), delete_challenge_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_challenge_errors(), tuple()}.
delete_challenge(Client, ChallengeArn, Input0, Options0) ->
    Method = delete,
    Path = ["/challenges/", aws_util:encode_uri(ChallengeArn), ""],
    SuccessStatusCode = 202,
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

%% @doc Deletes the specified Connector:
%% https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_Connector.html.
%%
%% This operation also deletes any challenges associated with the connector.
-spec delete_connector(aws_client:aws_client(), binary() | list(), delete_connector_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_connector_errors(), tuple()}.
delete_connector(Client, ConnectorArn, Input) ->
    delete_connector(Client, ConnectorArn, Input, []).

-spec delete_connector(aws_client:aws_client(), binary() | list(), delete_connector_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, delete_connector_errors(), tuple()}.
delete_connector(Client, ConnectorArn, Input0, Options0) ->
    Method = delete,
    Path = ["/connectors/", aws_util:encode_uri(ConnectorArn), ""],
    SuccessStatusCode = 202,
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

%% @doc Retrieves the metadata for the specified Challenge:
%% https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_Challenge.html.
-spec get_challenge_metadata(aws_client:aws_client(), binary() | list()) ->
    {ok, get_challenge_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_challenge_metadata_errors(), tuple()}.
get_challenge_metadata(Client, ChallengeArn)
  when is_map(Client) ->
    get_challenge_metadata(Client, ChallengeArn, #{}, #{}).

-spec get_challenge_metadata(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_challenge_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_challenge_metadata_errors(), tuple()}.
get_challenge_metadata(Client, ChallengeArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_challenge_metadata(Client, ChallengeArn, QueryMap, HeadersMap, []).

-spec get_challenge_metadata(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_challenge_metadata_response(), tuple()} |
    {error, any()} |
    {error, get_challenge_metadata_errors(), tuple()}.
get_challenge_metadata(Client, ChallengeArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/challengeMetadata/", aws_util:encode_uri(ChallengeArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the challenge password for the specified Challenge:
%% https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_Challenge.html.
-spec get_challenge_password(aws_client:aws_client(), binary() | list()) ->
    {ok, get_challenge_password_response(), tuple()} |
    {error, any()} |
    {error, get_challenge_password_errors(), tuple()}.
get_challenge_password(Client, ChallengeArn)
  when is_map(Client) ->
    get_challenge_password(Client, ChallengeArn, #{}, #{}).

-spec get_challenge_password(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_challenge_password_response(), tuple()} |
    {error, any()} |
    {error, get_challenge_password_errors(), tuple()}.
get_challenge_password(Client, ChallengeArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_challenge_password(Client, ChallengeArn, QueryMap, HeadersMap, []).

-spec get_challenge_password(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_challenge_password_response(), tuple()} |
    {error, any()} |
    {error, get_challenge_password_errors(), tuple()}.
get_challenge_password(Client, ChallengeArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/challengePasswords/", aws_util:encode_uri(ChallengeArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves details about the specified Connector:
%% https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_Connector.html.
%%
%% Calling this action returns important details about the connector, such as
%% the public SCEP URL where your clients can request certificates.
-spec get_connector(aws_client:aws_client(), binary() | list()) ->
    {ok, get_connector_response(), tuple()} |
    {error, any()} |
    {error, get_connector_errors(), tuple()}.
get_connector(Client, ConnectorArn)
  when is_map(Client) ->
    get_connector(Client, ConnectorArn, #{}, #{}).

-spec get_connector(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, get_connector_response(), tuple()} |
    {error, any()} |
    {error, get_connector_errors(), tuple()}.
get_connector(Client, ConnectorArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_connector(Client, ConnectorArn, QueryMap, HeadersMap, []).

-spec get_connector(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, get_connector_response(), tuple()} |
    {error, any()} |
    {error, get_connector_errors(), tuple()}.
get_connector(Client, ConnectorArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/connectors/", aws_util:encode_uri(ConnectorArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the challenge metadata for the specified ARN.
-spec list_challenge_metadata(aws_client:aws_client(), binary() | list()) ->
    {ok, list_challenge_metadata_response(), tuple()} |
    {error, any()} |
    {error, list_challenge_metadata_errors(), tuple()}.
list_challenge_metadata(Client, ConnectorArn)
  when is_map(Client) ->
    list_challenge_metadata(Client, ConnectorArn, #{}, #{}).

-spec list_challenge_metadata(aws_client:aws_client(), binary() | list(), map(), map()) ->
    {ok, list_challenge_metadata_response(), tuple()} |
    {error, any()} |
    {error, list_challenge_metadata_errors(), tuple()}.
list_challenge_metadata(Client, ConnectorArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_challenge_metadata(Client, ConnectorArn, QueryMap, HeadersMap, []).

-spec list_challenge_metadata(aws_client:aws_client(), binary() | list(), map(), map(), proplists:proplist()) ->
    {ok, list_challenge_metadata_response(), tuple()} |
    {error, any()} |
    {error, list_challenge_metadata_errors(), tuple()}.
list_challenge_metadata(Client, ConnectorArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/challengeMetadata"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"ConnectorArn">>, ConnectorArn},
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the connectors belonging to your Amazon Web Services account.
-spec list_connectors(aws_client:aws_client()) ->
    {ok, list_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_connectors_errors(), tuple()}.
list_connectors(Client)
  when is_map(Client) ->
    list_connectors(Client, #{}, #{}).

-spec list_connectors(aws_client:aws_client(), map(), map()) ->
    {ok, list_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_connectors_errors(), tuple()}.
list_connectors(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_connectors(Client, QueryMap, HeadersMap, []).

-spec list_connectors(aws_client:aws_client(), map(), map(), proplists:proplist()) ->
    {ok, list_connectors_response(), tuple()} |
    {error, any()} |
    {error, list_connectors_errors(), tuple()}.
list_connectors(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/connectors"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the tags associated with the specified resource.
%%
%% Tags are key-value pairs that
%% you can use to categorize and manage your resources, for purposes like
%% billing. For
%% example, you might set the tag key to &quot;customer&quot; and the value
%% to the customer name or ID.
%% You can specify one or more tags to add to each Amazon Web Services
%% resource, up to 50 tags for a
%% resource.
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
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary}
               | Options2],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Adds one or more tags to your resource.
-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).

-spec tag_resource(aws_client:aws_client(), binary() | list(), tag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, tag_resource_errors(), tuple()}.
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
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

%% @doc Removes one or more tags from your resource.
-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).

-spec untag_resource(aws_client:aws_client(), binary() | list(), untag_resource_request(), proplists:proplist()) ->
    {ok, undefined, tuple()} |
    {error, any()} |
    {error, untag_resource_errors(), tuple()}.
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
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
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
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
    Client1 = Client#{service => <<"pca-connector-scep">>},
    Host = build_host(<<"pca-connector-scep">>, Client1),
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
