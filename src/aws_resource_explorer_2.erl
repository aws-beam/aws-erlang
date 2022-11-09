%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Web Services Resource Explorer is a resource search and
%% discovery service.
%%
%% By using Resource Explorer, you can explore your resources using an
%% internet search engine-like experience. Examples of resources include
%% Amazon Relational Database Service (Amazon RDS) instances, Amazon Simple
%% Storage Service (Amazon S3) buckets, or Amazon DynamoDB tables. You can
%% search for your resources using resource metadata like names, tags, and
%% IDs. Resource Explorer can search across all of the Amazon Web Services
%% Regions in your account in which you turn the service on, to simplify your
%% cross-Region workloads.
%%
%% Resource Explorer scans the resources in each of the Amazon Web Services
%% Regions in your Amazon Web Services account in which you turn on Resource
%% Explorer. Resource Explorer creates and maintains an index in each Region,
%% with the details of that Region's resources.
%%
%% You can search across all of the indexed Regions in your account by
%% designating one of your Amazon Web Services Regions to contain the
%% aggregator index for the account. When you promote a local index in a
%% Region to become the aggregator index for the account, Resource Explorer
%% automatically replicates the index information from all local indexes in
%% the other Regions to the aggregator index. Therefore, the Region with the
%% aggregator index has a copy of all resource information for all Regions in
%% the account where you turned on Resource Explorer. As a result, views in
%% the aggregator index Region include resources from all of the indexed
%% Regions in your account.
%%
%% <p>For more information about Amazon Web Services Resource Explorer,
%% including how to enable and configure the service, see the <a
%% href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/">Amazon
%% Web Services Resource Explorer User Guide</a>.</p> <note> <p>The example
%% HTTP query requests and responses in this guide are displayed with the <a
%% href="https://json.org">JSON</a> formatted across multiple lines for
%% readability. The actual query responses from the Resource Explorer service
%% do not include this extra whitespace.</p> </note> <p> <b>We want your
%% feedback about this documentation</b> </p> <p>Our goal is to help you get
%% everything you can from Resource Explorer. If this guide helps you to do
%% that, then let us know. If the guide isn't helping you, then we want to
%% hear from you so we can address the issue. Use the <b>Feedback</b> link
%% that's in the upper-right corner of every page. That sends your comments
%% directly to the writers of this guide. We review every submission, looking
%% for opportunities to improve the documentation. Thank you in advance for
%% your help!</p>
-module(aws_resource_explorer_2).

-export([associate_default_view/2,
         associate_default_view/3,
         batch_get_view/2,
         batch_get_view/3,
         create_index/2,
         create_index/3,
         create_view/2,
         create_view/3,
         delete_index/2,
         delete_index/3,
         delete_view/2,
         delete_view/3,
         disassociate_default_view/2,
         disassociate_default_view/3,
         get_default_view/2,
         get_default_view/3,
         get_index/2,
         get_index/3,
         get_view/2,
         get_view/3,
         list_indexes/2,
         list_indexes/3,
         list_supported_resource_types/2,
         list_supported_resource_types/3,
         list_tags_for_resource/2,
         list_tags_for_resource/4,
         list_tags_for_resource/5,
         list_views/2,
         list_views/3,
         search/2,
         search/3,
         tag_resource/3,
         tag_resource/4,
         untag_resource/3,
         untag_resource/4,
         update_index_type/2,
         update_index_type/3,
         update_view/2,
         update_view/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Sets the specified view as the default for the Amazon Web Services
%% Region in which you call this operation.
%%
%% When a user performs a `Search' that doesn't explicitly specify which view
%% to use, then Amazon Web Services Resource Explorer automatically chooses
%% this default view for searches performed in this Amazon Web Services
%% Region.
%%
%% If an Amazon Web Services Region doesn't have a default view configured,
%% then users must explicitly specify a view with every `Search' operation
%% performed in that Region.
associate_default_view(Client, Input) ->
    associate_default_view(Client, Input, []).
associate_default_view(Client, Input0, Options0) ->
    Method = post,
    Path = ["/AssociateDefaultView"],
    SuccessStatusCode = 200,
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

%% @doc Retrieves details about a list of views.
batch_get_view(Client, Input) ->
    batch_get_view(Client, Input, []).
batch_get_view(Client, Input0, Options0) ->
    Method = post,
    Path = ["/BatchGetView"],
    SuccessStatusCode = 200,
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

%% @doc Turns on Amazon Web Services Resource Explorer in the Amazon Web
%% Services Region in which you called this operation by creating an index.
%%
%% Resource Explorer begins discovering the resources in this Region and
%% stores the details about the resources in the index so that they can be
%% queried by using the `Search' operation. You can create only one index in
%% a Region.
%%
%% This operation creates only a local index. To promote the local index in
%% one Amazon Web Services Region into the aggregator index for the Amazon
%% Web Services account, use the `UpdateIndexType' operation. For more
%% information, see Turning on cross-Region search by creating an aggregator
%% index in the Amazon Web Services Resource Explorer User Guide.
%%
%% For more details about what happens when you turn on Resource Explorer in
%% an Amazon Web Services Region, see Turn on Resource Explorer to index your
%% resources in an Amazon Web Services Region in the Amazon Web Services
%% Resource Explorer User Guide.
%%
%% If this is the first Amazon Web Services Region in which you've created an
%% index for Resource Explorer, then this operation also creates a
%% service-linked role in your Amazon Web Services account that allows
%% Resource Explorer to enumerate your resources to populate the index.
%%
%% <ul> <li> <p> <b>Action</b>: <code>resource-explorer-2:CreateIndex</code>
%% </p> <p> <b>Resource</b>: The ARN of the index (as it will exist after the
%% operation completes) in the Amazon Web Services Region and account in
%% which you're trying to create the index. Use the wildcard character
%% (<code>*</code>) at the end of the string to match the eventual UUID. For
%% example, the following <code>Resource</code> element restricts the role or
%% user to creating an index in only the <code>us-east-2</code> Region of the
%% specified account.</p> <p> <code>"Resource":
%% "arn:aws:resource-explorer-2:us-east-2:<i>&lt;account-id&gt;</i>:index/*"</code>
%% </p> <p>Alternatively, you can use <code>"Resource": "*"</code> to allow
%% the role or user to create an index in any Region.</p> </li> <li> <p>
%% <b>Action</b>: <code>iam:CreateServiceLinkedRole</code> </p> <p>
%% <b>Resource</b>: No specific resource (*). </p> <p>This permission is
%% required only the first time you create an index to turn on Resource
%% Explorer in the account. Resource Explorer uses this to create the <a
%% href="https://docs.aws.amazon.com/resource-explorer/latest/userguide/security_iam_service-linked-roles.html">service-linked
%% role needed to index the resources in your account</a>. Resource Explorer
%% uses the same service-linked role for all additional indexes you create
%% afterwards.</p> </li> </ul>
create_index(Client, Input) ->
    create_index(Client, Input, []).
create_index(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateIndex"],
    SuccessStatusCode = 200,
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

%% @doc Creates a view that users can query by using the `Search' operation.
%%
%% Results from queries that you make using this view include only resources
%% that match the view's `Filters'. For more information about Amazon Web
%% Services Resource Explorer views, see Managing views in the Amazon Web
%% Services Resource Explorer User Guide.
%%
%% Only the principals with an IAM identity-based policy that grants `Allow'
%% to the `Search' action on a `Resource' with the Amazon resource name (ARN)
%% of this view can `Search' using views you create with this operation.
create_view(Client, Input) ->
    create_view(Client, Input, []).
create_view(Client, Input0, Options0) ->
    Method = post,
    Path = ["/CreateView"],
    SuccessStatusCode = 200,
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

%% @doc Deletes the specified index and turns off Amazon Web Services
%% Resource Explorer in the specified Amazon Web Services Region.
%%
%% When you delete an index, Resource Explorer stops discovering and indexing
%% resources in that Region. Resource Explorer also deletes all views in that
%% Region. These actions occur as asynchronous background tasks. You can
%% check to see when the actions are complete by using the `GetIndex'
%% operation and checking the `Status' response value.
delete_index(Client, Input) ->
    delete_index(Client, Input, []).
delete_index(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteIndex"],
    SuccessStatusCode = 200,
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

%% @doc Deletes the specified view.
%%
%% If the specified view is the default view for its Amazon Web Services
%% Region, then all `Search' operations in that Region must explicitly
%% specify the view to use until you configure a new default by calling the
%% `AssociateDefaultView' operation.
delete_view(Client, Input) ->
    delete_view(Client, Input, []).
delete_view(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DeleteView"],
    SuccessStatusCode = 200,
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

%% @doc After you call this operation, the affected Amazon Web Services
%% Region no longer has a default view.
%%
%% All `Search' operations in that Region must explicitly specify a view or
%% the operation fails. You can configure a new default by calling the
%% `AssociateDefaultView' operation.
%%
%% If an Amazon Web Services Region doesn't have a default view configured,
%% then users must explicitly specify a view with every `Search' operation
%% performed in that Region.
disassociate_default_view(Client, Input) ->
    disassociate_default_view(Client, Input, []).
disassociate_default_view(Client, Input0, Options0) ->
    Method = post,
    Path = ["/DisassociateDefaultView"],
    SuccessStatusCode = 200,
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

%% @doc Retrieves the Amazon Resource Name (ARN) of the view that is the
%% default for the Amazon Web Services Region in which you call this
%% operation.
%%
%% You can then call `GetView' to retrieve the details of that view.
get_default_view(Client, Input) ->
    get_default_view(Client, Input, []).
get_default_view(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetDefaultView"],
    SuccessStatusCode = 200,
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

%% @doc Retrieves details about the Amazon Web Services Resource Explorer
%% index in the Amazon Web Services Region in which you invoked the
%% operation.
get_index(Client, Input) ->
    get_index(Client, Input, []).
get_index(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetIndex"],
    SuccessStatusCode = 200,
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

%% @doc Retrieves details of the specified view.
get_view(Client, Input) ->
    get_view(Client, Input, []).
get_view(Client, Input0, Options0) ->
    Method = post,
    Path = ["/GetView"],
    SuccessStatusCode = 200,
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

%% @doc Retrieves a list of all of the indexes in Amazon Web Services Regions
%% that are currently collecting resource information for Amazon Web Services
%% Resource Explorer.
list_indexes(Client, Input) ->
    list_indexes(Client, Input, []).
list_indexes(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListIndexes"],
    SuccessStatusCode = 200,
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

%% @doc Retrieves a list of all resource types currently supported by Amazon
%% Web Services Resource Explorer.
list_supported_resource_types(Client, Input) ->
    list_supported_resource_types(Client, Input, []).
list_supported_resource_types(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListSupportedResourceTypes"],
    SuccessStatusCode = 200,
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

%% @doc Lists the tags that are attached to the specified resource.
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

%% @doc Lists the Amazon resource names (ARNs) of the views available in the
%% Amazon Web Services Region in which you call this operation.
%%
%% Always check the `NextToken' response parameter for a `null' value when
%% calling a paginated operation. These operations can occasionally return an
%% empty set of results even when there are more results available. The
%% `NextToken' response parameter value is `null' only when there are no more
%% results to display.
list_views(Client, Input) ->
    list_views(Client, Input, []).
list_views(Client, Input0, Options0) ->
    Method = post,
    Path = ["/ListViews"],
    SuccessStatusCode = 200,
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

%% @doc Searches for resources and displays details about all resources that
%% match the specified criteria.
%%
%% You must specify a query string.
%%
%% All search queries must use a view. If you don't explicitly specify a
%% view, then Amazon Web Services Resource Explorer uses the default view for
%% the Amazon Web Services Region in which you call this operation. The
%% results are the logical intersection of the results that match both the
%% `QueryString' parameter supplied to this operation and the `SearchFilter'
%% parameter attached to the view.
%%
%% For the complete syntax supported by the `QueryString' parameter, see
%% Search query syntax reference for Resource Explorer.
%%
%% If your search results are empty, or are missing results that you think
%% should be there, see Troubleshooting Resource Explorer search.
search(Client, Input) ->
    search(Client, Input, []).
search(Client, Input0, Options0) ->
    Method = post,
    Path = ["/Search"],
    SuccessStatusCode = 200,
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

%% @doc Adds one or more tag key and value pairs to an Amazon Web Services
%% Resource Explorer view or index.
tag_resource(Client, ResourceArn, Input) ->
    tag_resource(Client, ResourceArn, Input, []).
tag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = post,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
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

%% @doc Removes one or more tag key and value pairs from an Amazon Web
%% Services Resource Explorer view or index.
untag_resource(Client, ResourceArn, Input) ->
    untag_resource(Client, ResourceArn, Input, []).
untag_resource(Client, ResourceArn, Input0, Options0) ->
    Method = delete,
    Path = ["/tags/", aws_util:encode_uri(ResourceArn), ""],
    SuccessStatusCode = 200,
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

%% @doc Changes the type of the index from one of the following types to the
%% other.
%%
%% For more information about indexes and the role they perform in Amazon Web
%% Services Resource Explorer, see Turning on cross-Region search by creating
%% an aggregator index in the Amazon Web Services Resource Explorer User
%% Guide.
%%
%% <ul> <li> `AGGREGATOR' index type
%%
%% The index contains information about resources from all Amazon Web
%% Services Regions in the Amazon Web Services account in which you've
%% created a Resource Explorer index. Resource information from all other
%% Regions is replicated to this Region's index.
%%
%% When you change the index type to `AGGREGATOR', Resource Explorer turns on
%% replication of all discovered resource information from the other Amazon
%% Web Services Regions in your account to this index. You can then, from
%% this Region only, perform resource search queries that span all Amazon Web
%% Services Regions in the Amazon Web Services account. Turning on
%% replication from all other Regions is performed by asynchronous background
%% tasks. You can check the status of the asynchronous tasks by using the
%% `GetIndex' operation. When the asynchronous tasks complete, the `Status'
%% response of that operation changes from `UPDATING' to `ACTIVE'. After
%% that, you can start to see results from other Amazon Web Services Regions
%% in query results. However, it can take several hours for replication from
%% all other Regions to complete.
%%
%% You can have only one aggregator index per Amazon Web Services account.
%% Before you can promote a different index to be the aggregator index for
%% the account, you must first demote the existing aggregator index to type
%% `LOCAL'.
%%
%% </li> <li> `LOCAL' index type
%%
%% The index contains information about resources in only the Amazon Web
%% Services Region in which the index exists. If an aggregator index in
%% another Region exists, then information in this local index is replicated
%% to the aggregator index.
%%
%% When you change the index type to `LOCAL', Resource Explorer turns off the
%% replication of resource information from all other Amazon Web Services
%% Regions in the Amazon Web Services account to this Region. The aggregator
%% index remains in the `UPDATING' state until all replication with other
%% Regions successfully stops. You can check the status of the asynchronous
%% task by using the `GetIndex' operation. When Resource Explorer
%% successfully stops all replication with other Regions, the `Status'
%% response of that operation changes from `UPDATING' to `ACTIVE'.
%% Separately, the resource information from other Regions that was
%% previously stored in the index is deleted within 30 days by another
%% background task. Until that asynchronous task completes, some results from
%% other Regions can continue to appear in search results.
%%
%% After you demote an aggregator index to a local index, you must wait 24
%% hours before you can promote another index to be the new aggregator index
%% for the account.
%%
%% </li> </ul>
update_index_type(Client, Input) ->
    update_index_type(Client, Input, []).
update_index_type(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateIndexType"],
    SuccessStatusCode = 200,
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

%% @doc Modifies some of the details of a view.
%%
%% You can change the filter string and the list of included properties. You
%% can't change the name of the view.
update_view(Client, Input) ->
    update_view(Client, Input, []).
update_view(Client, Input0, Options0) ->
    Method = post,
    Path = ["/UpdateView"],
    SuccessStatusCode = 200,
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
    Client1 = Client#{service => <<"resource-explorer-2">>},
    Host = build_host(<<"resource-explorer-2">>, Client1),
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
