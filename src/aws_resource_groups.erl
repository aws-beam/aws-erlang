%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS Resource Groups
%%
%% AWS Resource Groups lets you organize AWS resources such as Amazon EC2
%% instances, Amazon Relational Database Service databases, and Amazon S3
%% buckets into groups using criteria that you define as tags.
%%
%% A resource group is a collection of resources that match the resource
%% types specified in a query, and share one or more tags or portions of
%% tags. You can create a group of resources based on their roles in your
%% cloud infrastructure, lifecycle stages, regions, application layers, or
%% virtually any criteria. Resource Groups enable you to automate management
%% tasks, such as those in AWS Systems Manager Automation documents, on
%% tag-related resources in AWS Systems Manager. Groups of tagged resources
%% also let you quickly view a custom console in AWS Systems Manager that
%% shows AWS Config compliance and other monitoring data about member
%% resources.
%%
%% To create a resource group, build a resource query, and specify tags that
%% identify the criteria that members of the group have in common. Tags are
%% key-value pairs.
%%
%% For more information about Resource Groups, see the AWS Resource Groups
%% User Guide.
%%
%% AWS Resource Groups uses a REST-compliant API that you can use to perform
%% the following types of operations.
%%
%% <ul> <li> Create, Read, Update, and Delete (CRUD) operations on resource
%% groups and resource query entities
%%
%% </li> <li> Applying, editing, and removing tags from resource groups
%%
%% </li> <li> Resolving resource group member ARNs so they can be returned as
%% search results
%%
%% </li> <li> Getting data about resources that are members of a group
%%
%% </li> <li> Searching AWS resources based on a resource query
%%
%% </li> </ul>
-module(aws_resource_groups).

-export([create_group/2,
         create_group/3,
         delete_group/2,
         delete_group/3,
         get_group/2,
         get_group/3,
         get_group_configuration/2,
         get_group_configuration/3,
         get_group_query/2,
         get_group_query/3,
         get_tags/2,
         get_tags/3,
         group_resources/2,
         group_resources/3,
         list_group_resources/2,
         list_group_resources/3,
         list_groups/2,
         list_groups/3,
         search_resources/2,
         search_resources/3,
         tag/3,
         tag/4,
         ungroup_resources/2,
         ungroup_resources/3,
         untag/3,
         untag/4,
         update_group/2,
         update_group/3,
         update_group_query/2,
         update_group_query/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a resource group with the specified name and description.
%%
%% You can optionally include a resource query, or a service configuration.
create_group(Client, Input) ->
    create_group(Client, Input, []).
create_group(Client, Input0, Options) ->
    Method = post,
    Path = ["/groups"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes the specified resource group.
%%
%% Deleting a resource group does not delete any resources that are members
%% of the group; it only deletes the group structure.
delete_group(Client, Input) ->
    delete_group(Client, Input, []).
delete_group(Client, Input0, Options) ->
    Method = post,
    Path = ["/delete-group"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns information about a specified resource group.
get_group(Client, Input) ->
    get_group(Client, Input, []).
get_group(Client, Input0, Options) ->
    Method = post,
    Path = ["/get-group"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns the service configuration associated with the specified
%% resource group.
%%
%% AWS Resource Groups supports configurations for the following resource
%% group types:
%%
%% <ul> <li> `AWS::EC2::CapacityReservationPool' - Amazon EC2 capacity
%% reservation pools. For more information, see Working with capacity
%% reservation groups in the EC2 Users Guide.
%%
%% </li> </ul>
get_group_configuration(Client, Input) ->
    get_group_configuration(Client, Input, []).
get_group_configuration(Client, Input0, Options) ->
    Method = post,
    Path = ["/get-group-configuration"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Retrieves the resource query associated with the specified resource
%% group.
get_group_query(Client, Input) ->
    get_group_query(Client, Input, []).
get_group_query(Client, Input0, Options) ->
    Method = post,
    Path = ["/get-group-query"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of tags that are associated with a resource group,
%% specified by an ARN.
get_tags(Client, Arn)
  when is_map(Client) ->
    get_tags(Client, Arn, []).
get_tags(Client, Arn, Options)
  when is_map(Client), is_list(Options) ->
    Path = ["/resources/", aws_util:encode_uri(Arn), "/tags"],
    SuccessStatusCode = undefined,

    Headers = [],

    Query_ = [],

    request(Client, get, Path, Query_, Headers, undefined, Options, SuccessStatusCode).

%% @doc Adds the specified resources to the specified group.
group_resources(Client, Input) ->
    group_resources(Client, Input, []).
group_resources(Client, Input0, Options) ->
    Method = post,
    Path = ["/group-resources"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of ARNs of the resources that are members of a
%% specified resource group.
list_group_resources(Client, Input) ->
    list_group_resources(Client, Input, []).
list_group_resources(Client, Input0, Options) ->
    Method = post,
    Path = ["/list-group-resources"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of existing resource groups in your account.
list_groups(Client, Input) ->
    list_groups(Client, Input, []).
list_groups(Client, Input0, Options) ->
    Method = post,
    Path = ["/groups-list"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    QueryMapping = [
                     {<<"maxResults">>, <<"MaxResults">>},
                     {<<"nextToken">>, <<"NextToken">>}
                   ],
    {Query_, Input} = aws_request:build_headers(QueryMapping, Input1),
    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Returns a list of AWS resource identifiers that matches the specified
%% query.
%%
%% The query uses the same format as a resource query in a CreateGroup or
%% UpdateGroupQuery operation.
search_resources(Client, Input) ->
    search_resources(Client, Input, []).
search_resources(Client, Input0, Options) ->
    Method = post,
    Path = ["/resources/search"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Adds tags to a resource group with the specified ARN.
%%
%% Existing tags on a resource group are not changed if they are not
%% specified in the request parameters.
%%
%% Do not store personally identifiable information (PII) or other
%% confidential or sensitive information in tags. We use tags to provide you
%% with billing and administration services. Tags are not intended to be used
%% for private or sensitive data.
tag(Client, Arn, Input) ->
    tag(Client, Arn, Input, []).
tag(Client, Arn, Input0, Options) ->
    Method = put,
    Path = ["/resources/", aws_util:encode_uri(Arn), "/tags"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Removes the specified resources from the specified group.
ungroup_resources(Client, Input) ->
    ungroup_resources(Client, Input, []).
ungroup_resources(Client, Input0, Options) ->
    Method = post,
    Path = ["/ungroup-resources"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Deletes tags from a specified resource group.
untag(Client, Arn, Input) ->
    untag(Client, Arn, Input, []).
untag(Client, Arn, Input0, Options) ->
    Method = patch,
    Path = ["/resources/", aws_util:encode_uri(Arn), "/tags"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the description for an existing group.
%%
%% You cannot update the name of a resource group.
update_group(Client, Input) ->
    update_group(Client, Input, []).
update_group(Client, Input0, Options) ->
    Method = post,
    Path = ["/update-group"],
    SuccessStatusCode = undefined,

    Headers = [],
    Input1 = Input0,

    Query_ = [],
    Input = Input1,

    request(Client, Method, Path, Query_, Headers, Input, Options, SuccessStatusCode).

%% @doc Updates the resource query of a group.
update_group_query(Client, Input) ->
    update_group_query(Client, Input, []).
update_group_query(Client, Input0, Options) ->
    Method = post,
    Path = ["/update-group-query"],
    SuccessStatusCode = undefined,

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
    Client1 = Client#{service => <<"resource-groups">>},
    Host = build_host(<<"resource-groups">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders = [ {<<"Host">>, Host}
                        , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                        ],
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    Payload =
      case proplists:get_value(should_send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        undefined ->
          encode_payload(Input)
      end,

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
