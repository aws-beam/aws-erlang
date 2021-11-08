%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Service Catalog AppRegistry enables organizations
%% to understand the application context of their Amazon Web Services
%% resources.
%%
%% AppRegistry provides a repository of your applications, their resources,
%% and the application metadata that you use within your enterprise.
-module(aws_service_catalog_appregistry).

-export([associate_attribute_group/4,
         associate_attribute_group/5,
         associate_resource/5,
         associate_resource/6,
         create_application/2,
         create_application/3,
         create_attribute_group/2,
         create_attribute_group/3,
         delete_application/3,
         delete_application/4,
         delete_attribute_group/3,
         delete_attribute_group/4,
         disassociate_attribute_group/4,
         disassociate_attribute_group/5,
         disassociate_resource/5,
         disassociate_resource/6,
         get_application/2,
         get_application/4,
         get_application/5,
         get_associated_resource/4,
         get_associated_resource/6,
         get_associated_resource/7,
         get_attribute_group/2,
         get_attribute_group/4,
         get_attribute_group/5,
         list_applications/1,
         list_applications/3,
         list_applications/4,
         list_associated_attribute_groups/2,
         list_associated_attribute_groups/4,
         list_associated_attribute_groups/5,
         list_associated_resources/2,
         list_associated_resources/4,
         list_associated_resources/5,
         list_attribute_groups/1,
         list_attribute_groups/3,
         list_attribute_groups/4,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         sync_resource/4,
         sync_resource/5,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_application/3,
         update_application/4,
         update_attribute_group/3,
         update_attribute_group/4]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates an attribute group with an application to augment the
%% application's metadata with the group's attributes.
%%
%% This feature enables applications to be described with user-defined
%% details that are machine-readable, such as third-party integrations.
associate_attribute_group(Client, Application, AttributeGroup, Input) ->
    associate_attribute_group(Client, Application, AttributeGroup, Input, []).
associate_attribute_group(Client, Application, AttributeGroup, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(Application), "/attribute-groups/", aws_util:encode_uri(AttributeGroup), ""],
    SuccessStatusCode = undefined,
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

%% @doc Associates a resource with an application.
%%
%% Both the resource and the application can be specified either by ID or
%% name.
associate_resource(Client, Application, Resource, ResourceType, Input) ->
    associate_resource(Client, Application, Resource, ResourceType, Input, []).
associate_resource(Client, Application, Resource, ResourceType, Input0, Options0) ->
    Method = put,
    Path = ["/applications/", aws_util:encode_uri(Application), "/resources/", aws_util:encode_uri(ResourceType), "/", aws_util:encode_uri(Resource), ""],
    SuccessStatusCode = undefined,
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

%% @doc Creates a new application that is the top-level node in a hierarchy
%% of related cloud resource abstractions.
create_application(Client, Input) ->
    create_application(Client, Input, []).
create_application(Client, Input0, Options0) ->
    Method = post,
    Path = ["/applications"],
    SuccessStatusCode = 201,
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

%% @doc Creates a new attribute group as a container for user-defined
%% attributes.
%%
%% This feature enables users to have full control over their cloud
%% application's metadata in a rich machine-readable format to facilitate
%% integration with automated workflows and third-party tools.
create_attribute_group(Client, Input) ->
    create_attribute_group(Client, Input, []).
create_attribute_group(Client, Input0, Options0) ->
    Method = post,
    Path = ["/attribute-groups"],
    SuccessStatusCode = 201,
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

%% @doc Deletes an application that is specified either by its application ID
%% or name.
%%
%% All associated attribute groups and resources must be disassociated from
%% it before deleting an application.
delete_application(Client, Application, Input) ->
    delete_application(Client, Application, Input, []).
delete_application(Client, Application, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(Application), ""],
    SuccessStatusCode = undefined,
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

%% @doc Deletes an attribute group, specified either by its attribute group
%% ID or name.
delete_attribute_group(Client, AttributeGroup, Input) ->
    delete_attribute_group(Client, AttributeGroup, Input, []).
delete_attribute_group(Client, AttributeGroup, Input0, Options0) ->
    Method = delete,
    Path = ["/attribute-groups/", aws_util:encode_uri(AttributeGroup), ""],
    SuccessStatusCode = undefined,
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

%% @doc Disassociates an attribute group from an application to remove the
%% extra attributes contained in the attribute group from the application's
%% metadata.
%%
%% This operation reverts `AssociateAttributeGroup'.
disassociate_attribute_group(Client, Application, AttributeGroup, Input) ->
    disassociate_attribute_group(Client, Application, AttributeGroup, Input, []).
disassociate_attribute_group(Client, Application, AttributeGroup, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(Application), "/attribute-groups/", aws_util:encode_uri(AttributeGroup), ""],
    SuccessStatusCode = undefined,
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

%% @doc Disassociates a resource from application.
%%
%% Both the resource and the application can be specified either by ID or
%% name.
disassociate_resource(Client, Application, Resource, ResourceType, Input) ->
    disassociate_resource(Client, Application, Resource, ResourceType, Input, []).
disassociate_resource(Client, Application, Resource, ResourceType, Input0, Options0) ->
    Method = delete,
    Path = ["/applications/", aws_util:encode_uri(Application), "/resources/", aws_util:encode_uri(ResourceType), "/", aws_util:encode_uri(Resource), ""],
    SuccessStatusCode = undefined,
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

%% @doc Retrieves metadata information about one of your applications.
%%
%% The application can be specified either by its unique ID or by its name
%% (which is unique within one account in one region at a given point in
%% time). Specify by ID in automated workflows if you want to make sure that
%% the exact same application is returned or a `ResourceNotFoundException' is
%% thrown, avoiding the ABA addressing problem.
get_application(Client, Application)
  when is_map(Client) ->
    get_application(Client, Application, #{}, #{}).

get_application(Client, Application, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_application(Client, Application, QueryMap, HeadersMap, []).

get_application(Client, Application, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(Application), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Gets the resource associated with the application.
get_associated_resource(Client, Application, Resource, ResourceType)
  when is_map(Client) ->
    get_associated_resource(Client, Application, Resource, ResourceType, #{}, #{}).

get_associated_resource(Client, Application, Resource, ResourceType, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_associated_resource(Client, Application, Resource, ResourceType, QueryMap, HeadersMap, []).

get_associated_resource(Client, Application, Resource, ResourceType, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(Application), "/resources/", aws_util:encode_uri(ResourceType), "/", aws_util:encode_uri(Resource), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves an attribute group, either by its name or its ID.
%%
%% The attribute group can be specified either by its unique ID or by its
%% name.
get_attribute_group(Client, AttributeGroup)
  when is_map(Client) ->
    get_attribute_group(Client, AttributeGroup, #{}, #{}).

get_attribute_group(Client, AttributeGroup, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    get_attribute_group(Client, AttributeGroup, QueryMap, HeadersMap, []).

get_attribute_group(Client, AttributeGroup, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/attribute-groups/", aws_util:encode_uri(AttributeGroup), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Retrieves a list of all of your applications.
%%
%% Results are paginated.
list_applications(Client)
  when is_map(Client) ->
    list_applications(Client, #{}, #{}).

list_applications(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_applications(Client, QueryMap, HeadersMap, []).

list_applications(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications"],
    SuccessStatusCode = undefined,
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

%% @doc Lists all attribute groups that are associated with specified
%% application.
%%
%% Results are paginated.
list_associated_attribute_groups(Client, Application)
  when is_map(Client) ->
    list_associated_attribute_groups(Client, Application, #{}, #{}).

list_associated_attribute_groups(Client, Application, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_associated_attribute_groups(Client, Application, QueryMap, HeadersMap, []).

list_associated_attribute_groups(Client, Application, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(Application), "/attribute-groups"],
    SuccessStatusCode = undefined,
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

%% @doc Lists all resources that are associated with specified application.
%%
%% Results are paginated.
list_associated_resources(Client, Application)
  when is_map(Client) ->
    list_associated_resources(Client, Application, #{}, #{}).

list_associated_resources(Client, Application, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_associated_resources(Client, Application, QueryMap, HeadersMap, []).

list_associated_resources(Client, Application, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/applications/", aws_util:encode_uri(Application), "/resources"],
    SuccessStatusCode = undefined,
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

%% @doc Lists all attribute groups which you have access to.
%%
%% Results are paginated.
list_attribute_groups(Client)
  when is_map(Client) ->
    list_attribute_groups(Client, #{}, #{}).

list_attribute_groups(Client, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_attribute_groups(Client, QueryMap, HeadersMap, []).

list_attribute_groups(Client, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/attribute-groups"],
    SuccessStatusCode = undefined,
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

%% @doc Lists all of the tags on the resource.
list_tags_for_resource(Client, ResourceArn)
  when is_map(Client) ->
    list_tags_for_resource(Client, ResourceArn, #{}, #{}).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap) ->
    list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, []).

list_tags_for_resource(Client, ResourceArn, QueryMap, HeadersMap, Options0)
  when is_map(Client), is_map(QueryMap), is_map(HeadersMap), is_list(Options0) ->
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
    Options = [{send_body_as_binary, false},
               {receive_body_as_binary, false}
               | Options0],

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Syncs the resource with current AppRegistry records.
%%
%% Specifically, the resource’s AppRegistry system tags sync with its
%% associated application. We remove the resource's AppRegistry system tags
%% if it does not associate with the application. The caller must have
%% permissions to read and update the resource.
sync_resource(Client, Resource, ResourceType, Input) ->
    sync_resource(Client, Resource, ResourceType, Input, []).
sync_resource(Client, Resource, ResourceType, Input0, Options0) ->
    Method = post,
    Path = ["/sync/", aws_util:encode_uri(ResourceType), "/", aws_util:encode_uri(Resource), ""],
    SuccessStatusCode = undefined,
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

%% @doc Assigns one or more tags (key-value pairs) to the specified resource.
%%
%% Each tag consists of a key and an optional value. If a tag with the same
%% key is already associated with the resource, this action updates its
%% value.
%%
%% This operation returns an empty response if the call was successful.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
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

%% @doc Removes tags from a resource.
%%
%% This operation returns an empty response if the call was successful.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = undefined,
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

%% @doc Updates an existing application with new attributes.
update_application(Client, Application, Input) ->
    update_application(Client, Application, Input, []).
update_application(Client, Application, Input0, Options0) ->
    Method = patch,
    Path = ["/applications/", aws_util:encode_uri(Application), ""],
    SuccessStatusCode = undefined,
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

%% @doc Updates an existing attribute group with new details.
update_attribute_group(Client, AttributeGroup, Input) ->
    update_attribute_group(Client, AttributeGroup, Input, []).
update_attribute_group(Client, AttributeGroup, Input0, Options0) ->
    Method = patch,
    Path = ["/attribute-groups/", aws_util:encode_uri(AttributeGroup), ""],
    SuccessStatusCode = undefined,
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
    Client1 = Client#{service => <<"servicecatalog">>},
    Host = build_host(<<"servicecatalog-appregistry">>, Client1),
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
