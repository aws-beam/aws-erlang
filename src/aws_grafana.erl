%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Managed Grafana is a fully managed and secure data
%% visualization service that you can use to instantly query, correlate, and
%% visualize operational metrics, logs, and traces from multiple sources.
%%
%% Amazon Managed Grafana makes it easy to deploy, operate, and scale
%% Grafana, a widely deployed data visualization tool that is popular for its
%% extensible data support.
%%
%% With Amazon Managed Grafana, you create logically isolated Grafana servers
%% called workspaces. In a workspace, you can create Grafana dashboards and
%% visualizations to analyze your metrics, logs, and traces without having to
%% build, package, or deploy any hardware to run Grafana servers.
-module(aws_grafana).

-export([associate_license/4,
         associate_license/5,
         create_workspace/2,
         create_workspace/3,
         create_workspace_api_key/3,
         create_workspace_api_key/4,
         delete_workspace/3,
         delete_workspace/4,
         delete_workspace_api_key/4,
         delete_workspace_api_key/5,
         describe_workspace/2,
         describe_workspace/4,
         describe_workspace/5,
         describe_workspace_authentication/2,
         describe_workspace_authentication/4,
         describe_workspace_authentication/5,
         describe_workspace_configuration/2,
         describe_workspace_configuration/4,
         describe_workspace_configuration/5,
         disassociate_license/4,
         disassociate_license/5,
         list_permissions/2,
         list_permissions/4,
         list_permissions/5,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_versions/1,
         list_versions/3,
         list_versions/4,
         list_workspaces/1,
         list_workspaces/3,
         list_workspaces/4,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_permissions/3,
         update_permissions/4,
         update_workspace/3,
         update_workspace/4,
         update_workspace_authentication/3,
         update_workspace_authentication/4,
         update_workspace_configuration/3,
         update_workspace_configuration/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Assigns a Grafana Enterprise license to a workspace.
%%
%% Upgrading to Grafana Enterprise incurs additional fees. For more
%% information, see Upgrade a workspace to Grafana Enterprise:
%% https://docs.aws.amazon.com/grafana/latest/userguide/upgrade-to-Grafana-Enterprise.html.
associate_license(Client, LicenseType, WorkspaceId, Input) ->
    associate_license(Client, LicenseType, WorkspaceId, Input, []).
associate_license(Client, LicenseType, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/licenses/", aws_util:encode_uri(LicenseType), ""],
    SuccessStatusCode = 202,
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

%% @doc Creates a workspace.
%%
%% In a workspace, you can create Grafana dashboards and visualizations to
%% analyze your metrics, logs, and traces. You don't have to build,
%% package, or deploy any hardware to run the Grafana server.
%%
%% Don't use `CreateWorkspace' to modify an existing workspace.
%% Instead, use UpdateWorkspace:
%% https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspace.html.
create_workspace(Client, Input) ->
    create_workspace(Client, Input, []).
create_workspace(Client, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces"],
    SuccessStatusCode = 202,
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

%% @doc Creates a Grafana API key for the workspace.
%%
%% This key can be used to authenticate requests sent to the workspace's
%% HTTP API. See
%% [https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html]
%% for available APIs and example requests.
create_workspace_api_key(Client, WorkspaceId, Input) ->
    create_workspace_api_key(Client, WorkspaceId, Input, []).
create_workspace_api_key(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/apikeys"],
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

%% @doc Deletes an Amazon Managed Grafana workspace.
delete_workspace(Client, WorkspaceId, Input) ->
    delete_workspace(Client, WorkspaceId, Input, []).
delete_workspace(Client, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
    SuccessStatusCode = 202,
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

%% @doc Deletes a Grafana API key for the workspace.
delete_workspace_api_key(Client, KeyName, WorkspaceId, Input) ->
    delete_workspace_api_key(Client, KeyName, WorkspaceId, Input, []).
delete_workspace_api_key(Client, KeyName, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/apikeys/", aws_util:encode_uri(KeyName), ""],
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

%% @doc Displays information about one Amazon Managed Grafana workspace.
describe_workspace(Client, WorkspaceId)
  when is_map(Client) ->
    describe_workspace(Client, WorkspaceId, #{}, #{}).

describe_workspace(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_workspace(Client, WorkspaceId, QueryMap, HeadersMap, []).

describe_workspace(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Displays information about the authentication methods used in one
%% Amazon Managed Grafana workspace.
describe_workspace_authentication(Client, WorkspaceId)
  when is_map(Client) ->
    describe_workspace_authentication(Client, WorkspaceId, #{}, #{}).

describe_workspace_authentication(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_workspace_authentication(Client, WorkspaceId, QueryMap, HeadersMap, []).

describe_workspace_authentication(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/authentication"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the current configuration string for the given workspace.
describe_workspace_configuration(Client, WorkspaceId)
  when is_map(Client) ->
    describe_workspace_configuration(Client, WorkspaceId, #{}, #{}).

describe_workspace_configuration(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    describe_workspace_configuration(Client, WorkspaceId, QueryMap, HeadersMap, []).

describe_workspace_configuration(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/configuration"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Removes the Grafana Enterprise license from a workspace.
disassociate_license(Client, LicenseType, WorkspaceId, Input) ->
    disassociate_license(Client, LicenseType, WorkspaceId, Input, []).
disassociate_license(Client, LicenseType, WorkspaceId, Input0, Options0) ->
    Method = delete,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/licenses/", aws_util:encode_uri(LicenseType), ""],
    SuccessStatusCode = 202,
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

%% @doc Lists the users and groups who have the Grafana `Admin' and
%% `Editor' roles in this workspace.
%%
%% If you use this operation without specifying `userId' or
%% `groupId', the operation returns the roles of all users and groups. If
%% you specify a `userId' or a `groupId', only the roles for that
%% user or group are returned. If you do this, you can specify only one
%% `userId' or one `groupId'.
list_permissions(Client, WorkspaceId)
  when is_map(Client) ->
    list_permissions(Client, WorkspaceId, #{}, #{}).

list_permissions(Client, WorkspaceId, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_permissions(Client, WorkspaceId, QueryMap, HeadersMap, []).

list_permissions(Client, WorkspaceId, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/permissions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"groupId">>, maps:get(<<"groupId">>, QueryMap, undefined)},
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"userId">>, maps:get(<<"userId">>, QueryMap, undefined)},
        {<<"userType">>, maps:get(<<"userType">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc The `ListTagsForResource' operation returns the tags that are
%% associated with the Amazon Managed Service for Grafana resource specified
%% by the `resourceArn'.
%%
%% Currently, the only resource that can be tagged is a workspace.
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

%% @doc Lists available versions of Grafana.
%%
%% These are available when calling `CreateWorkspace'. Optionally,
%% include a workspace to list the versions to which it can be upgraded.
list_versions(Client)
  when is_map(Client) ->
    list_versions(Client, #{}, #{}).

list_versions(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_versions(Client, QueryMap, HeadersMap, []).

list_versions(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/versions"],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query0_ =
      [
        {<<"maxResults">>, maps:get(<<"maxResults">>, QueryMap, undefined)},
        {<<"nextToken">>, maps:get(<<"nextToken">>, QueryMap, undefined)},
        {<<"workspace-id">>, maps:get(<<"workspace-id">>, QueryMap, undefined)}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Returns a list of Amazon Managed Grafana workspaces in the account,
%% with some information about each workspace.
%%
%% For more complete information about one workspace, use DescribeWorkspace:
%% https://docs.aws.amazon.com/AAMG/latest/APIReference/API_DescribeWorkspace.html.
list_workspaces(Client)
  when is_map(Client) ->
    list_workspaces(Client, #{}, #{}).

list_workspaces(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_workspaces(Client, QueryMap, HeadersMap, []).

list_workspaces(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/workspaces"],
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

%% @doc The `TagResource' operation associates tags with an Amazon
%% Managed Grafana resource.
%%
%% Currently, the only resource that can be tagged is workspaces.
%%
%% If you specify a new tag key for the resource, this tag is appended to the
%% list of tags associated with the resource. If you specify a tag key that
%% is already associated with the resource, the new tag value that you
%% specify replaces the previous value for that tag.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
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

%% @doc The `UntagResource' operation removes the association of the tag
%% with the Amazon Managed Grafana resource.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false},
               {append_sha256_content_hash, false}
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

%% @doc Updates which users in a workspace have the Grafana `Admin' or
%% `Editor' roles.
update_permissions(Client, WorkspaceId, Input) ->
    update_permissions(Client, WorkspaceId, Input, []).
update_permissions(Client, WorkspaceId, Input0, Options0) ->
    Method = patch,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/permissions"],
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

%% @doc Modifies an existing Amazon Managed Grafana workspace.
%%
%% If you use this operation and omit any optional parameters, the existing
%% values of those parameters are not changed.
%%
%% To modify the user authentication methods that the workspace uses, such as
%% SAML or IAM Identity Center, use UpdateWorkspaceAuthentication:
%% https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspaceAuthentication.html.
%%
%% To modify which users in the workspace have the `Admin' and
%% `Editor' Grafana roles, use UpdatePermissions:
%% https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdatePermissions.html.
update_workspace(Client, WorkspaceId, Input) ->
    update_workspace(Client, WorkspaceId, Input, []).
update_workspace(Client, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), ""],
    SuccessStatusCode = 202,
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

%% @doc Use this operation to define the identity provider (IdP) that this
%% workspace authenticates users from, using SAML.
%%
%% You can also map SAML assertion attributes to workspace user information
%% and define which groups in the assertion attribute are to have the
%% `Admin' and `Editor' roles in the workspace.
%%
%% Changes to the authentication method for a workspace may take a few
%% minutes to take effect.
update_workspace_authentication(Client, WorkspaceId, Input) ->
    update_workspace_authentication(Client, WorkspaceId, Input, []).
update_workspace_authentication(Client, WorkspaceId, Input0, Options0) ->
    Method = post,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/authentication"],
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

%% @doc Updates the configuration string for the given workspace
update_workspace_configuration(Client, WorkspaceId, Input) ->
    update_workspace_configuration(Client, WorkspaceId, Input, []).
update_workspace_configuration(Client, WorkspaceId, Input0, Options0) ->
    Method = put,
    Path = ["/workspaces/", aws_util:encode_uri(WorkspaceId), "/configuration"],
    SuccessStatusCode = 202,
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
    Client1 = Client#{service => <<"grafana">>},
    Host = build_host(<<"grafana">>, Client1),
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
