%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Service Quotas is a web service that you can use to manage many of
%% your AWS service quotas.
%%
%% Quotas, also referred to as limits, are the maximum values for a resource,
%% item, or operation. This guide provide descriptions of the Service Quotas
%% actions that you can call from an API. For the Service Quotas user guide,
%% which explains how to use Service Quotas from the console, see What is
%% Service Quotas.
%%
%% AWS provides SDKs that consist of libraries and sample code for
%% programming languages and platforms (Java, Ruby, .NET, iOS, Android,
%% etc...,). The SDKs provide a convenient way to create programmatic access
%% to Service Quotas and AWS. For information about the AWS SDKs, including
%% how to download and install them, see the Tools for Amazon Web Services
%% page.
-module(aws_service_quotas).

-export([associate_service_quota_template/2,
         associate_service_quota_template/3,
         delete_service_quota_increase_request_from_template/2,
         delete_service_quota_increase_request_from_template/3,
         disassociate_service_quota_template/2,
         disassociate_service_quota_template/3,
         get_a_w_s_default_service_quota/2,
         get_a_w_s_default_service_quota/3,
         get_association_for_service_quota_template/2,
         get_association_for_service_quota_template/3,
         get_requested_service_quota_change/2,
         get_requested_service_quota_change/3,
         get_service_quota/2,
         get_service_quota/3,
         get_service_quota_increase_request_from_template/2,
         get_service_quota_increase_request_from_template/3,
         list_a_w_s_default_service_quotas/2,
         list_a_w_s_default_service_quotas/3,
         list_requested_service_quota_change_history/2,
         list_requested_service_quota_change_history/3,
         list_requested_service_quota_change_history_by_quota/2,
         list_requested_service_quota_change_history_by_quota/3,
         list_service_quota_increase_requests_in_template/2,
         list_service_quota_increase_requests_in_template/3,
         list_service_quotas/2,
         list_service_quotas/3,
         list_services/2,
         list_services/3,
         put_service_quota_increase_request_into_template/2,
         put_service_quota_increase_request_into_template/3,
         request_service_quota_increase/2,
         request_service_quota_increase/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates the Service Quotas template with your organization so that
%% when new accounts are created in your organization, the template submits
%% increase requests for the specified service quotas.
%%
%% Use the Service Quotas template to request an increase for any adjustable
%% quota value. After you define the Service Quotas template, use this
%% operation to associate, or enable, the template.
associate_service_quota_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_service_quota_template(Client, Input, []).
associate_service_quota_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateServiceQuotaTemplate">>, Input, Options).

%% @doc Removes a service quota increase request from the Service Quotas
%% template.
delete_service_quota_increase_request_from_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service_quota_increase_request_from_template(Client, Input, []).
delete_service_quota_increase_request_from_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServiceQuotaIncreaseRequestFromTemplate">>, Input, Options).

%% @doc Disables the Service Quotas template.
%%
%% Once the template is disabled, it does not request quota increases for new
%% accounts in your organization. Disabling the quota template does not apply
%% the quota increase requests from the template.
%%
%% Related operations
%%
%% <ul> <li> To enable the quota template, call
%% `AssociateServiceQuotaTemplate'.
%%
%% </li> <li> To delete a specific service quota from the template, use
%% `DeleteServiceQuotaIncreaseRequestFromTemplate'.
%%
%% </li> </ul>
disassociate_service_quota_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_service_quota_template(Client, Input, []).
disassociate_service_quota_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateServiceQuotaTemplate">>, Input, Options).

%% @doc Retrieves the default service quotas values.
%%
%% The Value returned for each quota is the AWS default value, even if the
%% quotas have been increased..
get_a_w_s_default_service_quota(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_a_w_s_default_service_quota(Client, Input, []).
get_a_w_s_default_service_quota(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAWSDefaultServiceQuota">>, Input, Options).

%% @doc Retrieves the `ServiceQuotaTemplateAssociationStatus' value from the
%% service.
%%
%% Use this action to determine if the Service Quota template is associated,
%% or enabled.
get_association_for_service_quota_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_association_for_service_quota_template(Client, Input, []).
get_association_for_service_quota_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAssociationForServiceQuotaTemplate">>, Input, Options).

%% @doc Retrieves the details for a particular increase request.
get_requested_service_quota_change(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_requested_service_quota_change(Client, Input, []).
get_requested_service_quota_change(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRequestedServiceQuotaChange">>, Input, Options).

%% @doc Returns the details for the specified service quota.
%%
%% This operation provides a different Value than the
%% `GetAWSDefaultServiceQuota' operation. This operation returns the applied
%% value for each quota. `GetAWSDefaultServiceQuota' returns the default AWS
%% value for each quota.
get_service_quota(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_quota(Client, Input, []).
get_service_quota(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceQuota">>, Input, Options).

%% @doc Returns the details of the service quota increase request in your
%% template.
get_service_quota_increase_request_from_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_quota_increase_request_from_template(Client, Input, []).
get_service_quota_increase_request_from_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceQuotaIncreaseRequestFromTemplate">>, Input, Options).

%% @doc Lists all default service quotas for the specified AWS service or all
%% AWS services.
%%
%% ListAWSDefaultServiceQuotas is similar to `ListServiceQuotas' except for
%% the Value object. The Value object returned by
%% `ListAWSDefaultServiceQuotas' is the default value assigned by AWS. This
%% request returns a list of all service quotas for the specified service.
%% The listing of each you'll see the default values are the values that AWS
%% provides for the quotas.
%%
%% Always check the `NextToken' response parameter when calling any of the
%% `List*' operations. These operations can return an unexpected list of
%% results, even when there are more results available. When this happens,
%% the `NextToken' response parameter contains a value to pass the next call
%% to the same API to request the next part of the list.
list_a_w_s_default_service_quotas(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_a_w_s_default_service_quotas(Client, Input, []).
list_a_w_s_default_service_quotas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAWSDefaultServiceQuotas">>, Input, Options).

%% @doc Requests a list of the changes to quotas for a service.
list_requested_service_quota_change_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_requested_service_quota_change_history(Client, Input, []).
list_requested_service_quota_change_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRequestedServiceQuotaChangeHistory">>, Input, Options).

%% @doc Requests a list of the changes to specific service quotas.
%%
%% This command provides additional granularity over the
%% `ListRequestedServiceQuotaChangeHistory' command. Once a quota change
%% request has reached `CASE_CLOSED, APPROVED,' or `DENIED', the history has
%% been kept for 90 days.
list_requested_service_quota_change_history_by_quota(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_requested_service_quota_change_history_by_quota(Client, Input, []).
list_requested_service_quota_change_history_by_quota(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRequestedServiceQuotaChangeHistoryByQuota">>, Input, Options).

%% @doc Returns a list of the quota increase requests in the template.
list_service_quota_increase_requests_in_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_quota_increase_requests_in_template(Client, Input, []).
list_service_quota_increase_requests_in_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServiceQuotaIncreaseRequestsInTemplate">>, Input, Options).

%% @doc Lists all service quotas for the specified AWS service.
%%
%% This request returns a list of the service quotas for the specified
%% service. you'll see the default values are the values that AWS provides
%% for the quotas.
%%
%% Always check the `NextToken' response parameter when calling any of the
%% `List*' operations. These operations can return an unexpected list of
%% results, even when there are more results available. When this happens,
%% the `NextToken' response parameter contains a value to pass the next call
%% to the same API to request the next part of the list.
list_service_quotas(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_quotas(Client, Input, []).
list_service_quotas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServiceQuotas">>, Input, Options).

%% @doc Lists the AWS services available in Service Quotas.
%%
%% Not all AWS services are available in Service Quotas. To list the see the
%% list of the service quotas for a specific service, use
%% `ListServiceQuotas'.
list_services(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_services(Client, Input, []).
list_services(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServices">>, Input, Options).

%% @doc Defines and adds a quota to the service quota template.
%%
%% To add a quota to the template, you must provide the `ServiceCode',
%% `QuotaCode', `AwsRegion', and `DesiredValue'. Once you add a quota to the
%% template, use `ListServiceQuotaIncreaseRequestsInTemplate' to see the list
%% of quotas in the template.
put_service_quota_increase_request_into_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_service_quota_increase_request_into_template(Client, Input, []).
put_service_quota_increase_request_into_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutServiceQuotaIncreaseRequestIntoTemplate">>, Input, Options).

%% @doc Retrieves the details of a service quota increase request.
%%
%% The response to this command provides the details in the
%% `RequestedServiceQuotaChange' object.
request_service_quota_increase(Client, Input)
  when is_map(Client), is_map(Input) ->
    request_service_quota_increase(Client, Input, []).
request_service_quota_increase(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RequestServiceQuotaIncrease">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: map().
request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"servicequotas">>},
    Host = build_host(<<"servicequotas">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"ServiceQuotasV20190624.", Action/binary>>}
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
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>], <<"">>).
