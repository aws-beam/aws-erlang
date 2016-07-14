%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS Service Catalog</fullname>
%%
%% <b>Overview</b>
%%
%% <a href="https://aws.amazon.com/servicecatalog/">AWS Service Catalog</a>
%% allows organizations to create and manage catalogs of IT services that are
%% approved for use on AWS. This documentation provides reference material
%% for the AWS Service Catalog end user API. To get the most out of this
%% documentation, you need to be familiar with the terminology discussed in
%% <a
%% href="http://docs.aws.amazon.com/servicecatalog/latest/userguide/what-is_concepts.html">AWS
%% Service Catalog Concepts</a>.
%%
%% <i>Additional Resources</i>
%%
%% <ul> <li> <a
%% href="http://docs.aws.amazon.com/servicecatalog/latest/adminguide/introduction.html">AWS
%% Service Catalog Administrator Guide</a>
%%
%% </li> <li> <a
%% href="http://docs.aws.amazon.com/servicecatalog/latest/userguide/introduction.html">AWS
%% Service Catalog User Guide</a>
%%
%% </li> </ul>
-module(aws_service_catalog).

-export([describe_product/2,
         describe_product/3,
         describe_product_view/2,
         describe_product_view/3,
         describe_provisioning_parameters/2,
         describe_provisioning_parameters/3,
         describe_record/2,
         describe_record/3,
         list_launch_paths/2,
         list_launch_paths/3,
         list_record_history/2,
         list_record_history/3,
         provision_product/2,
         provision_product/3,
         scan_provisioned_products/2,
         scan_provisioned_products/3,
         search_products/2,
         search_products/3,
         terminate_provisioned_product/2,
         terminate_provisioned_product/3,
         update_provisioned_product/2,
         update_provisioned_product/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Retrieves information about a specified product.
%%
%% This operation is functionally identical to <a>DescribeProductView</a>
%% except that it takes as input <code>ProductId</code> instead of
%% <code>ProductViewId</code>.
describe_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_product(Client, Input, []).
describe_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProduct">>, Input, Options).

%% @doc Retrieves information about a specified product.
%%
%% This operation is functionally identical to <a>DescribeProduct</a> except
%% that it takes as input <code>ProductViewId</code> instead of
%% <code>ProductId</code>.
describe_product_view(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_product_view(Client, Input, []).
describe_product_view(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProductView">>, Input, Options).

%% @doc Provides information about parameters required to provision a
%% specified product in a specified manner. Use this operation to obtain the
%% list of <code>ProvisioningArtifactParameters</code> parameters available
%% to call the <a>ProvisionProduct</a> operation for the specified product.
describe_provisioning_parameters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_provisioning_parameters(Client, Input, []).
describe_provisioning_parameters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeProvisioningParameters">>, Input, Options).

%% @doc Retrieves a paginated list of the full details of a specific request.
%% Use this operation after calling a request operation
%% (<a>ProvisionProduct</a>, <a>TerminateProvisionedProduct</a>, or
%% <a>UpdateProvisionedProduct</a>).
describe_record(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_record(Client, Input, []).
describe_record(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeRecord">>, Input, Options).

%% @doc Returns a paginated list of all paths to a specified product. A path
%% is how the user has access to a specified product, and is necessary when
%% provisioning a product. A path also determines the constraints put on the
%% product.
list_launch_paths(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_launch_paths(Client, Input, []).
list_launch_paths(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLaunchPaths">>, Input, Options).

%% @doc Returns a paginated list of all performed requests, in the form of
%% RecordDetails objects that are filtered as specified.
list_record_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_record_history(Client, Input, []).
list_record_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRecordHistory">>, Input, Options).

%% @doc Requests a <i>Provision</i> of a specified product. A
%% <i>ProvisionedProduct</i> is a resourced instance for a product. For
%% example, provisioning a CloudFormation-template-backed product results in
%% launching a CloudFormation stack and all the underlying resources that
%% come with it.
%%
%% You can check the status of this request using the <a>DescribeRecord</a>
%% operation.
provision_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    provision_product(Client, Input, []).
provision_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ProvisionProduct">>, Input, Options).

%% @doc Returns a paginated list of all the ProvisionedProduct objects that
%% are currently available (not terminated).
scan_provisioned_products(Client, Input)
  when is_map(Client), is_map(Input) ->
    scan_provisioned_products(Client, Input, []).
scan_provisioned_products(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ScanProvisionedProducts">>, Input, Options).

%% @doc Returns a paginated list all of the <code>Products</code> objects to
%% which the caller has access.
%%
%% The output of this operation can be used as input for other operations,
%% such as <a>DescribeProductView</a>.
search_products(Client, Input)
  when is_map(Client), is_map(Input) ->
    search_products(Client, Input, []).
search_products(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"SearchProducts">>, Input, Options).

%% @doc Requests termination of an existing ProvisionedProduct object. If
%% there are <code>Tags</code> associated with the object, they are
%% terminated when the ProvisionedProduct object is terminated.
%%
%% This operation does not delete any records associated with the
%% ProvisionedProduct object.
%%
%% You can check the status of this request using the <a>DescribeRecord</a>
%% operation.
terminate_provisioned_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    terminate_provisioned_product(Client, Input, []).
terminate_provisioned_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TerminateProvisionedProduct">>, Input, Options).

%% @doc Requests updates to the configuration of an existing
%% ProvisionedProduct object. If there are tags associated with the object,
%% they cannot be updated or added with this operation. Depending on the
%% specific updates requested, this operation may update with no
%% interruption, with some interruption, or replace the ProvisionedProduct
%% object entirely.
%%
%% You can check the status of this request using the <a>DescribeRecord</a>
%% operation.
update_provisioned_product(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_provisioned_product(Client, Input, []).
update_provisioned_product(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateProvisionedProduct">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"servicecatalog">>},
    Host = get_host(<<"servicecatalog">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"AWS242ServiceCatalogService.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    Exception = maps:get(<<"__type">>, Error, undefined),
    Reason = maps:get(<<"message">>, Error, undefined),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix,
			  <<".">>,
			  Region,
			  <<".">>,
			  Endpoint],
			 <<"">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>],
			 <<"">>).
