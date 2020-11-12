%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The AWS Serverless Application Repository makes it easy for
%% developers and enterprises to quickly find
%% and deploy serverless applications in the AWS Cloud.
%%
%% For more information about serverless applications,
%% see Serverless Computing and Applications on the AWS website.
%%
%% The AWS Serverless Application Repository is deeply integrated with the
%% AWS Lambda console, so that developers of
%% all levels can get started with serverless computing without needing to
%% learn anything new. You can use category
%% keywords to browse for applications such as web and mobile backends, data
%% processing applications, or chatbots.
%% You can also search for applications by name, publisher, or event source.
%% To use an application, you simply choose it,
%% configure any required fields, and deploy it with a few clicks.
%%
%% You can also easily publish applications, sharing them publicly with the
%% community at large, or privately
%% within your team or across your organization. To publish a serverless
%% application (or app), you can use the
%% AWS Management Console, AWS Command Line Interface (AWS CLI), or AWS SDKs
%% to upload the code. Along with the
%% code, you upload a simple manifest file, also known as the AWS Serverless
%% Application Model (AWS SAM) template.
%% For more information about AWS SAM, see AWS Serverless Application Model
%% (AWS SAM) on the AWS Labs
%% GitHub repository.
%%
%% The AWS Serverless Application Repository Developer Guide contains more
%% information about the two developer
%% experiences available:
%%
%% <ul>
%% <li>
%% Consuming Applications – Browse for applications and view information
%% about them, including
%% source code and readme files. Also install, configure, and deploy
%% applications of your choosing.
%%
%% Publishing Applications – Configure and upload applications to make them
%% available to other
%% developers, and publish new versions of applications.
%%
%% </li>
%% </ul>
-module(aws_serverlessapplicationrepository).

-export([create_application/2,
         create_application/3,
         create_application_version/4,
         create_application_version/5,
         create_cloud_formation_change_set/3,
         create_cloud_formation_change_set/4,
         create_cloud_formation_template/3,
         create_cloud_formation_template/4,
         delete_application/3,
         delete_application/4,
         get_application/3,
         get_application/4,
         get_application_policy/2,
         get_application_policy/3,
         get_cloud_formation_template/3,
         get_cloud_formation_template/4,
         list_application_dependencies/5,
         list_application_dependencies/6,
         list_application_versions/4,
         list_application_versions/5,
         list_applications/3,
         list_applications/4,
         put_application_policy/3,
         put_application_policy/4,
         unshare_application/3,
         unshare_application/4,
         update_application/3,
         update_application/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates an application, optionally including an AWS SAM file to
%% create the first application version in the same call.
create_application(Client, Input) ->
    create_application(Client, Input, []).
create_application(Client, Input0, Options) ->
    Method = post,
    Path = ["/applications"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an application version.
create_application_version(Client, ApplicationId, SemanticVersion, Input) ->
    create_application_version(Client, ApplicationId, SemanticVersion, Input, []).
create_application_version(Client, ApplicationId, SemanticVersion, Input0, Options) ->
    Method = put,
    Path = ["/applications/", http_uri:encode(ApplicationId), "/versions/", http_uri:encode(SemanticVersion), ""],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an AWS CloudFormation change set for the given application.
create_cloud_formation_change_set(Client, ApplicationId, Input) ->
    create_cloud_formation_change_set(Client, ApplicationId, Input, []).
create_cloud_formation_change_set(Client, ApplicationId, Input0, Options) ->
    Method = post,
    Path = ["/applications/", http_uri:encode(ApplicationId), "/changesets"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Creates an AWS CloudFormation template.
create_cloud_formation_template(Client, ApplicationId, Input) ->
    create_cloud_formation_template(Client, ApplicationId, Input, []).
create_cloud_formation_template(Client, ApplicationId, Input0, Options) ->
    Method = post,
    Path = ["/applications/", http_uri:encode(ApplicationId), "/templates"],
    SuccessStatusCode = 201,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified application.
delete_application(Client, ApplicationId, Input) ->
    delete_application(Client, ApplicationId, Input, []).
delete_application(Client, ApplicationId, Input0, Options) ->
    Method = delete,
    Path = ["/applications/", http_uri:encode(ApplicationId), ""],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Gets the specified application.
get_application(Client, ApplicationId, SemanticVersion)
  when is_map(Client) ->
    get_application(Client, ApplicationId, SemanticVersion, []).
get_application(Client, ApplicationId, SemanticVersion, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/applications/", http_uri:encode(ApplicationId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"semanticVersion">>, SemanticVersion}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the policy for the application.
get_application_policy(Client, ApplicationId)
  when is_map(Client) ->
    get_application_policy(Client, ApplicationId, []).
get_application_policy(Client, ApplicationId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/applications/", http_uri:encode(ApplicationId), "/policy"],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the specified AWS CloudFormation template.
get_cloud_formation_template(Client, ApplicationId, TemplateId)
  when is_map(Client) ->
    get_cloud_formation_template(Client, ApplicationId, TemplateId, []).
get_cloud_formation_template(Client, ApplicationId, TemplateId, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/applications/", http_uri:encode(ApplicationId), "/templates/", http_uri:encode(TemplateId), ""],
    SuccessStatusCode = 200,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves the list of applications nested in the containing
%% application.
list_application_dependencies(Client, ApplicationId, MaxItems, NextToken, SemanticVersion)
  when is_map(Client) ->
    list_application_dependencies(Client, ApplicationId, MaxItems, NextToken, SemanticVersion, []).
list_application_dependencies(Client, ApplicationId, MaxItems, NextToken, SemanticVersion, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/applications/", http_uri:encode(ApplicationId), "/dependencies"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxItems">>, MaxItems},
        {<<"nextToken">>, NextToken},
        {<<"semanticVersion">>, SemanticVersion}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists versions for the specified application.
list_application_versions(Client, ApplicationId, MaxItems, NextToken)
  when is_map(Client) ->
    list_application_versions(Client, ApplicationId, MaxItems, NextToken, []).
list_application_versions(Client, ApplicationId, MaxItems, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/applications/", http_uri:encode(ApplicationId), "/versions"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxItems">>, MaxItems},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Lists applications owned by the requester.
list_applications(Client, MaxItems, NextToken)
  when is_map(Client) ->
    list_applications(Client, MaxItems, NextToken, []).
list_applications(Client, MaxItems, NextToken, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/applications"],
    SuccessStatusCode = 200,

    Headers = [],

    Query0_ =
      [
        {<<"maxItems">>, MaxItems},
        {<<"nextToken">>, NextToken}
      ],
    Query_ = [H || {_, V} = H <- Query0_, V =/= undefined],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Sets the permission policy for an application.
%%
%% For the list of actions supported for this operation, see
%% Application
%% Permissions
%% .
put_application_policy(Client, ApplicationId, Input) ->
    put_application_policy(Client, ApplicationId, Input, []).
put_application_policy(Client, ApplicationId, Input0, Options) ->
    Method = put,
    Path = ["/applications/", http_uri:encode(ApplicationId), "/policy"],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Unshares an application from an AWS Organization.
%%
%% This operation can be called only from the organization's master account.
unshare_application(Client, ApplicationId, Input) ->
    unshare_application(Client, ApplicationId, Input, []).
unshare_application(Client, ApplicationId, Input0, Options) ->
    Method = post,
    Path = ["/applications/", http_uri:encode(ApplicationId), "/unshare"],
    SuccessStatusCode = 204,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the specified application.
update_application(Client, ApplicationId, Input) ->
    update_application(Client, ApplicationId, Input, []).
update_application(Client, ApplicationId, Input0, Options) ->
    Method = patch,
    Path = ["/applications/", http_uri:encode(ApplicationId), ""],
    SuccessStatusCode = 200,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), atom(), iolist(), list(),
              list(), map() | undefined, list(), pos_integer() | undefined) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map(),
    Error :: map().
request(Client, Method, Path, Query, Headers0, Input, Options, SuccessStatusCode) ->
    Client1 = Client#{service => <<"serverlessrepo">>},
    Host = build_host(<<"serverlessrepo">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),
    Payload = encode_payload(Input),
    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    handle_response(Response, SuccessStatusCode).

handle_response({ok, StatusCode, ResponseHeaders, Client}, SuccessStatusCode)
  when StatusCode =:= 200;
       StatusCode =:= 202;
       StatusCode =:= 204;
       StatusCode =:= SuccessStatusCode ->
    case hackney:body(Client) of
        {ok, <<>>} when StatusCode =:= 200;
                        StatusCode =:= SuccessStatusCode ->
            {ok, #{}, {StatusCode, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}, _) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}, _) ->
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
