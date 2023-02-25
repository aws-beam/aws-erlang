%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc AWS CloudHSM Service
%%
%% This is documentation for AWS CloudHSM Classic.
%%
%% For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM
%% Classic User Guide, and the AWS CloudHSM Classic API Reference.
%%
%% For information about the current version of AWS CloudHSM, see AWS
%% CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
-module(aws_cloudhsm).

-export([add_tags_to_resource/2,
         add_tags_to_resource/3,
         create_hapg/2,
         create_hapg/3,
         create_hsm/2,
         create_hsm/3,
         create_luna_client/2,
         create_luna_client/3,
         delete_hapg/2,
         delete_hapg/3,
         delete_hsm/2,
         delete_hsm/3,
         delete_luna_client/2,
         delete_luna_client/3,
         describe_hapg/2,
         describe_hapg/3,
         describe_hsm/2,
         describe_hsm/3,
         describe_luna_client/2,
         describe_luna_client/3,
         get_config/2,
         get_config/3,
         list_available_zones/2,
         list_available_zones/3,
         list_hapgs/2,
         list_hapgs/3,
         list_hsms/2,
         list_hsms/3,
         list_luna_clients/2,
         list_luna_clients/3,
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         modify_hapg/2,
         modify_hapg/3,
         modify_hsm/2,
         modify_hsm/3,
         modify_luna_client/2,
         modify_luna_client/3,
         remove_tags_from_resource/2,
         remove_tags_from_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM
%% Classic User Guide, and the AWS CloudHSM Classic API Reference.
%%
%% For information about the current version of AWS CloudHSM, see AWS
%% CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
%%
%% Adds or overwrites one or more tags for the specified AWS CloudHSM
%% resource.
%%
%% Each tag consists of a key and a value. Tag keys must be unique to each
%% resource.
add_tags_to_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    add_tags_to_resource(Client, Input, []).
add_tags_to_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AddTagsToResource">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM
%% Classic User Guide, and the AWS CloudHSM Classic API Reference.
%%
%% For information about the current version of AWS CloudHSM, see AWS
%% CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
%%
%% Creates a high-availability partition group. A high-availability partition
%% group is a group of partitions that spans multiple physical HSMs.
create_hapg(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hapg(Client, Input, []).
create_hapg(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHapg">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM
%% Classic User Guide, and the AWS CloudHSM Classic API Reference.
%%
%% For information about the current version of AWS CloudHSM, see AWS
%% CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
%%
%% Creates an uninitialized HSM instance.
%%
%% There is an upfront fee charged for each HSM instance that you create with
%% the `CreateHsm' operation. If you accidentally provision an HSM and
%% want to request a refund, delete the instance using the `DeleteHsm'
%% operation, go to the AWS Support Center, create a new case, and select
%% Account and Billing Support.
%%
%% It can take up to 20 minutes to create and provision an HSM. You can
%% monitor the status of the HSM with the `DescribeHsm' operation. The
%% HSM is ready to be initialized when the status changes to `RUNNING'.
create_hsm(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hsm(Client, Input, []).
create_hsm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHsm">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM
%% Classic User Guide, and the AWS CloudHSM Classic API Reference.
%%
%% For information about the current version of AWS CloudHSM, see AWS
%% CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
%%
%% Creates an HSM client.
create_luna_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_luna_client(Client, Input, []).
create_luna_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLunaClient">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM
%% Classic User Guide, and the AWS CloudHSM Classic API Reference.
%%
%% For information about the current version of AWS CloudHSM, see AWS
%% CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
%%
%% Deletes a high-availability partition group.
delete_hapg(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_hapg(Client, Input, []).
delete_hapg(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHapg">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM
%% Classic User Guide, and the AWS CloudHSM Classic API Reference.
%%
%% For information about the current version of AWS CloudHSM, see AWS
%% CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
%%
%% Deletes an HSM. After completion, this operation cannot be undone and your
%% key material cannot be recovered.
delete_hsm(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_hsm(Client, Input, []).
delete_hsm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHsm">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM
%% Classic User Guide, and the AWS CloudHSM Classic API Reference.
%%
%% For information about the current version of AWS CloudHSM, see AWS
%% CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
%%
%% Deletes a client.
delete_luna_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_luna_client(Client, Input, []).
delete_luna_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLunaClient">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM
%% Classic User Guide, and the AWS CloudHSM Classic API Reference.
%%
%% For information about the current version of AWS CloudHSM, see AWS
%% CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
%%
%% Retrieves information about a high-availability partition group.
describe_hapg(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_hapg(Client, Input, []).
describe_hapg(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHapg">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM
%% Classic User Guide, and the AWS CloudHSM Classic API Reference.
%%
%% For information about the current version of AWS CloudHSM, see AWS
%% CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
%%
%% Retrieves information about an HSM. You can identify the HSM by its ARN or
%% its serial number.
describe_hsm(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_hsm(Client, Input, []).
describe_hsm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHsm">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM
%% Classic User Guide, and the AWS CloudHSM Classic API Reference.
%%
%% For information about the current version of AWS CloudHSM, see AWS
%% CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
%%
%% Retrieves information about an HSM client.
describe_luna_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_luna_client(Client, Input, []).
describe_luna_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLunaClient">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM
%% Classic User Guide, and the AWS CloudHSM Classic API Reference.
%%
%% For information about the current version of AWS CloudHSM, see AWS
%% CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
%%
%% Gets the configuration files necessary to connect to all high availability
%% partition groups the client is associated with.
get_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_config(Client, Input, []).
get_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConfig">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM
%% Classic User Guide, and the AWS CloudHSM Classic API Reference.
%%
%% For information about the current version of AWS CloudHSM, see AWS
%% CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
%%
%% Lists the Availability Zones that have available AWS CloudHSM capacity.
list_available_zones(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_available_zones(Client, Input, []).
list_available_zones(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAvailableZones">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM
%% Classic User Guide, and the AWS CloudHSM Classic API Reference.
%%
%% For information about the current version of AWS CloudHSM, see AWS
%% CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
%%
%% Lists the high-availability partition groups for the account.
%%
%% This operation supports pagination with the use of the `NextToken'
%% member. If more results are available, the `NextToken' member of the
%% response contains a token that you pass in the next call to
%% `ListHapgs' to retrieve the next set of items.
list_hapgs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hapgs(Client, Input, []).
list_hapgs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHapgs">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM
%% Classic User Guide, and the AWS CloudHSM Classic API Reference.
%%
%% For information about the current version of AWS CloudHSM, see AWS
%% CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
%%
%% Retrieves the identifiers of all of the HSMs provisioned for the current
%% customer.
%%
%% This operation supports pagination with the use of the `NextToken'
%% member. If more results are available, the `NextToken' member of the
%% response contains a token that you pass in the next call to `ListHsms'
%% to retrieve the next set of items.
list_hsms(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hsms(Client, Input, []).
list_hsms(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHsms">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM
%% Classic User Guide, and the AWS CloudHSM Classic API Reference.
%%
%% For information about the current version of AWS CloudHSM, see AWS
%% CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
%%
%% Lists all of the clients.
%%
%% This operation supports pagination with the use of the `NextToken'
%% member. If more results are available, the `NextToken' member of the
%% response contains a token that you pass in the next call to
%% `ListLunaClients' to retrieve the next set of items.
list_luna_clients(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_luna_clients(Client, Input, []).
list_luna_clients(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLunaClients">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM
%% Classic User Guide, and the AWS CloudHSM Classic API Reference.
%%
%% For information about the current version of AWS CloudHSM, see AWS
%% CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
%%
%% Returns a list of all tags for the specified AWS CloudHSM resource.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM
%% Classic User Guide, and the AWS CloudHSM Classic API Reference.
%%
%% For information about the current version of AWS CloudHSM, see AWS
%% CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
%%
%% Modifies an existing high-availability partition group.
modify_hapg(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_hapg(Client, Input, []).
modify_hapg(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyHapg">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM
%% Classic User Guide, and the AWS CloudHSM Classic API Reference.
%%
%% For information about the current version of AWS CloudHSM, see AWS
%% CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
%%
%% Modifies an HSM.
%%
%% This operation can result in the HSM being offline for up to 15 minutes
%% while the AWS CloudHSM service is reconfigured. If you are modifying a
%% production HSM, you should ensure that your AWS CloudHSM service is
%% configured for high availability, and consider executing this operation
%% during a maintenance window.
modify_hsm(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_hsm(Client, Input, []).
modify_hsm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyHsm">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM
%% Classic User Guide, and the AWS CloudHSM Classic API Reference.
%%
%% For information about the current version of AWS CloudHSM, see AWS
%% CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
%%
%% Modifies the certificate used by the client.
%%
%% This action can potentially start a workflow to install the new
%% certificate on the client's HSMs.
modify_luna_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_luna_client(Client, Input, []).
modify_luna_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyLunaClient">>, Input, Options).

%% @doc This is documentation for AWS CloudHSM Classic.
%%
%% For more information, see AWS CloudHSM Classic FAQs, the AWS CloudHSM
%% Classic User Guide, and the AWS CloudHSM Classic API Reference.
%%
%% For information about the current version of AWS CloudHSM, see AWS
%% CloudHSM, the AWS CloudHSM User Guide, and the AWS CloudHSM API Reference.
%%
%% Removes one or more tags from the specified AWS CloudHSM resource.
%%
%% To remove a tag, specify only the tag key to remove (not the value). To
%% overwrite the value for an existing tag, use `AddTagsToResource'.
remove_tags_from_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    remove_tags_from_resource(Client, Input, []).
remove_tags_from_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RemoveTagsFromResource">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"cloudhsm">>},
    Host = build_host(<<"cloudhsm">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"CloudHsmFrontendService.", Action/binary>>}
    ],

    Input = Input0,

    Payload = jsx:encode(Input),
    SignedHeaders = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, SignedHeaders, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body),
    {error, Error, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Client) ->
    Proto = aws_client:proto(Client),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
