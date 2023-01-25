%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/aws-beam/aws-codegen for more details.

%% @doc For more information about AWS CloudHSM, see AWS CloudHSM and the AWS
%% CloudHSM User Guide.
-module(aws_cloudhsm_v2).

-export([copy_backup_to_region/2,
         copy_backup_to_region/3,
         create_cluster/2,
         create_cluster/3,
         create_hsm/2,
         create_hsm/3,
         delete_backup/2,
         delete_backup/3,
         delete_cluster/2,
         delete_cluster/3,
         delete_hsm/2,
         delete_hsm/3,
         describe_backups/2,
         describe_backups/3,
         describe_clusters/2,
         describe_clusters/3,
         initialize_cluster/2,
         initialize_cluster/3,
         list_tags/2,
         list_tags/3,
         modify_backup_attributes/2,
         modify_backup_attributes/3,
         modify_cluster/2,
         modify_cluster/3,
         restore_backup/2,
         restore_backup/3,
         tag_resource/2,
         tag_resource/3,
         untag_resource/2,
         untag_resource/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Copy an AWS CloudHSM cluster backup to a different region.
copy_backup_to_region(Client, Input)
  when is_map(Client), is_map(Input) ->
    copy_backup_to_region(Client, Input, []).
copy_backup_to_region(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CopyBackupToRegion">>, Input, Options).

%% @doc Creates a new AWS CloudHSM cluster.
create_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_cluster(Client, Input, []).
create_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateCluster">>, Input, Options).

%% @doc Creates a new hardware security module (HSM) in the specified AWS
%% CloudHSM cluster.
create_hsm(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_hsm(Client, Input, []).
create_hsm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateHsm">>, Input, Options).

%% @doc Deletes a specified AWS CloudHSM backup.
%%
%% A backup can be restored up to 7 days after the DeleteBackup request is
%% made. For more information on restoring a backup, see `RestoreBackup'.
delete_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_backup(Client, Input, []).
delete_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteBackup">>, Input, Options).

%% @doc Deletes the specified AWS CloudHSM cluster.
%%
%% Before you can delete a cluster, you must delete all HSMs in the cluster.
%% To see if the cluster contains any HSMs, use `DescribeClusters'. To
%% delete an HSM, use `DeleteHsm'.
delete_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_cluster(Client, Input, []).
delete_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteCluster">>, Input, Options).

%% @doc Deletes the specified HSM.
%%
%% To specify an HSM, you can use its identifier (ID), the IP address of the
%% HSM's elastic network interface (ENI), or the ID of the HSM's ENI.
%% You need to specify only one of these values. To find these values, use
%% `DescribeClusters'.
delete_hsm(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_hsm(Client, Input, []).
delete_hsm(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteHsm">>, Input, Options).

%% @doc Gets information about backups of AWS CloudHSM clusters.
%%
%% This is a paginated operation, which means that each response might
%% contain only a subset of all the backups. When the response contains only
%% a subset of backups, it includes a `NextToken' value. Use this value
%% in a subsequent `DescribeBackups' request to get more backups. When
%% you receive a response with no `NextToken' (or an empty or null
%% value), that means there are no more backups to get.
describe_backups(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_backups(Client, Input, []).
describe_backups(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeBackups">>, Input, Options).

%% @doc Gets information about AWS CloudHSM clusters.
%%
%% This is a paginated operation, which means that each response might
%% contain only a subset of all the clusters. When the response contains only
%% a subset of clusters, it includes a `NextToken' value. Use this value
%% in a subsequent `DescribeClusters' request to get more clusters. When
%% you receive a response with no `NextToken' (or an empty or null
%% value), that means there are no more clusters to get.
describe_clusters(Client, Input)
  when is_map(Client), is_map(Input) ->
    describe_clusters(Client, Input, []).
describe_clusters(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DescribeClusters">>, Input, Options).

%% @doc Claims an AWS CloudHSM cluster by submitting the cluster certificate
%% issued by your issuing certificate authority (CA) and the CA's root
%% certificate.
%%
%% Before you can claim a cluster, you must sign the cluster's
%% certificate signing request (CSR) with your issuing CA. To get the
%% cluster's CSR, use `DescribeClusters'.
initialize_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    initialize_cluster(Client, Input, []).
initialize_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"InitializeCluster">>, Input, Options).

%% @doc Gets a list of tags for the specified AWS CloudHSM cluster.
%%
%% This is a paginated operation, which means that each response might
%% contain only a subset of all the tags. When the response contains only a
%% subset of tags, it includes a `NextToken' value. Use this value in a
%% subsequent `ListTags' request to get more tags. When you receive a
%% response with no `NextToken' (or an empty or null value), that means
%% there are no more tags to get.
list_tags(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_tags(Client, Input, []).
list_tags(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListTags">>, Input, Options).

%% @doc Modifies attributes for AWS CloudHSM backup.
modify_backup_attributes(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_backup_attributes(Client, Input, []).
modify_backup_attributes(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyBackupAttributes">>, Input, Options).

%% @doc Modifies AWS CloudHSM cluster.
modify_cluster(Client, Input)
  when is_map(Client), is_map(Input) ->
    modify_cluster(Client, Input, []).
modify_cluster(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ModifyCluster">>, Input, Options).

%% @doc Restores a specified AWS CloudHSM backup that is in the
%% `PENDING_DELETION' state.
%%
%% For mor information on deleting a backup, see `DeleteBackup'.
restore_backup(Client, Input)
  when is_map(Client), is_map(Input) ->
    restore_backup(Client, Input, []).
restore_backup(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"RestoreBackup">>, Input, Options).

%% @doc Adds or overwrites one or more tags for the specified AWS CloudHSM
%% cluster.
tag_resource(Client, Input)
  when is_map(Client), is_map(Input) ->
    tag_resource(Client, Input, []).
tag_resource(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"TagResource">>, Input, Options).

%% @doc Removes the specified tag or tags from the specified AWS CloudHSM
%% cluster.
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
request(Client, Action, Input, Options) ->
    RequestFun = fun() -> do_request(Client, Action, Input, Options) end,
    aws_request:request(RequestFun, Options).

do_request(Client, Action, Input0, Options) ->
    Client1 = Client#{service => <<"cloudhsm">>},
    Host = build_host(<<"cloudhsmv2">>, Client1),
    URL = build_url(Host, Client1),
    Headers = [
        {<<"Host">>, Host},
        {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
        {<<"X-Amz-Target">>, <<"BaldrApiService.", Action/binary>>}
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
