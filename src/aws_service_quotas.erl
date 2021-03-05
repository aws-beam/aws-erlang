%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc With Service Quotas, you can view and manage your quotas easily as
%% your AWS workloads grow.
%%
%% Quotas, also referred to as limits, are the maximum number of resources
%% that you can create in your AWS account. For more information, see the
%% Service Quotas User Guide.
-module(aws_service_quotas).

-export([associate_service_quota_template/2,
         associate_service_quota_template/3,
         delete_service_quota_increase_request_from_template/2,
         delete_service_quota_increase_request_from_template/3,
         disassociate_service_quota_template/2,
         disassociate_service_quota_template/3,
         get_association_for_service_quota_template/2,
         get_association_for_service_quota_template/3,
         get_aws_default_service_quota/2,
         get_aws_default_service_quota/3,
         get_requested_service_quota_change/2,
         get_requested_service_quota_change/3,
         get_service_quota/2,
         get_service_quota/3,
         get_service_quota_increase_request_from_template/2,
         get_service_quota_increase_request_from_template/3,
         list_aws_default_service_quotas/2,
         list_aws_default_service_quotas/3,
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
         list_tags_for_resource/2,
         list_tags_for_resource/3,
         put_service_quota_increase_request_into_template/2,
         put_service_quota_increase_request_into_template/3,
         request_service_quota_increase/2,
         request_service_quota_increase/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Associates your quota request template with your organization.
%%
%% When a new account is created in your organization, the quota increase
%% requests in the template are automatically applied to the account. You can
%% add a quota increase request for any adjustable quota to your template.
associate_service_quota_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_service_quota_template(Client, Input, []).
associate_service_quota_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateServiceQuotaTemplate">>, Input, Options).

%% @doc Deletes the quota increase request for the specified quota from your
%% quota request template.
delete_service_quota_increase_request_from_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_service_quota_increase_request_from_template(Client, Input, []).
delete_service_quota_increase_request_from_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteServiceQuotaIncreaseRequestFromTemplate">>, Input, Options).

%% @doc Disables your quota request template.
%%
%% After a template is disabled, the quota increase requests in the template
%% are not applied to new accounts in your organization. Disabling a quota
%% request template does not apply its quota increase requests.
disassociate_service_quota_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_service_quota_template(Client, Input, []).
disassociate_service_quota_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateServiceQuotaTemplate">>, Input, Options).

%% @doc Retrieves the status of the association for the quota request
%% template.
get_association_for_service_quota_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_association_for_service_quota_template(Client, Input, []).
get_association_for_service_quota_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAssociationForServiceQuotaTemplate">>, Input, Options).

%% @doc Retrieves the default value for the specified quota.
%%
%% The default value does not reflect any quota increases.
get_aws_default_service_quota(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_aws_default_service_quota(Client, Input, []).
get_aws_default_service_quota(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetAWSDefaultServiceQuota">>, Input, Options).

%% @doc Retrieves information about the specified quota increase request.
get_requested_service_quota_change(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_requested_service_quota_change(Client, Input, []).
get_requested_service_quota_change(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRequestedServiceQuotaChange">>, Input, Options).

%% @doc Retrieves the applied quota value for the specified quota.
%%
%% For some quotas, only the default values are available. If the applied
%% quota value is not available for a quota, the quota is not retrieved.
get_service_quota(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_quota(Client, Input, []).
get_service_quota(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceQuota">>, Input, Options).

%% @doc Retrieves information about the specified quota increase request in
%% your quota request template.
get_service_quota_increase_request_from_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_service_quota_increase_request_from_template(Client, Input, []).
get_service_quota_increase_request_from_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetServiceQuotaIncreaseRequestFromTemplate">>, Input, Options).

%% @doc Lists the default values for the quotas for the specified AWS
%% service.
%%
%% A default value does not reflect any quota increases.
list_aws_default_service_quotas(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_aws_default_service_quotas(Client, Input, []).
list_aws_default_service_quotas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListAWSDefaultServiceQuotas">>, Input, Options).

%% @doc Retrieves the quota increase requests for the specified service.
list_requested_service_quota_change_history(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_requested_service_quota_change_history(Client, Input, []).
list_requested_service_quota_change_history(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRequestedServiceQuotaChangeHistory">>, Input, Options).

%% @doc Retrieves the quota increase requests for the specified quota.
list_requested_service_quota_change_history_by_quota(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_requested_service_quota_change_history_by_quota(Client, Input, []).
list_requested_service_quota_change_history_by_quota(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRequestedServiceQuotaChangeHistoryByQuota">>, Input, Options).

%% @doc Lists the quota increase requests in the specified quota request
%% template.
list_service_quota_increase_requests_in_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_quota_increase_requests_in_template(Client, Input, []).
list_service_quota_increase_requests_in_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServiceQuotaIncreaseRequestsInTemplate">>, Input, Options).

%% @doc Lists the applied quota values for the specified AWS service.
%%
%% For some quotas, only the default values are available. If the applied
%% quota value is not available for a quota, the quota is not retrieved.
list_service_quotas(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_service_quotas(Client, Input, []).
list_service_quotas(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServiceQuotas">>, Input, Options).

%% @doc Lists the names and codes for the services integrated with Service
%% Quotas.
list_services(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_services(Client, Input, []).
list_services(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListServices">>, Input, Options).

%% @doc Returns a list of the tags assigned to the specified applied quota.
list_tags_for_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags_for_resource(Client, Input, []).
list_tags_for_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTagsForResource">>, Input, Options).

%% @doc Adds a quota increase request to your quota request template.
put_service_quota_increase_request_into_template(Client, Input)
  when is_map(Client), is_map(Input) ->
    put_service_quota_increase_request_into_template(Client, Input, []).
put_service_quota_increase_request_into_template(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"PutServiceQuotaIncreaseRequestIntoTemplate">>, Input, Options).

%% @doc Submits a quota increase request for the specified quota.
request_service_quota_increase(Client, Input)
  when is_map(Client), is_map(Input) ->
    request_service_quota_increase(Client, Input, []).
request_service_quota_increase(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RequestServiceQuotaIncrease">>, Input, Options).

%% @doc Adds tags to the specified applied quota.
%%
%% You can include one or more tags to add to the quota.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes tags from the specified applied quota.
%%
%% You can specify one or more tags to remove.
untag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    untag_resource(Client, Input, []).
untag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UntagResource">>, Input, Options).

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
