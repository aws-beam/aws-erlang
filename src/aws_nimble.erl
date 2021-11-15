%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Welcome to the Amazon Nimble Studio API reference.
%%
%% This API reference provides methods, schema, resources, parameters, and
%% more to help you get the most out of Nimble Studio.
%%
%% Nimble Studio is a virtual studio that empowers visual effects, animation,
%% and interactive content teams to create content securely within a
%% scalable, private cloud service.
-module(aws_nimble).

-export([accept_eulas/3,
         accept_eulas/4,
         create_launch_profile/3,
         create_launch_profile/4,
         create_streaming_image/3,
         create_streaming_image/4,
         create_streaming_session/3,
         create_streaming_session/4,
         create_streaming_session_stream/4,
         create_streaming_session_stream/5,
         create_studio/2,
         create_studio/3,
         create_studio_component/3,
         create_studio_component/4,
         delete_launch_profile/4,
         delete_launch_profile/5,
         delete_launch_profile_member/5,
         delete_launch_profile_member/6,
         delete_streaming_image/4,
         delete_streaming_image/5,
         delete_streaming_session/4,
         delete_streaming_session/5,
         delete_studio/3,
         delete_studio/4,
         delete_studio_component/4,
         delete_studio_component/5,
         delete_studio_member/4,
         delete_studio_member/5,
         get_eula/2,
         get_eula/4,
         get_eula/5,
         get_launch_profile/3,
         get_launch_profile/5,
         get_launch_profile/6,
         get_launch_profile_details/3,
         get_launch_profile_details/5,
         get_launch_profile_details/6,
         get_launch_profile_initialization/6,
         get_launch_profile_initialization/8,
         get_launch_profile_initialization/9,
         get_launch_profile_member/4,
         get_launch_profile_member/6,
         get_launch_profile_member/7,
         get_streaming_image/3,
         get_streaming_image/5,
         get_streaming_image/6,
         get_streaming_session/3,
         get_streaming_session/5,
         get_streaming_session/6,
         get_streaming_session_stream/4,
         get_streaming_session_stream/6,
         get_streaming_session_stream/7,
         get_studio/2,
         get_studio/4,
         get_studio/5,
         get_studio_component/3,
         get_studio_component/5,
         get_studio_component/6,
         get_studio_member/3,
         get_studio_member/5,
         get_studio_member/6,
         list_eula_acceptances/2,
         list_eula_acceptances/4,
         list_eula_acceptances/5,
         list_eulas/1,
         list_eulas/3,
         list_eulas/4,
         list_launch_profile_members/3,
         list_launch_profile_members/5,
         list_launch_profile_members/6,
         list_launch_profiles/2,
         list_launch_profiles/4,
         list_launch_profiles/5,
         list_streaming_images/2,
         list_streaming_images/4,
         list_streaming_images/5,
         list_streaming_sessions/2,
         list_streaming_sessions/4,
         list_streaming_sessions/5,
         list_studio_components/2,
         list_studio_components/4,
         list_studio_components/5,
         list_studio_members/2,
         list_studio_members/4,
         list_studio_members/5,
         list_studios/1,
         list_studios/3,
         list_studios/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         put_launch_profile_members/4,
         put_launch_profile_members/5,
         put_studio_members/3,
         put_studio_members/4,
         start_streaming_session/4,
         start_streaming_session/5,
         start_studio_s_s_o_configuration_repair/3,
         start_studio_s_s_o_configuration_repair/4,
         stop_streaming_session/4,
         stop_streaming_session/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_launch_profile/4,
         update_launch_profile/5,
         update_launch_profile_member/5,
         update_launch_profile_member/6,
         update_streaming_image/4,
         update_streaming_image/5,
         update_studio/3,
         update_studio/4,
         update_studio_component/4,
         update_studio_component/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Accept EULAs.
accept_eulas(Client, StudioId, Input) ->
    accept_eulas(Client, StudioId, Input, []).
accept_eulas(Client, StudioId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/eula-acceptances"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create a launch profile.
create_launch_profile(Client, StudioId, Input) ->
    create_launch_profile(Client, StudioId, Input, []).
create_launch_profile(Client, StudioId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a streaming image resource in a studio.
create_streaming_image(Client, StudioId, Input) ->
    create_streaming_image(Client, StudioId, Input, []).
create_streaming_image(Client, StudioId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-images"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a streaming session in a studio.
%%
%% After invoking this operation, you must poll GetStreamingSession until the
%% streaming session is in state READY.
create_streaming_session(Client, StudioId, Input) ->
    create_streaming_session(Client, StudioId, Input, []).
create_streaming_session(Client, StudioId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-sessions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a streaming session stream for a streaming session.
%%
%% After invoking this API, invoke GetStreamingSessionStream with the
%% returned streamId to poll the resource until it is in state READY.
create_streaming_session_stream(Client, SessionId, StudioId, Input) ->
    create_streaming_session_stream(Client, SessionId, StudioId, Input, []).
create_streaming_session_stream(Client, SessionId, StudioId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-sessions/", aws_util:encode_uri(SessionId), "/streams"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Create a new Studio.
%%
%% When creating a Studio, two IAM roles must be provided: the admin role and
%% the user Role. These roles are assumed by your users when they log in to
%% the Nimble Studio portal.
%%
%% The user role must have the AmazonNimbleStudio-StudioUser managed policy
%% attached for the portal to function properly.
%%
%% The Admin Role must have the AmazonNimbleStudio-StudioAdmin managed policy
%% attached for the portal to function properly.
%%
%% You may optionally specify a KMS key in the StudioEncryptionConfiguration.
%%
%% In Nimble Studio, resource names, descriptions, initialization scripts,
%% and other data you provide are always encrypted at rest using an KMS key.
%% By default, this key is owned by Amazon Web Services and managed on your
%% behalf. You may provide your own KMS key when calling CreateStudio to
%% encrypt this data using a key you own and manage.
%%
%% When providing an KMS key during studio creation, Nimble Studio creates
%% KMS grants in your account to provide your studio user and admin roles
%% access to these KMS keys.
%%
%% If you delete this grant, the studio will no longer be accessible to your
%% portal users.
%%
%% If you delete the studio KMS key, your studio will no longer be
%% accessible.
create_studio(Client, Input) ->
    create_studio(Client, Input, []).
create_studio(Client, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a studio component resource.
create_studio_component(Client, StudioId, Input) ->
    create_studio_component(Client, StudioId, Input, []).
create_studio_component(Client, StudioId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/studio-components"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Permanently delete a launch profile.
delete_launch_profile(Client, LaunchProfileId, StudioId, Input) ->
    delete_launch_profile(Client, LaunchProfileId, StudioId, Input, []).
delete_launch_profile(Client, LaunchProfileId, StudioId, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles/", aws_util:encode_uri(LaunchProfileId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a user from launch profile membership.
delete_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId, Input) ->
    delete_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId, Input, []).
delete_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles/", aws_util:encode_uri(LaunchProfileId), "/membership/", aws_util:encode_uri(PrincipalId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete streaming image.
delete_streaming_image(Client, StreamingImageId, StudioId, Input) ->
    delete_streaming_image(Client, StreamingImageId, StudioId, Input, []).
delete_streaming_image(Client, StreamingImageId, StudioId, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-images/", aws_util:encode_uri(StreamingImageId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes streaming session resource.
%%
%% After invoking this operation, use GetStreamingSession to poll the
%% resource until it transitions to a DELETED state.
%%
%% A streaming session will count against your streaming session quota until
%% it is marked DELETED.
delete_streaming_session(Client, SessionId, StudioId, Input) ->
    delete_streaming_session(Client, SessionId, StudioId, Input, []).
delete_streaming_session(Client, SessionId, StudioId, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-sessions/", aws_util:encode_uri(SessionId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a studio resource.
delete_studio(Client, StudioId, Input) ->
    delete_studio(Client, StudioId, Input, []).
delete_studio(Client, StudioId, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a studio component resource.
delete_studio_component(Client, StudioComponentId, StudioId, Input) ->
    delete_studio_component(Client, StudioComponentId, StudioId, Input, []).
delete_studio_component(Client, StudioComponentId, StudioId, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/studio-components/", aws_util:encode_uri(StudioComponentId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Delete a user from studio membership.
delete_studio_member(Client, PrincipalId, StudioId, Input) ->
    delete_studio_member(Client, PrincipalId, StudioId, Input, []).
delete_studio_member(Client, PrincipalId, StudioId, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/membership/", aws_util:encode_uri(PrincipalId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Get Eula.
get_eula(Client, EulaId)
  when is_map(Client) ->
    get_eula(Client, EulaId, #{}, #{}).

get_eula(Client, EulaId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_eula(Client, EulaId, QueryMap, HeadersMap, []).

get_eula(Client, EulaId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/eulas/", aws_util:encode_uri(EulaId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a launch profile.
get_launch_profile(Client, LaunchProfileId, StudioId)
  when is_map(Client) ->
    get_launch_profile(Client, LaunchProfileId, StudioId, #{}, #{}).

get_launch_profile(Client, LaunchProfileId, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_launch_profile(Client, LaunchProfileId, StudioId, QueryMap, HeadersMap, []).

get_launch_profile(Client, LaunchProfileId, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles/", aws_util:encode_uri(LaunchProfileId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Launch profile details include the launch profile resource and
%% summary information of resources that are used by, or available to, the
%% launch profile.
%%
%% This includes the name and description of all studio components used by
%% the launch profiles, and the name and description of streaming images that
%% can be used with this launch profile.
get_launch_profile_details(Client, LaunchProfileId, StudioId)
  when is_map(Client) ->
    get_launch_profile_details(Client, LaunchProfileId, StudioId, #{}, #{}).

get_launch_profile_details(Client, LaunchProfileId, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_launch_profile_details(Client, LaunchProfileId, StudioId, QueryMap, HeadersMap, []).

get_launch_profile_details(Client, LaunchProfileId, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles/", aws_util:encode_uri(LaunchProfileId), "/details"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a launch profile initialization.
get_launch_profile_initialization(Client, LaunchProfileId, StudioId, LaunchProfileProtocolVersions, LaunchPurpose, Platform)
  when is_map(Client) ->
    get_launch_profile_initialization(Client, LaunchProfileId, StudioId, LaunchProfileProtocolVersions, LaunchPurpose, Platform, #{}, #{}).

get_launch_profile_initialization(Client, LaunchProfileId, StudioId, LaunchProfileProtocolVersions, LaunchPurpose, Platform, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_launch_profile_initialization(Client, LaunchProfileId, StudioId, LaunchProfileProtocolVersions, LaunchPurpose, Platform, QueryMap, HeadersMap, []).

get_launch_profile_initialization(Client, LaunchProfileId, StudioId, LaunchProfileProtocolVersions, LaunchPurpose, Platform, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles/", aws_util:encode_uri(LaunchProfileId), "/init"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"launchProfileProtocolVersions">>, LaunchProfileProtocolVersions},
        {<<"launchPurpose">>, LaunchPurpose},
        {<<"platform">>, Platform}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a user persona in launch profile membership.
get_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId)
  when is_map(Client) ->
    get_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId, #{}, #{}).

get_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId, QueryMap, HeadersMap, []).

get_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles/", aws_util:encode_uri(LaunchProfileId), "/membership/", aws_util:encode_uri(PrincipalId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get streaming image.
get_streaming_image(Client, StreamingImageId, StudioId)
  when is_map(Client) ->
    get_streaming_image(Client, StreamingImageId, StudioId, #{}, #{}).

get_streaming_image(Client, StreamingImageId, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_streaming_image(Client, StreamingImageId, StudioId, QueryMap, HeadersMap, []).

get_streaming_image(Client, StreamingImageId, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-images/", aws_util:encode_uri(StreamingImageId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets StreamingSession resource.
%%
%% anvoke this operation to poll for a streaming session state while creating
%% or deleting a session.
get_streaming_session(Client, SessionId, StudioId)
  when is_map(Client) ->
    get_streaming_session(Client, SessionId, StudioId, #{}, #{}).

get_streaming_session(Client, SessionId, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_streaming_session(Client, SessionId, StudioId, QueryMap, HeadersMap, []).

get_streaming_session(Client, SessionId, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-sessions/", aws_util:encode_uri(SessionId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a StreamingSessionStream for a streaming session.
%%
%% Invoke this operation to poll the resource after invoking
%% CreateStreamingSessionStream.
%%
%% After the StreamingSessionStream changes to the state READY, the url
%% property will contain a stream to be used with the DCV streaming client.
get_streaming_session_stream(Client, SessionId, StreamId, StudioId)
  when is_map(Client) ->
    get_streaming_session_stream(Client, SessionId, StreamId, StudioId, #{}, #{}).

get_streaming_session_stream(Client, SessionId, StreamId, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_streaming_session_stream(Client, SessionId, StreamId, StudioId, QueryMap, HeadersMap, []).

get_streaming_session_stream(Client, SessionId, StreamId, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-sessions/", aws_util:encode_uri(SessionId), "/streams/", aws_util:encode_uri(StreamId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a Studio resource.
get_studio(Client, StudioId)
  when is_map(Client) ->
    get_studio(Client, StudioId, #{}, #{}).

get_studio(Client, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_studio(Client, StudioId, QueryMap, HeadersMap, []).

get_studio(Client, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets a studio component resource.
get_studio_component(Client, StudioComponentId, StudioId)
  when is_map(Client) ->
    get_studio_component(Client, StudioComponentId, StudioId, #{}, #{}).

get_studio_component(Client, StudioComponentId, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_studio_component(Client, StudioComponentId, StudioId, QueryMap, HeadersMap, []).

get_studio_component(Client, StudioComponentId, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/studio-components/", aws_util:encode_uri(StudioComponentId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get a user's membership in a studio.
get_studio_member(Client, PrincipalId, StudioId)
  when is_map(Client) ->
    get_studio_member(Client, PrincipalId, StudioId, #{}, #{}).

get_studio_member(Client, PrincipalId, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_studio_member(Client, PrincipalId, StudioId, QueryMap, HeadersMap, []).

get_studio_member(Client, PrincipalId, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/membership/", aws_util:encode_uri(PrincipalId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List Eula Acceptances.
list_eula_acceptances(Client, StudioId)
  when is_map(Client) ->
    list_eula_acceptances(Client, StudioId, #{}, #{}).

list_eula_acceptances(Client, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_eula_acceptances(Client, StudioId, QueryMap, HeadersMap, []).

list_eula_acceptances(Client, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/eula-acceptances"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"eulaIds">>, maps:get(<<"eulaIds">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List Eulas.
list_eulas(Client)
  when is_map(Client) ->
    list_eulas(Client, #{}, #{}).

list_eulas(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_eulas(Client, QueryMap, HeadersMap, []).

list_eulas(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/eulas"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"eulaIds">>, maps:get(<<"eulaIds">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get all users in a given launch profile membership.
list_launch_profile_members(Client, LaunchProfileId, StudioId)
  when is_map(Client) ->
    list_launch_profile_members(Client, LaunchProfileId, StudioId, #{}, #{}).

list_launch_profile_members(Client, LaunchProfileId, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_launch_profile_members(Client, LaunchProfileId, StudioId, QueryMap, HeadersMap, []).

list_launch_profile_members(Client, LaunchProfileId, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles/", aws_util:encode_uri(LaunchProfileId), "/membership"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List all the launch profiles a studio.
list_launch_profiles(Client, StudioId)
  when is_map(Client) ->
    list_launch_profiles(Client, StudioId, #{}, #{}).

list_launch_profiles(Client, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_launch_profiles(Client, StudioId, QueryMap, HeadersMap, []).

list_launch_profiles(Client, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"principalId">>, maps:get(<<"principalId">>, QueryMap, undefined)},
        {<<"states">>, maps:get(<<"states">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List the streaming image resources available to this studio.
%%
%% This list will contain both images provided by Amazon Web Services, as
%% well as streaming images that you have created in your studio.
list_streaming_images(Client, StudioId)
  when is_map(Client) ->
    list_streaming_images(Client, StudioId, #{}, #{}).

list_streaming_images(Client, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_streaming_images(Client, StudioId, QueryMap, HeadersMap, []).

list_streaming_images(Client, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-images"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"owner">>, maps:get(<<"owner">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the streaming image resources in a studio.
list_streaming_sessions(Client, StudioId)
  when is_map(Client) ->
    list_streaming_sessions(Client, StudioId, #{}, #{}).

list_streaming_sessions(Client, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_streaming_sessions(Client, StudioId, QueryMap, HeadersMap, []).

list_streaming_sessions(Client, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-sessions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"createdBy">>, maps:get(<<"createdBy">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"ownedBy">>, maps:get(<<"ownedBy">>, QueryMap, undefined)},
        {<<"sessionIds">>, maps:get(<<"sessionIds">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the StudioComponents in a studio.
list_studio_components(Client, StudioId)
  when is_map(Client) ->
    list_studio_components(Client, StudioId, #{}, #{}).

list_studio_components(Client, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_studio_components(Client, StudioId, QueryMap, HeadersMap, []).

list_studio_components(Client, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/studio-components"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"states">>, maps:get(<<"states">>, QueryMap, undefined)},
        {<<"types">>, maps:get(<<"types">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Get all users in a given studio membership.
list_studio_members(Client, StudioId)
  when is_map(Client) ->
    list_studio_members(Client, StudioId, #{}, #{}).

list_studio_members(Client, StudioId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_studio_members(Client, StudioId, QueryMap, HeadersMap, []).

list_studio_members(Client, StudioId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/membership"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc List studios in your Amazon Web Services account in the requested
%% Amazon Web Services Region.
list_studios(Client)
  when is_map(Client) ->
    list_studios(Client, #{}, #{}).

list_studios(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_studios(Client, QueryMap, HeadersMap, []).

list_studios(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/studios"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the tags for a resource, given its Amazon Resource Names (ARN).
%%
%% This operation supports ARNs for all resource types in Nimble Studio that
%% support tags, including studio, studio component, launch profile,
%% streaming image, and streaming session. All resources that can be tagged
%% will contain an ARN property, so you do not have to create this ARN
%% yourself.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/2020-08-01/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Add/update users with given persona to launch profile membership.
put_launch_profile_members(Client, LaunchProfileId, StudioId, Input) ->
    put_launch_profile_members(Client, LaunchProfileId, StudioId, Input, []).
put_launch_profile_members(Client, LaunchProfileId, StudioId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles/", aws_util:encode_uri(LaunchProfileId), "/membership"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Add/update users with given persona to studio membership.
put_studio_members(Client, StudioId, Input) ->
    put_studio_members(Client, StudioId, Input, []).
put_studio_members(Client, StudioId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/membership"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Transitions sessions from the STOPPED state into the READY state.
%%
%% The START_IN_PROGRESS state is the intermediate state between the STOPPED
%% and READY states.
start_streaming_session(Client, SessionId, StudioId, Input) ->
    start_streaming_session(Client, SessionId, StudioId, Input, []).
start_streaming_session(Client, SessionId, StudioId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-sessions/", aws_util:encode_uri(SessionId), "/start"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Repairs the Amazon Web Services SSO configuration for a given studio.
%%
%% If the studio has a valid Amazon Web Services SSO configuration currently
%% associated with it, this operation will fail with a validation error.
%%
%% If the studio does not have a valid Amazon Web Services SSO configuration
%% currently associated with it, then a new Amazon Web Services SSO
%% application is created for the studio and the studio is changed to the
%% READY state.
%%
%% After the Amazon Web Services SSO application is repaired, you must use
%% the Amazon Nimble Studio console to add administrators and users to your
%% studio.
start_studio_s_s_o_configuration_repair(Client, StudioId, Input) ->
    start_studio_s_s_o_configuration_repair(Client, StudioId, Input, []).
start_studio_s_s_o_configuration_repair(Client, StudioId, Input0, Options0) ->
    Method = put,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/sso-configuration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Transitions sessions from the READY state into the STOPPED state.
%%
%% The STOP_IN_PROGRESS state is the intermediate state between the READY and
%% STOPPED states.
stop_streaming_session(Client, SessionId, StudioId, Input) ->
    stop_streaming_session(Client, SessionId, StudioId, Input, []).
stop_streaming_session(Client, SessionId, StudioId, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-sessions/", aws_util:encode_uri(SessionId), "/stop"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates tags for a resource, given its ARN.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/2020-08-01/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the tags for a resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/2020-08-01/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"tagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update a launch profile.
update_launch_profile(Client, LaunchProfileId, StudioId, Input) ->
    update_launch_profile(Client, LaunchProfileId, StudioId, Input, []).
update_launch_profile(Client, LaunchProfileId, StudioId, Input0, Options0) ->
    Method = patch,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles/", aws_util:encode_uri(LaunchProfileId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update a user persona in launch profile membership.
update_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId, Input) ->
    update_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId, Input, []).
update_launch_profile_member(Client, LaunchProfileId, PrincipalId, StudioId, Input0, Options0) ->
    Method = patch,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/launch-profiles/", aws_util:encode_uri(LaunchProfileId), "/membership/", aws_util:encode_uri(PrincipalId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update streaming image.
update_streaming_image(Client, StreamingImageId, StudioId, Input) ->
    update_streaming_image(Client, StreamingImageId, StudioId, Input, []).
update_streaming_image(Client, StreamingImageId, StudioId, Input0, Options0) ->
    Method = patch,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/streaming-images/", aws_util:encode_uri(StreamingImageId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Update a Studio resource.
%%
%% Currently, this operation only supports updating the displayName of your
%% studio.
update_studio(Client, StudioId, Input) ->
    update_studio(Client, StudioId, Input, []).
update_studio(Client, StudioId, Input0, Options0) ->
    Method = patch,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a studio component resource.
update_studio_component(Client, StudioComponentId, StudioId, Input) ->
    update_studio_component(Client, StudioComponentId, StudioId, Input, []).
update_studio_component(Client, StudioComponentId, StudioId, Input0, Options0) ->
    Method = patch,
    Path = ["/2020-08-01/studios/", aws_util:encode_uri(StudioId), "/studio-components/", aws_util:encode_uri(StudioComponentId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],


    HeadersMapping = [
                       {<<"X-Amz-Client-Token">>, <<"clientToken">>}
                     ],
    {Headers, Input1} = aws_request:build_headers(HeadersMapping, Input0),

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

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
    Client1 = Client#{service => <<"nimble">>},
    Host = build_host(<<"nimble">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

handle_response({ok, StatusCode, ResponseHeaders}, SuccessStatusCode, _DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    {ok, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders}, _, _DecodeBody) ->
    {error, {StatusCode, ResponseHeaders}};
handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode, DecodeBody)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = case DecodeBody of
                       true -> jsx:decode(Body);
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
