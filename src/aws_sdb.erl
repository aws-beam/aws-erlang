%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon SimpleDB is a web service providing the core database
%% functions of data indexing and querying in the cloud. By offloading the
%% time and effort associated with building and operating a web-scale
%% database, SimpleDB provides developers the freedom to focus on application
%% development. A traditional, clustered relational database requires a
%% sizable upfront capital outlay, is complex to design, and often requires
%% extensive and repetitive database administration. Amazon SimpleDB is
%% dramatically simpler, requiring no schema, automatically indexing your
%% data and providing a simple API for storage and access. This approach
%% eliminates the administrative burden of data modeling, index maintenance,
%% and performance tuning. Developers gain access to this functionality
%% within Amazon's proven computing environment, are able to scale instantly,
%% and pay only for what they use.
%%
%% Visit <a
%% href="http://aws.amazon.com/simpledb/">http://aws.amazon.com/simpledb/</a>
%% for more information.
-module(aws_sdb).

-export([batch_delete_attributes/2,
         batch_delete_attributes/3,
         batch_put_attributes/2,
         batch_put_attributes/3,
         create_domain/2,
         create_domain/3,
         delete_attributes/2,
         delete_attributes/3,
         delete_domain/2,
         delete_domain/3,
         domain_metadata/2,
         domain_metadata/3,
         get_attributes/2,
         get_attributes/3,
         list_domains/2,
         list_domains/3,
         put_attributes/2,
         put_attributes/3,
         select/2,
         select/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Performs multiple DeleteAttributes operations in a single call, which
%% reduces round trips and latencies. This enables Amazon SimpleDB to
%% optimize requests, which generally yields better throughput.
%%
%% <note> If you specify BatchDeleteAttributes without attributes or values,
%% all the attributes for the item are deleted.
%%
%% BatchDeleteAttributes is an idempotent operation; running it multiple
%% times on the same item or attribute doesn't result in an error.
%%
%% The BatchDeleteAttributes operation succeeds or fails in its entirety.
%% There are no partial deletes. You can execute multiple
%% BatchDeleteAttributes operations and other operations in parallel.
%% However, large numbers of concurrent BatchDeleteAttributes calls can
%% result in Service Unavailable (503) responses.
%%
%% This operation is vulnerable to exceeding the maximum URL size when making
%% a REST request using the HTTP GET method.
%%
%% This operation does not support conditions using Expected.X.Name,
%% Expected.X.Value, or Expected.X.Exists.
%%
%% </note> The following limitations are enforced for this operation: <ul>
%% <li>1 MB request size</li> <li>25 item limit per BatchDeleteAttributes
%% operation</li> </ul>
batch_delete_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_delete_attributes(Client, Input, []).
batch_delete_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchDeleteAttributes">>, Input, Options).

%% @doc The <code>BatchPutAttributes</code> operation creates or replaces
%% attributes within one or more items. By using this operation, the client
%% can perform multiple <a>PutAttribute</a> operation with a single call.
%% This helps yield savings in round trips and latencies, enabling Amazon
%% SimpleDB to optimize requests and generally produce better throughput.
%%
%% The client may specify the item name with the <code>Item.X.ItemName</code>
%% parameter. The client may specify new attributes using a combination of
%% the <code>Item.X.Attribute.Y.Name</code> and
%% <code>Item.X.Attribute.Y.Value</code> parameters. The client may specify
%% the first attribute for the first item using the parameters
%% <code>Item.0.Attribute.0.Name</code> and
%% <code>Item.0.Attribute.0.Value</code>, and for the second attribute for
%% the first item by the parameters <code>Item.0.Attribute.1.Name</code> and
%% <code>Item.0.Attribute.1.Value</code>, and so on.
%%
%% Attributes are uniquely identified within an item by their name/value
%% combination. For example, a single item can have the attributes <code>{
%% "first_name", "first_value" }</code> and <code>{ "first_name",
%% "second_value" }</code>. However, it cannot have two attribute instances
%% where both the <code>Item.X.Attribute.Y.Name</code> and
%% <code>Item.X.Attribute.Y.Value</code> are the same.
%%
%% Optionally, the requester can supply the <code>Replace</code> parameter
%% for each individual value. Setting this value to <code>true</code> will
%% cause the new attribute values to replace the existing attribute values.
%% For example, if an item <code>I</code> has the attributes <code>{ 'a', '1'
%% }, { 'b', '2'}</code> and <code>{ 'b', '3' }</code> and the requester does
%% a BatchPutAttributes of <code>{'I', 'b', '4' }</code> with the Replace
%% parameter set to true, the final attributes of the item will be <code>{
%% 'a', '1' }</code> and <code>{ 'b', '4' }</code>, replacing the previous
%% values of the 'b' attribute with the new value.
%%
%% <note> You cannot specify an empty string as an item or as an attribute
%% name. The <code>BatchPutAttributes</code> operation succeeds or fails in
%% its entirety. There are no partial puts. </note> <important> This
%% operation is vulnerable to exceeding the maximum URL size when making a
%% REST request using the HTTP GET method. This operation does not support
%% conditions using <code>Expected.X.Name</code>,
%% <code>Expected.X.Value</code>, or <code>Expected.X.Exists</code>.
%% </important> You can execute multiple <code>BatchPutAttributes</code>
%% operations and other operations in parallel. However, large numbers of
%% concurrent <code>BatchPutAttributes</code> calls can result in Service
%% Unavailable (503) responses.
%%
%% The following limitations are enforced for this operation: <ul> <li>256
%% attribute name-value pairs per item</li> <li>1 MB request size</li> <li>1
%% billion attributes per domain</li> <li>10 GB of total user data storage
%% per domain</li> <li>25 item limit per <code>BatchPutAttributes</code>
%% operation</li> </ul>
batch_put_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    batch_put_attributes(Client, Input, []).
batch_put_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"BatchPutAttributes">>, Input, Options).

%% @doc The <code>CreateDomain</code> operation creates a new domain. The
%% domain name should be unique among the domains associated with the Access
%% Key ID provided in the request. The <code>CreateDomain</code> operation
%% may take 10 or more seconds to complete.
%%
%% <note> CreateDomain is an idempotent operation; running it multiple times
%% using the same domain name will not result in an error response. </note>
%% The client can create up to 100 domains per account.
%%
%% If the client requires additional domains, go to <a
%% href="http://aws.amazon.com/contact-us/simpledb-limit-request/">
%% http://aws.amazon.com/contact-us/simpledb-limit-request/</a>.
create_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_domain(Client, Input, []).
create_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateDomain">>, Input, Options).

%% @doc Deletes one or more attributes associated with an item. If all
%% attributes of the item are deleted, the item is deleted.
%%
%% <note> If <code>DeleteAttributes</code> is called without being passed any
%% attributes or values specified, all the attributes for the item are
%% deleted. </note> <code>DeleteAttributes</code> is an idempotent operation;
%% running it multiple times on the same item or attribute does not result in
%% an error response.
%%
%% Because Amazon SimpleDB makes multiple copies of item data and uses an
%% eventual consistency update model, performing a <a>GetAttributes</a> or
%% <a>Select</a> operation (read) immediately after a
%% <code>DeleteAttributes</code> or <a>PutAttributes</a> operation (write)
%% might not return updated item data.
delete_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_attributes(Client, Input, []).
delete_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteAttributes">>, Input, Options).

%% @doc The <code>DeleteDomain</code> operation deletes a domain. Any items
%% (and their attributes) in the domain are deleted as well. The
%% <code>DeleteDomain</code> operation might take 10 or more seconds to
%% complete.
%%
%% <note> Running <code>DeleteDomain</code> on a domain that does not exist
%% or running the function multiple times using the same domain name will not
%% result in an error response. </note>
delete_domain(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_domain(Client, Input, []).
delete_domain(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteDomain">>, Input, Options).

%% @doc Returns information about the domain, including when the domain was
%% created, the number of items and attributes in the domain, and the size of
%% the attribute names and values.
domain_metadata(Client, Input)
  when is_map(Client), is_map(Input) ->
    domain_metadata(Client, Input, []).
domain_metadata(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DomainMetadata">>, Input, Options).

%% @doc Returns all of the attributes associated with the specified item.
%% Optionally, the attributes returned can be limited to one or more
%% attributes by specifying an attribute name parameter.
%%
%% If the item does not exist on the replica that was accessed for this
%% operation, an empty set is returned. The system does not return an error
%% as it cannot guarantee the item does not exist on other replicas.
%%
%% <note> If GetAttributes is called without being passed any attribute
%% names, all the attributes for the item are returned. </note>
get_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_attributes(Client, Input, []).
get_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAttributes">>, Input, Options).

%% @doc The <code>ListDomains</code> operation lists all domains associated
%% with the Access Key ID. It returns domain names up to the limit set by <a
%% href="#MaxNumberOfDomains">MaxNumberOfDomains</a>. A <a
%% href="#NextToken">NextToken</a> is returned if there are more than
%% <code>MaxNumberOfDomains</code> domains. Calling <code>ListDomains</code>
%% successive times with the <code>NextToken</code> provided by the operation
%% returns up to <code>MaxNumberOfDomains</code> more domain names with each
%% successive operation call.
list_domains(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_domains(Client, Input, []).
list_domains(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListDomains">>, Input, Options).

%% @doc The PutAttributes operation creates or replaces attributes in an
%% item. The client may specify new attributes using a combination of the
%% <code>Attribute.X.Name</code> and <code>Attribute.X.Value</code>
%% parameters. The client specifies the first attribute by the parameters
%% <code>Attribute.0.Name</code> and <code>Attribute.0.Value</code>, the
%% second attribute by the parameters <code>Attribute.1.Name</code> and
%% <code>Attribute.1.Value</code>, and so on.
%%
%% Attributes are uniquely identified in an item by their name/value
%% combination. For example, a single item can have the attributes <code>{
%% "first_name", "first_value" }</code> and <code>{ "first_name",
%% second_value" }</code>. However, it cannot have two attribute instances
%% where both the <code>Attribute.X.Name</code> and
%% <code>Attribute.X.Value</code> are the same.
%%
%% Optionally, the requestor can supply the <code>Replace</code> parameter
%% for each individual attribute. Setting this value to <code>true</code>
%% causes the new attribute value to replace the existing attribute value(s).
%% For example, if an item has the attributes <code>{ 'a', '1' }</code>,
%% <code>{ 'b', '2'}</code> and <code>{ 'b', '3' }</code> and the requestor
%% calls <code>PutAttributes</code> using the attributes <code>{ 'b', '4'
%% }</code> with the <code>Replace</code> parameter set to true, the final
%% attributes of the item are changed to <code>{ 'a', '1' }</code> and
%% <code>{ 'b', '4' }</code>, which replaces the previous values of the 'b'
%% attribute with the new value.
%%
%% <note> Using <code>PutAttributes</code> to replace attribute values that
%% do not exist will not result in an error response. </note> You cannot
%% specify an empty string as an attribute name.
%%
%% Because Amazon SimpleDB makes multiple copies of client data and uses an
%% eventual consistency update model, an immediate <a>GetAttributes</a> or
%% <a>Select</a> operation (read) immediately after a <a>PutAttributes</a> or
%% <a>DeleteAttributes</a> operation (write) might not return the updated
%% data.
%%
%% The following limitations are enforced for this operation: <ul> <li>256
%% total attribute name-value pairs per item</li> <li>One billion attributes
%% per domain</li> <li>10 GB of total user data storage per domain</li> </ul>
put_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_attributes(Client, Input, []).
put_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutAttributes">>, Input, Options).

%% @doc The <code>Select</code> operation returns a set of attributes for
%% <code>ItemNames</code> that match the select expression.
%% <code>Select</code> is similar to the standard SQL SELECT statement.
%%
%% The total size of the response cannot exceed 1 MB in total size. Amazon
%% SimpleDB automatically adjusts the number of items returned per page to
%% enforce this limit. For example, if the client asks to retrieve 2500
%% items, but each individual item is 10 kB in size, the system returns 100
%% items and an appropriate <code>NextToken</code> so the client can access
%% the next page of results.
%%
%% For information on how to construct select expressions, see Using Select
%% to Create Amazon SimpleDB Queries in the Developer Guide.
select(Client, Input)
  when is_map(Client), is_map(Input) ->
    select(Client, Input, []).
select(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"Select">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"sdb">>},
    Host = get_host(<<"sdb">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-www-form-urlencoded">>}
    ],
    Input = Input0#{ <<"Action">> => Action
                   , <<"Version">> => <<"2009-04-15">>
                   },
    Payload = uri_string:compose_query(maps:to_list(Input)),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = aws_util:decode_xml(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = aws_util:decode_xml(Body),
    Exception = aws_util:get_in(['ErrorResponse', 'Error', 'Code'], Error),
    Reason = aws_util:get_in(['ErrorResponse', 'Error', 'Message'], Error),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, <<".">>, Region, <<".">>, Endpoint], <<"">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
