%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc The Amazon Web Services Marketplace `GetBuyerDashboard' API
%% enables you to get a procurement insights
%% dashboard programmatically.
%%
%% The API gets the agreement and cost analysis dashboards with
%% data for all of the Amazon Web Services accounts in your Amazon Web
%% Services Organization.
%%
%% To use the Amazon Web Services Marketplace Reporting API, you must
%% complete the following prerequisites:
%%
%% Enable all features for your organization. For more information, see
%% Enabling all features for an organization with Organizations:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html,
%% in the
%% Organizations User Guide.
%%
%% Call the service as the Organizations management account or an account
%% registered
%% as a delegated administrator for the procurement insights service.
%%
%% For more information about management accounts, see Tutorial:
%% Creating and configuring an organization:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tutorials_basic.html
%% and Managing the management account with Organizations:
%% https://docs.aws.amazon.com/organizations/latest/userguide/orgs-manage_accounts_management.html,
%% both in the
%% Organizations User Guide.
%%
%% For more information about delegated administrators, see Using
%% delegated administrators:
%% https://docs.aws.amazon.com/marketplace/latest/buyerguide/management-delegates.html,
%% in the Amazon Web Services Marketplace Buyer
%% Guide.
%%
%% Create an IAM policy that enables the
%% `aws-marketplace:GetBuyerDashboard' and
%% `organizations:DescribeOrganization' permissions. In addition,
%% the management account requires the
%% `organizations:EnableAWSServiceAccess' and
%% `iam:CreateServiceLinkedRole' permissions to create. For more
%% information about creating the policy, see Policies and permissions in
%% Identity and Access Management:
%% https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html, in
%% the IAM User Guide.
%%
%% Access can be shared only by registering the desired linked account as a
%% delegated administrator. That requires
%% `organizations:RegisterDelegatedAdministrator'
%% `organizations:ListDelegatedAdministrators' and
%% `organizations:DeregisterDelegatedAdministrator'
%% permissions.
%%
%% Use the Amazon Web Services Marketplace console to create the
%% `AWSServiceRoleForProcurementInsightsPolicy' service-linked role.
%% The role enables Amazon Web Services Marketplace procurement visibility
%% integration. The management
%% account requires an IAM policy with the
%% `organizations:EnableAWSServiceAccess' and
%% `iam:CreateServiceLinkedRole' permissions to create the
%% service-linked role and enable the service access. For more information,
%% see
%% Granting access to
%% Organizations:
%% https://docs.aws.amazon.com/marketplace/latest/buyerguide/orgs-access-slr.html
%% and Service-linked role to share procurement data:
%% https://docs.aws.amazon.com/marketplace/latest/buyerguide/buyer-service-linked-role-procurement.html
%% in the
%% Amazon Web Services Marketplace Buyer Guide.
%%
%% After creating the service-linked role, you must enable trusted access
%% that
%% grants Amazon Web Services Marketplace permission to access data from your
%% Organizations. For more information,
%% see Granting access to
%% Organizations:
%% https://docs.aws.amazon.com/marketplace/latest/buyerguide/orgs-access-slr.html
%% in the Amazon Web Services Marketplace Buyer Guide.
-module(aws_marketplace_reporting).

-export([get_buyer_dashboard/2,
         get_buyer_dashboard/3]).

-include_lib("hackney/include/hackney_lib.hrl").



%% Example:
%% access_denied_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type access_denied_exception() :: #{binary() => any()}.


%% Example:
%% bad_request_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type bad_request_exception() :: #{binary() => any()}.


%% Example:
%% get_buyer_dashboard_input() :: #{
%%   <<"dashboardIdentifier">> := string(),
%%   <<"embeddingDomains">> := list(string())
%% }
-type get_buyer_dashboard_input() :: #{binary() => any()}.


%% Example:
%% get_buyer_dashboard_output() :: #{
%%   <<"dashboardIdentifier">> => string(),
%%   <<"embedUrl">> => [string()],
%%   <<"embeddingDomains">> => list(string())
%% }
-type get_buyer_dashboard_output() :: #{binary() => any()}.


%% Example:
%% internal_server_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type internal_server_exception() :: #{binary() => any()}.


%% Example:
%% unauthorized_exception() :: #{
%%   <<"message">> => [string()]
%% }
-type unauthorized_exception() :: #{binary() => any()}.

-type get_buyer_dashboard_errors() ::
    unauthorized_exception() | 
    internal_server_exception() | 
    bad_request_exception() | 
    access_denied_exception().

%%====================================================================
%% API
%%====================================================================

%% @doc Generates an embedding URL for an Amazon QuickSight dashboard for an
%% anonymous user.
%%
%% This API is available only to Amazon Web Services Organization management
%% accounts or
%% delegated administrators registered for the procurement insights
%% (`procurement-insights.marketplace.amazonaws.com') feature.
%%
%% The following rules apply to a generated URL:
%%
%% It contains a temporary bearer token, valid for 5 minutes after it is
%% generated. Once redeemed within that period, it cannot be re-used again.
%%
%% It has a session lifetime of one hour. The 5-minute validity period runs
%% separately from the session lifetime.
-spec get_buyer_dashboard(aws_client:aws_client(), get_buyer_dashboard_input()) ->
    {ok, get_buyer_dashboard_output(), tuple()} |
    {error, any()} |
    {error, get_buyer_dashboard_errors(), tuple()}.
get_buyer_dashboard(Client, Input) ->
    get_buyer_dashboard(Client, Input, []).

-spec get_buyer_dashboard(aws_client:aws_client(), get_buyer_dashboard_input(), proplists:proplist()) ->
    {ok, get_buyer_dashboard_output(), tuple()} |
    {error, any()} |
    {error, get_buyer_dashboard_errors(), tuple()}.
get_buyer_dashboard(Client, Input0, Options0) ->
    Method = post,
    Path = ["/getBuyerDashboard"],
    SuccessStatusCode = 200,
    {SendBodyAsBinary, Options1} = proplists_take(send_body_as_binary, Options0, false),
    {ReceiveBodyAsBinary, Options2} = proplists_take(receive_body_as_binary, Options1, false),
    Options = [{send_body_as_binary, SendBodyAsBinary},
               {receive_body_as_binary, ReceiveBodyAsBinary},
               {append_sha256_content_hash, false}
               | Options2],

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

-spec proplists_take(any(), proplists:proplist(), any()) -> {any(), proplists:proplist()}.
proplists_take(Key, Proplist, Default) ->
  Value = proplists:get_value(Key, Proplist, Default),
  {Value, proplists:delete(Key, Proplist)}.

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
    Client1 = Client#{service => <<"aws-marketplace">>},
    Host = build_host(<<"reporting-marketplace">>, Client1),
    URL0 = build_url(Host, Path, Client1),
    URL = aws_request:add_query(URL0, Query),
    AdditionalHeaders1 = [ {<<"Host">>, Host}
                         , {<<"Content-Type">>, <<"application/x-amz-json-1.1">>}
                         ],
    Payload =
      case proplists:get_value(send_body_as_binary, Options) of
        true ->
          maps:get(<<"Body">>, Input, <<"">>);
        false ->
          encode_payload(Input)
      end,
    AdditionalHeaders = case proplists:get_value(append_sha256_content_hash, Options, false) of
                          true ->
                            add_checksum_hash_header(AdditionalHeaders1, Payload);
                          false ->
                            AdditionalHeaders1
                        end,
    Headers1 = aws_request:add_headers(AdditionalHeaders, Headers0),

    MethodBin = aws_request:method_to_binary(Method),
    SignedHeaders = aws_request:sign_request(Client1, MethodBin, URL, Headers1, Payload),
    Response = hackney:request(Method, URL, SignedHeaders, Payload, Options),
    DecodeBody = not proplists:get_value(receive_body_as_binary, Options),
    handle_response(Response, SuccessStatusCode, DecodeBody).

add_checksum_hash_header(Headers, Body) ->
  [ {<<"X-Amz-CheckSum-SHA256">>, base64:encode(crypto:hash(sha256, Body))}
  | Headers
  ].

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
                       true ->
                         try
                           jsx:decode(Body)
                         catch
                           Error:Reason:Stack ->
                             erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
                         end;
                       false -> #{<<"Body">> => Body}
                     end,
            {ok, Result, {StatusCode, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, _ResponseHeaders, _Client}, _, _DecodeBody)
  when StatusCode =:= 503 ->
  %% Retriable error if retries are enabled
  {error, service_unavailable};
handle_response({ok, StatusCode, ResponseHeaders, Client}, _, _DecodeBody) ->
    {ok, Body} = hackney:body(Client),
    try
      DecodedError = jsx:decode(Body),
      {error, DecodedError, {StatusCode, ResponseHeaders, Client}}
    catch
      Error:Reason:Stack ->
        erlang:raise(error, {body_decode_failed, Error, Reason, StatusCode, Body}, Stack)
    end;
handle_response({error, Reason}, _, _DecodeBody) ->
  {error, Reason}.

build_host(_EndpointPrefix, #{region := <<"local">>, endpoint := Endpoint}) ->
    Endpoint;
build_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
build_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix, Region, Endpoint], <<".">>).

build_url(Host, Path0, Client) ->
    Proto = aws_client:proto(Client),
    Path = erlang:iolist_to_binary(Path0),
    Port = aws_client:port(Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, Path], <<"">>).

-spec encode_payload(undefined | map()) -> binary().
encode_payload(undefined) ->
  <<>>;
encode_payload(Input) ->
  jsx:encode(Input).
