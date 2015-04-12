AWS clients for Erlang.

# Overview

```erlang
%% Load credentials from the environment, an ~/.aws/credentials file,
%% etc. using the conventions described here:
%%
%%   http://blogs.aws.amazon.com/security/post/Tx3D6U6WSFGOK2H/A-New-and-Standardized-Way-to-Manage-Credentials-in-the-AWS-SDKs
Creds = aws_creds:default_creds(),

%% Create an EC2 client to make requests in the us-east-1 region.
Client = aws_ec2:make_client(Creds, "us-east-1"),

%% Make a DescribeInstances request.
{Result, Response} = aws_ec2:describe_instances(Client).
```
