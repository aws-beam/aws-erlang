%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc <fullname>AWS CloudHSM Service</fullname>
-module(aws_cloud_hsm).

-export([create_hapg/2,
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
         modify_hapg/2,
         modify_hapg/3,
         modify_hsm/2,
         modify_hsm/3,
         modify_luna_client/2,
         modify_luna_client/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a high-availability partition group. A high-availability
%% partition group is a group of partitions that spans multiple physical
%% HSMs.
create_hapg(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hapg(Client, Input, []).
create_hapg(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHapg">>, Input, Options).

%% @doc Creates an uninitialized HSM instance.
%%
%% There is an upfront fee charged for each HSM instance that you create with
%% the <a>CreateHsm</a> operation. If you accidentally provision an HSM and
%% want to request a refund, delete the instance using the <a>DeleteHsm</a>
%% operation, go to the <a
%% href="https://console.aws.amazon.com/support/home#/">AWS Support
%% Center</a>, create a new case, and select <b>Account and Billing
%% Support</b>.
%%
%% <important> It can take up to 20 minutes to create and provision an HSM.
%% You can monitor the status of the HSM with the <a>DescribeHsm</a>
%% operation. The HSM is ready to be initialized when the status changes to
%% <code>RUNNING</code>.
%%
%% </important>
create_hsm(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hsm(Client, Input, []).
create_hsm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHsm">>, Input, Options).

%% @doc Creates an HSM client.
create_luna_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_luna_client(Client, Input, []).
create_luna_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateLunaClient">>, Input, Options).

%% @doc Deletes a high-availability partition group.
delete_hapg(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_hapg(Client, Input, []).
delete_hapg(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHapg">>, Input, Options).

%% @doc Deletes an HSM. After completion, this operation cannot be undone and
%% your key material cannot be recovered.
delete_hsm(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_hsm(Client, Input, []).
delete_hsm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHsm">>, Input, Options).

%% @doc Deletes a client.
delete_luna_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_luna_client(Client, Input, []).
delete_luna_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteLunaClient">>, Input, Options).

%% @doc Retrieves information about a high-availability partition group.
describe_hapg(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_hapg(Client, Input, []).
describe_hapg(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHapg">>, Input, Options).

%% @doc Retrieves information about an HSM. You can identify the HSM by its
%% ARN or its serial number.
describe_hsm(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_hsm(Client, Input, []).
describe_hsm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeHsm">>, Input, Options).

%% @doc Retrieves information about an HSM client.
describe_luna_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_luna_client(Client, Input, []).
describe_luna_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeLunaClient">>, Input, Options).

%% @doc Gets the configuration files necessary to connect to all high
%% availability partition groups the client is associated with.
get_config(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_config(Client, Input, []).
get_config(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetConfig">>, Input, Options).

%% @doc Lists the Availability Zones that have available AWS CloudHSM
%% capacity.
list_available_zones(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_available_zones(Client, Input, []).
list_available_zones(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAvailableZones">>, Input, Options).

%% @doc Lists the high-availability partition groups for the account.
%%
%% This operation supports pagination with the use of the <i>NextToken</i>
%% member. If more results are available, the <i>NextToken</i> member of the
%% response contains a token that you pass in the next call to
%% <a>ListHapgs</a> to retrieve the next set of items.
list_hapgs(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hapgs(Client, Input, []).
list_hapgs(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHapgs">>, Input, Options).

%% @doc Retrieves the identifiers of all of the HSMs provisioned for the
%% current customer.
%%
%% This operation supports pagination with the use of the <i>NextToken</i>
%% member. If more results are available, the <i>NextToken</i> member of the
%% response contains a token that you pass in the next call to
%% <a>ListHsms</a> to retrieve the next set of items.
list_hsms(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_hsms(Client, Input, []).
list_hsms(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListHsms">>, Input, Options).

%% @doc Lists all of the clients.
%%
%% This operation supports pagination with the use of the <i>NextToken</i>
%% member. If more results are available, the <i>NextToken</i> member of the
%% response contains a token that you pass in the next call to
%% <a>ListLunaClients</a> to retrieve the next set of items.
list_luna_clients(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_luna_clients(Client, Input, []).
list_luna_clients(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListLunaClients">>, Input, Options).

%% @doc Modifies an existing high-availability partition group.
modify_hapg(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_hapg(Client, Input, []).
modify_hapg(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyHapg">>, Input, Options).

%% @doc Modifies an HSM.
%%
%% <important> This operation can result in the HSM being offline for up to
%% 15 minutes while the AWS CloudHSM service is reconfigured. If you are
%% modifying a production HSM, you should ensure that your AWS CloudHSM
%% service is configured for high availability, and consider executing this
%% operation during a maintenance window.
%%
%% </important>
modify_hsm(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_hsm(Client, Input, []).
modify_hsm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyHsm">>, Input, Options).

%% @doc Modifies the certificate used by the client.
%%
%% This action can potentially start a workflow to install the new
%% certificate on the client's HSMs.
modify_luna_client(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_luna_client(Client, Input, []).
modify_luna_client(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyLunaClient">>, Input, Options).

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
    Client1 = Client#{service => <<"cloudhsm">>},
    Host = aws_util:binary_join([<<"cloudhsm.">>,
                                 maps:get(region, Client1),
                                 <<".">>,
                                 maps:get(endpoint, Client1)],
                                <<"">>),
    URL = aws_util:binary_join([<<"https://">>, Host, <<"/">>], <<"">>),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"CloudHsmFrontendService.">>/binary, Action/binary>>}],
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
    #{<<"__type">> := Exception,
      <<"message">> := Reason} = jsx:decode(Body, [return_maps]),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.
