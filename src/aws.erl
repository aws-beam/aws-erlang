-module(aws).

%% API exports
-export([creds/2]).
-include("include/aws.hrl").

%%====================================================================
%% API functions
%%====================================================================

creds(AccessKeyID, SecretAccessKey) ->
    #creds{access_key_id=AccessKeyID, secret_access_key=SecretAccessKey}.

%% -record(describe_instances_input,
%%         {dry_run=false
%%         ,filters=[]
%%         ,instance_ids=[]
%%         ,max_results=undefined
%%         ,next_token=undefined}).
%% -record(describe_instances_output,
%%         {next_token
%%         ,reservations=[]}).

%% function() ->
%%     Creds = aws:creds("access-key", "secret-key"),
%%     EC2 = aws_ec2:client(Creds, "us-east-1"),
%%     Input = #describe_instances_input{},
%%     {ok, Output} = aws_ec2:describe_instances(Input).

%%====================================================================
%% Internal functions
%%====================================================================

%%====================================================================
%% Unit test functions
%%====================================================================

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

-endif.
