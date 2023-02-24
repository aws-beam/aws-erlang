-module(aws_client).

-export([ make_client/0
        , make_client/1
        , make_client/3
        , make_temporary_client/4
        , make_local_client/3
        , make_local_client/4
        ]).

-export([ access_key_id/1
        , secret_access_key/1
        , token/1
        , region/1
        , endpoint/1
        , proto/1
        , port/1
        , service/1
        ]).

-type access_key_id() :: binary().
-type secret_access_key() :: binary().
-type region() :: binary().
-type token() :: binary().
-type http_port() :: binary().
-type proto() :: binary().
-type service() :: binary().
-type endpoint() :: binary().
-opaque aws_client() :: map().

-export_type([access_key_id/0, secret_access_key/0, region/0,
              token/0, aws_client/0]).

-define(AWS_ACCESS_KEY_ID, "AWS_ACCESS_KEY_ID").
-define(AWS_SECRET_ACCESS_KEY, "AWS_SECRET_ACCESS_KEY").
-define(AWS_SESSION_TOKEN, "AWS_SESSION_TOKEN").
-define(AWS_DEFAULT_REGION, "AWS_DEFAULT_REGION").

%%====================================================================
%% API
%%====================================================================

-spec make_client() -> aws_client().
make_client() ->
    case env(?AWS_DEFAULT_REGION) of
        undefined -> error({missing_region, ?AWS_DEFAULT_REGION});
        Region -> make_client(Region)
    end.

-spec make_client(region()) -> aws_client().
make_client(Region) ->
    case
        { env(?AWS_ACCESS_KEY_ID)
        , env(?AWS_SECRET_ACCESS_KEY)
        , env(?AWS_SESSION_TOKEN)
        }
    of
        {undefined, _, _} ->
            error({missing_credentials, ?AWS_ACCESS_KEY_ID});
        {_, undefined, _} ->
            error({missing_credentials, ?AWS_SECRET_ACCESS_KEY});
        {AccessKeyID, SecretAccessKey, undefined} ->
            make_client(AccessKeyID, SecretAccessKey, Region);
        {AccessKeyID, SecretAccessKey, Token} ->
            make_temporary_client(AccessKeyID, SecretAccessKey, Token, Region)
    end.

-spec make_client(access_key_id(), secret_access_key(), region()) ->
    aws_client().
make_client(AccessKeyID, SecretAccessKey, Region)
  when is_binary(AccessKeyID), is_binary(SecretAccessKey), is_binary(Region) ->
    #{access_key_id => AccessKeyID,
      secret_access_key => SecretAccessKey,
      region => Region,
      endpoint => <<"amazonaws.com">>,
      proto => <<"https">>,
      port => <<"443">>,
      service => undefined}.

-spec make_temporary_client(access_key_id(), secret_access_key(), token(), region()) ->
    aws_client().
make_temporary_client(AccessKeyID, SecretAccessKey, Token, Region)
  when is_binary(AccessKeyID), is_binary(SecretAccessKey),
       is_binary(Token), is_binary(Region) ->
    #{access_key_id => AccessKeyID,
      secret_access_key => SecretAccessKey,
      token => Token,
      region => Region,
      endpoint => <<"amazonaws.com">>,
      proto => <<"https">>,
      port => <<"443">>,
      service => undefined}.

-spec make_local_client(access_key_id(), secret_access_key(), http_port()) ->
			       aws_client().
 make_local_client(AccessKeyID, SecretAccessKey, Port)
   when is_binary(AccessKeyID), is_binary(SecretAccessKey), is_binary(Port) ->
    make_local_client(AccessKeyID, SecretAccessKey, Port, <<"localhost">>).

-spec make_local_client(access_key_id(), secret_access_key(), http_port(), endpoint()) ->
             aws_client().
make_local_client(AccessKeyID, SecretAccessKey, Port, Endpoint)
  when is_binary(Endpoint) ->
     #{access_key_id => AccessKeyID,
       secret_access_key => SecretAccessKey,
       region => <<"local">>,
       endpoint => Endpoint,
       proto => <<"http">>,
       port => Port,
       service => undefined}.

-spec access_key_id(aws_client()) -> access_key_id().
access_key_id(#{access_key_id := AccessKeyId} = _Client) ->
  AccessKeyId.

-spec secret_access_key(aws_client()) -> secret_access_key().
secret_access_key(#{secret_access_key := SecretAccessKey} = _Client) ->
  SecretAccessKey.

-spec token(aws_client()) -> token().
token(#{token := Token} = _Client) ->
  Token;
token(Client) when is_map(Client) ->
  undefined.

-spec region(aws_client()) -> region().
region(#{region := Region} = _Client) ->
  Region.

-spec endpoint(aws_client()) -> endpoint().
endpoint(#{endpoint := Endpoint} = _Client) ->
  Endpoint.

-spec proto(aws_client()) -> proto().
proto(#{proto := Proto} = _Client) ->
  Proto.

-spec port(aws_client()) -> port().
port(#{port := Port} = _Client) ->
  Port.

-spec service(aws_client()) -> service().
service(#{service := Service} = _Client) ->
  Service.

%%====================================================================
%% Helper functions
%%====================================================================

-spec env(string()) -> binary() | undefined.
env(Name) ->
  case os:getenv(Name) of
    false -> undefined;
    Value -> list_to_binary(Value)
  end.

%%====================================================================
%% Unit tests
%%====================================================================

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

%% make_client/0 returns a clienturation map with default values.
make_client_test() ->
    ?assertEqual(#{access_key_id => <<"access-key-id">>,
                   endpoint => <<"amazonaws.com">>,
                   port => <<"443">>,
                   proto => <<"https">>,
                   region => <<"region">>,
                   secret_access_key => <<"secret-access-key">>,
                   service => undefined},
                 make_client(<<"access-key-id">>, <<"secret-access-key">>,
                             <<"region">>)).

make_temporary_client_test() ->
    ?assertEqual(#{access_key_id => <<"access-key-id">>,
                   endpoint => <<"amazonaws.com">>,
                   port => <<"443">>,
                   proto => <<"https">>,
                   region => <<"region">>,
                   secret_access_key => <<"secret-access-key">>,
                   service => undefined,
                   token => <<"some-token">>},
                 make_temporary_client(<<"access-key-id">>,
                                       <<"secret-access-key">>,
                                       <<"some-token">>,
                                       <<"region">>)).

make_local_client_3_test() ->
    ?assertEqual(#{access_key_id => <<"access-key-id">>,
		   port => <<"8000">>,
		   proto => <<"http">>,
		   region => <<"local">>,
                   endpoint => <<"localhost">>,
		   secret_access_key => <<"secret-access-key">>,
		   service => undefined},
		 make_local_client(<<"access-key-id">>,
				   <<"secret-access-key">>,
				   <<"8000">>)).

make_local_client_4_test() ->
    ?assertEqual(#{access_key_id => <<"access-key-id">>,
		   port => <<"8000">>,
		   proto => <<"http">>,
		   region => <<"local">>,
                   endpoint => <<"endpoint">>,
		   secret_access_key => <<"secret-access-key">>,
		   service => undefined},
		 make_local_client(<<"access-key-id">>,
				   <<"secret-access-key">>,
				   <<"8000">>,
                                   <<"endpoint">>)).

-endif.
