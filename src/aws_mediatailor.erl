%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Use the AWS Elemental MediaTailor SDKs and CLI to configure scalable
%% ad insertion and linear channels.
%%
%% With MediaTailor, you can assemble existing content into a linear stream
%% and serve targeted ads to viewers while maintaining broadcast quality in
%% over-the-top (OTT) video applications. For information about using the
%% service, including detailed information about the settings covered in this
%% guide, see the AWS Elemental MediaTailor User Guide.
%%
%% Through the SDKs and the CLI you manage AWS Elemental MediaTailor
%% configurations and channels the same as you do through the console. For
%% example, you specify ad insertion behavior and mapping information for the
%% origin server and the ad decision server (ADS).
-module(aws_mediatailor).

-export([configure_logs_for_channel/2,
         configure_logs_for_channel/3,
         configure_logs_for_playback_configuration/2,
         configure_logs_for_playback_configuration/3,
         create_channel/3,
         create_channel/4,
         create_live_source/4,
         create_live_source/5,
         create_prefetch_schedule/4,
         create_prefetch_schedule/5,
         create_program/4,
         create_program/5,
         create_source_location/3,
         create_source_location/4,
         create_vod_source/4,
         create_vod_source/5,
         delete_channel/3,
         delete_channel/4,
         delete_channel_policy/3,
         delete_channel_policy/4,
         delete_live_source/4,
         delete_live_source/5,
         delete_playback_configuration/3,
         delete_playback_configuration/4,
         delete_prefetch_schedule/4,
         delete_prefetch_schedule/5,
         delete_program/4,
         delete_program/5,
         delete_source_location/3,
         delete_source_location/4,
         delete_vod_source/4,
         delete_vod_source/5,
         describe_channel/2,
         describe_channel/4,
         describe_channel/5,
         describe_live_source/3,
         describe_live_source/5,
         describe_live_source/6,
         describe_program/3,
         describe_program/5,
         describe_program/6,
         describe_source_location/2,
         describe_source_location/4,
         describe_source_location/5,
         describe_vod_source/3,
         describe_vod_source/5,
         describe_vod_source/6,
         get_channel_policy/2,
         get_channel_policy/4,
         get_channel_policy/5,
         get_channel_schedule/2,
         get_channel_schedule/4,
         get_channel_schedule/5,
         get_playback_configuration/2,
         get_playback_configuration/4,
         get_playback_configuration/5,
         get_prefetch_schedule/3,
         get_prefetch_schedule/5,
         get_prefetch_schedule/6,
         list_alerts/2,
         list_alerts/4,
         list_alerts/5,
         list_channels/1,
         list_channels/3,
         list_channels/4,
         list_live_sources/2,
         list_live_sources/4,
         list_live_sources/5,
         list_playback_configurations/1,
         list_playback_configurations/3,
         list_playback_configurations/4,
         list_prefetch_schedules/3,
         list_prefetch_schedules/4,
         list_source_locations/1,
         list_source_locations/3,
         list_source_locations/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_vod_sources/2,
         list_vod_sources/4,
         list_vod_sources/5,
         put_channel_policy/3,
         put_channel_policy/4,
         put_playback_configuration/2,
         put_playback_configuration/3,
         start_channel/3,
         start_channel/4,
         stop_channel/3,
         stop_channel/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_channel/3,
         update_channel/4,
         update_live_source/4,
         update_live_source/5,
         update_program/4,
         update_program/5,
         update_source_location/3,
         update_source_location/4,
         update_vod_source/4,
         update_vod_source/5]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Configures Amazon CloudWatch log settings for a channel.
configure_logs_for_channel(Client, Input) ->
    configure_logs_for_channel(Client, Input, []).
configure_logs_for_channel(Client, Input0, Options0) ->
    Method = put,
    Path = ["/configureLogs/channel"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Amazon CloudWatch log settings for a playback configuration.
configure_logs_for_playback_configuration(Client, Input) ->
    configure_logs_for_playback_configuration(Client, Input, []).
configure_logs_for_playback_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/configureLogs/playbackConfiguration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a channel.
%%
%% For information about MediaTailor channels, see Working with channels in
%% the MediaTailor User Guide.
create_channel(Client, ChannelName, Input) ->
    create_channel(Client, ChannelName, Input, []).
create_channel(Client, ChannelName, Input0, Options0) ->
    Method = post,
    Path = ["/channel/", aws_util:encode_uri(ChannelName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The live source configuration.
create_live_source(Client, LiveSourceName, SourceLocationName, Input) ->
    create_live_source(Client, LiveSourceName, SourceLocationName, Input, []).
create_live_source(Client, LiveSourceName, SourceLocationName, Input0, Options0) ->
    Method = post,
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), "/liveSource/", aws_util:encode_uri(LiveSourceName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a prefetch schedule for a playback configuration.
%%
%% A prefetch schedule allows you to tell MediaTailor to fetch and prepare
%% certain ads before an ad break happens. For more information about ad
%% prefetching, see Using ad prefetching in the MediaTailor User Guide.
create_prefetch_schedule(Client, Name, PlaybackConfigurationName, Input) ->
    create_prefetch_schedule(Client, Name, PlaybackConfigurationName, Input, []).
create_prefetch_schedule(Client, Name, PlaybackConfigurationName, Input0, Options0) ->
    Method = post,
    Path = ["/prefetchSchedule/", aws_util:encode_uri(PlaybackConfigurationName), "/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a program within a channel.
%%
%% For information about programs, see Working with programs in the
%% MediaTailor User Guide.
create_program(Client, ChannelName, ProgramName, Input) ->
    create_program(Client, ChannelName, ProgramName, Input, []).
create_program(Client, ChannelName, ProgramName, Input0, Options0) ->
    Method = post,
    Path = ["/channel/", aws_util:encode_uri(ChannelName), "/program/", aws_util:encode_uri(ProgramName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a source location.
%%
%% A source location is a container for sources. For more information about
%% source locations, see Working with source locations in the MediaTailor
%% User Guide.
create_source_location(Client, SourceLocationName, Input) ->
    create_source_location(Client, SourceLocationName, Input, []).
create_source_location(Client, SourceLocationName, Input0, Options0) ->
    Method = post,
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The VOD source configuration parameters.
create_vod_source(Client, SourceLocationName, VodSourceName, Input) ->
    create_vod_source(Client, SourceLocationName, VodSourceName, Input, []).
create_vod_source(Client, SourceLocationName, VodSourceName, Input0, Options0) ->
    Method = post,
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), "/vodSource/", aws_util:encode_uri(VodSourceName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a channel.
%%
%% For information about MediaTailor channels, see Working with channels in
%% the MediaTailor User Guide.
delete_channel(Client, ChannelName, Input) ->
    delete_channel(Client, ChannelName, Input, []).
delete_channel(Client, ChannelName, Input0, Options0) ->
    Method = delete,
    Path = ["/channel/", aws_util:encode_uri(ChannelName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The channel policy to delete.
delete_channel_policy(Client, ChannelName, Input) ->
    delete_channel_policy(Client, ChannelName, Input, []).
delete_channel_policy(Client, ChannelName, Input0, Options0) ->
    Method = delete,
    Path = ["/channel/", aws_util:encode_uri(ChannelName), "/policy"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The live source to delete.
delete_live_source(Client, LiveSourceName, SourceLocationName, Input) ->
    delete_live_source(Client, LiveSourceName, SourceLocationName, Input, []).
delete_live_source(Client, LiveSourceName, SourceLocationName, Input0, Options0) ->
    Method = delete,
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), "/liveSource/", aws_util:encode_uri(LiveSourceName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a playback configuration.
%%
%% For information about MediaTailor configurations, see Working with
%% configurations in AWS Elemental MediaTailor.
delete_playback_configuration(Client, Name, Input) ->
    delete_playback_configuration(Client, Name, Input, []).
delete_playback_configuration(Client, Name, Input0, Options0) ->
    Method = delete,
    Path = ["/playbackConfiguration/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a prefetch schedule for a specific playback configuration.
%%
%% If you call `DeletePrefetchSchedule' on an expired prefetch schedule,
%% MediaTailor returns an HTTP 404 status code. For more information about ad
%% prefetching, see Using ad prefetching in the MediaTailor User Guide.
delete_prefetch_schedule(Client, Name, PlaybackConfigurationName, Input) ->
    delete_prefetch_schedule(Client, Name, PlaybackConfigurationName, Input, []).
delete_prefetch_schedule(Client, Name, PlaybackConfigurationName, Input0, Options0) ->
    Method = delete,
    Path = ["/prefetchSchedule/", aws_util:encode_uri(PlaybackConfigurationName), "/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a program within a channel.
%%
%% For information about programs, see Working with programs in the
%% MediaTailor User Guide.
delete_program(Client, ChannelName, ProgramName, Input) ->
    delete_program(Client, ChannelName, ProgramName, Input, []).
delete_program(Client, ChannelName, ProgramName, Input0, Options0) ->
    Method = delete,
    Path = ["/channel/", aws_util:encode_uri(ChannelName), "/program/", aws_util:encode_uri(ProgramName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes a source location.
%%
%% A source location is a container for sources. For more information about
%% source locations, see Working with source locations in the MediaTailor
%% User Guide.
delete_source_location(Client, SourceLocationName, Input) ->
    delete_source_location(Client, SourceLocationName, Input, []).
delete_source_location(Client, SourceLocationName, Input0, Options0) ->
    Method = delete,
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The video on demand (VOD) source to delete.
delete_vod_source(Client, SourceLocationName, VodSourceName, Input) ->
    delete_vod_source(Client, SourceLocationName, VodSourceName, Input, []).
delete_vod_source(Client, SourceLocationName, VodSourceName, Input0, Options0) ->
    Method = delete,
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), "/vodSource/", aws_util:encode_uri(VodSourceName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Describes a channel.
%%
%% For information about MediaTailor channels, see Working with channels in
%% the MediaTailor User Guide.
describe_channel(Client, ChannelName)
  when is_map(Client) ->
    describe_channel(Client, ChannelName, #{}, #{}).

describe_channel(Client, ChannelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_channel(Client, ChannelName, QueryMap, HeadersMap, []).

describe_channel(Client, ChannelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channel/", aws_util:encode_uri(ChannelName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The live source to describe.
describe_live_source(Client, LiveSourceName, SourceLocationName)
  when is_map(Client) ->
    describe_live_source(Client, LiveSourceName, SourceLocationName, #{}, #{}).

describe_live_source(Client, LiveSourceName, SourceLocationName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_live_source(Client, LiveSourceName, SourceLocationName, QueryMap, HeadersMap, []).

describe_live_source(Client, LiveSourceName, SourceLocationName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), "/liveSource/", aws_util:encode_uri(LiveSourceName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a program within a channel.
%%
%% For information about programs, see Working with programs in the
%% MediaTailor User Guide.
describe_program(Client, ChannelName, ProgramName)
  when is_map(Client) ->
    describe_program(Client, ChannelName, ProgramName, #{}, #{}).

describe_program(Client, ChannelName, ProgramName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_program(Client, ChannelName, ProgramName, QueryMap, HeadersMap, []).

describe_program(Client, ChannelName, ProgramName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channel/", aws_util:encode_uri(ChannelName), "/program/", aws_util:encode_uri(ProgramName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Describes a source location.
%%
%% A source location is a container for sources. For more information about
%% source locations, see Working with source locations in the MediaTailor
%% User Guide.
describe_source_location(Client, SourceLocationName)
  when is_map(Client) ->
    describe_source_location(Client, SourceLocationName, #{}, #{}).

describe_source_location(Client, SourceLocationName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_source_location(Client, SourceLocationName, QueryMap, HeadersMap, []).

describe_source_location(Client, SourceLocationName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Provides details about a specific video on demand (VOD) source in a
%% specific source location.
describe_vod_source(Client, SourceLocationName, VodSourceName)
  when is_map(Client) ->
    describe_vod_source(Client, SourceLocationName, VodSourceName, #{}, #{}).

describe_vod_source(Client, SourceLocationName, VodSourceName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_vod_source(Client, SourceLocationName, VodSourceName, QueryMap, HeadersMap, []).

describe_vod_source(Client, SourceLocationName, VodSourceName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), "/vodSource/", aws_util:encode_uri(VodSourceName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns the channel's IAM policy.
%%
%% IAM policies are used to control access to your channel.
get_channel_policy(Client, ChannelName)
  when is_map(Client) ->
    get_channel_policy(Client, ChannelName, #{}, #{}).

get_channel_policy(Client, ChannelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channel_policy(Client, ChannelName, QueryMap, HeadersMap, []).

get_channel_policy(Client, ChannelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channel/", aws_util:encode_uri(ChannelName), "/policy"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about your channel's schedule.
get_channel_schedule(Client, ChannelName)
  when is_map(Client) ->
    get_channel_schedule(Client, ChannelName, #{}, #{}).

get_channel_schedule(Client, ChannelName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_channel_schedule(Client, ChannelName, QueryMap, HeadersMap, []).

get_channel_schedule(Client, ChannelName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channel/", aws_util:encode_uri(ChannelName), "/schedule"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"durationMinutes">>, maps:get(<<"durationMinutes">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a playback configuration.
%%
%% For information about MediaTailor configurations, see Working with
%% configurations in AWS Elemental MediaTailor.
get_playback_configuration(Client, Name)
  when is_map(Client) ->
    get_playback_configuration(Client, Name, #{}, #{}).

get_playback_configuration(Client, Name, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_playback_configuration(Client, Name, QueryMap, HeadersMap, []).

get_playback_configuration(Client, Name, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/playbackConfiguration/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a prefetch schedule for a playback configuration.
%%
%% A prefetch schedule allows you to tell MediaTailor to fetch and prepare
%% certain ads before an ad break happens. For more information about ad
%% prefetching, see Using ad prefetching in the MediaTailor User Guide.
get_prefetch_schedule(Client, Name, PlaybackConfigurationName)
  when is_map(Client) ->
    get_prefetch_schedule(Client, Name, PlaybackConfigurationName, #{}, #{}).

get_prefetch_schedule(Client, Name, PlaybackConfigurationName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_prefetch_schedule(Client, Name, PlaybackConfigurationName, QueryMap, HeadersMap, []).

get_prefetch_schedule(Client, Name, PlaybackConfigurationName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/prefetchSchedule/", aws_util:encode_uri(PlaybackConfigurationName), "/", aws_util:encode_uri(Name), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the alerts that are associated with a MediaTailor channel
%% assembly resource.
list_alerts(Client, ResourceArn)
  when is_map(Client) ->
    list_alerts(Client, ResourceArn, #{}, #{}).

list_alerts(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_alerts(Client, ResourceArn, QueryMap, HeadersMap, []).

list_alerts(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/alerts"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"resourceArn">>, ResourceArn}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves information about the channels that are associated with the
%% current AWS account.
list_channels(Client)
  when is_map(Client) ->
    list_channels(Client, #{}, #{}).

list_channels(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_channels(Client, QueryMap, HeadersMap, []).

list_channels(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/channels"],
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

%% @doc Lists the live sources contained in a source location.
%%
%% A source represents a piece of content.
list_live_sources(Client, SourceLocationName)
  when is_map(Client) ->
    list_live_sources(Client, SourceLocationName, #{}, #{}).

list_live_sources(Client, SourceLocationName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_live_sources(Client, SourceLocationName, QueryMap, HeadersMap, []).

list_live_sources(Client, SourceLocationName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), "/liveSources"],
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

%% @doc Retrieves existing playback configurations.
%%
%% For information about MediaTailor configurations, see Working with
%% Configurations in AWS Elemental MediaTailor.
list_playback_configurations(Client)
  when is_map(Client) ->
    list_playback_configurations(Client, #{}, #{}).

list_playback_configurations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_playback_configurations(Client, QueryMap, HeadersMap, []).

list_playback_configurations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/playbackConfigurations"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"MaxResults">>, maps:get(<<"MaxResults">>, QueryMap, undefined)},
        {<<"NextToken">>, maps:get(<<"NextToken">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the prefetch schedules for a playback configuration.
list_prefetch_schedules(Client, PlaybackConfigurationName, Input) ->
    list_prefetch_schedules(Client, PlaybackConfigurationName, Input, []).
list_prefetch_schedules(Client, PlaybackConfigurationName, Input0, Options0) ->
    Method = post,
    Path = ["/prefetchSchedule/", aws_util:encode_uri(PlaybackConfigurationName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Lists the source locations for a channel.
%%
%% A source location defines the host server URL, and contains a list of
%% sources.
list_source_locations(Client)
  when is_map(Client) ->
    list_source_locations(Client, #{}, #{}).

list_source_locations(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_source_locations(Client, QueryMap, HeadersMap, []).

list_source_locations(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sourceLocations"],
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

%% @doc A list of tags that are associated with this resource.
%%
%% Tags are key-value pairs that you can associate with Amazon resources to
%% help with organization, access control, and cost tracking. For more
%% information, see Tagging AWS Elemental MediaTailor Resources.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists the VOD sources contained in a source location.
%%
%% A source represents a piece of content.
list_vod_sources(Client, SourceLocationName)
  when is_map(Client) ->
    list_vod_sources(Client, SourceLocationName, #{}, #{}).

list_vod_sources(Client, SourceLocationName, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_vod_sources(Client, SourceLocationName, QueryMap, HeadersMap, []).

list_vod_sources(Client, SourceLocationName, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), "/vodSources"],
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

%% @doc Creates an IAM policy for the channel.
%%
%% IAM policies are used to control access to your channel.
put_channel_policy(Client, ChannelName, Input) ->
    put_channel_policy(Client, ChannelName, Input, []).
put_channel_policy(Client, ChannelName, Input0, Options0) ->
    Method = put,
    Path = ["/channel/", aws_util:encode_uri(ChannelName), "/policy"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Creates a playback configuration.
%%
%% For information about MediaTailor configurations, see Working with
%% configurations in AWS Elemental MediaTailor.
put_playback_configuration(Client, Input) ->
    put_playback_configuration(Client, Input, []).
put_playback_configuration(Client, Input0, Options0) ->
    Method = put,
    Path = ["/playbackConfiguration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Starts a channel.
%%
%% For information about MediaTailor channels, see Working with channels in
%% the MediaTailor User Guide.
start_channel(Client, ChannelName, Input) ->
    start_channel(Client, ChannelName, Input, []).
start_channel(Client, ChannelName, Input0, Options0) ->
    Method = put,
    Path = ["/channel/", aws_util:encode_uri(ChannelName), "/start"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Stops a channel.
%%
%% For information about MediaTailor channels, see Working with channels in
%% the MediaTailor User Guide.
stop_channel(Client, ChannelName, Input) ->
    stop_channel(Client, ChannelName, Input, []).
stop_channel(Client, ChannelName, Input0, Options0) ->
    Method = put,
    Path = ["/channel/", aws_util:encode_uri(ChannelName), "/stop"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The resource to tag.
%%
%% Tags are key-value pairs that you can associate with Amazon resources to
%% help with organization, access control, and cost tracking. For more
%% information, see Tagging AWS Elemental MediaTailor Resources.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc The resource to untag.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 204,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    QueryMapping = [
                     {<<"tagKeys">>, <<"TagKeys">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input2),
    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a channel.
%%
%% For information about MediaTailor channels, see Working with channels in
%% the MediaTailor User Guide.
update_channel(Client, ChannelName, Input) ->
    update_channel(Client, ChannelName, Input, []).
update_channel(Client, ChannelName, Input0, Options0) ->
    Method = put,
    Path = ["/channel/", aws_util:encode_uri(ChannelName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a live source's configuration.
update_live_source(Client, LiveSourceName, SourceLocationName, Input) ->
    update_live_source(Client, LiveSourceName, SourceLocationName, Input, []).
update_live_source(Client, LiveSourceName, SourceLocationName, Input0, Options0) ->
    Method = put,
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), "/liveSource/", aws_util:encode_uri(LiveSourceName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a program within a channel.
update_program(Client, ChannelName, ProgramName, Input) ->
    update_program(Client, ChannelName, ProgramName, Input, []).
update_program(Client, ChannelName, ProgramName, Input0, Options0) ->
    Method = put,
    Path = ["/channel/", aws_util:encode_uri(ChannelName), "/program/", aws_util:encode_uri(ProgramName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a source location.
%%
%% A source location is a container for sources. For more information about
%% source locations, see Working with source locations in the MediaTailor
%% User Guide.
update_source_location(Client, SourceLocationName, Input) ->
    update_source_location(Client, SourceLocationName, Input, []).
update_source_location(Client, SourceLocationName, Input0, Options0) ->
    Method = put,
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

    Headers = [],
    Input1 = Input0,

    CustomHeaders = [],
    Input2 = Input1,

    Query_ = [],
    Input = Input2,

    request(Client, Method, Path, Query_, CustomHeaders ++ Headers, Input, Options, SuccessStatusCode).

%% @doc Updates a VOD source's configuration.
update_vod_source(Client, SourceLocationName, VodSourceName, Input) ->
    update_vod_source(Client, SourceLocationName, VodSourceName, Input, []).
update_vod_source(Client, SourceLocationName, VodSourceName, Input0, Options0) ->
    Method = put,
    Path = ["/sourceLocation/", aws_util:encode_uri(SourceLocationName), "/vodSource/", aws_util:encode_uri(VodSourceName), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
               | Options0],

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
    Client1 = Client#{service => <<"mediatailor">>},
    Host = build_host(<<"api.mediatailor">>, Client1),
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
    Proto = maps:get(proto, Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
