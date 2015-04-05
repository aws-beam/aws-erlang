AWS clients for Erlang.

# Overview

```erlang
Config = aws_config:make_config(#{access_key_id => "AKID1234567890",
                                  secret_access_key => "MY-SECRET-KEY"}),
Client = aws_ec2:make_client(Config, "us-east-1"),
{Result, Response} = aws_ec2:describe_instances(Client).
```
