An automatically generated set of AWS clients for Erlang.

# Overview

```erlang
Config = aws_config:make_config(#{region => <<"us-east-1">>,
                                  access_key_id => <<"AKID1234567890">>,
                                  secret_access_key => <<"MY-SECRET-KEY">>}),
Client = aws_ec2:make_client(Config),
Response = aws_ec2:describe_instances(Client).
```
