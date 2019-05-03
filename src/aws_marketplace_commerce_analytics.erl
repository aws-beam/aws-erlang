%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc Provides AWS Marketplace business intelligence data on-demand.
-module(aws_marketplace_commerce_analytics).

-export([generate_data_set/2,
         generate_data_set/3,
         start_support_data_export/2,
         start_support_data_export/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Given a data set type and data set publication date, asynchronously
%% publishes the requested data set to the specified S3 bucket and notifies
%% the specified SNS topic once the data is available. Returns a unique
%% request identifier that can be used to correlate requests with
%% notifications from the SNS topic. Data sets will be published in
%% comma-separated values (CSV) format with the file name
%% {data_set_type}_YYYY-MM-DD.csv. If a file with the same name already
%% exists (e.g. if the same data set is requested twice), the original file
%% will be overwritten by the new file. Requires a Role with an attached
%% permissions policy providing Allow permissions for the following actions:
%% s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes, sns:Publish,
%% iam:GetRolePolicy.
generate_data_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    generate_data_set(Client, Input, []).
generate_data_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GenerateDataSet">>, Input, Options).

%% @doc Given a data set type and a from date, asynchronously publishes the
%% requested customer support data to the specified S3 bucket and notifies
%% the specified SNS topic once the data is available. Returns a unique
%% request identifier that can be used to correlate requests with
%% notifications from the SNS topic. Data sets will be published in
%% comma-separated values (CSV) format with the file name
%% {data_set_type}_YYYY-MM-DD'T'HH-mm-ss'Z'.csv. If a file with the same name
%% already exists (e.g. if the same data set is requested twice), the
%% original file will be overwritten by the new file. Requires a Role with an
%% attached permissions policy providing Allow permissions for the following
%% actions: s3:PutObject, s3:GetBucketLocation, sns:GetTopicAttributes,
%% sns:Publish, iam:GetRolePolicy.
start_support_data_export(Client, Input)
  when is_map(Client), is_map(Input) ->
    start_support_data_export(Client, Input, []).
start_support_data_export(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"StartSupportDataExport">>, Input, Options).

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
    Client1 = Client#{service => <<"marketplacecommerceanalytics">>},
    Host = get_host(<<"marketplacecommerceanalytics">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"MarketplaceCommerceAnalytics20150701.">>/binary, Action/binary>>}],
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
