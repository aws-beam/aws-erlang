%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc Amazon Macie Classic
%%
%% Amazon Macie Classic has been discontinued and is no longer available.
%%
%% A new Amazon Macie is now available with significant design improvements
%% and additional features, at a lower price and in most Amazon Web Services
%% Regions. We encourage you to take advantage of the new and improved
%% features, and benefit from the reduced cost. To learn about features and
%% pricing for the new Macie, see Amazon Macie. To learn how to use the new
%% Macie, see the Amazon Macie User Guide.
-module(aws_macie).

-export([associate_member_account/2,
         associate_member_account/3,
         associate_s3_resources/2,
         associate_s3_resources/3,
         disassociate_member_account/2,
         disassociate_member_account/3,
         disassociate_s3_resources/2,
         disassociate_s3_resources/3,
         list_member_accounts/2,
         list_member_accounts/3,
         list_s3_resources/2,
         list_s3_resources/3,
         update_s3_resources/2,
         update_s3_resources/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc (Discontinued) Associates a specified Amazon Web Services account
%% with Amazon Macie Classic as a member account.
associate_member_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_member_account(Client, Input, []).
associate_member_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateMemberAccount">>, Input, Options).

%% @doc (Discontinued) Associates specified S3 resources with Amazon Macie
%% Classic for monitoring and data classification.
%%
%% If `memberAccountId' isn't specified, the action associates specified S3
%% resources with Macie Classic for the current Macie Classic administrator
%% account. If `memberAccountId' is specified, the action associates
%% specified S3 resources with Macie Classic for the specified member
%% account.
associate_s3_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    associate_s3_resources(Client, Input, []).
associate_s3_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"AssociateS3Resources">>, Input, Options).

%% @doc (Discontinued) Removes the specified member account from Amazon Macie
%% Classic.
disassociate_member_account(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_member_account(Client, Input, []).
disassociate_member_account(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateMemberAccount">>, Input, Options).

%% @doc (Discontinued) Removes specified S3 resources from being monitored by
%% Amazon Macie Classic.
%%
%% If `memberAccountId' isn't specified, the action removes specified S3
%% resources from Macie Classic for the current Macie Classic administrator
%% account. If `memberAccountId' is specified, the action removes specified
%% S3 resources from Macie Classic for the specified member account.
disassociate_s3_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    disassociate_s3_resources(Client, Input, []).
disassociate_s3_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DisassociateS3Resources">>, Input, Options).

%% @doc (Discontinued) Lists all Amazon Macie Classic member accounts for the
%% current Macie Classic administrator account.
list_member_accounts(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_member_accounts(Client, Input, []).
list_member_accounts(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListMemberAccounts">>, Input, Options).

%% @doc (Discontinued) Lists all the S3 resources associated with Amazon
%% Macie Classic.
%%
%% If `memberAccountId' isn't specified, the action lists the S3 resources
%% associated with Macie Classic for the current Macie Classic administrator
%% account. If `memberAccountId' is specified, the action lists the S3
%% resources associated with Macie Classic for the specified member account.
list_s3_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_s3_resources(Client, Input, []).
list_s3_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListS3Resources">>, Input, Options).

%% @doc (Discontinued) Updates the classification types for the specified S3
%% resources.
%%
%% If `memberAccountId' isn't specified, the action updates the
%% classification types of the S3 resources associated with Amazon Macie
%% Classic for the current Macie Classic administrator account. If
%% `memberAccountId' is specified, the action updates the classification
%% types of the S3 resources associated with Macie Classic for the specified
%% member account.
update_s3_resources(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_s3_resources(Client, Input, []).
update_s3_resources(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateS3Resources">>, Input, Options).

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
    Client1 = Client#{service => <<"macie">>},
    Host = build_host(<<"macie">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"MacieService.", Action/binary>>}
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
